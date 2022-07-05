SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    ld b, e                                       ; $4000: $43
    rrca                                          ; $4001: $0F
    inc b                                         ; $4002: $04
    dec b                                         ; $4003: $05
    ld bc, $BA14                                  ; $4004: $01 $14 $BA
    ld b, d                                       ; $4007: $42
    ld [bc], a                                    ; $4008: $02
    jr jr_014_400B                                ; $4009: $18 $00

jr_014_400B:
    dec d                                         ; $400B: $15
    inc c                                         ; $400C: $0C
    ld b, l                                       ; $400D: $45
    ld a, [hl+]                                   ; $400E: $2A
    dec d                                         ; $400F: $15
    ld b, a                                       ; $4010: $47

    db $02, $09, $02, $00, $31, $45, $14, $70, $46

    ld b, l                                       ; $401A: $45
    ld a, [hl+]                                   ; $401B: $2A
    xor h                                         ; $401C: $AC
    ld c, h                                       ; $401D: $4C
    rlca                                          ; $401E: $07
    nop                                           ; $401F: $00
    ld l, e                                       ; $4020: $6B
    ld c, d                                       ; $4021: $4A
    add hl, bc                                    ; $4022: $09
    nop                                           ; $4023: $00
    db $20, $CD                                   ; $4024: $20 $CD
    ld c, a                                       ; $4026: $4F
    ld b, b                                       ; $4027: $40
    db $10                                        ; $4028: $10
    add hl, bc                                    ; $4029: $09
    nop                                           ; $402A: $00
    db $20, $B5                                   ; $402B: $20 $B5
    ld d, b                                       ; $402D: $50
    rlca                                          ; $402E: $07
    nop                                           ; $402F: $00
    add c                                         ; $4030: $81
    ld e, l                                       ; $4031: $5D
    ld b, d                                       ; $4032: $42

    db $A4, $23, $A3, $01

    nop                                           ; $4037: $00
    ld bc, $D0F3                                  ; $4038: $01 $F3 $D0
    sbc e                                         ; $403B: $9B
    ld a, b                                       ; $403C: $78
    ld [hl], b                                    ; $403D: $70
    sbc a                                         ; $403E: $9F
    ld c, c                                       ; $403F: $49
    ld h, [hl]                                    ; $4040: $66
    jr nz, jr_014_408C                            ; $4041: $20 $49

    jr nz, @+$66                                  ; $4043: $20 $64

    ld l, a                                       ; $4045: $6F
    ld l, [hl]                                    ; $4046: $6E
    daa                                           ; $4047: $27
    ld [hl], h                                    ; $4048: $74
    rst $38                                       ; $4049: $FF
    ld h, [hl]                                    ; $404A: $66
    ld l, a                                       ; $404B: $6F
    ld l, h                                       ; $404C: $6C
    ld l, h                                       ; $404D: $6C
    ld l, a                                       ; $404E: $6F
    ld [hl], a                                    ; $404F: $77
    jr nz, @+$6A                                  ; $4050: $20 $68

    ld l, c                                       ; $4052: $69
    ld l, l                                       ; $4053: $6D
    inc l                                         ; $4054: $2C
    cp $49                                        ; $4055: $FE $49
    daa                                           ; $4057: $27
    ld l, h                                       ; $4058: $6C
    ld l, h                                       ; $4059: $6C
    jr nz, @+$72                                  ; $405A: $20 $70

    ld [hl], d                                    ; $405C: $72
    ld l, a                                       ; $405D: $6F
    ld h, d                                       ; $405E: $62
    ld h, c                                       ; $405F: $61
    ld h, d                                       ; $4060: $62
    ld l, h                                       ; $4061: $6C
    ld a, c                                       ; $4062: $79
    rst $38                                       ; $4063: $FF
    ld h, a                                       ; $4064: $67
    ld h, l                                       ; $4065: $65
    ld [hl], h                                    ; $4066: $74
    jr nz, jr_014_40D5                            ; $4067: $20 $6C

    ld l, a                                       ; $4069: $6F
    ld [hl], e                                    ; $406A: $73
    ld [hl], h                                    ; $406B: $74
    ld l, $2E                                     ; $406C: $2E $2E
    ld l, $2E                                     ; $406E: $2E $2E
    cp $FD                                        ; $4070: $FE $FD
    sbc d                                         ; $4072: $9A
    ld e, b                                       ; $4073: $58
    ld [bc], a                                    ; $4074: $02
    ld b, d                                       ; $4075: $42

    db $02, $00, $00, $00, $00, $30, $ED, $56, $27, $43, $13, $04, $05, $04, $14, $4A
    db $41

    ld b, a                                       ; $4087: $47
    ld [$A114], sp                                ; $4088: $08 $14 $A1
    ld b, b                                       ; $408B: $40

jr_014_408C:
    inc d                                         ; $408C: $14
    or [hl]                                       ; $408D: $B6
    ld b, b                                       ; $408E: $40
    inc d                                         ; $408F: $14
    call nz, $1440                                ; $4090: $C4 $40 $14
    jp nc, $1440                                  ; $4093: $D2 $40 $14

    rst $20                                       ; $4096: $E7
    ld b, b                                       ; $4097: $40
    inc d                                         ; $4098: $14
    db $FC                                        ; $4099: $FC
    ld b, b                                       ; $409A: $40
    inc d                                         ; $409B: $14
    ld de, $1441                                  ; $409C: $11 $41 $14
    daa                                           ; $409F: $27
    ld b, c                                       ; $40A0: $41
    dec h                                         ; $40A1: $25
    ld b, $6C                                     ; $40A2: $06 $6C
    ld [bc], a                                    ; $40A4: $02
    ld c, h                                       ; $40A5: $4C
    inc hl                                        ; $40A6: $23
    ld b, b                                       ; $40A7: $40
    ld l, $09                                     ; $40A8: $2E $09
    ld d, e                                       ; $40AA: $53
    ld bc, $0101                                  ; $40AB: $01 $01 $01
    dec hl                                        ; $40AE: $2B
    ld l, $09                                     ; $40AF: $2E $09
    inc e                                         ; $40B1: $1C
    inc bc                                        ; $40B2: $03
    ld b, $01                                     ; $40B3: $06 $01
    daa                                           ; $40B5: $27
    dec h                                         ; $40B6: $25
    ld b, $6C                                     ; $40B7: $06 $6C
    ld bc, $234C                                  ; $40B9: $01 $4C $23
    ld b, b                                       ; $40BC: $40
    ld l, $09                                     ; $40BD: $2E $09
    ld d, e                                       ; $40BF: $53
    ld bc, $0103                                  ; $40C0: $01 $03 $01
    daa                                           ; $40C3: $27
    dec h                                         ; $40C4: $25
    ld b, $6C                                     ; $40C5: $06 $6C
    inc bc                                        ; $40C7: $03
    ld c, h                                       ; $40C8: $4C
    inc hl                                        ; $40C9: $23
    ld b, b                                       ; $40CA: $40
    ld l, $09                                     ; $40CB: $2E $09
    inc e                                         ; $40CD: $1C
    inc bc                                        ; $40CE: $03
    ld b, $01                                     ; $40CF: $06 $01
    daa                                           ; $40D1: $27
    dec h                                         ; $40D2: $25
    ld b, $6C                                     ; $40D3: $06 $6C

jr_014_40D5:
    inc bc                                        ; $40D5: $03
    ld c, h                                       ; $40D6: $4C
    inc hl                                        ; $40D7: $23
    ld b, b                                       ; $40D8: $40
    ld l, $09                                     ; $40D9: $2E $09
    ld d, e                                       ; $40DB: $53
    ld [bc], a                                    ; $40DC: $02
    inc b                                         ; $40DD: $04
    ld bc, $2E2B                                  ; $40DE: $01 $2B $2E
    add hl, bc                                    ; $40E1: $09
    ld c, e                                       ; $40E2: $4B
    ld bc, $0103                                  ; $40E3: $01 $03 $01
    daa                                           ; $40E6: $27
    dec h                                         ; $40E7: $25
    ld b, $6C                                     ; $40E8: $06 $6C
    inc bc                                        ; $40EA: $03
    ld c, h                                       ; $40EB: $4C
    inc hl                                        ; $40EC: $23
    ld b, b                                       ; $40ED: $40
    ld l, $09                                     ; $40EE: $2E $09
    inc e                                         ; $40F0: $1C
    ld [bc], a                                    ; $40F1: $02
    inc b                                         ; $40F2: $04
    ld bc, $2E2B                                  ; $40F3: $01 $2B $2E
    add hl, bc                                    ; $40F6: $09
    ld b, $02                                     ; $40F7: $06 $02
    inc b                                         ; $40F9: $04
    ld bc, $2527                                  ; $40FA: $01 $27 $25
    ld b, $6C                                     ; $40FD: $06 $6C
    inc bc                                        ; $40FF: $03
    ld c, h                                       ; $4100: $4C
    inc hl                                        ; $4101: $23
    ld b, b                                       ; $4102: $40
    ld l, $09                                     ; $4103: $2E $09
    ld c, e                                       ; $4105: $4B
    ld [bc], a                                    ; $4106: $02
    inc b                                         ; $4107: $04
    ld bc, $2E2B                                  ; $4108: $01 $2B $2E
    add hl, bc                                    ; $410B: $09
    jr c, jr_014_410F                             ; $410C: $38 $01

    inc bc                                        ; $410E: $03

jr_014_410F:
    ld bc, $2527                                  ; $410F: $01 $27 $25
    ld b, $6C                                     ; $4112: $06 $6C
    inc b                                         ; $4114: $04
    ld c, h                                       ; $4115: $4C
    inc hl                                        ; $4116: $23
    ld b, b                                       ; $4117: $40
    ld l, $09                                     ; $4118: $2E $09
    ld c, e                                       ; $411A: $4B
    ld [bc], a                                    ; $411B: $02
    inc b                                         ; $411C: $04
    ld bc, $2B2B                                  ; $411D: $01 $2B $2B
    ld l, $09                                     ; $4120: $2E $09
    ld b, $02                                     ; $4122: $06 $02
    dec b                                         ; $4124: $05
    ld bc, $2527                                  ; $4125: $01 $27 $25
    ld b, $6C                                     ; $4128: $06 $6C
    inc bc                                        ; $412A: $03
    ld c, h                                       ; $412B: $4C
    inc hl                                        ; $412C: $23
    ld b, b                                       ; $412D: $40
    ld l, $09                                     ; $412E: $2E $09
    ld d, e                                       ; $4130: $53
    ld bc, HeaderLogo                             ; $4131: $01 $04 $01
    dec hl                                        ; $4134: $2B
    ld l, $09                                     ; $4135: $2E $09
    ld d, e                                       ; $4137: $53
    ld bc, $0103                                  ; $4138: $01 $03 $01
    dec hl                                        ; $413B: $2B
    ld l, $09                                     ; $413C: $2E $09
    ld d, e                                       ; $413E: $53
    ld bc, $0102                                  ; $413F: $01 $02 $01
    dec hl                                        ; $4142: $2B
    ld l, $09                                     ; $4143: $2E $09
    ld d, e                                       ; $4145: $53
    ld bc, $0102                                  ; $4146: $01 $02 $01
    daa                                           ; $4149: $27

    db $47, $04

    inc d                                         ; $414C: $14
    ld e, b                                       ; $414D: $58
    ld b, c                                       ; $414E: $41

    db $14, $58, $41

    inc d                                         ; $4152: $14
    ld e, b                                       ; $4153: $58
    ld b, c                                       ; $4154: $41
    inc d                                         ; $4155: $14
    ld h, [hl]                                    ; $4156: $66
    ld b, c                                       ; $4157: $41

    db $25, $06, $6C, $01, $4C, $23, $40, $2E, $09, $53, $01, $03, $01, $27

    dec h                                         ; $4166: $25
    ld b, $6C                                     ; $4167: $06 $6C
    ld bc, $234C                                  ; $4169: $01 $4C $23
    ld b, b                                       ; $416C: $40
    ld l, $09                                     ; $416D: $2E $09
    ld c, e                                       ; $416F: $4B
    ld [bc], a                                    ; $4170: $02
    ld [bc], a                                    ; $4171: $02
    ld bc, $0227                                  ; $4172: $01 $27 $02
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    jr nc, @-$11                                  ; $4179: $30 $ED

    ld d, [hl]                                    ; $417B: $56
    jr nz, jr_014_41A3                            ; $417C: $20 $25

    ld b, $5D                                     ; $417E: $06 $5D
    dec b                                         ; $4180: $05
    ld c, h                                       ; $4181: $4C
    inc hl                                        ; $4182: $23
    ld b, b                                       ; $4183: $40
    dec hl                                        ; $4184: $2B
    xor d                                         ; $4185: $AA
    dec a                                         ; $4186: $3D
    db $D3                                        ; $4187: $D3
    rlca                                          ; $4188: $07
    nop                                           ; $4189: $00
    xor d                                         ; $418A: $AA
    ld a, $D3                                     ; $418B: $3E $D3
    rlca                                          ; $418D: $07
    add hl, de                                    ; $418E: $19
    sbc e                                         ; $418F: $9B
    add sp, $55                                   ; $4190: $E8 $55
    sbc a                                         ; $4192: $9F
    ld c, [hl]                                    ; $4193: $4E
    ld l, a                                       ; $4194: $6F
    ld [hl], a                                    ; $4195: $77
    jr nz, jr_014_41E1                            ; $4196: $20 $49

    daa                                           ; $4198: $27
    ld l, h                                       ; $4199: $6C
    ld l, h                                       ; $419A: $6C
    jr nz, jr_014_4211                            ; $419B: $20 $74

    ld h, l                                       ; $419D: $65
    ld h, c                                       ; $419E: $61
    ld h, e                                       ; $419F: $63
    ld l, b                                       ; $41A0: $68
    rst $38                                       ; $41A1: $FF
    ld a, c                                       ; $41A2: $79

jr_014_41A3:
    ld l, a                                       ; $41A3: $6F
    ld [hl], l                                    ; $41A4: $75
    jr nz, jr_014_421B                            ; $41A5: $20 $74

    ld l, a                                       ; $41A7: $6F
    jr nz, jr_014_421C                            ; $41A8: $20 $72

    ld h, l                                       ; $41AA: $65
    ld [hl], e                                    ; $41AB: $73
    ld [hl], b                                    ; $41AC: $70
    ld h, l                                       ; $41AD: $65
    ld h, e                                       ; $41AE: $63
    ld [hl], h                                    ; $41AF: $74
    cp $74                                        ; $41B0: $FE $74
    ld l, b                                       ; $41B2: $68
    ld h, l                                       ; $41B3: $65
    jr nz, @+$72                                  ; $41B4: $20 $70

    ld l, a                                       ; $41B6: $6F
    ld [hl], a                                    ; $41B7: $77
    ld h, l                                       ; $41B8: $65
    ld [hl], d                                    ; $41B9: $72
    jr nz, @+$71                                  ; $41BA: $20 $6F

    ld h, [hl]                                    ; $41BC: $66
    rst $38                                       ; $41BD: $FF
    ld c, e                                       ; $41BE: $4B
    ld l, a                                       ; $41BF: $6F
    ld [hl], d                                    ; $41C0: $72
    ld h, a                                       ; $41C1: $67
    ld hl, $FDFE                                  ; $41C2: $21 $FE $FD
    sbc d                                         ; $41C5: $9A
    sbc e                                         ; $41C6: $9B
    xor c                                         ; $41C7: $A9
    ld c, a                                       ; $41C8: $4F
    sbc a                                         ; $41C9: $9F
    ld c, e                                       ; $41CA: $4B
    ld l, a                                       ; $41CB: $6F
    ld [hl], d                                    ; $41CC: $72
    ld h, a                                       ; $41CD: $67
    jr nz, jr_014_4249                            ; $41CE: $20 $79

    ld l, a                                       ; $41D0: $6F
    ld [hl], l                                    ; $41D1: $75
    daa                                           ; $41D2: $27
    ld [hl], d                                    ; $41D3: $72
    ld h, l                                       ; $41D4: $65
    rst $38                                       ; $41D5: $FF
    ld [hl], e                                    ; $41D6: $73
    ld [hl], h                                    ; $41D7: $74
    ld l, c                                       ; $41D8: $69
    ld l, h                                       ; $41D9: $6C
    ld l, h                                       ; $41DA: $6C
    jr nz, jr_014_4251                            ; $41DB: $20 $74

    ld l, a                                       ; $41DD: $6F
    ld l, a                                       ; $41DE: $6F
    jr nz, jr_014_4258                            ; $41DF: $20 $77

jr_014_41E1:
    ld h, l                                       ; $41E1: $65
    ld h, c                                       ; $41E2: $61
    ld l, e                                       ; $41E3: $6B
    cp $66                                        ; $41E4: $FE $66
    ld [hl], d                                    ; $41E6: $72
    ld l, a                                       ; $41E7: $6F
    ld l, l                                       ; $41E8: $6D
    jr nz, jr_014_4251                            ; $41E9: $20 $66

    ld l, c                                       ; $41EB: $69
    ld h, a                                       ; $41EC: $67
    ld l, b                                       ; $41ED: $68
    ld [hl], h                                    ; $41EE: $74
    ld l, c                                       ; $41EF: $69
    ld l, [hl]                                    ; $41F0: $6E
    ld h, a                                       ; $41F1: $67
    rst $38                                       ; $41F2: $FF
    ld c, a                                       ; $41F3: $4F
    ld [hl], d                                    ; $41F4: $72
    ld [hl], a                                    ; $41F5: $77
    ld l, c                                       ; $41F6: $69
    ld l, [hl]                                    ; $41F7: $6E
    inc l                                         ; $41F8: $2C
    jr nz, @+$6E                                  ; $41F9: $20 $6C

    ld h, l                                       ; $41FB: $65
    ld [hl], h                                    ; $41FC: $74
    jr nz, jr_014_426C                            ; $41FD: $20 $6D

    ld h, l                                       ; $41FF: $65
    cp $68                                        ; $4200: $FE $68
    ld h, c                                       ; $4202: $61
    ld l, [hl]                                    ; $4203: $6E
    ld h, h                                       ; $4204: $64
    ld l, h                                       ; $4205: $6C
    ld h, l                                       ; $4206: $65
    jr nz, jr_014_4271                            ; $4207: $20 $68

    ld l, c                                       ; $4209: $69
    ld l, l                                       ; $420A: $6D
    ld hl, $FDFE                                  ; $420B: $21 $FE $FD
    sbc d                                         ; $420E: $9A
    ld l, $09                                     ; $420F: $2E $09

jr_014_4211:
    ld [$1405], sp                                ; $4211: $08 $05 $14
    ld [bc], a                                    ; $4214: $02
    dec hl                                        ; $4215: $2B
    sbc e                                         ; $4216: $9B
    add sp, $55                                   ; $4217: $E8 $55
    sbc a                                         ; $4219: $9F
    ld d, e                                       ; $421A: $53

jr_014_421B:
    ld l, b                                       ; $421B: $68

jr_014_421C:
    ld h, c                                       ; $421C: $61
    ld h, h                                       ; $421D: $64
    ld h, h                                       ; $421E: $64
    ld [hl], l                                    ; $421F: $75
    ld [hl], b                                    ; $4220: $70
    jr nz, jr_014_427D                            ; $4221: $20 $5A

    ld h, l                                       ; $4223: $65
    ld [hl], h                                    ; $4224: $74
    ld hl, $49FF                                  ; $4225: $21 $FF $49
    daa                                           ; $4228: $27
    ld l, l                                       ; $4229: $6D
    jr nz, @+$6B                                  ; $422A: $20 $69

    ld l, [hl]                                    ; $422C: $6E
    jr nz, jr_014_4292                            ; $422D: $20 $63

    ld l, b                                       ; $422F: $68
    ld h, c                                       ; $4230: $61
    ld [hl], d                                    ; $4231: $72
    ld h, a                                       ; $4232: $67
    ld h, l                                       ; $4233: $65
    cp $61                                        ; $4234: $FE $61
    ld l, [hl]                                    ; $4236: $6E
    ld h, h                                       ; $4237: $64
    jr nz, jr_014_4283                            ; $4238: $20 $49

    daa                                           ; $423A: $27
    ld l, h                                       ; $423B: $6C
    ld l, h                                       ; $423C: $6C
    rst $38                                       ; $423D: $FF
    ld l, b                                       ; $423E: $68
    ld h, c                                       ; $423F: $61
    ld l, [hl]                                    ; $4240: $6E
    ld h, h                                       ; $4241: $64
    ld l, h                                       ; $4242: $6C
    ld h, l                                       ; $4243: $65
    jr nz, jr_014_42BA                            ; $4244: $20 $74

    ld l, b                                       ; $4246: $68

Jump_014_4247:
    ld l, c                                       ; $4247: $69
    ld [hl], e                                    ; $4248: $73

jr_014_4249:
    ld hl, $FDFE                                  ; $4249: $21 $FE $FD
    sbc d                                         ; $424C: $9A
    sbc e                                         ; $424D: $9B
    add sp, $55                                   ; $424E: $E8 $55
    sbc a                                         ; $4250: $9F

jr_014_4251:
    ld d, l                                       ; $4251: $55
    ld l, b                                       ; $4252: $68
    inc l                                         ; $4253: $2C
    jr nz, @+$5C                                  ; $4254: $20 $5A

    ld h, l                                       ; $4256: $65
    ld [hl], h                                    ; $4257: $74

jr_014_4258:
    inc l                                         ; $4258: $2C
    jr nz, @+$4B                                  ; $4259: $20 $49

    rst $38                                       ; $425B: $FF
    ld h, h                                       ; $425C: $64
    ld l, a                                       ; $425D: $6F
    ld l, [hl]                                    ; $425E: $6E
    daa                                           ; $425F: $27
    ld [hl], h                                    ; $4260: $74
    jr nz, jr_014_42CB                            ; $4261: $20 $68

    ld h, c                                       ; $4263: $61
    halt                                          ; $4264: $76
    ld h, l                                       ; $4265: $65
    cp $65                                        ; $4266: $FE $65
    ld l, [hl]                                    ; $4268: $6E
    ld l, a                                       ; $4269: $6F
    ld [hl], l                                    ; $426A: $75
    ld h, a                                       ; $426B: $67

jr_014_426C:
    ld l, b                                       ; $426C: $68
    jr nz, jr_014_42D4                            ; $426D: $20 $65

    ld l, [hl]                                    ; $426F: $6E
    ld h, l                                       ; $4270: $65

jr_014_4271:
    ld [hl], d                                    ; $4271: $72
    ld h, a                                       ; $4272: $67
    ld a, c                                       ; $4273: $79
    rst $38                                       ; $4274: $FF
    ld h, [hl]                                    ; $4275: $66
    ld l, a                                       ; $4276: $6F
    ld [hl], d                                    ; $4277: $72
    jr nz, jr_014_42E7                            ; $4278: $20 $6D

    ld a, c                                       ; $427A: $79
    jr nz, jr_014_42C4                            ; $427B: $20 $47

jr_014_427D:
    ld [hl], d                                    ; $427D: $72
    ld h, c                                       ; $427E: $61
    ld a, b                                       ; $427F: $78
    cp $FD                                        ; $4280: $FE $FD
    sbc d                                         ; $4282: $9A

jr_014_4283:
    sbc e                                         ; $4283: $9B
    xor c                                         ; $4284: $A9
    ld c, a                                       ; $4285: $4F
    sbc a                                         ; $4286: $9F
    ld l, $2E                                     ; $4287: $2E $2E
    ld l, $2E                                     ; $4289: $2E $2E
    ld l, $2E                                     ; $428B: $2E $2E
    ld l, $2E                                     ; $428D: $2E $2E
    ld l, $FE                                     ; $428F: $2E $FE
    db $FD                                        ; $4291: $FD

jr_014_4292:
    sbc d                                         ; $4292: $9A
    daa                                           ; $4293: $27

    db $93, $65, $00, $40, $4F, $64, $00, $40, $66, $C0, $5C, $21, $69, $12, $40, $05
    db $00, $81, $5D, $05, $05, $82, $D0, $00, $20, $FB, $50, $22, $05, $40, $0B, $00
    db $00, $82, $1F, $24, $94, $42

jr_014_42BA:
    rlca                                          ; $42BA: $07
    nop                                           ; $42BB: $00
    ld l, e                                       ; $42BC: $6B
    ld c, d                                       ; $42BD: $4A
    add hl, bc                                    ; $42BE: $09
    nop                                           ; $42BF: $00
    jr nz, @-$21                                  ; $42C0: $20 $DD

    ld c, a                                       ; $42C2: $4F
    ld b, b                                       ; $42C3: $40

jr_014_42C4:
    jr nz, jr_014_42CF                            ; $42C4: $20 $09

    nop                                           ; $42C6: $00
    jr nz, @-$3F                                  ; $42C7: $20 $BF

    ld d, b                                       ; $42C9: $50
    ld e, e                                       ; $42CA: $5B

jr_014_42CB:
    inc d                                         ; $42CB: $14
    dec sp                                        ; $42CC: $3B
    ld b, b                                       ; $42CD: $40
    ld h, d                                       ; $42CE: $62

jr_014_42CF:
    ld [bc], a                                    ; $42CF: $02
    rlca                                          ; $42D0: $07
    nop                                           ; $42D1: $00
    add c                                         ; $42D2: $81
    ld e, l                                       ; $42D3: $5D

jr_014_42D4:
    ld b, d                                       ; $42D4: $42
    sub e                                         ; $42D5: $93
    ld h, l                                       ; $42D6: $65
    nop                                           ; $42D7: $00
    ld b, b                                       ; $42D8: $40
    ld c, a                                       ; $42D9: $4F
    ld h, h                                       ; $42DA: $64
    add hl, bc                                    ; $42DB: $09
    ld b, b                                       ; $42DC: $40
    ld h, [hl]                                    ; $42DD: $66
    ret nz                                        ; $42DE: $C0

    ld e, h                                       ; $42DF: $5C
    ld hl, $1269                                  ; $42E0: $21 $69 $12
    ld b, b                                       ; $42E3: $40
    dec b                                         ; $42E4: $05
    nop                                           ; $42E5: $00
    ld l, e                                       ; $42E6: $6B

jr_014_42E7:
    ld c, d                                       ; $42E7: $4A
    dec bc                                        ; $42E8: $0B
    nop                                           ; $42E9: $00
    dec bc                                        ; $42EA: $0B
    ret nc                                        ; $42EB: $D0

    nop                                           ; $42EC: $00
    inc d                                         ; $42ED: $14
    xor d                                         ; $42EE: $AA
    ld b, e                                       ; $42EF: $43
    ld [hl+], a                                   ; $42F0: $22
    dec b                                         ; $42F1: $05
    ld b, b                                       ; $42F2: $40
    dec b                                         ; $42F3: $05
    ld [bc], a                                    ; $42F4: $02
    adc a                                         ; $42F5: $8F
    ld c, d                                       ; $42F6: $4A
    dec bc                                        ; $42F7: $0B
    inc b                                         ; $42F8: $04
    ld l, a                                       ; $42F9: $6F

jr_014_42FA:
    ret nc                                        ; $42FA: $D0

    nop                                           ; $42FB: $00
    inc d                                         ; $42FC: $14
    add $43                                       ; $42FD: $C6 $43
    ld [hl+], a                                   ; $42FF: $22
    dec b                                         ; $4300: $05
    ld b, b                                       ; $4301: $40
    dec b                                         ; $4302: $05
    inc bc                                        ; $4303: $03
    adc a                                         ; $4304: $8F

jr_014_4305:
    ld c, d                                       ; $4305: $4A
    dec bc                                        ; $4306: $0B
    dec b                                         ; $4307: $05
    adc b                                         ; $4308: $88
    ret nc                                        ; $4309: $D0

    inc bc                                        ; $430A: $03
    inc d                                         ; $430B: $14
    pop hl                                        ; $430C: $E1
    ld b, e                                       ; $430D: $43
    ld [hl+], a                                   ; $430E: $22
    dec b                                         ; $430F: $05
    ld b, b                                       ; $4310: $40
    dec b                                         ; $4311: $05
    inc b                                         ; $4312: $04
    adc a                                         ; $4313: $8F
    ld c, d                                       ; $4314: $4A
    dec bc                                        ; $4315: $0B
    inc bc                                        ; $4316: $03
    ld d, [hl]                                    ; $4317: $56
    ret nc                                        ; $4318: $D0

    inc bc                                        ; $4319: $03
    inc d                                         ; $431A: $14
    pop hl                                        ; $431B: $E1
    ld b, e                                       ; $431C: $43
    ld [hl+], a                                   ; $431D: $22
    dec b                                         ; $431E: $05
    ld b, b                                       ; $431F: $40
    dec b                                         ; $4320: $05
    dec b                                         ; $4321: $05
    ld l, e                                       ; $4322: $6B
    ld c, d                                       ; $4323: $4A
    add hl, bc                                    ; $4324: $09
    inc bc                                        ; $4325: $03
    ld d, h                                       ; $4326: $54
    ret nc                                        ; $4327: $D0

    inc sp                                        ; $4328: $33
    inc d                                         ; $4329: $14
    db $FC                                        ; $432A: $FC
    ld b, e                                       ; $432B: $43
    ld [hl+], a                                   ; $432C: $22
    dec b                                         ; $432D: $05
    ld b, b                                       ; $432E: $40
    dec b                                         ; $432F: $05
    ld b, $ED                                     ; $4330: $06 $ED
    ld h, e                                       ; $4332: $63
    inc b                                         ; $4333: $04
    dec c                                         ; $4334: $0D
    ld c, c                                       ; $4335: $49
    pop de                                        ; $4336: $D1
    ld l, e                                       ; $4337: $6B
    rrca                                          ; $4338: $0F
    ld d, [hl]                                    ; $4339: $56
    ld l, l                                       ; $433A: $6D
    inc d                                         ; $433B: $14
    ld c, b                                       ; $433C: $48
    ld b, h                                       ; $433D: $44
    dec b                                         ; $433E: $05
    rlca                                          ; $433F: $07
    db $ED                                        ; $4340: $ED
    ld h, e                                       ; $4341: $63
    inc d                                         ; $4342: $14
    ld de, $D1BD                                  ; $4343: $11 $BD $D1
    sub [hl]                                      ; $4346: $96
    rrca                                          ; $4347: $0F
    or b                                          ; $4348: $B0
    ld h, a                                       ; $4349: $67
    inc d                                         ; $434A: $14
    ld d, b                                       ; $434B: $50
    ld b, h                                       ; $434C: $44
    dec b                                         ; $434D: $05
    ld [$63ED], sp                                ; $434E: $08 $ED $63
    ld d, $10                                     ; $4351: $16 $10
    and [hl]                                      ; $4353: $A6
    pop de                                        ; $4354: $D1
    nop                                           ; $4355: $00
    db $10                                        ; $4356: $10
    ld e, e                                       ; $4357: $5B
    ld [hl], b                                    ; $4358: $70
    inc d                                         ; $4359: $14
    ld e, b                                       ; $435A: $58
    ld b, h                                       ; $435B: $44
    dec b                                         ; $435C: $05
    add hl, bc                                    ; $435D: $09
    db $ED                                        ; $435E: $ED
    ld h, e                                       ; $435F: $63
    rla                                           ; $4360: $17
    db $10                                        ; $4361: $10

jr_014_4362:
    and a                                         ; $4362: $A7
    pop de                                        ; $4363: $D1
    nop                                           ; $4364: $00
    db $10                                        ; $4365: $10
    ld e, e                                       ; $4366: $5B
    ld [hl], b                                    ; $4367: $70
    inc d                                         ; $4368: $14
    ld h, b                                       ; $4369: $60
    ld b, h                                       ; $436A: $44
    ld l, e                                       ; $436B: $6B
    inc bc                                        ; $436C: $03
    dec c                                         ; $436D: $0D
    sub b                                         ; $436E: $90
    ld [hl], b                                    ; $436F: $70

jr_014_4370:
    nop                                           ; $4370: $00
    add b                                         ; $4371: $80
    nop                                           ; $4372: $00
    ld l, e                                       ; $4373: $6B
    jr nc, jr_014_439A                            ; $4374: $30 $24

    ld b, b                                       ; $4376: $40
    ld b, e                                       ; $4377: $43

jr_014_4378:
    jr nc, jr_014_42FA                            ; $4378: $30 $80

    nop                                           ; $437A: $00
    ld l, e                                       ; $437B: $6B
    jr c, jr_014_4388                             ; $437C: $38 $0A

    db $10                                        ; $437E: $10
    ld d, c                                       ; $437F: $51
    jr nc, jr_014_4305                            ; $4380: $30 $83

    nop                                           ; $4382: $00
    ld l, e                                       ; $4383: $6B
    dec hl                                        ; $4384: $2B
    dec bc                                        ; $4385: $0B
    db $10                                        ; $4386: $10
    ld l, d                                       ; $4387: $6A

jr_014_4388:
    or b                                          ; $4388: $B0
    add [hl]                                      ; $4389: $86
    nop                                           ; $438A: $00
    ld l, e                                       ; $438B: $6B
    ld h, $0B                                     ; $438C: $26 $0B
    or b                                          ; $438E: $B0
    ld h, h                                       ; $438F: $64
    ld h, b                                       ; $4390: $60
    adc c                                         ; $4391: $89
    nop                                           ; $4392: $00
    dec bc                                        ; $4393: $0B
    nop                                           ; $4394: $00
    dec bc                                        ; $4395: $0B
    ld [bc], a                                    ; $4396: $02

jr_014_4397:
    dec bc                                        ; $4397: $0B
    inc bc                                        ; $4398: $03
    dec bc                                        ; $4399: $0B

jr_014_439A:
    inc b                                         ; $439A: $04
    dec bc                                        ; $439B: $0B
    dec b                                         ; $439C: $05
    dec bc                                        ; $439D: $0B
    ld b, $0B                                     ; $439E: $06 $0B
    rlca                                          ; $43A0: $07
    dec bc                                        ; $43A1: $0B
    ld [$090B], sp                                ; $43A2: $08 $0B $09
    add d                                         ; $43A5: $82
    rra                                           ; $43A6: $1F
    inc hl                                        ; $43A7: $23
    sub h                                         ; $43A8: $94
    ld b, d                                       ; $43A9: $42
    dec d                                         ; $43AA: $15
    jr nz, jr_014_4362                            ; $43AB: $20 $B5

    ld d, b                                       ; $43AD: $50
    jr nz, @+$22                                  ; $43AE: $20 $20

    call $204F                                    ; $43B0: $CD $4F $20
    jr nz, jr_014_4388                            ; $43B3: $20 $D3

    ld d, b                                       ; $43B5: $50
    ld [$B520], sp                                ; $43B6: $08 $20 $B5
    ld d, b                                       ; $43B9: $50
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    ld e, h                                       ; $43BC: $5C
    nop                                           ; $43BD: $00
    ld [bc], a                                    ; $43BE: $02
    ld b, b                                       ; $43BF: $40
    ld b, b                                       ; $43C0: $40
    inc d                                         ; $43C1: $14
    jr nz, jr_014_4397                            ; $43C2: $20 $D3

    ld d, b                                       ; $43C4: $50
    ld b, d                                       ; $43C5: $42
    dec d                                         ; $43C6: $15
    ld de, $7377                                  ; $43C7: $11 $77 $73
    jr nz, jr_014_43DD                            ; $43CA: $20 $11

    sub l                                         ; $43CC: $95
    ld [hl], e                                    ; $43CD: $73
    ld b, b                                       ; $43CE: $40
    ld de, $7377                                  ; $43CF: $11 $77 $73
    jr nz, jr_014_43E5                            ; $43D2: $20 $11

    sub l                                         ; $43D4: $95
    ld [hl], e                                    ; $43D5: $73
    jr nz, jr_014_43E9                            ; $43D6: $20 $11

    ld [hl], a                                    ; $43D8: $77
    ld [hl], e                                    ; $43D9: $73
    jr nz, jr_014_43ED                            ; $43DA: $20 $11

    sub l                                         ; $43DC: $95

jr_014_43DD:
    ld [hl], e                                    ; $43DD: $73
    ld b, b                                       ; $43DE: $40
    nop                                           ; $43DF: $00
    add hl, de                                    ; $43E0: $19
    dec d                                         ; $43E1: $15
    jr nz, jr_014_4370                            ; $43E2: $20 $8C

    ld h, a                                       ; $43E4: $67

jr_014_43E5:
    jr nz, jr_014_4407                            ; $43E5: $20 $20

    pop de                                        ; $43E7: $D1
    ld l, b                                       ; $43E8: $68

jr_014_43E9:
    ld b, b                                       ; $43E9: $40
    jr nz, jr_014_4378                            ; $43EA: $20 $8C

    ld h, a                                       ; $43EC: $67

jr_014_43ED:
    jr nz, jr_014_440F                            ; $43ED: $20 $20

    pop de                                        ; $43EF: $D1
    ld l, b                                       ; $43F0: $68
    jr nz, jr_014_4413                            ; $43F1: $20 $20

    adc h                                         ; $43F3: $8C
    ld h, a                                       ; $43F4: $67
    jr nz, jr_014_4417                            ; $43F5: $20 $20

    pop de                                        ; $43F7: $D1
    ld l, b                                       ; $43F8: $68
    ld b, b                                       ; $43F9: $40

jr_014_43FA:
    nop                                           ; $43FA: $00
    add hl, de                                    ; $43FB: $19
    dec d                                         ; $43FC: $15
    ld c, $EE                                     ; $43FD: $0E $EE
    ld h, e                                       ; $43FF: $63
    ld b, b                                       ; $4400: $40
    ld c, $80                                     ; $4401: $0E $80
    ld h, e                                       ; $4403: $63
    db $10                                        ; $4404: $10
    ld c, $16                                     ; $4405: $0E $16

jr_014_4407:
    ld h, h                                       ; $4407: $64
    ld [$DA0E], sp                                ; $4408: $08 $0E $DA
    ld h, e                                       ; $440B: $63
    nop                                           ; $440C: $00
    nop                                           ; $440D: $00
    ld e, e                                       ; $440E: $5B

jr_014_440F:
    inc d                                         ; $440F: $14
    ld l, b                                       ; $4410: $68
    ld b, h                                       ; $4411: $44
    ld h, d                                       ; $4412: $62

jr_014_4413:
    ld bc, $005C                                  ; $4413: $01 $5C $00
    ld [bc], a                                    ; $4416: $02

jr_014_4417:
    dec d                                         ; $4417: $15
    ld c, $16                                     ; $4418: $0E $16
    ld h, h                                       ; $441A: $64
    jr nz, jr_014_442B                            ; $441B: $20 $0E

    xor $63                                       ; $441D: $EE $63
    ld [$020E], sp                                ; $441F: $08 $0E $02
    ld h, h                                       ; $4422: $64
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    ld e, e                                       ; $4425: $5B
    inc d                                         ; $4426: $14
    and d                                         ; $4427: $A2
    ld b, h                                       ; $4428: $44
    ld h, d                                       ; $4429: $62
    ld [bc], a                                    ; $442A: $02

jr_014_442B:
    dec d                                         ; $442B: $15
    ld c, $50                                     ; $442C: $0E $50
    ld h, e                                       ; $442E: $63
    ld b, b                                       ; $442F: $40
    ld c, $D0                                     ; $4430: $0E $D0
    ld h, e                                       ; $4432: $63
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    ld l, e                                       ; $4435: $6B
    jr z, @+$0E                                   ; $4436: $28 $0C

    or b                                          ; $4438: $B0
    ld d, a                                       ; $4439: $57
    nop                                           ; $443A: $00
    add b                                         ; $443B: $80
    nop                                           ; $443C: $00
    rlca                                          ; $443D: $07
    nop                                           ; $443E: $00
    add c                                         ; $443F: $81
    ld e, l                                       ; $4440: $5D
    add hl, bc                                    ; $4441: $09
    nop                                           ; $4442: $00
    jr nz, jr_014_43FA                            ; $4443: $20 $B5

    ld d, b                                       ; $4445: $50
    add hl, de                                    ; $4446: $19
    ld b, d                                       ; $4447: $42
    ld e, e                                       ; $4448: $5B
    inc d                                         ; $4449: $14
    ld e, h                                       ; $444A: $5C
    ld b, l                                       ; $444B: $45
    ld b, l                                       ; $444C: $45
    rrca                                          ; $444D: $0F
    sub a                                         ; $444E: $97
    ld l, l                                       ; $444F: $6D
    ld e, e                                       ; $4450: $5B
    inc d                                         ; $4451: $14
    ld a, [hl]                                    ; $4452: $7E
    ld b, l                                       ; $4453: $45
    ld b, l                                       ; $4454: $45
    rrca                                          ; $4455: $0F
    ld [c], a                                     ; $4456: $E2
    ld h, a                                       ; $4457: $67
    ld e, e                                       ; $4458: $5B
    inc d                                         ; $4459: $14
    xor a                                         ; $445A: $AF
    ld b, l                                       ; $445B: $45
    ld b, l                                       ; $445C: $45
    db $10                                        ; $445D: $10
    ld [hl], b                                    ; $445E: $70
    ld [hl], b                                    ; $445F: $70
    ld e, e                                       ; $4460: $5B
    inc d                                         ; $4461: $14
    add $45                                       ; $4462: $C6 $45
    ld b, l                                       ; $4464: $45
    db $10                                        ; $4465: $10
    ld [hl], b                                    ; $4466: $70
    ld [hl], b                                    ; $4467: $70
    sbc e                                         ; $4468: $9B
    jr @+$50                                      ; $4469: $18 $4E

    sbc a                                         ; $446B: $9F
    ld c, a                                       ; $446C: $4F
    ld [hl], d                                    ; $446D: $72
    ld [hl], a                                    ; $446E: $77
    ld l, c                                       ; $446F: $69
    ld l, [hl]                                    ; $4470: $6E
    jr nz, jr_014_44EA                            ; $4471: $20 $77

    ld h, c                                       ; $4473: $61
    ld [hl], e                                    ; $4474: $73
    jr nz, jr_014_44D8                            ; $4475: $20 $61

    rst $38                                       ; $4477: $FF
    ld l, l                                       ; $4478: $6D
    ld h, c                                       ; $4479: $61
    ld l, [hl]                                    ; $447A: $6E
    ld l, h                                       ; $447B: $6C
    ld a, c                                       ; $447C: $79
    jr nz, jr_014_44EC                            ; $447D: $20 $6D

    ld h, c                                       ; $447F: $61
    ld l, [hl]                                    ; $4480: $6E
    ld l, $2E                                     ; $4481: $2E $2E
    ld l, $FE                                     ; $4483: $2E $FE
    ld c, b                                       ; $4485: $48
    ld h, l                                       ; $4486: $65
    jr nz, jr_014_44F1                            ; $4487: $20 $68

    ld h, c                                       ; $4489: $61
    ld [hl], e                                    ; $448A: $73
    jr nz, jr_014_44D4                            ; $448B: $20 $47

    ld l, a                                       ; $448D: $6F
    ld h, a                                       ; $448E: $67
    ld l, a                                       ; $448F: $6F
    ld [hl], d                                    ; $4490: $72
    daa                                           ; $4491: $27
    ld [hl], e                                    ; $4492: $73
    rst $38                                       ; $4493: $FF
    ld [hl], d                                    ; $4494: $72
    ld h, l                                       ; $4495: $65
    ld [hl], e                                    ; $4496: $73
    ld [hl], b                                    ; $4497: $70
    ld h, l                                       ; $4498: $65
    ld h, e                                       ; $4499: $63
    ld [hl], h                                    ; $449A: $74
    ld l, $FE                                     ; $449B: $2E $FE
    db $FD                                        ; $449D: $FD
    sbc d                                         ; $449E: $9A
    ld e, b                                       ; $449F: $58
    ld bc, $9B42                                  ; $44A0: $01 $42 $9B
    jr jr_014_44F3                                ; $44A3: $18 $4E

    sbc a                                         ; $44A5: $9F
    ld c, a                                       ; $44A6: $4F
    ld l, b                                       ; $44A7: $68
    inc l                                         ; $44A8: $2C
    jr nz, jr_014_4514                            ; $44A9: $20 $69

    ld [hl], h                                    ; $44AB: $74
    daa                                           ; $44AC: $27
    ld [hl], e                                    ; $44AD: $73
    jr nz, @+$7B                                  ; $44AE: $20 $79

    ld l, a                                       ; $44B0: $6F
    ld [hl], l                                    ; $44B1: $75
    ld l, $FF                                     ; $44B2: $2E $FF
    ld c, b                                       ; $44B4: $48
    ld h, c                                       ; $44B5: $61
    halt                                          ; $44B6: $76
    ld h, l                                       ; $44B7: $65
    jr nz, jr_014_4533                            ; $44B8: $20 $79

    ld l, a                                       ; $44BA: $6F
    ld [hl], l                                    ; $44BB: $75
    jr nz, jr_014_4531                            ; $44BC: $20 $73

    ld h, l                                       ; $44BE: $65
    ld h, l                                       ; $44BF: $65
    ld l, [hl]                                    ; $44C0: $6E
    cp $61                                        ; $44C1: $FE $61
    ld l, [hl]                                    ; $44C3: $6E
    ld a, c                                       ; $44C4: $79
    ld l, a                                       ; $44C5: $6F
    ld l, [hl]                                    ; $44C6: $6E
    ld h, l                                       ; $44C7: $65
    jr nz, @+$68                                  ; $44C8: $20 $66

    ld [hl], d                                    ; $44CA: $72
    ld l, a                                       ; $44CB: $6F
    ld l, l                                       ; $44CC: $6D
    rst $38                                       ; $44CD: $FF
    ld [hl], h                                    ; $44CE: $74
    ld l, b                                       ; $44CF: $68
    ld h, l                                       ; $44D0: $65
    jr nz, jr_014_4528                            ; $44D1: $20 $55

    ld l, [hl]                                    ; $44D3: $6E

jr_014_44D4:
    ld h, h                                       ; $44D4: $64
    ld h, l                                       ; $44D5: $65
    ld [hl], d                                    ; $44D6: $72
    ld l, [hl]                                    ; $44D7: $6E

jr_014_44D8:
    ld h, l                                       ; $44D8: $65
    ld h, c                                       ; $44D9: $61
    ld [hl], h                                    ; $44DA: $74
    ld l, b                                       ; $44DB: $68
    ccf                                           ; $44DC: $3F
    cp $57                                        ; $44DD: $FE $57
    ld l, b                                       ; $44DF: $68
    ld h, l                                       ; $44E0: $65
    ld l, [hl]                                    ; $44E1: $6E
    jr nz, jr_014_452D                            ; $44E2: $20 $49

    jr nz, jr_014_4558                            ; $44E4: $20 $72

    ld h, l                                       ; $44E6: $65
    ld [hl], h                                    ; $44E7: $74
    ld [hl], l                                    ; $44E8: $75
    ld [hl], d                                    ; $44E9: $72

jr_014_44EA:
    ld l, [hl]                                    ; $44EA: $6E
    ld h, l                                       ; $44EB: $65

jr_014_44EC:
    ld h, h                                       ; $44EC: $64
    rst $38                                       ; $44ED: $FF
    ld [hl], h                                    ; $44EE: $74
    ld l, b                                       ; $44EF: $68
    ld h, l                                       ; $44F0: $65

jr_014_44F1:
    ld [hl], d                                    ; $44F1: $72
    ld h, l                                       ; $44F2: $65

jr_014_44F3:
    inc l                                         ; $44F3: $2C
    jr nz, jr_014_455B                            ; $44F4: $20 $65

    halt                                          ; $44F6: $76
    ld h, l                                       ; $44F7: $65
    ld [hl], d                                    ; $44F8: $72
    ld a, c                                       ; $44F9: $79
    ld l, a                                       ; $44FA: $6F
    ld l, [hl]                                    ; $44FB: $6E
    ld h, l                                       ; $44FC: $65
    cp $77                                        ; $44FD: $FE $77
    ld h, c                                       ; $44FF: $61
    ld [hl], e                                    ; $4500: $73
    jr nz, jr_014_456A                            ; $4501: $20 $67

    ld l, a                                       ; $4503: $6F
    ld l, [hl]                                    ; $4504: $6E
    ld h, l                                       ; $4505: $65
    ld l, $FE                                     ; $4506: $2E $FE
    db $FD                                        ; $4508: $FD
    sbc e                                         ; $4509: $9B
    ld a, b                                       ; $450A: $78
    ld [hl], b                                    ; $450B: $70
    sbc a                                         ; $450C: $9F
    ld c, [hl]                                    ; $450D: $4E
    ld l, a                                       ; $450E: $6F
    inc l                                         ; $450F: $2C
    jr nz, @+$75                                  ; $4510: $20 $73

    ld l, a                                       ; $4512: $6F
    ld [hl], d                                    ; $4513: $72

jr_014_4514:
    ld [hl], d                                    ; $4514: $72
    ld a, c                                       ; $4515: $79
    jr nz, jr_014_457A                            ; $4516: $20 $62

    ld [hl], l                                    ; $4518: $75
    ld [hl], h                                    ; $4519: $74
    rst $38                                       ; $451A: $FF
    ld c, c                                       ; $451B: $49
    jr nz, jr_014_4586                            ; $451C: $20 $68

    ld h, c                                       ; $451E: $61
    halt                                          ; $451F: $76
    ld h, l                                       ; $4520: $65
    ld l, [hl]                                    ; $4521: $6E
    daa                                           ; $4522: $27
    ld [hl], h                                    ; $4523: $74
    ld l, $FE                                     ; $4524: $2E $FE
    db $FD                                        ; $4526: $FD
    sbc e                                         ; $4527: $9B

jr_014_4528:
    jr @+$50                                      ; $4528: $18 $4E

    sbc a                                         ; $452A: $9F
    ld d, h                                       ; $452B: $54
    ld l, b                                       ; $452C: $68

jr_014_452D:
    ld h, l                                       ; $452D: $65
    ld l, [hl]                                    ; $452E: $6E
    jr nz, jr_014_457A                            ; $452F: $20 $49

jr_014_4531:
    jr nz, jr_014_45AA                            ; $4531: $20 $77

jr_014_4533:
    ld l, c                                       ; $4533: $69
    ld l, h                                       ; $4534: $6C
    ld l, h                                       ; $4535: $6C
    jr nz, jr_014_459F                            ; $4536: $20 $67

    ld l, a                                       ; $4538: $6F
    rst $38                                       ; $4539: $FF
    ld l, c                                       ; $453A: $69
    ld l, [hl]                                    ; $453B: $6E
    ld [hl], h                                    ; $453C: $74
    ld l, a                                       ; $453D: $6F
    jr nz, jr_014_45B4                            ; $453E: $20 $74

    ld l, a                                       ; $4540: $6F
    ld [hl], a                                    ; $4541: $77
    ld l, [hl]                                    ; $4542: $6E
    ld l, $FE                                     ; $4543: $2E $FE
    ld c, c                                       ; $4545: $49
    jr nz, jr_014_45BF                            ; $4546: $20 $77

    ld l, c                                       ; $4548: $69
    ld l, h                                       ; $4549: $6C
    ld l, h                                       ; $454A: $6C
    jr nz, jr_014_45B3                            ; $454B: $20 $66

    ld l, c                                       ; $454D: $69
    ld l, [hl]                                    ; $454E: $6E
    ld h, h                                       ; $454F: $64
    rst $38                                       ; $4550: $FF
    ld [hl], h                                    ; $4551: $74
    ld l, b                                       ; $4552: $68
    ld h, l                                       ; $4553: $65
    ld l, l                                       ; $4554: $6D
    ld l, $FE                                     ; $4555: $2E $FE
    db $FD                                        ; $4557: $FD

jr_014_4558:
    sbc d                                         ; $4558: $9A
    ld e, b                                       ; $4559: $58
    ld [bc], a                                    ; $455A: $02

jr_014_455B:
    ld b, d                                       ; $455B: $42
    sbc e                                         ; $455C: $9B
    jr z, jr_014_45D4                             ; $455D: $28 $75

    sbc a                                         ; $455F: $9F
    ld d, h                                       ; $4560: $54
    ld l, b                                       ; $4561: $68
    ld l, c                                       ; $4562: $69
    ld [hl], e                                    ; $4563: $73
    jr nz, @+$6B                                  ; $4564: $20 $69

    ld [hl], e                                    ; $4566: $73
    jr nz, jr_014_45D7                            ; $4567: $20 $6E

    ld l, a                                       ; $4569: $6F

jr_014_456A:
    ld [hl], h                                    ; $456A: $74
    rst $38                                       ; $456B: $FF
    ld h, c                                       ; $456C: $61
    jr nz, jr_014_45D7                            ; $456D: $20 $68

    ld h, c                                       ; $456F: $61
    ld [hl], b                                    ; $4570: $70
    ld [hl], b                                    ; $4571: $70
    ld a, c                                       ; $4572: $79
    jr nz, jr_014_45D9                            ; $4573: $20 $64

    ld h, c                                       ; $4575: $61
    ld a, c                                       ; $4576: $79
    ld l, $FE                                     ; $4577: $2E $FE
    db $FD                                        ; $4579: $FD

jr_014_457A:
    sbc d                                         ; $457A: $9A
    ld e, b                                       ; $457B: $58
    ld bc, $9B42                                  ; $457C: $01 $42 $9B
    ld [$9F72], sp                                ; $457F: $08 $72 $9F
    ld d, e                                       ; $4582: $53
    ld l, a                                       ; $4583: $6F
    jr nz, jr_014_45FA                            ; $4584: $20 $74

jr_014_4586:
    ld l, b                                       ; $4586: $68
    ld l, c                                       ; $4587: $69
    ld [hl], e                                    ; $4588: $73
    jr nz, jr_014_45F8                            ; $4589: $20 $6D

    ld h, l                                       ; $458B: $65
    ld h, c                                       ; $458C: $61
    ld l, [hl]                                    ; $458D: $6E
    ld [hl], e                                    ; $458E: $73
    rst $38                                       ; $458F: $FF
    ld b, l                                       ; $4590: $45
    ld l, c                                       ; $4591: $69
    ld h, h                                       ; $4592: $64
    ld l, a                                       ; $4593: $6F
    ld l, [hl]                                    ; $4594: $6E
    jr nz, @+$6B                                  ; $4595: $20 $69

    ld [hl], e                                    ; $4597: $73
    jr nz, jr_014_460E                            ; $4598: $20 $74

    ld l, b                                       ; $459A: $68
    ld h, l                                       ; $459B: $65
    cp $6E                                        ; $459C: $FE $6E
    ld h, l                                       ; $459E: $65

jr_014_459F:
    ld [hl], a                                    ; $459F: $77
    jr nz, @+$47                                  ; $45A0: $20 $45

    ld l, h                                       ; $45A2: $6C
    ld h, h                                       ; $45A3: $64
    ld h, l                                       ; $45A4: $65
    ld [hl], d                                    ; $45A5: $72
    ld l, $2E                                     ; $45A6: $2E $2E
    ld l, $FE                                     ; $45A8: $2E $FE

jr_014_45AA:
    db $FD                                        ; $45AA: $FD
    sbc d                                         ; $45AB: $9A

jr_014_45AC:
    ld e, b                                       ; $45AC: $58

jr_014_45AD:
    ld bc, $9B42                                  ; $45AD: $01 $42 $9B
    ld l, c                                       ; $45B0: $69
    ld c, c                                       ; $45B1: $49
    sbc a                                         ; $45B2: $9F

jr_014_45B3:
    ld d, b                                       ; $45B3: $50

jr_014_45B4:
    ld l, a                                       ; $45B4: $6F
    ld l, a                                       ; $45B5: $6F
    ld [hl], d                                    ; $45B6: $72
    jr nz, jr_014_4608                            ; $45B7: $20 $4F

    ld [hl], d                                    ; $45B9: $72
    ld [hl], a                                    ; $45BA: $77
    ld l, c                                       ; $45BB: $69
    ld l, [hl]                                    ; $45BC: $6E
    ld l, $2E                                     ; $45BD: $2E $2E

jr_014_45BF:
    ld l, $FE                                     ; $45BF: $2E $FE
    db $FD                                        ; $45C1: $FD
    sbc d                                         ; $45C2: $9A
    ld e, b                                       ; $45C3: $58
    ld bc, $9B42                                  ; $45C4: $01 $42 $9B
    ld sp, hl                                     ; $45C7: $F9
    ld c, d                                       ; $45C8: $4A
    sbc a                                         ; $45C9: $9F
    ld d, a                                       ; $45CA: $57
    ld h, c                                       ; $45CB: $61
    ld l, b                                       ; $45CC: $68
    ld l, b                                       ; $45CD: $68
    ld l, $2E                                     ; $45CE: $2E $2E
    ld l, $FE                                     ; $45D0: $2E $FE
    ld l, $2E                                     ; $45D2: $2E $2E

jr_014_45D4:
    ld l, $2D                                     ; $45D4: $2E $2D
    ld [hl], e                                    ; $45D6: $73

jr_014_45D7:
    ld l, [hl]                                    ; $45D7: $6E
    ld l, c                                       ; $45D8: $69

jr_014_45D9:
    ld h, [hl]                                    ; $45D9: $66
    ld h, [hl]                                    ; $45DA: $66
    dec l                                         ; $45DB: $2D
    cp $FD                                        ; $45DC: $FE $FD
    sbc d                                         ; $45DE: $9A
    ld e, b                                       ; $45DF: $58

jr_014_45E0:
    ld bc, $0242                                  ; $45E0: $01 $42 $02
    ld [bc], a                                    ; $45E3: $02
    add hl, bc                                    ; $45E4: $09
    ld sp, $4500                                  ; $45E5: $31 $00 $45
    inc d                                         ; $45E8: $14
    sub h                                         ; $45E9: $94
    ld b, d                                       ; $45EA: $42

    db $01, $20, $10, $45, $2F, $65, $41

    rlca                                          ; $45F2: $07
    nop                                           ; $45F3: $00
    ld l, e                                       ; $45F4: $6B
    ld c, d                                       ; $45F5: $4A
    add hl, bc                                    ; $45F6: $09
    nop                                           ; $45F7: $00

jr_014_45F8:
    jr nz, jr_014_45AD                            ; $45F8: $20 $B3

jr_014_45FA:
    ld c, a                                       ; $45FA: $4F
    ld b, b                                       ; $45FB: $40
    db $10                                        ; $45FC: $10
    add hl, bc                                    ; $45FD: $09
    nop                                           ; $45FE: $00
    jr nz, jr_014_45AC                            ; $45FF: $20 $AB

    ld d, b                                       ; $4601: $50
    rlca                                          ; $4602: $07
    nop                                           ; $4603: $00
    add c                                         ; $4604: $81
    ld e, l                                       ; $4605: $5D
    ld b, d                                       ; $4606: $42
    ld b, l                                       ; $4607: $45

jr_014_4608:
    inc d                                         ; $4608: $14
    push de                                       ; $4609: $D5
    ld b, d                                       ; $460A: $42
    rlca                                          ; $460B: $07
    nop                                           ; $460C: $00
    ld l, e                                       ; $460D: $6B

jr_014_460E:
    ld c, d                                       ; $460E: $4A
    add hl, bc                                    ; $460F: $09
    nop                                           ; $4610: $00
    jr nz, jr_014_45E0                            ; $4611: $20 $CD

    ld c, a                                       ; $4613: $4F
    ld b, b                                       ; $4614: $40
    db $10                                        ; $4615: $10
    add hl, bc                                    ; $4616: $09
    nop                                           ; $4617: $00
    jr nz, @-$49                                  ; $4618: $20 $B5

    ld d, b                                       ; $461A: $50
    rlca                                          ; $461B: $07
    nop                                           ; $461C: $00
    add c                                         ; $461D: $81
    ld e, l                                       ; $461E: $5D
    ld b, d                                       ; $461F: $42
    sbc e                                         ; $4620: $9B
    ld a, b                                       ; $4621: $78
    ld [hl], b                                    ; $4622: $70
    sbc a                                         ; $4623: $9F
    ld d, e                                       ; $4624: $53
    ld l, c                                       ; $4625: $69
    ld l, [hl]                                    ; $4626: $6E
    ld h, e                                       ; $4627: $63
    ld h, l                                       ; $4628: $65
    jr nz, @+$4B                                  ; $4629: $20 $49

    jr nz, jr_014_4695                            ; $462B: $20 $68

    ld h, c                                       ; $462D: $61
    halt                                          ; $462E: $76
    ld h, l                                       ; $462F: $65
    rst $38                                       ; $4630: $FF
    ld h, [hl]                                    ; $4631: $66
    ld l, a                                       ; $4632: $6F
    ld l, h                                       ; $4633: $6C
    ld l, h                                       ; $4634: $6C
    ld l, a                                       ; $4635: $6F
    ld [hl], a                                    ; $4636: $77
    ld h, l                                       ; $4637: $65
    ld h, h                                       ; $4638: $64
    jr nz, jr_014_46A3                            ; $4639: $20 $68

    ld l, c                                       ; $463B: $69
    ld l, l                                       ; $463C: $6D
    cp $74                                        ; $463D: $FE $74
    ld l, b                                       ; $463F: $68
    ld l, c                                       ; $4640: $69
    ld [hl], e                                    ; $4641: $73
    jr nz, jr_014_46AA                            ; $4642: $20 $66

    ld h, c                                       ; $4644: $61
    ld [hl], d                                    ; $4645: $72
    inc l                                         ; $4646: $2C
    jr nz, jr_014_46B2                            ; $4647: $20 $69

    ld [hl], h                                    ; $4649: $74
    rst $38                                       ; $464A: $FF
    ld [hl], a                                    ; $464B: $77
    ld l, a                                       ; $464C: $6F
    ld [hl], l                                    ; $464D: $75
    ld l, h                                       ; $464E: $6C
    ld h, h                                       ; $464F: $64
    jr nz, jr_014_46B4                            ; $4650: $20 $62

    ld h, l                                       ; $4652: $65
    cp $66                                        ; $4653: $FE $66
    ld l, a                                       ; $4655: $6F
    ld l, a                                       ; $4656: $6F
    ld l, h                                       ; $4657: $6C
    ld l, c                                       ; $4658: $69
    ld [hl], e                                    ; $4659: $73
    ld l, b                                       ; $465A: $68
    jr nz, jr_014_46D1                            ; $465B: $20 $74

    ld l, a                                       ; $465D: $6F
    jr nz, @+$01                                  ; $465E: $20 $FF

    ld [hl], e                                    ; $4660: $73
    ld [hl], h                                    ; $4661: $74
    ld l, a                                       ; $4662: $6F
    ld [hl], b                                    ; $4663: $70
    jr nz, jr_014_46D4                            ; $4664: $20 $6E

    ld l, a                                       ; $4666: $6F
    ld [hl], a                                    ; $4667: $77
    cp $FD                                        ; $4668: $FE $FD
    sbc d                                         ; $466A: $9A
    ld e, b                                       ; $466B: $58
    inc bc                                        ; $466C: $03
    ld b, d                                       ; $466D: $42
    inc h                                         ; $466E: $24
    db $1E                                        ; $466F: $1E

    db $93, $65, $0F, $40, $4F, $66, $C0, $5C, $21, $64, $17, $40, $05, $00, $81, $5D
    db $06, $31, $E5, $D2, $00, $20, $FB, $50, $22, $05, $40, $0B, $00, $00, $82, $94
    db $1F, $24, $42

    sub e                                         ; $4693: $93

jr_014_4694:
    ld h, l                                       ; $4694: $65

jr_014_4695:
    rrca                                          ; $4695: $0F
    ld b, b                                       ; $4696: $40
    ld c, a                                       ; $4697: $4F
    ld h, [hl]                                    ; $4698: $66
    ret nz                                        ; $4699: $C0

    ld e, h                                       ; $469A: $5C
    ld hl, $0005                                  ; $469B: $21 $05 $00
    ld l, e                                       ; $469E: $6B

jr_014_469F:
    ld c, d                                       ; $469F: $4A
    ld [$4404], sp                                ; $46A0: $08 $04 $44

jr_014_46A3:
    ret nc                                        ; $46A3: $D0

    nop                                           ; $46A4: $00
    inc d                                         ; $46A5: $14
    ld e, l                                       ; $46A6: $5D
    ld b, a                                       ; $46A7: $47
    ld [hl+], a                                   ; $46A8: $22
    dec b                                         ; $46A9: $05

jr_014_46AA:
    ld b, b                                       ; $46AA: $40
    dec b                                         ; $46AB: $05
    ld [bc], a                                    ; $46AC: $02
    ld l, e                                       ; $46AD: $6B
    ld c, d                                       ; $46AE: $4A
    ld [$5305], sp                                ; $46AF: $08 $05 $53

jr_014_46B2:
    ret nc                                        ; $46B2: $D0

    inc bc                                        ; $46B3: $03

jr_014_46B4:
    inc d                                         ; $46B4: $14

jr_014_46B5:
    halt                                          ; $46B5: $76
    ld b, a                                       ; $46B6: $47
    ld [hl+], a                                   ; $46B7: $22
    dec b                                         ; $46B8: $05
    ld b, b                                       ; $46B9: $40
    dec b                                         ; $46BA: $05
    inc bc                                        ; $46BB: $03
    ld l, e                                       ; $46BC: $6B
    ld c, d                                       ; $46BD: $4A
    ld [$3503], sp                                ; $46BE: $08 $03 $35
    ret nc                                        ; $46C1: $D0

    inc bc                                        ; $46C2: $03
    inc d                                         ; $46C3: $14
    halt                                          ; $46C4: $76
    ld b, a                                       ; $46C5: $47
    ld [hl+], a                                   ; $46C6: $22
    dec b                                         ; $46C7: $05
    ld b, b                                       ; $46C8: $40
    dec b                                         ; $46C9: $05
    inc b                                         ; $46CA: $04
    ld l, e                                       ; $46CB: $6B
    ld c, d                                       ; $46CC: $4A
    inc bc                                        ; $46CD: $03
    inc b                                         ; $46CE: $04
    ccf                                           ; $46CF: $3F
    ret nc                                        ; $46D0: $D0

jr_014_46D1:
    inc sp                                        ; $46D1: $33
    rrca                                          ; $46D2: $0F
    di                                            ; $46D3: $F3

jr_014_46D4:
    ld e, h                                       ; $46D4: $5C
    ld [hl+], a                                   ; $46D5: $22
    dec b                                         ; $46D6: $05
    ld b, b                                       ; $46D7: $40

jr_014_46D8:
    dec b                                         ; $46D8: $05
    dec b                                         ; $46D9: $05
    ld l, e                                       ; $46DA: $6B
    ld c, d                                       ; $46DB: $4A
    ld a, [bc]                                    ; $46DC: $0A
    rlca                                          ; $46DD: $07
    ld [hl], e                                    ; $46DE: $73
    ret nc                                        ; $46DF: $D0

    ld h, e                                       ; $46E0: $63
    inc d                                         ; $46E1: $14
    adc c                                         ; $46E2: $89
    ld b, a                                       ; $46E3: $47
    ld [hl+], a                                   ; $46E4: $22
    dec b                                         ; $46E5: $05
    ld b, b                                       ; $46E6: $40
    dec b                                         ; $46E7: $05
    ld b, $6B                                     ; $46E8: $06 $6B
    ld c, d                                       ; $46EA: $4A
    ld a, [bc]                                    ; $46EB: $0A
    rrca                                          ; $46EC: $0F
    db $EB                                        ; $46ED: $EB
    ret nc                                        ; $46EE: $D0

    sub e                                         ; $46EF: $93
    inc d                                         ; $46F0: $14
    sbc b                                         ; $46F1: $98
    ld b, a                                       ; $46F2: $47
    ld [hl+], a                                   ; $46F3: $22
    dec b                                         ; $46F4: $05
    ld b, b                                       ; $46F5: $40
    dec b                                         ; $46F6: $05
    rlca                                          ; $46F7: $07
    ld l, e                                       ; $46F8: $6B
    ld c, d                                       ; $46F9: $4A
    ld [bc], a                                    ; $46FA: $02
    inc d                                         ; $46FB: $14
    ld l, $D1                                     ; $46FC: $2E $D1
    inc sp                                        ; $46FE: $33
    inc d                                         ; $46FF: $14
    xor e                                         ; $4700: $AB
    ld b, a                                       ; $4701: $47
    ld [hl+], a                                   ; $4702: $22
    dec b                                         ; $4703: $05
    ld b, b                                       ; $4704: $40

jr_014_4705:
    ld l, e                                       ; $4705: $6B
    inc bc                                        ; $4706: $03
    dec c                                         ; $4707: $0D
    sub b                                         ; $4708: $90

jr_014_4709:
    ld [hl], b                                    ; $4709: $70
    nop                                           ; $470A: $00
    add b                                         ; $470B: $80
    nop                                           ; $470C: $00
    ld l, e                                       ; $470D: $6B
    jr nc, jr_014_4734                            ; $470E: $30 $24

    ld b, b                                       ; $4710: $40

jr_014_4711:
    ld b, e                                       ; $4711: $43
    jr nc, jr_014_4694                            ; $4712: $30 $80

    nop                                           ; $4714: $00
    ld l, e                                       ; $4715: $6B
    jr nc, @+$0D                                  ; $4716: $30 $0B

    ld d, b                                       ; $4718: $50
    ld e, c                                       ; $4719: $59
    jr nc, jr_014_469F                            ; $471A: $30 $83

    nop                                           ; $471C: $00
    ld l, e                                       ; $471D: $6B
    jr nc, @+$0D                                  ; $471E: $30 $0B

    or b                                          ; $4720: $B0
    ld d, [hl]                                    ; $4721: $56
    jr nc, jr_014_46AA                            ; $4722: $30 $86

    nop                                           ; $4724: $00
    ld l, e                                       ; $4725: $6B
    jr nc, jr_014_4732                            ; $4726: $30 $0A

    or b                                          ; $4728: $B0
    ld c, h                                       ; $4729: $4C
    jr nc, jr_014_46B5                            ; $472A: $30 $89

    nop                                           ; $472C: $00
    dec bc                                        ; $472D: $0B
    nop                                           ; $472E: $00
    dec bc                                        ; $472F: $0B
    ld [bc], a                                    ; $4730: $02
    dec bc                                        ; $4731: $0B

jr_014_4732:
    inc bc                                        ; $4732: $03
    dec bc                                        ; $4733: $0B

jr_014_4734:
    inc b                                         ; $4734: $04
    dec bc                                        ; $4735: $0B
    dec b                                         ; $4736: $05
    dec bc                                        ; $4737: $0B
    ld b, $0B                                     ; $4738: $06 $0B
    rlca                                          ; $473A: $07
    add h                                         ; $473B: $84
    ld b, $06                                     ; $473C: $06 $06
    ld l, a                                       ; $473E: $6F
    rrca                                          ; $473F: $0F
    rst $38                                       ; $4740: $FF
    ld a, a                                       ; $4741: $7F
    sub h                                         ; $4742: $94
    halt                                          ; $4743: $76
    ld h, b                                       ; $4744: $60
    rrca                                          ; $4745: $0F
    rra                                           ; $4746: $1F
    inc hl                                        ; $4747: $23
    ld e, d                                       ; $4748: $5A
    inc hl                                        ; $4749: $23
    or b                                          ; $474A: $B0
    ld a, l                                       ; $474B: $7D
    ld b, b                                       ; $474C: $40
    add b                                         ; $474D: $80
    ld l, e                                       ; $474E: $6B
    jr nc, @+$0D                                  ; $474F: $30 $0B

    or b                                          ; $4751: $B0

jr_014_4752:
    ld h, h                                       ; $4752: $64
    jr nc, jr_014_46D8                            ; $4753: $30 $83

    nop                                           ; $4755: $00
    ld h, b                                       ; $4756: $60
    ld bc, $2245                                  ; $4757: $01 $45 $22
    ld hl, $426C                                  ; $475A: $21 $6C $42
    dec d                                         ; $475D: $15
    ld de, $7377                                  ; $475E: $11 $77 $73
    and b                                         ; $4761: $A0
    ld de, $7377                                  ; $4762: $11 $77 $73
    ret nz                                        ; $4765: $C0

    ld de, $7395                                  ; $4766: $11 $95 $73
    ld h, b                                       ; $4769: $60
    ld de, $7377                                  ; $476A: $11 $77 $73
    and b                                         ; $476D: $A0
    ld de, $7377                                  ; $476E: $11 $77 $73
    and b                                         ; $4771: $A0
    nop                                           ; $4772: $00
    ld d, [hl]                                    ; $4773: $56
    ld bc, $1542                                  ; $4774: $01 $42 $15
    jr nz, jr_014_4705                            ; $4777: $20 $8C

    ld h, a                                       ; $4779: $67
    and b                                         ; $477A: $A0
    jr nz, jr_014_4709                            ; $477B: $20 $8C

    ld h, a                                       ; $477D: $67
    ret nz                                        ; $477E: $C0

    jr nz, jr_014_4752                            ; $477F: $20 $D1

    ld l, b                                       ; $4781: $68
    ld h, b                                       ; $4782: $60
    jr nz, jr_014_4711                            ; $4783: $20 $8C

    ld h, a                                       ; $4785: $67
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    ld b, d                                       ; $4788: $42
    dec d                                         ; $4789: $15
    rrca                                          ; $478A: $0F
    ld a, l                                       ; $478B: $7D
    ld e, c                                       ; $478C: $59
    ld h, b                                       ; $478D: $60
    rrca                                          ; $478E: $0F
    ld l, c                                       ; $478F: $69
    ld e, c                                       ; $4790: $59
    jr nc, @+$11                                  ; $4791: $30 $0F

    sub c                                         ; $4793: $91
    ld e, c                                       ; $4794: $59
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    ld b, d                                       ; $4797: $42
    dec d                                         ; $4798: $15
    ld c, $22                                     ; $4799: $0E $22
    ld e, c                                       ; $479B: $59
    ret z                                         ; $479C: $C8

    ld c, $22                                     ; $479D: $0E $22
    ld e, c                                       ; $479F: $59
    sbc b                                         ; $47A0: $98
    ld c, $0E                                     ; $47A1: $0E $0E
    ld e, c                                       ; $47A3: $59
    jr nc, jr_014_47B4                            ; $47A4: $30 $0E

    ld [hl], $59                                  ; $47A6: $36 $59
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    ld b, d                                       ; $47AA: $42
    dec d                                         ; $47AB: $15
    rrca                                          ; $47AC: $0F
    call nz, $C867                                ; $47AD: $C4 $67 $C8
    rrca                                          ; $47B0: $0F
    call nz, $C867                                ; $47B1: $C4 $67 $C8

jr_014_47B4:
    rrca                                          ; $47B4: $0F
    call nz, Call_014_7067                        ; $47B5: $C4 $67 $70
    rrca                                          ; $47B8: $0F
    or b                                          ; $47B9: $B0
    ld h, a                                       ; $47BA: $67
    jr nc, jr_014_47CC                            ; $47BB: $30 $0F

    ret c                                         ; $47BD: $D8

    ld h, a                                       ; $47BE: $67
    nop                                           ; $47BF: $00
    nop                                           ; $47C0: $00
    ld b, d                                       ; $47C1: $42
    sub e                                         ; $47C2: $93
    ld h, l                                       ; $47C3: $65
    rrca                                          ; $47C4: $0F
    ld b, b                                       ; $47C5: $40
    ld c, a                                       ; $47C6: $4F
    ld h, h                                       ; $47C7: $64
    jr nz, jr_014_480A                            ; $47C8: $20 $40

    ld h, [hl]                                    ; $47CA: $66
    ret nz                                        ; $47CB: $C0

jr_014_47CC:
    ld e, h                                       ; $47CC: $5C
    ld hl, $0005                                  ; $47CD: $21 $05 $00
    ld l, e                                       ; $47D0: $6B
    ld c, d                                       ; $47D1: $4A
    inc b                                         ; $47D2: $04
    nop                                           ; $47D3: $00
    inc b                                         ; $47D4: $04

jr_014_47D5:
    ret nc                                        ; $47D5: $D0

    nop                                           ; $47D6: $00
    inc d                                         ; $47D7: $14
    and e                                         ; $47D8: $A3
    ld c, b                                       ; $47D9: $48
    ld [hl+], a                                   ; $47DA: $22
    dec b                                         ; $47DB: $05
    ld b, b                                       ; $47DC: $40
    dec b                                         ; $47DD: $05
    ld [bc], a                                    ; $47DE: $02
    adc a                                         ; $47DF: $8F

jr_014_47E0:
    ld c, d                                       ; $47E0: $4A
    ld [$4404], sp                                ; $47E1: $08 $04 $44
    ret nc                                        ; $47E4: $D0

    nop                                           ; $47E5: $00
    inc d                                         ; $47E6: $14
    ld e, l                                       ; $47E7: $5D
    ld b, a                                       ; $47E8: $47
    ld [hl+], a                                   ; $47E9: $22
    dec b                                         ; $47EA: $05
    ld b, b                                       ; $47EB: $40
    dec b                                         ; $47EC: $05
    inc bc                                        ; $47ED: $03
    adc a                                         ; $47EE: $8F
    ld c, d                                       ; $47EF: $4A
    ld [$5305], sp                                ; $47F0: $08 $05 $53
    ret nc                                        ; $47F3: $D0

    inc bc                                        ; $47F4: $03

jr_014_47F5:
    inc d                                         ; $47F5: $14
    halt                                          ; $47F6: $76
    ld b, a                                       ; $47F7: $47
    ld [hl+], a                                   ; $47F8: $22
    dec b                                         ; $47F9: $05
    ld b, b                                       ; $47FA: $40
    dec b                                         ; $47FB: $05
    inc b                                         ; $47FC: $04
    adc a                                         ; $47FD: $8F
    ld c, d                                       ; $47FE: $4A
    ld [$3503], sp                                ; $47FF: $08 $03 $35
    ret nc                                        ; $4802: $D0

    inc bc                                        ; $4803: $03
    inc d                                         ; $4804: $14
    halt                                          ; $4805: $76
    ld b, a                                       ; $4806: $47
    ld [hl+], a                                   ; $4807: $22
    dec b                                         ; $4808: $05
    ld b, b                                       ; $4809: $40

jr_014_480A:
    dec b                                         ; $480A: $05
    dec b                                         ; $480B: $05
    db $ED                                        ; $480C: $ED
    ld h, e                                       ; $480D: $63
    ld [bc], a                                    ; $480E: $02
    ld hl, $D1F1                                  ; $480F: $21 $F1 $D1
    inc sp                                        ; $4812: $33
    inc d                                         ; $4813: $14
    xor [hl]                                      ; $4814: $AE
    ld c, b                                       ; $4815: $48
    inc d                                         ; $4816: $14
    db $E4                                        ; $4817: $E4
    ld c, b                                       ; $4818: $48
    dec b                                         ; $4819: $05
    ld b, $ED                                     ; $481A: $06 $ED
    ld h, e                                       ; $481C: $63
    ld a, [bc]                                    ; $481D: $0A
    rlca                                          ; $481E: $07
    ld [hl], e                                    ; $481F: $73
    ret nc                                        ; $4820: $D0

    ld e, b                                       ; $4821: $58
    inc d                                         ; $4822: $14
    adc c                                         ; $4823: $89
    ld b, a                                       ; $4824: $47
    inc d                                         ; $4825: $14
    db $EC                                        ; $4826: $EC
    ld c, b                                       ; $4827: $48
    dec b                                         ; $4828: $05
    rlca                                          ; $4829: $07
    db $ED                                        ; $482A: $ED
    ld h, e                                       ; $482B: $63
    ld a, [bc]                                    ; $482C: $0A
    rrca                                          ; $482D: $0F
    db $EB                                        ; $482E: $EB
    ret nc                                        ; $482F: $D0

    add d                                         ; $4830: $82
    inc d                                         ; $4831: $14
    sbc b                                         ; $4832: $98
    ld b, a                                       ; $4833: $47
    inc d                                         ; $4834: $14
    db $F4                                        ; $4835: $F4
    ld c, b                                       ; $4836: $48
    dec b                                         ; $4837: $05
    ld [$63ED], sp                                ; $4838: $08 $ED $63
    ld [bc], a                                    ; $483B: $02
    inc d                                         ; $483C: $14
    ld l, $D1                                     ; $483D: $2E $D1
    and [hl]                                      ; $483F: $A6
    inc d                                         ; $4840: $14
    call $1448                                    ; $4841: $CD $48 $14
    db $FC                                        ; $4844: $FC
    ld c, b                                       ; $4845: $48
    ld l, e                                       ; $4846: $6B
    inc bc                                        ; $4847: $03
    dec c                                         ; $4848: $0D

jr_014_4849:
    sub b                                         ; $4849: $90
    ld [hl], b                                    ; $484A: $70
    nop                                           ; $484B: $00
    add b                                         ; $484C: $80
    nop                                           ; $484D: $00
    ld l, e                                       ; $484E: $6B
    jr nc, jr_014_4875                            ; $484F: $30 $24

    ld b, b                                       ; $4851: $40
    ld b, e                                       ; $4852: $43
    jr nc, jr_014_47D5                            ; $4853: $30 $80

    nop                                           ; $4855: $00
    ld l, e                                       ; $4856: $6B
    dec h                                         ; $4857: $25
    dec bc                                        ; $4858: $0B
    ld d, b                                       ; $4859: $50
    ld e, c                                       ; $485A: $59
    jr nc, jr_014_47E0                            ; $485B: $30 $83

    nop                                           ; $485D: $00
    ld l, e                                       ; $485E: $6B
    ld a, [hl+]                                   ; $485F: $2A
    dec bc                                        ; $4860: $0B
    or b                                          ; $4861: $B0
    ld d, [hl]                                    ; $4862: $56
    add b                                         ; $4863: $80
    add l                                         ; $4864: $85
    nop                                           ; $4865: $00
    ld l, e                                       ; $4866: $6B
    inc h                                         ; $4867: $24
    ld a, [bc]                                    ; $4868: $0A
    or b                                          ; $4869: $B0
    ld c, h                                       ; $486A: $4C
    jr nz, jr_014_47F5                            ; $486B: $20 $88

    nop                                           ; $486D: $00
    ld l, e                                       ; $486E: $6B
    add hl, hl                                    ; $486F: $29
    dec bc                                        ; $4870: $0B
    ret nz                                        ; $4871: $C0

    ld [hl], a                                    ; $4872: $77

jr_014_4873:
    ld h, b                                       ; $4873: $60
    adc d                                         ; $4874: $8A

jr_014_4875:
    nop                                           ; $4875: $00
    dec bc                                        ; $4876: $0B
    nop                                           ; $4877: $00
    dec bc                                        ; $4878: $0B
    ld [bc], a                                    ; $4879: $02
    dec bc                                        ; $487A: $0B
    inc bc                                        ; $487B: $03
    dec bc                                        ; $487C: $0B
    inc b                                         ; $487D: $04
    dec bc                                        ; $487E: $0B
    dec b                                         ; $487F: $05
    dec bc                                        ; $4880: $0B
    ld b, $0B                                     ; $4881: $06 $0B
    rlca                                          ; $4883: $07
    dec bc                                        ; $4884: $0B
    ld [$9482], sp                                ; $4885: $08 $82 $94
    rra                                           ; $4888: $1F
    inc hl                                        ; $4889: $23
    ld b, b                                       ; $488A: $40
    jr nc, jr_014_4894                            ; $488B: $30 $07

    nop                                           ; $488D: $00
    add c                                         ; $488E: $81
    ld e, l                                       ; $488F: $5D
    add hl, bc                                    ; $4890: $09
    nop                                           ; $4891: $00
    jr nz, jr_014_4849                            ; $4892: $20 $B5

jr_014_4894:
    ld d, b                                       ; $4894: $50
    ld h, b                                       ; $4895: $60
    ld bc, $C840                                  ; $4896: $01 $40 $C8
    ld b, b                                       ; $4899: $40
    ret z                                         ; $489A: $C8

    ld b, b                                       ; $489B: $40
    ret z                                         ; $489C: $C8

    ld b, b                                       ; $489D: $40
    add b                                         ; $489E: $80
    ld h, h                                       ; $489F: $64
    add hl, hl                                    ; $48A0: $29
    ld b, b                                       ; $48A1: $40
    ld b, d                                       ; $48A2: $42
    dec d                                         ; $48A3: $15
    jr nz, jr_014_4873                            ; $48A4: $20 $CD

    ld c, a                                       ; $48A6: $4F
    jr nc, jr_014_48C9                            ; $48A7: $30 $20

    or l                                          ; $48A9: $B5
    ld d, b                                       ; $48AA: $50
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    ld b, d                                       ; $48AD: $42
    dec d                                         ; $48AE: $15
    rrca                                          ; $48AF: $0F
    rst $18                                       ; $48B0: $DF
    ld e, h                                       ; $48B1: $5C
    ret z                                         ; $48B2: $C8

    rrca                                          ; $48B3: $0F
    rst $18                                       ; $48B4: $DF
    ld e, h                                       ; $48B5: $5C
    ret z                                         ; $48B6: $C8

    rrca                                          ; $48B7: $0F
    rst $18                                       ; $48B8: $DF
    ld e, h                                       ; $48B9: $5C
    ret z                                         ; $48BA: $C8

    rrca                                          ; $48BB: $0F
    rst $18                                       ; $48BC: $DF
    ld e, h                                       ; $48BD: $5C
    ret z                                         ; $48BE: $C8

    rrca                                          ; $48BF: $0F
    rst $18                                       ; $48C0: $DF
    ld e, h                                       ; $48C1: $5C
    ld a, b                                       ; $48C2: $78
    rrca                                          ; $48C3: $0F
    bit 3, h                                      ; $48C4: $CB $5C
    jr nc, jr_014_48D7                            ; $48C6: $30 $0F

    di                                            ; $48C8: $F3

jr_014_48C9:
    ld e, h                                       ; $48C9: $5C
    nop                                           ; $48CA: $00
    nop                                           ; $48CB: $00
    ld b, d                                       ; $48CC: $42
    dec d                                         ; $48CD: $15
    rrca                                          ; $48CE: $0F
    sub [hl]                                      ; $48CF: $96
    ld a, c                                       ; $48D0: $79
    ret z                                         ; $48D1: $C8

    rrca                                          ; $48D2: $0F
    sub [hl]                                      ; $48D3: $96
    ld a, c                                       ; $48D4: $79
    ret z                                         ; $48D5: $C8

    rrca                                          ; $48D6: $0F

jr_014_48D7:
    sub [hl]                                      ; $48D7: $96
    ld a, c                                       ; $48D8: $79
    ld [hl], b                                    ; $48D9: $70
    rrca                                          ; $48DA: $0F
    add d                                         ; $48DB: $82
    ld a, c                                       ; $48DC: $79
    jr nc, jr_014_48EE                            ; $48DD: $30 $0F

    xor d                                         ; $48DF: $AA
    ld a, c                                       ; $48E0: $79
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    ld b, d                                       ; $48E3: $42
    ld e, e                                       ; $48E4: $5B
    inc d                                         ; $48E5: $14
    inc b                                         ; $48E6: $04
    ld c, c                                       ; $48E7: $49
    ld b, l                                       ; $48E8: $45
    rrca                                          ; $48E9: $0F
    cp h                                          ; $48EA: $BC
    ld e, l                                       ; $48EB: $5D
    ld e, e                                       ; $48EC: $5B
    inc d                                         ; $48ED: $14

jr_014_48EE:
    ld d, $49                                     ; $48EE: $16 $49
    ld b, l                                       ; $48F0: $45
    rrca                                          ; $48F1: $0F
    and l                                         ; $48F2: $A5
    ld e, c                                       ; $48F3: $59
    ld e, e                                       ; $48F4: $5B
    inc d                                         ; $48F5: $14
    ld b, b                                       ; $48F6: $40
    ld c, c                                       ; $48F7: $49
    ld b, l                                       ; $48F8: $45
    ld c, $4A                                     ; $48F9: $0E $4A
    ld e, c                                       ; $48FB: $59
    ld e, e                                       ; $48FC: $5B
    inc d                                         ; $48FD: $14
    ld [hl], c                                    ; $48FE: $71
    ld c, c                                       ; $48FF: $49
    ld b, l                                       ; $4900: $45
    rrca                                          ; $4901: $0F
    or h                                          ; $4902: $B4
    ld a, c                                       ; $4903: $79
    sbc e                                         ; $4904: $9B
    xor b                                         ; $4905: $A8
    ld l, b                                       ; $4906: $68
    sbc a                                         ; $4907: $9F
    ld c, a                                       ; $4908: $4F
    ld [hl], d                                    ; $4909: $72
    ld [hl], a                                    ; $490A: $77
    ld l, c                                       ; $490B: $69
    ld l, [hl]                                    ; $490C: $6E
    ld l, $2E                                     ; $490D: $2E $2E
    ld l, $FE                                     ; $490F: $2E $FE
    db $FD                                        ; $4911: $FD
    sbc d                                         ; $4912: $9A
    ld e, b                                       ; $4913: $58
    ld bc, $9B42                                  ; $4914: $01 $42 $9B
    jr jr_014_4980                                ; $4917: $18 $67

    sbc a                                         ; $4919: $9F
    ld c, c                                       ; $491A: $49
    jr nz, @+$76                                  ; $491B: $20 $74

    ld l, b                                       ; $491D: $68
    ld l, c                                       ; $491E: $69
    ld l, [hl]                                    ; $491F: $6E
    ld l, e                                       ; $4920: $6B
    jr nz, jr_014_496C                            ; $4921: $20 $49

    daa                                           ; $4923: $27
    halt                                          ; $4924: $76
    ld h, l                                       ; $4925: $65
    rst $38                                       ; $4926: $FF
    ld l, h                                       ; $4927: $6C
    ld l, a                                       ; $4928: $6F
    ld [hl], e                                    ; $4929: $73
    ld [hl], h                                    ; $492A: $74
    jr nz, jr_014_499A                            ; $492B: $20 $6D

    ld a, c                                       ; $492D: $79
    cp $61                                        ; $492E: $FE $61
    ld [hl], b                                    ; $4930: $70
    ld [hl], b                                    ; $4931: $70
    ld h, l                                       ; $4932: $65
    ld [hl], h                                    ; $4933: $74
    ld l, c                                       ; $4934: $69
    ld [hl], h                                    ; $4935: $74
    ld h, l                                       ; $4936: $65
    ld l, $2E                                     ; $4937: $2E $2E
    ld l, $FE                                     ; $4939: $2E $FE
    db $FD                                        ; $493B: $FD
    sbc d                                         ; $493C: $9A
    ld e, b                                       ; $493D: $58
    ld bc, $9B42                                  ; $493E: $01 $42 $9B
    ret c                                         ; $4941: $D8

    ld b, a                                       ; $4942: $47
    sbc a                                         ; $4943: $9F
    ld c, a                                       ; $4944: $4F
    ld [hl], d                                    ; $4945: $72
    ld [hl], a                                    ; $4946: $77
    ld l, c                                       ; $4947: $69
    ld l, [hl]                                    ; $4948: $6E
    jr nz, jr_014_49AC                            ; $4949: $20 $61

    ld l, h                                       ; $494B: $6C
    ld [hl], a                                    ; $494C: $77
    ld h, c                                       ; $494D: $61
    ld a, c                                       ; $494E: $79
    ld [hl], e                                    ; $494F: $73
    rst $38                                       ; $4950: $FF
    ld l, b                                       ; $4951: $68
    ld h, c                                       ; $4952: $61
    ld h, h                                       ; $4953: $64
    jr nz, jr_014_49CA                            ; $4954: $20 $74

    ld l, b                                       ; $4956: $68
    ld h, l                                       ; $4957: $65
    jr nz, @+$64                                  ; $4958: $20 $62

    ld h, l                                       ; $495A: $65
    ld [hl], e                                    ; $495B: $73
    ld [hl], h                                    ; $495C: $74
    cp $6A                                        ; $495D: $FE $6A
    ld h, l                                       ; $495F: $65
    ld l, h                                       ; $4960: $6C
    ld l, h                                       ; $4961: $6C
    ld a, c                                       ; $4962: $79
    ld h, d                                       ; $4963: $62
    ld h, l                                       ; $4964: $65
    ld h, c                                       ; $4965: $61
    ld l, [hl]                                    ; $4966: $6E
    ld [hl], e                                    ; $4967: $73
    ld l, $2E                                     ; $4968: $2E $2E
    ld l, $FE                                     ; $496A: $2E $FE

jr_014_496C:
    db $FD                                        ; $496C: $FD
    sbc d                                         ; $496D: $9A
    ld e, b                                       ; $496E: $58
    ld bc, $9B42                                  ; $496F: $01 $42 $9B
    ld hl, sp+$7C                                 ; $4972: $F8 $7C
    sbc a                                         ; $4974: $9F
    ld c, a                                       ; $4975: $4F
    ld [hl], d                                    ; $4976: $72
    ld [hl], a                                    ; $4977: $77
    ld l, c                                       ; $4978: $69
    ld l, [hl]                                    ; $4979: $6E
    inc l                                         ; $497A: $2C
    jr nz, @+$4B                                  ; $497B: $20 $49

    daa                                           ; $497D: $27
    ld l, l                                       ; $497E: $6D
    rst $38                                       ; $497F: $FF

jr_014_4980:
    ld h, a                                       ; $4980: $67
    ld l, a                                       ; $4981: $6F
    ld l, [hl]                                    ; $4982: $6E
    ld l, [hl]                                    ; $4983: $6E

jr_014_4984:
    ld h, c                                       ; $4984: $61
    jr nz, jr_014_49EF                            ; $4985: $20 $68

    ld l, a                                       ; $4987: $6F

jr_014_4988:
    ld l, [hl]                                    ; $4988: $6E

jr_014_4989:
    ld l, a                                       ; $4989: $6F
    ld [hl], d                                    ; $498A: $72
    cp $79                                        ; $498B: $FE $79
    ld l, a                                       ; $498D: $6F
    ld [hl], l                                    ; $498E: $75
    ld [hl], d                                    ; $498F: $72
    jr nz, jr_014_49FF                            ; $4990: $20 $6D

    ld h, l                                       ; $4992: $65
    ld l, l                                       ; $4993: $6D
    ld l, a                                       ; $4994: $6F
    ld [hl], d                                    ; $4995: $72
    ld a, c                                       ; $4996: $79
    rst $38                                       ; $4997: $FF
    ld h, [hl]                                    ; $4998: $66
    ld l, a                                       ; $4999: $6F

jr_014_499A:
    ld [hl], d                                    ; $499A: $72
    jr nz, jr_014_4A09                            ; $499B: $20 $6C

    ld l, c                                       ; $499D: $69
    ld h, [hl]                                    ; $499E: $66
    ld h, l                                       ; $499F: $65
    inc l                                         ; $49A0: $2C
    cp $62                                        ; $49A1: $FE $62
    ld [hl], d                                    ; $49A3: $72
    ld l, a                                       ; $49A4: $6F
    ld [hl], h                                    ; $49A5: $74
    ld l, b                                       ; $49A6: $68
    ld h, l                                       ; $49A7: $65
    ld [hl], d                                    ; $49A8: $72
    ld hl, $FDFE                                  ; $49A9: $21 $FE $FD

jr_014_49AC:
    sbc d                                         ; $49AC: $9A
    ld e, b                                       ; $49AD: $58
    db $01                                        ; $49AE: $01
    ld b, d                                       ; $49AF: $42

    db $43, $0F, $04, $05, $19

    inc d                                         ; $49B5: $14
    dec a                                         ; $49B6: $3D
    ld c, d                                       ; $49B7: $4A

    db $43, $0F, $04, $05, $1A

    inc d                                         ; $49BD: $14
    rst $00                                       ; $49BE: $C7
    ld c, c                                       ; $49BF: $49

    db $01, $21, $0D, $45, $2F, $65, $41

    rlca                                          ; $49C7: $07
    nop                                           ; $49C8: $00
    ld l, e                                       ; $49C9: $6B

jr_014_49CA:
    ld c, d                                       ; $49CA: $4A
    add hl, bc                                    ; $49CB: $09
    nop                                           ; $49CC: $00
    jr nz, jr_014_4984                            ; $49CD: $20 $B5

    ld d, b                                       ; $49CF: $50
    ld b, b                                       ; $49D0: $40
    jr nz, @+$0B                                  ; $49D1: $20 $09

    nop                                           ; $49D3: $00
    jr nz, jr_014_4989                            ; $49D4: $20 $B3

    ld c, a                                       ; $49D6: $4F
    ld b, b                                       ; $49D7: $40
    db $10                                        ; $49D8: $10
    add hl, bc                                    ; $49D9: $09
    nop                                           ; $49DA: $00
    jr nz, jr_014_4988                            ; $49DB: $20 $AB

    ld d, b                                       ; $49DD: $50
    sbc e                                         ; $49DE: $9B
    ld a, b                                       ; $49DF: $78
    ld [hl], b                                    ; $49E0: $70
    sbc a                                         ; $49E1: $9F
    ld d, a                                       ; $49E2: $57
    ld h, l                                       ; $49E3: $65
    ld l, h                                       ; $49E4: $6C
    ld l, h                                       ; $49E5: $6C
    inc l                                         ; $49E6: $2C
    jr nz, jr_014_4A5D                            ; $49E7: $20 $74

    ld l, b                                       ; $49E9: $68
    ld l, c                                       ; $49EA: $69
    ld [hl], e                                    ; $49EB: $73
    jr nz, @+$6B                                  ; $49EC: $20 $69

    ld [hl], e                                    ; $49EE: $73

jr_014_49EF:
    rst $38                                       ; $49EF: $FF
    ld l, c                                       ; $49F0: $69
    ld [hl], h                                    ; $49F1: $74
    ld l, $2E                                     ; $49F2: $2E $2E
    ld l, $20                                     ; $49F4: $2E $20
    ld [hl], h                                    ; $49F6: $74

jr_014_49F7:
    ld l, c                                       ; $49F7: $69

jr_014_49F8:
    ld l, l                                       ; $49F8: $6D
    ld h, l                                       ; $49F9: $65
    jr nz, jr_014_4A70                            ; $49FA: $20 $74

    ld l, a                                       ; $49FC: $6F
    cp $67                                        ; $49FD: $FE $67

jr_014_49FF:
    ld l, a                                       ; $49FF: $6F
    jr nz, @+$6A                                  ; $4A00: $20 $68

    ld l, a                                       ; $4A02: $6F
    ld l, l                                       ; $4A03: $6D
    ld h, l                                       ; $4A04: $65
    ld l, $FE                                     ; $4A05: $2E $FE
    db $FD                                        ; $4A07: $FD
    sbc d                                         ; $4A08: $9A

jr_014_4A09:
    sbc a                                         ; $4A09: $9F
    jr nz, jr_014_4A58                            ; $4A0A: $20 $4C

    ld h, l                                       ; $4A0C: $65
    ld h, c                                       ; $4A0D: $61
    halt                                          ; $4A0E: $76
    ld h, l                                       ; $4A0F: $65
    rst $38                                       ; $4A10: $FF
    jr nz, jr_014_4A66                            ; $4A11: $20 $53

    ld [hl], h                                    ; $4A13: $74
    ld h, c                                       ; $4A14: $61
    ld a, c                                       ; $4A15: $79
    jr nz, @+$6E                                  ; $4A16: $20 $6C

    ld l, a                                       ; $4A18: $6F
    ld l, [hl]                                    ; $4A19: $6E
    ld h, a                                       ; $4A1A: $67
    ld h, l                                       ; $4A1B: $65
    ld [hl], d                                    ; $4A1C: $72
    db $FD                                        ; $4A1D: $FD
    sbc h                                         ; $4A1E: $9C
    ld [bc], a                                    ; $4A1F: $02
    inc d                                         ; $4A20: $14
    ld h, $4A                                     ; $4A21: $26 $4A
    inc d                                         ; $4A23: $14
    scf                                           ; $4A24: $37
    ld c, d                                       ; $4A25: $4A
    sbc d                                         ; $4A26: $9A
    add hl, bc                                    ; $4A27: $09
    nop                                           ; $4A28: $00
    jr nz, jr_014_49F8                            ; $4A29: $20 $CD

    ld c, a                                       ; $4A2B: $4F
    ld l, [hl]                                    ; $4A2C: $6E
    rrca                                          ; $4A2D: $0F
    rst $38                                       ; $4A2E: $FF
    ld a, a                                       ; $4A2F: $7F
    halt                                          ; $4A30: $76
    ld h, b                                       ; $4A31: $60
    rrca                                          ; $4A32: $0F
    ld b, l                                       ; $4A33: $45
    inc d                                         ; $4A34: $14
    cp h                                          ; $4A35: $BC
    ld c, d                                       ; $4A36: $4A
    sbc d                                         ; $4A37: $9A
    rlca                                          ; $4A38: $07
    nop                                           ; $4A39: $00
    add c                                         ; $4A3A: $81
    ld e, l                                       ; $4A3B: $5D
    ld b, d                                       ; $4A3C: $42
    rlca                                          ; $4A3D: $07
    nop                                           ; $4A3E: $00
    ld l, e                                       ; $4A3F: $6B
    ld c, d                                       ; $4A40: $4A
    add hl, bc                                    ; $4A41: $09
    nop                                           ; $4A42: $00
    jr nz, jr_014_49F8                            ; $4A43: $20 $B3

    ld c, a                                       ; $4A45: $4F
    ld b, b                                       ; $4A46: $40
    db $10                                        ; $4A47: $10
    add hl, bc                                    ; $4A48: $09
    nop                                           ; $4A49: $00
    jr nz, jr_014_49F7                            ; $4A4A: $20 $AB

    ld d, b                                       ; $4A4C: $50
    sbc e                                         ; $4A4D: $9B
    ld a, b                                       ; $4A4E: $78
    ld [hl], b                                    ; $4A4F: $70
    sbc a                                         ; $4A50: $9F
    ld d, a                                       ; $4A51: $57
    ld h, l                                       ; $4A52: $65
    ld l, h                                       ; $4A53: $6C
    ld l, h                                       ; $4A54: $6C
    inc l                                         ; $4A55: $2C
    jr nz, jr_014_4ACC                            ; $4A56: $20 $74

jr_014_4A58:
    ld l, b                                       ; $4A58: $68
    ld l, c                                       ; $4A59: $69
    ld [hl], e                                    ; $4A5A: $73
    jr nz, jr_014_4AC6                            ; $4A5B: $20 $69

jr_014_4A5D:
    ld [hl], e                                    ; $4A5D: $73
    rst $38                                       ; $4A5E: $FF
    ld l, c                                       ; $4A5F: $69
    ld [hl], h                                    ; $4A60: $74
    ld l, $2E                                     ; $4A61: $2E $2E
    ld l, $20                                     ; $4A63: $2E $20

jr_014_4A65:
    ld [hl], h                                    ; $4A65: $74

jr_014_4A66:
    ld l, c                                       ; $4A66: $69
    ld l, l                                       ; $4A67: $6D
    ld h, l                                       ; $4A68: $65
    jr nz, jr_014_4ADF                            ; $4A69: $20 $74

    ld l, a                                       ; $4A6B: $6F
    cp $6C                                        ; $4A6C: $FE $6C
    ld h, l                                       ; $4A6E: $65
    ld h, c                                       ; $4A6F: $61

jr_014_4A70:
    halt                                          ; $4A70: $76
    ld h, l                                       ; $4A71: $65
    ld l, $FE                                     ; $4A72: $2E $FE
    db $FD                                        ; $4A74: $FD
    sbc d                                         ; $4A75: $9A
    sbc a                                         ; $4A76: $9F
    jr nz, jr_014_4AC5                            ; $4A77: $20 $4C

    ld h, l                                       ; $4A79: $65
    ld h, c                                       ; $4A7A: $61
    halt                                          ; $4A7B: $76
    ld h, l                                       ; $4A7C: $65
    rst $38                                       ; $4A7D: $FF
    jr nz, jr_014_4AD3                            ; $4A7E: $20 $53

    ld [hl], h                                    ; $4A80: $74
    ld h, c                                       ; $4A81: $61
    ld a, c                                       ; $4A82: $79
    jr nz, jr_014_4AF1                            ; $4A83: $20 $6C

    ld l, a                                       ; $4A85: $6F
    ld l, [hl]                                    ; $4A86: $6E
    ld h, a                                       ; $4A87: $67
    ld h, l                                       ; $4A88: $65
    ld [hl], d                                    ; $4A89: $72
    db $FD                                        ; $4A8A: $FD
    sbc h                                         ; $4A8B: $9C
    ld [bc], a                                    ; $4A8C: $02
    inc d                                         ; $4A8D: $14
    sub e                                         ; $4A8E: $93
    ld c, d                                       ; $4A8F: $4A
    inc d                                         ; $4A90: $14
    and h                                         ; $4A91: $A4
    ld c, d                                       ; $4A92: $4A
    sbc d                                         ; $4A93: $9A
    add hl, bc                                    ; $4A94: $09
    nop                                           ; $4A95: $00
    jr nz, jr_014_4A65                            ; $4A96: $20 $CD

    ld c, a                                       ; $4A98: $4F
    ld l, [hl]                                    ; $4A99: $6E
    rrca                                          ; $4A9A: $0F
    rst $38                                       ; $4A9B: $FF
    ld a, a                                       ; $4A9C: $7F
    halt                                          ; $4A9D: $76
    ld h, b                                       ; $4A9E: $60
    rrca                                          ; $4A9F: $0F
    ld b, l                                       ; $4AA0: $45
    ld a, [hl+]                                   ; $4AA1: $2A
    ld d, a                                       ; $4AA2: $57
    ld e, [hl]                                    ; $4AA3: $5E
    sbc d                                         ; $4AA4: $9A
    rlca                                          ; $4AA5: $07
    nop                                           ; $4AA6: $00
    add c                                         ; $4AA7: $81
    ld e, l                                       ; $4AA8: $5D
    ld b, d                                       ; $4AA9: $42
    ld [bc], a                                    ; $4AAA: $02
    rrca                                          ; $4AAB: $0F
    nop                                           ; $4AAC: $00
    ld a, [bc]                                    ; $4AAD: $0A
    inc c                                         ; $4AAE: $0C
    ld b, l                                       ; $4AAF: $45
    inc de                                        ; $4AB0: $13
    push de                                       ; $4AB1: $D5
    ld d, e                                       ; $4AB2: $53
    ld [bc], a                                    ; $4AB3: $02
    ld b, $03                                     ; $4AB4: $06 $03
    nop                                           ; $4AB6: $00
    dec sp                                        ; $4AB7: $3B
    ld b, l                                       ; $4AB8: $45
    ld d, $8C                                     ; $4AB9: $16 $8C
    ld c, h                                       ; $4ABB: $4C
    ld b, e                                       ; $4ABC: $43
    ld a, [bc]                                    ; $4ABD: $0A
    nop                                           ; $4ABE: $00
    dec h                                         ; $4ABF: $25
    and c                                         ; $4AC0: $A1
    ld bc, $5014                                  ; $4AC1: $01 $14 $50
    ld c, e                                       ; $4AC4: $4B

jr_014_4AC5:
    ld b, e                                       ; $4AC5: $43

jr_014_4AC6:
    ld a, [bc]                                    ; $4AC6: $0A
    nop                                           ; $4AC7: $00
    dec h                                         ; $4AC8: $25
    and c                                         ; $4AC9: $A1
    ld [bc], a                                    ; $4ACA: $02
    inc d                                         ; $4ACB: $14

jr_014_4ACC:
    ld d, b                                       ; $4ACC: $50
    ld c, e                                       ; $4ACD: $4B
    ld b, e                                       ; $4ACE: $43
    ld a, [bc]                                    ; $4ACF: $0A
    nop                                           ; $4AD0: $00
    dec h                                         ; $4AD1: $25
    and c                                         ; $4AD2: $A1

jr_014_4AD3:
    inc b                                         ; $4AD3: $04
    inc d                                         ; $4AD4: $14
    ld d, b                                       ; $4AD5: $50
    ld c, e                                       ; $4AD6: $4B
    ld b, e                                       ; $4AD7: $43
    ld a, [bc]                                    ; $4AD8: $0A
    nop                                           ; $4AD9: $00
    dec h                                         ; $4ADA: $25
    and c                                         ; $4ADB: $A1
    ld [$5014], sp                                ; $4ADC: $08 $14 $50

jr_014_4ADF:
    ld c, e                                       ; $4ADF: $4B
    ld b, e                                       ; $4AE0: $43
    ld a, [bc]                                    ; $4AE1: $0A
    nop                                           ; $4AE2: $00
    dec h                                         ; $4AE3: $25
    and c                                         ; $4AE4: $A1
    db $10                                        ; $4AE5: $10
    inc d                                         ; $4AE6: $14
    ld d, b                                       ; $4AE7: $50
    ld c, e                                       ; $4AE8: $4B
    ld b, e                                       ; $4AE9: $43
    ld a, [bc]                                    ; $4AEA: $0A
    nop                                           ; $4AEB: $00
    dec h                                         ; $4AEC: $25
    and c                                         ; $4AED: $A1
    jr nz, jr_014_4B04                            ; $4AEE: $20 $14

jr_014_4AF0:
    ld d, b                                       ; $4AF0: $50

jr_014_4AF1:
    ld c, e                                       ; $4AF1: $4B
    ld b, e                                       ; $4AF2: $43
    ld a, [bc]                                    ; $4AF3: $0A
    nop                                           ; $4AF4: $00
    dec h                                         ; $4AF5: $25
    and c                                         ; $4AF6: $A1
    ld b, b                                       ; $4AF7: $40
    inc d                                         ; $4AF8: $14
    ld d, b                                       ; $4AF9: $50
    ld c, e                                       ; $4AFA: $4B
    ld b, e                                       ; $4AFB: $43
    ld a, [bc]                                    ; $4AFC: $0A
    nop                                           ; $4AFD: $00
    dec h                                         ; $4AFE: $25
    and c                                         ; $4AFF: $A1
    add b                                         ; $4B00: $80
    inc d                                         ; $4B01: $14
    ld d, b                                       ; $4B02: $50
    ld c, e                                       ; $4B03: $4B

jr_014_4B04:
    ld b, e                                       ; $4B04: $43
    ld a, [bc]                                    ; $4B05: $0A
    nop                                           ; $4B06: $00
    ld h, $A1                                     ; $4B07: $26 $A1
    ld bc, $5014                                  ; $4B09: $01 $14 $50
    ld c, e                                       ; $4B0C: $4B
    ld b, e                                       ; $4B0D: $43
    ld a, [bc]                                    ; $4B0E: $0A
    nop                                           ; $4B0F: $00
    ld h, $A1                                     ; $4B10: $26 $A1
    ld [bc], a                                    ; $4B12: $02
    inc d                                         ; $4B13: $14
    ld d, b                                       ; $4B14: $50
    ld c, e                                       ; $4B15: $4B
    ld b, e                                       ; $4B16: $43
    ld a, [bc]                                    ; $4B17: $0A
    nop                                           ; $4B18: $00
    ld h, $A1                                     ; $4B19: $26 $A1
    inc b                                         ; $4B1B: $04
    inc d                                         ; $4B1C: $14
    ld d, b                                       ; $4B1D: $50
    ld c, e                                       ; $4B1E: $4B
    ld b, e                                       ; $4B1F: $43
    ld a, [bc]                                    ; $4B20: $0A
    nop                                           ; $4B21: $00
    ld h, $A1                                     ; $4B22: $26 $A1
    ld [$5014], sp                                ; $4B24: $08 $14 $50
    ld c, e                                       ; $4B27: $4B
    ld b, e                                       ; $4B28: $43
    ld a, [bc]                                    ; $4B29: $0A
    nop                                           ; $4B2A: $00
    ld h, $A1                                     ; $4B2B: $26 $A1
    db $10                                        ; $4B2D: $10
    inc d                                         ; $4B2E: $14
    ld d, b                                       ; $4B2F: $50
    ld c, e                                       ; $4B30: $4B
    ld b, e                                       ; $4B31: $43
    ld a, [bc]                                    ; $4B32: $0A
    nop                                           ; $4B33: $00
    ld h, $A1                                     ; $4B34: $26 $A1
    jr nz, jr_014_4B4C                            ; $4B36: $20 $14

    ld d, b                                       ; $4B38: $50
    ld c, e                                       ; $4B39: $4B
    ld b, e                                       ; $4B3A: $43
    ld a, [bc]                                    ; $4B3B: $0A
    nop                                           ; $4B3C: $00
    ld h, $A1                                     ; $4B3D: $26 $A1
    ld b, b                                       ; $4B3F: $40
    inc d                                         ; $4B40: $14
    ld d, b                                       ; $4B41: $50
    ld c, e                                       ; $4B42: $4B
    ld b, e                                       ; $4B43: $43
    ld a, [bc]                                    ; $4B44: $0A
    nop                                           ; $4B45: $00
    ld h, $A1                                     ; $4B46: $26 $A1
    add b                                         ; $4B48: $80
    inc d                                         ; $4B49: $14
    ld d, b                                       ; $4B4A: $50
    ld c, e                                       ; $4B4B: $4B

jr_014_4B4C:
    xor a                                         ; $4B4C: $AF
    jr z, jr_014_4AF0                             ; $4B4D: $28 $A1

    ld bc, $1645                                  ; $4B4F: $01 $45 $16
    db $EB                                        ; $4B52: $EB
    ld e, [hl]                                    ; $4B53: $5E
    sbc e                                         ; $4B54: $9B
    ld a, b                                       ; $4B55: $78
    ld [hl], b                                    ; $4B56: $70
    sbc a                                         ; $4B57: $9F
    ld d, a                                       ; $4B58: $57
    ld l, b                                       ; $4B59: $68
    ld l, a                                       ; $4B5A: $6F
    ld h, c                                       ; $4B5B: $61
    ld hl, $44FF                                  ; $4B5C: $21 $FF $44
    ld h, l                                       ; $4B5F: $65
    ld l, d                                       ; $4B60: $6A
    ld h, c                                       ; $4B61: $61
    jr nz, @+$78                                  ; $4B62: $20 $76

    ld [hl], l                                    ; $4B64: $75
    ld hl, $FDFE                                  ; $4B65: $21 $FE $FD
    sbc d                                         ; $4B68: $9A
    ld e, h                                       ; $4B69: $5C
    inc bc                                        ; $4B6A: $03
    ld [bc], a                                    ; $4B6B: $02
    ld b, d                                       ; $4B6C: $42
    sbc e                                         ; $4B6D: $9B
    ld c, b                                       ; $4B6E: $48
    ld b, [hl]                                    ; $4B6F: $46
    sbc a                                         ; $4B70: $9F
    ld c, b                                       ; $4B71: $48
    ld h, l                                       ; $4B72: $65
    ld a, c                                       ; $4B73: $79
    ld hl, $4920                                  ; $4B74: $21 $20 $49
    ld [hl], h                                    ; $4B77: $74
    daa                                           ; $4B78: $27
    ld [hl], e                                    ; $4B79: $73
    rst $38                                       ; $4B7A: $FF
    ld b, l                                       ; $4B7B: $45
    ld l, c                                       ; $4B7C: $69
    ld h, h                                       ; $4B7D: $64
    ld l, a                                       ; $4B7E: $6F
    ld l, [hl]                                    ; $4B7F: $6E
    ld hl, $4C20                                  ; $4B80: $21 $20 $4C
    ld l, a                                       ; $4B83: $6F
    ld [hl], a                                    ; $4B84: $77
    ld h, l                                       ; $4B85: $65
    ld [hl], d                                    ; $4B86: $72
    cp $74                                        ; $4B87: $FE $74
    ld l, b                                       ; $4B89: $68
    ld h, l                                       ; $4B8A: $65
    jr nz, @+$75                                  ; $4B8B: $20 $73

    ld [hl], h                                    ; $4B8D: $74
    ld h, c                                       ; $4B8E: $61
    ld l, c                                       ; $4B8F: $69
    ld [hl], d                                    ; $4B90: $72
    ld [hl], e                                    ; $4B91: $73
    ld hl, $FDFE                                  ; $4B92: $21 $FE $FD
    sbc d                                         ; $4B95: $9A
    ld e, h                                       ; $4B96: $5C
    nop                                           ; $4B97: $00
    ld [bc], a                                    ; $4B98: $02
    ld b, d                                       ; $4B99: $42
    sbc e                                         ; $4B9A: $9B
    ld c, b                                       ; $4B9B: $48
    ld b, [hl]                                    ; $4B9C: $46
    sbc a                                         ; $4B9D: $9F
    ld b, e                                       ; $4B9E: $43
    ld l, a                                       ; $4B9F: $6F
    ld l, l                                       ; $4BA0: $6D
    ld h, l                                       ; $4BA1: $65
    inc l                                         ; $4BA2: $2C
    jr nz, @+$56                                  ; $4BA3: $20 $54

    ld l, a                                       ; $4BA5: $6F
    ld l, [hl]                                    ; $4BA6: $6E
    ld a, c                                       ; $4BA7: $79
    ld l, $FE                                     ; $4BA8: $2E $FE
    db $FD                                        ; $4BAA: $FD
    sbc d                                         ; $4BAB: $9A
    ld e, h                                       ; $4BAC: $5C
    ld [bc], a                                    ; $4BAD: $02
    inc bc                                        ; $4BAE: $03
    ld b, d                                       ; $4BAF: $42

    db $9B, $48, $46, $9F, $48, $65, $79, $21, $20, $49, $74, $27, $73, $FF, $45, $69
    db $64, $6F, $6E, $21, $20, $4C, $6F, $77, $65, $72, $FE, $74, $68, $65, $20, $73
    db $74, $61, $69, $72, $73, $21, $FE, $FD, $9A, $58, $01, $42, $9B, $48, $46, $9F
    db $43, $6F, $6D, $65, $2C, $20, $54, $6F, $6E, $79, $2E, $FE, $FD, $9A, $58, $02
    db $42, $9B, $E8, $55, $9F, $54, $68, $61, $74, $27, $73, $20, $74, $68, $65, $FF
    db $65, $6E, $74, $72, $61, $6E, $63, $65, $20, $74, $6F, $FE, $56, $61, $73, $68
    db $20, $4E, $61, $72, $6F, $6F, $6D, $21, $FE, $FD, $9A, $58, $02, $42, $9B, $A9
    db $4F, $9F, $4B, $6F, $72, $67, $2C, $20, $74, $68, $69, $73, $20, $69, $73, $FF
    db $74, $68, $65, $20, $70, $65, $72, $66, $65, $63, $74, $FE, $63, $68, $61, $6E
    db $63, $65, $20, $66, $6F, $72, $20, $75, $73, $FF, $74, $6F, $20, $67, $65, $74
    db $20, $69, $6E, $20, $74, $68, $65, $72, $65, $FE, $61, $6E, $64, $20, $63, $61
    db $75, $73, $65, $20, $73, $6F, $6D, $65, $FF, $64, $69, $73, $61, $72, $72, $61
    db $79, $2E, $FE, $FD, $9A, $58, $03, $42, $9B, $E8, $55, $9F, $53, $68, $61, $64
    db $64, $75, $70, $2C, $20, $5A, $65, $74, $21, $FF, $49, $27, $6D, $20, $69, $6E
    db $20, $63, $68, $61, $72, $67, $65, $2C, $FE, $61, $6E, $64, $20, $49, $20, $73
    db $61, $79, $20, $77, $65, $20, $67, $6F, $FF, $69, $6E, $20, $61, $6E, $64, $20
    db $63, $61, $75, $73, $65, $FE, $64, $69, $2E, $2E, $2E, $FE, $64, $69, $73, $2E
    db $2E, $2E, $72, $61, $79, $21, $FE, $FD, $9B, $A9, $4F, $9F, $2E, $2E, $2E, $2E
    db $2E, $2E, $2E, $2E, $2E, $FE, $FD, $9A, $58, $04, $42, $9B, $A9, $4F, $9F, $48
    db $75, $72, $72, $79, $2C, $20, $6F, $72, $20, $74, $68, $65, $FF, $73, $74, $61
    db $69, $72, $73, $20, $77, $69, $6C, $6C, $2E, $2E, $2E, $FE, $FD, $9A, $58, $06
    db $42, $9B, $E8, $55, $9F, $4E, $6F, $21, $20, $57, $65, $20, $6D, $75, $73, $74
    db $20, $6E, $6F, $74, $FF, $62, $65, $20, $73, $65, $65, $6E, $21, $FE, $FD, $9A
    db $58, $07, $42, $9B, $A9, $4F, $9F, $52, $55, $4E, $21, $21, $FE, $FD, $9A, $58
    db $09, $42, $9B, $E8, $55, $9F, $53, $68, $61, $64, $64, $75, $70, $20, $5A, $65
    db $74, $2C, $FF, $49, $27, $6D, $20, $69, $6E, $20, $63, $68, $61, $72, $2E, $2E
    db $2E, $FE, $FD, $9A, $58, $0A, $42, $9B, $A9, $4F, $9F, $2E, $2E, $2E, $2E, $2E
    db $2E, $2E, $2E, $2E, $2E, $2E, $2E, $FE, $FD, $9A, $58, $0C, $42, $9B, $88, $65
    db $9F, $45, $69, $64, $6F, $6E, $21, $20, $57, $68, $61, $74, $20, $69, $6E, $FF
    db $62, $6C, $61, $7A, $65, $73, $20, $69, $73, $20, $67, $6F, $69, $6E, $67, $FE
    db $6F, $6E, $3F, $21, $FE, $FD, $9B, $48, $46, $9F, $57, $68, $61, $74, $20, $61
    db $72, $65, $20, $79, $6F, $75, $FF, $61, $73, $6B, $69, $6E, $67, $20, $6D, $65
    db $20, $66, $6F, $72, $3F, $21, $FE, $49, $20, $64, $6F, $6E, $27, $74, $20, $6B
    db $6E, $6F, $77, $21, $FE, $FD, $9B, $88, $65, $9F, $41, $6E, $64, $20, $79, $6F
    db $75, $20, $68, $61, $76, $65, $FF, $74, $68, $65, $20, $62, $6F, $79, $20, $77
    db $69, $74, $68, $FE, $79, $6F, $75, $21, $20, $59, $6F, $75, $20, $46, $4F, $4F
    db $4C, $21, $FE, $FD, $9A, $58, $0D, $42, $9B, $88, $65, $9F, $49, $74, $27, $73
    db $20, $63, $6F, $6D, $69, $6E, $67, $FF, $66, $72, $6F, $6D, $20, $74, $68, $65
    db $FE, $67, $6C, $61, $64, $65, $21, $20, $49, $20, $77, $69, $6C, $6C, $FF, $64
    db $65, $61, $6C, $20, $77, $69, $74, $68, $20, $79, $6F, $75, $FE, $6C, $61, $74
    db $65, $72, $2E, $FE, $FD, $9A, $58, $0E, $42, $9B, $88, $4C, $9F, $45, $69, $64
    db $6F, $6E, $2C, $20, $77, $68, $61, $74, $27, $73, $FF, $67, $6F, $69, $6E, $67
    db $20, $6F, $6E, $3F, $FE, $FD, $9B, $D8, $60, $9F, $49, $20, $77, $61, $73, $20
    db $65, $61, $74, $69, $6E, $67, $FF, $6C, $75, $6E, $63, $68, $20, $61, $6E, $64
    db $FE, $74, $68, $61, $74, $20, $71, $75, $61, $6B, $65, $20, $6D, $61, $64, $65
    db $FF, $6D, $65, $20, $66, $61, $6C, $6C, $20, $72, $69, $67, $68, $74, $FE, $6F
    db $66, $66, $20, $6D, $79, $20, $63, $68, $61, $69, $72, $21, $FE, $FD, $9B, $19
    db $4E, $9F, $41, $6E, $64, $20, $49, $20, $6A, $75, $73, $74, $20, $73, $61, $77
    db $FF, $4F, $72, $77, $69, $6E, $20, $72, $75, $6E, $6E, $69, $6E, $67, $FE, $74
    db $68, $72, $6F, $75, $67, $68, $20, $74, $6F, $77, $6E, $FF, $6C, $69, $6B, $65
    db $20, $61, $20, $6D, $61, $64, $6D, $61, $6E, $21, $FE, $57, $68, $65, $72, $65
    db $27, $73, $20, $68, $65, $FF, $67, $6F, $69, $6E, $67, $20, $69, $6E, $20, $73
    db $75, $63, $68, $20, $61, $FE, $68, $75, $72, $72, $79, $3F, $FE, $FD, $9B, $48
    db $46, $9F, $54, $68, $69, $73, $20, $69, $73, $6E, $27, $74, $FF, $67, $6F, $6F
    db $64, $2E, $20, $4C, $65, $74, $27, $73, $20, $67, $6F, $FE, $73, $65, $65, $20
    db $77, $68, $61, $74, $27, $73, $FF, $67, $6F, $69, $6E, $67, $20, $6F, $6E, $2E
    db $FE, $FD, $9A, $58, $0F, $42

    sbc a                                         ; $4F36: $9F
    ld e, c                                       ; $4F37: $59
    ld l, a                                       ; $4F38: $6F
    ld [hl], l                                    ; $4F39: $75
    jr nz, jr_014_4F9F                            ; $4F3A: $20 $63

    ld h, c                                       ; $4F3C: $61
    ld l, [hl]                                    ; $4F3D: $6E
    jr nz, jr_014_4FA7                            ; $4F3E: $20 $67

    ld l, a                                       ; $4F40: $6F
    rst $38                                       ; $4F41: $FF
    ld l, a                                       ; $4F42: $6F
    ld l, [hl]                                    ; $4F43: $6E
    jr nz, jr_014_4FA7                            ; $4F44: $20 $61

    ld l, b                                       ; $4F46: $68
    ld h, l                                       ; $4F47: $65
    ld h, c                                       ; $4F48: $61
    ld h, h                                       ; $4F49: $64
    ld l, $FE                                     ; $4F4A: $2E $FE
    db $FD                                        ; $4F4C: $FD
    sbc d                                         ; $4F4D: $9A
    ld e, b                                       ; $4F4E: $58
    ld bc, $9B42                                  ; $4F4F: $01 $42 $9B
    xor b                                         ; $4F52: $A8
    ld l, b                                       ; $4F53: $68
    sbc a                                         ; $4F54: $9F
    ld c, c                                       ; $4F55: $49
    daa                                           ; $4F56: $27
    ld l, l                                       ; $4F57: $6D
    jr nz, jr_014_4FC1                            ; $4F58: $20 $67

    ld l, h                                       ; $4F5A: $6C
    ld h, c                                       ; $4F5B: $61
    ld h, h                                       ; $4F5C: $64
    jr nz, @+$76                                  ; $4F5D: $20 $74

    ld l, a                                       ; $4F5F: $6F
    jr nz, jr_014_4FD5                            ; $4F60: $20 $73

    ld h, l                                       ; $4F62: $65
    ld h, l                                       ; $4F63: $65
    rst $38                                       ; $4F64: $FF
    ld a, c                                       ; $4F65: $79
    ld l, a                                       ; $4F66: $6F
    ld [hl], l                                    ; $4F67: $75
    inc l                                         ; $4F68: $2C
    jr nz, jr_014_4FCD                            ; $4F69: $20 $62

    ld [hl], l                                    ; $4F6B: $75
    ld [hl], h                                    ; $4F6C: $74
    ld l, $2E                                     ; $4F6D: $2E $2E
    ld l, $2E                                     ; $4F6F: $2E $2E
    ld l, $FE                                     ; $4F71: $2E $FE
    db $FD                                        ; $4F73: $FD
    sbc d                                         ; $4F74: $9A
    ld e, b                                       ; $4F75: $58
    ld bc, $9B42                                  ; $4F76: $01 $42 $9B
    jr jr_014_4FE2                                ; $4F79: $18 $67

    sbc a                                         ; $4F7B: $9F
    ld c, a                                       ; $4F7C: $4F
    ld [hl], d                                    ; $4F7D: $72
    ld [hl], a                                    ; $4F7E: $77
    ld l, c                                       ; $4F7F: $69
    ld l, [hl]                                    ; $4F80: $6E
    ld l, $2E                                     ; $4F81: $2E $2E
    ld l, $2E                                     ; $4F83: $2E $2E
    ld l, $FE                                     ; $4F85: $2E $FE
    db $FD                                        ; $4F87: $FD
    sbc d                                         ; $4F88: $9A
    ld e, b                                       ; $4F89: $58
    ld bc, $9B42                                  ; $4F8A: $01 $42 $9B
    ld c, b                                       ; $4F8D: $48
    ld a, b                                       ; $4F8E: $78
    sbc a                                         ; $4F8F: $9F
    ld c, c                                       ; $4F90: $49
    ld [hl], h                                    ; $4F91: $74
    daa                                           ; $4F92: $27
    ld [hl], e                                    ; $4F93: $73
    jr nz, jr_014_500A                            ; $4F94: $20 $74

    ld l, a                                       ; $4F96: $6F
    ld l, a                                       ; $4F97: $6F
    jr nz, jr_014_4FFC                            ; $4F98: $20 $62

    ld h, c                                       ; $4F9A: $61
    ld h, h                                       ; $4F9B: $64
    jr nz, jr_014_5015                            ; $4F9C: $20 $77

    ld h, l                                       ; $4F9E: $65

jr_014_4F9F:
    rst $38                                       ; $4F9F: $FF
    ld h, e                                       ; $4FA0: $63
    ld l, a                                       ; $4FA1: $6F
    ld [hl], l                                    ; $4FA2: $75
    ld l, h                                       ; $4FA3: $6C
    ld h, h                                       ; $4FA4: $64
    ld l, [hl]                                    ; $4FA5: $6E
    daa                                           ; $4FA6: $27

jr_014_4FA7:
    ld [hl], h                                    ; $4FA7: $74
    jr nz, @+$6F                                  ; $4FA8: $20 $6D

    ld h, l                                       ; $4FAA: $65
    ld h, l                                       ; $4FAB: $65
    ld [hl], h                                    ; $4FAC: $74
    cp $6C                                        ; $4FAD: $FE $6C
    ld l, c                                       ; $4FAF: $69
    ld l, e                                       ; $4FB0: $6B
    ld h, l                                       ; $4FB1: $65
    jr nz, jr_014_5028                            ; $4FB2: $20 $74

    ld l, b                                       ; $4FB4: $68
    ld l, c                                       ; $4FB5: $69
    ld [hl], e                                    ; $4FB6: $73
    jr nz, jr_014_502E                            ; $4FB7: $20 $75

    ld l, [hl]                                    ; $4FB9: $6E
    ld h, h                                       ; $4FBA: $64
    ld h, l                                       ; $4FBB: $65
    ld [hl], d                                    ; $4FBC: $72
    rst $38                                       ; $4FBD: $FF
    ld h, d                                       ; $4FBE: $62
    ld h, l                                       ; $4FBF: $65
    ld [hl], h                                    ; $4FC0: $74

jr_014_4FC1:
    ld [hl], h                                    ; $4FC1: $74
    ld h, l                                       ; $4FC2: $65
    ld [hl], d                                    ; $4FC3: $72
    cp $63                                        ; $4FC4: $FE $63
    ld l, c                                       ; $4FC6: $69
    ld [hl], d                                    ; $4FC7: $72
    ld h, e                                       ; $4FC8: $63
    ld [hl], l                                    ; $4FC9: $75
    ld l, l                                       ; $4FCA: $6D
    ld [hl], e                                    ; $4FCB: $73
    ld [hl], h                                    ; $4FCC: $74

jr_014_4FCD:
    ld h, c                                       ; $4FCD: $61
    ld l, [hl]                                    ; $4FCE: $6E
    ld h, e                                       ; $4FCF: $63
    ld h, l                                       ; $4FD0: $65
    ld [hl], e                                    ; $4FD1: $73
    ld l, $FE                                     ; $4FD2: $2E $FE
    db $FD                                        ; $4FD4: $FD

jr_014_4FD5:
    sbc d                                         ; $4FD5: $9A
    ld e, b                                       ; $4FD6: $58
    ld bc, $9B42                                  ; $4FD7: $01 $42 $9B
    ld [$9F72], sp                                ; $4FDA: $08 $72 $9F
    ld d, a                                       ; $4FDD: $57
    ld l, b                                       ; $4FDE: $68
    ld a, c                                       ; $4FDF: $79
    jr nz, jr_014_5046                            ; $4FE0: $20 $64

jr_014_4FE2:
    ld l, c                                       ; $4FE2: $69
    ld h, h                                       ; $4FE3: $64
    jr nz, jr_014_505A                            ; $4FE4: $20 $74

    ld l, b                                       ; $4FE6: $68
    ld l, c                                       ; $4FE7: $69
    ld [hl], e                                    ; $4FE8: $73
    rst $38                                       ; $4FE9: $FF
    ld l, b                                       ; $4FEA: $68
    ld h, c                                       ; $4FEB: $61
    halt                                          ; $4FEC: $76
    ld h, l                                       ; $4FED: $65
    jr nz, @+$76                                  ; $4FEE: $20 $74

    ld l, a                                       ; $4FF0: $6F
    jr nz, @+$6A                                  ; $4FF1: $20 $68

    ld h, c                                       ; $4FF3: $61
    ld [hl], b                                    ; $4FF4: $70
    ld [hl], b                                    ; $4FF5: $70
    ld h, l                                       ; $4FF6: $65
    ld l, [hl]                                    ; $4FF7: $6E
    ccf                                           ; $4FF8: $3F
    cp $FD                                        ; $4FF9: $FE $FD
    sbc d                                         ; $4FFB: $9A

jr_014_4FFC:
    ld e, b                                       ; $4FFC: $58
    ld bc, $9B42                                  ; $4FFD: $01 $42 $9B
    xor b                                         ; $5000: $A8
    ld l, b                                       ; $5001: $68
    sbc a                                         ; $5002: $9F
    ld e, c                                       ; $5003: $59
    ld l, a                                       ; $5004: $6F
    ld [hl], l                                    ; $5005: $75
    jr nz, jr_014_506B                            ; $5006: $20 $63

    ld h, c                                       ; $5008: $61
    ld l, l                                       ; $5009: $6D

jr_014_500A:
    ld h, l                                       ; $500A: $65
    jr nz, jr_014_506F                            ; $500B: $20 $62

    ld h, c                                       ; $500D: $61
    ld h, e                                       ; $500E: $63
    ld l, e                                       ; $500F: $6B
    rst $38                                       ; $5010: $FF
    ld h, c                                       ; $5011: $61
    ld h, [hl]                                    ; $5012: $66
    ld [hl], h                                    ; $5013: $74
    ld h, l                                       ; $5014: $65

jr_014_5015:
    ld [hl], d                                    ; $5015: $72
    jr nz, jr_014_5079                            ; $5016: $20 $61

    ld l, h                                       ; $5018: $6C
    ld l, h                                       ; $5019: $6C
    ld hl, $FDFE                                  ; $501A: $21 $FE $FD
    sbc d                                         ; $501D: $9A
    sbc e                                         ; $501E: $9B
    ld a, b                                       ; $501F: $78
    ld [hl], b                                    ; $5020: $70
    sbc a                                         ; $5021: $9F
    ld c, d                                       ; $5022: $4A
    ld [hl], l                                    ; $5023: $75
    ld [hl], e                                    ; $5024: $73
    ld [hl], h                                    ; $5025: $74
    jr nz, jr_014_509C                            ; $5026: $20 $74

jr_014_5028:
    ld l, a                                       ; $5028: $6F
    jr nz, jr_014_509E                            ; $5029: $20 $73

    ld h, c                                       ; $502B: $61
    ld a, c                                       ; $502C: $79
    rst $38                                       ; $502D: $FF

jr_014_502E:
    ld h, a                                       ; $502E: $67
    ld l, a                                       ; $502F: $6F
    ld l, a                                       ; $5030: $6F
    ld h, h                                       ; $5031: $64
    ld h, d                                       ; $5032: $62
    ld a, c                                       ; $5033: $79
    ld h, l                                       ; $5034: $65
    ld l, $FE                                     ; $5035: $2E $FE
    db $FD                                        ; $5037: $FD
    sbc d                                         ; $5038: $9A
    ld e, b                                       ; $5039: $58
    ld bc, $9B42                                  ; $503A: $01 $42 $9B
    ld c, b                                       ; $503D: $48
    ld a, b                                       ; $503E: $78
    sbc a                                         ; $503F: $9F
    ld d, l                                       ; $5040: $55
    ld l, [hl]                                    ; $5041: $6E
    ld h, [hl]                                    ; $5042: $66
    ld l, a                                       ; $5043: $6F
    ld [hl], d                                    ; $5044: $72
    ld [hl], h                                    ; $5045: $74

jr_014_5046:
    ld [hl], l                                    ; $5046: $75
    ld l, [hl]                                    ; $5047: $6E
    ld h, c                                       ; $5048: $61
    ld [hl], h                                    ; $5049: $74
    ld h, l                                       ; $504A: $65
    ld l, h                                       ; $504B: $6C
    ld a, c                                       ; $504C: $79
    inc l                                         ; $504D: $2C
    rst $38                                       ; $504E: $FF
    ld a, c                                       ; $504F: $79
    ld l, a                                       ; $5050: $6F
    ld [hl], l                                    ; $5051: $75
    daa                                           ; $5052: $27
    halt                                          ; $5053: $76
    ld h, l                                       ; $5054: $65
    jr nz, @+$65                                  ; $5055: $20 $63

    ld l, a                                       ; $5057: $6F
    ld l, l                                       ; $5058: $6D
    ld h, l                                       ; $5059: $65

jr_014_505A:
    jr nz, @+$63                                  ; $505A: $20 $61

    ld [hl], h                                    ; $505C: $74
    cp $61                                        ; $505D: $FE $61
    jr nz, @+$64                                  ; $505F: $20 $62

    ld h, c                                       ; $5061: $61
    ld h, h                                       ; $5062: $64
    jr nz, jr_014_50D9                            ; $5063: $20 $74

    ld l, c                                       ; $5065: $69
    ld l, l                                       ; $5066: $6D
    ld h, l                                       ; $5067: $65
    ld l, $FE                                     ; $5068: $2E $FE
    db $FD                                        ; $506A: $FD

jr_014_506B:
    sbc d                                         ; $506B: $9A
    sbc e                                         ; $506C: $9B
    ld a, b                                       ; $506D: $78
    ld [hl], b                                    ; $506E: $70

jr_014_506F:
    sbc a                                         ; $506F: $9F
    ld d, a                                       ; $5070: $57
    ld l, b                                       ; $5071: $68
    ld a, c                                       ; $5072: $79
    ccf                                           ; $5073: $3F
    cp $FD                                        ; $5074: $FE $FD
    sbc d                                         ; $5076: $9A
    ld e, b                                       ; $5077: $58
    ld [bc], a                                    ; $5078: $02

jr_014_5079:
    ld b, d                                       ; $5079: $42
    sbc a                                         ; $507A: $9F
    ld c, c                                       ; $507B: $49
    ld [hl], h                                    ; $507C: $74
    daa                                           ; $507D: $27
    ld [hl], e                                    ; $507E: $73
    jr nz, jr_014_50D0                            ; $507F: $20 $4F

    ld [hl], d                                    ; $5081: $72
    ld [hl], a                                    ; $5082: $77
    ld l, c                                       ; $5083: $69
    ld l, [hl]                                    ; $5084: $6E
    ld l, $2E                                     ; $5085: $2E $2E
    ld l, $2E                                     ; $5087: $2E $2E
    cp $FD                                        ; $5089: $FE $FD
    sbc d                                         ; $508B: $9A
    ld e, b                                       ; $508C: $58
    inc bc                                        ; $508D: $03
    ld b, d                                       ; $508E: $42
    sbc a                                         ; $508F: $9F
    ld c, c                                       ; $5090: $49
    jr nz, jr_014_5107                            ; $5091: $20 $74

    ld l, b                                       ; $5093: $68
    ld l, c                                       ; $5094: $69
    ld l, [hl]                                    ; $5095: $6E
    ld l, e                                       ; $5096: $6B
    jr nz, @+$4B                                  ; $5097: $20 $49

    daa                                           ; $5099: $27
    halt                                          ; $509A: $76
    ld h, l                                       ; $509B: $65

jr_014_509C:
    rst $38                                       ; $509C: $FF
    ld l, h                                       ; $509D: $6C

jr_014_509E:
    ld l, a                                       ; $509E: $6F
    ld [hl], e                                    ; $509F: $73
    ld [hl], h                                    ; $50A0: $74
    jr nz, jr_014_5110                            ; $50A1: $20 $6D

    ld a, c                                       ; $50A3: $79
    cp $61                                        ; $50A4: $FE $61
    ld [hl], b                                    ; $50A6: $70
    ld [hl], b                                    ; $50A7: $70
    ld h, l                                       ; $50A8: $65
    ld [hl], h                                    ; $50A9: $74
    ld l, c                                       ; $50AA: $69
    ld [hl], h                                    ; $50AB: $74
    ld h, l                                       ; $50AC: $65
    cp $FD                                        ; $50AD: $FE $FD
    sbc d                                         ; $50AF: $9A
    ld e, b                                       ; $50B0: $58
    inc b                                         ; $50B1: $04
    ld b, d                                       ; $50B2: $42
    ld bc, $0607                                  ; $50B3: $01 $07 $06

    db $AC, $B2, $A2, $01, $43, $08, $0F, $04, $05, $03, $0A, $00, $25, $A1, $01, $14
    db $8E, $53

    ld c, e                                       ; $50C8: $4B
    inc b                                         ; $50C9: $04
    inc d                                         ; $50CA: $14
    ld bc, $2C00                                  ; $50CB: $01 $00 $2C
    ld d, c                                       ; $50CE: $51
    inc d                                         ; $50CF: $14

jr_014_50D0:
    add hl, de                                    ; $50D0: $19
    nop                                           ; $50D1: $00
    push bc                                       ; $50D2: $C5
    ld d, [hl]                                    ; $50D3: $56
    inc d                                         ; $50D4: $14
    ld a, [de]                                    ; $50D5: $1A
    nop                                           ; $50D6: $00
    ld c, b                                       ; $50D7: $48
    ld e, c                                       ; $50D8: $59

jr_014_50D9:
    rst $38                                       ; $50D9: $FF
    ld b, [hl]                                    ; $50DA: $46
    ld hl, sp+$50                                 ; $50DB: $F8 $50

    db $AC, $B2, $A2, $01, $24, $1E, $4B, $04, $14, $01, $00, $1B, $51

    inc d                                         ; $50EA: $14
    add hl, de                                    ; $50EB: $19
    nop                                           ; $50EC: $00
    push bc                                       ; $50ED: $C5
    ld d, [hl]                                    ; $50EE: $56
    inc d                                         ; $50EF: $14
    ld a, [de]                                    ; $50F0: $1A
    nop                                           ; $50F1: $00
    ld c, b                                       ; $50F2: $48
    ld e, c                                       ; $50F3: $59
    rst $38                                       ; $50F4: $FF
    ld b, [hl]                                    ; $50F5: $46
    ld hl, sp+$50                                 ; $50F6: $F8 $50
    sub e                                         ; $50F8: $93
    ld h, l                                       ; $50F9: $65
    ld e, $40                                     ; $50FA: $1E $40
    ld c, a                                       ; $50FC: $4F
    ld h, [hl]                                    ; $50FD: $66
    ret nz                                        ; $50FE: $C0

    ld e, h                                       ; $50FF: $5C
    ld hl, $3264                                  ; $5100: $21 $64 $32
    ld b, b                                       ; $5103: $40
    dec b                                         ; $5104: $05
    nop                                           ; $5105: $00
    add c                                         ; $5106: $81

jr_014_5107:
    ld e, l                                       ; $5107: $5D
    dec b                                         ; $5108: $05
    dec b                                         ; $5109: $05

jr_014_510A:
    ld d, l                                       ; $510A: $55
    ret nc                                        ; $510B: $D0

    nop                                           ; $510C: $00
    jr nz, jr_014_510A                            ; $510D: $20 $FB

    ld d, b                                       ; $510F: $50

jr_014_5110:
    ld [hl+], a                                   ; $5110: $22
    dec b                                         ; $5111: $05
    ld b, b                                       ; $5112: $40
    dec bc                                        ; $5113: $0B
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    add d                                         ; $5116: $82
    sub h                                         ; $5117: $94
    rra                                           ; $5118: $1F
    inc h                                         ; $5119: $24
    ld b, d                                       ; $511A: $42

    db $93, $65, $1E, $40, $4F, $66, $C0, $5C, $21, $6F, $07, $FF, $7F, $45, $14, $35
    db $51

    sub e                                         ; $512C: $93
    ld h, l                                       ; $512D: $65
    ld e, $40                                     ; $512E: $1E $40
    ld c, a                                       ; $5130: $4F
    ld h, [hl]                                    ; $5131: $66
    ret nz                                        ; $5132: $C0

    ld e, h                                       ; $5133: $5C
    db $21                                        ; $5134: $21

    db $64, $32, $40, $05, $00, $6B, $4A, $06, $0C, $C6, $D0, $00, $14, $30, $52, $22
    db $05, $40, $05, $05, $6B, $4A, $08, $06, $68, $D0, $00, $14, $52, $52, $22, $05
    db $40, $05, $03, $6B, $4A, $07, $0C, $C7, $D0, $2A, $14, $AE, $52, $22, $05, $40
    db $05, $04, $6B, $4A, $09, $0C, $C9, $D0, $54, $14, $DD, $52, $22, $05, $40, $6B
    db $2A, $0A, $B0, $48, $00, $80, $00, $6B, $2A, $0A, $F0, $5E, $A0, $82, $00, $6B
    db $30, $0B, $50, $7A, $40, $85, $00, $0B, $00, $0B, $05, $84, $07, $09, $7E, $46
    db $D0, $04, $06, $06, $D0, $00, $06, $7E, $06, $D0, $04, $02, $E6, $D0, $0E, $06
    db $7E, $66, $D0, $04, $06, $06, $D0, $00, $06, $5A, $14, $8A, $52, $94, $24, $3C
    db $76, $20, $07, $62, $01, $56, $06, $40, $20, $7E, $E6, $D0, $04, $02, $16, $D0
    db $01, $06, $40, $04, $7E, $E6, $D0, $04, $02, $26, $D0, $02, $06, $40, $04, $1B
    db $03, $7E, $E6, $D0, $04, $02, $36, $D0, $03, $06, $40, $04, $7E, $E6, $D0, $04
    db $02, $46, $D0, $04, $06, $83, $01, $00, $02, $01, $00, $FD, $01, $00, $03, $01
    db $00, $FD, $01, $00, $03, $01, $00, $FE, $01, $00, $02, $01, $00, $FE, $01, $00
    db $02, $01, $00, $FE, $01, $00, $01, $01, $00, $FF, $01, $00, $01, $01, $00, $FF
    db $01, $00, $01, $01, $00, $FF, $01, $00, $01, $01, $00, $FF, $00, $7E, $96, $D0
    db $04, $02, $E6, $D0, $0E, $06, $40, $1D, $56, $13, $42, $15, $20, $B3, $4F, $60
    db $20, $C9, $50, $00, $00, $60, $06, $14, $20, $AB, $50, $62, $02, $0B, $03, $0B
    db $04, $15, $20, $ED, $4F, $20, $20, $B3, $4F, $68, $00, $19

    ld b, d                                       ; $5251: $42

    db $15, $0E, $FA, $53, $32, $0E, $2C, $54, $14, $0E, $04, $54, $05, $0E, $18, $54
    db $05, $0E, $F0, $53, $00, $00, $5B, $14, $B0, $4B, $60, $13, $14, $0E, $04, $54
    db $5B, $14, $DC, $4B, $24, $32, $62, $02, $40, $10, $56, $4D, $15, $0E, $70, $53
    db $68, $00, $56, $02, $56, $37, $19

    ld b, d                                       ; $5289: $42

    db $40, $18, $83, $34, $00, $FF, $00, $60, $4D, $83, $50, $00, $01, $00, $60, $0A
    db $83, $50, $00, $FF, $00, $60, $0B

    add e                                         ; $52A1: $83
    stop                                          ; $52A2: $10 $00
    rst $38                                       ; $52A4: $FF
    nop                                           ; $52A5: $00
    ld h, b                                       ; $52A6: $60
    inc c                                         ; $52A7: $0C
    add e                                         ; $52A8: $83
    inc h                                         ; $52A9: $24
    nop                                           ; $52AA: $00
    ld [bc], a                                    ; $52AB: $02
    nop                                           ; $52AC: $00
    ld b, d                                       ; $52AD: $42

    db $14, $0E, $43, $72, $60, $02, $1F, $1E, $56, $0A, $15, $0E, $C3, $71, $58, $0E
    db $61, $72, $00, $00, $5B, $14, $F1, $4B, $62, $02, $56, $03, $60, $04, $5B, $14
    db $78, $4C, $62, $04, $15, $0E, $F3, $71, $10, $0E, $C3, $71, $68, $00, $42, $14
    db $0E, $82, $7E, $60, $37, $15, $0E, $02, $7E, $58, $0E, $96, $7E, $00, $00, $60
    db $03, $5B, $14, $1E, $4C, $62, $03, $56, $04, $62, $04, $40, $20, $15, $0E, $22
    db $7E, $10, $0E, $02, $7E, $68, $00, $45, $16, $37, $4F

    ld b, d                                       ; $5309: $42

    db $24, $14, $93, $65, $1E, $40, $4F, $64, $32, $40, $66, $C0, $5C, $21, $05, $02
    db $6B, $4A, $07, $00, $07, $D0, $00, $14, $58, $53, $22, $05, $40, $05, $03, $6B
    db $4A, $08, $00, $08, $D0, $2A, $14, $67, $53, $22, $05, $40, $6B, $2A, $0A, $F0
    db $5E, $00, $80, $00, $6B, $30, $0B, $50, $7A, $A0, $82, $00, $0B, $03, $7E, $66
    db $D0, $04, $06, $06, $D0, $00, $06, $84, $07, $04, $94, $24, $1E, $42, $15, $0E
    db $B3, $72, $10, $00, $5A, $16, $A6, $50, $14, $0E, $9D, $72, $42, $15, $0E, $FA
    db $7E, $10, $00, $0B, $02, $14, $0E, $D2, $7E, $5B, $14, $57, $4D, $62, $0C, $45
    db $16, $99, $4E

    sub e                                         ; $537D: $93
    ld h, l                                       ; $537E: $65
    ld e, $40                                     ; $537F: $1E $40
    ld c, a                                       ; $5381: $4F
    ld h, [hl]                                    ; $5382: $66
    ret nz                                        ; $5383: $C0

    ld e, h                                       ; $5384: $5C
    ld hl, $076F                                  ; $5385: $21 $6F $07
    rst $38                                       ; $5388: $FF
    ld a, a                                       ; $5389: $7F
    ld b, l                                       ; $538A: $45
    inc d                                         ; $538B: $14
    sub a                                         ; $538C: $97
    ld d, e                                       ; $538D: $53

    db $93, $65, $1E, $40, $4F, $66, $C0, $5C, $21, $64, $32, $40, $05, $00, $6B, $4A
    db $0F, $08, $8F, $D0, $00, $14, $88, $54, $22, $05, $40, $05, $02, $6B, $4A, $0D
    db $08, $8D, $D0, $00, $14, $93, $54, $22, $05, $40, $05, $03, $6B, $4A, $08, $00
    db $08, $D0, $2A, $14, $F3, $54, $22, $05, $40, $05, $04, $6B, $4A, $08, $00, $08
    db $D0, $51, $14, $38, $54, $22, $05, $40, $05, $05, $6B, $4A, $08, $00, $08, $D0
    db $81, $14, $54, $54, $22, $05, $40, $05, $06, $6B, $4A, $08, $00, $08, $D0, $A9
    db $14, $6E, $54, $22, $05, $40, $6B, $2A, $0A, $B0, $48, $00, $80, $00, $6B, $27
    db $0A, $D0, $71, $A0, $82, $00, $6B, $30, $0B, $30, $4F, $10, $85, $00, $6B, $28
    db $0C, $30, $5D, $10, $88, $00, $6B, $26, $0B, $50, $54, $90, $8A, $00, $0B, $00
    db $0B, $02, $0B, $03, $84, $0D, $08, $94, $5A, $14, $2F, $55, $76, $20, $07, $AF
    db $25, $A1, $01, $40, $40, $5A, $2B, $60, $61, $42, $15, $0F, $BF, $7B, $48, $0F
    db $21, $7C, $00, $00, $60, $0F, $56, $10, $40, $20, $15, $0F, $CF, $7B, $08, $0F
    db $BF, $7B, $3C, $00, $19

    ld b, d                                       ; $5453: $42

    db $15, $10, $CE, $74, $40, $10, $1C, $75, $00, $00, $60, $10, $56, $11, $15, $10
    db $DE, $74, $08, $10, $CE, $74, $3C, $00, $19

    ld b, d                                       ; $546D: $42

    db $15, $10, $E1, $5B, $70, $10, $97, $5C, $00, $00, $60, $11, $56, $12, $15, $10
    db $F1, $5B, $10, $10, $E1, $5B, $74, $00, $19

    ld b, d                                       ; $5487: $42

    db $15, $20, $DD, $4F, $30, $20, $BF, $50, $00, $00, $42, $16, $0E, $90, $53, $28
    db $FF, $00, $00, $15, $0E, $90, $53, $28, $00, $14, $0E, $F0, $53, $62, $0E, $15
    db $0E, $A0, $53, $10, $0E, $04, $54, $10, $0E, $2C, $54, $10, $0E, $FA, $53, $10
    db $00, $60, $0A, $0B, $04, $40, $10, $0B, $05, $40, $08, $0B, $06, $40, $50, $14
    db $0E, $04, $54, $5B, $14, $39, $4E, $62, $0F, $56, $0F, $40, $08, $15, $0E, $C0
    db $53, $10, $0E, $D0, $53, $10, $0E, $C0, $53, $34, $00, $83, $14, $03, $00, $00
    db $07, $00, $81, $5D, $09, $00, $20, $AB, $50, $19

    ld b, d                                       ; $54F2: $42

    db $15, $0F, $EB, $55, $60, $0F, $65, $56, $00, $00, $1B, $10, $1F, $23, $5B, $14
    db $6D, $4D, $62, $0D, $40, $30, $5A, $14, $40, $55, $14, $0F, $79, $56, $40, $18
    db $5B, $14, $F8, $4D, $62, $0E, $5A, $14, $40, $55, $15, $0F, $EB, $55, $50, $00
    db $56, $0A, $5A, $14, $40, $55, $40, $28, $1F, $26, $19

    ld b, d                                       ; $552E: $42

    db $83, $03, $FE, $00, $03, $00, $FE, $02, $03, $00, $02, $00, $03, $00, $46, $2F
    db $55, $83, $01, $FD, $00, $01, $00, $FD, $03, $01, $00, $01, $00, $03, $02, $FF
    db $00, $02, $00, $FF, $02, $01, $00, $02, $00, $01, $00, $42

    xor h                                         ; $555B: $AC
    or d                                          ; $555C: $B2
    and d                                         ; $555D: $A2
    ld bc, $6593                                  ; $555E: $01 $93 $65
    ld e, $40                                     ; $5561: $1E $40
    ld c, a                                       ; $5563: $4F
    ld h, [hl]                                    ; $5564: $66
    ret nz                                        ; $5565: $C0

    ld e, h                                       ; $5566: $5C
    ld hl, $076F                                  ; $5567: $21 $6F $07
    rst $38                                       ; $556A: $FF
    ld a, a                                       ; $556B: $7F
    ld b, l                                       ; $556C: $45
    inc d                                         ; $556D: $14
    ld a, l                                       ; $556E: $7D
    ld d, l                                       ; $556F: $55
    xor h                                         ; $5570: $AC
    or d                                          ; $5571: $B2
    and d                                         ; $5572: $A2
    ld bc, $6593                                  ; $5573: $01 $93 $65
    ld e, $40                                     ; $5576: $1E $40
    ld c, a                                       ; $5578: $4F
    ld h, [hl]                                    ; $5579: $66
    ret nz                                        ; $557A: $C0

    ld e, h                                       ; $557B: $5C
    ld hl, $3264                                  ; $557C: $21 $64 $32
    ld b, b                                       ; $557F: $40
    ld b, e                                       ; $5580: $43
    inc de                                        ; $5581: $13
    inc b                                         ; $5582: $04
    dec b                                         ; $5583: $05
    inc bc                                        ; $5584: $03
    inc d                                         ; $5585: $14
    adc b                                         ; $5586: $88
    ld d, l                                       ; $5587: $55
    dec b                                         ; $5588: $05
    nop                                           ; $5589: $00
    ld l, e                                       ; $558A: $6B
    ld c, d                                       ; $558B: $4A
    ld [$D80D], sp                                ; $558C: $08 $0D $D8
    ret nc                                        ; $558F: $D0

    nop                                           ; $5590: $00
    inc d                                         ; $5591: $14
    ld b, e                                       ; $5592: $43
    ld d, [hl]                                    ; $5593: $56
    ld [hl+], a                                   ; $5594: $22
    dec b                                         ; $5595: $05
    ld b, b                                       ; $5596: $40
    dec b                                         ; $5597: $05
    dec b                                         ; $5598: $05
    ld l, e                                       ; $5599: $6B
    ld c, d                                       ; $559A: $4A
    ld [$B80B], sp                                ; $559B: $08 $0B $B8
    ret nc                                        ; $559E: $D0

    nop                                           ; $559F: $00
    inc d                                         ; $55A0: $14
    sub a                                         ; $55A1: $97
    ld d, [hl]                                    ; $55A2: $56
    ld [hl+], a                                   ; $55A3: $22
    dec b                                         ; $55A4: $05
    ld b, b                                       ; $55A5: $40
    ld l, e                                       ; $55A6: $6B
    ld a, [hl+]                                   ; $55A7: $2A
    ld a, [bc]                                    ; $55A8: $0A
    or b                                          ; $55A9: $B0
    ld c, b                                       ; $55AA: $48
    nop                                           ; $55AB: $00
    add b                                         ; $55AC: $80
    nop                                           ; $55AD: $00
    add h                                         ; $55AE: $84
    ld [$7E07], sp                                ; $55AF: $08 $07 $7E
    ld b, [hl]                                    ; $55B2: $46
    ret nc                                        ; $55B3: $D0

    inc b                                         ; $55B4: $04
    ld b, $06                                     ; $55B5: $06 $06
    ret nc                                        ; $55B7: $D0

    nop                                           ; $55B8: $00
    ld b, $7E                                     ; $55B9: $06 $7E
    ld b, $D0                                     ; $55BB: $06 $D0
    inc b                                         ; $55BD: $04
    ld [bc], a                                    ; $55BE: $02
    and $D0                                       ; $55BF: $E6 $D0
    ld c, $06                                     ; $55C1: $0E $06
    dec bc                                        ; $55C3: $0B
    nop                                           ; $55C4: $00
    dec bc                                        ; $55C5: $0B
    dec b                                         ; $55C6: $05
    sub h                                         ; $55C7: $94
    halt                                          ; $55C8: $76
    jr nz, @+$09                                  ; $55C9: $20 $07

    rra                                           ; $55CB: $1F
    inc h                                         ; $55CC: $24
    ld e, h                                       ; $55CD: $5C
    nop                                           ; $55CE: $00
    ld [bc], a                                    ; $55CF: $02
    ld b, b                                       ; $55D0: $40
    jr nz, @+$80                                  ; $55D1: $20 $7E

    and $D0                                       ; $55D3: $E6 $D0
    inc b                                         ; $55D5: $04
    ld [bc], a                                    ; $55D6: $02
    ld d, $D0                                     ; $55D7: $16 $D0
    ld bc, $4006                                  ; $55D9: $01 $06 $40
    inc b                                         ; $55DC: $04
    ld a, [hl]                                    ; $55DD: $7E
    and $D0                                       ; $55DE: $E6 $D0
    inc b                                         ; $55E0: $04
    ld [bc], a                                    ; $55E1: $02
    ld h, $D0                                     ; $55E2: $26 $D0
    ld [bc], a                                    ; $55E4: $02
    ld b, $40                                     ; $55E5: $06 $40
    inc b                                         ; $55E7: $04
    dec de                                        ; $55E8: $1B
    inc bc                                        ; $55E9: $03
    ld a, [hl]                                    ; $55EA: $7E
    and $D0                                       ; $55EB: $E6 $D0
    inc b                                         ; $55ED: $04
    ld [bc], a                                    ; $55EE: $02
    ld [hl], $D0                                  ; $55EF: $36 $D0
    inc bc                                        ; $55F1: $03
    ld b, $40                                     ; $55F2: $06 $40
    inc b                                         ; $55F4: $04
    ld a, [hl]                                    ; $55F5: $7E
    and $D0                                       ; $55F6: $E6 $D0
    inc b                                         ; $55F8: $04

jr_014_55F9:
    ld [bc], a                                    ; $55F9: $02
    ld b, [hl]                                    ; $55FA: $46
    ret nc                                        ; $55FB: $D0

    inc b                                         ; $55FC: $04

jr_014_55FD:
    ld b, $83                                     ; $55FD: $06 $83
    ld bc, $0200                                  ; $55FF: $01 $00 $02
    ld bc, $FD00                                  ; $5602: $01 $00 $FD
    ld bc, $0300                                  ; $5605: $01 $00 $03
    ld bc, $FD00                                  ; $5608: $01 $00 $FD
    ld bc, $0300                                  ; $560B: $01 $00 $03
    ld bc, $FE00                                  ; $560E: $01 $00 $FE
    ld bc, $0200                                  ; $5611: $01 $00 $02
    ld bc, $FE00                                  ; $5614: $01 $00 $FE
    ld bc, $0200                                  ; $5617: $01 $00 $02
    ld bc, $FE00                                  ; $561A: $01 $00 $FE
    ld bc, $0100                                  ; $561D: $01 $00 $01
    ld bc, $FF00                                  ; $5620: $01 $00 $FF

jr_014_5623:
    ld bc, $0100                                  ; $5623: $01 $00 $01
    ld bc, $FF00                                  ; $5626: $01 $00 $FF
    ld bc, $0100                                  ; $5629: $01 $00 $01
    ld bc, $FF00                                  ; $562C: $01 $00 $FF
    ld bc, $0100                                  ; $562F: $01 $00 $01
    ld bc, $FF00                                  ; $5632: $01 $00 $FF
    nop                                           ; $5635: $00
    ld a, [hl]                                    ; $5636: $7E
    sub [hl]                                      ; $5637: $96
    ret nc                                        ; $5638: $D0

jr_014_5639:
    inc b                                         ; $5639: $04
    ld [bc], a                                    ; $563A: $02
    and $D0                                       ; $563B: $E6 $D0
    ld c, $06                                     ; $563D: $0E $06
    ld e, h                                       ; $563F: $5C
    ld bc, $4203                                  ; $5640: $01 $03 $42
    dec d                                         ; $5643: $15
    jr nz, jr_014_55F9                            ; $5644: $20 $B3

    ld c, a                                       ; $5646: $4F
    ld d, b                                       ; $5647: $50
    jr nz, @-$21                                  ; $5648: $20 $DD

    ld c, a                                       ; $564A: $4F
    jr jr_014_566D                                ; $564B: $18 $20

    or e                                          ; $564D: $B3
    ld c, a                                       ; $564E: $4F
    db $10                                        ; $564F: $10
    jr nz, jr_014_55FD                            ; $5650: $20 $AB

    ld d, b                                       ; $5652: $50
    nop                                           ; $5653: $00

jr_014_5654:
    nop                                           ; $5654: $00
    ld e, e                                       ; $5655: $5B
    inc d                                         ; $5656: $14
    ld l, l                                       ; $5657: $6D
    ld c, e                                       ; $5658: $4B
    ld e, h                                       ; $5659: $5C
    ld bc, $1503                                  ; $565A: $01 $03 $15
    jr nz, @-$53                                  ; $565D: $20 $AB

    ld d, b                                       ; $565F: $50
    db $10                                        ; $5660: $10
    jr nz, jr_014_5654                            ; $5661: $20 $F1

    ld d, b                                       ; $5663: $50
    inc b                                         ; $5664: $04

jr_014_5665:
    jr nz, @-$35                                  ; $5665: $20 $C9

    ld d, b                                       ; $5667: $50
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    ld e, h                                       ; $566A: $5C
    ld [bc], a                                    ; $566B: $02
    inc bc                                        ; $566C: $03

jr_014_566D:
    dec d                                         ; $566D: $15
    jr nz, jr_014_5639                            ; $566E: $20 $C9

    ld d, b                                       ; $5670: $50
    inc c                                         ; $5671: $0C

jr_014_5672:
    jr nz, jr_014_5665                            ; $5672: $20 $F1

    ld d, b                                       ; $5674: $50
    inc b                                         ; $5675: $04
    jr nz, jr_014_5623                            ; $5676: $20 $AB

    ld d, b                                       ; $5678: $50
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    ld e, h                                       ; $567B: $5C
    inc bc                                        ; $567C: $03
    ld [bc], a                                    ; $567D: $02
    dec d                                         ; $567E: $15
    jr nz, jr_014_5672                            ; $567F: $20 $F1

    ld d, b                                       ; $5681: $50
    inc b                                         ; $5682: $04
    jr nz, jr_014_5672                            ; $5683: $20 $ED

    ld c, a                                       ; $5685: $4F
    jr jr_014_56A8                                ; $5686: $18 $20

    or e                                          ; $5688: $B3
    ld c, a                                       ; $5689: $4F
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    ld l, [hl]                                    ; $568C: $6E
    rrca                                          ; $568D: $0F
    rst $38                                       ; $568E: $FF
    ld a, a                                       ; $568F: $7F
    halt                                          ; $5690: $76
    jr nz, jr_014_56A2                            ; $5691: $20 $0F

    ld b, l                                       ; $5693: $45
    inc hl                                        ; $5694: $23
    ld h, l                                       ; $5695: $65
    ld h, a                                       ; $5696: $67
    dec d                                         ; $5697: $15
    ld c, $70                                     ; $5698: $0E $70
    ld d, e                                       ; $569A: $53
    ld b, b                                       ; $569B: $40
    ld c, $F0                                     ; $569C: $0E $F0
    ld d, e                                       ; $569E: $53
    nop                                           ; $569F: $00
    nop                                           ; $56A0: $00
    ld e, h                                       ; $56A1: $5C

jr_014_56A2:
    ld bc, $1403                                  ; $56A2: $01 $03 $14
    ld c, $04                                     ; $56A5: $0E $04
    ld d, h                                       ; $56A7: $54

jr_014_56A8:
    ld e, e                                       ; $56A8: $5B
    inc d                                         ; $56A9: $14
    sbc d                                         ; $56AA: $9A
    ld c, e                                       ; $56AB: $4B
    ld e, h                                       ; $56AC: $5C
    ld [bc], a                                    ; $56AD: $02
    inc bc                                        ; $56AE: $03
    dec d                                         ; $56AF: $15
    ld c, $18                                     ; $56B0: $0E $18
    ld d, h                                       ; $56B2: $54
    inc b                                         ; $56B3: $04
    ld c, $70                                     ; $56B4: $0E $70
    ld d, e                                       ; $56B6: $53
    inc [hl]                                      ; $56B7: $34
    nop                                           ; $56B8: $00
    ld e, e                                       ; $56B9: $5B
    inc d                                         ; $56BA: $14
    ld d, h                                       ; $56BB: $54
    ld c, e                                       ; $56BC: $4B
    dec d                                         ; $56BD: $15
    ld c, $70                                     ; $56BE: $0E $70
    ld d, e                                       ; $56C0: $53
    inc [hl]                                      ; $56C1: $34
    nop                                           ; $56C2: $00
    add hl, de                                    ; $56C3: $19
    ld b, d                                       ; $56C4: $42
    ld b, e                                       ; $56C5: $43
    ld a, [bc]                                    ; $56C6: $0A
    nop                                           ; $56C7: $00
    dec h                                         ; $56C8: $25
    and c                                         ; $56C9: $A1
    ld bc, $F014                                  ; $56CA: $01 $14 $F0
    ld d, [hl]                                    ; $56CD: $56
    sub e                                         ; $56CE: $93
    ld h, l                                       ; $56CF: $65
    ld e, $40                                     ; $56D0: $1E $40
    ld c, a                                       ; $56D2: $4F
    ld h, [hl]                                    ; $56D3: $66
    ret nz                                        ; $56D4: $C0

    ld e, h                                       ; $56D5: $5C
    ld hl, $3264                                  ; $56D6: $21 $64 $32
    ld b, b                                       ; $56D9: $40
    dec b                                         ; $56DA: $05
    nop                                           ; $56DB: $00
    add c                                         ; $56DC: $81
    ld e, l                                       ; $56DD: $5D
    dec b                                         ; $56DE: $05
    dec b                                         ; $56DF: $05

jr_014_56E0:
    ld d, l                                       ; $56E0: $55
    ret nc                                        ; $56E1: $D0

    nop                                           ; $56E2: $00
    jr nz, jr_014_56E0                            ; $56E3: $20 $FB

    ld d, b                                       ; $56E5: $50
    ld [hl+], a                                   ; $56E6: $22
    dec b                                         ; $56E7: $05
    ld b, b                                       ; $56E8: $40
    dec bc                                        ; $56E9: $0B
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    add d                                         ; $56EC: $82
    sub h                                         ; $56ED: $94
    ld hl, $9342                                  ; $56EE: $21 $42 $93
    ld h, l                                       ; $56F1: $65
    ld e, $40                                     ; $56F2: $1E $40
    ld c, a                                       ; $56F4: $4F
    ld h, [hl]                                    ; $56F5: $66
    ret nz                                        ; $56F6: $C0

    ld e, h                                       ; $56F7: $5C
    ld hl, $3264                                  ; $56F8: $21 $64 $32
    ld b, b                                       ; $56FB: $40
    dec b                                         ; $56FC: $05
    nop                                           ; $56FD: $00
    ld l, e                                       ; $56FE: $6B
    ld c, d                                       ; $56FF: $4A
    rlca                                          ; $5700: $07
    db $10                                        ; $5701: $10
    rlca                                          ; $5702: $07
    pop de                                        ; $5703: $D1
    nop                                           ; $5704: $00
    inc d                                         ; $5705: $14
    adc d                                         ; $5706: $8A
    ld d, a                                       ; $5707: $57
    ld [hl+], a                                   ; $5708: $22
    dec b                                         ; $5709: $05
    ld b, b                                       ; $570A: $40
    dec b                                         ; $570B: $05
    ld [bc], a                                    ; $570C: $02
    ld l, e                                       ; $570D: $6B
    ld c, d                                       ; $570E: $4A
    rlca                                          ; $570F: $07
    ld [$D087], sp                                ; $5710: $08 $87 $D0
    nop                                           ; $5713: $00
    inc d                                         ; $5714: $14
    ret c                                         ; $5715: $D8

    ld d, a                                       ; $5716: $57
    ld [hl+], a                                   ; $5717: $22
    dec b                                         ; $5718: $05
    ld b, b                                       ; $5719: $40
    dec b                                         ; $571A: $05
    inc bc                                        ; $571B: $03
    ld l, e                                       ; $571C: $6B
    ld c, d                                       ; $571D: $4A
    rlca                                          ; $571E: $07
    nop                                           ; $571F: $00
    rlca                                          ; $5720: $07
    ret nc                                        ; $5721: $D0

    jr nc, jr_014_5738                            ; $5722: $30 $14

    ld d, $58                                     ; $5724: $16 $58
    ld [hl+], a                                   ; $5726: $22
    dec b                                         ; $5727: $05
    ld b, b                                       ; $5728: $40
    dec b                                         ; $5729: $05
    inc b                                         ; $572A: $04
    ld l, e                                       ; $572B: $6B
    ld c, d                                       ; $572C: $4A
    ld [$0800], sp                                ; $572D: $08 $00 $08
    ret nc                                        ; $5730: $D0

    ld h, b                                       ; $5731: $60
    inc d                                         ; $5732: $14
    ld h, $58                                     ; $5733: $26 $58
    ld [hl+], a                                   ; $5735: $22
    dec b                                         ; $5736: $05
    ld b, b                                       ; $5737: $40

jr_014_5738:
    dec b                                         ; $5738: $05
    dec b                                         ; $5739: $05
    ld l, e                                       ; $573A: $6B
    ld c, d                                       ; $573B: $4A
    rrca                                          ; $573C: $0F
    ld [$D08F], sp                                ; $573D: $08 $8F $D0

jr_014_5740:
    sub b                                         ; $5740: $90
    inc d                                         ; $5741: $14
    ld l, $58                                     ; $5742: $2E $58

jr_014_5744:
    ld [hl+], a                                   ; $5744: $22
    dec b                                         ; $5745: $05
    ld b, b                                       ; $5746: $40
    ld l, e                                       ; $5747: $6B
    jr nc, jr_014_5754                            ; $5748: $30 $0A

    ldh a, [$4E]                                  ; $574A: $F0 $4E
    nop                                           ; $574C: $00
    add b                                         ; $574D: $80
    nop                                           ; $574E: $00
    ld l, e                                       ; $574F: $6B
    jr nc, jr_014_575D                            ; $5750: $30 $0B

    or b                                          ; $5752: $B0
    ld d, [hl]                                    ; $5753: $56

jr_014_5754:
    nop                                           ; $5754: $00
    add e                                         ; $5755: $83
    nop                                           ; $5756: $00
    ld l, e                                       ; $5757: $6B
    jr nc, jr_014_5765                            ; $5758: $30 $0B

jr_014_575A:
    ld d, b                                       ; $575A: $50
    ld e, c                                       ; $575B: $59

jr_014_575C:
    nop                                           ; $575C: $00

jr_014_575D:
    add [hl]                                      ; $575D: $86
    nop                                           ; $575E: $00
    ld l, e                                       ; $575F: $6B
    jr nc, jr_014_576D                            ; $5760: $30 $0B

    ret nz                                        ; $5762: $C0

    ld [hl], a                                    ; $5763: $77
    nop                                           ; $5764: $00

jr_014_5765:
    adc c                                         ; $5765: $89
    nop                                           ; $5766: $00
    dec bc                                        ; $5767: $0B

jr_014_5768:
    nop                                           ; $5768: $00
    dec bc                                        ; $5769: $0B
    ld [bc], a                                    ; $576A: $02
    dec bc                                        ; $576B: $0B
    inc bc                                        ; $576C: $03

jr_014_576D:
    add d                                         ; $576D: $82
    ld l, a                                       ; $576E: $6F
    rrca                                          ; $576F: $0F
    rst $38                                       ; $5770: $FF
    ld a, a                                       ; $5771: $7F
    sub h                                         ; $5772: $94
    ld hl, $2076                                  ; $5773: $21 $76 $20
    rrca                                          ; $5776: $0F
    ld b, b                                       ; $5777: $40
    db $10                                        ; $5778: $10
    dec bc                                        ; $5779: $0B
    dec b                                         ; $577A: $05
    ld b, b                                       ; $577B: $40
    ld b, b                                       ; $577C: $40
    dec bc                                        ; $577D: $0B
    inc b                                         ; $577E: $04
    ld h, b                                       ; $577F: $60
    ld bc, $25AF                                  ; $5780: $01 $AF $25

jr_014_5783:
    and c                                         ; $5783: $A1
    ld bc, $1445                                  ; $5784: $01 $45 $14
    jp nz, Jump_014_4247                          ; $5787: $C2 $47 $42

    dec d                                         ; $578A: $15
    jr nz, jr_014_5740                            ; $578B: $20 $B3

    ld c, a                                       ; $578D: $4F
    ld b, b                                       ; $578E: $40
    nop                                           ; $578F: $00
    ld d, $20                                     ; $5790: $16 $20
    or e                                          ; $5792: $B3

jr_014_5793:
    ld c, a                                       ; $5793: $4F
    jr nc, jr_014_5796                            ; $5794: $30 $00

jr_014_5796:
    rst $38                                       ; $5796: $FF
    jr nz, jr_014_5744                            ; $5797: $20 $AB

    ld d, b                                       ; $5799: $50
    jr nz, jr_014_579C                            ; $579A: $20 $00

jr_014_579C:
    nop                                           ; $579C: $00
    jr nz, jr_014_5768                            ; $579D: $20 $C9

    ld d, b                                       ; $579F: $50
    ld [rRAMG], sp                                ; $57A0: $08 $00 $00
    jr nz, jr_014_575A                            ; $57A3: $20 $B5

    ld d, b                                       ; $57A5: $50
    jr nz, jr_014_57A8                            ; $57A6: $20 $00

jr_014_57A8:
    nop                                           ; $57A8: $00
    jr nz, @-$35                                  ; $57A9: $20 $C9

    ld d, b                                       ; $57AB: $50
    ld [rRAMG], sp                                ; $57AC: $08 $00 $00
    jr nz, jr_014_575C                            ; $57AF: $20 $AB

    ld d, b                                       ; $57B1: $50
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    nop                                           ; $57B4: $00
    nop                                           ; $57B5: $00
    ld e, e                                       ; $57B6: $5B
    inc d                                         ; $57B7: $14
    ld b, [hl]                                    ; $57B8: $46
    ld e, b                                       ; $57B9: $58
    ld h, d                                       ; $57BA: $62
    inc d                                         ; $57BB: $14
    inc d                                         ; $57BC: $14
    jr nz, @-$0D                                  ; $57BD: $20 $F1

    ld d, b                                       ; $57BF: $50
    ld h, d                                       ; $57C0: $62
    ld [bc], a                                    ; $57C1: $02
    ld e, h                                       ; $57C2: $5C
    nop                                           ; $57C3: $00
    ld [bc], a                                    ; $57C4: $02
    ld b, b                                       ; $57C5: $40
    ld b, b                                       ; $57C6: $40
    dec d                                         ; $57C7: $15
    jr nz, jr_014_5793                            ; $57C8: $20 $C9

    ld d, b                                       ; $57CA: $50
    db $10                                        ; $57CB: $10
    jr nz, jr_014_5783                            ; $57CC: $20 $B5

    ld d, b                                       ; $57CE: $50
    jr nz, jr_014_57F1                            ; $57CF: $20 $20

    call $204F                                    ; $57D1: $CD $4F $20
    nop                                           ; $57D4: $00
    ld d, [hl]                                    ; $57D5: $56
    ld bc, $1442                                  ; $57D6: $01 $42 $14
    ld c, $D9                                     ; $57D9: $0E $D9
    ld h, b                                       ; $57DB: $60
    ld h, d                                       ; $57DC: $62
    ld bc, $0E15                                  ; $57DD: $01 $15 $0E
    dec bc                                        ; $57E0: $0B
    ld h, c                                       ; $57E1: $61
    db $10                                        ; $57E2: $10
    ld c, $E3                                     ; $57E3: $0E $E3
    ld h, b                                       ; $57E5: $60
    db $10                                        ; $57E6: $10
    ld c, $F7                                     ; $57E7: $0E $F7
    ld h, b                                       ; $57E9: $60
    jr nz, jr_014_57EC                            ; $57EA: $20 $00

jr_014_57EC:
    ld e, e                                       ; $57EC: $5B
    inc d                                         ; $57ED: $14
    call z, Call_014_6258                         ; $57EE: $CC $58 $62

jr_014_57F1:
    dec d                                         ; $57F1: $15
    dec d                                         ; $57F2: $15
    ld c, $E3                                     ; $57F3: $0E $E3
    ld h, b                                       ; $57F5: $60
    ld [$0B0E], sp                                ; $57F6: $08 $0E $0B
    ld h, c                                       ; $57F9: $61
    ld [$D90E], sp                                ; $57FA: $08 $0E $D9
    ld h, b                                       ; $57FD: $60
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    ld e, h                                       ; $5800: $5C
    nop                                           ; $5801: $00
    ld [bc], a                                    ; $5802: $02
    dec d                                         ; $5803: $15
    ld c, $6F                                     ; $5804: $0E $6F
    ld h, b                                       ; $5806: $60
    db $10                                        ; $5807: $10
    ld c, $5F                                     ; $5808: $0E $5F
    ld h, b                                       ; $580A: $60
    jr nz, jr_014_581B                            ; $580B: $20 $0E

    ld a, a                                       ; $580D: $7F
    ld h, b                                       ; $580E: $60
    db $10                                        ; $580F: $10
    ld c, $5F                                     ; $5810: $0E $5F
    ld h, b                                       ; $5812: $60
    ld b, b                                       ; $5813: $40
    nop                                           ; $5814: $00
    ld b, d                                       ; $5815: $42
    dec d                                         ; $5816: $15
    rrca                                          ; $5817: $0F
    push hl                                       ; $5818: $E5
    ld e, b                                       ; $5819: $58
    ld h, b                                       ; $581A: $60

jr_014_581B:
    rrca                                          ; $581B: $0F
    dec b                                         ; $581C: $05
    ld e, c                                       ; $581D: $59
    db $10                                        ; $581E: $10
    rrca                                          ; $581F: $0F
    push hl                                       ; $5820: $E5
    ld e, b                                       ; $5821: $58
    ld h, b                                       ; $5822: $60
    nop                                           ; $5823: $00
    add hl, de                                    ; $5824: $19
    ld b, d                                       ; $5825: $42
    dec d                                         ; $5826: $15
    rrca                                          ; $5827: $0F
    dec a                                         ; $5828: $3D
    ld e, h                                       ; $5829: $5C
    rst $38                                       ; $582A: $FF
    nop                                           ; $582B: $00
    add hl, de                                    ; $582C: $19
    ld b, d                                       ; $582D: $42
    dec d                                         ; $582E: $15
    rrca                                          ; $582F: $0F
    inc b                                         ; $5830: $04
    ld a, c                                       ; $5831: $79
    ld b, b                                       ; $5832: $40
    rrca                                          ; $5833: $0F
    db $F4                                        ; $5834: $F4
    ld a, b                                       ; $5835: $78
    jr nz, jr_014_5847                            ; $5836: $20 $0F

    inc b                                         ; $5838: $04
    ld a, c                                       ; $5839: $79
    ld b, b                                       ; $583A: $40
    rrca                                          ; $583B: $0F
    db $F4                                        ; $583C: $F4
    ld a, b                                       ; $583D: $78
    ld h, b                                       ; $583E: $60
    rrca                                          ; $583F: $0F
    ld l, [hl]                                    ; $5840: $6E
    ld a, c                                       ; $5841: $79
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    add hl, de                                    ; $5844: $19
    ld b, d                                       ; $5845: $42
    sbc e                                         ; $5846: $9B

jr_014_5847:
    ld a, b                                       ; $5847: $78
    ld [hl], b                                    ; $5848: $70
    sbc a                                         ; $5849: $9F
    ld b, a                                       ; $584A: $47
    ld l, c                                       ; $584B: $69
    ld h, c                                       ; $584C: $61
    ccf                                           ; $584D: $3F
    cp $57                                        ; $584E: $FE $57
    ld l, b                                       ; $5850: $68
    ld h, c                                       ; $5851: $61
    ld [hl], h                                    ; $5852: $74
    daa                                           ; $5853: $27
    ld [hl], e                                    ; $5854: $73
    jr nz, jr_014_58BE                            ; $5855: $20 $67

    ld l, a                                       ; $5857: $6F
    ld l, c                                       ; $5858: $69
    ld l, [hl]                                    ; $5859: $6E
    ld h, a                                       ; $585A: $67
    rst $38                                       ; $585B: $FF
    ld l, a                                       ; $585C: $6F
    ld l, [hl]                                    ; $585D: $6E
    ccf                                           ; $585E: $3F
    jr nz, jr_014_58B8                            ; $585F: $20 $57

    ld l, b                                       ; $5861: $68
    ld h, l                                       ; $5862: $65
    ld [hl], d                                    ; $5863: $72
    ld h, l                                       ; $5864: $65
    jr nz, jr_014_58D0                            ; $5865: $20 $69

    ld [hl], e                                    ; $5867: $73
    cp $65                                        ; $5868: $FE $65
    halt                                          ; $586A: $76
    ld h, l                                       ; $586B: $65
    ld [hl], d                                    ; $586C: $72
    ld a, c                                       ; $586D: $79
    ld h, d                                       ; $586E: $62
    ld l, a                                       ; $586F: $6F
    ld h, h                                       ; $5870: $64
    ld a, c                                       ; $5871: $79
    rst $38                                       ; $5872: $FF
    ld h, a                                       ; $5873: $67
    ld l, a                                       ; $5874: $6F
    ld l, c                                       ; $5875: $69
    ld l, [hl]                                    ; $5876: $6E
    ld h, a                                       ; $5877: $67
    ccf                                           ; $5878: $3F
    cp $FD                                        ; $5879: $FE $FD
    sbc e                                         ; $587B: $9B
    ld hl, sp+$4A                                 ; $587C: $F8 $4A
    sbc a                                         ; $587E: $9F
    ld d, h                                       ; $587F: $54
    ld l, b                                       ; $5880: $68
    ld h, l                                       ; $5881: $65
    ld a, c                                       ; $5882: $79
    jr nz, @+$63                                  ; $5883: $20 $61

    ld [hl], d                                    ; $5885: $72
    ld h, l                                       ; $5886: $65
    jr nz, jr_014_58F0                            ; $5887: $20 $67

    ld l, a                                       ; $5889: $6F
    ld l, c                                       ; $588A: $69
    ld l, [hl]                                    ; $588B: $6E
    ld h, a                                       ; $588C: $67
    rst $38                                       ; $588D: $FF
    ld [hl], h                                    ; $588E: $74
    ld l, a                                       ; $588F: $6F
    jr nz, jr_014_5906                            ; $5890: $20 $74

    ld l, b                                       ; $5892: $68
    ld h, l                                       ; $5893: $65
    jr nz, @+$68                                  ; $5894: $20 $66

    ld [hl], l                                    ; $5896: $75
    ld l, [hl]                                    ; $5897: $6E
    ld h, l                                       ; $5898: $65
    ld [hl], d                                    ; $5899: $72
    ld h, c                                       ; $589A: $61
    ld l, h                                       ; $589B: $6C
    cp $70                                        ; $589C: $FE $70
    ld [hl], d                                    ; $589E: $72
    ld l, a                                       ; $589F: $6F
    ld h, e                                       ; $58A0: $63
    ld h, l                                       ; $58A1: $65
    ld [hl], e                                    ; $58A2: $73
    ld [hl], e                                    ; $58A3: $73
    ld l, c                                       ; $58A4: $69
    ld l, a                                       ; $58A5: $6F
    ld l, [hl]                                    ; $58A6: $6E
    jr nz, @+$64                                  ; $58A7: $20 $62

    ld a, c                                       ; $58A9: $79
    rst $38                                       ; $58AA: $FF
    ld [hl], h                                    ; $58AB: $74
    ld l, b                                       ; $58AC: $68
    ld h, l                                       ; $58AD: $65
    jr nz, jr_014_5922                            ; $58AE: $20 $72

    ld l, c                                       ; $58B0: $69
    halt                                          ; $58B1: $76
    ld h, l                                       ; $58B2: $65
    ld [hl], d                                    ; $58B3: $72
    ld l, $FE                                     ; $58B4: $2E $FE
    db $FD                                        ; $58B6: $FD
    sbc e                                         ; $58B7: $9B

jr_014_58B8:
    ld a, b                                       ; $58B8: $78
    ld [hl], b                                    ; $58B9: $70
    sbc a                                         ; $58BA: $9F
    ld e, c                                       ; $58BB: $59
    ld l, a                                       ; $58BC: $6F
    ld [hl], l                                    ; $58BD: $75

jr_014_58BE:
    jr nz, @+$6F                                  ; $58BE: $20 $6D

    ld h, l                                       ; $58C0: $65
    ld h, c                                       ; $58C1: $61
    ld l, [hl]                                    ; $58C2: $6E
    ld l, $2E                                     ; $58C3: $2E $2E
    ld l, $FE                                     ; $58C5: $2E $FE
    db $FD                                        ; $58C7: $FD
    sbc d                                         ; $58C8: $9A
    ld e, b                                       ; $58C9: $58
    ld bc, $9B42                                  ; $58CA: $01 $42 $9B
    ld hl, sp+$4A                                 ; $58CD: $F8 $4A
    sbc a                                         ; $58CF: $9F

jr_014_58D0:
    ld e, c                                       ; $58D0: $59
    ld h, l                                       ; $58D1: $65
    ld [hl], e                                    ; $58D2: $73
    ld l, $20                                     ; $58D3: $2E $20
    ld c, a                                       ; $58D5: $4F
    ld [hl], d                                    ; $58D6: $72
    ld [hl], a                                    ; $58D7: $77
    ld l, c                                       ; $58D8: $69
    ld l, [hl]                                    ; $58D9: $6E
    rst $38                                       ; $58DA: $FF
    ld l, c                                       ; $58DB: $69
    ld [hl], e                                    ; $58DC: $73
    jr nz, jr_014_594D                            ; $58DD: $20 $6E

    ld l, a                                       ; $58DF: $6F
    jr nz, @+$6F                                  ; $58E0: $20 $6D

    ld l, a                                       ; $58E2: $6F
    ld [hl], d                                    ; $58E3: $72
    ld h, l                                       ; $58E4: $65
    ld l, $FE                                     ; $58E5: $2E $FE
    ld c, l                                       ; $58E7: $4D
    ld h, c                                       ; $58E8: $61
    ld a, c                                       ; $58E9: $79
    jr nz, @+$6A                                  ; $58EA: $20 $68

    ld l, c                                       ; $58EC: $69
    ld [hl], e                                    ; $58ED: $73
    jr nz, jr_014_5963                            ; $58EE: $20 $73

jr_014_58F0:
    ld l, a                                       ; $58F0: $6F
    ld [hl], l                                    ; $58F1: $75
    ld l, h                                       ; $58F2: $6C
    rst $38                                       ; $58F3: $FF
    ld [hl], d                                    ; $58F4: $72
    ld h, l                                       ; $58F5: $65
    ld [hl], e                                    ; $58F6: $73
    ld [hl], h                                    ; $58F7: $74
    jr nz, jr_014_5963                            ; $58F8: $20 $69

    ld l, [hl]                                    ; $58FA: $6E
    jr nz, jr_014_596D                            ; $58FB: $20 $70

    ld h, l                                       ; $58FD: $65
    ld h, c                                       ; $58FE: $61
    ld h, e                                       ; $58FF: $63
    ld h, l                                       ; $5900: $65
    ld l, $FE                                     ; $5901: $2E $FE
    db $FD                                        ; $5903: $FD
    ld e, b                                       ; $5904: $58
    inc d                                         ; $5905: $14

jr_014_5906:
    sbc e                                         ; $5906: $9B
    ld a, b                                       ; $5907: $78
    ld [hl], b                                    ; $5908: $70
    sbc a                                         ; $5909: $9F
    ld l, $2E                                     ; $590A: $2E $2E
    ld l, $2E                                     ; $590C: $2E $2E
    ld l, $2E                                     ; $590E: $2E $2E
    ld l, $2E                                     ; $5910: $2E $2E
    ld l, $FE                                     ; $5912: $2E $FE
    db $FD                                        ; $5914: $FD
    ld e, b                                       ; $5915: $58
    dec d                                         ; $5916: $15
    sbc e                                         ; $5917: $9B
    ld hl, sp+$4A                                 ; $5918: $F8 $4A
    sbc a                                         ; $591A: $9F
    ld b, e                                       ; $591B: $43
    ld l, a                                       ; $591C: $6F
    ld l, l                                       ; $591D: $6D
    ld h, l                                       ; $591E: $65
    ld l, $20                                     ; $591F: $2E $20
    ld d, a                                       ; $5921: $57

jr_014_5922:
    ld h, l                                       ; $5922: $65
    jr nz, jr_014_5992                            ; $5923: $20 $6D

    ld [hl], l                                    ; $5925: $75
    ld [hl], e                                    ; $5926: $73
    ld [hl], h                                    ; $5927: $74
    rst $38                                       ; $5928: $FF
    ld [hl], b                                    ; $5929: $70
    ld h, c                                       ; $592A: $61
    ld a, c                                       ; $592B: $79
    jr nz, jr_014_599D                            ; $592C: $20 $6F

    ld [hl], l                                    ; $592E: $75
    ld [hl], d                                    ; $592F: $72
    cp $72                                        ; $5930: $FE $72
    ld h, l                                       ; $5932: $65
    ld [hl], e                                    ; $5933: $73
    ld [hl], b                                    ; $5934: $70
    ld h, l                                       ; $5935: $65
    ld h, e                                       ; $5936: $63
    ld [hl], h                                    ; $5937: $74
    ld [hl], e                                    ; $5938: $73
    jr nz, jr_014_599C                            ; $5939: $20 $61

    ld [hl], e                                    ; $593B: $73
    rst $38                                       ; $593C: $FF
    ld [hl], a                                    ; $593D: $77
    ld h, l                                       ; $593E: $65
    ld l, h                                       ; $593F: $6C
    ld l, h                                       ; $5940: $6C
    ld l, $FE                                     ; $5941: $2E $FE
    db $FD                                        ; $5943: $FD
    sbc d                                         ; $5944: $9A
    ld e, b                                       ; $5945: $58
    ld [bc], a                                    ; $5946: $02
    ld b, d                                       ; $5947: $42
    ld b, e                                       ; $5948: $43
    ld a, [bc]                                    ; $5949: $0A
    nop                                           ; $594A: $00
    dec h                                         ; $594B: $25
    and c                                         ; $594C: $A1

jr_014_594D:
    ld bc, $7314                                  ; $594D: $01 $14 $73
    ld e, c                                       ; $5950: $59
    sub e                                         ; $5951: $93
    ld h, l                                       ; $5952: $65
    ld e, $40                                     ; $5953: $1E $40
    ld c, a                                       ; $5955: $4F
    ld h, [hl]                                    ; $5956: $66
    ret nz                                        ; $5957: $C0

    ld e, h                                       ; $5958: $5C
    ld hl, $3264                                  ; $5959: $21 $64 $32
    ld b, b                                       ; $595C: $40
    dec b                                         ; $595D: $05
    nop                                           ; $595E: $00
    add c                                         ; $595F: $81
    ld e, l                                       ; $5960: $5D
    dec b                                         ; $5961: $05
    dec b                                         ; $5962: $05

jr_014_5963:
    ld d, l                                       ; $5963: $55
    ret nc                                        ; $5964: $D0

    nop                                           ; $5965: $00
    jr nz, jr_014_5963                            ; $5966: $20 $FB

    ld d, b                                       ; $5968: $50
    ld [hl+], a                                   ; $5969: $22
    dec b                                         ; $596A: $05
    ld b, b                                       ; $596B: $40
    dec bc                                        ; $596C: $0B

jr_014_596D:
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    add d                                         ; $596F: $82
    sub h                                         ; $5970: $94
    ld hl, $9342                                  ; $5971: $21 $42 $93
    ld h, l                                       ; $5974: $65
    ld e, $40                                     ; $5975: $1E $40
    ld c, a                                       ; $5977: $4F
    ld h, [hl]                                    ; $5978: $66
    ret nz                                        ; $5979: $C0

    ld e, h                                       ; $597A: $5C
    ld hl, $3264                                  ; $597B: $21 $64 $32
    ld b, b                                       ; $597E: $40
    dec b                                         ; $597F: $05
    nop                                           ; $5980: $00
    ld l, e                                       ; $5981: $6B
    ld c, d                                       ; $5982: $4A
    rlca                                          ; $5983: $07
    db $10                                        ; $5984: $10
    rlca                                          ; $5985: $07
    pop de                                        ; $5986: $D1
    nop                                           ; $5987: $00
    inc d                                         ; $5988: $14
    ld a, [$2259]                                 ; $5989: $FA $59 $22
    dec b                                         ; $598C: $05
    ld b, b                                       ; $598D: $40
    dec b                                         ; $598E: $05
    ld [bc], a                                    ; $598F: $02
    ld l, e                                       ; $5990: $6B
    ld c, d                                       ; $5991: $4A

jr_014_5992:
    rlca                                          ; $5992: $07
    rlca                                          ; $5993: $07
    ld [hl], a                                    ; $5994: $77
    ret nc                                        ; $5995: $D0

    nop                                           ; $5996: $00
    inc d                                         ; $5997: $14
    ld c, c                                       ; $5998: $49
    ld e, d                                       ; $5999: $5A
    ld [hl+], a                                   ; $599A: $22
    dec b                                         ; $599B: $05

jr_014_599C:
    ld b, b                                       ; $599C: $40

jr_014_599D:
    dec b                                         ; $599D: $05
    inc bc                                        ; $599E: $03
    ld l, e                                       ; $599F: $6B
    ld c, d                                       ; $59A0: $4A
    dec b                                         ; $59A1: $05
    ld [$D085], sp                                ; $59A2: $08 $85 $D0
    jr nc, jr_014_59BB                            ; $59A5: $30 $14

    and c                                         ; $59A7: $A1
    ld e, d                                       ; $59A8: $5A
    ld [hl+], a                                   ; $59A9: $22
    dec b                                         ; $59AA: $05
    ld b, b                                       ; $59AB: $40
    dec b                                         ; $59AC: $05
    inc b                                         ; $59AD: $04
    ld l, e                                       ; $59AE: $6B
    ld c, d                                       ; $59AF: $4A

jr_014_59B0:
    add hl, bc                                    ; $59B0: $09
    ld [$D089], sp                                ; $59B1: $08 $89 $D0

jr_014_59B4:
    ld h, b                                       ; $59B4: $60
    inc d                                         ; $59B5: $14
    cp [hl]                                       ; $59B6: $BE
    ld e, d                                       ; $59B7: $5A
    ld [hl+], a                                   ; $59B8: $22
    dec b                                         ; $59B9: $05
    ld b, b                                       ; $59BA: $40

jr_014_59BB:
    ld l, e                                       ; $59BB: $6B
    jr nc, jr_014_59C8                            ; $59BC: $30 $0A

    ldh a, [$4E]                                  ; $59BE: $F0 $4E

jr_014_59C0:
    nop                                           ; $59C0: $00
    add b                                         ; $59C1: $80
    nop                                           ; $59C2: $00
    ld l, e                                       ; $59C3: $6B
    jr nc, jr_014_59D0                            ; $59C4: $30 $0A

    ret nc                                        ; $59C6: $D0

    ld [hl], c                                    ; $59C7: $71

jr_014_59C8:
    nop                                           ; $59C8: $00
    add e                                         ; $59C9: $83
    nop                                           ; $59CA: $00
    ld l, e                                       ; $59CB: $6B
    jr nc, jr_014_59D9                            ; $59CC: $30 $0B

    db $10                                        ; $59CE: $10
    ld l, d                                       ; $59CF: $6A

jr_014_59D0:
    nop                                           ; $59D0: $00
    add [hl]                                      ; $59D1: $86
    nop                                           ; $59D2: $00
    dec bc                                        ; $59D3: $0B
    nop                                           ; $59D4: $00
    dec bc                                        ; $59D5: $0B
    ld [bc], a                                    ; $59D6: $02

jr_014_59D7:
    dec bc                                        ; $59D7: $0B
    inc bc                                        ; $59D8: $03

jr_014_59D9:
    dec bc                                        ; $59D9: $0B
    inc b                                         ; $59DA: $04
    add d                                         ; $59DB: $82
    ld l, a                                       ; $59DC: $6F
    rrca                                          ; $59DD: $0F
    rst $38                                       ; $59DE: $FF
    ld a, a                                       ; $59DF: $7F
    sub h                                         ; $59E0: $94
    ld hl, $2076                                  ; $59E1: $21 $76 $20
    rrca                                          ; $59E4: $0F

jr_014_59E5:
    xor a                                         ; $59E5: $AF
    dec h                                         ; $59E6: $25
    and c                                         ; $59E7: $A1
    ld bc, $0160                                  ; $59E8: $01 $60 $01
    add e                                         ; $59EB: $83
    jr nz, jr_014_59EE                            ; $59EC: $20 $00

jr_014_59EE:
    rst $38                                       ; $59EE: $FF
    nop                                           ; $59EF: $00
    add e                                         ; $59F0: $83
    stop                                          ; $59F1: $10 $00
    cp $00                                        ; $59F3: $FE $00
    ld b, l                                       ; $59F5: $45
    ld d, $C8                                     ; $59F6: $16 $C8
    ld b, a                                       ; $59F8: $47
    ld b, d                                       ; $59F9: $42
    dec d                                         ; $59FA: $15
    jr nz, jr_014_59B0                            ; $59FB: $20 $B3

    ld c, a                                       ; $59FD: $4F
    ld b, b                                       ; $59FE: $40
    nop                                           ; $59FF: $00

jr_014_5A00:
    ld d, $20                                     ; $5A00: $16 $20
    or e                                          ; $5A02: $B3
    ld c, a                                       ; $5A03: $4F
    jr nc, jr_014_5A06                            ; $5A04: $30 $00

jr_014_5A06:
    rst $38                                       ; $5A06: $FF
    jr nz, jr_014_59B4                            ; $5A07: $20 $AB

    ld d, b                                       ; $5A09: $50
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    ld e, e                                       ; $5A0E: $5B
    inc d                                         ; $5A0F: $14
    rst $18                                       ; $5A10: $DF
    ld e, d                                       ; $5A11: $5A

jr_014_5A12:
    dec d                                         ; $5A12: $15
    jr nz, jr_014_59C0                            ; $5A13: $20 $AB

    ld d, b                                       ; $5A15: $50
    db $10                                        ; $5A16: $10
    jr nz, jr_014_5A00                            ; $5A17: $20 $E7

    ld d, b                                       ; $5A19: $50
    db $10                                        ; $5A1A: $10
    jr nz, jr_014_59C8                            ; $5A1B: $20 $AB

    ld d, b                                       ; $5A1D: $50
    db $10                                        ; $5A1E: $10
    jr nz, jr_014_5A12                            ; $5A1F: $20 $F1

    ld d, b                                       ; $5A21: $50
    stop                                          ; $5A22: $10 $00
    ld h, d                                       ; $5A24: $62
    ld bc, $005C                                  ; $5A25: $01 $5C $00
    ld [bc], a                                    ; $5A28: $02
    inc d                                         ; $5A29: $14
    jr nz, jr_014_59D7                            ; $5A2A: $20 $AB

    ld d, b                                       ; $5A2C: $50
    ld e, h                                       ; $5A2D: $5C
    ld bc, $1403                                  ; $5A2E: $01 $03 $14
    jr nz, @-$3F                                  ; $5A31: $20 $BF

    ld d, b                                       ; $5A33: $50
    ld e, h                                       ; $5A34: $5C
    ld [bc], a                                    ; $5A35: $02
    inc bc                                        ; $5A36: $03
    dec d                                         ; $5A37: $15
    jr nz, jr_014_59E5                            ; $5A38: $20 $AB

    ld d, b                                       ; $5A3A: $50
    ld [$C920], sp                                ; $5A3B: $08 $20 $C9
    ld d, b                                       ; $5A3E: $50
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    ld e, h                                       ; $5A41: $5C
    inc bc                                        ; $5A42: $03
    inc bc                                        ; $5A43: $03
    inc d                                         ; $5A44: $14
    jr nz, @-$53                                  ; $5A45: $20 $AB

    ld d, b                                       ; $5A47: $50
    ld b, d                                       ; $5A48: $42
    dec d                                         ; $5A49: $15
    ld c, $D9                                     ; $5A4A: $0E $D9
    ld h, b                                       ; $5A4C: $60
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    ld e, h                                       ; $5A4F: $5C
    nop                                           ; $5A50: $00
    ld [bc], a                                    ; $5A51: $02
    dec d                                         ; $5A52: $15
    ld c, $5F                                     ; $5A53: $0E $5F
    ld h, b                                       ; $5A55: $60
    db $10                                        ; $5A56: $10
    ld c, $D9                                     ; $5A57: $0E $D9
    ld h, b                                       ; $5A59: $60
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    ld e, e                                       ; $5A5C: $5B
    inc d                                         ; $5A5D: $14
    ld sp, hl                                     ; $5A5E: $F9
    ld e, d                                       ; $5A5F: $5A
    ld h, d                                       ; $5A60: $62
    ld [bc], a                                    ; $5A61: $02
    dec d                                         ; $5A62: $15
    ld c, $5F                                     ; $5A63: $0E $5F
    ld h, b                                       ; $5A65: $60
    ld [$0B0E], sp                                ; $5A66: $08 $0E $0B
    ld h, c                                       ; $5A69: $61
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    ld e, e                                       ; $5A6C: $5B
    inc d                                         ; $5A6D: $14
    ld l, c                                       ; $5A6E: $69
    ld e, e                                       ; $5A6F: $5B
    ld h, d                                       ; $5A70: $62
    inc bc                                        ; $5A71: $03
    dec d                                         ; $5A72: $15
    ld c, $4F                                     ; $5A73: $0E $4F
    ld h, b                                       ; $5A75: $60
    jr jr_014_5A86                                ; $5A76: $18 $0E

    reti                                          ; $5A78: $D9


    ld h, b                                       ; $5A79: $60
    nop                                           ; $5A7A: $00
    nop                                           ; $5A7B: $00
    ld e, h                                       ; $5A7C: $5C
    ld bc, $5C03                                  ; $5A7D: $01 $03 $5C
    inc bc                                        ; $5A80: $03
    inc bc                                        ; $5A81: $03
    dec d                                         ; $5A82: $15
    ld c, $5F                                     ; $5A83: $0E $5F
    ld h, b                                       ; $5A85: $60

jr_014_5A86:
    db $10                                        ; $5A86: $10
    ld c, $D9                                     ; $5A87: $0E $D9
    ld h, b                                       ; $5A89: $60
    nop                                           ; $5A8A: $00
    nop                                           ; $5A8B: $00
    ld e, e                                       ; $5A8C: $5B
    inc d                                         ; $5A8D: $14
    jr nz, jr_014_5AEC                            ; $5A8E: $20 $5C

    ld h, d                                       ; $5A90: $62
    ld b, $56                                     ; $5A91: $06 $56
    ld bc, $1040                                  ; $5A93: $01 $40 $10
    dec d                                         ; $5A96: $15
    ld c, $E3                                     ; $5A97: $0E $E3
    ld h, b                                       ; $5A99: $60
    ld [$CF0E], sp                                ; $5A9A: $08 $0E $CF
    ld h, b                                       ; $5A9D: $60
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    ld b, d                                       ; $5AA0: $42
    dec d                                         ; $5AA1: $15
    rrca                                          ; $5AA2: $0F
    and c                                         ; $5AA3: $A1
    ld d, [hl]                                    ; $5AA4: $56
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    ld e, h                                       ; $5AA7: $5C
    ld bc, $1503                                  ; $5AA8: $01 $03 $15
    rrca                                          ; $5AAB: $0F
    db $EB                                        ; $5AAC: $EB
    ld d, l                                       ; $5AAD: $55
    db $10                                        ; $5AAE: $10
    rrca                                          ; $5AAF: $0F
    ld a, c                                       ; $5AB0: $79
    ld d, [hl]                                    ; $5AB1: $56
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    ld e, e                                       ; $5AB4: $5B
    inc d                                         ; $5AB5: $14
    or e                                          ; $5AB6: $B3
    ld e, e                                       ; $5AB7: $5B
    ld h, d                                       ; $5AB8: $62
    inc b                                         ; $5AB9: $04
    ld e, h                                       ; $5ABA: $5C
    ld [bc], a                                    ; $5ABB: $02
    inc bc                                        ; $5ABC: $03
    ld b, d                                       ; $5ABD: $42
    dec d                                         ; $5ABE: $15
    rrca                                          ; $5ABF: $0F
    ld c, h                                       ; $5AC0: $4C
    ld l, l                                       ; $5AC1: $6D
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    ld e, h                                       ; $5AC4: $5C
    ld [bc], a                                    ; $5AC5: $02
    inc bc                                        ; $5AC6: $03
    dec d                                         ; $5AC7: $15
    rrca                                          ; $5AC8: $0F
    and b                                         ; $5AC9: $A0
    ld l, h                                       ; $5ACA: $6C
    db $10                                        ; $5ACB: $10
    rrca                                          ; $5ACC: $0F
    or b                                          ; $5ACD: $B0
    ld l, h                                       ; $5ACE: $6C
    db $10                                        ; $5ACF: $10
    rrca                                          ; $5AD0: $0F
    inc h                                         ; $5AD1: $24
    ld l, l                                       ; $5AD2: $6D
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    ld e, e                                       ; $5AD5: $5B
    inc d                                         ; $5AD6: $14
    ld [c], a                                     ; $5AD7: $E2
    ld e, e                                       ; $5AD8: $5B
    ld h, d                                       ; $5AD9: $62
    dec b                                         ; $5ADA: $05
    ld e, h                                       ; $5ADB: $5C
    inc bc                                        ; $5ADC: $03
    inc bc                                        ; $5ADD: $03
    ld b, d                                       ; $5ADE: $42
    sbc e                                         ; $5ADF: $9B
    ld a, b                                       ; $5AE0: $78
    ld [hl], b                                    ; $5AE1: $70
    sbc a                                         ; $5AE2: $9F
    ld d, a                                       ; $5AE3: $57
    ld l, b                                       ; $5AE4: $68
    ld h, c                                       ; $5AE5: $61
    ld [hl], h                                    ; $5AE6: $74
    daa                                           ; $5AE7: $27
    ld [hl], e                                    ; $5AE8: $73
    jr nz, jr_014_5B52                            ; $5AE9: $20 $67

    ld l, a                                       ; $5AEB: $6F

jr_014_5AEC:
    ld l, c                                       ; $5AEC: $69
    ld l, [hl]                                    ; $5AED: $6E
    ld h, a                                       ; $5AEE: $67
    rst $38                                       ; $5AEF: $FF
    ld l, a                                       ; $5AF0: $6F
    ld l, [hl]                                    ; $5AF1: $6E
    ccf                                           ; $5AF2: $3F
    cp $FD                                        ; $5AF3: $FE $FD
    sbc d                                         ; $5AF5: $9A
    ld e, b                                       ; $5AF6: $58
    ld bc, $9B42                                  ; $5AF7: $01 $42 $9B
    ld hl, sp+$4A                                 ; $5AFA: $F8 $4A
    sbc a                                         ; $5AFC: $9F
    ld c, c                                       ; $5AFD: $49
    jr nz, jr_014_5B73                            ; $5AFE: $20 $73

    ld h, l                                       ; $5B00: $65
    ld l, [hl]                                    ; $5B01: $6E
    ld [hl], e                                    ; $5B02: $73
    ld h, l                                       ; $5B03: $65
    ld h, h                                       ; $5B04: $64
    rst $38                                       ; $5B05: $FF
    ld b, c                                       ; $5B06: $41
    ld h, a                                       ; $5B07: $67
    ld [hl], d                                    ; $5B08: $72
    ld h, c                                       ; $5B09: $61
    ld l, l                                       ; $5B0A: $6D
    daa                                           ; $5B0B: $27
    ld [hl], e                                    ; $5B0C: $73
    jr nz, jr_014_5B73                            ; $5B0D: $20 $64

    ld h, l                                       ; $5B0F: $65
    ld h, [hl]                                    ; $5B10: $66
    ld h, l                                       ; $5B11: $65
    ld h, c                                       ; $5B12: $61
    ld [hl], h                                    ; $5B13: $74
    ld l, $FE                                     ; $5B14: $2E $FE
    ld e, c                                       ; $5B16: $59
    ld l, a                                       ; $5B17: $6F
    ld [hl], l                                    ; $5B18: $75
    jr nz, jr_014_5B83                            ; $5B19: $20 $68

    ld h, c                                       ; $5B1B: $61
    halt                                          ; $5B1C: $76
    ld h, l                                       ; $5B1D: $65
    jr nz, jr_014_5B84                            ; $5B1E: $20 $64

    ld l, a                                       ; $5B20: $6F
    ld l, [hl]                                    ; $5B21: $6E
    ld h, l                                       ; $5B22: $65
    rst $38                                       ; $5B23: $FF
    ld h, c                                       ; $5B24: $61
    jr nz, jr_014_5B9E                            ; $5B25: $20 $77

    ld l, a                                       ; $5B27: $6F
    ld l, [hl]                                    ; $5B28: $6E
    ld h, h                                       ; $5B29: $64
    ld h, l                                       ; $5B2A: $65
    ld [hl], d                                    ; $5B2B: $72
    ld h, [hl]                                    ; $5B2C: $66
    ld [hl], l                                    ; $5B2D: $75
    ld l, h                                       ; $5B2E: $6C
    cp $74                                        ; $5B2F: $FE $74
    ld l, b                                       ; $5B31: $68
    ld l, c                                       ; $5B32: $69
    ld l, [hl]                                    ; $5B33: $6E
    ld h, a                                       ; $5B34: $67
    inc l                                         ; $5B35: $2C
    jr nz, jr_014_5B83                            ; $5B36: $20 $4B

    ld a, c                                       ; $5B38: $79
    ld [hl], d                                    ; $5B39: $72
    ld l, a                                       ; $5B3A: $6F
    ld [hl], e                                    ; $5B3B: $73
    ld l, $FE                                     ; $5B3C: $2E $FE
    db $FD                                        ; $5B3E: $FD
    sbc e                                         ; $5B3F: $9B
    ld a, b                                       ; $5B40: $78
    ld [hl], b                                    ; $5B41: $70
    sbc a                                         ; $5B42: $9F
    ld c, e                                       ; $5B43: $4B
    ld a, c                                       ; $5B44: $79
    ld [hl], d                                    ; $5B45: $72
    ld l, a                                       ; $5B46: $6F
    ld [hl], e                                    ; $5B47: $73
    ccf                                           ; $5B48: $3F
    jr nz, jr_014_5B8D                            ; $5B49: $20 $42

    ld [hl], l                                    ; $5B4B: $75
    ld [hl], h                                    ; $5B4C: $74
    jr nz, @+$4B                                  ; $5B4D: $20 $49

    cp $74                                        ; $5B4F: $FE $74
    ld l, b                                       ; $5B51: $68

jr_014_5B52:
    ld l, a                                       ; $5B52: $6F
    ld [hl], l                                    ; $5B53: $75
    ld h, a                                       ; $5B54: $67
    ld l, b                                       ; $5B55: $68
    ld [hl], h                                    ; $5B56: $74
    jr nz, jr_014_5BD2                            ; $5B57: $20 $79

    ld l, a                                       ; $5B59: $6F
    ld [hl], l                                    ; $5B5A: $75
    rst $38                                       ; $5B5B: $FF
    ld [hl], e                                    ; $5B5C: $73
    ld h, c                                       ; $5B5D: $61
    ld l, c                                       ; $5B5E: $69
    ld h, h                                       ; $5B5F: $64
    ld l, $2E                                     ; $5B60: $2E $2E
    ld l, $FE                                     ; $5B62: $2E $FE
    db $FD                                        ; $5B64: $FD
    sbc d                                         ; $5B65: $9A
    ld e, b                                       ; $5B66: $58
    ld [bc], a                                    ; $5B67: $02
    ld b, d                                       ; $5B68: $42
    sbc e                                         ; $5B69: $9B
    ld hl, sp+$4A                                 ; $5B6A: $F8 $4A
    sbc a                                         ; $5B6C: $9F
    ld c, d                                       ; $5B6D: $4A
    ld [hl], l                                    ; $5B6E: $75
    ld [hl], e                                    ; $5B6F: $73
    ld [hl], h                                    ; $5B70: $74
    jr nz, jr_014_5BE3                            ; $5B71: $20 $70

jr_014_5B73:
    ld l, h                                       ; $5B73: $6C
    ld h, c                                       ; $5B74: $61
    ld a, c                                       ; $5B75: $79
    jr nz, jr_014_5BD9                            ; $5B76: $20 $61

    ld l, h                                       ; $5B78: $6C
    ld l, a                                       ; $5B79: $6F
    ld l, [hl]                                    ; $5B7A: $6E
    ld h, a                                       ; $5B7B: $67
    rst $38                                       ; $5B7C: $FF
    ld h, [hl]                                    ; $5B7D: $66
    ld l, a                                       ; $5B7E: $6F
    ld [hl], d                                    ; $5B7F: $72
    jr nz, @+$70                                  ; $5B80: $20 $6E

    ld l, a                                       ; $5B82: $6F

jr_014_5B83:
    ld [hl], a                                    ; $5B83: $77

jr_014_5B84:
    ld l, $FE                                     ; $5B84: $2E $FE
    ld b, l                                       ; $5B86: $45
    halt                                          ; $5B87: $76
    ld h, l                                       ; $5B88: $65
    ld [hl], d                                    ; $5B89: $72
    ld a, c                                       ; $5B8A: $79
    ld l, a                                       ; $5B8B: $6F
    ld l, [hl]                                    ; $5B8C: $6E

jr_014_5B8D:
    ld h, l                                       ; $5B8D: $65
    jr nz, jr_014_5BF8                            ; $5B8E: $20 $68

    ld h, c                                       ; $5B90: $61
    ld [hl], e                                    ; $5B91: $73
    rst $38                                       ; $5B92: $FF
    ld h, a                                       ; $5B93: $67
    ld l, a                                       ; $5B94: $6F
    ld l, a                                       ; $5B95: $6F
    ld h, h                                       ; $5B96: $64
    jr nz, jr_014_5C0B                            ; $5B97: $20 $72

    ld h, l                                       ; $5B99: $65
    ld h, c                                       ; $5B9A: $61
    ld [hl], e                                    ; $5B9B: $73
    ld l, a                                       ; $5B9C: $6F
    ld l, [hl]                                    ; $5B9D: $6E

jr_014_5B9E:
    jr nz, jr_014_5C14                            ; $5B9E: $20 $74

    ld l, a                                       ; $5BA0: $6F
    cp $62                                        ; $5BA1: $FE $62
    ld h, l                                       ; $5BA3: $65
    ld l, h                                       ; $5BA4: $6C
    ld l, c                                       ; $5BA5: $69
    ld h, l                                       ; $5BA6: $65
    halt                                          ; $5BA7: $76
    ld h, l                                       ; $5BA8: $65
    jr nz, jr_014_5C14                            ; $5BA9: $20 $69

    ld [hl], h                                    ; $5BAB: $74
    ld l, $FE                                     ; $5BAC: $2E $FE
    db $FD                                        ; $5BAE: $FD
    sbc d                                         ; $5BAF: $9A
    ld e, b                                       ; $5BB0: $58
    inc bc                                        ; $5BB1: $03
    ld b, d                                       ; $5BB2: $42
    sbc e                                         ; $5BB3: $9B
    adc b                                         ; $5BB4: $88
    ld h, l                                       ; $5BB5: $65
    sbc a                                         ; $5BB6: $9F
    ld d, e                                       ; $5BB7: $53
    ld l, c                                       ; $5BB8: $69
    ld l, [hl]                                    ; $5BB9: $6E
    ld h, e                                       ; $5BBA: $63
    ld h, l                                       ; $5BBB: $65
    jr nz, jr_014_5C37                            ; $5BBC: $20 $79

    ld l, a                                       ; $5BBE: $6F
    ld [hl], l                                    ; $5BBF: $75
    jr nz, @+$6A                                  ; $5BC0: $20 $68

    ld h, c                                       ; $5BC2: $61
    halt                                          ; $5BC3: $76
    ld h, l                                       ; $5BC4: $65
    rst $38                                       ; $5BC5: $FF
    ld h, h                                       ; $5BC6: $64
    ld l, a                                       ; $5BC7: $6F
    ld l, [hl]                                    ; $5BC8: $6E
    ld h, l                                       ; $5BC9: $65
    jr nz, jr_014_5C3F                            ; $5BCA: $20 $73

    ld l, a                                       ; $5BCC: $6F
    jr nz, @+$6F                                  ; $5BCD: $20 $6D

    ld [hl], l                                    ; $5BCF: $75
    ld h, e                                       ; $5BD0: $63
    ld l, b                                       ; $5BD1: $68

jr_014_5BD2:
    cp $66                                        ; $5BD2: $FE $66
    ld l, a                                       ; $5BD4: $6F
    ld [hl], d                                    ; $5BD5: $72
    jr nz, jr_014_5C4D                            ; $5BD6: $20 $75

    ld [hl], e                                    ; $5BD8: $73

jr_014_5BD9:
    ld l, $2E                                     ; $5BD9: $2E $2E
    ld l, $FE                                     ; $5BDB: $2E $FE
    db $FD                                        ; $5BDD: $FD
    sbc d                                         ; $5BDE: $9A
    ld e, b                                       ; $5BDF: $58
    inc b                                         ; $5BE0: $04
    ld b, d                                       ; $5BE1: $42
    sbc e                                         ; $5BE2: $9B

jr_014_5BE3:
    jr z, jr_014_5C5A                             ; $5BE3: $28 $75

    sbc a                                         ; $5BE5: $9F
    ld b, c                                       ; $5BE6: $41
    ld l, [hl]                                    ; $5BE7: $6E
    ld h, h                                       ; $5BE8: $64
    jr nz, jr_014_5C5E                            ; $5BE9: $20 $73

    ld l, c                                       ; $5BEB: $69
    ld l, [hl]                                    ; $5BEC: $6E
    ld h, e                                       ; $5BED: $63
    ld h, l                                       ; $5BEE: $65
    jr nz, jr_014_5C65                            ; $5BEF: $20 $74

    ld l, b                                       ; $5BF1: $68
    ld h, l                                       ; $5BF2: $65
    rst $38                                       ; $5BF3: $FF
    ld l, a                                       ; $5BF4: $6F
    ld [hl], h                                    ; $5BF5: $74
    ld l, b                                       ; $5BF6: $68
    ld h, l                                       ; $5BF7: $65

jr_014_5BF8:
    ld [hl], d                                    ; $5BF8: $72
    jr nz, jr_014_5C6A                            ; $5BF9: $20 $6F

    ld l, [hl]                                    ; $5BFB: $6E
    ld h, l                                       ; $5BFC: $65
    jr nz, jr_014_5C76                            ; $5BFD: $20 $77

    ld h, c                                       ; $5BFF: $61
    ld [hl], e                                    ; $5C00: $73
    cp $73                                        ; $5C01: $FE $73
    ld l, a                                       ; $5C03: $6F
    jr nz, @+$74                                  ; $5C04: $20 $72

    ld [hl], l                                    ; $5C06: $75
    ld h, h                                       ; $5C07: $64
    ld h, l                                       ; $5C08: $65
    ld l, h                                       ; $5C09: $6C
    ld a, c                                       ; $5C0A: $79

jr_014_5C0B:
    rst $38                                       ; $5C0B: $FF
    ld l, c                                       ; $5C0C: $69
    ld l, [hl]                                    ; $5C0D: $6E
    ld [hl], h                                    ; $5C0E: $74
    ld h, l                                       ; $5C0F: $65
    ld [hl], d                                    ; $5C10: $72
    ld [hl], d                                    ; $5C11: $72
    ld [hl], l                                    ; $5C12: $75
    ld [hl], b                                    ; $5C13: $70

jr_014_5C14:
    ld [hl], h                                    ; $5C14: $74
    ld h, l                                       ; $5C15: $65
    ld h, h                                       ; $5C16: $64
    ld l, $2E                                     ; $5C17: $2E $2E
    ld l, $FE                                     ; $5C19: $2E $FE
    db $FD                                        ; $5C1B: $FD
    sbc d                                         ; $5C1C: $9A
    ld e, b                                       ; $5C1D: $58
    dec b                                         ; $5C1E: $05
    ld b, d                                       ; $5C1F: $42
    sbc e                                         ; $5C20: $9B
    ld hl, sp+$4A                                 ; $5C21: $F8 $4A
    sbc a                                         ; $5C23: $9F
    ld d, a                                       ; $5C24: $57
    ld h, l                                       ; $5C25: $65
    daa                                           ; $5C26: $27
    ld [hl], d                                    ; $5C27: $72
    ld h, l                                       ; $5C28: $65
    jr nz, @+$6A                                  ; $5C29: $20 $68

    ld h, c                                       ; $5C2B: $61
    halt                                          ; $5C2C: $76
    ld l, c                                       ; $5C2D: $69
    ld l, [hl]                                    ; $5C2E: $6E
    ld h, a                                       ; $5C2F: $67
    rst $38                                       ; $5C30: $FF
    ld h, c                                       ; $5C31: $61
    jr nz, jr_014_5C9A                            ; $5C32: $20 $66

    ld h, c                                       ; $5C34: $61
    ld [hl], d                                    ; $5C35: $72
    ld h, l                                       ; $5C36: $65

jr_014_5C37:
    ld [hl], a                                    ; $5C37: $77
    ld h, l                                       ; $5C38: $65
    ld l, h                                       ; $5C39: $6C
    ld l, h                                       ; $5C3A: $6C
    cp $70                                        ; $5C3B: $FE $70
    ld h, c                                       ; $5C3D: $61
    ld [hl], d                                    ; $5C3E: $72

jr_014_5C3F:
    ld [hl], h                                    ; $5C3F: $74
    ld a, c                                       ; $5C40: $79
    jr nz, jr_014_5CA9                            ; $5C41: $20 $66

    ld l, a                                       ; $5C43: $6F
    ld [hl], d                                    ; $5C44: $72
    jr nz, jr_014_5CBB                            ; $5C45: $20 $74

    ld l, b                                       ; $5C47: $68
    ld h, l                                       ; $5C48: $65
    rst $38                                       ; $5C49: $FF
    ld b, a                                       ; $5C4A: $47
    ld [hl], d                                    ; $5C4B: $72
    ld h, l                                       ; $5C4C: $65

jr_014_5C4D:
    ld h, c                                       ; $5C4D: $61
    ld [hl], h                                    ; $5C4E: $74
    jr nz, jr_014_5C9E                            ; $5C4F: $20 $4D

    ld h, c                                       ; $5C51: $61
    ld h, a                                       ; $5C52: $67
    ld [hl], l                                    ; $5C53: $75
    ld [hl], e                                    ; $5C54: $73
    ld hl, $41FE                                  ; $5C55: $21 $FE $41
    jr nz, jr_014_5CD1                            ; $5C58: $20 $77

jr_014_5C5A:
    ld l, a                                       ; $5C5A: $6F
    ld l, [hl]                                    ; $5C5B: $6E
    ld h, h                                       ; $5C5C: $64
    ld h, l                                       ; $5C5D: $65

jr_014_5C5E:
    ld [hl], d                                    ; $5C5E: $72
    ld h, [hl]                                    ; $5C5F: $66
    ld [hl], l                                    ; $5C60: $75
    ld l, h                                       ; $5C61: $6C
    rst $38                                       ; $5C62: $FF
    ld h, e                                       ; $5C63: $63
    ld h, l                                       ; $5C64: $65

jr_014_5C65:
    ld l, h                                       ; $5C65: $6C
    ld h, l                                       ; $5C66: $65
    ld h, d                                       ; $5C67: $62
    ld [hl], d                                    ; $5C68: $72
    ld h, c                                       ; $5C69: $61

jr_014_5C6A:
    ld [hl], h                                    ; $5C6A: $74
    ld l, c                                       ; $5C6B: $69
    ld l, a                                       ; $5C6C: $6F
    ld l, [hl]                                    ; $5C6D: $6E
    cp $66                                        ; $5C6E: $FE $66
    ld l, a                                       ; $5C70: $6F
    ld [hl], d                                    ; $5C71: $72
    jr nz, @+$63                                  ; $5C72: $20 $61

    ld l, h                                       ; $5C74: $6C
    ld l, h                                       ; $5C75: $6C

jr_014_5C76:
    ld hl, $FDFE                                  ; $5C76: $21 $FE $FD
    sbc d                                         ; $5C79: $9A
    ld e, b                                       ; $5C7A: $58
    ld b, $42                                     ; $5C7B: $06 $42
    ld bc, $0D24                                  ; $5C7D: $01 $24 $0D
    ld b, l                                       ; $5C80: $45
    cpl                                           ; $5C81: $2F
    ld h, l                                       ; $5C82: $65
    ld b, c                                       ; $5C83: $41
    ld [bc], a                                    ; $5C84: $02
    dec e                                         ; $5C85: $1D
    nop                                           ; $5C86: $00
    ld c, $18                                     ; $5C87: $0E $18
    ld b, l                                       ; $5C89: $45
    inc d                                         ; $5C8A: $14
    db $DB                                        ; $5C8B: $DB
    ld e, a                                       ; $5C8C: $5F

    db $A4, $25, $A3, $01

    nop                                           ; $5C91: $00
    ld bc, $D2CE                                  ; $5C92: $01 $CE $D2
    sbc e                                         ; $5C95: $9B
    add hl, hl                                    ; $5C96: $29
    ld b, e                                       ; $5C97: $43
    sbc a                                         ; $5C98: $9F
    ld d, h                                       ; $5C99: $54

jr_014_5C9A:
    ld l, b                                       ; $5C9A: $68
    ld h, l                                       ; $5C9B: $65
    jr nz, jr_014_5D05                            ; $5C9C: $20 $67

jr_014_5C9E:
    ld l, h                                       ; $5C9E: $6C
    ld h, c                                       ; $5C9F: $61
    ld h, h                                       ; $5CA0: $64
    ld h, l                                       ; $5CA1: $65
    jr nz, @+$6B                                  ; $5CA2: $20 $69

    ld [hl], e                                    ; $5CA4: $73
    rst $38                                       ; $5CA5: $FF
    ld l, [hl]                                    ; $5CA6: $6E
    ld l, a                                       ; $5CA7: $6F
    ld [hl], h                                    ; $5CA8: $74

jr_014_5CA9:
    jr nz, jr_014_5D1E                            ; $5CA9: $20 $73

    ld h, c                                       ; $5CAB: $61
    ld h, [hl]                                    ; $5CAC: $66
    ld h, l                                       ; $5CAD: $65
    jr nz, jr_014_5D16                            ; $5CAE: $20 $66

    ld l, a                                       ; $5CB0: $6F
    ld [hl], d                                    ; $5CB1: $72
    cp $6B                                        ; $5CB2: $FE $6B
    ld l, c                                       ; $5CB4: $69
    ld h, h                                       ; $5CB5: $64
    ld [hl], e                                    ; $5CB6: $73
    ld l, $20                                     ; $5CB7: $2E $20
    ld b, d                                       ; $5CB9: $42
    ld h, l                                       ; $5CBA: $65

jr_014_5CBB:
    ld h, c                                       ; $5CBB: $61
    ld [hl], h                                    ; $5CBC: $74
    jr nz, jr_014_5D28                            ; $5CBD: $20 $69

    ld [hl], h                                    ; $5CBF: $74
    ld hl, $FDFE                                  ; $5CC0: $21 $FE $FD
    sbc d                                         ; $5CC3: $9A
    ld e, b                                       ; $5CC4: $58
    ld bc, $9B42                                  ; $5CC5: $01 $42 $9B
    add hl, hl                                    ; $5CC8: $29
    ld b, e                                       ; $5CC9: $43
    sbc a                                         ; $5CCA: $9F
    ld c, c                                       ; $5CCB: $49
    daa                                           ; $5CCC: $27
    halt                                          ; $5CCD: $76
    ld h, l                                       ; $5CCE: $65
    jr nz, jr_014_5D33                            ; $5CCF: $20 $62

jr_014_5CD1:
    ld h, l                                       ; $5CD1: $65
    ld h, l                                       ; $5CD2: $65
    ld l, [hl]                                    ; $5CD3: $6E
    jr nz, jr_014_5D4A                            ; $5CD4: $20 $74

    ld l, a                                       ; $5CD6: $6F
    ld l, h                                       ; $5CD7: $6C
    ld h, h                                       ; $5CD8: $64
    rst $38                                       ; $5CD9: $FF
    ld [hl], h                                    ; $5CDA: $74
    ld l, a                                       ; $5CDB: $6F
    jr nz, jr_014_5D4A                            ; $5CDC: $20 $6C

    ld h, l                                       ; $5CDE: $65
    ld [hl], h                                    ; $5CDF: $74
    jr nz, jr_014_5D5B                            ; $5CE0: $20 $79

    ld l, a                                       ; $5CE2: $6F
    ld [hl], l                                    ; $5CE3: $75
    jr nz, jr_014_5D56                            ; $5CE4: $20 $70

    ld h, c                                       ; $5CE6: $61
    ld [hl], e                                    ; $5CE7: $73
    ld [hl], e                                    ; $5CE8: $73
    cp $73                                        ; $5CE9: $FE $73
    ld l, a                                       ; $5CEB: $6F
    jr nz, jr_014_5D5F                            ; $5CEC: $20 $71

    ld [hl], l                                    ; $5CEE: $75
    ld l, c                                       ; $5CEF: $69
    ld [hl], h                                    ; $5CF0: $74
    jr nz, @+$76                                  ; $5CF1: $20 $74

    ld h, c                                       ; $5CF3: $61
    ld l, h                                       ; $5CF4: $6C
    ld l, e                                       ; $5CF5: $6B
    ld l, c                                       ; $5CF6: $69
    ld l, [hl]                                    ; $5CF7: $6E
    ld h, a                                       ; $5CF8: $67
    rst $38                                       ; $5CF9: $FF
    ld [hl], h                                    ; $5CFA: $74
    ld l, a                                       ; $5CFB: $6F
    jr nz, @+$6F                                  ; $5CFC: $20 $6D

    ld h, l                                       ; $5CFE: $65
    jr nz, @+$63                                  ; $5CFF: $20 $61

    ld l, [hl]                                    ; $5D01: $6E
    ld h, h                                       ; $5D02: $64
    jr nz, @+$69                                  ; $5D03: $20 $67

jr_014_5D05:
    ld l, a                                       ; $5D05: $6F
    ld hl, $FDFE                                  ; $5D06: $21 $FE $FD
    sbc d                                         ; $5D09: $9A
    ld e, b                                       ; $5D0A: $58
    ld bc, $9B42                                  ; $5D0B: $01 $42 $9B
    adc b                                         ; $5D0E: $88
    ld c, h                                       ; $5D0F: $4C
    sbc a                                         ; $5D10: $9F
    ld c, a                                       ; $5D11: $4F
    ld [hl], d                                    ; $5D12: $72
    ld [hl], a                                    ; $5D13: $77
    ld l, c                                       ; $5D14: $69
    ld l, [hl]                                    ; $5D15: $6E

jr_014_5D16:
    ccf                                           ; $5D16: $3F
    jr nz, @+$59                                  ; $5D17: $20 $57

    ld l, b                                       ; $5D19: $68
    ld h, l                                       ; $5D1A: $65
    ld [hl], d                                    ; $5D1B: $72
    ld h, l                                       ; $5D1C: $65
    rst $38                                       ; $5D1D: $FF

jr_014_5D1E:
    ld h, c                                       ; $5D1E: $61
    ld [hl], d                                    ; $5D1F: $72
    ld h, l                                       ; $5D20: $65
    jr nz, jr_014_5D9C                            ; $5D21: $20 $79

    ld l, a                                       ; $5D23: $6F
    ld l, a                                       ; $5D24: $6F
    ld l, a                                       ; $5D25: $6F
    ld l, a                                       ; $5D26: $6F
    ld [hl], l                                    ; $5D27: $75

jr_014_5D28:
    ccf                                           ; $5D28: $3F
    cp $FD                                        ; $5D29: $FE $FD
    sbc d                                         ; $5D2B: $9A
    ld e, b                                       ; $5D2C: $58
    ld bc, $9B42                                  ; $5D2D: $01 $42 $9B
    ret c                                         ; $5D30: $D8

    ld h, b                                       ; $5D31: $60
    sbc a                                         ; $5D32: $9F

jr_014_5D33:
    ld c, c                                       ; $5D33: $49
    jr nz, jr_014_5DAA                            ; $5D34: $20 $74

    ld l, b                                       ; $5D36: $68
    ld l, c                                       ; $5D37: $69
    ld l, [hl]                                    ; $5D38: $6E
    ld l, e                                       ; $5D39: $6B
    jr nz, jr_014_5D85                            ; $5D3A: $20 $49

    jr nz, @+$75                                  ; $5D3C: $20 $73

    ld h, c                                       ; $5D3E: $61
    ld [hl], a                                    ; $5D3F: $77
    rst $38                                       ; $5D40: $FF
    ld c, a                                       ; $5D41: $4F
    ld [hl], d                                    ; $5D42: $72
    ld [hl], a                                    ; $5D43: $77
    ld l, c                                       ; $5D44: $69
    ld l, [hl]                                    ; $5D45: $6E
    jr nz, jr_014_5DBA                            ; $5D46: $20 $72

    ld [hl], l                                    ; $5D48: $75
    ld l, [hl]                                    ; $5D49: $6E

jr_014_5D4A:
    cp $64                                        ; $5D4A: $FE $64
    ld l, a                                       ; $5D4C: $6F
    ld [hl], a                                    ; $5D4D: $77
    ld l, [hl]                                    ; $5D4E: $6E
    jr nz, jr_014_5DC5                            ; $5D4F: $20 $74

    ld l, b                                       ; $5D51: $68
    ld h, c                                       ; $5D52: $61
    ld [hl], h                                    ; $5D53: $74
    jr nz, jr_014_5DC6                            ; $5D54: $20 $70

jr_014_5D56:
    ld h, c                                       ; $5D56: $61
    ld [hl], h                                    ; $5D57: $74
    ld l, b                                       ; $5D58: $68
    ld l, $FE                                     ; $5D59: $2E $FE

jr_014_5D5B:
    db $FD                                        ; $5D5B: $FD
    sbc d                                         ; $5D5C: $9A
    ld e, b                                       ; $5D5D: $58
    db $01                                        ; $5D5E: $01

jr_014_5D5F:
    ld b, d                                       ; $5D5F: $42

    db $24, $1E, $93, $65, $2D, $40, $4F, $69, $48, $40, $66, $C0, $5C, $21, $43, $13
    db $04, $05, $03

    inc d                                         ; $5D73: $14
    reti                                          ; $5D74: $D9


    ld e, l                                       ; $5D75: $5D

    db $4B, $04, $14, $03, $00, $47, $5E

    rst $38                                       ; $5D7D: $FF
    ld h, h                                       ; $5D7E: $64

jr_014_5D7F:
    ccf                                           ; $5D7F: $3F
    ld b, b                                       ; $5D80: $40
    ld sp, $6214                                  ; $5D81: $31 $14 $62
    ld e, l                                       ; $5D84: $5D

jr_014_5D85:
    ld [hl+], a                                   ; $5D85: $22
    adc $40                                       ; $5D86: $CE $40
    dec b                                         ; $5D88: $05
    nop                                           ; $5D89: $00
    add c                                         ; $5D8A: $81
    ld e, l                                       ; $5D8B: $5D
    dec b                                         ; $5D8C: $05
    dec b                                         ; $5D8D: $05

jr_014_5D8E:
    sbc e                                         ; $5D8E: $9B
    ret nc                                        ; $5D8F: $D0

    nop                                           ; $5D90: $00
    jr nz, jr_014_5D8E                            ; $5D91: $20 $FB

    ld d, b                                       ; $5D93: $50
    ld [hl+], a                                   ; $5D94: $22
    dec b                                         ; $5D95: $05
    ld b, b                                       ; $5D96: $40
    dec b                                         ; $5D97: $05
    ld [bc], a                                    ; $5D98: $02
    db $ED                                        ; $5D99: $ED
    ld h, e                                       ; $5D9A: $63
    ld [bc], a                                    ; $5D9B: $02

jr_014_5D9C:
    inc d                                         ; $5D9C: $14
    ld e, d                                       ; $5D9D: $5A
    jp nc, $1034                                  ; $5D9E: $D2 $34 $10

    ldh a, [rRP]                                  ; $5DA1: $F0 $56
    inc d                                         ; $5DA3: $14
    pop de                                        ; $5DA4: $D1
    ld e, l                                       ; $5DA5: $5D
    dec b                                         ; $5DA6: $05
    jr nz, @-$30                                  ; $5DA7: $20 $CE

    ld h, e                                       ; $5DA9: $63

jr_014_5DAA:
    ld a, [bc]                                    ; $5DAA: $0A
    add hl, bc                                    ; $5DAB: $09
    jr jr_014_5D7F                                ; $5DAC: $18 $D1

    nop                                           ; $5DAE: $00
    ld [hl+], a                                   ; $5DAF: $22
    jp c, $1440                                   ; $5DB0: $DA $40 $14

    halt                                          ; $5DB3: $76
    ld b, b                                       ; $5DB4: $40
    dec bc                                        ; $5DB5: $0B
    jr nz, jr_014_5E23                            ; $5DB6: $20 $6B

    inc [hl]                                      ; $5DB8: $34
    dec c                                         ; $5DB9: $0D

jr_014_5DBA:
    jr nc, jr_014_5E26                            ; $5DBA: $30 $6A

    nop                                           ; $5DBC: $00
    add b                                         ; $5DBD: $80
    nop                                           ; $5DBE: $00
    ld l, e                                       ; $5DBF: $6B
    inc d                                         ; $5DC0: $14
    dec bc                                        ; $5DC1: $0B
    ldh [rLYC], a                                 ; $5DC2: $E0 $45
    ld b, b                                       ; $5DC4: $40

jr_014_5DC5:
    add e                                         ; $5DC5: $83

jr_014_5DC6:
    nop                                           ; $5DC6: $00
    dec bc                                        ; $5DC7: $0B
    nop                                           ; $5DC8: $00
    dec bc                                        ; $5DC9: $0B
    ld [bc], a                                    ; $5DCA: $02
    nop                                           ; $5DCB: $00
    add d                                         ; $5DCC: $82
    sub h                                         ; $5DCD: $94
    rra                                           ; $5DCE: $1F
    inc h                                         ; $5DCF: $24
    ld b, d                                       ; $5DD0: $42
    ld e, e                                       ; $5DD1: $5B
    inc d                                         ; $5DD2: $14
    rst $00                                       ; $5DD3: $C7
    ld e, h                                       ; $5DD4: $5C
    ld b, l                                       ; $5DD5: $45
    db $10                                        ; $5DD6: $10
    ld [hl+], a                                   ; $5DD7: $22
    ld d, a                                       ; $5DD8: $57
    ld h, h                                       ; $5DD9: $64
    ccf                                           ; $5DDA: $3F
    ld b, b                                       ; $5DDB: $40
    dec b                                         ; $5DDC: $05
    nop                                           ; $5DDD: $00
    ld l, e                                       ; $5DDE: $6B
    ld c, d                                       ; $5DDF: $4A
    dec b                                         ; $5DE0: $05
    dec b                                         ; $5DE1: $05
    sbc e                                         ; $5DE2: $9B
    ret nc                                        ; $5DE3: $D0

    nop                                           ; $5DE4: $00

jr_014_5DE5:
    inc d                                         ; $5DE5: $14
    dec d                                         ; $5DE6: $15
    ld e, [hl]                                    ; $5DE7: $5E
    ld [hl+], a                                   ; $5DE8: $22
    dec b                                         ; $5DE9: $05
    ld b, b                                       ; $5DEA: $40
    dec b                                         ; $5DEB: $05

jr_014_5DEC:
    ld [bc], a                                    ; $5DEC: $02
    ld l, e                                       ; $5DED: $6B
    ld c, d                                       ; $5DEE: $4A
    inc bc                                        ; $5DEF: $03
    inc de                                        ; $5DF0: $13
    dec a                                         ; $5DF1: $3D
    jp nc, $1400                                  ; $5DF2: $D2 $00 $14

    inc sp                                        ; $5DF5: $33
    ld e, [hl]                                    ; $5DF6: $5E
    ld [hl+], a                                   ; $5DF7: $22
    dec b                                         ; $5DF8: $05
    ld b, b                                       ; $5DF9: $40
    ld l, e                                       ; $5DFA: $6B
    inc d                                         ; $5DFB: $14
    dec bc                                        ; $5DFC: $0B
    ldh [rLYC], a                                 ; $5DFD: $E0 $45
    nop                                           ; $5DFF: $00
    add b                                         ; $5E00: $80
    nop                                           ; $5E01: $00
    dec bc                                        ; $5E02: $0B
    nop                                           ; $5E03: $00
    dec bc                                        ; $5E04: $0B

jr_014_5E05:
    ld [bc], a                                    ; $5E05: $02
    nop                                           ; $5E06: $00
    add d                                         ; $5E07: $82
    sub h                                         ; $5E08: $94
    rra                                           ; $5E09: $1F
    inc h                                         ; $5E0A: $24
    ld h, b                                       ; $5E0B: $60
    ld bc, $2401                                  ; $5E0C: $01 $01 $24
    dec c                                         ; $5E0F: $0D
    ld b, l                                       ; $5E10: $45
    cpl                                           ; $5E11: $2F
    ld h, l                                       ; $5E12: $65
    ld b, c                                       ; $5E13: $41
    ld b, d                                       ; $5E14: $42
    dec d                                         ; $5E15: $15

jr_014_5E16:
    jr nz, jr_014_5E05                            ; $5E16: $20 $ED

    ld c, a                                       ; $5E18: $4F
    db $10                                        ; $5E19: $10
    jr nz, jr_014_5DE5                            ; $5E1A: $20 $C9

    ld d, b                                       ; $5E1C: $50
    jr nz, jr_014_5E1F                            ; $5E1D: $20 $00

jr_014_5E1F:
    ld e, h                                       ; $5E1F: $5C
    nop                                           ; $5E20: $00
    ld [bc], a                                    ; $5E21: $02
    dec d                                         ; $5E22: $15

jr_014_5E23:
    jr nz, jr_014_5E16                            ; $5E23: $20 $F1

    ld d, b                                       ; $5E25: $50

jr_014_5E26:
    jr nz, @+$22                                  ; $5E26: $20 $20

    db $DD                                        ; $5E28: $DD
    ld c, a                                       ; $5E29: $4F
    db $10                                        ; $5E2A: $10
    jr nz, jr_014_5DEC                            ; $5E2B: $20 $BF

    ld d, b                                       ; $5E2D: $50
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    ld d, [hl]                                    ; $5E30: $56
    ld bc, $1542                                  ; $5E31: $01 $42 $15
    db $10                                        ; $5E34: $10
    ldh a, [rRP]                                  ; $5E35: $F0 $56
    db $10                                        ; $5E37: $10
    db $10                                        ; $5E38: $10
    ld c, $57                                     ; $5E39: $0E $57
    jr jr_014_5E3D                                ; $5E3B: $18 $00

jr_014_5E3D:
    ld e, e                                       ; $5E3D: $5B
    inc d                                         ; $5E3E: $14
    sub l                                         ; $5E3F: $95
    ld e, h                                       ; $5E40: $5C
    ld h, d                                       ; $5E41: $62
    ld bc, $005C                                  ; $5E42: $01 $5C $00
    ld [bc], a                                    ; $5E45: $02
    ld b, d                                       ; $5E46: $42

    db $64, $3F, $40, $31, $14, $62, $5D, $22, $CE, $40, $05, $00, $81, $5D, $05, $05
    db $9B, $D0, $00, $20, $FB, $50, $22, $05, $40, $05, $02, $ED, $63, $0F, $14, $67
    db $D2, $00, $14, $B3, $5E, $14, $E8, $5E, $05, $03, $ED, $63, $0F, $08, $FF, $D0
    db $30, $14, $F1, $5E, $14, $20, $5F, $05, $20, $CE, $63, $0A, $09, $76, $D0, $96
    db $22, $DA, $40, $14, $76, $40, $0B, $20, $6B, $34, $0D, $30, $6A, $60, $89, $00
    db $6B, $30, $0C, $30, $5D, $00, $80, $00, $6B, $30, $0B, $50, $54, $00, $83, $00
    db $0B, $00, $0B, $02, $0B, $03, $00, $82, $94, $1F, $26, $42, $15, $10, $12, $75
    db $3C, $00, $15, $10, $3A, $75, $03, $00, $15, $10, $08, $75, $03, $00, $15, $10
    db $44, $75, $03, $00, $15, $10, $1C, $75, $3C

    nop                                           ; $5ED0: $00
    dec d                                         ; $5ED1: $15
    db $10                                        ; $5ED2: $10
    ld b, h                                       ; $5ED3: $44
    ld [hl], l                                    ; $5ED4: $75
    inc bc                                        ; $5ED5: $03
    nop                                           ; $5ED6: $00
    dec d                                         ; $5ED7: $15
    db $10                                        ; $5ED8: $10
    ld [$0375], sp                                ; $5ED9: $08 $75 $03
    nop                                           ; $5EDC: $00
    dec d                                         ; $5EDD: $15
    db $10                                        ; $5EDE: $10
    ld a, [hl-]                                   ; $5EDF: $3A
    ld [hl], l                                    ; $5EE0: $75
    inc bc                                        ; $5EE1: $03
    nop                                           ; $5EE2: $00
    ld b, l                                       ; $5EE3: $45
    inc d                                         ; $5EE4: $14
    or e                                          ; $5EE5: $B3
    ld e, [hl]                                    ; $5EE6: $5E
    ld b, d                                       ; $5EE7: $42
    ld e, e                                       ; $5EE8: $5B
    inc d                                         ; $5EE9: $14
    dec c                                         ; $5EEA: $0D
    ld e, l                                       ; $5EEB: $5D
    ld b, l                                       ; $5EEC: $45
    db $10                                        ; $5EED: $10
    ld c, [hl]                                    ; $5EEE: $4E
    ld [hl], l                                    ; $5EEF: $75
    ld b, d                                       ; $5EF0: $42

    db $15, $10, $6F, $5C, $1E, $00, $15, $10, $F1, $5B, $18, $00, $15, $10, $65, $5C
    db $1E, $00, $15, $10, $6F, $5C, $1E

    nop                                           ; $5F08: $00
    dec d                                         ; $5F09: $15
    db $10                                        ; $5F0A: $10
    ld h, l                                       ; $5F0B: $65
    ld e, h                                       ; $5F0C: $5C
    ld e, $00                                     ; $5F0D: $1E $00
    dec d                                         ; $5F0F: $15
    db $10                                        ; $5F10: $10
    ld bc, $185C                                  ; $5F11: $01 $5C $18
    nop                                           ; $5F14: $00
    dec d                                         ; $5F15: $15
    db $10                                        ; $5F16: $10
    ld h, l                                       ; $5F17: $65
    ld e, h                                       ; $5F18: $5C
    ld e, $00                                     ; $5F19: $1E $00
    ld b, l                                       ; $5F1B: $45
    inc d                                         ; $5F1C: $14
    pop af                                        ; $5F1D: $F1
    ld e, [hl]                                    ; $5F1E: $5E
    ld b, d                                       ; $5F1F: $42
    ld e, e                                       ; $5F20: $5B
    inc d                                         ; $5F21: $14
    cpl                                           ; $5F22: $2F
    ld e, l                                       ; $5F23: $5D
    ld b, l                                       ; $5F24: $45
    db $10                                        ; $5F25: $10
    and c                                         ; $5F26: $A1
    ld e, h                                       ; $5F27: $5C
    ld b, d                                       ; $5F28: $42
    ld [bc], a                                    ; $5F29: $02
    nop                                           ; $5F2A: $00
    dec e                                         ; $5F2B: $1D
    jr jr_014_5F3C                                ; $5F2C: $18 $0E

    ld b, l                                       ; $5F2E: $45
    inc d                                         ; $5F2F: $14
    ld h, d                                       ; $5F30: $62
    ld e, l                                       ; $5F31: $5D
    ld [bc], a                                    ; $5F32: $02
    rrca                                          ; $5F33: $0F
    ld a, [bc]                                    ; $5F34: $0A
    nop                                           ; $5F35: $00
    dec e                                         ; $5F36: $1D
    ld b, l                                       ; $5F37: $45
    inc d                                         ; $5F38: $14
    and d                                         ; $5F39: $A2
    ld h, c                                       ; $5F3A: $61
    and h                                         ; $5F3B: $A4

jr_014_5F3C:
    ld h, $A3                                     ; $5F3C: $26 $A3
    inc b                                         ; $5F3E: $04
    ld [bc], a                                    ; $5F3F: $02
    ld c, $E7                                     ; $5F40: $0E $E7
    ret nc                                        ; $5F42: $D0

    sbc e                                         ; $5F43: $9B
    add hl, de                                    ; $5F44: $19
    ld c, [hl]                                    ; $5F45: $4E
    sbc a                                         ; $5F46: $9F
    ld c, c                                       ; $5F47: $49
    daa                                           ; $5F48: $27
    ld l, l                                       ; $5F49: $6D
    jr nz, jr_014_5FBF                            ; $5F4A: $20 $73

    ld [hl], l                                    ; $5F4C: $75
    ld [hl], d                                    ; $5F4D: $72
    ld h, l                                       ; $5F4E: $65
    jr nz, @+$51                                  ; $5F4F: $20 $4F

    ld [hl], d                                    ; $5F51: $72
    ld [hl], a                                    ; $5F52: $77
    ld l, c                                       ; $5F53: $69
    ld l, [hl]                                    ; $5F54: $6E
    rst $38                                       ; $5F55: $FF
    ld [hl], a                                    ; $5F56: $77
    ld h, l                                       ; $5F57: $65
    ld l, [hl]                                    ; $5F58: $6E
    ld [hl], h                                    ; $5F59: $74
    jr nz, jr_014_5FD0                            ; $5F5A: $20 $74

    ld l, b                                       ; $5F5C: $68
    ld l, c                                       ; $5F5D: $69
    ld [hl], e                                    ; $5F5E: $73
    jr nz, jr_014_5FD8                            ; $5F5F: $20 $77

    ld h, c                                       ; $5F61: $61
    ld a, c                                       ; $5F62: $79
    ld l, $FE                                     ; $5F63: $2E $FE
    ld c, c                                       ; $5F65: $49
    jr nz, jr_014_5FD0                            ; $5F66: $20 $68

    ld l, a                                       ; $5F68: $6F
    ld [hl], b                                    ; $5F69: $70
    ld h, l                                       ; $5F6A: $65
    jr nz, @+$6A                                  ; $5F6B: $20 $68

    ld h, l                                       ; $5F6D: $65
    daa                                           ; $5F6E: $27
    ld [hl], e                                    ; $5F6F: $73
    rst $38                                       ; $5F70: $FF
    ld h, c                                       ; $5F71: $61
    ld l, h                                       ; $5F72: $6C
    ld l, h                                       ; $5F73: $6C
    jr nz, jr_014_5FE8                            ; $5F74: $20 $72

    ld l, c                                       ; $5F76: $69
    ld h, a                                       ; $5F77: $67
    ld l, b                                       ; $5F78: $68
    ld [hl], h                                    ; $5F79: $74
    ld hl, $FDFE                                  ; $5F7A: $21 $FE $FD
    sbc d                                         ; $5F7D: $9A
    ld e, b                                       ; $5F7E: $58
    ld bc, $9B42                                  ; $5F7F: $01 $42 $9B
    ld c, b                                       ; $5F82: $48
    ld b, [hl]                                    ; $5F83: $46
    sbc a                                         ; $5F84: $9F
    ld c, c                                       ; $5F85: $49
    jr nz, @+$6E                                  ; $5F86: $20 $6C

    ld l, a                                       ; $5F88: $6F
    ld [hl], e                                    ; $5F89: $73
    ld [hl], h                                    ; $5F8A: $74
    jr nz, jr_014_6001                            ; $5F8B: $20 $74

    ld [hl], d                                    ; $5F8D: $72
    ld h, c                                       ; $5F8E: $61
    ld h, e                                       ; $5F8F: $63
    ld l, e                                       ; $5F90: $6B
    jr nz, jr_014_6002                            ; $5F91: $20 $6F

    ld h, [hl]                                    ; $5F93: $66
    rst $38                                       ; $5F94: $FF
    ld c, a                                       ; $5F95: $4F
    ld [hl], d                                    ; $5F96: $72
    ld [hl], a                                    ; $5F97: $77
    ld l, c                                       ; $5F98: $69
    ld l, [hl]                                    ; $5F99: $6E
    ld l, $20                                     ; $5F9A: $2E $20
    ld b, h                                       ; $5F9C: $44
    ld l, c                                       ; $5F9D: $69
    ld h, h                                       ; $5F9E: $64
    jr nz, jr_014_601A                            ; $5F9F: $20 $79

    ld l, a                                       ; $5FA1: $6F
    ld [hl], l                                    ; $5FA2: $75
    cp $73                                        ; $5FA3: $FE $73
    ld h, l                                       ; $5FA5: $65
    ld h, l                                       ; $5FA6: $65
    jr nz, jr_014_6020                            ; $5FA7: $20 $77

    ld l, b                                       ; $5FA9: $68
    ld h, l                                       ; $5FAA: $65
    ld [hl], d                                    ; $5FAB: $72
    ld h, l                                       ; $5FAC: $65
    jr nz, jr_014_6017                            ; $5FAD: $20 $68

    ld h, l                                       ; $5FAF: $65
    rst $38                                       ; $5FB0: $FF
    ld [hl], a                                    ; $5FB1: $77
    ld h, l                                       ; $5FB2: $65
    ld l, [hl]                                    ; $5FB3: $6E
    ld [hl], h                                    ; $5FB4: $74
    ccf                                           ; $5FB5: $3F
    cp $FD                                        ; $5FB6: $FE $FD
    sbc d                                         ; $5FB8: $9A
    ld e, b                                       ; $5FB9: $58
    ld bc, $9B42                                  ; $5FBA: $01 $42 $9B
    adc b                                         ; $5FBD: $88
    ld c, h                                       ; $5FBE: $4C

jr_014_5FBF:
    sbc a                                         ; $5FBF: $9F
    ld c, b                                       ; $5FC0: $48
    ld h, l                                       ; $5FC1: $65
    daa                                           ; $5FC2: $27
    ld [hl], e                                    ; $5FC3: $73
    jr nz, jr_014_6034                            ; $5FC4: $20 $6E

    ld l, a                                       ; $5FC6: $6F
    ld [hl], h                                    ; $5FC7: $74
    jr nz, jr_014_6039                            ; $5FC8: $20 $6F

    halt                                          ; $5FCA: $76
    ld h, l                                       ; $5FCB: $65
    ld [hl], d                                    ; $5FCC: $72
    rst $38                                       ; $5FCD: $FF
    ld l, b                                       ; $5FCE: $68
    ld h, l                                       ; $5FCF: $65

jr_014_5FD0:
    ld [hl], d                                    ; $5FD0: $72
    ld h, l                                       ; $5FD1: $65
    ld l, $2E                                     ; $5FD2: $2E $2E
    ld l, $FE                                     ; $5FD4: $2E $FE
    db $FD                                        ; $5FD6: $FD
    sbc d                                         ; $5FD7: $9A

jr_014_5FD8:
    ld e, b                                       ; $5FD8: $58

jr_014_5FD9:
    ld bc, $4B42                                  ; $5FD9: $01 $42 $4B
    inc b                                         ; $5FDC: $04
    inc d                                         ; $5FDD: $14
    inc bc                                        ; $5FDE: $03
    nop                                           ; $5FDF: $00
    dec a                                         ; $5FE0: $3D

jr_014_5FE1:
    ld h, b                                       ; $5FE1: $60
    rst $38                                       ; $5FE2: $FF
    sub e                                         ; $5FE3: $93
    ld h, l                                       ; $5FE4: $65
    inc a                                         ; $5FE5: $3C
    ld b, b                                       ; $5FE6: $40
    ld c, a                                       ; $5FE7: $4F

jr_014_5FE8:
    ld h, h                                       ; $5FE8: $64
    ld c, l                                       ; $5FE9: $4D
    ld b, b                                       ; $5FEA: $40
    ld l, c                                       ; $5FEB: $69
    ld d, [hl]                                    ; $5FEC: $56
    ld b, b                                       ; $5FED: $40
    ld sp, $2914                                  ; $5FEE: $31 $14 $29
    ld h, b                                       ; $5FF1: $60
    ld [hl+], a                                   ; $5FF2: $22
    adc $40                                       ; $5FF3: $CE $40
    ld h, [hl]                                    ; $5FF5: $66
    ret nz                                        ; $5FF6: $C0

    ld e, h                                       ; $5FF7: $5C
    ld hl, $0005                                  ; $5FF8: $21 $05 $00
    add c                                         ; $5FFB: $81
    ld e, l                                       ; $5FFC: $5D
    dec b                                         ; $5FFD: $05
    dec b                                         ; $5FFE: $05

jr_014_5FFF:
    sbc e                                         ; $5FFF: $9B
    ret nc                                        ; $6000: $D0

jr_014_6001:
    nop                                           ; $6001: $00

jr_014_6002:
    jr nz, jr_014_5FFF                            ; $6002: $20 $FB

    ld d, b                                       ; $6004: $50
    ld [hl+], a                                   ; $6005: $22
    dec b                                         ; $6006: $05
    ld b, b                                       ; $6007: $40
    dec b                                         ; $6008: $05
    jr nz, jr_014_5FD9                            ; $6009: $20 $CE

    ld h, e                                       ; $600B: $63
    ld a, [bc]                                    ; $600C: $0A
    add hl, bc                                    ; $600D: $09
    jr jr_014_5FE1                                ; $600E: $18 $D1

    nop                                           ; $6010: $00
    ld [hl+], a                                   ; $6011: $22
    jp c, $1440                                   ; $6012: $DA $40 $14

    halt                                          ; $6015: $76
    ld b, b                                       ; $6016: $40

jr_014_6017:
    dec bc                                        ; $6017: $0B
    jr nz, jr_014_6085                            ; $6018: $20 $6B

jr_014_601A:
    inc [hl]                                      ; $601A: $34
    dec c                                         ; $601B: $0D
    jr nc, jr_014_6088                            ; $601C: $30 $6A

    nop                                           ; $601E: $00
    add b                                         ; $601F: $80

jr_014_6020:
    nop                                           ; $6020: $00
    dec bc                                        ; $6021: $0B
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    add d                                         ; $6024: $82
    sub h                                         ; $6025: $94
    rra                                           ; $6026: $1F
    inc h                                         ; $6027: $24
    ld b, d                                       ; $6028: $42
    sub e                                         ; $6029: $93
    ld l, d                                       ; $602A: $6A
    ld e, $5C                                     ; $602B: $1E $5C
    ld a, h                                       ; $602D: $7C
    inc a                                         ; $602E: $3C
    ld c, a                                       ; $602F: $4F
    ld a, h                                       ; $6030: $7C
    ld b, e                                       ; $6031: $43
    rrca                                          ; $6032: $0F
    inc b                                         ; $6033: $04

jr_014_6034:
    dec b                                         ; $6034: $05
    inc bc                                        ; $6035: $03
    inc d                                         ; $6036: $14
    ld b, d                                       ; $6037: $42
    ld h, b                                       ; $6038: $60

jr_014_6039:
    ld b, l                                       ; $6039: $45
    inc d                                         ; $603A: $14
    add sp, $5F                                   ; $603B: $E8 $5F
    sub e                                         ; $603D: $93
    ld h, l                                       ; $603E: $65
    inc a                                         ; $603F: $3C
    ld b, b                                       ; $6040: $40
    ld c, a                                       ; $6041: $4F
    ld h, h                                       ; $6042: $64
    ld c, l                                       ; $6043: $4D
    ld b, b                                       ; $6044: $40
    ld h, [hl]                                    ; $6045: $66
    ret nz                                        ; $6046: $C0

    ld e, h                                       ; $6047: $5C
    ld hl, $1431                                  ; $6048: $21 $31 $14
    add hl, hl                                    ; $604B: $29
    ld h, b                                       ; $604C: $60
    ld [hl+], a                                   ; $604D: $22
    adc $40                                       ; $604E: $CE $40
    dec b                                         ; $6050: $05
    nop                                           ; $6051: $00
    add c                                         ; $6052: $81
    ld e, l                                       ; $6053: $5D
    dec b                                         ; $6054: $05
    dec b                                         ; $6055: $05

jr_014_6056:
    sbc e                                         ; $6056: $9B
    ret nc                                        ; $6057: $D0

    nop                                           ; $6058: $00
    jr nz, jr_014_6056                            ; $6059: $20 $FB

    ld d, b                                       ; $605B: $50
    ld [hl+], a                                   ; $605C: $22

jr_014_605D:
    dec b                                         ; $605D: $05
    ld b, b                                       ; $605E: $40
    dec b                                         ; $605F: $05
    ld [bc], a                                    ; $6060: $02
    db $ED                                        ; $6061: $ED
    ld h, e                                       ; $6062: $63
    inc de                                        ; $6063: $13
    dec b                                         ; $6064: $05
    xor c                                         ; $6065: $A9
    ret nc                                        ; $6066: $D0

    nop                                           ; $6067: $00
    inc d                                         ; $6068: $14
    bit 4, b                                      ; $6069: $CB $60
    inc d                                         ; $606B: $14
    and $60                                       ; $606C: $E6 $60
    dec b                                         ; $606E: $05
    inc bc                                        ; $606F: $03
    db $ED                                        ; $6070: $ED
    ld h, e                                       ; $6071: $63
    inc b                                         ; $6072: $04
    inc d                                         ; $6073: $14
    ld e, h                                       ; $6074: $5C
    jp nc, $1430                                  ; $6075: $D2 $30 $14

    rst $28                                       ; $6078: $EF
    ld h, b                                       ; $6079: $60
    inc d                                         ; $607A: $14
    nop                                           ; $607B: $00
    ld h, c                                       ; $607C: $61
    dec b                                         ; $607D: $05
    inc b                                         ; $607E: $04
    db $ED                                        ; $607F: $ED
    ld h, e                                       ; $6080: $63
    inc d                                         ; $6081: $14
    rla                                           ; $6082: $17
    add $D2                                       ; $6083: $C6 $D2

jr_014_6085:
    ld h, b                                       ; $6085: $60
    inc d                                         ; $6086: $14
    add hl, bc                                    ; $6087: $09

jr_014_6088:
    ld h, c                                       ; $6088: $61
    inc d                                         ; $6089: $14
    ld h, $61                                     ; $608A: $26 $61
    dec b                                         ; $608C: $05
    jr nz, jr_014_605D                            ; $608D: $20 $CE

    ld h, e                                       ; $608F: $63
    ld a, [bc]                                    ; $6090: $0A
    add hl, bc                                    ; $6091: $09
    halt                                          ; $6092: $76
    ret nc                                        ; $6093: $D0

    sub [hl]                                      ; $6094: $96
    ld [hl+], a                                   ; $6095: $22
    jp c, $1440                                   ; $6096: $DA $40 $14

    halt                                          ; $6099: $76
    ld b, b                                       ; $609A: $40
    dec bc                                        ; $609B: $0B
    jr nz, jr_014_6109                            ; $609C: $20 $6B

    inc [hl]                                      ; $609E: $34
    dec c                                         ; $609F: $0D
    jr nc, jr_014_610C                            ; $60A0: $30 $6A

    ld h, b                                       ; $60A2: $60
    adc c                                         ; $60A3: $89
    nop                                           ; $60A4: $00
    ld l, e                                       ; $60A5: $6B
    jr nc, jr_014_60B3                            ; $60A6: $30 $0B

    ret nc                                        ; $60A8: $D0

    ld c, c                                       ; $60A9: $49
    nop                                           ; $60AA: $00
    add b                                         ; $60AB: $80
    nop                                           ; $60AC: $00
    ld l, e                                       ; $60AD: $6B
    jr nc, jr_014_60BA                            ; $60AE: $30 $0A

    or b                                          ; $60B0: $B0
    ld c, b                                       ; $60B1: $48
    nop                                           ; $60B2: $00

jr_014_60B3:
    add e                                         ; $60B3: $83
    nop                                           ; $60B4: $00
    ld l, e                                       ; $60B5: $6B
    jr nc, jr_014_60C4                            ; $60B6: $30 $0C

    jr nc, @+$5C                                  ; $60B8: $30 $5A

jr_014_60BA:
    nop                                           ; $60BA: $00
    add [hl]                                      ; $60BB: $86
    nop                                           ; $60BC: $00
    dec bc                                        ; $60BD: $0B
    nop                                           ; $60BE: $00
    dec bc                                        ; $60BF: $0B
    ld [bc], a                                    ; $60C0: $02
    dec bc                                        ; $60C1: $0B
    inc bc                                        ; $60C2: $03
    dec bc                                        ; $60C3: $0B

jr_014_60C4:
    inc b                                         ; $60C4: $04
    nop                                           ; $60C5: $00
    add d                                         ; $60C6: $82
    rra                                           ; $60C7: $1F
    ld h, $94                                     ; $60C8: $26 $94
    ld b, d                                       ; $60CA: $42
    dec d                                         ; $60CB: $15
    ld de, $470C                                  ; $60CC: $11 $0C $47
    db $10                                        ; $60CF: $10
    ld de, $47A0                                  ; $60D0: $11 $A0 $47
    ld h, h                                       ; $60D3: $64
    ld de, $471C                                  ; $60D4: $11 $1C $47
    db $10                                        ; $60D7: $10
    ld de, $47A0                                  ; $60D8: $11 $A0 $47
    ld h, h                                       ; $60DB: $64
    ld de, $47AA                                  ; $60DC: $11 $AA $47
    ld h, h                                       ; $60DF: $64
    nop                                           ; $60E0: $00
    ld b, l                                       ; $60E1: $45
    inc d                                         ; $60E2: $14
    bit 4, b                                      ; $60E3: $CB $60
    ld b, d                                       ; $60E5: $42
    ld e, e                                       ; $60E6: $5B
    inc d                                         ; $60E7: $14
    ld b, e                                       ; $60E8: $43
    ld e, a                                       ; $60E9: $5F
    ld b, l                                       ; $60EA: $45
    ld de, $47DC                                  ; $60EB: $11 $DC $47
    ld b, d                                       ; $60EE: $42
    dec d                                         ; $60EF: $15
    ld c, $04                                     ; $60F0: $0E $04
    ld d, h                                       ; $60F2: $54
    ld b, [hl]                                    ; $60F3: $46
    nop                                           ; $60F4: $00
    dec d                                         ; $60F5: $15
    ld c, $0E                                     ; $60F6: $0E $0E
    ld d, h                                       ; $60F8: $54
    ld b, [hl]                                    ; $60F9: $46
    nop                                           ; $60FA: $00
    ld b, l                                       ; $60FB: $45
    inc d                                         ; $60FC: $14
    rst $28                                       ; $60FD: $EF
    ld h, b                                       ; $60FE: $60
    ld b, d                                       ; $60FF: $42
    ld e, e                                       ; $6100: $5B
    inc d                                         ; $6101: $14
    add c                                         ; $6102: $81
    ld e, a                                       ; $6103: $5F
    ld b, l                                       ; $6104: $45
    ld c, $35                                     ; $6105: $0E $35
    ld d, l                                       ; $6107: $55
    ld b, d                                       ; $6108: $42

jr_014_6109:
    dec d                                         ; $6109: $15
    db $10                                        ; $610A: $10
    and a                                         ; $610B: $A7

jr_014_610C:
    ld [hl], d                                    ; $610C: $72
    ld a, [bc]                                    ; $610D: $0A
    nop                                           ; $610E: $00
    dec d                                         ; $610F: $15
    db $10                                        ; $6110: $10
    ld b, e                                       ; $6111: $43
    ld [hl], d                                    ; $6112: $72
    jr jr_014_6115                                ; $6113: $18 $00

jr_014_6115:
    dec d                                         ; $6115: $15
    db $10                                        ; $6116: $10
    or c                                          ; $6117: $B1
    ld [hl], d                                    ; $6118: $72
    ld a, [bc]                                    ; $6119: $0A
    nop                                           ; $611A: $00
    dec d                                         ; $611B: $15
    db $10                                        ; $611C: $10
    inc sp                                        ; $611D: $33
    ld [hl], d                                    ; $611E: $72
    jr jr_014_6121                                ; $611F: $18 $00

jr_014_6121:
    ld b, l                                       ; $6121: $45
    inc d                                         ; $6122: $14
    add hl, bc                                    ; $6123: $09
    ld h, c                                       ; $6124: $61
    ld b, d                                       ; $6125: $42
    ld e, e                                       ; $6126: $5B
    inc d                                         ; $6127: $14
    cp h                                          ; $6128: $BC
    ld e, a                                       ; $6129: $5F
    ld b, l                                       ; $612A: $45
    db $10                                        ; $612B: $10
    db $E3                                        ; $612C: $E3
    ld [hl], d                                    ; $612D: $72
    ld b, d                                       ; $612E: $42
    ld [bc], a                                    ; $612F: $02
    ld a, [bc]                                    ; $6130: $0A
    rrca                                          ; $6131: $0F
    dec e                                         ; $6132: $1D
    nop                                           ; $6133: $00
    ld b, l                                       ; $6134: $45
    inc d                                         ; $6135: $14
    db $DB                                        ; $6136: $DB
    ld e, a                                       ; $6137: $5F
    ld [bc], a                                    ; $6138: $02
    nop                                           ; $6139: $00
    ld sp, $2D09                                  ; $613A: $31 $09 $2D
    ld b, l                                       ; $613D: $45
    inc d                                         ; $613E: $14
    dec bc                                        ; $613F: $0B
    ld h, e                                       ; $6140: $63
    ld [bc], a                                    ; $6141: $02
    inc de                                        ; $6142: $13
    inc bc                                        ; $6143: $03
    nop                                           ; $6144: $00
    inc de                                        ; $6145: $13
    ld b, l                                       ; $6146: $45
    inc d                                         ; $6147: $14
    ei                                            ; $6148: $FB
    ld h, e                                       ; $6149: $63
    sbc e                                         ; $614A: $9B
    add hl, hl                                    ; $614B: $29
    ld b, e                                       ; $614C: $43
    sbc a                                         ; $614D: $9F
    ld b, d                                       ; $614E: $42
    ld h, l                                       ; $614F: $65
    jr nz, jr_014_61B5                            ; $6150: $20 $63

    ld h, c                                       ; $6152: $61
    ld [hl], d                                    ; $6153: $72
    ld h, l                                       ; $6154: $65
    ld h, [hl]                                    ; $6155: $66
    ld [hl], l                                    ; $6156: $75
    ld l, h                                       ; $6157: $6C
    jr nz, jr_014_61C3                            ; $6158: $20 $69

    ld l, [hl]                                    ; $615A: $6E
    rst $38                                       ; $615B: $FF
    ld l, b                                       ; $615C: $68
    ld h, l                                       ; $615D: $65
    ld [hl], d                                    ; $615E: $72
    ld h, l                                       ; $615F: $65
    ld hl, $4920                                  ; $6160: $21 $20 $49
    ld [hl], h                                    ; $6163: $74
    daa                                           ; $6164: $27
    ld [hl], e                                    ; $6165: $73
    cp $64                                        ; $6166: $FE $64
    ld h, c                                       ; $6168: $61
    ld l, [hl]                                    ; $6169: $6E
    ld h, a                                       ; $616A: $67
    ld h, l                                       ; $616B: $65
    ld [hl], d                                    ; $616C: $72
    ld l, a                                       ; $616D: $6F
    ld [hl], l                                    ; $616E: $75
    ld [hl], e                                    ; $616F: $73
    ld l, $2E                                     ; $6170: $2E $2E
    ld l, $FE                                     ; $6172: $2E $FE
    db $FD                                        ; $6174: $FD
    sbc d                                         ; $6175: $9A
    ld e, b                                       ; $6176: $58
    ld bc, $9B42                                  ; $6177: $01 $42 $9B
    add hl, de                                    ; $617A: $19
    ld c, [hl]                                    ; $617B: $4E
    sbc a                                         ; $617C: $9F
    ld c, c                                       ; $617D: $49
    jr nz, jr_014_61F4                            ; $617E: $20 $74

    ld l, b                                       ; $6180: $68
    ld l, c                                       ; $6181: $69
    ld l, [hl]                                    ; $6182: $6E
    ld l, e                                       ; $6183: $6B
    jr nz, jr_014_61D5                            ; $6184: $20 $4F

    ld [hl], d                                    ; $6186: $72
    ld [hl], a                                    ; $6187: $77
    ld l, c                                       ; $6188: $69
    ld l, [hl]                                    ; $6189: $6E
    rst $38                                       ; $618A: $FF
    ld [hl], a                                    ; $618B: $77
    ld h, l                                       ; $618C: $65
    ld l, [hl]                                    ; $618D: $6E
    ld [hl], h                                    ; $618E: $74
    jr nz, jr_014_6206                            ; $618F: $20 $75

    ld [hl], b                                    ; $6191: $70
    jr nz, jr_014_6208                            ; $6192: $20 $74

    ld l, b                                       ; $6194: $68
    ld h, c                                       ; $6195: $61
    ld [hl], h                                    ; $6196: $74
    cp $77                                        ; $6197: $FE $77
    ld h, c                                       ; $6199: $61
    ld a, c                                       ; $619A: $79
    ld l, $FE                                     ; $619B: $2E $FE

jr_014_619D:
    db $FD                                        ; $619D: $FD
    sbc d                                         ; $619E: $9A
    ld e, b                                       ; $619F: $58
    ld bc, $4B42                                  ; $61A0: $01 $42 $4B
    inc b                                         ; $61A3: $04
    inc d                                         ; $61A4: $14

jr_014_61A5:
    inc bc                                        ; $61A5: $03
    nop                                           ; $61A6: $00
    db $ED                                        ; $61A7: $ED
    ld h, c                                       ; $61A8: $61
    rst $38                                       ; $61A9: $FF
    sub e                                         ; $61AA: $93
    ld h, l                                       ; $61AB: $65
    ld c, e                                       ; $61AC: $4B
    ld b, b                                       ; $61AD: $40
    ld c, a                                       ; $61AE: $4F
    ld h, h                                       ; $61AF: $64
    ld e, e                                       ; $61B0: $5B
    ld b, b                                       ; $61B1: $40
    ld sp, $A214                                  ; $61B2: $31 $14 $A2

jr_014_61B5:
    ld h, c                                       ; $61B5: $61
    ld [hl+], a                                   ; $61B6: $22
    adc $40                                       ; $61B7: $CE $40
    ld h, [hl]                                    ; $61B9: $66
    ret nz                                        ; $61BA: $C0

    ld e, h                                       ; $61BB: $5C
    ld hl, $0005                                  ; $61BC: $21 $05 $00
    add c                                         ; $61BF: $81
    ld e, l                                       ; $61C0: $5D
    dec b                                         ; $61C1: $05
    dec b                                         ; $61C2: $05

jr_014_61C3:
    sbc e                                         ; $61C3: $9B
    ret nc                                        ; $61C4: $D0

    nop                                           ; $61C5: $00
    jr nz, jr_014_61C3                            ; $61C6: $20 $FB

    ld d, b                                       ; $61C8: $50
    ld [hl+], a                                   ; $61C9: $22
    dec b                                         ; $61CA: $05
    ld b, b                                       ; $61CB: $40
    dec b                                         ; $61CC: $05
    jr nz, jr_014_619D                            ; $61CD: $20 $CE

    ld h, e                                       ; $61CF: $63
    ld a, [bc]                                    ; $61D0: $0A
    add hl, bc                                    ; $61D1: $09
    jr jr_014_61A5                                ; $61D2: $18 $D1

    nop                                           ; $61D4: $00

jr_014_61D5:
    ld [hl+], a                                   ; $61D5: $22
    jp c, $1440                                   ; $61D6: $DA $40 $14

    halt                                          ; $61D9: $76
    ld b, b                                       ; $61DA: $40
    dec bc                                        ; $61DB: $0B
    jr nz, jr_014_6249                            ; $61DC: $20 $6B

    inc [hl]                                      ; $61DE: $34
    dec c                                         ; $61DF: $0D
    jr nc, jr_014_624C                            ; $61E0: $30 $6A

    nop                                           ; $61E2: $00
    add b                                         ; $61E3: $80
    nop                                           ; $61E4: $00
    dec bc                                        ; $61E5: $0B
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    add d                                         ; $61E8: $82
    rra                                           ; $61E9: $1F
    inc h                                         ; $61EA: $24
    sub h                                         ; $61EB: $94
    ld b, d                                       ; $61EC: $42
    sub e                                         ; $61ED: $93
    ld h, l                                       ; $61EE: $65
    ld c, e                                       ; $61EF: $4B

jr_014_61F0:
    ld b, b                                       ; $61F0: $40
    ld c, a                                       ; $61F1: $4F
    ld h, h                                       ; $61F2: $64
    ld e, e                                       ; $61F3: $5B

jr_014_61F4:
    ld b, b                                       ; $61F4: $40
    ld sp, $A214                                  ; $61F5: $31 $14 $A2
    ld h, c                                       ; $61F8: $61
    ld [hl+], a                                   ; $61F9: $22
    adc $40                                       ; $61FA: $CE $40
    ld h, [hl]                                    ; $61FC: $66
    ret nz                                        ; $61FD: $C0

jr_014_61FE:
    ld e, h                                       ; $61FE: $5C
    ld hl, $0005                                  ; $61FF: $21 $05 $00
    add c                                         ; $6202: $81
    ld e, l                                       ; $6203: $5D
    dec b                                         ; $6204: $05
    dec b                                         ; $6205: $05

jr_014_6206:
    sbc e                                         ; $6206: $9B
    ret nc                                        ; $6207: $D0

jr_014_6208:
    nop                                           ; $6208: $00
    jr nz, jr_014_6206                            ; $6209: $20 $FB

    ld d, b                                       ; $620B: $50
    ld [hl+], a                                   ; $620C: $22
    dec b                                         ; $620D: $05
    ld b, b                                       ; $620E: $40
    dec b                                         ; $620F: $05
    ld [bc], a                                    ; $6210: $02
    db $ED                                        ; $6211: $ED
    ld h, e                                       ; $6212: $63
    ld a, [bc]                                    ; $6213: $0A
    jr jr_014_61F0                                ; $6214: $18 $DA

    jp nc, $1400                                  ; $6216: $D2 $00 $14

    ld h, d                                       ; $6219: $62
    ld h, d                                       ; $621A: $62
    inc d                                         ; $621B: $14
    ld [hl], d                                    ; $621C: $72
    ld h, d                                       ; $621D: $62
    dec b                                         ; $621E: $05
    inc bc                                        ; $621F: $03
    db $ED                                        ; $6220: $ED
    ld h, e                                       ; $6221: $63
    inc de                                        ; $6222: $13
    rlca                                          ; $6223: $07
    push hl                                       ; $6224: $E5
    ret nc                                        ; $6225: $D0

    jr nc, jr_014_623C                            ; $6226: $30 $14

    ld a, e                                       ; $6228: $7B
    ld h, d                                       ; $6229: $62
    inc d                                         ; $622A: $14
    sbc b                                         ; $622B: $98
    ld h, d                                       ; $622C: $62
    dec b                                         ; $622D: $05
    jr nz, jr_014_61FE                            ; $622E: $20 $CE

    ld h, e                                       ; $6230: $63
    ld a, [bc]                                    ; $6231: $0A
    add hl, bc                                    ; $6232: $09
    call z, $96D1                                 ; $6233: $CC $D1 $96
    ld [hl+], a                                   ; $6236: $22
    jp c, $1440                                   ; $6237: $DA $40 $14

    halt                                          ; $623A: $76
    ld b, b                                       ; $623B: $40

jr_014_623C:
    dec bc                                        ; $623C: $0B
    jr nz, @+$6D                                  ; $623D: $20 $6B

    inc [hl]                                      ; $623F: $34
    dec c                                         ; $6240: $0D
    jr nc, jr_014_62AD                            ; $6241: $30 $6A

    ld h, b                                       ; $6243: $60
    adc c                                         ; $6244: $89
    nop                                           ; $6245: $00
    ld l, e                                       ; $6246: $6B
    jr nc, jr_014_6254                            ; $6247: $30 $0B

jr_014_6249:
    ldh [rLYC], a                                 ; $6249: $E0 $45
    nop                                           ; $624B: $00

jr_014_624C:
    add b                                         ; $624C: $80
    nop                                           ; $624D: $00
    ld l, e                                       ; $624E: $6B
    dec hl                                        ; $624F: $2B
    dec bc                                        ; $6250: $0B
    jr nz, jr_014_629A                            ; $6251: $20 $47

    nop                                           ; $6253: $00

jr_014_6254:
    add e                                         ; $6254: $83
    nop                                           ; $6255: $00
    dec bc                                        ; $6256: $0B
    nop                                           ; $6257: $00

Call_014_6258:
    dec bc                                        ; $6258: $0B
    ld [bc], a                                    ; $6259: $02
    dec bc                                        ; $625A: $0B
    inc bc                                        ; $625B: $03
    nop                                           ; $625C: $00
    add d                                         ; $625D: $82
    rra                                           ; $625E: $1F
    ld h, $94                                     ; $625F: $26 $94
    ld b, d                                       ; $6261: $42
    dec d                                         ; $6262: $15
    db $10                                        ; $6263: $10
    ld c, $57                                     ; $6264: $0E $57
    dec l                                         ; $6266: $2D
    nop                                           ; $6267: $00
    dec d                                         ; $6268: $15
    db $10                                        ; $6269: $10
    jr jr_014_62C3                                ; $626A: $18 $57

    dec l                                         ; $626C: $2D
    nop                                           ; $626D: $00
    ld b, l                                       ; $626E: $45
    inc d                                         ; $626F: $14
    ld h, d                                       ; $6270: $62
    ld h, d                                       ; $6271: $62
    ld e, e                                       ; $6272: $5B
    inc d                                         ; $6273: $14
    ld c, d                                       ; $6274: $4A
    ld h, c                                       ; $6275: $61
    ld b, l                                       ; $6276: $45
    db $10                                        ; $6277: $10
    ld [hl+], a                                   ; $6278: $22
    ld d, a                                       ; $6279: $57
    ld b, d                                       ; $627A: $42
    dec d                                         ; $627B: $15
    ld de, $4515                                  ; $627C: $11 $15 $45
    ld h, h                                       ; $627F: $64
    nop                                           ; $6280: $00
    dec d                                         ; $6281: $15
    ld de, $44B1                                  ; $6282: $11 $B1 $44
    ld [$1500], sp                                ; $6285: $08 $00 $15
    ld de, $451F                                  ; $6288: $11 $1F $45
    ld h, h                                       ; $628B: $64
    nop                                           ; $628C: $00
    dec d                                         ; $628D: $15
    ld de, $44A1                                  ; $628E: $11 $A1 $44
    ld [$4500], sp                                ; $6291: $08 $00 $45
    inc d                                         ; $6294: $14
    ld a, e                                       ; $6295: $7B
    ld h, d                                       ; $6296: $62
    ld b, d                                       ; $6297: $42
    ld e, e                                       ; $6298: $5B
    inc d                                         ; $6299: $14

jr_014_629A:
    ld a, c                                       ; $629A: $79
    ld h, c                                       ; $629B: $61
    dec d                                         ; $629C: $15
    ld de, $4501                                  ; $629D: $11 $01 $45
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    ld b, l                                       ; $62A2: $45
    ld de, $4551                                  ; $62A3: $11 $51 $45
    ld b, d                                       ; $62A6: $42
    ld [bc], a                                    ; $62A7: $02
    ld sp, $2D00                                  ; $62A8: $31 $00 $2D
    add hl, bc                                    ; $62AB: $09
    ld b, l                                       ; $62AC: $45

jr_014_62AD:
    inc d                                         ; $62AD: $14
    and d                                         ; $62AE: $A2
    ld h, c                                       ; $62AF: $61
    and h                                         ; $62B0: $A4
    inc h                                         ; $62B1: $24
    and e                                         ; $62B2: $A3
    stop                                          ; $62B3: $10 $00
    ld d, $99                                     ; $62B5: $16 $99
    pop de                                        ; $62B7: $D1
    sbc e                                         ; $62B8: $9B
    add hl, de                                    ; $62B9: $19
    ld c, [hl]                                    ; $62BA: $4E
    sbc a                                         ; $62BB: $9F
    ld b, h                                       ; $62BC: $44
    ld l, a                                       ; $62BD: $6F
    ld h, l                                       ; $62BE: $65
    ld [hl], e                                    ; $62BF: $73
    ld l, [hl]                                    ; $62C0: $6E
    daa                                           ; $62C1: $27
    ld [hl], h                                    ; $62C2: $74

jr_014_62C3:
    jr nz, jr_014_6338                            ; $62C3: $20 $73

    ld h, l                                       ; $62C5: $65
    ld h, l                                       ; $62C6: $65
    ld l, l                                       ; $62C7: $6D
    rst $38                                       ; $62C8: $FF
    ld l, h                                       ; $62C9: $6C
    ld l, c                                       ; $62CA: $69
    ld l, e                                       ; $62CB: $6B
    ld h, l                                       ; $62CC: $65
    jr nz, jr_014_631E                            ; $62CD: $20 $4F

    ld [hl], d                                    ; $62CF: $72
    ld [hl], a                                    ; $62D0: $77
    ld l, c                                       ; $62D1: $69
    ld l, [hl]                                    ; $62D2: $6E
    jr nz, jr_014_633E                            ; $62D3: $20 $69

    ld [hl], e                                    ; $62D5: $73
    cp $61                                        ; $62D6: $FE $61
    ld [hl], d                                    ; $62D8: $72
    ld l, a                                       ; $62D9: $6F
    ld [hl], l                                    ; $62DA: $75
    ld l, [hl]                                    ; $62DB: $6E
    ld h, h                                       ; $62DC: $64
    jr nz, jr_014_6347                            ; $62DD: $20 $68

    ld h, l                                       ; $62DF: $65
    ld [hl], d                                    ; $62E0: $72
    ld h, l                                       ; $62E1: $65
    ld l, $2E                                     ; $62E2: $2E $2E
    ld l, $FE                                     ; $62E4: $2E $FE
    ld d, l                                       ; $62E6: $55
    ld l, b                                       ; $62E7: $68
    ld l, $2E                                     ; $62E8: $2E $2E
    ld l, $20                                     ; $62EA: $2E $20
    ld [hl], a                                    ; $62EC: $77
    ld l, b                                       ; $62ED: $68
    ld h, c                                       ; $62EE: $61
    ccf                                           ; $62EF: $3F
    cp $57                                        ; $62F0: $FE $57
    ld l, b                                       ; $62F2: $68
    ld h, l                                       ; $62F3: $65
    ld [hl], d                                    ; $62F4: $72
    ld h, l                                       ; $62F5: $65
    daa                                           ; $62F6: $27
    ld h, h                                       ; $62F7: $64
    rst $38                                       ; $62F8: $FF
    ld h, l                                       ; $62F9: $65
    halt                                          ; $62FA: $76
    ld h, l                                       ; $62FB: $65
    ld [hl], d                                    ; $62FC: $72
    ld a, c                                       ; $62FD: $79
    ld l, a                                       ; $62FE: $6F
    ld l, [hl]                                    ; $62FF: $6E
    ld h, l                                       ; $6300: $65
    jr nz, @+$69                                  ; $6301: $20 $67

    ld l, a                                       ; $6303: $6F
    ccf                                           ; $6304: $3F
    cp $FD                                        ; $6305: $FE $FD
    sbc d                                         ; $6307: $9A
    ld e, b                                       ; $6308: $58

jr_014_6309:
    ld bc, $4B42                                  ; $6309: $01 $42 $4B
    inc b                                         ; $630C: $04
    inc d                                         ; $630D: $14
    inc bc                                        ; $630E: $03
    nop                                           ; $630F: $00
    ld e, c                                       ; $6310: $59
    ld h, e                                       ; $6311: $63
    rst $38                                       ; $6312: $FF
    sub e                                         ; $6313: $93
    ld h, l                                       ; $6314: $65
    ld e, d                                       ; $6315: $5A
    ld b, b                                       ; $6316: $40
    ld c, a                                       ; $6317: $4F
    ld h, h                                       ; $6318: $64
    ld l, b                                       ; $6319: $68
    ld b, b                                       ; $631A: $40
    ld l, c                                       ; $631B: $69
    ld l, l                                       ; $631C: $6D
    ld b, b                                       ; $631D: $40

jr_014_631E:
    ld sp, $0B14                                  ; $631E: $31 $14 $0B
    ld h, e                                       ; $6321: $63
    ld [hl+], a                                   ; $6322: $22
    adc $40                                       ; $6323: $CE $40
    ld h, [hl]                                    ; $6325: $66
    ret nz                                        ; $6326: $C0

    ld e, h                                       ; $6327: $5C
    ld hl, $0005                                  ; $6328: $21 $05 $00
    add c                                         ; $632B: $81
    ld e, l                                       ; $632C: $5D
    ld b, $31                                     ; $632D: $06 $31

jr_014_632F:
    sbc b                                         ; $632F: $98
    reti                                          ; $6330: $D9


    nop                                           ; $6331: $00
    jr nz, jr_014_632F                            ; $6332: $20 $FB

    ld d, b                                       ; $6334: $50
    ld [hl+], a                                   ; $6335: $22
    dec b                                         ; $6336: $05
    ld b, b                                       ; $6337: $40

jr_014_6338:
    dec b                                         ; $6338: $05
    jr nz, jr_014_6309                            ; $6339: $20 $CE

    ld h, e                                       ; $633B: $63
    ld a, [bc]                                    ; $633C: $0A
    add hl, bc                                    ; $633D: $09

jr_014_633E:
    call z, $00D1                                 ; $633E: $CC $D1 $00
    ld [hl+], a                                   ; $6341: $22
    jp c, $1440                                   ; $6342: $DA $40 $14

    halt                                          ; $6345: $76
    ld b, b                                       ; $6346: $40

jr_014_6347:
    dec bc                                        ; $6347: $0B
    jr nz, jr_014_63B5                            ; $6348: $20 $6B

    inc [hl]                                      ; $634A: $34
    dec c                                         ; $634B: $0D
    jr nc, jr_014_63B8                            ; $634C: $30 $6A

    nop                                           ; $634E: $00
    add b                                         ; $634F: $80
    nop                                           ; $6350: $00
    dec bc                                        ; $6351: $0B
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    add d                                         ; $6354: $82
    rra                                           ; $6355: $1F
    inc h                                         ; $6356: $24
    sub h                                         ; $6357: $94
    ld b, d                                       ; $6358: $42
    sub e                                         ; $6359: $93
    ld h, l                                       ; $635A: $65
    ld e, d                                       ; $635B: $5A
    ld b, b                                       ; $635C: $40
    ld c, a                                       ; $635D: $4F

jr_014_635E:
    ld h, h                                       ; $635E: $64
    ld l, b                                       ; $635F: $68
    ld b, b                                       ; $6360: $40
    ld l, c                                       ; $6361: $69
    ld l, l                                       ; $6362: $6D
    ld b, b                                       ; $6363: $40
    ld sp, $0B14                                  ; $6364: $31 $14 $0B
    ld h, e                                       ; $6367: $63
    ld [hl+], a                                   ; $6368: $22
    adc $40                                       ; $6369: $CE $40
    ld h, [hl]                                    ; $636B: $66
    ret nz                                        ; $636C: $C0

    ld e, h                                       ; $636D: $5C
    ld hl, $0005                                  ; $636E: $21 $05 $00
    add c                                         ; $6371: $81
    ld e, l                                       ; $6372: $5D
    ld b, $31                                     ; $6373: $06 $31

jr_014_6375:
    sbc b                                         ; $6375: $98
    reti                                          ; $6376: $D9


    nop                                           ; $6377: $00
    jr nz, jr_014_6375                            ; $6378: $20 $FB

    ld d, b                                       ; $637A: $50
    ld [hl+], a                                   ; $637B: $22
    dec b                                         ; $637C: $05
    ld b, b                                       ; $637D: $40
    dec b                                         ; $637E: $05
    ld [bc], a                                    ; $637F: $02
    db $ED                                        ; $6380: $ED
    ld h, e                                       ; $6381: $63
    db $10                                        ; $6382: $10
    ld [$D1A0], sp                                ; $6383: $08 $A0 $D1
    inc [hl]                                      ; $6386: $34
    inc d                                         ; $6387: $14
    cp b                                          ; $6388: $B8
    ld h, e                                       ; $6389: $63
    inc d                                         ; $638A: $14
    ld [c], a                                     ; $638B: $E2
    ld h, e                                       ; $638C: $63
    dec b                                         ; $638D: $05
    jr nz, jr_014_635E                            ; $638E: $20 $CE

    ld h, e                                       ; $6390: $63
    ld a, [bc]                                    ; $6391: $0A
    add hl, bc                                    ; $6392: $09
    call z, $00D1                                 ; $6393: $CC $D1 $00
    ld [hl+], a                                   ; $6396: $22
    jp c, $1440                                   ; $6397: $DA $40 $14

    halt                                          ; $639A: $76
    ld b, b                                       ; $639B: $40
    dec bc                                        ; $639C: $0B
    jr nz, jr_014_640A                            ; $639D: $20 $6B

    inc [hl]                                      ; $639F: $34
    dec c                                         ; $63A0: $0D
    jr nc, jr_014_640D                            ; $63A1: $30 $6A

    nop                                           ; $63A3: $00
    add b                                         ; $63A4: $80
    nop                                           ; $63A5: $00
    ld l, e                                       ; $63A6: $6B
    dec hl                                        ; $63A7: $2B
    dec bc                                        ; $63A8: $0B
    ret nc                                        ; $63A9: $D0

    ld c, c                                       ; $63AA: $49
    ld b, b                                       ; $63AB: $40
    add e                                         ; $63AC: $83
    nop                                           ; $63AD: $00
    dec bc                                        ; $63AE: $0B
    ld [bc], a                                    ; $63AF: $02
    dec bc                                        ; $63B0: $0B
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    add d                                         ; $63B3: $82
    rra                                           ; $63B4: $1F

jr_014_63B5:
    ld h, $94                                     ; $63B5: $26 $94
    ld b, d                                       ; $63B7: $42

jr_014_63B8:
    dec d                                         ; $63B8: $15
    ld de, $47A0                                  ; $63B9: $11 $A0 $47
    ld [hl-], a                                   ; $63BC: $32
    ld de, $47C8                                  ; $63BD: $11 $C8 $47
    ld [hl-], a                                   ; $63C0: $32
    ld de, $47D2                                  ; $63C1: $11 $D2 $47
    ld [hl-], a                                   ; $63C4: $32
    ld de, $47AA                                  ; $63C5: $11 $AA $47
    ld [hl-], a                                   ; $63C8: $32
    ld de, $473C                                  ; $63C9: $11 $3C $47
    ld [hl-], a                                   ; $63CC: $32
    ld de, $47A0                                  ; $63CD: $11 $A0 $47
    ld [hl-], a                                   ; $63D0: $32
    ld de, $472C                                  ; $63D1: $11 $2C $47
    ld [hl-], a                                   ; $63D4: $32
    ld de, $47AA                                  ; $63D5: $11 $AA $47
    ld [hl-], a                                   ; $63D8: $32
    ld de, $47D2                                  ; $63D9: $11 $D2 $47
    ld [hl-], a                                   ; $63DC: $32
    nop                                           ; $63DD: $00
    ld b, l                                       ; $63DE: $45
    inc d                                         ; $63DF: $14
    cp b                                          ; $63E0: $B8
    ld h, e                                       ; $63E1: $63
    ld e, e                                       ; $63E2: $5B
    inc d                                         ; $63E3: $14
    cp b                                          ; $63E4: $B8
    ld h, d                                       ; $63E5: $62
    ld b, l                                       ; $63E6: $45
    ld de, $47DC                                  ; $63E7: $11 $DC $47
    ld b, d                                       ; $63EA: $42
    ld [bc], a                                    ; $63EB: $02
    inc bc                                        ; $63EC: $03
    inc de                                        ; $63ED: $13
    inc de                                        ; $63EE: $13
    nop                                           ; $63EF: $00

jr_014_63F0:
    ld b, l                                       ; $63F0: $45
    inc d                                         ; $63F1: $14
    and d                                         ; $63F2: $A2
    ld h, c                                       ; $63F3: $61
    ld bc, $0926                                  ; $63F4: $01 $26 $09
    ld b, l                                       ; $63F7: $45
    cpl                                           ; $63F8: $2F
    ld h, l                                       ; $63F9: $65
    ld b, c                                       ; $63FA: $41
    sub e                                         ; $63FB: $93
    ld h, l                                       ; $63FC: $65
    ld l, c                                       ; $63FD: $69
    ld b, b                                       ; $63FE: $40
    ld c, a                                       ; $63FF: $4F
    ld h, h                                       ; $6400: $64
    ld [hl], d                                    ; $6401: $72
    ld b, b                                       ; $6402: $40
    ld sp, $FB14                                  ; $6403: $31 $14 $FB
    ld h, e                                       ; $6406: $63
    ld [hl+], a                                   ; $6407: $22
    adc $40                                       ; $6408: $CE $40

jr_014_640A:
    ld h, [hl]                                    ; $640A: $66
    ret nz                                        ; $640B: $C0

    ld e, h                                       ; $640C: $5C

jr_014_640D:
    ld hl, $0005                                  ; $640D: $21 $05 $00
    add c                                         ; $6410: $81
    ld e, l                                       ; $6411: $5D
    dec b                                         ; $6412: $05
    dec b                                         ; $6413: $05

jr_014_6414:
    ld b, c                                       ; $6414: $41
    ret nc                                        ; $6415: $D0

    nop                                           ; $6416: $00
    jr nz, jr_014_6414                            ; $6417: $20 $FB

    ld d, b                                       ; $6419: $50
    ld [hl+], a                                   ; $641A: $22
    dec b                                         ; $641B: $05
    ld b, b                                       ; $641C: $40
    dec bc                                        ; $641D: $0B
    nop                                           ; $641E: $00
    dec b                                         ; $641F: $05
    jr nz, jr_014_63F0                            ; $6420: $20 $CE

    ld h, e                                       ; $6422: $63
    ld a, [bc]                                    ; $6423: $0A
    add hl, bc                                    ; $6424: $09
    halt                                          ; $6425: $76
    ret nc                                        ; $6426: $D0

    nop                                           ; $6427: $00
    ld [hl+], a                                   ; $6428: $22
    jp c, $1440                                   ; $6429: $DA $40 $14

    halt                                          ; $642C: $76
    ld b, b                                       ; $642D: $40
    dec bc                                        ; $642E: $0B
    jr nz, jr_014_649C                            ; $642F: $20 $6B

    inc [hl]                                      ; $6431: $34
    dec c                                         ; $6432: $0D
    jr nc, @+$6C                                  ; $6433: $30 $6A

    nop                                           ; $6435: $00
    add b                                         ; $6436: $80
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    add d                                         ; $6439: $82
    ld b, e                                       ; $643A: $43
    rrca                                          ; $643B: $0F
    inc b                                         ; $643C: $04
    dec b                                         ; $643D: $05
    inc bc                                        ; $643E: $03
    inc d                                         ; $643F: $14
    ld b, [hl]                                    ; $6440: $46
    ld h, h                                       ; $6441: $64
    rra                                           ; $6442: $1F
    inc h                                         ; $6443: $24
    sub h                                         ; $6444: $94
    ld b, d                                       ; $6445: $42
    rra                                           ; $6446: $1F
    ld h, $94                                     ; $6447: $26 $94
    ld b, d                                       ; $6449: $42
    sub [hl]                                      ; $644A: $96
    inc d                                         ; $644B: $14
    ld c, d                                       ; $644C: $4A
    ld h, h                                       ; $644D: $64
    ld bc, $0926                                  ; $644E: $01 $26 $09
    ld b, l                                       ; $6451: $45
    cpl                                           ; $6452: $2F
    ld h, l                                       ; $6453: $65
    ld b, c                                       ; $6454: $41
    ld b, e                                       ; $6455: $43
    db $10                                        ; $6456: $10
    inc b                                         ; $6457: $04
    dec b                                         ; $6458: $05
    dec b                                         ; $6459: $05
    inc d                                         ; $645A: $14
    inc c                                         ; $645B: $0C
    ld l, e                                       ; $645C: $6B
    inc c                                         ; $645D: $0C
    nop                                           ; $645E: $00
    ld l, [hl]                                    ; $645F: $6E
    rrca                                          ; $6460: $0F
    rst $38                                       ; $6461: $FF
    ld a, a                                       ; $6462: $7F
    halt                                          ; $6463: $76
    jr nz, jr_014_6475                            ; $6464: $20 $0F

    xor h                                         ; $6466: $AC
    or d                                          ; $6467: $B2
    and d                                         ; $6468: $A2
    nop                                           ; $6469: $00
    sub [hl]                                      ; $646A: $96
    inc d                                         ; $646B: $14
    ld h, [hl]                                    ; $646C: $66
    ld h, h                                       ; $646D: $64
    ld bc, $1709                                  ; $646E: $01 $09 $17
    ld b, l                                       ; $6471: $45
    ld a, [de]                                    ; $6472: $1A
    ld b, c                                       ; $6473: $41
    ld l, b                                       ; $6474: $68

jr_014_6475:
    sbc e                                         ; $6475: $9B
    adc b                                         ; $6476: $88
    ld h, l                                       ; $6477: $65
    sbc a                                         ; $6478: $9F
    ld d, a                                       ; $6479: $57
    ld l, b                                       ; $647A: $68
    ld h, c                                       ; $647B: $61
    ld [hl], h                                    ; $647C: $74
    jr nz, jr_014_64F3                            ; $647D: $20 $74

    ld l, b                                       ; $647F: $68
    ld h, l                                       ; $6480: $65
    ld l, $2E                                     ; $6481: $2E $2E
    ld l, $3F                                     ; $6483: $2E $3F
    ld hl, $FDFE                                  ; $6485: $21 $FE $FD
    sbc d                                         ; $6488: $9A
    ld e, b                                       ; $6489: $58
    ld bc, $9B42                                  ; $648A: $01 $42 $9B
    adc b                                         ; $648D: $88
    ld h, l                                       ; $648E: $65
    sbc a                                         ; $648F: $9F
    ld c, c                                       ; $6490: $49
    ld [hl], h                                    ; $6491: $74
    jr nz, @+$6E                                  ; $6492: $20 $6C

    ld l, a                                       ; $6494: $6F
    ld l, a                                       ; $6495: $6F
    ld l, e                                       ; $6496: $6B
    ld [hl], e                                    ; $6497: $73
    jr nz, jr_014_6506                            ; $6498: $20 $6C

    ld l, c                                       ; $649A: $69
    ld l, e                                       ; $649B: $6B

jr_014_649C:
    ld h, l                                       ; $649C: $65
    rst $38                                       ; $649D: $FF
    ld l, $2E                                     ; $649E: $2E $2E
    ld l, $2E                                     ; $64A0: $2E $2E
    ld l, $FE                                     ; $64A2: $2E $FE
    ld h, c                                       ; $64A4: $61
    jr nz, jr_014_64FA                            ; $64A5: $20 $53

    ld l, b                                       ; $64A7: $68
    ld h, c                                       ; $64A8: $61
    ld h, h                                       ; $64A9: $64
    ld l, a                                       ; $64AA: $6F
    ld [hl], a                                    ; $64AB: $77
    rst $38                                       ; $64AC: $FF
    ld b, a                                       ; $64AD: $47
    ld h, l                                       ; $64AE: $65
    ld a, c                                       ; $64AF: $79
    ld [hl], e                                    ; $64B0: $73
    ld h, l                                       ; $64B1: $65
    ld [hl], d                                    ; $64B2: $72
    ld hl, $4FFE                                  ; $64B3: $21 $FE $4F
    ld l, b                                       ; $64B6: $68
    inc l                                         ; $64B7: $2C
    jr nz, jr_014_6528                            ; $64B8: $20 $6E

    ld l, a                                       ; $64BA: $6F
    ld l, $2E                                     ; $64BB: $2E $2E
    ld l, $FF                                     ; $64BD: $2E $FF
    ld [hl], h                                    ; $64BF: $74
    ld l, b                                       ; $64C0: $68
    ld l, c                                       ; $64C1: $69
    ld [hl], e                                    ; $64C2: $73
    jr nz, @+$76                                  ; $64C3: $20 $74

    ld l, a                                       ; $64C5: $6F
    ld l, a                                       ; $64C6: $6F
    jr nz, jr_014_6540                            ; $64C7: $20 $77

    ld h, c                                       ; $64C9: $61
    ld [hl], e                                    ; $64CA: $73
    cp $66                                        ; $64CB: $FE $66
    ld l, a                                       ; $64CD: $6F
    ld [hl], d                                    ; $64CE: $72
    ld h, l                                       ; $64CF: $65
    ld [hl], h                                    ; $64D0: $74
    ld l, a                                       ; $64D1: $6F
    ld l, h                                       ; $64D2: $6C
    ld h, h                                       ; $64D3: $64
    jr nz, jr_014_653F                            ; $64D4: $20 $69

    ld l, [hl]                                    ; $64D6: $6E
    rst $38                                       ; $64D7: $FF
    ld [hl], h                                    ; $64D8: $74
    ld l, b                                       ; $64D9: $68
    ld h, l                                       ; $64DA: $65
    jr nz, jr_014_652D                            ; $64DB: $20 $50

    ld [hl], d                                    ; $64DD: $72
    ld l, a                                       ; $64DE: $6F
    ld [hl], b                                    ; $64DF: $70
    ld l, b                                       ; $64E0: $68
    ld h, l                                       ; $64E1: $65
    ld h, e                                       ; $64E2: $63
    ld a, c                                       ; $64E3: $79
    ld hl, $FDFE                                  ; $64E4: $21 $FE $FD
    sbc d                                         ; $64E7: $9A
    ld e, b                                       ; $64E8: $58
    ld [bc], a                                    ; $64E9: $02
    ld b, d                                       ; $64EA: $42
    sbc e                                         ; $64EB: $9B
    adc b                                         ; $64EC: $88
    ld h, l                                       ; $64ED: $65
    sbc a                                         ; $64EE: $9F
    ld c, c                                       ; $64EF: $49
    daa                                           ; $64F0: $27
    halt                                          ; $64F1: $76
    ld h, l                                       ; $64F2: $65

jr_014_64F3:
    jr nz, jr_014_655C                            ; $64F3: $20 $67

    ld l, a                                       ; $64F5: $6F
    ld [hl], h                                    ; $64F6: $74
    jr nz, jr_014_656D                            ; $64F7: $20 $74

    ld l, a                                       ; $64F9: $6F

jr_014_64FA:
    rst $38                                       ; $64FA: $FF
    ld [hl], e                                    ; $64FB: $73
    ld [hl], h                                    ; $64FC: $74
    ld l, a                                       ; $64FD: $6F
    ld [hl], b                                    ; $64FE: $70
    jr nz, jr_014_656A                            ; $64FF: $20 $69

    ld [hl], h                                    ; $6501: $74
    ld hl, $FDFE                                  ; $6502: $21 $FE $FD
    sbc d                                         ; $6505: $9A

jr_014_6506:
    ld e, b                                       ; $6506: $58
    inc bc                                        ; $6507: $03
    ld b, d                                       ; $6508: $42
    sbc e                                         ; $6509: $9B
    adc b                                         ; $650A: $88
    ld h, l                                       ; $650B: $65
    sbc a                                         ; $650C: $9F
    ld c, a                                       ; $650D: $4F
    ld c, a                                       ; $650E: $4F
    ld d, l                                       ; $650F: $55
    ld b, a                                       ; $6510: $47
    ld b, a                                       ; $6511: $47
    ld c, b                                       ; $6512: $48
    ld hl, $2021                                  ; $6513: $21 $21 $20
    ld l, h                                       ; $6516: $6C
    ld l, c                                       ; $6517: $69
    ld l, e                                       ; $6518: $6B
    ld h, l                                       ; $6519: $65
    jr nz, jr_014_657D                            ; $651A: $20 $61

    rst $38                                       ; $651C: $FF
    ld l, l                                       ; $651D: $6D
    ld l, c                                       ; $651E: $69
    ld l, h                                       ; $651F: $6C
    ld l, h                                       ; $6520: $6C
    ld l, c                                       ; $6521: $69
    ld l, a                                       ; $6522: $6F
    ld l, [hl]                                    ; $6523: $6E
    ld l, $2E                                     ; $6524: $2E $2E
    ld l, $FE                                     ; $6526: $2E $FE

jr_014_6528:
    ld [hl], e                                    ; $6528: $73
    ld l, b                                       ; $6529: $68
    ld h, c                                       ; $652A: $61
    ld [hl], d                                    ; $652B: $72
    ld [hl], b                                    ; $652C: $70

jr_014_652D:
    ld l, $2E                                     ; $652D: $2E $2E
    ld l, $FF                                     ; $652F: $2E $FF
    ld l, [hl]                                    ; $6531: $6E
    ld h, l                                       ; $6532: $65
    ld h, l                                       ; $6533: $65
    ld h, h                                       ; $6534: $64
    ld l, h                                       ; $6535: $6C
    ld h, l                                       ; $6536: $65
    ld [hl], e                                    ; $6537: $73
    jr nz, jr_014_65A4                            ; $6538: $20 $6A

    ld [hl], l                                    ; $653A: $75
    ld [hl], e                                    ; $653B: $73
    ld [hl], h                                    ; $653C: $74
    cp $70                                        ; $653D: $FE $70

jr_014_653F:
    ld l, c                                       ; $653F: $69

jr_014_6540:
    ld h, l                                       ; $6540: $65
    ld [hl], d                                    ; $6541: $72
    ld h, e                                       ; $6542: $63
    ld h, l                                       ; $6543: $65
    ld h, h                                       ; $6544: $64
    jr nz, jr_014_65B4                            ; $6545: $20 $6D

    ld a, c                                       ; $6547: $79
    rst $38                                       ; $6548: $FF
    ld l, b                                       ; $6549: $68
    ld l, c                                       ; $654A: $69
    ld h, h                                       ; $654B: $64
    ld h, l                                       ; $654C: $65
    ld hl, $FDFE                                  ; $654D: $21 $FE $FD
    sbc d                                         ; $6550: $9A
    ld e, b                                       ; $6551: $58
    inc b                                         ; $6552: $04
    ld b, d                                       ; $6553: $42
    sbc e                                         ; $6554: $9B
    xor c                                         ; $6555: $A9
    ld c, a                                       ; $6556: $4F
    sbc a                                         ; $6557: $9F
    ld c, e                                       ; $6558: $4B
    ld l, a                                       ; $6559: $6F
    ld [hl], d                                    ; $655A: $72
    ld h, a                                       ; $655B: $67

jr_014_655C:
    inc l                                         ; $655C: $2C
    jr nz, jr_014_65CB                            ; $655D: $20 $6C

    ld l, a                                       ; $655F: $6F
    ld l, a                                       ; $6560: $6F
    ld l, e                                       ; $6561: $6B
    ld hl, $4FFF                                  ; $6562: $21 $FF $4F
    ld [hl], d                                    ; $6565: $72
    ld [hl], a                                    ; $6566: $77
    ld l, c                                       ; $6567: $69
    ld l, [hl]                                    ; $6568: $6E
    daa                                           ; $6569: $27

jr_014_656A:
    ld [hl], e                                    ; $656A: $73
    jr nz, @+$6B                                  ; $656B: $20 $69

jr_014_656D:
    ld l, [hl]                                    ; $656D: $6E
    cp $74                                        ; $656E: $FE $74
    ld [hl], d                                    ; $6570: $72
    ld l, a                                       ; $6571: $6F
    ld [hl], l                                    ; $6572: $75
    ld h, d                                       ; $6573: $62
    ld l, h                                       ; $6574: $6C
    ld h, l                                       ; $6575: $65
    ld hl, $4E20                                  ; $6576: $21 $20 $4E
    ld l, a                                       ; $6579: $6F
    ld [hl], a                                    ; $657A: $77
    daa                                           ; $657B: $27
    ld [hl], e                                    ; $657C: $73

jr_014_657D:
    rst $38                                       ; $657D: $FF
    ld l, a                                       ; $657E: $6F
    ld [hl], l                                    ; $657F: $75
    ld [hl], d                                    ; $6580: $72
    jr nz, @+$65                                  ; $6581: $20 $63

    ld l, b                                       ; $6583: $68
    ld h, c                                       ; $6584: $61
    ld l, [hl]                                    ; $6585: $6E
    ld h, e                                       ; $6586: $63
    ld h, l                                       ; $6587: $65
    jr nz, jr_014_65FE                            ; $6588: $20 $74

    ld l, a                                       ; $658A: $6F
    cp $67                                        ; $658B: $FE $67
    ld h, l                                       ; $658D: $65
    ld [hl], h                                    ; $658E: $74
    jr nz, jr_014_65F9                            ; $658F: $20 $68

    ld l, c                                       ; $6591: $69
    ld l, l                                       ; $6592: $6D
    jr nz, jr_014_6604                            ; $6593: $20 $6F

    ld [hl], l                                    ; $6595: $75
    ld [hl], h                                    ; $6596: $74
    jr nz, jr_014_6608                            ; $6597: $20 $6F

    ld h, [hl]                                    ; $6599: $66
    rst $38                                       ; $659A: $FF
    ld [hl], h                                    ; $659B: $74
    ld l, b                                       ; $659C: $68
    ld h, l                                       ; $659D: $65
    jr nz, @+$72                                  ; $659E: $20 $70

    ld l, c                                       ; $65A0: $69
    ld h, e                                       ; $65A1: $63
    ld [hl], h                                    ; $65A2: $74
    ld [hl], l                                    ; $65A3: $75

jr_014_65A4:
    ld [hl], d                                    ; $65A4: $72
    ld h, l                                       ; $65A5: $65
    ld hl, $FDFE                                  ; $65A6: $21 $FE $FD
    sbc e                                         ; $65A9: $9B
    add sp, $55                                   ; $65AA: $E8 $55
    sbc a                                         ; $65AC: $9F
    ld d, e                                       ; $65AD: $53
    ld l, b                                       ; $65AE: $68
    ld h, c                                       ; $65AF: $61
    ld h, h                                       ; $65B0: $64
    ld h, h                                       ; $65B1: $64
    ld [hl], l                                    ; $65B2: $75
    ld [hl], b                                    ; $65B3: $70

jr_014_65B4:
    jr nz, @+$5C                                  ; $65B4: $20 $5A

    ld h, l                                       ; $65B6: $65
    ld [hl], h                                    ; $65B7: $74
    ld hl, $49FF                                  ; $65B8: $21 $FF $49
    daa                                           ; $65BB: $27
    ld l, l                                       ; $65BC: $6D
    jr nz, jr_014_6628                            ; $65BD: $20 $69

    ld l, [hl]                                    ; $65BF: $6E
    jr nz, jr_014_6625                            ; $65C0: $20 $63

    ld l, b                                       ; $65C2: $68
    ld h, c                                       ; $65C3: $61
    ld [hl], d                                    ; $65C4: $72
    ld h, a                                       ; $65C5: $67
    ld h, l                                       ; $65C6: $65
    inc l                                         ; $65C7: $2C
    cp $61                                        ; $65C8: $FE $61
    ld l, [hl]                                    ; $65CA: $6E

jr_014_65CB:
    ld h, h                                       ; $65CB: $64
    jr nz, jr_014_6617                            ; $65CC: $20 $49

    jr nz, jr_014_6643                            ; $65CE: $20 $73

    ld h, c                                       ; $65D0: $61
    ld a, c                                       ; $65D1: $79
    jr nz, @+$79                                  ; $65D2: $20 $77

    ld h, l                                       ; $65D4: $65
    jr nz, @+$69                                  ; $65D5: $20 $67

    ld l, a                                       ; $65D7: $6F
    rst $38                                       ; $65D8: $FF
    ld [hl], a                                    ; $65D9: $77
    ld h, c                                       ; $65DA: $61
    ld [hl], e                                    ; $65DB: $73
    ld [hl], h                                    ; $65DC: $74
    ld h, l                                       ; $65DD: $65
    jr nz, jr_014_662F                            ; $65DE: $20 $4F

    ld [hl], d                                    ; $65E0: $72
    ld [hl], a                                    ; $65E1: $77
    ld l, c                                       ; $65E2: $69
    ld l, [hl]                                    ; $65E3: $6E
    ld hl, $FDFE                                  ; $65E4: $21 $FE $FD
    sbc e                                         ; $65E7: $9B
    xor c                                         ; $65E8: $A9
    ld c, a                                       ; $65E9: $4F
    sbc a                                         ; $65EA: $9F
    ld l, $2E                                     ; $65EB: $2E $2E
    ld l, $2E                                     ; $65ED: $2E $2E
    ld l, $2E                                     ; $65EF: $2E $2E
    ld l, $2E                                     ; $65F1: $2E $2E
    cp $FD                                        ; $65F3: $FE $FD
    sbc e                                         ; $65F5: $9B
    add sp, $55                                   ; $65F6: $E8 $55
    sbc a                                         ; $65F8: $9F

jr_014_65F9:
    ld c, h                                       ; $65F9: $4C
    ld h, l                                       ; $65FA: $65
    ld [hl], h                                    ; $65FB: $74
    daa                                           ; $65FC: $27
    ld [hl], e                                    ; $65FD: $73

jr_014_65FE:
    jr nz, jr_014_6667                            ; $65FE: $20 $67

    ld l, a                                       ; $6600: $6F
    ld hl, $FDFE                                  ; $6601: $21 $FE $FD

jr_014_6604:
    sbc d                                         ; $6604: $9A
    ld e, b                                       ; $6605: $58
    dec b                                         ; $6606: $05
    ld b, d                                       ; $6607: $42

jr_014_6608:
    sbc e                                         ; $6608: $9B
    xor c                                         ; $6609: $A9
    ld c, a                                       ; $660A: $4F
    sbc a                                         ; $660B: $9F
    ld c, a                                       ; $660C: $4F
    ld l, e                                       ; $660D: $6B
    inc l                                         ; $660E: $2C
    jr nz, jr_014_667D                            ; $660F: $20 $6C

    ld h, l                                       ; $6611: $65
    ld [hl], h                                    ; $6612: $74
    daa                                           ; $6613: $27
    ld [hl], e                                    ; $6614: $73
    jr nz, @+$69                                  ; $6615: $20 $67

jr_014_6617:
    ld h, l                                       ; $6617: $65
    ld [hl], h                                    ; $6618: $74
    rst $38                                       ; $6619: $FF
    ld l, b                                       ; $661A: $68
    ld l, c                                       ; $661B: $69
    ld l, l                                       ; $661C: $6D
    jr nz, @+$71                                  ; $661D: $20 $6F

    ld l, [hl]                                    ; $661F: $6E
    jr nz, jr_014_6696                            ; $6620: $20 $74

    ld l, b                                       ; $6622: $68
    ld [hl], d                                    ; $6623: $72
    ld h, l                                       ; $6624: $65

jr_014_6625:
    ld h, l                                       ; $6625: $65
    ld l, $2E                                     ; $6626: $2E $2E

jr_014_6628:
    ld l, $FE                                     ; $6628: $2E $FE
    ld c, a                                       ; $662A: $4F
    ld l, [hl]                                    ; $662B: $6E
    ld h, l                                       ; $662C: $65
    ld l, $2E                                     ; $662D: $2E $2E

jr_014_662F:
    ld l, $2E                                     ; $662F: $2E $2E
    cp $FD                                        ; $6631: $FE $FD
    sbc e                                         ; $6633: $9B
    add sp, $55                                   ; $6634: $E8 $55
    sbc a                                         ; $6636: $9F
    ld d, h                                       ; $6637: $54
    ld c, b                                       ; $6638: $48
    ld d, d                                       ; $6639: $52
    ld b, l                                       ; $663A: $45
    ld b, l                                       ; $663B: $45
    ld hl, $2121                                  ; $663C: $21 $21 $21
    cp $FD                                        ; $663F: $FE $FD
    sbc e                                         ; $6641: $9B
    xor c                                         ; $6642: $A9

jr_014_6643:
    ld c, a                                       ; $6643: $4F
    sbc a                                         ; $6644: $9F
    ld c, b                                       ; $6645: $48
    ld [hl], l                                    ; $6646: $75
    ld l, b                                       ; $6647: $68
    ccf                                           ; $6648: $3F
    ccf                                           ; $6649: $3F
    cp $FD                                        ; $664A: $FE $FD
    sbc d                                         ; $664C: $9A
    ld e, b                                       ; $664D: $58
    ld b, $42                                     ; $664E: $06 $42
    sbc e                                         ; $6650: $9B
    add sp, $55                                   ; $6651: $E8 $55
    sbc a                                         ; $6653: $9F
    ld d, a                                       ; $6654: $57
    ld l, b                                       ; $6655: $68
    ld h, l                                       ; $6656: $65
    ld [hl], d                                    ; $6657: $72
    ld h, l                                       ; $6658: $65
    daa                                           ; $6659: $27
    ld h, h                                       ; $665A: $64
    jr nz, jr_014_66C5                            ; $665B: $20 $68

    ld h, l                                       ; $665D: $65
    jr nz, jr_014_66C7                            ; $665E: $20 $67

    ld l, a                                       ; $6660: $6F
    inc l                                         ; $6661: $2C
    rst $38                                       ; $6662: $FF
    ld e, d                                       ; $6663: $5A
    ld h, l                                       ; $6664: $65
    ld [hl], h                                    ; $6665: $74
    ccf                                           ; $6666: $3F

jr_014_6667:
    jr nz, @+$4A                                  ; $6667: $20 $48

    ld h, l                                       ; $6669: $65
    ld a, c                                       ; $666A: $79
    inc l                                         ; $666B: $2C
    jr nz, jr_014_66C8                            ; $666C: $20 $5A

    ld h, l                                       ; $666E: $65
    ld [hl], h                                    ; $666F: $74
    ld hl, $FDFE                                  ; $6670: $21 $FE $FD
    sbc e                                         ; $6673: $9B
    xor c                                         ; $6674: $A9
    ld c, a                                       ; $6675: $4F
    sbc a                                         ; $6676: $9F
    ld l, $2E                                     ; $6677: $2E $2E
    ld l, $2E                                     ; $6679: $2E $2E
    ld l, $2E                                     ; $667B: $2E $2E

jr_014_667D:
    ld l, $2E                                     ; $667D: $2E $2E
    ld l, $FE                                     ; $667F: $2E $FE
    db $FD                                        ; $6681: $FD
    sbc e                                         ; $6682: $9B
    add sp, $55                                   ; $6683: $E8 $55
    sbc a                                         ; $6685: $9F
    ld d, a                                       ; $6686: $57
    ld h, c                                       ; $6687: $61
    ld l, e                                       ; $6688: $6B
    ld h, l                                       ; $6689: $65
    jr nz, jr_014_6701                            ; $668A: $20 $75

    ld [hl], b                                    ; $668C: $70
    ld hl, $FE21                                  ; $668D: $21 $21 $FE
    db $FD                                        ; $6690: $FD
    sbc d                                         ; $6691: $9A
    ld e, b                                       ; $6692: $58
    rlca                                          ; $6693: $07
    ld b, d                                       ; $6694: $42
    sbc e                                         ; $6695: $9B

jr_014_6696:
    add sp, $55                                   ; $6696: $E8 $55
    sbc a                                         ; $6698: $9F
    ld c, b                                       ; $6699: $48
    ld [hl], l                                    ; $669A: $75
    ld l, b                                       ; $669B: $68
    ccf                                           ; $669C: $3F
    cp $FD                                        ; $669D: $FE $FD
    sbc d                                         ; $669F: $9A
    ld e, b                                       ; $66A0: $58
    ld [$9B42], sp                                ; $66A1: $08 $42 $9B
    add sp, $55                                   ; $66A4: $E8 $55
    sbc a                                         ; $66A6: $9F
    ld c, c                                       ; $66A7: $49
    ld [hl], h                                    ; $66A8: $74
    daa                                           ; $66A9: $27
    ld [hl], e                                    ; $66AA: $73
    jr nz, jr_014_6721                            ; $66AB: $20 $74

    ld l, b                                       ; $66AD: $68
    ld h, c                                       ; $66AE: $61
    ld [hl], h                                    ; $66AF: $74
    jr nz, jr_014_671D                            ; $66B0: $20 $6B

    ld l, c                                       ; $66B2: $69
    ld h, h                                       ; $66B3: $64
    rst $38                                       ; $66B4: $FF
    ld h, [hl]                                    ; $66B5: $66
    ld [hl], d                                    ; $66B6: $72
    ld l, a                                       ; $66B7: $6F
    ld l, l                                       ; $66B8: $6D
    jr nz, jr_014_671D                            ; $66B9: $20 $62

    ld h, l                                       ; $66BB: $65
    ld h, [hl]                                    ; $66BC: $66
    ld l, a                                       ; $66BD: $6F
    ld [hl], d                                    ; $66BE: $72
    ld h, l                                       ; $66BF: $65
    ld l, $FE                                     ; $66C0: $2E $FE
    ld c, b                                       ; $66C2: $48
    ld h, c                                       ; $66C3: $61
    inc l                                         ; $66C4: $2C

jr_014_66C5:
    jr nz, jr_014_6735                            ; $66C5: $20 $6E

jr_014_66C7:
    ld l, a                                       ; $66C7: $6F

jr_014_66C8:
    ld [hl], a                                    ; $66C8: $77
    jr nz, jr_014_6714                            ; $66C9: $20 $49

    jr nz, jr_014_6730                            ; $66CB: $20 $63

    ld h, c                                       ; $66CD: $61
    ld l, [hl]                                    ; $66CE: $6E
    rst $38                                       ; $66CF: $FF
    ld l, l                                       ; $66D0: $6D
    ld h, l                                       ; $66D1: $65
    ld [hl], e                                    ; $66D2: $73
    ld [hl], e                                    ; $66D3: $73
    jr nz, jr_014_674F                            ; $66D4: $20 $79

    ld l, a                                       ; $66D6: $6F
    ld [hl], l                                    ; $66D7: $75
    jr nz, jr_014_674F                            ; $66D8: $20 $75

    ld [hl], b                                    ; $66DA: $70
    jr nz, jr_014_6743                            ; $66DB: $20 $66

    ld l, a                                       ; $66DD: $6F
    ld [hl], d                                    ; $66DE: $72
    cp $77                                        ; $66DF: $FE $77
    ld l, b                                       ; $66E1: $68
    ld h, c                                       ; $66E2: $61
    ld [hl], h                                    ; $66E3: $74
    jr nz, jr_014_675F                            ; $66E4: $20 $79

    ld l, a                                       ; $66E6: $6F
    ld [hl], l                                    ; $66E7: $75
    jr nz, jr_014_674E                            ; $66E8: $20 $64

    ld l, c                                       ; $66EA: $69
    ld h, h                                       ; $66EB: $64
    jr nz, jr_014_6762                            ; $66EC: $20 $74

    ld l, a                                       ; $66EE: $6F
    rst $38                                       ; $66EF: $FF
    ld l, l                                       ; $66F0: $6D
    ld h, l                                       ; $66F1: $65
    jr nz, jr_014_6756                            ; $66F2: $20 $62

    ld h, c                                       ; $66F4: $61
    ld h, e                                       ; $66F5: $63
    ld l, e                                       ; $66F6: $6B
    jr nz, jr_014_675A                            ; $66F7: $20 $61

    ld [hl], h                                    ; $66F9: $74
    jr nz, jr_014_6770                            ; $66FA: $20 $74

    ld l, b                                       ; $66FC: $68
    ld h, l                                       ; $66FD: $65
    cp $72                                        ; $66FE: $FE $72
    ld l, c                                       ; $6700: $69

jr_014_6701:
    halt                                          ; $6701: $76
    ld h, l                                       ; $6702: $65
    ld [hl], d                                    ; $6703: $72
    ld hl, $FDFE                                  ; $6704: $21 $FE $FD
    sbc d                                         ; $6707: $9A
    ld e, b                                       ; $6708: $58
    add hl, bc                                    ; $6709: $09
    ld b, d                                       ; $670A: $42
    sbc e                                         ; $670B: $9B
    add sp, $55                                   ; $670C: $E8 $55
    sbc a                                         ; $670E: $9F
    ld c, a                                       ; $670F: $4F
    ld d, a                                       ; $6710: $57
    ld hl, $2021                                  ; $6711: $21 $21 $20

jr_014_6714:
    ld c, a                                       ; $6714: $4F
    ld [hl], a                                    ; $6715: $77
    jr nz, jr_014_6787                            ; $6716: $20 $6F

    ld [hl], a                                    ; $6718: $77
    jr nz, jr_014_678A                            ; $6719: $20 $6F

    ld [hl], a                                    ; $671B: $77
    rst $38                                       ; $671C: $FF

jr_014_671D:
    ld l, a                                       ; $671D: $6F
    ld [hl], a                                    ; $671E: $77
    jr nz, jr_014_6790                            ; $671F: $20 $6F

jr_014_6721:
    ld [hl], a                                    ; $6721: $77
    ld hl, $FE21                                  ; $6722: $21 $21 $FE
    db $FD                                        ; $6725: $FD
    sbc d                                         ; $6726: $9A
    ld e, b                                       ; $6727: $58
    dec bc                                        ; $6728: $0B
    ld b, d                                       ; $6729: $42
    sbc e                                         ; $672A: $9B
    add sp, $55                                   ; $672B: $E8 $55
    sbc a                                         ; $672D: $9F
    ld d, a                                       ; $672E: $57
    ld h, l                                       ; $672F: $65

jr_014_6730:
    daa                                           ; $6730: $27
    ld [hl], d                                    ; $6731: $72
    ld h, l                                       ; $6732: $65
    jr nz, jr_014_67A4                            ; $6733: $20 $6F

jr_014_6735:
    ld [hl], l                                    ; $6735: $75
    ld [hl], h                                    ; $6736: $74
    ld [hl], h                                    ; $6737: $74
    ld h, c                                       ; $6738: $61
    rst $38                                       ; $6739: $FF
    ld l, b                                       ; $673A: $68
    ld h, l                                       ; $673B: $65
    ld [hl], d                                    ; $673C: $72
    ld h, l                                       ; $673D: $65
    inc l                                         ; $673E: $2C
    jr nz, jr_014_679B                            ; $673F: $20 $5A

    ld h, l                                       ; $6741: $65
    ld [hl], h                                    ; $6742: $74

jr_014_6743:
    ld hl, $FDFE                                  ; $6743: $21 $FE $FD
    sbc d                                         ; $6746: $9A
    ld e, b                                       ; $6747: $58
    inc c                                         ; $6748: $0C
    ld b, d                                       ; $6749: $42
    sbc e                                         ; $674A: $9B
    ld c, b                                       ; $674B: $48
    ld b, [hl]                                    ; $674C: $46
    sbc a                                         ; $674D: $9F

jr_014_674E:
    ld c, a                                       ; $674E: $4F

jr_014_674F:
    ld [hl], d                                    ; $674F: $72
    ld [hl], a                                    ; $6750: $77
    ld l, c                                       ; $6751: $69
    ld l, [hl]                                    ; $6752: $6E
    inc l                                         ; $6753: $2C
    jr nz, jr_014_67CD                            ; $6754: $20 $77

jr_014_6756:
    ld l, b                                       ; $6756: $68
    ld h, c                                       ; $6757: $61
    ld [hl], h                                    ; $6758: $74
    dec l                                         ; $6759: $2D

jr_014_675A:
    cp $FD                                        ; $675A: $FE $FD
    sbc d                                         ; $675C: $9A
    ld e, b                                       ; $675D: $58
    dec c                                         ; $675E: $0D

jr_014_675F:
    ld b, d                                       ; $675F: $42
    sbc e                                         ; $6760: $9B
    adc b                                         ; $6761: $88

jr_014_6762:
    ld h, l                                       ; $6762: $65
    sbc a                                         ; $6763: $9F
    ld c, c                                       ; $6764: $49
    jr nz, jr_014_67DC                            ; $6765: $20 $75

    ld [hl], e                                    ; $6767: $73
    ld h, l                                       ; $6768: $65
    ld h, h                                       ; $6769: $64
    jr nz, jr_014_67D9                            ; $676A: $20 $6D

    ld a, c                                       ; $676C: $79
    jr nz, jr_014_67D7                            ; $676D: $20 $68

    ld l, a                                       ; $676F: $6F

jr_014_6770:
    ld l, a                                       ; $6770: $6F
    ld h, h                                       ; $6771: $64
    rst $38                                       ; $6772: $FF
    ld l, a                                       ; $6773: $6F
    ld h, [hl]                                    ; $6774: $66
    jr nz, @+$6A                                  ; $6775: $20 $68

    ld l, c                                       ; $6777: $69
    ld h, h                                       ; $6778: $64
    ld l, c                                       ; $6779: $69
    ld l, [hl]                                    ; $677A: $6E
    ld h, a                                       ; $677B: $67
    ld l, $2E                                     ; $677C: $2E $2E
    ld l, $FE                                     ; $677E: $2E $FE
    ld [hl], h                                    ; $6780: $74
    ld l, a                                       ; $6781: $6F
    jr nz, jr_014_67F7                            ; $6782: $20 $73

    ld h, c                                       ; $6784: $61
    halt                                          ; $6785: $76
    ld h, l                                       ; $6786: $65

jr_014_6787:
    rst $38                                       ; $6787: $FF
    ld l, l                                       ; $6788: $6D
    ld a, c                                       ; $6789: $79

jr_014_678A:
    ld [hl], e                                    ; $678A: $73
    ld h, l                                       ; $678B: $65
    ld l, h                                       ; $678C: $6C
    ld h, [hl]                                    ; $678D: $66
    ld l, $2E                                     ; $678E: $2E $2E

jr_014_6790:
    ld l, $FE                                     ; $6790: $2E $FE
    ld d, h                                       ; $6792: $54
    ld l, b                                       ; $6793: $68
    ld h, l                                       ; $6794: $65
    ld l, $2E                                     ; $6795: $2E $2E
    ld l, $FF                                     ; $6797: $2E $FF
    ld h, a                                       ; $6799: $67
    ld h, l                                       ; $679A: $65

jr_014_679B:
    ld a, c                                       ; $679B: $79
    ld [hl], e                                    ; $679C: $73
    ld h, l                                       ; $679D: $65
    ld [hl], d                                    ; $679E: $72
    ld l, $2E                                     ; $679F: $2E $2E
    ld l, $20                                     ; $67A1: $2E $20
    ld l, l                                       ; $67A3: $6D

jr_014_67A4:
    ld [hl], l                                    ; $67A4: $75
    ld [hl], e                                    ; $67A5: $73
    ld [hl], h                                    ; $67A6: $74
    cp $62                                        ; $67A7: $FE $62
    ld h, l                                       ; $67A9: $65
    ld l, $2E                                     ; $67AA: $2E $2E
    ld l, $20                                     ; $67AC: $2E $20
    ld [hl], e                                    ; $67AE: $73
    ld [hl], h                                    ; $67AF: $74
    ld l, a                                       ; $67B0: $6F
    ld [hl], b                                    ; $67B1: $70
    ld [hl], b                                    ; $67B2: $70
    ld h, l                                       ; $67B3: $65
    ld h, h                                       ; $67B4: $64
    ld l, $2E                                     ; $67B5: $2E $2E
    cp $FD                                        ; $67B7: $FE $FD
    sbc e                                         ; $67B9: $9B
    ld c, b                                       ; $67BA: $48
    ld b, [hl]                                    ; $67BB: $46
    sbc a                                         ; $67BC: $9F
    ld e, c                                       ; $67BD: $59
    ld l, a                                       ; $67BE: $6F
    ld [hl], l                                    ; $67BF: $75
    daa                                           ; $67C0: $27
    ld [hl], d                                    ; $67C1: $72
    ld h, l                                       ; $67C2: $65
    rst $38                                       ; $67C3: $FF
    ld h, h                                       ; $67C4: $64
    ld h, l                                       ; $67C5: $65
    ld l, h                                       ; $67C6: $6C
    ld l, c                                       ; $67C7: $69
    ld [hl], d                                    ; $67C8: $72
    ld l, c                                       ; $67C9: $69
    ld l, a                                       ; $67CA: $6F
    ld [hl], l                                    ; $67CB: $75
    ld [hl], e                                    ; $67CC: $73

jr_014_67CD:
    ld hl, $48FE                                  ; $67CD: $21 $FE $48
    ld l, a                                       ; $67D0: $6F
    ld l, h                                       ; $67D1: $6C
    ld h, h                                       ; $67D2: $64
    jr nz, jr_014_6848                            ; $67D3: $20 $73

    ld [hl], h                                    ; $67D5: $74
    ld l, c                                       ; $67D6: $69

jr_014_67D7:
    ld l, h                                       ; $67D7: $6C
    ld l, h                                       ; $67D8: $6C

jr_014_67D9:
    ld hl, $FDFE                                  ; $67D9: $21 $FE $FD

jr_014_67DC:
    sbc d                                         ; $67DC: $9A
    ld e, b                                       ; $67DD: $58
    ld c, $42                                     ; $67DE: $0E $42
    sbc e                                         ; $67E0: $9B
    ld c, b                                       ; $67E1: $48
    ld b, [hl]                                    ; $67E2: $46
    sbc a                                         ; $67E3: $9F
    ld c, b                                       ; $67E4: $48
    ld h, l                                       ; $67E5: $65
    daa                                           ; $67E6: $27
    ld [hl], e                                    ; $67E7: $73
    jr nz, @+$6B                                  ; $67E8: $20 $69

    ld l, [hl]                                    ; $67EA: $6E
    jr nz, jr_014_684F                            ; $67EB: $20 $62

    ld h, c                                       ; $67ED: $61
    ld h, h                                       ; $67EE: $64
    rst $38                                       ; $67EF: $FF
    ld [hl], e                                    ; $67F0: $73
    ld l, b                                       ; $67F1: $68
    ld h, c                                       ; $67F2: $61
    ld [hl], b                                    ; $67F3: $70
    ld h, l                                       ; $67F4: $65
    ld l, $FE                                     ; $67F5: $2E $FE

jr_014_67F7:
    db $FD                                        ; $67F7: $FD
    sbc d                                         ; $67F8: $9A
    ld e, b                                       ; $67F9: $58
    rrca                                          ; $67FA: $0F
    ld b, d                                       ; $67FB: $42
    sbc e                                         ; $67FC: $9B
    adc b                                         ; $67FD: $88
    ld h, l                                       ; $67FE: $65
    sbc a                                         ; $67FF: $9F
    ld d, h                                       ; $6800: $54
    ld h, c                                       ; $6801: $61
    ld l, e                                       ; $6802: $6B
    ld h, l                                       ; $6803: $65
    jr nz, jr_014_687A                            ; $6804: $20 $74

    ld l, b                                       ; $6806: $68
    ld l, c                                       ; $6807: $69
    ld [hl], e                                    ; $6808: $73
    ld l, $2E                                     ; $6809: $2E $2E
    ld l, $FE                                     ; $680B: $2E $FE
    db $FD                                        ; $680D: $FD
    sbc d                                         ; $680E: $9A
    rra                                           ; $680F: $1F
    nop                                           ; $6810: $00
    sbc a                                         ; $6811: $9F
    ld d, h                                       ; $6812: $54
    ld l, a                                       ; $6813: $6F
    ld l, [hl]                                    ; $6814: $6E
    ld a, c                                       ; $6815: $79
    jr nz, jr_014_687F                            ; $6816: $20 $67

    ld l, a                                       ; $6818: $6F
    ld [hl], h                                    ; $6819: $74
    jr nz, jr_014_6890                            ; $681A: $20 $74

    ld l, b                                       ; $681C: $68
    ld h, l                                       ; $681D: $65
    rst $38                                       ; $681E: $FF
    ld b, l                                       ; $681F: $45
    ld l, [hl]                                    ; $6820: $6E
    ld h, l                                       ; $6821: $65
    ld [hl], d                                    ; $6822: $72
    ld h, a                                       ; $6823: $67
    ld a, c                                       ; $6824: $79
    jr nz, @+$44                                  ; $6825: $20 $42

    ld h, c                                       ; $6827: $61
    ld l, [hl]                                    ; $6828: $6E
    ld h, h                                       ; $6829: $64
    ld hl, $40FD                                  ; $682A: $21 $FD $40
    or h                                          ; $682D: $B4
    ld b, b                                       ; $682E: $40
    or h                                          ; $682F: $B4
    ld b, b                                       ; $6830: $40
    or h                                          ; $6831: $B4
    rra                                           ; $6832: $1F
    ld h, $9A                                     ; $6833: $26 $9A
    sbc e                                         ; $6835: $9B
    adc b                                         ; $6836: $88
    ld h, l                                       ; $6837: $65
    sbc a                                         ; $6838: $9F
    ld d, h                                       ; $6839: $54
    ld l, b                                       ; $683A: $68
    ld l, c                                       ; $683B: $69
    ld [hl], e                                    ; $683C: $73
    jr nz, jr_014_68B6                            ; $683D: $20 $77

    ld l, c                                       ; $683F: $69
    ld l, h                                       ; $6840: $6C
    ld l, h                                       ; $6841: $6C
    ld l, $2E                                     ; $6842: $2E $2E
    ld l, $FF                                     ; $6844: $2E $FF
    ld l, h                                       ; $6846: $6C
    ld h, l                                       ; $6847: $65

jr_014_6848:
    ld [hl], h                                    ; $6848: $74
    jr nz, jr_014_68C4                            ; $6849: $20 $79

    ld l, a                                       ; $684B: $6F
    ld [hl], l                                    ; $684C: $75
    jr nz, jr_014_68BF                            ; $684D: $20 $70

jr_014_684F:
    ld h, c                                       ; $684F: $61
    ld [hl], e                                    ; $6850: $73
    ld [hl], e                                    ; $6851: $73
    ld l, $2E                                     ; $6852: $2E $2E
    ld l, $FE                                     ; $6854: $2E $FE
    ld [hl], h                                    ; $6856: $74
    ld l, b                                       ; $6857: $68
    ld [hl], d                                    ; $6858: $72
    ld l, a                                       ; $6859: $6F
    ld [hl], l                                    ; $685A: $75
    ld h, a                                       ; $685B: $67
    ld l, b                                       ; $685C: $68
    jr nz, jr_014_68D3                            ; $685D: $20 $74

    ld l, b                                       ; $685F: $68
    ld h, l                                       ; $6860: $65
    rst $38                                       ; $6861: $FF
    ld h, [hl]                                    ; $6862: $66
    ld l, a                                       ; $6863: $6F
    ld [hl], d                                    ; $6864: $72
    ld h, l                                       ; $6865: $65
    ld [hl], e                                    ; $6866: $73
    ld [hl], h                                    ; $6867: $74
    ld l, $20                                     ; $6868: $2E $20
    jr nz, jr_014_68B3                            ; $686A: $20 $47

    ld l, a                                       ; $686C: $6F
    jr nz, jr_014_68E2                            ; $686D: $20 $73

    ld h, l                                       ; $686F: $65
    ld h, l                                       ; $6870: $65
    rst $38                                       ; $6871: $FF
    ld b, a                                       ; $6872: $47
    ld l, c                                       ; $6873: $69
    ld h, c                                       ; $6874: $61
    ld l, $2E                                     ; $6875: $2E $2E
    ld l, $20                                     ; $6877: $2E $20
    ld l, c                                       ; $6879: $69

jr_014_687A:
    ld l, [hl]                                    ; $687A: $6E
    jr nz, @+$76                                  ; $687B: $20 $74

    ld l, b                                       ; $687D: $68
    ld h, l                                       ; $687E: $65

jr_014_687F:
    cp $57                                        ; $687F: $FE $57
    ld h, l                                       ; $6881: $65
    ld h, c                                       ; $6882: $61
    halt                                          ; $6883: $76
    ld h, l                                       ; $6884: $65
    ld l, $2E                                     ; $6885: $2E $2E
    ld l, $FE                                     ; $6887: $2E $FE
    db $FD                                        ; $6889: $FD
    sbc d                                         ; $688A: $9A
    ld e, b                                       ; $688B: $58
    db $10                                        ; $688C: $10
    ld b, d                                       ; $688D: $42
    sbc e                                         ; $688E: $9B
    ld c, b                                       ; $688F: $48

jr_014_6890:
    ld b, [hl]                                    ; $6890: $46
    sbc a                                         ; $6891: $9F
    ld c, c                                       ; $6892: $49
    daa                                           ; $6893: $27
    ld l, l                                       ; $6894: $6D
    jr nz, jr_014_68FE                            ; $6895: $20 $67

    ld l, a                                       ; $6897: $6F
    ld l, c                                       ; $6898: $69
    ld l, [hl]                                    ; $6899: $6E
    ld h, a                                       ; $689A: $67
    jr nz, jr_014_6911                            ; $689B: $20 $74

    ld l, a                                       ; $689D: $6F
    rst $38                                       ; $689E: $FF
    ld [hl], h                                    ; $689F: $74
    ld h, c                                       ; $68A0: $61
    ld l, e                                       ; $68A1: $6B
    ld h, l                                       ; $68A2: $65
    jr nz, jr_014_68F4                            ; $68A3: $20 $4F

    ld [hl], d                                    ; $68A5: $72
    ld [hl], a                                    ; $68A6: $77
    ld l, c                                       ; $68A7: $69
    ld l, [hl]                                    ; $68A8: $6E
    cp $62                                        ; $68A9: $FE $62
    ld h, c                                       ; $68AB: $61
    ld h, e                                       ; $68AC: $63
    ld l, e                                       ; $68AD: $6B
    jr nz, jr_014_6924                            ; $68AE: $20 $74

    ld l, a                                       ; $68B0: $6F
    rst $38                                       ; $68B1: $FF
    ld d, [hl]                                    ; $68B2: $56

jr_014_68B3:
    ld h, c                                       ; $68B3: $61
    ld [hl], e                                    ; $68B4: $73
    ld l, b                                       ; $68B5: $68

jr_014_68B6:
    jr nz, jr_014_6906                            ; $68B6: $20 $4E

    ld h, c                                       ; $68B8: $61
    ld [hl], d                                    ; $68B9: $72
    ld l, a                                       ; $68BA: $6F
    ld l, a                                       ; $68BB: $6F
    ld l, l                                       ; $68BC: $6D
    ld l, $FE                                     ; $68BD: $2E $FE

jr_014_68BF:
    ld d, d                                       ; $68BF: $52
    ld l, c                                       ; $68C0: $69
    ld h, a                                       ; $68C1: $67
    ld l, b                                       ; $68C2: $68
    ld [hl], h                                    ; $68C3: $74

jr_014_68C4:
    jr nz, jr_014_6934                            ; $68C4: $20 $6E

    ld l, a                                       ; $68C6: $6F
    ld [hl], a                                    ; $68C7: $77
    rst $38                                       ; $68C8: $FF
    ld [hl], e                                    ; $68C9: $73
    ld h, l                                       ; $68CA: $65
    ld h, l                                       ; $68CB: $65
    ld l, c                                       ; $68CC: $69
    ld l, [hl]                                    ; $68CD: $6E
    ld h, a                                       ; $68CE: $67
    jr nz, jr_014_6918                            ; $68CF: $20 $47

    ld l, c                                       ; $68D1: $69
    ld h, c                                       ; $68D2: $61

jr_014_68D3:
    cp $77                                        ; $68D3: $FE $77
    ld l, a                                       ; $68D5: $6F
    ld [hl], l                                    ; $68D6: $75
    ld l, h                                       ; $68D7: $6C
    ld h, h                                       ; $68D8: $64
    jr nz, jr_014_693D                            ; $68D9: $20 $62

    ld h, l                                       ; $68DB: $65
    jr nz, jr_014_6957                            ; $68DC: $20 $79

    ld l, a                                       ; $68DE: $6F
    ld [hl], l                                    ; $68DF: $75
    ld [hl], d                                    ; $68E0: $72
    rst $38                                       ; $68E1: $FF

jr_014_68E2:
    ld h, d                                       ; $68E2: $62
    ld h, l                                       ; $68E3: $65
    ld [hl], e                                    ; $68E4: $73
    ld [hl], h                                    ; $68E5: $74
    jr nz, jr_014_694A                            ; $68E6: $20 $62

    ld h, l                                       ; $68E8: $65
    ld [hl], h                                    ; $68E9: $74
    ld l, $FE                                     ; $68EA: $2E $FE
    ld d, h                                       ; $68EC: $54
    ld l, b                                       ; $68ED: $68
    ld h, c                                       ; $68EE: $61
    ld [hl], h                                    ; $68EF: $74
    jr nz, jr_014_6957                            ; $68F0: $20 $65

    ld l, [hl]                                    ; $68F2: $6E
    ld h, l                                       ; $68F3: $65

jr_014_68F4:
    ld [hl], d                                    ; $68F4: $72
    ld h, a                                       ; $68F5: $67
    ld a, c                                       ; $68F6: $79
    cp $62                                        ; $68F7: $FE $62
    ld h, c                                       ; $68F9: $61
    ld l, [hl]                                    ; $68FA: $6E
    ld h, h                                       ; $68FB: $64
    jr nz, jr_014_6975                            ; $68FC: $20 $77

jr_014_68FE:
    ld l, c                                       ; $68FE: $69
    ld l, h                                       ; $68FF: $6C
    ld l, h                                       ; $6900: $6C
    jr nz, jr_014_696F                            ; $6901: $20 $6C

    ld h, l                                       ; $6903: $65
    ld [hl], h                                    ; $6904: $74
    rst $38                                       ; $6905: $FF

jr_014_6906:
    ld a, c                                       ; $6906: $79
    ld l, a                                       ; $6907: $6F
    ld [hl], l                                    ; $6908: $75
    jr nz, jr_014_697B                            ; $6909: $20 $70

    ld h, c                                       ; $690B: $61
    ld [hl], e                                    ; $690C: $73
    ld [hl], e                                    ; $690D: $73
    jr nz, @+$76                                  ; $690E: $20 $74

    ld l, b                                       ; $6910: $68

jr_014_6911:
    ld l, a                                       ; $6911: $6F
    ld [hl], e                                    ; $6912: $73
    ld h, l                                       ; $6913: $65
    cp $62                                        ; $6914: $FE $62
    ld l, h                                       ; $6916: $6C
    ld l, a                                       ; $6917: $6F

jr_014_6918:
    ld h, e                                       ; $6918: $63
    ld l, e                                       ; $6919: $6B
    ld [hl], e                                    ; $691A: $73
    jr nz, jr_014_6991                            ; $691B: $20 $74

    ld l, a                                       ; $691D: $6F
    jr nz, jr_014_6994                            ; $691E: $20 $74

    ld l, b                                       ; $6920: $68
    ld h, l                                       ; $6921: $65
    rst $38                                       ; $6922: $FF
    ld d, a                                       ; $6923: $57

jr_014_6924:
    ld h, l                                       ; $6924: $65
    ld [hl], e                                    ; $6925: $73
    ld [hl], h                                    ; $6926: $74
    jr nz, jr_014_6998                            ; $6927: $20 $6F

    ld h, [hl]                                    ; $6929: $66
    jr nz, jr_014_6982                            ; $692A: $20 $56

    ld h, c                                       ; $692C: $61
    ld [hl], e                                    ; $692D: $73
    ld l, b                                       ; $692E: $68
    cp $4E                                        ; $692F: $FE $4E
    ld h, c                                       ; $6931: $61
    ld [hl], d                                    ; $6932: $72
    ld l, a                                       ; $6933: $6F

jr_014_6934:
    ld l, a                                       ; $6934: $6F
    ld l, l                                       ; $6935: $6D
    ld l, $FE                                     ; $6936: $2E $FE
    db $FD                                        ; $6938: $FD
    sbc e                                         ; $6939: $9B
    ld a, b                                       ; $693A: $78
    ld [hl], b                                    ; $693B: $70
    sbc a                                         ; $693C: $9F

jr_014_693D:
    ld c, c                                       ; $693D: $49
    ld [hl], e                                    ; $693E: $73
    jr nz, @+$6A                                  ; $693F: $20 $68

    ld h, l                                       ; $6941: $65
    jr nz, jr_014_69AB                            ; $6942: $20 $67

    ld l, a                                       ; $6944: $6F
    ld l, c                                       ; $6945: $69
    ld l, [hl]                                    ; $6946: $6E
    ld h, a                                       ; $6947: $67
    jr nz, jr_014_69BE                            ; $6948: $20 $74

jr_014_694A:
    ld l, a                                       ; $694A: $6F
    rst $38                                       ; $694B: $FF
    ld h, d                                       ; $694C: $62
    ld h, l                                       ; $694D: $65
    jr nz, jr_014_69BF                            ; $694E: $20 $6F

    ld l, e                                       ; $6950: $6B
    ld h, c                                       ; $6951: $61
    ld a, c                                       ; $6952: $79
    ccf                                           ; $6953: $3F
    cp $FD                                        ; $6954: $FE $FD
    sbc e                                         ; $6956: $9B

jr_014_6957:
    ld c, b                                       ; $6957: $48
    ld b, [hl]                                    ; $6958: $46
    sbc a                                         ; $6959: $9F
    ld c, c                                       ; $695A: $49
    jr nz, jr_014_69C5                            ; $695B: $20 $68

    ld l, a                                       ; $695D: $6F
    ld [hl], b                                    ; $695E: $70
    ld h, l                                       ; $695F: $65
    jr nz, jr_014_69D5                            ; $6960: $20 $73

    ld l, a                                       ; $6962: $6F
    ld l, $FF                                     ; $6963: $2E $FF
    ld e, c                                       ; $6965: $59
    ld l, a                                       ; $6966: $6F
    ld [hl], l                                    ; $6967: $75
    daa                                           ; $6968: $27
    ld h, h                                       ; $6969: $64
    jr nz, @+$64                                  ; $696A: $20 $62

    ld h, l                                       ; $696C: $65
    ld [hl], h                                    ; $696D: $74
    ld [hl], h                                    ; $696E: $74

jr_014_696F:
    ld h, l                                       ; $696F: $65
    ld [hl], d                                    ; $6970: $72
    cp $67                                        ; $6971: $FE $67
    ld h, l                                       ; $6973: $65
    ld [hl], h                                    ; $6974: $74

jr_014_6975:
    jr nz, jr_014_69DE                            ; $6975: $20 $67

    ld l, a                                       ; $6977: $6F
    ld l, c                                       ; $6978: $69
    ld l, [hl]                                    ; $6979: $6E
    ld h, a                                       ; $697A: $67

jr_014_697B:
    ld l, $2E                                     ; $697B: $2E $2E
    ld l, $FF                                     ; $697D: $2E $FF
    ld l, c                                       ; $697F: $69
    ld [hl], h                                    ; $6980: $74
    daa                                           ; $6981: $27

jr_014_6982:
    ld [hl], e                                    ; $6982: $73
    jr nz, @+$63                                  ; $6983: $20 $61

    jr nz, jr_014_69F7                            ; $6985: $20 $70

    ld [hl], d                                    ; $6987: $72
    ld h, l                                       ; $6988: $65
    ld [hl], h                                    ; $6989: $74
    ld [hl], h                                    ; $698A: $74
    ld a, c                                       ; $698B: $79
    cp $6C                                        ; $698C: $FE $6C
    ld l, a                                       ; $698E: $6F
    ld l, [hl]                                    ; $698F: $6E
    ld h, a                                       ; $6990: $67

jr_014_6991:
    jr nz, jr_014_6A0A                            ; $6991: $20 $77

    ld h, c                                       ; $6993: $61

jr_014_6994:
    ld l, h                                       ; $6994: $6C
    ld l, e                                       ; $6995: $6B
    jr nz, @+$76                                  ; $6996: $20 $74

jr_014_6998:
    ld l, a                                       ; $6998: $6F
    rst $38                                       ; $6999: $FF
    ld [hl], h                                    ; $699A: $74
    ld l, b                                       ; $699B: $68
    ld h, l                                       ; $699C: $65
    jr nz, @+$59                                  ; $699D: $20 $57

    ld h, l                                       ; $699F: $65
    ld h, c                                       ; $69A0: $61
    halt                                          ; $69A1: $76
    ld h, l                                       ; $69A2: $65
    ld l, $FE                                     ; $69A3: $2E $FE
    db $FD                                        ; $69A5: $FD
    sbc d                                         ; $69A6: $9A
    ld e, b                                       ; $69A7: $58
    ld de, $9B42                                  ; $69A8: $11 $42 $9B

jr_014_69AB:
    adc b                                         ; $69AB: $88
    ld h, l                                       ; $69AC: $65
    sbc a                                         ; $69AD: $9F
    ld b, l                                       ; $69AE: $45
    ld l, c                                       ; $69AF: $69
    ld h, h                                       ; $69B0: $64
    ld l, a                                       ; $69B1: $6F
    ld l, [hl]                                    ; $69B2: $6E
    ld l, $2E                                     ; $69B3: $2E $2E
    ld l, $20                                     ; $69B5: $2E $20
    ld [hl], h                                    ; $69B7: $74
    ld l, b                                       ; $69B8: $68
    ld h, l                                       ; $69B9: $65
    rst $38                                       ; $69BA: $FF
    ld h, a                                       ; $69BB: $67
    ld h, l                                       ; $69BC: $65
    ld a, c                                       ; $69BD: $79

jr_014_69BE:
    ld [hl], e                                    ; $69BE: $73

jr_014_69BF:
    ld h, l                                       ; $69BF: $65
    ld [hl], d                                    ; $69C0: $72
    ld l, $2E                                     ; $69C1: $2E $2E
    ld l, $FE                                     ; $69C3: $2E $FE

jr_014_69C5:
    db $FD                                        ; $69C5: $FD
    sbc e                                         ; $69C6: $9B
    ld c, b                                       ; $69C7: $48
    ld b, [hl]                                    ; $69C8: $46
    sbc a                                         ; $69C9: $9F
    ld e, c                                       ; $69CA: $59
    ld l, a                                       ; $69CB: $6F
    ld [hl], l                                    ; $69CC: $75
    jr nz, jr_014_6A46                            ; $69CD: $20 $77

    ld h, c                                       ; $69CF: $61
    ld l, [hl]                                    ; $69D0: $6E
    ld [hl], h                                    ; $69D1: $74
    jr nz, jr_014_6A41                            ; $69D2: $20 $6D

    ld h, l                                       ; $69D4: $65

jr_014_69D5:
    rst $38                                       ; $69D5: $FF
    ld [hl], h                                    ; $69D6: $74
    ld l, a                                       ; $69D7: $6F
    jr nz, jr_014_6A4E                            ; $69D8: $20 $74

    ld [hl], d                                    ; $69DA: $72
    ld a, c                                       ; $69DB: $79
    jr nz, jr_014_6A3F                            ; $69DC: $20 $61

jr_014_69DE:
    ld l, [hl]                                    ; $69DE: $6E
    ld h, h                                       ; $69DF: $64
    cp $73                                        ; $69E0: $FE $73
    ld [hl], h                                    ; $69E2: $74
    ld l, a                                       ; $69E3: $6F
    ld [hl], b                                    ; $69E4: $70
    jr nz, jr_014_6A50                            ; $69E5: $20 $69

    ld [hl], h                                    ; $69E7: $74
    ccf                                           ; $69E8: $3F
    cp $FD                                        ; $69E9: $FE $FD
    sbc e                                         ; $69EB: $9B
    adc b                                         ; $69EC: $88
    ld h, l                                       ; $69ED: $65
    sbc a                                         ; $69EE: $9F
    ld c, [hl]                                    ; $69EF: $4E
    ld c, a                                       ; $69F0: $4F
    jr nz, jr_014_6A4C                            ; $69F1: $20 $59

    ld c, a                                       ; $69F3: $4F
    ld d, l                                       ; $69F4: $55
    jr nz, @+$48                                  ; $69F5: $20 $46

jr_014_69F7:
    ld c, a                                       ; $69F7: $4F
    ld c, a                                       ; $69F8: $4F
    ld c, h                                       ; $69F9: $4C
    ld hl, $2E2E                                  ; $69FA: $21 $2E $2E
    ld l, $FF                                     ; $69FD: $2E $FF
    ld l, a                                       ; $69FF: $6F
    ld [hl], a                                    ; $6A00: $77
    ld [hl], a                                    ; $6A01: $77
    ld l, $2E                                     ; $6A02: $2E $2E
    ld l, $20                                     ; $6A04: $2E $20
    ld h, h                                       ; $6A06: $64
    ld l, a                                       ; $6A07: $6F
    ld l, [hl]                                    ; $6A08: $6E
    daa                                           ; $6A09: $27

jr_014_6A0A:
    ld [hl], h                                    ; $6A0A: $74
    cp $74                                        ; $6A0B: $FE $74
    ld [hl], d                                    ; $6A0D: $72
    ld a, c                                       ; $6A0E: $79
    jr nz, @+$76                                  ; $6A0F: $20 $74

    ld l, a                                       ; $6A11: $6F
    ld l, $2E                                     ; $6A12: $2E $2E
    ld l, $20                                     ; $6A14: $2E $20
    ld h, l                                       ; $6A16: $65
    ld l, [hl]                                    ; $6A17: $6E
    ld [hl], h                                    ; $6A18: $74
    ld h, l                                       ; $6A19: $65
    ld [hl], d                                    ; $6A1A: $72
    rst $38                                       ; $6A1B: $FF
    ld l, a                                       ; $6A1C: $6F
    ld [hl], d                                    ; $6A1D: $72
    ld l, $2E                                     ; $6A1E: $2E $2E
    ld l, $20                                     ; $6A20: $2E $20
    ld a, c                                       ; $6A22: $79
    ld l, a                                       ; $6A23: $6F
    ld [hl], l                                    ; $6A24: $75
    daa                                           ; $6A25: $27
    ld l, h                                       ; $6A26: $6C
    ld l, h                                       ; $6A27: $6C
    cp $65                                        ; $6A28: $FE $65
    ld l, [hl]                                    ; $6A2A: $6E
    ld h, h                                       ; $6A2B: $64
    jr nz, jr_014_6AA3                            ; $6A2C: $20 $75

    ld [hl], b                                    ; $6A2E: $70
    ld l, $2E                                     ; $6A2F: $2E $2E
    ld l, $20                                     ; $6A31: $2E $20
    ld l, h                                       ; $6A33: $6C
    ld l, c                                       ; $6A34: $69
    ld l, e                                       ; $6A35: $6B
    ld h, l                                       ; $6A36: $65
    rst $38                                       ; $6A37: $FF
    ld l, l                                       ; $6A38: $6D
    ld h, l                                       ; $6A39: $65
    ld l, $2E                                     ; $6A3A: $2E $2E
    ld l, $FE                                     ; $6A3C: $2E $FE
    db $FD                                        ; $6A3E: $FD

jr_014_6A3F:
    sbc e                                         ; $6A3F: $9B
    ld c, b                                       ; $6A40: $48

jr_014_6A41:
    ld b, [hl]                                    ; $6A41: $46
    sbc a                                         ; $6A42: $9F
    ld d, h                                       ; $6A43: $54
    ld l, b                                       ; $6A44: $68
    ld h, c                                       ; $6A45: $61

jr_014_6A46:
    ld [hl], h                                    ; $6A46: $74
    jr nz, jr_014_6AB6                            ; $6A47: $20 $6D

    ld h, l                                       ; $6A49: $65
    ld h, c                                       ; $6A4A: $61
    ld l, [hl]                                    ; $6A4B: $6E

jr_014_6A4C:
    ld [hl], e                                    ; $6A4C: $73
    inc l                                         ; $6A4D: $2C

jr_014_6A4E:
    rst $38                                       ; $6A4E: $FF
    ld [hl], h                                    ; $6A4F: $74

jr_014_6A50:
    ld l, b                                       ; $6A50: $68
    ld l, c                                       ; $6A51: $69
    ld [hl], e                                    ; $6A52: $73
    jr nz, jr_014_6AC2                            ; $6A53: $20 $6D

    ld [hl], l                                    ; $6A55: $75
    ld [hl], e                                    ; $6A56: $73
    ld [hl], h                                    ; $6A57: $74
    jr nz, jr_014_6ABC                            ; $6A58: $20 $62

    ld h, l                                       ; $6A5A: $65
    ld l, $2E                                     ; $6A5B: $2E $2E
    ld l, $FE                                     ; $6A5D: $2E $FE
    db $FD                                        ; $6A5F: $FD
    sbc e                                         ; $6A60: $9B
    adc b                                         ; $6A61: $88
    ld h, l                                       ; $6A62: $65
    sbc a                                         ; $6A63: $9F
    ld d, h                                       ; $6A64: $54
    ld l, a                                       ; $6A65: $6F
    ld l, [hl]                                    ; $6A66: $6E
    ld a, c                                       ; $6A67: $79
    inc l                                         ; $6A68: $2C
    jr nz, jr_014_6ACE                            ; $6A69: $20 $63

    ld l, a                                       ; $6A6B: $6F
    ld l, l                                       ; $6A6C: $6D
    ld h, l                                       ; $6A6D: $65
    ld l, $2E                                     ; $6A6E: $2E $2E
    ld l, $FF                                     ; $6A70: $2E $FF
    ld l, b                                       ; $6A72: $68
    ld h, l                                       ; $6A73: $65
    ld [hl], d                                    ; $6A74: $72
    ld h, l                                       ; $6A75: $65
    ld l, $2E                                     ; $6A76: $2E $2E
    ld l, $FE                                     ; $6A78: $2E $FE
    db $FD                                        ; $6A7A: $FD
    sbc d                                         ; $6A7B: $9A
    ld e, b                                       ; $6A7C: $58

jr_014_6A7D:
    ld [de], a                                    ; $6A7D: $12
    ld b, d                                       ; $6A7E: $42
    ld l, a                                       ; $6A7F: $6F
    rrca                                          ; $6A80: $0F
    rra                                           ; $6A81: $1F
    nop                                           ; $6A82: $00
    halt                                          ; $6A83: $76
    jr nz, @+$11                                  ; $6A84: $20 $0F

    sbc e                                         ; $6A86: $9B
    ld a, b                                       ; $6A87: $78
    ld [hl], b                                    ; $6A88: $70
    sbc a                                         ; $6A89: $9F
    ld c, a                                       ; $6A8A: $4F
    ld d, l                                       ; $6A8B: $55
    ld b, e                                       ; $6A8C: $43
    ld c, b                                       ; $6A8D: $48
    ld hl, $FDFE                                  ; $6A8E: $21 $FE $FD
    sbc d                                         ; $6A91: $9A
    ld e, b                                       ; $6A92: $58
    ld bc, $9342                                  ; $6A93: $01 $42 $93
    ld h, l                                       ; $6A96: $65
    ld a, b                                       ; $6A97: $78
    ld b, b                                       ; $6A98: $40
    ld c, a                                       ; $6A99: $4F
    ld h, [hl]                                    ; $6A9A: $66
    ret nz                                        ; $6A9B: $C0

    ld e, h                                       ; $6A9C: $5C
    ld hl, $0F6F                                  ; $6A9D: $21 $6F $0F
    rst $38                                       ; $6AA0: $FF
    ld a, a                                       ; $6AA1: $7F
    ld b, [hl]                                    ; $6AA2: $46

jr_014_6AA3:
    xor [hl]                                      ; $6AA3: $AE
    ld l, d                                       ; $6AA4: $6A
    sub e                                         ; $6AA5: $93
    ld h, l                                       ; $6AA6: $65
    ld a, b                                       ; $6AA7: $78
    ld b, b                                       ; $6AA8: $40
    ld c, a                                       ; $6AA9: $4F
    ld h, [hl]                                    ; $6AAA: $66
    ret nz                                        ; $6AAB: $C0

    ld e, h                                       ; $6AAC: $5C
    ld hl, $B2AC                                  ; $6AAD: $21 $AC $B2
    and d                                         ; $6AB0: $A2
    ld bc, $044B                                  ; $6AB1: $01 $4B $04
    inc d                                         ; $6AB4: $14
    inc bc                                        ; $6AB5: $03

jr_014_6AB6:
    nop                                           ; $6AB6: $00
    rst $08                                       ; $6AB7: $CF
    ld l, e                                       ; $6AB8: $6B
    rst $38                                       ; $6AB9: $FF
    ld h, h                                       ; $6ABA: $64
    ld a, e                                       ; $6ABB: $7B

jr_014_6ABC:
    ld b, b                                       ; $6ABC: $40
    dec b                                         ; $6ABD: $05
    nop                                           ; $6ABE: $00

jr_014_6ABF:
    add c                                         ; $6ABF: $81
    ld e, l                                       ; $6AC0: $5D
    add hl, bc                                    ; $6AC1: $09

jr_014_6AC2:
    ld c, $05                                     ; $6AC2: $0E $05
    pop de                                        ; $6AC4: $D1
    nop                                           ; $6AC5: $00
    jr nz, jr_014_6A7D                            ; $6AC6: $20 $B5

    ld d, b                                       ; $6AC8: $50
    ld [hl+], a                                   ; $6AC9: $22
    dec b                                         ; $6ACA: $05
    ld b, b                                       ; $6ACB: $40
    dec bc                                        ; $6ACC: $0B
    nop                                           ; $6ACD: $00

jr_014_6ACE:
    nop                                           ; $6ACE: $00
    add d                                         ; $6ACF: $82
    rra                                           ; $6AD0: $1F
    ld h, $94                                     ; $6AD1: $26 $94
    halt                                          ; $6AD3: $76
    jr nz, @+$11                                  ; $6AD4: $20 $0F

    ld b, d                                       ; $6AD6: $42
    dec de                                        ; $6AD7: $1B
    dec b                                         ; $6AD8: $05
    add e                                         ; $6AD9: $83
    ld [bc], a                                    ; $6ADA: $02
    inc b                                         ; $6ADB: $04
    nop                                           ; $6ADC: $00
    ld bc, $0400                                  ; $6ADD: $01 $00 $04
    ld [bc], a                                    ; $6AE0: $02
    db $FC                                        ; $6AE1: $FC
    nop                                           ; $6AE2: $00
    ld bc, $FC00                                  ; $6AE3: $01 $00 $FC
    ld [bc], a                                    ; $6AE6: $02
    inc b                                         ; $6AE7: $04
    nop                                           ; $6AE8: $00
    ld bc, $0400                                  ; $6AE9: $01 $00 $04
    ld [bc], a                                    ; $6AEC: $02
    db $FC                                        ; $6AED: $FC
    nop                                           ; $6AEE: $00
    ld bc, $FC00                                  ; $6AEF: $01 $00 $FC
    ld [bc], a                                    ; $6AF2: $02
    inc b                                         ; $6AF3: $04
    nop                                           ; $6AF4: $00
    ld bc, $0400                                  ; $6AF5: $01 $00 $04
    ld [bc], a                                    ; $6AF8: $02
    db $FC                                        ; $6AF9: $FC
    nop                                           ; $6AFA: $00
    ld bc, $FC00                                  ; $6AFB: $01 $00 $FC
    ld [bc], a                                    ; $6AFE: $02
    inc b                                         ; $6AFF: $04
    nop                                           ; $6B00: $00
    ld bc, $0400                                  ; $6B01: $01 $00 $04
    ld [bc], a                                    ; $6B04: $02
    db $FC                                        ; $6B05: $FC
    nop                                           ; $6B06: $00
    ld bc, $FC00                                  ; $6B07: $01 $00 $FC
    nop                                           ; $6B0A: $00
    ld b, d                                       ; $6B0B: $42
    rlca                                          ; $6B0C: $07
    nop                                           ; $6B0D: $00
    ld l, e                                       ; $6B0E: $6B
    ld c, d                                       ; $6B0F: $4A
    add hl, bc                                    ; $6B10: $09
    nop                                           ; $6B11: $00
    jr nz, jr_014_6ABF                            ; $6B12: $20 $AB

    ld d, b                                       ; $6B14: $50
    ld e, e                                       ; $6B15: $5B
    inc d                                         ; $6B16: $14
    ld a, a                                       ; $6B17: $7F
    ld l, d                                       ; $6B18: $6A
    ld e, d                                       ; $6B19: $5A
    inc d                                         ; $6B1A: $14
    rst $10                                       ; $6B1B: $D7
    ld l, d                                       ; $6B1C: $6A
    ld h, d                                       ; $6B1D: $62
    ld bc, $0009                                  ; $6B1E: $01 $09 $00
    jr nz, jr_014_6B80                            ; $6B21: $20 $5D

    ld d, b                                       ; $6B23: $50
    ld b, b                                       ; $6B24: $40
    ld [$0009], sp                                ; $6B25: $08 $09 $00
    jr nz, @-$53                                  ; $6B28: $20 $AB

    ld d, b                                       ; $6B2A: $50
    rlca                                          ; $6B2B: $07
    nop                                           ; $6B2C: $00
    add c                                         ; $6B2D: $81
    ld e, l                                       ; $6B2E: $5D
    ld b, d                                       ; $6B2F: $42
    xor c                                         ; $6B30: $A9
    inc b                                         ; $6B31: $04
    nop                                           ; $6B32: $00
    xor h                                         ; $6B33: $AC
    and e                                         ; $6B34: $A3
    and e                                         ; $6B35: $A3
    ld bc, $A5AF                                  ; $6B36: $01 $AF $A5
    and c                                         ; $6B39: $A1
    ld [bc], a                                    ; $6B3A: $02
    sub e                                         ; $6B3B: $93
    ld h, l                                       ; $6B3C: $65
    ld a, b                                       ; $6B3D: $78
    ld b, b                                       ; $6B3E: $40
    ld c, a                                       ; $6B3F: $4F
    ld h, h                                       ; $6B40: $64
    ld a, e                                       ; $6B41: $7B
    ld b, b                                       ; $6B42: $40
    ld h, [hl]                                    ; $6B43: $66
    ret nz                                        ; $6B44: $C0

    ld e, h                                       ; $6B45: $5C
    ld hl, $0005                                  ; $6B46: $21 $05 $00
    ld l, e                                       ; $6B49: $6B
    ld c, d                                       ; $6B4A: $4A
    add hl, bc                                    ; $6B4B: $09
    inc c                                         ; $6B4C: $0C
    pop hl                                        ; $6B4D: $E1
    ret nc                                        ; $6B4E: $D0

    nop                                           ; $6B4F: $00
    inc d                                         ; $6B50: $14
    add b                                         ; $6B51: $80
    ld l, h                                       ; $6B52: $6C
    ld [hl+], a                                   ; $6B53: $22
    dec b                                         ; $6B54: $05
    ld b, b                                       ; $6B55: $40
    dec b                                         ; $6B56: $05
    inc bc                                        ; $6B57: $03
    ld l, e                                       ; $6B58: $6B
    ld c, d                                       ; $6B59: $4A
    add hl, bc                                    ; $6B5A: $09
    ld a, [bc]                                    ; $6B5B: $0A
    cp l                                          ; $6B5C: $BD
    ret nc                                        ; $6B5D: $D0

    add hl, sp                                    ; $6B5E: $39
    inc d                                         ; $6B5F: $14
    or [hl]                                       ; $6B60: $B6
    ld l, [hl]                                    ; $6B61: $6E
    ld [hl+], a                                   ; $6B62: $22
    dec b                                         ; $6B63: $05
    ld b, b                                       ; $6B64: $40
    dec b                                         ; $6B65: $05
    inc b                                         ; $6B66: $04
    ld l, e                                       ; $6B67: $6B
    ld c, d                                       ; $6B68: $4A
    dec c                                         ; $6B69: $0D
    add hl, bc                                    ; $6B6A: $09
    xor a                                         ; $6B6B: $AF
    ret nc                                        ; $6B6C: $D0

    ld l, c                                       ; $6B6D: $69
    inc d                                         ; $6B6E: $14
    rlca                                          ; $6B6F: $07
    ld l, [hl]                                    ; $6B70: $6E
    ld [hl+], a                                   ; $6B71: $22
    dec b                                         ; $6B72: $05
    ld b, b                                       ; $6B73: $40
    dec b                                         ; $6B74: $05
    dec b                                         ; $6B75: $05
    ld l, e                                       ; $6B76: $6B
    ld c, d                                       ; $6B77: $4A
    add hl, bc                                    ; $6B78: $09
    dec c                                         ; $6B79: $0D
    di                                            ; $6B7A: $F3
    ret nc                                        ; $6B7B: $D0

    sbc c                                         ; $6B7C: $99
    inc d                                         ; $6B7D: $14
    rst $10                                       ; $6B7E: $D7
    ld l, h                                       ; $6B7F: $6C

jr_014_6B80:
    ld [hl+], a                                   ; $6B80: $22
    dec b                                         ; $6B81: $05
    ld b, b                                       ; $6B82: $40
    dec b                                         ; $6B83: $05
    ld b, $6B                                     ; $6B84: $06 $6B
    ld c, d                                       ; $6B86: $4A
    dec bc                                        ; $6B87: $0B
    ld [$D09B], sp                                ; $6B88: $08 $9B $D0
    nop                                           ; $6B8B: $00
    inc d                                         ; $6B8C: $14
    ld b, b                                       ; $6B8D: $40
    ld l, l                                       ; $6B8E: $6D
    ld [hl+], a                                   ; $6B8F: $22
    dec b                                         ; $6B90: $05
    ld b, b                                       ; $6B91: $40
    ld l, e                                       ; $6B92: $6B
    daa                                           ; $6B93: $27
    ld a, [bc]                                    ; $6B94: $0A
    ret nc                                        ; $6B95: $D0

    ld [hl], c                                    ; $6B96: $71
    nop                                           ; $6B97: $00
    add b                                         ; $6B98: $80
    nop                                           ; $6B99: $00
    ld l, e                                       ; $6B9A: $6B
    ld [$400A], sp                                ; $6B9B: $08 $0A $40
    ld [hl], h                                    ; $6B9E: $74
    ld [hl], b                                    ; $6B9F: $70
    add d                                         ; $6BA0: $82
    nop                                           ; $6BA1: $00
    ld l, e                                       ; $6BA2: $6B
    jr nc, jr_014_6BAF                            ; $6BA3: $30 $0A

    ldh a, [$5E]                                  ; $6BA5: $F0 $5E
    sub b                                         ; $6BA7: $90
    add e                                         ; $6BA8: $83
    nop                                           ; $6BA9: $00
    ld l, e                                       ; $6BAA: $6B
    jr nc, jr_014_6BB8                            ; $6BAB: $30 $0B

    ld d, b                                       ; $6BAD: $50
    ld a, d                                       ; $6BAE: $7A

jr_014_6BAF:
    sub b                                         ; $6BAF: $90
    add [hl]                                      ; $6BB0: $86
    nop                                           ; $6BB1: $00
    ld l, e                                       ; $6BB2: $6B
    jr nc, jr_014_6BBF                            ; $6BB3: $30 $0A

    or b                                          ; $6BB5: $B0
    ld c, b                                       ; $6BB6: $48
    sub b                                         ; $6BB7: $90

jr_014_6BB8:
    adc c                                         ; $6BB8: $89
    nop                                           ; $6BB9: $00
    ld l, e                                       ; $6BBA: $6B
    dec c                                         ; $6BBB: $0D
    dec c                                         ; $6BBC: $0D
    ld d, b                                       ; $6BBD: $50
    ld d, c                                       ; $6BBE: $51

jr_014_6BBF:
    sub b                                         ; $6BBF: $90
    adc h                                         ; $6BC0: $8C
    nop                                           ; $6BC1: $00
    dec bc                                        ; $6BC2: $0B
    nop                                           ; $6BC3: $00
    dec bc                                        ; $6BC4: $0B
    inc bc                                        ; $6BC5: $03
    dec bc                                        ; $6BC6: $0B
    inc b                                         ; $6BC7: $04
    rra                                           ; $6BC8: $1F
    ld h, $84                                     ; $6BC9: $26 $84
    add hl, bc                                    ; $6BCB: $09
    inc c                                         ; $6BCC: $0C
    sub h                                         ; $6BCD: $94
    ld b, d                                       ; $6BCE: $42
    xor c                                         ; $6BCF: $A9
    inc b                                         ; $6BD0: $04
    nop                                           ; $6BD1: $00
    xor a                                         ; $6BD2: $AF
    and l                                         ; $6BD3: $A5
    and c                                         ; $6BD4: $A1
    ld [bc], a                                    ; $6BD5: $02
    sub e                                         ; $6BD6: $93
    ld h, l                                       ; $6BD7: $65
    ld a, b                                       ; $6BD8: $78
    ld b, b                                       ; $6BD9: $40
    ld c, a                                       ; $6BDA: $4F
    ld h, h                                       ; $6BDB: $64
    ld a, e                                       ; $6BDC: $7B
    ld b, b                                       ; $6BDD: $40
    ld h, [hl]                                    ; $6BDE: $66
    ret nz                                        ; $6BDF: $C0

    ld e, h                                       ; $6BE0: $5C
    ld hl, $0005                                  ; $6BE1: $21 $05 $00
    ld l, e                                       ; $6BE4: $6B
    ld c, d                                       ; $6BE5: $4A
    add hl, bc                                    ; $6BE6: $09
    ld c, $05                                     ; $6BE7: $0E $05
    pop de                                        ; $6BE9: $D1
    nop                                           ; $6BEA: $00
    inc d                                         ; $6BEB: $14
    ld [hl], l                                    ; $6BEC: $75
    ld l, h                                       ; $6BED: $6C
    ld [hl+], a                                   ; $6BEE: $22
    dec b                                         ; $6BEF: $05
    ld b, b                                       ; $6BF0: $40
    dec b                                         ; $6BF1: $05
    ld [bc], a                                    ; $6BF2: $02
    ld l, e                                       ; $6BF3: $6B
    ld c, d                                       ; $6BF4: $4A
    add hl, bc                                    ; $6BF5: $09
    rrca                                          ; $6BF6: $0F
    rla                                           ; $6BF7: $17
    pop de                                        ; $6BF8: $D1
    nop                                           ; $6BF9: $00
    inc d                                         ; $6BFA: $14
    ld l, a                                       ; $6BFB: $6F
    ld l, l                                       ; $6BFC: $6D
    ld [hl+], a                                   ; $6BFD: $22
    dec b                                         ; $6BFE: $05
    ld b, b                                       ; $6BFF: $40
    dec b                                         ; $6C00: $05
    inc bc                                        ; $6C01: $03
    ld l, e                                       ; $6C02: $6B
    ld c, d                                       ; $6C03: $4A
    ld [$E00C], sp                                ; $6C04: $08 $0C $E0
    ret nc                                        ; $6C07: $D0

    add hl, sp                                    ; $6C08: $39
    inc d                                         ; $6C09: $14
    ld hl, $226E                                  ; $6C0A: $21 $6E $22
    dec b                                         ; $6C0D: $05
    ld b, b                                       ; $6C0E: $40
    dec b                                         ; $6C0F: $05
    inc b                                         ; $6C10: $04
    ld l, e                                       ; $6C11: $6B
    ld c, d                                       ; $6C12: $4A
    add hl, bc                                    ; $6C13: $09
    inc c                                         ; $6C14: $0C
    pop hl                                        ; $6C15: $E1
    ret nc                                        ; $6C16: $D0

    ld l, c                                       ; $6C17: $69
    inc d                                         ; $6C18: $14
    ret c                                         ; $6C19: $D8

    ld l, l                                       ; $6C1A: $6D
    ld [hl+], a                                   ; $6C1B: $22
    dec b                                         ; $6C1C: $05
    ld b, b                                       ; $6C1D: $40
    dec b                                         ; $6C1E: $05
    dec b                                         ; $6C1F: $05
    ld l, e                                       ; $6C20: $6B
    ld c, d                                       ; $6C21: $4A
    add hl, bc                                    ; $6C22: $09
    dec c                                         ; $6C23: $0D
    di                                            ; $6C24: $F3
    ret nc                                        ; $6C25: $D0

    sbc c                                         ; $6C26: $99
    inc d                                         ; $6C27: $14
    rst $10                                       ; $6C28: $D7
    ld l, h                                       ; $6C29: $6C
    ld [hl+], a                                   ; $6C2A: $22

jr_014_6C2B:
    dec b                                         ; $6C2B: $05
    ld b, b                                       ; $6C2C: $40
    dec b                                         ; $6C2D: $05

jr_014_6C2E:
    ld b, $6B                                     ; $6C2E: $06 $6B
    ld c, d                                       ; $6C30: $4A
    dec bc                                        ; $6C31: $0B
    ld [$D09B], sp                                ; $6C32: $08 $9B $D0
    nop                                           ; $6C35: $00
    inc d                                         ; $6C36: $14
    ld b, b                                       ; $6C37: $40
    ld l, l                                       ; $6C38: $6D
    ld [hl+], a                                   ; $6C39: $22
    dec b                                         ; $6C3A: $05
    ld b, b                                       ; $6C3B: $40
    ld l, e                                       ; $6C3C: $6B
    daa                                           ; $6C3D: $27
    ld a, [bc]                                    ; $6C3E: $0A
    ret nc                                        ; $6C3F: $D0

    ld [hl], c                                    ; $6C40: $71
    nop                                           ; $6C41: $00

jr_014_6C42:
    add b                                         ; $6C42: $80
    nop                                           ; $6C43: $00
    ld l, e                                       ; $6C44: $6B
    ld [$400A], sp                                ; $6C45: $08 $0A $40
    ld [hl], h                                    ; $6C48: $74
    ld [hl], b                                    ; $6C49: $70
    add d                                         ; $6C4A: $82
    nop                                           ; $6C4B: $00
    ld l, e                                       ; $6C4C: $6B
    jr nc, jr_014_6C59                            ; $6C4D: $30 $0A

    ldh a, [$5E]                                  ; $6C4F: $F0 $5E
    sub b                                         ; $6C51: $90
    add e                                         ; $6C52: $83
    nop                                           ; $6C53: $00
    ld l, e                                       ; $6C54: $6B
    jr nc, jr_014_6C62                            ; $6C55: $30 $0B

    ld d, b                                       ; $6C57: $50
    ld a, d                                       ; $6C58: $7A

jr_014_6C59:
    sub b                                         ; $6C59: $90
    add [hl]                                      ; $6C5A: $86
    nop                                           ; $6C5B: $00

jr_014_6C5C:
    ld l, e                                       ; $6C5C: $6B
    jr nc, jr_014_6C69                            ; $6C5D: $30 $0A

    or b                                          ; $6C5F: $B0
    ld c, b                                       ; $6C60: $48
    sub b                                         ; $6C61: $90

jr_014_6C62:
    adc c                                         ; $6C62: $89
    nop                                           ; $6C63: $00
    ld l, e                                       ; $6C64: $6B
    dec c                                         ; $6C65: $0D
    dec c                                         ; $6C66: $0D
    ld d, b                                       ; $6C67: $50
    ld d, c                                       ; $6C68: $51

jr_014_6C69:
    sub b                                         ; $6C69: $90
    adc h                                         ; $6C6A: $8C
    nop                                           ; $6C6B: $00
    dec bc                                        ; $6C6C: $0B
    ld [bc], a                                    ; $6C6D: $02
    rra                                           ; $6C6E: $1F
    ld h, $84                                     ; $6C6F: $26 $84
    ld a, [bc]                                    ; $6C71: $0A
    inc c                                         ; $6C72: $0C
    sub h                                         ; $6C73: $94
    ld b, d                                       ; $6C74: $42
    dec d                                         ; $6C75: $15
    jr nz, jr_014_6C2B                            ; $6C76: $20 $B3

jr_014_6C78:
    ld c, a                                       ; $6C78: $4F
    jr nz, jr_014_6C9B                            ; $6C79: $20 $20

    xor e                                         ; $6C7B: $AB
    ld d, b                                       ; $6C7C: $50
    nop                                           ; $6C7D: $00

jr_014_6C7E:
    nop                                           ; $6C7E: $00
    ld b, d                                       ; $6C7F: $42
    inc d                                         ; $6C80: $14
    jr nz, jr_014_6C2E                            ; $6C81: $20 $AB

    ld d, b                                       ; $6C83: $50
    ld h, b                                       ; $6C84: $60
    ld b, $40                                     ; $6C85: $06 $40
    ld [hl-], a                                   ; $6C87: $32
    ld e, d                                       ; $6C88: $5A
    inc d                                         ; $6C89: $14
    ld d, a                                       ; $6C8A: $57
    ld l, a                                       ; $6C8B: $6F
    dec d                                         ; $6C8C: $15
    jr nz, jr_014_6C42                            ; $6C8D: $20 $B3

    ld c, a                                       ; $6C8F: $4F
    ld b, [hl]                                    ; $6C90: $46
    jr nz, jr_014_6C5C                            ; $6C91: $20 $C9

    ld d, b                                       ; $6C93: $50
    ld e, $20                                     ; $6C94: $1E $20
    cp a                                          ; $6C96: $BF
    ld d, b                                       ; $6C97: $50
    ld e, $00                                     ; $6C98: $1E $00
    dec bc                                        ; $6C9A: $0B

jr_014_6C9B:
    ld b, $40                                     ; $6C9B: $06 $40
    rrca                                          ; $6C9D: $0F

jr_014_6C9E:
    dec d                                         ; $6C9E: $15
    jr nz, jr_014_6D18                            ; $6C9F: $20 $77

    ld d, b                                       ; $6CA1: $50
    ld [$DD20], sp                                ; $6CA2: $08 $20 $DD
    ld d, b                                       ; $6CA5: $50
    ld e, $00                                     ; $6CA6: $1E $00
    ld h, b                                       ; $6CA8: $60
    inc c                                         ; $6CA9: $0C
    dec d                                         ; $6CAA: $15
    jr nz, @-$31                                  ; $6CAB: $20 $CD

    ld c, a                                       ; $6CAD: $4F
    ld [$ED20], sp                                ; $6CAE: $08 $20 $ED
    ld c, a                                       ; $6CB1: $4F
    ld [de], a                                    ; $6CB2: $12
    jr nz, jr_014_6C7E                            ; $6CB3: $20 $C9

    ld d, b                                       ; $6CB5: $50
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    ld e, e                                       ; $6CB8: $5B
    inc d                                         ; $6CB9: $14
    db $FC                                        ; $6CBA: $FC
    ld h, a                                       ; $6CBB: $67
    ld h, d                                       ; $6CBC: $62
    db $10                                        ; $6CBD: $10
    dec d                                         ; $6CBE: $15
    jr nz, jr_014_6C9E                            ; $6CBF: $20 $DD

    ld c, a                                       ; $6CC1: $4F
    ld [de], a                                    ; $6CC2: $12
    jr nz, jr_014_6C78                            ; $6CC3: $20 $B3

    ld c, a                                       ; $6CC5: $4F
    ld [$C920], sp                                ; $6CC6: $08 $20 $C9
    ld d, b                                       ; $6CC9: $50
    nop                                           ; $6CCA: $00
    nop                                           ; $6CCB: $00
    ld d, [hl]                                    ; $6CCC: $56
    dec c                                         ; $6CCD: $0D
    ld e, e                                       ; $6CCE: $5B
    inc d                                         ; $6CCF: $14
    adc [hl]                                      ; $6CD0: $8E
    ld l, b                                       ; $6CD1: $68
    ld h, d                                       ; $6CD2: $62
    ld de, $0956                                  ; $6CD3: $11 $56 $09
    ld b, d                                       ; $6CD6: $42
    dec d                                         ; $6CD7: $15
    ld c, $70                                     ; $6CD8: $0E $70
    ld d, e                                       ; $6CDA: $53
    ld b, d                                       ; $6CDB: $42
    ld c, $22                                     ; $6CDC: $0E $22
    ld d, h                                       ; $6CDE: $54
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    ld e, e                                       ; $6CE1: $5B
    inc d                                         ; $6CE2: $14
    ld c, d                                       ; $6CE3: $4A
    ld h, a                                       ; $6CE4: $67
    ld h, d                                       ; $6CE5: $62
    dec c                                         ; $6CE6: $0D
    ld d, [hl]                                    ; $6CE7: $56
    rlca                                          ; $6CE8: $07
    ld h, b                                       ; $6CE9: $60
    ld [$0E15], sp                                ; $6CEA: $08 $15 $0E
    and b                                         ; $6CED: $A0
    ld d, e                                       ; $6CEE: $53
    inc c                                         ; $6CEF: $0C
    ld c, $70                                     ; $6CF0: $0E $70

jr_014_6CF2:
    ld d, e                                       ; $6CF2: $53
    inc c                                         ; $6CF3: $0C
    ld c, $22                                     ; $6CF4: $0E $22
    ld d, h                                       ; $6CF6: $54
    jr z, jr_014_6D07                             ; $6CF7: $28 $0E

    ld [hl], b                                    ; $6CF9: $70
    ld d, e                                       ; $6CFA: $53
    ld [$900E], sp                                ; $6CFB: $08 $0E $90
    ld d, e                                       ; $6CFE: $53
    db $10                                        ; $6CFF: $10
    ld c, $2C                                     ; $6D00: $0E $2C
    ld d, h                                       ; $6D02: $54
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    ld e, e                                       ; $6D05: $5B
    inc d                                         ; $6D06: $14

jr_014_6D07:
    ldh [$67], a                                  ; $6D07: $E0 $67
    ld h, d                                       ; $6D09: $62
    rrca                                          ; $6D0A: $0F
    dec d                                         ; $6D0B: $15
    ld c, $36                                     ; $6D0C: $0E $36
    ld d, h                                       ; $6D0E: $54
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    ld e, e                                       ; $6D11: $5B
    inc d                                         ; $6D12: $14
    xor d                                         ; $6D13: $AA
    ld l, c                                       ; $6D14: $69
    ld h, d                                       ; $6D15: $62
    ld [de], a                                    ; $6D16: $12
    ld d, [hl]                                    ; $6D17: $56

jr_014_6D18:
    inc c                                         ; $6D18: $0C
    ld h, b                                       ; $6D19: $60
    dec c                                         ; $6D1A: $0D
    dec d                                         ; $6D1B: $15
    ld c, $2C                                     ; $6D1C: $0E $2C
    ld d, h                                       ; $6D1E: $54
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    ld h, b                                       ; $6D21: $60
    add hl, bc                                    ; $6D22: $09
    dec d                                         ; $6D23: $15
    ld c, $A0                                     ; $6D24: $0E $A0
    ld d, e                                       ; $6D26: $53
    inc e                                         ; $6D27: $1C
    ld c, $36                                     ; $6D28: $0E $36
    ld d, h                                       ; $6D2A: $54
    jr z, jr_014_6D2D                             ; $6D2B: $28 $00

jr_014_6D2D:
    inc c                                         ; $6D2D: $0C
    ld b, $15                                     ; $6D2E: $06 $15
    ld c, $1B                                     ; $6D30: $0E $1B
    ld d, l                                       ; $6D32: $55
    add b                                         ; $6D33: $80
    nop                                           ; $6D34: $00
    rlca                                          ; $6D35: $07
    nop                                           ; $6D36: $00
    add c                                         ; $6D37: $81
    ld e, l                                       ; $6D38: $5D
    add hl, bc                                    ; $6D39: $09
    nop                                           ; $6D3A: $00
    jr nz, jr_014_6CF2                            ; $6D3B: $20 $B5

    ld d, b                                       ; $6D3D: $50
    add hl, de                                    ; $6D3E: $19
    ld b, d                                       ; $6D3F: $42
    inc d                                         ; $6D40: $14
    rrca                                          ; $6D41: $0F
    cp a                                          ; $6D42: $BF
    ld d, [hl]                                    ; $6D43: $56
    ld b, b                                       ; $6D44: $40
    ld [hl-], a                                   ; $6D45: $32
    dec d                                         ; $6D46: $15
    rrca                                          ; $6D47: $0F
    ld l, a                                       ; $6D48: $6F
    ld d, [hl]                                    ; $6D49: $56
    inc d                                         ; $6D4A: $14
    rrca                                          ; $6D4B: $0F
    xor e                                         ; $6D4C: $AB
    ld d, [hl]                                    ; $6D4D: $56
    jr z, jr_014_6D50                             ; $6D4E: $28 $00

jr_014_6D50:
    dec bc                                        ; $6D50: $0B
    dec b                                         ; $6D51: $05
    ld h, b                                       ; $6D52: $60
    rlca                                          ; $6D53: $07
    dec d                                         ; $6D54: $15
    rrca                                          ; $6D55: $0F
    ei                                            ; $6D56: $FB
    ld d, l                                       ; $6D57: $55
    ld [bc], a                                    ; $6D58: $02
    rrca                                          ; $6D59: $0F
    ld l, a                                       ; $6D5A: $6F
    ld d, [hl]                                    ; $6D5B: $56
    inc a                                         ; $6D5C: $3C
    rrca                                          ; $6D5D: $0F
    add e                                         ; $6D5E: $83
    ld d, [hl]                                    ; $6D5F: $56
    ld [bc], a                                    ; $6D60: $02
    rrca                                          ; $6D61: $0F
    xor e                                         ; $6D62: $AB
    ld d, [hl]                                    ; $6D63: $56
    ld e, $00                                     ; $6D64: $1E $00
    ld e, e                                       ; $6D66: $5B
    inc d                                         ; $6D67: $14
    ld h, b                                       ; $6D68: $60
    ld h, a                                       ; $6D69: $67
    ld h, d                                       ; $6D6A: $62
    ld c, $56                                     ; $6D6B: $0E $56
    ld [$1542], sp                                ; $6D6D: $08 $42 $15
    rrca                                          ; $6D70: $0F
    db $DB                                        ; $6D71: $DB
    ld d, l                                       ; $6D72: $55
    ld l, b                                       ; $6D73: $68
    rrca                                          ; $6D74: $0F
    ld e, e                                       ; $6D75: $5B
    ld d, [hl]                                    ; $6D76: $56
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    ld e, e                                       ; $6D79: $5B
    inc d                                         ; $6D7A: $14
    ld [hl], l                                    ; $6D7B: $75
    ld h, h                                       ; $6D7C: $64
    ld h, d                                       ; $6D7D: $62
    ld bc, $145A                                  ; $6D7E: $01 $5A $14
    ldh a, [$6E]                                  ; $6D81: $F0 $6E
    ld h, b                                       ; $6D83: $60
    ld bc, $145B                                  ; $6D84: $01 $5B $14
    adc h                                         ; $6D87: $8C
    ld h, h                                       ; $6D88: $64
    ld h, d                                       ; $6D89: $62
    ld [bc], a                                    ; $6D8A: $02
    ld b, b                                       ; $6D8B: $40
    ld e, $15                                     ; $6D8C: $1E $15
    rrca                                          ; $6D8E: $0F
    db $DB                                        ; $6D8F: $DB
    ld d, l                                       ; $6D90: $55
    inc bc                                        ; $6D91: $03
    nop                                           ; $6D92: $00
    dec d                                         ; $6D93: $15
    rrca                                          ; $6D94: $0F
    ld e, e                                       ; $6D95: $5B
    ld d, [hl]                                    ; $6D96: $56
    ld e, $00                                     ; $6D97: $1E $00
    ld e, e                                       ; $6D99: $5B
    inc d                                         ; $6D9A: $14
    db $EB                                        ; $6D9B: $EB
    ld h, h                                       ; $6D9C: $64
    ld h, d                                       ; $6D9D: $62
    inc bc                                        ; $6D9E: $03
    dec d                                         ; $6D9F: $15
    rrca                                          ; $6DA0: $0F
    ld c, e                                       ; $6DA1: $4B
    ld d, [hl]                                    ; $6DA2: $56
    inc bc                                        ; $6DA3: $03
    rrca                                          ; $6DA4: $0F
    dec de                                        ; $6DA5: $1B
    ld d, [hl]                                    ; $6DA6: $56
    ld c, $0F                                     ; $6DA7: $0E $0F
    ld e, e                                       ; $6DA9: $5B
    ld d, [hl]                                    ; $6DAA: $56
    nop                                           ; $6DAB: $00
    nop                                           ; $6DAC: $00
    ld e, d                                       ; $6DAD: $5A
    inc d                                         ; $6DAE: $14
    ld b, $6F                                     ; $6DAF: $06 $6F
    ld l, a                                       ; $6DB1: $6F
    rrca                                          ; $6DB2: $0F
    rra                                           ; $6DB3: $1F
    nop                                           ; $6DB4: $00
    dec de                                        ; $6DB5: $1B
    dec b                                         ; $6DB6: $05
    halt                                          ; $6DB7: $76
    jr nz, jr_014_6DC9                            ; $6DB8: $20 $0F

    dec d                                         ; $6DBA: $15
    rrca                                          ; $6DBB: $0F
    jp z, $0F56                                   ; $6DBC: $CA $56 $0F

    rrca                                          ; $6DBF: $0F
    db $E3                                        ; $6DC0: $E3
    ld d, [hl]                                    ; $6DC1: $56
    ld [de], a                                    ; $6DC2: $12
    rrca                                          ; $6DC3: $0F
    or l                                          ; $6DC4: $B5
    ld d, [hl]                                    ; $6DC5: $56
    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    ld e, e                                       ; $6DC8: $5B

jr_014_6DC9:
    inc d                                         ; $6DC9: $14
    add hl, bc                                    ; $6DCA: $09
    ld h, l                                       ; $6DCB: $65
    ld h, d                                       ; $6DCC: $62
    inc b                                         ; $6DCD: $04
    dec bc                                        ; $6DCE: $0B
    inc bc                                        ; $6DCF: $03
    dec bc                                        ; $6DD0: $0B
    inc b                                         ; $6DD1: $04
    ld h, b                                       ; $6DD2: $60
    inc b                                         ; $6DD3: $04
    ld b, b                                       ; $6DD4: $40
    ld [$4219], sp                                ; $6DD5: $08 $19 $42
    rra                                           ; $6DD8: $1F
    ld e, $15                                     ; $6DD9: $1E $15
    ld c, $82                                     ; $6DDB: $0E $82
    ld a, [hl]                                    ; $6DDD: $7E
    jr nc, @+$10                                  ; $6DDE: $30 $0E

    sub [hl]                                      ; $6DE0: $96
    ld a, [hl]                                    ; $6DE1: $7E
    nop                                           ; $6DE2: $00
    nop                                           ; $6DE3: $00
    ld h, b                                       ; $6DE4: $60
    inc bc                                        ; $6DE5: $03
    dec d                                         ; $6DE6: $15
    ld c, $42                                     ; $6DE7: $0E $42
    ld a, [hl]                                    ; $6DE9: $7E
    jr nz, jr_014_6DEC                            ; $6DEA: $20 $00

jr_014_6DEC:
    dec d                                         ; $6DEC: $15
    ld c, $96                                     ; $6DED: $0E $96
    ld a, [hl]                                    ; $6DEF: $7E
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    ld h, b                                       ; $6DF2: $60
    inc b                                         ; $6DF3: $04
    dec d                                         ; $6DF4: $15
    ld c, $96                                     ; $6DF5: $0E $96
    ld a, [hl]                                    ; $6DF7: $7E
    rrca                                          ; $6DF8: $0F
    ld c, $16                                     ; $6DF9: $0E $16
    ld a, a                                       ; $6DFB: $7F
    inc de                                        ; $6DFC: $13
    ld c, $06                                     ; $6DFD: $0E $06
    ld a, a                                       ; $6DFF: $7F
    ld b, b                                       ; $6E00: $40
    ld c, $E0                                     ; $6E01: $0E $E0
    ld a, [hl]                                    ; $6E03: $7E
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    ld b, d                                       ; $6E06: $42
    inc d                                         ; $6E07: $14
    ld c, $E0                                     ; $6E08: $0E $E0
    ld a, [hl]                                    ; $6E0A: $7E
    ld h, b                                       ; $6E0B: $60
    dec b                                         ; $6E0C: $05
    inc h                                         ; $6E0D: $24
    inc d                                         ; $6E0E: $14
    dec d                                         ; $6E0F: $15
    ld c, $42                                     ; $6E10: $0E $42
    ld a, [hl]                                    ; $6E12: $7E
    inc b                                         ; $6E13: $04
    ld c, $82                                     ; $6E14: $0E $82
    ld a, [hl]                                    ; $6E16: $7E
    ld a, [de]                                    ; $6E17: $1A
    ld c, $72                                     ; $6E18: $0E $72
    ld a, [hl]                                    ; $6E1A: $7E
    stop                                          ; $6E1B: $10 $00
    ld d, [hl]                                    ; $6E1D: $56
    ld b, $19                                     ; $6E1E: $06 $19
    ld b, d                                       ; $6E20: $42
    dec d                                         ; $6E21: $15
    ld c, $43                                     ; $6E22: $0E $43
    ld [hl], d                                    ; $6E24: $72
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    ld e, d                                       ; $6E27: $5A
    inc d                                         ; $6E28: $14
    ld hl, sp+$6E                                 ; $6E29: $F8 $6E
    ld h, b                                       ; $6E2B: $60
    ld [bc], a                                    ; $6E2C: $02
    dec d                                         ; $6E2D: $15
    ld c, $61                                     ; $6E2E: $0E $61
    ld [hl], d                                    ; $6E30: $72
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    ld e, e                                       ; $6E33: $5B
    inc d                                         ; $6E34: $14
    ld d, h                                       ; $6E35: $54
    ld h, l                                       ; $6E36: $65
    ld h, d                                       ; $6E37: $62
    dec b                                         ; $6E38: $05
    dec d                                         ; $6E39: $15
    ld c, $43                                     ; $6E3A: $0E $43
    ld [hl], d                                    ; $6E3C: $72
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    ld e, d                                       ; $6E3F: $5A
    inc d                                         ; $6E40: $14
    nop                                           ; $6E41: $00
    ld l, a                                       ; $6E42: $6F
    ld d, [hl]                                    ; $6E43: $56
    inc bc                                        ; $6E44: $03
    dec d                                         ; $6E45: $15
    ld c, $03                                     ; $6E46: $0E $03
    ld [hl], d                                    ; $6E48: $72
    jr jr_014_6E59                                ; $6E49: $18 $0E

    inc hl                                        ; $6E4B: $23
    ld [hl], d                                    ; $6E4C: $72
    db $10                                        ; $6E4D: $10
    ld c, $03                                     ; $6E4E: $0E $03
    ld [hl], d                                    ; $6E50: $72
    ld [$610E], sp                                ; $6E51: $08 $0E $61
    ld [hl], d                                    ; $6E54: $72
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    ld e, e                                       ; $6E57: $5B
    inc d                                         ; $6E58: $14

jr_014_6E59:
    ld [$6266], sp                                ; $6E59: $08 $66 $62
    ld b, $56                                     ; $6E5C: $06 $56
    inc b                                         ; $6E5E: $04
    dec d                                         ; $6E5F: $15
    ld c, $33                                     ; $6E60: $0E $33
    ld [hl], d                                    ; $6E62: $72
    inc d                                         ; $6E63: $14
    ld c, $61                                     ; $6E64: $0E $61
    ld [hl], d                                    ; $6E66: $72
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    ld b, b                                       ; $6E69: $40
    ld a, b                                       ; $6E6A: $78
    dec d                                         ; $6E6B: $15
    ld c, $57                                     ; $6E6C: $0E $57
    ld [hl], d                                    ; $6E6E: $72
    jr z, jr_014_6E7F                             ; $6E6F: $28 $0E

    ld h, c                                       ; $6E71: $61
    ld [hl], d                                    ; $6E72: $72
    jr z, jr_014_6E83                             ; $6E73: $28 $0E

    ld d, a                                       ; $6E75: $57
    ld [hl], d                                    ; $6E76: $72
    inc d                                         ; $6E77: $14
    ld c, $61                                     ; $6E78: $0E $61
    ld [hl], d                                    ; $6E7A: $72
    inc d                                         ; $6E7B: $14
    nop                                           ; $6E7C: $00
    ld e, e                                       ; $6E7D: $5B
    inc d                                         ; $6E7E: $14

jr_014_6E7F:
    ld d, b                                       ; $6E7F: $50
    ld h, [hl]                                    ; $6E80: $66
    ld h, d                                       ; $6E81: $62
    rlca                                          ; $6E82: $07

jr_014_6E83:
    dec bc                                        ; $6E83: $0B
    nop                                           ; $6E84: $00
    ld e, d                                       ; $6E85: $5A
    inc d                                         ; $6E86: $14
    ld hl, sp+$6E                                 ; $6E87: $F8 $6E
    ld h, b                                       ; $6E89: $60
    ld [bc], a                                    ; $6E8A: $02
    ld e, e                                       ; $6E8B: $5B
    inc d                                         ; $6E8C: $14
    sub l                                         ; $6E8D: $95
    ld h, [hl]                                    ; $6E8E: $66
    ld h, d                                       ; $6E8F: $62
    ld [$0E15], sp                                ; $6E90: $08 $15 $0E
    di                                            ; $6E93: $F3
    ld [hl], c                                    ; $6E94: $71
    rlca                                          ; $6E95: $07
    ld c, $4D                                     ; $6E96: $0E $4D
    ld [hl], d                                    ; $6E98: $72
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    ld e, e                                       ; $6E9B: $5B
    inc d                                         ; $6E9C: $14
    and e                                         ; $6E9D: $A3
    ld h, [hl]                                    ; $6E9E: $66
    ld h, d                                       ; $6E9F: $62
    add hl, bc                                    ; $6EA0: $09
    dec d                                         ; $6EA1: $15
    ld c, $D3                                     ; $6EA2: $0E $D3
    ld [hl], c                                    ; $6EA4: $71
    jr jr_014_6EB5                                ; $6EA5: $18 $0E

    ld c, l                                       ; $6EA7: $4D
    ld [hl], d                                    ; $6EA8: $72
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    ld sp, $3014                                  ; $6EAB: $31 $14 $30
    ld l, e                                       ; $6EAE: $6B
    ld [hl+], a                                   ; $6EAF: $22
    adc $40                                       ; $6EB0: $CE $40
    ld b, l                                       ; $6EB2: $45
    inc d                                         ; $6EB3: $14
    ld [hl], h                                    ; $6EB4: $74

jr_014_6EB5:
    ld b, c                                       ; $6EB5: $41
    dec d                                         ; $6EB6: $15
    ld c, $61                                     ; $6EB7: $0E $61
    ld [hl], d                                    ; $6EB9: $72
    ld b, $0E                                     ; $6EBA: $06 $0E
    ld b, e                                       ; $6EBC: $43
    ld [hl], d                                    ; $6EBD: $72
    ld b, $0E                                     ; $6EBE: $06 $0E
    ld d, a                                       ; $6EC0: $57
    ld [hl], d                                    ; $6EC1: $72
    ld b, $0E                                     ; $6EC2: $06 $0E
    ld c, l                                       ; $6EC4: $4D
    ld [hl], d                                    ; $6EC5: $72
    ld b, $00                                     ; $6EC6: $06 $00
    ld e, e                                       ; $6EC8: $5B
    inc d                                         ; $6EC9: $14
    dec bc                                        ; $6ECA: $0B
    ld h, a                                       ; $6ECB: $67
    ld h, d                                       ; $6ECC: $62
    dec bc                                        ; $6ECD: $0B
    dec d                                         ; $6ECE: $15
    ld c, $03                                     ; $6ECF: $0E $03
    ld [hl], d                                    ; $6ED1: $72
    inc c                                         ; $6ED2: $0C
    ld c, $33                                     ; $6ED3: $0E $33
    ld [hl], d                                    ; $6ED5: $72
    jr @+$10                                      ; $6ED6: $18 $0E

    ld h, c                                       ; $6ED8: $61
    ld [hl], d                                    ; $6ED9: $72
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    ld e, e                                       ; $6EDC: $5B
    inc d                                         ; $6EDD: $14
    ld a, [hl+]                                   ; $6EDE: $2A
    ld h, a                                       ; $6EDF: $67
    ld h, d                                       ; $6EE0: $62
    inc c                                         ; $6EE1: $0C
    ld d, [hl]                                    ; $6EE2: $56
    dec b                                         ; $6EE3: $05
    ld b, b                                       ; $6EE4: $40
    ld e, $15                                     ; $6EE5: $1E $15
    ld c, $33                                     ; $6EE7: $0E $33
    ld [hl], d                                    ; $6EE9: $72
    stop                                          ; $6EEA: $10 $00
    rra                                           ; $6EEC: $1F
    ld h, $19                                     ; $6EED: $26 $19
    ld b, d                                       ; $6EEF: $42
    add e                                         ; $6EF0: $83
    ld b, h                                       ; $6EF1: $44
    nop                                           ; $6EF2: $00
    rst $38                                       ; $6EF3: $FF
    nop                                           ; $6EF4: $00
    ld d, [hl]                                    ; $6EF5: $56
    ld bc, $8342                                  ; $6EF6: $01 $42 $83
    ld b, b                                       ; $6EF9: $40
    nop                                           ; $6EFA: $00
    ld bc, $5600                                  ; $6EFB: $01 $00 $56
    ld [bc], a                                    ; $6EFE: $02
    ld b, d                                       ; $6EFF: $42
    add e                                         ; $6F00: $83
    ld b, b                                       ; $6F01: $40
    nop                                           ; $6F02: $00
    rst $38                                       ; $6F03: $FF
    nop                                           ; $6F04: $00
    ld b, d                                       ; $6F05: $42
    add e                                         ; $6F06: $83
    ld [bc], a                                    ; $6F07: $02
    nop                                           ; $6F08: $00
    rst $38                                       ; $6F09: $FF
    nop                                           ; $6F0A: $00
    add e                                         ; $6F0B: $83
    ld [bc], a                                    ; $6F0C: $02
    ld bc, $0000                                  ; $6F0D: $01 $00 $00
    add e                                         ; $6F10: $83
    ld [bc], a                                    ; $6F11: $02
    nop                                           ; $6F12: $00
    ld bc, $8300                                  ; $6F13: $01 $00 $83
    ld [bc], a                                    ; $6F16: $02
    rst $38                                       ; $6F17: $FF
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    add e                                         ; $6F1A: $83
    ld [bc], a                                    ; $6F1B: $02
    nop                                           ; $6F1C: $00
    rst $38                                       ; $6F1D: $FF
    nop                                           ; $6F1E: $00
    add e                                         ; $6F1F: $83
    ld [bc], a                                    ; $6F20: $02
    ld bc, $0000                                  ; $6F21: $01 $00 $00
    add e                                         ; $6F24: $83
    ld [bc], a                                    ; $6F25: $02
    nop                                           ; $6F26: $00
    ld bc, $8300                                  ; $6F27: $01 $00 $83
    ld [bc], a                                    ; $6F2A: $02
    rst $38                                       ; $6F2B: $FF
    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    add e                                         ; $6F2E: $83
    ld [bc], a                                    ; $6F2F: $02
    nop                                           ; $6F30: $00
    rst $38                                       ; $6F31: $FF
    nop                                           ; $6F32: $00
    add e                                         ; $6F33: $83
    ld [bc], a                                    ; $6F34: $02
    ld bc, $0000                                  ; $6F35: $01 $00 $00
    add e                                         ; $6F38: $83
    ld [bc], a                                    ; $6F39: $02
    nop                                           ; $6F3A: $00
    ld bc, $8300                                  ; $6F3B: $01 $00 $83
    ld [bc], a                                    ; $6F3E: $02
    rst $38                                       ; $6F3F: $FF
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    add e                                         ; $6F42: $83
    ld [bc], a                                    ; $6F43: $02
    nop                                           ; $6F44: $00
    rst $38                                       ; $6F45: $FF
    nop                                           ; $6F46: $00
    add e                                         ; $6F47: $83
    ld [bc], a                                    ; $6F48: $02
    ld bc, $0000                                  ; $6F49: $01 $00 $00
    add e                                         ; $6F4C: $83
    ld [bc], a                                    ; $6F4D: $02
    nop                                           ; $6F4E: $00
    ld bc, $8300                                  ; $6F4F: $01 $00 $83
    ld [bc], a                                    ; $6F52: $02
    rst $38                                       ; $6F53: $FF
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    ld b, d                                       ; $6F56: $42
    add e                                         ; $6F57: $83
    ld [hl], $00                                  ; $6F58: $36 $00
    rst $38                                       ; $6F5A: $FF
    nop                                           ; $6F5B: $00
    ld b, d                                       ; $6F5C: $42
    sbc e                                         ; $6F5D: $9B
    ld a, b                                       ; $6F5E: $78
    ld [hl], b                                    ; $6F5F: $70
    sbc a                                         ; $6F60: $9F
    ld d, a                                       ; $6F61: $57
    ld l, b                                       ; $6F62: $68
    ld l, a                                       ; $6F63: $6F
    jr nz, jr_014_6FDD                            ; $6F64: $20 $77

    ld h, c                                       ; $6F66: $61
    ld [hl], e                                    ; $6F67: $73
    jr nz, jr_014_6FDE                            ; $6F68: $20 $74

    ld l, b                                       ; $6F6A: $68
    ld h, c                                       ; $6F6B: $61
    ld [hl], h                                    ; $6F6C: $74
    ccf                                           ; $6F6D: $3F
    cp $FD                                        ; $6F6E: $FE $FD
    sbc d                                         ; $6F70: $9A
    ld e, b                                       ; $6F71: $58
    ld bc, $AC42                                  ; $6F72: $01 $42 $AC
    or d                                          ; $6F75: $B2
    and d                                         ; $6F76: $A2
    nop                                           ; $6F77: $00
    sub [hl]                                      ; $6F78: $96
    inc d                                         ; $6F79: $14
    ld c, d                                       ; $6F7A: $4A
    ld h, h                                       ; $6F7B: $64
    sub e                                         ; $6F7C: $93
    ld h, l                                       ; $6F7D: $65
    add a                                         ; $6F7E: $87
    ld b, b                                       ; $6F7F: $40

jr_014_6F80:
    ld c, a                                       ; $6F80: $4F
    ld h, [hl]                                    ; $6F81: $66
    ret nz                                        ; $6F82: $C0

    ld e, h                                       ; $6F83: $5C
    ld hl, $0005                                  ; $6F84: $21 $05 $00
    ld l, e                                       ; $6F87: $6B
    ld c, d                                       ; $6F88: $4A
    ld a, [bc]                                    ; $6F89: $0A
    ld b, $76                                     ; $6F8A: $06 $76
    ret nc                                        ; $6F8C: $D0

    nop                                           ; $6F8D: $00
    inc d                                         ; $6F8E: $14
    jp nz, $226F                                  ; $6F8F: $C2 $6F $22

    dec b                                         ; $6F92: $05
    ld b, b                                       ; $6F93: $40
    dec b                                         ; $6F94: $05
    ld [bc], a                                    ; $6F95: $02
    ld l, e                                       ; $6F96: $6B
    ld c, d                                       ; $6F97: $4A
    ld a, [bc]                                    ; $6F98: $0A
    ld bc, $D01C                                  ; $6F99: $01 $1C $D0
    nop                                           ; $6F9C: $00
    inc d                                         ; $6F9D: $14
    ld a, [c]                                     ; $6F9E: $F2
    ld l, a                                       ; $6F9F: $6F
    ld [hl+], a                                   ; $6FA0: $22
    dec b                                         ; $6FA1: $05
    ld b, b                                       ; $6FA2: $40
    ld l, e                                       ; $6FA3: $6B
    daa                                           ; $6FA4: $27
    ld a, [bc]                                    ; $6FA5: $0A
    ld [hl], b                                    ; $6FA6: $70
    ld l, e                                       ; $6FA7: $6B
    nop                                           ; $6FA8: $00
    add b                                         ; $6FA9: $80
    nop                                           ; $6FAA: $00
    dec bc                                        ; $6FAB: $0B
    nop                                           ; $6FAC: $00
    add d                                         ; $6FAD: $82
    rra                                           ; $6FAE: $1F
    jr @+$71                                      ; $6FAF: $18 $6F

    rrca                                          ; $6FB1: $0F
    rst $38                                       ; $6FB2: $FF
    ld a, a                                       ; $6FB3: $7F
    sub h                                         ; $6FB4: $94
    halt                                          ; $6FB5: $76
    jr nz, jr_014_6FC7                            ; $6FB6: $20 $0F

    ld h, b                                       ; $6FB8: $60
    ld bc, $0501                                  ; $6FB9: $01 $01 $05
    ld a, [bc]                                    ; $6FBC: $0A
    ld b, l                                       ; $6FBD: $45
    dec e                                         ; $6FBE: $1D
    dec de                                        ; $6FBF: $1B
    ld b, b                                       ; $6FC0: $40
    ld b, d                                       ; $6FC1: $42
    ld d, $20                                     ; $6FC2: $16 $20
    call $104F                                    ; $6FC4: $CD $4F $10

jr_014_6FC7:
    nop                                           ; $6FC7: $00
    ld bc, $0B00                                  ; $6FC8: $01 $00 $0B
    ld [bc], a                                    ; $6FCB: $02
    ld d, $20                                     ; $6FCC: $16 $20
    call $104F                                    ; $6FCE: $CD $4F $10
    nop                                           ; $6FD1: $00
    rst $38                                       ; $6FD2: $FF
    jr nz, jr_014_6F80                            ; $6FD3: $20 $AB

    ld d, b                                       ; $6FD5: $50
    jr nz, jr_014_6FD8                            ; $6FD6: $20 $00

jr_014_6FD8:
    rst $38                                       ; $6FD8: $FF
    nop                                           ; $6FD9: $00
    ld b, b                                       ; $6FDA: $40
    ld h, b                                       ; $6FDB: $60
    add e                                         ; $6FDC: $83

jr_014_6FDD:
    inc e                                         ; $6FDD: $1C

jr_014_6FDE:
    nop                                           ; $6FDE: $00
    ld [bc], a                                    ; $6FDF: $02
    nop                                           ; $6FE0: $00
    ld e, e                                       ; $6FE1: $5B
    inc d                                         ; $6FE2: $14
    ld e, l                                       ; $6FE3: $5D
    ld l, a                                       ; $6FE4: $6F
    ld h, d                                       ; $6FE5: $62
    ld bc, $2016                                  ; $6FE6: $01 $16 $20
    ld c, l                                       ; $6FE9: $4D
    ld d, b                                       ; $6FEA: $50
    ld b, b                                       ; $6FEB: $40
    nop                                           ; $6FEC: $00
    rst $38                                       ; $6FED: $FF
    nop                                           ; $6FEE: $00
    ld d, [hl]                                    ; $6FEF: $56
    ld bc, $1542                                  ; $6FF0: $01 $42 $15
    rrca                                          ; $6FF3: $0F
    ld a, l                                       ; $6FF4: $7D
    ld c, b                                       ; $6FF5: $48
    add b                                         ; $6FF6: $80
    rrca                                          ; $6FF7: $0F
    and a                                         ; $6FF8: $A7
    ld c, b                                       ; $6FF9: $48
    ld [$C70F], sp                                ; $6FFA: $08 $0F $C7
    ld c, b                                       ; $6FFD: $48
    ld [$E70F], sp                                ; $6FFE: $08 $0F $E7
    ld c, b                                       ; $7001: $48
    jr nz, jr_014_7004                            ; $7002: $20 $00

jr_014_7004:
    add hl, de                                    ; $7004: $19

jr_014_7005:
    ld b, d                                       ; $7005: $42

    db $02, $07, $0B, $0D, $02, $45, $16, $71, $7C, $43, $12, $04, $05, $19

    ld [hl+], a                                   ; $7014: $22
    inc b                                         ; $7015: $04
    ld b, b                                       ; $7016: $40

    db $09, $03, $0F, $B7, $5C, $5B, $14, $DB, $71, $42

    sbc e                                         ; $7021: $9B
    ld e, c                                       ; $7022: $59
    ld d, h                                       ; $7023: $54
    sbc a                                         ; $7024: $9F
    ld c, l                                       ; $7025: $4D
    ld b, l                                       ; $7026: $45
    dec l                                         ; $7027: $2D
    ld c, a                                       ; $7028: $4F
    ld d, a                                       ; $7029: $57
    ld hl, $FDFE                                  ; $702A: $21 $FE $FD
    sbc d                                         ; $702D: $9A
    ld b, d                                       ; $702E: $42
    ld b, e                                       ; $702F: $43
    db $10                                        ; $7030: $10
    inc b                                         ; $7031: $04
    dec b                                         ; $7032: $05
    ld a, [de]                                    ; $7033: $1A
    inc d                                         ; $7034: $14
    cp [hl]                                       ; $7035: $BE
    ld [hl], b                                    ; $7036: $70
    ld b, e                                       ; $7037: $43
    db $10                                        ; $7038: $10
    ld bc, $A225                                  ; $7039: $01 $25 $A2
    dec b                                         ; $703C: $05
    dec b                                         ; $703D: $05
    inc d                                         ; $703E: $14
    cp [hl]                                       ; $703F: $BE
    ld [hl], b                                    ; $7040: $70
    ld c, b                                       ; $7041: $48
    add hl, bc                                    ; $7042: $09
    nop                                           ; $7043: $00
    jr nz, jr_014_7005                            ; $7044: $20 $BF

    ld d, b                                       ; $7046: $50
    sbc a                                         ; $7047: $9F
    ld c, h                                       ; $7048: $4C
    ld [hl], l                                    ; $7049: $75
    ld l, l                                       ; $704A: $6D
    ld [hl], b                                    ; $704B: $70
    ld a, c                                       ; $704C: $79
    ld l, $FE                                     ; $704D: $2E $FE
    db $FD                                        ; $704F: $FD
    sbc e                                         ; $7050: $9B
    ld a, b                                       ; $7051: $78
    ld [hl], b                                    ; $7052: $70
    sbc a                                         ; $7053: $9F
    ld l, $2E                                     ; $7054: $2E $2E
    ld l, $61                                     ; $7056: $2E $61
    ld l, [hl]                                    ; $7058: $6E
    ld h, h                                       ; $7059: $64
    ld l, $2E                                     ; $705A: $2E $2E
    ld l, $FE                                     ; $705C: $2E $FE
    ld l, $2E                                     ; $705E: $2E $2E
    ld l, $69                                     ; $7060: $2E $69
    ld [hl], h                                    ; $7062: $74
    daa                                           ; $7063: $27
    ld [hl], e                                    ; $7064: $73
    ld l, $2E                                     ; $7065: $2E $2E

Call_014_7067:
    ld l, $FE                                     ; $7067: $2E $FE
    ld l, $2E                                     ; $7069: $2E $2E
    ld l, $6D                                     ; $706B: $2E $6D
    ld l, a                                       ; $706D: $6F
    halt                                          ; $706E: $76
    ld l, c                                       ; $706F: $69
    ld l, [hl]                                    ; $7070: $6E
    ld h, a                                       ; $7071: $67
    ccf                                           ; $7072: $3F
    ccf                                           ; $7073: $3F
    cp $FD                                        ; $7074: $FE $FD
    sbc e                                         ; $7076: $9B
    adc c                                         ; $7077: $89
    ld c, h                                       ; $7078: $4C
    sbc a                                         ; $7079: $9F
    ld b, a                                       ; $707A: $47
    ld d, d                                       ; $707B: $52
    ld b, c                                       ; $707C: $41
    ld d, d                                       ; $707D: $52
    ld b, c                                       ; $707E: $41
    ld d, d                                       ; $707F: $52
    ld b, c                                       ; $7080: $41
    ld d, d                                       ; $7081: $52
    ld b, c                                       ; $7082: $41
    ld d, d                                       ; $7083: $52
    ld d, d                                       ; $7084: $52
    ld hl, $2121                                  ; $7085: $21 $21 $21
    cp $FD                                        ; $7088: $FE $FD
    sbc e                                         ; $708A: $9B
    ld a, b                                       ; $708B: $78
    ld [hl], b                                    ; $708C: $70
    sbc a                                         ; $708D: $9F
    ld e, c                                       ; $708E: $59
    ld b, c                                       ; $708F: $41
    ld b, c                                       ; $7090: $41
    ld b, c                                       ; $7091: $41
    ld b, c                                       ; $7092: $41
    ld b, c                                       ; $7093: $41
    ld d, l                                       ; $7094: $55
    ld d, l                                       ; $7095: $55
    ld b, a                                       ; $7096: $47
    ld c, b                                       ; $7097: $48
    ld hl, $2121                                  ; $7098: $21 $21 $21
    cp $FD                                        ; $709B: $FE $FD
    sbc d                                         ; $709D: $9A
    sbc a                                         ; $709E: $9F
    dec l                                         ; $709F: $2D
    ld d, a                                       ; $70A0: $57
    ld l, a                                       ; $70A1: $6F
    ld [hl], d                                    ; $70A2: $72
    halt                                          ; $70A3: $76
    ld h, l                                       ; $70A4: $65
    ld l, h                                       ; $70A5: $6C
    ld l, c                                       ; $70A6: $69
    ld l, [hl]                                    ; $70A7: $6E
    ld h, l                                       ; $70A8: $65
    rst $38                                       ; $70A9: $FF
    jr nz, jr_014_7112                            ; $70AA: $20 $66

    ld l, a                                       ; $70AC: $6F
    ld [hl], l                                    ; $70AD: $75
    ld l, [hl]                                    ; $70AE: $6E
    ld h, h                                       ; $70AF: $64
    ld hl, $FE2D                                  ; $70B0: $21 $2D $FE
    db $FD                                        ; $70B3: $FD
    sbc d                                         ; $70B4: $9A
    xor h                                         ; $70B5: $AC
    dec h                                         ; $70B6: $25
    and d                                         ; $70B7: $A2
    nop                                           ; $70B8: $00
    xor a                                         ; $70B9: $AF
    daa                                           ; $70BA: $27
    and c                                         ; $70BB: $A1
    ld [$9F42], sp                                ; $70BC: $08 $42 $9F
    ld c, h                                       ; $70BF: $4C
    ld [hl], l                                    ; $70C0: $75
    ld l, l                                       ; $70C1: $6D
    ld [hl], b                                    ; $70C2: $70
    ld a, c                                       ; $70C3: $79
    ld l, $FE                                     ; $70C4: $2E $FE
    db $FD                                        ; $70C6: $FD
    sbc d                                         ; $70C7: $9A
    ld b, d                                       ; $70C8: $42
    ld b, e                                       ; $70C9: $43
    inc de                                        ; $70CA: $13
    inc b                                         ; $70CB: $04
    dec b                                         ; $70CC: $05
    add hl, de                                    ; $70CD: $19
    inc d                                         ; $70CE: $14
    add l                                         ; $70CF: $85
    ld [hl], c                                    ; $70D0: $71
    sbc e                                         ; $70D1: $9B
    ld a, b                                       ; $70D2: $78
    ld [hl], b                                    ; $70D3: $70
    sbc a                                         ; $70D4: $9F
    ld d, h                                       ; $70D5: $54
    ld l, b                                       ; $70D6: $68
    ld h, l                                       ; $70D7: $65
    ld [hl], d                                    ; $70D8: $72
    ld h, l                                       ; $70D9: $65
    daa                                           ; $70DA: $27
    ld [hl], e                                    ; $70DB: $73
    jr nz, jr_014_713F                            ; $70DC: $20 $61

    rst $38                                       ; $70DE: $FF
    ld l, [hl]                                    ; $70DF: $6E
    ld l, a                                       ; $70E0: $6F
    ld [hl], h                                    ; $70E1: $74
    ld h, l                                       ; $70E2: $65
    ld l, $FE                                     ; $70E3: $2E $FE
    db $FD                                        ; $70E5: $FD
    sbc d                                         ; $70E6: $9A
    sbc a                                         ; $70E7: $9F
    ld b, h                                       ; $70E8: $44
    ld l, a                                       ; $70E9: $6F
    ld l, [hl]                                    ; $70EA: $6E
    daa                                           ; $70EB: $27
    ld [hl], h                                    ; $70EC: $74
    jr nz, jr_014_7154                            ; $70ED: $20 $65

    halt                                          ; $70EF: $76
    ld h, l                                       ; $70F0: $65
    ld l, [hl]                                    ; $70F1: $6E
    rst $38                                       ; $70F2: $FF
    ld [hl], h                                    ; $70F3: $74
    ld l, b                                       ; $70F4: $68
    ld l, c                                       ; $70F5: $69
    ld l, [hl]                                    ; $70F6: $6E
    ld l, e                                       ; $70F7: $6B
    jr nz, jr_014_715B                            ; $70F8: $20 $61

    ld h, d                                       ; $70FA: $62
    ld l, a                                       ; $70FB: $6F
    ld [hl], l                                    ; $70FC: $75
    ld [hl], h                                    ; $70FD: $74
    jr nz, jr_014_7169                            ; $70FE: $20 $69

    ld [hl], h                                    ; $7100: $74
    ld l, $FE                                     ; $7101: $2E $FE
    jr nz, jr_014_7125                            ; $7103: $20 $20

    jr nz, jr_014_7127                            ; $7105: $20 $20

    jr nz, jr_014_7136                            ; $7107: $20 $2D

    ld d, b                                       ; $7109: $50
    ld d, d                                       ; $710A: $52
    ld d, l                                       ; $710B: $55
    ld c, c                                       ; $710C: $49
    ld d, h                                       ; $710D: $54
    ld d, h                                       ; $710E: $54
    cp $FD                                        ; $710F: $FE $FD
    sbc e                                         ; $7111: $9B

jr_014_7112:
    ld a, b                                       ; $7112: $78
    ld [hl], b                                    ; $7113: $70
    sbc a                                         ; $7114: $9F
    ld d, a                                       ; $7115: $57
    ld l, a                                       ; $7116: $6F
    ld [hl], a                                    ; $7117: $77
    inc l                                         ; $7118: $2C
    jr nz, jr_014_718E                            ; $7119: $20 $73

    ld l, b                                       ; $711B: $68
    ld h, l                                       ; $711C: $65
    jr nz, jr_014_7184                            ; $711D: $20 $65

    halt                                          ; $711F: $76
    ld h, l                                       ; $7120: $65
    ld l, [hl]                                    ; $7121: $6E
    rst $38                                       ; $7122: $FF
    ld [hl], a                                    ; $7123: $77
    ld h, l                                       ; $7124: $65

jr_014_7125:
    ld l, h                                       ; $7125: $6C
    ld h, h                                       ; $7126: $64

jr_014_7127:
    ld h, l                                       ; $7127: $65
    ld h, h                                       ; $7128: $64
    jr nz, jr_014_719F                            ; $7129: $20 $74

    ld l, b                                       ; $712B: $68
    ld h, l                                       ; $712C: $65
    cp $64                                        ; $712D: $FE $64
    ld l, a                                       ; $712F: $6F
    ld l, a                                       ; $7130: $6F
    ld [hl], d                                    ; $7131: $72
    ld l, e                                       ; $7132: $6B
    ld l, [hl]                                    ; $7133: $6E
    ld l, a                                       ; $7134: $6F
    ld h, d                                       ; $7135: $62

jr_014_7136:
    ld l, $2E                                     ; $7136: $2E $2E
    ld l, $FF                                     ; $7138: $2E $FF
    ld [hl], a                                    ; $713A: $77
    ld l, b                                       ; $713B: $68
    ld h, c                                       ; $713C: $61
    ld [hl], h                                    ; $713D: $74
    daa                                           ; $713E: $27

jr_014_713F:
    ld [hl], e                                    ; $713F: $73
    jr nz, jr_014_71AB                            ; $7140: $20 $69

    ld l, [hl]                                    ; $7142: $6E
    jr nz, jr_014_71AD                            ; $7143: $20 $68

    ld h, l                                       ; $7145: $65
    ld [hl], d                                    ; $7146: $72
    ld h, l                                       ; $7147: $65
    ccf                                           ; $7148: $3F
    cp $FD                                        ; $7149: $FE $FD
    sbc d                                         ; $714B: $9A
    ld b, d                                       ; $714C: $42
    sbc e                                         ; $714D: $9B
    xor b                                         ; $714E: $A8
    ld l, b                                       ; $714F: $68
    sbc a                                         ; $7150: $9F
    ld b, c                                       ; $7151: $41
    ld l, b                                       ; $7152: $68
    ld l, b                                       ; $7153: $68

jr_014_7154:
    ld l, b                                       ; $7154: $68
    ld hl, $5720                                  ; $7155: $21 $20 $57
    dec l                                         ; $7158: $2D
    ld d, a                                       ; $7159: $57
    ld l, b                                       ; $715A: $68

jr_014_715B:
    ld h, c                                       ; $715B: $61
    ld [hl], h                                    ; $715C: $74
    rst $38                                       ; $715D: $FF
    ld h, c                                       ; $715E: $61
    ld [hl], d                                    ; $715F: $72
    ld h, l                                       ; $7160: $65
    jr nz, @+$7B                                  ; $7161: $20 $79

    ld l, a                                       ; $7163: $6F
    ld [hl], l                                    ; $7164: $75
    jr nz, jr_014_71CB                            ; $7165: $20 $64

    ld l, a                                       ; $7167: $6F
    ld l, c                                       ; $7168: $69

jr_014_7169:
    ld l, [hl]                                    ; $7169: $6E
    ld h, a                                       ; $716A: $67
    ccf                                           ; $716B: $3F
    cp $47                                        ; $716C: $FE $47
    ld h, l                                       ; $716E: $65
    ld [hl], h                                    ; $716F: $74
    jr nz, jr_014_71D3                            ; $7170: $20 $61

    ld [hl], a                                    ; $7172: $77
    ld h, c                                       ; $7173: $61
    ld a, c                                       ; $7174: $79
    jr nz, @+$68                                  ; $7175: $20 $66

    ld [hl], d                                    ; $7177: $72
    ld l, a                                       ; $7178: $6F
    ld l, l                                       ; $7179: $6D
    rst $38                                       ; $717A: $FF
    ld [hl], h                                    ; $717B: $74
    ld l, b                                       ; $717C: $68
    ld h, l                                       ; $717D: $65
    ld [hl], d                                    ; $717E: $72
    ld h, l                                       ; $717F: $65
    ld hl, $FDFE                                  ; $7180: $21 $FE $FD
    sbc d                                         ; $7183: $9A

jr_014_7184:
    ld b, d                                       ; $7184: $42
    sbc e                                         ; $7185: $9B
    xor b                                         ; $7186: $A8
    ld l, b                                       ; $7187: $68
    sbc a                                         ; $7188: $9F
    ld e, c                                       ; $7189: $59
    ld l, a                                       ; $718A: $6F
    ld [hl], l                                    ; $718B: $75
    daa                                           ; $718C: $27
    ld h, h                                       ; $718D: $64

jr_014_718E:
    jr nz, jr_014_71F2                            ; $718E: $20 $62

    ld h, l                                       ; $7190: $65
    ld [hl], h                                    ; $7191: $74
    ld [hl], h                                    ; $7192: $74
    ld h, l                                       ; $7193: $65
    ld [hl], d                                    ; $7194: $72
    rst $38                                       ; $7195: $FF
    ld l, [hl]                                    ; $7196: $6E
    ld l, a                                       ; $7197: $6F
    ld [hl], h                                    ; $7198: $74
    jr nz, jr_014_71FD                            ; $7199: $20 $62

    ld h, l                                       ; $719B: $65
    jr nz, jr_014_7212                            ; $719C: $20 $74

    ld [hl], d                                    ; $719E: $72

jr_014_719F:
    ld a, c                                       ; $719F: $79
    ld l, c                                       ; $71A0: $69
    ld l, [hl]                                    ; $71A1: $6E
    ld h, a                                       ; $71A2: $67
    cp $74                                        ; $71A3: $FE $74
    ld l, a                                       ; $71A5: $6F
    jr nz, @+$71                                  ; $71A6: $20 $6F

    ld [hl], b                                    ; $71A8: $70
    ld h, l                                       ; $71A9: $65
    ld l, [hl]                                    ; $71AA: $6E

jr_014_71AB:
    jr nz, jr_014_7221                            ; $71AB: $20 $74

jr_014_71AD:
    ld l, b                                       ; $71AD: $68
    ld h, c                                       ; $71AE: $61
    ld [hl], h                                    ; $71AF: $74
    rst $38                                       ; $71B0: $FF
    ld h, h                                       ; $71B1: $64
    ld l, a                                       ; $71B2: $6F
    ld l, a                                       ; $71B3: $6F
    ld [hl], d                                    ; $71B4: $72
    ld hl, $FDFE                                  ; $71B5: $21 $FE $FD
    sbc e                                         ; $71B8: $9B
    ld a, b                                       ; $71B9: $78
    ld [hl], b                                    ; $71BA: $70
    sbc a                                         ; $71BB: $9F
    ld l, $2E                                     ; $71BC: $2E $2E
    ld l, $2E                                     ; $71BE: $2E $2E
    ld l, $2E                                     ; $71C0: $2E $2E
    ld l, $2E                                     ; $71C2: $2E $2E
    ld l, $FE                                     ; $71C4: $2E $FE
    ld d, l                                       ; $71C6: $55
    ld l, b                                       ; $71C7: $68
    inc l                                         ; $71C8: $2C
    jr nz, jr_014_7239                            ; $71C9: $20 $6E

jr_014_71CB:
    ld l, a                                       ; $71CB: $6F
    ld [hl], b                                    ; $71CC: $70
    ld h, l                                       ; $71CD: $65
    ld l, $FF                                     ; $71CE: $2E $FF
    ld c, [hl]                                    ; $71D0: $4E
    ld l, a                                       ; $71D1: $6F
    ld [hl], h                                    ; $71D2: $74

jr_014_71D3:
    jr nz, jr_014_7242                            ; $71D3: $20 $6D

    ld h, l                                       ; $71D5: $65
    ld l, $FE                                     ; $71D6: $2E $FE
    db $FD                                        ; $71D8: $FD
    sbc d                                         ; $71D9: $9A
    ld b, d                                       ; $71DA: $42

    db $07, $00, $6B, $4A, $09, $00, $20, $AB, $50, $4B, $04, $14, $01

    nop                                           ; $71E8: $00
    xor d                                         ; $71E9: $AA
    ld [hl], d                                    ; $71EA: $72

    db $14, $02, $00, $9F, $73

    inc d                                         ; $71F0: $14
    inc bc                                        ; $71F1: $03

jr_014_71F2:
    nop                                           ; $71F2: $00
    sbc c                                         ; $71F3: $99
    ld a, e                                       ; $71F4: $7B
    rst $38                                       ; $71F5: $FF
    ld b, e                                       ; $71F6: $43
    nop                                           ; $71F7: $00
    and l                                         ; $71F8: $A5
    and c                                         ; $71F9: $A1
    ld [bc], a                                    ; $71FA: $02
    inc d                                         ; $71FB: $14
    inc [hl]                                      ; $71FC: $34

jr_014_71FD:
    ld [hl], d                                    ; $71FD: $72
    sbc e                                         ; $71FE: $9B
    xor b                                         ; $71FF: $A8
    ld l, b                                       ; $7200: $68
    sbc a                                         ; $7201: $9F
    ld c, c                                       ; $7202: $49
    daa                                           ; $7203: $27
    ld l, l                                       ; $7204: $6D
    jr nz, @+$75                                  ; $7205: $20 $73

    ld l, a                                       ; $7207: $6F
    jr nz, jr_014_727C                            ; $7208: $20 $72

    ld h, l                                       ; $720A: $65
    ld l, h                                       ; $720B: $6C
    ld l, c                                       ; $720C: $69
    ld h, l                                       ; $720D: $65
    halt                                          ; $720E: $76
    ld h, l                                       ; $720F: $65
    ld h, h                                       ; $7210: $64
    rst $38                                       ; $7211: $FF

jr_014_7212:
    ld [hl], h                                    ; $7212: $74
    ld l, b                                       ; $7213: $68
    ld h, c                                       ; $7214: $61
    ld [hl], h                                    ; $7215: $74
    jr nz, jr_014_7267                            ; $7216: $20 $4F

    ld [hl], d                                    ; $7218: $72
    ld [hl], a                                    ; $7219: $77
    ld l, c                                       ; $721A: $69
    ld l, [hl]                                    ; $721B: $6E
    jr nz, jr_014_7287                            ; $721C: $20 $69

    ld [hl], e                                    ; $721E: $73
    cp $67                                        ; $721F: $FE $67

jr_014_7221:
    ld h, l                                       ; $7221: $65
    ld [hl], h                                    ; $7222: $74
    ld [hl], h                                    ; $7223: $74
    ld l, c                                       ; $7224: $69
    ld l, [hl]                                    ; $7225: $6E
    ld h, a                                       ; $7226: $67
    jr nz, jr_014_728B                            ; $7227: $20 $62

    ld h, l                                       ; $7229: $65
    ld [hl], h                                    ; $722A: $74
    ld [hl], h                                    ; $722B: $74
    ld h, l                                       ; $722C: $65
    ld [hl], d                                    ; $722D: $72
    ld hl, $FDFE                                  ; $722E: $21 $FE $FD
    ld b, [hl]                                    ; $7231: $46
    cp a                                          ; $7232: $BF
    ld a, e                                       ; $7233: $7B
    ld b, e                                       ; $7234: $43
    ld bc, $A2AE                                  ; $7235: $01 $AE $A2
    inc d                                         ; $7238: $14

jr_014_7239:
    sbc b                                         ; $7239: $98
    ld [hl], d                                    ; $723A: $72
    xor a                                         ; $723B: $AF
    xor b                                         ; $723C: $A8
    and c                                         ; $723D: $A1
    inc b                                         ; $723E: $04
    sbc e                                         ; $723F: $9B
    xor b                                         ; $7240: $A8
    ld l, b                                       ; $7241: $68

jr_014_7242:
    sbc a                                         ; $7242: $9F
    ld c, a                                       ; $7243: $4F
    ld [hl], d                                    ; $7244: $72
    ld [hl], a                                    ; $7245: $77
    ld l, c                                       ; $7246: $69
    ld l, [hl]                                    ; $7247: $6E
    jr nz, jr_014_72C1                            ; $7248: $20 $77

    ld h, c                                       ; $724A: $61
    ld [hl], e                                    ; $724B: $73
    rst $38                                       ; $724C: $FF
    ld h, c                                       ; $724D: $61
    ld l, h                                       ; $724E: $6C
    ld [hl], a                                    ; $724F: $77
    ld h, c                                       ; $7250: $61
    ld a, c                                       ; $7251: $79
    ld [hl], e                                    ; $7252: $73
    jr nz, jr_014_72C8                            ; $7253: $20 $73

    ld l, a                                       ; $7255: $6F
    jr nz, jr_014_72C3                            ; $7256: $20 $6B

    ld l, c                                       ; $7258: $69
    ld l, [hl]                                    ; $7259: $6E
    ld h, h                                       ; $725A: $64
    cp $74                                        ; $725B: $FE $74
    ld l, a                                       ; $725D: $6F
    jr nz, jr_014_72CD                            ; $725E: $20 $6D

    ld h, l                                       ; $7260: $65
    ld l, $2E                                     ; $7261: $2E $2E
    ld l, $2E                                     ; $7263: $2E $2E
    cp $43                                        ; $7265: $FE $43

jr_014_7267:
    ld h, c                                       ; $7267: $61
    ld l, [hl]                                    ; $7268: $6E
    jr nz, jr_014_72E4                            ; $7269: $20 $79

    ld l, a                                       ; $726B: $6F
    ld [hl], l                                    ; $726C: $75
    jr nz, jr_014_72D6                            ; $726D: $20 $67

    ld l, a                                       ; $726F: $6F
    rst $38                                       ; $7270: $FF
    ld h, [hl]                                    ; $7271: $66
    ld l, c                                       ; $7272: $69
    ld l, [hl]                                    ; $7273: $6E
    ld h, h                                       ; $7274: $64
    jr nz, @+$76                                  ; $7275: $20 $74

    ld l, b                                       ; $7277: $68
    ld h, l                                       ; $7278: $65

jr_014_7279:
    jr nz, jr_014_7279                            ; $7279: $20 $FE

    ld d, e                                       ; $727B: $53

jr_014_727C:
    ld h, l                                       ; $727C: $65
    ld h, l                                       ; $727D: $65
    ld [hl], d                                    ; $727E: $72
    jr nz, jr_014_72E2                            ; $727F: $20 $61

    ld l, [hl]                                    ; $7281: $6E
    ld h, h                                       ; $7282: $64
    rst $38                                       ; $7283: $FF
    ld h, c                                       ; $7284: $61
    ld [hl], e                                    ; $7285: $73
    ld l, e                                       ; $7286: $6B

jr_014_7287:
    jr nz, @+$6A                                  ; $7287: $20 $68

    ld l, c                                       ; $7289: $69
    ld [hl], e                                    ; $728A: $73

jr_014_728B:
    jr nz, jr_014_72F5                            ; $728B: $20 $68

    ld h, l                                       ; $728D: $65
    ld l, h                                       ; $728E: $6C
    ld [hl], b                                    ; $728F: $70
    ccf                                           ; $7290: $3F
    cp $FD                                        ; $7291: $FE $FD
    sbc d                                         ; $7293: $9A
    ld b, l                                       ; $7294: $45
    inc d                                         ; $7295: $14
    cp a                                          ; $7296: $BF
    ld a, e                                       ; $7297: $7B

    db $9B, $A8, $68, $9F, $48, $69, $2C, $20, $54, $6F, $6E, $79, $21, $FE, $FD, $46
    db $BF, $7B

    sbc e                                         ; $72AA: $9B
    xor b                                         ; $72AB: $A8
    ld l, b                                       ; $72AC: $68
    sbc a                                         ; $72AD: $9F
    ld c, b                                       ; $72AE: $48
    ld h, l                                       ; $72AF: $65
    ld l, h                                       ; $72B0: $6C
    ld l, h                                       ; $72B1: $6C
    ld l, a                                       ; $72B2: $6F
    ld hl, $4120                                  ; $72B3: $21 $20 $41
    ld [hl], d                                    ; $72B6: $72
    ld h, l                                       ; $72B7: $65
    rst $38                                       ; $72B8: $FF
    ld a, c                                       ; $72B9: $79
    ld l, a                                       ; $72BA: $6F
    ld [hl], l                                    ; $72BB: $75
    jr nz, jr_014_731F                            ; $72BC: $20 $61

    jr nz, jr_014_7326                            ; $72BE: $20 $66

    ld [hl], d                                    ; $72C0: $72

jr_014_72C1:
    ld l, c                                       ; $72C1: $69
    ld h, l                                       ; $72C2: $65

jr_014_72C3:
    ld l, [hl]                                    ; $72C3: $6E
    ld h, h                                       ; $72C4: $64
    cp $6F                                        ; $72C5: $FE $6F
    ld h, [hl]                                    ; $72C7: $66

jr_014_72C8:
    jr nz, jr_014_7319                            ; $72C8: $20 $4F

    ld [hl], d                                    ; $72CA: $72
    ld [hl], a                                    ; $72CB: $77
    ld l, c                                       ; $72CC: $69

jr_014_72CD:
    ld l, [hl]                                    ; $72CD: $6E
    daa                                           ; $72CE: $27
    ld [hl], e                                    ; $72CF: $73
    ccf                                           ; $72D0: $3F
    cp $FD                                        ; $72D1: $FE $FD
    sbc c                                         ; $72D3: $99
    sbc e                                         ; $72D4: $9B
    ld a, b                                       ; $72D5: $78

jr_014_72D6:
    ld [hl], b                                    ; $72D6: $70
    sbc a                                         ; $72D7: $9F
    jr nz, @+$59                                  ; $72D8: $20 $57

    ld l, b                                       ; $72DA: $68
    ld l, a                                       ; $72DB: $6F
    daa                                           ; $72DC: $27
    ld [hl], e                                    ; $72DD: $73
    jr nz, jr_014_732F                            ; $72DE: $20 $4F

    ld [hl], d                                    ; $72E0: $72
    ld [hl], a                                    ; $72E1: $77

jr_014_72E2:
    ld l, c                                       ; $72E2: $69
    ld l, [hl]                                    ; $72E3: $6E

jr_014_72E4:
    ccf                                           ; $72E4: $3F
    rst $38                                       ; $72E5: $FF
    jr nz, @+$5B                                  ; $72E6: $20 $59

    ld h, l                                       ; $72E8: $65
    ld [hl], e                                    ; $72E9: $73
    jr nz, jr_014_7335                            ; $72EA: $20 $49

    jr nz, jr_014_734F                            ; $72EC: $20 $61

    ld l, l                                       ; $72EE: $6D
    ld hl, $9CFD                                  ; $72EF: $21 $FD $9C
    ld [bc], a                                    ; $72F2: $02
    inc d                                         ; $72F3: $14
    ld sp, hl                                     ; $72F4: $F9

jr_014_72F5:
    ld [hl], d                                    ; $72F5: $72
    inc d                                         ; $72F6: $14
    ld d, h                                       ; $72F7: $54
    ld [hl], e                                    ; $72F8: $73
    sbc c                                         ; $72F9: $99
    sbc e                                         ; $72FA: $9B
    xor b                                         ; $72FB: $A8
    ld l, b                                       ; $72FC: $68
    sbc a                                         ; $72FD: $9F
    ld c, a                                       ; $72FE: $4F
    ld l, b                                       ; $72FF: $68
    inc l                                         ; $7300: $2C
    jr nz, jr_014_737C                            ; $7301: $20 $79

    ld l, a                                       ; $7303: $6F
    ld [hl], l                                    ; $7304: $75
    daa                                           ; $7305: $27
    ld [hl], d                                    ; $7306: $72
    ld h, l                                       ; $7307: $65
    jr nz, jr_014_7378                            ; $7308: $20 $6E

    ld l, a                                       ; $730A: $6F
    ld [hl], h                                    ; $730B: $74
    ccf                                           ; $730C: $3F
    rst $38                                       ; $730D: $FF
    ld c, a                                       ; $730E: $4F
    ld [hl], d                                    ; $730F: $72
    ld [hl], a                                    ; $7310: $77
    ld l, c                                       ; $7311: $69
    ld l, [hl]                                    ; $7312: $6E
    jr nz, @+$6B                                  ; $7313: $20 $69

    ld [hl], e                                    ; $7315: $73
    jr nz, jr_014_738C                            ; $7316: $20 $74

    ld l, b                                       ; $7318: $68

jr_014_7319:
    ld h, l                                       ; $7319: $65
    cp $65                                        ; $731A: $FE $65
    ld l, h                                       ; $731C: $6C
    ld h, h                                       ; $731D: $64
    ld h, l                                       ; $731E: $65

jr_014_731F:
    ld [hl], d                                    ; $731F: $72
    jr nz, jr_014_7391                            ; $7320: $20 $6F

    ld h, [hl]                                    ; $7322: $66
    jr nz, jr_014_737B                            ; $7323: $20 $56

    ld h, c                                       ; $7325: $61

jr_014_7326:
    ld [hl], e                                    ; $7326: $73
    ld l, b                                       ; $7327: $68
    rst $38                                       ; $7328: $FF
    ld c, [hl]                                    ; $7329: $4E
    ld h, c                                       ; $732A: $61
    ld [hl], d                                    ; $732B: $72
    ld l, a                                       ; $732C: $6F
    ld l, a                                       ; $732D: $6F
    ld l, l                                       ; $732E: $6D

jr_014_732F:
    inc l                                         ; $732F: $2C
    jr nz, @+$75                                  ; $7330: $20 $73

    ld l, c                                       ; $7332: $69
    ld l, h                                       ; $7333: $6C
    ld l, h                                       ; $7334: $6C

jr_014_7335:
    ld a, c                                       ; $7335: $79
    ld hl, $45FE                                  ; $7336: $21 $FE $45
    halt                                          ; $7339: $76
    ld h, l                                       ; $733A: $65
    ld [hl], d                                    ; $733B: $72
    ld a, c                                       ; $733C: $79
    ld l, a                                       ; $733D: $6F
    ld l, [hl]                                    ; $733E: $6E
    ld h, l                                       ; $733F: $65
    jr nz, @+$6D                                  ; $7340: $20 $6B

    ld l, [hl]                                    ; $7342: $6E
    ld l, a                                       ; $7343: $6F
    ld [hl], a                                    ; $7344: $77
    ld [hl], e                                    ; $7345: $73
    rst $38                                       ; $7346: $FF
    ld [hl], h                                    ; $7347: $74
    ld l, b                                       ; $7348: $68
    ld h, c                                       ; $7349: $61
    ld [hl], h                                    ; $734A: $74
    ld hl, $FDFE                                  ; $734B: $21 $FE $FD
    sbc d                                         ; $734E: $9A

jr_014_734F:
    rlca                                          ; $734F: $07
    nop                                           ; $7350: $00
    add c                                         ; $7351: $81
    ld e, l                                       ; $7352: $5D
    ld b, d                                       ; $7353: $42
    sbc c                                         ; $7354: $99
    sbc e                                         ; $7355: $9B
    xor b                                         ; $7356: $A8
    ld l, b                                       ; $7357: $68
    sbc a                                         ; $7358: $9F
    ld b, e                                       ; $7359: $43
    ld h, c                                       ; $735A: $61
    ld l, [hl]                                    ; $735B: $6E
    daa                                           ; $735C: $27
    ld [hl], h                                    ; $735D: $74
    jr nz, @+$68                                  ; $735E: $20 $66

    ld l, c                                       ; $7360: $69
    ld l, [hl]                                    ; $7361: $6E
    ld h, h                                       ; $7362: $64
    jr nz, @+$6A                                  ; $7363: $20 $68

    ld l, c                                       ; $7365: $69
    ld l, l                                       ; $7366: $6D
    inc l                                         ; $7367: $2C
    rst $38                                       ; $7368: $FF
    ld l, b                                       ; $7369: $68
    ld [hl], l                                    ; $736A: $75
    ld l, b                                       ; $736B: $68
    ccf                                           ; $736C: $3F
    jr nz, @+$4A                                  ; $736D: $20 $48

    ld h, l                                       ; $736F: $65
    jr nz, @+$6E                                  ; $7370: $20 $6C

    ld l, c                                       ; $7372: $69
    halt                                          ; $7373: $76
    ld h, l                                       ; $7374: $65
    ld [hl], e                                    ; $7375: $73
    cp $69                                        ; $7376: $FE $69

jr_014_7378:
    ld l, [hl]                                    ; $7378: $6E
    jr nz, @+$76                                  ; $7379: $20 $74

jr_014_737B:
    ld l, b                                       ; $737B: $68

jr_014_737C:
    ld h, l                                       ; $737C: $65
    jr nz, @+$50                                  ; $737D: $20 $4E

    ld l, a                                       ; $737F: $6F
    ld [hl], d                                    ; $7380: $72
    ld [hl], h                                    ; $7381: $74
    ld l, b                                       ; $7382: $68
    dec l                                         ; $7383: $2D
    rst $38                                       ; $7384: $FF
    ld b, l                                       ; $7385: $45
    ld h, c                                       ; $7386: $61
    ld [hl], e                                    ; $7387: $73
    ld [hl], h                                    ; $7388: $74
    jr nz, @+$72                                  ; $7389: $20 $70

    ld h, c                                       ; $738B: $61

jr_014_738C:
    ld [hl], d                                    ; $738C: $72
    ld [hl], h                                    ; $738D: $74
    jr nz, @+$71                                  ; $738E: $20 $6F

    ld h, [hl]                                    ; $7390: $66

jr_014_7391:
    cp $74                                        ; $7391: $FE $74
    ld l, a                                       ; $7393: $6F
    ld [hl], a                                    ; $7394: $77
    ld l, [hl]                                    ; $7395: $6E
    ld l, $FE                                     ; $7396: $2E $FE
    db $FD                                        ; $7398: $FD
    sbc d                                         ; $7399: $9A
    rlca                                          ; $739A: $07
    nop                                           ; $739B: $00
    add c                                         ; $739C: $81
    ld e, l                                       ; $739D: $5D
    ld b, d                                       ; $739E: $42

    db $43, $01, $24, $A2, $14, $98, $72, $AC, $24, $A2, $01, $9B, $78, $70, $9F, $49
    db $73, $20, $74, $68, $69, $73, $20, $74, $68, $65, $FF, $52, $69, $6E, $67, $73
    db $6D, $69, $74, $68, $27, $73, $FE, $73, $68, $6F, $70, $3F, $FE, $FD, $9B, $A8
    db $68, $9F, $59, $65, $73, $20, $69, $74, $20, $69, $73, $21, $FE, $4D, $79, $20
    db $6E, $61, $6D, $65, $20, $69, $73, $FF, $50, $72, $75, $69, $74, $74, $2E, $FE
    db $48, $6F, $77, $20, $63, $61, $6E, $20, $49, $20, $62, $65, $FF, $6F, $66, $20
    db $73, $65, $72, $76, $69, $63, $65, $3F, $FE, $FD, $9B, $78, $70, $9F, $48, $69
    db $2E, $20, $49, $27, $6D, $20, $54, $6F, $6E, $79, $FF, $4A, $6F, $6E, $65, $73
    db $2E, $20, $49, $20, $77, $61, $73, $FE, $74, $6F, $6C, $64, $20, $62, $79, $20
    db $45, $69, $64, $6F, $6E, $FF, $74, $6F, $20, $73, $68, $6F, $77, $20, $79, $6F
    db $75, $FE, $74, $68, $69, $73, $20, $63, $72, $79, $73, $74, $61, $6C, $2E, $FE
    db $FD, $0B, $04, $9B, $A8, $68, $9F, $48, $6D, $6D, $2E, $2E, $2E, $20, $6C, $65
    db $74, $27, $73, $FF, $73, $65, $65, $2E, $2E, $2E, $FE, $4F, $68, $2C, $20, $74
    db $68, $69, $73, $20, $69, $73, $FF, $FD, $4B, $01, $AF, $A2, $14, $00

    nop                                           ; $747D: $00
    adc e                                         ; $747E: $8B
    ld [hl], h                                    ; $747F: $74

    db $14, $01, $00, $D6, $74

    inc d                                         ; $7485: $14
    ld [bc], a                                    ; $7486: $02
    nop                                           ; $7487: $00
    dec h                                         ; $7488: $25
    ld [hl], l                                    ; $7489: $75
    rst $38                                       ; $748A: $FF
    sbc a                                         ; $748B: $9F
    ld [hl], e                                    ; $748C: $73
    ld l, a                                       ; $748D: $6F
    ld l, l                                       ; $748E: $6D
    ld h, l                                       ; $748F: $65
    jr nz, @+$48                                  ; $7490: $20 $46

    ld [hl], l                                    ; $7492: $75
    ld [hl], d                                    ; $7493: $72
    ld l, a                                       ; $7494: $6F
    ld l, e                                       ; $7495: $6B
    cp $41                                        ; $7496: $FE $41
    ld l, [hl]                                    ; $7498: $6E
    ld l, c                                       ; $7499: $69
    ld l, l                                       ; $749A: $6D
    ld l, c                                       ; $749B: $69
    ld [hl], h                                    ; $749C: $74
    ld h, l                                       ; $749D: $65
    ld hl, $FDFE                                  ; $749E: $21 $FE $FD
    sbc e                                         ; $74A1: $9B
    ld a, b                                       ; $74A2: $78
    ld [hl], b                                    ; $74A3: $70
    sbc a                                         ; $74A4: $9F
    ld b, [hl]                                    ; $74A5: $46
    ld [hl], l                                    ; $74A6: $75
    ld [hl], d                                    ; $74A7: $72
    ld l, a                                       ; $74A8: $6F
    ld l, e                                       ; $74A9: $6B
    ccf                                           ; $74AA: $3F
    cp $41                                        ; $74AB: $FE $41
    ld l, [hl]                                    ; $74AD: $6E
    ld l, c                                       ; $74AE: $69
    ld l, l                                       ; $74AF: $6D
    ld l, c                                       ; $74B0: $69
    ld [hl], h                                    ; $74B1: $74
    ld h, l                                       ; $74B2: $65
    ccf                                           ; $74B3: $3F
    cp $57                                        ; $74B4: $FE $57
    ld l, b                                       ; $74B6: $68
    ld h, c                                       ; $74B7: $61
    ld [hl], h                                    ; $74B8: $74
    jr nz, @+$63                                  ; $74B9: $20 $61

    ld [hl], d                                    ; $74BB: $72
    ld h, l                                       ; $74BC: $65
    jr nz, jr_014_7538                            ; $74BD: $20 $79

    ld l, a                                       ; $74BF: $6F
    ld [hl], l                                    ; $74C0: $75
    rst $38                                       ; $74C1: $FF
    ld [hl], h                                    ; $74C2: $74
    ld h, c                                       ; $74C3: $61
    ld l, h                                       ; $74C4: $6C
    ld l, e                                       ; $74C5: $6B
    ld l, c                                       ; $74C6: $69
    ld l, [hl]                                    ; $74C7: $6E
    ld h, a                                       ; $74C8: $67
    jr nz, jr_014_752C                            ; $74C9: $20 $61

    ld h, d                                       ; $74CB: $62
    ld l, a                                       ; $74CC: $6F
    ld [hl], l                                    ; $74CD: $75
    ld [hl], h                                    ; $74CE: $74
    ccf                                           ; $74CF: $3F
    cp $FD                                        ; $74D0: $FE $FD
    ld b, l                                       ; $74D2: $45
    inc d                                         ; $74D3: $14
    ld a, c                                       ; $74D4: $79
    ld [hl], l                                    ; $74D5: $75

    db $9F, $73, $6F, $6D, $65, $20, $70, $72, $65, $74, $74, $79, $FE, $67, $6F, $6F
    db $64, $20, $46, $75, $72, $6F, $6B, $FF, $FD, $9F, $41, $6E, $69, $6D, $69, $74
    db $65, $21, $FE, $FD, $9B, $78, $70, $9F, $46, $75, $72, $6F, $6B, $3F, $FE, $41
    db $6E, $69, $6D, $69, $74, $65, $3F, $FE, $57, $68, $61, $74, $20, $64, $6F, $20
    db $79, $6F, $75, $FF, $6D, $65, $61, $6E, $3F, $FE, $FD, $45, $14, $79, $75

    sbc a                                         ; $7525: $9F
    ld [hl], e                                    ; $7526: $73
    ld l, a                                       ; $7527: $6F
    ld l, l                                       ; $7528: $6D
    ld h, l                                       ; $7529: $65
    jr nz, @+$67                                  ; $752A: $20 $65

jr_014_752C:
    ld a, b                                       ; $752C: $78
    ld h, e                                       ; $752D: $63
    ld h, l                                       ; $752E: $65
    ld l, h                                       ; $752F: $6C
    ld l, h                                       ; $7530: $6C
    ld h, l                                       ; $7531: $65
    ld l, [hl]                                    ; $7532: $6E
    ld [hl], h                                    ; $7533: $74
    dec l                                         ; $7534: $2D
    cp $6C                                        ; $7535: $FE $6C
    ld l, a                                       ; $7537: $6F

jr_014_7538:
    ld l, a                                       ; $7538: $6F
    ld l, e                                       ; $7539: $6B
    ld l, c                                       ; $753A: $69
    ld l, [hl]                                    ; $753B: $6E
    ld h, a                                       ; $753C: $67
    jr nz, @+$48                                  ; $753D: $20 $46

    ld [hl], l                                    ; $753F: $75
    ld [hl], d                                    ; $7540: $72
    ld l, a                                       ; $7541: $6F
    ld l, e                                       ; $7542: $6B
    rst $38                                       ; $7543: $FF
    db $FD                                        ; $7544: $FD
    sbc a                                         ; $7545: $9F
    ld b, c                                       ; $7546: $41
    ld l, [hl]                                    ; $7547: $6E
    ld l, c                                       ; $7548: $69
    ld l, l                                       ; $7549: $6D
    ld l, c                                       ; $754A: $69
    ld [hl], h                                    ; $754B: $74
    ld h, l                                       ; $754C: $65
    ld hl, $FDFE                                  ; $754D: $21 $FE $FD
    sbc e                                         ; $7550: $9B
    ld a, b                                       ; $7551: $78
    ld [hl], b                                    ; $7552: $70
    sbc a                                         ; $7553: $9F
    ld b, [hl]                                    ; $7554: $46
    ld [hl], l                                    ; $7555: $75
    ld [hl], d                                    ; $7556: $72
    ld l, a                                       ; $7557: $6F
    ld l, e                                       ; $7558: $6B
    ccf                                           ; $7559: $3F
    cp $41                                        ; $755A: $FE $41
    ld l, [hl]                                    ; $755C: $6E
    ld l, c                                       ; $755D: $69
    ld l, l                                       ; $755E: $6D
    ld l, c                                       ; $755F: $69
    ld [hl], h                                    ; $7560: $74
    ld h, l                                       ; $7561: $65
    ccf                                           ; $7562: $3F
    cp $49                                        ; $7563: $FE $49
    jr nz, @+$66                                  ; $7565: $20 $64

    ld l, a                                       ; $7567: $6F
    ld l, [hl]                                    ; $7568: $6E
    daa                                           ; $7569: $27
    ld [hl], h                                    ; $756A: $74
    rst $38                                       ; $756B: $FF
    ld [hl], l                                    ; $756C: $75
    ld l, [hl]                                    ; $756D: $6E
    ld h, h                                       ; $756E: $64
    ld h, l                                       ; $756F: $65
    ld [hl], d                                    ; $7570: $72
    ld [hl], e                                    ; $7571: $73
    ld [hl], h                                    ; $7572: $74
    ld h, c                                       ; $7573: $61
    ld l, [hl]                                    ; $7574: $6E
    ld h, h                                       ; $7575: $64
    ld l, $FE                                     ; $7576: $2E $FE
    db $FD                                        ; $7578: $FD

    db $9B, $A8, $68, $9F, $59, $6F, $75, $20, $64, $6F, $6E, $27, $74, $20, $6B, $6E
    db $6F, $77, $FF, $61, $62, $6F, $75, $74, $20, $41, $6E, $69, $6D, $69, $74, $65
    db $3F, $FE, $53, $68, $61, $6C, $6C, $20, $49, $20, $65, $78, $70, $6C, $61, $69
    db $6E, $FF, $69, $74, $20, $74, $6F, $20, $79, $6F, $75, $3F, $FE, $FD, $9B, $78
    db $70, $9F, $20, $4E, $6F, $FF, $20, $59, $65, $73, $FD, $9C, $02, $14, $84, $7B

    inc d                                         ; $75C9: $14
    call z, $9B75                                 ; $75CA: $CC $75 $9B
    xor b                                         ; $75CD: $A8
    ld l, b                                       ; $75CE: $68
    sbc a                                         ; $75CF: $9F
    ld d, a                                       ; $75D0: $57
    ld h, l                                       ; $75D1: $65
    ld l, h                                       ; $75D2: $6C
    ld l, h                                       ; $75D3: $6C
    inc l                                         ; $75D4: $2C
    jr nz, jr_014_7618                            ; $75D5: $20 $41

    ld l, [hl]                                    ; $75D7: $6E
    ld l, c                                       ; $75D8: $69
    ld l, l                                       ; $75D9: $6D
    ld l, c                                       ; $75DA: $69
    ld [hl], h                                    ; $75DB: $74
    ld h, l                                       ; $75DC: $65
    cp $69                                        ; $75DD: $FE $69
    ld [hl], e                                    ; $75DF: $73
    jr nz, jr_014_7643                            ; $75E0: $20 $61

    jr nz, @+$6D                                  ; $75E2: $20 $6B

    ld l, c                                       ; $75E4: $69
    ld l, [hl]                                    ; $75E5: $6E
    ld h, h                                       ; $75E6: $64
    jr nz, jr_014_7658                            ; $75E7: $20 $6F

    ld h, [hl]                                    ; $75E9: $66
    rst $38                                       ; $75EA: $FF
    ld h, e                                       ; $75EB: $63
    ld [hl], d                                    ; $75EC: $72
    ld a, c                                       ; $75ED: $79
    ld [hl], e                                    ; $75EE: $73
    ld [hl], h                                    ; $75EF: $74
    ld h, c                                       ; $75F0: $61
    ld l, h                                       ; $75F1: $6C
    ld l, $20                                     ; $75F2: $2E $20
    ld d, a                                       ; $75F4: $57
    ld h, l                                       ; $75F5: $65
    jr nz, jr_014_766D                            ; $75F6: $20 $75

    ld [hl], e                                    ; $75F8: $73
    ld h, l                                       ; $75F9: $65
    cp $6F                                        ; $75FA: $FE $6F
    ld [hl], d                                    ; $75FC: $72
    ld h, h                                       ; $75FD: $64
    ld l, c                                       ; $75FE: $69
    ld l, [hl]                                    ; $75FF: $6E
    ld h, c                                       ; $7600: $61
    ld [hl], d                                    ; $7601: $72
    ld a, c                                       ; $7602: $79
    rst $38                                       ; $7603: $FF
    ld b, c                                       ; $7604: $41
    ld l, [hl]                                    ; $7605: $6E
    ld l, c                                       ; $7606: $69
    ld l, l                                       ; $7607: $6D
    ld l, c                                       ; $7608: $69
    ld [hl], h                                    ; $7609: $74
    ld h, l                                       ; $760A: $65
    jr nz, jr_014_766E                            ; $760B: $20 $61

    ld [hl], e                                    ; $760D: $73
    cp $6D                                        ; $760E: $FE $6D
    ld l, a                                       ; $7610: $6F
    ld l, [hl]                                    ; $7611: $6E
    ld h, l                                       ; $7612: $65
    ld a, c                                       ; $7613: $79
    jr nz, @+$63                                  ; $7614: $20 $61

    ld [hl], d                                    ; $7616: $72
    ld l, a                                       ; $7617: $6F

jr_014_7618:
    ld [hl], l                                    ; $7618: $75
    ld l, [hl]                                    ; $7619: $6E
    ld h, h                                       ; $761A: $64
    rst $38                                       ; $761B: $FF
    ld l, b                                       ; $761C: $68
    ld h, l                                       ; $761D: $65
    ld [hl], d                                    ; $761E: $72
    ld h, l                                       ; $761F: $65
    ld l, $FE                                     ; $7620: $2E $FE
    db $FD                                        ; $7622: $FD
    sbc e                                         ; $7623: $9B
    ld a, b                                       ; $7624: $78
    ld [hl], b                                    ; $7625: $70
    sbc a                                         ; $7626: $9F
    ld d, e                                       ; $7627: $53
    ld l, a                                       ; $7628: $6F
    jr nz, jr_014_7674                            ; $7629: $20 $49

    jr nz, jr_014_7690                            ; $762B: $20 $63

    ld h, c                                       ; $762D: $61
    ld l, [hl]                                    ; $762E: $6E
    jr nz, jr_014_76A6                            ; $762F: $20 $75

    ld [hl], e                                    ; $7631: $73
    ld h, l                                       ; $7632: $65
    rst $38                                       ; $7633: $FF
    ld [hl], h                                    ; $7634: $74
    ld l, b                                       ; $7635: $68
    ld l, c                                       ; $7636: $69
    ld [hl], e                                    ; $7637: $73
    jr nz, @+$76                                  ; $7638: $20 $74

    ld l, a                                       ; $763A: $6F
    jr nz, jr_014_769F                            ; $763B: $20 $62

    ld [hl], l                                    ; $763D: $75
    ld a, c                                       ; $763E: $79
    cp $73                                        ; $763F: $FE $73
    ld [hl], h                                    ; $7641: $74
    ld [hl], l                                    ; $7642: $75

jr_014_7643:
    ld h, [hl]                                    ; $7643: $66
    ld h, [hl]                                    ; $7644: $66
    ccf                                           ; $7645: $3F
    cp $FD                                        ; $7646: $FE $FD
    sbc e                                         ; $7648: $9B
    xor b                                         ; $7649: $A8
    ld l, b                                       ; $764A: $68
    sbc a                                         ; $764B: $9F
    ld c, [hl]                                    ; $764C: $4E
    ld l, a                                       ; $764D: $6F
    jr nz, jr_014_76BE                            ; $764E: $20 $6E

    ld l, a                                       ; $7650: $6F
    jr nz, jr_014_76C1                            ; $7651: $20 $6E

    ld l, a                                       ; $7653: $6F
    ld hl, $57FE                                  ; $7654: $21 $FE $57
    ld h, l                                       ; $7657: $65

jr_014_7658:
    ld l, h                                       ; $7658: $6C
    ld l, h                                       ; $7659: $6C
    inc l                                         ; $765A: $2C
    jr nz, jr_014_76A6                            ; $765B: $20 $49

    jr nz, jr_014_76CC                            ; $765D: $20 $6D

    ld h, l                                       ; $765F: $65
    ld h, c                                       ; $7660: $61
    ld l, [hl]                                    ; $7661: $6E
    rst $38                                       ; $7662: $FF
    ld l, [hl]                                    ; $7663: $6E
    ld l, a                                       ; $7664: $6F
    ld [hl], d                                    ; $7665: $72
    ld l, l                                       ; $7666: $6D
    ld h, c                                       ; $7667: $61
    ld l, h                                       ; $7668: $6C
    ld l, h                                       ; $7669: $6C
    ld a, c                                       ; $766A: $79
    jr nz, jr_014_76E6                            ; $766B: $20 $79

jr_014_766D:
    ld l, a                                       ; $766D: $6F

jr_014_766E:
    ld [hl], l                                    ; $766E: $75
    cp $63                                        ; $766F: $FE $63
    ld l, a                                       ; $7671: $6F
    ld [hl], l                                    ; $7672: $75
    ld l, h                                       ; $7673: $6C

jr_014_7674:
    ld h, h                                       ; $7674: $64
    inc l                                         ; $7675: $2C
    jr nz, jr_014_76DA                            ; $7676: $20 $62

    ld [hl], l                                    ; $7678: $75
    ld [hl], h                                    ; $7679: $74
    jr nz, jr_014_76F0                            ; $767A: $20 $74

    ld l, b                                       ; $767C: $68
    ld l, c                                       ; $767D: $69
    ld [hl], e                                    ; $767E: $73
    rst $38                                       ; $767F: $FF
    ld l, c                                       ; $7680: $69
    ld [hl], e                                    ; $7681: $73
    jr nz, jr_014_76ED                            ; $7682: $20 $69

    ld l, [hl]                                    ; $7684: $6E
    ld h, [hl]                                    ; $7685: $66
    ld [hl], l                                    ; $7686: $75
    ld [hl], e                                    ; $7687: $73
    ld h, l                                       ; $7688: $65
    ld h, h                                       ; $7689: $64
    cp $41                                        ; $768A: $FE $41
    ld l, [hl]                                    ; $768C: $6E
    ld l, c                                       ; $768D: $69
    ld l, l                                       ; $768E: $6D
    ld l, c                                       ; $768F: $69

jr_014_7690:
    ld [hl], h                                    ; $7690: $74
    ld h, l                                       ; $7691: $65
    ld hl, $FDFE                                  ; $7692: $21 $FE $FD
    sbc e                                         ; $7695: $9B
    ld a, b                                       ; $7696: $78
    ld [hl], b                                    ; $7697: $70
    sbc a                                         ; $7698: $9F
    ld d, a                                       ; $7699: $57
    ld l, b                                       ; $769A: $68
    ld h, c                                       ; $769B: $61
    ld [hl], h                                    ; $769C: $74
    jr nz, @+$66                                  ; $769D: $20 $64

jr_014_769F:
    ld l, a                                       ; $769F: $6F
    ld h, l                                       ; $76A0: $65
    ld [hl], e                                    ; $76A1: $73
    jr nz, jr_014_7718                            ; $76A2: $20 $74

    ld l, b                                       ; $76A4: $68
    ld h, c                                       ; $76A5: $61

jr_014_76A6:
    ld [hl], h                                    ; $76A6: $74
    rst $38                                       ; $76A7: $FF
    ld l, l                                       ; $76A8: $6D
    ld h, l                                       ; $76A9: $65
    ld h, c                                       ; $76AA: $61
    ld l, [hl]                                    ; $76AB: $6E
    ccf                                           ; $76AC: $3F
    cp $FD                                        ; $76AD: $FE $FD
    sbc e                                         ; $76AF: $9B
    xor b                                         ; $76B0: $A8
    ld l, b                                       ; $76B1: $68
    sbc a                                         ; $76B2: $9F
    ld d, a                                       ; $76B3: $57
    ld h, l                                       ; $76B4: $65
    ld l, h                                       ; $76B5: $6C
    ld l, h                                       ; $76B6: $6C
    inc l                                         ; $76B7: $2C
    jr nz, jr_014_7723                            ; $76B8: $20 $69

    ld h, [hl]                                    ; $76BA: $66
    jr nz, jr_014_7736                            ; $76BB: $20 $79

    ld l, a                                       ; $76BD: $6F

jr_014_76BE:
    ld [hl], l                                    ; $76BE: $75
    rst $38                                       ; $76BF: $FF
    ld [hl], h                                    ; $76C0: $74

jr_014_76C1:
    ld h, c                                       ; $76C1: $61
    ld l, e                                       ; $76C2: $6B
    ld h, l                                       ; $76C3: $65
    jr nz, jr_014_772F                            ; $76C4: $20 $69

    ld l, [hl]                                    ; $76C6: $6E
    ld h, [hl]                                    ; $76C7: $66
    ld [hl], l                                    ; $76C8: $75
    ld [hl], e                                    ; $76C9: $73
    ld h, l                                       ; $76CA: $65
    ld h, h                                       ; $76CB: $64

jr_014_76CC:
    cp $41                                        ; $76CC: $FE $41
    ld l, [hl]                                    ; $76CE: $6E
    ld l, c                                       ; $76CF: $69
    ld l, l                                       ; $76D0: $6D
    ld l, c                                       ; $76D1: $69
    ld [hl], h                                    ; $76D2: $74
    ld h, l                                       ; $76D3: $65
    inc l                                         ; $76D4: $2C
    jr nz, jr_014_7738                            ; $76D5: $20 $61

    ld l, [hl]                                    ; $76D7: $6E
    ld h, h                                       ; $76D8: $64
    rst $38                                       ; $76D9: $FF

jr_014_76DA:
    ld h, a                                       ; $76DA: $67
    ld l, c                                       ; $76DB: $69
    halt                                          ; $76DC: $76
    ld h, l                                       ; $76DD: $65
    jr nz, @+$6B                                  ; $76DE: $20 $69

    ld [hl], h                                    ; $76E0: $74
    jr nz, jr_014_7757                            ; $76E1: $20 $74

    ld l, a                                       ; $76E3: $6F
    jr nz, jr_014_7753                            ; $76E4: $20 $6D

jr_014_76E6:
    ld h, l                                       ; $76E6: $65
    inc l                                         ; $76E7: $2C
    cp $49                                        ; $76E8: $FE $49
    jr nz, jr_014_774F                            ; $76EA: $20 $63

    ld h, c                                       ; $76EC: $61

jr_014_76ED:
    ld l, [hl]                                    ; $76ED: $6E
    jr nz, jr_014_775D                            ; $76EE: $20 $6D

jr_014_76F0:
    ld h, c                                       ; $76F0: $61
    ld l, e                                       ; $76F1: $6B
    ld h, l                                       ; $76F2: $65
    jr nz, @+$63                                  ; $76F3: $20 $61

    rst $38                                       ; $76F5: $FF
    ld [hl], d                                    ; $76F6: $72
    ld l, c                                       ; $76F7: $69
    ld l, [hl]                                    ; $76F8: $6E
    ld h, a                                       ; $76F9: $67
    jr nz, @+$68                                  ; $76FA: $20 $66

    ld l, a                                       ; $76FC: $6F
    ld [hl], d                                    ; $76FD: $72
    jr nz, jr_014_7779                            ; $76FE: $20 $79

    ld l, a                                       ; $7700: $6F
    ld [hl], l                                    ; $7701: $75
    cp $74                                        ; $7702: $FE $74
    ld l, b                                       ; $7704: $68
    ld h, c                                       ; $7705: $61
    ld [hl], h                                    ; $7706: $74
    jr nz, @+$79                                  ; $7707: $20 $77

    ld l, c                                       ; $7709: $69
    ld l, h                                       ; $770A: $6C
    ld l, h                                       ; $770B: $6C
    jr nz, jr_014_776F                            ; $770C: $20 $61

    ld l, h                                       ; $770E: $6C
    ld l, h                                       ; $770F: $6C
    ld l, a                                       ; $7710: $6F
    ld [hl], a                                    ; $7711: $77
    rst $38                                       ; $7712: $FF
    ld a, c                                       ; $7713: $79
    ld l, a                                       ; $7714: $6F
    ld [hl], l                                    ; $7715: $75
    jr nz, jr_014_778C                            ; $7716: $20 $74

jr_014_7718:
    ld l, a                                       ; $7718: $6F
    jr nz, jr_014_777E                            ; $7719: $20 $63

    ld l, a                                       ; $771B: $6F
    ld l, [hl]                                    ; $771C: $6E
    ld [hl], h                                    ; $771D: $74
    ld [hl], d                                    ; $771E: $72
    ld l, a                                       ; $771F: $6F
    ld l, h                                       ; $7720: $6C
    cp $61                                        ; $7721: $FE $61

jr_014_7723:
    jr nz, jr_014_7769                            ; $7723: $20 $44

    ld [hl], d                                    ; $7725: $72
    ld h, l                                       ; $7726: $65
    ld h, c                                       ; $7727: $61
    ld l, l                                       ; $7728: $6D
    rst $38                                       ; $7729: $FF
    ld b, e                                       ; $772A: $43
    ld [hl], d                                    ; $772B: $72
    ld h, l                                       ; $772C: $65
    ld h, c                                       ; $772D: $61
    ld [hl], h                                    ; $772E: $74

jr_014_772F:
    ld [hl], l                                    ; $772F: $75
    ld [hl], d                                    ; $7730: $72
    ld h, l                                       ; $7731: $65
    ld hl, $FDFE                                  ; $7732: $21 $FE $FD
    sbc e                                         ; $7735: $9B

jr_014_7736:
    ld a, b                                       ; $7736: $78
    ld [hl], b                                    ; $7737: $70

jr_014_7738:
    sbc a                                         ; $7738: $9F
    ld b, h                                       ; $7739: $44
    ld [hl], d                                    ; $773A: $72
    ld h, l                                       ; $773B: $65
    ld h, c                                       ; $773C: $61
    ld l, l                                       ; $773D: $6D
    jr nz, jr_014_7783                            ; $773E: $20 $43

    ld [hl], d                                    ; $7740: $72
    ld h, l                                       ; $7741: $65
    ld h, c                                       ; $7742: $61
    ld [hl], h                                    ; $7743: $74
    ld [hl], l                                    ; $7744: $75
    ld [hl], d                                    ; $7745: $72
    ld h, l                                       ; $7746: $65
    ccf                                           ; $7747: $3F
    cp $49                                        ; $7748: $FE $49
    ld [hl], e                                    ; $774A: $73
    jr nz, jr_014_77C1                            ; $774B: $20 $74

    ld l, b                                       ; $774D: $68
    ld h, c                                       ; $774E: $61

jr_014_774F:
    ld [hl], h                                    ; $774F: $74
    jr nz, jr_014_77C9                            ; $7750: $20 $77

    ld l, b                                       ; $7752: $68

jr_014_7753:
    ld h, c                                       ; $7753: $61
    ld [hl], h                                    ; $7754: $74
    jr nz, @+$63                                  ; $7755: $20 $61

jr_014_7757:
    rst $38                                       ; $7757: $FF
    ld b, [hl]                                    ; $7758: $46
    ld [hl], l                                    ; $7759: $75
    ld [hl], d                                    ; $775A: $72
    ld l, a                                       ; $775B: $6F
    ld l, e                                       ; $775C: $6B

jr_014_775D:
    jr nz, jr_014_77C8                            ; $775D: $20 $69

    ld [hl], e                                    ; $775F: $73
    ccf                                           ; $7760: $3F
    cp $FD                                        ; $7761: $FE $FD
    sbc e                                         ; $7763: $9B
    xor b                                         ; $7764: $A8
    ld l, b                                       ; $7765: $68
    sbc a                                         ; $7766: $9F
    ld d, d                                       ; $7767: $52
    ld l, c                                       ; $7768: $69

jr_014_7769:
    ld h, a                                       ; $7769: $67
    ld l, b                                       ; $776A: $68
    ld [hl], h                                    ; $776B: $74
    ld l, $20                                     ; $776C: $2E $20
    ld e, c                                       ; $776E: $59

jr_014_776F:
    ld l, a                                       ; $776F: $6F
    ld [hl], l                                    ; $7770: $75
    jr nz, jr_014_77E0                            ; $7771: $20 $6D

    ld h, c                                       ; $7773: $61
    ld a, c                                       ; $7774: $79
    rst $38                                       ; $7775: $FF
    ld l, b                                       ; $7776: $68
    ld h, c                                       ; $7777: $61
    halt                                          ; $7778: $76

jr_014_7779:
    ld h, l                                       ; $7779: $65
    jr nz, jr_014_77EF                            ; $777A: $20 $73

    ld h, l                                       ; $777C: $65
    ld h, l                                       ; $777D: $65

jr_014_777E:
    ld l, [hl]                                    ; $777E: $6E
    jr nz, jr_014_77E2                            ; $777F: $20 $61

    cp $66                                        ; $7781: $FE $66

jr_014_7783:
    ld h, l                                       ; $7783: $65
    ld [hl], a                                    ; $7784: $77
    jr nz, jr_014_77F6                            ; $7785: $20 $6F

    ld [hl], l                                    ; $7787: $75
    ld [hl], h                                    ; $7788: $74
    ld [hl], e                                    ; $7789: $73
    ld l, c                                       ; $778A: $69
    ld h, h                                       ; $778B: $64

jr_014_778C:
    ld h, l                                       ; $778C: $65
    jr nz, jr_014_77FE                            ; $778D: $20 $6F

    ld h, [hl]                                    ; $778F: $66
    rst $38                                       ; $7790: $FF
    ld [hl], h                                    ; $7791: $74
    ld l, a                                       ; $7792: $6F
    ld [hl], a                                    ; $7793: $77
    ld l, [hl]                                    ; $7794: $6E
    ld l, $20                                     ; $7795: $2E $20
    ld b, d                                       ; $7797: $42
    ld l, a                                       ; $7798: $6F
    ld [hl], h                                    ; $7799: $74
    ld l, b                                       ; $779A: $68
    jr nz, jr_014_7811                            ; $779B: $20 $74

    ld l, b                                       ; $779D: $68
    ld h, l                                       ; $779E: $65
    cp $41                                        ; $779F: $FE $41
    ld l, [hl]                                    ; $77A1: $6E
    ld l, c                                       ; $77A2: $69
    ld l, l                                       ; $77A3: $6D
    ld l, c                                       ; $77A4: $69
    ld [hl], h                                    ; $77A5: $74
    ld h, l                                       ; $77A6: $65
    jr nz, jr_014_7820                            ; $77A7: $20 $77

    ld h, l                                       ; $77A9: $65
    jr nz, @+$77                                  ; $77AA: $20 $75

    ld [hl], e                                    ; $77AC: $73
    ld h, l                                       ; $77AD: $65
    rst $38                                       ; $77AE: $FF
    ld h, c                                       ; $77AF: $61
    ld [hl], e                                    ; $77B0: $73
    jr nz, jr_014_7820                            ; $77B1: $20 $6D

    ld l, a                                       ; $77B3: $6F
    ld l, [hl]                                    ; $77B4: $6E
    ld h, l                                       ; $77B5: $65
    ld a, c                                       ; $77B6: $79
    jr nz, jr_014_781A                            ; $77B7: $20 $61

    ld l, [hl]                                    ; $77B9: $6E
    ld h, h                                       ; $77BA: $64
    cp $69                                        ; $77BB: $FE $69
    ld l, [hl]                                    ; $77BD: $6E
    ld h, [hl]                                    ; $77BE: $66
    ld [hl], l                                    ; $77BF: $75
    ld [hl], e                                    ; $77C0: $73

jr_014_77C1:
    ld h, l                                       ; $77C1: $65
    ld h, h                                       ; $77C2: $64
    jr nz, jr_014_7806                            ; $77C3: $20 $41

    ld l, [hl]                                    ; $77C5: $6E
    ld l, c                                       ; $77C6: $69
    ld l, l                                       ; $77C7: $6D

jr_014_77C8:
    ld l, c                                       ; $77C8: $69

jr_014_77C9:
    ld [hl], h                                    ; $77C9: $74
    ld h, l                                       ; $77CA: $65
    rst $38                                       ; $77CB: $FF
    ld h, e                                       ; $77CC: $63
    ld l, a                                       ; $77CD: $6F
    ld l, l                                       ; $77CE: $6D
    ld h, l                                       ; $77CF: $65
    jr nz, jr_014_7838                            ; $77D0: $20 $66

    ld [hl], d                                    ; $77D2: $72
    ld l, a                                       ; $77D3: $6F
    ld l, l                                       ; $77D4: $6D
    jr nz, jr_014_781B                            ; $77D5: $20 $44

    ld [hl], d                                    ; $77D7: $72
    ld h, l                                       ; $77D8: $65
    ld h, c                                       ; $77D9: $61
    ld l, l                                       ; $77DA: $6D
    cp $43                                        ; $77DB: $FE $43
    ld [hl], d                                    ; $77DD: $72
    ld h, l                                       ; $77DE: $65
    ld h, c                                       ; $77DF: $61

jr_014_77E0:
    ld [hl], h                                    ; $77E0: $74
    ld [hl], l                                    ; $77E1: $75

jr_014_77E2:
    ld [hl], d                                    ; $77E2: $72
    ld h, l                                       ; $77E3: $65
    ld [hl], e                                    ; $77E4: $73
    ld l, $FE                                     ; $77E5: $2E $FE
    ld b, d                                       ; $77E7: $42
    ld [hl], l                                    ; $77E8: $75
    ld [hl], h                                    ; $77E9: $74
    jr nz, @+$63                                  ; $77EA: $20 $61

    jr nz, jr_014_7832                            ; $77EC: $20 $44

    ld [hl], d                                    ; $77EE: $72

jr_014_77EF:
    ld h, l                                       ; $77EF: $65
    ld h, c                                       ; $77F0: $61
    ld l, l                                       ; $77F1: $6D
    rst $38                                       ; $77F2: $FF
    ld b, e                                       ; $77F3: $43
    ld [hl], d                                    ; $77F4: $72
    ld h, l                                       ; $77F5: $65

jr_014_77F6:
    ld h, c                                       ; $77F6: $61
    ld [hl], h                                    ; $77F7: $74
    ld [hl], l                                    ; $77F8: $75
    ld [hl], d                                    ; $77F9: $72
    ld h, l                                       ; $77FA: $65
    jr nz, jr_014_7861                            ; $77FB: $20 $64

    ld l, a                                       ; $77FD: $6F

jr_014_77FE:
    ld h, l                                       ; $77FE: $65
    ld [hl], e                                    ; $77FF: $73
    cp $6E                                        ; $7800: $FE $6E
    ld l, a                                       ; $7802: $6F
    ld [hl], h                                    ; $7803: $74
    jr nz, jr_014_7876                            ; $7804: $20 $70

jr_014_7806:
    ld [hl], d                                    ; $7806: $72
    ld l, a                                       ; $7807: $6F
    ld h, h                                       ; $7808: $64
    ld [hl], l                                    ; $7809: $75
    ld h, e                                       ; $780A: $63
    ld h, l                                       ; $780B: $65
    rst $38                                       ; $780C: $FF
    ld b, c                                       ; $780D: $41
    ld l, [hl]                                    ; $780E: $6E
    ld l, c                                       ; $780F: $69
    ld l, l                                       ; $7810: $6D

jr_014_7811:
    ld l, c                                       ; $7811: $69
    ld [hl], h                                    ; $7812: $74
    ld h, l                                       ; $7813: $65
    jr nz, jr_014_788B                            ; $7814: $20 $75

    ld l, [hl]                                    ; $7816: $6E
    ld l, h                                       ; $7817: $6C
    ld h, l                                       ; $7818: $65
    ld [hl], e                                    ; $7819: $73

jr_014_781A:
    ld [hl], e                                    ; $781A: $73

jr_014_781B:
    cp $69                                        ; $781B: $FE $69
    ld [hl], h                                    ; $781D: $74
    daa                                           ; $781E: $27
    ld [hl], e                                    ; $781F: $73

jr_014_7820:
    jr nz, jr_014_7884                            ; $7820: $20 $62

    ld h, l                                       ; $7822: $65
    ld h, l                                       ; $7823: $65
    ld l, [hl]                                    ; $7824: $6E
    rst $38                                       ; $7825: $FF
    ld [hl], a                                    ; $7826: $77
    ld h, l                                       ; $7827: $65
    ld h, c                                       ; $7828: $61
    ld l, e                                       ; $7829: $6B
    ld h, l                                       ; $782A: $65
    ld l, [hl]                                    ; $782B: $6E
    ld h, l                                       ; $782C: $65
    ld h, h                                       ; $782D: $64
    inc l                                         ; $782E: $2C
    cp $73                                        ; $782F: $FE $73
    ld l, a                                       ; $7831: $6F

jr_014_7832:
    jr nz, jr_014_78AD                            ; $7832: $20 $79

    ld l, a                                       ; $7834: $6F
    ld [hl], l                                    ; $7835: $75
    jr nz, jr_014_78A5                            ; $7836: $20 $6D

jr_014_7838:
    ld [hl], l                                    ; $7838: $75
    ld [hl], e                                    ; $7839: $73
    ld [hl], h                                    ; $783A: $74
    rst $38                                       ; $783B: $FF
    ld h, [hl]                                    ; $783C: $66
    ld l, c                                       ; $783D: $69
    ld [hl], d                                    ; $783E: $72
    ld [hl], e                                    ; $783F: $73
    ld [hl], h                                    ; $7840: $74
    jr nz, jr_014_78A7                            ; $7841: $20 $64

    ld h, l                                       ; $7843: $65
    ld h, [hl]                                    ; $7844: $66
    ld h, l                                       ; $7845: $65
    ld h, c                                       ; $7846: $61
    ld [hl], h                                    ; $7847: $74
    cp $6F                                        ; $7848: $FE $6F
    ld l, [hl]                                    ; $784A: $6E
    ld h, l                                       ; $784B: $65
    jr nz, jr_014_78C2                            ; $784C: $20 $74

    ld l, a                                       ; $784E: $6F
    jr nz, jr_014_78B8                            ; $784F: $20 $67

    ld h, l                                       ; $7851: $65
    ld [hl], h                                    ; $7852: $74
    jr nz, @+$6B                                  ; $7853: $20 $69

    ld [hl], h                                    ; $7855: $74
    ld l, $FF                                     ; $7856: $2E $FF
    ld d, h                                       ; $7858: $54
    ld l, a                                       ; $7859: $6F
    jr nz, jr_014_78C0                            ; $785A: $20 $64

    ld l, a                                       ; $785C: $6F
    jr nz, jr_014_78D3                            ; $785D: $20 $74

    ld l, b                                       ; $785F: $68
    ld h, c                                       ; $7860: $61

jr_014_7861:
    ld [hl], h                                    ; $7861: $74
    inc l                                         ; $7862: $2C
    jr nz, jr_014_78DE                            ; $7863: $20 $79

    ld l, a                                       ; $7865: $6F
    ld [hl], l                                    ; $7866: $75
    cp $6E                                        ; $7867: $FE $6E
    ld h, l                                       ; $7869: $65
    ld h, l                                       ; $786A: $65
    ld h, h                                       ; $786B: $64
    jr nz, jr_014_78E2                            ; $786C: $20 $74

    ld l, a                                       ; $786E: $6F
    jr nz, @+$77                                  ; $786F: $20 $75

    ld [hl], e                                    ; $7871: $73
    ld h, l                                       ; $7872: $65
    rst $38                                       ; $7873: $FF
    ld [hl], h                                    ; $7874: $74
    ld l, b                                       ; $7875: $68

jr_014_7876:
    ld h, l                                       ; $7876: $65
    jr nz, jr_014_78BD                            ; $7877: $20 $44

    ld [hl], d                                    ; $7879: $72
    ld h, l                                       ; $787A: $65
    ld h, c                                       ; $787B: $61
    ld l, l                                       ; $787C: $6D
    cp $43                                        ; $787D: $FE $43
    ld [hl], d                                    ; $787F: $72
    ld h, l                                       ; $7880: $65
    ld h, c                                       ; $7881: $61
    ld [hl], h                                    ; $7882: $74
    ld [hl], l                                    ; $7883: $75

jr_014_7884:
    ld [hl], d                                    ; $7884: $72
    ld h, l                                       ; $7885: $65
    ld [hl], e                                    ; $7886: $73
    jr nz, jr_014_7902                            ; $7887: $20 $79

    ld l, a                                       ; $7889: $6F
    ld [hl], l                                    ; $788A: $75

jr_014_788B:
    rst $38                                       ; $788B: $FF
    ld l, b                                       ; $788C: $68
    ld h, c                                       ; $788D: $61
    halt                                          ; $788E: $76
    ld h, l                                       ; $788F: $65
    ld l, $20                                     ; $7890: $2E $20
    ld c, c                                       ; $7892: $49
    jr nz, @+$65                                  ; $7893: $20 $63

    ld h, c                                       ; $7895: $61
    ld l, [hl]                                    ; $7896: $6E
    cp $68                                        ; $7897: $FE $68
    ld h, l                                       ; $7899: $65
    ld l, h                                       ; $789A: $6C
    ld [hl], b                                    ; $789B: $70
    jr nz, jr_014_7905                            ; $789C: $20 $67

    ld h, l                                       ; $789E: $65
    ld [hl], h                                    ; $789F: $74
    jr nz, @+$7B                                  ; $78A0: $20 $79

    ld l, a                                       ; $78A2: $6F
    ld [hl], l                                    ; $78A3: $75
    rst $38                                       ; $78A4: $FF

jr_014_78A5:
    ld h, l                                       ; $78A5: $65
    ld [hl], c                                    ; $78A6: $71

jr_014_78A7:
    ld [hl], l                                    ; $78A7: $75
    ld l, c                                       ; $78A8: $69
    ld [hl], b                                    ; $78A9: $70
    ld [hl], b                                    ; $78AA: $70
    ld h, l                                       ; $78AB: $65
    ld h, h                                       ; $78AC: $64

jr_014_78AD:
    jr nz, @+$79                                  ; $78AD: $20 $77

    ld l, c                                       ; $78AF: $69
    ld [hl], h                                    ; $78B0: $74
    ld l, b                                       ; $78B1: $68
    cp $6F                                        ; $78B2: $FE $6F
    ld l, [hl]                                    ; $78B4: $6E
    ld h, l                                       ; $78B5: $65
    jr nz, @+$6B                                  ; $78B6: $20 $69

jr_014_78B8:
    ld h, [hl]                                    ; $78B8: $66
    jr nz, @+$7B                                  ; $78B9: $20 $79

    ld l, a                                       ; $78BB: $6F
    ld [hl], l                                    ; $78BC: $75

jr_014_78BD:
    jr nz, @+$70                                  ; $78BD: $20 $6E

    ld h, l                                       ; $78BF: $65

jr_014_78C0:
    ld h, l                                       ; $78C0: $65
    ld h, h                                       ; $78C1: $64

jr_014_78C2:
    rst $38                                       ; $78C2: $FF
    ld l, c                                       ; $78C3: $69
    ld [hl], h                                    ; $78C4: $74
    ld l, $FE                                     ; $78C5: $2E $FE
    db $FD                                        ; $78C7: $FD
    sbc e                                         ; $78C8: $9B
    ld a, b                                       ; $78C9: $78
    ld [hl], b                                    ; $78CA: $70
    sbc a                                         ; $78CB: $9F
    ld c, c                                       ; $78CC: $49
    jr nz, @+$69                                  ; $78CD: $20 $67

    ld [hl], l                                    ; $78CF: $75
    ld h, l                                       ; $78D0: $65
    ld [hl], e                                    ; $78D1: $73
    ld [hl], e                                    ; $78D2: $73

jr_014_78D3:
    jr nz, @+$6B                                  ; $78D3: $20 $69

    ld [hl], h                                    ; $78D5: $74
    daa                                           ; $78D6: $27
    ld [hl], e                                    ; $78D7: $73
    rst $38                                       ; $78D8: $FF
    ld l, h                                       ; $78D9: $6C
    ld [hl], l                                    ; $78DA: $75
    ld h, e                                       ; $78DB: $63
    ld l, e                                       ; $78DC: $6B
    ld a, c                                       ; $78DD: $79

jr_014_78DE:
    jr nz, @+$68                                  ; $78DE: $20 $66

    ld l, a                                       ; $78E0: $6F
    ld [hl], d                                    ; $78E1: $72

jr_014_78E2:
    jr nz, @+$6F                                  ; $78E2: $20 $6D

    ld h, l                                       ; $78E4: $65
    cp $74                                        ; $78E5: $FE $74
    ld l, b                                       ; $78E7: $68
    ld h, c                                       ; $78E8: $61
    ld [hl], h                                    ; $78E9: $74
    jr nz, @+$4B                                  ; $78EA: $20 $49

    jr nz, @+$68                                  ; $78EC: $20 $66

    ld l, a                                       ; $78EE: $6F
    ld [hl], l                                    ; $78EF: $75
    ld l, [hl]                                    ; $78F0: $6E
    ld h, h                                       ; $78F1: $64
    rst $38                                       ; $78F2: $FF
    ld [hl], h                                    ; $78F3: $74
    ld l, b                                       ; $78F4: $68
    ld l, c                                       ; $78F5: $69
    ld [hl], e                                    ; $78F6: $73
    jr nz, @+$6C                                  ; $78F7: $20 $6A

    ld [hl], l                                    ; $78F9: $75
    ld [hl], e                                    ; $78FA: $73
    ld [hl], h                                    ; $78FB: $74
    jr nz, @+$6E                                  ; $78FC: $20 $6C

    ld a, c                                       ; $78FE: $79
    ld l, c                                       ; $78FF: $69
    ld l, [hl]                                    ; $7900: $6E
    ld h, a                                       ; $7901: $67

jr_014_7902:
    cp $61                                        ; $7902: $FE $61
    ld [hl], d                                    ; $7904: $72

jr_014_7905:
    ld l, a                                       ; $7905: $6F
    ld [hl], l                                    ; $7906: $75
    ld l, [hl]                                    ; $7907: $6E
    ld h, h                                       ; $7908: $64
    ld l, $FE                                     ; $7909: $2E $FE
    db $FD                                        ; $790B: $FD
    sbc e                                         ; $790C: $9B
    xor b                                         ; $790D: $A8
    ld l, b                                       ; $790E: $68
    sbc a                                         ; $790F: $9F
    ld c, c                                       ; $7910: $49
    ld [hl], h                                    ; $7911: $74
    jr nz, @+$75                                  ; $7912: $20 $73

    ld [hl], l                                    ; $7914: $75
    ld [hl], d                                    ; $7915: $72
    ld h, l                                       ; $7916: $65
    jr nz, @+$6B                                  ; $7917: $20 $69

    ld [hl], e                                    ; $7919: $73
    ld hl, $FDFE                                  ; $791A: $21 $FE $FD

    db $9F, $57, $65, $6C, $6C, $2C, $20, $73, $69, $6E, $63, $65, $FF, $45, $69, $64
    db $6F, $6E, $20, $73, $65, $6E, $74, $20, $79, $6F, $75, $2C, $FE, $68, $65, $20
    db $70, $72, $6F, $62, $61, $62, $6C, $79, $FF, $77, $61, $6E, $74, $73, $20, $6D
    db $65, $20, $74, $6F, $FE, $6D, $61, $6B, $65, $20, $74, $68, $69, $73, $20, $69
    db $6E, $74, $6F, $FF, $61, $20, $72, $69, $6E, $67, $20, $66, $6F, $72, $20, $79
    db $6F, $75, $2E, $FE, $42, $65, $20, $72, $69, $67, $68, $74, $20, $62, $61, $63
    db $6B, $21, $FE, $FD, $9A, $0C, $04, $09, $03, $14, $6C, $7E, $5D, $9B, $A8, $68
    db $9F, $48, $65, $72, $65, $20, $79, $6F, $75, $20, $67, $6F, $21, $FE, $FD, $9A
    db $4B, $01, $AF, $A2, $14, $00

    nop                                           ; $79A3: $00
    or c                                          ; $79A4: $B1
    ld a, c                                       ; $79A5: $79

    db $14, $01, $00, $CC, $79

    inc d                                         ; $79AB: $14
    ld [bc], a                                    ; $79AC: $02
    nop                                           ; $79AD: $00
    db $EC                                        ; $79AE: $EC
    ld a, c                                       ; $79AF: $79
    rst $38                                       ; $79B0: $FF
    sbc a                                         ; $79B1: $9F
    ld d, h                                       ; $79B2: $54
    ld l, a                                       ; $79B3: $6F
    ld l, [hl]                                    ; $79B4: $6E
    ld a, c                                       ; $79B5: $79
    jr nz, @+$69                                  ; $79B6: $20 $67

    ld l, a                                       ; $79B8: $6F
    ld [hl], h                                    ; $79B9: $74
    jr nz, @+$63                                  ; $79BA: $20 $61

    rst $38                                       ; $79BC: $FF
    ld b, [hl]                                    ; $79BD: $46
    ld [hl], l                                    ; $79BE: $75
    ld [hl], d                                    ; $79BF: $72
    ld l, a                                       ; $79C0: $6F
    ld l, e                                       ; $79C1: $6B
    ld hl, $FDFE                                  ; $79C2: $21 $FE $FD
    sbc d                                         ; $79C5: $9A
    inc l                                         ; $79C6: $2C
    inc e                                         ; $79C7: $1C
    ld [bc], a                                    ; $79C8: $02
    ld b, [hl]                                    ; $79C9: $46
    ld a, [bc]                                    ; $79CA: $0A
    ld a, d                                       ; $79CB: $7A

    db $9F, $54, $6F, $6E, $79, $20, $67, $6F, $74, $20, $61, $FF, $67, $6F, $6F, $64
    db $20, $46, $75, $72, $6F, $6B, $21, $FE, $FD, $9A, $2C, $1C, $03, $46, $0A, $7A

    sbc a                                         ; $79EC: $9F
    ld d, h                                       ; $79ED: $54
    ld l, a                                       ; $79EE: $6F
    ld l, [hl]                                    ; $79EF: $6E
    ld a, c                                       ; $79F0: $79
    jr nz, @+$69                                  ; $79F1: $20 $67

    ld l, a                                       ; $79F3: $6F
    ld [hl], h                                    ; $79F4: $74
    jr nz, @+$63                                  ; $79F5: $20 $61

    rst $38                                       ; $79F7: $FF
    ld h, a                                       ; $79F8: $67
    ld [hl], d                                    ; $79F9: $72
    ld h, l                                       ; $79FA: $65
    ld h, c                                       ; $79FB: $61
    ld [hl], h                                    ; $79FC: $74
    jr nz, @+$48                                  ; $79FD: $20 $46

    ld [hl], l                                    ; $79FF: $75
    ld [hl], d                                    ; $7A00: $72
    ld l, a                                       ; $7A01: $6F
    ld l, e                                       ; $7A02: $6B
    ld hl, $FDFE                                  ; $7A03: $21 $FE $FD
    inc l                                         ; $7A06: $2C
    inc e                                         ; $7A07: $1C
    dec b                                         ; $7A08: $05
    sbc d                                         ; $7A09: $9A

    db $09, $03, $0F, $B7, $5C, $9B, $A8, $68, $9F, $4F, $6F, $6F, $2C, $20, $74, $68
    db $65, $72, $65, $27, $73, $20, $61, $FF, $6C, $69, $74, $74, $6C, $65, $20, $41
    db $6E, $69, $6D, $69, $74, $65, $FE, $6C, $65, $66, $74, $20, $6F, $76, $65, $72
    db $2E, $20, $49, $27, $64, $FF, $72, $65, $61, $6C, $6C, $79, $20, $6C, $69, $6B
    db $65, $20, $74, $6F, $FE, $73, $74, $75, $64, $79, $20, $74, $68, $69, $73, $2C
    db $20, $73, $6F, $FF, $63, $61, $6E, $20, $49, $20, $62, $75, $79, $20, $69, $74
    db $FE, $66, $72, $6F, $6D, $20, $79, $6F, $75, $20, $66, $6F, $72, $FF, $35, $30
    db $20, $41, $6E, $69, $6D, $69, $74, $65, $3F, $FE, $FD, $9B, $78, $70, $9F, $53
    db $75, $72, $65, $2E, $FE, $FD, $87, $04, $04, $32, $9A, $9F, $54, $6F, $6E, $79
    db $20, $67, $6F, $74, $20, $35, $30, $FF, $41, $6E, $69, $6D, $69, $74, $65, $2E
    db $FE, $FD, $9B, $78, $70, $9F, $54, $68, $61, $6E, $6B, $73, $2E, $FE, $FD, $9B
    db $A8, $68, $9F, $4E, $6F, $20, $70, $72, $6F, $62, $6C, $65, $6D, $21, $FE, $48
    db $65, $79, $2C, $20, $77, $68, $79, $20, $64, $6F, $6E, $27, $74, $FF, $79, $6F
    db $75, $20, $73, $68, $6F, $77, $20, $74, $68, $61, $74, $FE, $72, $69, $6E, $67
    db $20, $74, $6F, $20, $45, $76, $75, $3F, $FF, $49, $27, $6D, $20, $73, $75, $72
    db $65, $20, $68, $65, $27, $64, $FE, $62, $65, $20, $69, $6E, $74, $65, $72, $65
    db $73, $74, $65, $64, $2E, $FE, $FD, $9B, $78, $70, $9F, $57, $68, $6F, $27, $73
    db $20, $74, $68, $61, $74, $3F, $FE, $FD, $9B, $A8, $68, $9F, $45, $76, $75, $27
    db $73, $20, $74, $68, $65, $FF, $68, $69, $73, $74, $6F, $72, $69, $61, $6E, $2E
    db $2E, $2E, $FE, $65, $72, $2C, $20, $77, $68, $65, $6E, $20, $68, $65, $20, $63
    db $61, $6E, $FF, $72, $65, $6D, $65, $6D, $62, $65, $72, $2E, $FE, $59, $6F, $75
    db $20, $73, $68, $6F, $75, $6C, $64, $FF, $6D, $65, $65, $74, $20, $68, $69, $6D
    db $2E, $FE, $FD, $9B, $78, $70, $9F, $4F, $6B, $2C, $20, $74, $68, $61, $6E, $6B
    db $73, $2E, $FE, $FD, $9A, $07, $00, $81, $5D, $42, $9B, $A8, $68, $9F, $4E, $6F
    db $20, $70, $72, $6F, $62, $6C, $65, $6D, $2E, $FE, $FD, $45, $14, $1D, $79

    sbc e                                         ; $7B99: $9B
    xor b                                         ; $7B9A: $A8
    ld l, b                                       ; $7B9B: $68
    sbc a                                         ; $7B9C: $9F
    ld c, c                                       ; $7B9D: $49
    daa                                           ; $7B9E: $27
    ld l, l                                       ; $7B9F: $6D
    jr nz, @+$75                                  ; $7BA0: $20 $73

    ld l, a                                       ; $7BA2: $6F
    rst $38                                       ; $7BA3: $FF
    ld [hl], a                                    ; $7BA4: $77
    ld l, a                                       ; $7BA5: $6F
    ld [hl], d                                    ; $7BA6: $72
    ld [hl], d                                    ; $7BA7: $72
    ld l, c                                       ; $7BA8: $69
    ld h, l                                       ; $7BA9: $65
    ld h, h                                       ; $7BAA: $64
    jr nz, @+$63                                  ; $7BAB: $20 $61

    ld h, d                                       ; $7BAD: $62
    ld l, a                                       ; $7BAE: $6F
    ld [hl], l                                    ; $7BAF: $75
    ld [hl], h                                    ; $7BB0: $74
    cp $4F                                        ; $7BB1: $FE $4F
    ld [hl], d                                    ; $7BB3: $72
    ld [hl], a                                    ; $7BB4: $77
    ld l, c                                       ; $7BB5: $69
    ld l, [hl]                                    ; $7BB6: $6E
    ld l, $2E                                     ; $7BB7: $2E $2E
    ld l, $FE                                     ; $7BB9: $2E $FE
    db $FD                                        ; $7BBB: $FD
    ld b, [hl]                                    ; $7BBC: $46
    cp a                                          ; $7BBD: $BF
    ld a, e                                       ; $7BBE: $7B

    db $99, $9B, $78, $70, $9F, $20, $46, $6F, $72, $67, $65, $20, $20, $45, $71, $75
    db $69, $70, $FF, $20, $50, $6F, $77, $65, $72, $20, $20, $44, $6F, $6E, $65, $FD
    db $9C, $04, $14, $0B, $7C, $14, $ED, $7B, $14, $05, $7C, $14, $14, $7D, $9A, $8F
    db $10, $00, $0F, $53, $4B, $19, $49, $3B, $04, $1C, $38, $3D, $2C, $4F, $51, $06
    db $2D, $48, $45, $14, $BF, $7B, $9A, $8D, $45, $14, $BF, $7B, $9B, $A8, $68, $9F
    db $53, $6F, $2E, $2E, $2E, $20, $77, $68, $61, $74, $FF, $6B, $69, $6E, $64, $20
    db $6F, $66, $20, $72, $69, $6E, $67, $FE, $73, $68, $6F, $75, $6C, $64, $20, $49
    db $20, $6D, $61, $6B, $65, $3F, $FE, $FD, $9A, $8E

    inc d                                         ; $7C39: $14
    ld [c], a                                     ; $7C3A: $E2
    ld a, h                                       ; $7C3B: $7C

    db $14, $10, $7D, $79, $00, $0F, $53, $53, $02, $FF, $00, $0F, $00, $01, $4B, $4B
    db $02, $FF, $00, $0F, $00, $02, $19, $19, $03, $FF, $00, $0F, $00, $03, $49, $49
    db $03, $FF, $00, $0F, $00, $03, $3B, $3B, $03, $19, $01, $18, $00, $03, $04, $04
    db $03, $FF, $00, $18, $00, $03, $1C, $1C, $04, $FF, $00, $28, $00, $03, $38, $38
    db $02, $FF, $00, $2D, $00, $03, $3D, $3D, $02, $04, $01, $64, $00, $03, $2C, $2C
    db $03, $1C, $01, $64, $00, $03, $4F, $4F, $02, $FF, $00, $64, $00, $03, $51, $51
    db $03, $38, $01, $64, $00, $03, $06, $06, $03, $4B, $01, $96, $00, $03, $2D, $2D
    db $03, $04, $01, $B4, $00, $32, $48, $48, $04, $4B, $01, $FA, $00, $32

    add hl, bc                                    ; $7CBA: $09
    inc bc                                        ; $7CBB: $03
    inc d                                         ; $7CBC: $14
    ld l, h                                       ; $7CBD: $6C
    ld a, [hl]                                    ; $7CBE: $7E
    ld e, l                                       ; $7CBF: $5D
    sbc e                                         ; $7CC0: $9B
    xor b                                         ; $7CC1: $A8
    ld l, b                                       ; $7CC2: $68
    sbc a                                         ; $7CC3: $9F
    ld c, a                                       ; $7CC4: $4F
    ld l, e                                       ; $7CC5: $6B
    ld h, c                                       ; $7CC6: $61
    ld a, c                                       ; $7CC7: $79
    ld hl, $4F20                                  ; $7CC8: $21 $20 $4F
    ld l, [hl]                                    ; $7CCB: $6E
    ld h, l                                       ; $7CCC: $65
    rst $38                                       ; $7CCD: $FF
    db $FC                                        ; $7CCE: $FC
    cp $72                                        ; $7CCF: $FE $72
    ld h, l                                       ; $7CD1: $65
    ld h, c                                       ; $7CD2: $61
    ld h, h                                       ; $7CD3: $64
    ld a, c                                       ; $7CD4: $79
    jr nz, jr_014_7D4B                            ; $7CD5: $20 $74

    ld l, a                                       ; $7CD7: $6F
    jr nz, jr_014_7D41                            ; $7CD8: $20 $67

    ld l, a                                       ; $7CDA: $6F
    ld hl, $FDFE                                  ; $7CDB: $21 $FE $FD
    ld b, l                                       ; $7CDE: $45
    inc d                                         ; $7CDF: $14
    cp a                                          ; $7CE0: $BF
    ld a, e                                       ; $7CE1: $7B
    sbc e                                         ; $7CE2: $9B
    xor b                                         ; $7CE3: $A8
    ld l, b                                       ; $7CE4: $68
    sbc a                                         ; $7CE5: $9F
    ld d, e                                       ; $7CE6: $53
    ld l, a                                       ; $7CE7: $6F
    ld [hl], d                                    ; $7CE8: $72
    ld [hl], d                                    ; $7CE9: $72
    ld a, c                                       ; $7CEA: $79
    inc l                                         ; $7CEB: $2C
    jr nz, jr_014_7D42                            ; $7CEC: $20 $54

    ld l, a                                       ; $7CEE: $6F
    ld l, [hl]                                    ; $7CEF: $6E
    ld a, c                                       ; $7CF0: $79
    ld hl, $59FF                                  ; $7CF1: $21 $FF $59
    ld l, a                                       ; $7CF4: $6F
    ld [hl], l                                    ; $7CF5: $75
    ld [hl], d                                    ; $7CF6: $72
    jr nz, jr_014_7D4B                            ; $7CF7: $20 $52

    ld l, c                                       ; $7CF9: $69
    ld l, [hl]                                    ; $7CFA: $6E
    ld h, a                                       ; $7CFB: $67
    jr nz, jr_014_7D40                            ; $7CFC: $20 $42

    ld h, c                                       ; $7CFE: $61
    ld l, [hl]                                    ; $7CFF: $6E
    ld l, e                                       ; $7D00: $6B
    cp $69                                        ; $7D01: $FE $69
    ld [hl], e                                    ; $7D03: $73
    jr nz, @+$68                                  ; $7D04: $20 $66

    ld [hl], l                                    ; $7D06: $75
    ld l, h                                       ; $7D07: $6C
    ld l, h                                       ; $7D08: $6C
    ld l, $FE                                     ; $7D09: $2E $FE
    db $FD                                        ; $7D0B: $FD
    ld b, l                                       ; $7D0C: $45
    inc d                                         ; $7D0D: $14
    cp a                                          ; $7D0E: $BF
    ld a, e                                       ; $7D0F: $7B

    db $45, $14, $BF, $7B, $9B, $A8, $68, $9F, $42, $79, $65, $21, $FE, $FD, $9A, $07
    db $00, $81, $5D, $42

    sub e                                         ; $7D24: $93
    ld h, l                                       ; $7D25: $65
    ld [hl], l                                    ; $7D26: $75
    ld b, e                                       ; $7D27: $43
    ld c, a                                       ; $7D28: $4F
    ld h, h                                       ; $7D29: $64
    or b                                          ; $7D2A: $B0
    ld b, e                                       ; $7D2B: $43
    ld l, c                                       ; $7D2C: $69
    or l                                          ; $7D2D: $B5
    ld b, e                                       ; $7D2E: $43
    ld h, [hl]                                    ; $7D2F: $66
    ret nz                                        ; $7D30: $C0

    ld e, h                                       ; $7D31: $5C
    ld hl, $0005                                  ; $7D32: $21 $05 $00
    add c                                         ; $7D35: $81
    ld e, l                                       ; $7D36: $5D
    ld [$BE0D], sp                                ; $7D37: $08 $0D $BE
    ret nc                                        ; $7D3A: $D0

    nop                                           ; $7D3B: $00
    jr nz, @-$03                                  ; $7D3C: $20 $FB

    ld d, b                                       ; $7D3E: $50
    ld [hl+], a                                   ; $7D3F: $22

jr_014_7D40:
    dec b                                         ; $7D40: $05

jr_014_7D41:
    ld b, b                                       ; $7D41: $40

jr_014_7D42:
    dec b                                         ; $7D42: $05
    ld [bc], a                                    ; $7D43: $02
    db $ED                                        ; $7D44: $ED
    ld h, e                                       ; $7D45: $63
    inc b                                         ; $7D46: $04
    rlca                                          ; $7D47: $07
    ld h, [hl]                                    ; $7D48: $66
    ret nc                                        ; $7D49: $D0

    nop                                           ; $7D4A: $00

jr_014_7D4B:
    rrca                                          ; $7D4B: $0F
    xor l                                         ; $7D4C: $AD
    ld e, h                                       ; $7D4D: $5C
    inc d                                         ; $7D4E: $14
    ld h, d                                       ; $7D4F: $62
    ld a, l                                       ; $7D50: $7D
    ld l, e                                       ; $7D51: $6B
    jr nc, jr_014_7D5F                            ; $7D52: $30 $0B

    ld d, b                                       ; $7D54: $50
    ld e, c                                       ; $7D55: $59
    nop                                           ; $7D56: $00
    add b                                         ; $7D57: $80
    nop                                           ; $7D58: $00
    dec bc                                        ; $7D59: $0B
    nop                                           ; $7D5A: $00
    dec bc                                        ; $7D5B: $0B
    ld [bc], a                                    ; $7D5C: $02
    add d                                         ; $7D5D: $82
    rra                                           ; $7D5E: $1F

jr_014_7D5F:
    ld a, [de]                                    ; $7D5F: $1A
    sub h                                         ; $7D60: $94
    ld b, d                                       ; $7D61: $42
    dec d                                         ; $7D62: $15
    rrca                                          ; $7D63: $0F
    xor l                                         ; $7D64: $AD
    ld e, h                                       ; $7D65: $5C
    jr nz, @+$11                                  ; $7D66: $20 $0F

    push de                                       ; $7D68: $D5
    ld e, h                                       ; $7D69: $5C
    ld [$DF0F], sp                                ; $7D6A: $08 $0F $DF
    ld e, h                                       ; $7D6D: $5C
    ld [$D50F], sp                                ; $7D6E: $08 $0F $D5
    ld e, h                                       ; $7D71: $5C
    ld [$DF0F], sp                                ; $7D72: $08 $0F $DF
    ld e, h                                       ; $7D75: $5C
    ld [$D50F], sp                                ; $7D76: $08 $0F $D5
    ld e, h                                       ; $7D79: $5C
    ld [$DF0F], sp                                ; $7D7A: $08 $0F $DF
    ld e, h                                       ; $7D7D: $5C
    ld [$5B00], sp                                ; $7D7E: $08 $00 $5B
    inc d                                         ; $7D81: $14
    adc b                                         ; $7D82: $88
    ld a, l                                       ; $7D83: $7D
    ld b, l                                       ; $7D84: $45
    rrca                                          ; $7D85: $0F
    cp h                                          ; $7D86: $BC
    ld e, l                                       ; $7D87: $5D
    sbc e                                         ; $7D88: $9B
    xor b                                         ; $7D89: $A8
    ld l, b                                       ; $7D8A: $68
    sbc a                                         ; $7D8B: $9F
    ld d, l                                       ; $7D8C: $55
    ld l, b                                       ; $7D8D: $68
    inc l                                         ; $7D8E: $2C
    jr nz, @+$6A                                  ; $7D8F: $20 $68

    ld l, c                                       ; $7D91: $69
    jr nz, jr_014_7DE8                            ; $7D92: $20 $54

    ld l, a                                       ; $7D94: $6F
    ld l, [hl]                                    ; $7D95: $6E
    ld a, c                                       ; $7D96: $79
    ld hl, $53FE                                  ; $7D97: $21 $FE $53
    ld l, a                                       ; $7D9A: $6F
    ld [hl], d                                    ; $7D9B: $72
    ld [hl], d                                    ; $7D9C: $72
    ld a, c                                       ; $7D9D: $79
    jr nz, jr_014_7E02                            ; $7D9E: $20 $62

    ld [hl], l                                    ; $7DA0: $75
    ld [hl], h                                    ; $7DA1: $74
    jr nz, jr_014_7DED                            ; $7DA2: $20 $49

    daa                                           ; $7DA4: $27
    ld l, l                                       ; $7DA5: $6D
    rst $38                                       ; $7DA6: $FF
    ld h, e                                       ; $7DA7: $63
    ld l, h                                       ; $7DA8: $6C
    ld l, a                                       ; $7DA9: $6F
    ld [hl], e                                    ; $7DAA: $73
    ld h, l                                       ; $7DAB: $65
    ld h, h                                       ; $7DAC: $64
    ld hl, $47FE                                  ; $7DAD: $21 $FE $47
    ld l, a                                       ; $7DB0: $6F
    jr nz, @+$63                                  ; $7DB1: $20 $61

    ld [hl], a                                    ; $7DB3: $77
    ld h, c                                       ; $7DB4: $61
    dec l                                         ; $7DB5: $2D
    cp $49                                        ; $7DB6: $FE $49
    jr nz, @+$6F                                  ; $7DB8: $20 $6D

    ld h, l                                       ; $7DBA: $65
    ld h, c                                       ; $7DBB: $61
    ld l, [hl]                                    ; $7DBC: $6E
    inc l                                         ; $7DBD: $2C
    rst $38                                       ; $7DBE: $FF
    ld [hl], b                                    ; $7DBF: $70
    ld l, h                                       ; $7DC0: $6C
    ld h, l                                       ; $7DC1: $65
    ld h, c                                       ; $7DC2: $61
    ld [hl], e                                    ; $7DC3: $73
    ld h, l                                       ; $7DC4: $65
    jr nz, @+$6E                                  ; $7DC5: $20 $6C

    ld h, l                                       ; $7DC7: $65
    ld h, c                                       ; $7DC8: $61
    halt                                          ; $7DC9: $76
    ld h, l                                       ; $7DCA: $65
    ld l, $FE                                     ; $7DCB: $2E $FE
    db $FD                                        ; $7DCD: $FD
    sbc d                                         ; $7DCE: $9A
    ld e, b                                       ; $7DCF: $58
    ld bc, $9342                                  ; $7DD0: $01 $42 $93
    ld h, l                                       ; $7DD3: $65
    ld [hl], l                                    ; $7DD4: $75
    ld b, e                                       ; $7DD5: $43
    ld c, a                                       ; $7DD6: $4F
    ld l, c                                       ; $7DD7: $69
    or l                                          ; $7DD8: $B5
    ld b, e                                       ; $7DD9: $43
    ld h, h                                       ; $7DDA: $64
    or b                                          ; $7DDB: $B0
    ld b, e                                       ; $7DDC: $43
    ld h, [hl]                                    ; $7DDD: $66
    ret nz                                        ; $7DDE: $C0

    ld e, h                                       ; $7DDF: $5C
    ld hl, $0005                                  ; $7DE0: $21 $05 $00
    add c                                         ; $7DE3: $81
    ld e, l                                       ; $7DE4: $5D
    ld [$BE0D], sp                                ; $7DE5: $08 $0D $BE

jr_014_7DE8:
    ret nc                                        ; $7DE8: $D0

    nop                                           ; $7DE9: $00
    jr nz, @-$03                                  ; $7DEA: $20 $FB

    ld d, b                                       ; $7DEC: $50

jr_014_7DED:
    ld [hl+], a                                   ; $7DED: $22
    dec b                                         ; $7DEE: $05
    ld b, b                                       ; $7DEF: $40
    dec bc                                        ; $7DF0: $0B
    nop                                           ; $7DF1: $00
    add d                                         ; $7DF2: $82
    rra                                           ; $7DF3: $1F
    db $10                                        ; $7DF4: $10
    sub h                                         ; $7DF5: $94
    ld b, d                                       ; $7DF6: $42

    db $4B, $04, $14, $19

    nop                                           ; $7DFB: $00
    inc h                                         ; $7DFC: $24
    ld a, l                                       ; $7DFD: $7D

    db $14, $1A

    nop                                           ; $7E00: $00
    db $D2                                        ; $7E01: $D2

jr_014_7E02:
    ld a, l                                       ; $7E02: $7D

    db $FF, $93, $65, $75, $43, $4F, $64, $B0, $43, $69, $B5, $43, $66, $C0, $5C, $21
    db $05, $00, $81, $5D, $08, $0D, $BE, $D0, $00, $20, $FB, $50, $22, $05, $40, $0B
    db $00, $05, $03, $6B, $4A, $0A, $08, $7A, $D0, $00, $0F, $B7, $5C, $22, $05, $40
    db $05, $04, $6B, $4A, $0A, $09, $88, $D0, $50, $14, $61, $7E, $22, $05, $40, $6B
    db $30, $0B, $50, $59, $00, $80, $00, $6B, $20, $0C, $30, $7D, $00, $83, $00, $6B
    db $20, $0D, $E0, $4D, $00, $85, $00, $0B, $03, $82, $1F, $16, $94, $42, $15, $11
    db $F2, $73, $0A, $11, $DE, $73, $00, $00, $42, $15, $0F, $2D, $5C, $28, $0F, $5D
    db $5C, $12, $0F, $FD, $5C, $E0, $0F, $4D, $5C, $12, $0F, $3D, $5C, $28, $0F, $8D
    db $5D, $00, $00, $53, $42

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
