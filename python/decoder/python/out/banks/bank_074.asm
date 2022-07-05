SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    jr z, jr_074_406A                             ; $4000: $28 $68

    ld bc, $141D                                  ; $4002: $01 $1D $14
    or b                                          ; $4005: $B0
    inc b                                         ; $4006: $04
    ret nz                                        ; $4007: $C0

    ld l, a                                       ; $4008: $6F
    nop                                           ; $4009: $00
    ld [bc], a                                    ; $400A: $02
    ld h, e                                       ; $400B: $63
    ld h, h                                       ; $400C: $64
    and [hl]                                      ; $400D: $A6
    nop                                           ; $400E: $00
    ld [bc], a                                    ; $400F: $02

jr_074_4010:
    ld [hl], e                                    ; $4010: $73
    ld [hl], h                                    ; $4011: $74
    and [hl]                                      ; $4012: $A6
    nop                                           ; $4013: $00
    ld [bc], a                                    ; $4014: $02
    add e                                         ; $4015: $83
    add h                                         ; $4016: $84
    sbc l                                         ; $4017: $9D
    nop                                           ; $4018: $00
    inc bc                                        ; $4019: $03
    ld b, $07                                     ; $401A: $06 $07
    rla                                           ; $401C: $17
    add e                                         ; $401D: $83
    rlca                                          ; $401E: $07
    ld bc, $9F08                                  ; $401F: $01 $08 $9F
    nop                                           ; $4022: $00
    ld [bc], a                                    ; $4023: $02
    ld b, $07                                     ; $4024: $06 $07
    add a                                         ; $4026: $87
    rla                                           ; $4027: $17
    ld bc, $9908                                  ; $4028: $01 $08 $99
    nop                                           ; $402B: $00
    ld bc, $8406                                  ; $402C: $01 $06 $84
    rlca                                          ; $402F: $07
    add h                                         ; $4030: $84
    rla                                           ; $4031: $17

jr_074_4032:
    ld bc, $8542                                  ; $4032: $01 $42 $85
    rla                                           ; $4035: $17
    adc b                                         ; $4036: $88
    rlca                                          ; $4037: $07
    ld bc, $9008                                  ; $4038: $01 $08 $90
    nop                                           ; $403B: $00
    ld [$0916], sp                                ; $403C: $08 $16 $09
    ld a, [bc]                                    ; $403F: $0A
    dec bc                                        ; $4040: $0B
    inc c                                         ; $4041: $0C
    dec c                                         ; $4042: $0D
    ld c, $0F                                     ; $4043: $0E $0F
    add [hl]                                      ; $4045: $86
    rla                                           ; $4046: $17
    ld bc, $87F0                                  ; $4047: $01 $F0 $87

jr_074_404A:
    ret z                                         ; $404A: $C8

    ld [bc], a                                    ; $404B: $02
    pop af                                        ; $404C: $F1
    db $18, $8A                                   ; $404D: $18 $8A
    nop                                           ; $404F: $00
    ld [bc], a                                    ; $4050: $02
    ld h, c                                       ; $4051: $61
    ld h, d                                       ; $4052: $62
    add e                                         ; $4053: $83
    nop                                           ; $4054: $00
    add hl, bc                                    ; $4055: $09
    ld b, $17                                     ; $4056: $06 $17
    add hl, de                                    ; $4058: $19
    ld a, [de]                                    ; $4059: $1A
    dec de                                        ; $405A: $1B
    inc e                                         ; $405B: $1C
    dec e                                         ; $405C: $1D
    ld e, $1F                                     ; $405D: $1E $1F
    add [hl]                                      ; $405F: $86
    rla                                           ; $4060: $17
    ld bc, $87A8                                  ; $4061: $01 $A8 $87
    cp b                                          ; $4064: $B8
    ld [bc], a                                    ; $4065: $02
    sbc b                                         ; $4066: $98
    db $18, $8A                                   ; $4067: $18 $8A
    nop                                           ; $4069: $00

jr_074_406A:
    ld [bc], a                                    ; $406A: $02
    ld [hl], c                                    ; $406B: $71
    ld [hl], d                                    ; $406C: $72
    add d                                         ; $406D: $82
    nop                                           ; $406E: $00
    ld a, [bc]                                    ; $406F: $0A
    ld b, $17                                     ; $4070: $06 $17
    rla                                           ; $4072: $17
    add hl, hl                                    ; $4073: $29
    ld a, [hl+]                                   ; $4074: $2A
    dec hl                                        ; $4075: $2B
    inc l                                         ; $4076: $2C
    dec l                                         ; $4077: $2D
    ld l, $2F                                     ; $4078: $2E $2F
    add [hl]                                      ; $407A: $86
    rla                                           ; $407B: $17
    ld [bc], a                                    ; $407C: $02
    xor b                                         ; $407D: $A8
    ret c                                         ; $407E: $D8

    add l                                         ; $407F: $85

jr_074_4080:
    cp b                                          ; $4080: $B8
    inc bc                                        ; $4081: $03
    pop bc                                        ; $4082: $C1
    sbc b                                         ; $4083: $98
    jr jr_074_4010                                ; $4084: $18 $8A

    nop                                           ; $4086: $00
    ld [bc], a                                    ; $4087: $02
    add c                                         ; $4088: $81
    add d                                         ; $4089: $82
    add d                                         ; $408A: $82
    nop                                           ; $408B: $00
    ld a, [bc]                                    ; $408C: $0A
    ld d, $51                                     ; $408D: $16 $51
    rla                                           ; $408F: $17
    add hl, sp                                    ; $4090: $39
    ld a, [hl-]                                   ; $4091: $3A
    dec sp                                        ; $4092: $3B
    inc a                                         ; $4093: $3C
    dec a                                         ; $4094: $3D
    ld a, $3F                                     ; $4095: $3E $3F
    add l                                         ; $4097: $85
    rla                                           ; $4098: $17
    inc bc                                        ; $4099: $03
    db $E3                                        ; $409A: $E3
    xor b                                         ; $409B: $A8
    ret c                                         ; $409C: $D8

    add l                                         ; $409D: $85
    cp b                                          ; $409E: $B8

jr_074_409F:
    inc bc                                        ; $409F: $03
    pop bc                                        ; $40A0: $C1
    sbc b                                         ; $40A1: $98
    jr jr_074_4032                                ; $40A2: $18 $8E

    nop                                           ; $40A4: $00
    ld a, [bc]                                    ; $40A5: $0A
    ld d, $17                                     ; $40A6: $16 $17
    rla                                           ; $40A8: $17
    ld c, c                                       ; $40A9: $49
    ld c, d                                       ; $40AA: $4A
    ld c, e                                       ; $40AB: $4B
    ld c, h                                       ; $40AC: $4C
    ld c, l                                       ; $40AD: $4D
    ld c, [hl]                                    ; $40AE: $4E
    ld c, a                                       ; $40AF: $4F
    add l                                         ; $40B0: $85
    rla                                           ; $40B1: $17
    inc bc                                        ; $40B2: $03
    di                                            ; $40B3: $F3
    xor b                                         ; $40B4: $A8
    ret c                                         ; $40B5: $D8

    add l                                         ; $40B6: $85
    cp b                                          ; $40B7: $B8
    inc bc                                        ; $40B8: $03
    pop bc                                        ; $40B9: $C1
    sbc b                                         ; $40BA: $98
    jr jr_074_404A                                ; $40BB: $18 $8D

    nop                                           ; $40BD: $00
    dec bc                                        ; $40BE: $0B
    ld b, $17                                     ; $40BF: $06 $17
    rla                                           ; $40C1: $17
    and b                                         ; $40C2: $A0
    ld e, c                                       ; $40C3: $59
    ld e, d                                       ; $40C4: $5A
    ld e, e                                       ; $40C5: $5B
    ld e, h                                       ; $40C6: $5C
    ld e, l                                       ; $40C7: $5D
    ld e, [hl]                                    ; $40C8: $5E
    ld e, a                                       ; $40C9: $5F
    add d                                         ; $40CA: $82
    rla                                           ; $40CB: $17
    ld [bc], a                                    ; $40CC: $02
    ld d, [hl]                                    ; $40CD: $56
    ld e, b                                       ; $40CE: $58
    add d                                         ; $40CF: $82
    rla                                           ; $40D0: $17
    ld [bc], a                                    ; $40D1: $02
    xor b                                         ; $40D2: $A8
    ret c                                         ; $40D3: $D8

    add l                                         ; $40D4: $85
    cp b                                          ; $40D5: $B8
    inc bc                                        ; $40D6: $03
    pop bc                                        ; $40D7: $C1
    sbc b                                         ; $40D8: $98
    jr @-$76                                      ; $40D9: $18 $88

    nop                                           ; $40DB: $00
    ld bc, $8406                                  ; $40DC: $01 $06 $84
    rlca                                          ; $40DF: $07
    add e                                         ; $40E0: $83
    rla                                           ; $40E1: $17
    ld [$85B0], sp                                ; $40E2: $08 $B0 $85
    ld l, d                                       ; $40E5: $6A
    ld l, e                                       ; $40E6: $6B
    ld l, h                                       ; $40E7: $6C
    ld l, l                                       ; $40E8: $6D
    ld l, [hl]                                    ; $40E9: $6E
    ld l, a                                       ; $40EA: $6F
    add d                                         ; $40EB: $82
    rla                                           ; $40EC: $17
    ld [bc], a                                    ; $40ED: $02
    ld h, [hl]                                    ; $40EE: $66
    ld e, b                                       ; $40EF: $58
    add d                                         ; $40F0: $82
    rla                                           ; $40F1: $17
    ld bc, $87A8                                  ; $40F2: $01 $A8 $87
    cp b                                          ; $40F5: $B8
    ld [bc], a                                    ; $40F6: $02
    sbc b                                         ; $40F7: $98
    jr jr_074_4080                                ; $40F8: $18 $86

    nop                                           ; $40FA: $00
    ld [bc], a                                    ; $40FB: $02
    ld b, $07                                     ; $40FC: $06 $07
    adc c                                         ; $40FE: $89
    rla                                           ; $40FF: $17
    dec bc                                        ; $4100: $0B
    ld a, c                                       ; $4101: $79
    ld a, d                                       ; $4102: $7A
    ld a, e                                       ; $4103: $7B
    ld a, h                                       ; $4104: $7C
    ld a, l                                       ; $4105: $7D
    ld a, [hl]                                    ; $4106: $7E
    ld a, a                                       ; $4107: $7F
    rla                                           ; $4108: $17
    ld d, [hl]                                    ; $4109: $56
    ld h, a                                       ; $410A: $67
    ld a, b                                       ; $410B: $78
    add d                                         ; $410C: $82
    rla                                           ; $410D: $17
    ld a, [bc]                                    ; $410E: $0A
    push hl                                       ; $410F: $E5
    add sp, -$0B                                  ; $4110: $E8 $F5
    ldh a, [$C8]                                  ; $4112: $F0 $C8
    pop af                                        ; $4114: $F1
    push hl                                       ; $4115: $E5
    add sp, -$0B                                  ; $4116: $E8 $F5
    jr jr_074_409F                                ; $4118: $18 $85

    nop                                           ; $411A: $00
    ld bc, $8B06                                  ; $411B: $01 $06 $8B
    rla                                           ; $411E: $17
    inc c                                         ; $411F: $0C
    adc c                                         ; $4120: $89
    adc d                                         ; $4121: $8A
    adc e                                         ; $4122: $8B
    adc h                                         ; $4123: $8C
    adc l                                         ; $4124: $8D
    adc [hl]                                      ; $4125: $8E
    adc a                                         ; $4126: $8F
    ld d, [hl]                                    ; $4127: $56
    ld h, a                                       ; $4128: $67
    ld a, b                                       ; $4129: $78
    sub d                                         ; $412A: $92
    sub e                                         ; $412B: $93
    adc d                                         ; $412C: $8A
    rla                                           ; $412D: $17
    ld bc, $8518                                  ; $412E: $01 $18 $85
    nop                                           ; $4131: $00
    ld bc, $8316                                  ; $4132: $01 $16 $83
    rla                                           ; $4135: $17
    ld bc, $8A70                                  ; $4136: $01 $70 $8A
    rla                                           ; $4139: $17
    ld bc, $8356                                  ; $413A: $01 $56 $83
    ld d, a                                       ; $413D: $57
    dec b                                         ; $413E: $05
    ld h, a                                       ; $413F: $67
    ld a, b                                       ; $4140: $78
    rla                                           ; $4141: $17
    and d                                         ; $4142: $A2
    and e                                         ; $4143: $A3
    adc d                                         ; $4144: $8A
    rla                                           ; $4145: $17
    ld bc, $8518                                  ; $4146: $01 $18 $85
    nop                                           ; $4149: $00
    ld bc, $8616                                  ; $414A: $01 $16 $86
    rla                                           ; $414D: $17
    ld bc, $8642                                  ; $414E: $01 $42 $86
    rla                                           ; $4151: $17
    inc bc                                        ; $4152: $03
    ld d, [hl]                                    ; $4153: $56
    ld h, a                                       ; $4154: $67
    ld h, a                                       ; $4155: $67
    add d                                         ; $4156: $82
    ld [hl], a                                    ; $4157: $77
    ld bc, $8378                                  ; $4158: $01 $78 $83
    rla                                           ; $415B: $17
    ld bc, $8AB3                                  ; $415C: $01 $B3 $8A
    rla                                           ; $415F: $17
    ld [bc], a                                    ; $4160: $02
    jr jr_074_4163                                ; $4161: $18 $00

jr_074_4163:
    add e                                         ; $4163: $83
    cp h                                          ; $4164: $BC
    inc bc                                        ; $4165: $03
    cp l                                          ; $4166: $BD
    cp [hl]                                       ; $4167: $BE
    cp a                                          ; $4168: $BF
    adc b                                         ; $4169: $88
    rla                                           ; $416A: $17
    rlca                                          ; $416B: $07
    ld b, d                                       ; $416C: $42
    rla                                           ; $416D: $17
    rla                                           ; $416E: $17

jr_074_416F:
    ld d, [hl]                                    ; $416F: $56
    ld h, a                                       ; $4170: $67
    ld [hl], a                                    ; $4171: $77
    ld a, b                                       ; $4172: $78
    add [hl]                                      ; $4173: $86
    rla                                           ; $4174: $17
    ld bc, $89C3                                  ; $4175: $01 $C3 $89
    rla                                           ; $4178: $17
    inc bc                                        ; $4179: $03
    ld h, b                                       ; $417A: $60
    jr jr_074_417D                                ; $417B: $18 $00

jr_074_417D:
    add e                                         ; $417D: $83
    call z, $CD03                                 ; $417E: $CC $03 $CD
    adc $CF                                       ; $4181: $CE $CF
    adc e                                         ; $4183: $8B
    ld d, a                                       ; $4184: $57
    ld [bc], a                                    ; $4185: $02
    ld h, a                                       ; $4186: $67
    ld a, b                                       ; $4187: $78
    add a                                         ; $4188: $87
    rla                                           ; $4189: $17
    ld [bc], a                                    ; $418A: $02
    jp nc, $89D3                                  ; $418B: $D2 $D3 $89

    rla                                           ; $418E: $17

jr_074_418F:
    inc bc                                        ; $418F: $03
    daa                                           ; $4190: $27
    jr z, jr_074_4193                             ; $4191: $28 $00

jr_074_4193:
    add e                                         ; $4193: $83
    call c, $DD03                                 ; $4194: $DC $03 $DD
    sbc $DF                                       ; $4197: $DE $DF
    adc e                                         ; $4199: $8B
    ld [hl], a                                    ; $419A: $77
    inc b                                         ; $419B: $04
    ld a, b                                       ; $419C: $78
    rla                                           ; $419D: $17
    rla                                           ; $419E: $17
    ld h, b                                       ; $419F: $60
    adc e                                         ; $41A0: $8B
    rla                                           ; $41A1: $17
    ld [$1760], sp                                ; $41A2: $08 $60 $17
    rla                                           ; $41A5: $17
    daa                                           ; $41A6: $27
    jr z, jr_074_41E0                             ; $41A7: $28 $37

    jr c, jr_074_41AB                             ; $41A9: $38 $00

jr_074_41AB:
    add e                                         ; $41AB: $83
    db $EC                                        ; $41AC: $EC
    inc bc                                        ; $41AD: $03
    db $ED                                        ; $41AE: $ED
    xor $EF                                       ; $41AF: $EE $EF
    adc d                                         ; $41B1: $8A
    rla                                           ; $41B2: $17
    ld bc, $8E25                                  ; $41B3: $01 $25 $8E
    rla                                           ; $41B6: $17
    add e                                         ; $41B7: $83
    daa                                           ; $41B8: $27
    dec b                                         ; $41B9: $05
    jr z, jr_074_41F3                             ; $41BA: $28 $37

    jr c, jr_074_4205                             ; $41BC: $38 $47

    ld c, b                                       ; $41BE: $48
    add l                                         ; $41BF: $85
    nop                                           ; $41C0: $00
    ld [bc], a                                    ; $41C1: $02
    ld h, $27                                     ; $41C2: $26 $27
    add h                                         ; $41C4: $84
    rla                                           ; $41C5: $17
    add h                                         ; $41C6: $84
    daa                                           ; $41C7: $27
    adc e                                         ; $41C8: $8B
    rla                                           ; $41C9: $17
    add l                                         ; $41CA: $85
    daa                                           ; $41CB: $27
    ld bc, $8328                                  ; $41CC: $01 $28 $83
    scf                                           ; $41CF: $37
    inc bc                                        ; $41D0: $03
    jr c, jr_074_421A                             ; $41D1: $38 $47

    ld c, b                                       ; $41D3: $48
    add a                                         ; $41D4: $87
    nop                                           ; $41D5: $00
    inc bc                                        ; $41D6: $03
    ld [hl], $37                                  ; $41D7: $36 $37
    ld h, $82                                     ; $41D9: $26 $82
    daa                                           ; $41DB: $27
    ld bc, $8428                                  ; $41DC: $01 $28 $84
    scf                                           ; $41DF: $37

jr_074_41E0:
    ld bc, $8326                                  ; $41E0: $01 $26 $83
    daa                                           ; $41E3: $27
    add l                                         ; $41E4: $85
    rla                                           ; $41E5: $17
    ld [bc], a                                    ; $41E6: $02
    daa                                           ; $41E7: $27
    jr z, jr_074_416F                             ; $41E8: $28 $85

    scf                                           ; $41EA: $37
    ld bc, $8338                                  ; $41EB: $01 $38 $83
    ld b, a                                       ; $41EE: $47
    ld bc, $8948                                  ; $41EF: $01 $48 $89
    nop                                           ; $41F2: $00

jr_074_41F3:
    inc bc                                        ; $41F3: $03
    ld b, [hl]                                    ; $41F4: $46
    ld b, a                                       ; $41F5: $47
    ld [hl], $82                                  ; $41F6: $36 $82
    scf                                           ; $41F8: $37
    ld bc, $8438                                  ; $41F9: $01 $38 $84
    ld b, a                                       ; $41FC: $47
    ld bc, $8336                                  ; $41FD: $01 $36 $83
    scf                                           ; $4200: $37
    ld bc, $8326                                  ; $4201: $01 $26 $83
    daa                                           ; $4204: $27

jr_074_4205:
    inc bc                                        ; $4205: $03
    jr z, @+$39                                   ; $4206: $28 $37

    jr c, jr_074_418F                             ; $4208: $38 $85

    ld b, a                                       ; $420A: $47
    ld bc, $8F48                                  ; $420B: $01 $48 $8F
    nop                                           ; $420E: $00
    inc b                                         ; $420F: $04
    ld b, [hl]                                    ; $4210: $46
    ld b, a                                       ; $4211: $47
    ld b, a                                       ; $4212: $47
    ld c, b                                       ; $4213: $48
    add h                                         ; $4214: $84
    nop                                           ; $4215: $00
    ld bc, $8346                                  ; $4216: $01 $46 $83
    ld b, a                                       ; $4219: $47

jr_074_421A:
    ld bc, $8336                                  ; $421A: $01 $36 $83
    scf                                           ; $421D: $37
    inc bc                                        ; $421E: $03
    jr c, jr_074_4268                             ; $421F: $38 $47

    ld c, b                                       ; $4221: $48
    and c                                         ; $4222: $A1
    nop                                           ; $4223: $00
    ld bc, $8346                                  ; $4224: $01 $46 $83
    ld b, a                                       ; $4227: $47
    ld bc, $C048                                  ; $4228: $01 $48 $C0
    ld l, b                                       ; $422B: $68
    nop                                           ; $422C: $00
    nop                                           ; $422D: $00
    ld c, [hl]                                    ; $422E: $4E
    ret c                                         ; $422F: $D8

    rrca                                          ; $4230: $0F
    ld bc, $C008                                  ; $4231: $01 $08 $C0
    ld c, h                                       ; $4234: $4C
    ret nz                                        ; $4235: $C0

    ld [bc], a                                    ; $4236: $02
    ld [$C0C6], sp                                ; $4237: $08 $C6 $C0
    ld c, h                                       ; $423A: $4C
    nop                                           ; $423B: $00
    ld [bc], a                                    ; $423C: $02
    pop bc                                        ; $423D: $C1
    add $C0                                       ; $423E: $C6 $C0
    ld c, h                                       ; $4240: $4C
    nop                                           ; $4241: $00
    ld [bc], a                                    ; $4242: $02
    pop bc                                        ; $4243: $C1
    add $C0                                       ; $4244: $C6 $C0
    ld c, h                                       ; $4246: $4C
    nop                                           ; $4247: $00
    ld [bc], a                                    ; $4248: $02
    pop bc                                        ; $4249: $C1
    add $C0                                       ; $424A: $C6 $C0
    ld c, h                                       ; $424C: $4C
    nop                                           ; $424D: $00
    ld [bc], a                                    ; $424E: $02
    pop bc                                        ; $424F: $C1
    add $C0                                       ; $4250: $C6 $C0
    ld c, h                                       ; $4252: $4C
    nop                                           ; $4253: $00
    ld [bc], a                                    ; $4254: $02
    pop bc                                        ; $4255: $C1
    add $C0                                       ; $4256: $C6 $C0
    ld c, h                                       ; $4258: $4C
    nop                                           ; $4259: $00
    ld [bc], a                                    ; $425A: $02
    pop bc                                        ; $425B: $C1
    add $C0                                       ; $425C: $C6 $C0
    ld c, h                                       ; $425E: $4C
    nop                                           ; $425F: $00
    ld [bc], a                                    ; $4260: $02
    pop bc                                        ; $4261: $C1
    add $C0                                       ; $4262: $C6 $C0
    ld c, h                                       ; $4264: $4C
    nop                                           ; $4265: $00
    ld [bc], a                                    ; $4266: $02
    pop bc                                        ; $4267: $C1

jr_074_4268:
    add $C0                                       ; $4268: $C6 $C0
    ld c, h                                       ; $426A: $4C
    nop                                           ; $426B: $00
    ld [bc], a                                    ; $426C: $02
    pop bc                                        ; $426D: $C1
    add $C0                                       ; $426E: $C6 $C0
    ld c, h                                       ; $4270: $4C
    nop                                           ; $4271: $00
    ld [bc], a                                    ; $4272: $02
    pop bc                                        ; $4273: $C1
    add $C0                                       ; $4274: $C6 $C0
    ld c, h                                       ; $4276: $4C
    nop                                           ; $4277: $00
    ld [bc], a                                    ; $4278: $02
    pop bc                                        ; $4279: $C1
    add $C0                                       ; $427A: $C6 $C0
    ld c, h                                       ; $427C: $4C
    nop                                           ; $427D: $00
    ld [bc], a                                    ; $427E: $02
    pop bc                                        ; $427F: $C1
    add $A4                                       ; $4280: $C6 $A4
    nop                                           ; $4282: $00
    ld bc, $A708                                  ; $4283: $01 $08 $A7
    nop                                           ; $4286: $00
    ld [bc], a                                    ; $4287: $02
    pop bc                                        ; $4288: $C1
    add $A3                                       ; $4289: $C6 $A3
    nop                                           ; $428B: $00
    add e                                         ; $428C: $83
    ld [$00A6], sp                                ; $428D: $08 $A6 $00
    ld [bc], a                                    ; $4290: $02
    pop bc                                        ; $4291: $C1
    add $A1                                       ; $4292: $C6 $A1
    nop                                           ; $4294: $00
    add a                                         ; $4295: $87
    ld [$00A4], sp                                ; $4296: $08 $A4 $00
    ld [bc], a                                    ; $4299: $02
    pop bc                                        ; $429A: $C1
    add $A1                                       ; $429B: $C6 $A1
    nop                                           ; $429D: $00
    add a                                         ; $429E: $87
    ld [$00A4], sp                                ; $429F: $08 $A4 $00
    ld [bc], a                                    ; $42A2: $02
    pop bc                                        ; $42A3: $C1
    add $A0                                       ; $42A4: $C6 $A0
    nop                                           ; $42A6: $00
    adc c                                         ; $42A7: $89
    ld [$00A3], sp                                ; $42A8: $08 $A3 $00
    ld [bc], a                                    ; $42AB: $02
    pop bc                                        ; $42AC: $C1
    add $9E                                       ; $42AD: $C6 $9E
    nop                                           ; $42AF: $00
    adc l                                         ; $42B0: $8D
    ld [$00A1], sp                                ; $42B1: $08 $A1 $00
    ld [bc], a                                    ; $42B4: $02
    pop bc                                        ; $42B5: $C1
    add $9D                                       ; $42B6: $C6 $9D
    nop                                           ; $42B8: $00
    adc a                                         ; $42B9: $8F
    ld [$00A0], sp                                ; $42BA: $08 $A0 $00
    ld [bc], a                                    ; $42BD: $02
    pop bc                                        ; $42BE: $C1
    add $9C                                       ; $42BF: $C6 $9C
    nop                                           ; $42C1: $00
    sub c                                         ; $42C2: $91
    ld [$009F], sp                                ; $42C3: $08 $9F $00
    ld [bc], a                                    ; $42C6: $02
    pop bc                                        ; $42C7: $C1
    add $9C                                       ; $42C8: $C6 $9C
    nop                                           ; $42CA: $00
    sub c                                         ; $42CB: $91
    ld [$009F], sp                                ; $42CC: $08 $9F $00
    ld [bc], a                                    ; $42CF: $02
    pop bc                                        ; $42D0: $C1
    add $9C                                       ; $42D1: $C6 $9C
    nop                                           ; $42D3: $00
    adc b                                         ; $42D4: $88
    ld [$C301], sp                                ; $42D5: $08 $01 $C3
    adc b                                         ; $42D8: $88
    ld [$009F], sp                                ; $42D9: $08 $9F $00
    ld [bc], a                                    ; $42DC: $02
    pop bc                                        ; $42DD: $C1
    add $9C                                       ; $42DE: $C6 $9C
    nop                                           ; $42E0: $00
    adc b                                         ; $42E1: $88
    ld [$C301], sp                                ; $42E2: $08 $01 $C3
    adc b                                         ; $42E5: $88
    ld [$0093], sp                                ; $42E6: $08 $93 $00
    ld bc, $8B08                                  ; $42E9: $01 $08 $8B
    nop                                           ; $42EC: $00
    ld [bc], a                                    ; $42ED: $02
    pop bc                                        ; $42EE: $C1
    add $9E                                       ; $42EF: $C6 $9E
    nop                                           ; $42F1: $00
    add e                                         ; $42F2: $83
    ld [$0087], sp                                ; $42F3: $08 $87 $00
    add e                                         ; $42F6: $83
    ld [$0093], sp                                ; $42F7: $08 $93 $00
    add l                                         ; $42FA: $85
    ld [$0089], sp                                ; $42FB: $08 $89 $00
    ld [bc], a                                    ; $42FE: $02
    pop bc                                        ; $42FF: $C1
    add $8A                                       ; $4300: $C6 $8A
    nop                                           ; $4302: $00
    ld bc, $B308                                  ; $4303: $01 $08 $B3
    nop                                           ; $4306: $00
    add l                                         ; $4307: $85
    ld [$0089], sp                                ; $4308: $08 $89 $00
    ld [bc], a                                    ; $430B: $02
    pop bc                                        ; $430C: $C1
    add $88                                       ; $430D: $C6 $88
    nop                                           ; $430F: $00
    add l                                         ; $4310: $85
    ld [$0093], sp                                ; $4311: $08 $93 $00
    add d                                         ; $4314: $82
    ld [$0085], sp                                ; $4315: $08 $85 $00
    add d                                         ; $4318: $82
    ld [$0094], sp                                ; $4319: $08 $94 $00
    add a                                         ; $431C: $87
    ld [$0088], sp                                ; $431D: $08 $88 $00
    ld [bc], a                                    ; $4320: $02
    pop bc                                        ; $4321: $C1
    add $87                                       ; $4322: $C6 $87
    nop                                           ; $4324: $00
    add a                                         ; $4325: $87
    ld [$0091], sp                                ; $4326: $08 $91 $00
    add h                                         ; $4329: $84
    ld [$0083], sp                                ; $432A: $08 $83 $00
    add h                                         ; $432D: $84
    ld [$0091], sp                                ; $432E: $08 $91 $00
    adc e                                         ; $4331: $8B
    ld [$0086], sp                                ; $4332: $08 $86 $00
    ld [bc], a                                    ; $4335: $02
    pop bc                                        ; $4336: $C1
    add $85                                       ; $4337: $C6 $85
    nop                                           ; $4339: $00
    adc e                                         ; $433A: $8B
    ld [$008F], sp                                ; $433B: $08 $8F $00
    add h                                         ; $433E: $84
    ld [$0083], sp                                ; $433F: $08 $83 $00
    add h                                         ; $4342: $84
    ld [$0091], sp                                ; $4343: $08 $91 $00
    adc e                                         ; $4346: $8B
    ld [$0086], sp                                ; $4347: $08 $86 $00
    ld [bc], a                                    ; $434A: $02
    pop bc                                        ; $434B: $C1
    add $85                                       ; $434C: $C6 $85
    nop                                           ; $434E: $00
    adc e                                         ; $434F: $8B
    ld [$008F], sp                                ; $4350: $08 $8F $00
    add h                                         ; $4353: $84
    ld [$0083], sp                                ; $4354: $08 $83 $00
    add h                                         ; $4357: $84
    ld [$0091], sp                                ; $4358: $08 $91 $00
    adc e                                         ; $435B: $8B
    ld [$0086], sp                                ; $435C: $08 $86 $00
    ld [bc], a                                    ; $435F: $02
    pop bc                                        ; $4360: $C1
    add $84                                       ; $4361: $C6 $84
    nop                                           ; $4363: $00
    adc l                                         ; $4364: $8D
    ld [$008E], sp                                ; $4365: $08 $8E $00
    add e                                         ; $4368: $83
    ld [$0085], sp                                ; $4369: $08 $85 $00
    add e                                         ; $436C: $83
    ld [$0091], sp                                ; $436D: $08 $91 $00
    adc e                                         ; $4370: $8B
    ld [$0086], sp                                ; $4371: $08 $86 $00
    ld [bc], a                                    ; $4374: $02
    pop bc                                        ; $4375: $C1
    add $83                                       ; $4376: $C6 $83
    nop                                           ; $4378: $00
    adc a                                         ; $4379: $8F
    ld [$00A9], sp                                ; $437A: $08 $A9 $00
    adc e                                         ; $437D: $8B
    ld [$0086], sp                                ; $437E: $08 $86 $00
    ld [bc], a                                    ; $4381: $02
    pop bc                                        ; $4382: $C1
    add $83                                       ; $4383: $C6 $83
    nop                                           ; $4385: $00
    adc a                                         ; $4386: $8F
    ld [$00A9], sp                                ; $4387: $08 $A9 $00
    adc e                                         ; $438A: $8B
    ld [$0086], sp                                ; $438B: $08 $86 $00
    ld [bc], a                                    ; $438E: $02
    pop bc                                        ; $438F: $C1
    add $83                                       ; $4390: $C6 $83
    nop                                           ; $4392: $00
    adc a                                         ; $4393: $8F
    ld [$00A9], sp                                ; $4394: $08 $A9 $00
    adc e                                         ; $4397: $8B
    ld [$0086], sp                                ; $4398: $08 $86 $00
    ld [bc], a                                    ; $439B: $02
    pop bc                                        ; $439C: $C1
    add $83                                       ; $439D: $C6 $83
    nop                                           ; $439F: $00
    add a                                         ; $43A0: $87
    ld [$C201], sp                                ; $43A1: $08 $01 $C2
    add a                                         ; $43A4: $87
    ld [$00A9], sp                                ; $43A5: $08 $A9 $00
    add l                                         ; $43A8: $85
    ld [$C401], sp                                ; $43A9: $08 $01 $C4
    add l                                         ; $43AC: $85
    ld [$0086], sp                                ; $43AD: $08 $86 $00
    ld [bc], a                                    ; $43B0: $02
    pop bc                                        ; $43B1: $C1
    add $85                                       ; $43B2: $C6 $85
    nop                                           ; $43B4: $00
    add l                                         ; $43B5: $85
    ld [$C201], sp                                ; $43B6: $08 $01 $C2
    add l                                         ; $43B9: $85
    ld [$00AB], sp                                ; $43BA: $08 $AB $00
    add l                                         ; $43BD: $85
    ld [$C401], sp                                ; $43BE: $08 $01 $C4
    add l                                         ; $43C1: $85
    ld [$0086], sp                                ; $43C2: $08 $86 $00
    ld [bc], a                                    ; $43C5: $02
    pop bc                                        ; $43C6: $C1
    add $C0                                       ; $43C7: $C6 $C0
    ld c, h                                       ; $43C9: $4C
    nop                                           ; $43CA: $00
    ld [bc], a                                    ; $43CB: $02
    pop bc                                        ; $43CC: $C1
    add $C0                                       ; $43CD: $C6 $C0
    ld c, h                                       ; $43CF: $4C
    nop                                           ; $43D0: $00
    ld [bc], a                                    ; $43D1: $02
    pop bc                                        ; $43D2: $C1
    add $BD                                       ; $43D3: $C6 $BD
    nop                                           ; $43D5: $00
    add d                                         ; $43D6: $82
    ld [$0083], sp                                ; $43D7: $08 $83 $00
    add d                                         ; $43DA: $82
    ld [$0088], sp                                ; $43DB: $08 $88 $00
    ld [bc], a                                    ; $43DE: $02
    pop bc                                        ; $43DF: $C1
    add $87                                       ; $43E0: $C6 $87
    nop                                           ; $43E2: $00
    add d                                         ; $43E3: $82
    ld [$0083], sp                                ; $43E4: $08 $83 $00
    add d                                         ; $43E7: $82
    ld [$00AF], sp                                ; $43E8: $08 $AF $00
    add d                                         ; $43EB: $82
    ld [$0083], sp                                ; $43EC: $08 $83 $00
    add d                                         ; $43EF: $82
    ld [$0088], sp                                ; $43F0: $08 $88 $00
    ld [bc], a                                    ; $43F3: $02
    pop bc                                        ; $43F4: $C1
    add $87                                       ; $43F5: $C6 $87
    nop                                           ; $43F7: $00
    add d                                         ; $43F8: $82
    ld [$0083], sp                                ; $43F9: $08 $83 $00
    add d                                         ; $43FC: $82
    ld [$00AF], sp                                ; $43FD: $08 $AF $00
    add d                                         ; $4400: $82
    ld [$0083], sp                                ; $4401: $08 $83 $00
    add d                                         ; $4404: $82
    ld [$0088], sp                                ; $4405: $08 $88 $00
    ld [bc], a                                    ; $4408: $02
    pop bc                                        ; $4409: $C1
    add $87                                       ; $440A: $C6 $87
    nop                                           ; $440C: $00
    add d                                         ; $440D: $82
    ld [$0083], sp                                ; $440E: $08 $83 $00
    add d                                         ; $4411: $82
    ld [$00BE], sp                                ; $4412: $08 $BE $00
    ld [bc], a                                    ; $4415: $02
    pop bc                                        ; $4416: $C1
    add $C0                                       ; $4417: $C6 $C0
    ld c, h                                       ; $4419: $4C
    nop                                           ; $441A: $00
    ld [bc], a                                    ; $441B: $02
    pop bc                                        ; $441C: $C1
    add $C0                                       ; $441D: $C6 $C0
    ld c, h                                       ; $441F: $4C
    nop                                           ; $4420: $00
    ld [bc], a                                    ; $4421: $02
    pop bc                                        ; $4422: $C1
    add $C0                                       ; $4423: $C6 $C0
    ld c, h                                       ; $4425: $4C
    nop                                           ; $4426: $00
    ld [bc], a                                    ; $4427: $02
    pop bc                                        ; $4428: $C1
    add $C0                                       ; $4429: $C6 $C0
    ld c, h                                       ; $442B: $4C
    nop                                           ; $442C: $00
    ld [bc], a                                    ; $442D: $02
    pop bc                                        ; $442E: $C1
    add $C0                                       ; $442F: $C6 $C0
    ld c, h                                       ; $4431: $4C
    nop                                           ; $4432: $00
    ld [bc], a                                    ; $4433: $02
    pop bc                                        ; $4434: $C1
    add $C0                                       ; $4435: $C6 $C0
    ld c, h                                       ; $4437: $4C
    nop                                           ; $4438: $00
    ld [bc], a                                    ; $4439: $02
    pop bc                                        ; $443A: $C1
    add $C0                                       ; $443B: $C6 $C0
    ld c, h                                       ; $443D: $4C
    nop                                           ; $443E: $00
    ld [bc], a                                    ; $443F: $02
    pop bc                                        ; $4440: $C1
    add $C0                                       ; $4441: $C6 $C0
    ld c, h                                       ; $4443: $4C
    nop                                           ; $4444: $00
    ld [bc], a                                    ; $4445: $02
    pop bc                                        ; $4446: $C1
    add $C0                                       ; $4447: $C6 $C0
    ld c, h                                       ; $4449: $4C
    nop                                           ; $444A: $00
    ld [bc], a                                    ; $444B: $02
    pop bc                                        ; $444C: $C1
    ld [$4CC0], sp                                ; $444D: $08 $C0 $4C
    push bc                                       ; $4450: $C5
    ld bc, $0008                                  ; $4451: $01 $08 $00
    inc d                                         ; $4454: $14
    or h                                          ; $4455: $B4
    nop                                           ; $4456: $00
    add hl, bc                                    ; $4457: $09
    ld e, $20                                     ; $4458: $1E $20
    inc bc                                        ; $445A: $03
    add d                                         ; $445B: $82
    or d                                          ; $445C: $B2
    ld [bc], a                                    ; $445D: $02
    or a                                          ; $445E: $B7
    ld a, [bc]                                    ; $445F: $0A
    add h                                         ; $4460: $84
    ld sp, hl                                     ; $4461: $F9
    ld [bc], a                                    ; $4462: $02
    pop bc                                        ; $4463: $C1
    db $FC                                        ; $4464: $FC
    adc h                                         ; $4465: $8C
    or d                                          ; $4466: $B2
    ld [bc], a                                    ; $4467: $02
    or a                                          ; $4468: $B7
    ld a, [de]                                    ; $4469: $1A
    add h                                         ; $446A: $84
    ld sp, hl                                     ; $446B: $F9
    inc bc                                        ; $446C: $03
    pop de                                        ; $446D: $D1
    jp nc, $8BD3                                  ; $446E: $D2 $D3 $8B

    or d                                          ; $4471: $B2
    ld [bc], a                                    ; $4472: $02
    or a                                          ; $4473: $B7
    ld a, [bc]                                    ; $4474: $0A
    add h                                         ; $4475: $84
    ld sp, hl                                     ; $4476: $F9
    inc bc                                        ; $4477: $03
    pop hl                                        ; $4478: $E1
    ld [c], a                                     ; $4479: $E2
    db $E3                                        ; $447A: $E3
    adc c                                         ; $447B: $89
    or d                                          ; $447C: $B2
    inc b                                         ; $447D: $04
    jp c, $B7DB                                   ; $447E: $DA $DB $B7

    ld a, [de]                                    ; $4481: $1A
    add h                                         ; $4482: $84
    ld sp, hl                                     ; $4483: $F9
    inc bc                                        ; $4484: $03
    pop af                                        ; $4485: $F1
    ld a, [c]                                     ; $4486: $F2
    di                                            ; $4487: $F3
    adc c                                         ; $4488: $89
    or d                                          ; $4489: $B2
    inc b                                         ; $448A: $04
    ld [$B7EB], a                                 ; $448B: $EA $EB $B7
    ld a, [de]                                    ; $448E: $1A
    add e                                         ; $448F: $83
    ld sp, hl                                     ; $4490: $F9
    dec b                                         ; $4491: $05
    xor $F9                                       ; $4492: $EE $F9
    sub d                                         ; $4494: $92
    jp c, $8BDB                                   ; $4495: $DA $DB $8B

    or d                                          ; $4498: $B2
    ld bc, $852C                                  ; $4499: $01 $2C $85
    ld sp, hl                                     ; $449C: $F9
    inc bc                                        ; $449D: $03
    and d                                         ; $449E: $A2
    ld [$89EB], a                                 ; $449F: $EA $EB $89
    or d                                          ; $44A2: $B2
    inc bc                                        ; $44A3: $03
    or a                                          ; $44A4: $B7
    ld a, [bc]                                    ; $44A5: $0A
    inc a                                         ; $44A6: $3C
    add h                                         ; $44A7: $84
    ld sp, hl                                     ; $44A8: $F9
    ld bc, $8CB1                                  ; $44A9: $01 $B1 $8C
    or d                                          ; $44AC: $B2
    inc bc                                        ; $44AD: $03
    or a                                          ; $44AE: $B7
    ld a, [de]                                    ; $44AF: $1A
    inc a                                         ; $44B0: $3C
    add h                                         ; $44B1: $84
    ld sp, hl                                     ; $44B2: $F9
    ld [bc], a                                    ; $44B3: $02
    pop bc                                        ; $44B4: $C1
    jp nz, $B28B                                  ; $44B5: $C2 $8B $B2

    inc b                                         ; $44B8: $04
    or a                                          ; $44B9: $B7
    ld a, [bc]                                    ; $44BA: $0A
    ld c, h                                       ; $44BB: $4C
    xor $83                                       ; $44BC: $EE $83
    ld sp, hl                                     ; $44BE: $F9
    inc bc                                        ; $44BF: $03
    pop de                                        ; $44C0: $D1
    jp nc, $8AD3                                  ; $44C1: $D2 $D3 $8A

    or d                                          ; $44C4: $B2
    inc bc                                        ; $44C5: $03
    or a                                          ; $44C6: $B7
    ld a, [de]                                    ; $44C7: $1A
    rst $28                                       ; $44C8: $EF
    add h                                         ; $44C9: $84
    ld sp, hl                                     ; $44CA: $F9
    inc bc                                        ; $44CB: $03
    pop hl                                        ; $44CC: $E1
    ld [c], a                                     ; $44CD: $E2
    db $E3                                        ; $44CE: $E3
    adc d                                         ; $44CF: $8A
    or d                                          ; $44D0: $B2
    inc bc                                        ; $44D1: $03
    or a                                          ; $44D2: $B7
    ld a, [bc]                                    ; $44D3: $0A
    rst $28                                       ; $44D4: $EF
    add e                                         ; $44D5: $83
    ld sp, hl                                     ; $44D6: $F9
    inc b                                         ; $44D7: $04
    ldh a, [$F1]                                  ; $44D8: $F0 $F1
    ld a, [c]                                     ; $44DA: $F2
    di                                            ; $44DB: $F3
    adc d                                         ; $44DC: $8A
    or d                                          ; $44DD: $B2
    ld [bc], a                                    ; $44DE: $02
    or a                                          ; $44DF: $B7
    ld a, [de]                                    ; $44E0: $1A
    add h                                         ; $44E1: $84
    ld sp, hl                                     ; $44E2: $F9
    dec b                                         ; $44E3: $05
    xor $EC                                       ; $44E4: $EE $EC
    ld c, d                                       ; $44E6: $4A
    ld c, e                                       ; $44E7: $4B
    db $FC                                        ; $44E8: $FC
    adc c                                         ; $44E9: $89
    or d                                          ; $44EA: $B2
    ld [bc], a                                    ; $44EB: $02
    or a                                          ; $44EC: $B7
    ld a, [bc]                                    ; $44ED: $0A
    add h                                         ; $44EE: $84
    ld sp, hl                                     ; $44EF: $F9
    inc b                                         ; $44F0: $04
    db $EC                                        ; $44F1: $EC
    or d                                          ; $44F2: $B2
    ld e, d                                       ; $44F3: $5A
    ld e, e                                       ; $44F4: $5B
    adc d                                         ; $44F5: $8A
    or d                                          ; $44F6: $B2
    ld [bc], a                                    ; $44F7: $02
    or a                                          ; $44F8: $B7
    ld a, [de]                                    ; $44F9: $1A
    add d                                         ; $44FA: $82
    rst $20                                       ; $44FB: $E7
    inc b                                         ; $44FC: $04
    ld sp, hl                                     ; $44FD: $F9
    adc $D8                                       ; $44FE: $CE $D8
    reti                                          ; $4500: $D9


    adc h                                         ; $4501: $8C
    or d                                          ; $4502: $B2
    ld [$0AB7], sp                                ; $4503: $08 $B7 $0A
    ld a, [$F910]                                 ; $4506: $FA $10 $F9
    dec bc                                        ; $4509: $0B
    add sp, -$17                                  ; $450A: $E8 $E9
    adc h                                         ; $450C: $8C
    or d                                          ; $450D: $B2
    ld [bc], a                                    ; $450E: $02
    or a                                          ; $450F: $B7
    ld a, [de]                                    ; $4510: $1A
    add e                                         ; $4511: $83
    ld sp, hl                                     ; $4512: $F9
    ld [$8E2C], sp                                ; $4513: $08 $2C $8E
    adc a                                         ; $4516: $8F
    adc [hl]                                      ; $4517: $8E
    adc a                                         ; $4518: $8F
    adc [hl]                                      ; $4519: $8E
    adc a                                         ; $451A: $8F
    inc l                                         ; $451B: $2C
    add a                                         ; $451C: $87
    or d                                          ; $451D: $B2
    ld [bc], a                                    ; $451E: $02
    or a                                          ; $451F: $B7
    ld a, [bc]                                    ; $4520: $0A
    add e                                         ; $4521: $83
    ld sp, hl                                     ; $4522: $F9
    ld [$6E3C], sp                                ; $4523: $08 $3C $6E
    ld l, a                                       ; $4526: $6F
    sbc [hl]                                      ; $4527: $9E
    sbc a                                         ; $4528: $9F
    ld l, [hl]                                    ; $4529: $6E
    ld l, a                                       ; $452A: $6F
    inc a                                         ; $452B: $3C
    add a                                         ; $452C: $87
    or d                                          ; $452D: $B2
    inc bc                                        ; $452E: $03
    or a                                          ; $452F: $B7
    ld a, [de]                                    ; $4530: $1A
    ld sp, hl                                     ; $4531: $F9
    add d                                         ; $4532: $82
    rst $20                                       ; $4533: $E7
    ld a, [bc]                                    ; $4534: $0A
    inc a                                         ; $4535: $3C
    ld a, [hl]                                    ; $4536: $7E
    ld a, a                                       ; $4537: $7F
    xor [hl]                                      ; $4538: $AE
    xor a                                         ; $4539: $AF
    ld a, [hl]                                    ; $453A: $7E
    ld a, a                                       ; $453B: $7F
    inc a                                         ; $453C: $3C
    dec bc                                        ; $453D: $0B
    rst $00                                       ; $453E: $C7
    add l                                         ; $453F: $85

Call_074_4540:
    or d                                          ; $4540: $B2
    rrca                                          ; $4541: $0F
    or a                                          ; $4542: $B7
    ld a, [bc]                                    ; $4543: $0A
    ld sp, hl                                     ; $4544: $F9
    ld a, [$4C10]                                 ; $4545: $FA $10 $4C
    ld hl, sp-$03                                 ; $4548: $F8 $FD
    cp [hl]                                       ; $454A: $BE
    cp a                                          ; $454B: $BF
    ld hl, sp-$03                                 ; $454C: $F8 $FD
    ld c, h                                       ; $454E: $4C
    dec bc                                        ; $454F: $0B
    rst $00                                       ; $4550: $C7
    add l                                         ; $4551: $85
    or d                                          ; $4552: $B2
    ld [bc], a                                    ; $4553: $02
    or a                                          ; $4554: $B7
    ld a, [de]                                    ; $4555: $1A
    add h                                         ; $4556: $84
    ld sp, hl                                     ; $4557: $F9
    ld [bc], a                                    ; $4558: $02
    ld a, [$8210]                                 ; $4559: $FA $10 $82
    ld sp, hl                                     ; $455C: $F9
    rlca                                          ; $455D: $07
    rst $28                                       ; $455E: $EF
    ld c, [hl]                                    ; $455F: $4E
    ld c, a                                       ; $4560: $4F
    dec de                                        ; $4561: $1B
    rst $00                                       ; $4562: $C7
    ret c                                         ; $4563: $D8

    reti                                          ; $4564: $D9


    add l                                         ; $4565: $85
    or d                                          ; $4566: $B2
    ld bc, $88ED                                  ; $4567: $01 $ED $88
    ld sp, hl                                     ; $456A: $F9
    ld b, $5E                                     ; $456B: $06 $5E

Call_074_456D:
    rst $28                                       ; $456D: $EF
    dec bc                                        ; $456E: $0B
    rst $00                                       ; $456F: $C7
    add sp, -$17                                  ; $4570: $E8 $E9
    add h                                         ; $4572: $84
    or d                                          ; $4573: $B2
    inc bc                                        ; $4574: $03
    jp c, $EDDB                                   ; $4575: $DA $DB $ED

    add e                                         ; $4578: $83
    ld sp, hl                                     ; $4579: $F9
    ld bc, $84E7                                  ; $457A: $01 $E7 $84
    ld sp, hl                                     ; $457D: $F9
    dec b                                         ; $457E: $05
    nop                                           ; $457F: $00
    inc l                                         ; $4580: $2C
    adc [hl]                                      ; $4581: $8E
    adc a                                         ; $4582: $8F
    inc l                                         ; $4583: $2C
    add h                                         ; $4584: $84
    or d                                          ; $4585: $B2
    ld [$EBEA], sp                                ; $4586: $08 $EA $EB
    or d                                          ; $4589: $B2
    db $DD                                        ; $458A: $DD
    cp d                                          ; $458B: $BA
    rst $20                                       ; $458C: $E7
    cp d                                          ; $458D: $BA
    rst $20                                       ; $458E: $E7
    add h                                         ; $458F: $84
    ld sp, hl                                     ; $4590: $F9
    inc b                                         ; $4591: $04
    inc a                                         ; $4592: $3C
    ld l, [hl]                                    ; $4593: $6E
    ld l, a                                       ; $4594: $6F
    inc a                                         ; $4595: $3C
    adc b                                         ; $4596: $88
    or d                                          ; $4597: $B2
    dec b                                         ; $4598: $05
    ld [$0809], sp                                ; $4599: $08 $09 $08
    add hl, bc                                    ; $459C: $09
    db $ED                                        ; $459D: $ED
    add d                                         ; $459E: $82
    ld sp, hl                                     ; $459F: $F9
    rlca                                          ; $45A0: $07
    ld a, [$7E3C]                                 ; $45A1: $FA $3C $7E
    ld a, a                                       ; $45A4: $7F
    inc a                                         ; $45A5: $3C
    dec bc                                        ; $45A6: $0B
    rst $00                                       ; $45A7: $C7
    add [hl]                                      ; $45A8: $86
    or d                                          ; $45A9: $B2
    add h                                         ; $45AA: $84
    rst $10                                       ; $45AB: $D7
    ld [bc], a                                    ; $45AC: $02
    or l                                          ; $45AD: $B5
    or [hl]                                       ; $45AE: $B6
    add d                                         ; $45AF: $82
    ld sp, hl                                     ; $45B0: $F9
    ld b, $4C                                     ; $45B1: $06 $4C
    ld hl, sp-$03                                 ; $45B3: $F8 $FD
    ld c, h                                       ; $45B5: $4C
    dec de                                        ; $45B6: $1B
    rst $00                                       ; $45B7: $C7
    adc b                                         ; $45B8: $88
    or d                                          ; $45B9: $B2
    ld [$DBDA], sp                                ; $45BA: $08 $DA $DB
    push bc                                       ; $45BD: $C5
    add $F9                                       ; $45BE: $C6 $F9
    cp d                                          ; $45C0: $BA
    rst $20                                       ; $45C1: $E7
    xor $82                                       ; $45C2: $EE $82
    nop                                           ; $45C4: $00
    ld [bc], a                                    ; $45C5: $02
    dec bc                                        ; $45C6: $0B
    rst $00                                       ; $45C7: $C7
    adc b                                         ; $45C8: $88
    or d                                          ; $45C9: $B2
    rlca                                          ; $45CA: $07
    ld [$D5EB], a                                 ; $45CB: $EA $EB $D5
    sub $F9                                       ; $45CE: $D6 $F9
    ld a, [$8210]                                 ; $45D0: $FA $10 $82
    ld sp, hl                                     ; $45D3: $F9
    inc bc                                        ; $45D4: $03
    rst $28                                       ; $45D5: $EF
    dec de                                        ; $45D6: $1B
    rst $00                                       ; $45D7: $C7
    adc d                                         ; $45D8: $8A
    or d                                          ; $45D9: $B2
    ld a, [bc]                                    ; $45DA: $0A
    push hl                                       ; $45DB: $E5
    and $F9                                       ; $45DC: $E6 $F9
    rst $20                                       ; $45DE: $E7
    ld sp, hl                                     ; $45DF: $F9
    rst $20                                       ; $45E0: $E7
    cp d                                          ; $45E1: $BA
    rst $20                                       ; $45E2: $E7
    dec bc                                        ; $45E3: $0B
    rst $00                                       ; $45E4: $C7
    adc d                                         ; $45E5: $8A
    or d                                          ; $45E6: $B2
    inc bc                                        ; $45E7: $03
    push af                                       ; $45E8: $F5
    or $F7                                        ; $45E9: $F6 $F7
    add e                                         ; $45EB: $83
    ld sp, hl                                     ; $45EC: $F9
    inc b                                         ; $45ED: $04
    ld a, [$1B10]                                 ; $45EE: $FA $10 $1B
    rst $00                                       ; $45F1: $C7
    adc d                                         ; $45F2: $8A
    or d                                          ; $45F3: $B2
    dec b                                         ; $45F4: $05
    sub l                                         ; $45F5: $95
    xor $F9                                       ; $45F6: $EE $F9
    cp d                                          ; $45F8: $BA
    rst $20                                       ; $45F9: $E7
    add d                                         ; $45FA: $82
    ld sp, hl                                     ; $45FB: $F9
    ld bc, $8CB1                                  ; $45FC: $01 $B1 $8C
    or d                                          ; $45FF: $B2
    add hl, bc                                    ; $4600: $09
    and l                                         ; $4601: $A5
    ld sp, hl                                     ; $4602: $F9
    ld sp, hl                                     ; $4603: $F9
    ld a, [$BA10]                                 ; $4604: $FA $10 $BA
    rst $20                                       ; $4607: $E7
    pop bc                                        ; $4608: $C1
    jp nz, $B289                                  ; $4609: $C2 $89 $B2

    inc b                                         ; $460C: $04
    jp c, $B2DB                                   ; $460D: $DA $DB $B2

    rst $08                                       ; $4610: $CF
    add d                                         ; $4611: $82
    ld sp, hl                                     ; $4612: $F9
    add d                                         ; $4613: $82
    ld a, [$1004]                                 ; $4614: $FA $04 $10
    pop de                                        ; $4617: $D1
    jp nc, $88D3                                  ; $4618: $D2 $D3 $88

    or d                                          ; $461B: $B2
    rlca                                          ; $461C: $07
    ld [$B7EB], a                                 ; $461D: $EA $EB $B7
    ld a, [de]                                    ; $4620: $1A
    ld sp, hl                                     ; $4621: $F9
    cp d                                          ; $4622: $BA
    rst $20                                       ; $4623: $E7
    add d                                         ; $4624: $82
    ld sp, hl                                     ; $4625: $F9
    inc bc                                        ; $4626: $03
    pop hl                                        ; $4627: $E1
    ld [c], a                                     ; $4628: $E2
    db $E3                                        ; $4629: $E3
    adc d                                         ; $462A: $8A
    or d                                          ; $462B: $B2
    dec b                                         ; $462C: $05
    or a                                          ; $462D: $B7
    ld a, [bc]                                    ; $462E: $0A
    ld sp, hl                                     ; $462F: $F9
    ld a, [$8210]                                 ; $4630: $FA $10 $82
    ld sp, hl                                     ; $4633: $F9
    inc bc                                        ; $4634: $03
    pop af                                        ; $4635: $F1
    ld a, [c]                                     ; $4636: $F2
    di                                            ; $4637: $F3
    adc d                                         ; $4638: $8A
    or d                                          ; $4639: $B2
    ld [bc], a                                    ; $463A: $02
    or a                                          ; $463B: $B7
    ld a, [de]                                    ; $463C: $1A
    add l                                         ; $463D: $85
    ld sp, hl                                     ; $463E: $F9
    ld [bc], a                                    ; $463F: $02
    xor $92                                       ; $4640: $EE $92
    adc e                                         ; $4642: $8B
    or d                                          ; $4643: $B2
    ld [bc], a                                    ; $4644: $02

Call_074_4645:
    or a                                          ; $4645: $B7
    ld a, [bc]                                    ; $4646: $0A
    add h                                         ; $4647: $84
    ld sp, hl                                     ; $4648: $F9
    inc bc                                        ; $4649: $03
    xor $F9                                       ; $464A: $EE $F9
    and d                                         ; $464C: $A2
    adc e                                         ; $464D: $8B
    or d                                          ; $464E: $B2
    ld [bc], a                                    ; $464F: $02
    or a                                          ; $4650: $B7
    ld a, [de]                                    ; $4651: $1A
    add l                                         ; $4652: $85
    ld sp, hl                                     ; $4653: $F9
    ld bc, $8CCE                                  ; $4654: $01 $CE $8C
    or d                                          ; $4657: $B2
    ld [bc], a                                    ; $4658: $02
    or a                                          ; $4659: $B7
    ld a, [bc]                                    ; $465A: $0A
    add e                                         ; $465B: $83
    ld sp, hl                                     ; $465C: $F9
    inc b                                         ; $465D: $04
    cp d                                          ; $465E: $BA
    rst $20                                       ; $465F: $E7
    dec bc                                        ; $4660: $0B
    rst $00                                       ; $4661: $C7
    adc e                                         ; $4662: $8B
    or d                                          ; $4663: $B2
    ld [bc], a                                    ; $4664: $02
    or a                                          ; $4665: $B7
    ld a, [de]                                    ; $4666: $1A
    add e                                         ; $4667: $83
    ld sp, hl                                     ; $4668: $F9
    inc b                                         ; $4669: $04
    ld a, [$1B10]                                 ; $466A: $FA $10 $1B
    rst $00                                       ; $466D: $C7
    adc e                                         ; $466E: $8B
    or d                                          ; $466F: $B2
    ld [bc], a                                    ; $4670: $02
    or a                                          ; $4671: $B7
    ld a, [bc]                                    ; $4672: $0A
    add l                                         ; $4673: $85
    ld sp, hl                                     ; $4674: $F9
    inc bc                                        ; $4675: $03
    dec de                                        ; $4676: $1B
    rst $00                                       ; $4677: $C7
    or d                                          ; $4678: $B2
    nop                                           ; $4679: $00
    inc hl                                        ; $467A: $23
    dec sp                                        ; $467B: $3B
    ld bc, $0A18                                  ; $467C: $01 $18 $0A
    cp h                                          ; $467F: $BC
    ld [bc], a                                    ; $4680: $02
    and a                                         ; $4681: $A7
    ret c                                         ; $4682: $D8

    add a                                         ; $4683: $87
    db $E3                                        ; $4684: $E3
    adc l                                         ; $4685: $8D
    ret c                                         ; $4686: $D8

    adc b                                         ; $4687: $88
    db $E3                                        ; $4688: $E3
    add [hl]                                      ; $4689: $86
    ret c                                         ; $468A: $D8

    add hl, bc                                    ; $468B: $09
    di                                            ; $468C: $F3
    ld hl, $4D24                                  ; $468D: $21 $24 $4D
    ld c, [hl]                                    ; $4690: $4E
    ld c, a                                       ; $4691: $4F
    ld [hl+], a                                   ; $4692: $22
    inc hl                                        ; $4693: $23
    ld a, [c]                                     ; $4694: $F2
    adc e                                         ; $4695: $8B
    ret c                                         ; $4696: $D8

    ld a, [bc]                                    ; $4697: $0A
    di                                            ; $4698: $F3
    ld hl, $2322                                  ; $4699: $21 $22 $23
    ld c, l                                       ; $469C: $4D
    ld c, [hl]                                    ; $469D: $4E
    ld c, a                                       ; $469E: $4F
    ld [hl+], a                                   ; $469F: $22
    inc hl                                        ; $46A0: $23
    ld a, [c]                                     ; $46A1: $F2
    add l                                         ; $46A2: $85
    ret c                                         ; $46A3: $D8

    add hl, bc                                    ; $46A4: $09
    di                                            ; $46A5: $F3
    ld sp, $5D34                                  ; $46A6: $31 $34 $5D
    ld e, [hl]                                    ; $46A9: $5E
    ld e, a                                       ; $46AA: $5F
    ld [hl-], a                                   ; $46AB: $32
    inc sp                                        ; $46AC: $33
    ld a, [c]                                     ; $46AD: $F2
    adc e                                         ; $46AE: $8B
    ret c                                         ; $46AF: $D8

    ld a, [bc]                                    ; $46B0: $0A
    di                                            ; $46B1: $F3
    ld sp, $3332                                  ; $46B2: $31 $32 $33
    ld e, l                                       ; $46B5: $5D
    ld e, [hl]                                    ; $46B6: $5E
    ld e, a                                       ; $46B7: $5F
    ld [hl-], a                                   ; $46B8: $32
    inc sp                                        ; $46B9: $33
    ld a, [c]                                     ; $46BA: $F2
    add l                                         ; $46BB: $85
    ret c                                         ; $46BC: $D8

    add hl, bc                                    ; $46BD: $09
    di                                            ; $46BE: $F3
    ld b, c                                       ; $46BF: $41
    ld b, h                                       ; $46C0: $44
    ld l, l                                       ; $46C1: $6D
    ld l, [hl]                                    ; $46C2: $6E
    ld l, a                                       ; $46C3: $6F
    ld b, d                                       ; $46C4: $42
    ld b, e                                       ; $46C5: $43
    ld a, [c]                                     ; $46C6: $F2
    adc e                                         ; $46C7: $8B
    ret c                                         ; $46C8: $D8

    ld a, [bc]                                    ; $46C9: $0A
    di                                            ; $46CA: $F3
    ld b, c                                       ; $46CB: $41
    ld b, d                                       ; $46CC: $42
    ld b, e                                       ; $46CD: $43
    ld l, l                                       ; $46CE: $6D
    ld l, [hl]                                    ; $46CF: $6E
    ld l, a                                       ; $46D0: $6F
    ld b, d                                       ; $46D1: $42
    ld b, e                                       ; $46D2: $43
    ld a, [c]                                     ; $46D3: $F2
    add l                                         ; $46D4: $85
    ret c                                         ; $46D5: $D8

    add hl, bc                                    ; $46D6: $09
    di                                            ; $46D7: $F3
    cp l                                          ; $46D8: $BD
    cp l                                          ; $46D9: $BD
    adc l                                         ; $46DA: $8D
    adc [hl]                                      ; $46DB: $8E
    adc a                                         ; $46DC: $8F
    cp [hl]                                       ; $46DD: $BE
    cp a                                          ; $46DE: $BF
    db $F4                                        ; $46DF: $F4
    adc e                                         ; $46E0: $8B
    db $E3                                        ; $46E1: $E3
    ld a, [bc]                                    ; $46E2: $0A
    push af                                       ; $46E3: $F5
    cp l                                          ; $46E4: $BD
    cp [hl]                                       ; $46E5: $BE
    cp l                                          ; $46E6: $BD
    adc l                                         ; $46E7: $8D
    adc [hl]                                      ; $46E8: $8E
    adc a                                         ; $46E9: $8F
    cp l                                          ; $46EA: $BD
    cp [hl]                                       ; $46EB: $BE
    ld a, [c]                                     ; $46EC: $F2
    add l                                         ; $46ED: $85
    ret c                                         ; $46EE: $D8

    ld e, $F3                                     ; $46EF: $1E $F3
    call $BD53                                    ; $46F1: $CD $53 $BD
    cp [hl]                                       ; $46F4: $BE
    cp l                                          ; $46F5: $BD
    cp [hl]                                       ; $46F6: $BE
    cp a                                          ; $46F7: $BF
    ld d, b                                       ; $46F8: $50
    add d                                         ; $46F9: $82
    ld d, c                                       ; $46FA: $51
    inc h                                         ; $46FB: $24
    ld hl, $4D51                                  ; $46FC: $21 $51 $4D
    ld c, [hl]                                    ; $46FF: $4E
    ld c, a                                       ; $4700: $4F
    ld d, h                                       ; $4701: $54
    ld [hl+], a                                   ; $4702: $22
    ld hl, $BD52                                  ; $4703: $21 $52 $BD
    cp [hl]                                       ; $4706: $BE
    cp l                                          ; $4707: $BD
    cp [hl]                                       ; $4708: $BE
    call $CDCE                                    ; $4709: $CD $CE $CD
    adc $F2                                       ; $470C: $CE $F2
    add l                                         ; $470E: $85
    ret c                                         ; $470F: $D8

    add hl, bc                                    ; $4710: $09
    di                                            ; $4711: $F3
    cp l                                          ; $4712: $BD
    ld h, e                                       ; $4713: $63
    cp l                                          ; $4714: $BD
    cp [hl]                                       ; $4715: $BE
    cp l                                          ; $4716: $BD
    ld d, e                                       ; $4717: $53
    cp a                                          ; $4718: $BF
    ld h, b                                       ; $4719: $60
    add d                                         ; $471A: $82
    ld h, c                                       ; $471B: $61
    inc de                                        ; $471C: $13
    inc [hl]                                      ; $471D: $34
    ld sp, $5D08                                  ; $471E: $31 $08 $5D
    ld e, [hl]                                    ; $4721: $5E
    ld e, a                                       ; $4722: $5F
    ld h, h                                       ; $4723: $64
    ld [hl-], a                                   ; $4724: $32
    ld sp, $BD62                                  ; $4725: $31 $62 $BD
    cp [hl]                                       ; $4728: $BE
    cp l                                          ; $4729: $BD
    ld d, e                                       ; $472A: $53
    cp l                                          ; $472B: $BD
    cp [hl]                                       ; $472C: $BE
    cp l                                          ; $472D: $BD
    cp [hl]                                       ; $472E: $BE
    ld a, [c]                                     ; $472F: $F2
    add l                                         ; $4730: $85
    ret c                                         ; $4731: $D8

    add hl, bc                                    ; $4732: $09
    di                                            ; $4733: $F3
    cp l                                          ; $4734: $BD
    ld [hl], e                                    ; $4735: $73
    cp [hl]                                       ; $4736: $BE
    cp l                                          ; $4737: $BD
    cp [hl]                                       ; $4738: $BE
    ld h, e                                       ; $4739: $63
    cp a                                          ; $473A: $BF
    ld [hl], b                                    ; $473B: $70
    add d                                         ; $473C: $82
    ld [hl], c                                    ; $473D: $71
    inc de                                        ; $473E: $13
    ld b, h                                       ; $473F: $44
    ld b, c                                       ; $4740: $41
    jr jr_074_47B0                                ; $4741: $18 $6D

    ld l, [hl]                                    ; $4743: $6E
    ld l, a                                       ; $4744: $6F
    ld [hl], h                                    ; $4745: $74
    ld b, d                                       ; $4746: $42
    ld b, c                                       ; $4747: $41
    ld [hl], d                                    ; $4748: $72
    call $CDCE                                    ; $4749: $CD $CE $CD
    ld h, e                                       ; $474C: $63
    cp l                                          ; $474D: $BD
    cp [hl]                                       ; $474E: $BE
    cp l                                          ; $474F: $BD
    cp [hl]                                       ; $4750: $BE
    ld a, [c]                                     ; $4751: $F2
    add l                                         ; $4752: $85
    ret c                                         ; $4753: $D8

    ld de, $CDF3                                  ; $4754: $11 $F3 $CD
    call $CDCE                                    ; $4757: $CD $CE $CD
    adc $73                                       ; $475A: $CE $73
    cp a                                          ; $475C: $BF
    cp l                                          ; $475D: $BD
    cp [hl]                                       ; $475E: $BE
    cp a                                          ; $475F: $BF
    cp l                                          ; $4760: $BD
    cp [hl]                                       ; $4761: $BE
    cp a                                          ; $4762: $BF
    adc l                                         ; $4763: $8D
    adc [hl]                                      ; $4764: $8E
    adc a                                         ; $4765: $8F
    add l                                         ; $4766: $85
    cp l                                          ; $4767: $BD
    ld [$BDBE], sp                                ; $4768: $08 $BE $BD
    ld [hl], e                                    ; $476B: $73
    cp l                                          ; $476C: $BD
    cp [hl]                                       ; $476D: $BE
    cp l                                          ; $476E: $BD
    cp [hl]                                       ; $476F: $BE
    ld a, [c]                                     ; $4770: $F2
    add l                                         ; $4771: $85
    ret c                                         ; $4772: $D8

    ld b, $F3                                     ; $4773: $06 $F3
    cp l                                          ; $4775: $BD
    cp l                                          ; $4776: $BD
    cp [hl]                                       ; $4777: $BE
    cp l                                          ; $4778: $BD
    cp [hl]                                       ; $4779: $BE
    add d                                         ; $477A: $82
    cp a                                          ; $477B: $BF
    add hl, bc                                    ; $477C: $09
    call $CFCE                                    ; $477D: $CD $CE $CF
    call $CF53                                    ; $4780: $CD $53 $CF
    adc $CD                                       ; $4783: $CE $CD
    adc $83                                       ; $4785: $CE $83
    call $BD02                                    ; $4787: $CD $02 $BD
    cp [hl]                                       ; $478A: $BE
    add d                                         ; $478B: $82
    cp l                                          ; $478C: $BD
    ld b, $BE                                     ; $478D: $06 $BE
    cp l                                          ; $478F: $BD
    cp [hl]                                       ; $4790: $BE
    ld d, e                                       ; $4791: $53
    cp [hl]                                       ; $4792: $BE
    ld a, [c]                                     ; $4793: $F2
    add l                                         ; $4794: $85
    ret c                                         ; $4795: $D8

    ld de, $BDF3                                  ; $4796: $11 $F3 $BD
    cp [hl]                                       ; $4799: $BE
    cp l                                          ; $479A: $BD
    cp [hl]                                       ; $479B: $BE
    cp a                                          ; $479C: $BF
    cp [hl]                                       ; $479D: $BE
    cp a                                          ; $479E: $BF
    cp [hl]                                       ; $479F: $BE
    ld d, e                                       ; $47A0: $53
    cp [hl]                                       ; $47A1: $BE
    cp a                                          ; $47A2: $BF
    ld h, e                                       ; $47A3: $63
    cp a                                          ; $47A4: $BF
    cp [hl]                                       ; $47A5: $BE
    cp l                                          ; $47A6: $BD
    cp [hl]                                       ; $47A7: $BE
    add e                                         ; $47A8: $83
    cp l                                          ; $47A9: $BD
    ld a, [bc]                                    ; $47AA: $0A
    call $BEBD                                    ; $47AB: $CD $BD $BE
    cp l                                          ; $47AE: $BD
    cp [hl]                                       ; $47AF: $BE

jr_074_47B0:
    cp l                                          ; $47B0: $BD
    cp [hl]                                       ; $47B1: $BE
    ld h, e                                       ; $47B2: $63
    cp [hl]                                       ; $47B3: $BE
    ld a, [c]                                     ; $47B4: $F2
    add l                                         ; $47B5: $85
    ret c                                         ; $47B6: $D8

    inc d                                         ; $47B7: $14
    di                                            ; $47B8: $F3
    cp l                                          ; $47B9: $BD
    cp [hl]                                       ; $47BA: $BE
    cp l                                          ; $47BB: $BD
    ld d, e                                       ; $47BC: $53
    cp a                                          ; $47BD: $BF
    cp [hl]                                       ; $47BE: $BE
    cp a                                          ; $47BF: $BF
    adc $63                                       ; $47C0: $CE $63
    adc $CF                                       ; $47C2: $CE $CF
    ld [hl], e                                    ; $47C4: $73
    cp l                                          ; $47C5: $BD
    cp [hl]                                       ; $47C6: $BE
    cp a                                          ; $47C7: $BF
    cp l                                          ; $47C8: $BD
    ld d, e                                       ; $47C9: $53
    cp l                                          ; $47CA: $BD
    cp [hl]                                       ; $47CB: $BE
    add d                                         ; $47CC: $82
    cp l                                          ; $47CD: $BD
    ld [$BDBE], sp                                ; $47CE: $08 $BE $BD
    cp [hl]                                       ; $47D1: $BE
    cp l                                          ; $47D2: $BD
    cp [hl]                                       ; $47D3: $BE
    ld [hl], e                                    ; $47D4: $73
    cp [hl]                                       ; $47D5: $BE
    ld a, [c]                                     ; $47D6: $F2
    add l                                         ; $47D7: $85
    ret c                                         ; $47D8: $D8

    dec c                                         ; $47D9: $0D
    di                                            ; $47DA: $F3
    cp l                                          ; $47DB: $BD
    cp [hl]                                       ; $47DC: $BE
    cp l                                          ; $47DD: $BD
    ld h, e                                       ; $47DE: $63
    cp a                                          ; $47DF: $BF
    cp [hl]                                       ; $47E0: $BE
    cp a                                          ; $47E1: $BF
    cp [hl]                                       ; $47E2: $BE
    ld [hl], e                                    ; $47E3: $73
    cp [hl]                                       ; $47E4: $BE
    cp l                                          ; $47E5: $BD
    cp [hl]                                       ; $47E6: $BE
    add d                                         ; $47E7: $82
    cp a                                          ; $47E8: $BF
    ld [$CDBD], sp                                ; $47E9: $08 $BD $CD
    ld h, e                                       ; $47EC: $63
    call $CFCE                                    ; $47ED: $CD $CE $CF
    cp l                                          ; $47F0: $BD
    cp [hl]                                       ; $47F1: $BE
    add e                                         ; $47F2: $83
    cp l                                          ; $47F3: $BD
    inc b                                         ; $47F4: $04
    cp [hl]                                       ; $47F5: $BE
    cp l                                          ; $47F6: $BD
    cp [hl]                                       ; $47F7: $BE
    ld a, [c]                                     ; $47F8: $F2
    add l                                         ; $47F9: $85
    ret c                                         ; $47FA: $D8

    dec bc                                        ; $47FB: $0B
    di                                            ; $47FC: $F3
    cp l                                          ; $47FD: $BD
    cp [hl]                                       ; $47FE: $BE
    cp l                                          ; $47FF: $BD
    ld [hl], e                                    ; $4800: $73
    cp a                                          ; $4801: $BF
    cp [hl]                                       ; $4802: $BE
    cp a                                          ; $4803: $BF
    cp [hl]                                       ; $4804: $BE
    cp l                                          ; $4805: $BD
    cp [hl]                                       ; $4806: $BE
    add d                                         ; $4807: $82
    cp a                                          ; $4808: $BF
    add d                                         ; $4809: $82
    rst $08                                       ; $480A: $CF
    rrca                                          ; $480B: $0F
    call Call_074_73BD                            ; $480C: $CD $BD $73
    cp l                                          ; $480F: $BD
    cp [hl]                                       ; $4810: $BE
    cp a                                          ; $4811: $BF
    cp l                                          ; $4812: $BD
    ld d, e                                       ; $4813: $53
    cp [hl]                                       ; $4814: $BE
    call $BEBD                                    ; $4815: $CD $BD $BE
    cp l                                          ; $4818: $BD
    cp [hl]                                       ; $4819: $BE
    ld a, [c]                                     ; $481A: $F2
    add l                                         ; $481B: $85
    ret c                                         ; $481C: $D8

    dec b                                         ; $481D: $05
    di                                            ; $481E: $F3
    cp l                                          ; $481F: $BD
    cp [hl]                                       ; $4820: $BE
    cp l                                          ; $4821: $BD
    cp [hl]                                       ; $4822: $BE
    add e                                         ; $4823: $83
    cp a                                          ; $4824: $BF
    inc bc                                        ; $4825: $03
    adc $CD                                       ; $4826: $CE $CD
    adc $82                                       ; $4828: $CE $82
    rst $08                                       ; $482A: $CF
    add d                                         ; $482B: $82
    cp a                                          ; $482C: $BF
    ld [bc], a                                    ; $482D: $02
    cp l                                          ; $482E: $BD
    cp [hl]                                       ; $482F: $BE
    add d                                         ; $4830: $82
    cp l                                          ; $4831: $BD
    inc b                                         ; $4832: $04
    cp [hl]                                       ; $4833: $BE
    cp l                                          ; $4834: $BD
    cp l                                          ; $4835: $BD
    ld h, e                                       ; $4836: $63
    add e                                         ; $4837: $83
    cp l                                          ; $4838: $BD
    inc b                                         ; $4839: $04
    cp [hl]                                       ; $483A: $BE
    cp l                                          ; $483B: $BD
    cp [hl]                                       ; $483C: $BE
    ld a, [c]                                     ; $483D: $F2
    add l                                         ; $483E: $85
    ret c                                         ; $483F: $D8

    ld b, $F3                                     ; $4840: $06 $F3
    cp l                                          ; $4842: $BD
    cp [hl]                                       ; $4843: $BE
    cp l                                          ; $4844: $BD
    cp [hl]                                       ; $4845: $BE
    cp a                                          ; $4846: $BF
    add d                                         ; $4847: $82
    rst $08                                       ; $4848: $CF
    add hl, bc                                    ; $4849: $09
    db $E4                                        ; $484A: $E4
    db $D3                                        ; $484B: $D3
    db $D3                                        ; $484C: $D3
    push hl                                       ; $484D: $E5
    cp a                                          ; $484E: $BF
    cp [hl]                                       ; $484F: $BE
    cp a                                          ; $4850: $BF
    cp [hl]                                       ; $4851: $BE
    db $E4                                        ; $4852: $E4
    add e                                         ; $4853: $83
    db $D3                                        ; $4854: $D3
    ld a, [bc]                                    ; $4855: $0A
    push hl                                       ; $4856: $E5
    call $CD73                                    ; $4857: $CD $73 $CD
    cp l                                          ; $485A: $BD
    cp [hl]                                       ; $485B: $BE
    cp l                                          ; $485C: $BD
    cp [hl]                                       ; $485D: $BE
    cp a                                          ; $485E: $BF
    ld a, [c]                                     ; $485F: $F2
    add l                                         ; $4860: $85
    ret c                                         ; $4861: $D8

    dec b                                         ; $4862: $05
    di                                            ; $4863: $F3
    cp l                                          ; $4864: $BD
    cp [hl]                                       ; $4865: $BE
    cp l                                          ; $4866: $BD
    cp [hl]                                       ; $4867: $BE
    add e                                         ; $4868: $83
    cp a                                          ; $4869: $BF
    add hl, bc                                    ; $486A: $09
    ld a, [c]                                     ; $486B: $F2
    ret c                                         ; $486C: $D8

    ret c                                         ; $486D: $D8

    di                                            ; $486E: $F3
    rst $08                                       ; $486F: $CF
    cp [hl]                                       ; $4870: $BE
    cp a                                          ; $4871: $BF
    cp [hl]                                       ; $4872: $BE
    ld a, [c]                                     ; $4873: $F2
    add e                                         ; $4874: $83
    ret c                                         ; $4875: $D8

    inc bc                                        ; $4876: $03
    di                                            ; $4877: $F3
    cp l                                          ; $4878: $BD
    cp [hl]                                       ; $4879: $BE
    add e                                         ; $487A: $83
    cp l                                          ; $487B: $BD
    inc b                                         ; $487C: $04
    cp [hl]                                       ; $487D: $BE
    cp l                                          ; $487E: $BD
    cp [hl]                                       ; $487F: $BE
    ld a, [c]                                     ; $4880: $F2
    add [hl]                                      ; $4881: $86
    ret c                                         ; $4882: $D8

    add a                                         ; $4883: $87
    db $D3                                        ; $4884: $D3
    add e                                         ; $4885: $83
    ret c                                         ; $4886: $D8

    ld b, $F3                                     ; $4887: $06 $F3
    rst $08                                       ; $4889: $CF
    adc $CF                                       ; $488A: $CE $CF
    adc $F2                                       ; $488C: $CE $F2
    add h                                         ; $488E: $84
    ret c                                         ; $488F: $D8

    adc b                                         ; $4890: $88
    db $D3                                        ; $4891: $D3
    sub c                                         ; $4892: $91
    ret c                                         ; $4893: $D8

    inc bc                                        ; $4894: $03
    di                                            ; $4895: $F3
    cp a                                          ; $4896: $BF
    cp [hl]                                       ; $4897: $BE
    add d                                         ; $4898: $82
    cp a                                          ; $4899: $BF
    ld bc, $8FF2                                  ; $489A: $01 $F2 $8F
    ret c                                         ; $489D: $D8

    nop                                           ; $489E: $00
    ld [hl-], a                                   ; $489F: $32
    jp nz, $2701                                  ; $48A0: $C2 $01 $27

    ld a, [bc]                                    ; $48A3: $0A
    add sp, $03                                   ; $48A4: $E8 $03
    ld b, $21                                     ; $48A6: $06 $21
    and h                                         ; $48A8: $A4
    and l                                         ; $48A9: $A5
    ld sp, $3332                                  ; $48AA: $31 $32 $33
    add a                                         ; $48AD: $87
    inc [hl]                                      ; $48AE: $34
    inc bc                                        ; $48AF: $03
    ld c, d                                       ; $48B0: $4A
    sbc a                                         ; $48B1: $9F
    ld l, h                                       ; $48B2: $6C
    and e                                         ; $48B3: $A3
    ld hl, $9C07                                  ; $48B4: $21 $07 $9C
    ld [hl], d                                    ; $48B7: $72
    ld b, c                                       ; $48B8: $41
    ld b, d                                       ; $48B9: $42
    ld b, e                                       ; $48BA: $43
    ld b, h                                       ; $48BB: $44
    ld b, l                                       ; $48BC: $45
    add d                                         ; $48BD: $82
    ld c, b                                       ; $48BE: $48
    rlca                                          ; $48BF: $07
    ld b, [hl]                                    ; $48C0: $46
    ld b, a                                       ; $48C1: $47
    ld c, b                                       ; $48C2: $48
    ld e, d                                       ; $48C3: $5A
    add hl, sp                                    ; $48C4: $39
    sbc [hl]                                      ; $48C5: $9E
    ld l, h                                       ; $48C6: $6C
    adc a                                         ; $48C7: $8F
    ld hl, $A40C                                  ; $48C8: $21 $0C $A4
    and l                                         ; $48CB: $A5
    sub h                                         ; $48CC: $94
    sub l                                         ; $48CD: $95
    ld e, h                                       ; $48CE: $5C
    ld e, l                                       ; $48CF: $5D
    ld e, [hl]                                    ; $48D0: $5E
    ld e, a                                       ; $48D1: $5F
    sub a                                         ; $48D2: $97
    sbc b                                         ; $48D3: $98
    sbc [hl]                                      ; $48D4: $9E
    ld l, h                                       ; $48D5: $6C
    add a                                         ; $48D6: $87
    ld hl, $1407                                  ; $48D7: $21 $07 $14
    dec d                                         ; $48DA: $15
    ld hl, $5352                                  ; $48DB: $21 $52 $53
    ld d, h                                       ; $48DE: $54
    ld d, l                                       ; $48DF: $55
    add d                                         ; $48E0: $82
    ld e, b                                       ; $48E1: $58
    ld [$5756], sp                                ; $48E2: $08 $56 $57
    ld e, b                                       ; $48E5: $58
    ld l, d                                       ; $48E6: $6A
    ld c, c                                       ; $48E7: $49
    ld c, d                                       ; $48E8: $4A
    sbc a                                         ; $48E9: $9F
    ld a, h                                       ; $48EA: $7C
    adc l                                         ; $48EB: $8D
    ld hl, $A482                                  ; $48EC: $21 $82 $A4
    ld [bc], a                                    ; $48EF: $02
    ld sp, $8332                                  ; $48F0: $31 $32 $83
    inc [hl]                                      ; $48F3: $34
    ld [$3433], sp                                ; $48F4: $08 $33 $34
    inc [hl]                                      ; $48F7: $34
    inc sp                                        ; $48F8: $33
    inc [hl]                                      ; $48F9: $34
    sbc b                                         ; $48FA: $98
    sbc a                                         ; $48FB: $9F
    ld l, h                                       ; $48FC: $6C
    add l                                         ; $48FD: $85
    ld hl, $9C07                                  ; $48FE: $21 $07 $9C
    add d                                         ; $4901: $82
    ld hl, $630D                                  ; $4902: $21 $0D $63
    ld h, h                                       ; $4905: $64
    ld h, l                                       ; $4906: $65
    add d                                         ; $4907: $82
    nop                                           ; $4908: $00
    add hl, bc                                    ; $4909: $09
    ld h, [hl]                                    ; $490A: $66
    ld h, a                                       ; $490B: $67
    rlca                                          ; $490C: $07
    ld a, d                                       ; $490D: $7A
    ld e, c                                       ; $490E: $59
    ld e, d                                       ; $490F: $5A
    add hl, sp                                    ; $4910: $39
    sbc [hl]                                      ; $4911: $9E
    ld l, h                                       ; $4912: $6C
    add a                                         ; $4913: $87
    ld hl, $A414                                  ; $4914: $21 $14 $A4
    and l                                         ; $4917: $A5
    sub h                                         ; $4918: $94
    ld e, l                                       ; $4919: $5D
    sub l                                         ; $491A: $95
    and l                                         ; $491B: $A5
    ld b, b                                       ; $491C: $40
    ld b, c                                       ; $491D: $41
    ld b, d                                       ; $491E: $42
    ld b, [hl]                                    ; $491F: $46
    ld b, a                                       ; $4920: $47
    ld c, b                                       ; $4921: $48
    ld b, [hl]                                    ; $4922: $46
    ld b, a                                       ; $4923: $47
    ld b, [hl]                                    ; $4924: $46
    ld b, a                                       ; $4925: $47
    ld c, b                                       ; $4926: $48
    xor [hl]                                      ; $4927: $AE
    sub a                                         ; $4928: $97
    sbc [hl]                                      ; $4929: $9E
    add l                                         ; $492A: $85
    ld hl, $1405                                  ; $492B: $21 $05 $14
    dec d                                         ; $492E: $15
    add b                                         ; $492F: $80
    add c                                         ; $4930: $81
    ld [hl], e                                    ; $4931: $73
    add l                                         ; $4932: $85
    nop                                           ; $4933: $00
    add hl, bc                                    ; $4934: $09
    ld [hl], e                                    ; $4935: $73
    rla                                           ; $4936: $17
    ld l, b                                       ; $4937: $68
    ld l, c                                       ; $4938: $69
    ld l, d                                       ; $4939: $6A
    ld c, c                                       ; $493A: $49
    ld c, d                                       ; $493B: $4A
    sbc a                                         ; $493C: $9F
    ld a, h                                       ; $493D: $7C
    add l                                         ; $493E: $85
    ld hl, $A404                                  ; $493F: $21 $04 $A4
    and [hl]                                      ; $4942: $A6
    ld sp, $8332                                  ; $4943: $31 $32 $83
    inc [hl]                                      ; $4946: $34
    ld c, $50                                     ; $4947: $0E $50
    ld d, c                                       ; $4949: $51
    ld d, d                                       ; $494A: $52
    ld d, [hl]                                    ; $494B: $56
    ld d, a                                       ; $494C: $57
    ld e, b                                       ; $494D: $58
    ld d, [hl]                                    ; $494E: $56
    ld d, a                                       ; $494F: $57
    ld d, [hl]                                    ; $4950: $56
    ld d, a                                       ; $4951: $57
    ld e, b                                       ; $4952: $58
    cp [hl]                                       ; $4953: $BE
    sbc b                                         ; $4954: $98
    ld l, h                                       ; $4955: $6C
    add l                                         ; $4956: $85
    ld hl, $A204                                  ; $4957: $21 $04 $A2
    add d                                         ; $495A: $82
    sub b                                         ; $495B: $90
    sub c                                         ; $495C: $91
    adc b                                         ; $495D: $88
    nop                                           ; $495E: $00
    ld [$7978], sp                                ; $495F: $08 $78 $79
    ld a, d                                       ; $4962: $7A
    ld e, c                                       ; $4963: $59
    ld e, d                                       ; $4964: $5A
    add hl, sp                                    ; $4965: $39
    sbc b                                         ; $4966: $98
    sub a                                         ; $4967: $97
    add d                                         ; $4968: $82
    ld e, h                                       ; $4969: $5C
    ld d, $5D                                     ; $496A: $16 $5D
    sub h                                         ; $496C: $94
    and l                                         ; $496D: $A5
    ld b, b                                       ; $496E: $40
    ld b, c                                       ; $496F: $41
    ld b, d                                       ; $4970: $42
    ld b, [hl]                                    ; $4971: $46
    ld b, a                                       ; $4972: $47
    ld c, b                                       ; $4973: $48
    ld h, b                                       ; $4974: $60
    ld h, c                                       ; $4975: $61
    ld h, d                                       ; $4976: $62
    ld h, [hl]                                    ; $4977: $66
    ld h, a                                       ; $4978: $67
    nop                                           ; $4979: $00
    ld h, [hl]                                    ; $497A: $66
    ld h, a                                       ; $497B: $67
    ld h, [hl]                                    ; $497C: $66
    ld h, a                                       ; $497D: $67
    call $A8CE                                    ; $497E: $CD $CE $A8
    add a                                         ; $4981: $87
    ld hl, $A203                                  ; $4982: $21 $03 $A2
    and b                                         ; $4985: $A0
    and c                                         ; $4986: $A1
    adc c                                         ; $4987: $89
    nop                                           ; $4988: $00
    dec b                                         ; $4989: $05
    ld [hl], e                                    ; $498A: $73
    ld l, b                                       ; $498B: $68
    ld l, c                                       ; $498C: $69
    ld l, d                                       ; $498D: $6A

jr_074_498E:
    ld c, c                                       ; $498E: $49
    add a                                         ; $498F: $87
    inc [hl]                                      ; $4990: $34
    ld a, [bc]                                    ; $4991: $0A
    ld d, b                                       ; $4992: $50
    ld d, c                                       ; $4993: $51
    ld d, d                                       ; $4994: $52
    ld d, [hl]                                    ; $4995: $56
    ld d, a                                       ; $4996: $57
    ld e, b                                       ; $4997: $58
    ld [hl], b                                    ; $4998: $70
    ld [hl], c                                    ; $4999: $71
    ld bc, $851E                                  ; $499A: $01 $1E $85
    nop                                           ; $499D: $00
    inc b                                         ; $499E: $04
    dec [hl]                                      ; $499F: $35
    ld [hl], $B2                                  ; $49A0: $36 $B2
    or e                                          ; $49A2: $B3
    adc c                                         ; $49A3: $89
    ld hl, $B101                                  ; $49A4: $21 $01 $B1
    add l                                         ; $49A7: $85
    nop                                           ; $49A8: $00
    ld bc, $8412                                  ; $49A9: $01 $12 $84
    nop                                           ; $49AC: $00
    ld b, $78                                     ; $49AD: $06 $78
    ld a, c                                       ; $49AF: $79
    ld a, d                                       ; $49B0: $7A
    ld e, c                                       ; $49B1: $59
    ld b, [hl]                                    ; $49B2: $46
    ld b, a                                       ; $49B3: $47
    add d                                         ; $49B4: $82
    ld c, b                                       ; $49B5: $48
    ld [$4746], sp                                ; $49B6: $08 $46 $47
    ld c, b                                       ; $49B9: $48
    ld h, b                                       ; $49BA: $60
    ld h, c                                       ; $49BB: $61
    ld h, d                                       ; $49BC: $62
    ld h, [hl]                                    ; $49BD: $66
    ld h, a                                       ; $49BE: $67
    add e                                         ; $49BF: $83
    nop                                           ; $49C0: $00
    ld bc, $8311                                  ; $49C1: $01 $11 $83
    nop                                           ; $49C4: $00
    rlca                                          ; $49C5: $07
    ld b, $00                                     ; $49C6: $06 $00
    ld [hl], e                                    ; $49C8: $73
    scf                                           ; $49C9: $37
    jr c, jr_074_498E                             ; $49CA: $38 $C2

    jp $218A                                      ; $49CC: $C3 $8A $21


    ld bc, $8BB0                                  ; $49CF: $01 $B0 $8B
    nop                                           ; $49D2: $00
    inc b                                         ; $49D3: $04
    ld l, b                                       ; $49D4: $68
    ld l, c                                       ; $49D5: $69
    ld d, [hl]                                    ; $49D6: $56
    ld d, a                                       ; $49D7: $57
    add d                                         ; $49D8: $82
    ld e, b                                       ; $49D9: $58
    dec b                                         ; $49DA: $05
    ld d, [hl]                                    ; $49DB: $56
    ld d, a                                       ; $49DC: $57
    ld e, b                                       ; $49DD: $58
    ld [hl], b                                    ; $49DE: $70
    ld [hl], c                                    ; $49DF: $71
    adc [hl]                                      ; $49E0: $8E
    nop                                           ; $49E1: $00
    inc bc                                        ; $49E2: $03
    ld [hl], e                                    ; $49E3: $73
    jp nc, $8BD3                                  ; $49E4: $D2 $D3 $8B

    ld hl, $B001                                  ; $49E7: $21 $01 $B0
    add h                                         ; $49EA: $84
    nop                                           ; $49EB: $00
    ld a, [bc]                                    ; $49EC: $0A
    ld [$B900], sp                                ; $49ED: $08 $00 $B9
    jp z, $00A1                                   ; $49F0: $CA $A1 $00

    ld a, b                                       ; $49F3: $78
    ld a, c                                       ; $49F4: $79
    ld h, [hl]                                    ; $49F5: $66
    ld h, a                                       ; $49F6: $67
    add d                                         ; $49F7: $82
    nop                                           ; $49F8: $00
    ld [bc], a                                    ; $49F9: $02
    ld h, [hl]                                    ; $49FA: $66
    ld h, a                                       ; $49FB: $67
    add d                                         ; $49FC: $82
    nop                                           ; $49FD: $00
    inc bc                                        ; $49FE: $03
    ld b, $00                                     ; $49FF: $06 $00
    inc bc                                        ; $4A01: $03
    adc h                                         ; $4A02: $8C
    nop                                           ; $4A03: $00
    inc bc                                        ; $4A04: $03
    inc bc                                        ; $4A05: $03
    or d                                          ; $4A06: $B2
    db $E3                                        ; $4A07: $E3
    adc h                                         ; $4A08: $8C
    ld hl, $E682                                  ; $4A09: $21 $82 $E6
    add d                                         ; $4A0C: $82
    push hl                                       ; $4A0D: $E5
    add d                                         ; $4A0E: $82
    and $82                                       ; $4A0F: $E6 $82
    ld hl, $CA02                                  ; $4A11: $21 $02 $CA
    and c                                         ; $4A14: $A1
    adc c                                         ; $4A15: $89
    nop                                           ; $4A16: $00
    ld bc, $901E                                  ; $4A17: $01 $1E $90
    nop                                           ; $4A1A: $00
    ld [bc], a                                    ; $4A1B: $02
    jp nz, $95C3                                  ; $4A1C: $C2 $C3 $95

    ld hl, $CA03                                  ; $4A1F: $21 $03 $CA
    or $DA                                        ; $4A22: $F6 $DA
    add d                                         ; $4A24: $82
    nop                                           ; $4A25: $00
    ld [bc], a                                    ; $4A26: $02
    inc b                                         ; $4A27: $04
    dec b                                         ; $4A28: $05
    add d                                         ; $4A29: $82
    nop                                           ; $4A2A: $00
    rlca                                          ; $4A2B: $07
    inc bc                                        ; $4A2C: $03
    nop                                           ; $4A2D: $00
    ld b, $00                                     ; $4A2E: $06 $00
    db $DB                                        ; $4A30: $DB
    cp e                                          ; $4A31: $BB
    jp z, $F683                                   ; $4A32: $CA $83 $F6

    inc bc                                        ; $4A35: $03
    call c, $DACA                                 ; $4A36: $DC $CA $DA
    add e                                         ; $4A39: $83
    nop                                           ; $4A3A: $00
    inc b                                         ; $4A3B: $04
    dec b                                         ; $4A3C: $05
    nop                                           ; $4A3D: $00
    jp nc, $97D3                                  ; $4A3E: $D2 $D3 $97

    ld hl, $CA02                                  ; $4A41: $21 $02 $CA
    jp c, $0088                                   ; $4A44: $DA $88 $00

    ld [bc], a                                    ; $4A47: $02
    db $DB                                        ; $4A48: $DB
    call c, $2186                                 ; $4A49: $DC $86 $21
    inc bc                                        ; $4A4C: $03
    sbc h                                         ; $4A4D: $9C
    ret                                           ; $4A4E: $C9


    inc bc                                        ; $4A4F: $03
    add e                                         ; $4A50: $83
    nop                                           ; $4A51: $00
    inc bc                                        ; $4A52: $03
    ld [$E3E2], sp                                ; $4A53: $08 $E2 $E3
    sbc b                                         ; $4A56: $98
    ld hl, $CA0B                                  ; $4A57: $21 $0B $CA
    call c, $F3F0                                 ; $4A5A: $DC $F0 $F3
    jp z, $08DA                                   ; $4A5D: $CA $DA $08

    nop                                           ; $4A60: $00
    db $DB                                        ; $4A61: $DB
    call c, $86EC                                 ; $4A62: $DC $EC $86
    ld hl, $C803                                  ; $4A65: $21 $03 $C8
    ld hl, $842D                                  ; $4A68: $21 $2D $84
    nop                                           ; $4A6B: $00
    ld [bc], a                                    ; $4A6C: $02
    rra                                           ; $4A6D: $1F
    sbc a                                         ; $4A6E: $9F
    sbc l                                         ; $4A6F: $9D
    ld hl, $CA04                                  ; $4A70: $21 $04 $CA
    or $F7                                        ; $4A73: $F6 $F7
    call c, $2189                                 ; $4A75: $DC $89 $21
    inc bc                                        ; $4A78: $03
    ld l, h                                       ; $4A79: $6C
    ld hl, $831D                                  ; $4A7A: $21 $1D $83
    nop                                           ; $4A7D: $00
    ld [bc], a                                    ; $4A7E: $02
    cpl                                           ; $4A7F: $2F
    call z, $21AA                                 ; $4A80: $CC $AA $21
    inc bc                                        ; $4A83: $03
    sbc h                                         ; $4A84: $9C
    ld hl, $821D                                  ; $4A85: $21 $1D $82
    nop                                           ; $4A88: $00
    ld [bc], a                                    ; $4A89: $02
    jp nc, $829F                                  ; $4A8A: $D2 $9F $82

    ld l, h                                       ; $4A8D: $6C
    xor c                                         ; $4A8E: $A9
    ld hl, $9C03                                  ; $4A8F: $21 $03 $9C
    ld hl, $821D                                  ; $4A92: $21 $1D $82
    nop                                           ; $4A95: $00
    inc b                                         ; $4A96: $04
    ld [c], a                                     ; $4A97: $E2
    xor [hl]                                      ; $4A98: $AE
    sbc [hl]                                      ; $4A99: $9E
    sbc l                                         ; $4A9A: $9D
    xor c                                         ; $4A9B: $A9
    ld hl, $AC09                                  ; $4A9C: $21 $09 $AC
    ld hl, $081D                                  ; $4A9F: $21 $1D $08
    nop                                           ; $4AA2: $00
    ldh [$BE], a                                  ; $4AA3: $E0 $BE
    cp a                                          ; $4AA5: $BF
    rst $00                                       ; $4AA6: $C7
    xor c                                         ; $4AA7: $A9
    ld hl, $9C03                                  ; $4AA8: $21 $03 $9C
    ld hl, $821D                                  ; $4AAB: $21 $1D $82
    nop                                           ; $4AAE: $00
    inc b                                         ; $4AAF: $04
    call $CFCE                                    ; $4AB0: $CD $CE $CF
    sbc b                                         ; $4AB3: $98
    xor c                                         ; $4AB4: $A9
    ld hl, $AC09                                  ; $4AB5: $21 $09 $AC
    ld hl, $001D                                  ; $4AB8: $21 $1D $00
    inc b                                         ; $4ABB: $04
    dec b                                         ; $4ABC: $05
    sbc $DF                                       ; $4ABD: $DE $DF
    xor b                                         ; $4ABF: $A8
    add h                                         ; $4AC0: $84
    ld hl, $1400                                  ; $4AC1: $21 $00 $14
    or h                                          ; $4AC4: $B4
    nop                                           ; $4AC5: $00
    add hl, bc                                    ; $4AC6: $09
    ld e, $20                                     ; $4AC7: $1E $20
    inc bc                                        ; $4AC9: $03
    sub h                                         ; $4ACA: $94
    ld hl, $8602                                  ; $4ACB: $21 $02 $86
    ld a, h                                       ; $4ACE: $7C
    add l                                         ; $4ACF: $85
    ld hl, $A203                                  ; $4AD0: $21 $03 $A2
    add [hl]                                      ; $4AD3: $86
    ld a, h                                       ; $4AD4: $7C
    adc d                                         ; $4AD5: $8A
    ld hl, $9611                                  ; $4AD6: $21 $11 $96
    sub a                                         ; $4AD9: $97
    sbc b                                         ; $4ADA: $98
    ld e, l                                       ; $4ADB: $5D
    ld e, a                                       ; $4ADC: $5F
    ld e, [hl]                                    ; $4ADD: $5E
    sub h                                         ; $4ADE: $94
    sub l                                         ; $4ADF: $95
    sub [hl]                                      ; $4AE0: $96
    sub a                                         ; $4AE1: $97
    sbc b                                         ; $4AE2: $98
    ld e, l                                       ; $4AE3: $5D
    ld e, a                                       ; $4AE4: $5F
    ld e, l                                       ; $4AE5: $5D
    sbc b                                         ; $4AE6: $98
    sbc [hl]                                      ; $4AE7: $9E
    ld l, h                                       ; $4AE8: $6C
    add e                                         ; $4AE9: $83
    ld hl, $348F                                  ; $4AEA: $21 $8F $34
    inc bc                                        ; $4AED: $03
    ld c, d                                       ; $4AEE: $4A
    sbc a                                         ; $4AEF: $9F
    ld a, h                                       ; $4AF0: $7C
    add d                                         ; $4AF1: $82
    ld hl, $1984                                  ; $4AF2: $21 $84 $19
    ld [bc], a                                    ; $4AF5: $02
    ld b, [hl]                                    ; $4AF6: $46
    ld b, a                                       ; $4AF7: $47
    add h                                         ; $4AF8: $84
    add hl, de                                    ; $4AF9: $19
    ld [bc], a                                    ; $4AFA: $02
    ld b, [hl]                                    ; $4AFB: $46
    ld b, a                                       ; $4AFC: $47
    add d                                         ; $4AFD: $82
    add hl, de                                    ; $4AFE: $19
    inc b                                         ; $4AFF: $04
    ld c, b                                       ; $4B00: $48
    ld e, d                                       ; $4B01: $5A
    ld e, e                                       ; $4B02: $5B
    xor b                                         ; $4B03: $A8
    add d                                         ; $4B04: $82
    ld hl, $2984                                  ; $4B05: $21 $84 $29

Call_074_4B08:
    ld [bc], a                                    ; $4B08: $02
    ld d, [hl]                                    ; $4B09: $56
    ld d, a                                       ; $4B0A: $57
    add h                                         ; $4B0B: $84
    add hl, hl                                    ; $4B0C: $29

Call_074_4B0D:
    ld [bc], a                                    ; $4B0D: $02
    ld d, [hl]                                    ; $4B0E: $56
    ld d, a                                       ; $4B0F: $57
    add d                                         ; $4B10: $82
    add hl, hl                                    ; $4B11: $29
    inc b                                         ; $4B12: $04
    ld e, b                                       ; $4B13: $58
    ld l, d                                       ; $4B14: $6A
    ld c, e                                       ; $4B15: $4B
    ld c, h                                       ; $4B16: $4C
    add d                                         ; $4B17: $82
    ld hl, $0084                                  ; $4B18: $21 $84 $00
    ld [bc], a                                    ; $4B1B: $02
    ld h, [hl]                                    ; $4B1C: $66
    ld h, a                                       ; $4B1D: $67
    add h                                         ; $4B1E: $84
    nop                                           ; $4B1F: $00
    ld [bc], a                                    ; $4B20: $02
    ld h, [hl]                                    ; $4B21: $66
    ld h, a                                       ; $4B22: $67
    add e                                         ; $4B23: $83
    nop                                           ; $4B24: $00
    inc bc                                        ; $4B25: $03
    ld a, d                                       ; $4B26: $7A
    ld a, e                                       ; $4B27: $7B
    xor b                                         ; $4B28: $A8
    add d                                         ; $4B29: $82
    ld hl, $0082                                  ; $4B2A: $21 $82 $00
    inc b                                         ; $4B2D: $04
    add hl, bc                                    ; $4B2E: $09
    nop                                           ; $4B2F: $00
    nop                                           ; $4B30: $00
    ld [hl], e                                    ; $4B31: $73
    add h                                         ; $4B32: $84
    nop                                           ; $4B33: $00
    dec bc                                        ; $4B34: $0B
    ld [hl], e                                    ; $4B35: $73
    ld hl, sp-$07                                 ; $4B36: $F8 $F9
    inc bc                                        ; $4B38: $03
    adc c                                         ; $4B39: $89
    adc d                                         ; $4B3A: $8A
    ld d, $9E                                     ; $4B3B: $16 $9E
    ld l, h                                       ; $4B3D: $6C
    ld hl, $8603                                  ; $4B3E: $21 $03 $86
    nop                                           ; $4B41: $00
    dec c                                         ; $4B42: $0D
    add hl, bc                                    ; $4B43: $09
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    ld [$FBFA], sp                                ; $4B46: $08 $FA $FB
    ld [$9A99], sp                                ; $4B49: $08 $99 $9A
    ld e, d                                       ; $4B4C: $5A
    ld c, d                                       ; $4B4D: $4A
    sbc a                                         ; $4B4E: $9F
    xor b                                         ; $4B4F: $A8
    add e                                         ; $4B50: $83
    nop                                           ; $4B51: $00
    ld bc, $8402                                  ; $4B52: $01 $02 $84
    nop                                           ; $4B55: $00
    ld b, $03                                     ; $4B56: $06 $03
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    add hl, bc                                    ; $4B5A: $09
    nop                                           ; $4B5B: $00
    ld [hl], h                                    ; $4B5C: $74
    add d                                         ; $4B5D: $82
    add hl, bc                                    ; $4B5E: $09
    inc c                                         ; $4B5F: $0C
    ld e, c                                       ; $4B60: $59
    ld e, d                                       ; $4B61: $5A
    ld e, e                                       ; $4B62: $5B
    xor b                                         ; $4B63: $A8
    push hl                                       ; $4B64: $E5
    and $E5                                       ; $4B65: $E6 $E5
    and $E5                                       ; $4B67: $E6 $E5
    and $BA                                       ; $4B69: $E6 $BA
    or b                                          ; $4B6B: $B0
    add a                                         ; $4B6C: $87
    nop                                           ; $4B6D: $00
    dec b                                         ; $4B6E: $05
    ld l, b                                       ; $4B6F: $68
    ld l, c                                       ; $4B70: $69
    ld l, d                                       ; $4B71: $6A
    ld c, e                                       ; $4B72: $4B
    ld c, h                                       ; $4B73: $4C
    adc b                                         ; $4B74: $88
    ld hl, $E605                                  ; $4B75: $21 $05 $E6
    push hl                                       ; $4B78: $E5
    or b                                          ; $4B79: $B0
    inc bc                                        ; $4B7A: $03
    ld [bc], a                                    ; $4B7B: $02
    add d                                         ; $4B7C: $82
    nop                                           ; $4B7D: $00
    dec b                                         ; $4B7E: $05
    ld a, b                                       ; $4B7F: $78
    ld a, c                                       ; $4B80: $79
    ld a, d                                       ; $4B81: $7A
    ld a, e                                       ; $4B82: $7B
    xor b                                         ; $4B83: $A8
    adc d                                         ; $4B84: $8A
    ld hl, $C802                                  ; $4B85: $21 $02 $C8
    or b                                          ; $4B88: $B0
    add d                                         ; $4B89: $82
    nop                                           ; $4B8A: $00
    ld b, $09                                     ; $4B8B: $06 $09
    nop                                           ; $4B8D: $00
    adc c                                         ; $4B8E: $89
    adc d                                         ; $4B8F: $8A
    ld c, e                                       ; $4B90: $4B
    ld c, h                                       ; $4B91: $4C
    adc e                                         ; $4B92: $8B
    ld hl, $C802                                  ; $4B93: $21 $02 $C8
    or b                                          ; $4B96: $B0
    add e                                         ; $4B97: $83
    nop                                           ; $4B98: $00
    inc b                                         ; $4B99: $04
    sbc c                                         ; $4B9A: $99
    sbc d                                         ; $4B9B: $9A
    sbc e                                         ; $4B9C: $9B
    xor b                                         ; $4B9D: $A8
    adc e                                         ; $4B9E: $8B
    ld hl, $1404                                  ; $4B9F: $21 $04 $14
    dec d                                         ; $4BA2: $15
    nop                                           ; $4BA3: $00
    inc bc                                        ; $4BA4: $03
    add e                                         ; $4BA5: $83
    nop                                           ; $4BA6: $00
    ld [bc], a                                    ; $4BA7: $02
    sbc e                                         ; $4BA8: $9B
    xor b                                         ; $4BA9: $A8
    adc e                                         ; $4BAA: $8B
    ld hl, $9C02                                  ; $4BAB: $21 $02 $9C
    add d                                         ; $4BAE: $82
    add e                                         ; $4BAF: $83
    nop                                           ; $4BB0: $00
    inc b                                         ; $4BB1: $04
    rlca                                          ; $4BB2: $07
    nop                                           ; $4BB3: $00
    ld c, e                                       ; $4BB4: $4B
    ld c, h                                       ; $4BB5: $4C
    adc e                                         ; $4BB6: $8B
    ld hl, $1403                                  ; $4BB7: $21 $03 $14
    dec d                                         ; $4BBA: $15
    inc a                                         ; $4BBB: $3C
    add d                                         ; $4BBC: $82
    nop                                           ; $4BBD: $00
    inc b                                         ; $4BBE: $04
    rla                                           ; $4BBF: $17
    nop                                           ; $4BC0: $00
    sbc e                                         ; $4BC1: $9B
    adc h                                         ; $4BC2: $8C

Jump_074_4BC3:
    adc e                                         ; $4BC3: $8B
    ld hl, $9C04                                  ; $4BC4: $21 $04 $9C
    add d                                         ; $4BC7: $82
    add b                                         ; $4BC8: $80
    add c                                         ; $4BC9: $81
    add d                                         ; $4BCA: $82
    nop                                           ; $4BCB: $00
    inc bc                                        ; $4BCC: $03

Jump_074_4BCD:
    ld e, $9B                                     ; $4BCD: $1E $9B
    xor b                                         ; $4BCF: $A8
    adc e                                         ; $4BD0: $8B
    ld hl, $AC04                                  ; $4BD1: $21 $04 $AC
    add d                                         ; $4BD4: $82
    sub b                                         ; $4BD5: $90
    sub c                                         ; $4BD6: $91
    add e                                         ; $4BD7: $83
    nop                                           ; $4BD8: $00
    ld [bc], a                                    ; $4BD9: $02
    ld c, e                                       ; $4BDA: $4B
    ld c, h                                       ; $4BDB: $4C
    adc d                                         ; $4BDC: $8A
    ld hl, $A204                                  ; $4BDD: $21 $04 $A2
    and l                                         ; $4BE0: $A5
    sub d                                         ; $4BE1: $92
    ccf                                           ; $4BE2: $3F
    add h                                         ; $4BE3: $84
    nop                                           ; $4BE4: $00
    ld [bc], a                                    ; $4BE5: $02
    sbc e                                         ; $4BE6: $9B
    cp b                                          ; $4BE7: $B8
    adc d                                         ; $4BE8: $8A
    ld hl, $A304                                  ; $4BE9: $21 $04 $A3
    ld [hl], d                                    ; $4BEC: $72
    ld b, c                                       ; $4BED: $41
    ccf                                           ; $4BEE: $3F
    add d                                         ; $4BEF: $82
    nop                                           ; $4BF0: $00
    inc b                                         ; $4BF1: $04
    ld [bc], a                                    ; $4BF2: $02
    nop                                           ; $4BF3: $00
    sbc e                                         ; $4BF4: $9B
    cp b                                          ; $4BF5: $B8
    adc d                                         ; $4BF6: $8A
    ld hl, $9C04                                  ; $4BF7: $21 $04 $9C
    add d                                         ; $4BFA: $82
    ld hl, $833F                                  ; $4BFB: $21 $3F $83
    nop                                           ; $4BFE: $00
    inc bc                                        ; $4BFF: $03
    xor d                                         ; $4C00: $AA
    ld l, h                                       ; $4C01: $6C
    ld l, h                                       ; $4C02: $6C
    adc d                                         ; $4C03: $8A
    ld hl, $1404                                  ; $4C04: $21 $04 $14
    dec d                                         ; $4C07: $15
    inc e                                         ; $4C08: $1C
    inc c                                         ; $4C09: $0C
    add e                                         ; $4C0A: $83
    nop                                           ; $4C0B: $00
    ld [bc], a                                    ; $4C0C: $02
    sbc e                                         ; $4C0D: $9B
    xor b                                         ; $4C0E: $A8
    adc e                                         ; $4C0F: $8B
    ld hl, $AC03                                  ; $4C10: $21 $03 $AC
    add d                                         ; $4C13: $82
    ccf                                           ; $4C14: $3F
    add e                                         ; $4C15: $83
    nop                                           ; $4C16: $00
    ld [bc], a                                    ; $4C17: $02
    xor d                                         ; $4C18: $AA
    ld l, h                                       ; $4C19: $6C
    adc e                                         ; $4C1A: $8B
    ld hl, $A305                                  ; $4C1B: $21 $05 $A3
    sbc h                                         ; $4C1E: $9C
    sub d                                         ; $4C1F: $92
    ld a, $09                                     ; $4C20: $3E $09
    add d                                         ; $4C22: $82
    nop                                           ; $4C23: $00
    ld [bc], a                                    ; $4C24: $02
    sbc e                                         ; $4C25: $9B
    sbc a                                         ; $4C26: $9F
    adc e                                         ; $4C27: $8B
    ld hl, $9C09                                  ; $4C28: $21 $09 $9C
    ld [hl], d                                    ; $4C2B: $72
    ld b, c                                       ; $4C2C: $41
    ld a, $00                                     ; $4C2D: $3E $00
    ld [bc], a                                    ; $4C2F: $02
    nop                                           ; $4C30: $00
    ld c, e                                       ; $4C31: $4B
    ld c, h                                       ; $4C32: $4C
    adc e                                         ; $4C33: $8B
    ld hl, $1404                                  ; $4C34: $21 $04 $14
    dec d                                         ; $4C37: $15
    ld hl, $833E                                  ; $4C38: $21 $3E $83
    nop                                           ; $4C3B: $00
    ld [bc], a                                    ; $4C3C: $02
    sbc e                                         ; $4C3D: $9B
    cp b                                          ; $4C3E: $B8
    adc e                                         ; $4C3F: $8B
    ld hl, $AC04                                  ; $4C40: $21 $04 $AC
    add d                                         ; $4C43: $82
    ld hl, $823E                                  ; $4C44: $21 $3E $82
    ld l, $03                                     ; $4C47: $2E $03
    nop                                           ; $4C49: $00
    ld c, e                                       ; $4C4A: $4B
    ld c, h                                       ; $4C4B: $4C
    adc e                                         ; $4C4C: $8B
    ld hl, $9C02                                  ; $4C4D: $21 $02 $9C
    add d                                         ; $4C50: $82
    add d                                         ; $4C51: $82
    ld hl, $B405                                  ; $4C52: $21 $05 $B4
    or [hl]                                       ; $4C55: $B6
    dec l                                         ; $4C56: $2D
    sbc e                                         ; $4C57: $9B
    sbc a                                         ; $4C58: $9F
    adc e                                         ; $4C59: $8B
    ld hl, $AC04                                  ; $4C5A: $21 $04 $AC
    add d                                         ; $4C5D: $82
    ld hl, $82B4                                  ; $4C5E: $21 $B4 $82
    push bc                                       ; $4C61: $C5
    inc bc                                        ; $4C62: $03
    or [hl]                                       ; $4C63: $B6
    ld c, e                                       ; $4C64: $4B
    ld c, h                                       ; $4C65: $4C
    adc e                                         ; $4C66: $8B
    ld hl, $1403                                  ; $4C67: $21 $03 $14
    dec d                                         ; $4C6A: $15
    or h                                          ; $4C6B: $B4
    add e                                         ; $4C6C: $83
    push bc                                       ; $4C6D: $C5
    inc b                                         ; $4C6E: $04
    sub $9B                                       ; $4C6F: $D6 $9B
    cp b                                          ; $4C71: $B8
    ld l, h                                       ; $4C72: $6C
    adc d                                         ; $4C73: $8A
    ld hl, $AC03                                  ; $4C74: $21 $03 $AC
    add d                                         ; $4C77: $82
    call nc, $C582                                ; $4C78: $D4 $82 $C5
    dec b                                         ; $4C7B: $05
    sub $0D                                       ; $4C7C: $D6 $0D
    ld d, $9F                                     ; $4C7E: $16 $9F
    adc h                                         ; $4C80: $8C
    adc e                                         ; $4C81: $8B
    ld hl, $AC02                                  ; $4C82: $21 $02 $AC
    and b                                         ; $4C85: $A0
    add e                                         ; $4C86: $83
    ld c, $05                                     ; $4C87: $0E $05
    nop                                           ; $4C89: $00
    ld c, c                                       ; $4C8A: $49
    ld c, d                                       ; $4C8B: $4A
    sbc [hl]                                      ; $4C8C: $9E
    ld l, h                                       ; $4C8D: $6C
    adc d                                         ; $4C8E: $8A
    ld hl, $C803                                  ; $4C8F: $21 $03 $C8
    add d                                         ; $4C92: $82
    and c                                         ; $4C93: $A1
    add e                                         ; $4C94: $83
    nop                                           ; $4C95: $00
    inc b                                         ; $4C96: $04
    ld e, c                                       ; $4C97: $59
    ld e, d                                       ; $4C98: $5A
    ld e, e                                       ; $4C99: $5B
    xor b                                         ; $4C9A: $A8
    adc d                                         ; $4C9B: $8A
    ld hl, $140A                                  ; $4C9C: $21 $0A $14
    dec d                                         ; $4C9F: $15
    add b                                         ; $4CA0: $80
    add c                                         ; $4CA1: $81
    ld [bc], a                                    ; $4CA2: $02
    ld l, b                                       ; $4CA3: $68
    ld l, c                                       ; $4CA4: $69
    ld l, d                                       ; $4CA5: $6A
    sbc e                                         ; $4CA6: $9B
    cp b                                          ; $4CA7: $B8
    adc d                                         ; $4CA8: $8A
    ld hl, $9C0A                                  ; $4CA9: $21 $0A $9C
    add d                                         ; $4CAC: $82
    sub b                                         ; $4CAD: $90
    sub c                                         ; $4CAE: $91
    nop                                           ; $4CAF: $00
    ld a, b                                       ; $4CB0: $78
    ld a, c                                       ; $4CB1: $79
    ld a, d                                       ; $4CB2: $7A
    sbc e                                         ; $4CB3: $9B
    and h                                         ; $4CB4: $A4
    adc d                                         ; $4CB5: $8A
    ld hl, $AC03                                  ; $4CB6: $21 $03 $AC
    sub d                                         ; $4CB9: $92
    ld a, $84                                     ; $4CBA: $3E $84
    nop                                           ; $4CBC: $00
    ld [bc], a                                    ; $4CBD: $02
    xor c                                         ; $4CBE: $A9
    ld a, h                                       ; $4CBF: $7C
    adc e                                         ; $4CC0: $8B
    ld hl, $1403                                  ; $4CC1: $21 $03 $14
    dec d                                         ; $4CC4: $15
    ld a, $83                                     ; $4CC5: $3E $83
    nop                                           ; $4CC7: $00
    inc bc                                        ; $4CC8: $03
    xor c                                         ; $4CC9: $A9
    ld l, h                                       ; $4CCA: $6C
    ld l, h                                       ; $4CCB: $6C
    adc e                                         ; $4CCC: $8B
    ld hl, $AC08                                  ; $4CCD: $21 $08 $AC
    add d                                         ; $4CD0: $82
    ld a, $00                                     ; $4CD1: $3E $00
    ld [bc], a                                    ; $4CD3: $02
    nop                                           ; $4CD4: $00
    sbc e                                         ; $4CD5: $9B
    xor b                                         ; $4CD6: $A8
    adc h                                         ; $4CD7: $8C
    ld hl, $1403                                  ; $4CD8: $21 $03 $14
    dec d                                         ; $4CDB: $15
    ld a, $83                                     ; $4CDC: $3E $83
    nop                                           ; $4CDE: $00
    ld [bc], a                                    ; $4CDF: $02
    sbc e                                         ; $4CE0: $9B
    cp b                                          ; $4CE1: $B8
    add d                                         ; $4CE2: $82
    ld hl, $4000                                  ; $4CE3: $21 $00 $40
    nop                                           ; $4CE6: $00
    dec b                                         ; $4CE7: $05
    ret nz                                        ; $4CE8: $C0

    ld b, c                                       ; $4CE9: $41
    ld [$A285], sp                                ; $4CEA: $08 $85 $A2
    add h                                         ; $4CED: $84
    and e                                         ; $4CEE: $A3
    adc l                                         ; $4CEF: $8D
    and h                                         ; $4CF0: $A4
    add d                                         ; $4CF1: $82
    and e                                         ; $4CF2: $A3
    add d                                         ; $4CF3: $82
    and h                                         ; $4CF4: $A4
    add d                                         ; $4CF5: $82
    and l                                         ; $4CF6: $A5
    ld [bc], a                                    ; $4CF7: $02
    and h                                         ; $4CF8: $A4
    and l                                         ; $4CF9: $A5
    add e                                         ; $4CFA: $83
    and h                                         ; $4CFB: $A4
    ld bc, $8BA3                                  ; $4CFC: $01 $A3 $8B
    and h                                         ; $4CFF: $A4
    add a                                         ; $4D00: $87
    and l                                         ; $4D01: $A5
    add e                                         ; $4D02: $83
    and e                                         ; $4D03: $A3
    add h                                         ; $4D04: $84
    and h                                         ; $4D05: $A4
    add e                                         ; $4D06: $83
    and l                                         ; $4D07: $A5
    add d                                         ; $4D08: $82
    ld [$A285], sp                                ; $4D09: $08 $85 $A2
    add h                                         ; $4D0C: $84
    and e                                         ; $4D0D: $A3
    adc l                                         ; $4D0E: $8D
    and h                                         ; $4D0F: $A4
    add d                                         ; $4D10: $82
    and e                                         ; $4D11: $A3
    add d                                         ; $4D12: $82
    ld [bc], a                                    ; $4D13: $02
    add d                                         ; $4D14: $82
    and l                                         ; $4D15: $A5
    ld [bc], a                                    ; $4D16: $02
    and h                                         ; $4D17: $A4
    and l                                         ; $4D18: $A5
    add e                                         ; $4D19: $83
    and h                                         ; $4D1A: $A4
    ld bc, $85A3                                  ; $4D1B: $01 $A3 $85
    and h                                         ; $4D1E: $A4
    add d                                         ; $4D1F: $82
    ld [bc], a                                    ; $4D20: $02
    add h                                         ; $4D21: $84
    and h                                         ; $4D22: $A4
    add a                                         ; $4D23: $87
    and l                                         ; $4D24: $A5
    add e                                         ; $4D25: $83
    and e                                         ; $4D26: $A3
    add h                                         ; $4D27: $84
    and h                                         ; $4D28: $A4
    add e                                         ; $4D29: $83
    and l                                         ; $4D2A: $A5
    add d                                         ; $4D2B: $82
    ld [$A001], sp                                ; $4D2C: $08 $01 $A0
    add h                                         ; $4D2F: $84
    ld [$A384], sp                                ; $4D30: $08 $84 $A3
    adc l                                         ; $4D33: $8D
    and h                                         ; $4D34: $A4
    add d                                         ; $4D35: $82
    and e                                         ; $4D36: $A3
    add l                                         ; $4D37: $85
    ld [bc], a                                    ; $4D38: $02
    ld bc, $83A5                                  ; $4D39: $01 $A5 $83
    and h                                         ; $4D3C: $A4
    inc bc                                        ; $4D3D: $03
    and e                                         ; $4D3E: $A3
    and h                                         ; $4D3F: $A4
    and h                                         ; $4D40: $A4
    adc b                                         ; $4D41: $88
    ld [bc], a                                    ; $4D42: $02
    adc b                                         ; $4D43: $88
    and l                                         ; $4D44: $A5
    add h                                         ; $4D45: $84
    and e                                         ; $4D46: $A3
    add d                                         ; $4D47: $82
    and h                                         ; $4D48: $A4
    ld [bc], a                                    ; $4D49: $02
    and l                                         ; $4D4A: $A5
    and h                                         ; $4D4B: $A4
    add d                                         ; $4D4C: $82
    and l                                         ; $4D4D: $A5
    add d                                         ; $4D4E: $82
    ld [$A002], sp                                ; $4D4F: $08 $02 $A0
    ld [$0082], sp                                ; $4D52: $08 $82 $00
    ld bc, $8308                                  ; $4D55: $01 $08 $83
    and e                                         ; $4D58: $A3
    ld bc, $8D02                                  ; $4D59: $01 $02 $8D
    and h                                         ; $4D5C: $A4
    ld bc, $88A3                                  ; $4D5D: $01 $A3 $88
    ld [bc], a                                    ; $4D60: $02
    add d                                         ; $4D61: $82
    and h                                         ; $4D62: $A4
    adc l                                         ; $4D63: $8D
    ld [bc], a                                    ; $4D64: $02
    add [hl]                                      ; $4D65: $86
    and l                                         ; $4D66: $A5
    add e                                         ; $4D67: $83
    and e                                         ; $4D68: $A3
    ld [bc], a                                    ; $4D69: $02
    and d                                         ; $4D6A: $A2
    ld [bc], a                                    ; $4D6B: $02
    add l                                         ; $4D6C: $85
    and l                                         ; $4D6D: $A5
    add d                                         ; $4D6E: $82
    ld [$A002], sp                                ; $4D6F: $08 $02 $A0
    ld [$0082], sp                                ; $4D72: $08 $82 $00
    inc bc                                        ; $4D75: $03
    ld [$A2A2], sp                                ; $4D76: $08 $A2 $A2
    add l                                         ; $4D79: $85
    ld [bc], a                                    ; $4D7A: $02
    add d                                         ; $4D7B: $82
    and h                                         ; $4D7C: $A4
    inc bc                                        ; $4D7D: $03
    ld [bc], a                                    ; $4D7E: $02
    and l                                         ; $4D7F: $A5
    and h                                         ; $4D80: $A4
    add d                                         ; $4D81: $82
    ld [bc], a                                    ; $4D82: $02
    add e                                         ; $4D83: $83
    and h                                         ; $4D84: $A4
    sbc e                                         ; $4D85: $9B
    ld [bc], a                                    ; $4D86: $02
    add d                                         ; $4D87: $82
    and [hl]                                      ; $4D88: $A6
    ld bc, $84A5                                  ; $4D89: $01 $A5 $84
    and e                                         ; $4D8C: $A3
    add h                                         ; $4D8D: $84
    ld [bc], a                                    ; $4D8E: $02
    add d                                         ; $4D8F: $82
    and l                                         ; $4D90: $A5
    add d                                         ; $4D91: $82
    ld [$A002], sp                                ; $4D92: $08 $02 $A0
    ld [$0082], sp                                ; $4D95: $08 $82 $00
    ld [bc], a                                    ; $4D98: $02
    ld [$ABA2], sp                                ; $4D99: $08 $A2 $AB
    ld [bc], a                                    ; $4D9C: $02
    add d                                         ; $4D9D: $82
    and [hl]                                      ; $4D9E: $A6
    ld bc, $83A5                                  ; $4D9F: $01 $A5 $83
    and e                                         ; $4DA2: $A3
    add a                                         ; $4DA3: $87
    ld [bc], a                                    ; $4DA4: $02
    add h                                         ; $4DA5: $84
    ld [$0082], sp                                ; $4DA6: $08 $82 $00
    adc b                                         ; $4DA9: $88
    ld [$0297], sp                                ; $4DAA: $08 $97 $02
    add h                                         ; $4DAD: $84
    and b                                         ; $4DAE: $A0
    ld bc, $87A1                                  ; $4DAF: $01 $A1 $87
    ld [bc], a                                    ; $4DB2: $02
    add h                                         ; $4DB3: $84
    and a                                         ; $4DB4: $A7
    inc bc                                        ; $4DB5: $03
    and l                                         ; $4DB6: $A5
    and e                                         ; $4DB7: $A3
    and e                                         ; $4DB8: $A3
    add [hl]                                      ; $4DB9: $86
    ld [bc], a                                    ; $4DBA: $02
    add e                                         ; $4DBB: $83
    ld [$C001], sp                                ; $4DBC: $08 $01 $C0
    adc h                                         ; $4DBF: $8C
    nop                                           ; $4DC0: $00
    sub e                                         ; $4DC1: $93
    ld [bc], a                                    ; $4DC2: $02
    add l                                         ; $4DC3: $85
    and b                                         ; $4DC4: $A0
    add e                                         ; $4DC5: $83
    and c                                         ; $4DC6: $A1
    add d                                         ; $4DC7: $82
    and d                                         ; $4DC8: $A2
    add l                                         ; $4DC9: $85
    ld [bc], a                                    ; $4DCA: $02
    add d                                         ; $4DCB: $82
    and [hl]                                      ; $4DCC: $A6
    add e                                         ; $4DCD: $83
    and a                                         ; $4DCE: $A7
    add d                                         ; $4DCF: $82
    and d                                         ; $4DD0: $A2
    ld bc, $86A3                                  ; $4DD1: $01 $A3 $86
    ld [bc], a                                    ; $4DD4: $02
    add d                                         ; $4DD5: $82
    nop                                           ; $4DD6: $00
    ld [bc], a                                    ; $4DD7: $02
    pop bc                                        ; $4DD8: $C1
    ret nz                                        ; $4DD9: $C0

    adc h                                         ; $4DDA: $8C
    nop                                           ; $4DDB: $00
    sub b                                         ; $4DDC: $90
    ld [bc], a                                    ; $4DDD: $02
    ld bc, $86A7                                  ; $4DDE: $01 $A7 $86
    and b                                         ; $4DE1: $A0
    add h                                         ; $4DE2: $84
    and c                                         ; $4DE3: $A1
    add d                                         ; $4DE4: $82
    and d                                         ; $4DE5: $A2
    add l                                         ; $4DE6: $85
    ld [bc], a                                    ; $4DE7: $02
    add h                                         ; $4DE8: $84
    and [hl]                                      ; $4DE9: $A6
    add h                                         ; $4DEA: $84
    and d                                         ; $4DEB: $A2
    add [hl]                                      ; $4DEC: $86
    ld [bc], a                                    ; $4DED: $02
    add d                                         ; $4DEE: $82
    nop                                           ; $4DEF: $00
    ld [bc], a                                    ; $4DF0: $02
    pop bc                                        ; $4DF1: $C1
    ret nz                                        ; $4DF2: $C0

    adc h                                         ; $4DF3: $8C
    nop                                           ; $4DF4: $00
    adc a                                         ; $4DF5: $8F
    ld [bc], a                                    ; $4DF6: $02
    add l                                         ; $4DF7: $85
    and a                                         ; $4DF8: $A7
    add d                                         ; $4DF9: $82
    and b                                         ; $4DFA: $A0
    add d                                         ; $4DFB: $82
    and h                                         ; $4DFC: $A4
    ld [bc], a                                    ; $4DFD: $02
    and d                                         ; $4DFE: $A2
    and e                                         ; $4DFF: $A3
    add d                                         ; $4E00: $82
    and d                                         ; $4E01: $A2
    add [hl]                                      ; $4E02: $86
    ld [bc], a                                    ; $4E03: $02
    add h                                         ; $4E04: $84
    and l                                         ; $4E05: $A5
    ld bc, $83A4                                  ; $4E06: $01 $A4 $83
    and d                                         ; $4E09: $A2
    add [hl]                                      ; $4E0A: $86
    ld [bc], a                                    ; $4E0B: $02
    add d                                         ; $4E0C: $82
    nop                                           ; $4E0D: $00
    ld bc, $83C1                                  ; $4E0E: $01 $C1 $83
    ld [$0082], sp                                ; $4E11: $08 $82 $00
    adc b                                         ; $4E14: $88
    ld [$028E], sp                                ; $4E15: $08 $8E $02
    add l                                         ; $4E18: $85
    and [hl]                                      ; $4E19: $A6
    add l                                         ; $4E1A: $85
    and h                                         ; $4E1B: $A4
    add d                                         ; $4E1C: $82
    and e                                         ; $4E1D: $A3
    ld bc, $89A2                                  ; $4E1E: $01 $A2 $89
    ld [bc], a                                    ; $4E21: $02
    ld bc, $84A5                                  ; $4E22: $01 $A5 $84
    and h                                         ; $4E25: $A4
    add d                                         ; $4E26: $82
    and e                                         ; $4E27: $A3
    add l                                         ; $4E28: $85
    ld [bc], a                                    ; $4E29: $02
    add h                                         ; $4E2A: $84
    ld [$A402], sp                                ; $4E2B: $08 $02 $A4
    ld [$0082], sp                                ; $4E2E: $08 $82 $00
    ld bc, $8508                                  ; $4E31: $01 $08 $85
    and d                                         ; $4E34: $A2
    sub b                                         ; $4E35: $90
    ld [bc], a                                    ; $4E36: $02
    add d                                         ; $4E37: $82
    and [hl]                                      ; $4E38: $A6
    ld [bc], a                                    ; $4E39: $02
    and b                                         ; $4E3A: $A0
    and l                                         ; $4E3B: $A5
    add [hl]                                      ; $4E3C: $86
    and h                                         ; $4E3D: $A4
    add e                                         ; $4E3E: $83
    and e                                         ; $4E3F: $A3
    adc d                                         ; $4E40: $8A
    ld [bc], a                                    ; $4E41: $02
    add h                                         ; $4E42: $84
    and h                                         ; $4E43: $A4
    add d                                         ; $4E44: $82
    and e                                         ; $4E45: $A3
    add a                                         ; $4E46: $87
    ld [bc], a                                    ; $4E47: $02
    add d                                         ; $4E48: $82
    ld [$A402], sp                                ; $4E49: $08 $02 $A4
    ld [$0082], sp                                ; $4E4C: $08 $82 $00
    ld bc, $8508                                  ; $4E4F: $01 $08 $85
    and d                                         ; $4E52: $A2
    sub b                                         ; $4E53: $90
    ld [bc], a                                    ; $4E54: $02
    add h                                         ; $4E55: $84
    and l                                         ; $4E56: $A5
    add d                                         ; $4E57: $82
    and h                                         ; $4E58: $A4
    add d                                         ; $4E59: $82
    ld [bc], a                                    ; $4E5A: $02
    add e                                         ; $4E5B: $83
    and h                                         ; $4E5C: $A4
    add d                                         ; $4E5D: $82
    and e                                         ; $4E5E: $A3
    adc l                                         ; $4E5F: $8D
    ld [bc], a                                    ; $4E60: $02
    ld bc, $88A4                                  ; $4E61: $01 $A4 $88
    ld [bc], a                                    ; $4E64: $02
    dec b                                         ; $4E65: $05
    and a                                         ; $4E66: $A7
    ld [$A408], sp                                ; $4E67: $08 $08 $A4
    ld [$0082], sp                                ; $4E6A: $08 $82 $00
    ld bc, $8308                                  ; $4E6D: $01 $08 $83
    and d                                         ; $4E70: $A2
    adc b                                         ; $4E71: $88
    ld [bc], a                                    ; $4E72: $02
    ld [bc], a                                    ; $4E73: $02
    and a                                         ; $4E74: $A7
    and b                                         ; $4E75: $A0
    add d                                         ; $4E76: $82
    and c                                         ; $4E77: $A1
    adc b                                         ; $4E78: $88
    ld [bc], a                                    ; $4E79: $02
    ld bc, $88A5                                  ; $4E7A: $01 $A5 $88
    ld [bc], a                                    ; $4E7D: $02
    ld [bc], a                                    ; $4E7E: $02
    and h                                         ; $4E7F: $A4
    and e                                         ; $4E80: $A3
    add h                                         ; $4E81: $84
    ld [bc], a                                    ; $4E82: $02
    ld [bc], a                                    ; $4E83: $02
    and a                                         ; $4E84: $A7
    and b                                         ; $4E85: $A0
    sub b                                         ; $4E86: $90
    ld [bc], a                                    ; $4E87: $02
    inc b                                         ; $4E88: $04
    and a                                         ; $4E89: $A7
    ld [$A408], sp                                ; $4E8A: $08 $08 $A4
    add h                                         ; $4E8D: $84
    ld [$A283], sp                                ; $4E8E: $08 $83 $A2
    add a                                         ; $4E91: $87
    ld [bc], a                                    ; $4E92: $02
    add d                                         ; $4E93: $82
    and a                                         ; $4E94: $A7
    ld bc, $83A0                                  ; $4E95: $01 $A0 $83
    and c                                         ; $4E98: $A1
    sub [hl]                                      ; $4E99: $96
    ld [bc], a                                    ; $4E9A: $02
    inc bc                                        ; $4E9B: $03
    and a                                         ; $4E9C: $A7
    and b                                         ; $4E9D: $A0
    and c                                         ; $4E9E: $A1
    adc [hl]                                      ; $4E9F: $8E
    ld [bc], a                                    ; $4EA0: $02
    add d                                         ; $4EA1: $82
    and a                                         ; $4EA2: $A7
    add d                                         ; $4EA3: $82
    ld [$A287], sp                                ; $4EA4: $08 $87 $A2
    add a                                         ; $4EA7: $87
    ld [bc], a                                    ; $4EA8: $02
    add e                                         ; $4EA9: $83
    and a                                         ; $4EAA: $A7
    add d                                         ; $4EAB: $82
    and b                                         ; $4EAC: $A0
    ld [bc], a                                    ; $4EAD: $02
    and c                                         ; $4EAE: $A1
    and d                                         ; $4EAF: $A2
    sub e                                         ; $4EB0: $93
    ld [bc], a                                    ; $4EB1: $02
    add d                                         ; $4EB2: $82
    and a                                         ; $4EB3: $A7
    inc bc                                        ; $4EB4: $03
    and b                                         ; $4EB5: $A0
    and a                                         ; $4EB6: $A7
    and b                                         ; $4EB7: $A0
    add d                                         ; $4EB8: $82
    and c                                         ; $4EB9: $A1
    adc h                                         ; $4EBA: $8C
    ld [bc], a                                    ; $4EBB: $02
    add e                                         ; $4EBC: $83
    and a                                         ; $4EBD: $A7
    add d                                         ; $4EBE: $82
    ld [$A286], sp                                ; $4EBF: $08 $86 $A2
    ld bc, $87A1                                  ; $4EC2: $01 $A1 $87
    ld [bc], a                                    ; $4EC5: $02
    add e                                         ; $4EC6: $83
    and a                                         ; $4EC7: $A7
    ld [bc], a                                    ; $4EC8: $02
    and b                                         ; $4EC9: $A0
    and c                                         ; $4ECA: $A1
    add d                                         ; $4ECB: $82
    and d                                         ; $4ECC: $A2
    add d                                         ; $4ECD: $82
    and c                                         ; $4ECE: $A1
    adc c                                         ; $4ECF: $89
    ld [bc], a                                    ; $4ED0: $02
    add e                                         ; $4ED1: $83
    and a                                         ; $4ED2: $A7
    ld bc, $83A0                                  ; $4ED3: $01 $A0 $83
    ld [bc], a                                    ; $4ED6: $02
    add e                                         ; $4ED7: $83
    and a                                         ; $4ED8: $A7
    add e                                         ; $4ED9: $83
    and b                                         ; $4EDA: $A0
    add e                                         ; $4EDB: $83
    and c                                         ; $4EDC: $A1
    adc d                                         ; $4EDD: $8A
    ld [bc], a                                    ; $4EDE: $02
    add h                                         ; $4EDF: $84
    and a                                         ; $4EE0: $A7
    add d                                         ; $4EE1: $82
    ld [$A285], sp                                ; $4EE2: $08 $85 $A2
    add h                                         ; $4EE5: $84
    and c                                         ; $4EE6: $A1
    add h                                         ; $4EE7: $84
    and b                                         ; $4EE8: $A0
    add d                                         ; $4EE9: $82
    and a                                         ; $4EEA: $A7
    add h                                         ; $4EEB: $84
    and b                                         ; $4EEC: $A0
    add l                                         ; $4EED: $85
    and c                                         ; $4EEE: $A1
    add e                                         ; $4EEF: $83
    and b                                         ; $4EF0: $A0
    add e                                         ; $4EF1: $83
    ld [bc], a                                    ; $4EF2: $02
    add e                                         ; $4EF3: $83
    and a                                         ; $4EF4: $A7
    add d                                         ; $4EF5: $82
    and b                                         ; $4EF6: $A0
    add d                                         ; $4EF7: $82
    and c                                         ; $4EF8: $A1
    add d                                         ; $4EF9: $82
    and b                                         ; $4EFA: $A0
    add e                                         ; $4EFB: $83
    and a                                         ; $4EFC: $A7
    adc d                                         ; $4EFD: $8A
    and b                                         ; $4EFE: $A0
    add l                                         ; $4EFF: $85
    ld [bc], a                                    ; $4F00: $02
    add l                                         ; $4F01: $85
    and a                                         ; $4F02: $A7
    ret nz                                        ; $4F03: $C0

    ld b, c                                       ; $4F04: $41
    ld [$1800], sp                                ; $4F05: $08 $00 $18
    ret c                                         ; $4F08: $D8

    nop                                           ; $4F09: $00
    dec c                                         ; $4F0A: $0D
    ld c, $40                                     ; $4F0B: $0E $40
    ld [bc], a                                    ; $4F0D: $02
    ld b, b                                       ; $4F0E: $40
    ld h, h                                       ; $4F0F: $64
    call nz, $C46D                                ; $4F10: $C4 $6D $C4
    ld b, $07                                     ; $4F13: $06 $07
    ld d, e                                       ; $4F15: $53
    ld d, h                                       ; $4F16: $54
    ld d, e                                       ; $4F17: $53
    ld d, h                                       ; $4F18: $54
    ld d, e                                       ; $4F19: $53
    ld d, h                                       ; $4F1A: $54
    ld d, e                                       ; $4F1B: $53
    ld d, h                                       ; $4F1C: $54
    ld d, e                                       ; $4F1D: $53
    ld d, h                                       ; $4F1E: $54
    ld d, e                                       ; $4F1F: $53
    ld d, h                                       ; $4F20: $54
    ld d, e                                       ; $4F21: $53
    ld d, h                                       ; $4F22: $54
    ld a, [bc]                                    ; $4F23: $0A
    dec bc                                        ; $4F24: $0B
    push af                                       ; $4F25: $F5
    ld l, $47                                     ; $4F26: $2E $47
    call nz, $159B                                ; $4F28: $C4 $9B $15
    ld d, $17                                     ; $4F2B: $16 $17
    ld h, e                                       ; $4F2D: $63
    ld h, h                                       ; $4F2E: $64
    ld h, e                                       ; $4F2F: $63
    ld h, h                                       ; $4F30: $64
    ld h, e                                       ; $4F31: $63
    ld h, h                                       ; $4F32: $64
    ld h, e                                       ; $4F33: $63
    ld h, h                                       ; $4F34: $64
    ld h, e                                       ; $4F35: $63
    ld h, h                                       ; $4F36: $64
    ld h, e                                       ; $4F37: $63
    ld h, h                                       ; $4F38: $64
    ld h, e                                       ; $4F39: $63
    ld h, h                                       ; $4F3A: $64
    ld a, [de]                                    ; $4F3B: $1A
    dec de                                        ; $4F3C: $1B
    inc e                                         ; $4F3D: $1C
    ld l, $57                                     ; $4F3E: $2E $57
    xor d                                         ; $4F40: $AA
    xor e                                         ; $4F41: $AB
    dec h                                         ; $4F42: $25
    ld h, $27                                     ; $4F43: $26 $27
    ld [hl], e                                    ; $4F45: $73
    ld [hl], h                                    ; $4F46: $74
    ld [hl], e                                    ; $4F47: $73
    ld [hl], h                                    ; $4F48: $74
    ld [hl], e                                    ; $4F49: $73
    ld [hl], h                                    ; $4F4A: $74
    ld [hl], e                                    ; $4F4B: $73
    ld [hl], h                                    ; $4F4C: $74
    ld [hl], e                                    ; $4F4D: $73
    ld [hl], h                                    ; $4F4E: $74
    ld [hl], e                                    ; $4F4F: $73
    ld [hl], h                                    ; $4F50: $74
    ld [hl], e                                    ; $4F51: $73
    ld [hl], h                                    ; $4F52: $74
    ld a, [hl+]                                   ; $4F53: $2A
    dec hl                                        ; $4F54: $2B
    inc l                                         ; $4F55: $2C
    ld l, $C4                                     ; $4F56: $2E $C4
    cp d                                          ; $4F58: $BA
    call nz, $3635                                ; $4F59: $C4 $35 $36
    scf                                           ; $4F5C: $37
    add e                                         ; $4F5D: $83
    add h                                         ; $4F5E: $84
    add e                                         ; $4F5F: $83
    add h                                         ; $4F60: $84
    add e                                         ; $4F61: $83
    add h                                         ; $4F62: $84
    add e                                         ; $4F63: $83
    add h                                         ; $4F64: $84
    add e                                         ; $4F65: $83
    add h                                         ; $4F66: $84
    add e                                         ; $4F67: $83
    add h                                         ; $4F68: $84
    add e                                         ; $4F69: $83
    add h                                         ; $4F6A: $84
    ld a, [hl-]                                   ; $4F6B: $3A
    dec sp                                        ; $4F6C: $3B
    inc a                                         ; $4F6D: $3C
    ld l, $47                                     ; $4F6E: $2E $47
    ld d, e                                       ; $4F70: $53
    ld d, h                                       ; $4F71: $54
    ld d, l                                       ; $4F72: $55
    ld d, [hl]                                    ; $4F73: $56
    sub b                                         ; $4F74: $90
    call Call_074_4B08                            ; $4F75: $CD $08 $4B
    ld c, h                                       ; $4F78: $4C
    ld l, $57                                     ; $4F79: $2E $57
    ld h, e                                       ; $4F7B: $63
    ld h, h                                       ; $4F7C: $64
    ld h, l                                       ; $4F7D: $65
    ld h, [hl]                                    ; $4F7E: $66
    add h                                         ; $4F7F: $84
    call $CE02                                    ; $4F80: $CD $02 $CE
    rst $08                                       ; $4F83: $CF
    adc d                                         ; $4F84: $8A
    call $2107                                    ; $4F85: $CD $07 $21
    ld [hl+], a                                   ; $4F88: $22
    ld l, $C4                                     ; $4F89: $2E $C4
    ld [hl], e                                    ; $4F8B: $73
    ld [hl], h                                    ; $4F8C: $74
    ld [hl], l                                    ; $4F8D: $75
    add h                                         ; $4F8E: $84
    call $DD05                                    ; $4F8F: $CD $05 $DD
    sbc $DF                                       ; $4F92: $DE $DF
    ret nz                                        ; $4F94: $C0

    pop bc                                        ; $4F95: $C1
    adc b                                         ; $4F96: $88
    call $2107                                    ; $4F97: $CD $07 $21
    ld [hl+], a                                   ; $4F9A: $22
    ld l, $49                                     ; $4F9B: $2E $49
    add e                                         ; $4F9D: $83
    add h                                         ; $4F9E: $84
    halt                                          ; $4F9F: $76
    add e                                         ; $4FA0: $83
    call $C708                                    ; $4FA1: $CD $08 $C7
    ret z                                         ; $4FA4: $C8

    adc l                                         ; $4FA5: $8D
    adc [hl]                                      ; $4FA6: $8E
    ret nc                                        ; $4FA7: $D0

    pop de                                        ; $4FA8: $D1
    ret                                           ; $4FA9: $C9


    jp z, $CD82                                   ; $4FAA: $CA $82 $CD

    ld [$ADAC], sp                                ; $4FAD: $08 $AC $AD
    xor [hl]                                      ; $4FB0: $AE
    xor l                                         ; $4FB1: $AD
    ld sp, $2E32                                  ; $4FB2: $31 $32 $2E
    ld e, c                                       ; $4FB5: $59
    add [hl]                                      ; $4FB6: $86
    call $D70D                                    ; $4FB7: $CD $0D $D7
    ret c                                         ; $4FBA: $D8

    sbc l                                         ; $4FBB: $9D
    sbc [hl]                                      ; $4FBC: $9E
    ldh [$E1], a                                  ; $4FBD: $E0 $E1
    reti                                          ; $4FBF: $D9


    jp c, $BBCD                                   ; $4FC0: $DA $CD $BB

    cp h                                          ; $4FC3: $BC
    call nz, $8277                                ; $4FC4: $C4 $77 $82
    ld a, c                                       ; $4FC7: $79
    inc bc                                        ; $4FC8: $03
    dec a                                         ; $4FC9: $3D
    ld a, $C4                                     ; $4FCA: $3E $C4
    add a                                         ; $4FCC: $87
    call $ED03                                    ; $4FCD: $CD $03 $ED
    xor $EF                                       ; $4FD0: $EE $EF
    add l                                         ; $4FD2: $85
    call $CB0C                                    ; $4FD3: $CD $0C $CB
    call z, $8786                                 ; $4FD6: $CC $86 $87
    ld b, a                                       ; $4FD9: $47
    ld c, b                                       ; $4FDA: $48
    ld c, c                                       ; $4FDB: $49
    ld c, d                                       ; $4FDC: $4A
    ld c, c                                       ; $4FDD: $49
    and e                                         ; $4FDE: $A3
    and h                                         ; $4FDF: $A4
    and l                                         ; $4FE0: $A5
    add h                                         ; $4FE1: $84
    call $ED05                                    ; $4FE2: $CD $05 $ED
    xor $EF                                       ; $4FE5: $EE $EF
    jp nz, $83C3                                  ; $4FE7: $C2 $C3 $83

    call Call_074_4B0D                            ; $4FEA: $CD $0D $4B
    ld c, h                                       ; $4FED: $4C
    ld l, $C4                                     ; $4FEE: $2E $C4
    ld d, a                                       ; $4FF0: $57
    ld e, b                                       ; $4FF1: $58
    ld e, c                                       ; $4FF2: $59
    ld e, d                                       ; $4FF3: $5A
    ld e, c                                       ; $4FF4: $59
    ld a, d                                       ; $4FF5: $7A
    call nz, $B6B5                                ; $4FF6: $C4 $B5 $B6
    add d                                         ; $4FF9: $82
    call $C716                                    ; $4FFA: $CD $16 $C7
    ret z                                         ; $4FFD: $C8

    adc l                                         ; $4FFE: $8D
    adc [hl]                                      ; $4FFF: $8E
    jp nc, $C9D3                                  ; $5000: $D2 $D3 $C9

    jp z, Jump_074_4BCD                           ; $5003: $CA $CD $4B

    ld c, h                                       ; $5006: $4C
    and [hl]                                      ; $5007: $A6
    and a                                         ; $5008: $A7
    xor b                                         ; $5009: $A8
    adc b                                         ; $500A: $88
    dec c                                         ; $500B: $0D
    ld c, $C4                                     ; $500C: $0E $C4
    adc d                                         ; $500E: $8A
    adc e                                         ; $500F: $8B
    push bc                                       ; $5010: $C5
    add $82                                       ; $5011: $C6 $82
    call $D716                                    ; $5013: $CD $16 $D7
    ret c                                         ; $5016: $D8

    sbc l                                         ; $5017: $9D
    sbc [hl]                                      ; $5018: $9E
    ld [c], a                                     ; $5019: $E2
    db $E3                                        ; $501A: $E3
    reti                                          ; $501B: $D9


    jp c, Jump_074_4BCD                           ; $501C: $DA $CD $4B

    ld c, h                                       ; $501F: $4C
    call nz, $B8B7                                ; $5020: $C4 $B7 $B8
    sbc b                                         ; $5023: $98
    dec e                                         ; $5024: $1D
    ld e, $47                                     ; $5025: $1E $47
    ld c, d                                       ; $5027: $4A
    ld l, l                                       ; $5028: $6D
    ld b, l                                       ; $5029: $45
    ld b, [hl]                                    ; $502A: $46
    add e                                         ; $502B: $83
    call $ED03                                    ; $502C: $CD $03 $ED
    xor $EF                                       ; $502F: $EE $EF
    add l                                         ; $5031: $85
    call Call_074_5B0D                            ; $5032: $CD $0D $5B
    ld e, h                                       ; $5035: $5C
    ld d, e                                       ; $5036: $53
    ld d, h                                       ; $5037: $54
    ld a, [bc]                                    ; $5038: $0A
    dec bc                                        ; $5039: $0B
    call nz, Call_074_572E                        ; $503A: $C4 $2E $57
    ld e, d                                       ; $503D: $5A
    ld l, l                                       ; $503E: $6D
    ld b, l                                       ; $503F: $45
    ld b, [hl]                                    ; $5040: $46
    add e                                         ; $5041: $83
    call $ED05                                    ; $5042: $CD $05 $ED
    xor $EF                                       ; $5045: $EE $EF
    ret nz                                        ; $5047: $C0

    pop bc                                        ; $5048: $C1
    add e                                         ; $5049: $83
    call Call_074_6B0D                            ; $504A: $CD $0D $6B
    ld l, h                                       ; $504D: $6C
    ld h, e                                       ; $504E: $63
    ld h, h                                       ; $504F: $64
    ld a, [de]                                    ; $5050: $1A
    dec de                                        ; $5051: $1B
    inc e                                         ; $5052: $1C
    ld l, $C4                                     ; $5053: $2E $C4
    ld c, d                                       ; $5055: $4A
    ld l, l                                       ; $5056: $6D
    ld b, l                                       ; $5057: $45
    ld b, [hl]                                    ; $5058: $46
    add d                                         ; $5059: $82
    call $C716                                    ; $505A: $CD $16 $C7
    ret z                                         ; $505D: $C8

    adc l                                         ; $505E: $8D
    adc [hl]                                      ; $505F: $8E
    ret nc                                        ; $5060: $D0

    pop de                                        ; $5061: $D1
    ret                                           ; $5062: $C9


    jp z, Jump_074_7BCD                           ; $5063: $CA $CD $7B

    ld a, h                                       ; $5066: $7C
    ld [hl], e                                    ; $5067: $73
    ld [hl], h                                    ; $5068: $74
    ld a, [hl+]                                   ; $5069: $2A
    dec hl                                        ; $506A: $2B
    inc l                                         ; $506B: $2C
    ld l, $47                                     ; $506C: $2E $47
    ld e, d                                       ; $506E: $5A
    ld l, l                                       ; $506F: $6D
    ld b, l                                       ; $5070: $45
    ld b, [hl]                                    ; $5071: $46
    add d                                         ; $5072: $82
    call $D708                                    ; $5073: $CD $08 $D7
    ret c                                         ; $5076: $D8

    sbc l                                         ; $5077: $9D
    sbc [hl]                                      ; $5078: $9E
    ldh [$E1], a                                  ; $5079: $E0 $E1
    reti                                          ; $507B: $D9


    jp c, $CD82                                   ; $507C: $DA $82 $CD

    inc c                                         ; $507F: $0C
    adc h                                         ; $5080: $8C
    add e                                         ; $5081: $83
    add h                                         ; $5082: $84
    ld a, [hl-]                                   ; $5083: $3A
    dec sp                                        ; $5084: $3B
    inc a                                         ; $5085: $3C
    ld l, $57                                     ; $5086: $2E $57
    call nz, Call_074_456D                        ; $5088: $C4 $6D $45
    ld b, [hl]                                    ; $508B: $46
    add e                                         ; $508C: $83
    call $ED03                                    ; $508D: $CD $03 $ED
    xor $EF                                       ; $5090: $EE $EF
    add [hl]                                      ; $5092: $86
    call $C00C                                    ; $5093: $CD $0C $C0
    pop bc                                        ; $5096: $C1
    jp nz, Jump_074_4BC3                          ; $5097: $C2 $C3 $4B

    ld c, h                                       ; $509A: $4C
    ld l, $C4                                     ; $509B: $2E $C4
    ld c, b                                       ; $509D: $48
    ld l, l                                       ; $509E: $6D
    ld b, l                                       ; $509F: $45
    ld b, [hl]                                    ; $50A0: $46
    add e                                         ; $50A1: $83
    call $0203                                    ; $50A2: $CD $03 $02
    inc bc                                        ; $50A5: $03
    inc b                                         ; $50A6: $04
    add h                                         ; $50A7: $84
    call $C70E                                    ; $50A8: $CD $0E $C7
    ret z                                         ; $50AB: $C8

    ret nc                                        ; $50AC: $D0

    pop de                                        ; $50AD: $D1
    jp nc, $4BD3                                  ; $50AE: $D2 $D3 $4B

    ld c, h                                       ; $50B1: $4C
    ld l, $47                                     ; $50B2: $2E $47
    ld e, b                                       ; $50B4: $58
    ld l, l                                       ; $50B5: $6D
    ld b, l                                       ; $50B6: $45
    ld b, [hl]                                    ; $50B7: $46
    add e                                         ; $50B8: $83
    call $1205                                    ; $50B9: $CD $05 $12
    inc de                                        ; $50BC: $13
    inc d                                         ; $50BD: $14
    call $8212                                    ; $50BE: $CD $12 $82
    call $D70E                                    ; $50C1: $CD $0E $D7
    ret c                                         ; $50C4: $D8

    ldh [$E1], a                                  ; $50C5: $E0 $E1
    ld [c], a                                     ; $50C7: $E2
    db $E3                                        ; $50C8: $E3
    ld c, e                                       ; $50C9: $4B
    ld c, h                                       ; $50CA: $4C
    ld l, $57                                     ; $50CB: $2E $57
    ld e, b                                       ; $50CD: $58
    ld l, l                                       ; $50CE: $6D
    sub b                                         ; $50CF: $90
    sub c                                         ; $50D0: $91
    sub b                                         ; $50D1: $90
    call $210E                                    ; $50D2: $CD $0E $21
    ld [hl+], a                                   ; $50D5: $22
    ld l, $C4                                     ; $50D6: $2E $C4
    ld c, d                                       ; $50D8: $4A
    ld l, l                                       ; $50D9: $6D
    push hl                                       ; $50DA: $E5
    and c                                         ; $50DB: $A1
    xor l                                         ; $50DC: $AD
    xor [hl]                                      ; $50DD: $AE
    xor l                                         ; $50DE: $AD
    xor [hl]                                      ; $50DF: $AE
    xor l                                         ; $50E0: $AD
    and l                                         ; $50E1: $A5
    add d                                         ; $50E2: $82
    ld [de], a                                    ; $50E3: $12
    add d                                         ; $50E4: $82
    call $AC0D                                    ; $50E5: $CD $0D $AC
    xor l                                         ; $50E8: $AD
    xor [hl]                                      ; $50E9: $AE
    xor l                                         ; $50EA: $AD
    xor [hl]                                      ; $50EB: $AE
    xor l                                         ; $50EC: $AD
    ld sp, $2E32                                  ; $50ED: $31 $32 $2E
    ld b, a                                       ; $50F0: $47
    ld e, d                                       ; $50F1: $5A
    ld a, l                                       ; $50F2: $7D
    ld a, [hl]                                    ; $50F3: $7E
    add h                                         ; $50F4: $84
    ld a, c                                       ; $50F5: $79
    inc b                                         ; $50F6: $04
    ld a, d                                       ; $50F7: $7A
    call nz, $B6B5                                ; $50F8: $C4 $B5 $B6
    add d                                         ; $50FB: $82
    call $BB04                                    ; $50FC: $CD $04 $BB
    cp h                                          ; $50FF: $BC
    call nz, $8477                                ; $5100: $C4 $77 $84
    ld a, c                                       ; $5103: $79
    ld c, $3D                                     ; $5104: $0E $3D
    ld a, $57                                     ; $5106: $3E $57
    adc c                                         ; $5108: $89
    ld b, a                                       ; $5109: $47
    ld c, b                                       ; $510A: $48
    ld b, a                                       ; $510B: $47
    ld c, b                                       ; $510C: $48
    ld b, a                                       ; $510D: $47
    ld c, b                                       ; $510E: $48
    adc d                                         ; $510F: $8A
    adc e                                         ; $5110: $8B
    push bc                                       ; $5111: $C5
    add $82                                       ; $5112: $C6 $82
    call $CB0B                                    ; $5114: $CD $0B $CB
    call z, $8786                                 ; $5117: $CC $86 $87
    ld b, a                                       ; $511A: $47
    ld c, b                                       ; $511B: $48
    ld c, c                                       ; $511C: $49
    ld c, d                                       ; $511D: $4A
    ld b, a                                       ; $511E: $47
    ld c, b                                       ; $511F: $48
    call nz, $2000                                ; $5120: $C4 $00 $20
    ldh [rTIMA], a                                ; $5123: $E0 $05
    ret nz                                        ; $5125: $C0

    and e                                         ; $5126: $A3
    ld [$8201], sp                                ; $5127: $08 $01 $82
    add e                                         ; $512A: $83
    rlca                                          ; $512B: $07
    sub e                                         ; $512C: $93
    add d                                         ; $512D: $82
    ld bc, $8507                                  ; $512E: $01 $07 $85
    ld [$C107], sp                                ; $5131: $08 $07 $C1
    ld [$8208], sp                                ; $5134: $08 $08 $82
    rlca                                          ; $5137: $07
    ld b, b                                       ; $5138: $40
    rlca                                          ; $5139: $07
    sub e                                         ; $513A: $93
    add d                                         ; $513B: $82
    ld bc, $8507                                  ; $513C: $01 $07 $85
    ld [$C101], sp                                ; $513F: $08 $01 $C1
    add e                                         ; $5142: $83
    add d                                         ; $5143: $82
    add e                                         ; $5144: $83
    rlca                                          ; $5145: $07
    sub e                                         ; $5146: $93
    ld b, $03                                     ; $5147: $06 $03
    rlca                                          ; $5149: $07
    add d                                         ; $514A: $82
    add d                                         ; $514B: $82
    add e                                         ; $514C: $83
    ld [$C101], sp                                ; $514D: $08 $01 $C1
    sbc c                                         ; $5150: $99
    add d                                         ; $5151: $82
    inc bc                                        ; $5152: $03
    ld b, $82                                     ; $5153: $06 $82
    add d                                         ; $5155: $82
    add [hl]                                      ; $5156: $86
    ld [$8297], sp                                ; $5157: $08 $97 $82
    inc bc                                        ; $515A: $03
    ld b, $82                                     ; $515B: $06 $82
    push bc                                       ; $515D: $C5
    add [hl]                                      ; $515E: $86
    ld [$0595], sp                                ; $515F: $08 $95 $05
    add e                                         ; $5162: $83
    ld b, $82                                     ; $5163: $06 $82
    add d                                         ; $5165: $82
    add [hl]                                      ; $5166: $86
    ld [$8294], sp                                ; $5167: $08 $94 $82
    ld b, $05                                     ; $516A: $06 $05
    add d                                         ; $516C: $82
    add d                                         ; $516D: $82
    rlca                                          ; $516E: $07
    add d                                         ; $516F: $82
    add d                                         ; $5170: $82
    add [hl]                                      ; $5171: $86
    ld [$8294], sp                                ; $5172: $08 $94 $82
    ld b, $05                                     ; $5175: $06 $05
    add d                                         ; $5177: $82
    add d                                         ; $5178: $82
    rlca                                          ; $5179: $07
    add d                                         ; $517A: $82
    add d                                         ; $517B: $82
    sbc d                                         ; $517C: $9A
    ld [$8284], sp                                ; $517D: $08 $84 $82
    sbc h                                         ; $5180: $9C
    ld [$8284], sp                                ; $5181: $08 $84 $82
    sbc h                                         ; $5184: $9C
    ld [$8284], sp                                ; $5185: $08 $84 $82
    sbc h                                         ; $5188: $9C
    ld [$8284], sp                                ; $5189: $08 $84 $82
    sbc h                                         ; $518C: $9C
    ld [$8284], sp                                ; $518D: $08 $84 $82
    sbc h                                         ; $5190: $9C
    ld [$8284], sp                                ; $5191: $08 $84 $82
    adc d                                         ; $5194: $8A
    ld [$8282], sp                                ; $5195: $08 $82 $82
    ld bc, $8D06                                  ; $5198: $01 $06 $8D
    add d                                         ; $519B: $82
    add d                                         ; $519C: $82
    ld [$8284], sp                                ; $519D: $08 $84 $82
    adc d                                         ; $51A0: $8A
    ld [$8203], sp                                ; $51A1: $08 $03 $82
    push bc                                       ; $51A4: $C5
    ld b, $8F                                     ; $51A5: $06 $8F
    add d                                         ; $51A7: $82
    ld b, $06                                     ; $51A8: $06 $06
    add d                                         ; $51AA: $82
    add d                                         ; $51AB: $82
    rlca                                          ; $51AC: $07
    add d                                         ; $51AD: $82
    add d                                         ; $51AE: $82
    add [hl]                                      ; $51AF: $86
    ld [$8202], sp                                ; $51B0: $08 $02 $82
    dec b                                         ; $51B3: $05
    add d                                         ; $51B4: $82
    add d                                         ; $51B5: $82
    ld bc, $8F06                                  ; $51B6: $01 $06 $8F
    add d                                         ; $51B9: $82
    ld b, $06                                     ; $51BA: $06 $06
    add d                                         ; $51BC: $82
    add d                                         ; $51BD: $82
    rlca                                          ; $51BE: $07
    add d                                         ; $51BF: $82
    add d                                         ; $51C0: $82
    add [hl]                                      ; $51C1: $86
    ld [$8202], sp                                ; $51C2: $08 $02 $82
    dec b                                         ; $51C5: $05
    add d                                         ; $51C6: $82
    add d                                         ; $51C7: $82
    add l                                         ; $51C8: $85
    ld b, $83                                     ; $51C9: $06 $83
    rlca                                          ; $51CB: $07
    adc c                                         ; $51CC: $89
    inc b                                         ; $51CD: $04
    add e                                         ; $51CE: $83
    rlca                                          ; $51CF: $07
    add d                                         ; $51D0: $82
    add d                                         ; $51D1: $82
    add [hl]                                      ; $51D2: $86
    ld [$8202], sp                                ; $51D3: $08 $02 $82
    dec b                                         ; $51D6: $05
    add d                                         ; $51D7: $82
    add d                                         ; $51D8: $82
    ld bc, $8406                                  ; $51D9: $01 $06 $84
    add d                                         ; $51DC: $82
    ld bc, $8407                                  ; $51DD: $01 $07 $84
    add d                                         ; $51E0: $82
    add [hl]                                      ; $51E1: $86
    ld [$8284], sp                                ; $51E2: $08 $84 $82
    adc b                                         ; $51E5: $88
    ld [$8202], sp                                ; $51E6: $08 $02 $82
    dec b                                         ; $51E9: $05
    add d                                         ; $51EA: $82
    add d                                         ; $51EB: $82
    ld bc, $8406                                  ; $51EC: $01 $06 $84
    add d                                         ; $51EF: $82
    ld bc, $8407                                  ; $51F0: $01 $07 $84
    add d                                         ; $51F3: $82
    add [hl]                                      ; $51F4: $86
    ld [$8284], sp                                ; $51F5: $08 $84 $82
    adc b                                         ; $51F8: $88
    ld [$8202], sp                                ; $51F9: $08 $02 $82
    dec b                                         ; $51FC: $05
    add d                                         ; $51FD: $82
    add d                                         ; $51FE: $82
    ld b, $06                                     ; $51FF: $06 $06
    add d                                         ; $5201: $82
    add d                                         ; $5202: $82
    add $82                                       ; $5203: $C6 $82
    rlca                                          ; $5205: $07
    add h                                         ; $5206: $84
    add d                                         ; $5207: $82
    add [hl]                                      ; $5208: $86
    ld [$8284], sp                                ; $5209: $08 $84 $82
    adc b                                         ; $520C: $88
    ld [$8202], sp                                ; $520D: $08 $02 $82
    dec b                                         ; $5210: $05
    add d                                         ; $5211: $82
    add d                                         ; $5212: $82
    ld bc, $8406                                  ; $5213: $01 $06 $84
    add d                                         ; $5216: $82
    ld bc, $8407                                  ; $5217: $01 $07 $84
    add d                                         ; $521A: $82
    add [hl]                                      ; $521B: $86
    ld [$8284], sp                                ; $521C: $08 $84 $82
    adc b                                         ; $521F: $88
    ld [$8202], sp                                ; $5220: $08 $02 $82
    dec b                                         ; $5223: $05
    add d                                         ; $5224: $82
    add d                                         ; $5225: $82
    ld bc, $8406                                  ; $5226: $01 $06 $84
    add d                                         ; $5229: $82
    ld bc, $8407                                  ; $522A: $01 $07 $84
    add d                                         ; $522D: $82
    add [hl]                                      ; $522E: $86
    ld [$8284], sp                                ; $522F: $08 $84 $82
    adc b                                         ; $5232: $88
    ld [$8202], sp                                ; $5233: $08 $02 $82
    dec b                                         ; $5236: $05
    add d                                         ; $5237: $82
    add d                                         ; $5238: $82
    ld bc, $8406                                  ; $5239: $01 $06 $84
    add d                                         ; $523C: $82
    ld bc, $8407                                  ; $523D: $01 $07 $84
    add d                                         ; $5240: $82
    add [hl]                                      ; $5241: $86
    ld [$8284], sp                                ; $5242: $08 $84 $82
    adc b                                         ; $5245: $88
    ld [$8202], sp                                ; $5246: $08 $02 $82
    rlca                                          ; $5249: $07
    add d                                         ; $524A: $82
    add d                                         ; $524B: $82
    add [hl]                                      ; $524C: $86
    rlca                                          ; $524D: $07
    add h                                         ; $524E: $84
    add d                                         ; $524F: $82
    add [hl]                                      ; $5250: $86
    ld [$8284], sp                                ; $5251: $08 $84 $82
    adc b                                         ; $5254: $88
    ld [$8202], sp                                ; $5255: $08 $02 $82
    rlca                                          ; $5258: $07
    add d                                         ; $5259: $82
    add d                                         ; $525A: $82
    ld bc, $8907                                  ; $525B: $01 $07 $89
    add d                                         ; $525E: $82
    add h                                         ; $525F: $84
    ld [$0082], sp                                ; $5260: $08 $82 $00
    ld b, $07                                     ; $5263: $06 $07
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    inc b                                         ; $5267: $04
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    add [hl]                                      ; $526A: $86
    ld [$C602], sp                                ; $526B: $08 $02 $C6
    rlca                                          ; $526E: $07
    add d                                         ; $526F: $82
    add d                                         ; $5270: $82
    ld bc, $8907                                  ; $5271: $01 $07 $89
    add d                                         ; $5274: $82
    add h                                         ; $5275: $84
    ld [$C303], sp                                ; $5276: $08 $03 $C3
    nop                                           ; $5279: $00
    inc b                                         ; $527A: $04
    add d                                         ; $527B: $82
    nop                                           ; $527C: $00
    inc bc                                        ; $527D: $03
    rlca                                          ; $527E: $07
    nop                                           ; $527F: $00
    add $86                                       ; $5280: $C6 $86
    ld [$8202], sp                                ; $5282: $08 $02 $82
    rlca                                          ; $5285: $07
    add d                                         ; $5286: $82
    add d                                         ; $5287: $82
    ld bc, $8907                                  ; $5288: $01 $07 $89
    add d                                         ; $528B: $82
    add [hl]                                      ; $528C: $86
    ld [$0704], sp                                ; $528D: $08 $04 $07
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    inc b                                         ; $5292: $04
    adc b                                         ; $5293: $88
    ld [$8202], sp                                ; $5294: $08 $02 $82
    rlca                                          ; $5297: $07
    add d                                         ; $5298: $82
    add d                                         ; $5299: $82
    ld bc, $8907                                  ; $529A: $01 $07 $89
    add d                                         ; $529D: $82
    add [hl]                                      ; $529E: $86
    ld [$0084], sp                                ; $529F: $08 $84 $00
    adc b                                         ; $52A2: $88
    ld [$8202], sp                                ; $52A3: $08 $02 $82
    dec b                                         ; $52A6: $05
    add d                                         ; $52A7: $82
    add d                                         ; $52A8: $82
    ld bc, $8907                                  ; $52A9: $01 $07 $89
    add d                                         ; $52AC: $82
    sub d                                         ; $52AD: $92
    ld [$8202], sp                                ; $52AE: $08 $02 $82
    dec b                                         ; $52B1: $05
    add d                                         ; $52B2: $82
    add d                                         ; $52B3: $82
    ld bc, $8907                                  ; $52B4: $01 $07 $89
    add d                                         ; $52B7: $82
    sub d                                         ; $52B8: $92
    ld [$8202], sp                                ; $52B9: $08 $02 $82
    dec b                                         ; $52BC: $05
    add d                                         ; $52BD: $82
    add d                                         ; $52BE: $82
    ld bc, $8807                                  ; $52BF: $01 $07 $88
    add d                                         ; $52C2: $82
    ld bc, $92C3                                  ; $52C3: $01 $C3 $92
    ld [$8202], sp                                ; $52C6: $08 $02 $82
    dec b                                         ; $52C9: $05
    add d                                         ; $52CA: $82
    add d                                         ; $52CB: $82
    ld bc, $8907                                  ; $52CC: $01 $07 $89
    add d                                         ; $52CF: $82
    sub d                                         ; $52D0: $92
    ld [$8202], sp                                ; $52D1: $08 $02 $82
    dec b                                         ; $52D4: $05
    add d                                         ; $52D5: $82
    add d                                         ; $52D6: $82
    add e                                         ; $52D7: $83
    rlca                                          ; $52D8: $07
    add a                                         ; $52D9: $87

jr_074_52DA:
    add d                                         ; $52DA: $82
    sub d                                         ; $52DB: $92
    ld [$8202], sp                                ; $52DC: $08 $02 $82
    dec b                                         ; $52DF: $05
    add h                                         ; $52E0: $84
    add d                                         ; $52E1: $82
    ld bc, $8707                                  ; $52E2: $01 $07 $87
    add d                                         ; $52E5: $82

jr_074_52E6:
    add d                                         ; $52E6: $82
    ld [$0401], sp                                ; $52E7: $08 $01 $04
    add h                                         ; $52EA: $84
    add d                                         ; $52EB: $82
    inc bc                                        ; $52EC: $03
    inc b                                         ; $52ED: $04
    add d                                         ; $52EE: $82
    add d                                         ; $52EF: $82
    adc b                                         ; $52F0: $88
    ld [$8202], sp                                ; $52F1: $08 $02 $82
    dec b                                         ; $52F4: $05
    add h                                         ; $52F5: $84
    add d                                         ; $52F6: $82
    ld bc, $8907                                  ; $52F7: $01 $07 $89

jr_074_52FA:
    add d                                         ; $52FA: $82
    ld b, $04                                     ; $52FB: $06 $04
    add d                                         ; $52FD: $82
    add d                                         ; $52FE: $82
    ld b, c                                       ; $52FF: $41
    add d                                         ; $5300: $82
    inc b                                         ; $5301: $04
    add d                                         ; $5302: $82
    add d                                         ; $5303: $82
    adc d                                         ; $5304: $8A
    ld [$8284], sp                                ; $5305: $08 $84 $82
    ld bc, $8907                                  ; $5308: $01 $07 $89
    add d                                         ; $530B: $82
    ld bc, $8404                                  ; $530C: $01 $04 $84
    add d                                         ; $530F: $82
    inc bc                                        ; $5310: $03
    inc b                                         ; $5311: $04
    add d                                         ; $5312: $82
    add d                                         ; $5313: $82

jr_074_5314:
    add d                                         ; $5314: $82
    jp nz, $0888                                  ; $5315: $C2 $88 $08

    add h                                         ; $5318: $84
    add d                                         ; $5319: $82
    ld bc, $8907                                  ; $531A: $01 $07 $89

jr_074_531D:
    add d                                         ; $531D: $82
    ld bc, $8404                                  ; $531E: $01 $04 $84
    add d                                         ; $5321: $82
    inc bc                                        ; $5322: $03
    inc b                                         ; $5323: $04
    add d                                         ; $5324: $82
    add d                                         ; $5325: $82
    add d                                         ; $5326: $82
    jp nz, $0888                                  ; $5327: $C2 $88 $08

    add h                                         ; $532A: $84
    add d                                         ; $532B: $82
    sbc h                                         ; $532C: $9C
    ld [$8284], sp                                ; $532D: $08 $84 $82
    sbc h                                         ; $5330: $9C
    ld [$8284], sp                                ; $5331: $08 $84 $82
    sbc h                                         ; $5334: $9C
    ld [$C084], sp                                ; $5335: $08 $84 $C0
    sub a                                         ; $5338: $97
    ld [$1800], sp                                ; $5339: $08 $00 $18
    ret c                                         ; $533C: $D8

    nop                                           ; $533D: $00
    dec c                                         ; $533E: $0D
    ld c, $40                                     ; $533F: $0E $40
    ld [bc], a                                    ; $5341: $02
    adc l                                         ; $5342: $8D
    and h                                         ; $5343: $A4
    ld [bc], a                                    ; $5344: $02
    jr jr_074_52DA                                ; $5345: $18 $93

    add h                                         ; $5347: $84
    cp b                                          ; $5348: $B8
    ld bc, $8617                                  ; $5349: $01 $17 $86
    and h                                         ; $534C: $A4
    inc bc                                        ; $534D: $03
    dec b                                         ; $534E: $05
    jr nc, jr_074_52E6                            ; $534F: $30 $95

    add a                                         ; $5351: $87
    and h                                         ; $5352: $A4
    ld a, [bc]                                    ; $5353: $0A
    daa                                           ; $5354: $27
    jr z, jr_074_52FA                             ; $5355: $28 $A3

    ld e, a                                       ; $5357: $5F
    cp b                                          ; $5358: $B8
    and b                                         ; $5359: $A0
    and c                                         ; $535A: $A1
    add hl, de                                    ; $535B: $19
    sub h                                         ; $535C: $94
    sub l                                         ; $535D: $95
    add h                                         ; $535E: $84
    and h                                         ; $535F: $A4
    inc b                                         ; $5360: $04
    jr jr_074_53A3                                ; $5361: $18 $40

    add hl, hl                                    ; $5363: $29
    ld a, [hl+]                                   ; $5364: $2A
    add l                                         ; $5365: $85
    and h                                         ; $5366: $A4
    inc b                                         ; $5367: $04
    dec b                                         ; $5368: $05
    scf                                           ; $5369: $37
    jr c, jr_074_53A2                             ; $536A: $38 $36

    add d                                         ; $536C: $82
    cp b                                          ; $536D: $B8
    ld b, $07                                     ; $536E: $06 $07
    or c                                          ; $5370: $B1
    daa                                           ; $5371: $27
    jr z, jr_074_539D                             ; $5372: $28 $29

    ld a, [hl+]                                   ; $5374: $2A
    add e                                         ; $5375: $83
    and h                                         ; $5376: $A4
    dec b                                         ; $5377: $05
    jr jr_074_53ED                                ; $5378: $18 $73

    add hl, sp                                    ; $537A: $39
    ld a, [hl-]                                   ; $537B: $3A
    inc b                                         ; $537C: $04
    add h                                         ; $537D: $84
    and h                                         ; $537E: $A4
    dec d                                         ; $537F: $15
    jr jr_074_53F5                                ; $5380: $18 $73

    ld c, b                                       ; $5382: $48
    ld b, [hl]                                    ; $5383: $46
    ld l, a                                       ; $5384: $6F
    cp b                                          ; $5385: $B8
    rla                                           ; $5386: $17
    dec b                                         ; $5387: $05
    scf                                           ; $5388: $37
    jr c, jr_074_53C4                             ; $5389: $38 $39

    ld a, [hl-]                                   ; $538B: $3A
    inc b                                         ; $538C: $04
    and h                                         ; $538D: $A4
    daa                                           ; $538E: $27
    jr z, jr_074_5314                             ; $538F: $28 $83

    ld c, c                                       ; $5391: $49
    ld c, d                                       ; $5392: $4A
    add hl, hl                                    ; $5393: $29
    ld a, [hl+]                                   ; $5394: $2A
    add e                                         ; $5395: $83
    and h                                         ; $5396: $A4
    inc bc                                        ; $5397: $03
    jr jr_074_531D                                ; $5398: $18 $83

    ld e, b                                       ; $539A: $58
    add d                                         ; $539B: $82
    cp b                                          ; $539C: $B8

jr_074_539D:
    dec l                                         ; $539D: $2D
    rlca                                          ; $539E: $07
    daa                                           ; $539F: $27
    jr z, jr_074_53E9                             ; $53A0: $28 $47

jr_074_53A2:
    ld c, b                                       ; $53A2: $48

jr_074_53A3:
    ld c, c                                       ; $53A3: $49
    ld c, d                                       ; $53A4: $4A
    rla                                           ; $53A5: $17
    rst $18                                       ; $53A6: $DF
    and l                                         ; $53A7: $A5
    and [hl]                                      ; $53A8: $A6
    ld [hl], $FE                                  ; $53A9: $36 $FE
    ld e, d                                       ; $53AB: $5A
    add hl, sp                                    ; $53AC: $39
    ld a, [hl-]                                   ; $53AD: $3A
    inc b                                         ; $53AE: $04
    and h                                         ; $53AF: $A4
    dec b                                         ; $53B0: $05
    dec h                                         ; $53B1: $25
    and e                                         ; $53B2: $A3
    xor h                                         ; $53B3: $AC
    xor l                                         ; $53B4: $AD
    inc hl                                        ; $53B5: $23
    inc h                                         ; $53B6: $24
    scf                                           ; $53B7: $37
    jr c, jr_074_542F                             ; $53B8: $38 $75

    ld e, b                                       ; $53BA: $58
    ld e, c                                       ; $53BB: $59
    ld e, d                                       ; $53BC: $5A
    rla                                           ; $53BD: $17
    and h                                         ; $53BE: $A4
    inc e                                         ; $53BF: $1C
    ld [$B846], sp                                ; $53C0: $08 $46 $B8
    ld l, a                                       ; $53C3: $6F

jr_074_53C4:
    ld c, c                                       ; $53C4: $49
    ld c, d                                       ; $53C5: $4A
    rla                                           ; $53C6: $17
    daa                                           ; $53C7: $27
    jr z, jr_074_53FF                             ; $53C8: $28 $35

    ld [hl], $82                                  ; $53CA: $36 $82
    cp b                                          ; $53CC: $B8
    add hl, bc                                    ; $53CD: $09
    inc sp                                        ; $53CE: $33
    inc [hl]                                      ; $53CF: $34
    ld b, a                                       ; $53D0: $47
    ld c, b                                       ; $53D1: $48
    add l                                         ; $53D2: $85
    ld l, a                                       ; $53D3: $6F
    and b                                         ; $53D4: $A0
    and c                                         ; $53D5: $A1
    dec hl                                        ; $53D6: $2B
    add d                                         ; $53D7: $82
    and h                                         ; $53D8: $A4
    dec bc                                        ; $53D9: $0B
    inc e                                         ; $53DA: $1C
    jr nz, jr_074_53FE                            ; $53DB: $20 $21

    ld [$5A16], sp                                ; $53DD: $08 $16 $5A
    inc h                                         ; $53E0: $24
    scf                                           ; $53E1: $37
    jr c, jr_074_5429                             ; $53E2: $38 $45

    ld b, [hl]                                    ; $53E4: $46
    add e                                         ; $53E5: $83
    cp b                                          ; $53E6: $B8
    rlca                                          ; $53E7: $07
    ld b, h                                       ; $53E8: $44

jr_074_53E9:
    ld d, a                                       ; $53E9: $57
    ld e, b                                       ; $53EA: $58
    ld c, a                                       ; $53EB: $4F
    cp b                                          ; $53EC: $B8

jr_074_53ED:
    rlca                                          ; $53ED: $07
    or c                                          ; $53EE: $B1
    add e                                         ; $53EF: $83
    and h                                         ; $53F0: $A4
    add hl, bc                                    ; $53F1: $09
    dec b                                         ; $53F2: $05
    jr nc, jr_074_5426                            ; $53F3: $30 $31

jr_074_53F5:
    dec h                                         ; $53F5: $25
    ld h, $33                                     ; $53F6: $26 $33
    inc [hl]                                      ; $53F8: $34
    ld b, a                                       ; $53F9: $47
    ld c, b                                       ; $53FA: $48
    add d                                         ; $53FB: $82
    cp b                                          ; $53FC: $B8
    inc bc                                        ; $53FD: $03

jr_074_53FE:
    ld l, a                                       ; $53FE: $6F

jr_074_53FF:
    sbc h                                         ; $53FF: $9C
    sbc l                                         ; $5400: $9D
    add l                                         ; $5401: $85
    cp b                                          ; $5402: $B8
    ld bc, $8417                                  ; $5403: $01 $17 $84
    and h                                         ; $5406: $A4
    dec bc                                        ; $5407: $0B
    jr jr_074_544A                                ; $5408: $18 $40

    ld b, c                                       ; $540A: $41
    dec [hl]                                      ; $540B: $35
    ld [hl], $43                                  ; $540C: $36 $43
    ld b, h                                       ; $540E: $44
    ld d, a                                       ; $540F: $57
    ld e, b                                       ; $5410: $58
    cp b                                          ; $5411: $B8
    ld c, a                                       ; $5412: $4F
    adc b                                         ; $5413: $88
    cp b                                          ; $5414: $B8
    ld bc, $8417                                  ; $5415: $01 $17 $84
    and h                                         ; $5418: $A4
    ld b, $18                                     ; $5419: $06 $18
    ld d, b                                       ; $541B: $50
    ld d, c                                       ; $541C: $51
    ld b, l                                       ; $541D: $45
    ld b, [hl]                                    ; $541E: $46
    ld l, a                                       ; $541F: $6F
    add d                                         ; $5420: $82
    cp b                                          ; $5421: $B8
    ld bc, $837F                                  ; $5422: $01 $7F $83
    cp b                                          ; $5425: $B8

jr_074_5426:
    ld [$2007], sp                                ; $5426: $08 $07 $20

jr_074_5429:
    ld hl, $1608                                  ; $5429: $21 $08 $16
    cp b                                          ; $542C: $B8
    rlca                                          ; $542D: $07
    add hl, de                                    ; $542E: $19

jr_074_542F:
    add h                                         ; $542F: $84
    and h                                         ; $5430: $A4
    ld [$522C], sp                                ; $5431: $08 $2C $52
    ld d, e                                       ; $5434: $53
    cp b                                          ; $5435: $B8
    sbc h                                         ; $5436: $9C
    sbc l                                         ; $5437: $9D
    cp b                                          ; $5438: $B8
    xor c                                         ; $5439: $A9
    add e                                         ; $543A: $83
    cp b                                          ; $543B: $B8
    ld [$2DB2], sp                                ; $543C: $08 $B2 $2D
    and h                                         ; $543F: $A4
    db $FC                                        ; $5440: $FC
    dec h                                         ; $5441: $25
    ld h, $B8                                     ; $5442: $26 $B8
    rla                                           ; $5444: $17
    add [hl]                                      ; $5445: $86

jr_074_5446:
    and h                                         ; $5446: $A4
    dec d                                         ; $5447: $15
    inc e                                         ; $5448: $1C
    ld h, e                                       ; $5449: $63

jr_074_544A:
    jr nz, jr_074_546D                            ; $544A: $20 $21

    ld d, d                                       ; $544C: $52
    ld d, e                                       ; $544D: $53
    and b                                         ; $544E: $A0
    rlca                                          ; $544F: $07
    ld hl, $0A08                                  ; $5450: $21 $08 $0A
    dec sp                                        ; $5453: $3B
    daa                                           ; $5454: $27
    jr z, @+$37                                   ; $5455: $28 $35

    ld [hl], $B8                                  ; $5457: $36 $B8
    rla                                           ; $5459: $17
    and h                                         ; $545A: $A4
    sub h                                         ; $545B: $94
    sub l                                         ; $545C: $95
    add [hl]                                      ; $545D: $86
    and h                                         ; $545E: $A4
    ld [de], a                                    ; $545F: $12
    sub l                                         ; $5460: $95
    inc e                                         ; $5461: $1C
    ld h, e                                       ; $5462: $63
    or b                                          ; $5463: $B0
    or c                                          ; $5464: $B1
    and h                                         ; $5465: $A4
    inc e                                         ; $5466: $1C
    or c                                          ; $5467: $B1
    dec b                                         ; $5468: $05
    scf                                           ; $5469: $37
    jr c, jr_074_54B1                             ; $546A: $38 $45

    xor d                                         ; $546C: $AA

jr_074_546D:
    cp b                                          ; $546D: $B8
    rla                                           ; $546E: $17
    daa                                           ; $546F: $27
    jr z, jr_074_5489                             ; $5470: $28 $17

    add l                                         ; $5472: $85
    and h                                         ; $5473: $A4
    inc bc                                        ; $5474: $03
    dec b                                         ; $5475: $05
    add hl, hl                                    ; $5476: $29
    ld a, [hl+]                                   ; $5477: $2A
    add l                                         ; $5478: $85
    and h                                         ; $5479: $A4
    inc b                                         ; $547A: $04
    daa                                           ; $547B: $27
    jr z, jr_074_54C5                             ; $547C: $28 $47

    ld c, b                                       ; $547E: $48
    add d                                         ; $547F: $82
    cp b                                          ; $5480: $B8
    dec b                                         ; $5481: $05
    inc hl                                        ; $5482: $23
    inc h                                         ; $5483: $24
    scf                                           ; $5484: $37
    jr c, jr_074_549E                             ; $5485: $38 $17

    add h                                         ; $5487: $84
    and h                                         ; $5488: $A4

jr_074_5489:
    dec b                                         ; $5489: $05
    daa                                           ; $548A: $27
    jr z, jr_074_54C6                             ; $548B: $28 $39

    ld a, [hl-]                                   ; $548D: $3A
    inc b                                         ; $548E: $04
    add e                                         ; $548F: $83
    and h                                         ; $5490: $A4
    inc b                                         ; $5491: $04
    dec b                                         ; $5492: $05
    scf                                           ; $5493: $37
    jr c, jr_074_550B                             ; $5494: $38 $75

    add e                                         ; $5496: $83
    cp b                                          ; $5497: $B8
    dec b                                         ; $5498: $05
    inc sp                                        ; $5499: $33
    inc [hl]                                      ; $549A: $34
    ld b, a                                       ; $549B: $47
    ld c, b                                       ; $549C: $48
    rla                                           ; $549D: $17

jr_074_549E:
    add e                                         ; $549E: $83
    and h                                         ; $549F: $A4
    ld b, $05                                     ; $54A0: $06 $05
    scf                                           ; $54A2: $37
    jr c, jr_074_54EE                             ; $54A3: $38 $49

    ld c, d                                       ; $54A5: $4A
    rla                                           ; $54A6: $17
    add e                                         ; $54A7: $83
    and h                                         ; $54A8: $A4
    inc bc                                        ; $54A9: $03
    jr jr_074_551F                                ; $54AA: $18 $73

    ld c, b                                       ; $54AC: $48
    add l                                         ; $54AD: $85
    cp b                                          ; $54AE: $B8
    inc b                                         ; $54AF: $04
    ld b, h                                       ; $54B0: $44

jr_074_54B1:
    ld d, a                                       ; $54B1: $57
    ld e, b                                       ; $54B2: $58
    rla                                           ; $54B3: $17
    add e                                         ; $54B4: $83
    and h                                         ; $54B5: $A4
    rlca                                          ; $54B6: $07
    jr jr_074_5500                                ; $54B7: $18 $47

    ld c, b                                       ; $54B9: $48
    cp $5A                                        ; $54BA: $FE $5A
    add hl, hl                                    ; $54BC: $29
    ld a, [hl+]                                   ; $54BD: $2A
    add d                                         ; $54BE: $82
    and h                                         ; $54BF: $A4
    inc c                                         ; $54C0: $0C
    jr jr_074_5446                                ; $54C1: $18 $83

    cp b                                          ; $54C3: $B8
    ld l, a                                       ; $54C4: $6F

jr_074_54C5:
    cp b                                          ; $54C5: $B8

jr_074_54C6:
    rlca                                          ; $54C6: $07
    add hl, bc                                    ; $54C7: $09
    ld d, e                                       ; $54C8: $53
    cp b                                          ; $54C9: $B8
    ld e, a                                       ; $54CA: $5F
    cp b                                          ; $54CB: $B8
    rla                                           ; $54CC: $17
    add e                                         ; $54CD: $83
    and h                                         ; $54CE: $A4
    inc c                                         ; $54CF: $0C
    jr jr_074_5529                                ; $54D0: $18 $57

    ld e, b                                       ; $54D2: $58
    cp b                                          ; $54D3: $B8
    inc sp                                        ; $54D4: $33
    add hl, sp                                    ; $54D5: $39
    ld a, [hl-]                                   ; $54D6: $3A
    jr nc, jr_074_550A                            ; $54D7: $30 $31

    dec h                                         ; $54D9: $25
    and e                                         ; $54DA: $A3
    ld c, a                                       ; $54DB: $4F
    add d                                         ; $54DC: $82
    cp b                                          ; $54DD: $B8
    inc bc                                        ; $54DE: $03
    rla                                           ; $54DF: $17
    inc a                                         ; $54E0: $3C
    ld [$B882], sp                                ; $54E1: $08 $82 $B8
    ld [bc], a                                    ; $54E4: $02
    and b                                         ; $54E5: $A0
    rla                                           ; $54E6: $17

jr_074_54E7:
    add e                                         ; $54E7: $83
    and h                                         ; $54E8: $A4
    dec d                                         ; $54E9: $15
    jr @-$46                                      ; $54EA: $18 $B8

    ld e, a                                       ; $54EC: $5F
    cp b                                          ; $54ED: $B8

jr_074_54EE:
    ld b, e                                       ; $54EE: $43
    ld c, c                                       ; $54EF: $49
    ld c, d                                       ; $54F0: $4A
    ld b, b                                       ; $54F1: $40
    ld b, c                                       ; $54F2: $41
    dec [hl]                                      ; $54F3: $35
    ld [hl], $B8                                  ; $54F4: $36 $B8
    and b                                         ; $54F6: $A0
    and c                                         ; $54F7: $A1
    dec hl                                        ; $54F8: $2B
    and h                                         ; $54F9: $A4
    jr jr_074_5512                                ; $54FA: $18 $16

    cp b                                          ; $54FC: $B8
    rlca                                          ; $54FD: $07
    or c                                          ; $54FE: $B1
    add e                                         ; $54FF: $83

jr_074_5500:
    and h                                         ; $5500: $A4
    inc d                                         ; $5501: $14
    inc e                                         ; $5502: $1C
    ld [$6FB8], sp                                ; $5503: $08 $B8 $6F
    cp b                                          ; $5506: $B8
    ld e, c                                       ; $5507: $59
    ld e, d                                       ; $5508: $5A
    ld d, b                                       ; $5509: $50

jr_074_550A:
    ld d, c                                       ; $550A: $51

jr_074_550B:
    ld b, l                                       ; $550B: $45
    ld b, [hl]                                    ; $550C: $46
    or d                                          ; $550D: $B2
    or b                                          ; $550E: $B0
    or c                                          ; $550F: $B1
    and h                                         ; $5510: $A4
    daa                                           ; $5511: $27

jr_074_5512:
    jr z, jr_074_553A                             ; $5512: $28 $26

    cp b                                          ; $5514: $B8
    rla                                           ; $5515: $17
    add l                                         ; $5516: $85
    and h                                         ; $5517: $A4
    rlca                                          ; $5518: $07
    inc e                                         ; $5519: $1C
    jr nz, jr_074_553D                            ; $551A: $20 $21

    ld [$ACB8], sp                                ; $551C: $08 $B8 $AC

jr_074_551F:
    xor l                                         ; $551F: $AD
    add d                                         ; $5520: $82
    cp b                                          ; $5521: $B8
    ld a, [bc]                                    ; $5522: $0A
    and b                                         ; $5523: $A0
    and c                                         ; $5524: $A1
    rst $08                                       ; $5525: $CF
    and h                                         ; $5526: $A4
    rst $18                                       ; $5527: $DF
    and l                                         ; $5528: $A5

jr_074_5529:
    and [hl]                                      ; $5529: $A6
    ld [hl], $B8                                  ; $552A: $36 $B8
    rla                                           ; $552C: $17
    adc b                                         ; $552D: $88
    and h                                         ; $552E: $A4
    ld [$201A], sp                                ; $552F: $08 $1A $20
    ld hl, $2120                                  ; $5532: $21 $20 $21
    jr nz, jr_074_54E7                            ; $5535: $20 $B0

    or c                                          ; $5537: $B1
    add e                                         ; $5538: $83
    and h                                         ; $5539: $A4

jr_074_553A:
    dec b                                         ; $553A: $05
    inc e                                         ; $553B: $1C
    or [hl]                                       ; $553C: $B6

jr_074_553D:
    jr nz, jr_074_5560                            ; $553D: $20 $21

    or c                                          ; $553F: $B1
    sbc c                                         ; $5540: $99
    and h                                         ; $5541: $A4
    nop                                           ; $5542: $00
    db $10                                        ; $5543: $10
    sub b                                         ; $5544: $90
    nop                                           ; $5545: $00
    dec b                                         ; $5546: $05
    ld e, $80                                     ; $5547: $1E $80
    ld [bc], a                                    ; $5549: $02
    add l                                         ; $554A: $85
    ld e, c                                       ; $554B: $59
    ld bc, $83F3                                  ; $554C: $01 $F3 $83
    call $F201                                    ; $554F: $CD $01 $F2
    adc e                                         ; $5552: $8B
    ld e, c                                       ; $5553: $59
    ld bc, $83F3                                  ; $5554: $01 $F3 $83
    db $FD                                        ; $5557: $FD
    ld bc, $8BF2                                  ; $5558: $01 $F2 $8B
    ld e, c                                       ; $555B: $59
    dec b                                         ; $555C: $05
    di                                            ; $555D: $F3
    db $FD                                        ; $555E: $FD
    ld sp, hl                                     ; $555F: $F9

jr_074_5560:
    db $FD                                        ; $5560: $FD
    ld a, [c]                                     ; $5561: $F2
    adc e                                         ; $5562: $8B
    ld e, c                                       ; $5563: $59
    dec b                                         ; $5564: $05
    di                                            ; $5565: $F3
    ld sp, hl                                     ; $5566: $F9
    db $FD                                        ; $5567: $FD
    ld sp, hl                                     ; $5568: $F9
    ld a, [c]                                     ; $5569: $F2
    adc e                                         ; $556A: $8B
    ld e, c                                       ; $556B: $59
    dec b                                         ; $556C: $05
    di                                            ; $556D: $F3
    ld sp, hl                                     ; $556E: $F9
    ld sp, hl                                     ; $556F: $F9
    db $FD                                        ; $5570: $FD
    ld a, [c]                                     ; $5571: $F2
    adc e                                         ; $5572: $8B
    ld e, c                                       ; $5573: $59
    dec b                                         ; $5574: $05
    di                                            ; $5575: $F3
    ld sp, hl                                     ; $5576: $F9
    db $FD                                        ; $5577: $FD
    ld sp, hl                                     ; $5578: $F9
    ld a, [c]                                     ; $5579: $F2
    adc e                                         ; $557A: $8B
    ld e, c                                       ; $557B: $59
    dec b                                         ; $557C: $05
    di                                            ; $557D: $F3
    db $FD                                        ; $557E: $FD
    ld sp, hl                                     ; $557F: $F9
    db $FD                                        ; $5580: $FD
    ld a, [c]                                     ; $5581: $F2
    adc e                                         ; $5582: $8B
    ld e, c                                       ; $5583: $59
    ld [bc], a                                    ; $5584: $02
    di                                            ; $5585: $F3
    ld sp, hl                                     ; $5586: $F9
    add d                                         ; $5587: $82
    db $FD                                        ; $5588: $FD
    ld bc, $8BF2                                  ; $5589: $01 $F2 $8B
    ld e, c                                       ; $558C: $59
    dec b                                         ; $558D: $05
    di                                            ; $558E: $F3
    call $2825                                    ; $558F: $CD $25 $28
    ld a, [c]                                     ; $5592: $F2
    adc e                                         ; $5593: $8B
    ld e, c                                       ; $5594: $59
    dec b                                         ; $5595: $05
    di                                            ; $5596: $F3
    call $3D3A                                    ; $5597: $CD $3A $3D
    ld a, [c]                                     ; $559A: $F2
    adc e                                         ; $559B: $8B
    ld e, c                                       ; $559C: $59
    dec b                                         ; $559D: $05
    di                                            ; $559E: $F3
    call $1D1C                                    ; $559F: $CD $1C $1D
    ld a, [c]                                     ; $55A2: $F2
    adc e                                         ; $55A3: $8B
    ld e, c                                       ; $55A4: $59
    dec b                                         ; $55A5: $05
    di                                            ; $55A6: $F3
    call $1D1C                                    ; $55A7: $CD $1C $1D
    ld a, [c]                                     ; $55AA: $F2
    adc e                                         ; $55AB: $8B
    ld e, c                                       ; $55AC: $59
    dec b                                         ; $55AD: $05
    di                                            ; $55AE: $F3
    call $1D1C                                    ; $55AF: $CD $1C $1D
    ld a, [c]                                     ; $55B2: $F2
    adc e                                         ; $55B3: $8B
    ld e, c                                       ; $55B4: $59
    ld b, $F5                                     ; $55B5: $06 $F5
    call $1D1C                                    ; $55B7: $CD $1C $1D
    db $F4                                        ; $55BA: $F4
    db $E3                                        ; $55BB: $E3
    add [hl]                                      ; $55BC: $86
    ld e, c                                       ; $55BD: $59
    add e                                         ; $55BE: $83
    db $E3                                        ; $55BF: $E3
    ld [$52F5], sp                                ; $55C0: $08 $F5 $52
    call $1D1C                                    ; $55C3: $CD $1C $1D
    ld d, b                                       ; $55C6: $50
    ld d, c                                       ; $55C7: $51
    db $F4                                        ; $55C8: $F4
    add d                                         ; $55C9: $82
    db $E3                                        ; $55CA: $E3
    add d                                         ; $55CB: $82
    ld e, c                                       ; $55CC: $59
    inc [hl]                                      ; $55CD: $34
    di                                            ; $55CE: $F3
    ld c, l                                       ; $55CF: $4D
    ld c, [hl]                                    ; $55D0: $4E
    ld c, a                                       ; $55D1: $4F
    ld d, d                                       ; $55D2: $52
    ld h, d                                       ; $55D3: $62
    call $1D1C                                    ; $55D4: $CD $1C $1D
    ld h, b                                       ; $55D7: $60
    ld b, $21                                     ; $55D8: $06 $21
    ld [hl+], a                                   ; $55DA: $22
    inc hl                                        ; $55DB: $23
    ld a, [c]                                     ; $55DC: $F2
    ld e, c                                       ; $55DD: $59
    di                                            ; $55DE: $F3
    ld e, l                                       ; $55DF: $5D
    ld e, [hl]                                    ; $55E0: $5E
    ld e, a                                       ; $55E1: $5F
    ld h, d                                       ; $55E2: $62
    ld [hl], d                                    ; $55E3: $72
    call $1D1C                                    ; $55E4: $CD $1C $1D
    ld [hl], b                                    ; $55E7: $70
    ld d, $31                                     ; $55E8: $16 $31
    ld [hl-], a                                   ; $55EA: $32
    inc sp                                        ; $55EB: $33
    ld a, [c]                                     ; $55EC: $F2
    ld e, c                                       ; $55ED: $59
    di                                            ; $55EE: $F3
    ld l, l                                       ; $55EF: $6D
    ld l, [hl]                                    ; $55F0: $6E
    ld l, a                                       ; $55F1: $6F
    ld [hl], d                                    ; $55F2: $72
    xor l                                         ; $55F3: $AD
    call $1D1C                                    ; $55F4: $CD $1C $1D
    xor a                                         ; $55F7: $AF
    xor l                                         ; $55F8: $AD
    ld b, c                                       ; $55F9: $41
    ld b, d                                       ; $55FA: $42
    ld b, e                                       ; $55FB: $43
    ld a, [c]                                     ; $55FC: $F2
    ld e, c                                       ; $55FD: $59
    di                                            ; $55FE: $F3
    adc l                                         ; $55FF: $8D
    adc [hl]                                      ; $5600: $8E
    adc a                                         ; $5601: $8F
    add e                                         ; $5602: $83
    call $1C02                                    ; $5603: $CD $02 $1C
    dec e                                         ; $5606: $1D
    add d                                         ; $5607: $82
    call $AF06                                    ; $5608: $CD $06 $AF
    xor l                                         ; $560B: $AD
    xor a                                         ; $560C: $AF
    ld a, [c]                                     ; $560D: $F2
    ld e, c                                       ; $560E: $59
    di                                            ; $560F: $F3
    add e                                         ; $5610: $83
    call Call_074_4540                            ; $5611: $CD $40 $45
    dec h                                         ; $5614: $25
    ld h, $0A                                     ; $5615: $26 $0A
    ld l, $48                                     ; $5617: $2E $48
    call $D2D0                                    ; $5619: $CD $D0 $D2
    pop de                                        ; $561C: $D1
    call Call_074_59F2                            ; $561D: $CD $F2 $59
    di                                            ; $5620: $F3
    ret nc                                        ; $5621: $D0

    pop de                                        ; $5622: $D1
    call $3635                                    ; $5623: $CD $35 $36
    ld a, [de]                                    ; $5626: $1A
    ld e, $38                                     ; $5627: $1E $38
    call $E2F0                                    ; $5629: $CD $F0 $E2
    pop af                                        ; $562C: $F1
    call Call_074_59F2                            ; $562D: $CD $F2 $59
    di                                            ; $5630: $F3
    ldh a, [$F1]                                  ; $5631: $F0 $F1
    call $1D1C                                    ; $5633: $CD $1C $1D
    call $1D1C                                    ; $5636: $CD $1C $1D
    call $D2F0                                    ; $5639: $CD $F0 $D2
    pop af                                        ; $563C: $F1
    call Call_074_59F2                            ; $563D: $CD $F2 $59
    di                                            ; $5640: $F3
    ldh a, [$F1]                                  ; $5641: $F0 $F1
    call $1D1C                                    ; $5643: $CD $1C $1D
    call $1D1C                                    ; $5646: $CD $1C $1D
    call $E2E0                                    ; $5649: $CD $E0 $E2
    pop hl                                        ; $564C: $E1
    call Call_074_59F2                            ; $564D: $CD $F2 $59
    di                                            ; $5650: $F3
    ldh a, [$F1]                                  ; $5651: $F0 $F1
    call $1D1C                                    ; $5653: $CD $1C $1D
    call $1D1C                                    ; $5656: $CD $1C $1D
    add l                                         ; $5659: $85
    call $F20B                                    ; $565A: $CD $0B $F2
    ld e, c                                       ; $565D: $59
    di                                            ; $565E: $F3
    ldh a, [$F1]                                  ; $565F: $F0 $F1
    call $1D1C                                    ; $5661: $CD $1C $1D
    call $2B2A                                    ; $5664: $CD $2A $2B
    add d                                         ; $5667: $82
    dec bc                                        ; $5668: $0B
    ld c, $27                                     ; $5669: $0E $27
    jr z, @-$31                                   ; $566B: $28 $CD

    ld a, [c]                                     ; $566D: $F2
    ld e, c                                       ; $566E: $59
    di                                            ; $566F: $F3
    ldh a, [$F1]                                  ; $5670: $F0 $F1
    call $1D1C                                    ; $5672: $CD $1C $1D
    call $3B3A                                    ; $5675: $CD $3A $3B
    add d                                         ; $5678: $82
    dec de                                        ; $5679: $1B
    ld c, $37                                     ; $567A: $0E $37
    jr c, @-$31                                   ; $567C: $38 $CD

    ld a, [c]                                     ; $567E: $F2
    ld e, c                                       ; $567F: $59
    di                                            ; $5680: $F3
    ldh [$E1], a                                  ; $5681: $E0 $E1
    call $1D1C                                    ; $5683: $CD $1C $1D
    call $1D1C                                    ; $5686: $CD $1C $1D
    add d                                         ; $5689: $82
    call $1C06                                    ; $568A: $CD $06 $1C
    dec e                                         ; $568D: $1D
    call Call_074_59F2                            ; $568E: $CD $F2 $59
    di                                            ; $5691: $F3
    add e                                         ; $5692: $83
    call $1C30                                    ; $5693: $CD $30 $1C
    dec e                                         ; $5696: $1D
    call $1D1C                                    ; $5697: $CD $1C $1D
    call $1CFE                                    ; $569A: $CD $FE $1C
    dec e                                         ; $569D: $1D
    call Call_074_59F2                            ; $569E: $CD $F2 $59
    di                                            ; $56A1: $F3
    call $2625                                    ; $56A2: $CD $25 $26
    ld b, a                                       ; $56A5: $47
    ld b, [hl]                                    ; $56A6: $46
    dec bc                                        ; $56A7: $0B
    ld l, $2B                                     ; $56A8: $2E $2B
    daa                                           ; $56AA: $27
    jr z, jr_074_56C9                             ; $56AB: $28 $1C

    dec e                                         ; $56AD: $1D
    call Call_074_59F2                            ; $56AE: $CD $F2 $59
    di                                            ; $56B1: $F3
    call $3635                                    ; $56B2: $CD $35 $36
    ld d, a                                       ; $56B5: $57
    ld d, [hl]                                    ; $56B6: $56
    dec de                                        ; $56B7: $1B
    ld e, $3B                                     ; $56B8: $1E $3B
    ld d, a                                       ; $56BA: $57
    ld e, b                                       ; $56BB: $58
    inc e                                         ; $56BC: $1C
    dec e                                         ; $56BD: $1D
    call Call_074_59F2                            ; $56BE: $CD $F2 $59
    di                                            ; $56C1: $F3
    call $1D1C                                    ; $56C2: $CD $1C $1D
    add e                                         ; $56C5: $83
    call $1C02                                    ; $56C6: $CD $02 $1C

jr_074_56C9:
    dec e                                         ; $56C9: $1D
    add d                                         ; $56CA: $82
    call $1C09                                    ; $56CB: $CD $09 $1C
    dec e                                         ; $56CE: $1D
    call Call_074_59F2                            ; $56CF: $CD $F2 $59
    di                                            ; $56D2: $F3
    call $1D1C                                    ; $56D3: $CD $1C $1D
    add e                                         ; $56D6: $83
    call $1C02                                    ; $56D7: $CD $02 $1C
    dec e                                         ; $56DA: $1D
    add d                                         ; $56DB: $82
    call $1C09                                    ; $56DC: $CD $09 $1C
    dec e                                         ; $56DF: $1D
    call Call_074_59F2                            ; $56E0: $CD $F2 $59
    di                                            ; $56E3: $F3
    call Call_074_4645                            ; $56E4: $CD $45 $46
    add e                                         ; $56E7: $83
    dec bc                                        ; $56E8: $0B
    ld [bc], a                                    ; $56E9: $02
    ld l, $2B                                     ; $56EA: $2E $2B
    add d                                         ; $56EC: $82
    dec bc                                        ; $56ED: $0B
    add hl, bc                                    ; $56EE: $09
    ld b, a                                       ; $56EF: $47
    ld c, b                                       ; $56F0: $48
    call Call_074_59F2                            ; $56F1: $CD $F2 $59
    di                                            ; $56F4: $F3
    call $5655                                    ; $56F5: $CD $55 $56
    add e                                         ; $56F8: $83
    dec de                                        ; $56F9: $1B
    ld [bc], a                                    ; $56FA: $02
    ld e, $3B                                     ; $56FB: $1E $3B
    add d                                         ; $56FD: $82
    dec de                                        ; $56FE: $1B
    inc b                                         ; $56FF: $04
    ld d, a                                       ; $5700: $57
    ld e, b                                       ; $5701: $58
    call $82F2                                    ; $5702: $CD $F2 $82
    ld e, c                                       ; $5705: $59
    add e                                         ; $5706: $83
    db $D3                                        ; $5707: $D3
    dec b                                         ; $5708: $05
    push hl                                       ; $5709: $E5
    call $1CCD                                    ; $570A: $CD $CD $1C
    dec e                                         ; $570D: $1D
    add e                                         ; $570E: $83
    call $E402                                    ; $570F: $CD $02 $E4
    db $D3                                        ; $5712: $D3
    add [hl]                                      ; $5713: $86
    ld e, c                                       ; $5714: $59
    dec b                                         ; $5715: $05
    di                                            ; $5716: $F3
    call $1CCD                                    ; $5717: $CD $CD $1C
    dec e                                         ; $571A: $1D
    add e                                         ; $571B: $83
    call $F201                                    ; $571C: $CD $01 $F2
    adc b                                         ; $571F: $88
    ld e, c                                       ; $5720: $59
    inc b                                         ; $5721: $04
    push hl                                       ; $5722: $E5
    call $2D2A                                    ; $5723: $CD $2A $2D
    add e                                         ; $5726: $83
    call $F201                                    ; $5727: $CD $01 $F2
    adc b                                         ; $572A: $88
    ld e, c                                       ; $572B: $59
    inc b                                         ; $572C: $04
    di                                            ; $572D: $F3

Call_074_572E:
    call Call_074_5855                            ; $572E: $CD $55 $58
    add e                                         ; $5731: $83
    call $F201                                    ; $5732: $CD $01 $F2
    adc b                                         ; $5735: $88
    ld e, c                                       ; $5736: $59
    ld bc, $83F3                                  ; $5737: $01 $F3 $83
    call $E403                                    ; $573A: $CD $03 $E4
    db $D3                                        ; $573D: $D3
    db $D3                                        ; $573E: $D3
    adc c                                         ; $573F: $89
    ld e, c                                       ; $5740: $59
    ld bc, $83F3                                  ; $5741: $01 $F3 $83
    call $F201                                    ; $5744: $CD $01 $F2
    add [hl]                                      ; $5747: $86
    ld e, c                                       ; $5748: $59
    nop                                           ; $5749: $00
    ld [hl-], a                                   ; $574A: $32
    jp nz, $2701                                  ; $574B: $C2 $01 $27

    ld a, [bc]                                    ; $574E: $0A
    add sp, $03                                   ; $574F: $E8 $03
    add e                                         ; $5751: $83
    ld hl, $9C82                                  ; $5752: $21 $82 $9C
    dec b                                         ; $5755: $05
    dec de                                        ; $5756: $1B
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    or d                                          ; $5759: $B2
    or e                                          ; $575A: $B3
    xor e                                         ; $575B: $AB
    ld hl, $A403                                  ; $575C: $21 $03 $A4
    xor h                                         ; $575F: $AC
    dec de                                        ; $5760: $1B
    add d                                         ; $5761: $82
    nop                                           ; $5762: $00
    inc bc                                        ; $5763: $03
    jp nz, Jump_074_7CC3                          ; $5764: $C2 $C3 $7C

    xor d                                         ; $5767: $AA
    ld hl, $A208                                  ; $5768: $21 $08 $A2
    and h                                         ; $576B: $A4
    dec de                                        ; $576C: $1B
    nop                                           ; $576D: $00
    ld [hl], h                                    ; $576E: $74
    jp nc, Jump_074_6CD3                          ; $576F: $D2 $D3 $6C

    xor d                                         ; $5772: $AA
    ld hl, $9C0A                                  ; $5773: $21 $0A $9C
    and d                                         ; $5776: $A2
    ld hl, $091D                                  ; $5777: $21 $1D $09
    ld [c], a                                     ; $577A: $E2
    db $E3                                        ; $577B: $E3
    sbc a                                         ; $577C: $9F
    adc h                                         ; $577D: $8C
    ld a, h                                       ; $577E: $7C
    sbc [hl]                                      ; $577F: $9E
    ld hl, $A302                                  ; $5780: $21 $02 $A3
    and h                                         ; $5783: $A4
    add d                                         ; $5784: $82
    sub l                                         ; $5785: $95
    inc bc                                        ; $5786: $03
    ld e, l                                       ; $5787: $5D
    ld e, [hl]                                    ; $5788: $5E
    ld e, a                                       ; $5789: $5F
    add e                                         ; $578A: $83
    ld hl, $9C11                                  ; $578B: $21 $11 $9C
    and e                                         ; $578E: $A3
    ld hl, $001D                                  ; $578F: $21 $1D $00
    jp nc, $9EAE                                  ; $5792: $D2 $AE $9E

    sbc a                                         ; $5795: $9F
    ld a, h                                       ; $5796: $7C
    ld e, [hl]                                    ; $5797: $5E
    sub l                                         ; $5798: $95
    ld e, l                                       ; $5799: $5D
    sub l                                         ; $579A: $95
    sbc b                                         ; $579B: $98
    sbc a                                         ; $579C: $9F
    adc h                                         ; $579D: $8C
    add [hl]                                      ; $579E: $86
    ld hl, $A302                                  ; $579F: $21 $02 $A3
    and d                                         ; $57A2: $A2
    add d                                         ; $57A3: $82
    sub h                                         ; $57A4: $94
    dec b                                         ; $57A5: $05
    ld e, l                                       ; $57A6: $5D
    sub a                                         ; $57A7: $97
    sbc a                                         ; $57A8: $9F
    ld l, h                                       ; $57A9: $6C
    ld a, h                                       ; $57AA: $7C
    add d                                         ; $57AB: $82
    ld hl, $A40A                                  ; $57AC: $21 $0A $A4
    sub h                                         ; $57AF: $94
    sub h                                         ; $57B0: $94
    ld e, h                                       ; $57B1: $5C
    ld e, l                                       ; $57B2: $5D
    ld e, [hl]                                    ; $57B3: $5E
    ld e, a                                       ; $57B4: $5F
    sub h                                         ; $57B5: $94
    ld sp, $8332                                  ; $57B6: $31 $32 $83
    inc [hl]                                      ; $57B9: $34
    add e                                         ; $57BA: $83
    ld hl, $AC1B                                  ; $57BB: $21 $1B $AC
    and h                                         ; $57BE: $A4
    ld hl, $001D                                  ; $57BF: $21 $1D $00
    ldh [$BE], a                                  ; $57C2: $E0 $BE
    xor [hl]                                      ; $57C4: $AE
    sbc [hl]                                      ; $57C5: $9E
    sub a                                         ; $57C6: $97
    ld e, [hl]                                    ; $57C7: $5E
    ld e, a                                       ; $57C8: $5F
    ld hl, $6D6F                                  ; $57C9: $21 $6F $6D
    ld l, [hl]                                    ; $57CC: $6E
    sbc b                                         ; $57CD: $98
    sub a                                         ; $57CE: $97
    ld e, h                                       ; $57CF: $5C
    ld e, l                                       ; $57D0: $5D
    ld e, [hl]                                    ; $57D1: $5E
    ld e, a                                       ; $57D2: $5F
    sub l                                         ; $57D3: $95
    sub h                                         ; $57D4: $94
    ld hl, $3231                                  ; $57D5: $21 $31 $32
    add d                                         ; $57D8: $82
    inc [hl]                                      ; $57D9: $34
    add hl, bc                                    ; $57DA: $09
    ld c, d                                       ; $57DB: $4A
    sbc [hl]                                      ; $57DC: $9E
    sbc b                                         ; $57DD: $98
    sub a                                         ; $57DE: $97
    ld e, [hl]                                    ; $57DF: $5E
    sub h                                         ; $57E0: $94
    ld b, b                                       ; $57E1: $40
    ld [hl-], a                                   ; $57E2: $32
    inc sp                                        ; $57E3: $33
    add h                                         ; $57E4: $84
    inc [hl]                                      ; $57E5: $34
    ld [bc], a                                    ; $57E6: $02
    ld b, c                                       ; $57E7: $41
    ld b, d                                       ; $57E8: $42
    add e                                         ; $57E9: $83
    add hl, de                                    ; $57EA: $19
    add e                                         ; $57EB: $83
    ld hl, $C80A                                  ; $57EC: $21 $0A $C8
    xor h                                         ; $57EF: $AC
    ld hl, $001D                                  ; $57F0: $21 $1D $00
    call $BCCE                                    ; $57F3: $CD $CE $BC
    cp a                                          ; $57F6: $BF
    ld l, l                                       ; $57F7: $6D
    add d                                         ; $57F8: $82
    ld l, [hl]                                    ; $57F9: $6E
    ld [de], a                                    ; $57FA: $12
    ld hl, $7D7F                                  ; $57FB: $21 $7F $7D
    ld a, [hl]                                    ; $57FE: $7E
    sbc l                                         ; $57FF: $9D
    ld l, a                                       ; $5800: $6F
    ld hl, $216F                                  ; $5801: $21 $6F $21
    ld l, [hl]                                    ; $5804: $6E
    ld hl, $216E                                  ; $5805: $21 $6E $21
    ld b, c                                       ; $5808: $41
    ld b, d                                       ; $5809: $42
    add hl, de                                    ; $580A: $19
    ld c, b                                       ; $580B: $48
    ld e, d                                       ; $580C: $5A
    add l                                         ; $580D: $85
    inc [hl]                                      ; $580E: $34
    ld [bc], a                                    ; $580F: $02
    ld b, c                                       ; $5810: $41
    ld b, d                                       ; $5811: $42
    add h                                         ; $5812: $84
    add hl, de                                    ; $5813: $19
    inc bc                                        ; $5814: $03
    ld c, b                                       ; $5815: $48
    ld d, c                                       ; $5816: $51
    ld d, d                                       ; $5817: $52
    add e                                         ; $5818: $83
    add hl, hl                                    ; $5819: $29
    add h                                         ; $581A: $84
    ld hl, $C809                                  ; $581B: $21 $09 $C8
    reti                                          ; $581E: $D9


    jp c, $0900                                   ; $581F: $DA $00 $09

    sbc $CE                                       ; $5822: $DE $CE
    ld [hl], a                                    ; $5824: $77
    ld a, l                                       ; $5825: $7D
    add d                                         ; $5826: $82
    ld a, [hl]                                    ; $5827: $7E
    inc c                                         ; $5828: $0C
    ld hl, $8D8F                                  ; $5829: $21 $8F $8D
    adc [hl]                                      ; $582C: $8E
    xor l                                         ; $582D: $AD
    ld a, a                                       ; $582E: $7F
    xor [hl]                                      ; $582F: $AE
    ld a, a                                       ; $5830: $7F
    ld a, l                                       ; $5831: $7D
    ld a, [hl]                                    ; $5832: $7E
    ld a, l                                       ; $5833: $7D
    ld a, [hl]                                    ; $5834: $7E
    add d                                         ; $5835: $82
    ld hl, $5204                                  ; $5836: $21 $04 $52
    add hl, hl                                    ; $5839: $29
    ld e, b                                       ; $583A: $58
    ld e, c                                       ; $583B: $59
    add l                                         ; $583C: $85
    add hl, de                                    ; $583D: $19
    ld [bc], a                                    ; $583E: $02
    ld hl, $8452                                  ; $583F: $21 $52 $84
    add hl, hl                                    ; $5842: $29
    ld b, $58                                     ; $5843: $06 $58
    ld h, c                                       ; $5845: $61
    ld h, d                                       ; $5846: $62
    nop                                           ; $5847: $00
    ld bc, $8600                                  ; $5848: $01 $00 $86
    ld hl, $C802                                  ; $584B: $21 $02 $C8
    dec l                                         ; $584E: $2D
    add d                                         ; $584F: $82
    nop                                           ; $5850: $00
    inc bc                                        ; $5851: $03
    sbc $88                                       ; $5852: $DE $88
    adc l                                         ; $5854: $8D

Call_074_5855:
    add d                                         ; $5855: $82
    adc [hl]                                      ; $5856: $8E
    inc c                                         ; $5857: $0C
    ld hl, $B5B4                                  ; $5858: $21 $B4 $B5
    or [hl]                                       ; $585B: $B6
    cp l                                          ; $585C: $BD
    adc a                                         ; $585D: $8F
    cp [hl]                                       ; $585E: $BE
    adc a                                         ; $585F: $8F
    adc l                                         ; $5860: $8D
    adc [hl]                                      ; $5861: $8E
    adc l                                         ; $5862: $8D
    adc [hl]                                      ; $5863: $8E
    add d                                         ; $5864: $82
    dec bc                                        ; $5865: $0B
    inc b                                         ; $5866: $04
    dec c                                         ; $5867: $0D
    nop                                           ; $5868: $00
    ld l, b                                       ; $5869: $68
    ld l, c                                       ; $586A: $69
    add l                                         ; $586B: $85
    add hl, hl                                    ; $586C: $29
    ld [bc], a                                    ; $586D: $02
    dec bc                                        ; $586E: $0B
    dec c                                         ; $586F: $0D
    adc b                                         ; $5870: $88
    nop                                           ; $5871: $00
    ld [bc], a                                    ; $5872: $02
    ld de, $8700                                  ; $5873: $11 $00 $87
    ld hl, $D905                                  ; $5876: $21 $05 $D9
    jp c, $2B00                                   ; $5879: $DA $00 $2B

    nop                                           ; $587C: $00
    add e                                         ; $587D: $83
    ld c, $02                                     ; $587E: $0E $02
    rrca                                          ; $5880: $0F
    call nc, $C582                                ; $5881: $D4 $82 $C5
    ld [bc], a                                    ; $5884: $02
    or [hl]                                       ; $5885: $B6
    dec c                                         ; $5886: $0D
    add [hl]                                      ; $5887: $86
    ld c, $82                                     ; $5888: $0E $82
    nop                                           ; $588A: $00
    inc b                                         ; $588B: $04
    ld b, $13                                     ; $588C: $06 $13
    ld a, b                                       ; $588E: $78
    ld a, c                                       ; $588F: $79
    adc c                                         ; $5890: $89
    nop                                           ; $5891: $00
    ld [bc], a                                    ; $5892: $02
    inc b                                         ; $5893: $04
    dec b                                         ; $5894: $05
    add e                                         ; $5895: $83
    nop                                           ; $5896: $00
    inc bc                                        ; $5897: $03
    ld [bc], a                                    ; $5898: $02
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    add a                                         ; $589B: $87
    ld hl, $E912                                  ; $589C: $21 $12 $E9
    jp z, $00DA                                   ; $589F: $CA $DA $00

    inc b                                         ; $58A2: $04
    dec b                                         ; $58A3: $05
    nop                                           ; $58A4: $00
    dec hl                                        ; $58A5: $2B
    nop                                           ; $58A6: $00
    rrca                                          ; $58A7: $0F
    call nc, $D6D5                                ; $58A8: $D4 $D5 $D6
    dec e                                         ; $58AB: $1D
    nop                                           ; $58AC: $00
    inc b                                         ; $58AD: $04
    dec b                                         ; $58AE: $05
    dec hl                                        ; $58AF: $2B
    adc e                                         ; $58B0: $8B
    nop                                           ; $58B1: $00
    ld [bc], a                                    ; $58B2: $02
    inc b                                         ; $58B3: $04
    dec b                                         ; $58B4: $05
    adc h                                         ; $58B5: $8C
    nop                                           ; $58B6: $00
    adc b                                         ; $58B7: $88
    ld hl, $E905                                  ; $58B8: $21 $05 $E9
    ret z                                         ; $58BB: $C8

    dec l                                         ; $58BC: $2D
    nop                                           ; $58BD: $00
    dec hl                                        ; $58BE: $2B
    add d                                         ; $58BF: $82
    nop                                           ; $58C0: $00
    ld b, $13                                     ; $58C1: $06 $13
    nop                                           ; $58C3: $00
    xor d                                         ; $58C4: $AA
    and $C1                                       ; $58C5: $E6 $C1
    dec e                                         ; $58C7: $1D
    adc b                                         ; $58C8: $88
    nop                                           ; $58C9: $00
    ld b, $AA                                     ; $58CA: $06 $AA
    push hl                                       ; $58CC: $E5
    and $E5                                       ; $58CD: $E6 $E5
    and $B0                                       ; $58CF: $E6 $B0
    add h                                         ; $58D1: $84
    nop                                           ; $58D2: $00
    inc b                                         ; $58D3: $04
    xor c                                         ; $58D4: $A9
    push hl                                       ; $58D5: $E5
    and $E5                                       ; $58D6: $E6 $E5
    add l                                         ; $58D8: $85
    and $82                                       ; $58D9: $E6 $82
    push hl                                       ; $58DB: $E5
    adc d                                         ; $58DC: $8A
    ld hl, $C802                                  ; $58DD: $21 $02 $C8
    jp z, $F782                                   ; $58E0: $CA $82 $F7

    rlca                                          ; $58E3: $07
    or $F7                                        ; $58E4: $F6 $F7
    call c, $A6CC                                 ; $58E6: $DC $CC $A6
    add d                                         ; $58E9: $82
    dec l                                         ; $58EA: $2D
    add e                                         ; $58EB: $83
    nop                                           ; $58EC: $00
    dec b                                         ; $58ED: $05
    inc b                                         ; $58EE: $04
    dec b                                         ; $58EF: $05
    nop                                           ; $58F0: $00
    cp c                                          ; $58F1: $B9
    push hl                                       ; $58F2: $E5
    add [hl]                                      ; $58F3: $86
    ld hl, $E401                                  ; $58F4: $21 $01 $E4
    add e                                         ; $58F7: $83
    push hl                                       ; $58F8: $E5
    sbc h                                         ; $58F9: $9C
    ld hl, $A304                                  ; $58FA: $21 $04 $A3
    ld [hl], d                                    ; $58FD: $72
    ld b, c                                       ; $58FE: $41
    dec de                                        ; $58FF: $1B
    add e                                         ; $5900: $83
    nop                                           ; $5901: $00
    inc bc                                        ; $5902: $03
    cp c                                          ; $5903: $B9
    push hl                                       ; $5904: $E5
    and $A8                                       ; $5905: $E6 $A8
    ld hl, $1404                                  ; $5907: $21 $04 $14
    dec d                                         ; $590A: $15
    ld hl, $821B                                  ; $590B: $21 $1B $82
    nop                                           ; $590E: $00
    ld [bc], a                                    ; $590F: $02
    xor c                                         ; $5910: $A9
    ld l, h                                       ; $5911: $6C
    xor d                                         ; $5912: $AA
    ld hl, $A204                                  ; $5913: $21 $04 $A2
    add d                                         ; $5916: $82
    ld hl, $821B                                  ; $5917: $21 $1B $82
    nop                                           ; $591A: $00
    ld [bc], a                                    ; $591B: $02
    ld c, e                                       ; $591C: $4B
    ld c, h                                       ; $591D: $4C
    xor d                                         ; $591E: $AA
    ld hl, $9C04                                  ; $591F: $21 $04 $9C
    add d                                         ; $5922: $82
    ld hl, $820D                                  ; $5923: $21 $0D $82
    nop                                           ; $5926: $00

jr_074_5927:
    ld [bc], a                                    ; $5927: $02
    adc e                                         ; $5928: $8B
    ld l, h                                       ; $5929: $6C
    xor d                                         ; $592A: $AA
    ld hl, $AC03                                  ; $592B: $21 $03 $AC
    sub d                                         ; $592E: $92
    dec de                                        ; $592F: $1B
    add e                                         ; $5930: $83
    nop                                           ; $5931: $00
    ld [bc], a                                    ; $5932: $02
    sbc e                                         ; $5933: $9B
    xor b                                         ; $5934: $A8

jr_074_5935:
    xor d                                         ; $5935: $AA
    ld hl, $1408                                  ; $5936: $21 $08 $14
    dec d                                         ; $5939: $15
    dec de                                        ; $593A: $1B
    inc b                                         ; $593B: $04
    nop                                           ; $593C: $00
    xor c                                         ; $593D: $A9
    adc h                                         ; $593E: $8C
    cp b                                          ; $593F: $B8
    xor d                                         ; $5940: $AA

jr_074_5941:
    ld hl, $A203                                  ; $5941: $21 $03 $A2
    sub d                                         ; $5944: $92
    dec de                                        ; $5945: $1B
    add d                                         ; $5946: $82
    nop                                           ; $5947: $00
    inc bc                                        ; $5948: $03
    ld c, e                                       ; $5949: $4B
    ld c, h                                       ; $594A: $4C
    ld l, h                                       ; $594B: $6C
    sbc c                                         ; $594C: $99
    ld hl, $1800                                  ; $594D: $21 $00 $18
    ret c                                         ; $5950: $D8

    nop                                           ; $5951: $00
    dec c                                         ; $5952: $0D
    ld c, $40                                     ; $5953: $0E $40
    ld [bc], a                                    ; $5955: $02
    sbc c                                         ; $5956: $99
    nop                                           ; $5957: $00
    ld [$2507], sp                                ; $5958: $08 $07 $25
    ld h, $A2                                     ; $595B: $26 $A2
    and c                                         ; $595D: $A1
    inc b                                         ; $595E: $04
    dec b                                         ; $595F: $05
    rlca                                          ; $5960: $07
    add e                                         ; $5961: $83
    nop                                           ; $5962: $00
    inc b                                         ; $5963: $04
    rlca                                          ; $5964: $07
    dec h                                         ; $5965: $25
    ld h, $A2                                     ; $5966: $26 $A2
    add e                                         ; $5968: $83
    and l                                         ; $5969: $A5
    inc bc                                        ; $596A: $03
    and c                                         ; $596B: $A1
    inc b                                         ; $596C: $04
    dec b                                         ; $596D: $05
    add e                                         ; $596E: $83
    nop                                           ; $596F: $00
    ld [$3534], sp                                ; $5970: $08 $34 $35
    ld [hl], $B2                                  ; $5973: $36 $B2
    or c                                          ; $5975: $B1
    inc d                                         ; $5976: $14
    dec d                                         ; $5977: $15
    ld d, $83                                     ; $5978: $16 $83
    nop                                           ; $597A: $00
    inc b                                         ; $597B: $04
    inc [hl]                                      ; $597C: $34
    dec [hl]                                      ; $597D: $35
    ld [hl], $B2                                  ; $597E: $36 $B2
    add e                                         ; $5980: $83
    or l                                          ; $5981: $B5
    inc b                                         ; $5982: $04
    or c                                          ; $5983: $B1
    inc d                                         ; $5984: $14
    dec d                                         ; $5985: $15
    ld d, $82                                     ; $5986: $16 $82
    nop                                           ; $5988: $00
    ld [$2994], sp                                ; $5989: $08 $94 $29
    ld a, [hl+]                                   ; $598C: $2A
    jp nz, $27C1                                  ; $598D: $C2 $C1 $27

    jr z, jr_074_5927                             ; $5990: $28 $95

    add e                                         ; $5992: $83
    nop                                           ; $5993: $00
    inc b                                         ; $5994: $04
    sub h                                         ; $5995: $94
    add hl, hl                                    ; $5996: $29
    ld a, [hl+]                                   ; $5997: $2A
    jp nz, $C583                                  ; $5998: $C2 $83 $C5

    inc b                                         ; $599B: $04
    pop bc                                        ; $599C: $C1
    daa                                           ; $599D: $27
    jr z, jr_074_5935                             ; $599E: $28 $95

    add d                                         ; $59A0: $82
    nop                                           ; $59A1: $00
    inc bc                                        ; $59A2: $03
    sub h                                         ; $59A3: $94
    add hl, sp                                    ; $59A4: $39
    ld a, [hl-]                                   ; $59A5: $3A
    add d                                         ; $59A6: $82
    rlca                                          ; $59A7: $07
    inc bc                                        ; $59A8: $03
    scf                                           ; $59A9: $37
    jr c, jr_074_5941                             ; $59AA: $38 $95

    add e                                         ; $59AC: $83
    nop                                           ; $59AD: $00
    inc b                                         ; $59AE: $04
    sub h                                         ; $59AF: $94
    add hl, sp                                    ; $59B0: $39
    ld a, [hl-]                                   ; $59B1: $3A
    rlca                                          ; $59B2: $07
    add h                                         ; $59B3: $84
    nop                                           ; $59B4: $00
    inc bc                                        ; $59B5: $03
    scf                                           ; $59B6: $37
    jr c, @-$69                                   ; $59B7: $38 $95

    add d                                         ; $59B9: $82
    nop                                           ; $59BA: $00
    inc bc                                        ; $59BB: $03
    sub h                                         ; $59BC: $94
    ld c, c                                       ; $59BD: $49
    ld c, d                                       ; $59BE: $4A
    add d                                         ; $59BF: $82
    rlca                                          ; $59C0: $07
    inc bc                                        ; $59C1: $03
    ld b, a                                       ; $59C2: $47
    ld c, b                                       ; $59C3: $48
    sub l                                         ; $59C4: $95
    add e                                         ; $59C5: $83
    nop                                           ; $59C6: $00
    dec bc                                        ; $59C7: $0B
    sub h                                         ; $59C8: $94
    ld c, c                                       ; $59C9: $49
    ld c, d                                       ; $59CA: $4A
    rlca                                          ; $59CB: $07
    db $D3                                        ; $59CC: $D3
    db $E4                                        ; $59CD: $E4
    push de                                       ; $59CE: $D5
    nop                                           ; $59CF: $00
    ld b, a                                       ; $59D0: $47
    ld c, b                                       ; $59D1: $48
    sub l                                         ; $59D2: $95
    add d                                         ; $59D3: $82
    nop                                           ; $59D4: $00
    ld [$0694], sp                                ; $59D5: $08 $94 $06
    ld b, $D3                                     ; $59D8: $06 $D3
    db $E4                                        ; $59DA: $E4
    push de                                       ; $59DB: $D5
    rlca                                          ; $59DC: $07
    sub l                                         ; $59DD: $95
    add e                                         ; $59DE: $83
    nop                                           ; $59DF: $00
    ld [$0094], sp                                ; $59E0: $08 $94 $00
    rlca                                          ; $59E3: $07
    db $D3                                        ; $59E4: $D3
    db $E4                                        ; $59E5: $E4
    cp $E4                                        ; $59E6: $FE $E4
    push de                                       ; $59E8: $D5
    add d                                         ; $59E9: $82
    nop                                           ; $59EA: $00
    ld [$0095], sp                                ; $59EB: $08 $95 $00
    nop                                           ; $59EE: $00
    sub h                                         ; $59EF: $94
    nop                                           ; $59F0: $00
    db $D3                                        ; $59F1: $D3

Call_074_59F2:
    db $E4                                        ; $59F2: $E4
    push af                                       ; $59F3: $F5
    add d                                         ; $59F4: $82
    nop                                           ; $59F5: $00
    ld bc, $8395                                  ; $59F6: $01 $95 $83
    nop                                           ; $59F9: $00
    inc b                                         ; $59FA: $04
    sub h                                         ; $59FB: $94
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    di                                            ; $59FE: $F3
    add h                                         ; $59FF: $84
    db $E4                                        ; $5A00: $E4
    add d                                         ; $5A01: $82
    nop                                           ; $5A02: $00
    dec bc                                        ; $5A03: $0B
    sub l                                         ; $5A04: $95
    nop                                           ; $5A05: $00
    rlca                                          ; $5A06: $07
    sub h                                         ; $5A07: $94
    nop                                           ; $5A08: $00
    db $E3                                        ; $5A09: $E3
    push hl                                       ; $5A0A: $E5
    nop                                           ; $5A0B: $00
    ret nc                                        ; $5A0C: $D0

    pop de                                        ; $5A0D: $D1
    jp nc, $0083                                  ; $5A0E: $D2 $83 $00

    dec b                                         ; $5A11: $05
    xor d                                         ; $5A12: $AA
    xor e                                         ; $5A13: $AB
    xor h                                         ; $5A14: $AC
    nop                                           ; $5A15: $00
    db $E3                                        ; $5A16: $E3
    add e                                         ; $5A17: $83
    db $E4                                        ; $5A18: $E4
    inc c                                         ; $5A19: $0C
    push de                                       ; $5A1A: $D5
    nop                                           ; $5A1B: $00
    sub l                                         ; $5A1C: $95
    nop                                           ; $5A1D: $00
    rlca                                          ; $5A1E: $07
    sub h                                         ; $5A1F: $94
    nop                                           ; $5A20: $00
    db $E3                                        ; $5A21: $E3
    push hl                                       ; $5A22: $E5
    nop                                           ; $5A23: $00
    ldh [$E1], a                                  ; $5A24: $E0 $E1
    add h                                         ; $5A26: $84
    nop                                           ; $5A27: $00
    dec b                                         ; $5A28: $05
    ld b, $BB                                     ; $5A29: $06 $BB
    cp h                                          ; $5A2B: $BC
    nop                                           ; $5A2C: $00
    db $E3                                        ; $5A2D: $E3
    add e                                         ; $5A2E: $83
    db $E4                                        ; $5A2F: $E4
    dec bc                                        ; $5A30: $0B
    push hl                                       ; $5A31: $E5
    nop                                           ; $5A32: $00
    sub l                                         ; $5A33: $95
    nop                                           ; $5A34: $00
    rlca                                          ; $5A35: $07
    sub h                                         ; $5A36: $94
    nop                                           ; $5A37: $00
    db $E3                                        ; $5A38: $E3
    push hl                                       ; $5A39: $E5
    nop                                           ; $5A3A: $00
    sub l                                         ; $5A3B: $95
    add a                                         ; $5A3C: $87
    nop                                           ; $5A3D: $00
    inc bc                                        ; $5A3E: $03
    sub h                                         ; $5A3F: $94
    nop                                           ; $5A40: $00
    db $E3                                        ; $5A41: $E3
    add e                                         ; $5A42: $83
    db $E4                                        ; $5A43: $E4
    dec bc                                        ; $5A44: $0B
    push hl                                       ; $5A45: $E5
    nop                                           ; $5A46: $00
    sub l                                         ; $5A47: $95
    nop                                           ; $5A48: $00
    rlca                                          ; $5A49: $07
    sub h                                         ; $5A4A: $94
    nop                                           ; $5A4B: $00
    db $E3                                        ; $5A4C: $E3
    push hl                                       ; $5A4D: $E5
    nop                                           ; $5A4E: $00
    sub l                                         ; $5A4F: $95
    add a                                         ; $5A50: $87
    nop                                           ; $5A51: $00
    inc bc                                        ; $5A52: $03
    sub h                                         ; $5A53: $94
    nop                                           ; $5A54: $00
    db $E3                                        ; $5A55: $E3
    add e                                         ; $5A56: $83
    db $E4                                        ; $5A57: $E4
    dec bc                                        ; $5A58: $0B
    push hl                                       ; $5A59: $E5
    nop                                           ; $5A5A: $00
    sub l                                         ; $5A5B: $95
    nop                                           ; $5A5C: $00
    rlca                                          ; $5A5D: $07
    sub h                                         ; $5A5E: $94
    nop                                           ; $5A5F: $00
    db $E3                                        ; $5A60: $E3
    push hl                                       ; $5A61: $E5
    nop                                           ; $5A62: $00
    sub l                                         ; $5A63: $95
    add a                                         ; $5A64: $87
    nop                                           ; $5A65: $00
    inc bc                                        ; $5A66: $03
    sub h                                         ; $5A67: $94
    nop                                           ; $5A68: $00
    db $E3                                        ; $5A69: $E3
    add e                                         ; $5A6A: $83
    db $E4                                        ; $5A6B: $E4
    dec bc                                        ; $5A6C: $0B
    push hl                                       ; $5A6D: $E5

jr_074_5A6E:
    nop                                           ; $5A6E: $00
    sub l                                         ; $5A6F: $95
    nop                                           ; $5A70: $00
    rlca                                          ; $5A71: $07
    sub h                                         ; $5A72: $94
    nop                                           ; $5A73: $00
    db $E3                                        ; $5A74: $E3
    push hl                                       ; $5A75: $E5
    nop                                           ; $5A76: $00
    sub l                                         ; $5A77: $95
    add a                                         ; $5A78: $87
    nop                                           ; $5A79: $00
    inc bc                                        ; $5A7A: $03
    sub h                                         ; $5A7B: $94
    nop                                           ; $5A7C: $00
    db $E3                                        ; $5A7D: $E3
    add e                                         ; $5A7E: $83
    db $E4                                        ; $5A7F: $E4
    inc c                                         ; $5A80: $0C
    push hl                                       ; $5A81: $E5
    nop                                           ; $5A82: $00

Call_074_5A83:
    sub l                                         ; $5A83: $95
    nop                                           ; $5A84: $00
    rlca                                          ; $5A85: $07
    sub h                                         ; $5A86: $94
    nop                                           ; $5A87: $00
    db $E3                                        ; $5A88: $E3
    push hl                                       ; $5A89: $E5
    nop                                           ; $5A8A: $00
    inc b                                         ; $5A8B: $04
    dec b                                         ; $5A8C: $05
    add l                                         ; $5A8D: $85
    nop                                           ; $5A8E: $00
    inc b                                         ; $5A8F: $04
    dec h                                         ; $5A90: $25
    ld h, $00                                     ; $5A91: $26 $00
    db $E3                                        ; $5A93: $E3
    add e                                         ; $5A94: $83
    db $E4                                        ; $5A95: $E4

jr_074_5A96:
    dec d                                         ; $5A96: $15
    push hl                                       ; $5A97: $E5
    nop                                           ; $5A98: $00
    sub l                                         ; $5A99: $95
    nop                                           ; $5A9A: $00
    rlca                                          ; $5A9B: $07
    sub h                                         ; $5A9C: $94
    nop                                           ; $5A9D: $00
    db $E3                                        ; $5A9E: $E3
    push hl                                       ; $5A9F: $E5
    nop                                           ; $5AA0: $00
    inc d                                         ; $5AA1: $14
    ld c, [hl]                                    ; $5AA2: $4E
    ld c, a                                       ; $5AA3: $4F
    and l                                         ; $5AA4: $A5
    and [hl]                                      ; $5AA5: $A6
    and l                                         ; $5AA6: $A5
    ld l, [hl]                                    ; $5AA7: $6E
    ld l, a                                       ; $5AA8: $6F
    ld [hl], $00                                  ; $5AA9: $36 $00
    db $E3                                        ; $5AAB: $E3
    add e                                         ; $5AAC: $83
    db $E4                                        ; $5AAD: $E4
    dec d                                         ; $5AAE: $15
    push hl                                       ; $5AAF: $E5
    nop                                           ; $5AB0: $00
    sub l                                         ; $5AB1: $95
    nop                                           ; $5AB2: $00
    rlca                                          ; $5AB3: $07
    sub h                                         ; $5AB4: $94
    nop                                           ; $5AB5: $00
    db $E3                                        ; $5AB6: $E3
    push hl                                       ; $5AB7: $E5
    nop                                           ; $5AB8: $00
    daa                                           ; $5AB9: $27
    jr z, jr_074_5A6E                             ; $5ABA: $28 $B2

    or l                                          ; $5ABC: $B5
    or [hl]                                       ; $5ABD: $B6
    or l                                          ; $5ABE: $B5
    or c                                          ; $5ABF: $B1
    add hl, hl                                    ; $5AC0: $29
    ld a, [hl+]                                   ; $5AC1: $2A
    nop                                           ; $5AC2: $00
    db $E3                                        ; $5AC3: $E3
    add e                                         ; $5AC4: $83
    db $E4                                        ; $5AC5: $E4
    dec d                                         ; $5AC6: $15
    push hl                                       ; $5AC7: $E5
    nop                                           ; $5AC8: $00
    sub l                                         ; $5AC9: $95
    nop                                           ; $5ACA: $00
    rlca                                          ; $5ACB: $07
    sub h                                         ; $5ACC: $94
    nop                                           ; $5ACD: $00
    db $E3                                        ; $5ACE: $E3
    push hl                                       ; $5ACF: $E5
    nop                                           ; $5AD0: $00
    scf                                           ; $5AD1: $37
    jr c, jr_074_5A96                             ; $5AD2: $38 $C2

    push bc                                       ; $5AD4: $C5
    add $C5                                       ; $5AD5: $C6 $C5
    pop bc                                        ; $5AD7: $C1
    add hl, sp                                    ; $5AD8: $39
    ld a, [hl-]                                   ; $5AD9: $3A
    nop                                           ; $5ADA: $00
    db $E3                                        ; $5ADB: $E3
    add e                                         ; $5ADC: $83
    db $E4                                        ; $5ADD: $E4
    inc c                                         ; $5ADE: $0C
    push hl                                       ; $5ADF: $E5
    nop                                           ; $5AE0: $00
    sub l                                         ; $5AE1: $95
    nop                                           ; $5AE2: $00
    rlca                                          ; $5AE3: $07
    sub h                                         ; $5AE4: $94
    nop                                           ; $5AE5: $00
    db $E3                                        ; $5AE6: $E3
    db $E4                                        ; $5AE7: $E4
    push de                                       ; $5AE8: $D5
    ld b, a                                       ; $5AE9: $47
    ld c, b                                       ; $5AEA: $48
    add l                                         ; $5AEB: $85
    nop                                           ; $5AEC: $00
    inc bc                                        ; $5AED: $03
    ld c, c                                       ; $5AEE: $49
    ld c, d                                       ; $5AEF: $4A
    db $D3                                        ; $5AF0: $D3
    add h                                         ; $5AF1: $84
    db $E4                                        ; $5AF2: $E4
    ld [$00F5], sp                                ; $5AF3: $08 $F5 $00
    sub l                                         ; $5AF6: $95
    nop                                           ; $5AF7: $00
    rlca                                          ; $5AF8: $07
    sub h                                         ; $5AF9: $94
    rlca                                          ; $5AFA: $07
    di                                            ; $5AFB: $F3
    add d                                         ; $5AFC: $82
    db $E4                                        ; $5AFD: $E4
    adc c                                         ; $5AFE: $89
    call nc, $E484                                ; $5AFF: $D4 $84 $E4
    ld a, [bc]                                    ; $5B02: $0A
    push af                                       ; $5B03: $F5
    nop                                           ; $5B04: $00
    nop                                           ; $5B05: $00
    sub l                                         ; $5B06: $95
    nop                                           ; $5B07: $00
    rlca                                          ; $5B08: $07
    xor d                                         ; $5B09: $AA
    xor e                                         ; $5B0A: $AB
    xor h                                         ; $5B0B: $AC
    di                                            ; $5B0C: $F3

Call_074_5B0D:
    add l                                         ; $5B0D: $85
    db $F4                                        ; $5B0E: $F4
    add l                                         ; $5B0F: $85
    db $E4                                        ; $5B10: $E4
    add e                                         ; $5B11: $83
    db $F4                                        ; $5B12: $F4
    rlca                                          ; $5B13: $07
    push af                                       ; $5B14: $F5
    nop                                           ; $5B15: $00
    ret nc                                        ; $5B16: $D0

    pop de                                        ; $5B17: $D1
    jp nc, $0700                                  ; $5B18: $D2 $00 $07

    add d                                         ; $5B1B: $82
    nop                                           ; $5B1C: $00
    ld [bc], a                                    ; $5B1D: $02
    cp h                                          ; $5B1E: $BC
    rlca                                          ; $5B1F: $07
    add l                                         ; $5B20: $85
    nop                                           ; $5B21: $00
    ld bc, $83F3                                  ; $5B22: $01 $F3 $83
    db $E4                                        ; $5B25: $E4
    ld bc, $85F5                                  ; $5B26: $01 $F5 $85
    nop                                           ; $5B29: $00
    ld [bc], a                                    ; $5B2A: $02
    ldh [$E1], a                                  ; $5B2B: $E0 $E1
    add d                                         ; $5B2D: $82
    nop                                           ; $5B2E: $00
    inc b                                         ; $5B2F: $04
    rlca                                          ; $5B30: $07
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    call z, Call_074_5A83                         ; $5B33: $CC $83 $5A
    inc bc                                        ; $5B36: $03
    ld h, d                                       ; $5B37: $62
    xor e                                         ; $5B38: $AB
    xor h                                         ; $5B39: $AC
    add h                                         ; $5B3A: $84
    nop                                           ; $5B3B: $00
    inc bc                                        ; $5B3C: $03
    ret nc                                        ; $5B3D: $D0

    pop de                                        ; $5B3E: $D1
    dec bc                                        ; $5B3F: $0B
    add e                                         ; $5B40: $83
    ld e, d                                       ; $5B41: $5A
    ld bc, $83F0                                  ; $5B42: $01 $F0 $83
    nop                                           ; $5B45: $00
    adc b                                         ; $5B46: $88
    rlca                                          ; $5B47: $07
    ld [bc], a                                    ; $5B48: $02
    cp e                                          ; $5B49: $BB
    cp h                                          ; $5B4A: $BC
    add h                                         ; $5B4B: $84
    nop                                           ; $5B4C: $00
    inc bc                                        ; $5B4D: $03
    ldh [$E1], a                                  ; $5B4E: $E0 $E1
    rlca                                          ; $5B50: $07
    adc [hl]                                      ; $5B51: $8E
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    ld c, $7E                                     ; $5B54: $0E $7E
    nop                                           ; $5B56: $00
    inc bc                                        ; $5B57: $03
    ld a, [de]                                    ; $5B58: $1A
    ld hl, sp+$01                                 ; $5B59: $F8 $01
    inc bc                                        ; $5B5B: $03
    ccf                                           ; $5B5C: $3F
    ld h, [hl]                                    ; $5B5D: $66
    add hl, hl                                    ; $5B5E: $29
    add e                                         ; $5B5F: $83
    db $10                                        ; $5B60: $10
    inc bc                                        ; $5B61: $03
    jr nz, jr_074_5B6E                            ; $5B62: $20 $0A

    inc e                                         ; $5B64: $1C
    add l                                         ; $5B65: $85
    adc e                                         ; $5B66: $8B
    inc bc                                        ; $5B67: $03
    ld l, [hl]                                    ; $5B68: $6E
    ccf                                           ; $5B69: $3F
    add hl, de                                    ; $5B6A: $19
    add e                                         ; $5B6B: $83
    db $10                                        ; $5B6C: $10
    dec b                                         ; $5B6D: $05

jr_074_5B6E:
    jr nz, jr_074_5BBC                            ; $5B6E: $20 $4C

    inc l                                         ; $5B70: $2C
    ld l, l                                       ; $5B71: $6D
    ld e, $83                                     ; $5B72: $1E $83
    adc e                                         ; $5B74: $8B
    add d                                         ; $5B75: $82
    ld a, a                                       ; $5B76: $7F
    ld a, [bc]                                    ; $5B77: $0A
    ccf                                           ; $5B78: $3F
    ld hl, $1058                                  ; $5B79: $21 $58 $10
    jr nz, jr_074_5BDA                            ; $5B7C: $20 $5C

    ld e, l                                       ; $5B7E: $5D
    ld a, [hl]                                    ; $5B7F: $7E
    inc l                                         ; $5B80: $2C
    ld l, l                                       ; $5B81: $6D
    add d                                         ; $5B82: $82
    adc e                                         ; $5B83: $8B
    add d                                         ; $5B84: $82
    ld e, [hl]                                    ; $5B85: $5E
    ld a, [bc]                                    ; $5B86: $0A
    ld e, a                                       ; $5B87: $5F
    ld hl, $F75B                                  ; $5B88: $21 $5B $F7
    add d                                         ; $5B8B: $82
    jr z, @+$7D                                   ; $5B8C: $28 $7B

    ld e, h                                       ; $5B8E: $5C
    ld a, [hl]                                    ; $5B8F: $7E
    inc e                                         ; $5B90: $1C
    add d                                         ; $5B91: $82
    adc e                                         ; $5B92: $8B
    dec b                                         ; $5B93: $05
    ld c, e                                       ; $5B94: $4B
    add hl, bc                                    ; $5B95: $09
    add hl, hl                                    ; $5B96: $29
    ld e, b                                       ; $5B97: $58
    ld l, b                                       ; $5B98: $68
    add d                                         ; $5B99: $82
    db $10                                        ; $5B9A: $10
    dec b                                         ; $5B9B: $05
    sub d                                         ; $5B9C: $92
    jr z, jr_074_5BC9                             ; $5B9D: $28 $2A

    ld c, h                                       ; $5B9F: $4C
    inc e                                         ; $5BA0: $1C
    add d                                         ; $5BA1: $82
    adc e                                         ; $5BA2: $8B
    inc b                                         ; $5BA3: $04
    ld e, e                                       ; $5BA4: $5B
    ld a, e                                       ; $5BA5: $7B
    ld hl, $8268                                  ; $5BA6: $21 $68 $82
    db $10                                        ; $5BA9: $10
    add d                                         ; $5BAA: $82
    ld [de], a                                    ; $5BAB: $12
    inc b                                         ; $5BAC: $04
    jr jr_074_5BE9                                ; $5BAD: $18 $3A

    ld c, h                                       ; $5BAF: $4C
    inc e                                         ; $5BB0: $1C
    add d                                         ; $5BB1: $82
    adc e                                         ; $5BB2: $8B
    inc c                                         ; $5BB3: $0C
    ld l, e                                       ; $5BB4: $6B
    ld [hl], a                                    ; $5BB5: $77
    ld [bc], a                                    ; $5BB6: $02
    db $10                                        ; $5BB7: $10
    ld [de], a                                    ; $5BB8: $12
    inc bc                                        ; $5BB9: $03
    nop                                           ; $5BBA: $00
    ld a, b                                       ; $5BBB: $78

jr_074_5BBC:
    ld d, [hl]                                    ; $5BBC: $56
    ld a, e                                       ; $5BBD: $7B
    ld c, h                                       ; $5BBE: $4C
    inc e                                         ; $5BBF: $1C
    add d                                         ; $5BC0: $82
    adc e                                         ; $5BC1: $8B
    inc b                                         ; $5BC2: $04
    rlca                                          ; $5BC3: $07
    nop                                           ; $5BC4: $00
    inc b                                         ; $5BC5: $04
    inc bc                                        ; $5BC6: $03
    add e                                         ; $5BC7: $83
    nop                                           ; $5BC8: $00

jr_074_5BC9:
    dec b                                         ; $5BC9: $05
    jr c, jr_074_5C47                             ; $5BCA: $38 $7B

    inc a                                         ; $5BCC: $3C
    ld l, [hl]                                    ; $5BCD: $6E
    inc e                                         ; $5BCE: $1C
    add d                                         ; $5BCF: $82
    adc e                                         ; $5BD0: $8B
    ld [bc], a                                    ; $5BD1: $02
    ld a, e                                       ; $5BD2: $7B
    add hl, sp                                    ; $5BD3: $39
    add h                                         ; $5BD4: $84
    nop                                           ; $5BD5: $00
    ld b, $78                                     ; $5BD6: $06 $78
    dec b                                         ; $5BD8: $05
    inc a                                         ; $5BD9: $3C

jr_074_5BDA:
    ld l, [hl]                                    ; $5BDA: $6E
    inc c                                         ; $5BDB: $0C
    sbc a                                         ; $5BDC: $9F
    add d                                         ; $5BDD: $82
    adc e                                         ; $5BDE: $8B
    inc bc                                        ; $5BDF: $03
    dec hl                                        ; $5BE0: $2B
    ld a, e                                       ; $5BE1: $7B
    ld a, c                                       ; $5BE2: $79
    add e                                         ; $5BE3: $83
    nop                                           ; $5BE4: $00
    ld b, $78                                     ; $5BE5: $06 $78
    ld d, [hl]                                    ; $5BE7: $56
    ld c, h                                       ; $5BE8: $4C

jr_074_5BE9:
    ld l, [hl]                                    ; $5BE9: $6E
    inc e                                         ; $5BEA: $1C
    adc a                                         ; $5BEB: $8F
    add d                                         ; $5BEC: $82
    adc e                                         ; $5BED: $8B
    inc bc                                        ; $5BEE: $03
    dec sp                                        ; $5BEF: $3B
    dec d                                         ; $5BF0: $15
    ld a, c                                       ; $5BF1: $79
    add d                                         ; $5BF2: $82
    nop                                           ; $5BF3: $00
    rlca                                          ; $5BF4: $07
    inc d                                         ; $5BF5: $14
    ld [hl+], a                                   ; $5BF6: $22
    jr z, @+$5E                                   ; $5BF7: $28 $5C

    ld a, [hl]                                    ; $5BF9: $7E
    ld a, a                                       ; $5BFA: $7F
    inc e                                         ; $5BFB: $1C
    add d                                         ; $5BFC: $82
    adc e                                         ; $5BFD: $8B
    ld [bc], a                                    ; $5BFE: $02
    ld d, [hl]                                    ; $5BFF: $56
    ld [hl], a                                    ; $5C00: $77
    add d                                         ; $5C01: $82
    nop                                           ; $5C02: $00
    ld bc, $8314                                  ; $5C03: $01 $14 $83
    db $10                                        ; $5C06: $10
    inc b                                         ; $5C07: $04
    jr z, jr_074_5C66                             ; $5C08: $28 $5C

    ld a, [hl]                                    ; $5C0A: $7E
    inc e                                         ; $5C0B: $1C
    add d                                         ; $5C0C: $82
    adc e                                         ; $5C0D: $8B
    inc b                                         ; $5C0E: $04
    ld b, $79                                     ; $5C0F: $06 $79
    nop                                           ; $5C11: $00
    inc d                                         ; $5C12: $14
    add h                                         ; $5C13: $84
    db $10                                        ; $5C14: $10
    ld a, [bc]                                    ; $5C15: $0A
    jr @+$3E                                      ; $5C16: $18 $3C

    ld l, [hl]                                    ; $5C18: $6E
    inc e                                         ; $5C19: $1C
    adc e                                         ; $5C1A: $8B
    dec e                                         ; $5C1B: $1D
    rla                                           ; $5C1C: $17
    add hl, sp                                    ; $5C1D: $39
    nop                                           ; $5C1E: $00
    ld [bc], a                                    ; $5C1F: $02
    add e                                         ; $5C20: $83
    db $10                                        ; $5C21: $10
    dec bc                                        ; $5C22: $0B
    jr jr_074_5C61                                ; $5C23: $18 $3C

    ld l, [hl]                                    ; $5C25: $6E
    inc c                                         ; $5C26: $0C
    sbc a                                         ; $5C27: $9F
    ld l, h                                       ; $5C28: $6C
    dec l                                         ; $5C29: $2D
    sbc e                                         ; $5C2A: $9B
    ld [hl], a                                    ; $5C2B: $77
    nop                                           ; $5C2C: $00
    ld [bc], a                                    ; $5C2D: $02
    add e                                         ; $5C2E: $83
    db $10                                        ; $5C2F: $10
    dec bc                                        ; $5C30: $0B
    jr z, jr_074_5C7F                             ; $5C31: $28 $4C

    ld a, [hl]                                    ; $5C33: $7E
    inc e                                         ; $5C34: $1C
    ld l, h                                       ; $5C35: $6C
    cpl                                           ; $5C36: $2F
    ld a, a                                       ; $5C37: $7F
    rrca                                          ; $5C38: $0F
    dec bc                                        ; $5C39: $0B
    ld l, d                                       ; $5C3A: $6A
    inc b                                         ; $5C3B: $04
    add e                                         ; $5C3C: $83
    db $10                                        ; $5C3D: $10
    inc c                                         ; $5C3E: $0C
    jr @+$5E                                      ; $5C3F: $18 $5C

    ld a, [hl]                                    ; $5C41: $7E
    inc l                                         ; $5C42: $2C
    cpl                                           ; $5C43: $2F
    ld a, a                                       ; $5C44: $7F
    ld e, a                                       ; $5C45: $5F
    sbc [hl]                                      ; $5C46: $9E

jr_074_5C47:
    rrca                                          ; $5C47: $0F
    ld l, a                                       ; $5C48: $6F
    dec bc                                        ; $5C49: $0B
    inc b                                         ; $5C4A: $04
    add d                                         ; $5C4B: $82
    db $10                                        ; $5C4C: $10
    inc bc                                        ; $5C4D: $03
    jr z, jr_074_5CCB                             ; $5C4E: $28 $7B

    ld e, h                                       ; $5C50: $5C
    add d                                         ; $5C51: $82
    ld e, l                                       ; $5C52: $5D
    ld [$3C5F], sp                                ; $5C53: $08 $5F $3C
    adc l                                         ; $5C56: $8D
    cpl                                           ; $5C57: $2F
    ld a, a                                       ; $5C58: $7F
    ld e, a                                       ; $5C59: $5F
    ld a, c                                       ; $5C5A: $79
    ld [bc], a                                    ; $5C5B: $02
    add d                                         ; $5C5C: $82
    db $10                                        ; $5C5D: $10
    dec bc                                        ; $5C5E: $0B
    jr z, @+$7D                                   ; $5C5F: $28 $7B

jr_074_5C61:
    ld [$7B4B], sp                                ; $5C61: $08 $4B $7B
    ld c, h                                       ; $5C64: $4C
    rra                                           ; $5C65: $1F

jr_074_5C66:
    ld a, a                                       ; $5C66: $7F
    ld e, a                                       ; $5C67: $5F
    add hl, hl                                    ; $5C68: $29
    ld [hl+], a                                   ; $5C69: $22
    add h                                         ; $5C6A: $84
    db $10                                        ; $5C6B: $10
    ld [$7B28], sp                                ; $5C6C: $08 $28 $7B
    ld e, e                                       ; $5C6F: $5B
    inc a                                         ; $5C70: $3C
    inc c                                         ; $5C71: $0C
    cpl                                           ; $5C72: $2F
    ld c, a                                       ; $5C73: $4F
    add hl, hl                                    ; $5C74: $29
    add [hl]                                      ; $5C75: $86
    db $10                                        ; $5C76: $10
    ld [$1518], sp                                ; $5C77: $08 $18 $15
    ld l, e                                       ; $5C7A: $6B
    ld c, h                                       ; $5C7B: $4C
    inc e                                         ; $5C7C: $1C
    ld a, a                                       ; $5C7D: $7F
    ld e, a                                       ; $5C7E: $5F

jr_074_5C7F:
    add hl, de                                    ; $5C7F: $19
    add [hl]                                      ; $5C80: $86
    db $10                                        ; $5C81: $10
    add hl, bc                                    ; $5C82: $09
    jr z, jr_074_5CEC                             ; $5C83: $28 $67

    inc a                                         ; $5C85: $3C
    ld a, [hl]                                    ; $5C86: $7E
    inc e                                         ; $5C87: $1C
    ld e, a                                       ; $5C88: $5F
    dec hl                                        ; $5C89: $2B
    ld [hl], a                                    ; $5C8A: $77
    inc b                                         ; $5C8B: $04
    add l                                         ; $5C8C: $85
    db $10                                        ; $5C8D: $10
    ld a, [bc]                                    ; $5C8E: $0A
    ld bc, $4C76                                  ; $5C8F: $01 $76 $4C
    ld a, [hl]                                    ; $5C92: $7E
    inc l                                         ; $5C93: $2C
    sbc e                                         ; $5C94: $9B
    sbc h                                         ; $5C95: $9C
    ld a, c                                       ; $5C96: $79
    nop                                           ; $5C97: $00
    inc b                                         ; $5C98: $04
    add h                                         ; $5C99: $84
    db $10                                        ; $5C9A: $10
    inc bc                                        ; $5C9B: $03
    ld bc, $5C38                                  ; $5C9C: $01 $38 $5C
    add d                                         ; $5C9F: $82
    ld e, l                                       ; $5CA0: $5D
    inc bc                                        ; $5CA1: $03
    inc c                                         ; $5CA2: $0C
    rrca                                          ; $5CA3: $0F
    dec bc                                        ; $5CA4: $0B
    add d                                         ; $5CA5: $82
    nop                                           ; $5CA6: $00
    ld bc, $8402                                  ; $5CA7: $01 $02 $84
    db $10                                        ; $5CAA: $10
    ld a, [bc]                                    ; $5CAB: $0A
    jr z, jr_074_5D29                             ; $5CAC: $28 $7B

    dec hl                                        ; $5CAE: $2B
    ld c, e                                       ; $5CAF: $4B
    inc l                                         ; $5CB0: $2C
    cpl                                           ; $5CB1: $2F
    ld l, a                                       ; $5CB2: $6F
    dec bc                                        ; $5CB3: $0B
    nop                                           ; $5CB4: $00
    ld [bc], a                                    ; $5CB5: $02
    add e                                         ; $5CB6: $83
    db $10                                        ; $5CB7: $10
    inc de                                        ; $5CB8: $13
    add d                                         ; $5CB9: $82
    ld bc, $3B76                                  ; $5CBA: $01 $76 $3B
    ld e, e                                       ; $5CBD: $5B
    ld a, a                                       ; $5CBE: $7F
    ld a, [hl]                                    ; $5CBF: $7E
    ld a, a                                       ; $5CC0: $7F
    ld e, a                                       ; $5CC1: $5F
    ld a, c                                       ; $5CC2: $79
    inc b                                         ; $5CC3: $04
    ld [de], a                                    ; $5CC4: $12
    db $10                                        ; $5CC5: $10
    sub d                                         ; $5CC6: $92
    db $10                                        ; $5CC7: $10
    inc bc                                        ; $5CC8: $03
    jr c, jr_074_5CD0                             ; $5CC9: $38 $05

jr_074_5CCB:
    ld l, e                                       ; $5CCB: $6B
    add d                                         ; $5CCC: $82
    ld e, [hl]                                    ; $5CCD: $5E
    ld [bc], a                                    ; $5CCE: $02
    ld e, a                                       ; $5CCF: $5F

jr_074_5CD0:
    ld [hl], a                                    ; $5CD0: $77
    add e                                         ; $5CD1: $83
    nop                                           ; $5CD2: $00
    dec b                                         ; $5CD3: $05
    inc b                                         ; $5CD4: $04
    ld [de], a                                    ; $5CD5: $12
    inc bc                                        ; $5CD6: $03
    jr c, jr_074_5D2F                             ; $5CD7: $38 $56

    add d                                         ; $5CD9: $82
    ld a, e                                       ; $5CDA: $7B
    ld b, $4B                                     ; $5CDB: $06 $4B
    add hl, bc                                    ; $5CDD: $09
    ld h, a                                       ; $5CDE: $67
    ld a, c                                       ; $5CDF: $79
    nop                                           ; $5CE0: $00
    ld e, c                                       ; $5CE1: $59
    add h                                         ; $5CE2: $84
    nop                                           ; $5CE3: $00
    rlca                                          ; $5CE4: $07
    halt                                          ; $5CE5: $76
    ld [hl], a                                    ; $5CE6: $77
    halt                                          ; $5CE7: $76
    dec d                                         ; $5CE8: $15
    ld e, e                                       ; $5CE9: $5B
    ld a, e                                       ; $5CEA: $7B
    ld [hl], a                                    ; $5CEB: $77

jr_074_5CEC:
    add d                                         ; $5CEC: $82
    nop                                           ; $5CED: $00
    ld bc, $855B                                  ; $5CEE: $01 $5B $85
    nop                                           ; $5CF1: $00
    dec b                                         ; $5CF2: $05
    ld a, [bc]                                    ; $5CF3: $0A
    dec bc                                        ; $5CF4: $0B
    halt                                          ; $5CF5: $76
    ld l, e                                       ; $5CF6: $6B
    ld [hl], a                                    ; $5CF7: $77
    add e                                         ; $5CF8: $83
    nop                                           ; $5CF9: $00
    inc bc                                        ; $5CFA: $03
    ld l, c                                       ; $5CFB: $69
    nop                                           ; $5CFC: $00
    ld e, c                                       ; $5CFD: $59
    add d                                         ; $5CFE: $82
    nop                                           ; $5CFF: $00
    ld b, $0A                                     ; $5D00: $06 $0A
    inc c                                         ; $5D02: $0C
    rrca                                          ; $5D03: $0F
    dec bc                                        ; $5D04: $0B
    ld h, [hl]                                    ; $5D05: $66
    ld a, c                                       ; $5D06: $79
    add l                                         ; $5D07: $85
    nop                                           ; $5D08: $00
    add hl, bc                                    ; $5D09: $09
    ld l, c                                       ; $5D0A: $69
    nop                                           ; $5D0B: $00
    ld a, [bc]                                    ; $5D0C: $0A
    inc c                                         ; $5D0D: $0C
    adc e                                         ; $5D0E: $8B
    sbc [hl]                                      ; $5D0F: $9E
    rrca                                          ; $5D10: $0F
    ccf                                           ; $5D11: $3F
    add hl, sp                                    ; $5D12: $39
    add [hl]                                      ; $5D13: $86
    nop                                           ; $5D14: $00
    inc bc                                        ; $5D15: $03
    ld a, [bc]                                    ; $5D16: $0A
    inc c                                         ; $5D17: $0C
    sbc l                                         ; $5D18: $9D
    add d                                         ; $5D19: $82
    adc e                                         ; $5D1A: $8B
    inc b                                         ; $5D1B: $04
    sbc [hl]                                      ; $5D1C: $9E
    ld a, a                                       ; $5D1D: $7F
    ccf                                           ; $5D1E: $3F
    ld a, c                                       ; $5D1F: $79
    add d                                         ; $5D20: $82
    nop                                           ; $5D21: $00
    rlca                                          ; $5D22: $07
    inc d                                         ; $5D23: $14
    inc de                                        ; $5D24: $13
    jr c, jr_074_5D83                             ; $5D25: $38 $5C

    ld a, [hl]                                    ; $5D27: $7E
    inc l                                         ; $5D28: $2C

jr_074_5D29:
    ld l, l                                       ; $5D29: $6D
    add d                                         ; $5D2A: $82
    adc e                                         ; $5D2B: $8B
    dec b                                         ; $5D2C: $05
    ld e, [hl]                                    ; $5D2D: $5E
    ld e, a                                       ; $5D2E: $5F

jr_074_5D2F:
    ld a, c                                       ; $5D2F: $79
    inc d                                         ; $5D30: $14
    ld [hl+], a                                   ; $5D31: $22
    add d                                         ; $5D32: $82
    db $10                                        ; $5D33: $10
    dec b                                         ; $5D34: $05
    jr z, jr_074_5DB2                             ; $5D35: $28 $7B

    ld e, h                                       ; $5D37: $5C
    ld a, [hl]                                    ; $5D38: $7E
    inc e                                         ; $5D39: $1C
    add d                                         ; $5D3A: $82
    adc e                                         ; $5D3B: $8B
    inc bc                                        ; $5D3C: $03
    add hl, bc                                    ; $5D3D: $09
    ld [hl], a                                    ; $5D3E: $77
    inc d                                         ; $5D3F: $14
    add l                                         ; $5D40: $85
    db $10                                        ; $5D41: $10
    inc b                                         ; $5D42: $04
    jr z, jr_074_5D6F                             ; $5D43: $28 $2A

    ld c, h                                       ; $5D45: $4C
    inc e                                         ; $5D46: $1C
    add d                                         ; $5D47: $82
    adc e                                         ; $5D48: $8B
    inc bc                                        ; $5D49: $03
    ld a, e                                       ; $5D4A: $7B
    add hl, sp                                    ; $5D4B: $39
    ld [bc], a                                    ; $5D4C: $02
    add l                                         ; $5D4D: $85
    db $10                                        ; $5D4E: $10
    inc b                                         ; $5D4F: $04
    jr @+$3C                                      ; $5D50: $18 $3A

    ld c, h                                       ; $5D52: $4C
    inc e                                         ; $5D53: $1C
    add d                                         ; $5D54: $82
    adc e                                         ; $5D55: $8B
    nop                                           ; $5D56: $00
    rrca                                          ; $5D57: $0F
    rst $38                                       ; $5D58: $FF
    rrca                                          ; $5D59: $0F
    rst $38                                       ; $5D5A: $FF
    rrca                                          ; $5D5B: $0F
    rst $38                                       ; $5D5C: $FF
    rrca                                          ; $5D5D: $0F
    rst $38                                       ; $5D5E: $FF
    rrca                                          ; $5D5F: $0F
    rst $38                                       ; $5D60: $FF
    rrca                                          ; $5D61: $0F
    rst $38                                       ; $5D62: $FF
    rrca                                          ; $5D63: $0F
    rst $38                                       ; $5D64: $FF
    rrca                                          ; $5D65: $0F
    rst $38                                       ; $5D66: $FF
    rst $38                                       ; $5D67: $FF
    ldh a, [$7F]                                  ; $5D68: $F0 $7F
    ld a, b                                       ; $5D6A: $78
    rra                                           ; $5D6B: $1F
    rra                                           ; $5D6C: $1F
    ld b, e                                       ; $5D6D: $43
    ld b, e                                       ; $5D6E: $43

jr_074_5D6F:
    jr nc, jr_074_5DA1                            ; $5D6F: $30 $30

    ld a, [de]                                    ; $5D71: $1A
    ld a, [de]                                    ; $5D72: $1A
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    rst $38                                       ; $5D77: $FF
    rst $38                                       ; $5D78: $FF
    ld a, a                                       ; $5D79: $7F
    rst $38                                       ; $5D7A: $FF
    ccf                                           ; $5D7B: $3F
    rst $38                                       ; $5D7C: $FF
    ccf                                           ; $5D7D: $3F
    rst $38                                       ; $5D7E: $FF
    rra                                           ; $5D7F: $1F
    rst $38                                       ; $5D80: $FF
    rra                                           ; $5D81: $1F
    rst $38                                       ; $5D82: $FF

jr_074_5D83:
    rrca                                          ; $5D83: $0F
    rst $38                                       ; $5D84: $FF
    rrca                                          ; $5D85: $0F
    rst $38                                       ; $5D86: $FF
    rst $38                                       ; $5D87: $FF
    ld bc, $07FF                                  ; $5D88: $01 $FF $07
    cp $3E                                        ; $5D8B: $FE $3E
    ldh a, [$F0]                                  ; $5D8D: $F0 $F0
    ld [bc], a                                    ; $5D8F: $02
    ld a, [bc]                                    ; $5D90: $0A
    inc b                                         ; $5D91: $04
    db $F4                                        ; $5D92: $F4
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    rst $38                                       ; $5D97: $FF
    rst $38                                       ; $5D98: $FF
    rst $38                                       ; $5D99: $FF
    rst $38                                       ; $5D9A: $FF
    rst $38                                       ; $5D9B: $FF
    rst $38                                       ; $5D9C: $FF
    rst $38                                       ; $5D9D: $FF
    rst $38                                       ; $5D9E: $FF
    rst $38                                       ; $5D9F: $FF
    rst $38                                       ; $5DA0: $FF

jr_074_5DA1:
    cp $FF                                        ; $5DA1: $FE $FF
    ei                                            ; $5DA3: $FB
    db $FC                                        ; $5DA4: $FC
    db $ED                                        ; $5DA5: $ED
    di                                            ; $5DA6: $F3
    rst $38                                       ; $5DA7: $FF
    rst $38                                       ; $5DA8: $FF
    rst $38                                       ; $5DA9: $FF
    rst $38                                       ; $5DAA: $FF
    rst $38                                       ; $5DAB: $FF
    rst $38                                       ; $5DAC: $FF
    rst $38                                       ; $5DAD: $FF
    rst $38                                       ; $5DAE: $FF
    rst $38                                       ; $5DAF: $FF
    rst $38                                       ; $5DB0: $FF
    ei                                            ; $5DB1: $FB

jr_074_5DB2:
    rlca                                          ; $5DB2: $07
    ld d, a                                       ; $5DB3: $57
    rst $28                                       ; $5DB4: $EF
    xor h                                         ; $5DB5: $AC
    db $DB                                        ; $5DB6: $DB
    ei                                            ; $5DB7: $FB
    db $FC                                        ; $5DB8: $FC
    push af                                       ; $5DB9: $F5
    ld a, [$FBF1]                                 ; $5DBA: $FA $F1 $FB
    db $E3                                        ; $5DBD: $E3
    ld sp, hl                                     ; $5DBE: $F9
    db $DD                                        ; $5DBF: $DD
    ldh [$A6], a                                  ; $5DC0: $E0 $A6
    ret nc                                        ; $5DC2: $D0

    or h                                          ; $5DC3: $B4
    jp c, $E6D9                                   ; $5DC4: $DA $D9 $E6

    db $FC                                        ; $5DC7: $FC
    rst $00                                       ; $5DC8: $C7
    di                                            ; $5DC9: $F3
    sbc h                                         ; $5DCA: $9C
    add sp, $30                                   ; $5DCB: $E8 $30
    ret nc                                        ; $5DCD: $D0

    ld h, b                                       ; $5DCE: $60
    ldh [$C0], a                                  ; $5DCF: $E0 $C0
    add b                                         ; $5DD1: $80
    ret nz                                        ; $5DD2: $C0

    ret nz                                        ; $5DD3: $C0

    add b                                         ; $5DD4: $80
    add b                                         ; $5DD5: $80
    add b                                         ; $5DD6: $80
    rst $38                                       ; $5DD7: $FF
    nop                                           ; $5DD8: $00
    rst $38                                       ; $5DD9: $FF
    nop                                           ; $5DDA: $00
    rst $38                                       ; $5DDB: $FF
    ret nz                                        ; $5DDC: $C0

    rst $38                                       ; $5DDD: $FF
    ldh [rIE], a                                  ; $5DDE: $E0 $FF
    db $FC                                        ; $5DE0: $FC
    ccf                                           ; $5DE1: $3F
    ld a, $07                                     ; $5DE2: $3E $07
    rst $00                                       ; $5DE4: $C7
    add hl, de                                    ; $5DE5: $19
    add hl, de                                    ; $5DE6: $19
    rst $38                                       ; $5DE7: $FF
    add b                                         ; $5DE8: $80
    rst $38                                       ; $5DE9: $FF
    ret nz                                        ; $5DEA: $C0

    rst $38                                       ; $5DEB: $FF
    ret nz                                        ; $5DEC: $C0

    ld a, a                                       ; $5DED: $7F
    ld h, b                                       ; $5DEE: $60
    ld a, a                                       ; $5DEF: $7F
    ld [hl], b                                    ; $5DF0: $70
    cp a                                          ; $5DF1: $BF
    cp h                                          ; $5DF2: $BC
    rrca                                          ; $5DF3: $0F
    ld c, [hl]                                    ; $5DF4: $4E
    rlca                                          ; $5DF5: $07
    ld h, $FF                                     ; $5DF6: $26 $FF
    rst $38                                       ; $5DF8: $FF
    jp $A5C3                                      ; $5DF9: $C3 $C3 $A5


    and l                                         ; $5DFC: $A5
    sbc c                                         ; $5DFD: $99
    sbc c                                         ; $5DFE: $99
    sbc c                                         ; $5DFF: $99
    sbc c                                         ; $5E00: $99
    and l                                         ; $5E01: $A5
    and l                                         ; $5E02: $A5
    jp $FFC3                                      ; $5E03: $C3 $C3 $FF


    rst $38                                       ; $5E06: $FF
    rst $38                                       ; $5E07: $FF
    rst $38                                       ; $5E08: $FF
    jp $A5C3                                      ; $5E09: $C3 $C3 $A5


    and l                                         ; $5E0C: $A5
    sbc c                                         ; $5E0D: $99
    sbc c                                         ; $5E0E: $99
    sbc c                                         ; $5E0F: $99
    sbc c                                         ; $5E10: $99
    and l                                         ; $5E11: $A5
    and l                                         ; $5E12: $A5
    jp $FFC3                                      ; $5E13: $C3 $C3 $FF


    rst $38                                       ; $5E16: $FF
    rst $38                                       ; $5E17: $FF
    rst $38                                       ; $5E18: $FF
    jp $A5C3                                      ; $5E19: $C3 $C3 $A5


    and l                                         ; $5E1C: $A5
    sbc c                                         ; $5E1D: $99
    sbc c                                         ; $5E1E: $99
    sbc c                                         ; $5E1F: $99
    sbc c                                         ; $5E20: $99
    and l                                         ; $5E21: $A5
    and l                                         ; $5E22: $A5
    jp $FFC3                                      ; $5E23: $C3 $C3 $FF


    rst $38                                       ; $5E26: $FF
    rst $38                                       ; $5E27: $FF
    rst $38                                       ; $5E28: $FF
    jp $A5C3                                      ; $5E29: $C3 $C3 $A5


    and l                                         ; $5E2C: $A5
    sbc c                                         ; $5E2D: $99
    sbc c                                         ; $5E2E: $99
    sbc c                                         ; $5E2F: $99
    sbc c                                         ; $5E30: $99
    and l                                         ; $5E31: $A5
    and l                                         ; $5E32: $A5
    jp $FFC3                                      ; $5E33: $C3 $C3 $FF


    rst $38                                       ; $5E36: $FF
    rst $38                                       ; $5E37: $FF
    rst $38                                       ; $5E38: $FF
    jp $A5C3                                      ; $5E39: $C3 $C3 $A5


    and l                                         ; $5E3C: $A5
    sbc c                                         ; $5E3D: $99
    sbc c                                         ; $5E3E: $99
    sbc c                                         ; $5E3F: $99
    sbc c                                         ; $5E40: $99
    and l                                         ; $5E41: $A5
    and l                                         ; $5E42: $A5
    jp $FFC3                                      ; $5E43: $C3 $C3 $FF


    rst $38                                       ; $5E46: $FF
    rst $38                                       ; $5E47: $FF
    rst $38                                       ; $5E48: $FF
    jp $A5C3                                      ; $5E49: $C3 $C3 $A5


    and l                                         ; $5E4C: $A5
    sbc c                                         ; $5E4D: $99
    sbc c                                         ; $5E4E: $99
    sbc c                                         ; $5E4F: $99
    sbc c                                         ; $5E50: $99
    and l                                         ; $5E51: $A5
    and l                                         ; $5E52: $A5
    jp $FFC3                                      ; $5E53: $C3 $C3 $FF


    rst $38                                       ; $5E56: $FF
    rlca                                          ; $5E57: $07
    rst $38                                       ; $5E58: $FF
    rlca                                          ; $5E59: $07
    rst $38                                       ; $5E5A: $FF
    inc bc                                        ; $5E5B: $03
    rst $38                                       ; $5E5C: $FF
    nop                                           ; $5E5D: $00
    rst $38                                       ; $5E5E: $FF
    nop                                           ; $5E5F: $00
    rst $38                                       ; $5E60: $FF
    nop                                           ; $5E61: $00
    rst $38                                       ; $5E62: $FF
    nop                                           ; $5E63: $00
    rst $38                                       ; $5E64: $FF
    nop                                           ; $5E65: $00
    rst $38                                       ; $5E66: $FF
    rst $38                                       ; $5E67: $FF
    rst $38                                       ; $5E68: $FF
    rst $38                                       ; $5E69: $FF
    rst $38                                       ; $5E6A: $FF
    rst $38                                       ; $5E6B: $FF
    rst $38                                       ; $5E6C: $FF
    rst $38                                       ; $5E6D: $FF
    rst $38                                       ; $5E6E: $FF
    rrca                                          ; $5E6F: $0F
    rst $38                                       ; $5E70: $FF
    inc bc                                        ; $5E71: $03
    rst $38                                       ; $5E72: $FF
    ld bc, $00FF                                  ; $5E73: $01 $FF $00
    rst $38                                       ; $5E76: $FF
    rrca                                          ; $5E77: $0F
    rst $38                                       ; $5E78: $FF
    rlca                                          ; $5E79: $07
    rst $38                                       ; $5E7A: $FF
    rlca                                          ; $5E7B: $07
    rst $38                                       ; $5E7C: $FF
    inc bc                                        ; $5E7D: $03
    rst $38                                       ; $5E7E: $FF
    ld bc, $00FF                                  ; $5E7F: $01 $FF $00
    rst $38                                       ; $5E82: $FF
    nop                                           ; $5E83: $00
    rst $38                                       ; $5E84: $FF
    nop                                           ; $5E85: $00
    rst $38                                       ; $5E86: $FF
    rst $38                                       ; $5E87: $FF
    rst $38                                       ; $5E88: $FF
    rst $38                                       ; $5E89: $FF
    rst $38                                       ; $5E8A: $FF
    rst $38                                       ; $5E8B: $FF
    rst $38                                       ; $5E8C: $FF
    rst $38                                       ; $5E8D: $FF
    rst $38                                       ; $5E8E: $FF
    rst $38                                       ; $5E8F: $FF
    rst $38                                       ; $5E90: $FF
    rst $38                                       ; $5E91: $FF
    rst $38                                       ; $5E92: $FF
    ccf                                           ; $5E93: $3F
    rst $38                                       ; $5E94: $FF
    rlca                                          ; $5E95: $07
    rst $38                                       ; $5E96: $FF
    db $DB                                        ; $5E97: $DB
    rst $20                                       ; $5E98: $E7
    rst $30                                       ; $5E99: $F7
    adc $AF                                       ; $5E9A: $CE $AF
    call c, $99FE                                 ; $5E9C: $DC $FE $99
    db $FD                                        ; $5E9F: $FD
    sbc e                                         ; $5EA0: $9B
    rst $38                                       ; $5EA1: $FF
    sbc e                                         ; $5EA2: $9B
    rst $38                                       ; $5EA3: $FF
    call $EFF7                                    ; $5EA4: $CD $F7 $EF
    db $DB                                        ; $5EA7: $DB
    or h                                          ; $5EA8: $B4
    db $F4                                        ; $5EA9: $F4
    jr z, jr_074_5EF4                             ; $5EAA: $28 $48

    or b                                          ; $5EAC: $B0
    xor b                                         ; $5EAD: $A8
    ret nc                                        ; $5EAE: $D0

    ret z                                         ; $5EAF: $C8

    ldh a, [$F4]                                  ; $5EB0: $F0 $F4
    add sp, -$05                                  ; $5EB2: $E8 $FB
    db $F4                                        ; $5EB4: $F4
    ld a, a                                       ; $5EB5: $7F
    pop af                                        ; $5EB6: $F1
    db $E3                                        ; $5EB7: $E3
    db $FC                                        ; $5EB8: $FC
    push af                                       ; $5EB9: $F5
    ld a, [$FBF5]                                 ; $5EBA: $FA $F5 $FB
    or $F9                                        ; $5EBD: $F6 $F9
    ei                                            ; $5EBF: $FB
    db $FC                                        ; $5EC0: $FC
    db $FD                                        ; $5EC1: $FD
    cp $3F                                        ; $5EC2: $FE $3F
    cp $07                                        ; $5EC4: $FE $07
    cp $80                                        ; $5EC6: $FE $80
    add b                                         ; $5EC8: $80
    add b                                         ; $5EC9: $80
    add b                                         ; $5ECA: $80
    add b                                         ; $5ECB: $80
    add b                                         ; $5ECC: $80
    add b                                         ; $5ECD: $80
    add b                                         ; $5ECE: $80
    add b                                         ; $5ECF: $80
    add b                                         ; $5ED0: $80
    add b                                         ; $5ED1: $80
    add b                                         ; $5ED2: $80
    add b                                         ; $5ED3: $80
    add b                                         ; $5ED4: $80
    add b                                         ; $5ED5: $80
    add b                                         ; $5ED6: $80
    add b                                         ; $5ED7: $80
    add b                                         ; $5ED8: $80
    add b                                         ; $5ED9: $80
    add b                                         ; $5EDA: $80
    add b                                         ; $5EDB: $80
    add b                                         ; $5EDC: $80
    add b                                         ; $5EDD: $80
    add b                                         ; $5EDE: $80
    adc a                                         ; $5EDF: $8F
    add b                                         ; $5EE0: $80
    or b                                          ; $5EE1: $B0
    adc a                                         ; $5EE2: $8F
    ret nz                                        ; $5EE3: $C0

    cp a                                          ; $5EE4: $BF
    add b                                         ; $5EE5: $80
    rst $38                                       ; $5EE6: $FF
    inc de                                        ; $5EE7: $13
    ld [de], a                                    ; $5EE8: $12
    dec de                                        ; $5EE9: $1B
    dec de                                        ; $5EEA: $1B
    dec bc                                        ; $5EEB: $0B
    dec bc                                        ; $5EEC: $0B
    dec b                                         ; $5EED: $05
    dec b                                         ; $5EEE: $05
    nop                                           ; $5EEF: $00
    inc b                                         ; $5EF0: $04
    nop                                           ; $5EF1: $00
    inc bc                                        ; $5EF2: $03
    nop                                           ; $5EF3: $00

jr_074_5EF4:
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    rst $38                                       ; $5EF7: $FF
    rst $38                                       ; $5EF8: $FF
    jp $A5C3                                      ; $5EF9: $C3 $C3 $A5


    and l                                         ; $5EFC: $A5
    sbc c                                         ; $5EFD: $99
    sbc c                                         ; $5EFE: $99
    sbc c                                         ; $5EFF: $99
    sbc c                                         ; $5F00: $99
    and l                                         ; $5F01: $A5
    and l                                         ; $5F02: $A5
    jp $FFC3                                      ; $5F03: $C3 $C3 $FF


    rst $38                                       ; $5F06: $FF
    rst $38                                       ; $5F07: $FF
    rst $38                                       ; $5F08: $FF
    jp $A5C3                                      ; $5F09: $C3 $C3 $A5


    and l                                         ; $5F0C: $A5
    sbc c                                         ; $5F0D: $99
    sbc c                                         ; $5F0E: $99
    sbc c                                         ; $5F0F: $99
    sbc c                                         ; $5F10: $99
    and l                                         ; $5F11: $A5
    and l                                         ; $5F12: $A5
    jp $FFC3                                      ; $5F13: $C3 $C3 $FF


    rst $38                                       ; $5F16: $FF
    rst $38                                       ; $5F17: $FF
    rst $38                                       ; $5F18: $FF
    jp $A5C3                                      ; $5F19: $C3 $C3 $A5


    and l                                         ; $5F1C: $A5
    sbc c                                         ; $5F1D: $99
    sbc c                                         ; $5F1E: $99
    sbc c                                         ; $5F1F: $99
    sbc c                                         ; $5F20: $99
    and l                                         ; $5F21: $A5
    and l                                         ; $5F22: $A5
    jp $FFC3                                      ; $5F23: $C3 $C3 $FF


    rst $38                                       ; $5F26: $FF
    rst $38                                       ; $5F27: $FF
    rst $38                                       ; $5F28: $FF
    jp $A5C3                                      ; $5F29: $C3 $C3 $A5


    and l                                         ; $5F2C: $A5
    sbc c                                         ; $5F2D: $99
    sbc c                                         ; $5F2E: $99
    sbc c                                         ; $5F2F: $99
    sbc c                                         ; $5F30: $99

jr_074_5F31:
    and l                                         ; $5F31: $A5
    and l                                         ; $5F32: $A5
    jp $FFC3                                      ; $5F33: $C3 $C3 $FF


    rst $38                                       ; $5F36: $FF
    rst $38                                       ; $5F37: $FF
    rst $38                                       ; $5F38: $FF
    jp $A5C3                                      ; $5F39: $C3 $C3 $A5


    and l                                         ; $5F3C: $A5
    sbc c                                         ; $5F3D: $99
    sbc c                                         ; $5F3E: $99
    sbc c                                         ; $5F3F: $99
    sbc c                                         ; $5F40: $99
    and l                                         ; $5F41: $A5
    and l                                         ; $5F42: $A5
    jp $FFC3                                      ; $5F43: $C3 $C3 $FF


    rst $38                                       ; $5F46: $FF
    rst $38                                       ; $5F47: $FF
    rst $38                                       ; $5F48: $FF
    jp $A5C3                                      ; $5F49: $C3 $C3 $A5


    and l                                         ; $5F4C: $A5
    sbc c                                         ; $5F4D: $99
    sbc c                                         ; $5F4E: $99
    sbc c                                         ; $5F4F: $99
    sbc c                                         ; $5F50: $99
    and l                                         ; $5F51: $A5
    and l                                         ; $5F52: $A5
    jp $FFC3                                      ; $5F53: $C3 $C3 $FF


    rst $38                                       ; $5F56: $FF
    ldh [$E0], a                                  ; $5F57: $E0 $E0
    rra                                           ; $5F59: $1F
    rra                                           ; $5F5A: $1F
    ldh a, [$F0]                                  ; $5F5B: $F0 $F0
    inc c                                         ; $5F5D: $0C
    inc c                                         ; $5F5E: $0C
    di                                            ; $5F5F: $F3
    di                                            ; $5F60: $F3
    jr nz, jr_074_5F83                            ; $5F61: $20 $20

    ld hl, $FE21                                  ; $5F63: $21 $21 $FE
    cp $38                                        ; $5F66: $FE $38
    jr c, jr_074_5F31                             ; $5F68: $38 $C7

    rst $00                                       ; $5F6A: $C7
    inc h                                         ; $5F6B: $24
    inc h                                         ; $5F6C: $24
    jr c, jr_074_5FA7                             ; $5F6D: $38 $38

    rst $00                                       ; $5F6F: $C7
    rst $00                                       ; $5F70: $C7
    add h                                         ; $5F71: $84
    add h                                         ; $5F72: $84
    inc c                                         ; $5F73: $0C
    inc c                                         ; $5F74: $0C
    rst $38                                       ; $5F75: $FF
    rst $38                                       ; $5F76: $FF
    rst $38                                       ; $5F77: $FF
    rra                                           ; $5F78: $1F
    rst $38                                       ; $5F79: $FF
    ldh [rIE], a                                  ; $5F7A: $E0 $FF
    rrca                                          ; $5F7C: $0F
    rst $38                                       ; $5F7D: $FF
    di                                            ; $5F7E: $F3
    rst $38                                       ; $5F7F: $FF
    inc c                                         ; $5F80: $0C
    rst $38                                       ; $5F81: $FF
    rst $18                                       ; $5F82: $DF

jr_074_5F83:
    rst $38                                       ; $5F83: $FF
    sbc $FF                                       ; $5F84: $DE $FF
    ld bc, $C7FF                                  ; $5F86: $01 $FF $C7
    rst $38                                       ; $5F89: $FF
    jr c, @+$01                                   ; $5F8A: $38 $FF

    db $DB                                        ; $5F8C: $DB
    rst $38                                       ; $5F8D: $FF
    rst $00                                       ; $5F8E: $C7
    rst $38                                       ; $5F8F: $FF
    jr c, @+$01                                   ; $5F90: $38 $FF

    ld a, e                                       ; $5F92: $7B
    rst $38                                       ; $5F93: $FF
    di                                            ; $5F94: $F3
    rst $38                                       ; $5F95: $FF
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    ld bc, $0C01                                  ; $5F99: $01 $01 $0C
    inc c                                         ; $5F9C: $0C
    ld e, $1E                                     ; $5F9D: $1E $1E
    ccf                                           ; $5F9F: $3F
    ld a, $5F                                     ; $5FA0: $3E $5F
    ld e, h                                       ; $5FA2: $5C
    rst $28                                       ; $5FA3: $EF
    db $EB                                        ; $5FA4: $EB
    ld e, a                                       ; $5FA5: $5F
    ld d, a                                       ; $5FA6: $57

jr_074_5FA7:
    pop bc                                        ; $5FA7: $C1
    pop bc                                        ; $5FA8: $C1
    sbc e                                         ; $5FA9: $9B
    sbc c                                         ; $5FAA: $99
    ld a, a                                       ; $5FAB: $7F
    ld b, b                                       ; $5FAC: $40
    rst $38                                       ; $5FAD: $FF
    ld a, [hl]                                    ; $5FAE: $7E
    rst $38                                       ; $5FAF: $FF
    nop                                           ; $5FB0: $00
    rst $38                                       ; $5FB1: $FF
    cp a                                          ; $5FB2: $BF
    rst $38                                       ; $5FB3: $FF
    call c, $D3FF                                 ; $5FB4: $DC $FF $D3
    nop                                           ; $5FB7: $00
    rst $38                                       ; $5FB8: $FF
    nop                                           ; $5FB9: $00
    cp $00                                        ; $5FBA: $FE $00
    di                                            ; $5FBC: $F3
    nop                                           ; $5FBD: $00
    pop hl                                        ; $5FBE: $E1
    ld bc, $03C1                                  ; $5FBF: $01 $C1 $03
    and e                                         ; $5FC2: $A3
    inc b                                         ; $5FC3: $04
    inc d                                         ; $5FC4: $14
    ld [$00A8], sp                                ; $5FC5: $08 $A8 $00
    ld a, $02                                     ; $5FC8: $3E $02
    ld h, [hl]                                    ; $5FCA: $66
    ccf                                           ; $5FCB: $3F
    cp a                                          ; $5FCC: $BF
    add c                                         ; $5FCD: $81
    add c                                         ; $5FCE: $81
    rst $38                                       ; $5FCF: $FF
    rst $38                                       ; $5FD0: $FF
    ld b, b                                       ; $5FD1: $40
    ld b, b                                       ; $5FD2: $40
    inc hl                                        ; $5FD3: $23
    inc hl                                        ; $5FD4: $23
    inc l                                         ; $5FD5: $2C
    inc l                                         ; $5FD6: $2C
    ld [bc], a                                    ; $5FD7: $02
    cp $02                                        ; $5FD8: $FE $02
    cp $01                                        ; $5FDA: $FE $01
    rst $38                                       ; $5FDC: $FF
    nop                                           ; $5FDD: $00
    rst $38                                       ; $5FDE: $FF
    ld bc, $02FF                                  ; $5FDF: $01 $FF $02
    cp $02                                        ; $5FE2: $FE $02
    cp $01                                        ; $5FE4: $FE $01
    rst $38                                       ; $5FE6: $FF
    inc bc                                        ; $5FE7: $03
    ld bc, $0103                                  ; $5FE8: $01 $03 $01
    ld bc, $0000                                  ; $5FEB: $01 $00 $00
    nop                                           ; $5FEE: $00
    ld bc, $0300                                  ; $5FEF: $01 $00 $03
    ld bc, $0103                                  ; $5FF2: $01 $03 $01
    ld bc, $0000                                  ; $5FF5: $01 $00 $00
    nop                                           ; $5FF8: $00
    nop                                           ; $5FF9: $00
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    ld b, b                                       ; $6001: $40
    nop                                           ; $6002: $00
    db $E4                                        ; $6003: $E4
    ld b, b                                       ; $6004: $40
    xor $E4                                       ; $6005: $EE $E4
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    nop                                           ; $600C: $00
    nop                                           ; $600D: $00
    nop                                           ; $600E: $00
    nop                                           ; $600F: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    ld h, e                                       ; $6013: $63
    nop                                           ; $6014: $00
    rst $30                                       ; $6015: $F7
    ld h, e                                       ; $6016: $63
    rst $38                                       ; $6017: $FF
    rra                                           ; $6018: $1F
    rst $38                                       ; $6019: $FF
    ldh [$FB], a                                  ; $601A: $E0 $FB
    adc e                                         ; $601C: $8B
    ld a, a                                       ; $601D: $7F
    ld a, a                                       ; $601E: $7F
    di                                            ; $601F: $F3
    jp nc, $2121                                  ; $6020: $D2 $21 $21

    ld hl, $FE21                                  ; $6023: $21 $21 $FE
    cp $07                                        ; $6026: $FE $07
    rst $38                                       ; $6028: $FF
    ld [$0FF8], sp                                ; $6029: $08 $F8 $0F
    rst $28                                       ; $602C: $EF
    db $10                                        ; $602D: $10
    ldh a, [rIF]                                  ; $602E: $F0 $0F
    rst $18                                       ; $6030: $DF
    inc b                                         ; $6031: $04
    db $FC                                        ; $6032: $FC
    ld [bc], a                                    ; $6033: $02
    sbc d                                         ; $6034: $9A
    rrca                                          ; $6035: $0F
    rrca                                          ; $6036: $0F
    ldh [rNR41], a                                ; $6037: $E0 $20
    rst $38                                       ; $6039: $FF
    rst $28                                       ; $603A: $EF
    ld hl, sp+$08                                 ; $603B: $F8 $08
    db $FC                                        ; $603D: $FC
    db $FC                                        ; $603E: $FC
    di                                            ; $603F: $F3
    inc de                                        ; $6040: $13
    ldh [$E0], a                                  ; $6041: $E0 $E0
    pop af                                        ; $6043: $F1
    pop de                                        ; $6044: $D1
    cp $02                                        ; $6045: $FE $02
    rlca                                          ; $6047: $07
    nop                                           ; $6048: $00
    rrca                                          ; $6049: $0F
    rlca                                          ; $604A: $07
    rra                                           ; $604B: $1F
    db $10                                        ; $604C: $10
    rra                                           ; $604D: $1F
    rrca                                          ; $604E: $0F
    cpl                                           ; $604F: $2F
    jr nz, @+$09                                  ; $6050: $20 $07

    inc bc                                        ; $6052: $03
    ld h, a                                       ; $6053: $67
    ld h, l                                       ; $6054: $65
    rst $38                                       ; $6055: $FF
    ldh a, [$08]                                  ; $6056: $F0 $08
    ld [$FCFC], sp                                ; $6058: $08 $FC $FC
    inc bc                                        ; $605B: $03
    inc bc                                        ; $605C: $03
    rst $38                                       ; $605D: $FF
    rst $38                                       ; $605E: $FF
    pop bc                                        ; $605F: $C1
    pop bc                                        ; $6060: $C1
    jr nc, jr_074_6093                            ; $6061: $30 $30

    rrca                                          ; $6063: $0F
    rrca                                          ; $6064: $0F
    db $10                                        ; $6065: $10
    db $10                                        ; $6066: $10
    inc l                                         ; $6067: $2C
    inc l                                         ; $6068: $2C
    inc hl                                        ; $6069: $23
    inc hl                                        ; $606A: $23
    ld b, b                                       ; $606B: $40
    ld b, b                                       ; $606C: $40
    rst $38                                       ; $606D: $FF
    rst $38                                       ; $606E: $FF
    add c                                         ; $606F: $81
    add c                                         ; $6070: $81
    rst $38                                       ; $6071: $FF
    rst $38                                       ; $6072: $FF
    call nz, $84C4                                ; $6073: $C4 $C4 $84

jr_074_6076:
    add h                                         ; $6076: $84
    rst $38                                       ; $6077: $FF
    rst $30                                       ; $6078: $F7
    rst $38                                       ; $6079: $FF
    inc bc                                        ; $607A: $03
    rst $38                                       ; $607B: $FF
    db $FC                                        ; $607C: $FC
    rst $38                                       ; $607D: $FF
    nop                                           ; $607E: $00
    rst $38                                       ; $607F: $FF
    ld a, $FF                                     ; $6080: $3E $FF
    rst $08                                       ; $6082: $CF
    rst $38                                       ; $6083: $FF
    ldh a, [rIE]                                  ; $6084: $F0 $FF
    rst $28                                       ; $6086: $EF
    rst $38                                       ; $6087: $FF
    db $D3                                        ; $6088: $D3
    rst $38                                       ; $6089: $FF
    call c, $BFFF                                 ; $608A: $DC $FF $BF
    rst $38                                       ; $608D: $FF
    nop                                           ; $608E: $00
    rst $38                                       ; $608F: $FF
    ld a, [hl]                                    ; $6090: $7E
    rst $38                                       ; $6091: $FF
    nop                                           ; $6092: $00

jr_074_6093:
    rst $38                                       ; $6093: $FF
    dec sp                                        ; $6094: $3B
    rst $38                                       ; $6095: $FF
    ld a, e                                       ; $6096: $7B
    ccf                                           ; $6097: $3F
    ld hl, $5E7F                                  ; $6098: $21 $7F $5E
    ld a, a                                       ; $609B: $7F
    ld e, a                                       ; $609C: $5F
    ccf                                           ; $609D: $3F
    inc l                                         ; $609E: $2C
    rrca                                          ; $609F: $0F
    inc bc                                        ; $60A0: $03
    ccf                                           ; $60A1: $3F
    rrca                                          ; $60A2: $0F
    ld a, a                                       ; $60A3: $7F
    ld h, b                                       ; $60A4: $60
    rst $38                                       ; $60A5: $FF
    rra                                           ; $60A6: $1F
    rst $38                                       ; $60A7: $FF
    rst $00                                       ; $60A8: $C7
    rst $38                                       ; $60A9: $FF

jr_074_60AA:
    jr c, jr_074_60AA                             ; $60AA: $38 $FE

    jp c, $D6FE                                   ; $60AC: $DA $FE $D6

    rst $20                                       ; $60AF: $E7
    jr nz, jr_074_6076                            ; $60B0: $20 $C4

    ld b, h                                       ; $60B2: $44

jr_074_60B3:
    call z, $FFCC                                 ; $60B3: $CC $CC $FF
    ld a, a                                       ; $60B6: $7F
    ld e, $DE                                     ; $60B7: $1E $DE
    ld hl, $20A1                                  ; $60B9: $21 $A1 $20
    and b                                         ; $60BC: $A0
    inc de                                        ; $60BD: $13
    db $D3                                        ; $60BE: $D3
    inc c                                         ; $60BF: $0C
    db $FC                                        ; $60C0: $FC
    jr nc, jr_074_60B3                            ; $60C1: $30 $F0

    rra                                           ; $60C3: $1F
    sbc a                                         ; $60C4: $9F
    ldh [$E0], a                                  ; $60C5: $E0 $E0
    rst $38                                       ; $60C7: $FF
    rst $30                                       ; $60C8: $F7
    cp $02                                        ; $60C9: $FE $02
    ei                                            ; $60CB: $FB
    ei                                            ; $60CC: $FB
    rst $38                                       ; $60CD: $FF
    rra                                           ; $60CE: $1F
    pop af                                        ; $60CF: $F1
    ld sp, $C8F8                                  ; $60D0: $31 $F8 $C8
    rst $38                                       ; $60D3: $FF
    rst $30                                       ; $60D4: $F7
    ldh a, [$E0]                                  ; $60D5: $F0 $E0
    nop                                           ; $60D7: $00
    rst $38                                       ; $60D8: $FF
    ld bc, $02FF                                  ; $60D9: $01 $FF $02
    cp $01                                        ; $60DC: $FE $01
    rst $38                                       ; $60DE: $FF
    nop                                           ; $60DF: $00
    rst $38                                       ; $60E0: $FF
    ld [bc], a                                    ; $60E1: $02
    cp $04                                        ; $60E2: $FE $04
    db $FC                                        ; $60E4: $FC
    ld [bc], a                                    ; $60E5: $02
    cp $00                                        ; $60E6: $FE $00
    nop                                           ; $60E8: $00
    ld bc, $0300                                  ; $60E9: $01 $00 $03
    ld bc, $0001                                  ; $60EC: $01 $01 $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    inc bc                                        ; $60F1: $03
    ld bc, $0307                                  ; $60F2: $01 $07 $03
    inc bc                                        ; $60F5: $03
    ld bc, $FF00                                  ; $60F6: $01 $00 $FF
    nop                                           ; $60F9: $00
    rst $38                                       ; $60FA: $FF
    nop                                           ; $60FB: $00
    rst $38                                       ; $60FC: $FF
    nop                                           ; $60FD: $00
    rst $38                                       ; $60FE: $FF
    nop                                           ; $60FF: $00
    rst $38                                       ; $6100: $FF
    ld b, b                                       ; $6101: $40
    rst $38                                       ; $6102: $FF
    and h                                         ; $6103: $A4
    cp a                                          ; $6104: $BF
    ld a, [bc]                                    ; $6105: $0A
    dec de                                        ; $6106: $1B
    nop                                           ; $6107: $00
    rst $38                                       ; $6108: $FF
    nop                                           ; $6109: $00
    rst $38                                       ; $610A: $FF
    nop                                           ; $610B: $00
    rst $38                                       ; $610C: $FF
    nop                                           ; $610D: $00
    rst $38                                       ; $610E: $FF
    nop                                           ; $610F: $00
    rst $38                                       ; $6110: $FF
    nop                                           ; $6111: $00
    rst $38                                       ; $6112: $FF
    ld h, e                                       ; $6113: $63
    rst $38                                       ; $6114: $FF
    sub h                                         ; $6115: $94
    sbc h                                         ; $6116: $9C
    nop                                           ; $6117: $00
    rst $38                                       ; $6118: $FF
    nop                                           ; $6119: $00
    rst $38                                       ; $611A: $FF
    nop                                           ; $611B: $00
    pop af                                        ; $611C: $F1
    nop                                           ; $611D: $00
    ldh [rSB], a                                  ; $611E: $E0 $01
    di                                            ; $6120: $F3
    inc bc                                        ; $6121: $03
    rst $38                                       ; $6122: $FF
    ccf                                           ; $6123: $3F
    rst $38                                       ; $6124: $FF
    ld h, c                                       ; $6125: $61
    pop hl                                        ; $6126: $E1
    db $10                                        ; $6127: $10
    sub b                                         ; $6128: $90
    rra                                           ; $6129: $1F
    rst $38                                       ; $612A: $FF
    nop                                           ; $612B: $00
    jr nc, @+$01                                  ; $612C: $30 $FF

    rst $38                                       ; $612E: $FF
    add e                                         ; $612F: $83
    add e                                         ; $6130: $83
    inc c                                         ; $6131: $0C
    inc c                                         ; $6132: $0C
    ldh a, [$F0]                                  ; $6133: $F0 $F0
    ld [$0008], sp                                ; $6135: $08 $08 $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    ld c, $0E                                     ; $613B: $0E $0E
    rra                                           ; $613D: $1F
    rra                                           ; $613E: $1F
    dec c                                         ; $613F: $0D
    inc c                                         ; $6140: $0C
    inc bc                                        ; $6141: $03
    nop                                           ; $6142: $00
    ccf                                           ; $6143: $3F
    nop                                           ; $6144: $00
    ld a, a                                       ; $6145: $7F
    ld e, $7F                                     ; $6146: $1E $7F
    ld l, a                                       ; $6148: $6F
    rra                                           ; $6149: $1F
    nop                                           ; $614A: $00
    rst $08                                       ; $614B: $CF
    rst $08                                       ; $614C: $CF
    rst $38                                       ; $614D: $FF
    nop                                           ; $614E: $00
    rst $38                                       ; $614F: $FF
    ld a, h                                       ; $6150: $7C
    rst $38                                       ; $6151: $FF
    di                                            ; $6152: $F3
    rst $38                                       ; $6153: $FF
    rrca                                          ; $6154: $0F
    rst $38                                       ; $6155: $FF
    rst $30                                       ; $6156: $F7
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00

jr_074_615A:
    nop                                           ; $615A: $00
    ld bc, $080E                                  ; $615B: $01 $0E $08
    dec d                                         ; $615E: $15
    nop                                           ; $615F: $00
    ld [$1408], sp                                ; $6160: $08 $08 $14
    dec e                                         ; $6163: $1D
    jr nz, @+$2B                                  ; $6164: $20 $29

    ld d, [hl]                                    ; $6166: $56
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    ld h, c                                       ; $6169: $61
    adc d                                         ; $616A: $8A
    rst $08                                       ; $616B: $CF
    jr nz, @-$3F                                  ; $616C: $20 $BF

    ld b, b                                       ; $616E: $40
    halt                                          ; $616F: $76
    add hl, bc                                    ; $6170: $09
    jp $993C                                      ; $6171: $C3 $3C $99


    ld h, [hl]                                    ; $6174: $66
    or e                                          ; $6175: $B3

jr_074_6176:
    ld c, h                                       ; $6176: $4C
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    ret nc                                        ; $6179: $D0

    jr z, jr_074_6176                             ; $617A: $28 $FA

    dec b                                         ; $617C: $05
    ld e, a                                       ; $617D: $5F
    and b                                         ; $617E: $A0
    dec [hl]                                      ; $617F: $35
    ld c, d                                       ; $6180: $4A
    ld de, $B0AE                                  ; $6181: $11 $AE $B0
    ld c, e                                       ; $6184: $4B
    ei                                            ; $6185: $FB
    inc b                                         ; $6186: $04
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    dec c                                         ; $6189: $0D
    ld [de], a                                    ; $618A: $12
    cp a                                          ; $618B: $BF
    ld b, b                                       ; $618C: $40
    ld a, [$8C05]                                 ; $618D: $FA $05 $8C
    ld b, e                                       ; $6190: $43
    inc b                                         ; $6191: $04
    cp d                                          ; $6192: $BA
    inc b                                         ; $6193: $04
    jp hl                                         ; $6194: $E9


    adc h                                         ; $6195: $8C
    ld [hl], e                                    ; $6196: $73
    scf                                           ; $6197: $37
    ld c, b                                       ; $6198: $48
    jr c, jr_074_61A2                             ; $6199: $38 $07

    jr nc, jr_074_61EA                            ; $619B: $30 $4D

    ld l, b                                       ; $619D: $68
    inc bc                                        ; $619E: $03
    ld c, e                                       ; $619F: $4B
    inc b                                         ; $61A0: $04
    ld b, [hl]                                    ; $61A1: $46

jr_074_61A2:
    add hl, de                                    ; $61A2: $19
    ld c, h                                       ; $61A3: $4C
    ld [hl-], a                                   ; $61A4: $32
    ld l, h                                       ; $61A5: $6C
    inc de                                        ; $61A6: $13
    ld [$8FB4], sp                                ; $61A7: $08 $B4 $8F
    ld d, b                                       ; $61AA: $50
    ld e, b                                       ; $61AB: $58
    and h                                         ; $61AC: $A4
    ldh a, [$08]                                  ; $61AD: $F0 $08
    ret nc                                        ; $61AF: $D0

    dec hl                                        ; $61B0: $2B
    jr c, jr_074_61FA                             ; $61B1: $38 $47

    ld e, $A1                                     ; $61B3: $1E $A1
    ld sp, $604A                                  ; $61B5: $31 $4A $60
    sbc a                                         ; $61B8: $9F
    ldh a, [rIF]                                  ; $61B9: $F0 $0F
    ld a, b                                       ; $61BB: $78
    add a                                         ; $61BC: $87
    daa                                           ; $61BD: $27
    ld e, b                                       ; $61BE: $58
    rra                                           ; $61BF: $1F
    and b                                         ; $61C0: $A0
    db $10                                        ; $61C1: $10
    ld l, d                                       ; $61C2: $6A
    jr nz, jr_074_61A2                            ; $61C3: $20 $DD

    ldh [$1F], a                                  ; $61C5: $E0 $1F
    rrca                                          ; $61C7: $0F
    ld h, b                                       ; $61C8: $60
    ld [$10D7], sp                                ; $61C9: $08 $D7 $10
    db $EC                                        ; $61CC: $EC
    ldh a, [$09]                                  ; $61CD: $F0 $09
    jr nc, jr_074_61DC                            ; $61CF: $30 $0B

    jr jr_074_615A                                ; $61D1: $18 $87

    inc c                                         ; $61D3: $0C
    ld d, e                                       ; $61D4: $53
    rrca                                          ; $61D5: $0F
    ldh [rP1], a                                  ; $61D6: $E0 $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00

jr_074_61DC:
    nop                                           ; $61DC: $00
    stop                                          ; $61DD: $10 $00
    ld a, [bc]                                    ; $61DF: $0A
    nop                                           ; $61E0: $00
    dec h                                         ; $61E1: $25

jr_074_61E2:
    ld [bc], a                                    ; $61E2: $02
    ld [hl], d                                    ; $61E3: $72
    inc c                                         ; $61E4: $0C
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    ld [$9000], sp                                ; $61E7: $08 $00 $90

jr_074_61EA:
    nop                                           ; $61EA: $00
    ret nc                                        ; $61EB: $D0

    nop                                           ; $61EC: $00
    ld h, b                                       ; $61ED: $60
    nop                                           ; $61EE: $00
    add d                                         ; $61EF: $82
    nop                                           ; $61F0: $00
    ld h, $00                                     ; $61F1: $26 $00
    ld l, h                                       ; $61F3: $6C
    nop                                           ; $61F4: $00
    jr nc, jr_074_61F7                            ; $61F5: $30 $00

jr_074_61F7:
    nop                                           ; $61F7: $00
    rst $38                                       ; $61F8: $FF
    nop                                           ; $61F9: $00

jr_074_61FA:
    rst $38                                       ; $61FA: $FF

jr_074_61FB:
    nop                                           ; $61FB: $00
    rst $38                                       ; $61FC: $FF
    nop                                           ; $61FD: $00
    rst $38                                       ; $61FE: $FF
    nop                                           ; $61FF: $00
    rst $38                                       ; $6200: $FF
    nop                                           ; $6201: $00
    rst $38                                       ; $6202: $FF
    nop                                           ; $6203: $00
    rst $38                                       ; $6204: $FF
    ld de, $00EE                                  ; $6205: $11 $EE $00
    rst $38                                       ; $6208: $FF
    nop                                           ; $6209: $00
    rst $38                                       ; $620A: $FF
    nop                                           ; $620B: $00
    rst $38                                       ; $620C: $FF
    nop                                           ; $620D: $00
    rst $38                                       ; $620E: $FF
    db $10                                        ; $620F: $10
    rst $28                                       ; $6210: $EF
    jr nc, jr_074_61E2                            ; $6211: $30 $CF

    ldh a, [rIF]                                  ; $6213: $F0 $0F
    ldh a, [rIF]                                  ; $6215: $F0 $0F
    inc b                                         ; $6217: $04
    ei                                            ; $6218: $FB
    ld b, $F9                                     ; $6219: $06 $F9
    rrca                                          ; $621B: $0F
    ldh a, [rIF]                                  ; $621C: $F0 $0F
    ldh a, [$0D]                                  ; $621E: $F0 $0D
    ld a, [c]                                     ; $6220: $F2
    inc h                                         ; $6221: $24
    db $DB                                        ; $6222: $DB
    ld [hl-], a                                   ; $6223: $32
    call $C33C                                    ; $6224: $CD $3C $C3
    nop                                           ; $6227: $00
    rst $38                                       ; $6228: $FF
    ld [$18F7], sp                                ; $6229: $08 $F7 $18
    rst $20                                       ; $622C: $E7
    jr c, @-$37                                   ; $622D: $38 $C7

    ld a, h                                       ; $622F: $7C
    add e                                         ; $6230: $83
    db $EC                                        ; $6231: $EC
    inc de                                        ; $6232: $13
    call c, $DC33                                 ; $6233: $DC $33 $DC
    inc sp                                        ; $6236: $33
    rst $38                                       ; $6237: $FF
    nop                                           ; $6238: $00
    rst $18                                       ; $6239: $DF
    jr nz, jr_074_61FB                            ; $623A: $20 $BF

    ld d, b                                       ; $623C: $50
    sbc e                                         ; $623D: $9B
    ld h, h                                       ; $623E: $64
    rst $08                                       ; $623F: $CF
    jr nc, @+$01                                  ; $6240: $30 $FF

    nop                                           ; $6242: $00
    rst $38                                       ; $6243: $FF
    ld b, b                                       ; $6244: $40
    rst $28                                       ; $6245: $EF
    db $10                                        ; $6246: $10
    rst $38                                       ; $6247: $FF
    nop                                           ; $6248: $00
    rst $38                                       ; $6249: $FF
    nop                                           ; $624A: $00
    rst $38                                       ; $624B: $FF
    inc b                                         ; $624C: $04
    rst $38                                       ; $624D: $FF
    jr nz, @+$01                                  ; $624E: $20 $FF

    nop                                           ; $6250: $00
    rst $38                                       ; $6251: $FF
    ld [bc], a                                    ; $6252: $02
    rst $38                                       ; $6253: $FF
    nop                                           ; $6254: $00
    rst $38                                       ; $6255: $FF

jr_074_6256:
    nop                                           ; $6256: $00
    inc de                                        ; $6257: $13
    inc h                                         ; $6258: $24
    rlca                                          ; $6259: $07
    jr jr_074_626A                                ; $625A: $18 $0E

    ld de, $221D                                  ; $625C: $11 $1D $22
    inc sp                                        ; $625F: $33
    ld c, h                                       ; $6260: $4C
    ld l, c                                       ; $6261: $69
    ld d, $61                                     ; $6262: $16 $61
    ld e, $62                                     ; $6264: $1E $62
    add hl, de                                    ; $6266: $19
    rrca                                          ; $6267: $0F
    ldh a, [$7C]                                  ; $6268: $F0 $7C

jr_074_626A:
    add e                                         ; $626A: $83
    ld l, $51                                     ; $626B: $2E $51
    ld h, a                                       ; $626D: $67
    sbc b                                         ; $626E: $98
    ret c                                         ; $626F: $D8

    inc hl                                        ; $6270: $23
    adc h                                         ; $6271: $8C
    ld d, b                                       ; $6272: $50
    rlca                                          ; $6273: $07
    cp b                                          ; $6274: $B8
    inc c                                         ; $6275: $0C
    inc de                                        ; $6276: $13
    rrca                                          ; $6277: $0F
    ldh a, [rSC]                                  ; $6278: $F0 $02
    dec a                                         ; $627A: $3D
    ld b, $F9                                     ; $627B: $06 $F9
    rrca                                          ; $627D: $0F
    ld [hl], b                                    ; $627E: $70
    ld [hl], c                                    ; $627F: $71
    adc [hl]                                      ; $6280: $8E
    jr nz, jr_074_6256                            ; $6281: $20 $D3

    ret nz                                        ; $6283: $C0

    cpl                                           ; $6284: $2F
    ld b, b                                       ; $6285: $40
    ccf                                           ; $6286: $3F
    ld a, [hl]                                    ; $6287: $7E
    add c                                         ; $6288: $81
    rlca                                          ; $6289: $07
    ld hl, sp+$0B                                 ; $628A: $F8 $0B
    db $F4                                        ; $628C: $F4
    dec a                                         ; $628D: $3D
    jp nz, $3FC0                                  ; $628E: $C2 $C0 $3F

    scf                                           ; $6291: $37
    ret z                                         ; $6292: $C8

    inc e                                         ; $6293: $1C
    db $E3                                        ; $6294: $E3
    ld [$36F7], sp                                ; $6295: $08 $F7 $36

jr_074_6298:
    ld c, b                                       ; $6298: $48
    ld h, d                                       ; $6299: $62
    dec d                                         ; $629A: $15
    ld sp, $664A                                  ; $629B: $31 $4A $66
    add hl, de                                    ; $629E: $19
    inc [hl]                                      ; $629F: $34
    ld c, d                                       ; $62A0: $4A
    ld a, $01                                     ; $62A1: $3E $01
    ld sp, $204A                                  ; $62A3: $31 $4A $20
    rlca                                          ; $62A6: $07
    ld h, b                                       ; $62A7: $60

jr_074_62A8:
    sub a                                         ; $62A8: $97
    ldh [rNR33], a                                ; $62A9: $E0 $1D
    jr nc, @-$2F                                  ; $62AB: $30 $CF

    jr jr_074_62D6                                ; $62AD: $18 $27

    inc e                                         ; $62AF: $1C
    ld h, e                                       ; $62B0: $63
    rrca                                          ; $62B1: $0F
    or b                                          ; $62B2: $B0
    ld [$90F7], sp                                ; $62B3: $08 $F7 $90
    ld l, a                                       ; $62B6: $6F
    jr nc, jr_074_6306                            ; $62B7: $30 $4D

    inc e                                         ; $62B9: $1C
    ld [hl+], a                                   ; $62BA: $22
    inc de                                        ; $62BB: $13
    xor h                                         ; $62BC: $AC
    add hl, sp                                    ; $62BD: $39
    add $4F                                       ; $62BE: $C6 $4F
    and b                                         ; $62C0: $A0
    adc b                                         ; $62C1: $88
    ld d, l                                       ; $62C2: $55
    sub b                                         ; $62C3: $90
    ld l, [hl]                                    ; $62C4: $6E
    ld h, b                                       ; $62C5: $60
    sbc a                                         ; $62C6: $9F
    jr jr_074_62EC                                ; $62C7: $18 $23

    jr nz, jr_074_6298                            ; $62C9: $20 $CD

    ret nz                                        ; $62CB: $C0

    inc de                                        ; $62CC: $13
    ret nz                                        ; $62CD: $C0

    cpl                                           ; $62CE: $2F
    jr nz, jr_074_62A8                            ; $62CF: $20 $D7

    inc de                                        ; $62D1: $13
    inc l                                         ; $62D2: $2C
    inc e                                         ; $62D3: $1C
    add e                                         ; $62D4: $83
    add hl, de                                    ; $62D5: $19

jr_074_62D6:
    ld b, [hl]                                    ; $62D6: $46
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    ld b, b                                       ; $62D9: $40

jr_074_62DA:
    nop                                           ; $62DA: $00
    add h                                         ; $62DB: $84
    ld b, b                                       ; $62DC: $40
    sub b                                         ; $62DD: $90
    ld b, b                                       ; $62DE: $40
    ld h, b                                       ; $62DF: $60
    nop                                           ; $62E0: $00
    ld a, [bc]                                    ; $62E1: $0A
    nop                                           ; $62E2: $00
    call z, $2030                                 ; $62E3: $CC $30 $20
    nop                                           ; $62E6: $00
    ld bc, $03FF                                  ; $62E7: $01 $FF $03
    ld a, a                                       ; $62EA: $7F
    rlca                                          ; $62EB: $07

jr_074_62EC:
    ccf                                           ; $62EC: $3F
    rrca                                          ; $62ED: $0F
    rra                                           ; $62EE: $1F
    rrca                                          ; $62EF: $0F
    rlca                                          ; $62F0: $07
    rra                                           ; $62F1: $1F
    inc bc                                        ; $62F2: $03
    ccf                                           ; $62F3: $3F
    ld bc, $007F                                  ; $62F4: $01 $7F $00
    ld sp, $33CE                                  ; $62F7: $31 $CE $33
    call $857A                                    ; $62FA: $CD $7A $85
    ld a, c                                       ; $62FD: $79
    and [hl]                                      ; $62FE: $A6
    ld e, b                                       ; $62FF: $58
    or a                                          ; $6300: $B7
    jr z, jr_074_62DA                             ; $6301: $28 $D7

    nop                                           ; $6303: $00
    rst $38                                       ; $6304: $FF
    nop                                           ; $6305: $00

jr_074_6306:
    rst $38                                       ; $6306: $FF
    ldh [$9F], a                                  ; $6307: $E0 $9F
    ld h, b                                       ; $6309: $60
    sbc a                                         ; $630A: $9F
    ret z                                         ; $630B: $C8

    scf                                           ; $630C: $37
    sub h                                         ; $630D: $94
    ld l, e                                       ; $630E: $6B
    ld e, $E9                                     ; $630F: $1E $E9
    ld e, $E5                                     ; $6311: $1E $E5
    inc c                                         ; $6313: $0C
    di                                            ; $6314: $F3
    nop                                           ; $6315: $00
    rst $38                                       ; $6316: $FF
    ld a, $C1                                     ; $6317: $3E $C1
    dec sp                                        ; $6319: $3B
    call nz, $E61B                                ; $631A: $C4 $1B $E6
    dec e                                         ; $631D: $1D
    db $E3                                        ; $631E: $E3
    ld c, $F1                                     ; $631F: $0E $F1
    inc bc                                        ; $6321: $03
    db $FC                                        ; $6322: $FC
    nop                                           ; $6323: $00
    rst $38                                       ; $6324: $FF
    nop                                           ; $6325: $00
    rst $38                                       ; $6326: $FF
    cp b                                          ; $6327: $B8
    ld [hl], a                                    ; $6328: $77
    xor b                                         ; $6329: $A8
    ld [hl], a                                    ; $632A: $77
    ret nc                                        ; $632B: $D0

    ld l, a                                       ; $632C: $6F
    or b                                          ; $632D: $B0
    ld c, a                                       ; $632E: $4F
    ld h, b                                       ; $632F: $60
    sbc a                                         ; $6330: $9F
    nop                                           ; $6331: $00
    rst $38                                       ; $6332: $FF
    nop                                           ; $6333: $00
    rst $38                                       ; $6334: $FF
    nop                                           ; $6335: $00
    rst $38                                       ; $6336: $FF
    sbc a                                         ; $6337: $9F
    ld h, b                                       ; $6338: $60
    rst $38                                       ; $6339: $FF
    nop                                           ; $633A: $00
    ei                                            ; $633B: $FB
    inc b                                         ; $633C: $04
    rst $38                                       ; $633D: $FF
    nop                                           ; $633E: $00
    rst $28                                       ; $633F: $EF
    db $10                                        ; $6340: $10
    rst $18                                       ; $6341: $DF
    inc l                                         ; $6342: $2C
    rst $20                                       ; $6343: $E7
    jr @+$01                                      ; $6344: $18 $FF

    nop                                           ; $6346: $00
    rst $38                                       ; $6347: $FF
    jr nz, @+$01                                  ; $6348: $20 $FF

    nop                                           ; $634A: $00
    rst $38                                       ; $634B: $FF
    nop                                           ; $634C: $00
    rst $38                                       ; $634D: $FF
    add b                                         ; $634E: $80
    rst $28                                       ; $634F: $EF
    inc d                                         ; $6350: $14
    di                                            ; $6351: $F3
    inc c                                         ; $6352: $0C
    rst $38                                       ; $6353: $FF
    nop                                           ; $6354: $00
    rst $38                                       ; $6355: $FF
    nop                                           ; $6356: $00
    ld bc, $0302                                  ; $6357: $01 $02 $03
    inc b                                         ; $635A: $04
    rlca                                          ; $635B: $07
    ld [$413E], sp                                ; $635C: $08 $3E $41
    ld a, l                                       ; $635F: $7D
    inc bc                                        ; $6360: $03
    ld b, [hl]                                    ; $6361: $46
    cp c                                          ; $6362: $B9
    add c                                         ; $6363: $81
    ld d, [hl]                                    ; $6364: $56
    ld a, [rTAC]                                 ; $6365: $FA $07 $FF
    nop                                           ; $6368: $00
    ldh [rNR31], a                                ; $6369: $E0 $1B
    nop                                           ; $636B: $00
    rst $08                                       ; $636C: $CF
    inc bc                                        ; $636D: $03
    cp a                                          ; $636E: $BF
    ld c, $DE                                     ; $636F: $0E $DE
    call c, $39FD                                 ; $6371: $DC $FD $39
    ld a, [$6582]                                 ; $6374: $FA $82 $65
    add b                                         ; $6377: $80
    ld b, b                                       ; $6378: $40
    ret nz                                        ; $6379: $C0

    jr nz, jr_074_63DC                            ; $637A: $20 $60

    add b                                         ; $637C: $80
    and b                                         ; $637D: $A0
    ret nc                                        ; $637E: $D0

    ld [hl], b                                    ; $637F: $70
    add b                                         ; $6380: $80
    or b                                          ; $6381: $B0
    ld b, b                                       ; $6382: $40
    ld [hl], b                                    ; $6383: $70
    add b                                         ; $6384: $80
    ldh a, [$08]                                  ; $6385: $F0 $08
    rst $38                                       ; $6387: $FF
    nop                                           ; $6388: $00
    ld a, c                                       ; $6389: $79
    nop                                           ; $638A: $00
    inc sp                                        ; $638B: $33
    ld b, b                                       ; $638C: $40
    rlca                                          ; $638D: $07
    jr nz, jr_074_6397                            ; $638E: $20 $07

    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    rlca                                          ; $6392: $07
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00

jr_074_6397:
    or b                                          ; $6397: $B0
    ld c, a                                       ; $6398: $4F
    rst $38                                       ; $6399: $FF
    nop                                           ; $639A: $00
    cp a                                          ; $639B: $BF
    ld b, b                                       ; $639C: $40
    rst $30                                       ; $639D: $F7
    nop                                           ; $639E: $00
    ld a, [c]                                     ; $639F: $F2
    nop                                           ; $63A0: $00
    ld a, d                                       ; $63A1: $7A
    add b                                         ; $63A2: $80
    nop                                           ; $63A3: $00
    ld a, b                                       ; $63A4: $78
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    rlca                                          ; $63A7: $07
    jr c, jr_074_63E5                             ; $63A8: $38 $3B

    ld b, h                                       ; $63AA: $44
    ld b, a                                       ; $63AB: $47
    cp b                                          ; $63AC: $B8
    and c                                         ; $63AD: $A1
    ld l, [hl]                                    ; $63AE: $6E
    call c, $B73D                                 ; $63AF: $DC $3D $B7
    ld c, a                                       ; $63B2: $4F
    call $F333                                    ; $63B3: $CD $33 $F3
    inc c                                         ; $63B6: $0C
    ldh a, [$08]                                  ; $63B7: $F0 $08
    ld hl, sp+$04                                 ; $63B9: $F8 $04
    db $FC                                        ; $63BB: $FC
    ld [bc], a                                    ; $63BC: $02
    db $F4                                        ; $63BD: $F4
    ld a, [bc]                                    ; $63BE: $0A
    inc c                                         ; $63BF: $0C
    ld a, [$F9F6]                                 ; $63C0: $FA $F6 $F9
    adc $F1                                       ; $63C3: $CE $F1

jr_074_63C5:
    rra                                           ; $63C5: $1F
    and b                                         ; $63C6: $A0
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    ld [hl], b                                    ; $63CA: $70
    jr nz, jr_074_63C5                            ; $63CB: $20 $F8

    db $10                                        ; $63CD: $10
    ld a, c                                       ; $63CE: $79
    ld bc, $0232                                  ; $63CF: $01 $32 $02
    ld bc, $1003                                  ; $63D2: $01 $03 $10
    ld bc, $0002                                  ; $63D5: $01 $02 $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00

jr_074_63DC:
    nop                                           ; $63DC: $00
    ret nz                                        ; $63DD: $C0

    jr nz, jr_074_6400                            ; $63DE: $20 $20

    ret nz                                        ; $63E0: $C0

    ld h, b                                       ; $63E1: $60
    sub b                                         ; $63E2: $90
    ldh a, [rP1]                                  ; $63E3: $F0 $00

jr_074_63E5:
    ldh a, [rP1]                                  ; $63E5: $F0 $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    inc c                                         ; $63EA: $0C
    inc b                                         ; $63EB: $04
    ld e, $10                                     ; $63EC: $1E $10
    ld a, $28                                     ; $63EE: $3E $28
    ld a, [hl]                                    ; $63F0: $7E
    nop                                           ; $63F1: $00
    ld a, h                                       ; $63F2: $7C
    nop                                           ; $63F3: $00
    jr c, jr_074_63F6                             ; $63F4: $38 $00

jr_074_63F6:
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    ld b, $0F                                     ; $63F9: $06 $0F
    nop                                           ; $63FB: $00
    ld b, $30                                     ; $63FC: $06 $30
    ld a, b                                       ; $63FE: $78
    nop                                           ; $63FF: $00

jr_074_6400:
    jr nc, jr_074_6402                            ; $6400: $30 $00

jr_074_6402:
    nop                                           ; $6402: $00
    inc c                                         ; $6403: $0C
    ld e, $00                                     ; $6404: $1E $00
    inc c                                         ; $6406: $0C
    or a                                          ; $6407: $B7
    ld a, b                                       ; $6408: $78
    call z, $B833                                 ; $6409: $CC $33 $B8
    rlca                                          ; $640C: $07
    ld l, b                                       ; $640D: $68

jr_074_640E:
    rra                                           ; $640E: $1F
    ld d, b                                       ; $640F: $50
    ccf                                           ; $6410: $3F
    and l                                         ; $6411: $A5
    jr jr_074_640E                                ; $6412: $18 $FA

    ld bc, $6094                                  ; $6414: $01 $94 $60
    db $E4                                        ; $6417: $E4
    dec de                                        ; $6418: $1B
    cp c                                          ; $6419: $B9
    add $57                                       ; $641A: $C6 $57
    add sp, $03                                   ; $641C: $E8 $03
    db $FC                                        ; $641E: $FC
    ld b, $F9                                     ; $641F: $06 $F9
    rrca                                          ; $6421: $0F
    ldh a, [$34]                                  ; $6422: $F0 $34
    jp $06E9                                      ; $6424: $C3 $E9 $06


    ld bc, $03FF                                  ; $6427: $01 $FF $03
    ld a, a                                       ; $642A: $7F
    rlca                                          ; $642B: $07
    ccf                                           ; $642C: $3F
    rrca                                          ; $642D: $0F
    rra                                           ; $642E: $1F
    rrca                                          ; $642F: $0F
    rlca                                          ; $6430: $07
    rra                                           ; $6431: $1F
    inc bc                                        ; $6432: $03
    ccf                                           ; $6433: $3F
    ld bc, $007F                                  ; $6434: $01 $7F $00
    rst $38                                       ; $6437: $FF
    add b                                         ; $6438: $80
    rst $38                                       ; $6439: $FF
    sbc h                                         ; $643A: $9C
    rst $28                                       ; $643B: $EF
    xor b                                         ; $643C: $A8
    ld e, a                                       ; $643D: $5F
    ld d, e                                       ; $643E: $53
    ccf                                           ; $643F: $3F
    ld h, $3F                                     ; $6440: $26 $3F
    inc l                                         ; $6442: $2C
    inc de                                        ; $6443: $13
    ld [de], a                                    ; $6444: $12
    rrca                                          ; $6445: $0F
    ld [$00FF], sp                                ; $6446: $08 $FF $00
    rst $38                                       ; $6449: $FF
    nop                                           ; $644A: $00
    rst $38                                       ; $644B: $FF
    nop                                           ; $644C: $00
    rst $38                                       ; $644D: $FF
    ld h, b                                       ; $644E: $60
    rst $38                                       ; $644F: $FF
    nop                                           ; $6450: $00

jr_074_6451:
    rst $38                                       ; $6451: $FF
    nop                                           ; $6452: $00
    rst $38                                       ; $6453: $FF
    nop                                           ; $6454: $00
    rst $38                                       ; $6455: $FF
    nop                                           ; $6456: $00
    db $FD                                        ; $6457: $FD
    inc bc                                        ; $6458: $03
    cp $01                                        ; $6459: $FE $01
    cp $01                                        ; $645B: $FE $01
    rst $38                                       ; $645D: $FF
    nop                                           ; $645E: $00
    rst $38                                       ; $645F: $FF
    nop                                           ; $6460: $00
    rst $38                                       ; $6461: $FF
    nop                                           ; $6462: $00
    rst $38                                       ; $6463: $FF
    nop                                           ; $6464: $00
    rst $38                                       ; $6465: $FF
    nop                                           ; $6466: $00
    ld h, l                                       ; $6467: $65
    sbc d                                         ; $6468: $9A
    or e                                          ; $6469: $B3
    call z, $CCB3                                 ; $646A: $CC $B3 $CC
    dec sp                                        ; $646D: $3B
    call nz, $CC33                                ; $646E: $C4 $33 $CC
    inc [hl]                                      ; $6471: $34
    res 4, c                                      ; $6472: $CB $A1
    ld d, a                                       ; $6474: $57
    rst $20                                       ; $6475: $E7
    rra                                           ; $6476: $1F
    ld hl, sp+$04                                 ; $6477: $F8 $04
    db $FC                                        ; $6479: $FC
    ld [bc], a                                    ; $647A: $02
    cp $01                                        ; $647B: $FE $01
    jp $1D3C                                      ; $647D: $C3 $3C $1D


    cp $71                                        ; $6480: $FE $71
    ld a, [$CCC3]                                 ; $6482: $FA $C3 $CC
    rrca                                          ; $6485: $0F
    ld [hl], b                                    ; $6486: $70
    cp $00                                        ; $6487: $FE $00
    db $FD                                        ; $6489: $FD
    nop                                           ; $648A: $00
    cp [hl]                                       ; $648B: $BE
    nop                                           ; $648C: $00

jr_074_648D:
    ld [hl], b                                    ; $648D: $70
    ld [$2040], sp                                ; $648E: $08 $40 $20
    nop                                           ; $6491: $00
    add b                                         ; $6492: $80
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    ld bc, $03FF                                  ; $6497: $01 $FF $03
    ld a, a                                       ; $649A: $7F
    rlca                                          ; $649B: $07
    ccf                                           ; $649C: $3F
    rrca                                          ; $649D: $0F
    rra                                           ; $649E: $1F
    rrca                                          ; $649F: $0F
    rlca                                          ; $64A0: $07
    rra                                           ; $64A1: $1F
    inc bc                                        ; $64A2: $03
    ccf                                           ; $64A3: $3F
    ld bc, $007F                                  ; $64A4: $01 $7F $00
    rst $38                                       ; $64A7: $FF
    nop                                           ; $64A8: $00
    rst $38                                       ; $64A9: $FF
    nop                                           ; $64AA: $00
    rst $38                                       ; $64AB: $FF
    nop                                           ; $64AC: $00
    cp a                                          ; $64AD: $BF
    ld b, b                                       ; $64AE: $40
    cp e                                          ; $64AF: $BB
    ld b, b                                       ; $64B0: $40
    ld d, [hl]                                    ; $64B1: $56
    jr nz, jr_074_64C7                            ; $64B2: $20 $13

    jr nz, jr_074_64B7                            ; $64B4: $20 $01

    nop                                           ; $64B6: $00

jr_074_64B7:
    adc a                                         ; $64B7: $8F
    ld d, b                                       ; $64B8: $50
    adc a                                         ; $64B9: $8F
    ld [hl], b                                    ; $64BA: $70
    rst $08                                       ; $64BB: $CF
    jr nz, jr_074_648D                            ; $64BC: $20 $CF

    jr nc, @-$2F                                  ; $64BE: $30 $CF

    jr nc, jr_074_6451                            ; $64C0: $30 $8F

    ld [hl], b                                    ; $64C2: $70
    ld d, $60                                     ; $64C3: $16 $60
    inc l                                         ; $64C5: $2C
    nop                                           ; $64C6: $00

jr_074_64C7:
    nop                                           ; $64C7: $00
    ld bc, $0000                                  ; $64C8: $01 $00 $00
    jr @+$26                                      ; $64CB: $18 $24

    inc l                                         ; $64CD: $2C
    ld d, d                                       ; $64CE: $52
    ld a, $40                                     ; $64CF: $3E $40
    inc e                                         ; $64D1: $1C
    ld [hl+], a                                   ; $64D2: $22
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    ldh [rNR10], a                                ; $64D7: $E0 $10
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    ld [bc], a                                    ; $64DE: $02
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    nop                                           ; $64E5: $00
    nop                                           ; $64E6: $00
    nop                                           ; $64E7: $00
    nop                                           ; $64E8: $00
    nop                                           ; $64E9: $00
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    inc b                                         ; $64EE: $04
    nop                                           ; $64EF: $00
    ld [$0200], sp                                ; $64F0: $08 $00 $02
    nop                                           ; $64F3: $00
    daa                                           ; $64F4: $27
    nop                                           ; $64F5: $00
    ld c, $00                                     ; $64F6: $0E $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    ld bc, $03FF                                  ; $6507: $01 $FF $03
    ld a, a                                       ; $650A: $7F
    rlca                                          ; $650B: $07
    ccf                                           ; $650C: $3F
    rrca                                          ; $650D: $0F
    rra                                           ; $650E: $1F
    rrca                                          ; $650F: $0F
    rlca                                          ; $6510: $07
    rra                                           ; $6511: $1F
    inc bc                                        ; $6512: $03
    ccf                                           ; $6513: $3F
    ld bc, $007F                                  ; $6514: $01 $7F $00
    ld bc, $03FF                                  ; $6517: $01 $FF $03
    ld a, a                                       ; $651A: $7F
    rlca                                          ; $651B: $07
    ccf                                           ; $651C: $3F
    rrca                                          ; $651D: $0F
    rra                                           ; $651E: $1F
    rrca                                          ; $651F: $0F
    rlca                                          ; $6520: $07
    rra                                           ; $6521: $1F
    inc bc                                        ; $6522: $03
    ccf                                           ; $6523: $3F
    ld bc, $007F                                  ; $6524: $01 $7F $00
    ld bc, $03FF                                  ; $6527: $01 $FF $03
    ld a, a                                       ; $652A: $7F
    rlca                                          ; $652B: $07
    ccf                                           ; $652C: $3F
    rrca                                          ; $652D: $0F
    rra                                           ; $652E: $1F
    rrca                                          ; $652F: $0F
    rlca                                          ; $6530: $07
    rra                                           ; $6531: $1F
    inc bc                                        ; $6532: $03
    ccf                                           ; $6533: $3F
    ld bc, $007F                                  ; $6534: $01 $7F $00
    rra                                           ; $6537: $1F
    db $10                                        ; $6538: $10
    rra                                           ; $6539: $1F
    ld de, $121F                                  ; $653A: $11 $1F $12
    rra                                           ; $653D: $1F
    ld d, $09                                     ; $653E: $16 $09
    add hl, bc                                    ; $6540: $09
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    rst $38                                       ; $6547: $FF
    sbc b                                         ; $6548: $98
    rst $38                                       ; $6549: $FF
    nop                                           ; $654A: $00
    rst $38                                       ; $654B: $FF
    nop                                           ; $654C: $00
    rst $38                                       ; $654D: $FF
    inc h                                         ; $654E: $24
    rst $38                                       ; $654F: $FF
    ld l, h                                       ; $6550: $6C
    sbc a                                         ; $6551: $9F

jr_074_6552:
    sub b                                         ; $6552: $90
    ccf                                           ; $6553: $3F
    jr nz, jr_074_658F                            ; $6554: $20 $39

    jr z, jr_074_6558                             ; $6556: $28 $00

jr_074_6558:
    ld a, l                                       ; $6558: $7D
    ld b, b                                       ; $6559: $40
    dec a                                         ; $655A: $3D
    ld [hl], b                                    ; $655B: $70
    dec c                                         ; $655C: $0D
    ld a, l                                       ; $655D: $7D
    ld bc, $007D                                  ; $655E: $01 $7D $00
    dec a                                         ; $6561: $3D
    nop                                           ; $6562: $00
    dec c                                         ; $6563: $0D
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    ei                                            ; $6568: $FB
    nop                                           ; $6569: $00
    ei                                            ; $656A: $FB
    nop                                           ; $656B: $00
    ei                                            ; $656C: $FB
    ei                                            ; $656D: $FB
    ld hl, sp-$08                                 ; $656E: $F8 $F8
    nop                                           ; $6570: $00
    ld hl, sp+$03                                 ; $6571: $F8 $03
    ld hl, sp+$03                                 ; $6573: $F8 $03
    nop                                           ; $6575: $00
    inc bc                                        ; $6576: $03
    ldh [$3F], a                                  ; $6577: $E0 $3F
    rst $28                                       ; $6579: $EF
    ccf                                           ; $657A: $3F
    rst $28                                       ; $657B: $EF
    ccf                                           ; $657C: $3F

jr_074_657D:
    xor a                                         ; $657D: $AF
    ld a, a                                       ; $657E: $7F
    xor a                                         ; $657F: $AF
    ccf                                           ; $6580: $3F
    rst $28                                       ; $6581: $EF
    ccf                                           ; $6582: $3F
    rst $28                                       ; $6583: $EF
    ccf                                           ; $6584: $3F
    ldh [$3F], a                                  ; $6585: $E0 $3F
    ld h, e                                       ; $6587: $63
    nop                                           ; $6588: $00
    ld d, a                                       ; $6589: $57
    nop                                           ; $658A: $00
    ld b, e                                       ; $658B: $43
    nop                                           ; $658C: $00
    ld d, e                                       ; $658D: $53
    nop                                           ; $658E: $00

jr_074_658F:
    ld d, e                                       ; $658F: $53
    nop                                           ; $6590: $00
    ld [de], a                                    ; $6591: $12
    ld b, b                                       ; $6592: $40
    nop                                           ; $6593: $00
    ld b, b                                       ; $6594: $40
    nop                                           ; $6595: $00
    ld d, a                                       ; $6596: $57
    rst $28                                       ; $6597: $EF
    jr jr_074_6552                                ; $6598: $18 $B8

    ld h, a                                       ; $659A: $67
    ld [hl], b                                    ; $659B: $70
    rst $08                                       ; $659C: $CF
    ldh [$9F], a                                  ; $659D: $E0 $9F
    rst $00                                       ; $659F: $C7
    jr c, jr_074_65F1                             ; $65A0: $38 $4F

    or b                                          ; $65A2: $B0
    ld e, a                                       ; $65A3: $5F
    and b                                         ; $65A4: $A0
    ld e, a                                       ; $65A5: $5F
    and b                                         ; $65A6: $A0
    inc c                                         ; $65A7: $0C
    inc bc                                        ; $65A8: $03
    jr nz, jr_074_65CA                            ; $65A9: $20 $1F

    ld b, b                                       ; $65AB: $40
    ccf                                           ; $65AC: $3F
    add b                                         ; $65AD: $80
    ld a, a                                       ; $65AE: $7F
    ld a, a                                       ; $65AF: $7F
    ld a, a                                       ; $65B0: $7F
    add b                                         ; $65B1: $80
    ld a, a                                       ; $65B2: $7F
    add b                                         ; $65B3: $80
    ld a, a                                       ; $65B4: $7F
    and b                                         ; $65B5: $A0
    ld a, a                                       ; $65B6: $7F
    add l                                         ; $65B7: $85
    inc bc                                        ; $65B8: $03
    add l                                         ; $65B9: $85
    inc bc                                        ; $65BA: $03
    adc e                                         ; $65BB: $8B
    inc b                                         ; $65BC: $04
    sub h                                         ; $65BD: $94
    ld [$0B90], sp                                ; $65BE: $08 $90 $0B
    and e                                         ; $65C1: $A3
    dec de                                        ; $65C2: $1B
    xor h                                         ; $65C3: $AC
    inc e                                         ; $65C4: $1C
    ldh [rIF], a                                  ; $65C5: $E0 $0F
    cp $FF                                        ; $65C7: $FE $FF
    db $FD                                        ; $65C9: $FD

jr_074_65CA:
    cp $72                                        ; $65CA: $FE $72
    db $FC                                        ; $65CC: $FC
    db $EC                                        ; $65CD: $EC
    ld [hl], b                                    ; $65CE: $70
    rra                                           ; $65CF: $1F
    ld h, b                                       ; $65D0: $60
    inc sp                                        ; $65D1: $33
    ld b, b                                       ; $65D2: $40
    daa                                           ; $65D3: $27
    ret nz                                        ; $65D4: $C0

    ld l, a                                       ; $65D5: $6F
    add b                                         ; $65D6: $80
    rra                                           ; $65D7: $1F
    nop                                           ; $65D8: $00
    ld h, c                                       ; $65D9: $61
    nop                                           ; $65DA: $00
    add c                                         ; $65DB: $81
    nop                                           ; $65DC: $00
    ld bc, $0100                                  ; $65DD: $01 $00 $01
    nop                                           ; $65E0: $00
    ld bc, $0100                                  ; $65E1: $01 $00 $01
    nop                                           ; $65E4: $00
    ld bc, $0000                                  ; $65E5: $01 $00 $00
    nop                                           ; $65E8: $00
    sbc [hl]                                      ; $65E9: $9E
    nop                                           ; $65EA: $00
    sbc [hl]                                      ; $65EB: $9E
    nop                                           ; $65EC: $00
    sbc [hl]                                      ; $65ED: $9E
    nop                                           ; $65EE: $00
    sbc [hl]                                      ; $65EF: $9E
    nop                                           ; $65F0: $00

jr_074_65F1:
    sbc [hl]                                      ; $65F1: $9E
    nop                                           ; $65F2: $00
    sbc [hl]                                      ; $65F3: $9E
    nop                                           ; $65F4: $00
    sbc [hl]                                      ; $65F5: $9E
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    jr nc, jr_074_65FB                            ; $65F9: $30 $00

jr_074_65FB:
    jr nc, jr_074_657D                            ; $65FB: $30 $80

    or b                                          ; $65FD: $B0
    nop                                           ; $65FE: $00
    or b                                          ; $65FF: $B0
    nop                                           ; $6600: $00
    or b                                          ; $6601: $B0
    nop                                           ; $6602: $00
    or b                                          ; $6603: $B0
    nop                                           ; $6604: $00
    cp a                                          ; $6605: $BF
    nop                                           ; $6606: $00
    rst $38                                       ; $6607: $FF
    ld c, $F7                                     ; $6608: $0E $F7
    ld c, $FB                                     ; $660A: $0E $FB
    rlca                                          ; $660C: $07
    cp $00                                        ; $660D: $FE $00
    cp $00                                        ; $660F: $FE $00
    cp $00                                        ; $6611: $FE $00
    cp $00                                        ; $6613: $FE $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    ret c                                         ; $6617: $D8

    ld b, $D4                                     ; $6618: $06 $D4
    dec c                                         ; $661A: $0D
    ld d, [hl]                                    ; $661B: $56
    adc l                                         ; $661C: $8D
    ld e, [hl]                                    ; $661D: $5E
    dec c                                         ; $661E: $0D
    ld d, [hl]                                    ; $661F: $56
    dec e                                         ; $6620: $1D
    ld h, c                                       ; $6621: $61
    inc d                                         ; $6622: $14
    ld c, l                                       ; $6623: $4D
    ld [hl+], a                                   ; $6624: $22
    ld e, e                                       ; $6625: $5B
    jr nz, jr_074_6687                            ; $6626: $20 $5F

    and b                                         ; $6628: $A0
    sbc a                                         ; $6629: $9F
    ld a, a                                       ; $662A: $7F
    rst $38                                       ; $662B: $FF
    rra                                           ; $662C: $1F
    rra                                           ; $662D: $1F
    rst $38                                       ; $662E: $FF
    rst $38                                       ; $662F: $FF
    rra                                           ; $6630: $1F
    rst $38                                       ; $6631: $FF
    rra                                           ; $6632: $1F
    rst $38                                       ; $6633: $FF
    rra                                           ; $6634: $1F
    rst $38                                       ; $6635: $FF
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    rst $38                                       ; $6647: $FF
    nop                                           ; $6648: $00
    rst $38                                       ; $6649: $FF
    nop                                           ; $664A: $00
    rst $38                                       ; $664B: $FF
    nop                                           ; $664C: $00
    rst $38                                       ; $664D: $FF
    nop                                           ; $664E: $00
    rst $38                                       ; $664F: $FF
    nop                                           ; $6650: $00
    rst $38                                       ; $6651: $FF
    nop                                           ; $6652: $00
    rst $38                                       ; $6653: $FF
    nop                                           ; $6654: $00
    rst $38                                       ; $6655: $FF
    nop                                           ; $6656: $00
    ld b, b                                       ; $6657: $40
    nop                                           ; $6658: $00
    db $E4                                        ; $6659: $E4
    nop                                           ; $665A: $00
    inc b                                         ; $665B: $04
    nop                                           ; $665C: $00
    inc b                                         ; $665D: $04
    nop                                           ; $665E: $00
    inc b                                         ; $665F: $04
    nop                                           ; $6660: $00
    inc b                                         ; $6661: $04
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    ld a, a                                       ; $6667: $7F
    nop                                           ; $6668: $00
    ld a, a                                       ; $6669: $7F
    ld a, h                                       ; $666A: $7C
    ld a, a                                       ; $666B: $7F
    ld a, h                                       ; $666C: $7C
    ld a, a                                       ; $666D: $7F
    ld a, h                                       ; $666E: $7C
    inc bc                                        ; $666F: $03
    nop                                           ; $6670: $00
    ld a, a                                       ; $6671: $7F
    nop                                           ; $6672: $00

jr_074_6673:
    ld a, a                                       ; $6673: $7F
    ld a, h                                       ; $6674: $7C
    rst $38                                       ; $6675: $FF
    ld a, h                                       ; $6676: $7C
    cp a                                          ; $6677: $BF
    ld a, a                                       ; $6678: $7F
    add b                                         ; $6679: $80
    ccf                                           ; $667A: $3F
    add b                                         ; $667B: $80
    ccf                                           ; $667C: $3F
    ret z                                         ; $667D: $C8

    jr z, jr_074_6673                             ; $667E: $28 $F3

    ld [$0BF0], sp                                ; $6680: $08 $F0 $0B
    rst $30                                       ; $6683: $F7
    nop                                           ; $6684: $00
    db $F4                                        ; $6685: $F4
    nop                                           ; $6686: $00

jr_074_6687:
    nop                                           ; $6687: $00
    ld b, b                                       ; $6688: $40
    nop                                           ; $6689: $00
    ld a, a                                       ; $668A: $7F
    ld a, a                                       ; $668B: $7F
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    sub b                                         ; $6698: $90
    add b                                         ; $6699: $80
    ld [$07C0], sp                                ; $669A: $08 $C0 $07
    ld [hl], b                                    ; $669D: $70
    ld b, b                                       ; $669E: $40
    ld l, b                                       ; $669F: $68
    scf                                           ; $66A0: $37
    ccf                                           ; $66A1: $3F
    rra                                           ; $66A2: $1F
    rra                                           ; $66A3: $1F
    rrca                                          ; $66A4: $0F
    nop                                           ; $66A5: $00
    rlca                                          ; $66A6: $07
    ld d, b                                       ; $66A7: $50
    cp a                                          ; $66A8: $BF
    xor [hl]                                      ; $66A9: $AE
    rra                                           ; $66AA: $1F
    ld b, b                                       ; $66AB: $40
    adc [hl]                                      ; $66AC: $8E
    jr nc, jr_074_66EF                            ; $66AD: $30 $40

    dec hl                                        ; $66AF: $2B
    ld [hl], b                                    ; $66B0: $70
    jr @+$3A                                      ; $66B1: $18 $38

    rrca                                          ; $66B3: $0F
    rra                                           ; $66B4: $1F
    nop                                           ; $66B5: $00
    rlca                                          ; $66B6: $07
    rst $38                                       ; $66B7: $FF
    nop                                           ; $66B8: $00
    rst $38                                       ; $66B9: $FF
    cp [hl]                                       ; $66BA: $BE
    rst $38                                       ; $66BB: $FF
    cp [hl]                                       ; $66BC: $BE
    rst $38                                       ; $66BD: $FF
    cp [hl]                                       ; $66BE: $BE
    rst $38                                       ; $66BF: $FF
    cp [hl]                                       ; $66C0: $BE
    ld b, c                                       ; $66C1: $41
    cp [hl]                                       ; $66C2: $BE
    ld b, c                                       ; $66C3: $41
    cp [hl]                                       ; $66C4: $BE
    ld b, c                                       ; $66C5: $41
    cp [hl]                                       ; $66C6: $BE
    rst $08                                       ; $66C7: $CF
    nop                                           ; $66C8: $00
    rst $08                                       ; $66C9: $CF
    nop                                           ; $66CA: $00
    ld c, a                                       ; $66CB: $4F
    add b                                         ; $66CC: $80
    ld c, a                                       ; $66CD: $4F
    nop                                           ; $66CE: $00
    ld c, a                                       ; $66CF: $4F
    nop                                           ; $66D0: $00
    ld a, a                                       ; $66D1: $7F
    nop                                           ; $66D2: $00
    ld e, a                                       ; $66D3: $5F
    cpl                                           ; $66D4: $2F
    ld d, b                                       ; $66D5: $50
    cpl                                           ; $66D6: $2F
    cp $00                                        ; $66D7: $FE $00
    cp $00                                        ; $66D9: $FE $00
    cp $00                                        ; $66DB: $FE $00
    ld hl, sp+$07                                 ; $66DD: $F8 $07
    ldh a, [rTAC]                                 ; $66DF: $F0 $07
    rst $30                                       ; $66E1: $F7
    rrca                                          ; $66E2: $0F
    cp $EE                                        ; $66E3: $FE $EE
    rra                                           ; $66E5: $1F
    xor $9E                                       ; $66E6: $EE $9E
    nop                                           ; $66E8: $00
    add b                                         ; $66E9: $80
    ld hl, $3F80                                  ; $66EA: $21 $80 $3F
    cp a                                          ; $66ED: $BF
    nop                                           ; $66EE: $00

jr_074_66EF:
    ccf                                           ; $66EF: $3F
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    inc bc                                        ; $66F9: $03
    inc bc                                        ; $66FA: $03
    rrca                                          ; $66FB: $0F
    rrca                                          ; $66FC: $0F
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    ld d, $16                                     ; $66FF: $16 $16
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    rlca                                          ; $6703: $07
    rlca                                          ; $6704: $07
    ld a, a                                       ; $6705: $7F
    ld a, a                                       ; $6706: $7F
    cp $FF                                        ; $6707: $FE $FF
    db $FD                                        ; $6709: $FD
    cp $73                                        ; $670A: $FE $73
    db $FC                                        ; $670C: $FC
    rst $28                                       ; $670D: $EF
    ld [hl], b                                    ; $670E: $70
    dec de                                        ; $670F: $1B
    ld h, b                                       ; $6710: $60
    dec sp                                        ; $6711: $3B
    ld b, b                                       ; $6712: $40
    dec sp                                        ; $6713: $3B
    ret nz                                        ; $6714: $C0

    ld e, a                                       ; $6715: $5F
    add b                                         ; $6716: $80
    inc b                                         ; $6717: $04
    nop                                           ; $6718: $00
    inc h                                         ; $6719: $24
    nop                                           ; $671A: $00
    inc h                                         ; $671B: $24
    add b                                         ; $671C: $80
    and h                                         ; $671D: $A4
    nop                                           ; $671E: $00
    xor b                                         ; $671F: $A8
    nop                                           ; $6720: $00
    or b                                          ; $6721: $B0
    nop                                           ; $6722: $00
    or b                                          ; $6723: $B0
    nop                                           ; $6724: $00
    and c                                         ; $6725: $A1
    ld bc, $1FFF                                  ; $6726: $01 $FF $1F
    rst $38                                       ; $6729: $FF
    rra                                           ; $672A: $1F
    rst $28                                       ; $672B: $EF
    rra                                           ; $672C: $1F
    db $E3                                        ; $672D: $E3
    rra                                           ; $672E: $1F
    ldh [$1F], a                                  ; $672F: $E0 $1F
    ldh a, [rIF]                                  ; $6731: $F0 $0F
    db $FC                                        ; $6733: $FC
    inc bc                                        ; $6734: $03
    rst $38                                       ; $6735: $FF
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    rst $38                                       ; $6738: $FF
    nop                                           ; $6739: $00
    rst $38                                       ; $673A: $FF
    nop                                           ; $673B: $00
    rst $38                                       ; $673C: $FF
    nop                                           ; $673D: $00
    rst $38                                       ; $673E: $FF
    nop                                           ; $673F: $00
    rst $38                                       ; $6740: $FF
    nop                                           ; $6741: $00
    rst $38                                       ; $6742: $FF
    nop                                           ; $6743: $00
    rst $38                                       ; $6744: $FF
    nop                                           ; $6745: $00
    rst $38                                       ; $6746: $FF
    rst $38                                       ; $6747: $FF
    rst $38                                       ; $6748: $FF
    rst $38                                       ; $6749: $FF
    rst $38                                       ; $674A: $FF
    rst $38                                       ; $674B: $FF
    rst $38                                       ; $674C: $FF
    rst $38                                       ; $674D: $FF
    rst $38                                       ; $674E: $FF
    rst $38                                       ; $674F: $FF
    rst $38                                       ; $6750: $FF
    rst $38                                       ; $6751: $FF
    rst $38                                       ; $6752: $FF
    rst $38                                       ; $6753: $FF
    rst $38                                       ; $6754: $FF
    rst $38                                       ; $6755: $FF
    rst $38                                       ; $6756: $FF
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    ld [bc], a                                    ; $675B: $02
    ld [bc], a                                    ; $675C: $02
    ld bc, $0103                                  ; $675D: $01 $03 $01
    inc bc                                        ; $6760: $03
    ld bc, $0103                                  ; $6761: $01 $03 $01
    ld [bc], a                                    ; $6764: $02
    ld bc, $0000                                  ; $6765: $01 $00 $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    nop                                           ; $676C: $00
    nop                                           ; $676D: $00
    ld bc, $0F00                                  ; $676E: $01 $00 $0F
    rra                                           ; $6771: $1F
    ccf                                           ; $6772: $3F
    rlca                                          ; $6773: $07
    ccf                                           ; $6774: $3F
    jr jr_074_67B6                                ; $6775: $18 $3F

    nop                                           ; $6777: $00
    inc bc                                        ; $6778: $03
    ld bc, $070F                                  ; $6779: $01 $0F $07
    ccf                                           ; $677C: $3F
    ccf                                           ; $677D: $3F
    rst $38                                       ; $677E: $FF
    db $FC                                        ; $677F: $FC
    rst $38                                       ; $6780: $FF
    ld sp, hl                                     ; $6781: $F9
    cp $F7                                        ; $6782: $FE $F7

jr_074_6784:
    ld hl, sp+$4F                                 ; $6784: $F8 $4F
    ldh a, [rP1]                                  ; $6786: $F0 $00
    ldh [$F0], a                                  ; $6788: $E0 $F0
    ld hl, sp-$10                                 ; $678A: $F8 $F0
    db $FC                                        ; $678C: $FC
    adc b                                         ; $678D: $88
    db $F4                                        ; $678E: $F4
    ld d, b                                       ; $678F: $50
    xor b                                         ; $6790: $A8
    or b                                          ; $6791: $B0
    ld c, b                                       ; $6792: $48
    and b                                         ; $6793: $A0
    ld d, b                                       ; $6794: $50
    ld h, b                                       ; $6795: $60
    sub b                                         ; $6796: $90
    ld bc, $01FD                                  ; $6797: $01 $FD $01
    db $FD                                        ; $679A: $FD
    ld bc, $07FD                                  ; $679B: $01 $FD $07
    ei                                            ; $679E: $FB
    rra                                           ; $679F: $1F
    db $E3                                        ; $67A0: $E3
    ld a, a                                       ; $67A1: $7F
    add d                                         ; $67A2: $82
    rst $38                                       ; $67A3: $FF
    ld [bc], a                                    ; $67A4: $02
    ld h, a                                       ; $67A5: $67
    sbc b                                         ; $67A6: $98
    inc e                                         ; $67A7: $1C
    rra                                           ; $67A8: $1F
    inc a                                         ; $67A9: $3C
    ccf                                           ; $67AA: $3F
    ld a, [hl]                                    ; $67AB: $7E
    ld a, c                                       ; $67AC: $79
    cp $F1                                        ; $67AD: $FE $F1
    rst $38                                       ; $67AF: $FF
    ldh [rIE], a                                  ; $67B0: $E0 $FF
    ret nz                                        ; $67B2: $C0

    rst $38                                       ; $67B3: $FF
    ld b, b                                       ; $67B4: $40
    rst $38                                       ; $67B5: $FF

jr_074_67B6:
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    rst $38                                       ; $67B8: $FF
    db $10                                        ; $67B9: $10
    rst $28                                       ; $67BA: $EF
    jr c, jr_074_6784                             ; $67BB: $38 $C7

    db $FC                                        ; $67BD: $FC
    inc bc                                        ; $67BE: $03
    db $FC                                        ; $67BF: $FC
    inc bc                                        ; $67C0: $03
    ld hl, sp+$07                                 ; $67C1: $F8 $07
    ldh [$1F], a                                  ; $67C3: $E0 $1F
    add b                                         ; $67C5: $80
    ld a, a                                       ; $67C6: $7F
    jr nc, jr_074_67D9                            ; $67C7: $30 $10

    jr jr_074_67D3                                ; $67C9: $18 $08

    inc c                                         ; $67CB: $0C

jr_074_67CC:
    dec b                                         ; $67CC: $05
    ld [$0507], sp                                ; $67CD: $08 $07 $05
    dec bc                                        ; $67D0: $0B
    rlca                                          ; $67D1: $07
    dec e                                         ; $67D2: $1D

jr_074_67D3:
    rra                                           ; $67D3: $1F
    ccf                                           ; $67D4: $3F
    rrca                                          ; $67D5: $0F
    ccf                                           ; $67D6: $3F
    ld l, $51                                     ; $67D7: $2E $51

jr_074_67D9:
    ld e, a                                       ; $67D9: $5F
    and a                                         ; $67DA: $A7
    ccf                                           ; $67DB: $3F
    call c, $F03F                                 ; $67DC: $DC $3F $F0
    rst $18                                       ; $67DF: $DF
    ldh [$BF], a                                  ; $67E0: $E0 $BF
    ret nz                                        ; $67E2: $C0

    cp h                                          ; $67E3: $BC
    jp $C4BB                                      ; $67E4: $C3 $BB $C4


    ldh [$F8], a                                  ; $67E7: $E0 $F8
    ret nz                                        ; $67E9: $C0

    jr nz, jr_074_67CC                            ; $67EA: $20 $E0

    db $10                                        ; $67EC: $10
    ldh [rNR10], a                                ; $67ED: $E0 $10
    ret nz                                        ; $67EF: $C0

    jr nc, jr_074_67F2                            ; $67F0: $30 $00

jr_074_67F2:
    ldh [$C0], a                                  ; $67F2: $E0 $C0
    jr nz, @-$7E                                  ; $67F4: $20 $80

    nop                                           ; $67F6: $00
    rra                                           ; $67F7: $1F
    rst $38                                       ; $67F8: $FF
    di                                            ; $67F9: $F3
    di                                            ; $67FA: $F3
    inc de                                        ; $67FB: $13
    inc de                                        ; $67FC: $13
    inc de                                        ; $67FD: $13
    inc de                                        ; $67FE: $13
    rra                                           ; $67FF: $1F
    rst $38                                       ; $6800: $FF
    rst $30                                       ; $6801: $F7
    di                                            ; $6802: $F3
    rst $30                                       ; $6803: $F7
    inc de                                        ; $6804: $13
    rst $30                                       ; $6805: $F7
    inc de                                        ; $6806: $13
    nop                                           ; $6807: $00
    rst $38                                       ; $6808: $FF
    rst $38                                       ; $6809: $FF
    rst $38                                       ; $680A: $FF
    nop                                           ; $680B: $00
    add b                                         ; $680C: $80
    nop                                           ; $680D: $00
    add b                                         ; $680E: $80
    nop                                           ; $680F: $00
    rst $38                                       ; $6810: $FF
    rst $38                                       ; $6811: $FF
    rst $38                                       ; $6812: $FF
    ccf                                           ; $6813: $3F
    ret nz                                        ; $6814: $C0

    ccf                                           ; $6815: $3F
    ret nz                                        ; $6816: $C0

    rst $28                                       ; $6817: $EF
    pop hl                                        ; $6818: $E1
    rst $28                                       ; $6819: $EF
    ld hl, $21EF                                  ; $681A: $21 $EF $21
    rst $38                                       ; $681D: $FF
    rst $38                                       ; $681E: $FF
    ccf                                           ; $681F: $3F
    cp $FF                                        ; $6820: $FE $FF
    ld hl, $21FF                                  ; $6822: $21 $FF $21
    rst $38                                       ; $6825: $FF
    ld hl, $FFFF                                  ; $6826: $21 $FF $FF
    adc a                                         ; $6829: $8F
    ldh a, [$9F]                                  ; $682A: $F0 $9F
    ldh [rIE], a                                  ; $682C: $E0 $FF
    rst $38                                       ; $682E: $FF
    ret nz                                        ; $682F: $C0

    rst $38                                       ; $6830: $FF
    rst $18                                       ; $6831: $DF
    ldh [$DF], a                                  ; $6832: $E0 $DF
    ldh [$DF], a                                  ; $6834: $E0 $DF
    ldh [rP1], a                                  ; $6836: $E0 $00
    nop                                           ; $6838: $00
    ld a, h                                       ; $6839: $7C
    nop                                           ; $683A: $00
    ld [bc], a                                    ; $683B: $02
    ld a, h                                       ; $683C: $7C
    add d                                         ; $683D: $82
    db $FC                                        ; $683E: $FC
    add h                                         ; $683F: $84
    ld hl, sp-$6E                                 ; $6840: $F8 $92
    ld [c], a                                     ; $6842: $E2
    adc [hl]                                      ; $6843: $8E
    db $FC                                        ; $6844: $FC
    nop                                           ; $6845: $00
    ld a, h                                       ; $6846: $7C
    nop                                           ; $6847: $00
    rst $38                                       ; $6848: $FF
    nop                                           ; $6849: $00
    rst $38                                       ; $684A: $FF
    inc b                                         ; $684B: $04
    rst $38                                       ; $684C: $FF
    ld bc, $80FF                                  ; $684D: $01 $FF $80
    rst $38                                       ; $6850: $FF
    db $10                                        ; $6851: $10
    rst $38                                       ; $6852: $FF
    nop                                           ; $6853: $00
    rst $38                                       ; $6854: $FF
    nop                                           ; $6855: $00
    rst $38                                       ; $6856: $FF
    ld bc, $0300                                  ; $6857: $01 $00 $03
    ld [bc], a                                    ; $685A: $02
    ld bc, $0302                                  ; $685B: $01 $02 $03
    rlca                                          ; $685E: $07
    inc bc                                        ; $685F: $03
    inc b                                         ; $6860: $04
    rra                                           ; $6861: $1F
    jr jr_074_6864                                ; $6862: $18 $00

jr_074_6864:
    ccf                                           ; $6864: $3F
    nop                                           ; $6865: $00
    ldh [rNR34], a                                ; $6866: $E0 $1E
    inc sp                                        ; $6868: $33
    ld b, $39                                     ; $6869: $06 $39
    ld d, $F9                                     ; $686B: $16 $F9
    ld c, [hl]                                    ; $686D: $4E
    pop af                                        ; $686E: $F1
    adc [hl]                                      ; $686F: $8E
    ld [hl], c                                    ; $6870: $71
    ld c, $F1                                     ; $6871: $0E $F1
    ld b, d                                       ; $6873: $42
    db $ED                                        ; $6874: $ED
    ld h, b                                       ; $6875: $60
    inc hl                                        ; $6876: $23
    ccf                                           ; $6877: $3F
    ret nz                                        ; $6878: $C0

    cp $01                                        ; $6879: $FE $01
    cp $01                                        ; $687B: $FE $01
    ld hl, sp+$07                                 ; $687D: $F8 $07
    ldh a, [rIF]                                  ; $687F: $F0 $0F
    ret nz                                        ; $6881: $C0

    ccf                                           ; $6882: $3F
    add d                                         ; $6883: $82
    ld a, l                                       ; $6884: $7D
    ld h, $59                                     ; $6885: $26 $59
    ld b, b                                       ; $6887: $40
    and b                                         ; $6888: $A0
    add b                                         ; $6889: $80
    ld h, b                                       ; $688A: $60
    nop                                           ; $688B: $00
    add b                                         ; $688C: $80
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    ret nz                                        ; $6894: $C0

    nop                                           ; $6895: $00
    ldh a, [rTAC]                                 ; $6896: $F0 $07
    ld hl, sp+$07                                 ; $6898: $F8 $07
    ld hl, sp+$07                                 ; $689A: $F8 $07
    ld hl, sp+$0F                                 ; $689C: $F8 $0F
    ldh a, [$1F]                                  ; $689E: $F0 $1F
    ldh [$3F], a                                  ; $68A0: $E0 $3F
    ret nz                                        ; $68A2: $C0

    ccf                                           ; $68A3: $3F
    ret nz                                        ; $68A4: $C0

    inc e                                         ; $68A5: $1C
    db $E3                                        ; $68A6: $E3
    rst $38                                       ; $68A7: $FF
    nop                                           ; $68A8: $00
    rst $38                                       ; $68A9: $FF
    nop                                           ; $68AA: $00
    rst $38                                       ; $68AB: $FF
    nop                                           ; $68AC: $00
    pop af                                        ; $68AD: $F1
    ld c, $C0                                     ; $68AE: $0E $C0
    ccf                                           ; $68B0: $3F
    add b                                         ; $68B1: $80
    ld a, a                                       ; $68B2: $7F
    nop                                           ; $68B3: $00
    rst $38                                       ; $68B4: $FF
    nop                                           ; $68B5: $00
    rst $38                                       ; $68B6: $FF
    add b                                         ; $68B7: $80
    ld a, a                                       ; $68B8: $7F
    db $E3                                        ; $68B9: $E3
    inc e                                         ; $68BA: $1C
    rst $38                                       ; $68BB: $FF
    nop                                           ; $68BC: $00
    rst $38                                       ; $68BD: $FF
    nop                                           ; $68BE: $00
    ld a, [hl]                                    ; $68BF: $7E
    add c                                         ; $68C0: $81
    ld a, h                                       ; $68C1: $7C
    add e                                         ; $68C2: $83
    ld hl, sp+$07                                 ; $68C3: $F8 $07
    ld h, b                                       ; $68C5: $60
    sbc a                                         ; $68C6: $9F
    ld bc, $000F                                  ; $68C7: $01 $0F $00
    rlca                                          ; $68CA: $07
    nop                                           ; $68CB: $00
    ld bc, $0100                                  ; $68CC: $01 $00 $01
    nop                                           ; $68CF: $00
    ld bc, $0100                                  ; $68D0: $01 $00 $01
    nop                                           ; $68D3: $00
    ld bc, $0201                                  ; $68D4: $01 $01 $02
    and a                                         ; $68D7: $A7
    ret c                                         ; $68D8: $D8

    ld e, $E1                                     ; $68D9: $1E $E1
    inc a                                         ; $68DB: $3C
    jp $EE11                                      ; $68DC: $C3 $11 $EE


    add e                                         ; $68DF: $83
    ld a, h                                       ; $68E0: $7C
    add a                                         ; $68E1: $87
    ld a, b                                       ; $68E2: $78
    add [hl]                                      ; $68E3: $86
    ld a, b                                       ; $68E4: $78
    ld c, $F0                                     ; $68E5: $0E $F0
    rst $38                                       ; $68E7: $FF
    nop                                           ; $68E8: $00
    rst $38                                       ; $68E9: $FF
    nop                                           ; $68EA: $00
    rst $38                                       ; $68EB: $FF
    nop                                           ; $68EC: $00
    rst $38                                       ; $68ED: $FF
    nop                                           ; $68EE: $00
    rst $38                                       ; $68EF: $FF
    nop                                           ; $68F0: $00
    rst $38                                       ; $68F1: $FF
    nop                                           ; $68F2: $00
    rst $38                                       ; $68F3: $FF
    nop                                           ; $68F4: $00
    rst $38                                       ; $68F5: $FF
    nop                                           ; $68F6: $00
    rst $30                                       ; $68F7: $F7
    inc de                                        ; $68F8: $13
    rst $30                                       ; $68F9: $F7
    inc de                                        ; $68FA: $13
    rst $30                                       ; $68FB: $F7
    inc de                                        ; $68FC: $13
    rst $30                                       ; $68FD: $F7
    inc de                                        ; $68FE: $13
    rst $30                                       ; $68FF: $F7
    inc sp                                        ; $6900: $33
    rst $38                                       ; $6901: $FF
    ccf                                           ; $6902: $3F
    rst $28                                       ; $6903: $EF
    pop hl                                        ; $6904: $E1
    ccf                                           ; $6905: $3F
    ccf                                           ; $6906: $3F
    ccf                                           ; $6907: $3F
    ret nz                                        ; $6908: $C0

    ccf                                           ; $6909: $3F
    ret nz                                        ; $690A: $C0

    ccf                                           ; $690B: $3F
    ret nz                                        ; $690C: $C0

    ccf                                           ; $690D: $3F
    ret nz                                        ; $690E: $C0

    cp a                                          ; $690F: $BF
    ret nz                                        ; $6910: $C0

    cp a                                          ; $6911: $BF
    ret nz                                        ; $6912: $C0

    rst $38                                       ; $6913: $FF
    rst $38                                       ; $6914: $FF
    ldh [$F8], a                                  ; $6915: $E0 $F8
    sbc $FF                                       ; $6917: $DE $FF
    sbc $27                                       ; $6919: $DE $27
    sbc $21                                       ; $691B: $DE $21
    sbc $21                                       ; $691D: $DE $21
    ld e, $E1                                     ; $691F: $1E $E1
    nop                                           ; $6921: $00
    rst $38                                       ; $6922: $FF
    nop                                           ; $6923: $00
    rst $38                                       ; $6924: $FF

jr_074_6925:
    nop                                           ; $6925: $00
    rst $38                                       ; $6926: $FF
    ccf                                           ; $6927: $3F
    ld sp, $403F                                  ; $6928: $31 $3F $40
    ccf                                           ; $692B: $3F
    ret nz                                        ; $692C: $C0

    ccf                                           ; $692D: $3F
    ret nz                                        ; $692E: $C0

    nop                                           ; $692F: $00
    rst $38                                       ; $6930: $FF
    nop                                           ; $6931: $00
    rst $38                                       ; $6932: $FF
    nop                                           ; $6933: $00
    rst $38                                       ; $6934: $FF
    nop                                           ; $6935: $00
    rst $38                                       ; $6936: $FF
    ld b, b                                       ; $6937: $40
    ld a, h                                       ; $6938: $7C
    inc e                                         ; $6939: $1C
    jr nz, jr_074_695C                            ; $693A: $20 $20

    nop                                           ; $693C: $00
    inc c                                         ; $693D: $0C
    inc c                                         ; $693E: $0C
    jr nz, jr_074_697D                            ; $693F: $20 $3C

    jr nz, jr_074_697F                            ; $6941: $20 $3C

    nop                                           ; $6943: $00
    inc a                                         ; $6944: $3C
    ld b, b                                       ; $6945: $40
    ld a, [hl]                                    ; $6946: $7E
    ld bc, $00FF                                  ; $6947: $01 $FF $00
    rst $38                                       ; $694A: $FF
    nop                                           ; $694B: $00
    rst $38                                       ; $694C: $FF
    ldh [rIE], a                                  ; $694D: $E0 $FF
    nop                                           ; $694F: $00
    rst $38                                       ; $6950: $FF
    nop                                           ; $6951: $00
    rst $38                                       ; $6952: $FF
    nop                                           ; $6953: $00
    rst $38                                       ; $6954: $FF
    nop                                           ; $6955: $00
    rst $38                                       ; $6956: $FF
    nop                                           ; $6957: $00
    rst $38                                       ; $6958: $FF
    ld h, b                                       ; $6959: $60
    sbc a                                         ; $695A: $9F
    ld a, a                                       ; $695B: $7F

jr_074_695C:
    add b                                         ; $695C: $80
    cpl                                           ; $695D: $2F
    rst $18                                       ; $695E: $DF
    jr nz, jr_074_69B9                            ; $695F: $20 $58

    jr nz, jr_074_69C2                            ; $6961: $20 $5F

    jr nz, jr_074_6925                            ; $6963: $20 $C0

    and b                                         ; $6965: $A0
    ret nz                                        ; $6966: $C0

    add hl, sp                                    ; $6967: $39
    ret                                           ; $6968: $C9


    ld e, c                                       ; $6969: $59
    xor c                                         ; $696A: $A9
    reti                                          ; $696B: $D9


    ld hl, $17E8                                  ; $696C: $21 $E8 $17
    ld d, $E9                                     ; $696F: $16 $E9
    dec b                                         ; $6971: $05
    ld a, [$FF00]                                 ; $6972: $FA $00 $FF
    nop                                           ; $6975: $00
    rst $38                                       ; $6976: $FF
    nop                                           ; $6977: $00
    rst $38                                       ; $6978: $FF
    ld h, b                                       ; $6979: $60
    xor a                                         ; $697A: $AF
    ld a, a                                       ; $697B: $7F
    cp a                                          ; $697C: $BF

jr_074_697D:
    ccf                                           ; $697D: $3F
    sbc a                                         ; $697E: $9F

jr_074_697F:
    ccf                                           ; $697F: $3F
    ld e, a                                       ; $6980: $5F
    ccf                                           ; $6981: $3F
    ld e, a                                       ; $6982: $5F
    ccf                                           ; $6983: $3F
    rst $18                                       ; $6984: $DF
    cp a                                          ; $6985: $BF
    rst $18                                       ; $6986: $DF
    nop                                           ; $6987: $00
    rst $38                                       ; $6988: $FF
    inc c                                         ; $6989: $0C
    push af                                       ; $698A: $F5
    db $FC                                        ; $698B: $FC
    db $FD                                        ; $698C: $FD
    ld hl, sp-$07                                 ; $698D: $F8 $F9
    ld hl, sp-$06                                 ; $698F: $F8 $FA
    ld hl, sp-$06                                 ; $6991: $F8 $FA
    ld hl, sp-$05                                 ; $6993: $F8 $FB
    ld sp, hl                                     ; $6995: $F9
    ei                                            ; $6996: $FB
    ld bc, $FDFF                                  ; $6997: $01 $FF $FD
    rst $38                                       ; $699A: $FF
    dec b                                         ; $699B: $05
    rst $38                                       ; $699C: $FF
    dec b                                         ; $699D: $05
    rst $38                                       ; $699E: $FF
    dec b                                         ; $699F: $05
    rst $38                                       ; $69A0: $FF
    dec b                                         ; $69A1: $05
    rst $38                                       ; $69A2: $FF
    dec b                                         ; $69A3: $05
    rst $38                                       ; $69A4: $FF
    dec b                                         ; $69A5: $05
    rst $38                                       ; $69A6: $FF
    nop                                           ; $69A7: $00
    rst $38                                       ; $69A8: $FF
    nop                                           ; $69A9: $00
    cp $01                                        ; $69AA: $FE $01
    db $FD                                        ; $69AC: $FD
    inc bc                                        ; $69AD: $03
    ei                                            ; $69AE: $FB
    ld b, $F8                                     ; $69AF: $06 $F8
    ld b, $F9                                     ; $69B1: $06 $F9
    ld b, $F9                                     ; $69B3: $06 $F9
    ld b, $F9                                     ; $69B5: $06 $F9
    nop                                           ; $69B7: $00
    rst $38                                       ; $69B8: $FF

jr_074_69B9:
    nop                                           ; $69B9: $00
    ld a, a                                       ; $69BA: $7F
    add b                                         ; $69BB: $80
    ldh a, [rP1]                                  ; $69BC: $F0 $00
    ld a, a                                       ; $69BE: $7F
    ccf                                           ; $69BF: $3F
    rst $38                                       ; $69C0: $FF
    nop                                           ; $69C1: $00

jr_074_69C2:
    rst $38                                       ; $69C2: $FF
    rst $38                                       ; $69C3: $FF
    rst $38                                       ; $69C4: $FF
    nop                                           ; $69C5: $00
    rst $38                                       ; $69C6: $FF
    nop                                           ; $69C7: $00
    rst $38                                       ; $69C8: $FF
    nop                                           ; $69C9: $00
    rst $38                                       ; $69CA: $FF
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    rst $38                                       ; $69CE: $FF
    rst $38                                       ; $69CF: $FF
    rst $38                                       ; $69D0: $FF
    nop                                           ; $69D1: $00
    rst $38                                       ; $69D2: $FF
    rst $38                                       ; $69D3: $FF
    rst $38                                       ; $69D4: $FF
    nop                                           ; $69D5: $00
    rst $38                                       ; $69D6: $FF
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    cp $00                                        ; $69D9: $FE $00
    ld b, $00                                     ; $69DB: $06 $00
    or $F0                                        ; $69DD: $F6 $F0
    ld b, $00                                     ; $69DF: $06 $00
    ld b, $70                                     ; $69E1: $06 $70
    add [hl]                                      ; $69E3: $86
    ld [hl], b                                    ; $69E4: $70
    add [hl]                                      ; $69E5: $86
    ld [hl], b                                    ; $69E6: $70
    add [hl]                                      ; $69E7: $86
    ldh a, [$86]                                  ; $69E8: $F0 $86
    ldh a, [$86]                                  ; $69EA: $F0 $86
    ldh a, [$86]                                  ; $69EC: $F0 $86
    ldh a, [$86]                                  ; $69EE: $F0 $86
    ldh a, [$86]                                  ; $69F0: $F0 $86
    ldh a, [$86]                                  ; $69F2: $F0 $86
    ldh a, [$80]                                  ; $69F4: $F0 $80
    ldh a, [rP1]                                  ; $69F6: $F0 $00
    nop                                           ; $69F8: $00
    ld a, [hl]                                    ; $69F9: $7E
    nop                                           ; $69FA: $00
    ld h, b                                       ; $69FB: $60
    nop                                           ; $69FC: $00
    ld l, a                                       ; $69FD: $6F
    rrca                                          ; $69FE: $0F
    ld h, b                                       ; $69FF: $60
    nop                                           ; $6A00: $00
    ld l, h                                       ; $6A01: $6C
    inc c                                         ; $6A02: $0C
    ld l, a                                       ; $6A03: $6F
    rrca                                          ; $6A04: $0F
    ld l, [hl]                                    ; $6A05: $6E
    ld c, $6C                                     ; $6A06: $0E $6C
    inc c                                         ; $6A08: $0C
    ld l, h                                       ; $6A09: $6C
    inc c                                         ; $6A0A: $0C
    ld l, h                                       ; $6A0B: $6C
    inc c                                         ; $6A0C: $0C
    ld l, h                                       ; $6A0D: $6C
    inc c                                         ; $6A0E: $0C
    ld l, h                                       ; $6A0F: $6C
    inc c                                         ; $6A10: $0C
    ld l, h                                       ; $6A11: $6C
    inc c                                         ; $6A12: $0C
    ld l, h                                       ; $6A13: $6C
    inc c                                         ; $6A14: $0C
    inc c                                         ; $6A15: $0C
    inc c                                         ; $6A16: $0C
    rst $38                                       ; $6A17: $FF
    ldh a, [rIE]                                  ; $6A18: $F0 $FF
    ldh a, [rIF]                                  ; $6A1A: $F0 $0F
    rrca                                          ; $6A1C: $0F
    rrca                                          ; $6A1D: $0F
    rrca                                          ; $6A1E: $0F
    rst $38                                       ; $6A1F: $FF
    ldh a, [rIE]                                  ; $6A20: $F0 $FF
    ldh a, [rIF]                                  ; $6A22: $F0 $0F
    rrca                                          ; $6A24: $0F
    rrca                                          ; $6A25: $0F
    rrca                                          ; $6A26: $0F
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    cp $00                                        ; $6A29: $FE $00
    ld b, $00                                     ; $6A2B: $06 $00
    or $F0                                        ; $6A2D: $F6 $F0
    ld b, $00                                     ; $6A2F: $06 $00
    ld b, $70                                     ; $6A31: $06 $70
    add [hl]                                      ; $6A33: $86
    ld [hl], b                                    ; $6A34: $70
    add [hl]                                      ; $6A35: $86
    ld [hl], b                                    ; $6A36: $70
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    rst $38                                       ; $6A47: $FF
    rst $38                                       ; $6A48: $FF
    rst $38                                       ; $6A49: $FF
    rst $38                                       ; $6A4A: $FF
    rst $38                                       ; $6A4B: $FF
    rst $38                                       ; $6A4C: $FF
    rst $38                                       ; $6A4D: $FF
    rst $38                                       ; $6A4E: $FF
    rst $38                                       ; $6A4F: $FF
    rst $38                                       ; $6A50: $FF
    rst $38                                       ; $6A51: $FF
    rst $38                                       ; $6A52: $FF
    rst $38                                       ; $6A53: $FF
    rst $38                                       ; $6A54: $FF
    rst $38                                       ; $6A55: $FF
    rst $38                                       ; $6A56: $FF
    and b                                         ; $6A57: $A0
    ret nz                                        ; $6A58: $C0

    jr nz, @-$3E                                  ; $6A59: $20 $C0

    ld a, a                                       ; $6A5B: $7F
    add b                                         ; $6A5C: $80
    ld h, b                                       ; $6A5D: $60
    sbc a                                         ; $6A5E: $9F
    nop                                           ; $6A5F: $00
    db $FD                                        ; $6A60: $FD
    ld [hl], b                                    ; $6A61: $70
    pop af                                        ; $6A62: $F1
    nop                                           ; $6A63: $00
    adc a                                         ; $6A64: $8F
    nop                                           ; $6A65: $00
    rst $38                                       ; $6A66: $FF
    ld a, a                                       ; $6A67: $7F
    and e                                         ; $6A68: $A3
    ld a, a                                       ; $6A69: $7F
    and e                                         ; $6A6A: $A3
    ld a, a                                       ; $6A6B: $7F
    and e                                         ; $6A6C: $A3
    ld a, a                                       ; $6A6D: $7F
    and e                                         ; $6A6E: $A3
    ld a, a                                       ; $6A6F: $7F
    and e                                         ; $6A70: $A3
    ld a, a                                       ; $6A71: $7F
    and e                                         ; $6A72: $A3
    ld a, a                                       ; $6A73: $7F
    and b                                         ; $6A74: $A0
    ld a, a                                       ; $6A75: $7F
    and b                                         ; $6A76: $A0
    cp a                                          ; $6A77: $BF
    rst $18                                       ; $6A78: $DF
    ccf                                           ; $6A79: $3F
    rst $38                                       ; $6A7A: $FF
    ld [hl], b                                    ; $6A7B: $70
    or b                                          ; $6A7C: $B0
    ld [hl], b                                    ; $6A7D: $70
    or a                                          ; $6A7E: $B7
    nop                                           ; $6A7F: $00
    add l                                         ; $6A80: $85
    nop                                           ; $6A81: $00
    ld sp, hl                                     ; $6A82: $F9
    nop                                           ; $6A83: $00
    adc a                                         ; $6A84: $8F
    nop                                           ; $6A85: $00
    rst $38                                       ; $6A86: $FF
    ld sp, hl                                     ; $6A87: $F9
    ei                                            ; $6A88: $FB
    ld hl, sp-$05                                 ; $6A89: $F8 $FB
    inc c                                         ; $6A8B: $0C
    dec b                                         ; $6A8C: $05
    inc c                                         ; $6A8D: $0C
    push hl                                       ; $6A8E: $E5
    nop                                           ; $6A8F: $00
    and c                                         ; $6A90: $A1
    nop                                           ; $6A91: $00
    sbc a                                         ; $6A92: $9F
    nop                                           ; $6A93: $00
    pop af                                        ; $6A94: $F1
    nop                                           ; $6A95: $00
    rst $38                                       ; $6A96: $FF
    rst $38                                       ; $6A97: $FF
    dec b                                         ; $6A98: $05
    rst $38                                       ; $6A99: $FF
    dec b                                         ; $6A9A: $05
    rst $38                                       ; $6A9B: $FF
    db $FD                                        ; $6A9C: $FD
    rst $38                                       ; $6A9D: $FF
    ld bc, $0101                                  ; $6A9E: $01 $01 $01
    ld bc, $0101                                  ; $6AA1: $01 $01 $01
    ld bc, $FFFF                                  ; $6AA4: $01 $FF $FF
    ld bc, $01FF                                  ; $6AA7: $01 $FF $01
    rst $38                                       ; $6AAA: $FF
    rst $38                                       ; $6AAB: $FF
    ld bc, $FFFF                                  ; $6AAC: $01 $FF $FF
    ld d, $16                                     ; $6AAF: $16 $16
    jr jr_074_6ACB                                ; $6AB1: $18 $18

    ld [hl], b                                    ; $6AB3: $70
    ld [hl], b                                    ; $6AB4: $70
    ldh [$E0], a                                  ; $6AB5: $E0 $E0
    nop                                           ; $6AB7: $00
    rst $38                                       ; $6AB8: $FF
    nop                                           ; $6AB9: $00
    rst $38                                       ; $6ABA: $FF
    rst $38                                       ; $6ABB: $FF
    nop                                           ; $6ABC: $00
    rst $38                                       ; $6ABD: $FF
    rst $38                                       ; $6ABE: $FF
    jr nz, jr_074_6AE1                            ; $6ABF: $20 $20

    db $10                                        ; $6AC1: $10
    db $10                                        ; $6AC2: $10
    ld [$0608], sp                                ; $6AC3: $08 $08 $06
    ld b, $00                                     ; $6AC6: $06 $00
    rst $38                                       ; $6AC8: $FF
    nop                                           ; $6AC9: $00
    rst $38                                       ; $6ACA: $FF

jr_074_6ACB:
    rst $38                                       ; $6ACB: $FF
    nop                                           ; $6ACC: $00
    rst $38                                       ; $6ACD: $FF
    rst $38                                       ; $6ACE: $FF
    ld d, $16                                     ; $6ACF: $16 $16
    jr @+$1A                                      ; $6AD1: $18 $18

    ld [hl], b                                    ; $6AD3: $70
    ld [hl], b                                    ; $6AD4: $70
    ldh [$E0], a                                  ; $6AD5: $E0 $E0
    add [hl]                                      ; $6AD7: $86
    ld [hl], b                                    ; $6AD8: $70
    or $00                                        ; $6AD9: $F6 $00
    ld b, $F0                                     ; $6ADB: $06 $F0
    or $F0                                        ; $6ADD: $F6 $F0
    ld b, $00                                     ; $6ADF: $06 $00

jr_074_6AE1:
    or $F0                                        ; $6AE1: $F6 $F0
    add [hl]                                      ; $6AE3: $86
    ldh a, [$86]                                  ; $6AE4: $F0 $86
    ldh a, [$86]                                  ; $6AE6: $F0 $86
    or $86                                        ; $6AE8: $F6 $86
    or $06                                        ; $6AEA: $F6 $06
    ld b, $F6                                     ; $6AEC: $06 $F6
    ld b, $06                                     ; $6AEE: $06 $06
    or $F6                                        ; $6AF0: $F6 $F6
    or $06                                        ; $6AF2: $F6 $06
    ld b, $00                                     ; $6AF4: $06 $00
    nop                                           ; $6AF6: $00
    ld l, [hl]                                    ; $6AF7: $6E
    ld c, $62                                     ; $6AF8: $0E $62
    ld c, $6E                                     ; $6AFA: $0E $6E
    ld c, $60                                     ; $6AFC: $0E $60
    nop                                           ; $6AFE: $00
    ld h, b                                       ; $6AFF: $60
    nop                                           ; $6B00: $00
    ld l, h                                       ; $6B01: $6C
    inc c                                         ; $6B02: $0C
    ld l, h                                       ; $6B03: $6C
    inc c                                         ; $6B04: $0C
    ld l, h                                       ; $6B05: $6C
    inc c                                         ; $6B06: $0C
    ld l, h                                       ; $6B07: $6C
    ld l, h                                       ; $6B08: $6C
    ld h, b                                       ; $6B09: $60
    ld h, b                                       ; $6B0A: $60
    ld h, b                                       ; $6B0B: $60
    ld l, [hl]                                    ; $6B0C: $6E

Call_074_6B0D:
    ld h, b                                       ; $6B0D: $60
    ld l, [hl]                                    ; $6B0E: $6E
    ld l, [hl]                                    ; $6B0F: $6E
    ld l, [hl]                                    ; $6B10: $6E
    ld l, [hl]                                    ; $6B11: $6E
    ld l, [hl]                                    ; $6B12: $6E
    ld h, b                                       ; $6B13: $60
    ld h, b                                       ; $6B14: $60
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    rst $38                                       ; $6B17: $FF
    nop                                           ; $6B18: $00
    rst $38                                       ; $6B19: $FF
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    rst $38                                       ; $6B1C: $FF
    nop                                           ; $6B1D: $00
    rst $38                                       ; $6B1E: $FF
    rst $38                                       ; $6B1F: $FF
    nop                                           ; $6B20: $00
    rst $38                                       ; $6B21: $FF
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    rst $38                                       ; $6B24: $FF
    nop                                           ; $6B25: $00
    rst $38                                       ; $6B26: $FF
    add hl, bc                                    ; $6B27: $09
    adc c                                         ; $6B28: $89
    add hl, bc                                    ; $6B29: $09
    ld sp, hl                                     ; $6B2A: $F9
    add hl, bc                                    ; $6B2B: $09
    add hl, bc                                    ; $6B2C: $09
    add hl, bc                                    ; $6B2D: $09
    ld sp, hl                                     ; $6B2E: $F9
    ld a, c                                       ; $6B2F: $79
    add hl, bc                                    ; $6B30: $09
    adc c                                         ; $6B31: $89
    ld sp, hl                                     ; $6B32: $F9
    jp hl                                         ; $6B33: $E9


    add hl, bc                                    ; $6B34: $09
    ld sp, hl                                     ; $6B35: $F9
    add hl, bc                                    ; $6B36: $09
    nop                                           ; $6B37: $00
    rst $38                                       ; $6B38: $FF
    nop                                           ; $6B39: $00
    rst $38                                       ; $6B3A: $FF
    nop                                           ; $6B3B: $00
    rst $38                                       ; $6B3C: $FF
    nop                                           ; $6B3D: $00
    rst $38                                       ; $6B3E: $FF
    nop                                           ; $6B3F: $00
    rst $38                                       ; $6B40: $FF
    nop                                           ; $6B41: $00
    rst $38                                       ; $6B42: $FF
    nop                                           ; $6B43: $00
    rst $38                                       ; $6B44: $FF
    nop                                           ; $6B45: $00
    rst $38                                       ; $6B46: $FF
    rst $38                                       ; $6B47: $FF
    nop                                           ; $6B48: $00
    rst $38                                       ; $6B49: $FF
    nop                                           ; $6B4A: $00
    rst $38                                       ; $6B4B: $FF
    nop                                           ; $6B4C: $00
    rst $38                                       ; $6B4D: $FF
    nop                                           ; $6B4E: $00
    rst $38                                       ; $6B4F: $FF
    nop                                           ; $6B50: $00
    rst $38                                       ; $6B51: $FF
    nop                                           ; $6B52: $00
    rst $38                                       ; $6B53: $FF
    nop                                           ; $6B54: $00
    rst $38                                       ; $6B55: $FF
    nop                                           ; $6B56: $00
    rst $38                                       ; $6B57: $FF
    db $FD                                        ; $6B58: $FD
    rst $38                                       ; $6B59: $FF
    rst $38                                       ; $6B5A: $FF
    rst $38                                       ; $6B5B: $FF
    pop af                                        ; $6B5C: $F1
    rst $38                                       ; $6B5D: $FF
    pop af                                        ; $6B5E: $F1
    rst $38                                       ; $6B5F: $FF
    push af                                       ; $6B60: $F5
    rst $38                                       ; $6B61: $FF
    di                                            ; $6B62: $F3
    rst $38                                       ; $6B63: $FF
    pop af                                        ; $6B64: $F1
    rst $38                                       ; $6B65: $FF
    pop af                                        ; $6B66: $F1
    rst $38                                       ; $6B67: $FF
    rst $38                                       ; $6B68: $FF
    rst $38                                       ; $6B69: $FF
    rst $38                                       ; $6B6A: $FF
    ld sp, hl                                     ; $6B6B: $F9
    rst $38                                       ; $6B6C: $FF
    sbc b                                         ; $6B6D: $98
    rst $38                                       ; $6B6E: $FF
    cp a                                          ; $6B6F: $BF
    rst $38                                       ; $6B70: $FF
    cp a                                          ; $6B71: $BF
    rst $38                                       ; $6B72: $FF
    cp a                                          ; $6B73: $BF
    rst $38                                       ; $6B74: $FF
    add b                                         ; $6B75: $80
    rst $38                                       ; $6B76: $FF
    rst $38                                       ; $6B77: $FF
    rst $38                                       ; $6B78: $FF
    dec sp                                        ; $6B79: $3B
    rst $38                                       ; $6B7A: $FF
    dec sp                                        ; $6B7B: $3B
    rst $38                                       ; $6B7C: $FF
    dec sp                                        ; $6B7D: $3B
    rst $38                                       ; $6B7E: $FF
    rst $38                                       ; $6B7F: $FF
    rst $38                                       ; $6B80: $FF
    cp $FF                                        ; $6B81: $FE $FF
    cp $FF                                        ; $6B83: $FE $FF
    ld b, $FF                                     ; $6B85: $06 $FF
    rst $38                                       ; $6B87: $FF
    db $FC                                        ; $6B88: $FC
    rst $38                                       ; $6B89: $FF
    db $FC                                        ; $6B8A: $FC
    rst $30                                       ; $6B8B: $F7
    db $FD                                        ; $6B8C: $FD
    rst $38                                       ; $6B8D: $FF
    cp $F7                                        ; $6B8E: $FE $F7
    db $FC                                        ; $6B90: $FC
    rst $30                                       ; $6B91: $F7
    db $FC                                        ; $6B92: $FC
    rst $20                                       ; $6B93: $E7
    db $FC                                        ; $6B94: $FC
    rst $20                                       ; $6B95: $E7
    db $FC                                        ; $6B96: $FC
    dec sp                                        ; $6B97: $3B
    jp $E414                                      ; $6B98: $C3 $14 $E4


    ld [$00E8], sp                                ; $6B9B: $08 $E8 $00
    ldh [$09], a                                  ; $6B9E: $E0 $09
    ld hl, sp+$07                                 ; $6BA0: $F8 $07
    ldh a, [rTAC]                                 ; $6BA2: $F0 $07
    ld hl, sp+$03                                 ; $6BA4: $F8 $03
    db $FC                                        ; $6BA6: $FC
    or $F0                                        ; $6BA7: $F6 $F0
    ei                                            ; $6BA9: $FB
    ld hl, sp+$3F                                 ; $6BAA: $F8 $3F
    inc a                                         ; $6BAC: $3C
    inc e                                         ; $6BAD: $1C
    add hl, de                                    ; $6BAE: $19
    sbc $11                                       ; $6BAF: $DE $11

jr_074_6BB1:
    ret c                                         ; $6BB1: $D8

    inc bc                                        ; $6BB2: $03
    ld hl, sp+$07                                 ; $6BB3: $F8 $07
    ldh a, [rIF]                                  ; $6BB5: $F0 $0F
    rst $38                                       ; $6BB7: $FF
    ccf                                           ; $6BB8: $3F
    rst $38                                       ; $6BB9: $FF
    ld e, $FF                                     ; $6BBA: $1E $FF
    ld c, $FE                                     ; $6BBC: $0E $FE
    dec b                                         ; $6BBE: $05
    ld a, [hl]                                    ; $6BBF: $7E
    add c                                         ; $6BC0: $81
    inc a                                         ; $6BC1: $3C
    jp $DF20                                      ; $6BC2: $C3 $20 $DF


    nop                                           ; $6BC5: $00
    rst $38                                       ; $6BC6: $FF
    ldh a, [rSB]                                  ; $6BC7: $F0 $01
    ld hl, sp+$03                                 ; $6BC9: $F8 $03
    jr @-$17                                      ; $6BCB: $18 $E7

    ld [$00F7], sp                                ; $6BCD: $08 $F7 $00
    rst $38                                       ; $6BD0: $FF
    nop                                           ; $6BD1: $00
    rst $38                                       ; $6BD2: $FF
    nop                                           ; $6BD3: $00
    rst $38                                       ; $6BD4: $FF
    nop                                           ; $6BD5: $00
    rst $38                                       ; $6BD6: $FF
    rst $38                                       ; $6BD7: $FF
    db $FD                                        ; $6BD8: $FD
    rst $30                                       ; $6BD9: $F7
    db $FD                                        ; $6BDA: $FD
    di                                            ; $6BDB: $F3
    rst $38                                       ; $6BDC: $FF
    pop af                                        ; $6BDD: $F1
    rst $38                                       ; $6BDE: $FF
    ldh a, [rIE]                                  ; $6BDF: $F0 $FF
    ldh a, [rIE]                                  ; $6BE1: $F0 $FF
    ldh a, [rIE]                                  ; $6BE3: $F0 $FF
    ldh a, [rIE]                                  ; $6BE5: $F0 $FF
    ldh [rIE], a                                  ; $6BE7: $E0 $FF
    ldh [rIE], a                                  ; $6BE9: $E0 $FF
    pop hl                                        ; $6BEB: $E1
    rst $38                                       ; $6BEC: $FF
    rst $20                                       ; $6BED: $E7
    cp $EF                                        ; $6BEE: $FE $EF
    ld sp, hl                                     ; $6BF0: $F9
    rst $30                                       ; $6BF1: $F7
    di                                            ; $6BF2: $F3
    xor $E6                                       ; $6BF3: $EE $E6
    jp c, $03CE                                   ; $6BF5: $DA $CE $03

    rst $38                                       ; $6BF8: $FF
    dec bc                                        ; $6BF9: $0B
    rst $38                                       ; $6BFA: $FF
    inc a                                         ; $6BFB: $3C
    ei                                            ; $6BFC: $FB
    db $F4                                        ; $6BFD: $F4
    rst $08                                       ; $6BFE: $CF
    and a                                         ; $6BFF: $A7
    sbc d                                         ; $6C00: $9A
    ld a, a                                       ; $6C01: $7F
    ld bc, $03FD                                  ; $6C02: $01 $FD $03
    ei                                            ; $6C05: $FB
    rlca                                          ; $6C06: $07
    rst $20                                       ; $6C07: $E7
    db $FC                                        ; $6C08: $FC
    rst $20                                       ; $6C09: $E7
    ld a, h                                       ; $6C0A: $7C
    ld h, a                                       ; $6C0B: $67
    db $FC                                        ; $6C0C: $FC
    scf                                           ; $6C0D: $37
    db $FC                                        ; $6C0E: $FC
    rla                                           ; $6C0F: $17
    db $FC                                        ; $6C10: $FC
    rst $38                                       ; $6C11: $FF
    db $FC                                        ; $6C12: $FC
    rst $38                                       ; $6C13: $FF
    db $FC                                        ; $6C14: $FC
    rst $38                                       ; $6C15: $FF
    cp $1F                                        ; $6C16: $FE $1F
    jr nc, jr_074_6BB1                            ; $6C18: $30 $97

    cp b                                          ; $6C1A: $B8
    sbc e                                         ; $6C1B: $9B
    sbc [hl]                                      ; $6C1C: $9E
    ld a, a                                       ; $6C1D: $7F
    di                                            ; $6C1E: $F3
    ld l, [hl]                                    ; $6C1F: $6E
    rst $20                                       ; $6C20: $E7
    ld h, d                                       ; $6C21: $62
    db $E3                                        ; $6C22: $E3
    ld l, a                                       ; $6C23: $6F
    rst $28                                       ; $6C24: $EF
    ld a, a                                       ; $6C25: $7F
    cp $E7                                        ; $6C26: $FE $E7
    ld a, a                                       ; $6C28: $7F
    and l                                         ; $6C29: $A5
    ld a, a                                       ; $6C2A: $7F
    push hl                                       ; $6C2B: $E5
    ccf                                           ; $6C2C: $3F
    and l                                         ; $6C2D: $A5
    cp a                                          ; $6C2E: $BF
    push hl                                       ; $6C2F: $E5
    rst $38                                       ; $6C30: $FF
    push hl                                       ; $6C31: $E5
    cp a                                          ; $6C32: $BF
    push hl                                       ; $6C33: $E5
    ccf                                           ; $6C34: $3F
    db $FD                                        ; $6C35: $FD
    rra                                           ; $6C36: $1F
    ld bc, $6501                                  ; $6C37: $01 $01 $65
    ld bc, $6488                                  ; $6C3A: $01 $88 $64
    db $10                                        ; $6C3D: $10
    db $EC                                        ; $6C3E: $EC
    nop                                           ; $6C3F: $00
    db $FC                                        ; $6C40: $FC
    ld a, d                                       ; $6C41: $7A
    db $FC                                        ; $6C42: $FC
    db $F4                                        ; $6C43: $F4
    ld hl, sp-$80                                 ; $6C44: $F8 $80
    ld hl, sp+$00                                 ; $6C46: $F8 $00
    rst $38                                       ; $6C48: $FF
    nop                                           ; $6C49: $00
    rst $38                                       ; $6C4A: $FF
    nop                                           ; $6C4B: $00
    rst $38                                       ; $6C4C: $FF
    ld hl, sp-$01                                 ; $6C4D: $F8 $FF
    ret nz                                        ; $6C4F: $C0

    rst $38                                       ; $6C50: $FF
    add b                                         ; $6C51: $80
    rst $38                                       ; $6C52: $FF
    or b                                          ; $6C53: $B0
    rst $38                                       ; $6C54: $FF
    rst $38                                       ; $6C55: $FF
    rst $38                                       ; $6C56: $FF
    rst $38                                       ; $6C57: $FF
    pop af                                        ; $6C58: $F1
    rst $38                                       ; $6C59: $FF
    pop af                                        ; $6C5A: $F1
    rst $38                                       ; $6C5B: $FF
    ld sp, hl                                     ; $6C5C: $F9
    rst $38                                       ; $6C5D: $FF
    db $FD                                        ; $6C5E: $FD
    rst $30                                       ; $6C5F: $F7
    rst $30                                       ; $6C60: $F7
    rst $30                                       ; $6C61: $F7
    pop af                                        ; $6C62: $F1

jr_074_6C63:
    rst $30                                       ; $6C63: $F7
    pop af                                        ; $6C64: $F1
    rst $30                                       ; $6C65: $F7
    pop af                                        ; $6C66: $F1
    inc c                                         ; $6C67: $0C
    db $FC                                        ; $6C68: $FC
    jr c, jr_074_6C63                             ; $6C69: $38 $F8

    ldh [$E0], a                                  ; $6C6B: $E0 $E0
    ret nz                                        ; $6C6D: $C0

    add b                                         ; $6C6E: $80
    ret nz                                        ; $6C6F: $C0

    add b                                         ; $6C70: $80
    ret nz                                        ; $6C71: $C0

    add b                                         ; $6C72: $80
    ret nz                                        ; $6C73: $C0

    add b                                         ; $6C74: $80
    ret nz                                        ; $6C75: $C0

    add b                                         ; $6C76: $80
    ld b, $FF                                     ; $6C77: $06 $FF
    nop                                           ; $6C79: $00
    rst $38                                       ; $6C7A: $FF
    nop                                           ; $6C7B: $00
    rst $38                                       ; $6C7C: $FF
    nop                                           ; $6C7D: $00
    rst $38                                       ; $6C7E: $FF
    rst $38                                       ; $6C7F: $FF
    rst $38                                       ; $6C80: $FF
    nop                                           ; $6C81: $00
    rst $38                                       ; $6C82: $FF
    rst $38                                       ; $6C83: $FF
    rst $38                                       ; $6C84: $FF
    rst $38                                       ; $6C85: $FF
    rst $38                                       ; $6C86: $FF
    and a                                         ; $6C87: $A7
    db $FC                                        ; $6C88: $FC
    and a                                         ; $6C89: $A7
    db $FC                                        ; $6C8A: $FC
    and a                                         ; $6C8B: $A7
    db $FC                                        ; $6C8C: $FC
    and a                                         ; $6C8D: $A7
    db $FC                                        ; $6C8E: $FC
    rst $38                                       ; $6C8F: $FF
    cp $A7                                        ; $6C90: $FE $A7
    db $FD                                        ; $6C92: $FD
    rst $20                                       ; $6C93: $E7
    db $FC                                        ; $6C94: $FC
    rst $20                                       ; $6C95: $E7
    db $FC                                        ; $6C96: $FC
    ld b, a                                       ; $6C97: $47
    ld b, a                                       ; $6C98: $47
    ld de, $1CD1                                  ; $6C99: $11 $D1 $1C
    ld e, h                                       ; $6C9C: $5C
    ld e, $FE                                     ; $6C9D: $1E $FE
    ld e, $FE                                     ; $6C9F: $1E $FE
    ld e, $E6                                     ; $6CA1: $1E $E6
    ld e, $60                                     ; $6CA3: $1E $60
    ld e, $60                                     ; $6CA5: $1E $60
    rst $38                                       ; $6CA7: $FF
    inc bc                                        ; $6CA8: $03
    rst $38                                       ; $6CA9: $FF
    rlca                                          ; $6CAA: $07
    cp a                                          ; $6CAB: $BF
    rst $08                                       ; $6CAC: $CF
    rst $38                                       ; $6CAD: $FF
    rst $38                                       ; $6CAE: $FF
    ld a, [hl]                                    ; $6CAF: $7E
    ccf                                           ; $6CB0: $3F
    ld a, [hl]                                    ; $6CB1: $7E
    rlca                                          ; $6CB2: $07
    ld a, [hl]                                    ; $6CB3: $7E
    rlca                                          ; $6CB4: $07
    ld a, [hl]                                    ; $6CB5: $7E
    ld bc, $FFFF                                  ; $6CB6: $01 $FF $FF
    rst $38                                       ; $6CB9: $FF
    rst $38                                       ; $6CBA: $FF
    rst $38                                       ; $6CBB: $FF
    rst $38                                       ; $6CBC: $FF
    rst $38                                       ; $6CBD: $FF
    rst $38                                       ; $6CBE: $FF
    or $F6                                        ; $6CBF: $F6 $F6
    ld a, [c]                                     ; $6CC1: $F2
    ldh a, [$E2]                                  ; $6CC2: $F0 $E2
    ldh [$E3], a                                  ; $6CC4: $E0 $E3
    pop hl                                        ; $6CC6: $E1
    halt                                          ; $6CC7: $76
    dec c                                         ; $6CC8: $0D
    halt                                          ; $6CC9: $76
    dec c                                         ; $6CCA: $0D
    halt                                          ; $6CCB: $76
    dec c                                         ; $6CCC: $0D
    ld [hl], h                                    ; $6CCD: $74
    rrca                                          ; $6CCE: $0F
    ld a, h                                       ; $6CCF: $7C
    rrca                                          ; $6CD0: $0F
    ld a, [hl]                                    ; $6CD1: $7E
    rrca                                          ; $6CD2: $0F

Jump_074_6CD3:
    ld a, a                                       ; $6CD3: $7F
    rra                                           ; $6CD4: $1F
    jr @+$49                                      ; $6CD5: $18 $47

    rlca                                          ; $6CD7: $07
    rlca                                          ; $6CD8: $07
    rrca                                          ; $6CD9: $0F
    rrca                                          ; $6CDA: $0F
    ld b, $06                                     ; $6CDB: $06 $06
    rlca                                          ; $6CDD: $07
    rlca                                          ; $6CDE: $07
    ld [bc], a                                    ; $6CDF: $02
    ld [bc], a                                    ; $6CE0: $02
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    ld h, $40                                     ; $6CE3: $26 $40
    dec a                                         ; $6CE5: $3D
    pop bc                                        ; $6CE6: $C1
    or c                                          ; $6CE7: $B1
    sbc h                                         ; $6CE8: $9C
    ld [c], a                                     ; $6CE9: $E2
    cp [hl]                                       ; $6CEA: $BE
    rst $28                                       ; $6CEB: $EF
    ldh [$DF], a                                  ; $6CEC: $E0 $DF
    ret nz                                        ; $6CEE: $C0

    adc a                                         ; $6CEF: $8F
    or b                                          ; $6CF0: $B0
    ldh a, [$7F]                                  ; $6CF1: $F0 $7F
    rst $38                                       ; $6CF3: $FF
    rst $38                                       ; $6CF4: $FF
    rst $38                                       ; $6CF5: $FF
    dec a                                         ; $6CF6: $3D
    rst $30                                       ; $6CF7: $F7
    rrca                                          ; $6CF8: $0F
    ld l, [hl]                                    ; $6CF9: $6E
    rra                                           ; $6CFA: $1F
    sbc l                                         ; $6CFB: $9D
    sbc [hl]                                      ; $6CFC: $9E
    rst $18                                       ; $6CFD: $DF
    inc a                                         ; $6CFE: $3C
    and a                                         ; $6CFF: $A7
    ld a, h                                       ; $6D00: $7C
    ld e, a                                       ; $6D01: $5F
    ld [c], a                                     ; $6D02: $E2
    rst $38                                       ; $6D03: $FF
    pop bc                                        ; $6D04: $C1
    rst $38                                       ; $6D05: $FF
    add b                                         ; $6D06: $80
    pop bc                                        ; $6D07: $C1
    pop bc                                        ; $6D08: $C1
    ld [c], a                                     ; $6D09: $E2
    ld [c], a                                     ; $6D0A: $E2
    ld a, [c]                                     ; $6D0B: $F2
    ld a, [c]                                     ; $6D0C: $F2
    db $E3                                        ; $6D0D: $E3
    db $E3                                        ; $6D0E: $E3
    jp nz, $C2C2                                  ; $6D0F: $C2 $C2 $C2

    jp nz, $8090                                  ; $6D12: $C2 $90 $80

    ld [hl], b                                    ; $6D15: $70
    ld bc, $FF7E                                  ; $6D16: $01 $7E $FF
    ld a, [hl]                                    ; $6D19: $7E
    rst $30                                       ; $6D1A: $F7
    ld e, a                                       ; $6D1B: $5F
    call $993F                                    ; $6D1C: $CD $3F $99
    cp a                                          ; $6D1F: $BF
    add c                                         ; $6D20: $81
    ld a, $81                                     ; $6D21: $3E $81
    cp [hl]                                       ; $6D23: $BE
    ld bc, $01BE                                  ; $6D24: $01 $BE $01
    cp $00                                        ; $6D27: $FE $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    rst $38                                       ; $6D2B: $FF
    nop                                           ; $6D2C: $00
    xor [hl]                                      ; $6D2D: $AE
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    rst $38                                       ; $6D37: $FF
    rst $38                                       ; $6D38: $FF
    rst $38                                       ; $6D39: $FF
    rst $38                                       ; $6D3A: $FF
    rst $38                                       ; $6D3B: $FF
    rst $38                                       ; $6D3C: $FF
    rst $38                                       ; $6D3D: $FF
    rst $38                                       ; $6D3E: $FF
    rst $38                                       ; $6D3F: $FF
    inc bc                                        ; $6D40: $03
    rst $38                                       ; $6D41: $FF
    inc bc                                        ; $6D42: $03
    rst $38                                       ; $6D43: $FF
    rst $38                                       ; $6D44: $FF
    rst $38                                       ; $6D45: $FF
    rst $38                                       ; $6D46: $FF
    ld a, a                                       ; $6D47: $7F
    add b                                         ; $6D48: $80
    ld a, a                                       ; $6D49: $7F
    add b                                         ; $6D4A: $80
    ld a, a                                       ; $6D4B: $7F
    add b                                         ; $6D4C: $80
    ld a, a                                       ; $6D4D: $7F
    add b                                         ; $6D4E: $80
    ld a, a                                       ; $6D4F: $7F
    add b                                         ; $6D50: $80
    nop                                           ; $6D51: $00
    rst $38                                       ; $6D52: $FF
    nop                                           ; $6D53: $00
    rst $38                                       ; $6D54: $FF
    nop                                           ; $6D55: $00
    rst $38                                       ; $6D56: $FF
    inc hl                                        ; $6D57: $23
    ld e, b                                       ; $6D58: $58
    ld d, c                                       ; $6D59: $51
    jr nz, jr_074_6D60                            ; $6D5A: $20 $04

    nop                                           ; $6D5C: $00
    xor e                                         ; $6D5D: $AB
    inc b                                         ; $6D5E: $04
    ld l, b                                       ; $6D5F: $68

jr_074_6D60:
    sub d                                         ; $6D60: $92
    sub h                                         ; $6D61: $94
    ld c, b                                       ; $6D62: $48
    ld c, d                                       ; $6D63: $4A
    inc h                                         ; $6D64: $24
    add c                                         ; $6D65: $81
    db $10                                        ; $6D66: $10
    ret z                                         ; $6D67: $C8

    inc d                                         ; $6D68: $14
    cp d                                          ; $6D69: $BA
    nop                                           ; $6D6A: $00
    ld bc, $5504                                  ; $6D6B: $01 $04 $55
    ld [bc], a                                    ; $6D6E: $02
    xor b                                         ; $6D6F: $A8
    ld b, e                                       ; $6D70: $43
    ld d, $A0                                     ; $6D71: $16 $A0
    jr nz, @+$52                                  ; $6D73: $20 $50

    ld a, [de]                                    ; $6D75: $1A
    nop                                           ; $6D76: $00
    ld [hl], b                                    ; $6D77: $70
    ld [$A408], sp                                ; $6D78: $08 $08 $A4
    ret nz                                        ; $6D7B: $C0

    jr nz, jr_074_6DAE                            ; $6D7C: $20 $30

    nop                                           ; $6D7E: $00
    add b                                         ; $6D7F: $80
    nop                                           ; $6D80: $00
    ld d, b                                       ; $6D81: $50
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    ld d, h                                       ; $6D87: $54
    and d                                         ; $6D88: $A2
    ldh [rDIV], a                                 ; $6D89: $E0 $04
    nop                                           ; $6D8B: $00
    db $10                                        ; $6D8C: $10
    inc b                                         ; $6D8D: $04
    ld h, b                                       ; $6D8E: $60
    sub b                                         ; $6D8F: $90

jr_074_6D90:
    ld b, h                                       ; $6D90: $44
    ld d, d                                       ; $6D91: $52

jr_074_6D92:
    nop                                           ; $6D92: $00
    adc h                                         ; $6D93: $8C

jr_074_6D94:
    stop                                          ; $6D94: $10 $00

jr_074_6D96:
    jr z, jr_074_6D98                             ; $6D96: $28 $00

jr_074_6D98:
    nop                                           ; $6D98: $00
    ld d, b                                       ; $6D99: $50
    ld h, e                                       ; $6D9A: $63
    xor d                                         ; $6D9B: $AA
    ld e, c                                       ; $6D9C: $59
    db $DB                                        ; $6D9D: $DB
    jr nz, @+$73                                  ; $6D9E: $20 $71

    nop                                           ; $6DA0: $00
    adc d                                         ; $6DA1: $8A
    nop                                           ; $6DA2: $00
    ld sp, $2077                                  ; $6DA3: $31 $77 $20
    db $DB                                        ; $6DA6: $DB
    jp z, $BC14                                   ; $6DA7: $CA $14 $BC

    nop                                           ; $6DAA: $00
    ld b, b                                       ; $6DAB: $40
    nop                                           ; $6DAC: $00
    ld l, [hl]                                    ; $6DAD: $6E

jr_074_6DAE:
    inc c                                         ; $6DAE: $0C
    ld bc, $909E                                  ; $6DAF: $01 $9E $90
    ld c, a                                       ; $6DB2: $4F
    cpl                                           ; $6DB3: $2F
    nop                                           ; $6DB4: $00
    ld b, $00                                     ; $6DB5: $06 $00
    inc h                                         ; $6DB7: $24
    ld bc, $2310                                  ; $6DB8: $01 $10 $23
    ld a, [hl+]                                   ; $6DBB: $2A
    ld e, c                                       ; $6DBC: $59
    ld e, e                                       ; $6DBD: $5B
    jr nz, jr_074_6E31                            ; $6DBE: $20 $71

    nop                                           ; $6DC0: $00
    adc d                                         ; $6DC1: $8A
    nop                                           ; $6DC2: $00
    ld sp, $2077                                  ; $6DC3: $31 $77 $20
    db $DB                                        ; $6DC6: $DB
    nop                                           ; $6DC7: $00
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    add b                                         ; $6DCA: $80
    ret nz                                        ; $6DCB: $C0

    nop                                           ; $6DCC: $00
    sub [hl]                                      ; $6DCD: $96
    ld c, $29                                     ; $6DCE: $0E $29
    ld d, $9E                                     ; $6DD0: $16 $9E
    add b                                         ; $6DD2: $80
    add c                                         ; $6DD3: $81
    ld h, b                                       ; $6DD4: $60
    ld b, h                                       ; $6DD5: $44
    adc h                                         ; $6DD6: $8C
    ret nz                                        ; $6DD7: $C0

    nop                                           ; $6DD8: $00
    ld b, b                                       ; $6DD9: $40
    jr nc, jr_074_6DDC                            ; $6DDA: $30 $00

jr_074_6DDC:
    ld [$3070], sp                                ; $6DDC: $08 $70 $30
    add b                                         ; $6DDF: $80
    ld a, b                                       ; $6DE0: $78
    ld [$F4F0], sp                                ; $6DE1: $08 $F0 $F4
    nop                                           ; $6DE4: $00
    ld c, $00                                     ; $6DE5: $0E $00
    rlca                                          ; $6DE7: $07
    rlca                                          ; $6DE8: $07
    rrca                                          ; $6DE9: $0F
    rrca                                          ; $6DEA: $0F
    ccf                                           ; $6DEB: $3F
    ccf                                           ; $6DEC: $3F
    ld a, a                                       ; $6DED: $7F
    ld a, a                                       ; $6DEE: $7F
    rst $38                                       ; $6DEF: $FF
    rst $38                                       ; $6DF0: $FF
    rst $38                                       ; $6DF1: $FF
    rst $38                                       ; $6DF2: $FF
    rst $38                                       ; $6DF3: $FF
    rst $38                                       ; $6DF4: $FF
    rst $38                                       ; $6DF5: $FF
    rst $38                                       ; $6DF6: $FF
    pop af                                        ; $6DF7: $F1
    pop af                                        ; $6DF8: $F1
    add b                                         ; $6DF9: $80
    adc h                                         ; $6DFA: $8C
    jr nz, jr_074_6E49                            ; $6DFB: $20 $4C

    jr nz, jr_074_6E4B                            ; $6DFD: $20 $4C

    jr nz, jr_074_6E4D                            ; $6DFF: $20 $4C

    jr nz, jr_074_6E4F                            ; $6E01: $20 $4C

    jr nz, jr_074_6E51                            ; $6E03: $20 $4C

    jr nz, jr_074_6E53                            ; $6E05: $20 $4C

    rst $00                                       ; $6E07: $C7
    rst $00                                       ; $6E08: $C7
    ld bc, $8231                                  ; $6E09: $01 $31 $82
    jr nc, jr_074_6D90                            ; $6E0C: $30 $82

    jr nc, jr_074_6D92                            ; $6E0E: $30 $82

    jr nc, jr_074_6D94                            ; $6E10: $30 $82

    jr nc, jr_074_6D96                            ; $6E12: $30 $82

    jr nc, jr_074_6D98                            ; $6E14: $30 $82

    jr nc, jr_074_6E18                            ; $6E16: $30 $00

jr_074_6E18:
    rst $38                                       ; $6E18: $FF
    nop                                           ; $6E19: $00
    rst $38                                       ; $6E1A: $FF
    nop                                           ; $6E1B: $00
    rst $38                                       ; $6E1C: $FF
    rra                                           ; $6E1D: $1F
    ldh [$3F], a                                  ; $6E1E: $E0 $3F
    rst $18                                       ; $6E20: $DF
    ld a, a                                       ; $6E21: $7F
    or b                                          ; $6E22: $B0
    ld a, a                                       ; $6E23: $7F
    cpl                                           ; $6E24: $2F
    ld a, a                                       ; $6E25: $7F
    ccf                                           ; $6E26: $3F
    nop                                           ; $6E27: $00
    rst $38                                       ; $6E28: $FF
    nop                                           ; $6E29: $00
    rst $38                                       ; $6E2A: $FF
    nop                                           ; $6E2B: $00
    rst $38                                       ; $6E2C: $FF
    ldh [$1F], a                                  ; $6E2D: $E0 $1F
    ldh a, [$E7]                                  ; $6E2F: $F0 $E7

jr_074_6E31:
    ld hl, sp+$31                                 ; $6E31: $F8 $31
    ld hl, sp-$30                                 ; $6E33: $F8 $D0
    ld hl, sp-$10                                 ; $6E35: $F8 $F0
    nop                                           ; $6E37: $00
    rst $38                                       ; $6E38: $FF
    nop                                           ; $6E39: $00
    rst $38                                       ; $6E3A: $FF
    nop                                           ; $6E3B: $00
    rst $38                                       ; $6E3C: $FF
    nop                                           ; $6E3D: $00
    rst $38                                       ; $6E3E: $FF
    rra                                           ; $6E3F: $1F
    ldh [$3F], a                                  ; $6E40: $E0 $3F
    rst $18                                       ; $6E42: $DF
    ld a, a                                       ; $6E43: $7F
    or b                                          ; $6E44: $B0
    ld a, a                                       ; $6E45: $7F
    cpl                                           ; $6E46: $2F
    nop                                           ; $6E47: $00
    rst $38                                       ; $6E48: $FF

jr_074_6E49:
    nop                                           ; $6E49: $00
    rst $38                                       ; $6E4A: $FF

jr_074_6E4B:
    nop                                           ; $6E4B: $00
    rst $38                                       ; $6E4C: $FF

jr_074_6E4D:
    nop                                           ; $6E4D: $00
    rst $38                                       ; $6E4E: $FF

jr_074_6E4F:
    ldh [$1F], a                                  ; $6E4F: $E0 $1F

jr_074_6E51:
    ldh a, [$E7]                                  ; $6E51: $F0 $E7

jr_074_6E53:
    ld hl, sp+$33                                 ; $6E53: $F8 $33
    ld hl, sp-$2F                                 ; $6E55: $F8 $D1
    nop                                           ; $6E57: $00
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    ld a, a                                       ; $6E5A: $7F
    ccf                                           ; $6E5B: $3F
    ld b, b                                       ; $6E5C: $40
    jr nz, jr_074_6EBE                            ; $6E5D: $20 $5F

    jr nz, jr_074_6EC0                            ; $6E5F: $20 $5F

    jr nz, jr_074_6EC2                            ; $6E61: $20 $5F

    jr nz, jr_074_6EC4                            ; $6E63: $20 $5F

    jr nz, jr_074_6EC6                            ; $6E65: $20 $5F

    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    cp $FC                                        ; $6E6A: $FE $FC
    ld [bc], a                                    ; $6E6C: $02
    nop                                           ; $6E6D: $00
    cp $00                                        ; $6E6E: $FE $00
    cp $00                                        ; $6E70: $FE $00
    cp $00                                        ; $6E72: $FE $00
    cp $04                                        ; $6E74: $FE $04
    ld a, [$4000]                                 ; $6E76: $FA $00 $40
    nop                                           ; $6E79: $00
    ld a, a                                       ; $6E7A: $7F
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    ld a, a                                       ; $6E7E: $7F
    nop                                           ; $6E7F: $00
    ld b, b                                       ; $6E80: $40
    rra                                           ; $6E81: $1F
    ld b, b                                       ; $6E82: $40
    jr jr_074_6EC5                                ; $6E83: $18 $40

    db $10                                        ; $6E85: $10
    ld b, b                                       ; $6E86: $40
    nop                                           ; $6E87: $00
    ld a, a                                       ; $6E88: $7F
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
    ld a, a                                       ; $6E8B: $7F
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    nop                                           ; $6E8E: $00
    ld a, a                                       ; $6E8F: $7F
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    ld a, a                                       ; $6E92: $7F
    nop                                           ; $6E93: $00
    ld a, a                                       ; $6E94: $7F
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    ld b, b                                       ; $6E98: $40
    nop                                           ; $6E99: $00
    ld b, b                                       ; $6E9A: $40
    nop                                           ; $6E9B: $00
    ld a, a                                       ; $6E9C: $7F
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    ld a, a                                       ; $6E9F: $7F
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    ld a, a                                       ; $6EA2: $7F
    nop                                           ; $6EA3: $00
    ld a, a                                       ; $6EA4: $7F
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    ld a, a                                       ; $6EA9: $7F
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    ld a, a                                       ; $6EAE: $7F
    nop                                           ; $6EAF: $00
    ld b, b                                       ; $6EB0: $40
    nop                                           ; $6EB1: $00
    ld b, b                                       ; $6EB2: $40
    db $10                                        ; $6EB3: $10
    ld b, b                                       ; $6EB4: $40
    rra                                           ; $6EB5: $1F
    ld b, b                                       ; $6EB6: $40
    ld a, [hl]                                    ; $6EB7: $7E
    ld a, [hl]                                    ; $6EB8: $7E
    ld a, [hl]                                    ; $6EB9: $7E
    ld a, [hl]                                    ; $6EBA: $7E
    ld a, [hl]                                    ; $6EBB: $7E
    ld a, [hl]                                    ; $6EBC: $7E
    ld b, b                                       ; $6EBD: $40

jr_074_6EBE:
    ld b, b                                       ; $6EBE: $40
    ld a, h                                       ; $6EBF: $7C

jr_074_6EC0:
    ld b, b                                       ; $6EC0: $40
    ld h, h                                       ; $6EC1: $64

jr_074_6EC2:
    ld b, b                                       ; $6EC2: $40
    ld h, h                                       ; $6EC3: $64

jr_074_6EC4:
    ld b, b                                       ; $6EC4: $40

jr_074_6EC5:
    ld h, h                                       ; $6EC5: $64

jr_074_6EC6:
    ld b, b                                       ; $6EC6: $40
    ld h, h                                       ; $6EC7: $64
    ld b, b                                       ; $6EC8: $40
    ld h, h                                       ; $6EC9: $64
    ld b, b                                       ; $6ECA: $40
    ld e, b                                       ; $6ECB: $58
    ld d, b                                       ; $6ECC: $50
    inc a                                         ; $6ECD: $3C
    db $10                                        ; $6ECE: $10
    inc a                                         ; $6ECF: $3C
    db $10                                        ; $6ED0: $10
    inc h                                         ; $6ED1: $24
    nop                                           ; $6ED2: $00
    ld e, b                                       ; $6ED3: $58
    ld d, b                                       ; $6ED4: $50
    ld h, d                                       ; $6ED5: $62
    ld h, d                                       ; $6ED6: $62
    ld a, a                                       ; $6ED7: $7F
    ccf                                           ; $6ED8: $3F
    ld a, a                                       ; $6ED9: $7F
    ccf                                           ; $6EDA: $3F
    ld a, a                                       ; $6EDB: $7F
    rra                                           ; $6EDC: $1F
    ccf                                           ; $6EDD: $3F
    nop                                           ; $6EDE: $00
    rra                                           ; $6EDF: $1F
    add b                                         ; $6EE0: $80
    nop                                           ; $6EE1: $00
    ret nz                                        ; $6EE2: $C0

    nop                                           ; $6EE3: $00
    rst $38                                       ; $6EE4: $FF
    nop                                           ; $6EE5: $00
    rst $38                                       ; $6EE6: $FF
    ld hl, sp-$0F                                 ; $6EE7: $F8 $F1
    ld hl, sp-$0F                                 ; $6EE9: $F8 $F1
    ld hl, sp-$1F                                 ; $6EEB: $F8 $E1
    ldh a, [rSB]                                  ; $6EED: $F0 $01
    ldh [$03], a                                  ; $6EEF: $E0 $03
    nop                                           ; $6EF1: $00
    rrca                                          ; $6EF2: $0F
    nop                                           ; $6EF3: $00
    rst $38                                       ; $6EF4: $FF
    nop                                           ; $6EF5: $00
    rst $38                                       ; $6EF6: $FF
    jr nz, jr_074_6F39                            ; $6EF7: $20 $40

    inc c                                         ; $6EF9: $0C
    nop                                           ; $6EFA: $00
    ld [hl], c                                    ; $6EFB: $71
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    ld a, a                                       ; $6EFE: $7F
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    ld a, a                                       ; $6F01: $7F
    nop                                           ; $6F02: $00
    nop                                           ; $6F03: $00
    ld a, a                                       ; $6F04: $7F
    add b                                         ; $6F05: $80
    add b                                         ; $6F06: $80
    add d                                         ; $6F07: $82
    nop                                           ; $6F08: $00
    jr nc, jr_074_6F0B                            ; $6F09: $30 $00

jr_074_6F0B:
    add $00                                       ; $6F0B: $C6 $00
    ld [bc], a                                    ; $6F0D: $02
    db $FC                                        ; $6F0E: $FC
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    ld hl, sp+$00                                 ; $6F11: $F8 $00
    ld b, $F8                                     ; $6F13: $06 $F8
    ld bc, $7F01                                  ; $6F15: $01 $01 $7F
    ccf                                           ; $6F18: $3F
    ld a, a                                       ; $6F19: $7F
    rra                                           ; $6F1A: $1F
    ld a, a                                       ; $6F1B: $7F
    nop                                           ; $6F1C: $00
    ccf                                           ; $6F1D: $3F
    nop                                           ; $6F1E: $00
    rra                                           ; $6F1F: $1F
    add b                                         ; $6F20: $80
    nop                                           ; $6F21: $00
    ret nz                                        ; $6F22: $C0

    nop                                           ; $6F23: $00
    rst $38                                       ; $6F24: $FF
    nop                                           ; $6F25: $00
    rst $38                                       ; $6F26: $FF
    ld hl, sp-$10                                 ; $6F27: $F8 $F0
    ld hl, sp-$20                                 ; $6F29: $F8 $E0
    ld hl, sp+$00                                 ; $6F2B: $F8 $00
    ldh a, [rSB]                                  ; $6F2D: $F0 $01
    ldh [$03], a                                  ; $6F2F: $E0 $03
    nop                                           ; $6F31: $00
    rrca                                          ; $6F32: $0F
    nop                                           ; $6F33: $00
    rst $38                                       ; $6F34: $FF
    nop                                           ; $6F35: $00
    rst $38                                       ; $6F36: $FF
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00

jr_074_6F39:
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    nop                                           ; $6F4B: $00
    nop                                           ; $6F4C: $00
    nop                                           ; $6F4D: $00
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    cp $10                                        ; $6F57: $FE $10
    ld hl, sp+$00                                 ; $6F59: $F8 $00
    ldh [rP1], a                                  ; $6F5B: $E0 $00
    ret nz                                        ; $6F5D: $C0

    nop                                           ; $6F5E: $00
    add b                                         ; $6F5F: $80
    nop                                           ; $6F60: $00
    add b                                         ; $6F61: $80
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    add b                                         ; $6F69: $80
    nop                                           ; $6F6A: $00
    add b                                         ; $6F6B: $80
    nop                                           ; $6F6C: $00
    add b                                         ; $6F6D: $80
    nop                                           ; $6F6E: $00
    ret nz                                        ; $6F6F: $C0

    nop                                           ; $6F70: $00
    ldh [rP1], a                                  ; $6F71: $E0 $00
    ld hl, sp-$80                                 ; $6F73: $F8 $80
    cp $40                                        ; $6F75: $FE $40
    add b                                         ; $6F77: $80
    nop                                           ; $6F78: $00
    ldh [rP1], a                                  ; $6F79: $E0 $00
    rst $38                                       ; $6F7B: $FF
    add b                                         ; $6F7C: $80
    rst $28                                       ; $6F7D: $EF
    ld [hl], b                                    ; $6F7E: $70
    rst $38                                       ; $6F7F: $FF
    rra                                           ; $6F80: $1F
    rst $38                                       ; $6F81: $FF
    nop                                           ; $6F82: $00
    rst $38                                       ; $6F83: $FF
    nop                                           ; $6F84: $00
    rst $38                                       ; $6F85: $FF
    nop                                           ; $6F86: $00
    inc e                                         ; $6F87: $1C
    nop                                           ; $6F88: $00
    ld a, [hl]                                    ; $6F89: $7E
    nop                                           ; $6F8A: $00
    rst $30                                       ; $6F8B: $F7
    ld [$E05F], sp                                ; $6F8C: $08 $5F $E0
    db $FD                                        ; $6F8F: $FD
    add e                                         ; $6F90: $83
    rst $38                                       ; $6F91: $FF
    nop                                           ; $6F92: $00
    rst $38                                       ; $6F93: $FF
    nop                                           ; $6F94: $00
    rst $38                                       ; $6F95: $FF
    nop                                           ; $6F96: $00
    cp $00                                        ; $6F97: $FE $00
    cp $00                                        ; $6F99: $FE $00
    cp $00                                        ; $6F9B: $FE $00
    cp $04                                        ; $6F9D: $FE $04
    cp $04                                        ; $6F9F: $FE $04
    cp $04                                        ; $6FA1: $FE $04
    db $FC                                        ; $6FA3: $FC
    nop                                           ; $6FA4: $00
    db $FC                                        ; $6FA5: $FC
    inc b                                         ; $6FA6: $04
    db $FC                                        ; $6FA7: $FC
    nop                                           ; $6FA8: $00
    db $FC                                        ; $6FA9: $FC
    nop                                           ; $6FAA: $00
    db $FC                                        ; $6FAB: $FC
    ld [$08FC], sp                                ; $6FAC: $08 $FC $08
    cp $04                                        ; $6FAF: $FE $04
    cp $04                                        ; $6FB1: $FE $04
    rst $38                                       ; $6FB3: $FF
    nop                                           ; $6FB4: $00
    rst $38                                       ; $6FB5: $FF
    inc b                                         ; $6FB6: $04
    nop                                           ; $6FB7: $00
    rst $00                                       ; $6FB8: $C7
    nop                                           ; $6FB9: $00
    rst $38                                       ; $6FBA: $FF
    rst $00                                       ; $6FBB: $C7
    jr c, @+$01                                   ; $6FBC: $38 $FF

    nop                                           ; $6FBE: $00
    cp $01                                        ; $6FBF: $FE $01
    inc a                                         ; $6FC1: $3C
    jp $FF00                                      ; $6FC2: $C3 $00 $FF


    nop                                           ; $6FC5: $00
    rst $38                                       ; $6FC6: $FF
    pop hl                                        ; $6FC7: $E1
    dec e                                         ; $6FC8: $1D
    ld a, [hl]                                    ; $6FC9: $7E
    add c                                         ; $6FCA: $81
    ccf                                           ; $6FCB: $3F
    ret nz                                        ; $6FCC: $C0

    rlca                                          ; $6FCD: $07
    ld hl, sp+$40                                 ; $6FCE: $F8 $40
    cp a                                          ; $6FD0: $BF
    inc a                                         ; $6FD1: $3C
    jp $F807                                      ; $6FD2: $C3 $07 $F8


    ld bc, $01FE                                  ; $6FD5: $01 $FE $01
    pop hl                                        ; $6FD8: $E1
    nop                                           ; $6FD9: $00
    db $FC                                        ; $6FDA: $FC
    ldh a, [rIF]                                  ; $6FDB: $F0 $0F
    db $FC                                        ; $6FDD: $FC
    inc bc                                        ; $6FDE: $03
    rlca                                          ; $6FDF: $07
    ld hl, sp+$01                                 ; $6FE0: $F8 $01
    cp $00                                        ; $6FE2: $FE $00
    rst $38                                       ; $6FE4: $FF
    ccf                                           ; $6FE5: $3F
    ret nz                                        ; $6FE6: $C0

    ei                                            ; $6FE7: $FB

jr_074_6FE8:
    inc b                                         ; $6FE8: $04
    di                                            ; $6FE9: $F3

jr_074_6FEA:
    inc c                                         ; $6FEA: $0C
    rst $30                                       ; $6FEB: $F7

jr_074_6FEC:
    ld [$09F6], sp                                ; $6FEC: $08 $F6 $09
    or $09                                        ; $6FEF: $F6 $09
    db $FC                                        ; $6FF1: $FC
    inc bc                                        ; $6FF2: $03
    db $FC                                        ; $6FF3: $FC
    inc bc                                        ; $6FF4: $03
    db $FC                                        ; $6FF5: $FC
    inc bc                                        ; $6FF6: $03
    rst $38                                       ; $6FF7: $FF
    nop                                           ; $6FF8: $00
    ld hl, sp+$07                                 ; $6FF9: $F8 $07
    nop                                           ; $6FFB: $00
    rst $38                                       ; $6FFC: $FF
    ld bc, $40FE                                  ; $6FFD: $01 $FE $40
    cp a                                          ; $7000: $BF
    nop                                           ; $7001: $00
    rst $38                                       ; $7002: $FF
    nop                                           ; $7003: $00
    rst $38                                       ; $7004: $FF
    nop                                           ; $7005: $00
    rst $38                                       ; $7006: $FF
    ret z                                         ; $7007: $C8

    scf                                           ; $7008: $37
    ret z                                         ; $7009: $C8

    scf                                           ; $700A: $37
    ld b, b                                       ; $700B: $40

jr_074_700C:
    cp a                                          ; $700C: $BF
    ld b, h                                       ; $700D: $44
    cp e                                          ; $700E: $BB
    ld h, d                                       ; $700F: $62
    sbc l                                         ; $7010: $9D
    ld h, e                                       ; $7011: $63

jr_074_7012:
    sbc h                                         ; $7012: $9C
    inc hl                                        ; $7013: $23
    call c, $DE21                                 ; $7014: $DC $21 $DE
    jr nc, jr_074_6FE8                            ; $7017: $30 $CF

    jr nc, jr_074_6FEA                            ; $7019: $30 $CF

    jr nc, jr_074_6FEC                            ; $701B: $30 $CF

    cp b                                          ; $701D: $B8
    ld b, a                                       ; $701E: $47
    cp b                                          ; $701F: $B8
    ld b, a                                       ; $7020: $47
    sbc b                                         ; $7021: $98
    ld h, a                                       ; $7022: $67
    ret c                                         ; $7023: $D8

    daa                                           ; $7024: $27
    call z, $0033                                 ; $7025: $CC $33 $00
    rst $38                                       ; $7028: $FF
    rla                                           ; $7029: $17
    add sp, -$80                                  ; $702A: $E8 $80
    ld a, a                                       ; $702C: $7F
    ldh [$1F], a                                  ; $702D: $E0 $1F
    ccf                                           ; $702F: $3F
    ret nz                                        ; $7030: $C0

    nop                                           ; $7031: $00
    rst $38                                       ; $7032: $FF
    ret nz                                        ; $7033: $C0

    ccf                                           ; $7034: $3F
    ld a, d                                       ; $7035: $7A
    add l                                         ; $7036: $85
    nop                                           ; $7037: $00
    rst $38                                       ; $7038: $FF

jr_074_7039:
    ld [$C4F7], sp                                ; $7039: $08 $F7 $C4
    dec sp                                        ; $703C: $3B
    ldh [$1F], a                                  ; $703D: $E0 $1F
    ldh a, [rIF]                                  ; $703F: $F0 $0F
    jr nc, jr_074_7012                            ; $7041: $30 $CF

    jr c, jr_074_700C                             ; $7043: $38 $C7

    sbc h                                         ; $7045: $9C
    ld h, e                                       ; $7046: $63
    rst $38                                       ; $7047: $FF
    nop                                           ; $7048: $00
    rst $38                                       ; $7049: $FF
    nop                                           ; $704A: $00
    ccf                                           ; $704B: $3F
    ret nz                                        ; $704C: $C0

    call nz, $FE3B                                ; $704D: $C4 $3B $FE
    ld bc, $F807                                  ; $7050: $01 $07 $F8
    db $FC                                        ; $7053: $FC
    inc bc                                        ; $7054: $03
    inc bc                                        ; $7055: $03
    db $FC                                        ; $7056: $FC
    ret nz                                        ; $7057: $C0

    ret nz                                        ; $7058: $C0

    add b                                         ; $7059: $80
    add b                                         ; $705A: $80
    add b                                         ; $705B: $80
    add b                                         ; $705C: $80
    add b                                         ; $705D: $80
    add b                                         ; $705E: $80
    add b                                         ; $705F: $80
    add b                                         ; $7060: $80
    ret nz                                        ; $7061: $C0

    ret nz                                        ; $7062: $C0

    ret nz                                        ; $7063: $C0

    ret nz                                        ; $7064: $C0

    ret nz                                        ; $7065: $C0

    ret nz                                        ; $7066: $C0

    ld b, b                                       ; $7067: $40
    ld b, b                                       ; $7068: $40
    ld h, b                                       ; $7069: $60
    ld h, b                                       ; $706A: $60
    ld h, b                                       ; $706B: $60
    ld h, b                                       ; $706C: $60
    ld [hl], b                                    ; $706D: $70
    ld [hl], b                                    ; $706E: $70
    jr nc, jr_074_70A1                            ; $706F: $30 $30

    jr nc, jr_074_70A3                            ; $7071: $30 $30

    ld h, b                                       ; $7073: $60
    ld h, b                                       ; $7074: $60

jr_074_7075:
    ld h, b                                       ; $7075: $60
    ld h, b                                       ; $7076: $60
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    cp $FE                                        ; $7079: $FE $FE
    rst $00                                       ; $707B: $C7
    rst $00                                       ; $707C: $C7
    ld bc, $0001                                  ; $707D: $01 $01 $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    rlca                                          ; $7087: $07
    rlca                                          ; $7088: $07

jr_074_7089:
    ld e, $1E                                     ; $7089: $1E $1E

jr_074_708B:
    ld hl, sp-$08                                 ; $708B: $F8 $F8
    ret nz                                        ; $708D: $C0

    ret nz                                        ; $708E: $C0

jr_074_708F:
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    jr nz, jr_074_7039                            ; $7097: $20 $A0

jr_074_7099:
    jr nc, jr_074_708B                            ; $7099: $30 $F0

    jr jr_074_7075                                ; $709B: $18 $D8

    inc c                                         ; $709D: $0C
    db $EC                                        ; $709E: $EC
    adc $2E                                       ; $709F: $CE $2E

jr_074_70A1:
    rst $20                                       ; $70A1: $E7
    rla                                           ; $70A2: $17

jr_074_70A3:
    di                                            ; $70A3: $F3
    dec bc                                        ; $70A4: $0B

jr_074_70A5:
    ld [hl], b                                    ; $70A5: $70
    adc [hl]                                      ; $70A6: $8E
    ld h, h                                       ; $70A7: $64
    sbc d                                         ; $70A8: $9A
    jr nz, jr_074_7089                            ; $70A9: $20 $DE

    jr nz, jr_074_708B                            ; $70AB: $20 $DE

    or b                                          ; $70AD: $B0
    ld c, [hl]                                    ; $70AE: $4E
    or b                                          ; $70AF: $B0
    ld c, [hl]                                    ; $70B0: $4E
    jr jr_074_7099                                ; $70B1: $18 $E6

    sbc b                                         ; $70B3: $98
    ld h, [hl]                                    ; $70B4: $66
    ret z                                         ; $70B5: $C8

    scf                                           ; $70B6: $37
    call z, $B833                                 ; $70B7: $CC $33 $B8
    ld b, a                                       ; $70BA: $47
    ld a, b                                       ; $70BB: $78
    add a                                         ; $70BC: $87
    ld [hl], b                                    ; $70BD: $70
    adc a                                         ; $70BE: $8F
    jr nc, jr_074_708F                            ; $70BF: $30 $CE

    jr nz, jr_074_70A1                            ; $70C1: $20 $DE

    ld h, b                                       ; $70C3: $60
    sbc [hl]                                      ; $70C4: $9E
    ld h, b                                       ; $70C5: $60
    sbc [hl]                                      ; $70C6: $9E
    ld h, b                                       ; $70C7: $60
    sbc h                                         ; $70C8: $9C
    ld hl, $31DD                                  ; $70C9: $21 $DD $31
    call $8D71                                    ; $70CC: $CD $71 $8D
    ld d, c                                       ; $70CF: $51
    xor l                                         ; $70D0: $AD

jr_074_70D1:
    ld d, b                                       ; $70D1: $50
    xor h                                         ; $70D2: $AC
    ld [hl], b                                    ; $70D3: $70
    adc h                                         ; $70D4: $8C
    jr nc, jr_074_70A5                            ; $70D5: $30 $CE

    ld a, [c]                                     ; $70D7: $F2
    dec c                                         ; $70D8: $0D
    or $09                                        ; $70D9: $F6 $09
    db $E4                                        ; $70DB: $E4
    dec de                                        ; $70DC: $1B
    call $9B32                                    ; $70DD: $CD $32 $9B
    ld h, h                                       ; $70E0: $64
    ld a, $C1                                     ; $70E1: $3E $C1
    ld a, [hl]                                    ; $70E3: $7E
    add c                                         ; $70E4: $81
    cp $01                                        ; $70E5: $FE $01
    adc h                                         ; $70E7: $8C
    ld [hl], e                                    ; $70E8: $73
    adc $31                                       ; $70E9: $CE $31
    rst $20                                       ; $70EB: $E7
    jr jr_074_70D1                                ; $70EC: $18 $E3

    inc e                                         ; $70EE: $1C
    ldh a, [rIF]                                  ; $70EF: $F0 $0F
    ld hl, sp+$07                                 ; $70F1: $F8 $07
    rst $38                                       ; $70F3: $FF
    nop                                           ; $70F4: $00
    rst $38                                       ; $70F5: $FF
    nop                                           ; $70F6: $00
    db $FC                                        ; $70F7: $FC
    inc bc                                        ; $70F8: $03
    db $FC                                        ; $70F9: $FC
    inc bc                                        ; $70FA: $03
    db $FC                                        ; $70FB: $FC
    inc bc                                        ; $70FC: $03
    or $09                                        ; $70FD: $F6 $09
    or $09                                        ; $70FF: $F6 $09
    rst $30                                       ; $7101: $F7
    ld [$0CF3], sp                                ; $7102: $08 $F3 $0C
    ei                                            ; $7105: $FB
    inc b                                         ; $7106: $04
    pop af                                        ; $7107: $F1
    ld c, $F1                                     ; $7108: $0E $F1
    ld c, $F1                                     ; $710A: $0E $F1
    ld c, $F9                                     ; $710C: $0E $F9

jr_074_710E:
    ld b, $F9                                     ; $710E: $06 $F9
    ld b, $FD                                     ; $7110: $06 $FD
    ld [bc], a                                    ; $7112: $02
    rst $38                                       ; $7113: $FF
    nop                                           ; $7114: $00
    cp $01                                        ; $7115: $FE $01
    nop                                           ; $7117: $00
    rst $38                                       ; $7118: $FF
    nop                                           ; $7119: $00
    rst $38                                       ; $711A: $FF
    nop                                           ; $711B: $00
    rst $38                                       ; $711C: $FF
    nop                                           ; $711D: $00
    rst $38                                       ; $711E: $FF
    nop                                           ; $711F: $00
    rst $38                                       ; $7120: $FF
    nop                                           ; $7121: $00
    rst $38                                       ; $7122: $FF
    ret nz                                        ; $7123: $C0

    ccf                                           ; $7124: $3F
    ldh a, [rIF]                                  ; $7125: $F0 $0F
    rrca                                          ; $7127: $0F
    ldh a, [$03]                                  ; $7128: $F0 $03
    db $FC                                        ; $712A: $FC

jr_074_712B:
    ldh a, [rIF]                                  ; $712B: $F0 $0F
    db $FC                                        ; $712D: $FC
    inc bc                                        ; $712E: $03
    rst $20                                       ; $712F: $E7
    jr jr_074_712B                                ; $7130: $18 $F9

    ld b, $FF                                     ; $7132: $06 $FF
    nop                                           ; $7134: $00
    rst $38                                       ; $7135: $FF
    nop                                           ; $7136: $00
    rst $38                                       ; $7137: $FF
    nop                                           ; $7138: $00
    rst $38                                       ; $7139: $FF
    nop                                           ; $713A: $00
    rst $38                                       ; $713B: $FF
    nop                                           ; $713C: $00
    db $FC                                        ; $713D: $FC
    inc bc                                        ; $713E: $03
    add a                                         ; $713F: $87
    ld a, b                                       ; $7140: $78
    dec a                                         ; $7141: $3D
    jp nz, $1DE2                                  ; $7142: $C2 $E2 $1D

    rst $08                                       ; $7145: $CF
    jr nc, jr_074_710E                            ; $7146: $30 $C6

    add hl, sp                                    ; $7148: $39
    db $E3                                        ; $7149: $E3
    inc e                                         ; $714A: $1C
    pop hl                                        ; $714B: $E1
    ld e, $F0                                     ; $714C: $1E $F0
    rrca                                          ; $714E: $0F
    ldh a, [rIF]                                  ; $714F: $F0 $0F
    ld hl, sp+$07                                 ; $7151: $F8 $07
    db $FC                                        ; $7153: $FC
    inc bc                                        ; $7154: $03
    rst $38                                       ; $7155: $FF
    nop                                           ; $7156: $00
    inc d                                         ; $7157: $14
    or h                                          ; $7158: $B4
    nop                                           ; $7159: $00
    add hl, bc                                    ; $715A: $09
    ld e, $20                                     ; $715B: $1E $20
    inc bc                                        ; $715D: $03
    adc [hl]                                      ; $715E: $8E
    ld hl, $A204                                  ; $715F: $21 $04 $A2
    and l                                         ; $7162: $A5
    sub h                                         ; $7163: $94
    sub l                                         ; $7164: $95
    add d                                         ; $7165: $82
    ld e, a                                       ; $7166: $5F
    adc l                                         ; $7167: $8D
    ld hl, $A404                                  ; $7168: $21 $04 $A4
    and [hl]                                      ; $716B: $A6
    ld b, b                                       ; $716C: $40
    ld [hl-], a                                   ; $716D: $32
    add e                                         ; $716E: $83
    inc [hl]                                      ; $716F: $34
    adc e                                         ; $7170: $8B
    ld hl, $A209                                  ; $7171: $21 $09 $A2
    and h                                         ; $7174: $A4
    and l                                         ; $7175: $A5
    ld b, b                                       ; $7176: $40
    ld b, c                                       ; $7177: $41
    ld b, d                                       ; $7178: $42
    ld b, [hl]                                    ; $7179: $46
    ld b, a                                       ; $717A: $47
    ld c, b                                       ; $717B: $48
    adc d                                         ; $717C: $8A
    ld hl, $A60A                                  ; $717D: $21 $0A $A6
    and d                                         ; $7180: $A2
    sbc h                                         ; $7181: $9C
    ld b, b                                       ; $7182: $40
    ld b, c                                       ; $7183: $41
    ld hl, $5652                                  ; $7184: $21 $52 $56
    ld d, a                                       ; $7187: $57
    ld e, b                                       ; $7188: $58
    adc c                                         ; $7189: $89
    ld hl, $A40B                                  ; $718A: $21 $0B $A4
    and l                                         ; $718D: $A5
    ld b, b                                       ; $718E: $40
    ld [hl-], a                                   ; $718F: $32
    ld b, c                                       ; $7190: $41
    ld h, b                                       ; $7191: $60
    dec c                                         ; $7192: $0D
    ld c, $66                                     ; $7193: $0E $66
    ld h, a                                       ; $7195: $67
    nop                                           ; $7196: $00
    adc b                                         ; $7197: $88
    ld hl, $A60C                                  ; $7198: $21 $0C $A6
    and d                                         ; $719B: $A2
    ld b, b                                       ; $719C: $40
    ld b, c                                       ; $719D: $41
    ld b, d                                       ; $719E: $42
    ld hl, $7161                                  ; $719F: $21 $61 $71
    ld [$0009], sp                                ; $71A2: $08 $09 $00
    inc de                                        ; $71A5: $13
    add a                                         ; $71A6: $87
    ld hl, $A207                                  ; $71A7: $21 $07 $A2
    and l                                         ; $71AA: $A5
    ld sp, $2141                                  ; $71AB: $31 $41 $21
    ld d, d                                       ; $71AE: $52
    dec c                                         ; $71AF: $0D
    add [hl]                                      ; $71B0: $86
    nop                                           ; $71B1: $00
    add [hl]                                      ; $71B2: $86
    ld hl, $A407                                  ; $71B3: $21 $07 $A4
    and [hl]                                      ; $71B6: $A6
    ld b, b                                       ; $71B7: $40
    ld b, c                                       ; $71B8: $41
    ld hl, $0E0D                                  ; $71B9: $21 $0D $0E
    add d                                         ; $71BC: $82
    nop                                           ; $71BD: $00
    ld bc, $8409                                  ; $71BE: $01 $09 $84
    nop                                           ; $71C1: $00
    add l                                         ; $71C2: $85
    ld hl, $A208                                  ; $71C3: $21 $08 $A2
    and l                                         ; $71C6: $A5
    ld b, b                                       ; $71C7: $40
    ld b, c                                       ; $71C8: $41
    ld h, b                                       ; $71C9: $60
    dec c                                         ; $71CA: $0D
    nop                                           ; $71CB: $00
    ld [de], a                                    ; $71CC: $12
    add h                                         ; $71CD: $84
    nop                                           ; $71CE: $00
    inc bc                                        ; $71CF: $03
    cp c                                          ; $71D0: $B9
    push hl                                       ; $71D1: $E5
    and $85                                       ; $71D2: $E6 $85
    ld hl, $9C06                                  ; $71D4: $21 $06 $9C
    ld [hl], d                                    ; $71D7: $72
    ld b, c                                       ; $71D8: $41
    ld hl, $7161                                  ; $71D9: $21 $61 $71
    add h                                         ; $71DC: $84
    nop                                           ; $71DD: $00
    ld [bc], a                                    ; $71DE: $02
    cp c                                          ; $71DF: $B9
    and $88                                       ; $71E0: $E6 $88
    ld hl, $1404                                  ; $71E2: $21 $04 $14
    dec d                                         ; $71E5: $15
    ld hl, $830D                                  ; $71E6: $21 $0D $83
    nop                                           ; $71E9: $00
    inc bc                                        ; $71EA: $03
    ld [de], a                                    ; $71EB: $12
    nop                                           ; $71EC: $00
    xor d                                         ; $71ED: $AA
    adc d                                         ; $71EE: $8A
    ld hl, $AC03                                  ; $71EF: $21 $03 $AC
    sub d                                         ; $71F2: $92
    dec de                                        ; $71F3: $1B
    add l                                         ; $71F4: $85
    nop                                           ; $71F5: $00
    ld [bc], a                                    ; $71F6: $02
    cp c                                          ; $71F7: $B9
    ld l, h                                       ; $71F8: $6C
    adc d                                         ; $71F9: $8A
    ld hl, $9C03                                  ; $71FA: $21 $03 $9C
    sub d                                         ; $71FD: $92
    dec de                                        ; $71FE: $1B
    add h                                         ; $71FF: $84
    nop                                           ; $7200: $00
    ld [bc], a                                    ; $7201: $02
    xor d                                         ; $7202: $AA
    adc h                                         ; $7203: $8C
    adc e                                         ; $7204: $8B
    ld hl, $1409                                  ; $7205: $21 $09 $14
    dec d                                         ; $7208: $15
    dec de                                        ; $7209: $1B
    nop                                           ; $720A: $00
    ld [de], a                                    ; $720B: $12
    nop                                           ; $720C: $00
    cp c                                          ; $720D: $B9
    adc h                                         ; $720E: $8C
    call z, $218B                                 ; $720F: $CC $8B $21
    inc bc                                        ; $7212: $03
    sbc h                                         ; $7213: $9C
    sub d                                         ; $7214: $92
    dec de                                        ; $7215: $1B
    add e                                         ; $7216: $83
    nop                                           ; $7217: $00
    inc bc                                        ; $7218: $03
    ld d, $9F                                     ; $7219: $16 $9F
    ld l, h                                       ; $721B: $6C
    adc e                                         ; $721C: $8B
    ld hl, $A203                                  ; $721D: $21 $03 $A2
    sub d                                         ; $7220: $92
    dec de                                        ; $7221: $1B
    add e                                         ; $7222: $83
    nop                                           ; $7223: $00
    inc bc                                        ; $7224: $03
    ld e, d                                       ; $7225: $5A
    ld e, e                                       ; $7226: $5B
    xor b                                         ; $7227: $A8
    adc e                                         ; $7228: $8B
    ld hl, $1409                                  ; $7229: $21 $09 $14
    dec d                                         ; $722C: $15
    dec de                                        ; $722D: $1B
    nop                                           ; $722E: $00
    ld [$5909], sp                                ; $722F: $08 $09 $59
    adc e                                         ; $7232: $8B
    adc h                                         ; $7233: $8C
    adc e                                         ; $7234: $8B
    ld hl, $9C09                                  ; $7235: $21 $09 $9C
    sub d                                         ; $7238: $92
    dec de                                        ; $7239: $1B
    nop                                           ; $723A: $00
    ld [de], a                                    ; $723B: $12
    ld l, b                                       ; $723C: $68
    ld l, c                                       ; $723D: $69
    ld c, e                                       ; $723E: $4B
    ld c, h                                       ; $723F: $4C
    adc d                                         ; $7240: $8A
    ld hl, $A504                                  ; $7241: $21 $04 $A5
    and d                                         ; $7244: $A2
    sub d                                         ; $7245: $92
    dec de                                        ; $7246: $1B
    add d                                         ; $7247: $82
    nop                                           ; $7248: $00
    inc b                                         ; $7249: $04
    ld a, b                                       ; $724A: $78
    ld a, c                                       ; $724B: $79
    adc e                                         ; $724C: $8B
    cp b                                          ; $724D: $B8
    adc d                                         ; $724E: $8A
    ld hl, $A404                                  ; $724F: $21 $04 $A4
    sbc h                                         ; $7252: $9C
    sub d                                         ; $7253: $92
    dec de                                        ; $7254: $1B
    add d                                         ; $7255: $82
    nop                                           ; $7256: $00
    inc b                                         ; $7257: $04
    dec [hl]                                      ; $7258: $35
    ld [hl], $8B                                  ; $7259: $36 $8B
    xor b                                         ; $725B: $A8
    adc d                                         ; $725C: $8A
    ld hl, $9C0A                                  ; $725D: $21 $0A $9C
    ld [hl], d                                    ; $7260: $72
    ld b, c                                       ; $7261: $41
    dec de                                        ; $7262: $1B
    nop                                           ; $7263: $00
    ld [hl], e                                    ; $7264: $73
    scf                                           ; $7265: $37
    jr c, jr_074_72B3                             ; $7266: $38 $4B

    ld c, h                                       ; $7268: $4C
    adc d                                         ; $7269: $8A
    ld hl, $1404                                  ; $726A: $21 $04 $14
    dec d                                         ; $726D: $15
    ld hl, $841B                                  ; $726E: $21 $1B $84
    nop                                           ; $7271: $00
    ld [bc], a                                    ; $7272: $02
    adc e                                         ; $7273: $8B
    cp b                                          ; $7274: $B8
    adc d                                         ; $7275: $8A
    ld hl, $9C04                                  ; $7276: $21 $04 $9C
    sub d                                         ; $7279: $92
    ld hl, $820D                                  ; $727A: $21 $0D $82
    nop                                           ; $727D: $00
    inc b                                         ; $727E: $04
    ld [$4B09], sp                                ; $727F: $08 $09 $4B
    ld c, h                                       ; $7282: $4C
    adc d                                         ; $7283: $8A
    ld hl, $1403                                  ; $7284: $21 $03 $14
    dec d                                         ; $7287: $15
    dec de                                        ; $7288: $1B
    add d                                         ; $7289: $82
    nop                                           ; $728A: $00
    dec b                                         ; $728B: $05
    ld [bc], a                                    ; $728C: $02
    ld [de], a                                    ; $728D: $12
    nop                                           ; $728E: $00
    ld c, e                                       ; $728F: $4B
    ld c, h                                       ; $7290: $4C
    adc d                                         ; $7291: $8A
    ld hl, $C804                                  ; $7292: $21 $04 $C8
    sub d                                         ; $7295: $92
    dec de                                        ; $7296: $1B
    ld [bc], a                                    ; $7297: $02
    add h                                         ; $7298: $84
    nop                                           ; $7299: $00
    ld [bc], a                                    ; $729A: $02
    adc e                                         ; $729B: $8B
    cp b                                          ; $729C: $B8
    adc e                                         ; $729D: $8B
    ld hl, $C805                                  ; $729E: $21 $05 $C8
    ret nz                                        ; $72A1: $C0

    dec l                                         ; $72A2: $2D
    nop                                           ; $72A3: $00
    add hl, bc                                    ; $72A4: $09
    add d                                         ; $72A5: $82
    nop                                           ; $72A6: $00
    ld [bc], a                                    ; $72A7: $02
    adc e                                         ; $72A8: $8B
    xor b                                         ; $72A9: $A8
    adc e                                         ; $72AA: $8B
    ld hl, $9C03                                  ; $72AB: $21 $03 $9C
    sub d                                         ; $72AE: $92
    dec de                                        ; $72AF: $1B
    add e                                         ; $72B0: $83
    nop                                           ; $72B1: $00
    inc bc                                        ; $72B2: $03

jr_074_72B3:
    cp c                                          ; $72B3: $B9
    ld l, h                                       ; $72B4: $6C
    adc h                                         ; $72B5: $8C
    adc e                                         ; $72B6: $8B
    ld hl, $1403                                  ; $72B7: $21 $03 $14
    dec d                                         ; $72BA: $15
    dec de                                        ; $72BB: $1B
    add d                                         ; $72BC: $82
    nop                                           ; $72BD: $00
    inc b                                         ; $72BE: $04
    ld [bc], a                                    ; $72BF: $02
    ld d, $9E                                     ; $72C0: $16 $9E
    ld l, h                                       ; $72C2: $6C
    adc e                                         ; $72C3: $8B
    ld hl, $A403                                  ; $72C4: $21 $03 $A4
    sub d                                         ; $72C7: $92
    dec de                                        ; $72C8: $1B
    add e                                         ; $72C9: $83
    nop                                           ; $72CA: $00
    inc bc                                        ; $72CB: $03
    ld e, d                                       ; $72CC: $5A
    ld e, e                                       ; $72CD: $5B
    xor b                                         ; $72CE: $A8
    adc e                                         ; $72CF: $8B
    ld hl, $A509                                  ; $72D0: $21 $09 $A5
    sub d                                         ; $72D3: $92
    dec de                                        ; $72D4: $1B
    nop                                           ; $72D5: $00
    ld [bc], a                                    ; $72D6: $02
    nop                                           ; $72D7: $00
    ld e, c                                       ; $72D8: $59
    ld c, e                                       ; $72D9: $4B
    ld c, h                                       ; $72DA: $4C
    adc e                                         ; $72DB: $8B
    ld hl, $A303                                  ; $72DC: $21 $03 $A3
    ld b, c                                       ; $72DF: $41
    dec de                                        ; $72E0: $1B
    add d                                         ; $72E1: $82
    nop                                           ; $72E2: $00
    inc b                                         ; $72E3: $04
    ld l, b                                       ; $72E4: $68
    ld l, c                                       ; $72E5: $69
    adc e                                         ; $72E6: $8B
    xor b                                         ; $72E7: $A8
    adc e                                         ; $72E8: $8B
    ld hl, $AC03                                  ; $72E9: $21 $03 $AC
    ld hl, $821C                                  ; $72EC: $21 $1C $82
    nop                                           ; $72EF: $00
    inc b                                         ; $72F0: $04
    ld a, b                                       ; $72F1: $78
    ld a, c                                       ; $72F2: $79
    adc e                                         ; $72F3: $8B
    cp b                                          ; $72F4: $B8
    adc e                                         ; $72F5: $8B
    ld hl, $9C03                                  ; $72F6: $21 $03 $9C
    ld hl, $833E                                  ; $72F9: $21 $3E $83
    nop                                           ; $72FC: $00
    inc bc                                        ; $72FD: $03
    cp c                                          ; $72FE: $B9
    cp b                                          ; $72FF: $B8
    call z, $218B                                 ; $7300: $CC $8B $21
    inc bc                                        ; $7303: $03
    and d                                         ; $7304: $A2
    ld hl, $823E                                  ; $7305: $21 $3E $82
    nop                                           ; $7308: $00
    inc b                                         ; $7309: $04
    cp c                                          ; $730A: $B9
    adc h                                         ; $730B: $8C
    ld l, h                                       ; $730C: $6C
    adc h                                         ; $730D: $8C
    adc e                                         ; $730E: $8B
    ld hl, $9C08                                  ; $730F: $21 $08 $9C
    ld hl, $093E                                  ; $7312: $21 $3E $09
    or d                                          ; $7315: $B2
    xor [hl]                                      ; $7316: $AE
    sbc [hl]                                      ; $7317: $9E
    ld a, h                                       ; $7318: $7C
    adc h                                         ; $7319: $8C
    ld hl, $AC09                                  ; $731A: $21 $09 $AC
    ld hl, $003E                                  ; $731D: $21 $3E $00
    ldh [$BE], a                                  ; $7320: $E0 $BE
    cp a                                          ; $7322: $BF
    ld l, h                                       ; $7323: $6C
    adc h                                         ; $7324: $8C
    adc e                                         ; $7325: $8B
    ld hl, $A209                                  ; $7326: $21 $09 $A2
    ld hl, $0022                                  ; $7329: $21 $22 $00
    call $CFCE                                    ; $732C: $CD $CE $CF
    adc h                                         ; $732F: $8C
    xor b                                         ; $7330: $A8
    adc e                                         ; $7331: $8B
    ld hl, $C809                                  ; $7332: $21 $09 $C8
    sbc h                                         ; $7335: $9C
    ld hl, $002D                                  ; $7336: $21 $2D $00
    sbc $DF                                       ; $7339: $DE $DF
    ld hl, $8CB8                                  ; $733B: $21 $B8 $8C
    ld hl, $C808                                  ; $733E: $21 $08 $C8
    xor h                                         ; $7341: $AC
    dec de                                        ; $7342: $1B
    ld [de], a                                    ; $7343: $12
    nop                                           ; $7344: $00
    or d                                          ; $7345: $B2
    or e                                          ; $7346: $B3
    xor b                                         ; $7347: $A8
    adc l                                         ; $7348: $8D
    ld hl, $9C02                                  ; $7349: $21 $02 $9C
    dec de                                        ; $734C: $1B
    add d                                         ; $734D: $82
    nop                                           ; $734E: $00
    inc bc                                        ; $734F: $03
    jp nz, $B8C3                                  ; $7350: $C2 $C3 $B8

    add [hl]                                      ; $7353: $86
    ld hl, $4000                                  ; $7354: $21 $00 $40
    nop                                           ; $7357: $00
    dec b                                         ; $7358: $05
    add d                                         ; $7359: $82
    ld [$C101], sp                                ; $735A: $08 $01 $C1
    cp a                                          ; $735D: $BF
    ld [$0002], sp                                ; $735E: $08 $02 $00
    ld [$A282], sp                                ; $7361: $08 $82 $A2
    add [hl]                                      ; $7364: $86
    and e                                         ; $7365: $A3
    add d                                         ; $7366: $82
    and h                                         ; $7367: $A4
    ld bc, $ADA3                                  ; $7368: $01 $A3 $AD
    and h                                         ; $736B: $A4
    add e                                         ; $736C: $83
    and l                                         ; $736D: $A5
    add e                                         ; $736E: $83
    ld [$0002], sp                                ; $736F: $08 $02 $00
    ld [$A282], sp                                ; $7372: $08 $82 $A2
    sub d                                         ; $7375: $92
    and e                                         ; $7376: $A3
    add d                                         ; $7377: $82
    ld [bc], a                                    ; $7378: $02
    add d                                         ; $7379: $82
    and l                                         ; $737A: $A5
    add e                                         ; $737B: $83
    and h                                         ; $737C: $A4
    add d                                         ; $737D: $82
    and e                                         ; $737E: $A3
    sbc b                                         ; $737F: $98
    and h                                         ; $7380: $A4
    ld bc, $8502                                  ; $7381: $01 $02 $85
    and l                                         ; $7384: $A5
    add e                                         ; $7385: $83
    ld [$0002], sp                                ; $7386: $08 $02 $00
    ld [$A287], sp                                ; $7389: $08 $87 $A2
    add [hl]                                      ; $738C: $86
    and e                                         ; $738D: $A3
    ld bc, $84A0                                  ; $738E: $01 $A0 $84
    and e                                         ; $7391: $A3
    add h                                         ; $7392: $84
    ld [bc], a                                    ; $7393: $02
    ld [bc], a                                    ; $7394: $02
    and l                                         ; $7395: $A5
    and [hl]                                      ; $7396: $A6
    add e                                         ; $7397: $83
    and h                                         ; $7398: $A4
    add d                                         ; $7399: $82
    and e                                         ; $739A: $A3
    add d                                         ; $739B: $82
    and h                                         ; $739C: $A4
    add d                                         ; $739D: $82
    and l                                         ; $739E: $A5
    adc h                                         ; $739F: $8C
    and h                                         ; $73A0: $A4
    ld [bc], a                                    ; $73A1: $02
    and b                                         ; $73A2: $A0
    and h                                         ; $73A3: $A4
    add e                                         ; $73A4: $83
    and e                                         ; $73A5: $A3
    add l                                         ; $73A6: $85
    ld [bc], a                                    ; $73A7: $02
    ld bc, $83A5                                  ; $73A8: $01 $A5 $83
    and [hl]                                      ; $73AB: $A6
    add e                                         ; $73AC: $83
    ld [$0002], sp                                ; $73AD: $08 $02 $00
    ld [$A287], sp                                ; $73B0: $08 $87 $A2
    dec b                                         ; $73B3: $05
    ld [bc], a                                    ; $73B4: $02
    and e                                         ; $73B5: $A3
    and e                                         ; $73B6: $A3
    and h                                         ; $73B7: $A4
    and b                                         ; $73B8: $A0
    add h                                         ; $73B9: $84
    and e                                         ; $73BA: $A3
    add l                                         ; $73BB: $85
    ld [bc], a                                    ; $73BC: $02

Call_074_73BD:
    add d                                         ; $73BD: $82
    and a                                         ; $73BE: $A7
    ld bc, $84A6                                  ; $73BF: $01 $A6 $84
    and e                                         ; $73C2: $A3
    add e                                         ; $73C3: $83
    ld [bc], a                                    ; $73C4: $02
    add d                                         ; $73C5: $82
    and l                                         ; $73C6: $A5
    ld [bc], a                                    ; $73C7: $02
    and [hl]                                      ; $73C8: $A6
    and h                                         ; $73C9: $A4
    add e                                         ; $73CA: $83
    and e                                         ; $73CB: $A3
    add d                                         ; $73CC: $82
    and b                                         ; $73CD: $A0
    add l                                         ; $73CE: $85
    and h                                         ; $73CF: $A4
    add e                                         ; $73D0: $83
    and e                                         ; $73D1: $A3
    add a                                         ; $73D2: $87
    ld [bc], a                                    ; $73D3: $02
    add h                                         ; $73D4: $84
    and [hl]                                      ; $73D5: $A6
    add e                                         ; $73D6: $83
    ld [$0002], sp                                ; $73D7: $08 $02 $00
    ld [$A287], sp                                ; $73DA: $08 $87 $A2
    add e                                         ; $73DD: $83
    ld [bc], a                                    ; $73DE: $02
    add d                                         ; $73DF: $82
    and d                                         ; $73E0: $A2
    ld bc, $87A3                                  ; $73E1: $01 $A3 $87
    ld [bc], a                                    ; $73E4: $02
    add e                                         ; $73E5: $83
    and a                                         ; $73E6: $A7
    add l                                         ; $73E7: $85
    and e                                         ; $73E8: $A3
    add h                                         ; $73E9: $84
    ld [bc], a                                    ; $73EA: $02
    add d                                         ; $73EB: $82
    and [hl]                                      ; $73EC: $A6
    ld bc, $83A4                                  ; $73ED: $01 $A4 $83
    and e                                         ; $73F0: $A3
    add e                                         ; $73F1: $83
    and h                                         ; $73F2: $A4
    inc bc                                        ; $73F3: $03
    ld [bc], a                                    ; $73F4: $02
    and h                                         ; $73F5: $A4
    and h                                         ; $73F6: $A4
    adc h                                         ; $73F7: $8C
    ld [bc], a                                    ; $73F8: $02
    add e                                         ; $73F9: $83
    and [hl]                                      ; $73FA: $A6
    add e                                         ; $73FB: $83
    ld [$0001], sp                                ; $73FC: $08 $01 $00
    sub c                                         ; $73FF: $91
    ld [$0283], sp                                ; $7400: $08 $83 $02
    inc bc                                        ; $7403: $03
    and l                                         ; $7404: $A5
    and a                                         ; $7405: $A7
    and [hl]                                      ; $7406: $A6
    add h                                         ; $7407: $84
    and e                                         ; $7408: $A3
    add [hl]                                      ; $7409: $86
    ld [bc], a                                    ; $740A: $02
    ld bc, $84A6                                  ; $740B: $01 $A6 $84
    and e                                         ; $740E: $A3
    sub b                                         ; $740F: $90
    ld [bc], a                                    ; $7410: $02
    adc c                                         ; $7411: $89
    ld [$0092], sp                                ; $7412: $08 $92 $00
    add e                                         ; $7415: $83
    ld [bc], a                                    ; $7416: $02
    add d                                         ; $7417: $82
    and l                                         ; $7418: $A5
    add h                                         ; $7419: $84
    and e                                         ; $741A: $A3
    add h                                         ; $741B: $84
    ld [bc], a                                    ; $741C: $02
    add h                                         ; $741D: $84
    and a                                         ; $741E: $A7
    add e                                         ; $741F: $83
    and e                                         ; $7420: $A3
    sub c                                         ; $7421: $91
    ld [bc], a                                    ; $7422: $02
    add [hl]                                      ; $7423: $86
    nop                                           ; $7424: $00
    inc bc                                        ; $7425: $03
    ret nz                                        ; $7426: $C0

    ld [$9208], sp                                ; $7427: $08 $08 $92
    nop                                           ; $742A: $00
    add h                                         ; $742B: $84
    ld [bc], a                                    ; $742C: $02
    ld [bc], a                                    ; $742D: $02
    and l                                         ; $742E: $A5
    and e                                         ; $742F: $A3
    add a                                         ; $7430: $87
    ld [bc], a                                    ; $7431: $02
    add h                                         ; $7432: $84
    and a                                         ; $7433: $A7
    ld [bc], a                                    ; $7434: $02
    and e                                         ; $7435: $A3
    and d                                         ; $7436: $A2
    sub d                                         ; $7437: $92
    ld [bc], a                                    ; $7438: $02
    add [hl]                                      ; $7439: $86
    nop                                           ; $743A: $00
    inc bc                                        ; $743B: $03
    ret nz                                        ; $743C: $C0

    ld [$9208], sp                                ; $743D: $08 $08 $92
    nop                                           ; $7440: $00
    adc h                                         ; $7441: $8C
    ld [bc], a                                    ; $7442: $02
    add e                                         ; $7443: $83
    and [hl]                                      ; $7444: $A6
    inc b                                         ; $7445: $04
    and a                                         ; $7446: $A7
    and e                                         ; $7447: $A3
    and e                                         ; $7448: $A3
    and d                                         ; $7449: $A2
    sub d                                         ; $744A: $92
    ld [bc], a                                    ; $744B: $02
    add [hl]                                      ; $744C: $86
    nop                                           ; $744D: $00
    inc bc                                        ; $744E: $03
    ret nz                                        ; $744F: $C0

    ld [$8308], sp                                ; $7450: $08 $08 $83
    nop                                           ; $7453: $00
    adc a                                         ; $7454: $8F
    ld [$028A], sp                                ; $7455: $08 $8A $02
    add h                                         ; $7458: $84
    and [hl]                                      ; $7459: $A6
    ld bc, $83A7                                  ; $745A: $01 $A7 $83
    and e                                         ; $745D: $A3
    ld bc, $92A2                                  ; $745E: $01 $A2 $92
    ld [bc], a                                    ; $7461: $02
    adc c                                         ; $7462: $89
    ld [$0083], sp                                ; $7463: $08 $83 $00
    ld bc, $8708                                  ; $7466: $01 $08 $87
    and d                                         ; $7469: $A2
    sub c                                         ; $746A: $91
    ld [bc], a                                    ; $746B: $02
    add e                                         ; $746C: $83
    and [hl]                                      ; $746D: $A6
    ld bc, $84A7                                  ; $746E: $01 $A7 $84
    and e                                         ; $7471: $A3
    ld bc, $94A2                                  ; $7472: $01 $A2 $94
    ld [bc], a                                    ; $7475: $02
    add h                                         ; $7476: $84
    and l                                         ; $7477: $A5
    add e                                         ; $7478: $83
    ld [$0083], sp                                ; $7479: $08 $83 $00
    ld bc, $8708                                  ; $747C: $01 $08 $87
    and d                                         ; $747F: $A2
    sub d                                         ; $7480: $92
    ld [bc], a                                    ; $7481: $02
    inc bc                                        ; $7482: $03
    and l                                         ; $7483: $A5
    and [hl]                                      ; $7484: $A6
    and h                                         ; $7485: $A4
    add l                                         ; $7486: $85
    and e                                         ; $7487: $A3
    adc b                                         ; $7488: $88
    ld [bc], a                                    ; $7489: $02
    add d                                         ; $748A: $82
    and a                                         ; $748B: $A7
    ld [bc], a                                    ; $748C: $02
    and b                                         ; $748D: $A0
    and c                                         ; $748E: $A1
    adc c                                         ; $748F: $89
    ld [bc], a                                    ; $7490: $02
    add d                                         ; $7491: $82
    and [hl]                                      ; $7492: $A6
    ld bc, $83A5                                  ; $7493: $01 $A5 $83
    ld [$0083], sp                                ; $7496: $08 $83 $00
    ld bc, $8708                                  ; $7499: $01 $08 $87
    and d                                         ; $749C: $A2
    sub c                                         ; $749D: $91
    ld [bc], a                                    ; $749E: $02
    add d                                         ; $749F: $82
    and l                                         ; $74A0: $A5
    ld bc, $84A4                                  ; $74A1: $01 $A4 $84
    and e                                         ; $74A4: $A3
    adc d                                         ; $74A5: $8A
    ld [bc], a                                    ; $74A6: $02
    add d                                         ; $74A7: $82
    and a                                         ; $74A8: $A7
    inc bc                                        ; $74A9: $03
    and b                                         ; $74AA: $A0
    and c                                         ; $74AB: $A1
    and c                                         ; $74AC: $A1
    adc b                                         ; $74AD: $88
    ld [bc], a                                    ; $74AE: $02
    add e                                         ; $74AF: $83
    and [hl]                                      ; $74B0: $A6
    add e                                         ; $74B1: $83
    ld [$0083], sp                                ; $74B2: $08 $83 $00
    ld bc, $8708                                  ; $74B5: $01 $08 $87
    and d                                         ; $74B8: $A2
    add l                                         ; $74B9: $85
    ld [bc], a                                    ; $74BA: $02
    add e                                         ; $74BB: $83
    and b                                         ; $74BC: $A0
    add d                                         ; $74BD: $82
    and c                                         ; $74BE: $A1
    add a                                         ; $74BF: $87
    ld [bc], a                                    ; $74C0: $02
    add d                                         ; $74C1: $82
    and l                                         ; $74C2: $A5
    add e                                         ; $74C3: $83
    and h                                         ; $74C4: $A4
    ld bc, $8AA3                                  ; $74C5: $01 $A3 $8A
    ld [bc], a                                    ; $74C8: $02
    add e                                         ; $74C9: $83
    and a                                         ; $74CA: $A7
    inc bc                                        ; $74CB: $03
    and b                                         ; $74CC: $A0
    and c                                         ; $74CD: $A1
    and c                                         ; $74CE: $A1
    adc c                                         ; $74CF: $89
    ld [bc], a                                    ; $74D0: $02
    add d                                         ; $74D1: $82
    and [hl]                                      ; $74D2: $A6
    add e                                         ; $74D3: $83
    ld [$0083], sp                                ; $74D4: $08 $83 $00
    ld bc, $8808                                  ; $74D7: $01 $08 $88
    and d                                         ; $74DA: $A2
    add d                                         ; $74DB: $82
    ld [bc], a                                    ; $74DC: $02
    add d                                         ; $74DD: $82
    and a                                         ; $74DE: $A7
    add e                                         ; $74DF: $83
    and b                                         ; $74E0: $A0
    add l                                         ; $74E1: $85
    and c                                         ; $74E2: $A1
    add l                                         ; $74E3: $85
    ld [bc], a                                    ; $74E4: $02
    ld [bc], a                                    ; $74E5: $02
    and l                                         ; $74E6: $A5
    and h                                         ; $74E7: $A4
    adc l                                         ; $74E8: $8D
    ld [bc], a                                    ; $74E9: $02
    add e                                         ; $74EA: $83
    and a                                         ; $74EB: $A7
    add e                                         ; $74EC: $83
    and c                                         ; $74ED: $A1
    adc b                                         ; $74EE: $88
    ld [bc], a                                    ; $74EF: $02
    add e                                         ; $74F0: $83
    and [hl]                                      ; $74F1: $A6
    add e                                         ; $74F2: $83
    ld [$0083], sp                                ; $74F3: $08 $83 $00
    ld bc, $8508                                  ; $74F6: $01 $08 $85
    and d                                         ; $74F9: $A2
    add d                                         ; $74FA: $82
    and e                                         ; $74FB: $A3
    inc bc                                        ; $74FC: $03
    and d                                         ; $74FD: $A2
    ld [bc], a                                    ; $74FE: $02
    ld [bc], a                                    ; $74FF: $02
    add d                                         ; $7500: $82
    and a                                         ; $7501: $A7
    add a                                         ; $7502: $87
    and b                                         ; $7503: $A0
    add d                                         ; $7504: $82
    and d                                         ; $7505: $A2
    sub b                                         ; $7506: $90
    ld [bc], a                                    ; $7507: $02
    ld bc, $86A7                                  ; $7508: $01 $A7 $86
    and b                                         ; $750B: $A0
    add e                                         ; $750C: $83
    and c                                         ; $750D: $A1
    add a                                         ; $750E: $87
    ld [bc], a                                    ; $750F: $02
    add e                                         ; $7510: $83
    and a                                         ; $7511: $A7
    add a                                         ; $7512: $87
    ld [$A285], sp                                ; $7513: $08 $85 $A2
    inc bc                                        ; $7516: $03
    and c                                         ; $7517: $A1
    ld [bc], a                                    ; $7518: $02
    ld [bc], a                                    ; $7519: $02
    add e                                         ; $751A: $83
    and b                                         ; $751B: $A0
    add d                                         ; $751C: $82
    and a                                         ; $751D: $A7
    add l                                         ; $751E: $85
    and b                                         ; $751F: $A0
    add d                                         ; $7520: $82
    and c                                         ; $7521: $A1
    ld bc, $8DA2                                  ; $7522: $01 $A2 $8D
    ld [bc], a                                    ; $7525: $02
    ld bc, $8AA7                                  ; $7526: $01 $A7 $8A
    and b                                         ; $7529: $A0
    add d                                         ; $752A: $82
    and c                                         ; $752B: $A1
    add h                                         ; $752C: $84
    ld [bc], a                                    ; $752D: $02
    add d                                         ; $752E: $82
    and b                                         ; $752F: $A0
    add h                                         ; $7530: $84
    and a                                         ; $7531: $A7
    add d                                         ; $7532: $82
    ld [$A28A], sp                                ; $7533: $08 $8A $A2
    ld bc, $85A1                                  ; $7536: $01 $A1 $85
    and b                                         ; $7539: $A0
    add d                                         ; $753A: $82
    and a                                         ; $753B: $A7
    add l                                         ; $753C: $85
    and b                                         ; $753D: $A0
    add e                                         ; $753E: $83
    and c                                         ; $753F: $A1
    adc e                                         ; $7540: $8B
    ld [bc], a                                    ; $7541: $02
    add e                                         ; $7542: $83
    and a                                         ; $7543: $A7
    adc d                                         ; $7544: $8A
    and b                                         ; $7545: $A0
    add e                                         ; $7546: $83
    and c                                         ; $7547: $A1
    add l                                         ; $7548: $85
    and b                                         ; $7549: $A0
    add h                                         ; $754A: $84
    and a                                         ; $754B: $A7
    ret nz                                        ; $754C: $C0

    ld b, c                                       ; $754D: $41
    ld [$2800], sp                                ; $754E: $08 $00 $28
    ld l, b                                       ; $7551: $68
    ld bc, $0E1D                                  ; $7552: $01 $1D $0E
    ret nz                                        ; $7555: $C0

    inc bc                                        ; $7556: $03
    pop bc                                        ; $7557: $C1
    ld b, l                                       ; $7558: $45
    ret c                                         ; $7559: $D8

    and e                                         ; $755A: $A3
    db $E3                                        ; $755B: $E3
    add h                                         ; $755C: $84
    ret c                                         ; $755D: $D8

    inc b                                         ; $755E: $04
    di                                            ; $755F: $F3
    ld c, l                                       ; $7560: $4D
    ld c, [hl]                                    ; $7561: $4E
    ld c, a                                       ; $7562: $4F
    add l                                         ; $7563: $85
    ld d, c                                       ; $7564: $51
    dec b                                         ; $7565: $05
    ld [hl+], a                                   ; $7566: $22
    ld d, c                                       ; $7567: $51
    ld d, c                                       ; $7568: $51
    ld d, h                                       ; $7569: $54
    ld hl, $5184                                  ; $756A: $21 $84 $51
    rlca                                          ; $756D: $07
    ld c, l                                       ; $756E: $4D
    ld c, [hl]                                    ; $756F: $4E
    ld c, a                                       ; $7570: $4F
    ld d, c                                       ; $7571: $51
    inc h                                         ; $7572: $24
    ld [hl+], a                                   ; $7573: $22
    inc hl                                        ; $7574: $23
    add e                                         ; $7575: $83
    add hl, bc                                    ; $7576: $09
    inc b                                         ; $7577: $04
    ld h, h                                       ; $7578: $64
    ld c, l                                       ; $7579: $4D
    ld c, [hl]                                    ; $757A: $4E
    ld c, a                                       ; $757B: $4F
    add h                                         ; $757C: $84
    ld d, c                                       ; $757D: $51
    add h                                         ; $757E: $84
    ret c                                         ; $757F: $D8

    ld b, $F3                                     ; $7580: $06 $F3
    ld e, l                                       ; $7582: $5D
    ld e, [hl]                                    ; $7583: $5E
    ld e, a                                       ; $7584: $5F
    ld h, c                                       ; $7585: $61
    add c                                         ; $7586: $81
    add e                                         ; $7587: $83
    ld h, c                                       ; $7588: $61
    dec b                                         ; $7589: $05
    ld [hl-], a                                   ; $758A: $32
    ld [$6409], sp                                ; $758B: $08 $09 $64
    ld sp, $6184                                  ; $758E: $31 $84 $61
    rlca                                          ; $7591: $07
    ld e, l                                       ; $7592: $5D
    ld e, [hl]                                    ; $7593: $5E
    ld e, a                                       ; $7594: $5F
    ld h, c                                       ; $7595: $61
    inc [hl]                                      ; $7596: $34
    ld [hl-], a                                   ; $7597: $32
    inc sp                                        ; $7598: $33
    add e                                         ; $7599: $83
    ld h, c                                       ; $759A: $61
    inc b                                         ; $759B: $04
    ld [hl], h                                    ; $759C: $74
    ld e, l                                       ; $759D: $5D
    ld e, [hl]                                    ; $759E: $5E
    ld e, a                                       ; $759F: $5F
    add h                                         ; $75A0: $84
    ld h, c                                       ; $75A1: $61
    add h                                         ; $75A2: $84
    ret c                                         ; $75A3: $D8

    inc b                                         ; $75A4: $04
    di                                            ; $75A5: $F3
    ld l, l                                       ; $75A6: $6D
    ld l, [hl]                                    ; $75A7: $6E
    ld l, a                                       ; $75A8: $6F
    add l                                         ; $75A9: $85
    ld [hl], c                                    ; $75AA: $71
    dec b                                         ; $75AB: $05
    ld b, d                                       ; $75AC: $42
    jr jr_074_7620                                ; $75AD: $18 $71

    ld [hl], h                                    ; $75AF: $74
    ld b, c                                       ; $75B0: $41
    add h                                         ; $75B1: $84
    ld [hl], c                                    ; $75B2: $71
    rlca                                          ; $75B3: $07
    ld l, l                                       ; $75B4: $6D
    ld l, [hl]                                    ; $75B5: $6E
    ld l, a                                       ; $75B6: $6F
    ld [hl], c                                    ; $75B7: $71
    ld b, h                                       ; $75B8: $44
    ld b, d                                       ; $75B9: $42
    ld b, e                                       ; $75BA: $43
    add e                                         ; $75BB: $83
    ld [hl], c                                    ; $75BC: $71
    inc b                                         ; $75BD: $04
    add h                                         ; $75BE: $84
    ld l, l                                       ; $75BF: $6D
    ld l, [hl]                                    ; $75C0: $6E
    ld l, a                                       ; $75C1: $6F
    add h                                         ; $75C2: $84
    ld [hl], c                                    ; $75C3: $71
    add h                                         ; $75C4: $84
    ret c                                         ; $75C5: $D8

    inc h                                         ; $75C6: $24
    di                                            ; $75C7: $F3
    adc l                                         ; $75C8: $8D
    adc [hl]                                      ; $75C9: $8E
    adc a                                         ; $75CA: $8F
    adc $CF                                       ; $75CB: $CE $CF
    call $CDCE                                    ; $75CD: $CD $CE $CD
    adc $CF                                       ; $75D0: $CE $CF
    call $CDCE                                    ; $75D2: $CD $CE $CD
    adc $CF                                       ; $75D5: $CE $CF
    ld d, e                                       ; $75D7: $53
    adc $8D                                       ; $75D8: $CE $8D
    adc [hl]                                      ; $75DA: $8E
    adc a                                         ; $75DB: $8F
    call $CDCE                                    ; $75DC: $CD $CE $CD
    adc $CF                                       ; $75DF: $CE $CF
    call $CDCE                                    ; $75E1: $CD $CE $CD
    adc l                                         ; $75E4: $8D
    adc [hl]                                      ; $75E5: $8E
    adc a                                         ; $75E6: $8F
    adc $CD                                       ; $75E7: $CE $CD
    adc $CF                                       ; $75E9: $CE $CF
    add h                                         ; $75EB: $84
    ret c                                         ; $75EC: $D8

    ld [bc], a                                    ; $75ED: $02
    di                                            ; $75EE: $F3
    cp [hl]                                       ; $75EF: $BE
    add d                                         ; $75F0: $82
    cp a                                          ; $75F1: $BF
    rlca                                          ; $75F2: $07
    cp [hl]                                       ; $75F3: $BE
    cp a                                          ; $75F4: $BF
    ld d, e                                       ; $75F5: $53
    cp [hl]                                       ; $75F6: $BE
    cp l                                          ; $75F7: $BD
    cp [hl]                                       ; $75F8: $BE
    cp a                                          ; $75F9: $BF
    add d                                         ; $75FA: $82
    cp [hl]                                       ; $75FB: $BE
    rla                                           ; $75FC: $17
    cp l                                          ; $75FD: $BD
    cp [hl]                                       ; $75FE: $BE
    cp a                                          ; $75FF: $BF
    ld h, e                                       ; $7600: $63
    cp [hl]                                       ; $7601: $BE
    cp l                                          ; $7602: $BD
    cp [hl]                                       ; $7603: $BE
    cp a                                          ; $7604: $BF
    cp l                                          ; $7605: $BD
    cp [hl]                                       ; $7606: $BE
    cp l                                          ; $7607: $BD
    cp [hl]                                       ; $7608: $BE
    cp a                                          ; $7609: $BF
    cp l                                          ; $760A: $BD
    cp [hl]                                       ; $760B: $BE
    cp l                                          ; $760C: $BD
    cp [hl]                                       ; $760D: $BE
    cp a                                          ; $760E: $BF
    cp l                                          ; $760F: $BD
    cp [hl]                                       ; $7610: $BE
    cp l                                          ; $7611: $BD
    cp [hl]                                       ; $7612: $BE
    cp a                                          ; $7613: $BF
    add h                                         ; $7614: $84
    ret c                                         ; $7615: $D8

    inc h                                         ; $7616: $24
    di                                            ; $7617: $F3
    cp l                                          ; $7618: $BD
    cp [hl]                                       ; $7619: $BE
    cp l                                          ; $761A: $BD
    cp [hl]                                       ; $761B: $BE
    cp a                                          ; $761C: $BF
    ld h, e                                       ; $761D: $63
    cp [hl]                                       ; $761E: $BE
    cp l                                          ; $761F: $BD

jr_074_7620:
    cp [hl]                                       ; $7620: $BE
    cp a                                          ; $7621: $BF
    ld d, e                                       ; $7622: $53
    cp [hl]                                       ; $7623: $BE
    cp l                                          ; $7624: $BD
    cp [hl]                                       ; $7625: $BE
    cp a                                          ; $7626: $BF
    ld [hl], e                                    ; $7627: $73
    cp [hl]                                       ; $7628: $BE
    cp l                                          ; $7629: $BD
    cp [hl]                                       ; $762A: $BE
    cp a                                          ; $762B: $BF
    cp l                                          ; $762C: $BD
    cp [hl]                                       ; $762D: $BE
    ld d, e                                       ; $762E: $53
    cp [hl]                                       ; $762F: $BE
    cp a                                          ; $7630: $BF
    cp l                                          ; $7631: $BD
    cp [hl]                                       ; $7632: $BE
    cp l                                          ; $7633: $BD
    cp [hl]                                       ; $7634: $BE
    cp a                                          ; $7635: $BF
    ld d, e                                       ; $7636: $53
    cp [hl]                                       ; $7637: $BE
    cp l                                          ; $7638: $BD
    cp [hl]                                       ; $7639: $BE
    cp a                                          ; $763A: $BF
    add h                                         ; $763B: $84
    ret c                                         ; $763C: $D8

    inc h                                         ; $763D: $24
    di                                            ; $763E: $F3
    call $CDCE                                    ; $763F: $CD $CE $CD
    adc $CF                                       ; $7642: $CE $CF
    ld [hl], e                                    ; $7644: $73
    cp [hl]                                       ; $7645: $BE
    cp l                                          ; $7646: $BD
    cp [hl]                                       ; $7647: $BE
    cp a                                          ; $7648: $BF
    ld h, e                                       ; $7649: $63
    adc $CD                                       ; $764A: $CE $CD
    adc $CF                                       ; $764C: $CE $CF
    call $CDCE                                    ; $764E: $CD $CE $CD
    adc $CF                                       ; $7651: $CE $CF
    cp l                                          ; $7653: $BD
    cp [hl]                                       ; $7654: $BE
    ld h, e                                       ; $7655: $63
    cp [hl]                                       ; $7656: $BE
    cp a                                          ; $7657: $BF
    call $CDCE                                    ; $7658: $CD $CE $CD
    adc $CF                                       ; $765B: $CE $CF
    ld h, e                                       ; $765D: $63
    adc $CD                                       ; $765E: $CE $CD
    adc $CF                                       ; $7660: $CE $CF
    add h                                         ; $7662: $84
    ret c                                         ; $7663: $D8

    inc h                                         ; $7664: $24
    di                                            ; $7665: $F3
    call $CDCE                                    ; $7666: $CD $CE $CD
    ld d, e                                       ; $7669: $53
    rst $08                                       ; $766A: $CF
    call $CDCE                                    ; $766B: $CD $CE $CD
    adc $CF                                       ; $766E: $CE $CF
    ld [hl], e                                    ; $7670: $73
    cp [hl]                                       ; $7671: $BE
    cp l                                          ; $7672: $BD
    cp [hl]                                       ; $7673: $BE
    cp a                                          ; $7674: $BF
    ld d, e                                       ; $7675: $53
    cp [hl]                                       ; $7676: $BE
    cp l                                          ; $7677: $BD
    cp [hl]                                       ; $7678: $BE
    cp a                                          ; $7679: $BF
    cp l                                          ; $767A: $BD
    cp [hl]                                       ; $767B: $BE
    ld [hl], e                                    ; $767C: $73
    cp [hl]                                       ; $767D: $BE
    cp a                                          ; $767E: $BF
    cp l                                          ; $767F: $BD
    cp [hl]                                       ; $7680: $BE
    cp l                                          ; $7681: $BD
    cp [hl]                                       ; $7682: $BE
    cp a                                          ; $7683: $BF
    ld [hl], e                                    ; $7684: $73
    cp [hl]                                       ; $7685: $BE
    cp l                                          ; $7686: $BD
    cp [hl]                                       ; $7687: $BE
    cp a                                          ; $7688: $BF
    add h                                         ; $7689: $84
    ret c                                         ; $768A: $D8

    inc h                                         ; $768B: $24
    di                                            ; $768C: $F3
    call $CDCE                                    ; $768D: $CD $CE $CD
    ld h, e                                       ; $7690: $63
    rst $08                                       ; $7691: $CF
    cp l                                          ; $7692: $BD
    cp [hl]                                       ; $7693: $BE
    cp l                                          ; $7694: $BD
    cp [hl]                                       ; $7695: $BE
    cp a                                          ; $7696: $BF
    call $CDCE                                    ; $7697: $CD $CE $CD
    adc $CF                                       ; $769A: $CE $CF
    ld h, e                                       ; $769C: $63
    adc $CD                                       ; $769D: $CE $CD
    adc $CF                                       ; $769F: $CE $CF
    call $CDCE                                    ; $76A1: $CD $CE $CD
    adc $CF                                       ; $76A4: $CE $CF
    cp l                                          ; $76A6: $BD
    cp [hl]                                       ; $76A7: $BE
    cp l                                          ; $76A8: $BD
    cp [hl]                                       ; $76A9: $BE
    cp a                                          ; $76AA: $BF
    call $CDCE                                    ; $76AB: $CD $CE $CD
    adc $CF                                       ; $76AE: $CE $CF
    add h                                         ; $76B0: $84
    ret c                                         ; $76B1: $D8

    inc h                                         ; $76B2: $24
    di                                            ; $76B3: $F3
    cp l                                          ; $76B4: $BD
    cp [hl]                                       ; $76B5: $BE
    cp l                                          ; $76B6: $BD
    ld [hl], e                                    ; $76B7: $73
    cp a                                          ; $76B8: $BF
    cp l                                          ; $76B9: $BD
    cp [hl]                                       ; $76BA: $BE
    cp l                                          ; $76BB: $BD
    cp [hl]                                       ; $76BC: $BE
    cp a                                          ; $76BD: $BF
    cp l                                          ; $76BE: $BD
    cp [hl]                                       ; $76BF: $BE
    cp l                                          ; $76C0: $BD
    cp [hl]                                       ; $76C1: $BE
    cp a                                          ; $76C2: $BF
    ld [hl], e                                    ; $76C3: $73
    cp [hl]                                       ; $76C4: $BE
    cp l                                          ; $76C5: $BD
    cp [hl]                                       ; $76C6: $BE
    cp a                                          ; $76C7: $BF
    cp l                                          ; $76C8: $BD
    cp [hl]                                       ; $76C9: $BE
    cp l                                          ; $76CA: $BD
    cp [hl]                                       ; $76CB: $BE
    cp a                                          ; $76CC: $BF
    cp l                                          ; $76CD: $BD
    cp [hl]                                       ; $76CE: $BE
    cp l                                          ; $76CF: $BD
    cp [hl]                                       ; $76D0: $BE
    cp a                                          ; $76D1: $BF
    cp l                                          ; $76D2: $BD
    cp [hl]                                       ; $76D3: $BE
    cp l                                          ; $76D4: $BD
    cp [hl]                                       ; $76D5: $BE
    cp a                                          ; $76D6: $BF
    add h                                         ; $76D7: $84
    ret c                                         ; $76D8: $D8

    inc h                                         ; $76D9: $24
    di                                            ; $76DA: $F3
    cp l                                          ; $76DB: $BD
    cp [hl]                                       ; $76DC: $BE
    cp l                                          ; $76DD: $BD
    cp [hl]                                       ; $76DE: $BE
    cp a                                          ; $76DF: $BF
    cp l                                          ; $76E0: $BD
    cp [hl]                                       ; $76E1: $BE
    cp l                                          ; $76E2: $BD
    cp [hl]                                       ; $76E3: $BE
    ld d, e                                       ; $76E4: $53
    cp l                                          ; $76E5: $BD
    cp [hl]                                       ; $76E6: $BE
    cp l                                          ; $76E7: $BD
    cp [hl]                                       ; $76E8: $BE
    cp a                                          ; $76E9: $BF
    cp l                                          ; $76EA: $BD
    cp [hl]                                       ; $76EB: $BE
    cp l                                          ; $76EC: $BD
    cp [hl]                                       ; $76ED: $BE
    cp a                                          ; $76EE: $BF
    cp l                                          ; $76EF: $BD
    cp [hl]                                       ; $76F0: $BE
    cp l                                          ; $76F1: $BD
    cp [hl]                                       ; $76F2: $BE
    cp a                                          ; $76F3: $BF
    cp l                                          ; $76F4: $BD
    cp [hl]                                       ; $76F5: $BE
    cp l                                          ; $76F6: $BD
    cp [hl]                                       ; $76F7: $BE
    cp a                                          ; $76F8: $BF
    cp l                                          ; $76F9: $BD
    cp [hl]                                       ; $76FA: $BE
    cp l                                          ; $76FB: $BD
    cp [hl]                                       ; $76FC: $BE
    cp a                                          ; $76FD: $BF
    add l                                         ; $76FE: $85
    ret c                                         ; $76FF: $D8

    inc b                                         ; $7700: $04
    db $D3                                        ; $7701: $D3
    push hl                                       ; $7702: $E5
    cp l                                          ; $7703: $BD
    cp [hl]                                       ; $7704: $BE
    add d                                         ; $7705: $82
    cp l                                          ; $7706: $BD
    rlca                                          ; $7707: $07
    cp [hl]                                       ; $7708: $BE
    cp l                                          ; $7709: $BD
    cp [hl]                                       ; $770A: $BE
    ld h, e                                       ; $770B: $63
    cp [hl]                                       ; $770C: $BE
    cp a                                          ; $770D: $BF
    db $E4                                        ; $770E: $E4
    sub [hl]                                      ; $770F: $96
    db $D3                                        ; $7710: $D3
    add [hl]                                      ; $7711: $86
    ret c                                         ; $7712: $D8

    inc c                                         ; $7713: $0C
    di                                            ; $7714: $F3
    cp l                                          ; $7715: $BD
    cp [hl]                                       ; $7716: $BE
    cp l                                          ; $7717: $BD
    cp [hl]                                       ; $7718: $BE
    cp a                                          ; $7719: $BF
    cp l                                          ; $771A: $BD
    cp [hl]                                       ; $771B: $BE
    ld [hl], e                                    ; $771C: $73
    cp [hl]                                       ; $771D: $BE
    cp a                                          ; $771E: $BF
    ld a, [c]                                     ; $771F: $F2
    sbc h                                         ; $7720: $9C
    ret c                                         ; $7721: $D8

    inc c                                         ; $7722: $0C
    di                                            ; $7723: $F3
    cp l                                          ; $7724: $BD
    cp [hl]                                       ; $7725: $BE
    cp l                                          ; $7726: $BD
    cp [hl]                                       ; $7727: $BE
    cp a                                          ; $7728: $BF
    cp l                                          ; $7729: $BD
    cp [hl]                                       ; $772A: $BE
    cp a                                          ; $772B: $BF
    cp [hl]                                       ; $772C: $BE
    cp a                                          ; $772D: $BF
    ld a, [c]                                     ; $772E: $F2
    sbc h                                         ; $772F: $9C
    ret c                                         ; $7730: $D8

    inc c                                         ; $7731: $0C
    di                                            ; $7732: $F3
    cp l                                          ; $7733: $BD
    cp [hl]                                       ; $7734: $BE
    cp l                                          ; $7735: $BD
    cp [hl]                                       ; $7736: $BE
    cp a                                          ; $7737: $BF
    cp l                                          ; $7738: $BD
    cp [hl]                                       ; $7739: $BE
    cp a                                          ; $773A: $BF
    cp [hl]                                       ; $773B: $BE
    cp a                                          ; $773C: $BF
    ld a, [c]                                     ; $773D: $F2
    sub [hl]                                      ; $773E: $96
    ret c                                         ; $773F: $D8

    nop                                           ; $7740: $00

    db $19, $E1, $00, $0E, $14

    xor $02                                       ; $7746: $EE $02

    db $84, $12, $11, $07, $08, $09, $0A, $25, $07, $08, $07, $08, $25, $07, $08, $07
    db $08, $12, $2B, $2C, $82, $12, $02, $1B, $1C, $82, $12, $10, $1B, $1C, $25, $18
    db $19, $1A, $17, $18, $17, $18, $17, $18, $17, $18, $17, $25, $85, $12, $07, $2B
    db $2C, $1B, $1C, $2B, $2C, $25, $82, $2A, $01, $35, $85, $2A, $01, $35, $83, $2A
    db $05, $25, $12, $12, $1B, $1C, $83, $12, $02, $2B, $2C, $82, $12, $01, $25, $8C
    db $27, $07, $25, $12, $12, $2B, $2C, $1B, $1C, $83, $12, $03, $1B, $1C, $25, $8C
    db $3F, $10, $25, $12, $1B, $1C, $12, $2B, $2C, $12, $1C, $12, $2B, $2C, $25, $3F
    db $3A, $3B, $82, $3E, $02, $3C, $3D, $84, $3F, $08, $3A, $09, $0A, $07, $08, $13
    db $14, $07, $82, $08, $04, $09, $0A, $07, $08, $82, $3F, $02, $4A, $4B, $82, $3E
    db $01, $4F, $84, $3F, $13, $4E, $19, $1A, $17, $18, $23, $24, $18, $25, $18, $19
    db $1A, $17, $18, $3F, $0C, $0B, $3F, $4E, $82, $3E, $02, $3C, $3D, $82, $3F, $02
    db $4A, $35, $83, $2A, $04, $15, $16, $2A, $25, $84, $2A, $05, $35, $3F, $3F, $3A
    db $3B, $82, $3E, $06, $6E, $5F, $3E, $3C, $3D, $3F, $85, $27, $03, $26, $27, $25
    db $85, $27, $02, $3A, $3B, $82, $3E, $02, $6E, $5D, $82, $3E, $01, $4F, $86, $3F
    db $01, $0B, $83, $3F, $05, $25, $3C, $3D, $3A, $3B, $83, $3E, $02, $5E, $6F, $82
    db $3E, $02, $4C, $4D, $89, $3F, $03, $25, $3F, $25, $84, $3E, $06, $5E, $6F, $5F
    db $3E, $4C, $4D, $83, $3F, $17, $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $3F, $35
    db $0B, $25, $08, $07, $08, $09, $0A, $3E, $25, $4F, $3A, $3B, $4F, $82, $3F, $0C
    db $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $3F, $27, $3F, $25, $84, $02, $05, $25
    db $4C, $35, $4C, $4D, $84, $3F, $08, $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $83
    db $3F, $08, $25, $12, $1B, $1C, $12, $25, $29, $27, $82, $3F, $17, $25, $3F, $0C
    db $0B, $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $3F, $3A, $3B, $25, $12, $2B, $2C
    db $12, $25, $29, $0B, $82, $3F, $01, $35, $8A, $3F, $02, $3A, $3B, $82, $3E, $07
    db $25, $12, $12, $1B, $1C, $25, $29, $83, $3F, $01, $27, $83, $3F, $07, $3A, $3B
    db $4C, $4D, $3F, $3A, $3B, $83, $3E, $1D, $5E, $25, $1B, $1C, $2B, $2C, $07, $08
    db $25, $07, $08, $07, $08, $07, $08, $09, $0A, $07, $08, $07, $08, $09, $0A, $09
    db $0A, $07, $08, $2B, $2C, $82, $12, $84, $02, $02, $1B, $1C, $85, $02, $02, $1B
    db $1C, $88, $02, $86, $12, $04, $1B, $1C, $2B, $2C, $83, $12, $04, $1B, $1C, $2B
    db $2C, $82, $12, $02, $1B, $1C, $8A, $12, $02, $2B, $2C, $85, $12, $02, $2B, $2C
    db $84, $12, $02, $2B, $2C, $C0, $9A, $12, $02, $13, $14, $97, $12, $02, $23, $24
    db $97, $12, $02, $15, $16, $97, $12, $00

    inc a                                         ; $7930: $3C
    db $10                                        ; $7931: $10
    ld c, $AE                                     ; $7932: $0E $AE
    ld [$C18B], sp                                ; $7934: $08 $8B $C1
    add e                                         ; $7937: $83
    nop                                           ; $7938: $00
    xor [hl]                                      ; $7939: $AE
    ld [$008A], sp                                ; $793A: $08 $8A $00
    ld bc, $8308                                  ; $793D: $01 $08 $83
    nop                                           ; $7940: $00
    xor [hl]                                      ; $7941: $AE
    ld [$008A], sp                                ; $7942: $08 $8A $00
    ld bc, $8308                                  ; $7945: $01 $08 $83
    nop                                           ; $7948: $00
    xor l                                         ; $7949: $AD
    ld [$008B], sp                                ; $794A: $08 $8B $00
    ld bc, $8308                                  ; $794D: $01 $08 $83
    nop                                           ; $7950: $00
    xor h                                         ; $7951: $AC
    ld [$008C], sp                                ; $7952: $08 $8C $00
    ld bc, $8308                                  ; $7955: $01 $08 $83
    nop                                           ; $7958: $00
    xor e                                         ; $7959: $AB
    ld [$008D], sp                                ; $795A: $08 $8D $00
    ld bc, $8308                                  ; $795D: $01 $08 $83
    nop                                           ; $7960: $00
    xor d                                         ; $7961: $AA
    ld [$008E], sp                                ; $7962: $08 $8E $00
    ld bc, $8308                                  ; $7965: $01 $08 $83
    nop                                           ; $7968: $00
    xor c                                         ; $7969: $A9
    ld [$008F], sp                                ; $796A: $08 $8F $00
    add d                                         ; $796D: $82
    ld [$0082], sp                                ; $796E: $08 $82 $00
    xor b                                         ; $7971: $A8
    ld [$0090], sp                                ; $7972: $08 $90 $00
    ld bc, $8308                                  ; $7975: $01 $08 $83
    nop                                           ; $7978: $00
    add [hl]                                      ; $7979: $86
    ld [$008B], sp                                ; $797A: $08 $8B $00
    adc [hl]                                      ; $797D: $8E
    ld [$0099], sp                                ; $797E: $08 $99 $00
    ld bc, $8308                                  ; $7981: $01 $08 $83
    nop                                           ; $7984: $00
    add l                                         ; $7985: $85
    ld [$008D], sp                                ; $7986: $08 $8D $00
    adc h                                         ; $7989: $8C
    ld [$009A], sp                                ; $798A: $08 $9A $00
    add e                                         ; $798D: $83
    ld [$0001], sp                                ; $798E: $08 $01 $00
    add h                                         ; $7991: $84
    ld [$008F], sp                                ; $7992: $08 $8F $00
    adc d                                         ; $7995: $8A
    ld [$009D], sp                                ; $7996: $08 $9D $00
    ld [bc], a                                    ; $7999: $02
    ld [$8300], sp                                ; $799A: $08 $00 $83
    ld [$0091], sp                                ; $799D: $08 $91 $00
    adc b                                         ; $79A0: $88
    ld [$009E], sp                                ; $79A1: $08 $9E $00
    inc bc                                        ; $79A4: $03
    ld [$0800], sp                                ; $79A5: $08 $00 $08
    sub h                                         ; $79A8: $94
    nop                                           ; $79A9: $00
    add [hl]                                      ; $79AA: $86
    ld [$009E], sp                                ; $79AB: $08 $9E $00
    add d                                         ; $79AE: $82
    ld [$0002], sp                                ; $79AF: $08 $02 $00
    ld [$0095], sp                                ; $79B2: $08 $95 $00
    add l                                         ; $79B5: $85
    ld [$009E], sp                                ; $79B6: $08 $9E $00
    inc b                                         ; $79B9: $04
    ld [rRAMG], sp                                ; $79BA: $08 $00 $00
    ld [$0095], sp                                ; $79BD: $08 $95 $00
    add h                                         ; $79C0: $84
    ld [$0095], sp                                ; $79C1: $08 $95 $00
    add h                                         ; $79C4: $84
    ld [$0086], sp                                ; $79C5: $08 $86 $00
    inc b                                         ; $79C8: $04
    ld [rRAMG], sp                                ; $79C9: $08 $00 $00
    ld [$00AE], sp                                ; $79CC: $08 $AE $00
    add h                                         ; $79CF: $84
    ld [$0086], sp                                ; $79D0: $08 $86 $00
    add h                                         ; $79D3: $84
    ld [$00A5], sp                                ; $79D4: $08 $A5 $00
    add e                                         ; $79D7: $83
    ld [$0085], sp                                ; $79D8: $08 $85 $00
    add l                                         ; $79DB: $85
    ld [$0088], sp                                ; $79DC: $08 $88 $00
    ld [bc], a                                    ; $79DF: $02
    ld [$A4C2], sp                                ; $79E0: $08 $C2 $A4
    nop                                           ; $79E3: $00
    add l                                         ; $79E4: $85
    ld [$0083], sp                                ; $79E5: $08 $83 $00
    adc b                                         ; $79E8: $88
    ld [$0085], sp                                ; $79E9: $08 $85 $00
    add e                                         ; $79EC: $83
    ld [$0089], sp                                ; $79ED: $08 $89 $00
    add h                                         ; $79F0: $84
    ld [$0097], sp                                ; $79F1: $08 $97 $00
    add l                                         ; $79F4: $85
    ld [$0083], sp                                ; $79F5: $08 $83 $00
    sub b                                         ; $79F8: $90
    ld [$0089], sp                                ; $79F9: $08 $89 $00
    add l                                         ; $79FC: $85
    ld [$0096], sp                                ; $79FD: $08 $96 $00
    add [hl]                                      ; $7A00: $86
    ld [$0001], sp                                ; $7A01: $08 $01 $00
    sub c                                         ; $7A04: $91
    ld [$0088], sp                                ; $7A05: $08 $88 $00
    add a                                         ; $7A08: $87
    ld [$0095], sp                                ; $7A09: $08 $95 $00
    sbc b                                         ; $7A0C: $98
    ld [$0083], sp                                ; $7A0D: $08 $83 $00
    adc h                                         ; $7A10: $8C
    ld [$0095], sp                                ; $7A11: $08 $95 $00
    sbc b                                         ; $7A14: $98
    ld [$0082], sp                                ; $7A15: $08 $82 $00
    adc h                                         ; $7A18: $8C
    ld [$0097], sp                                ; $7A19: $08 $97 $00
    and h                                         ; $7A1C: $A4
    ld [$009A], sp                                ; $7A1D: $08 $9A $00
    and e                                         ; $7A20: $A3
    ld [$0099], sp                                ; $7A21: $08 $99 $00
    and [hl]                                      ; $7A24: $A6
    ld [$008B], sp                                ; $7A25: $08 $8B $00
    add d                                         ; $7A28: $82
    ld [$0088], sp                                ; $7A29: $08 $88 $00
    xor b                                         ; $7A2C: $A8
    ld [$0089], sp                                ; $7A2D: $08 $89 $00
    or e                                          ; $7A30: $B3
    ld [$0088], sp                                ; $7A31: $08 $88 $00
    or e                                          ; $7A34: $B3
    ld [$0089], sp                                ; $7A35: $08 $89 $00
    or e                                          ; $7A38: $B3
    ld [$0089], sp                                ; $7A39: $08 $89 $00
    or e                                          ; $7A3C: $B3
    ld [$008A], sp                                ; $7A3D: $08 $8A $00
    or c                                          ; $7A40: $B1
    ld [$008B], sp                                ; $7A41: $08 $8B $00
    adc h                                         ; $7A44: $8C
    ld [$008A], sp                                ; $7A45: $08 $8A $00
    sbc d                                         ; $7A48: $9A
    ld [$008C], sp                                ; $7A49: $08 $8C $00
    adc e                                         ; $7A4C: $8B
    ld [$008C], sp                                ; $7A4D: $08 $8C $00
    sbc b                                         ; $7A50: $98
    ld [$008D], sp                                ; $7A51: $08 $8D $00
    adc d                                         ; $7A54: $8A
    ld [$008E], sp                                ; $7A55: $08 $8E $00
    sub [hl]                                      ; $7A58: $96
    ld [$008E], sp                                ; $7A59: $08 $8E $00
    adc c                                         ; $7A5C: $89
    ld [$0090], sp                                ; $7A5D: $08 $90 $00
    sub h                                         ; $7A60: $94
    ld [$0090], sp                                ; $7A61: $08 $90 $00
    add [hl]                                      ; $7A64: $86
    ld [$0094], sp                                ; $7A65: $08 $94 $00
    sub b                                         ; $7A68: $90
    ld [$00AC], sp                                ; $7A69: $08 $AC $00
    adc a                                         ; $7A6C: $8F
    ld [$00AD], sp                                ; $7A6D: $08 $AD $00
    adc [hl]                                      ; $7A70: $8E
    ld [$00AD], sp                                ; $7A71: $08 $AD $00
    adc [hl]                                      ; $7A74: $8E
    ld [$00AE], sp                                ; $7A75: $08 $AE $00
    adc l                                         ; $7A78: $8D
    ld [$00AF], sp                                ; $7A79: $08 $AF $00
    adc h                                         ; $7A7C: $8C
    ld [$008E], sp                                ; $7A7D: $08 $8E $00
    add e                                         ; $7A80: $83
    ld [$009F], sp                                ; $7A81: $08 $9F $00
    adc e                                         ; $7A84: $8B
    ld [$008D], sp                                ; $7A85: $08 $8D $00
    add [hl]                                      ; $7A88: $86
    ld [$008E], sp                                ; $7A89: $08 $8E $00
    add d                                         ; $7A8C: $82
    ld [$008E], sp                                ; $7A8D: $08 $8E $00
    add a                                         ; $7A90: $87
    ld [$0090], sp                                ; $7A91: $08 $90 $00
    adc b                                         ; $7A94: $88
    ld [$008C], sp                                ; $7A95: $08 $8C $00
    add e                                         ; $7A98: $83
    ld [$008E], sp                                ; $7A99: $08 $8E $00
    add a                                         ; $7A9C: $87
    ld [$0090], sp                                ; $7A9D: $08 $90 $00
    adc c                                         ; $7AA0: $89
    ld [$0086], sp                                ; $7AA1: $08 $86 $00
    add e                                         ; $7AA4: $83
    ld [$0001], sp                                ; $7AA5: $08 $01 $00
    add l                                         ; $7AA8: $85
    ld [$008D], sp                                ; $7AA9: $08 $8D $00
    add a                                         ; $7AAC: $87
    ld [$0090], sp                                ; $7AAD: $08 $90 $00
    adc e                                         ; $7AB0: $8B
    ld [$0001], sp                                ; $7AB1: $08 $01 $00
    adc h                                         ; $7AB4: $8C
    ld [$008D], sp                                ; $7AB5: $08 $8D $00
    add a                                         ; $7AB8: $87
    ld [$0090], sp                                ; $7AB9: $08 $90 $00
    sbc b                                         ; $7ABC: $98
    ld [$008D], sp                                ; $7ABD: $08 $8D $00
    add a                                         ; $7AC0: $87
    ld [$0091], sp                                ; $7AC1: $08 $91 $00
    sub a                                         ; $7AC4: $97
    ld [$008C], sp                                ; $7AC5: $08 $8C $00
    adc b                                         ; $7AC8: $88
    ld [$0091], sp                                ; $7AC9: $08 $91 $00
    sub [hl]                                      ; $7ACC: $96
    ld [$008D], sp                                ; $7ACD: $08 $8D $00
    adc b                                         ; $7AD0: $88
    ld [$0098], sp                                ; $7AD1: $08 $98 $00
    adc [hl]                                      ; $7AD4: $8E
    ld [$008E], sp                                ; $7AD5: $08 $8E $00
    adc b                                         ; $7AD8: $88
    ld [$0098], sp                                ; $7AD9: $08 $98 $00
    adc l                                         ; $7ADC: $8D
    ld [$008F], sp                                ; $7ADD: $08 $8F $00
    adc b                                         ; $7AE0: $88
    ld [$0098], sp                                ; $7AE1: $08 $98 $00
    adc h                                         ; $7AE4: $8C
    ld [$0090], sp                                ; $7AE5: $08 $90 $00
    adc b                                         ; $7AE8: $88
    ld [$0098], sp                                ; $7AE9: $08 $98 $00
    adc h                                         ; $7AEC: $8C
    ld [$0091], sp                                ; $7AED: $08 $91 $00
    adc c                                         ; $7AF0: $89
    ld [$0095], sp                                ; $7AF1: $08 $95 $00
    adc l                                         ; $7AF4: $8D
    ld [$0092], sp                                ; $7AF5: $08 $92 $00
    adc c                                         ; $7AF8: $89
    ld [$0093], sp                                ; $7AF9: $08 $93 $00
    adc [hl]                                      ; $7AFC: $8E
    ld [$0090], sp                                ; $7AFD: $08 $90 $00
    adc l                                         ; $7B00: $8D
    ld [$0090], sp                                ; $7B01: $08 $90 $00
    adc a                                         ; $7B04: $8F
    ld [$008F], sp                                ; $7B05: $08 $8F $00
    sub b                                         ; $7B08: $90
    ld [$008E], sp                                ; $7B09: $08 $8E $00
    adc a                                         ; $7B0C: $8F
    ld [$008F], sp                                ; $7B0D: $08 $8F $00
    sub b                                         ; $7B10: $90
    ld [$008D], sp                                ; $7B11: $08 $8D $00
    sub b                                         ; $7B14: $90
    ld [$008E], sp                                ; $7B15: $08 $8E $00
    xor [hl]                                      ; $7B18: $AE
    ld [$C08C], sp                                ; $7B19: $08 $8C $C0
    adc e                                         ; $7B1C: $8B
    ld [$1400], sp                                ; $7B1D: $08 $00 $14
    or h                                          ; $7B20: $B4
    nop                                           ; $7B21: $00
    add hl, bc                                    ; $7B22: $09
    ld e, $20                                     ; $7B23: $1E $20
    inc bc                                        ; $7B25: $03
    ret nz                                        ; $7B26: $C0

    ld b, d                                       ; $7B27: $42
    inc h                                         ; $7B28: $24
    ld [$2625], sp                                ; $7B29: $08 $25 $26
    jr z, jr_074_7B55                             ; $7B2C: $28 $27

    jr z, jr_074_7B57                             ; $7B2E: $28 $27

    add hl, hl                                    ; $7B30: $29
    ld a, [hl+]                                   ; $7B31: $2A
    adc e                                         ; $7B32: $8B
    inc h                                         ; $7B33: $24
    ld a, [bc]                                    ; $7B34: $0A
    inc [hl]                                      ; $7B35: $34
    dec [hl]                                      ; $7B36: $35
    ld [hl], $38                                  ; $7B37: $36 $38
    scf                                           ; $7B39: $37
    jr c, jr_074_7B73                             ; $7B3A: $38 $37

    add hl, sp                                    ; $7B3C: $39
    ld a, [hl-]                                   ; $7B3D: $3A
    dec sp                                        ; $7B3E: $3B
    add a                                         ; $7B3F: $87
    inc h                                         ; $7B40: $24
    rlca                                          ; $7B41: $07
    dec h                                         ; $7B42: $25
    ld a, [hl+]                                   ; $7B43: $2A
    inc h                                         ; $7B44: $24
    inc e                                         ; $7B45: $1C
    dec e                                         ; $7B46: $1D
    ld a, [bc]                                    ; $7B47: $0A
    dec bc                                        ; $7B48: $0B
    add e                                         ; $7B49: $83
    rrca                                          ; $7B4A: $0F
    ld b, $0B                                     ; $7B4B: $06 $0B
    ld e, $1F                                     ; $7B4D: $1E $1F
    inc h                                         ; $7B4F: $24
    dec h                                         ; $7B50: $25
    ld a, [hl+]                                   ; $7B51: $2A
    add e                                         ; $7B52: $83
    inc h                                         ; $7B53: $24
    dec b                                         ; $7B54: $05

jr_074_7B55:
    inc [hl]                                      ; $7B55: $34
    dec [hl]                                      ; $7B56: $35

jr_074_7B57:
    ld a, [hl-]                                   ; $7B57: $3A
    dec sp                                        ; $7B58: $3B
    ld b, [hl]                                    ; $7B59: $46
    add d                                         ; $7B5A: $82
    rrca                                          ; $7B5B: $0F
    inc bc                                        ; $7B5C: $03
    ld a, [bc]                                    ; $7B5D: $0A
    dec bc                                        ; $7B5E: $0B
    rrca                                          ; $7B5F: $0F
    add d                                         ; $7B60: $82
    ld a, [bc]                                    ; $7B61: $0A
    ld b, $0B                                     ; $7B62: $06 $0B
    ld b, a                                       ; $7B64: $47
    inc [hl]                                      ; $7B65: $34
    dec [hl]                                      ; $7B66: $35
    ld a, [hl-]                                   ; $7B67: $3A
    dec sp                                        ; $7B68: $3B
    add d                                         ; $7B69: $82
    inc h                                         ; $7B6A: $24
    dec b                                         ; $7B6B: $05
    inc e                                         ; $7B6C: $1C
    dec e                                         ; $7B6D: $1D
    ld e, $1F                                     ; $7B6E: $1E $1F
    ld d, [hl]                                    ; $7B70: $56
    adc b                                         ; $7B71: $88
    rrca                                          ; $7B72: $0F

jr_074_7B73:
    dec b                                         ; $7B73: $05
    ld d, a                                       ; $7B74: $57
    inc e                                         ; $7B75: $1C
    dec e                                         ; $7B76: $1D
    ld e, $1F                                     ; $7B77: $1E $1F
    add d                                         ; $7B79: $82
    inc h                                         ; $7B7A: $24
    ld [$0F46], sp                                ; $7B7B: $08 $46 $0F
    dec bc                                        ; $7B7E: $0B
    ld b, a                                       ; $7B7F: $47
    jr nc, jr_074_7BB3                            ; $7B80: $30 $31

    ld a, [bc]                                    ; $7B82: $0A
    dec bc                                        ; $7B83: $0B
    add h                                         ; $7B84: $84
    rrca                                          ; $7B85: $0F
    ld b, $32                                     ; $7B86: $06 $32
    inc sp                                        ; $7B88: $33
    ld b, [hl]                                    ; $7B89: $46
    rrca                                          ; $7B8A: $0F
    dec bc                                        ; $7B8B: $0B
    ld b, a                                       ; $7B8C: $47
    add d                                         ; $7B8D: $82
    inc h                                         ; $7B8E: $24
    ld b, $56                                     ; $7B8F: $06 $56
    rrca                                          ; $7B91: $0F
    rrca                                          ; $7B92: $0F
    ld d, a                                       ; $7B93: $57
    ld b, b                                       ; $7B94: $40
    ld b, c                                       ; $7B95: $41
    add [hl]                                      ; $7B96: $86
    rrca                                          ; $7B97: $0F
    inc bc                                        ; $7B98: $03
    ld b, d                                       ; $7B99: $42
    ld b, e                                       ; $7B9A: $43
    ld d, [hl]                                    ; $7B9B: $56
    add d                                         ; $7B9C: $82
    rrca                                          ; $7B9D: $0F
    dec d                                         ; $7B9E: $15
    ld d, a                                       ; $7B9F: $57
    inc h                                         ; $7BA0: $24
    inc h                                         ; $7BA1: $24
    jr nc, jr_074_7BD5                            ; $7BA2: $30 $31

    ld [hl-], a                                   ; $7BA4: $32
    inc sp                                        ; $7BA5: $33
    ld d, b                                       ; $7BA6: $50
    ld d, c                                       ; $7BA7: $51
    dec hl                                        ; $7BA8: $2B
    inc l                                         ; $7BA9: $2C
    dec l                                         ; $7BAA: $2D
    ld l, $2D                                     ; $7BAB: $2E $2D
    cpl                                           ; $7BAD: $2F
    ld d, d                                       ; $7BAE: $52
    ld d, e                                       ; $7BAF: $53
    jr nc, jr_074_7BE3                            ; $7BB0: $30 $31

    ld [hl-], a                                   ; $7BB2: $32

jr_074_7BB3:
    inc sp                                        ; $7BB3: $33
    add d                                         ; $7BB4: $82
    inc h                                         ; $7BB5: $24
    ld [de], a                                    ; $7BB6: $12
    ld b, b                                       ; $7BB7: $40
    ld b, c                                       ; $7BB8: $41
    ld b, d                                       ; $7BB9: $42
    ld b, e                                       ; $7BBA: $43
    ld h, b                                       ; $7BBB: $60
    ld h, c                                       ; $7BBC: $61
    ld [de], a                                    ; $7BBD: $12
    inc de                                        ; $7BBE: $13
    nop                                           ; $7BBF: $00
    ld bc, $1312                                  ; $7BC0: $01 $12 $13
    ld h, d                                       ; $7BC3: $62
    ld h, e                                       ; $7BC4: $63
    ld b, b                                       ; $7BC5: $40
    ld b, c                                       ; $7BC6: $41
    ld b, d                                       ; $7BC7: $42
    ld b, e                                       ; $7BC8: $43
    add d                                         ; $7BC9: $82
    inc h                                         ; $7BCA: $24
    ld [de], a                                    ; $7BCB: $12
    ld d, b                                       ; $7BCC: $50

Jump_074_7BCD:
    ld d, c                                       ; $7BCD: $51
    ld d, d                                       ; $7BCE: $52
    ld d, e                                       ; $7BCF: $53
    ld h, c                                       ; $7BD0: $61
    ld h, b                                       ; $7BD1: $60
    db $10                                        ; $7BD2: $10
    ld [bc], a                                    ; $7BD3: $02
    inc bc                                        ; $7BD4: $03

jr_074_7BD5:
    ld de, $1110                                  ; $7BD5: $11 $10 $11
    ld h, e                                       ; $7BD8: $63
    ld h, d                                       ; $7BD9: $62
    ld d, b                                       ; $7BDA: $50
    ld d, c                                       ; $7BDB: $51
    ld d, d                                       ; $7BDC: $52
    ld d, e                                       ; $7BDD: $53
    add d                                         ; $7BDE: $82
    inc h                                         ; $7BDF: $24
    ld [de], a                                    ; $7BE0: $12
    ld h, b                                       ; $7BE1: $60
    ld h, c                                       ; $7BE2: $61

jr_074_7BE3:
    ld h, d                                       ; $7BE3: $62
    ld h, e                                       ; $7BE4: $63
    ld h, b                                       ; $7BE5: $60
    ld h, c                                       ; $7BE6: $61
    ld [hl+], a                                   ; $7BE7: $22
    inc hl                                        ; $7BE8: $23
    ld de, $2210                                  ; $7BE9: $11 $10 $22
    inc hl                                        ; $7BEC: $23
    ld h, d                                       ; $7BED: $62
    ld h, e                                       ; $7BEE: $63
    ld h, b                                       ; $7BEF: $60
    ld h, c                                       ; $7BF0: $61
    ld h, d                                       ; $7BF1: $62
    ld h, e                                       ; $7BF2: $63
    add d                                         ; $7BF3: $82
    inc h                                         ; $7BF4: $24
    ld [de], a                                    ; $7BF5: $12
    ld h, c                                       ; $7BF6: $61
    ld h, b                                       ; $7BF7: $60
    ld h, e                                       ; $7BF8: $63
    ld h, d                                       ; $7BF9: $62
    ld h, c                                       ; $7BFA: $61
    ld h, b                                       ; $7BFB: $60
    db $10                                        ; $7BFC: $10
    ld de, $0210                                  ; $7BFD: $11 $10 $02
    inc bc                                        ; $7C00: $03
    ld de, $6263                                  ; $7C01: $11 $63 $62
    ld h, c                                       ; $7C04: $61
    ld h, b                                       ; $7C05: $60
    ld h, e                                       ; $7C06: $63
    ld h, d                                       ; $7C07: $62
    add d                                         ; $7C08: $82
    inc h                                         ; $7C09: $24
    ld [de], a                                    ; $7C0A: $12
    ld h, b                                       ; $7C0B: $60
    ld h, c                                       ; $7C0C: $61
    ld h, d                                       ; $7C0D: $62
    ld h, e                                       ; $7C0E: $63
    ld h, b                                       ; $7C0F: $60
    ld h, c                                       ; $7C10: $61
    ld [hl+], a                                   ; $7C11: $22
    inc hl                                        ; $7C12: $23
    ld de, $2210                                  ; $7C13: $11 $10 $22
    inc hl                                        ; $7C16: $23
    ld h, d                                       ; $7C17: $62
    ld h, e                                       ; $7C18: $63
    ld h, b                                       ; $7C19: $60
    ld h, c                                       ; $7C1A: $61
    ld h, d                                       ; $7C1B: $62
    ld h, e                                       ; $7C1C: $63
    add d                                         ; $7C1D: $82
    inc h                                         ; $7C1E: $24
    ld [de], a                                    ; $7C1F: $12
    ld h, c                                       ; $7C20: $61
    ld h, b                                       ; $7C21: $60
    ld h, e                                       ; $7C22: $63
    ld h, d                                       ; $7C23: $62
    ld [hl], b                                    ; $7C24: $70
    ld [hl], c                                    ; $7C25: $71
    db $10                                        ; $7C26: $10
    ld de, $0504                                  ; $7C27: $11 $04 $05
    db $10                                        ; $7C2A: $10
    ld de, $7372                                  ; $7C2B: $11 $72 $73
    ld h, c                                       ; $7C2E: $61
    ld h, b                                       ; $7C2F: $60
    ld h, e                                       ; $7C30: $63
    ld h, d                                       ; $7C31: $62
    add d                                         ; $7C32: $82
    inc h                                         ; $7C33: $24
    ld [de], a                                    ; $7C34: $12
    ld h, b                                       ; $7C35: $60
    ld h, c                                       ; $7C36: $61
    ld h, d                                       ; $7C37: $62
    ld h, e                                       ; $7C38: $63
    dec c                                         ; $7C39: $0D
    add c                                         ; $7C3A: $81
    jr nz, jr_074_7C5E                            ; $7C3B: $20 $21

    inc d                                         ; $7C3D: $14
    dec d                                         ; $7C3E: $15
    jr nz, jr_074_7C62                            ; $7C3F: $20 $21

    add d                                         ; $7C41: $82
    dec c                                         ; $7C42: $0D
    ld h, b                                       ; $7C43: $60
    ld h, c                                       ; $7C44: $61
    ld h, d                                       ; $7C45: $62
    ld h, e                                       ; $7C46: $63
    add d                                         ; $7C47: $82
    inc h                                         ; $7C48: $24
    inc b                                         ; $7C49: $04
    ld [hl], b                                    ; $7C4A: $70
    ld [hl], c                                    ; $7C4B: $71
    ld [hl], d                                    ; $7C4C: $72
    ld [hl], e                                    ; $7C4D: $73
    adc d                                         ; $7C4E: $8A
    dec c                                         ; $7C4F: $0D
    inc b                                         ; $7C50: $04
    ld [hl], b                                    ; $7C51: $70
    ld [hl], c                                    ; $7C52: $71
    ld [hl], d                                    ; $7C53: $72
    ld [hl], e                                    ; $7C54: $73
    add d                                         ; $7C55: $82
    inc h                                         ; $7C56: $24
    inc bc                                        ; $7C57: $03
    dec c                                         ; $7C58: $0D
    add c                                         ; $7C59: $81
    add d                                         ; $7C5A: $82
    adc h                                         ; $7C5B: $8C
    dec c                                         ; $7C5C: $0D
    inc bc                                        ; $7C5D: $03

jr_074_7C5E:
    add c                                         ; $7C5E: $81
    add d                                         ; $7C5F: $82
    dec c                                         ; $7C60: $0D
    add d                                         ; $7C61: $82

jr_074_7C62:
    inc h                                         ; $7C62: $24
    sub d                                         ; $7C63: $92
    dec c                                         ; $7C64: $0D
    add d                                         ; $7C65: $82
    inc h                                         ; $7C66: $24
    add h                                         ; $7C67: $84
    dec c                                         ; $7C68: $0D
    ld bc, $880C                                  ; $7C69: $01 $0C $88
    dec c                                         ; $7C6C: $0D
    ld bc, $840E                                  ; $7C6D: $01 $0E $84
    dec c                                         ; $7C70: $0D
    add d                                         ; $7C71: $82
    inc h                                         ; $7C72: $24
    add h                                         ; $7C73: $84
    dec c                                         ; $7C74: $0D
    ld [bc], a                                    ; $7C75: $02
    inc h                                         ; $7C76: $24
    inc c                                         ; $7C77: $0C
    add [hl]                                      ; $7C78: $86
    dec c                                         ; $7C79: $0D
    ld [bc], a                                    ; $7C7A: $02
    ld c, $24                                     ; $7C7B: $0E $24
    add h                                         ; $7C7D: $84
    dec c                                         ; $7C7E: $0D
    add d                                         ; $7C7F: $82
    inc h                                         ; $7C80: $24
    inc b                                         ; $7C81: $04
    inc c                                         ; $7C82: $0C
    dec c                                         ; $7C83: $0D
    dec c                                         ; $7C84: $0D
    ld c, $8A                                     ; $7C85: $0E $8A
    inc h                                         ; $7C87: $24
    inc b                                         ; $7C88: $04
    inc c                                         ; $7C89: $0C
    dec c                                         ; $7C8A: $0D
    dec c                                         ; $7C8B: $0D
    ld c, $83                                     ; $7C8C: $0E $83
    inc h                                         ; $7C8E: $24
    ld [bc], a                                    ; $7C8F: $02
    inc c                                         ; $7C90: $0C
    ld c, $8C                                     ; $7C91: $0E $8C
    inc h                                         ; $7C93: $24
    ld [bc], a                                    ; $7C94: $02
    inc c                                         ; $7C95: $0C
    ld c, $99                                     ; $7C96: $0E $99
    inc h                                         ; $7C98: $24
    ld [bc], a                                    ; $7C99: $02
    ld d, h                                       ; $7C9A: $54
    ld d, l                                       ; $7C9B: $55
    adc d                                         ; $7C9C: $8A
    inc h                                         ; $7C9D: $24
    ld [bc], a                                    ; $7C9E: $02
    ld d, h                                       ; $7C9F: $54
    ld d, l                                       ; $7CA0: $55
    add [hl]                                      ; $7CA1: $86
    inc h                                         ; $7CA2: $24
    ld [bc], a                                    ; $7CA3: $02
    ld h, h                                       ; $7CA4: $64
    ld h, l                                       ; $7CA5: $65
    adc d                                         ; $7CA6: $8A
    inc h                                         ; $7CA7: $24
    ld [bc], a                                    ; $7CA8: $02
    ld h, h                                       ; $7CA9: $64
    ld h, l                                       ; $7CAA: $65
    add [hl]                                      ; $7CAB: $86
    inc h                                         ; $7CAC: $24
    ld [bc], a                                    ; $7CAD: $02
    ld [hl], h                                    ; $7CAE: $74
    ld [hl], l                                    ; $7CAF: $75
    adc d                                         ; $7CB0: $8A
    inc h                                         ; $7CB1: $24
    ld [bc], a                                    ; $7CB2: $02
    ld [hl], h                                    ; $7CB3: $74
    ld [hl], l                                    ; $7CB4: $75
    add [hl]                                      ; $7CB5: $86
    inc h                                         ; $7CB6: $24
    ld [bc], a                                    ; $7CB7: $02
    add h                                         ; $7CB8: $84
    add l                                         ; $7CB9: $85
    adc d                                         ; $7CBA: $8A
    inc h                                         ; $7CBB: $24
    ld [bc], a                                    ; $7CBC: $02
    add h                                         ; $7CBD: $84
    add l                                         ; $7CBE: $85
    add [hl]                                      ; $7CBF: $86
    inc h                                         ; $7CC0: $24
    add d                                         ; $7CC1: $82
    dec c                                         ; $7CC2: $0D

Jump_074_7CC3:
    inc bc                                        ; $7CC3: $03
    inc h                                         ; $7CC4: $24
    ld d, h                                       ; $7CC5: $54
    ld d, l                                       ; $7CC6: $55
    add h                                         ; $7CC7: $84
    inc h                                         ; $7CC8: $24
    inc bc                                        ; $7CC9: $03
    ld d, h                                       ; $7CCA: $54
    ld d, l                                       ; $7CCB: $55
    inc h                                         ; $7CCC: $24
    add d                                         ; $7CCD: $82
    dec c                                         ; $7CCE: $0D
    add [hl]                                      ; $7CCF: $86
    inc h                                         ; $7CD0: $24
    dec b                                         ; $7CD1: $05
    ld a, [de]                                    ; $7CD2: $1A
    dec de                                        ; $7CD3: $1B
    inc h                                         ; $7CD4: $24
    ld h, h                                       ; $7CD5: $64
    ld h, l                                       ; $7CD6: $65
    add h                                         ; $7CD7: $84
    inc h                                         ; $7CD8: $24
    dec b                                         ; $7CD9: $05
    ld h, h                                       ; $7CDA: $64
    ld h, l                                       ; $7CDB: $65
    inc h                                         ; $7CDC: $24
    ld a, [de]                                    ; $7CDD: $1A
    dec de                                        ; $7CDE: $1B
    adc c                                         ; $7CDF: $89
    inc h                                         ; $7CE0: $24
    ld [bc], a                                    ; $7CE1: $02
    ld [hl], h                                    ; $7CE2: $74

jr_074_7CE3:
    ld [hl], l                                    ; $7CE3: $75
    add h                                         ; $7CE4: $84
    inc h                                         ; $7CE5: $24
    ld [bc], a                                    ; $7CE6: $02
    ld [hl], h                                    ; $7CE7: $74
    ld [hl], l                                    ; $7CE8: $75
    adc h                                         ; $7CE9: $8C
    inc h                                         ; $7CEA: $24
    ld [bc], a                                    ; $7CEB: $02
    add h                                         ; $7CEC: $84
    add l                                         ; $7CED: $85
    add h                                         ; $7CEE: $84
    inc h                                         ; $7CEF: $24
    ld [bc], a                                    ; $7CF0: $02
    add h                                         ; $7CF1: $84
    add l                                         ; $7CF2: $85

jr_074_7CF3:
    adc h                                         ; $7CF3: $8C
    inc h                                         ; $7CF4: $24

jr_074_7CF5:
    add d                                         ; $7CF5: $82
    dec c                                         ; $7CF6: $0D
    add h                                         ; $7CF7: $84
    inc h                                         ; $7CF8: $24
    add d                                         ; $7CF9: $82
    dec c                                         ; $7CFA: $0D
    adc h                                         ; $7CFB: $8C
    inc h                                         ; $7CFC: $24
    ld [bc], a                                    ; $7CFD: $02
    ld a, [de]                                    ; $7CFE: $1A
    dec de                                        ; $7CFF: $1B
    add h                                         ; $7D00: $84
    inc h                                         ; $7D01: $24
    ld [bc], a                                    ; $7D02: $02
    ld a, [de]                                    ; $7D03: $1A
    dec de                                        ; $7D04: $1B
    ret nz                                        ; $7D05: $C0

    ld d, [hl]                                    ; $7D06: $56
    inc h                                         ; $7D07: $24
    nop                                           ; $7D08: $00
    jr jr_074_7CE3                                ; $7D09: $18 $D8

    nop                                           ; $7D0B: $00
    dec c                                         ; $7D0C: $0D
    ld c, $40                                     ; $7D0D: $0E $40
    ld [bc], a                                    ; $7D0F: $02
    add a                                         ; $7D10: $87
    nop                                           ; $7D11: $00
    ld [bc], a                                    ; $7D12: $02
    dec h                                         ; $7D13: $25
    ld h, $83                                     ; $7D14: $26 $83
    nop                                           ; $7D16: $00
    ld [bc], a                                    ; $7D17: $02
    inc b                                         ; $7D18: $04
    dec b                                         ; $7D19: $05
    adc h                                         ; $7D1A: $8C

jr_074_7D1B:
    nop                                           ; $7D1B: $00
    rlca                                          ; $7D1C: $07
    dec h                                         ; $7D1D: $25
    ld h, $A2                                     ; $7D1E: $26 $A2
    and l                                         ; $7D20: $A5
    ld l, [hl]                                    ; $7D21: $6E
    ld l, a                                       ; $7D22: $6F
    ld [hl], $83                                  ; $7D23: $36 $83
    nop                                           ; $7D25: $00
    inc bc                                        ; $7D26: $03
    inc d                                         ; $7D27: $14
    dec d                                         ; $7D28: $15
    and d                                         ; $7D29: $A2
    add h                                         ; $7D2A: $84
    and l                                         ; $7D2B: $A5
    inc bc                                        ; $7D2C: $03
    and c                                         ; $7D2D: $A1
    inc b                                         ; $7D2E: $04
    dec b                                         ; $7D2F: $05
    add e                                         ; $7D30: $83
    nop                                           ; $7D31: $00
    ld [$3534], sp                                ; $7D32: $08 $34 $35
    ld [hl], $B2                                  ; $7D35: $36 $B2
    or l                                          ; $7D37: $B5
    or c                                          ; $7D38: $B1
    add hl, hl                                    ; $7D39: $29
    ld a, [hl+]                                   ; $7D3A: $2A
    add e                                         ; $7D3B: $83
    nop                                           ; $7D3C: $00
    inc bc                                        ; $7D3D: $03
    daa                                           ; $7D3E: $27
    jr z, jr_074_7CF3                             ; $7D3F: $28 $B2

    add h                                         ; $7D41: $84
    or l                                          ; $7D42: $B5
    inc b                                         ; $7D43: $04
    or c                                          ; $7D44: $B1
    inc d                                         ; $7D45: $14
    dec d                                         ; $7D46: $15
    ld d, $82                                     ; $7D47: $16 $82
    nop                                           ; $7D49: $00
    ld [$2994], sp                                ; $7D4A: $08 $94 $29
    ld a, [hl+]                                   ; $7D4D: $2A
    jp nz, $C1C5                                  ; $7D4E: $C2 $C5 $C1

    add hl, sp                                    ; $7D51: $39
    ld a, [hl-]                                   ; $7D52: $3A
    add e                                         ; $7D53: $83
    nop                                           ; $7D54: $00
    inc bc                                        ; $7D55: $03
    scf                                           ; $7D56: $37
    jr c, jr_074_7D1B                             ; $7D57: $38 $C2

    add h                                         ; $7D59: $84
    push bc                                       ; $7D5A: $C5
    inc b                                         ; $7D5B: $04
    pop bc                                        ; $7D5C: $C1
    daa                                           ; $7D5D: $27
    jr z, jr_074_7CF5                             ; $7D5E: $28 $95

    add d                                         ; $7D60: $82
    nop                                           ; $7D61: $00
    ld [$3994], sp                                ; $7D62: $08 $94 $39
    ld a, [hl-]                                   ; $7D65: $3A
    ld [hl-], a                                   ; $7D66: $32
    inc hl                                        ; $7D67: $23
    nop                                           ; $7D68: $00
    ld c, c                                       ; $7D69: $49
    ld c, d                                       ; $7D6A: $4A
    add e                                         ; $7D6B: $83
    nop                                           ; $7D6C: $00
    dec bc                                        ; $7D6D: $0B
    ld b, a                                       ; $7D6E: $47
    ld c, b                                       ; $7D6F: $48
    inc hl                                        ; $7D70: $23
    cp $00                                        ; $7D71: $FE $00
    inc hl                                        ; $7D73: $23
    inc de                                        ; $7D74: $13
    nop                                           ; $7D75: $00
    scf                                           ; $7D76: $37
    jr c, @-$69                                   ; $7D77: $38 $95

    add d                                         ; $7D79: $82
    nop                                           ; $7D7A: $00
    dec b                                         ; $7D7B: $05
    sub h                                         ; $7D7C: $94
    ld c, c                                       ; $7D7D: $49
    ld c, d                                       ; $7D7E: $4A
    nop                                           ; $7D7F: $00
    inc hl                                        ; $7D80: $23
    add [hl]                                      ; $7D81: $86
    nop                                           ; $7D82: $00
    inc bc                                        ; $7D83: $03
    inc hl                                        ; $7D84: $23
    inc de                                        ; $7D85: $13
    inc hl                                        ; $7D86: $23
    add d                                         ; $7D87: $82
    nop                                           ; $7D88: $00
    ld b, $23                                     ; $7D89: $06 $23
    inc de                                        ; $7D8B: $13
    nop                                           ; $7D8C: $00
    ld b, a                                       ; $7D8D: $47
    ld c, b                                       ; $7D8E: $48
    sub l                                         ; $7D8F: $95
    add d                                         ; $7D90: $82
    nop                                           ; $7D91: $00
    ld bc, $8394                                  ; $7D92: $01 $94 $83
    nop                                           ; $7D95: $00
    adc b                                         ; $7D96: $88
    inc hl                                        ; $7D97: $23
    ld bc, $8413                                  ; $7D98: $01 $13 $84
    inc hl                                        ; $7D9B: $23
    ld bc, $8313                                  ; $7D9C: $01 $13 $83
    nop                                           ; $7D9F: $00
    inc b                                         ; $7DA0: $04
    sub l                                         ; $7DA1: $95
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    sub h                                         ; $7DA4: $94
    add e                                         ; $7DA5: $83
    nop                                           ; $7DA6: $00
    ld bc, $8733                                  ; $7DA7: $01 $33 $87
    inc bc                                        ; $7DAA: $03
    ld bc, $8313                                  ; $7DAB: $01 $13 $83
    nop                                           ; $7DAE: $00
    ld [bc], a                                    ; $7DAF: $02
    inc hl                                        ; $7DB0: $23
    inc de                                        ; $7DB1: $13
    add e                                         ; $7DB2: $83
    nop                                           ; $7DB3: $00
    inc b                                         ; $7DB4: $04
    inc b                                         ; $7DB5: $04
    dec b                                         ; $7DB6: $05
    nop                                           ; $7DB7: $00
    sub h                                         ; $7DB8: $94
    add e                                         ; $7DB9: $83
    nop                                           ; $7DBA: $00
    ld bc, $8733                                  ; $7DBB: $01 $33 $87
    nop                                           ; $7DBE: $00
    ld bc, $8313                                  ; $7DBF: $01 $13 $83
    nop                                           ; $7DC2: $00
    ld [bc], a                                    ; $7DC3: $02
    inc hl                                        ; $7DC4: $23
    inc de                                        ; $7DC5: $13
    add e                                         ; $7DC6: $83
    nop                                           ; $7DC7: $00
    inc b                                         ; $7DC8: $04
    inc d                                         ; $7DC9: $14
    dec d                                         ; $7DCA: $15
    dec h                                         ; $7DCB: $25
    ld h, $83                                     ; $7DCC: $26 $83
    nop                                           ; $7DCE: $00
    inc bc                                        ; $7DCF: $03
    inc sp                                        ; $7DD0: $33
    nop                                           ; $7DD1: $00
    nop                                           ; $7DD2: $00
    add e                                         ; $7DD3: $83
    inc sp                                        ; $7DD4: $33
    add d                                         ; $7DD5: $82
    nop                                           ; $7DD6: $00
    ld bc, $8313                                  ; $7DD7: $01 $13 $83
    nop                                           ; $7DDA: $00
    ld [bc], a                                    ; $7DDB: $02
    inc hl                                        ; $7DDC: $23
    inc de                                        ; $7DDD: $13
    add e                                         ; $7DDE: $83
    inc sp                                        ; $7DDF: $33
    inc b                                         ; $7DE0: $04
    daa                                           ; $7DE1: $27
    jr z, @+$37                                   ; $7DE2: $28 $35

    ld [hl], $83                                  ; $7DE4: $36 $83
    nop                                           ; $7DE6: $00
    dec b                                         ; $7DE7: $05
    inc sp                                        ; $7DE8: $33
    nop                                           ; $7DE9: $00
    nop                                           ; $7DEA: $00
    inc sp                                        ; $7DEB: $33
    ld [hl-], a                                   ; $7DEC: $32
    add e                                         ; $7DED: $83
    nop                                           ; $7DEE: $00
    ld bc, $8313                                  ; $7DEF: $01 $13 $83
    nop                                           ; $7DF2: $00
    ld [bc], a                                    ; $7DF3: $02
    inc hl                                        ; $7DF4: $23
    inc bc                                        ; $7DF5: $03
    add e                                         ; $7DF6: $83
    nop                                           ; $7DF7: $00
    inc b                                         ; $7DF8: $04
    scf                                           ; $7DF9: $37
    jr c, jr_074_7E25                             ; $7DFA: $38 $29

    ld a, [hl+]                                   ; $7DFC: $2A
    add e                                         ; $7DFD: $83
    nop                                           ; $7DFE: $00
    inc bc                                        ; $7DFF: $03
    inc sp                                        ; $7E00: $33
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00
    add e                                         ; $7E03: $83
    inc sp                                        ; $7E04: $33
    add d                                         ; $7E05: $82
    nop                                           ; $7E06: $00
    dec c                                         ; $7E07: $0D
    inc de                                        ; $7E08: $13
    nop                                           ; $7E09: $00
    nop                                           ; $7E0A: $00
    ld [hl+], a                                   ; $7E0B: $22
    inc hl                                        ; $7E0C: $23
    inc bc                                        ; $7E0D: $03
    nop                                           ; $7E0E: $00
    ld [hl+], a                                   ; $7E0F: $22
    nop                                           ; $7E10: $00
    ld b, a                                       ; $7E11: $47
    ld c, b                                       ; $7E12: $48
    add hl, sp                                    ; $7E13: $39
    ld a, [hl-]                                   ; $7E14: $3A
    add e                                         ; $7E15: $83
    nop                                           ; $7E16: $00
    ld bc, $8733                                  ; $7E17: $01 $33 $87
    nop                                           ; $7E1A: $00
    ld bc, $8313                                  ; $7E1B: $01 $13 $83
    nop                                           ; $7E1E: $00
    ld [bc], a                                    ; $7E1F: $02
    inc hl                                        ; $7E20: $23
    inc bc                                        ; $7E21: $03
    add l                                         ; $7E22: $85
    nop                                           ; $7E23: $00
    ld [bc], a                                    ; $7E24: $02

jr_074_7E25:
    ld c, c                                       ; $7E25: $49
    ld c, d                                       ; $7E26: $4A
    add e                                         ; $7E27: $83
    nop                                           ; $7E28: $00
    inc bc                                        ; $7E29: $03
    inc sp                                        ; $7E2A: $33
    nop                                           ; $7E2B: $00
    nop                                           ; $7E2C: $00
    add e                                         ; $7E2D: $83
    inc hl                                        ; $7E2E: $23
    add d                                         ; $7E2F: $82
    nop                                           ; $7E30: $00
    ld bc, $8313                                  ; $7E31: $01 $13 $83
    nop                                           ; $7E34: $00
    ld [bc], a                                    ; $7E35: $02
    inc hl                                        ; $7E36: $23
    inc bc                                        ; $7E37: $03
    adc d                                         ; $7E38: $8A
    nop                                           ; $7E39: $00
    ld b, $33                                     ; $7E3A: $06 $33
    nop                                           ; $7E3C: $00
    nop                                           ; $7E3D: $00
    inc sp                                        ; $7E3E: $33
    ld b, d                                       ; $7E3F: $42
    inc hl                                        ; $7E40: $23
    add d                                         ; $7E41: $82
    nop                                           ; $7E42: $00
    ld bc, $8313                                  ; $7E43: $01 $13 $83
    nop                                           ; $7E46: $00
    ld [bc], a                                    ; $7E47: $02
    inc hl                                        ; $7E48: $23
    inc bc                                        ; $7E49: $03
    add l                                         ; $7E4A: $85
    nop                                           ; $7E4B: $00
    ld [bc], a                                    ; $7E4C: $02
    xor e                                         ; $7E4D: $AB
    xor h                                         ; $7E4E: $AC
    add e                                         ; $7E4F: $83
    nop                                           ; $7E50: $00
    inc bc                                        ; $7E51: $03
    inc sp                                        ; $7E52: $33
    nop                                           ; $7E53: $00
    nop                                           ; $7E54: $00
    add e                                         ; $7E55: $83
    inc hl                                        ; $7E56: $23
    add d                                         ; $7E57: $82
    nop                                           ; $7E58: $00
    ld bc, $8313                                  ; $7E59: $01 $13 $83
    nop                                           ; $7E5C: $00
    ld [bc], a                                    ; $7E5D: $02
    inc hl                                        ; $7E5E: $23
    inc bc                                        ; $7E5F: $03
    add e                                         ; $7E60: $83
    nop                                           ; $7E61: $00
    inc b                                         ; $7E62: $04
    ret nc                                        ; $7E63: $D0

    pop de                                        ; $7E64: $D1
    cp e                                          ; $7E65: $BB
    cp h                                          ; $7E66: $BC
    add e                                         ; $7E67: $83
    nop                                           ; $7E68: $00
    ld bc, $8733                                  ; $7E69: $01 $33 $87
    nop                                           ; $7E6C: $00
    ld bc, $8313                                  ; $7E6D: $01 $13 $83
    nop                                           ; $7E70: $00
    ld [bc], a                                    ; $7E71: $02
    inc hl                                        ; $7E72: $23
    inc bc                                        ; $7E73: $03
    add e                                         ; $7E74: $83
    nop                                           ; $7E75: $00
    inc b                                         ; $7E76: $04
    ldh [$E1], a                                  ; $7E77: $E0 $E1
    nop                                           ; $7E79: $00
    sub h                                         ; $7E7A: $94
    add h                                         ; $7E7B: $84
    inc hl                                        ; $7E7C: $23
    add h                                         ; $7E7D: $84
    inc de                                        ; $7E7E: $13
    add h                                         ; $7E7F: $84
    inc bc                                        ; $7E80: $03
    add h                                         ; $7E81: $84
    inc hl                                        ; $7E82: $23
    add h                                         ; $7E83: $84
    inc bc                                        ; $7E84: $03
    inc b                                         ; $7E85: $04
    sub l                                         ; $7E86: $95
    nop                                           ; $7E87: $00
    nop                                           ; $7E88: $00
    sub h                                         ; $7E89: $94
    add e                                         ; $7E8A: $83
    nop                                           ; $7E8B: $00
    ld bc, $8323                                  ; $7E8C: $01 $23 $83
    nop                                           ; $7E8F: $00
    ld bc, $8313                                  ; $7E90: $01 $13 $83
    nop                                           ; $7E93: $00
    ld bc, $8303                                  ; $7E94: $01 $03 $83
    nop                                           ; $7E97: $00
    ld bc, $8423                                  ; $7E98: $01 $23 $84
    nop                                           ; $7E9B: $00
    dec b                                         ; $7E9C: $05
    sub l                                         ; $7E9D: $95
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    sub h                                         ; $7EA0: $94
    rlca                                          ; $7EA1: $07
    add d                                         ; $7EA2: $82
    nop                                           ; $7EA3: $00
    ld bc, $8323                                  ; $7EA4: $01 $23 $83
    nop                                           ; $7EA7: $00
    ld bc, $8313                                  ; $7EA8: $01 $13 $83
    nop                                           ; $7EAB: $00
    ld bc, $8303                                  ; $7EAC: $01 $03 $83
    nop                                           ; $7EAF: $00
    ld bc, $8323                                  ; $7EB0: $01 $23 $83
    nop                                           ; $7EB3: $00
    ld [bc], a                                    ; $7EB4: $02
    ld [de], a                                    ; $7EB5: $12
    sub l                                         ; $7EB6: $95
    add d                                         ; $7EB7: $82
    nop                                           ; $7EB8: $00
    dec b                                         ; $7EB9: $05
    xor d                                         ; $7EBA: $AA
    xor e                                         ; $7EBB: $AB
    xor h                                         ; $7EBC: $AC
    nop                                           ; $7EBD: $00
    inc hl                                        ; $7EBE: $23
    add e                                         ; $7EBF: $83
    nop                                           ; $7EC0: $00

jr_074_7EC1:
    ld bc, $8313                                  ; $7EC1: $01 $13 $83
    nop                                           ; $7EC4: $00
    ld bc, $8303                                  ; $7EC5: $01 $03 $83
    nop                                           ; $7EC8: $00
    ld b, $23                                     ; $7EC9: $06 $23
    nop                                           ; $7ECB: $00
    nop                                           ; $7ECC: $00
    ret nc                                        ; $7ECD: $D0

    pop de                                        ; $7ECE: $D1
    jp nc, $0083                                  ; $7ECF: $D2 $83 $00

    inc d                                         ; $7ED2: $14
    cp e                                          ; $7ED3: $BB
    cp h                                          ; $7ED4: $BC
    nop                                           ; $7ED5: $00
    inc hl                                        ; $7ED6: $23
    nop                                           ; $7ED7: $00
    ld [hl+], a                                   ; $7ED8: $22
    nop                                           ; $7ED9: $00
    inc de                                        ; $7EDA: $13
    nop                                           ; $7EDB: $00
    ld [de], a                                    ; $7EDC: $12
    nop                                           ; $7EDD: $00
    inc bc                                        ; $7EDE: $03
    nop                                           ; $7EDF: $00
    ld [hl-], a                                   ; $7EE0: $32
    nop                                           ; $7EE1: $00
    inc hl                                        ; $7EE2: $23
    nop                                           ; $7EE3: $00
    ld [hl-], a                                   ; $7EE4: $32
    ldh [$E1], a                                  ; $7EE5: $E0 $E1
    add l                                         ; $7EE7: $85
    nop                                           ; $7EE8: $00
    ld bc, $90CC                                  ; $7EE9: $01 $CC $90
    inc c                                         ; $7EEC: $0C
    ld bc, $A2F0                                  ; $7EED: $01 $F0 $A2
    nop                                           ; $7EF0: $00
    nop                                           ; $7EF1: $00
    db $10                                        ; $7EF2: $10
    sub b                                         ; $7EF3: $90
    nop                                           ; $7EF4: $00
    dec b                                         ; $7EF5: $05
    ld b, $00                                     ; $7EF6: $06 $00
    ld bc, $8B09                                  ; $7EF8: $01 $09 $8B
    rra                                           ; $7EFB: $1F
    ld c, a                                       ; $7EFC: $4F
    ld h, [hl]                                    ; $7EFD: $66
    dec b                                         ; $7EFE: $05
    add hl, hl                                    ; $7EFF: $29
    jr z, jr_074_7F17                             ; $7F00: $28 $15

    ld h, a                                       ; $7F02: $67
    add d                                         ; $7F03: $82
    rlca                                          ; $7F04: $07
    ld c, $15                                     ; $7F05: $0E $15
    ld [$085B], sp                                ; $7F07: $08 $5B $08
    ld e, e                                       ; $7F0A: $5B
    adc e                                         ; $7F0B: $8B
    sbc [hl]                                      ; $7F0C: $9E
    rrca                                          ; $7F0D: $0F
    ccf                                           ; $7F0E: $3F
    ld [hl], a                                    ; $7F0F: $77
    inc b                                         ; $7F10: $04
    db $10                                        ; $7F11: $10
    ld [hl], $77                                  ; $7F12: $36 $77
    add d                                         ; $7F14: $82
    ld [hl], h                                    ; $7F15: $74
    dec b                                         ; $7F16: $05

jr_074_7F17:
    halt                                          ; $7F17: $76
    ld d, [hl]                                    ; $7F18: $56
    ld l, e                                       ; $7F19: $6B
    ld h, a                                       ; $7F1A: $67
    ld e, e                                       ; $7F1B: $5B
    add d                                         ; $7F1C: $82
    dec e                                         ; $7F1D: $1D
    ld c, $1F                                     ; $7F1E: $0E $1F
    ld c, a                                       ; $7F20: $4F
    ld b, a                                       ; $7F21: $47
    nop                                           ; $7F22: $00
    inc b                                         ; $7F23: $04
    db $10                                        ; $7F24: $10
    ld [hl+], a                                   ; $7F25: $22
    inc de                                        ; $7F26: $13
    nop                                           ; $7F27: $00
    ld a, b                                       ; $7F28: $78
    rlca                                          ; $7F29: $07
    ld h, a                                       ; $7F2A: $67
    dec d                                         ; $7F2B: $15
    ld l, e                                       ; $7F2C: $6B
    add d                                         ; $7F2D: $82
    ld l, $05                                     ; $7F2E: $2E $05
    cpl                                           ; $7F30: $2F
    ld c, a                                       ; $7F31: $4F
    ld d, a                                       ; $7F32: $57
    add hl, sp                                    ; $7F33: $39
    inc d                                         ; $7F34: $14
    add e                                         ; $7F35: $83
    db $10                                        ; $7F36: $10
    ld b, $13                                     ; $7F37: $06 $13
    nop                                           ; $7F39: $00
    halt                                          ; $7F3A: $76
    dec d                                         ; $7F3B: $15
    add hl, hl                                    ; $7F3C: $29
    jr z, jr_074_7EC1                             ; $7F3D: $28 $82

    ld e, l                                       ; $7F3F: $5D
    ld b, $5E                                     ; $7F40: $06 $5E
    ld e, a                                       ; $7F42: $5F
    dec d                                         ; $7F43: $15
    ld [hl], a                                    ; $7F44: $77
    sub e                                         ; $7F45: $93
    ld [de], a                                    ; $7F46: $12
    add e                                         ; $7F47: $83
    db $10                                        ; $7F48: $10
    add d                                         ; $7F49: $82
    rst $30                                       ; $7F4A: $F7
    ld [$1049], sp                                ; $7F4B: $08 $49 $10
    db $10                                        ; $7F4E: $10
    ld c, e                                       ; $7F4F: $4B
    ld [$074B], sp                                ; $7F50: $08 $4B $07
    ld [hl], a                                    ; $7F53: $77
    add e                                         ; $7F54: $83
    nop                                           ; $7F55: $00
    ld bc, $8304                                  ; $7F56: $01 $04 $83
    db $10                                        ; $7F59: $10
    add d                                         ; $7F5A: $82
    rst $30                                       ; $7F5B: $F7
    add d                                         ; $7F5C: $82
    db $10                                        ; $7F5D: $10
    dec b                                         ; $7F5E: $05
    ld l, e                                       ; $7F5F: $6B
    ld a, e                                       ; $7F60: $7B
    ld e, e                                       ; $7F61: $5B
    dec d                                         ; $7F62: $15
    ld a, c                                       ; $7F63: $79
    add h                                         ; $7F64: $84
    nop                                           ; $7F65: $00
    dec b                                         ; $7F66: $05
    inc b                                         ; $7F67: $04
    db $10                                        ; $7F68: $10
    rst $30                                       ; $7F69: $F7
    db $10                                        ; $7F6A: $10
    rst $30                                       ; $7F6B: $F7
    add d                                         ; $7F6C: $82
    db $10                                        ; $7F6D: $10
    inc b                                         ; $7F6E: $04
    rlca                                          ; $7F6F: $07
    ld d, [hl]                                    ; $7F70: $56
    ld l, e                                       ; $7F71: $6B
    ld [hl], a                                    ; $7F72: $77
    add e                                         ; $7F73: $83
    nop                                           ; $7F74: $00
    ld b, $6A                                     ; $7F75: $06 $6A
    ld a, d                                       ; $7F77: $7A
    nop                                           ; $7F78: $00
    rst $30                                       ; $7F79: $F7
    db $10                                        ; $7F7A: $10
    rst $30                                       ; $7F7B: $F7
    add e                                         ; $7F7C: $83
    db $10                                        ; $7F7D: $10
    add e                                         ; $7F7E: $83
    ld [hl], l                                    ; $7F7F: $75
    add e                                         ; $7F80: $83
    nop                                           ; $7F81: $00
    dec b                                         ; $7F82: $05
    ld a, [bc]                                    ; $7F83: $0A
    inc c                                         ; $7F84: $0C
    rrca                                          ; $7F85: $0F
    dec bc                                        ; $7F86: $0B
    nop                                           ; $7F87: $00
    add d                                         ; $7F88: $82
    rst $30                                       ; $7F89: $F7
    add d                                         ; $7F8A: $82
    db $10                                        ; $7F8B: $10
    ld bc, $8518                                  ; $7F8C: $01 $18 $85
    nop                                           ; $7F8F: $00
    ld b, $0A                                     ; $7F90: $06 $0A
    inc c                                         ; $7F92: $0C
    sbc a                                         ; $7F93: $9F
    sbc [hl]                                      ; $7F94: $9E
    rrca                                          ; $7F95: $0F
    dec bc                                        ; $7F96: $0B
    add d                                         ; $7F97: $82
    nop                                           ; $7F98: $00
    inc bc                                        ; $7F99: $03
    inc b                                         ; $7F9A: $04
    jr @+$68                                      ; $7F9B: $18 $66

    add h                                         ; $7F9D: $84
    nop                                           ; $7F9E: $00
    inc bc                                        ; $7F9F: $03
    ld a, [de]                                    ; $7FA0: $1A
    ld l, [hl]                                    ; $7FA1: $6E
    inc e                                         ; $7FA2: $1C
    add d                                         ; $7FA3: $82
    adc e                                         ; $7FA4: $8B
    inc bc                                        ; $7FA5: $03
    rra                                           ; $7FA6: $1F
    ld l, a                                       ; $7FA7: $6F
    dec de                                        ; $7FA8: $1B
    add d                                         ; $7FA9: $82
    nop                                           ; $7FAA: $00
    inc bc                                        ; $7FAB: $03
    halt                                          ; $7FAC: $76
    ld d, a                                       ; $7FAD: $57
    add hl, sp                                    ; $7FAE: $39
    add e                                         ; $7FAF: $83
    nop                                           ; $7FB0: $00
    ld [$7E1A], sp                                ; $7FB1: $08 $1A $7E
    inc l                                         ; $7FB4: $2C
    dec l                                         ; $7FB5: $2D
    ld l, $2F                                     ; $7FB6: $2E $2F
    ld a, a                                       ; $7FB8: $7F
    dec de                                        ; $7FB9: $1B
    add d                                         ; $7FBA: $82
    nop                                           ; $7FBB: $00
    inc b                                         ; $7FBC: $04
    ld a, b                                       ; $7FBD: $78
    rlca                                          ; $7FBE: $07
    ld d, [hl]                                    ; $7FBF: $56
    add hl, sp                                    ; $7FC0: $39
    add d                                         ; $7FC1: $82
    add l                                         ; $7FC2: $85
    ld [bc], a                                    ; $7FC3: $02
    ld b, [hl]                                    ; $7FC4: $46
    ld e, h                                       ; $7FC5: $5C
    add h                                         ; $7FC6: $84
    ld e, l                                       ; $7FC7: $5D
    inc d                                         ; $7FC8: $14
    ld e, a                                       ; $7FC9: $5F
    ld a, c                                       ; $7FCA: $79
    nop                                           ; $7FCB: $00
    add l                                         ; $7FCC: $85
    jr c, jr_074_7FE4                             ; $7FCD: $38 $15

    ccf                                           ; $7FCF: $3F
    rla                                           ; $7FD0: $17
    ld d, $56                                     ; $7FD1: $16 $56
    dec b                                         ; $7FD3: $05
    ld d, $08                                     ; $7FD4: $16 $08
    ld c, e                                       ; $7FD6: $4B
    ld [$564B], sp                                ; $7FD7: $08 $4B $56
    ld b, a                                       ; $7FDA: $47
    jr c, jr_074_7FF2                             ; $7FDB: $38 $15

    add d                                         ; $7FDD: $82
    sbc e                                         ; $7FDE: $9B
    ld [bc], a                                    ; $7FDF: $02
    ld l, a                                       ; $7FE0: $6F
    ccf                                           ; $7FE1: $3F
    add l                                         ; $7FE2: $85
    ld a, e                                       ; $7FE3: $7B

jr_074_7FE4:
    inc c                                         ; $7FE4: $0C
    ld l, e                                       ; $7FE5: $6B
    dec b                                         ; $7FE6: $05
    ld e, e                                       ; $7FE7: $5B
    ld a, e                                       ; $7FE8: $7B
    dec d                                         ; $7FE9: $15
    rlca                                          ; $7FEA: $07
    inc a                                         ; $7FEB: $3C
    ld l, [hl]                                    ; $7FEC: $6E
    inc c                                         ; $7FED: $0C
    rrca                                          ; $7FEE: $0F
    ld l, a                                       ; $7FEF: $6F
    ccf                                           ; $7FF0: $3F
    add [hl]                                      ; $7FF1: $86

jr_074_7FF2:
    ld a, e                                       ; $7FF2: $7B
    rlca                                          ; $7FF3: $07
    ld e, e                                       ; $7FF4: $5B
    add hl, bc                                    ; $7FF5: $09
    ld a, e                                       ; $7FF6: $7B
    inc a                                         ; $7FF7: $3C
    ld l, [hl]                                    ; $7FF8: $6E
    inc c                                         ; $7FF9: $0C
    sbc a                                         ; $7FFA: $9F
    nop                                           ; $7FFB: $00
    ret nz                                        ; $7FFC: $C0

    ld l, b                                       ; $7FFD: $68
    db $08                                        ; $7FFE: $08
    nop                                           ; $7FFF: $00
