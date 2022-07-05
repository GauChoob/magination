SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld bc, $241F                                  ; $4000: $01 $1F $24
    ld b, l                                       ; $4003: $45
    cpl                                           ; $4004: $2F
    ld h, l                                       ; $4005: $65
    ld b, c                                       ; $4006: $41
    ld bc, $1105                                  ; $4007: $01 $05 $11
    ld b, l                                       ; $400A: $45
    rla                                           ; $400B: $17
    ret c                                         ; $400C: $D8

    ld b, a                                       ; $400D: $47
    ld bc, $0F09                                  ; $400E: $01 $09 $0F
    ld b, l                                       ; $4011: $45
    rla                                           ; $4012: $17
    call Call_017_4343                            ; $4013: $CD $43 $43
    ld [$0411], sp                                ; $4016: $08 $11 $04
    dec b                                         ; $4019: $05
    ld c, $0F                                     ; $401A: $0E $0F
    ld bc, $A2B3                                  ; $401C: $01 $B3 $A2
    dec b                                         ; $401F: $05
    ld bc, $0F17                                  ; $4020: $01 $17 $0F
    ld b, c                                       ; $4023: $41
    ld b, d                                       ; $4024: $42
    sbc e                                         ; $4025: $9B
    jr jr_017_4076                                ; $4026: $18 $4E

    sbc a                                         ; $4028: $9F
    ld b, a                                       ; $4029: $47
    ld l, a                                       ; $402A: $6F
    ld l, a                                       ; $402B: $6F
    ld h, h                                       ; $402C: $64
    inc l                                         ; $402D: $2C
    jr nz, jr_017_40A9                            ; $402E: $20 $79

    ld l, a                                       ; $4030: $6F
    ld [hl], l                                    ; $4031: $75
    daa                                           ; $4032: $27
    ld [hl], d                                    ; $4033: $72
    ld h, l                                       ; $4034: $65
    rst $38                                       ; $4035: $FF
    ld l, d                                       ; $4036: $6A
    ld [hl], l                                    ; $4037: $75
    ld [hl], e                                    ; $4038: $73
    ld [hl], h                                    ; $4039: $74
    jr nz, jr_017_40A5                            ; $403A: $20 $69

    ld l, [hl]                                    ; $403C: $6E
    jr nz, jr_017_40B3                            ; $403D: $20 $74

    ld l, c                                       ; $403F: $69
    ld l, l                                       ; $4040: $6D
    ld h, l                                       ; $4041: $65
    inc l                                         ; $4042: $2C
    cp $6C                                        ; $4043: $FE $6C
    ld l, c                                       ; $4045: $69
    ld [hl], h                                    ; $4046: $74
    ld [hl], h                                    ; $4047: $74
    ld l, h                                       ; $4048: $6C
    ld h, l                                       ; $4049: $65
    jr nz, @+$71                                  ; $404A: $20 $6F

    ld l, [hl]                                    ; $404C: $6E
    ld h, l                                       ; $404D: $65
    ld l, $FE                                     ; $404E: $2E $FE
    db $FD                                        ; $4050: $FD
    sbc d                                         ; $4051: $9A
    ld e, b                                       ; $4052: $58
    ld bc, $9B42                                  ; $4053: $01 $42 $9B
    jr jr_017_40A6                                ; $4056: $18 $4E

    sbc a                                         ; $4058: $9F
    ld c, c                                       ; $4059: $49
    jr nz, jr_017_40BF                            ; $405A: $20 $63

    ld h, c                                       ; $405C: $61
    ld l, [hl]                                    ; $405D: $6E
    daa                                           ; $405E: $27
    ld [hl], h                                    ; $405F: $74
    jr nz, @+$71                                  ; $4060: $20 $6F

    ld [hl], b                                    ; $4062: $70
    ld h, l                                       ; $4063: $65
    ld l, [hl]                                    ; $4064: $6E
    rst $38                                       ; $4065: $FF
    ld [hl], h                                    ; $4066: $74
    ld l, b                                       ; $4067: $68
    ld l, c                                       ; $4068: $69
    ld [hl], e                                    ; $4069: $73
    jr nz, jr_017_40D0                            ; $406A: $20 $64

    ld l, a                                       ; $406C: $6F
    ld l, a                                       ; $406D: $6F
    ld [hl], d                                    ; $406E: $72
    ld l, $FE                                     ; $406F: $2E $FE
    db $FD                                        ; $4071: $FD
    sbc d                                         ; $4072: $9A
    ld e, b                                       ; $4073: $58
    ld [bc], a                                    ; $4074: $02
    ld b, d                                       ; $4075: $42

jr_017_4076:
    sbc e                                         ; $4076: $9B
    jr @+$50                                      ; $4077: $18 $4E

    sbc a                                         ; $4079: $9F
    ld e, c                                       ; $407A: $59
    ld l, a                                       ; $407B: $6F
    ld [hl], l                                    ; $407C: $75
    jr nz, jr_017_40F6                            ; $407D: $20 $77

    ld l, c                                       ; $407F: $69
    ld l, h                                       ; $4080: $6C
    ld l, h                                       ; $4081: $6C
    rst $38                                       ; $4082: $FF
    ld l, b                                       ; $4083: $68
    ld h, l                                       ; $4084: $65
    ld l, h                                       ; $4085: $6C
    ld [hl], b                                    ; $4086: $70
    jr nz, jr_017_40F6                            ; $4087: $20 $6D

    ld h, l                                       ; $4089: $65
    ld hl, $FDFE                                  ; $408A: $21 $FE $FD
    sbc d                                         ; $408D: $9A
    ld e, b                                       ; $408E: $58
    inc bc                                        ; $408F: $03
    ld b, d                                       ; $4090: $42
    sbc e                                         ; $4091: $9B
    jr jr_017_40E2                                ; $4092: $18 $4E

    sbc a                                         ; $4094: $9F
    ld b, a                                       ; $4095: $47
    ld l, a                                       ; $4096: $6F
    jr nz, jr_017_40FD                            ; $4097: $20 $64

    ld l, a                                       ; $4099: $6F
    ld [hl], a                                    ; $409A: $77
    ld l, [hl]                                    ; $409B: $6E
    ld [hl], e                                    ; $409C: $73
    ld [hl], h                                    ; $409D: $74
    ld h, c                                       ; $409E: $61
    ld l, c                                       ; $409F: $69
    ld [hl], d                                    ; $40A0: $72
    ld [hl], e                                    ; $40A1: $73
    rst $38                                       ; $40A2: $FF
    ld h, c                                       ; $40A3: $61
    ld l, [hl]                                    ; $40A4: $6E

jr_017_40A5:
    ld h, h                                       ; $40A5: $64

jr_017_40A6:
    jr nz, jr_017_4117                            ; $40A6: $20 $6F

    ld [hl], b                                    ; $40A8: $70

jr_017_40A9:
    ld h, l                                       ; $40A9: $65
    ld l, [hl]                                    ; $40AA: $6E
    jr nz, jr_017_4121                            ; $40AB: $20 $74

    ld l, b                                       ; $40AD: $68
    ld l, c                                       ; $40AE: $69
    ld [hl], e                                    ; $40AF: $73
    cp $64                                        ; $40B0: $FE $64
    ld l, a                                       ; $40B2: $6F

jr_017_40B3:
    ld l, a                                       ; $40B3: $6F
    ld [hl], d                                    ; $40B4: $72
    jr nz, @+$68                                  ; $40B5: $20 $66

    ld [hl], d                                    ; $40B7: $72
    ld l, a                                       ; $40B8: $6F
    ld l, l                                       ; $40B9: $6D
    jr nz, jr_017_4130                            ; $40BA: $20 $74

    ld l, b                                       ; $40BC: $68
    ld h, l                                       ; $40BD: $65
    rst $38                                       ; $40BE: $FF

jr_017_40BF:
    ld l, c                                       ; $40BF: $69
    ld l, [hl]                                    ; $40C0: $6E
    ld [hl], e                                    ; $40C1: $73
    ld l, c                                       ; $40C2: $69
    ld h, h                                       ; $40C3: $64
    ld h, l                                       ; $40C4: $65
    ld hl, $4420                                  ; $40C5: $21 $20 $44
    ld l, a                                       ; $40C8: $6F
    jr nz, jr_017_4139                            ; $40C9: $20 $6E

    ld l, a                                       ; $40CB: $6F
    ld [hl], h                                    ; $40CC: $74
    cp $62                                        ; $40CD: $FE $62
    ld h, l                                       ; $40CF: $65

jr_017_40D0:
    jr nz, jr_017_4138                            ; $40D0: $20 $66

    ld l, a                                       ; $40D2: $6F
    ld l, a                                       ; $40D3: $6F
    ld l, h                                       ; $40D4: $6C
    ld l, c                                       ; $40D5: $69
    ld l, [hl]                                    ; $40D6: $6E
    ld h, a                                       ; $40D7: $67
    rst $38                                       ; $40D8: $FF
    ld h, c                                       ; $40D9: $61
    ld [hl], d                                    ; $40DA: $72
    ld l, a                                       ; $40DB: $6F
    ld [hl], l                                    ; $40DC: $75
    ld l, [hl]                                    ; $40DD: $6E
    ld h, h                                       ; $40DE: $64
    ld hl, $44FE                                  ; $40DF: $21 $FE $44

jr_017_40E2:
    ld l, a                                       ; $40E2: $6F
    jr nz, @+$6B                                  ; $40E3: $20 $69

    ld [hl], h                                    ; $40E5: $74
    jr nz, @+$70                                  ; $40E6: $20 $6E

    ld l, a                                       ; $40E8: $6F
    ld [hl], a                                    ; $40E9: $77
    ld hl, $FDFE                                  ; $40EA: $21 $FE $FD
    sbc d                                         ; $40ED: $9A
    ld e, b                                       ; $40EE: $58
    inc b                                         ; $40EF: $04
    ld b, d                                       ; $40F0: $42
    sbc e                                         ; $40F1: $9B
    jr jr_017_4142                                ; $40F2: $18 $4E

    sbc a                                         ; $40F4: $9F
    ld c, l                                       ; $40F5: $4D

jr_017_40F6:
    ld h, c                                       ; $40F6: $61
    ld l, e                                       ; $40F7: $6B
    ld h, l                                       ; $40F8: $65
    jr nz, jr_017_4172                            ; $40F9: $20 $77

    ld h, c                                       ; $40FB: $61
    ld a, c                                       ; $40FC: $79

jr_017_40FD:
    jr nz, jr_017_4165                            ; $40FD: $20 $66

    ld l, a                                       ; $40FF: $6F
    ld [hl], d                                    ; $4100: $72
    rst $38                                       ; $4101: $FF
    ld b, a                                       ; $4102: $47
    ld l, a                                       ; $4103: $6F
    ld h, a                                       ; $4104: $67
    ld l, a                                       ; $4105: $6F
    ld [hl], d                                    ; $4106: $72
    ld hl, $FE21                                  ; $4107: $21 $21 $FE
    db $FD                                        ; $410A: $FD
    sbc d                                         ; $410B: $9A
    ld e, b                                       ; $410C: $58
    ld bc, $9B42                                  ; $410D: $01 $42 $9B
    ld a, b                                       ; $4110: $78
    ld [hl], b                                    ; $4111: $70
    sbc a                                         ; $4112: $9F
    ld d, h                                       ; $4113: $54
    ld l, b                                       ; $4114: $68
    ld h, l                                       ; $4115: $65
    ld [hl], d                                    ; $4116: $72

jr_017_4117:
    ld h, l                                       ; $4117: $65
    daa                                           ; $4118: $27
    ld [hl], e                                    ; $4119: $73
    jr nz, jr_017_417D                            ; $411A: $20 $61

    jr nz, jr_017_418C                            ; $411C: $20 $6E

    ld l, a                                       ; $411E: $6F
    ld [hl], h                                    ; $411F: $74
    ld h, l                                       ; $4120: $65

jr_017_4121:
    rst $38                                       ; $4121: $FF
    ld l, b                                       ; $4122: $68
    ld h, l                                       ; $4123: $65
    ld [hl], d                                    ; $4124: $72
    ld h, l                                       ; $4125: $65
    ld l, $20                                     ; $4126: $2E $20
    ld c, c                                       ; $4128: $49
    ld [hl], h                                    ; $4129: $74
    jr nz, jr_017_419F                            ; $412A: $20 $73

    ld h, c                                       ; $412C: $61
    ld a, c                                       ; $412D: $79
    ld [hl], e                                    ; $412E: $73
    inc l                                         ; $412F: $2C

jr_017_4130:
    cp $2D                                        ; $4130: $FE $2D
    ld b, e                                       ; $4132: $43
    ld c, a                                       ; $4133: $4F
    ld d, l                                       ; $4134: $55
    ld c, h                                       ; $4135: $4C
    ld b, h                                       ; $4136: $44
    ld c, [hl]                                    ; $4137: $4E

jr_017_4138:
    daa                                           ; $4138: $27

jr_017_4139:
    ld d, h                                       ; $4139: $54
    jr nz, jr_017_4193                            ; $413A: $20 $57

    ld b, c                                       ; $413C: $41
    ld c, c                                       ; $413D: $49
    ld d, h                                       ; $413E: $54
    rst $38                                       ; $413F: $FF
    ld b, [hl]                                    ; $4140: $46
    ld c, a                                       ; $4141: $4F

jr_017_4142:
    ld d, d                                       ; $4142: $52
    jr nz, jr_017_419E                            ; $4143: $20 $59

    ld c, a                                       ; $4145: $4F
    ld d, l                                       ; $4146: $55
    inc l                                         ; $4147: $2C
    jr nz, @+$59                                  ; $4148: $20 $57

    ld b, l                                       ; $414A: $45
    ld c, [hl]                                    ; $414B: $4E
    ld d, h                                       ; $414C: $54
    cp $54                                        ; $414D: $FE $54
    ld c, a                                       ; $414F: $4F
    jr nz, jr_017_4198                            ; $4150: $20 $46

    ld c, c                                       ; $4152: $49
    ld c, [hl]                                    ; $4153: $4E
    ld b, h                                       ; $4154: $44
    jr nz, jr_017_41A4                            ; $4155: $20 $4D

    ld c, a                                       ; $4157: $4F
    ld c, [hl]                                    ; $4158: $4E
    ld d, e                                       ; $4159: $53
    ld d, h                                       ; $415A: $54
    ld b, l                                       ; $415B: $45
    ld d, d                                       ; $415C: $52
    rst $38                                       ; $415D: $FF
    ld d, a                                       ; $415E: $57
    ld c, c                                       ; $415F: $49
    ld d, h                                       ; $4160: $54
    ld c, b                                       ; $4161: $48
    ld c, a                                       ; $4162: $4F
    ld d, l                                       ; $4163: $55
    ld d, h                                       ; $4164: $54

jr_017_4165:
    jr nz, @+$56                                  ; $4165: $20 $54

    ld c, b                                       ; $4167: $48
    ld b, l                                       ; $4168: $45
    cp $41                                        ; $4169: $FE $41
    ld c, h                                       ; $416B: $4C
    ld b, a                                       ; $416C: $47
    ld b, c                                       ; $416D: $41
    ld b, l                                       ; $416E: $45
    ld l, $20                                     ; $416F: $2E $20
    ld d, a                                       ; $4171: $57

jr_017_4172:
    ld c, c                                       ; $4172: $49
    ld d, e                                       ; $4173: $53
    ld c, b                                       ; $4174: $48
    rst $38                                       ; $4175: $FF
    ld c, l                                       ; $4176: $4D
    ld b, l                                       ; $4177: $45
    jr nz, jr_017_41C6                            ; $4178: $20 $4C

    ld d, l                                       ; $417A: $55
    ld b, e                                       ; $417B: $43
    ld c, e                                       ; $417C: $4B

jr_017_417D:
    ld hl, $FE2D                                  ; $417D: $21 $2D $FE
    db $FD                                        ; $4180: $FD
    sbc d                                         ; $4181: $9A
    ld b, d                                       ; $4182: $42
    xor h                                         ; $4183: $AC
    or d                                          ; $4184: $B2
    and d                                         ; $4185: $A2
    ld bc, $0843                                  ; $4186: $01 $43 $08
    rrca                                          ; $4189: $0F
    inc b                                         ; $418A: $04
    dec b                                         ; $418B: $05

jr_017_418C:
    rlca                                          ; $418C: $07
    rrca                                          ; $418D: $0F
    ld bc, $A224                                  ; $418E: $01 $24 $A2
    dec b                                         ; $4191: $05
    inc b                                         ; $4192: $04

jr_017_4193:
    rla                                           ; $4193: $17
    db $EC                                        ; $4194: $EC
    ld b, c                                       ; $4195: $41
    sub e                                         ; $4196: $93
    ld h, l                                       ; $4197: $65

jr_017_4198:
    ld c, [hl]                                    ; $4198: $4E
    ld c, h                                       ; $4199: $4C
    ld c, a                                       ; $419A: $4F
    ld h, h                                       ; $419B: $64
    inc b                                         ; $419C: $04
    ld d, b                                       ; $419D: $50

jr_017_419E:
    ld l, c                                       ; $419E: $69

jr_017_419F:
    ld de, $6650                                  ; $419F: $11 $50 $66
    ret nz                                        ; $41A2: $C0

    ld e, h                                       ; $41A3: $5C

jr_017_41A4:
    ld hl, $0005                                  ; $41A4: $21 $05 $00
    add c                                         ; $41A7: $81
    ld e, l                                       ; $41A8: $5D
    dec b                                         ; $41A9: $05
    dec b                                         ; $41AA: $05

jr_017_41AB:
    ld l, c                                       ; $41AB: $69
    ret nc                                        ; $41AC: $D0

    nop                                           ; $41AD: $00
    jr nz, jr_017_41AB                            ; $41AE: $20 $FB

    ld d, b                                       ; $41B0: $50
    ld [hl+], a                                   ; $41B1: $22
    dec b                                         ; $41B2: $05
    ld b, b                                       ; $41B3: $40
    dec bc                                        ; $41B4: $0B
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    add d                                         ; $41B7: $82
    ld b, e                                       ; $41B8: $43
    ld [$0411], sp                                ; $41B9: $08 $11 $04
    dec b                                         ; $41BC: $05
    ld c, $0F                                     ; $41BD: $0E $0F
    ld bc, $A2B3                                  ; $41BF: $01 $B3 $A2
    dec b                                         ; $41C2: $05
    ld bc, $DF17                                  ; $41C3: $01 $17 $DF

jr_017_41C6:
    ld b, c                                       ; $41C6: $41
    ld b, e                                       ; $41C7: $43
    ld [$040F], sp                                ; $41C8: $08 $0F $04
    dec b                                         ; $41CB: $05
    rlca                                          ; $41CC: $07
    inc de                                        ; $41CD: $13
    ld bc, $A224                                  ; $41CE: $01 $24 $A2
    dec b                                         ; $41D1: $05
    ld b, $17                                     ; $41D2: $06 $17
    rst $18                                       ; $41D4: $DF
    ld b, c                                       ; $41D5: $41
    ld a, [hl]                                    ; $41D6: $7E

jr_017_41D7:
    db $D3                                        ; $41D7: $D3
    ret nc                                        ; $41D8: $D0

    ld [bc], a                                    ; $41D9: $02
    ld [bc], a                                    ; $41DA: $02
    pop de                                        ; $41DB: $D1
    ret nc                                        ; $41DC: $D0

    ld a, [bc]                                    ; $41DD: $0A
    add hl, bc                                    ; $41DE: $09
    ld a, [hl]                                    ; $41DF: $7E
    rst $08                                       ; $41E0: $CF
    ret nc                                        ; $41E1: $D0

    ld [bc], a                                    ; $41E2: $02
    ld [bc], a                                    ; $41E3: $02
    db $D3                                        ; $41E4: $D3
    ret nc                                        ; $41E5: $D0

    ld a, [bc]                                    ; $41E6: $0A
    dec bc                                        ; $41E7: $0B
    rra                                           ; $41E8: $1F
    ld de, $4294                                  ; $41E9: $11 $94 $42
    xor h                                         ; $41EC: $AC
    inc h                                         ; $41ED: $24
    and d                                         ; $41EE: $A2
    dec b                                         ; $41EF: $05
    sub e                                         ; $41F0: $93
    ld h, l                                       ; $41F1: $65
    ld c, [hl]                                    ; $41F2: $4E
    ld c, h                                       ; $41F3: $4C
    ld c, a                                       ; $41F4: $4F
    ld h, h                                       ; $41F5: $64
    inc b                                         ; $41F6: $04
    ld d, b                                       ; $41F7: $50
    ld h, [hl]                                    ; $41F8: $66
    ret nz                                        ; $41F9: $C0

    ld e, h                                       ; $41FA: $5C
    ld hl, $0005                                  ; $41FB: $21 $05 $00
    ld l, e                                       ; $41FE: $6B
    ld c, d                                       ; $41FF: $4A
    ld a, [bc]                                    ; $4200: $0A
    ld [de], a                                    ; $4201: $12
    ld [hl], d                                    ; $4202: $72

jr_017_4203:
    pop de                                        ; $4203: $D1
    nop                                           ; $4204: $00
    rla                                           ; $4205: $17
    inc [hl]                                      ; $4206: $34
    ld b, d                                       ; $4207: $42
    ld [hl+], a                                   ; $4208: $22
    dec b                                         ; $4209: $05
    ld b, b                                       ; $420A: $40

jr_017_420B:
    dec b                                         ; $420B: $05
    ld [bc], a                                    ; $420C: $02
    ld l, e                                       ; $420D: $6B
    ld c, d                                       ; $420E: $4A
    ld a, [bc]                                    ; $420F: $0A
    ld c, $22                                     ; $4210: $0E $22
    pop de                                        ; $4212: $D1
    nop                                           ; $4213: $00
    rla                                           ; $4214: $17
    ld e, d                                       ; $4215: $5A
    ld b, d                                       ; $4216: $42
    ld [hl+], a                                   ; $4217: $22
    dec b                                         ; $4218: $05
    ld b, b                                       ; $4219: $40
    ld l, e                                       ; $421A: $6B
    ld [hl], $0A                                  ; $421B: $36 $0A
    db $10                                        ; $421D: $10
    ld d, c                                       ; $421E: $51
    nop                                           ; $421F: $00
    add b                                         ; $4220: $80
    nop                                           ; $4221: $00
    dec bc                                        ; $4222: $0B
    nop                                           ; $4223: $00
    dec bc                                        ; $4224: $0B
    ld [bc], a                                    ; $4225: $02
    add d                                         ; $4226: $82
    ld a, [hl]                                    ; $4227: $7E
    rst $08                                       ; $4228: $CF
    ret nc                                        ; $4229: $D0

    ld [bc], a                                    ; $422A: $02
    ld [bc], a                                    ; $422B: $02
    db $D3                                        ; $422C: $D3
    ret nc                                        ; $422D: $D0

    ld a, [bc]                                    ; $422E: $0A
    dec bc                                        ; $422F: $0B
    rra                                           ; $4230: $1F
    ld de, $4294                                  ; $4231: $11 $94 $42
    dec d                                         ; $4234: $15
    jr nz, @-$4B                                  ; $4235: $20 $B3

    ld c, a                                       ; $4237: $4F
    jr nc, jr_017_425A                            ; $4238: $30 $20

    xor e                                         ; $423A: $AB
    ld d, b                                       ; $423B: $50
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    ld e, h                                       ; $423E: $5C
    nop                                           ; $423F: $00
    ld [bc], a                                    ; $4240: $02
    ld d, $20                                     ; $4241: $16 $20
    xor c                                         ; $4243: $A9
    ld e, [hl]                                    ; $4244: $5E
    jr z, jr_017_4247                             ; $4245: $28 $00

jr_017_4247:
    db $FD                                        ; $4247: $FD
    jr nz, jr_017_4203                            ; $4248: $20 $B9

    ld e, [hl]                                    ; $424A: $5E
    jr jr_017_424D                                ; $424B: $18 $00

jr_017_424D:
    rst $38                                       ; $424D: $FF
    nop                                           ; $424E: $00
    dec d                                         ; $424F: $15
    jr nz, jr_017_41D7                            ; $4250: $20 $85

    ld d, h                                       ; $4252: $54
    ld b, b                                       ; $4253: $40
    jr nz, jr_017_420B                            ; $4254: $20 $B5

    ld d, b                                       ; $4256: $50
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    ld b, d                                       ; $4259: $42

jr_017_425A:
    dec d                                         ; $425A: $15
    ld c, $D0                                     ; $425B: $0E $D0
    ld h, e                                       ; $425D: $63
    ld b, b                                       ; $425E: $40
    ld c, $E4                                     ; $425F: $0E $E4
    ld h, e                                       ; $4261: $63
    ld [$DA0E], sp                                ; $4262: $08 $0E $DA
    ld h, e                                       ; $4265: $63
    stop                                          ; $4266: $10 $00
    ld e, e                                       ; $4268: $5B
    rla                                           ; $4269: $17
    dec h                                         ; $426A: $25
    ld b, b                                       ; $426B: $40
    ld h, d                                       ; $426C: $62
    ld bc, $0E15                                  ; $426D: $01 $15 $0E
    db $E4                                        ; $4270: $E4
    ld h, e                                       ; $4271: $63
    ld [$D00E], sp                                ; $4272: $08 $0E $D0
    ld h, e                                       ; $4275: $63

jr_017_4276:
    stop                                          ; $4276: $10 $00
    add e                                         ; $4278: $83
    ld b, b                                       ; $4279: $40
    nop                                           ; $427A: $00
    rst $38                                       ; $427B: $FF
    nop                                           ; $427C: $00
    ld e, e                                       ; $427D: $5B
    rla                                           ; $427E: $17
    ld d, l                                       ; $427F: $55
    ld b, b                                       ; $4280: $40
    ld h, d                                       ; $4281: $62
    ld [bc], a                                    ; $4282: $02
    add e                                         ; $4283: $83
    ld b, b                                       ; $4284: $40
    nop                                           ; $4285: $00
    ld bc, $1500                                  ; $4286: $01 $00 $15
    ld c, $E4                                     ; $4289: $0E $E4
    ld h, e                                       ; $428B: $63
    ld [$DA0E], sp                                ; $428C: $08 $0E $DA
    ld h, e                                       ; $428F: $63
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    ld e, e                                       ; $4292: $5B
    rla                                           ; $4293: $17
    halt                                          ; $4294: $76
    ld b, b                                       ; $4295: $40
    ld h, d                                       ; $4296: $62
    inc bc                                        ; $4297: $03
    dec d                                         ; $4298: $15
    ld c, $C0                                     ; $4299: $0E $C0
    ld h, e                                       ; $429B: $63
    ld [bc], a                                    ; $429C: $02
    ld c, $A0                                     ; $429D: $0E $A0
    ld h, e                                       ; $429F: $63
    ld [$E40E], sp                                ; $42A0: $08 $0E $E4
    ld h, e                                       ; $42A3: $63
    ld c, $00                                     ; $42A4: $0E $00
    ld e, h                                       ; $42A6: $5C
    nop                                           ; $42A7: $00
    ld [bc], a                                    ; $42A8: $02
    dec d                                         ; $42A9: $15
    ld c, $F8                                     ; $42AA: $0E $F8
    ld h, e                                       ; $42AC: $63
    inc b                                         ; $42AD: $04
    ld c, $D0                                     ; $42AE: $0E $D0
    ld h, e                                       ; $42B0: $63
    ld b, b                                       ; $42B1: $40
    nop                                           ; $42B2: $00
    ld e, e                                       ; $42B3: $5B
    rla                                           ; $42B4: $17
    sub c                                         ; $42B5: $91
    ld b, b                                       ; $42B6: $40
    ld h, d                                       ; $42B7: $62
    inc b                                         ; $42B8: $04
    rlca                                          ; $42B9: $07
    nop                                           ; $42BA: $00
    add c                                         ; $42BB: $81
    ld e, l                                       ; $42BC: $5D
    add hl, bc                                    ; $42BD: $09
    nop                                           ; $42BE: $00
    jr nz, jr_017_4276                            ; $42BF: $20 $B5

    ld d, b                                       ; $42C1: $50
    ld b, d                                       ; $42C2: $42
    xor h                                         ; $42C3: $AC
    inc h                                         ; $42C4: $24
    and d                                         ; $42C5: $A2
    ld b, $93                                     ; $42C6: $06 $93
    ld h, l                                       ; $42C8: $65
    ld c, [hl]                                    ; $42C9: $4E
    ld c, h                                       ; $42CA: $4C
    ld c, a                                       ; $42CB: $4F
    ld h, h                                       ; $42CC: $64
    inc b                                         ; $42CD: $04
    ld d, b                                       ; $42CE: $50
    ld h, [hl]                                    ; $42CF: $66
    ret nz                                        ; $42D0: $C0

    ld e, h                                       ; $42D1: $5C
    ld hl, $0005                                  ; $42D2: $21 $05 $00
    ld l, e                                       ; $42D5: $6B
    ld c, d                                       ; $42D6: $4A
    ld a, [bc]                                    ; $42D7: $0A
    dec bc                                        ; $42D8: $0B
    and $D0                                       ; $42D9: $E6 $D0

jr_017_42DB:
    nop                                           ; $42DB: $00
    rla                                           ; $42DC: $17
    daa                                           ; $42DD: $27
    ld b, e                                       ; $42DE: $43
    ld [hl+], a                                   ; $42DF: $22
    dec b                                         ; $42E0: $05
    ld b, b                                       ; $42E1: $40
    dec b                                         ; $42E2: $05
    ld [bc], a                                    ; $42E3: $02
    ld l, e                                       ; $42E4: $6B
    ld c, d                                       ; $42E5: $4A
    ld a, [bc]                                    ; $42E6: $0A
    dec bc                                        ; $42E7: $0B
    and $D0                                       ; $42E8: $E6 $D0
    nop                                           ; $42EA: $00
    rla                                           ; $42EB: $17
    ld e, d                                       ; $42EC: $5A
    ld b, e                                       ; $42ED: $43
    ld [hl+], a                                   ; $42EE: $22
    dec b                                         ; $42EF: $05
    ld b, b                                       ; $42F0: $40
    dec b                                         ; $42F1: $05
    inc bc                                        ; $42F2: $03
    ld l, e                                       ; $42F3: $6B
    ld c, d                                       ; $42F4: $4A
    ld a, [bc]                                    ; $42F5: $0A
    dec bc                                        ; $42F6: $0B
    and $D0                                       ; $42F7: $E6 $D0
    ld [hl], $17                                  ; $42F9: $36 $17
    ld l, b                                       ; $42FB: $68
    ld b, e                                       ; $42FC: $43
    ld [hl+], a                                   ; $42FD: $22
    dec b                                         ; $42FE: $05
    ld b, b                                       ; $42FF: $40
    ld l, e                                       ; $4300: $6B
    ld [hl], $0A                                  ; $4301: $36 $0A
    db $10                                        ; $4303: $10
    ld d, c                                       ; $4304: $51
    nop                                           ; $4305: $00
    add b                                         ; $4306: $80
    nop                                           ; $4307: $00
    ld l, e                                       ; $4308: $6B
    add hl, hl                                    ; $4309: $29
    ld a, [bc]                                    ; $430A: $0A

jr_017_430B:
    ld [hl], b                                    ; $430B: $70
    ld d, h                                       ; $430C: $54
    ld h, b                                       ; $430D: $60
    add e                                         ; $430E: $83
    nop                                           ; $430F: $00
    dec bc                                        ; $4310: $0B
    nop                                           ; $4311: $00
    add d                                         ; $4312: $82
    ld a, [hl]                                    ; $4313: $7E
    db $D3                                        ; $4314: $D3
    ret nc                                        ; $4315: $D0

    ld [bc], a                                    ; $4316: $02
    ld [bc], a                                    ; $4317: $02
    pop de                                        ; $4318: $D1
    ret nc                                        ; $4319: $D0

    ld a, [bc]                                    ; $431A: $0A
    add hl, bc                                    ; $431B: $09
    ld a, [hl]                                    ; $431C: $7E
    rst $08                                       ; $431D: $CF
    ret nc                                        ; $431E: $D0

    ld [bc], a                                    ; $431F: $02
    ld [bc], a                                    ; $4320: $02
    db $D3                                        ; $4321: $D3
    ret nc                                        ; $4322: $D0

    ld a, [bc]                                    ; $4323: $0A
    dec bc                                        ; $4324: $0B
    sub h                                         ; $4325: $94
    ld b, d                                       ; $4326: $42
    ld d, $20                                     ; $4327: $16 $20
    call $304F                                    ; $4329: $CD $4F $30
    nop                                           ; $432C: $00
    ld bc, $B520                                  ; $432D: $01 $20 $B5
    ld d, b                                       ; $4330: $50

jr_017_4331:
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    ld e, e                                       ; $4335: $5B
    rla                                           ; $4336: $17
    pop af                                        ; $4337: $F1
    ld b, b                                       ; $4338: $40
    ld h, d                                       ; $4339: $62
    ld bc, $020B                                  ; $433A: $01 $0B $02
    dec bc                                        ; $433D: $0B
    inc bc                                        ; $433E: $03
    dec d                                         ; $433F: $15
    jr nz, jr_017_430B                            ; $4340: $20 $C9

    ld d, b                                       ; $4342: $50

Call_017_4343:
    ld [$AB20], sp                                ; $4343: $08 $20 $AB
    ld d, b                                       ; $4346: $50
    db $10                                        ; $4347: $10
    jr nz, jr_017_42DB                            ; $4348: $20 $91

Call_017_434A:
    ld d, b                                       ; $434A: $50
    ld [$BF20], sp                                ; $434B: $08 $20 $BF
    ld d, b                                       ; $434E: $50
    ld [$D320], sp                                ; $434F: $08 $20 $D3
    ld d, b                                       ; $4352: $50
    db $10                                        ; $4353: $10
    jr nz, jr_017_430B                            ; $4354: $20 $B5

    ld d, b                                       ; $4356: $50
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    ld b, d                                       ; $4359: $42
    ld b, b                                       ; $435A: $40
    ld [$0E15], sp                                ; $435B: $08 $15 $0E
    and b                                         ; $435E: $A0
    ld h, e                                       ; $435F: $63
    ld b, b                                       ; $4360: $40
    ld c, $DA                                     ; $4361: $0E $DA
    ld h, e                                       ; $4363: $63
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    add hl, de                                    ; $4366: $19
    ld b, d                                       ; $4367: $42
    ld b, b                                       ; $4368: $40
    db $10                                        ; $4369: $10
    dec d                                         ; $436A: $15
    ld c, $33                                     ; $436B: $0E $33
    ld h, [hl]                                    ; $436D: $66
    ld b, b                                       ; $436E: $40
    ld c, $6D                                     ; $436F: $0E $6D
    ld h, [hl]                                    ; $4371: $66
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    rlca                                          ; $4374: $07
    nop                                           ; $4375: $00
    add c                                         ; $4376: $81
    ld e, l                                       ; $4377: $5D
    add hl, bc                                    ; $4378: $09
    nop                                           ; $4379: $00
    jr nz, jr_017_4331                            ; $437A: $20 $B5

    ld d, b                                       ; $437C: $50
    add hl, de                                    ; $437D: $19
    ld b, d                                       ; $437E: $42
    ld [bc], a                                    ; $437F: $02
    add hl, bc                                    ; $4380: $09
    add hl, bc                                    ; $4381: $09
    db $10                                        ; $4382: $10
    dec bc                                        ; $4383: $0B
    ld b, l                                       ; $4384: $45
    rla                                           ; $4385: $17
    add e                                         ; $4386: $83
    ld b, c                                       ; $4387: $41
    ld bc, $1010                                  ; $4388: $01 $10 $10
    ld b, l                                       ; $438B: $45
    rla                                           ; $438C: $17
    ret c                                         ; $438D: $D8

    ld b, a                                       ; $438E: $47
    ld [bc], a                                    ; $438F: $02
    add hl, bc                                    ; $4390: $09
    add hl, bc                                    ; $4391: $09
    db $10                                        ; $4392: $10
    dec bc                                        ; $4393: $0B
    ld b, l                                       ; $4394: $45
    rla                                           ; $4395: $17
    jp $0142                                      ; $4396: $C3 $42 $01


    db $10                                        ; $4399: $10
    db $10                                        ; $439A: $10
    ld b, l                                       ; $439B: $45
    rla                                           ; $439C: $17
    ld c, d                                       ; $439D: $4A
    ld c, b                                       ; $439E: $48
    and h                                         ; $439F: $A4
    ld c, d                                       ; $43A0: $4A
    and e                                         ; $43A1: $A3
    ld bc, $0802                                  ; $43A2: $01 $02 $08
    add e                                         ; $43A5: $83
    ret nc                                        ; $43A6: $D0

    ld e, e                                       ; $43A7: $5B
    ld [hl+], a                                   ; $43A8: $22
    ld e, e                                       ; $43A9: $5B
    ld b, b                                       ; $43AA: $40
    ld b, d                                       ; $43AB: $42
    sbc e                                         ; $43AC: $9B
    jr jr_017_43FD                                ; $43AD: $18 $4E

    sbc a                                         ; $43AF: $9F
    ld c, c                                       ; $43B0: $49
    jr nz, jr_017_441A                            ; $43B1: $20 $67

    ld l, a                                       ; $43B3: $6F
    ld [hl], h                                    ; $43B4: $74
    jr nz, jr_017_442B                            ; $43B5: $20 $74

    ld l, c                                       ; $43B7: $69
    ld [hl], d                                    ; $43B8: $72
    ld h, l                                       ; $43B9: $65
    ld h, h                                       ; $43BA: $64
    rst $38                                       ; $43BB: $FF
    ld l, a                                       ; $43BC: $6F
    ld h, [hl]                                    ; $43BD: $66
    jr nz, jr_017_4437                            ; $43BE: $20 $77

    ld h, c                                       ; $43C0: $61
    ld l, c                                       ; $43C1: $69
    ld [hl], h                                    ; $43C2: $74
    ld l, c                                       ; $43C3: $69
    ld l, [hl]                                    ; $43C4: $6E
    ld h, a                                       ; $43C5: $67
    ld l, $FE                                     ; $43C6: $2E $FE
    db $FD                                        ; $43C8: $FD
    sbc d                                         ; $43C9: $9A
    ld e, b                                       ; $43CA: $58
    ld bc, $4342                                  ; $43CB: $01 $42 $43
    ld [$040F], sp                                ; $43CE: $08 $0F $04
    dec b                                         ; $43D1: $05
    rlca                                          ; $43D2: $07
    rrca                                          ; $43D3: $0F
    ld bc, $A224                                  ; $43D4: $01 $24 $A2
    dec b                                         ; $43D7: $05
    dec b                                         ; $43D8: $05
    rla                                           ; $43D9: $17
    ld [bc], a                                    ; $43DA: $02
    ld b, h                                       ; $43DB: $44
    sub e                                         ; $43DC: $93
    ld h, l                                       ; $43DD: $65
    ld e, l                                       ; $43DE: $5D
    ld c, h                                       ; $43DF: $4C
    ld c, a                                       ; $43E0: $4F
    ld h, h                                       ; $43E1: $64
    ld d, $50                                     ; $43E2: $16 $50
    ld l, c                                       ; $43E4: $69
    jr z, jr_017_4437                             ; $43E5: $28 $50

    ld h, [hl]                                    ; $43E7: $66
    ret nz                                        ; $43E8: $C0

    ld e, h                                       ; $43E9: $5C
    ld hl, $0005                                  ; $43EA: $21 $05 $00
    add c                                         ; $43ED: $81
    ld e, l                                       ; $43EE: $5D
    dec b                                         ; $43EF: $05
    dec b                                         ; $43F0: $05

jr_017_43F1:
    ld l, c                                       ; $43F1: $69
    ret nc                                        ; $43F2: $D0

    nop                                           ; $43F3: $00
    jr nz, jr_017_43F1                            ; $43F4: $20 $FB

    ld d, b                                       ; $43F6: $50
    ld [hl+], a                                   ; $43F7: $22
    dec b                                         ; $43F8: $05
    ld b, b                                       ; $43F9: $40
    dec bc                                        ; $43FA: $0B
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00

jr_017_43FD:
    rra                                           ; $43FD: $1F
    ld de, $9482                                  ; $43FE: $11 $82 $94
    ld b, d                                       ; $4401: $42
    sub e                                         ; $4402: $93
    ld h, l                                       ; $4403: $65
    ld e, l                                       ; $4404: $5D
    ld c, h                                       ; $4405: $4C
    ld c, a                                       ; $4406: $4F
    ld h, h                                       ; $4407: $64
    rra                                           ; $4408: $1F
    ld d, b                                       ; $4409: $50
    ld h, [hl]                                    ; $440A: $66
    ret nz                                        ; $440B: $C0

    ld e, h                                       ; $440C: $5C
    ld hl, $2869                                  ; $440D: $21 $69 $28

jr_017_4410:
    ld d, b                                       ; $4410: $50
    dec b                                         ; $4411: $05
    nop                                           ; $4412: $00
    ld l, e                                       ; $4413: $6B
    ld c, d                                       ; $4414: $4A
    db $10                                        ; $4415: $10
    ld c, $28                                     ; $4416: $0E $28
    pop de                                        ; $4418: $D1
    nop                                           ; $4419: $00

jr_017_441A:
    rla                                           ; $441A: $17
    ld b, b                                       ; $441B: $40
    ld b, h                                       ; $441C: $44
    ld [hl+], a                                   ; $441D: $22
    dec b                                         ; $441E: $05
    ld b, b                                       ; $441F: $40

jr_017_4420:
    dec b                                         ; $4420: $05
    ld [bc], a                                    ; $4421: $02
    ld l, e                                       ; $4422: $6B
    ld c, d                                       ; $4423: $4A
    ld a, [bc]                                    ; $4424: $0A
    db $10                                        ; $4425: $10
    ld c, d                                       ; $4426: $4A
    pop de                                        ; $4427: $D1
    nop                                           ; $4428: $00
    rla                                           ; $4429: $17
    ld l, h                                       ; $442A: $6C

jr_017_442B:
    ld b, h                                       ; $442B: $44
    ld [hl+], a                                   ; $442C: $22
    dec b                                         ; $442D: $05
    ld b, b                                       ; $442E: $40
    ld l, e                                       ; $442F: $6B
    ld [hl], $0A                                  ; $4430: $36 $0A
    db $10                                        ; $4432: $10
    ld d, c                                       ; $4433: $51
    nop                                           ; $4434: $00
    add b                                         ; $4435: $80
    nop                                           ; $4436: $00

jr_017_4437:
    dec bc                                        ; $4437: $0B
    nop                                           ; $4438: $00
    dec bc                                        ; $4439: $0B
    ld [bc], a                                    ; $443A: $02
    add d                                         ; $443B: $82

jr_017_443C:
    rra                                           ; $443C: $1F
    ld de, $4294                                  ; $443D: $11 $94 $42
    dec d                                         ; $4440: $15
    jr nz, jr_017_4420                            ; $4441: $20 $DD

    ld c, a                                       ; $4443: $4F
    jr nz, jr_017_4446                            ; $4444: $20 $00

jr_017_4446:
    ld d, $20                                     ; $4446: $16 $20
    db $DD                                        ; $4448: $DD
    ld c, a                                       ; $4449: $4F
    jr nc, @+$01                                  ; $444A: $30 $FF

    nop                                           ; $444C: $00
    nop                                           ; $444D: $00
    dec d                                         ; $444E: $15
    jr nz, jr_017_4410                            ; $444F: $20 $BF

    ld d, b                                       ; $4451: $50
    db $10                                        ; $4452: $10
    jr nz, jr_017_443C                            ; $4453: $20 $E7

jr_017_4455:
    ld d, b                                       ; $4455: $50
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    ld e, h                                       ; $4458: $5C
    nop                                           ; $4459: $00
    ld [bc], a                                    ; $445A: $02
    ld b, b                                       ; $445B: $40
    ld [$2015], sp                                ; $445C: $08 $15 $20
    xor e                                         ; $445F: $AB
    ld d, b                                       ; $4460: $50
    db $10                                        ; $4461: $10
    jr nz, jr_017_4455                            ; $4462: $20 $F1

    ld d, b                                       ; $4464: $50
    db $10                                        ; $4465: $10
    jr nz, @-$35                                  ; $4466: $20 $C9

    ld d, b                                       ; $4468: $50
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    ld b, d                                       ; $446B: $42
    ld b, b                                       ; $446C: $40
    ld b, b                                       ; $446D: $40
    ld e, d                                       ; $446E: $5A
    inc d                                         ; $446F: $14
    ld b, b                                       ; $4470: $40
    ld d, l                                       ; $4471: $55
    dec d                                         ; $4472: $15
    ld c, $90                                     ; $4473: $0E $90
    ld h, e                                       ; $4475: $63
    jr jr_017_4486                                ; $4476: $18 $0E

    ld d, b                                       ; $4478: $50
    ld h, e                                       ; $4479: $63
    db $10                                        ; $447A: $10
    ld c, $D0                                     ; $447B: $0E $D0
    ld h, e                                       ; $447D: $63
    jr nz, jr_017_448E                            ; $447E: $20 $0E

    ld [bc], a                                    ; $4480: $02
    ld h, h                                       ; $4481: $64
    inc b                                         ; $4482: $04
    ld c, $EE                                     ; $4483: $0E $EE
    ld h, e                                       ; $4485: $63

jr_017_4486:
    inc b                                         ; $4486: $04
    ld c, $16                                     ; $4487: $0E $16
    ld h, h                                       ; $4489: $64
    nop                                           ; $448A: $00
    nop                                           ; $448B: $00
    ld e, e                                       ; $448C: $5B
    rla                                           ; $448D: $17

jr_017_448E:
    xor h                                         ; $448E: $AC
    ld b, e                                       ; $448F: $43
    ld h, d                                       ; $4490: $62
    ld bc, $005C                                  ; $4491: $01 $5C $00
    ld [bc], a                                    ; $4494: $02
    dec d                                         ; $4495: $15
    ld c, $C0                                     ; $4496: $0E $C0
    ld h, e                                       ; $4498: $63
    jr z, jr_017_44A9                             ; $4499: $28 $0E

    and b                                         ; $449B: $A0
    ld h, e                                       ; $449C: $63
    db $10                                        ; $449D: $10
    ld c, $C0                                     ; $449E: $0E $C0
    ld h, e                                       ; $44A0: $63
    ld [$0700], sp                                ; $44A1: $08 $00 $07
    nop                                           ; $44A4: $00
    add c                                         ; $44A5: $81
    ld e, l                                       ; $44A6: $5D
    add hl, bc                                    ; $44A7: $09
    nop                                           ; $44A8: $00

jr_017_44A9:
    jr nz, @+$33                                  ; $44A9: $20 $31

    ld d, c                                       ; $44AB: $51
    add hl, de                                    ; $44AC: $19
    ld b, d                                       ; $44AD: $42
    ld bc, $0306                                  ; $44AE: $01 $06 $03
    ld b, l                                       ; $44B1: $45
    rla                                           ; $44B2: $17
    add e                                         ; $44B3: $83
    ld b, c                                       ; $44B4: $41
    ld bc, $0E10                                  ; $44B5: $01 $10 $0E
    ld b, l                                       ; $44B8: $45
    rla                                           ; $44B9: $17
    call $A443                                    ; $44BA: $CD $43 $A4
    ld b, [hl]                                    ; $44BD: $46
    and e                                         ; $44BE: $A3
    add b                                         ; $44BF: $80
    nop                                           ; $44C0: $00
    ld [bc], a                                    ; $44C1: $02
    ld [hl], b                                    ; $44C2: $70
    ret nc                                        ; $44C3: $D0

    ld hl, $189B                                  ; $44C4: $21 $9B $18
    ld c, [hl]                                    ; $44C7: $4E
    sbc a                                         ; $44C8: $9F
    ld b, l                                       ; $44C9: $45
    ld l, b                                       ; $44CA: $68
    ccf                                           ; $44CB: $3F
    jr nz, @+$59                                  ; $44CC: $20 $57

    ld l, b                                       ; $44CE: $68
    ld h, l                                       ; $44CF: $65
    ld [hl], d                                    ; $44D0: $72
    ld h, l                                       ; $44D1: $65
    jr nz, jr_017_4535                            ; $44D2: $20 $61

    ld [hl], d                                    ; $44D4: $72
    ld h, l                                       ; $44D5: $65
    rst $38                                       ; $44D6: $FF
    ld a, c                                       ; $44D7: $79
    ld l, a                                       ; $44D8: $6F
    ld [hl], l                                    ; $44D9: $75
    inc l                                         ; $44DA: $2C
    jr nz, @+$75                                  ; $44DB: $20 $73

    ld l, c                                       ; $44DD: $69
    ld l, h                                       ; $44DE: $6C
    ld l, h                                       ; $44DF: $6C
    ld a, c                                       ; $44E0: $79
    cp $6D                                        ; $44E1: $FE $6D
    ld l, a                                       ; $44E3: $6F
    ld l, [hl]                                    ; $44E4: $6E
    ld [hl], e                                    ; $44E5: $73
    ld [hl], h                                    ; $44E6: $74
    ld h, l                                       ; $44E7: $65
    ld [hl], d                                    ; $44E8: $72
    ld [hl], e                                    ; $44E9: $73
    ccf                                           ; $44EA: $3F
    jr nz, jr_017_4536                            ; $44EB: $20 $49

    daa                                           ; $44ED: $27
    ld l, h                                       ; $44EE: $6C
    ld l, h                                       ; $44EF: $6C
    rst $38                                       ; $44F0: $FF
    ld [hl], e                                    ; $44F1: $73
    ld l, l                                       ; $44F2: $6D
    ld h, c                                       ; $44F3: $61
    ld [hl], e                                    ; $44F4: $73
    ld l, b                                       ; $44F5: $68
    jr nz, jr_017_4571                            ; $44F6: $20 $79

    ld l, a                                       ; $44F8: $6F
    ld [hl], l                                    ; $44F9: $75
    jr nz, jr_017_4565                            ; $44FA: $20 $69

    ld l, [hl]                                    ; $44FC: $6E
    ld [hl], h                                    ; $44FD: $74
    ld l, a                                       ; $44FE: $6F
    cp $6A                                        ; $44FF: $FE $6A
    ld [hl], l                                    ; $4501: $75
    ld l, c                                       ; $4502: $69
    ld h, e                                       ; $4503: $63
    ld a, c                                       ; $4504: $79
    jr nz, jr_017_456E                            ; $4505: $20 $67

    ld [hl], d                                    ; $4507: $72
    ld h, l                                       ; $4508: $65
    ld h, l                                       ; $4509: $65
    ld l, [hl]                                    ; $450A: $6E
    rst $38                                       ; $450B: $FF
    ld l, l                                       ; $450C: $6D
    ld h, l                                       ; $450D: $65
    ld h, c                                       ; $450E: $61
    ld [hl], h                                    ; $450F: $74
    ld h, d                                       ; $4510: $62
    ld h, c                                       ; $4511: $61
    ld l, h                                       ; $4512: $6C
    ld l, h                                       ; $4513: $6C
    ld [hl], e                                    ; $4514: $73
    ld hl, $57FE                                  ; $4515: $21 $FE $57
    ld l, b                                       ; $4518: $68
    ld h, l                                       ; $4519: $65
    ld [hl], d                                    ; $451A: $72
    ld h, l                                       ; $451B: $65
    daa                                           ; $451C: $27
    ld [hl], e                                    ; $451D: $73
    jr nz, @+$49                                  ; $451E: $20 $47

    ld [hl], d                                    ; $4520: $72
    ld [hl], l                                    ; $4521: $75
    ld l, e                                       ; $4522: $6B
    ccf                                           ; $4523: $3F
    cp $FD                                        ; $4524: $FE $FD
    sbc e                                         ; $4526: $9B
    xor b                                         ; $4527: $A8
    ld c, a                                       ; $4528: $4F
    sbc a                                         ; $4529: $9F
    ld c, c                                       ; $452A: $49
    daa                                           ; $452B: $27
    ld l, l                                       ; $452C: $6D
    jr nz, jr_017_45A1                            ; $452D: $20 $72

    ld l, c                                       ; $452F: $69
    ld h, a                                       ; $4530: $67
    ld l, b                                       ; $4531: $68
    ld [hl], h                                    ; $4532: $74
    jr nz, jr_017_459D                            ; $4533: $20 $68

jr_017_4535:
    ld h, l                                       ; $4535: $65

jr_017_4536:
    ld [hl], d                                    ; $4536: $72
    ld h, l                                       ; $4537: $65
    inc l                                         ; $4538: $2C
    rst $38                                       ; $4539: $FF
    ld b, a                                       ; $453A: $47
    ld l, a                                       ; $453B: $6F
    ld h, a                                       ; $453C: $67
    ld l, a                                       ; $453D: $6F
    ld [hl], d                                    ; $453E: $72
    ld l, $FE                                     ; $453F: $2E $FE
    db $FD                                        ; $4541: $FD
    sbc d                                         ; $4542: $9A
    ld e, b                                       ; $4543: $58
    ld bc, $1F42                                  ; $4544: $01 $42 $1F
    add hl, de                                    ; $4547: $19
    sbc e                                         ; $4548: $9B
    jr jr_017_4599                                ; $4549: $18 $4E

    sbc a                                         ; $454B: $9F
    ld c, b                                       ; $454C: $48
    ld b, c                                       ; $454D: $41
    ld hl, $5420                                  ; $454E: $21 $20 $54
    ld l, b                                       ; $4551: $68
    ld h, l                                       ; $4552: $65
    jr nz, jr_017_45BC                            ; $4553: $20 $67

    ld [hl], d                                    ; $4555: $72
    ld h, l                                       ; $4556: $65
    ld h, l                                       ; $4557: $65
    ld l, [hl]                                    ; $4558: $6E
    rst $38                                       ; $4559: $FF
    ld l, l                                       ; $455A: $6D
    ld l, a                                       ; $455B: $6F
    ld l, [hl]                                    ; $455C: $6E

Call_017_455D:
    ld [hl], e                                    ; $455D: $73
    ld [hl], h                                    ; $455E: $74
    ld h, l                                       ; $455F: $65
    ld [hl], d                                    ; $4560: $72
    ld [hl], e                                    ; $4561: $73
    jr nz, jr_017_45D6                            ; $4562: $20 $72

    ld h, c                                       ; $4564: $61

jr_017_4565:
    ld l, [hl]                                    ; $4565: $6E
    cp $61                                        ; $4566: $FE $61
    ld [hl], a                                    ; $4568: $77
    ld h, c                                       ; $4569: $61
    ld a, c                                       ; $456A: $79
    jr nz, jr_017_45D9                            ; $456B: $20 $6C

    ld l, c                                       ; $456D: $69

jr_017_456E:
    ld l, e                                       ; $456E: $6B
    ld h, l                                       ; $456F: $65
    rst $38                                       ; $4570: $FF

jr_017_4571:
    ld l, h                                       ; $4571: $6C
    ld l, c                                       ; $4572: $69
    ld [hl], h                                    ; $4573: $74
    ld [hl], h                                    ; $4574: $74
    ld l, h                                       ; $4575: $6C
    ld h, l                                       ; $4576: $65
    jr nz, jr_017_45EC                            ; $4577: $20 $73

    ld h, e                                       ; $4579: $63
    ld h, c                                       ; $457A: $61
    ld [hl], d                                    ; $457B: $72
    ld h, l                                       ; $457C: $65
    ld h, h                                       ; $457D: $64
    ld a, c                                       ; $457E: $79
    dec l                                         ; $457F: $2D
    cp $63                                        ; $4580: $FE $63
    ld h, c                                       ; $4582: $61
    ld [hl], h                                    ; $4583: $74
    ld [hl], e                                    ; $4584: $73
    ld hl, $FDFE                                  ; $4585: $21 $FE $FD
    sbc e                                         ; $4588: $9B
    xor b                                         ; $4589: $A8
    ld c, a                                       ; $458A: $4F
    sbc a                                         ; $458B: $9F
    ld e, c                                       ; $458C: $59
    ld h, l                                       ; $458D: $65
    ld h, c                                       ; $458E: $61
    ld l, b                                       ; $458F: $68
    jr nz, jr_017_4605                            ; $4590: $20 $73

    ld [hl], l                                    ; $4592: $75
    ld [hl], d                                    ; $4593: $72
    ld h, l                                       ; $4594: $65
    inc l                                         ; $4595: $2C
    rst $38                                       ; $4596: $FF
    ld [hl], h                                    ; $4597: $74
    ld l, b                                       ; $4598: $68

jr_017_4599:
    ld h, c                                       ; $4599: $61
    ld [hl], h                                    ; $459A: $74
    daa                                           ; $459B: $27
    ld [hl], e                                    ; $459C: $73

jr_017_459D:
    jr nz, @+$79                                  ; $459D: $20 $77

    ld l, b                                       ; $459F: $68
    ld h, c                                       ; $45A0: $61

jr_017_45A1:
    ld [hl], h                                    ; $45A1: $74
    cp $68                                        ; $45A2: $FE $68
    ld h, c                                       ; $45A4: $61
    ld [hl], b                                    ; $45A5: $70
    ld [hl], b                                    ; $45A6: $70
    ld h, l                                       ; $45A7: $65
    ld l, [hl]                                    ; $45A8: $6E
    ld h, l                                       ; $45A9: $65
    ld h, h                                       ; $45AA: $64
    ld l, $FE                                     ; $45AB: $2E $FE
    ld e, c                                       ; $45AD: $59
    ld l, a                                       ; $45AE: $6F
    ld [hl], l                                    ; $45AF: $75
    jr nz, jr_017_4625                            ; $45B0: $20 $73

    ld [hl], l                                    ; $45B2: $75
    ld [hl], d                                    ; $45B3: $72
    ld h, l                                       ; $45B4: $65
    jr nz, @+$6D                                  ; $45B5: $20 $6B

    ld l, [hl]                                    ; $45B7: $6E
    ld l, a                                       ; $45B8: $6F
    ld [hl], a                                    ; $45B9: $77
    rst $38                                       ; $45BA: $FF
    ld l, b                                       ; $45BB: $68

jr_017_45BC:
    ld l, a                                       ; $45BC: $6F
    ld [hl], a                                    ; $45BD: $77
    jr nz, jr_017_4634                            ; $45BE: $20 $74

    ld l, a                                       ; $45C0: $6F
    jr nz, jr_017_4630                            ; $45C1: $20 $6D

    ld h, c                                       ; $45C3: $61
    ld l, e                                       ; $45C4: $6B
    ld h, l                                       ; $45C5: $65
    cp $61                                        ; $45C6: $FE $61
    ld l, [hl]                                    ; $45C8: $6E
    jr nz, jr_017_4630                            ; $45C9: $20 $65

    ld l, [hl]                                    ; $45CB: $6E
    ld [hl], h                                    ; $45CC: $74
    ld [hl], d                                    ; $45CD: $72
    ld h, c                                       ; $45CE: $61
    ld l, [hl]                                    ; $45CF: $6E
    ld h, e                                       ; $45D0: $63
    ld h, l                                       ; $45D1: $65
    inc l                                         ; $45D2: $2C
    rst $38                                       ; $45D3: $FF
    ld h, h                                       ; $45D4: $64
    ld l, a                                       ; $45D5: $6F

jr_017_45D6:
    ld l, [hl]                                    ; $45D6: $6E
    daa                                           ; $45D7: $27
    ld [hl], h                                    ; $45D8: $74

jr_017_45D9:
    jr nz, jr_017_4654                            ; $45D9: $20 $79

    ld l, a                                       ; $45DB: $6F
    ld [hl], l                                    ; $45DC: $75
    ccf                                           ; $45DD: $3F
    cp $FD                                        ; $45DE: $FE $FD
    sbc d                                         ; $45E0: $9A
    ld e, b                                       ; $45E1: $58
    ld [bc], a                                    ; $45E2: $02
    ld b, d                                       ; $45E3: $42
    sbc e                                         ; $45E4: $9B
    jr jr_017_4635                                ; $45E5: $18 $4E

    sbc a                                         ; $45E7: $9F
    ld b, h                                       ; $45E8: $44
    ld l, a                                       ; $45E9: $6F
    ld l, a                                       ; $45EA: $6F
    ld [hl], d                                    ; $45EB: $72

jr_017_45EC:
    inc l                                         ; $45EC: $2C
    jr nz, jr_017_465C                            ; $45ED: $20 $6D

    ld l, a                                       ; $45EF: $6F
    ld l, [hl]                                    ; $45F0: $6E
    ld [hl], e                                    ; $45F1: $73
    ld [hl], h                                    ; $45F2: $74
    ld h, l                                       ; $45F3: $65
    ld [hl], d                                    ; $45F4: $72
    inc l                                         ; $45F5: $2C
    cp $74                                        ; $45F6: $FE $74
    ld l, a                                       ; $45F8: $6F
    ld h, [hl]                                    ; $45F9: $66
    ld [hl], l                                    ; $45FA: $75
    inc l                                         ; $45FB: $2C
    jr nz, jr_017_4667                            ; $45FC: $20 $69

    ld [hl], h                                    ; $45FE: $74
    jr nz, jr_017_4673                            ; $45FF: $20 $72

    ld h, l                                       ; $4601: $65
    ld h, c                                       ; $4602: $61
    ld l, h                                       ; $4603: $6C
    ld l, h                                       ; $4604: $6C

jr_017_4605:
    ld a, c                                       ; $4605: $79
    rst $38                                       ; $4606: $FF
    ld h, h                                       ; $4607: $64
    ld l, a                                       ; $4608: $6F
    ld h, l                                       ; $4609: $65
    ld [hl], e                                    ; $460A: $73
    ld l, [hl]                                    ; $460B: $6E
    daa                                           ; $460C: $27
    ld [hl], h                                    ; $460D: $74
    jr nz, jr_017_467D                            ; $460E: $20 $6D

    ld h, c                                       ; $4610: $61
    ld [hl], h                                    ; $4611: $74
    ld [hl], h                                    ; $4612: $74
    ld h, l                                       ; $4613: $65
    ld [hl], d                                    ; $4614: $72
    cp $77                                        ; $4615: $FE $77
    ld l, b                                       ; $4617: $68
    ld h, c                                       ; $4618: $61
    ld [hl], h                                    ; $4619: $74
    jr nz, jr_017_4665                            ; $461A: $20 $49

    jr nz, jr_017_4686                            ; $461C: $20 $68

    ld h, c                                       ; $461E: $61
    halt                                          ; $461F: $76
    ld h, l                                       ; $4620: $65
    jr nz, jr_017_4697                            ; $4621: $20 $74

    ld l, a                                       ; $4623: $6F
    rst $38                                       ; $4624: $FF

jr_017_4625:
    ld [hl], e                                    ; $4625: $73
    ld l, l                                       ; $4626: $6D
    ld h, c                                       ; $4627: $61
    ld [hl], e                                    ; $4628: $73
    ld l, b                                       ; $4629: $68
    ld hl, $4720                                  ; $462A: $21 $20 $47
    ld l, a                                       ; $462D: $6F
    ld h, a                                       ; $462E: $67
    ld l, a                                       ; $462F: $6F

jr_017_4630:
    ld [hl], d                                    ; $4630: $72
    cp $68                                        ; $4631: $FE $68
    ld h, c                                       ; $4633: $61

jr_017_4634:
    ld [hl], e                                    ; $4634: $73

jr_017_4635:
    jr nz, jr_017_469A                            ; $4635: $20 $63

    ld l, a                                       ; $4637: $6F
    ld l, l                                       ; $4638: $6D
    ld [hl], b                                    ; $4639: $70
    ld l, h                                       ; $463A: $6C
    ld h, l                                       ; $463B: $65
    ld [hl], h                                    ; $463C: $74
    ld h, l                                       ; $463D: $65
    ld h, h                                       ; $463E: $64
    rst $38                                       ; $463F: $FF
    ld l, b                                       ; $4640: $68
    ld l, c                                       ; $4641: $69
    ld [hl], e                                    ; $4642: $73
    jr nz, jr_017_46B2                            ; $4643: $20 $6D

    ld l, c                                       ; $4645: $69
    ld [hl], e                                    ; $4646: $73
    ld [hl], e                                    ; $4647: $73
    ld l, c                                       ; $4648: $69
    ld l, a                                       ; $4649: $6F
    ld l, [hl]                                    ; $464A: $6E
    ld hl, $FDFE                                  ; $464B: $21 $FE $FD
    sbc e                                         ; $464E: $9B
    xor b                                         ; $464F: $A8
    ld c, a                                       ; $4650: $4F
    sbc a                                         ; $4651: $9F
    ld c, b                                       ; $4652: $48
    ld h, c                                       ; $4653: $61

jr_017_4654:
    jr nz, jr_017_46BE                            ; $4654: $20 $68

    ld h, c                                       ; $4656: $61
    ld l, $20                                     ; $4657: $2E $20
    ld e, c                                       ; $4659: $59
    ld l, a                                       ; $465A: $6F
    ld [hl], l                                    ; $465B: $75

jr_017_465C:
    daa                                           ; $465C: $27
    ld [hl], d                                    ; $465D: $72
    ld h, l                                       ; $465E: $65
    rst $38                                       ; $465F: $FF
    ld [hl], e                                    ; $4660: $73
    ld l, a                                       ; $4661: $6F
    jr nz, jr_017_46DB                            ; $4662: $20 $77

    ld h, l                                       ; $4664: $65

jr_017_4665:
    ld l, c                                       ; $4665: $69
    ld [hl], d                                    ; $4666: $72

jr_017_4667:
    ld h, h                                       ; $4667: $64
    ld l, $FE                                     ; $4668: $2E $FE
    db $FD                                        ; $466A: $FD
    sbc e                                         ; $466B: $9B
    jr @+$50                                      ; $466C: $18 $4E

    sbc a                                         ; $466E: $9F
    ld c, c                                       ; $466F: $49
    jr nz, jr_017_46D3                            ; $4670: $20 $61

    ld l, l                                       ; $4672: $6D

jr_017_4673:
    jr nz, jr_017_46DA                            ; $4673: $20 $65

    ld a, b                                       ; $4675: $78
    ld [hl], b                                    ; $4676: $70
    ld l, h                                       ; $4677: $6C
    ld l, a                                       ; $4678: $6F
    ld h, h                                       ; $4679: $64
    ld l, c                                       ; $467A: $69
    ld l, [hl]                                    ; $467B: $6E
    ld h, a                                       ; $467C: $67

jr_017_467D:
    rst $38                                       ; $467D: $FF
    ld [hl], a                                    ; $467E: $77
    ld l, c                                       ; $467F: $69
    ld [hl], h                                    ; $4680: $74
    ld l, b                                       ; $4681: $68
    jr nz, @+$66                                  ; $4682: $20 $64

    ld h, l                                       ; $4684: $65
    ld l, h                                       ; $4685: $6C

jr_017_4686:
    ld l, c                                       ; $4686: $69
    ld h, a                                       ; $4687: $67
    ld l, b                                       ; $4688: $68
    ld [hl], h                                    ; $4689: $74
    ld hl, $FDFE                                  ; $468A: $21 $FE $FD
    sbc d                                         ; $468D: $9A
    ld e, b                                       ; $468E: $58
    inc bc                                        ; $468F: $03
    ld b, d                                       ; $4690: $42
    sbc e                                         ; $4691: $9B
    ld a, b                                       ; $4692: $78
    ld [hl], b                                    ; $4693: $70
    sbc a                                         ; $4694: $9F
    ld b, l                                       ; $4695: $45
    ld a, b                                       ; $4696: $78

jr_017_4697:
    ld h, e                                       ; $4697: $63
    ld [hl], l                                    ; $4698: $75
    ld [hl], e                                    ; $4699: $73

jr_017_469A:
    ld h, l                                       ; $469A: $65
    jr nz, jr_017_470A                            ; $469B: $20 $6D

    ld h, l                                       ; $469D: $65
    inc l                                         ; $469E: $2C
    rst $38                                       ; $469F: $FF
    ld h, d                                       ; $46A0: $62
    ld [hl], l                                    ; $46A1: $75
    ld [hl], h                                    ; $46A2: $74
    jr nz, jr_017_4718                            ; $46A3: $20 $73

    ld l, b                                       ; $46A5: $68
    ld l, a                                       ; $46A6: $6F
    ld [hl], l                                    ; $46A7: $75
    ld l, h                                       ; $46A8: $6C
    ld h, h                                       ; $46A9: $64
    ld l, [hl]                                    ; $46AA: $6E
    daa                                           ; $46AB: $27
    ld [hl], h                                    ; $46AC: $74
    cp $77                                        ; $46AD: $FE $77
    ld h, l                                       ; $46AF: $65
    jr nz, @+$69                                  ; $46B0: $20 $67

jr_017_46B2:
    ld l, a                                       ; $46B2: $6F
    jr nz, jr_017_4717                            ; $46B3: $20 $62

    ld h, c                                       ; $46B5: $61
    ld h, e                                       ; $46B6: $63
    ld l, e                                       ; $46B7: $6B
    rst $38                                       ; $46B8: $FF
    ld [hl], h                                    ; $46B9: $74
    ld l, a                                       ; $46BA: $6F
    jr nz, jr_017_4731                            ; $46BB: $20 $74

    ld l, a                                       ; $46BD: $6F

jr_017_46BE:
    ld [hl], a                                    ; $46BE: $77
    ld l, [hl]                                    ; $46BF: $6E
    jr nz, jr_017_4730                            ; $46C0: $20 $6E

    ld l, a                                       ; $46C2: $6F
    ld [hl], a                                    ; $46C3: $77
    ccf                                           ; $46C4: $3F
    cp $FD                                        ; $46C5: $FE $FD
    sbc d                                         ; $46C7: $9A
    ld e, b                                       ; $46C8: $58
    inc b                                         ; $46C9: $04
    ld b, d                                       ; $46CA: $42
    sbc e                                         ; $46CB: $9B
    xor b                                         ; $46CC: $A8
    ld c, a                                       ; $46CD: $4F
    sbc a                                         ; $46CE: $9F
    ld b, a                                       ; $46CF: $47
    ld l, a                                       ; $46D0: $6F
    ld l, a                                       ; $46D1: $6F
    ld h, h                                       ; $46D2: $64

jr_017_46D3:
    jr nz, @+$6B                                  ; $46D3: $20 $69

    ld h, h                                       ; $46D5: $64
    ld h, l                                       ; $46D6: $65
    ld h, c                                       ; $46D7: $61
    ld l, $FE                                     ; $46D8: $2E $FE

jr_017_46DA:
    ld c, a                                       ; $46DA: $4F

jr_017_46DB:
    ld l, b                                       ; $46DB: $68
    inc l                                         ; $46DC: $2C
    jr nz, jr_017_4748                            ; $46DD: $20 $69

    ld [hl], h                                    ; $46DF: $74
    daa                                           ; $46E0: $27
    ld [hl], e                                    ; $46E1: $73
    jr nz, jr_017_475D                            ; $46E2: $20 $79

    ld l, a                                       ; $46E4: $6F
    ld [hl], l                                    ; $46E5: $75
    ld hl, $48FE                                  ; $46E6: $21 $FE $48
    ld l, c                                       ; $46E9: $69
    inc l                                         ; $46EA: $2C
    jr nz, jr_017_4762                            ; $46EB: $20 $75

    ld l, l                                       ; $46ED: $6D
    ld l, $2E                                     ; $46EE: $2E $2E
    ld l, $FE                                     ; $46F0: $2E $FE
    db $FD                                        ; $46F2: $FD
    sbc e                                         ; $46F3: $9B
    ld a, b                                       ; $46F4: $78
    ld [hl], b                                    ; $46F5: $70
    sbc a                                         ; $46F6: $9F
    ld d, h                                       ; $46F7: $54
    ld l, a                                       ; $46F8: $6F
    ld l, [hl]                                    ; $46F9: $6E
    ld a, c                                       ; $46FA: $79
    ld l, $FE                                     ; $46FB: $2E $FE
    db $FD                                        ; $46FD: $FD
    sbc e                                         ; $46FE: $9B
    xor b                                         ; $46FF: $A8
    ld c, a                                       ; $4700: $4F
    sbc a                                         ; $4701: $9F
    ld c, b                                       ; $4702: $48
    ld l, c                                       ; $4703: $69
    inc l                                         ; $4704: $2C
    jr nz, @+$56                                  ; $4705: $20 $54

    ld l, a                                       ; $4707: $6F
    ld l, [hl]                                    ; $4708: $6E
    ld a, c                                       ; $4709: $79

jr_017_470A:
    ld hl, $4420                                  ; $470A: $21 $20 $44
    ld l, c                                       ; $470D: $69
    ld h, h                                       ; $470E: $64
    rst $38                                       ; $470F: $FF
    ld a, c                                       ; $4710: $79
    ld l, a                                       ; $4711: $6F
    ld [hl], l                                    ; $4712: $75
    jr nz, jr_017_477B                            ; $4713: $20 $66

    ld l, c                                       ; $4715: $69
    ld l, [hl]                                    ; $4716: $6E

jr_017_4717:
    ld h, h                                       ; $4717: $64

jr_017_4718:
    jr nz, jr_017_4789                            ; $4718: $20 $6F

    ld [hl], l                                    ; $471A: $75
    ld [hl], h                                    ; $471B: $74
    cp $77                                        ; $471C: $FE $77
    ld l, b                                       ; $471E: $68
    ld h, c                                       ; $471F: $61
    ld [hl], h                                    ; $4720: $74
    jr nz, jr_017_479A                            ; $4721: $20 $77

    ld h, c                                       ; $4723: $61
    ld [hl], e                                    ; $4724: $73
    jr nz, jr_017_4790                            ; $4725: $20 $69

    ld l, [hl]                                    ; $4727: $6E
    jr nz, jr_017_4797                            ; $4728: $20 $6D

    ld a, c                                       ; $472A: $79
    rst $38                                       ; $472B: $FF
    ld h, d                                       ; $472C: $62
    ld h, c                                       ; $472D: $61
    ld [hl], e                                    ; $472E: $73
    ld h, l                                       ; $472F: $65

jr_017_4730:
    ld l, l                                       ; $4730: $6D

jr_017_4731:
    ld h, l                                       ; $4731: $65
    ld l, [hl]                                    ; $4732: $6E
    ld [hl], h                                    ; $4733: $74
    ccf                                           ; $4734: $3F
    cp $FD                                        ; $4735: $FE $FD
    sbc e                                         ; $4737: $9B
    ld a, b                                       ; $4738: $78
    ld [hl], b                                    ; $4739: $70
    sbc a                                         ; $473A: $9F
    ld d, l                                       ; $473B: $55
    ld l, b                                       ; $473C: $68
    ld l, $2E                                     ; $473D: $2E $2E
    ld l, $FE                                     ; $473F: $2E $FE
    db $FD                                        ; $4741: $FD
    sbc e                                         ; $4742: $9B
    xor b                                         ; $4743: $A8
    ld c, a                                       ; $4744: $4F
    sbc a                                         ; $4745: $9F
    ld c, d                                       ; $4746: $4A
    ld [hl], l                                    ; $4747: $75

jr_017_4748:
    ld [hl], e                                    ; $4748: $73
    ld [hl], h                                    ; $4749: $74
    jr nz, jr_017_47B7                            ; $474A: $20 $6B

    ld l, c                                       ; $474C: $69
    ld h, h                                       ; $474D: $64
    ld h, h                                       ; $474E: $64
    ld l, c                                       ; $474F: $69
    ld l, [hl]                                    ; $4750: $6E
    ld h, a                                       ; $4751: $67
    ld hl, $49FE                                  ; $4752: $21 $FE $49
    ld [hl], h                                    ; $4755: $74
    jr nz, jr_017_47CF                            ; $4756: $20 $77

    ld h, c                                       ; $4758: $61
    ld [hl], e                                    ; $4759: $73
    jr nz, jr_017_47CC                            ; $475A: $20 $70

    ld [hl], d                                    ; $475C: $72

jr_017_475D:
    ld l, a                                       ; $475D: $6F
    ld h, d                                       ; $475E: $62
    ld h, c                                       ; $475F: $61
    ld h, d                                       ; $4760: $62
    ld l, h                                       ; $4761: $6C

jr_017_4762:
    ld a, c                                       ; $4762: $79
    rst $38                                       ; $4763: $FF
    ld l, d                                       ; $4764: $6A
    ld [hl], l                                    ; $4765: $75
    ld [hl], e                                    ; $4766: $73
    ld [hl], h                                    ; $4767: $74
    jr nz, jr_017_47DE                            ; $4768: $20 $74

    ld l, b                                       ; $476A: $68
    ld l, a                                       ; $476B: $6F
    ld [hl], e                                    ; $476C: $73
    ld h, l                                       ; $476D: $65
    jr nz, jr_017_47E4                            ; $476E: $20 $74

    ld [hl], a                                    ; $4770: $77
    ld l, a                                       ; $4771: $6F
    cp $67                                        ; $4772: $FE $67
    ld [hl], l                                    ; $4774: $75
    ld a, c                                       ; $4775: $79
    ld [hl], e                                    ; $4776: $73
    jr nz, jr_017_47ED                            ; $4777: $20 $74

    ld l, b                                       ; $4779: $68
    ld h, c                                       ; $477A: $61

jr_017_477B:
    ld [hl], h                                    ; $477B: $74
    rst $38                                       ; $477C: $FF
    ld l, e                                       ; $477D: $6B
    ld l, c                                       ; $477E: $69
    ld h, h                                       ; $477F: $64
    ld l, [hl]                                    ; $4780: $6E
    ld h, c                                       ; $4781: $61
    ld [hl], b                                    ; $4782: $70
    ld [hl], b                                    ; $4783: $70
    ld h, l                                       ; $4784: $65
    ld h, h                                       ; $4785: $64
    jr nz, jr_017_47F5                            ; $4786: $20 $6D

    ld h, l                                       ; $4788: $65

jr_017_4789:
    ld l, $FE                                     ; $4789: $2E $FE
    ld c, c                                       ; $478B: $49
    jr nz, jr_017_4801                            ; $478C: $20 $73

    ld l, b                                       ; $478E: $68
    ld l, a                                       ; $478F: $6F

jr_017_4790:
    ld [hl], l                                    ; $4790: $75
    ld l, h                                       ; $4791: $6C
    ld h, h                                       ; $4792: $64
    jr nz, jr_017_47F7                            ; $4793: $20 $62

    ld h, l                                       ; $4795: $65
    rst $38                                       ; $4796: $FF

jr_017_4797:
    ld h, c                                       ; $4797: $61
    ld h, d                                       ; $4798: $62
    ld l, h                                       ; $4799: $6C

jr_017_479A:
    ld h, l                                       ; $479A: $65
    jr nz, jr_017_4811                            ; $479B: $20 $74

    ld l, a                                       ; $479D: $6F
    jr nz, jr_017_4812                            ; $479E: $20 $72

    ld h, l                                       ; $47A0: $65
    ld [hl], e                                    ; $47A1: $73
    ld [hl], h                                    ; $47A2: $74
    cp $6D                                        ; $47A3: $FE $6D
    ld l, a                                       ; $47A5: $6F
    ld [hl], d                                    ; $47A6: $72
    ld h, l                                       ; $47A7: $65
    jr nz, jr_017_480F                            ; $47A8: $20 $65

    ld h, c                                       ; $47AA: $61
    ld [hl], e                                    ; $47AB: $73
    ld l, c                                       ; $47AC: $69
    ld l, h                                       ; $47AD: $6C
    ld a, c                                       ; $47AE: $79
    jr nz, jr_017_481F                            ; $47AF: $20 $6E

    ld l, a                                       ; $47B1: $6F
    ld [hl], a                                    ; $47B2: $77
    rst $38                                       ; $47B3: $FF
    ld [hl], h                                    ; $47B4: $74
    ld l, b                                       ; $47B5: $68
    ld h, c                                       ; $47B6: $61

jr_017_47B7:
    ld [hl], h                                    ; $47B7: $74
    jr nz, jr_017_482E                            ; $47B8: $20 $74

    ld l, b                                       ; $47BA: $68
    ld h, l                                       ; $47BB: $65
    ld a, c                                       ; $47BC: $79
    daa                                           ; $47BD: $27
    ld [hl], d                                    ; $47BE: $72
    ld h, l                                       ; $47BF: $65
    cp $67                                        ; $47C0: $FE $67
    ld l, a                                       ; $47C2: $6F
    ld l, [hl]                                    ; $47C3: $6E
    ld h, l                                       ; $47C4: $65
    ld l, $20                                     ; $47C5: $2E $20
    ld c, h                                       ; $47C7: $4C
    ld h, l                                       ; $47C8: $65
    ld [hl], h                                    ; $47C9: $74
    daa                                           ; $47CA: $27
    ld [hl], e                                    ; $47CB: $73

jr_017_47CC:
    jr nz, jr_017_4835                            ; $47CC: $20 $67

    ld l, a                                       ; $47CE: $6F

jr_017_47CF:
    ld hl, $FDFE                                  ; $47CF: $21 $FE $FD
    sbc d                                         ; $47D2: $9A
    inc h                                         ; $47D3: $24
    ld d, b                                       ; $47D4: $50
    ld e, b                                       ; $47D5: $58
    dec b                                         ; $47D6: $05
    ld b, d                                       ; $47D7: $42
    ld b, e                                       ; $47D8: $43
    ld [$010F], sp                                ; $47D9: $08 $0F $01
    or e                                          ; $47DC: $B3
    and d                                         ; $47DD: $A2

jr_017_47DE:
    dec b                                         ; $47DE: $05
    ld bc, $0413                                  ; $47DF: $01 $13 $04
    dec b                                         ; $47E2: $05
    rrca                                          ; $47E3: $0F

jr_017_47E4:
    rla                                           ; $47E4: $17
    ld c, c                                       ; $47E5: $49
    ld c, d                                       ; $47E6: $4A
    ld b, e                                       ; $47E7: $43
    ld [$010F], sp                                ; $47E8: $08 $0F $01
    or e                                          ; $47EB: $B3
    and d                                         ; $47EC: $A2

jr_017_47ED:
    dec b                                         ; $47ED: $05
    ld [bc], a                                    ; $47EE: $02
    inc de                                        ; $47EF: $13
    inc b                                         ; $47F0: $04
    dec b                                         ; $47F1: $05
    rrca                                          ; $47F2: $0F
    rla                                           ; $47F3: $17
    ld c, c                                       ; $47F4: $49

jr_017_47F5:
    ld c, d                                       ; $47F5: $4A
    sub e                                         ; $47F6: $93

jr_017_47F7:
    ld h, l                                       ; $47F7: $65
    ld l, h                                       ; $47F8: $6C
    ld c, h                                       ; $47F9: $4C
    ld c, a                                       ; $47FA: $4F
    ld b, e                                       ; $47FB: $43
    inc de                                        ; $47FC: $13
    ld bc, $A2B3                                  ; $47FD: $01 $B3 $A2
    dec b                                         ; $4800: $05

jr_017_4801:
    ld [bc], a                                    ; $4801: $02
    rla                                           ; $4802: $17
    add hl, bc                                    ; $4803: $09
    ld c, b                                       ; $4804: $48
    ld h, l                                       ; $4805: $65
    ld a, e                                       ; $4806: $7B
    ld c, h                                       ; $4807: $4C
    ld c, a                                       ; $4808: $4F
    ld h, h                                       ; $4809: $64
    ld sp, $6950                                  ; $480A: $31 $50 $69
    ld a, [hl-]                                   ; $480D: $3A
    ld d, b                                       ; $480E: $50

jr_017_480F:
    ld h, [hl]                                    ; $480F: $66
    ret nz                                        ; $4810: $C0

jr_017_4811:
    ld e, h                                       ; $4811: $5C

jr_017_4812:
    ld hl, $0005                                  ; $4812: $21 $05 $00
    add c                                         ; $4815: $81
    ld e, l                                       ; $4816: $5D
    dec b                                         ; $4817: $05
    dec b                                         ; $4818: $05

jr_017_4819:
    ld l, c                                       ; $4819: $69
    ret nc                                        ; $481A: $D0

    nop                                           ; $481B: $00
    jr nz, jr_017_4819                            ; $481C: $20 $FB

    ld d, b                                       ; $481E: $50

jr_017_481F:
    ld [hl+], a                                   ; $481F: $22
    dec b                                         ; $4820: $05
    ld b, b                                       ; $4821: $40
    dec bc                                        ; $4822: $0B
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    add d                                         ; $4825: $82
    rra                                           ; $4826: $1F
    ld de, $4394                                  ; $4827: $11 $94 $43
    inc de                                        ; $482A: $13
    inc b                                         ; $482B: $04
    dec b                                         ; $482C: $05
    rlca                                          ; $482D: $07

jr_017_482E:
    rla                                           ; $482E: $17
    ld c, c                                       ; $482F: $49
    ld c, b                                       ; $4830: $48
    ld b, e                                       ; $4831: $43
    ld [$040F], sp                                ; $4832: $08 $0F $04

jr_017_4835:
    dec b                                         ; $4835: $05
    rlca                                          ; $4836: $07
    inc de                                        ; $4837: $13
    ld bc, $A224                                  ; $4838: $01 $24 $A2
    dec b                                         ; $483B: $05
    ld b, $17                                     ; $483C: $06 $17
    ld c, c                                       ; $483E: $49
    ld c, b                                       ; $483F: $48
    ld a, [hl]                                    ; $4840: $7E
    nop                                           ; $4841: $00
    ret nc                                        ; $4842: $D0

    ld [bc], a                                    ; $4843: $02
    inc bc                                        ; $4844: $03
    xor d                                         ; $4845: $AA
    ret nc                                        ; $4846: $D0

    ld [$420A], sp                                ; $4847: $08 $0A $42
    xor h                                         ; $484A: $AC
    inc h                                         ; $484B: $24
    and d                                         ; $484C: $A2
    ld b, $93                                     ; $484D: $06 $93
    ld h, l                                       ; $484F: $65
    ld l, h                                       ; $4850: $6C
    ld c, h                                       ; $4851: $4C
    ld c, a                                       ; $4852: $4F
    ld h, h                                       ; $4853: $64
    ld sp, $6950                                  ; $4854: $31 $50 $69
    ld a, [hl-]                                   ; $4857: $3A
    ld d, b                                       ; $4858: $50
    ld h, [hl]                                    ; $4859: $66
    ret nz                                        ; $485A: $C0

    ld e, h                                       ; $485B: $5C
    ld hl, $0005                                  ; $485C: $21 $05 $00
    ld l, e                                       ; $485F: $6B
    ld c, d                                       ; $4860: $4A
    db $10                                        ; $4861: $10
    db $10                                        ; $4862: $10
    ld d, b                                       ; $4863: $50
    pop de                                        ; $4864: $D1
    nop                                           ; $4865: $00
    rla                                           ; $4866: $17
    or [hl]                                       ; $4867: $B6
    ld c, b                                       ; $4868: $48
    ld [hl+], a                                   ; $4869: $22
    dec b                                         ; $486A: $05
    ld b, b                                       ; $486B: $40
    dec b                                         ; $486C: $05
    ld [bc], a                                    ; $486D: $02
    ld l, e                                       ; $486E: $6B
    ld c, d                                       ; $486F: $4A
    dec c                                         ; $4870: $0D
    rrca                                          ; $4871: $0F

jr_017_4872:
    add hl, sp                                    ; $4872: $39
    pop de                                        ; $4873: $D1
    nop                                           ; $4874: $00
    rla                                           ; $4875: $17
    inc h                                         ; $4876: $24
    ld c, c                                       ; $4877: $49
    ld [hl+], a                                   ; $4878: $22
    dec b                                         ; $4879: $05
    ld b, b                                       ; $487A: $40
    dec b                                         ; $487B: $05
    inc bc                                        ; $487C: $03
    ld l, e                                       ; $487D: $6B
    ld c, d                                       ; $487E: $4A
    add hl, bc                                    ; $487F: $09
    dec b                                         ; $4880: $05
    ld l, l                                       ; $4881: $6D
    ret nc                                        ; $4882: $D0

    ld [hl], $17                                  ; $4883: $36 $17
    add hl, bc                                    ; $4885: $09
    ld c, d                                       ; $4886: $4A
    ld [hl+], a                                   ; $4887: $22
    dec b                                         ; $4888: $05
    ld b, b                                       ; $4889: $40

jr_017_488A:
    ld l, e                                       ; $488A: $6B
    ld [hl], $0A                                  ; $488B: $36 $0A
    db $10                                        ; $488D: $10
    ld d, c                                       ; $488E: $51
    nop                                           ; $488F: $00
    add b                                         ; $4890: $80
    nop                                           ; $4891: $00

jr_017_4892:
    ld l, e                                       ; $4892: $6B
    add hl, hl                                    ; $4893: $29
    ld a, [bc]                                    ; $4894: $0A
    ld [hl], b                                    ; $4895: $70
    ld d, h                                       ; $4896: $54
    ld h, b                                       ; $4897: $60
    add e                                         ; $4898: $83
    nop                                           ; $4899: $00
    dec bc                                        ; $489A: $0B
    nop                                           ; $489B: $00
    dec bc                                        ; $489C: $0B
    ld [bc], a                                    ; $489D: $02
    dec bc                                        ; $489E: $0B
    inc bc                                        ; $489F: $03
    add d                                         ; $48A0: $82
    rra                                           ; $48A1: $1F

jr_017_48A2:
    ld de, $6094                                  ; $48A2: $11 $94 $60
    ld bc, $3040                                  ; $48A5: $01 $40 $30
    ld e, d                                       ; $48A8: $5A
    inc d                                         ; $48A9: $14

jr_017_48AA:
    ld b, b                                       ; $48AA: $40
    ld d, l                                       ; $48AB: $55
    ld a, [hl]                                    ; $48AC: $7E
    nop                                           ; $48AD: $00
    ret nc                                        ; $48AE: $D0

    ld [bc], a                                    ; $48AF: $02
    inc bc                                        ; $48B0: $03
    xor d                                         ; $48B1: $AA
    ret nc                                        ; $48B2: $D0

    ld [$420A], sp                                ; $48B3: $08 $0A $42
    ld d, $20                                     ; $48B6: $16 $20
    ret                                           ; $48B8: $C9


    ld d, b                                       ; $48B9: $50
    stop                                          ; $48BA: $10 $00
    nop                                           ; $48BC: $00
    jr nz, jr_017_4872                            ; $48BD: $20 $B3

    ld c, a                                       ; $48BF: $4F

jr_017_48C0:
    stop                                          ; $48C0: $10 $00
    nop                                           ; $48C2: $00
    jr nz, jr_017_48A2                            ; $48C3: $20 $DD

    ld c, a                                       ; $48C5: $4F
    jr nc, @+$01                                  ; $48C6: $30 $FF

    nop                                           ; $48C8: $00
    jr nz, jr_017_488A                            ; $48C9: $20 $BF

    ld d, b                                       ; $48CB: $50
    db $10                                        ; $48CC: $10
    rst $38                                       ; $48CD: $FF
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    inc d                                         ; $48D0: $14

jr_017_48D1:
    jr nz, jr_017_4892                            ; $48D1: $20 $BF

    ld d, b                                       ; $48D3: $50
    ld e, h                                       ; $48D4: $5C
    nop                                           ; $48D5: $00
    ld [bc], a                                    ; $48D6: $02
    dec d                                         ; $48D7: $15
    jr nz, @-$17                                  ; $48D8: $20 $E7

    ld d, b                                       ; $48DA: $50
    jr nc, jr_017_48FD                            ; $48DB: $30 $20

    cp a                                          ; $48DD: $BF
    ld d, b                                       ; $48DE: $50

jr_017_48DF:
    jr nz, @+$22                                  ; $48DF: $20 $20

    db $D3                                        ; $48E1: $D3
    ld d, b                                       ; $48E2: $50
    jr nc, jr_017_4905                            ; $48E3: $30 $20

    cp a                                          ; $48E5: $BF
    ld d, b                                       ; $48E6: $50
    db $10                                        ; $48E7: $10
    jr nz, jr_017_48D1                            ; $48E8: $20 $E7

    ld d, b                                       ; $48EA: $50
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    ld e, h                                       ; $48ED: $5C
    ld bc, $1603                                  ; $48EE: $01 $03 $16
    jr nz, jr_017_496A                            ; $48F1: $20 $77

    ld d, b                                       ; $48F3: $50
    stop                                          ; $48F4: $10 $00
    nop                                           ; $48F6: $00
    jr nz, jr_017_4946                            ; $48F7: $20 $4D

    ld d, b                                       ; $48F9: $50
    jr z, jr_017_48FC                             ; $48FA: $28 $00

jr_017_48FC:
    rst $38                                       ; $48FC: $FF

jr_017_48FD:
    jr nz, jr_017_48AA                            ; $48FD: $20 $AB

    ld d, b                                       ; $48FF: $50
    jr z, jr_017_4902                             ; $4900: $28 $00

jr_017_4902:
    rst $38                                       ; $4902: $FF
    nop                                           ; $4903: $00
    ld h, d                                       ; $4904: $62

jr_017_4905:
    inc bc                                        ; $4905: $03
    ld e, e                                       ; $4906: $5B
    rla                                           ; $4907: $17
    sub c                                         ; $4908: $91

jr_017_4909:
    ld b, [hl]                                    ; $4909: $46
    dec d                                         ; $490A: $15
    jr nz, jr_017_48C0                            ; $490B: $20 $B3

    ld c, a                                       ; $490D: $4F
    jr nc, jr_017_4930                            ; $490E: $30 $20

    rst $20                                       ; $4910: $E7
    ld d, b                                       ; $4911: $50
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    ld h, d                                       ; $4914: $62
    dec b                                         ; $4915: $05
    ld e, h                                       ; $4916: $5C
    ld [bc], a                                    ; $4917: $02
    inc bc                                        ; $4918: $03
    dec d                                         ; $4919: $15
    jr nz, jr_017_4909                            ; $491A: $20 $ED

    ld c, a                                       ; $491C: $4F
    db $10                                        ; $491D: $10
    jr nz, jr_017_48DF                            ; $491E: $20 $BF

    ld d, b                                       ; $4920: $50
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    ld b, d                                       ; $4923: $42
    dec d                                         ; $4924: $15
    ld c, $B0                                     ; $4925: $0E $B0
    ld h, e                                       ; $4927: $63
    db $10                                        ; $4928: $10
    ld c, $D0                                     ; $4929: $0E $D0
    ld h, e                                       ; $492B: $63
    nop                                           ; $492C: $00
    nop                                           ; $492D: $00
    ld e, h                                       ; $492E: $5C
    nop                                           ; $492F: $00

jr_017_4930:
    ld [bc], a                                    ; $4930: $02
    add e                                         ; $4931: $83
    jr nc, jr_017_4934                            ; $4932: $30 $00

jr_017_4934:
    rst $38                                       ; $4934: $FF
    nop                                           ; $4935: $00
    dec d                                         ; $4936: $15
    ld c, $60                                     ; $4937: $0E $60
    ld h, e                                       ; $4939: $63
    db $10                                        ; $493A: $10
    ld c, $D0                                     ; $493B: $0E $D0
    ld h, e                                       ; $493D: $63
    db $10                                        ; $493E: $10
    ld c, $60                                     ; $493F: $0E $60
    ld h, e                                       ; $4941: $63
    db $10                                        ; $4942: $10
    ld c, $D0                                     ; $4943: $0E $D0
    ld h, e                                       ; $4945: $63

jr_017_4946:
    jr nz, jr_017_4948                            ; $4946: $20 $00

jr_017_4948:
    ld d, [hl]                                    ; $4948: $56
    ld bc, $0E15                                  ; $4949: $01 $15 $0E
    sub b                                         ; $494C: $90
    ld h, e                                       ; $494D: $63
    jr c, jr_017_4950                             ; $494E: $38 $00

jr_017_4950:
    ld e, h                                       ; $4950: $5C
    ld bc, $1903                                  ; $4951: $01 $03 $19
    ld b, b                                       ; $4954: $40
    jr nz, @+$17                                  ; $4955: $20 $15

    ld c, $EE                                     ; $4957: $0E $EE
    ld h, e                                       ; $4959: $63
    ld [$DA0E], sp                                ; $495A: $08 $0E $DA
    ld h, e                                       ; $495D: $63
    ld [$0C0E], sp                                ; $495E: $08 $0E $0C
    ld h, h                                       ; $4961: $64
    ld [$E40E], sp                                ; $4962: $08 $0E $E4
    ld h, e                                       ; $4965: $63
    ld [$EE0E], sp                                ; $4966: $08 $0E $EE
    ld h, e                                       ; $4969: $63

jr_017_496A:
    ld [$DA0E], sp                                ; $496A: $08 $0E $DA
    ld h, e                                       ; $496D: $63
    ld [$020E], sp                                ; $496E: $08 $0E $02
    ld h, h                                       ; $4971: $64
    ld [$F80E], sp                                ; $4972: $08 $0E $F8
    ld h, e                                       ; $4975: $63
    ld [$EE0E], sp                                ; $4976: $08 $0E $EE
    ld h, e                                       ; $4979: $63
    ld [$DA0E], sp                                ; $497A: $08 $0E $DA
    ld h, e                                       ; $497D: $63
    ld [$0C0E], sp                                ; $497E: $08 $0E $0C
    ld h, h                                       ; $4981: $64
    ld [$E40E], sp                                ; $4982: $08 $0E $E4
    ld h, e                                       ; $4985: $63
    ld [$EE0E], sp                                ; $4986: $08 $0E $EE
    ld h, e                                       ; $4989: $63
    ld [$DA0E], sp                                ; $498A: $08 $0E $DA
    ld h, e                                       ; $498D: $63
    ld [$020E], sp                                ; $498E: $08 $0E $02
    ld h, h                                       ; $4991: $64
    ld [$F80E], sp                                ; $4992: $08 $0E $F8
    ld h, e                                       ; $4995: $63
    ld [$160E], sp                                ; $4996: $08 $0E $16
    ld h, h                                       ; $4999: $64
    ld [$DA0E], sp                                ; $499A: $08 $0E $DA
    ld h, e                                       ; $499D: $63
    ld [$EE0E], sp                                ; $499E: $08 $0E $EE
    ld h, e                                       ; $49A1: $63
    ld [$6200], sp                                ; $49A2: $08 $00 $62
    ld bc, $0E14                                  ; $49A5: $01 $14 $0E
    db $E4                                        ; $49A8: $E4
    ld h, e                                       ; $49A9: $63
    ld e, e                                       ; $49AA: $5B
    rla                                           ; $49AB: $17
    ld b, [hl]                                    ; $49AC: $46
    ld b, l                                       ; $49AD: $45
    ld h, d                                       ; $49AE: $62
    ld [bc], a                                    ; $49AF: $02
    ld e, e                                       ; $49B0: $5B
    rla                                           ; $49B1: $17
    db $E4                                        ; $49B2: $E4
    ld b, l                                       ; $49B3: $45
    dec d                                         ; $49B4: $15
    ld c, $F8                                     ; $49B5: $0E $F8
    ld h, e                                       ; $49B7: $63
    ld [bc], a                                    ; $49B8: $02
    ld c, $D0                                     ; $49B9: $0E $D0
    ld h, e                                       ; $49BB: $63
    ld [bc], a                                    ; $49BC: $02
    ld c, $02                                     ; $49BD: $0E $02
    ld h, h                                       ; $49BF: $64
    ld [bc], a                                    ; $49C0: $02
    ld c, $EE                                     ; $49C1: $0E $EE
    ld h, e                                       ; $49C3: $63
    ld [bc], a                                    ; $49C4: $02
    ld c, $16                                     ; $49C5: $0E $16
    ld h, h                                       ; $49C7: $64
    ld [bc], a                                    ; $49C8: $02
    ld c, $DA                                     ; $49C9: $0E $DA
    ld h, e                                       ; $49CB: $63
    ld [bc], a                                    ; $49CC: $02
    ld c, $0C                                     ; $49CD: $0E $0C
    ld h, h                                       ; $49CF: $64
    ld [bc], a                                    ; $49D0: $02
    ld c, $E4                                     ; $49D1: $0E $E4
    ld h, e                                       ; $49D3: $63
    ld [bc], a                                    ; $49D4: $02
    ld c, $F8                                     ; $49D5: $0E $F8
    ld h, e                                       ; $49D7: $63
    ld [bc], a                                    ; $49D8: $02
    ld c, $D0                                     ; $49D9: $0E $D0
    ld h, e                                       ; $49DB: $63
    ld [bc], a                                    ; $49DC: $02
    ld c, $02                                     ; $49DD: $0E $02
    ld h, h                                       ; $49DF: $64
    ld [bc], a                                    ; $49E0: $02
    ld c, $EE                                     ; $49E1: $0E $EE
    ld h, e                                       ; $49E3: $63
    ld [bc], a                                    ; $49E4: $02
    ld c, $16                                     ; $49E5: $0E $16
    ld h, h                                       ; $49E7: $64
    ld [bc], a                                    ; $49E8: $02
    ld c, $3E                                     ; $49E9: $0E $3E
    ld h, h                                       ; $49EB: $64
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    ld e, h                                       ; $49EE: $5C
    ld [bc], a                                    ; $49EF: $02
    inc bc                                        ; $49F0: $03
    dec d                                         ; $49F1: $15
    ld c, $E4                                     ; $49F2: $0E $E4
    ld h, e                                       ; $49F4: $63
    db $10                                        ; $49F5: $10
    ld c, $A0                                     ; $49F6: $0E $A0
    ld h, e                                       ; $49F8: $63
    ld b, b                                       ; $49F9: $40
    ld c, $DA                                     ; $49FA: $0E $DA
    ld h, e                                       ; $49FC: $63
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    rlca                                          ; $49FF: $07
    nop                                           ; $4A00: $00
    add c                                         ; $4A01: $81

jr_017_4A02:
    ld e, l                                       ; $4A02: $5D
    add hl, bc                                    ; $4A03: $09
    nop                                           ; $4A04: $00
    jr nz, jr_017_4A02                            ; $4A05: $20 $FB

    ld d, b                                       ; $4A07: $50
    add hl, de                                    ; $4A08: $19
    inc d                                         ; $4A09: $14
    ld c, $A9                                     ; $4A0A: $0E $A9
    ld h, [hl]                                    ; $4A0C: $66
    ld e, h                                       ; $4A0D: $5C
    ld bc, $0503                                  ; $4A0E: $01 $03 $05
    ld [bc], a                                    ; $4A11: $02
    ld l, e                                       ; $4A12: $6B
    ld c, d                                       ; $4A13: $4A
    dec bc                                        ; $4A14: $0B
    dec b                                         ; $4A15: $05
    ld l, a                                       ; $4A16: $6F
    ret nc                                        ; $4A17: $D0

    nop                                           ; $4A18: $00
    rla                                           ; $4A19: $17
    ld d, h                                       ; $4A1A: $54
    ld c, c                                       ; $4A1B: $49
    ld [hl+], a                                   ; $4A1C: $22
    dec b                                         ; $4A1D: $05
    ld b, b                                       ; $4A1E: $40
    dec bc                                        ; $4A1F: $0B
    ld [bc], a                                    ; $4A20: $02
    inc d                                         ; $4A21: $14
    ld c, $81                                     ; $4A22: $0E $81
    ld h, [hl]                                    ; $4A24: $66
    ld e, e                                       ; $4A25: $5B
    rla                                           ; $4A26: $17
    call nz, Call_017_6244                        ; $4A27: $C4 $44 $62
    inc b                                         ; $4A2A: $04
    inc d                                         ; $4A2B: $14
    ld c, $A9                                     ; $4A2C: $0E $A9
    ld h, [hl]                                    ; $4A2E: $66
    ld e, e                                       ; $4A2F: $5B
    rla                                           ; $4A30: $17
    bit 0, [hl]                                   ; $4A31: $CB $46
    ld e, h                                       ; $4A33: $5C
    ld [bc], a                                    ; $4A34: $02
    inc bc                                        ; $4A35: $03
    dec d                                         ; $4A36: $15
    ld c, $13                                     ; $4A37: $0E $13
    ld h, [hl]                                    ; $4A39: $66
    db $10                                        ; $4A3A: $10
    ld c, $53                                     ; $4A3B: $0E $53
    ld h, [hl]                                    ; $4A3D: $66
    ld [$330E], sp                                ; $4A3E: $08 $0E $33
    ld h, [hl]                                    ; $4A41: $66
    ld b, b                                       ; $4A42: $40
    ld c, $6D                                     ; $4A43: $0E $6D
    ld h, [hl]                                    ; $4A45: $66
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    add hl, de                                    ; $4A48: $19
    sub e                                         ; $4A49: $93
    ld h, l                                       ; $4A4A: $65
    ld a, e                                       ; $4A4B: $7B
    ld c, h                                       ; $4A4C: $4C
    ld c, a                                       ; $4A4D: $4F
    ld h, h                                       ; $4A4E: $64
    ld sp, $6950                                  ; $4A4F: $31 $50 $69
    ld a, [hl-]                                   ; $4A52: $3A
    ld d, b                                       ; $4A53: $50
    ld h, [hl]                                    ; $4A54: $66
    ret nz                                        ; $4A55: $C0

    ld e, h                                       ; $4A56: $5C
    ld hl, $0005                                  ; $4A57: $21 $05 $00
    add c                                         ; $4A5A: $81
    ld e, l                                       ; $4A5B: $5D
    dec b                                         ; $4A5C: $05
    dec b                                         ; $4A5D: $05

jr_017_4A5E:
    ld l, c                                       ; $4A5E: $69
    ret nc                                        ; $4A5F: $D0

    nop                                           ; $4A60: $00
    jr nz, jr_017_4A5E                            ; $4A61: $20 $FB

    ld d, b                                       ; $4A63: $50
    ld [hl+], a                                   ; $4A64: $22
    dec b                                         ; $4A65: $05
    ld b, b                                       ; $4A66: $40
    dec b                                         ; $4A67: $05
    ld [bc], a                                    ; $4A68: $02
    db $ED                                        ; $4A69: $ED
    ld h, e                                       ; $4A6A: $63
    ld [$200E], sp                                ; $4A6B: $08 $0E $20
    pop de                                        ; $4A6E: $D1
    nop                                           ; $4A6F: $00
    rla                                           ; $4A70: $17
    adc b                                         ; $4A71: $88
    ld c, d                                       ; $4A72: $4A
    rla                                           ; $4A73: $17
    sub [hl]                                      ; $4A74: $96
    ld c, d                                       ; $4A75: $4A
    ld l, e                                       ; $4A76: $6B
    jr nc, jr_017_4A84                            ; $4A77: $30 $0B

    add b                                         ; $4A79: $80
    ld c, h                                       ; $4A7A: $4C
    nop                                           ; $4A7B: $00
    add b                                         ; $4A7C: $80
    nop                                           ; $4A7D: $00
    dec bc                                        ; $4A7E: $0B
    nop                                           ; $4A7F: $00
    dec bc                                        ; $4A80: $0B
    ld [bc], a                                    ; $4A81: $02
    nop                                           ; $4A82: $00
    add d                                         ; $4A83: $82

jr_017_4A84:
    rra                                           ; $4A84: $1F
    ld de, $4294                                  ; $4A85: $11 $94 $42
    inc d                                         ; $4A88: $14
    ld de, $4A53                                  ; $4A89: $11 $53 $4A
    ld b, b                                       ; $4A8C: $40
    ld [hl-], a                                   ; $4A8D: $32
    inc d                                         ; $4A8E: $14
    ld de, $4A5D                                  ; $4A8F: $11 $5D $4A
    ld b, l                                       ; $4A92: $45
    rla                                           ; $4A93: $17
    adc b                                         ; $4A94: $88
    ld c, d                                       ; $4A95: $4A
    ld e, e                                       ; $4A96: $5B
    rla                                           ; $4A97: $17
    sbc [hl]                                      ; $4A98: $9E
    ld c, d                                       ; $4A99: $4A
    ld b, l                                       ; $4A9A: $45
    ld de, $4A67                                  ; $4A9B: $11 $67 $4A
    ld b, e                                       ; $4A9E: $43
    ld de, $CE01                                  ; $4A9F: $11 $01 $CE
    and e                                         ; $4AA2: $A3
    dec b                                         ; $4AA3: $05
    nop                                           ; $4AA4: $00
    rla                                           ; $4AA5: $17
    call nc, Call_017_434A                        ; $4AA6: $D4 $4A $43
    rrca                                          ; $4AA9: $0F
    ld bc, $A2B3                                  ; $4AAA: $01 $B3 $A2
    dec b                                         ; $4AAD: $05
    ld [bc], a                                    ; $4AAE: $02
    rla                                           ; $4AAF: $17
    or l                                          ; $4AB0: $B5
    ld c, e                                       ; $4AB1: $4B
    sbc e                                         ; $4AB2: $9B
    add hl, de                                    ; $4AB3: $19
    ld c, [hl]                                    ; $4AB4: $4E
    sbc a                                         ; $4AB5: $9F
    ld e, c                                       ; $4AB6: $59
    ld l, a                                       ; $4AB7: $6F
    ld [hl], l                                    ; $4AB8: $75
    jr nz, jr_017_4B20                            ; $4AB9: $20 $65

    halt                                          ; $4ABB: $76
    ld h, l                                       ; $4ABC: $65
    ld [hl], d                                    ; $4ABD: $72
    jr nz, jr_017_4B26                            ; $4ABE: $20 $66

    ld l, c                                       ; $4AC0: $69
    ld l, [hl]                                    ; $4AC1: $6E
    ld h, h                                       ; $4AC2: $64
    rst $38                                       ; $4AC3: $FF
    ld h, c                                       ; $4AC4: $61
    ld l, [hl]                                    ; $4AC5: $6E
    ld a, c                                       ; $4AC6: $79
    jr nz, jr_017_4B2A                            ; $4AC7: $20 $61

    ld l, h                                       ; $4AC9: $6C
    ld h, a                                       ; $4ACA: $67
    ld h, c                                       ; $4ACB: $61
    ld h, l                                       ; $4ACC: $65
    ccf                                           ; $4ACD: $3F
    cp $FD                                        ; $4ACE: $FE $FD
    sbc d                                         ; $4AD0: $9A
    ld e, b                                       ; $4AD1: $58
    ld bc, $9B42                                  ; $4AD2: $01 $42 $9B
    add hl, de                                    ; $4AD5: $19
    ld c, [hl]                                    ; $4AD6: $4E
    sbc a                                         ; $4AD7: $9F
    ld d, a                                       ; $4AD8: $57
    ld l, a                                       ; $4AD9: $6F
    ld [hl], a                                    ; $4ADA: $77
    inc l                                         ; $4ADB: $2C
    jr nz, jr_017_4B57                            ; $4ADC: $20 $79

    ld l, a                                       ; $4ADE: $6F
    ld [hl], l                                    ; $4ADF: $75
    jr nz, jr_017_4B54                            ; $4AE0: $20 $72

    ld h, l                                       ; $4AE2: $65
    ld h, c                                       ; $4AE3: $61
    ld l, h                                       ; $4AE4: $6C
    ld l, h                                       ; $4AE5: $6C
    ld a, c                                       ; $4AE6: $79
    rst $38                                       ; $4AE7: $FF
    ld h, [hl]                                    ; $4AE8: $66
    ld l, a                                       ; $4AE9: $6F
    ld [hl], l                                    ; $4AEA: $75
    ld l, [hl]                                    ; $4AEB: $6E
    ld h, h                                       ; $4AEC: $64
    jr nz, jr_017_4B62                            ; $4AED: $20 $73

    ld l, a                                       ; $4AEF: $6F
    ld l, l                                       ; $4AF0: $6D
    ld h, l                                       ; $4AF1: $65
    cp $61                                        ; $4AF2: $FE $61
    ld l, h                                       ; $4AF4: $6C
    ld h, a                                       ; $4AF5: $67
    ld h, c                                       ; $4AF6: $61
    ld h, l                                       ; $4AF7: $65
    ld l, $20                                     ; $4AF8: $2E $20
    ld c, c                                       ; $4AFA: $49
    daa                                           ; $4AFB: $27
    ld l, l                                       ; $4AFC: $6D
    rst $38                                       ; $4AFD: $FF
    ld l, c                                       ; $4AFE: $69
    ld l, l                                       ; $4AFF: $6D
    ld [hl], b                                    ; $4B00: $70
    ld [hl], d                                    ; $4B01: $72
    ld h, l                                       ; $4B02: $65
    ld [hl], e                                    ; $4B03: $73
    ld [hl], e                                    ; $4B04: $73
    ld h, l                                       ; $4B05: $65
    ld h, h                                       ; $4B06: $64
    ld l, $20                                     ; $4B07: $2E $20
    ld b, e                                       ; $4B09: $43
    ld h, c                                       ; $4B0A: $61
    ld l, [hl]                                    ; $4B0B: $6E
    cp $49                                        ; $4B0C: $FE $49
    jr nz, jr_017_4B78                            ; $4B0E: $20 $68

    ld h, c                                       ; $4B10: $61
    halt                                          ; $4B11: $76
    ld h, l                                       ; $4B12: $65
    jr nz, jr_017_4B7E                            ; $4B13: $20 $69

    ld [hl], h                                    ; $4B15: $74
    ccf                                           ; $4B16: $3F
    cp $FD                                        ; $4B17: $FE $FD
    sbc c                                         ; $4B19: $99
    sbc e                                         ; $4B1A: $9B
    ld a, b                                       ; $4B1B: $78
    ld [hl], b                                    ; $4B1C: $70
    sbc a                                         ; $4B1D: $9F
    jr nz, jr_017_4B67                            ; $4B1E: $20 $47

jr_017_4B20:
    ld l, c                                       ; $4B20: $69
    halt                                          ; $4B21: $76
    ld h, l                                       ; $4B22: $65
    jr nz, jr_017_4B66                            ; $4B23: $20 $41

    ld l, h                                       ; $4B25: $6C

jr_017_4B26:
    ld h, a                                       ; $4B26: $67
    ld h, c                                       ; $4B27: $61
    ld h, l                                       ; $4B28: $65
    rst $38                                       ; $4B29: $FF

jr_017_4B2A:
    jr nz, jr_017_4B70                            ; $4B2A: $20 $44

    ld l, a                                       ; $4B2C: $6F
    ld l, [hl]                                    ; $4B2D: $6E
    daa                                           ; $4B2E: $27
    ld [hl], h                                    ; $4B2F: $74
    jr nz, jr_017_4B99                            ; $4B30: $20 $67

    ld l, c                                       ; $4B32: $69
    halt                                          ; $4B33: $76
    ld h, l                                       ; $4B34: $65
    db $FD                                        ; $4B35: $FD
    sbc h                                         ; $4B36: $9C
    ld [bc], a                                    ; $4B37: $02
    rla                                           ; $4B38: $17
    ld a, $4B                                     ; $4B39: $3E $4B
    rla                                           ; $4B3B: $17
    add d                                         ; $4B3C: $82
    ld c, e                                       ; $4B3D: $4B
    xor h                                         ; $4B3E: $AC
    or e                                          ; $4B3F: $B3
    and d                                         ; $4B40: $A2
    ld [bc], a                                    ; $4B41: $02
    adc b                                         ; $4B42: $88
    nop                                           ; $4B43: $00
    daa                                           ; $4B44: $27
    rst $38                                       ; $4B45: $FF
    sbc e                                         ; $4B46: $9B
    add hl, de                                    ; $4B47: $19
    ld c, [hl]                                    ; $4B48: $4E
    sbc a                                         ; $4B49: $9F
    ld d, h                                       ; $4B4A: $54
    ld l, b                                       ; $4B4B: $68
    ld h, c                                       ; $4B4C: $61
    ld l, [hl]                                    ; $4B4D: $6E
    ld l, e                                       ; $4B4E: $6B
    ld [hl], e                                    ; $4B4F: $73
    inc l                                         ; $4B50: $2C
    jr nz, jr_017_4BCC                            ; $4B51: $20 $79

    ld l, a                                       ; $4B53: $6F

jr_017_4B54:
    ld [hl], l                                    ; $4B54: $75
    rst $38                                       ; $4B55: $FF
    ld h, h                                       ; $4B56: $64

jr_017_4B57:
    ld l, a                                       ; $4B57: $6F
    ld l, [hl]                                    ; $4B58: $6E
    daa                                           ; $4B59: $27
    ld [hl], h                                    ; $4B5A: $74
    jr nz, jr_017_4BC8                            ; $4B5B: $20 $6B

    ld l, [hl]                                    ; $4B5D: $6E
    ld l, a                                       ; $4B5E: $6F
    ld [hl], a                                    ; $4B5F: $77
    cp $68                                        ; $4B60: $FE $68

jr_017_4B62:
    ld l, a                                       ; $4B62: $6F
    ld [hl], a                                    ; $4B63: $77
    jr nz, jr_017_4BD3                            ; $4B64: $20 $6D

jr_017_4B66:
    ld [hl], l                                    ; $4B66: $75

jr_017_4B67:
    ld h, e                                       ; $4B67: $63
    ld l, b                                       ; $4B68: $68
    jr nz, @+$4B                                  ; $4B69: $20 $49

    rst $38                                       ; $4B6B: $FF
    ld h, c                                       ; $4B6C: $61
    ld [hl], b                                    ; $4B6D: $70
    ld [hl], b                                    ; $4B6E: $70
    ld [hl], d                                    ; $4B6F: $72

jr_017_4B70:
    ld h, l                                       ; $4B70: $65
    ld h, e                                       ; $4B71: $63
    ld l, c                                       ; $4B72: $69
    ld h, c                                       ; $4B73: $61
    ld [hl], h                                    ; $4B74: $74
    ld h, l                                       ; $4B75: $65
    cp $74                                        ; $4B76: $FE $74

jr_017_4B78:
    ld l, b                                       ; $4B78: $68
    ld l, c                                       ; $4B79: $69
    ld [hl], e                                    ; $4B7A: $73
    ld l, $FE                                     ; $4B7B: $2E $FE
    db $FD                                        ; $4B7D: $FD

jr_017_4B7E:
    sbc d                                         ; $4B7E: $9A
    ld e, b                                       ; $4B7F: $58
    ld bc, $9B42                                  ; $4B80: $01 $42 $9B
    add hl, de                                    ; $4B83: $19
    ld c, [hl]                                    ; $4B84: $4E
    sbc a                                         ; $4B85: $9F
    ld d, a                                       ; $4B86: $57
    ld h, l                                       ; $4B87: $65
    ld l, h                                       ; $4B88: $6C
    ld l, h                                       ; $4B89: $6C
    inc l                                         ; $4B8A: $2C
    jr nz, jr_017_4BD6                            ; $4B8B: $20 $49

    jr nz, @+$6A                                  ; $4B8D: $20 $68

    ld l, a                                       ; $4B8F: $6F
    ld [hl], b                                    ; $4B90: $70
    ld h, l                                       ; $4B91: $65
    rst $38                                       ; $4B92: $FF
    ld [hl], h                                    ; $4B93: $74
    ld l, b                                       ; $4B94: $68
    ld h, c                                       ; $4B95: $61
    ld [hl], h                                    ; $4B96: $74
    jr nz, @+$75                                  ; $4B97: $20 $73

jr_017_4B99:
    ld [hl], h                                    ; $4B99: $74
    ld [hl], l                                    ; $4B9A: $75
    ld h, [hl]                                    ; $4B9B: $66
    ld h, [hl]                                    ; $4B9C: $66
    jr nz, jr_017_4C08                            ; $4B9D: $20 $69

    ld [hl], e                                    ; $4B9F: $73
    cp $75                                        ; $4BA0: $FE $75
    ld [hl], e                                    ; $4BA2: $73
    ld h, l                                       ; $4BA3: $65
    ld h, [hl]                                    ; $4BA4: $66
    ld [hl], l                                    ; $4BA5: $75
    ld l, h                                       ; $4BA6: $6C
    jr nz, @+$76                                  ; $4BA7: $20 $74

    ld l, a                                       ; $4BA9: $6F
    jr nz, jr_017_4C25                            ; $4BAA: $20 $79

    ld l, a                                       ; $4BAC: $6F
    ld [hl], l                                    ; $4BAD: $75
    ld l, $FE                                     ; $4BAE: $2E $FE
    db $FD                                        ; $4BB0: $FD
    sbc d                                         ; $4BB1: $9A
    ld e, b                                       ; $4BB2: $58
    ld bc, $9B42                                  ; $4BB3: $01 $42 $9B
    add hl, de                                    ; $4BB6: $19
    ld c, [hl]                                    ; $4BB7: $4E
    sbc a                                         ; $4BB8: $9F
    ld c, [hl]                                    ; $4BB9: $4E
    ld l, a                                       ; $4BBA: $6F
    ld [hl], a                                    ; $4BBB: $77
    jr nz, jr_017_4C27                            ; $4BBC: $20 $69

    ld h, [hl]                                    ; $4BBE: $66
    jr nz, jr_017_4C0A                            ; $4BBF: $20 $49

    jr nz, jr_017_4C26                            ; $4BC1: $20 $63

    ld l, a                                       ; $4BC3: $6F
    ld [hl], l                                    ; $4BC4: $75
    ld l, h                                       ; $4BC5: $6C
    ld h, h                                       ; $4BC6: $64
    rst $38                                       ; $4BC7: $FF

jr_017_4BC8:
    ld l, d                                       ; $4BC8: $6A
    ld [hl], l                                    ; $4BC9: $75
    ld [hl], e                                    ; $4BCA: $73
    ld [hl], h                                    ; $4BCB: $74

jr_017_4BCC:
    jr nz, @+$68                                  ; $4BCC: $20 $66

    ld l, c                                       ; $4BCE: $69
    ld h, a                                       ; $4BCF: $67
    ld [hl], l                                    ; $4BD0: $75
    ld [hl], d                                    ; $4BD1: $72
    ld h, l                                       ; $4BD2: $65

jr_017_4BD3:
    jr nz, jr_017_4C44                            ; $4BD3: $20 $6F

    ld [hl], l                                    ; $4BD5: $75

jr_017_4BD6:
    ld [hl], h                                    ; $4BD6: $74
    cp $77                                        ; $4BD7: $FE $77
    ld l, b                                       ; $4BD9: $68
    ld h, l                                       ; $4BDA: $65
    ld [hl], d                                    ; $4BDB: $72
    ld h, l                                       ; $4BDC: $65
    jr nz, jr_017_4C28                            ; $4BDD: $20 $49

    jr nz, jr_017_4C4F                            ; $4BDF: $20 $6E

    ld h, l                                       ; $4BE1: $65

jr_017_4BE2:
    ld h, l                                       ; $4BE2: $65
    ld h, h                                       ; $4BE3: $64
    rst $38                                       ; $4BE4: $FF
    ld [hl], h                                    ; $4BE5: $74
    ld l, a                                       ; $4BE6: $6F
    jr nz, jr_017_4C5E                            ; $4BE7: $20 $75

    ld [hl], e                                    ; $4BE9: $73
    ld h, l                                       ; $4BEA: $65
    jr nz, jr_017_4C61                            ; $4BEB: $20 $74

    ld l, b                                       ; $4BED: $68
    ld l, c                                       ; $4BEE: $69
    ld [hl], e                                    ; $4BEF: $73
    cp $61                                        ; $4BF0: $FE $61
    ld l, h                                       ; $4BF2: $6C
    ld h, a                                       ; $4BF3: $67
    ld h, c                                       ; $4BF4: $61
    ld h, l                                       ; $4BF5: $65
    ld l, $20                                     ; $4BF6: $2E $20
    ld c, h                                       ; $4BF8: $4C
    ld h, l                                       ; $4BF9: $65
    ld [hl], h                                    ; $4BFA: $74
    jr nz, jr_017_4C6A                            ; $4BFB: $20 $6D

jr_017_4BFD:
    ld h, l                                       ; $4BFD: $65
    rst $38                                       ; $4BFE: $FF
    ld [hl], h                                    ; $4BFF: $74
    ld l, b                                       ; $4C00: $68
    ld l, c                                       ; $4C01: $69
    ld l, [hl]                                    ; $4C02: $6E
    ld l, e                                       ; $4C03: $6B
    ld l, $2E                                     ; $4C04: $2E $2E
    ld l, $FE                                     ; $4C06: $2E $FE

jr_017_4C08:
    db $FD                                        ; $4C08: $FD
    sbc d                                         ; $4C09: $9A

jr_017_4C0A:
    ld e, b                                       ; $4C0A: $58
    ld bc, $0142                                  ; $4C0B: $01 $42 $01
    rlca                                          ; $4C0E: $07
    inc c                                         ; $4C0F: $0C
    ld b, l                                       ; $4C10: $45
    rla                                           ; $4C11: $17
    add hl, sp                                    ; $4C12: $39
    ld c, h                                       ; $4C13: $4C
    ld bc, $2418                                  ; $4C14: $01 $18 $24
    ld b, l                                       ; $4C17: $45
    cpl                                           ; $4C18: $2F
    scf                                           ; $4C19: $37
    ld c, h                                       ; $4C1A: $4C
    ld bc, $1209                                  ; $4C1B: $01 $09 $12
    ld b, l                                       ; $4C1E: $45
    rla                                           ; $4C1F: $17
    xor b                                         ; $4C20: $A8
    ld c, h                                       ; $4C21: $4C
    ld bc, $0807                                  ; $4C22: $01 $07 $08

jr_017_4C25:
    rlca                                          ; $4C25: $07

jr_017_4C26:
    nop                                           ; $4C26: $00

jr_017_4C27:
    ld l, e                                       ; $4C27: $6B

jr_017_4C28:
    ld c, d                                       ; $4C28: $4A
    add hl, bc                                    ; $4C29: $09
    nop                                           ; $4C2A: $00
    jr nz, jr_017_4BE2                            ; $4C2B: $20 $B5

    ld d, b                                       ; $4C2D: $50
    ld l, [hl]                                    ; $4C2E: $6E
    rrca                                          ; $4C2F: $0F
    rst $38                                       ; $4C30: $FF
    ld a, a                                       ; $4C31: $7F
    halt                                          ; $4C32: $76
    jr nz, jr_017_4C44                            ; $4C33: $20 $0F

    ld b, l                                       ; $4C35: $45
    ld d, $48                                     ; $4C36: $16 $48
    ld l, a                                       ; $4C38: $6F
    inc h                                         ; $4C39: $24
    ld d, b                                       ; $4C3A: $50
    sub e                                         ; $4C3B: $93
    ld h, l                                       ; $4C3C: $65
    sbc c                                         ; $4C3D: $99
    ld c, h                                       ; $4C3E: $4C
    ld c, a                                       ; $4C3F: $4F
    ld h, h                                       ; $4C40: $64
    ld c, b                                       ; $4C41: $48

jr_017_4C42:
    ld d, b                                       ; $4C42: $50
    ld h, [hl]                                    ; $4C43: $66

jr_017_4C44:
    ret nz                                        ; $4C44: $C0

    ld e, h                                       ; $4C45: $5C
    ld hl, $0005                                  ; $4C46: $21 $05 $00
    add c                                         ; $4C49: $81
    ld e, l                                       ; $4C4A: $5D
    dec b                                         ; $4C4B: $05
    dec b                                         ; $4C4C: $05
    ld l, c                                       ; $4C4D: $69
    ret nc                                        ; $4C4E: $D0

jr_017_4C4F:
    nop                                           ; $4C4F: $00
    jr nz, jr_017_4BFD                            ; $4C50: $20 $AB

    ld d, b                                       ; $4C52: $50
    ld [hl+], a                                   ; $4C53: $22
    dec b                                         ; $4C54: $05
    ld b, b                                       ; $4C55: $40
    dec bc                                        ; $4C56: $0B

jr_017_4C57:
    nop                                           ; $4C57: $00
    nop                                           ; $4C58: $00
    add d                                         ; $4C59: $82
    sub h                                         ; $4C5A: $94
    ld b, d                                       ; $4C5B: $42
    sub e                                         ; $4C5C: $93

jr_017_4C5D:
    ld h, l                                       ; $4C5D: $65

jr_017_4C5E:
    sbc c                                         ; $4C5E: $99
    ld c, h                                       ; $4C5F: $4C
    ld c, a                                       ; $4C60: $4F

jr_017_4C61:
    ld h, h                                       ; $4C61: $64
    ld c, b                                       ; $4C62: $48

jr_017_4C63:
    ld d, b                                       ; $4C63: $50
    ld h, [hl]                                    ; $4C64: $66
    ret nz                                        ; $4C65: $C0

    ld e, h                                       ; $4C66: $5C
    ld hl, $0005                                  ; $4C67: $21 $05 $00

jr_017_4C6A:
    ld l, e                                       ; $4C6A: $6B
    ld c, d                                       ; $4C6B: $4A
    dec b                                         ; $4C6C: $05
    dec b                                         ; $4C6D: $05
    ld l, c                                       ; $4C6E: $69
    ret nc                                        ; $4C6F: $D0

jr_017_4C70:
    nop                                           ; $4C70: $00
    rla                                           ; $4C71: $17
    adc a                                         ; $4C72: $8F
    ld c, h                                       ; $4C73: $4C
    ld [hl+], a                                   ; $4C74: $22
    dec b                                         ; $4C75: $05
    ld b, b                                       ; $4C76: $40
    dec bc                                        ; $4C77: $0B
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    add d                                         ; $4C7A: $82
    ld l, a                                       ; $4C7B: $6F
    rrca                                          ; $4C7C: $0F
    rst $38                                       ; $4C7D: $FF
    ld a, a                                       ; $4C7E: $7F
    sub h                                         ; $4C7F: $94
    halt                                          ; $4C80: $76
    jr nz, jr_017_4C92                            ; $4C81: $20 $0F

    ld h, b                                       ; $4C83: $60
    ld bc, $0007                                  ; $4C84: $01 $07 $00
    add c                                         ; $4C87: $81
    ld e, l                                       ; $4C88: $5D
    add hl, bc                                    ; $4C89: $09
    nop                                           ; $4C8A: $00
    jr nz, jr_017_4C42                            ; $4C8B: $20 $B5

    ld d, b                                       ; $4C8D: $50
    ld b, d                                       ; $4C8E: $42
    dec d                                         ; $4C8F: $15
    jr nz, @-$49                                  ; $4C90: $20 $B5

jr_017_4C92:
    ld d, b                                       ; $4C92: $50
    jr jr_017_4CB5                                ; $4C93: $18 $20

    db $D3                                        ; $4C95: $D3
    ld d, b                                       ; $4C96: $50
    db $10                                        ; $4C97: $10
    jr nz, jr_017_4C63                            ; $4C98: $20 $C9

    ld d, b                                       ; $4C9A: $50
    db $10                                        ; $4C9B: $10
    jr nz, jr_017_4C5D                            ; $4C9C: $20 $BF

    ld d, b                                       ; $4C9E: $50
    db $10                                        ; $4C9F: $10
    jr nz, jr_017_4C57                            ; $4CA0: $20 $B5

    ld d, b                                       ; $4CA2: $50
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    ld d, [hl]                                    ; $4CA5: $56
    ld bc, $2442                                  ; $4CA6: $01 $42 $24
    ld d, b                                       ; $4CA9: $50
    xor h                                         ; $4CAA: $AC
    or d                                          ; $4CAB: $B2
    and d                                         ; $4CAC: $A2
    ld bc, $6593                                  ; $4CAD: $01 $93 $65
    adc d                                         ; $4CB0: $8A
    ld c, h                                       ; $4CB1: $4C
    ld c, a                                       ; $4CB2: $4F
    ld h, h                                       ; $4CB3: $64
    ccf                                           ; $4CB4: $3F

jr_017_4CB5:
    ld d, b                                       ; $4CB5: $50
    ld h, [hl]                                    ; $4CB6: $66
    ret nz                                        ; $4CB7: $C0

    ld e, h                                       ; $4CB8: $5C
    ld hl, $0005                                  ; $4CB9: $21 $05 $00
    add c                                         ; $4CBC: $81
    ld e, l                                       ; $4CBD: $5D
    dec b                                         ; $4CBE: $05
    dec b                                         ; $4CBF: $05
    ld l, c                                       ; $4CC0: $69
    ret nc                                        ; $4CC1: $D0

    nop                                           ; $4CC2: $00
    jr nz, jr_017_4C70                            ; $4CC3: $20 $AB

    ld d, b                                       ; $4CC5: $50
    ld [hl+], a                                   ; $4CC6: $22
    dec b                                         ; $4CC7: $05
    ld b, b                                       ; $4CC8: $40
    dec bc                                        ; $4CC9: $0B
    nop                                           ; $4CCA: $00
    nop                                           ; $4CCB: $00
    add d                                         ; $4CCC: $82
    sub h                                         ; $4CCD: $94
    ld b, d                                       ; $4CCE: $42
    ld [bc], a                                    ; $4CCF: $02
    ld a, [de]                                    ; $4CD0: $1A
    rlca                                          ; $4CD1: $07
    daa                                           ; $4CD2: $27
    nop                                           ; $4CD3: $00
    ld b, l                                       ; $4CD4: $45
    rla                                           ; $4CD5: $17
    or h                                          ; $4CD6: $B4
    ld e, h                                       ; $4CD7: $5C
    ld [bc], a                                    ; $4CD8: $02
    cpl                                           ; $4CD9: $2F
    inc sp                                        ; $4CDA: $33
    nop                                           ; $4CDB: $00
    dec e                                         ; $4CDC: $1D
    ld b, l                                       ; $4CDD: $45
    rla                                           ; $4CDE: $17
    ld sp, $0252                                  ; $4CDF: $31 $52 $02
    db $10                                        ; $4CE2: $10
    dec b                                         ; $4CE3: $05
    rra                                           ; $4CE4: $1F
    dec bc                                        ; $4CE5: $0B
    ld b, l                                       ; $4CE6: $45
    rla                                           ; $4CE7: $17
    jr nz, jr_017_4D37                            ; $4CE8: $20 $4D

    ld [bc], a                                    ; $4CEA: $02
    ld h, $05                                     ; $4CEB: $26 $05
    inc e                                         ; $4CED: $1C
    dec bc                                        ; $4CEE: $0B
    ld b, l                                       ; $4CEF: $45
    rla                                           ; $4CF0: $17
    ld b, [hl]                                    ; $4CF1: $46
    ld c, l                                       ; $4CF2: $4D
    ld b, l                                       ; $4CF3: $45
    rla                                           ; $4CF4: $17
    ld b, b                                       ; $4CF5: $40
    ld d, e                                       ; $4CF6: $53
    ld [bc], a                                    ; $4CF7: $02
    dec b                                         ; $4CF8: $05
    db $10                                        ; $4CF9: $10
    dec bc                                        ; $4CFA: $0B
    rra                                           ; $4CFB: $1F
    ld b, l                                       ; $4CFC: $45
    rla                                           ; $4CFD: $17
    add $50                                       ; $4CFE: $C6 $50
    and h                                         ; $4D00: $A4
    ld c, c                                       ; $4D01: $49
    and e                                         ; $4D02: $A3
    ld b, b                                       ; $4D03: $40
    ld [bc], a                                    ; $4D04: $02
    jr jr_017_4D3D                                ; $4D05: $18 $36

    ret nc                                        ; $4D07: $D0

    ld [bc], a                                    ; $4D08: $02
    dec b                                         ; $4D09: $05
    ld h, $0B                                     ; $4D0A: $26 $0B
    inc e                                         ; $4D0C: $1C
    ld b, l                                       ; $4D0D: $45
    rla                                           ; $4D0E: $17
    add $50                                       ; $4D0F: $C6 $50
    and h                                         ; $4D11: $A4
    ld c, c                                       ; $4D12: $49
    and e                                         ; $4D13: $A3
    add b                                         ; $4D14: $80
    nop                                           ; $4D15: $00
    dec d                                         ; $4D16: $15
    ld [hl], $D0                                  ; $4D17: $36 $D0
    ld bc, $0E05                                  ; $4D19: $01 $05 $0E
    ld b, l                                       ; $4D1C: $45
    cpl                                           ; $4D1D: $2F
    adc a                                         ; $4D1E: $8F
    ld b, l                                       ; $4D1F: $45
    sub e                                         ; $4D20: $93
    ld h, l                                       ; $4D21: $65
    ret c                                         ; $4D22: $D8

    ld c, c                                       ; $4D23: $49
    ld c, a                                       ; $4D24: $4F
    ld h, h                                       ; $4D25: $64
    ld h, b                                       ; $4D26: $60
    ld c, l                                       ; $4D27: $4D
    ld l, c                                       ; $4D28: $69
    ld h, l                                       ; $4D29: $65
    ld c, l                                       ; $4D2A: $4D
    ld h, [hl]                                    ; $4D2B: $66
    ret nz                                        ; $4D2C: $C0

    ld e, h                                       ; $4D2D: $5C
    ld hl, $0005                                  ; $4D2E: $21 $05 $00
    add c                                         ; $4D31: $81
    ld e, l                                       ; $4D32: $5D
    dec b                                         ; $4D33: $05
    dec b                                         ; $4D34: $05

jr_017_4D35:
    ld b, c                                       ; $4D35: $41
    ret nc                                        ; $4D36: $D0

jr_017_4D37:
    nop                                           ; $4D37: $00
    jr nz, jr_017_4D35                            ; $4D38: $20 $FB

    ld d, b                                       ; $4D3A: $50
    ld [hl+], a                                   ; $4D3B: $22
    dec b                                         ; $4D3C: $05

jr_017_4D3D:
    ld b, b                                       ; $4D3D: $40
    dec bc                                        ; $4D3E: $0B
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00

jr_017_4D41:
    add d                                         ; $4D41: $82
    rra                                           ; $4D42: $1F
    ld de, $4294                                  ; $4D43: $11 $94 $42
    sub e                                         ; $4D46: $93
    ld h, l                                       ; $4D47: $65
    rst $20                                       ; $4D48: $E7
    ld c, c                                       ; $4D49: $49
    ld c, a                                       ; $4D4A: $4F
    ld h, h                                       ; $4D4B: $64
    ld l, d                                       ; $4D4C: $6A
    ld c, l                                       ; $4D4D: $4D
    ld l, c                                       ; $4D4E: $69
    ld l, a                                       ; $4D4F: $6F
    ld c, l                                       ; $4D50: $4D
    ld h, [hl]                                    ; $4D51: $66
    ret nz                                        ; $4D52: $C0

    ld e, h                                       ; $4D53: $5C
    ld hl, $0005                                  ; $4D54: $21 $05 $00
    add c                                         ; $4D57: $81
    ld e, l                                       ; $4D58: $5D
    dec b                                         ; $4D59: $05
    dec b                                         ; $4D5A: $05

jr_017_4D5B:
    ld b, c                                       ; $4D5B: $41
    ret nc                                        ; $4D5C: $D0

    nop                                           ; $4D5D: $00
    jr nz, jr_017_4D5B                            ; $4D5E: $20 $FB

    ld d, b                                       ; $4D60: $50
    ld [hl+], a                                   ; $4D61: $22
    dec b                                         ; $4D62: $05
    ld b, b                                       ; $4D63: $40
    dec bc                                        ; $4D64: $0B
    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    add d                                         ; $4D67: $82
    rra                                           ; $4D68: $1F
    ld de, $4294                                  ; $4D69: $11 $94 $42
    sub e                                         ; $4D6C: $93
    dec b                                         ; $4D6D: $05

jr_017_4D6E:
    nop                                           ; $4D6E: $00
    ld l, e                                       ; $4D6F: $6B
    ld c, d                                       ; $4D70: $4A
    ld c, $0C                                     ; $4D71: $0E $0C
    halt                                          ; $4D73: $76
    pop de                                        ; $4D74: $D1
    nop                                           ; $4D75: $00

jr_017_4D76:
    jr @+$26                                      ; $4D76: $18 $24

    ld b, h                                       ; $4D78: $44
    ld [hl+], a                                   ; $4D79: $22
    dec b                                         ; $4D7A: $05
    ld b, b                                       ; $4D7B: $40
    ld b, l                                       ; $4D7C: $45
    rla                                           ; $4D7D: $17
    sub b                                         ; $4D7E: $90
    ld c, l                                       ; $4D7F: $4D
    sub e                                         ; $4D80: $93
    dec b                                         ; $4D81: $05
    nop                                           ; $4D82: $00
    add c                                         ; $4D83: $81
    ld e, l                                       ; $4D84: $5D
    ld c, $0C                                     ; $4D85: $0E $0C
    halt                                          ; $4D87: $76
    pop de                                        ; $4D88: $D1
    nop                                           ; $4D89: $00
    jr nz, jr_017_4D41                            ; $4D8A: $20 $B5

    ld d, b                                       ; $4D8C: $50
    ld [hl+], a                                   ; $4D8D: $22
    dec b                                         ; $4D8E: $05
    ld b, b                                       ; $4D8F: $40
    ld h, l                                       ; $4D90: $65
    ret                                           ; $4D91: $C9


    ld c, c                                       ; $4D92: $49
    ld c, a                                       ; $4D93: $4F
    ld h, h                                       ; $4D94: $64
    ld e, e                                       ; $4D95: $5B
    ld c, l                                       ; $4D96: $4D
    ld h, [hl]                                    ; $4D97: $66
    ret nz                                        ; $4D98: $C0

    ld e, h                                       ; $4D99: $5C
    ld hl, $000B                                  ; $4D9A: $21 $0B $00
    dec b                                         ; $4D9D: $05
    jr nz, jr_017_4D6E                            ; $4D9E: $20 $CE

    ld h, e                                       ; $4DA0: $63
    ld a, [bc]                                    ; $4DA1: $0A
    add hl, bc                                    ; $4DA2: $09
    jr jr_017_4D76                                ; $4DA3: $18 $D1

    nop                                           ; $4DA5: $00
    ld [hl+], a                                   ; $4DA6: $22
    jp c, $1740                                   ; $4DA7: $DA $40 $17

    add h                                         ; $4DAA: $84
    ld c, a                                       ; $4DAB: $4F
    dec bc                                        ; $4DAC: $0B
    nop                                           ; $4DAD: $00
    dec bc                                        ; $4DAE: $0B
    jr nz, jr_017_4E1C                            ; $4DAF: $20 $6B

    inc [hl]                                      ; $4DB1: $34
    dec c                                         ; $4DB2: $0D
    jr nc, jr_017_4E1F                            ; $4DB3: $30 $6A

    nop                                           ; $4DB5: $00
    add b                                         ; $4DB6: $80
    nop                                           ; $4DB7: $00
    ld sp, $8017                                  ; $4DB8: $31 $17 $80
    ld c, l                                       ; $4DBB: $4D
    ld [hl+], a                                   ; $4DBC: $22
    adc $40                                       ; $4DBD: $CE $40
    add d                                         ; $4DBF: $82
    rra                                           ; $4DC0: $1F
    inc d                                         ; $4DC1: $14
    sub h                                         ; $4DC2: $94
    ld b, d                                       ; $4DC3: $42
    sub e                                         ; $4DC4: $93
    ld h, l                                       ; $4DC5: $65
    or $49                                        ; $4DC6: $F6 $49
    ld c, a                                       ; $4DC8: $4F
    ld h, h                                       ; $4DC9: $64
    ld [hl], h                                    ; $4DCA: $74
    ld c, l                                       ; $4DCB: $4D
    ld h, [hl]                                    ; $4DCC: $66
    ret nz                                        ; $4DCD: $C0

    ld e, h                                       ; $4DCE: $5C
    ld hl, $0005                                  ; $4DCF: $21 $05 $00
    add c                                         ; $4DD2: $81
    ld e, l                                       ; $4DD3: $5D
    dec b                                         ; $4DD4: $05
    dec b                                         ; $4DD5: $05

jr_017_4DD6:
    add d                                         ; $4DD6: $82
    ret nc                                        ; $4DD7: $D0

    nop                                           ; $4DD8: $00
    jr nz, jr_017_4DD6                            ; $4DD9: $20 $FB

    ld d, b                                       ; $4DDB: $50
    ld [hl+], a                                   ; $4DDC: $22
    dec b                                         ; $4DDD: $05
    ld b, b                                       ; $4DDE: $40
    dec b                                         ; $4DDF: $05
    jr nz, @-$30                                  ; $4DE0: $20 $CE

    ld h, e                                       ; $4DE2: $63
    ld a, [bc]                                    ; $4DE3: $0A
    add hl, bc                                    ; $4DE4: $09
    db $EB                                        ; $4DE5: $EB
    ret nc                                        ; $4DE6: $D0

    nop                                           ; $4DE7: $00
    ld [hl+], a                                   ; $4DE8: $22
    jp c, $1740                                   ; $4DE9: $DA $40 $17

    ldh [rVBK], a                                 ; $4DEC: $E0 $4F
    dec bc                                        ; $4DEE: $0B
    nop                                           ; $4DEF: $00
    dec bc                                        ; $4DF0: $0B
    jr nz, jr_017_4E5E                            ; $4DF1: $20 $6B

    inc [hl]                                      ; $4DF3: $34
    dec c                                         ; $4DF4: $0D
    jr nc, jr_017_4E61                            ; $4DF5: $30 $6A

    nop                                           ; $4DF7: $00
    add b                                         ; $4DF8: $80
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    ld sp, $C417                                  ; $4DFB: $31 $17 $C4
    ld c, l                                       ; $4DFE: $4D
    ld [hl+], a                                   ; $4DFF: $22
    adc $40                                       ; $4E00: $CE $40
    add d                                         ; $4E02: $82

jr_017_4E03:
    rra                                           ; $4E03: $1F
    inc d                                         ; $4E04: $14
    sub h                                         ; $4E05: $94
    ld b, d                                       ; $4E06: $42
    ld b, e                                       ; $4E07: $43
    inc de                                        ; $4E08: $13
    inc b                                         ; $4E09: $04
    dec b                                         ; $4E0A: $05
    inc c                                         ; $4E0B: $0C
    rla                                           ; $4E0C: $17
    ld a, $4E                                     ; $4E0D: $3E $4E
    ld [bc], a                                    ; $4E0F: $02
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    jr nc, jr_017_4E03                            ; $4E14: $30 $ED

    ld d, [hl]                                    ; $4E16: $56
    inc c                                         ; $4E17: $0C
    ld b, a                                       ; $4E18: $47
    inc c                                         ; $4E19: $0C
    rla                                           ; $4E1A: $17
    ld h, h                                       ; $4E1B: $64

jr_017_4E1C:
    ld c, [hl]                                    ; $4E1C: $4E
    rla                                           ; $4E1D: $17
    add b                                         ; $4E1E: $80

jr_017_4E1F:
    ld c, [hl]                                    ; $4E1F: $4E
    rla                                           ; $4E20: $17
    sub l                                         ; $4E21: $95
    ld c, [hl]                                    ; $4E22: $4E
    rla                                           ; $4E23: $17
    xor d                                         ; $4E24: $AA
    ld c, [hl]                                    ; $4E25: $4E
    rla                                           ; $4E26: $17
    cp b                                          ; $4E27: $B8
    ld c, [hl]                                    ; $4E28: $4E
    rla                                           ; $4E29: $17
    call $174E                                    ; $4E2A: $CD $4E $17
    jp hl                                         ; $4E2D: $E9


    ld c, [hl]                                    ; $4E2E: $4E
    rla                                           ; $4E2F: $17
    dec b                                         ; $4E30: $05
    ld c, a                                       ; $4E31: $4F

jr_017_4E32:
    rla                                           ; $4E32: $17
    add hl, hl                                    ; $4E33: $29
    ld c, a                                       ; $4E34: $4F
    rla                                           ; $4E35: $17
    ld a, $4F                                     ; $4E36: $3E $4F
    rla                                           ; $4E38: $17
    ld e, d                                       ; $4E39: $5A
    ld c, a                                       ; $4E3A: $4F
    rla                                           ; $4E3B: $17
    ld l, a                                       ; $4E3C: $6F
    ld c, a                                       ; $4E3D: $4F
    ld [bc], a                                    ; $4E3E: $02
    nop                                           ; $4E3F: $00
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    jr nc, jr_017_4E32                            ; $4E43: $30 $ED

    ld d, [hl]                                    ; $4E45: $56
    inc c                                         ; $4E46: $0C
    ld b, a                                       ; $4E47: $47
    add hl, bc                                    ; $4E48: $09
    rla                                           ; $4E49: $17
    ld h, h                                       ; $4E4A: $64
    ld c, [hl]                                    ; $4E4B: $4E
    rla                                           ; $4E4C: $17
    add b                                         ; $4E4D: $80
    ld c, [hl]                                    ; $4E4E: $4E
    rla                                           ; $4E4F: $17
    xor d                                         ; $4E50: $AA
    ld c, [hl]                                    ; $4E51: $4E
    rla                                           ; $4E52: $17
    cp b                                          ; $4E53: $B8
    ld c, [hl]                                    ; $4E54: $4E
    rla                                           ; $4E55: $17
    call $174E                                    ; $4E56: $CD $4E $17
    jp hl                                         ; $4E59: $E9


    ld c, [hl]                                    ; $4E5A: $4E
    rla                                           ; $4E5B: $17
    dec b                                         ; $4E5C: $05
    ld c, a                                       ; $4E5D: $4F

jr_017_4E5E:
    rla                                           ; $4E5E: $17
    ld a, $4F                                     ; $4E5F: $3E $4F

jr_017_4E61:
    rla                                           ; $4E61: $17
    ld l, a                                       ; $4E62: $6F
    ld c, a                                       ; $4E63: $4F
    dec h                                         ; $4E64: $25
    ld [bc], a                                    ; $4E65: $02
    ld l, h                                       ; $4E66: $6C
    rla                                           ; $4E67: $17
    ld c, h                                       ; $4E68: $4C
    inc hl                                        ; $4E69: $23
    ld b, b                                       ; $4E6A: $40
    ld l, $09                                     ; $4E6B: $2E $09
    ld a, [hl-]                                   ; $4E6D: $3A
    ld d, $2C                                     ; $4E6E: $16 $2C
    ld bc, $2E2B                                  ; $4E70: $01 $2B $2E
    add hl, bc                                    ; $4E73: $09
    add hl, hl                                    ; $4E74: $29
    dec d                                         ; $4E75: $15
    ld a, [hl+]                                   ; $4E76: $2A
    ld bc, $2E2B                                  ; $4E77: $01 $2B $2E
    add hl, bc                                    ; $4E7A: $09
    ld h, $15                                     ; $4E7B: $26 $15
    ld a, [hl+]                                   ; $4E7D: $2A
    ld bc, $2527                                  ; $4E7E: $01 $27 $25
    ld [bc], a                                    ; $4E81: $02
    ld l, h                                       ; $4E82: $6C
    ld d, $4C                                     ; $4E83: $16 $4C
    inc hl                                        ; $4E85: $23
    ld b, b                                       ; $4E86: $40
    ld l, $09                                     ; $4E87: $2E $09
    inc bc                                        ; $4E89: $03
    ld d, $2C                                     ; $4E8A: $16 $2C
    ld bc, $2E2B                                  ; $4E8C: $01 $2B $2E
    add hl, bc                                    ; $4E8F: $09
    add hl, hl                                    ; $4E90: $29
    inc d                                         ; $4E91: $14
    jr z, jr_017_4E95                             ; $4E92: $28 $01

    daa                                           ; $4E94: $27

jr_017_4E95:
    dec h                                         ; $4E95: $25
    ld [bc], a                                    ; $4E96: $02
    ld l, h                                       ; $4E97: $6C
    dec d                                         ; $4E98: $15
    ld c, h                                       ; $4E99: $4C
    inc hl                                        ; $4E9A: $23
    ld b, b                                       ; $4E9B: $40
    ld l, $09                                     ; $4E9C: $2E $09
    inc bc                                        ; $4E9E: $03
    ld d, $2C                                     ; $4E9F: $16 $2C
    ld bc, $2E2B                                  ; $4EA1: $01 $2B $2E
    add hl, bc                                    ; $4EA4: $09
    ld a, [hl+]                                   ; $4EA5: $2A
    dec d                                         ; $4EA6: $15
    ld a, [hl+]                                   ; $4EA7: $2A
    ld bc, $2527                                  ; $4EA8: $01 $27 $25
    ld [bc], a                                    ; $4EAB: $02
    ld l, h                                       ; $4EAC: $6C
    jr jr_017_4EFB                                ; $4EAD: $18 $4C

    inc hl                                        ; $4EAF: $23
    ld b, b                                       ; $4EB0: $40
    ld l, $09                                     ; $4EB1: $2E $09
    ld h, $18                                     ; $4EB3: $26 $18
    jr nc, jr_017_4EB8                            ; $4EB5: $30 $01

    daa                                           ; $4EB7: $27

jr_017_4EB8:
    dec h                                         ; $4EB8: $25
    ld [bc], a                                    ; $4EB9: $02
    ld l, h                                       ; $4EBA: $6C
    ld d, $4C                                     ; $4EBB: $16 $4C
    inc hl                                        ; $4EBD: $23
    ld b, b                                       ; $4EBE: $40
    ld l, $09                                     ; $4EBF: $2E $09
    ld a, [hl-]                                   ; $4EC1: $3A
    rla                                           ; $4EC2: $17
    ld l, $01                                     ; $4EC3: $2E $01
    dec hl                                        ; $4EC5: $2B
    ld l, $09                                     ; $4EC6: $2E $09
    ld h, $16                                     ; $4EC8: $26 $16
    inc l                                         ; $4ECA: $2C
    ld bc, $2527                                  ; $4ECB: $01 $27 $25
    ld [bc], a                                    ; $4ECE: $02
    ld l, h                                       ; $4ECF: $6C
    rla                                           ; $4ED0: $17
    ld c, h                                       ; $4ED1: $4C
    inc hl                                        ; $4ED2: $23
    ld b, b                                       ; $4ED3: $40
    ld l, $09                                     ; $4ED4: $2E $09
    ld a, [hl-]                                   ; $4ED6: $3A
    ld d, $2C                                     ; $4ED7: $16 $2C
    ld bc, $2E2B                                  ; $4ED9: $01 $2B $2E
    add hl, bc                                    ; $4EDC: $09
    inc bc                                        ; $4EDD: $03
    inc d                                         ; $4EDE: $14
    jr z, jr_017_4EE2                             ; $4EDF: $28 $01

    dec hl                                        ; $4EE1: $2B

jr_017_4EE2:
    ld l, $09                                     ; $4EE2: $2E $09
    inc bc                                        ; $4EE4: $03
    inc d                                         ; $4EE5: $14
    jr z, jr_017_4EE9                             ; $4EE6: $28 $01

    daa                                           ; $4EE8: $27

jr_017_4EE9:
    dec h                                         ; $4EE9: $25
    ld [bc], a                                    ; $4EEA: $02
    ld l, h                                       ; $4EEB: $6C
    ld d, $4C                                     ; $4EEC: $16 $4C
    inc hl                                        ; $4EEE: $23
    ld b, b                                       ; $4EEF: $40
    ld l, $09                                     ; $4EF0: $2E $09
    add hl, hl                                    ; $4EF2: $29
    ld d, $2C                                     ; $4EF3: $16 $2C
    ld bc, $2E2B                                  ; $4EF5: $01 $2B $2E
    add hl, bc                                    ; $4EF8: $09
    ld a, [hl-]                                   ; $4EF9: $3A
    inc d                                         ; $4EFA: $14

jr_017_4EFB:
    jr z, jr_017_4EFE                             ; $4EFB: $28 $01

    dec hl                                        ; $4EFD: $2B

jr_017_4EFE:
    ld l, $09                                     ; $4EFE: $2E $09
    ld h, $15                                     ; $4F00: $26 $15
    ld a, [hl+]                                   ; $4F02: $2A
    ld bc, $2527                                  ; $4F03: $01 $27 $25
    ld [bc], a                                    ; $4F06: $02
    ld l, h                                       ; $4F07: $6C
    jr jr_017_4F56                                ; $4F08: $18 $4C

    inc hl                                        ; $4F0A: $23
    ld b, b                                       ; $4F0B: $40
    ld l, $09                                     ; $4F0C: $2E $09
    add hl, hl                                    ; $4F0E: $29
    rla                                           ; $4F0F: $17
    ld l, $01                                     ; $4F10: $2E $01
    dec hl                                        ; $4F12: $2B
    ld l, $09                                     ; $4F13: $2E $09
    ld a, [hl-]                                   ; $4F15: $3A
    ld d, $2C                                     ; $4F16: $16 $2C
    ld bc, $2B2B                                  ; $4F18: $01 $2B $2B
    ld l, $09                                     ; $4F1B: $2E $09
    inc bc                                        ; $4F1D: $03
    inc d                                         ; $4F1E: $14
    jr z, jr_017_4F22                             ; $4F1F: $28 $01

    dec hl                                        ; $4F21: $2B

jr_017_4F22:
    ld l, $09                                     ; $4F22: $2E $09
    ld h, $14                                     ; $4F24: $26 $14
    jr z, jr_017_4F29                             ; $4F26: $28 $01

    daa                                           ; $4F28: $27

jr_017_4F29:
    dec h                                         ; $4F29: $25
    ld [bc], a                                    ; $4F2A: $02
    ld l, h                                       ; $4F2B: $6C
    dec d                                         ; $4F2C: $15
    ld c, h                                       ; $4F2D: $4C
    inc hl                                        ; $4F2E: $23
    ld b, b                                       ; $4F2F: $40
    ld l, $09                                     ; $4F30: $2E $09
    inc bc                                        ; $4F32: $03
    ld d, $2C                                     ; $4F33: $16 $2C
    ld bc, $2E2B                                  ; $4F35: $01 $2B $2E
    add hl, bc                                    ; $4F38: $09
    ld a, [hl+]                                   ; $4F39: $2A
    dec d                                         ; $4F3A: $15
    ld a, [hl+]                                   ; $4F3B: $2A
    ld bc, $2527                                  ; $4F3C: $01 $27 $25
    ld [bc], a                                    ; $4F3F: $02
    ld l, h                                       ; $4F40: $6C
    rla                                           ; $4F41: $17
    ld c, h                                       ; $4F42: $4C
    inc hl                                        ; $4F43: $23
    ld b, b                                       ; $4F44: $40
    ld l, $09                                     ; $4F45: $2E $09
    ld a, [hl-]                                   ; $4F47: $3A
    ld d, $2C                                     ; $4F48: $16 $2C
    ld bc, $2E2B                                  ; $4F4A: $01 $2B $2E
    add hl, bc                                    ; $4F4D: $09
    inc bc                                        ; $4F4E: $03
    inc d                                         ; $4F4F: $14
    jr z, jr_017_4F53                             ; $4F50: $28 $01

    dec hl                                        ; $4F52: $2B

jr_017_4F53:
    ld l, $09                                     ; $4F53: $2E $09
    inc bc                                        ; $4F55: $03

jr_017_4F56:
    inc d                                         ; $4F56: $14
    jr z, jr_017_4F5A                             ; $4F57: $28 $01

    daa                                           ; $4F59: $27

jr_017_4F5A:
    dec h                                         ; $4F5A: $25
    ld [bc], a                                    ; $4F5B: $02
    ld l, h                                       ; $4F5C: $6C
    dec d                                         ; $4F5D: $15
    ld c, h                                       ; $4F5E: $4C
    inc hl                                        ; $4F5F: $23
    ld b, b                                       ; $4F60: $40
    ld l, $09                                     ; $4F61: $2E $09
    inc bc                                        ; $4F63: $03
    ld d, $2C                                     ; $4F64: $16 $2C
    ld bc, $2E2B                                  ; $4F66: $01 $2B $2E
    add hl, bc                                    ; $4F69: $09
    ld a, [hl+]                                   ; $4F6A: $2A
    dec d                                         ; $4F6B: $15
    ld a, [hl+]                                   ; $4F6C: $2A
    ld bc, $2527                                  ; $4F6D: $01 $27 $25
    ld [bc], a                                    ; $4F70: $02
    ld l, h                                       ; $4F71: $6C
    ld d, $4C                                     ; $4F72: $16 $4C
    inc hl                                        ; $4F74: $23
    ld b, b                                       ; $4F75: $40
    ld l, $09                                     ; $4F76: $2E $09

jr_017_4F78:
    ld a, [hl-]                                   ; $4F78: $3A
    rla                                           ; $4F79: $17
    ld l, $01                                     ; $4F7A: $2E $01
    dec hl                                        ; $4F7C: $2B
    ld l, $09                                     ; $4F7D: $2E $09
    ld a, [hl-]                                   ; $4F7F: $3A
    ld d, $2C                                     ; $4F80: $16 $2C
    ld bc, $0227                                  ; $4F82: $01 $27 $02
    nop                                           ; $4F85: $00
    nop                                           ; $4F86: $00
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    jr nc, jr_017_4F78                            ; $4F89: $30 $ED

    ld d, [hl]                                    ; $4F8B: $56
    inc c                                         ; $4F8C: $0C
    ld b, a                                       ; $4F8D: $47
    inc bc                                        ; $4F8E: $03
    rla                                           ; $4F8F: $17
    sbc b                                         ; $4F90: $98
    ld c, a                                       ; $4F91: $4F
    rla                                           ; $4F92: $17
    or d                                          ; $4F93: $B2
    ld c, a                                       ; $4F94: $4F
    rla                                           ; $4F95: $17
    add $4F                                       ; $4F96: $C6 $4F
    dec h                                         ; $4F98: $25
    dec c                                         ; $4F99: $0D
    ld l, h                                       ; $4F9A: $6C
    ld b, [hl]                                    ; $4F9B: $46
    ld c, h                                       ; $4F9C: $4C
    inc hl                                        ; $4F9D: $23
    ld b, b                                       ; $4F9E: $40
    ld l, $09                                     ; $4F9F: $2E $09
    ld d, d                                       ; $4FA1: $52
    ld e, $3C                                     ; $4FA2: $1E $3C
    ld bc, $092E                                  ; $4FA4: $01 $2E $09
    dec c                                         ; $4FA7: $0D
    inc a                                         ; $4FA8: $3C
    ret z                                         ; $4FA9: $C8

    inc bc                                        ; $4FAA: $03
    ld l, $09                                     ; $4FAB: $2E $09
    ld d, d                                       ; $4FAD: $52
    ld e, $3C                                     ; $4FAE: $1E $3C
    ld bc, $2527                                  ; $4FB0: $01 $27 $25
    dec c                                         ; $4FB3: $0D
    ld l, h                                       ; $4FB4: $6C
    ld b, [hl]                                    ; $4FB5: $46
    ld c, h                                       ; $4FB6: $4C
    inc hl                                        ; $4FB7: $23
    ld b, b                                       ; $4FB8: $40
    ld l, $09                                     ; $4FB9: $2E $09
    jr nc, jr_017_4FE5                            ; $4FBB: $30 $28

    sub [hl]                                      ; $4FBD: $96
    ld bc, $092E                                  ; $4FBE: $01 $2E $09
    dec c                                         ; $4FC1: $0D
    inc a                                         ; $4FC2: $3C
    ret z                                         ; $4FC3: $C8

    ld [bc], a                                    ; $4FC4: $02
    daa                                           ; $4FC5: $27
    dec h                                         ; $4FC6: $25
    dec c                                         ; $4FC7: $0D
    ld l, h                                       ; $4FC8: $6C
    ld b, [hl]                                    ; $4FC9: $46
    ld c, h                                       ; $4FCA: $4C
    inc hl                                        ; $4FCB: $23
    ld b, b                                       ; $4FCC: $40
    ld l, $09                                     ; $4FCD: $2E $09
    ld e, $1E                                     ; $4FCF: $1E $1E
    inc a                                         ; $4FD1: $3C
    ld bc, $092E                                  ; $4FD2: $01 $2E $09
    jr nc, @+$2A                                  ; $4FD5: $30 $28

    sub [hl]                                      ; $4FD7: $96
    inc bc                                        ; $4FD8: $03
    ld l, $09                                     ; $4FD9: $2E $09
    ld e, $1E                                     ; $4FDB: $1E $1E
    inc a                                         ; $4FDD: $3C
    ld bc, $0227                                  ; $4FDE: $01 $27 $02
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00

jr_017_4FE5:
    jr nc, @-$11                                  ; $4FE5: $30 $ED

    ld d, [hl]                                    ; $4FE7: $56
    inc c                                         ; $4FE8: $0C
    ld b, a                                       ; $4FE9: $47
    inc bc                                        ; $4FEA: $03
    rla                                           ; $4FEB: $17
    db $F4                                        ; $4FEC: $F4
    ld c, a                                       ; $4FED: $4F
    rla                                           ; $4FEE: $17
    ld c, $50                                     ; $4FEF: $0E $50
    rla                                           ; $4FF1: $17
    ld [hl+], a                                   ; $4FF2: $22
    ld d, b                                       ; $4FF3: $50
    dec h                                         ; $4FF4: $25
    ld [bc], a                                    ; $4FF5: $02
    ld l, h                                       ; $4FF6: $6C
    ld b, [hl]                                    ; $4FF7: $46
    ld c, h                                       ; $4FF8: $4C
    inc hl                                        ; $4FF9: $23
    ld b, b                                       ; $4FFA: $40
    ld l, $09                                     ; $4FFB: $2E $09
    inc bc                                        ; $4FFD: $03
    ld e, $3C                                     ; $4FFE: $1E $3C
    ld bc, $092E                                  ; $5000: $01 $2E $09
    dec de                                        ; $5003: $1B
    inc a                                         ; $5004: $3C
    ret z                                         ; $5005: $C8

    inc bc                                        ; $5006: $03
    ld l, $09                                     ; $5007: $2E $09
    inc bc                                        ; $5009: $03
    ld e, $3C                                     ; $500A: $1E $3C
    ld bc, $2527                                  ; $500C: $01 $27 $25
    ld [bc], a                                    ; $500F: $02
    ld l, h                                       ; $5010: $6C
    ld b, [hl]                                    ; $5011: $46
    ld c, h                                       ; $5012: $4C
    inc hl                                        ; $5013: $23
    ld b, b                                       ; $5014: $40
    ld l, $09                                     ; $5015: $2E $09
    ld l, $28                                     ; $5017: $2E $28
    sub [hl]                                      ; $5019: $96
    ld bc, $092E                                  ; $501A: $01 $2E $09
    dec de                                        ; $501D: $1B
    inc a                                         ; $501E: $3C
    ret z                                         ; $501F: $C8

    ld [bc], a                                    ; $5020: $02
    daa                                           ; $5021: $27
    dec h                                         ; $5022: $25
    ld [bc], a                                    ; $5023: $02
    ld l, h                                       ; $5024: $6C
    ld b, [hl]                                    ; $5025: $46
    ld c, h                                       ; $5026: $4C
    inc hl                                        ; $5027: $23
    ld b, b                                       ; $5028: $40
    ld l, $09                                     ; $5029: $2E $09
    ld a, [hl-]                                   ; $502B: $3A
    ld e, $3C                                     ; $502C: $1E $3C
    ld bc, $092E                                  ; $502E: $01 $2E $09
    ld l, $28                                     ; $5031: $2E $28
    sub [hl]                                      ; $5033: $96
    inc bc                                        ; $5034: $03
    ld l, $09                                     ; $5035: $2E $09
    ld a, [hl-]                                   ; $5037: $3A
    ld e, $3C                                     ; $5038: $1E $3C
    ld bc, $1427                                  ; $503A: $01 $27 $14
    ld [hl+], a                                   ; $503D: $22
    inc b                                         ; $503E: $04
    ld b, b                                       ; $503F: $40
    ld de, $1B81                                  ; $5040: $11 $81 $1B
    dec e                                         ; $5043: $1D
    ld b, a                                       ; $5044: $47
    ld a, [bc]                                    ; $5045: $0A
    rla                                           ; $5046: $17
    ld a, h                                       ; $5047: $7C
    ld d, b                                       ; $5048: $50
    rla                                           ; $5049: $17
    ld a, h                                       ; $504A: $7C
    ld d, b                                       ; $504B: $50
    rla                                           ; $504C: $17
    ld a, h                                       ; $504D: $7C
    ld d, b                                       ; $504E: $50
    rla                                           ; $504F: $17
    ld a, h                                       ; $5050: $7C
    ld d, b                                       ; $5051: $50
    rla                                           ; $5052: $17
    ld a, h                                       ; $5053: $7C
    ld d, b                                       ; $5054: $50
    rla                                           ; $5055: $17
    ld a, h                                       ; $5056: $7C
    ld d, b                                       ; $5057: $50
    rla                                           ; $5058: $17
    ld a, h                                       ; $5059: $7C
    ld d, b                                       ; $505A: $50
    rla                                           ; $505B: $17
    ld a, h                                       ; $505C: $7C
    ld d, b                                       ; $505D: $50
    rla                                           ; $505E: $17
    ld a, h                                       ; $505F: $7C
    ld d, b                                       ; $5060: $50
    rla                                           ; $5061: $17
    ld h, h                                       ; $5062: $64
    ld d, b                                       ; $5063: $50
    inc de                                        ; $5064: $13
    and h                                         ; $5065: $A4
    ld h, l                                       ; $5066: $65
    ld bc, $0D0E                                  ; $5067: $01 $0E $0D
    dec d                                         ; $506A: $15
    ld de, $7A1F                                  ; $506B: $11 $1F $7A
    ld a, h                                       ; $506E: $7C
    nop                                           ; $506F: $00
    dec de                                        ; $5070: $1B
    nop                                           ; $5071: $00
    inc de                                        ; $5072: $13
    ld l, e                                       ; $5073: $6B
    ld c, d                                       ; $5074: $4A
    inc d                                         ; $5075: $14
    ld [hl+], a                                   ; $5076: $22
    inc b                                         ; $5077: $04
    ld b, b                                       ; $5078: $40
    ld b, [hl]                                    ; $5079: $46
    inc a                                         ; $507A: $3C
    ld d, b                                       ; $507B: $50
    ld b, b                                       ; $507C: $40
    jr nz, jr_017_50C5                            ; $507D: $20 $46

    inc a                                         ; $507F: $3C
    ld d, b                                       ; $5080: $50
    inc d                                         ; $5081: $14
    ld [hl+], a                                   ; $5082: $22
    inc b                                         ; $5083: $04
    ld b, b                                       ; $5084: $40
    ld de, $1B81                                  ; $5085: $11 $81 $1B
    dec e                                         ; $5088: $1D
    ld b, a                                       ; $5089: $47
    ld a, [bc]                                    ; $508A: $0A
    rla                                           ; $508B: $17
    pop bc                                        ; $508C: $C1
    ld d, b                                       ; $508D: $50
    rla                                           ; $508E: $17
    pop bc                                        ; $508F: $C1
    ld d, b                                       ; $5090: $50
    rla                                           ; $5091: $17
    pop bc                                        ; $5092: $C1
    ld d, b                                       ; $5093: $50
    rla                                           ; $5094: $17
    pop bc                                        ; $5095: $C1
    ld d, b                                       ; $5096: $50
    rla                                           ; $5097: $17
    pop bc                                        ; $5098: $C1
    ld d, b                                       ; $5099: $50
    rla                                           ; $509A: $17
    pop bc                                        ; $509B: $C1
    ld d, b                                       ; $509C: $50
    rla                                           ; $509D: $17
    pop bc                                        ; $509E: $C1
    ld d, b                                       ; $509F: $50
    rla                                           ; $50A0: $17
    pop bc                                        ; $50A1: $C1
    ld d, b                                       ; $50A2: $50
    rla                                           ; $50A3: $17
    pop bc                                        ; $50A4: $C1
    ld d, b                                       ; $50A5: $50
    rla                                           ; $50A6: $17
    xor c                                         ; $50A7: $A9
    ld d, b                                       ; $50A8: $50
    inc de                                        ; $50A9: $13
    and h                                         ; $50AA: $A4
    ld h, l                                       ; $50AB: $65
    ld bc, $0D0E                                  ; $50AC: $01 $0E $0D
    dec d                                         ; $50AF: $15
    ld de, $7119                                  ; $50B0: $11 $19 $71
    sbc $00                                       ; $50B3: $DE $00
    dec de                                        ; $50B5: $1B
    nop                                           ; $50B6: $00
    inc de                                        ; $50B7: $13

jr_017_50B8:
    ld l, e                                       ; $50B8: $6B
    ld c, d                                       ; $50B9: $4A
    inc d                                         ; $50BA: $14
    ld [hl+], a                                   ; $50BB: $22
    inc b                                         ; $50BC: $04
    ld b, b                                       ; $50BD: $40
    ld b, [hl]                                    ; $50BE: $46
    add c                                         ; $50BF: $81
    ld d, b                                       ; $50C0: $50
    ld b, b                                       ; $50C1: $40
    jr nz, jr_017_510A                            ; $50C2: $20 $46

    add c                                         ; $50C4: $81

jr_017_50C5:
    ld d, b                                       ; $50C5: $50
    sub e                                         ; $50C6: $93
    ld h, l                                       ; $50C7: $65
    cp d                                          ; $50C8: $BA
    ld c, c                                       ; $50C9: $49
    ld c, a                                       ; $50CA: $4F
    ld h, h                                       ; $50CB: $64
    ld c, d                                       ; $50CC: $4A
    ld c, l                                       ; $50CD: $4D
    ld h, [hl]                                    ; $50CE: $66
    ret nz                                        ; $50CF: $C0

    ld e, h                                       ; $50D0: $5C
    ld hl, $1795                                  ; $50D1: $21 $95 $17
    ld h, l                                       ; $50D4: $65
    ld d, c                                       ; $50D5: $51
    dec b                                         ; $50D6: $05
    nop                                           ; $50D7: $00
    add c                                         ; $50D8: $81
    ld e, l                                       ; $50D9: $5D
    dec b                                         ; $50DA: $05
    dec b                                         ; $50DB: $05

jr_017_50DC:
    ld sp, $00D1                                  ; $50DC: $31 $D1 $00
    jr nz, jr_017_50DC                            ; $50DF: $20 $FB

    ld d, b                                       ; $50E1: $50
    ld [hl+], a                                   ; $50E2: $22
    dec b                                         ; $50E3: $05
    ld b, b                                       ; $50E4: $40
    dec bc                                        ; $50E5: $0B
    nop                                           ; $50E6: $00
    dec b                                         ; $50E7: $05
    jr nz, jr_017_50B8                            ; $50E8: $20 $CE

    ld h, e                                       ; $50EA: $63
    ld a, [bc]                                    ; $50EB: $0A
    add hl, bc                                    ; $50EC: $09
    ld h, $D2                                     ; $50ED: $26 $D2
    nop                                           ; $50EF: $00
    ld [hl+], a                                   ; $50F0: $22
    jp c, $1740                                   ; $50F1: $DA $40 $17

    rlca                                          ; $50F4: $07
    ld c, [hl]                                    ; $50F5: $4E
    dec b                                         ; $50F6: $05
    rra                                           ; $50F7: $1F
    adc $63                                       ; $50F8: $CE $63
    ld a, [bc]                                    ; $50FA: $0A
    add hl, bc                                    ; $50FB: $09
    ld h, $D2                                     ; $50FC: $26 $D2
    nop                                           ; $50FE: $00
    ld [hl+], a                                   ; $50FF: $22
    jp c, $1740                                   ; $5100: $DA $40 $17

    rlca                                          ; $5103: $07
    ld c, [hl]                                    ; $5104: $4E
    dec b                                         ; $5105: $05
    ld e, $CE                                     ; $5106: $1E $CE
    ld h, e                                       ; $5108: $63
    ld a, [bc]                                    ; $5109: $0A

jr_017_510A:
    add hl, bc                                    ; $510A: $09
    ld h, $D2                                     ; $510B: $26 $D2
    ld b, [hl]                                    ; $510D: $46
    rla                                           ; $510E: $17
    add c                                         ; $510F: $81
    ld d, b                                       ; $5110: $50
    rla                                           ; $5111: $17
    ld l, h                                       ; $5112: $6C
    ld c, l                                       ; $5113: $4D
    dec bc                                        ; $5114: $0B
    nop                                           ; $5115: $00
    dec bc                                        ; $5116: $0B
    jr nz, jr_017_5124                            ; $5117: $20 $0B

    rra                                           ; $5119: $1F
    dec bc                                        ; $511A: $0B
    ld e, $6B                                     ; $511B: $1E $6B
    inc [hl]                                      ; $511D: $34
    dec c                                         ; $511E: $0D
    jr nc, jr_017_518B                            ; $511F: $30 $6A

    nop                                           ; $5121: $00
    add b                                         ; $5122: $80
    nop                                           ; $5123: $00

jr_017_5124:
    ld l, e                                       ; $5124: $6B
    ld [de], a                                    ; $5125: $12

jr_017_5126:
    inc h                                         ; $5126: $24
    ret nz                                        ; $5127: $C0

    ld h, h                                       ; $5128: $64
    ld b, b                                       ; $5129: $40
    add e                                         ; $512A: $83
    nop                                           ; $512B: $00
    ld l, e                                       ; $512C: $6B
    db $10                                        ; $512D: $10
    ld a, [bc]                                    ; $512E: $0A
    add b                                         ; $512F: $80
    ld a, c                                       ; $5130: $79
    ld h, b                                       ; $5131: $60
    add h                                         ; $5132: $84
    nop                                           ; $5133: $00
    ld sp, $C617                                  ; $5134: $31 $17 $C6
    ld d, b                                       ; $5137: $50
    ld [hl+], a                                   ; $5138: $22
    adc $40                                       ; $5139: $CE $40
    nop                                           ; $513B: $00
    add d                                         ; $513C: $82
    rra                                           ; $513D: $1F
    ld hl, $0A43                                  ; $513E: $21 $43 $0A
    nop                                           ; $5141: $00
    xor a                                         ; $5142: $AF
    and c                                         ; $5143: $A1
    ld bc, $5117                                  ; $5144: $01 $17 $51
    ld d, c                                       ; $5147: $51
    ld a, [hl]                                    ; $5148: $7E
    nop                                           ; $5149: $00
    ret nc                                        ; $514A: $D0

    ld [bc], a                                    ; $514B: $02
    ld [bc], a                                    ; $514C: $02
    jr jr_017_5126                                ; $514D: $18 $D7

    ld e, $10                                     ; $514F: $1E $10
    ld b, e                                       ; $5151: $43
    ld a, [bc]                                    ; $5152: $0A
    nop                                           ; $5153: $00
    xor a                                         ; $5154: $AF
    and c                                         ; $5155: $A1
    ld [bc], a                                    ; $5156: $02
    rla                                           ; $5157: $17
    ld h, e                                       ; $5158: $63
    ld d, c                                       ; $5159: $51
    ld a, [hl]                                    ; $515A: $7E
    ld [bc], a                                    ; $515B: $02
    ret nc                                        ; $515C: $D0

    ld [bc], a                                    ; $515D: $02
    ld [bc], a                                    ; $515E: $02
    ld a, d                                       ; $515F: $7A
    sub $1B                                       ; $5160: $D6 $1B
    ld h, $94                                     ; $5162: $26 $94
    ld b, d                                       ; $5164: $42
    ld b, e                                       ; $5165: $43
    ld [$010F], sp                                ; $5166: $08 $0F $01
    inc h                                         ; $5169: $24
    rst $00                                       ; $516A: $C7
    ld b, $2A                                     ; $516B: $06 $2A
    nop                                           ; $516D: $00
    rrca                                          ; $516E: $0F
    ld bc, $C725                                  ; $516F: $01 $25 $C7
    ld b, $B0                                     ; $5172: $06 $B0
    nop                                           ; $5174: $00
    rla                                           ; $5175: $17
    adc a                                         ; $5176: $8F
    ld d, c                                       ; $5177: $51
    ld b, e                                       ; $5178: $43
    ld [$010F], sp                                ; $5179: $08 $0F $01
    inc h                                         ; $517C: $24
    rst $00                                       ; $517D: $C7
    ld b, $2A                                     ; $517E: $06 $2A
    nop                                           ; $5180: $00
    rrca                                          ; $5181: $0F
    ld bc, $C725                                  ; $5182: $01 $25 $C7
    ld b, $B1                                     ; $5185: $06 $B1

jr_017_5187:
    nop                                           ; $5187: $00
    rla                                           ; $5188: $17
    sbc d                                         ; $5189: $9A
    ld d, c                                       ; $518A: $51

jr_017_518B:
    ld b, l                                       ; $518B: $45
    ld [hl+], a                                   ; $518C: $22
    ld b, $40                                     ; $518D: $06 $40

jr_017_518F:
    xor a                                         ; $518F: $AF
    xor a                                         ; $5190: $AF
    and c                                         ; $5191: $A1
    ld bc, $175A                                  ; $5192: $01 $5A $17
    pop bc                                        ; $5195: $C1
    ld d, c                                       ; $5196: $51
    ld b, [hl]                                    ; $5197: $46

jr_017_5198:
    and d                                         ; $5198: $A2
    ld d, c                                       ; $5199: $51
    xor a                                         ; $519A: $AF
    xor a                                         ; $519B: $AF
    and c                                         ; $519C: $A1
    ld [bc], a                                    ; $519D: $02
    ld e, d                                       ; $519E: $5A
    rla                                           ; $519F: $17
    call $8851                                    ; $51A0: $CD $51 $88
    nop                                           ; $51A3: $00
    ld a, [hl+]                                   ; $51A4: $2A
    ld bc, $0007                                  ; $51A5: $01 $07 $00
    ld l, e                                       ; $51A8: $6B
    ld c, d                                       ; $51A9: $4A
    add hl, bc                                    ; $51AA: $09
    nop                                           ; $51AB: $00
    rla                                           ; $51AC: $17
    reti                                          ; $51AD: $D9


    ld d, c                                       ; $51AE: $51
    dec b                                         ; $51AF: $05
    ld [bc], a                                    ; $51B0: $02
    ld l, e                                       ; $51B1: $6B
    ld c, d                                       ; $51B2: $4A
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    ret nc                                        ; $51B6: $D0

    inc [hl]                                      ; $51B7: $34
    rla                                           ; $51B8: $17
    xor $51                                       ; $51B9: $EE $51
    ld [hl+], a                                   ; $51BB: $22
    inc b                                         ; $51BC: $04
    ld b, b                                       ; $51BD: $40
    dec bc                                        ; $51BE: $0B
    ld [bc], a                                    ; $51BF: $02
    ld b, d                                       ; $51C0: $42
    ld b, b                                       ; $51C1: $40
    ld h, h                                       ; $51C2: $64
    ld a, [hl]                                    ; $51C3: $7E
    nop                                           ; $51C4: $00
    ret nc                                        ; $51C5: $D0

    ld [bc], a                                    ; $51C6: $02
    ld [bc], a                                    ; $51C7: $02
    jr @-$27                                      ; $51C8: $18 $D7

    ld e, $10                                     ; $51CA: $1E $10
    ld b, d                                       ; $51CC: $42
    ld b, b                                       ; $51CD: $40
    ld h, h                                       ; $51CE: $64
    ld a, [hl]                                    ; $51CF: $7E
    ld [bc], a                                    ; $51D0: $02
    ret nc                                        ; $51D1: $D0

    ld [bc], a                                    ; $51D2: $02
    ld [bc], a                                    ; $51D3: $02
    ld a, d                                       ; $51D4: $7A
    sub $1B                                       ; $51D5: $D6 $1B
    ld h, $42                                     ; $51D7: $26 $42
    dec d                                         ; $51D9: $15
    jr nz, jr_017_5187                            ; $51DA: $20 $AB

    ld d, b                                       ; $51DC: $50
    db $10                                        ; $51DD: $10
    jr nz, @+$5F                                  ; $51DE: $20 $5D

    ld d, b                                       ; $51E0: $50
    db $10                                        ; $51E1: $10
    jr nz, jr_017_518F                            ; $51E2: $20 $AB

    ld d, b                                       ; $51E4: $50
    ld b, b                                       ; $51E5: $40
    nop                                           ; $51E6: $00
    inc de                                        ; $51E7: $13
    add c                                         ; $51E8: $81
    ld e, l                                       ; $51E9: $5D
    ld b, l                                       ; $51EA: $45
    jr nz, jr_017_5198                            ; $51EB: $20 $AB

    ld d, b                                       ; $51ED: $50
    rrca                                          ; $51EE: $0F
    nop                                           ; $51EF: $00
    dec de                                        ; $51F0: $1B
    inc bc                                        ; $51F1: $03
    dec d                                         ; $51F2: $15
    ld de, $7978                                  ; $51F3: $11 $78 $79
    jr nz, jr_017_51F8                            ; $51F6: $20 $00

jr_017_51F8:
    add e                                         ; $51F8: $83
    ld bc, $0003                                  ; $51F9: $01 $03 $00
    nop                                           ; $51FC: $00
    add e                                         ; $51FD: $83
    ld bc, $00FD                                  ; $51FE: $01 $FD $00
    nop                                           ; $5201: $00
    add e                                         ; $5202: $83
    ld bc, $FD03                                  ; $5203: $01 $03 $FD
    nop                                           ; $5206: $00
    add e                                         ; $5207: $83
    ld bc, $03FD                                  ; $5208: $01 $FD $03
    nop                                           ; $520B: $00
    add e                                         ; $520C: $83
    ld bc, $FD00                                  ; $520D: $01 $00 $FD
    nop                                           ; $5210: $00
    add e                                         ; $5211: $83
    ld bc, $0300                                  ; $5212: $01 $00 $03
    nop                                           ; $5215: $00
    ld b, d                                       ; $5216: $42
    ld [bc], a                                    ; $5217: $02
    inc sp                                        ; $5218: $33
    cpl                                           ; $5219: $2F
    dec e                                         ; $521A: $1D
    nop                                           ; $521B: $00
    ld b, l                                       ; $521C: $45
    rla                                           ; $521D: $17
    add $50                                       ; $521E: $C6 $50
    ld [bc], a                                    ; $5220: $02
    ld [hl-], a                                   ; $5221: $32

jr_017_5222:
    ld de, $1300                                  ; $5222: $11 $00 $13
    ld b, l                                       ; $5225: $45
    rla                                           ; $5226: $17
    adc $52                                       ; $5227: $CE $52
    and h                                         ; $5229: $A4
    inc l                                         ; $522A: $2C
    and e                                         ; $522B: $A3
    ld b, b                                       ; $522C: $40
    ld [bc], a                                    ; $522D: $02
    inc c                                         ; $522E: $0C
    db $FC                                        ; $522F: $FC
    ret nc                                        ; $5230: $D0

    sub e                                         ; $5231: $93
    ld h, l                                       ; $5232: $65
    dec b                                         ; $5233: $05
    ld c, d                                       ; $5234: $4A
    ld c, a                                       ; $5235: $4F
    ld h, h                                       ; $5236: $64
    ld a, c                                       ; $5237: $79
    ld c, l                                       ; $5238: $4D
    ld h, [hl]                                    ; $5239: $66
    ret nz                                        ; $523A: $C0

    ld e, h                                       ; $523B: $5C
    ld hl, $8269                                  ; $523C: $21 $69 $82
    ld c, l                                       ; $523F: $4D
    dec b                                         ; $5240: $05
    nop                                           ; $5241: $00
    add c                                         ; $5242: $81
    ld e, l                                       ; $5243: $5D
    dec b                                         ; $5244: $05
    dec b                                         ; $5245: $05

jr_017_5246:
    ld sp, $00D1                                  ; $5246: $31 $D1 $00
    jr nz, jr_017_5246                            ; $5249: $20 $FB

    ld d, b                                       ; $524B: $50
    ld [hl+], a                                   ; $524C: $22
    dec b                                         ; $524D: $05
    ld b, b                                       ; $524E: $40
    dec bc                                        ; $524F: $0B
    nop                                           ; $5250: $00
    dec b                                         ; $5251: $05
    jr nz, jr_017_5222                            ; $5252: $20 $CE

    ld h, e                                       ; $5254: $63
    ld a, [bc]                                    ; $5255: $0A
    add hl, bc                                    ; $5256: $09
    ld h, $D2                                     ; $5257: $26 $D2
    nop                                           ; $5259: $00
    ld [hl+], a                                   ; $525A: $22
    jp c, $1740                                   ; $525B: $DA $40 $17

    rlca                                          ; $525E: $07
    ld c, [hl]                                    ; $525F: $4E
    dec b                                         ; $5260: $05
    rra                                           ; $5261: $1F
    adc $63                                       ; $5262: $CE $63
    ld a, [bc]                                    ; $5264: $0A
    add hl, bc                                    ; $5265: $09
    ld h, $D2                                     ; $5266: $26 $D2
    nop                                           ; $5268: $00
    ld [hl+], a                                   ; $5269: $22
    jp c, $1740                                   ; $526A: $DA $40 $17

    rlca                                          ; $526D: $07
    ld c, [hl]                                    ; $526E: $4E
    dec b                                         ; $526F: $05
    ld e, $CE                                     ; $5270: $1E $CE
    ld h, e                                       ; $5272: $63
    ld a, [bc]                                    ; $5273: $0A
    add hl, bc                                    ; $5274: $09
    ld h, $D2                                     ; $5275: $26 $D2
    ld b, [hl]                                    ; $5277: $46
    rla                                           ; $5278: $17
    add c                                         ; $5279: $81
    ld d, b                                       ; $527A: $50
    rla                                           ; $527B: $17
    ld l, h                                       ; $527C: $6C
    ld c, l                                       ; $527D: $4D
    dec bc                                        ; $527E: $0B
    nop                                           ; $527F: $00
    dec bc                                        ; $5280: $0B
    jr nz, jr_017_528E                            ; $5281: $20 $0B

    rra                                           ; $5283: $1F
    dec bc                                        ; $5284: $0B
    ld e, $6B                                     ; $5285: $1E $6B
    db $10                                        ; $5287: $10
    ld a, [bc]                                    ; $5288: $0A
    add b                                         ; $5289: $80
    ld a, c                                       ; $528A: $79
    ld h, b                                       ; $528B: $60
    add h                                         ; $528C: $84
    nop                                           ; $528D: $00

jr_017_528E:
    ld l, e                                       ; $528E: $6B
    inc [hl]                                      ; $528F: $34
    dec c                                         ; $5290: $0D
    jr nc, jr_017_52FD                            ; $5291: $30 $6A

    nop                                           ; $5293: $00
    add b                                         ; $5294: $80
    nop                                           ; $5295: $00
    ld sp, $3117                                  ; $5296: $31 $17 $31
    ld d, d                                       ; $5299: $52
    ld [hl+], a                                   ; $529A: $22
    adc $40                                       ; $529B: $CE $40
    nop                                           ; $529D: $00
    add d                                         ; $529E: $82
    rra                                           ; $529F: $1F
    ld hl, $4294                                  ; $52A0: $21 $94 $42
    ld [bc], a                                    ; $52A3: $02
    ld de, $1332                                  ; $52A4: $11 $32 $13
    nop                                           ; $52A7: $00
    ld b, l                                       ; $52A8: $45
    rla                                           ; $52A9: $17
    ld sp, $0252                                  ; $52AA: $31 $52 $02
    inc sp                                        ; $52AD: $33
    ld h, $13                                     ; $52AE: $26 $13
    nop                                           ; $52B0: $00
    ld b, l                                       ; $52B1: $45
    rla                                           ; $52B2: $17
    ld e, e                                       ; $52B3: $5B
    ld d, [hl]                                    ; $52B4: $56
    ld [bc], a                                    ; $52B5: $02
    dec sp                                        ; $52B6: $3B
    nop                                           ; $52B7: $00
    ld [$4507], sp                                ; $52B8: $08 $07 $45
    rla                                           ; $52BB: $17
    dec [hl]                                      ; $52BC: $35
    ld e, h                                       ; $52BD: $5C
    and h                                         ; $52BE: $A4

jr_017_52BF:
    inc l                                         ; $52BF: $2C
    and e                                         ; $52C0: $A3
    add b                                         ; $52C1: $80
    nop                                           ; $52C2: $00
    inc bc                                        ; $52C3: $03
    ei                                            ; $52C4: $FB
    ret nc                                        ; $52C5: $D0

    and h                                         ; $52C6: $A4
    jr nc, @-$5B                                  ; $52C7: $30 $A3

    ld bc, $0200                                  ; $52C9: $01 $00 $02
    rst $28                                       ; $52CC: $EF
    db $D3                                        ; $52CD: $D3
    sub e                                         ; $52CE: $93
    ld h, l                                       ; $52CF: $65
    inc d                                         ; $52D0: $14
    ld c, d                                       ; $52D1: $4A
    ld c, a                                       ; $52D2: $4F
    ld h, h                                       ; $52D3: $64
    add a                                         ; $52D4: $87
    ld c, l                                       ; $52D5: $4D
    ld h, [hl]                                    ; $52D6: $66
    ret nz                                        ; $52D7: $C0

    ld e, h                                       ; $52D8: $5C
    ld hl, $9469                                  ; $52D9: $21 $69 $94
    ld c, l                                       ; $52DC: $4D
    dec b                                         ; $52DD: $05
    nop                                           ; $52DE: $00
    add c                                         ; $52DF: $81
    ld e, l                                       ; $52E0: $5D
    dec b                                         ; $52E1: $05
    dec b                                         ; $52E2: $05

jr_017_52E3:
    ld sp, $00D1                                  ; $52E3: $31 $D1 $00
    jr nz, jr_017_52E3                            ; $52E6: $20 $FB

    ld d, b                                       ; $52E8: $50
    ld [hl+], a                                   ; $52E9: $22
    dec b                                         ; $52EA: $05
    ld b, b                                       ; $52EB: $40
    dec bc                                        ; $52EC: $0B
    nop                                           ; $52ED: $00
    dec b                                         ; $52EE: $05
    jr nz, jr_017_52BF                            ; $52EF: $20 $CE

    ld h, e                                       ; $52F1: $63
    ld a, [bc]                                    ; $52F2: $0A
    add hl, bc                                    ; $52F3: $09
    ld h, $D2                                     ; $52F4: $26 $D2
    nop                                           ; $52F6: $00
    ld [hl+], a                                   ; $52F7: $22
    jp c, $1740                                   ; $52F8: $DA $40 $17

    rlca                                          ; $52FB: $07
    ld c, [hl]                                    ; $52FC: $4E

jr_017_52FD:
    dec b                                         ; $52FD: $05
    rra                                           ; $52FE: $1F
    adc $63                                       ; $52FF: $CE $63
    ld a, [bc]                                    ; $5301: $0A
    add hl, bc                                    ; $5302: $09
    ld h, $D2                                     ; $5303: $26 $D2
    nop                                           ; $5305: $00
    ld [hl+], a                                   ; $5306: $22
    jp c, $1740                                   ; $5307: $DA $40 $17

    rlca                                          ; $530A: $07
    ld c, [hl]                                    ; $530B: $4E
    dec b                                         ; $530C: $05
    ld e, $CE                                     ; $530D: $1E $CE
    ld h, e                                       ; $530F: $63
    ld a, [bc]                                    ; $5310: $0A
    add hl, bc                                    ; $5311: $09
    ld h, $D2                                     ; $5312: $26 $D2
    ld b, [hl]                                    ; $5314: $46
    rla                                           ; $5315: $17
    add c                                         ; $5316: $81
    ld d, b                                       ; $5317: $50
    rla                                           ; $5318: $17
    ld l, h                                       ; $5319: $6C
    ld c, l                                       ; $531A: $4D
    dec bc                                        ; $531B: $0B
    nop                                           ; $531C: $00
    dec bc                                        ; $531D: $0B
    jr nz, jr_017_532B                            ; $531E: $20 $0B

    rra                                           ; $5320: $1F
    dec bc                                        ; $5321: $0B
    ld e, $6B                                     ; $5322: $1E $6B
    db $10                                        ; $5324: $10
    ld a, [bc]                                    ; $5325: $0A
    add b                                         ; $5326: $80
    ld a, c                                       ; $5327: $79
    ld h, b                                       ; $5328: $60
    add h                                         ; $5329: $84
    nop                                           ; $532A: $00

jr_017_532B:
    ld l, e                                       ; $532B: $6B
    inc [hl]                                      ; $532C: $34
    dec c                                         ; $532D: $0D
    jr nc, jr_017_539A                            ; $532E: $30 $6A

    nop                                           ; $5330: $00

jr_017_5331:
    add b                                         ; $5331: $80
    nop                                           ; $5332: $00
    ld sp, $CE17                                  ; $5333: $31 $17 $CE
    ld d, d                                       ; $5336: $52
    ld [hl+], a                                   ; $5337: $22
    adc $40                                       ; $5338: $CE $40
    nop                                           ; $533A: $00
    add d                                         ; $533B: $82
    rra                                           ; $533C: $1F
    ld hl, $4294                                  ; $533D: $21 $94 $42
    sub e                                         ; $5340: $93
    ld h, l                                       ; $5341: $65
    inc d                                         ; $5342: $14
    ld c, d                                       ; $5343: $4A
    ld c, a                                       ; $5344: $4F
    ld h, h                                       ; $5345: $64
    add a                                         ; $5346: $87
    ld c, l                                       ; $5347: $4D
    ld h, [hl]                                    ; $5348: $66
    ret nz                                        ; $5349: $C0

    ld e, h                                       ; $534A: $5C

jr_017_534B:
    ld hl, $9469                                  ; $534B: $21 $69 $94
    ld c, l                                       ; $534E: $4D
    dec b                                         ; $534F: $05
    nop                                           ; $5350: $00
    ld l, e                                       ; $5351: $6B
    ld c, d                                       ; $5352: $4A
    dec hl                                        ; $5353: $2B
    dec c                                         ; $5354: $0D
    scf                                           ; $5355: $37
    db $D3                                        ; $5356: $D3
    nop                                           ; $5357: $00
    rla                                           ; $5358: $17
    or e                                          ; $5359: $B3
    ld d, e                                       ; $535A: $53
    ld [hl+], a                                   ; $535B: $22
    dec b                                         ; $535C: $05
    ld b, b                                       ; $535D: $40
    dec bc                                        ; $535E: $0B
    nop                                           ; $535F: $00
    dec b                                         ; $5360: $05
    jr nz, jr_017_5331                            ; $5361: $20 $CE

    ld h, e                                       ; $5363: $63
    ld a, [bc]                                    ; $5364: $0A
    add hl, bc                                    ; $5365: $09
    ld h, $D2                                     ; $5366: $26 $D2
    nop                                           ; $5368: $00
    ld [hl+], a                                   ; $5369: $22
    jp c, $1740                                   ; $536A: $DA $40 $17

    rlca                                          ; $536D: $07
    ld c, [hl]                                    ; $536E: $4E
    dec b                                         ; $536F: $05
    rra                                           ; $5370: $1F
    adc $63                                       ; $5371: $CE $63
    ld a, [bc]                                    ; $5373: $0A
    add hl, bc                                    ; $5374: $09
    ld h, $D2                                     ; $5375: $26 $D2
    nop                                           ; $5377: $00
    ld [hl+], a                                   ; $5378: $22
    jp c, $1740                                   ; $5379: $DA $40 $17

    rlca                                          ; $537C: $07
    ld c, [hl]                                    ; $537D: $4E
    dec b                                         ; $537E: $05
    ld e, $CE                                     ; $537F: $1E $CE
    ld h, e                                       ; $5381: $63
    ld a, [bc]                                    ; $5382: $0A
    add hl, bc                                    ; $5383: $09
    ld h, $D2                                     ; $5384: $26 $D2
    ld b, [hl]                                    ; $5386: $46
    rla                                           ; $5387: $17
    add c                                         ; $5388: $81
    ld d, b                                       ; $5389: $50
    rla                                           ; $538A: $17
    ld l, h                                       ; $538B: $6C
    ld c, l                                       ; $538C: $4D
    dec bc                                        ; $538D: $0B
    nop                                           ; $538E: $00
    dec bc                                        ; $538F: $0B

jr_017_5390:
    jr nz, jr_017_539D                            ; $5390: $20 $0B

    rra                                           ; $5392: $1F
    dec bc                                        ; $5393: $0B
    ld e, $6B                                     ; $5394: $1E $6B
    db $10                                        ; $5396: $10
    ld a, [bc]                                    ; $5397: $0A
    add b                                         ; $5398: $80
    ld a, c                                       ; $5399: $79

jr_017_539A:
    ld h, b                                       ; $539A: $60
    add h                                         ; $539B: $84
    nop                                           ; $539C: $00

jr_017_539D:
    ld l, e                                       ; $539D: $6B
    inc [hl]                                      ; $539E: $34
    dec c                                         ; $539F: $0D
    jr nc, @+$6C                                  ; $53A0: $30 $6A

    nop                                           ; $53A2: $00
    add b                                         ; $53A3: $80
    nop                                           ; $53A4: $00
    ld sp, $CE17                                  ; $53A5: $31 $17 $CE
    ld d, d                                       ; $53A8: $52
    ld [hl+], a                                   ; $53A9: $22
    adc $40                                       ; $53AA: $CE $40
    add h                                         ; $53AC: $84
    dec hl                                        ; $53AD: $2B
    rrca                                          ; $53AE: $0F
    rra                                           ; $53AF: $1F
    ld hl, $4294                                  ; $53B0: $21 $94 $42
    dec d                                         ; $53B3: $15
    jr nz, jr_017_53EE                            ; $53B4: $20 $38

    ld e, h                                       ; $53B6: $5C
    db $10                                        ; $53B7: $10
    jr nz, jr_017_534B                            ; $53B8: $20 $91

    ld d, b                                       ; $53BA: $50
    jr nz, jr_017_53DD                            ; $53BB: $20 $20

    or l                                          ; $53BD: $B5
    ld d, b                                       ; $53BE: $50
    nop                                           ; $53BF: $00
    nop                                           ; $53C0: $00
    ld e, d                                       ; $53C1: $5A
    rla                                           ; $53C2: $17
    add $53                                       ; $53C3: $C6 $53
    ld b, d                                       ; $53C5: $42
    add e                                         ; $53C6: $83
    jr nz, jr_017_53CA                            ; $53C7: $20 $01

    nop                                           ; $53C9: $00

jr_017_53CA:
    nop                                           ; $53CA: $00
    add hl, bc                                    ; $53CB: $09
    nop                                           ; $53CC: $00
    jr @+$26                                      ; $53CD: $18 $24

    ld b, h                                       ; $53CF: $44
    ld b, d                                       ; $53D0: $42

jr_017_53D1:
    ld [bc], a                                    ; $53D1: $02
    ld h, $33                                     ; $53D2: $26 $33
    nop                                           ; $53D4: $00
    inc de                                        ; $53D5: $13
    ld b, l                                       ; $53D6: $45
    rla                                           ; $53D7: $17
    adc $52                                       ; $53D8: $CE $52
    ld [bc], a                                    ; $53DA: $02
    jr z, jr_017_5406                             ; $53DB: $28 $29

jr_017_53DD:
    dec e                                         ; $53DD: $1D
    nop                                           ; $53DE: $00
    ld b, l                                       ; $53DF: $45
    rla                                           ; $53E0: $17
    cp h                                          ; $53E1: $BC
    ld d, a                                       ; $53E2: $57
    ld bc, $0D0F                                  ; $53E3: $01 $0F $0D
    ld b, l                                       ; $53E6: $45
    rla                                           ; $53E7: $17
    ld a, $55                                     ; $53E8: $3E $55
    and h                                         ; $53EA: $A4
    jr nc, jr_017_5390                            ; $53EB: $30 $A3

    ld [bc], a                                    ; $53ED: $02

jr_017_53EE:
    nop                                           ; $53EE: $00
    ld [bc], a                                    ; $53EF: $02
    rrca                                          ; $53F0: $0F
    pop de                                        ; $53F1: $D1
    ld bc, $0B14                                  ; $53F2: $01 $14 $0B
    ld b, l                                       ; $53F5: $45
    rla                                           ; $53F6: $17
    ld e, e                                       ; $53F7: $5B
    ld d, [hl]                                    ; $53F8: $56
    and h                                         ; $53F9: $A4
    ld c, h                                       ; $53FA: $4C
    and e                                         ; $53FB: $A3
    inc b                                         ; $53FC: $04
    nop                                           ; $53FD: $00
    inc hl                                        ; $53FE: $23
    jr z, jr_017_53D1                             ; $53FF: $28 $D0

    sbc a                                         ; $5401: $9F
    ld c, h                                       ; $5402: $4C
    ld h, c                                       ; $5403: $61
    halt                                          ; $5404: $76
    ld h, c                                       ; $5405: $61

jr_017_5406:
    ld a, [hl-]                                   ; $5406: $3A
    jr nz, jr_017_5458                            ; $5407: $20 $4F

    ld [hl], l                                    ; $5409: $75
    ld [hl], d                                    ; $540A: $72
    cp $54                                        ; $540B: $FE $54
    ld h, l                                       ; $540D: $65
    ld l, l                                       ; $540E: $6D
    ld [hl], b                                    ; $540F: $70
    ld h, l                                       ; $5410: $65
    ld [hl], d                                    ; $5411: $72
    ld h, c                                       ; $5412: $61
    ld l, l                                       ; $5413: $6D
    ld h, l                                       ; $5414: $65
    ld l, [hl]                                    ; $5415: $6E
    ld [hl], h                                    ; $5416: $74
    ld h, c                                       ; $5417: $61
    ld l, h                                       ; $5418: $6C
    cp $4E                                        ; $5419: $FE $4E
    ld h, l                                       ; $541B: $65
    ld l, c                                       ; $541C: $69
    ld h, a                                       ; $541D: $67
    ld l, b                                       ; $541E: $68
    ld h, d                                       ; $541F: $62
    ld l, a                                       ; $5420: $6F
    ld [hl], d                                    ; $5421: $72
    ld l, $FE                                     ; $5422: $2E $FE
    db $FD                                        ; $5424: $FD
    sbc d                                         ; $5425: $9A
    ld b, d                                       ; $5426: $42
    sbc a                                         ; $5427: $9F
    ld c, b                                       ; $5428: $48
    ld l, a                                       ; $5429: $6F
    ld [hl], a                                    ; $542A: $77
    jr nz, jr_017_54A1                            ; $542B: $20 $74

    ld l, a                                       ; $542D: $6F
    jr nz, jr_017_5494                            ; $542E: $20 $64

    ld [hl], d                                    ; $5430: $72
    ld a, c                                       ; $5431: $79
    jr nz, jr_017_54AD                            ; $5432: $20 $79

    ld l, a                                       ; $5434: $6F
    ld [hl], l                                    ; $5435: $75
    ld [hl], d                                    ; $5436: $72
    rst $38                                       ; $5437: $FF
    ld [hl], b                                    ; $5438: $70
    ld [hl], d                                    ; $5439: $72
    ld l, a                                       ; $543A: $6F
    ld h, h                                       ; $543B: $64
    ld [hl], l                                    ; $543C: $75
    ld h, e                                       ; $543D: $63
    ld h, l                                       ; $543E: $65
    jr nz, @+$68                                  ; $543F: $20 $66

    ld l, a                                       ; $5441: $6F
    ld [hl], d                                    ; $5442: $72
    cp $6C                                        ; $5443: $FE $6C
    ld h, c                                       ; $5445: $61
    ld [hl], h                                    ; $5446: $74
    ld h, l                                       ; $5447: $65
    ld [hl], d                                    ; $5448: $72
    jr nz, jr_017_54C0                            ; $5449: $20 $75

    ld [hl], e                                    ; $544B: $73
    ld h, l                                       ; $544C: $65
    ld a, [hl-]                                   ; $544D: $3A
    cp $53                                        ; $544E: $FE $53
    ld [hl], h                                    ; $5450: $74
    ld h, l                                       ; $5451: $65
    ld [hl], b                                    ; $5452: $70
    jr nz, jr_017_5486                            ; $5453: $20 $31

    ld a, [hl-]                                   ; $5455: $3A
    jr nz, @+$52                                  ; $5456: $20 $50

jr_017_5458:
    ld [hl], l                                    ; $5458: $75
    ld [hl], h                                    ; $5459: $74
    jr nz, jr_017_54CB                            ; $545A: $20 $6F

    ld l, [hl]                                    ; $545C: $6E
    rst $38                                       ; $545D: $FF
    ld [hl], b                                    ; $545E: $70
    ld l, a                                       ; $545F: $6F
    ld [hl], d                                    ; $5460: $72
    ld h, e                                       ; $5461: $63
    ld l, b                                       ; $5462: $68
    ld l, $FE                                     ; $5463: $2E $FE
    ld d, e                                       ; $5465: $53
    ld [hl], h                                    ; $5466: $74
    ld h, l                                       ; $5467: $65
    ld [hl], b                                    ; $5468: $70
    jr nz, jr_017_549D                            ; $5469: $20 $32

    ld a, [hl-]                                   ; $546B: $3A
    jr nz, jr_017_54C5                            ; $546C: $20 $57

    ld h, c                                       ; $546E: $61
    ld l, c                                       ; $546F: $69
    ld [hl], h                                    ; $5470: $74
    jr nz, jr_017_54D4                            ; $5471: $20 $61

    rst $38                                       ; $5473: $FF
    ld l, l                                       ; $5474: $6D
    ld l, c                                       ; $5475: $69
    ld l, [hl]                                    ; $5476: $6E
    ld [hl], l                                    ; $5477: $75
    ld [hl], h                                    ; $5478: $74
    ld h, l                                       ; $5479: $65
    ld l, $FE                                     ; $547A: $2E $FE
    ld d, e                                       ; $547C: $53
    ld [hl], h                                    ; $547D: $74
    ld h, l                                       ; $547E: $65
    ld [hl], b                                    ; $547F: $70
    jr nz, jr_017_54B5                            ; $5480: $20 $33

    ld a, [hl-]                                   ; $5482: $3A
    jr nz, jr_017_54D9                            ; $5483: $20 $54

    ld l, b                                       ; $5485: $68

jr_017_5486:
    ld h, l                                       ; $5486: $65
    ld [hl], d                                    ; $5487: $72
    ld h, l                                       ; $5488: $65
    rst $38                                       ; $5489: $FF
    ld l, c                                       ; $548A: $69
    ld [hl], e                                    ; $548B: $73
    jr nz, @+$70                                  ; $548C: $20 $6E

    ld l, a                                       ; $548E: $6F
    jr nz, jr_017_54E4                            ; $548F: $20 $53

    ld [hl], h                                    ; $5491: $74
    ld h, l                                       ; $5492: $65
    ld [hl], b                                    ; $5493: $70

jr_017_5494:
    jr nz, jr_017_54C9                            ; $5494: $20 $33

    ld l, $FE                                     ; $5496: $2E $FE
    db $FD                                        ; $5498: $FD
    sbc d                                         ; $5499: $9A
    ld b, d                                       ; $549A: $42
    sbc e                                         ; $549B: $9B
    ld a, b                                       ; $549C: $78

jr_017_549D:
    ld [hl], b                                    ; $549D: $70
    sbc a                                         ; $549E: $9F
    ld b, e                                       ; $549F: $43
    ld l, h                                       ; $54A0: $6C

jr_017_54A1:
    ld l, a                                       ; $54A1: $6F
    ld [hl], h                                    ; $54A2: $74
    ld l, b                                       ; $54A3: $68
    ld h, l                                       ; $54A4: $65
    ld [hl], e                                    ; $54A5: $73
    ld hl, $57FE                                  ; $54A6: $21 $FE $57
    ld l, a                                       ; $54A9: $6F
    ld [hl], a                                    ; $54AA: $77
    ld l, $FE                                     ; $54AB: $2E $FE

jr_017_54AD:
    ld d, e                                       ; $54AD: $53
    ld l, a                                       ; $54AE: $6F
    ld l, l                                       ; $54AF: $6D
    ld h, l                                       ; $54B0: $65
    ld [hl], h                                    ; $54B1: $74
    ld l, b                                       ; $54B2: $68
    ld l, c                                       ; $54B3: $69
    ld l, [hl]                                    ; $54B4: $6E

jr_017_54B5:
    ld h, a                                       ; $54B5: $67
    rst $38                                       ; $54B6: $FF
    ld l, [hl]                                    ; $54B7: $6E
    ld l, a                                       ; $54B8: $6F
    ld [hl], d                                    ; $54B9: $72
    ld l, l                                       ; $54BA: $6D
    ld h, c                                       ; $54BB: $61
    ld l, h                                       ; $54BC: $6C
    ld l, $FE                                     ; $54BD: $2E $FE
    db $FD                                        ; $54BF: $FD

jr_017_54C0:
    sbc d                                         ; $54C0: $9A
    ld b, d                                       ; $54C1: $42
    sbc e                                         ; $54C2: $9B
    ld a, b                                       ; $54C3: $78
    ld [hl], b                                    ; $54C4: $70

jr_017_54C5:
    sbc a                                         ; $54C5: $9F
    ld c, c                                       ; $54C6: $49
    jr nz, jr_017_5540                            ; $54C7: $20 $77

jr_017_54C9:
    ld l, a                                       ; $54C9: $6F
    ld l, [hl]                                    ; $54CA: $6E

jr_017_54CB:
    ld h, h                                       ; $54CB: $64
    ld h, l                                       ; $54CC: $65
    ld [hl], d                                    ; $54CD: $72
    jr nz, jr_017_5539                            ; $54CE: $20 $69

    ld h, [hl]                                    ; $54D0: $66
    rst $38                                       ; $54D1: $FF
    ld [hl], h                                    ; $54D2: $74
    ld l, b                                       ; $54D3: $68

jr_017_54D4:
    ld h, l                                       ; $54D4: $65
    ld [hl], d                                    ; $54D5: $72
    ld h, l                                       ; $54D6: $65
    daa                                           ; $54D7: $27
    ld [hl], e                                    ; $54D8: $73

jr_017_54D9:
    jr nz, jr_017_553C                            ; $54D9: $20 $61

    cp $66                                        ; $54DB: $FE $66
    ld [hl], d                                    ; $54DD: $72
    ld l, c                                       ; $54DE: $69
    ld h, l                                       ; $54DF: $65
    ld l, [hl]                                    ; $54E0: $6E
    ld h, h                                       ; $54E1: $64
    jr nz, jr_017_5559                            ; $54E2: $20 $75

jr_017_54E4:
    ld l, [hl]                                    ; $54E4: $6E
    ld h, h                                       ; $54E5: $64
    ld h, l                                       ; $54E6: $65
    ld [hl], d                                    ; $54E7: $72
    rst $38                                       ; $54E8: $FF
    ld [hl], h                                    ; $54E9: $74
    ld l, b                                       ; $54EA: $68
    ld l, c                                       ; $54EB: $69
    ld [hl], e                                    ; $54EC: $73
    jr nz, jr_017_555F                            ; $54ED: $20 $70

    ld l, c                                       ; $54EF: $69
    ld l, h                                       ; $54F0: $6C
    ld l, h                                       ; $54F1: $6C
    ld l, a                                       ; $54F2: $6F
    ld [hl], a                                    ; $54F3: $77
    cp $66                                        ; $54F4: $FE $66
    ld l, a                                       ; $54F6: $6F
    ld [hl], d                                    ; $54F7: $72
    jr nz, jr_017_5567                            ; $54F8: $20 $6D

    ld h, l                                       ; $54FA: $65
    ld l, $2E                                     ; $54FB: $2E $2E
    ld l, $FE                                     ; $54FD: $2E $FE
    ld c, [hl]                                    ; $54FF: $4E
    ld l, a                                       ; $5500: $6F
    ld [hl], b                                    ; $5501: $70
    ld h, l                                       ; $5502: $65
    ld l, $FE                                     ; $5503: $2E $FE
    db $FD                                        ; $5505: $FD
    sbc d                                         ; $5506: $9A
    ld b, d                                       ; $5507: $42
    sbc a                                         ; $5508: $9F
    ld b, e                                       ; $5509: $43
    ld c, h                                       ; $550A: $4C
    ld c, a                                       ; $550B: $4F
    ld c, [hl]                                    ; $550C: $4E
    ld b, a                                       ; $550D: $47
    dec l                                         ; $550E: $2D
    ld b, e                                       ; $550F: $43
    ld c, h                                       ; $5510: $4C
    ld c, a                                       ; $5511: $4F
    ld c, [hl]                                    ; $5512: $4E
    ld b, a                                       ; $5513: $47
    dec l                                         ; $5514: $2D
    cp $43                                        ; $5515: $FE $43
    ld c, h                                       ; $5517: $4C
    ld c, a                                       ; $5518: $4F
    ld c, [hl]                                    ; $5519: $4E
    ld b, a                                       ; $551A: $47
    dec l                                         ; $551B: $2D
    ld b, e                                       ; $551C: $43
    ld c, h                                       ; $551D: $4C
    ld c, a                                       ; $551E: $4F
    ld c, [hl]                                    ; $551F: $4E
    ld b, a                                       ; $5520: $47
    dec l                                         ; $5521: $2D
    cp $2E                                        ; $5522: $FE $2E
    ld l, $2E                                     ; $5524: $2E $2E
    cp $43                                        ; $5526: $FE $43
    ld c, h                                       ; $5528: $4C
    ld c, a                                       ; $5529: $4F
    ld c, [hl]                                    ; $552A: $4E
    ld b, a                                       ; $552B: $47
    ld hl, $FDFE                                  ; $552C: $21 $FE $FD
    sbc e                                         ; $552F: $9B
    ld a, b                                       ; $5530: $78
    ld [hl], b                                    ; $5531: $70
    sbc a                                         ; $5532: $9F
    ld d, e                                       ; $5533: $53
    ld [hl], b                                    ; $5534: $70
    ld l, a                                       ; $5535: $6F
    ld l, a                                       ; $5536: $6F
    ld l, e                                       ; $5537: $6B
    ld a, c                                       ; $5538: $79

jr_017_5539:
    ld hl, $FDFE                                  ; $5539: $21 $FE $FD

jr_017_553C:
    sbc d                                         ; $553C: $9A
    ld b, d                                       ; $553D: $42
    sub e                                         ; $553E: $93
    ld h, l                                       ; $553F: $65

jr_017_5540:
    ld [hl-], a                                   ; $5540: $32
    ld c, d                                       ; $5541: $4A
    ld c, a                                       ; $5542: $4F
    ld h, h                                       ; $5543: $64
    xor a                                         ; $5544: $AF
    ld c, l                                       ; $5545: $4D
    ld l, c                                       ; $5546: $69
    or h                                          ; $5547: $B4
    ld c, l                                       ; $5548: $4D
    ld h, [hl]                                    ; $5549: $66
    ret nz                                        ; $554A: $C0

    ld e, h                                       ; $554B: $5C
    ld hl, $0005                                  ; $554C: $21 $05 $00
    add c                                         ; $554F: $81
    ld e, l                                       ; $5550: $5D
    dec b                                         ; $5551: $05
    dec b                                         ; $5552: $05

jr_017_5553:
    ld h, h                                       ; $5553: $64
    ret nc                                        ; $5554: $D0

    nop                                           ; $5555: $00
    jr nz, jr_017_5553                            ; $5556: $20 $FB

    ld d, b                                       ; $5558: $50

jr_017_5559:
    ld [hl+], a                                   ; $5559: $22
    dec b                                         ; $555A: $05
    ld b, b                                       ; $555B: $40
    dec b                                         ; $555C: $05
    ld [bc], a                                    ; $555D: $02
    db $ED                                        ; $555E: $ED

jr_017_555F:
    ld h, e                                       ; $555F: $63
    add hl, bc                                    ; $5560: $09
    inc bc                                        ; $5561: $03
    ld b, d                                       ; $5562: $42
    ret nc                                        ; $5563: $D0

    nop                                           ; $5564: $00
    rla                                           ; $5565: $17
    add [hl]                                      ; $5566: $86

jr_017_5567:
    ld d, l                                       ; $5567: $55
    rla                                           ; $5568: $17
    and e                                         ; $5569: $A3
    ld d, l                                       ; $556A: $55
    ld l, e                                       ; $556B: $6B
    dec hl                                        ; $556C: $2B
    dec bc                                        ; $556D: $0B
    ret nc                                        ; $556E: $D0

    ld c, c                                       ; $556F: $49
    nop                                           ; $5570: $00
    add b                                         ; $5571: $80
    nop                                           ; $5572: $00
    dec bc                                        ; $5573: $0B
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    add d                                         ; $5576: $82
    rra                                           ; $5577: $1F
    ld de, $4394                                  ; $5578: $11 $94 $43
    ld a, [bc]                                    ; $557B: $0A
    nop                                           ; $557C: $00
    and [hl]                                      ; $557D: $A6
    and c                                         ; $557E: $A1
    jr nz, jr_017_55A3                            ; $557F: $20 $22

    inc b                                         ; $5581: $04
    ld b, b                                       ; $5582: $40
    dec bc                                        ; $5583: $0B
    ld [bc], a                                    ; $5584: $02
    ld b, d                                       ; $5585: $42
    dec d                                         ; $5586: $15
    ld de, $478C                                  ; $5587: $11 $8C $47
    ld d, b                                       ; $558A: $50
    ld de, $47B4                                  ; $558B: $11 $B4 $47
    jr nc, jr_017_55A1                            ; $558E: $30 $11

    adc h                                         ; $5590: $8C
    ld b, a                                       ; $5591: $47
    ld h, b                                       ; $5592: $60
    ld de, $471C                                  ; $5593: $11 $1C $47
    jr nz, @+$13                                  ; $5596: $20 $11

    and b                                         ; $5598: $A0
    ld b, a                                       ; $5599: $47
    ld h, b                                       ; $559A: $60
    ld de, $470C                                  ; $559B: $11 $0C $47
    jr nz, jr_017_55A0                            ; $559E: $20 $00

jr_017_55A0:
    ld b, [hl]                                    ; $55A0: $46

jr_017_55A1:
    add [hl]                                      ; $55A1: $86
    ld d, l                                       ; $55A2: $55

jr_017_55A3:
    ld e, e                                       ; $55A3: $5B
    rla                                           ; $55A4: $17
    xor e                                         ; $55A5: $AB
    ld d, l                                       ; $55A6: $55
    ld b, l                                       ; $55A7: $45
    ld de, $47DC                                  ; $55A8: $11 $DC $47
    ld b, e                                       ; $55AB: $43
    nop                                           ; $55AC: $00
    or b                                          ; $55AD: $B0
    and c                                         ; $55AE: $A1
    jr nz, jr_017_55C8                            ; $55AF: $20 $17

    scf                                           ; $55B1: $37
    ld d, [hl]                                    ; $55B2: $56
    xor a                                         ; $55B3: $AF
    or b                                          ; $55B4: $B0
    and c                                         ; $55B5: $A1
    jr nz, jr_017_5553                            ; $55B6: $20 $9B

    add hl, de                                    ; $55B8: $19
    ld c, [hl]                                    ; $55B9: $4E
    sbc a                                         ; $55BA: $9F
    ld d, h                                       ; $55BB: $54
    ld l, b                                       ; $55BC: $68
    ld h, c                                       ; $55BD: $61
    ld l, [hl]                                    ; $55BE: $6E
    ld l, e                                       ; $55BF: $6B
    ld [hl], e                                    ; $55C0: $73
    jr nz, jr_017_5629                            ; $55C1: $20 $66

    ld l, a                                       ; $55C3: $6F
    ld [hl], d                                    ; $55C4: $72
    rst $38                                       ; $55C5: $FF
    ld h, [hl]                                    ; $55C6: $66
    ld [hl], d                                    ; $55C7: $72

jr_017_55C8:
    ld h, l                                       ; $55C8: $65
    ld h, l                                       ; $55C9: $65
    ld l, c                                       ; $55CA: $69
    ld l, [hl]                                    ; $55CB: $6E
    ld h, a                                       ; $55CC: $67
    jr nz, jr_017_563C                            ; $55CD: $20 $6D

    ld h, l                                       ; $55CF: $65
    ld hl, $49FE                                  ; $55D0: $21 $FE $49
    jr nz, jr_017_5647                            ; $55D3: $20 $72

    ld h, l                                       ; $55D5: $65
    ld h, c                                       ; $55D6: $61
    ld l, h                                       ; $55D7: $6C
    ld l, h                                       ; $55D8: $6C
    ld a, c                                       ; $55D9: $79
    jr nz, jr_017_5640                            ; $55DA: $20 $64

    ld l, c                                       ; $55DC: $69
    ld h, h                                       ; $55DD: $64
    ld l, [hl]                                    ; $55DE: $6E
    daa                                           ; $55DF: $27
    ld [hl], h                                    ; $55E0: $74
    rst $38                                       ; $55E1: $FF
    ld l, h                                       ; $55E2: $6C
    ld l, c                                       ; $55E3: $69
    ld l, e                                       ; $55E4: $6B
    ld h, l                                       ; $55E5: $65
    jr nz, jr_017_5651                            ; $55E6: $20 $69

    ld [hl], h                                    ; $55E8: $74
    jr nz, @+$6B                                  ; $55E9: $20 $69

    ld l, [hl]                                    ; $55EB: $6E
    jr nz, jr_017_5662                            ; $55EC: $20 $74

    ld l, b                                       ; $55EE: $68
    ld h, c                                       ; $55EF: $61
    ld [hl], h                                    ; $55F0: $74
    cp $70                                        ; $55F1: $FE $70
    ld [hl], d                                    ; $55F3: $72
    ld l, c                                       ; $55F4: $69
    ld [hl], e                                    ; $55F5: $73
    ld l, a                                       ; $55F6: $6F
    ld l, [hl]                                    ; $55F7: $6E
    ld l, $20                                     ; $55F8: $2E $20
    ld c, b                                       ; $55FA: $48
    ld h, l                                       ; $55FB: $65
    ld [hl], d                                    ; $55FC: $72
    ld h, l                                       ; $55FD: $65
    inc l                                         ; $55FE: $2C
    jr nz, jr_017_564A                            ; $55FF: $20 $49

    rst $38                                       ; $5601: $FF
    ld l, b                                       ; $5602: $68
    ld h, c                                       ; $5603: $61
    halt                                          ; $5604: $76
    ld h, l                                       ; $5605: $65
    jr nz, jr_017_5669                            ; $5606: $20 $61

    ld l, [hl]                                    ; $5608: $6E
    jr nz, jr_017_5670                            ; $5609: $20 $65

    ld a, b                                       ; $560B: $78
    ld [hl], h                                    ; $560C: $74
    ld [hl], d                                    ; $560D: $72
    ld h, c                                       ; $560E: $61
    cp $6F                                        ; $560F: $FE $6F
    ld l, [hl]                                    ; $5611: $6E
    ld h, l                                       ; $5612: $65
    jr nz, jr_017_5684                            ; $5613: $20 $6F

    ld h, [hl]                                    ; $5615: $66
    jr nz, jr_017_568C                            ; $5616: $20 $74

    ld l, b                                       ; $5618: $68
    ld h, l                                       ; $5619: $65
    ld [hl], e                                    ; $561A: $73
    ld h, l                                       ; $561B: $65
    ld l, $FE                                     ; $561C: $2E $FE
    db $FD                                        ; $561E: $FD
    add a                                         ; $561F: $87
    nop                                           ; $5620: $00
    inc hl                                        ; $5621: $23
    ld bc, $789B                                  ; $5622: $01 $9B $78
    ld [hl], b                                    ; $5625: $70
    sbc a                                         ; $5626: $9F
    ld d, h                                       ; $5627: $54
    ld l, a                                       ; $5628: $6F

jr_017_5629:
    ld l, [hl]                                    ; $5629: $6E
    ld a, c                                       ; $562A: $79
    jr nz, jr_017_5694                            ; $562B: $20 $67

    ld l, a                                       ; $562D: $6F
    ld [hl], h                                    ; $562E: $74
    jr nz, jr_017_5692                            ; $562F: $20 $61

    rst $38                                       ; $5631: $FF
    db $FC                                        ; $5632: $FC
    cp $FD                                        ; $5633: $FE $FD
    sbc d                                         ; $5635: $9A
    ld [de], a                                    ; $5636: $12
    sbc e                                         ; $5637: $9B
    add hl, de                                    ; $5638: $19
    ld c, [hl]                                    ; $5639: $4E
    sbc a                                         ; $563A: $9F
    ld d, h                                       ; $563B: $54

jr_017_563C:
    ld l, b                                       ; $563C: $68
    ld h, c                                       ; $563D: $61
    ld l, [hl]                                    ; $563E: $6E
    ld l, e                                       ; $563F: $6B

jr_017_5640:
    ld [hl], e                                    ; $5640: $73
    jr nz, @+$63                                  ; $5641: $20 $61

    ld h, a                                       ; $5643: $67
    ld h, c                                       ; $5644: $61
    ld l, c                                       ; $5645: $69
    ld l, [hl]                                    ; $5646: $6E

jr_017_5647:
    rst $38                                       ; $5647: $FF
    ld h, [hl]                                    ; $5648: $66
    ld l, a                                       ; $5649: $6F

jr_017_564A:
    ld [hl], d                                    ; $564A: $72
    jr nz, jr_017_56B3                            ; $564B: $20 $66

    ld [hl], d                                    ; $564D: $72
    ld h, l                                       ; $564E: $65
    ld h, l                                       ; $564F: $65

jr_017_5650:
    ld l, c                                       ; $5650: $69

jr_017_5651:
    ld l, [hl]                                    ; $5651: $6E
    ld h, a                                       ; $5652: $67
    jr nz, jr_017_56C2                            ; $5653: $20 $6D

    ld h, l                                       ; $5655: $65
    ld hl, $FDFE                                  ; $5656: $21 $FE $FD
    sbc d                                         ; $5659: $9A
    ld [de], a                                    ; $565A: $12
    sub e                                         ; $565B: $93
    ld h, l                                       ; $565C: $65
    inc hl                                        ; $565D: $23
    ld c, d                                       ; $565E: $4A
    ld c, a                                       ; $565F: $4F
    ld h, h                                       ; $5660: $64
    sbc l                                         ; $5661: $9D

jr_017_5662:
    ld c, l                                       ; $5662: $4D
    ld h, [hl]                                    ; $5663: $66
    ret nz                                        ; $5664: $C0

    ld e, h                                       ; $5665: $5C
    ld hl, $AA69                                  ; $5666: $21 $69 $AA

jr_017_5669:
    ld c, l                                       ; $5669: $4D
    sub l                                         ; $566A: $95
    rla                                           ; $566B: $17
    db $EB                                        ; $566C: $EB
    ld d, [hl]                                    ; $566D: $56
    dec b                                         ; $566E: $05
    nop                                           ; $566F: $00

jr_017_5670:
    add c                                         ; $5670: $81
    ld e, l                                       ; $5671: $5D
    dec b                                         ; $5672: $05
    dec b                                         ; $5673: $05

jr_017_5674:
    rst $38                                       ; $5674: $FF
    ret nc                                        ; $5675: $D0

    nop                                           ; $5676: $00
    jr nz, jr_017_5674                            ; $5677: $20 $FB

    ld d, b                                       ; $5679: $50
    ld [hl+], a                                   ; $567A: $22
    dec b                                         ; $567B: $05
    ld b, b                                       ; $567C: $40
    dec bc                                        ; $567D: $0B
    nop                                           ; $567E: $00
    dec b                                         ; $567F: $05
    jr nz, jr_017_5650                            ; $5680: $20 $CE

    ld h, e                                       ; $5682: $63
    ld a, [bc]                                    ; $5683: $0A

jr_017_5684:
    add hl, bc                                    ; $5684: $09
    call z, $00D1                                 ; $5685: $CC $D1 $00
    ld [hl+], a                                   ; $5688: $22
    jp c, $1740                                   ; $5689: $DA $40 $17

jr_017_568C:
    rlca                                          ; $568C: $07
    ld c, [hl]                                    ; $568D: $4E
    dec b                                         ; $568E: $05
    rra                                           ; $568F: $1F
    adc $63                                       ; $5690: $CE $63

jr_017_5692:
    ld a, [bc]                                    ; $5692: $0A
    add hl, bc                                    ; $5693: $09

jr_017_5694:
    call z, $00D1                                 ; $5694: $CC $D1 $00
    ld [hl+], a                                   ; $5697: $22
    jp c, $1740                                   ; $5698: $DA $40 $17

    rlca                                          ; $569B: $07
    ld c, [hl]                                    ; $569C: $4E
    dec b                                         ; $569D: $05
    ld e, $CE                                     ; $569E: $1E $CE
    ld h, e                                       ; $56A0: $63
    ld a, [bc]                                    ; $56A1: $0A
    add hl, bc                                    ; $56A2: $09
    ld h, $D2                                     ; $56A3: $26 $D2
    ld b, [hl]                                    ; $56A5: $46
    rla                                           ; $56A6: $17
    add c                                         ; $56A7: $81
    ld d, b                                       ; $56A8: $50
    rla                                           ; $56A9: $17
    ld l, h                                       ; $56AA: $6C
    ld c, l                                       ; $56AB: $4D
    dec bc                                        ; $56AC: $0B
    nop                                           ; $56AD: $00
    dec bc                                        ; $56AE: $0B
    jr nz, jr_017_56BC                            ; $56AF: $20 $0B

    rra                                           ; $56B1: $1F
    dec bc                                        ; $56B2: $0B

jr_017_56B3:
    ld e, $6B                                     ; $56B3: $1E $6B
    inc [hl]                                      ; $56B5: $34
    dec c                                         ; $56B6: $0D
    jr nc, jr_017_5723                            ; $56B7: $30 $6A

    nop                                           ; $56B9: $00
    add b                                         ; $56BA: $80
    nop                                           ; $56BB: $00

jr_017_56BC:
    ld l, e                                       ; $56BC: $6B
    ld [de], a                                    ; $56BD: $12
    inc h                                         ; $56BE: $24
    ret nz                                        ; $56BF: $C0

    ld h, h                                       ; $56C0: $64
    ld b, b                                       ; $56C1: $40

jr_017_56C2:
    add e                                         ; $56C2: $83
    nop                                           ; $56C3: $00
    ld l, e                                       ; $56C4: $6B
    db $10                                        ; $56C5: $10
    ld a, [bc]                                    ; $56C6: $0A
    add b                                         ; $56C7: $80
    ld a, c                                       ; $56C8: $79
    ld h, b                                       ; $56C9: $60
    add h                                         ; $56CA: $84
    nop                                           ; $56CB: $00
    ld sp, $5B17                                  ; $56CC: $31 $17 $5B
    ld d, [hl]                                    ; $56CF: $56
    ld [hl+], a                                   ; $56D0: $22
    adc $40                                       ; $56D1: $CE $40
    nop                                           ; $56D3: $00
    rra                                           ; $56D4: $1F
    ld hl, $4382                                  ; $56D5: $21 $82 $43
    ld a, [bc]                                    ; $56D8: $0A
    nop                                           ; $56D9: $00
    xor a                                         ; $56DA: $AF
    and c                                         ; $56DB: $A1
    inc b                                         ; $56DC: $04
    rla                                           ; $56DD: $17
    jp hl                                         ; $56DE: $E9


    ld d, [hl]                                    ; $56DF: $56
    ld a, [hl]                                    ; $56E0: $7E
    nop                                           ; $56E1: $00
    ret nc                                        ; $56E2: $D0

jr_017_56E3:
    ld [bc], a                                    ; $56E3: $02
    ld [bc], a                                    ; $56E4: $02
    ld [$0AD2], sp                                ; $56E5: $08 $D2 $0A
    inc d                                         ; $56E8: $14
    sub h                                         ; $56E9: $94
    ld b, d                                       ; $56EA: $42

jr_017_56EB:
    ld b, e                                       ; $56EB: $43
    ld [$010F], sp                                ; $56EC: $08 $0F $01
    inc h                                         ; $56EF: $24
    rst $00                                       ; $56F0: $C7
    ld b, $2A                                     ; $56F1: $06 $2A
    nop                                           ; $56F3: $00

jr_017_56F4:
    rrca                                          ; $56F4: $0F
    ld bc, $C725                                  ; $56F5: $01 $25 $C7
    ld b, $B0                                     ; $56F8: $06 $B0
    nop                                           ; $56FA: $00
    rla                                           ; $56FB: $17
    ld [bc], a                                    ; $56FC: $02
    ld d, a                                       ; $56FD: $57
    ld b, l                                       ; $56FE: $45
    ld [hl+], a                                   ; $56FF: $22
    ld b, $40                                     ; $5700: $06 $40
    xor a                                         ; $5702: $AF
    xor a                                         ; $5703: $AF
    and c                                         ; $5704: $A1
    inc b                                         ; $5705: $04
    ld e, d                                       ; $5706: $5A
    rla                                           ; $5707: $17
    add hl, hl                                    ; $5708: $29
    ld d, a                                       ; $5709: $57
    adc b                                         ; $570A: $88
    nop                                           ; $570B: $00
    ld a, [hl+]                                   ; $570C: $2A
    ld bc, $0007                                  ; $570D: $01 $07 $00
    ld l, e                                       ; $5710: $6B
    ld c, d                                       ; $5711: $4A
    add hl, bc                                    ; $5712: $09
    nop                                           ; $5713: $00
    rla                                           ; $5714: $17
    dec [hl]                                      ; $5715: $35
    ld d, a                                       ; $5716: $57
    dec b                                         ; $5717: $05
    ld [bc], a                                    ; $5718: $02
    ld l, e                                       ; $5719: $6B
    ld c, d                                       ; $571A: $4A
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    ret nc                                        ; $571E: $D0

    inc [hl]                                      ; $571F: $34
    rla                                           ; $5720: $17
    ld c, d                                       ; $5721: $4A
    ld d, a                                       ; $5722: $57

jr_017_5723:
    ld [hl+], a                                   ; $5723: $22
    inc b                                         ; $5724: $04
    ld b, b                                       ; $5725: $40
    dec bc                                        ; $5726: $0B
    ld [bc], a                                    ; $5727: $02
    ld b, d                                       ; $5728: $42
    ld b, b                                       ; $5729: $40
    ld h, h                                       ; $572A: $64
    ld a, [hl]                                    ; $572B: $7E
    nop                                           ; $572C: $00
    ret nc                                        ; $572D: $D0

    ld [bc], a                                    ; $572E: $02
    ld [bc], a                                    ; $572F: $02
    ld [$0AD2], sp                                ; $5730: $08 $D2 $0A
    inc d                                         ; $5733: $14
    ld b, d                                       ; $5734: $42
    dec d                                         ; $5735: $15
    jr nz, jr_017_56E3                            ; $5736: $20 $AB

    ld d, b                                       ; $5738: $50
    db $10                                        ; $5739: $10
    jr nz, jr_017_5799                            ; $573A: $20 $5D

    ld d, b                                       ; $573C: $50
    db $10                                        ; $573D: $10
    jr nz, jr_017_56EB                            ; $573E: $20 $AB

    ld d, b                                       ; $5740: $50
    ld b, b                                       ; $5741: $40
    nop                                           ; $5742: $00
    inc de                                        ; $5743: $13
    add c                                         ; $5744: $81
    ld e, l                                       ; $5745: $5D
    ld b, l                                       ; $5746: $45
    jr nz, jr_017_56F4                            ; $5747: $20 $AB

    ld d, b                                       ; $5749: $50
    rrca                                          ; $574A: $0F
    nop                                           ; $574B: $00
    dec de                                        ; $574C: $1B
    inc bc                                        ; $574D: $03
    dec d                                         ; $574E: $15
    ld de, $7978                                  ; $574F: $11 $78 $79
    jr nz, jr_017_5754                            ; $5752: $20 $00

jr_017_5754:
    add e                                         ; $5754: $83
    ld bc, $0003                                  ; $5755: $01 $03 $00
    nop                                           ; $5758: $00
    add e                                         ; $5759: $83
    ld bc, $00FD                                  ; $575A: $01 $FD $00
    nop                                           ; $575D: $00
    add e                                         ; $575E: $83
    ld bc, $FD03                                  ; $575F: $01 $03 $FD
    nop                                           ; $5762: $00
    add e                                         ; $5763: $83
    ld bc, $03FD                                  ; $5764: $01 $FD $03
    nop                                           ; $5767: $00
    add e                                         ; $5768: $83
    ld bc, $FD00                                  ; $5769: $01 $00 $FD
    nop                                           ; $576C: $00
    add e                                         ; $576D: $83
    ld bc, $0300                                  ; $576E: $01 $00 $03
    nop                                           ; $5771: $00
    ld b, d                                       ; $5772: $42
    ld [bc], a                                    ; $5773: $02
    add hl, hl                                    ; $5774: $29
    jr z, jr_017_5777                             ; $5775: $28 $00

jr_017_5777:
    dec e                                         ; $5777: $1D
    ld b, l                                       ; $5778: $45
    rla                                           ; $5779: $17
    ld e, e                                       ; $577A: $5B
    ld d, [hl]                                    ; $577B: $56
    ld [bc], a                                    ; $577C: $02
    dec bc                                        ; $577D: $0B
    dec b                                         ; $577E: $05
    inc c                                         ; $577F: $0C
    dec bc                                        ; $5780: $0B
    ld b, l                                       ; $5781: $45
    rla                                           ; $5782: $17
    sub [hl]                                      ; $5783: $96
    ld d, a                                       ; $5784: $57
    ld [bc], a                                    ; $5785: $02
    dec b                                         ; $5786: $05
    dec bc                                        ; $5787: $0B
    dec bc                                        ; $5788: $0B
    inc c                                         ; $5789: $0C
    ld b, l                                       ; $578A: $45
    rla                                           ; $578B: $17
    cp h                                          ; $578C: $BC
    ld d, a                                       ; $578D: $57
    and h                                         ; $578E: $A4
    ld c, e                                       ; $578F: $4B
    and e                                         ; $5790: $A3
    ld bc, $1A00                                  ; $5791: $01 $00 $1A
    ld [hl], $D0                                  ; $5794: $36 $D0
    sub e                                         ; $5796: $93
    ld h, l                                       ; $5797: $65
    ld d, b                                       ; $5798: $50

jr_017_5799:
    ld c, d                                       ; $5799: $4A
    ld c, a                                       ; $579A: $4F
    ld h, h                                       ; $579B: $64
    sub $4D                                       ; $579C: $D6 $4D
    ld l, c                                       ; $579E: $69
    db $DB                                        ; $579F: $DB
    ld c, l                                       ; $57A0: $4D
    ld h, [hl]                                    ; $57A1: $66
    ret nz                                        ; $57A2: $C0

    ld e, h                                       ; $57A3: $5C
    ld hl, $0005                                  ; $57A4: $21 $05 $00
    add c                                         ; $57A7: $81
    ld e, l                                       ; $57A8: $5D
    dec b                                         ; $57A9: $05
    dec b                                         ; $57AA: $05

jr_017_57AB:
    ld b, c                                       ; $57AB: $41
    ret nc                                        ; $57AC: $D0

    nop                                           ; $57AD: $00

jr_017_57AE:
    jr nz, jr_017_57AB                            ; $57AE: $20 $FB

    ld d, b                                       ; $57B0: $50
    ld [hl+], a                                   ; $57B1: $22
    dec b                                         ; $57B2: $05
    ld b, b                                       ; $57B3: $40
    dec bc                                        ; $57B4: $0B
    nop                                           ; $57B5: $00
    nop                                           ; $57B6: $00
    add d                                         ; $57B7: $82
    rra                                           ; $57B8: $1F
    ld de, $4294                                  ; $57B9: $11 $94 $42
    sub e                                         ; $57BC: $93
    ld h, l                                       ; $57BD: $65
    ld b, c                                       ; $57BE: $41
    ld c, d                                       ; $57BF: $4A
    ld c, a                                       ; $57C0: $4F
    ld h, h                                       ; $57C1: $64
    call Call_017_664D                            ; $57C2: $CD $4D $66
    ret nz                                        ; $57C5: $C0

    ld e, h                                       ; $57C6: $5C
    ld hl, $1795                                  ; $57C7: $21 $95 $17
    ld c, c                                       ; $57CA: $49
    ld e, b                                       ; $57CB: $58
    dec b                                         ; $57CC: $05
    nop                                           ; $57CD: $00
    add c                                         ; $57CE: $81
    ld e, l                                       ; $57CF: $5D
    dec b                                         ; $57D0: $05
    dec b                                         ; $57D1: $05

jr_017_57D2:
    rst $38                                       ; $57D2: $FF
    ret nc                                        ; $57D3: $D0

    nop                                           ; $57D4: $00
    jr nz, jr_017_57D2                            ; $57D5: $20 $FB

    ld d, b                                       ; $57D7: $50
    ld [hl+], a                                   ; $57D8: $22
    dec b                                         ; $57D9: $05
    ld b, b                                       ; $57DA: $40
    dec bc                                        ; $57DB: $0B
    nop                                           ; $57DC: $00
    dec b                                         ; $57DD: $05
    jr nz, jr_017_57AE                            ; $57DE: $20 $CE

    ld h, e                                       ; $57E0: $63
    ld a, [bc]                                    ; $57E1: $0A
    add hl, bc                                    ; $57E2: $09
    call z, $00D1                                 ; $57E3: $CC $D1 $00
    ld [hl+], a                                   ; $57E6: $22
    jp c, $1740                                   ; $57E7: $DA $40 $17

    rlca                                          ; $57EA: $07
    ld c, [hl]                                    ; $57EB: $4E
    dec b                                         ; $57EC: $05
    rra                                           ; $57ED: $1F
    adc $63                                       ; $57EE: $CE $63
    ld a, [bc]                                    ; $57F0: $0A
    add hl, bc                                    ; $57F1: $09
    call z, $00D1                                 ; $57F2: $CC $D1 $00
    ld [hl+], a                                   ; $57F5: $22
    jp c, $1740                                   ; $57F6: $DA $40 $17

    rlca                                          ; $57F9: $07
    ld c, [hl]                                    ; $57FA: $4E
    dec b                                         ; $57FB: $05
    ld e, $CE                                     ; $57FC: $1E $CE
    ld h, e                                       ; $57FE: $63
    ld a, [bc]                                    ; $57FF: $0A
    add hl, bc                                    ; $5800: $09
    ld h, $D2                                     ; $5801: $26 $D2
    ld b, [hl]                                    ; $5803: $46
    rla                                           ; $5804: $17
    add c                                         ; $5805: $81
    ld d, b                                       ; $5806: $50
    rla                                           ; $5807: $17
    ld l, h                                       ; $5808: $6C
    ld c, l                                       ; $5809: $4D
    dec bc                                        ; $580A: $0B
    nop                                           ; $580B: $00
    dec bc                                        ; $580C: $0B
    jr nz, jr_017_581A                            ; $580D: $20 $0B

    rra                                           ; $580F: $1F
    dec bc                                        ; $5810: $0B
    ld e, $6B                                     ; $5811: $1E $6B
    inc [hl]                                      ; $5813: $34
    dec c                                         ; $5814: $0D
    jr nc, jr_017_5881                            ; $5815: $30 $6A

    nop                                           ; $5817: $00
    add b                                         ; $5818: $80
    nop                                           ; $5819: $00

jr_017_581A:
    ld l, e                                       ; $581A: $6B
    ld [de], a                                    ; $581B: $12
    inc h                                         ; $581C: $24
    ret nz                                        ; $581D: $C0

    ld h, h                                       ; $581E: $64
    ld b, b                                       ; $581F: $40
    add e                                         ; $5820: $83
    nop                                           ; $5821: $00
    ld l, e                                       ; $5822: $6B
    db $10                                        ; $5823: $10
    ld a, [bc]                                    ; $5824: $0A
    add b                                         ; $5825: $80
    ld a, c                                       ; $5826: $79
    ld h, b                                       ; $5827: $60
    add h                                         ; $5828: $84
    nop                                           ; $5829: $00
    ld sp, $BC17                                  ; $582A: $31 $17 $BC
    ld d, a                                       ; $582D: $57
    ld [hl+], a                                   ; $582E: $22
    adc $40                                       ; $582F: $CE $40
    nop                                           ; $5831: $00
    add d                                         ; $5832: $82
    rra                                           ; $5833: $1F
    ld hl, $0A43                                  ; $5834: $21 $43 $0A
    nop                                           ; $5837: $00
    xor a                                         ; $5838: $AF
    and c                                         ; $5839: $A1
    ld [$4717], sp                                ; $583A: $08 $17 $47
    ld e, b                                       ; $583D: $58
    ld a, [hl]                                    ; $583E: $7E
    nop                                           ; $583F: $00
    ret nc                                        ; $5840: $D0

jr_017_5841:
    ld [bc], a                                    ; $5841: $02
    ld [bc], a                                    ; $5842: $02
    ld sp, $0BD2                                  ; $5843: $31 $D2 $0B
    dec bc                                        ; $5846: $0B
    sub h                                         ; $5847: $94
    ld b, d                                       ; $5848: $42

jr_017_5849:
    ld b, e                                       ; $5849: $43
    ld [$010F], sp                                ; $584A: $08 $0F $01
    inc h                                         ; $584D: $24
    rst $00                                       ; $584E: $C7
    ld b, $2A                                     ; $584F: $06 $2A
    nop                                           ; $5851: $00

jr_017_5852:
    rrca                                          ; $5852: $0F
    ld bc, $C725                                  ; $5853: $01 $25 $C7
    ld b, $B0                                     ; $5856: $06 $B0
    nop                                           ; $5858: $00
    rla                                           ; $5859: $17
    ld h, b                                       ; $585A: $60
    ld e, b                                       ; $585B: $58
    ld b, l                                       ; $585C: $45
    ld [hl+], a                                   ; $585D: $22
    ld b, $40                                     ; $585E: $06 $40
    xor a                                         ; $5860: $AF
    xor a                                         ; $5861: $AF
    and c                                         ; $5862: $A1
    ld [$0088], sp                                ; $5863: $08 $88 $00
    ld a, [hl+]                                   ; $5866: $2A
    ld bc, $175A                                  ; $5867: $01 $5A $17
    add a                                         ; $586A: $87
    ld e, b                                       ; $586B: $58
    rlca                                          ; $586C: $07
    nop                                           ; $586D: $00
    ld l, e                                       ; $586E: $6B
    ld c, d                                       ; $586F: $4A
    add hl, bc                                    ; $5870: $09
    nop                                           ; $5871: $00
    rla                                           ; $5872: $17
    sub e                                         ; $5873: $93
    ld e, b                                       ; $5874: $58
    dec b                                         ; $5875: $05
    ld [bc], a                                    ; $5876: $02
    ld l, e                                       ; $5877: $6B
    ld c, d                                       ; $5878: $4A
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    ret nc                                        ; $587C: $D0

    inc [hl]                                      ; $587D: $34
    rla                                           ; $587E: $17
    xor b                                         ; $587F: $A8
    ld e, b                                       ; $5880: $58

jr_017_5881:
    ld [hl+], a                                   ; $5881: $22
    inc b                                         ; $5882: $04
    ld b, b                                       ; $5883: $40
    dec bc                                        ; $5884: $0B
    ld [bc], a                                    ; $5885: $02
    ld b, d                                       ; $5886: $42
    ld b, b                                       ; $5887: $40
    ld h, h                                       ; $5888: $64
    ld a, [hl]                                    ; $5889: $7E
    nop                                           ; $588A: $00
    ret nc                                        ; $588B: $D0

    ld [bc], a                                    ; $588C: $02
    ld [bc], a                                    ; $588D: $02
    ld sp, $0BD2                                  ; $588E: $31 $D2 $0B
    dec bc                                        ; $5891: $0B
    ld b, d                                       ; $5892: $42
    dec d                                         ; $5893: $15
    jr nz, jr_017_5841                            ; $5894: $20 $AB

    ld d, b                                       ; $5896: $50
    db $10                                        ; $5897: $10
    jr nz, @+$5F                                  ; $5898: $20 $5D

    ld d, b                                       ; $589A: $50
    db $10                                        ; $589B: $10
    jr nz, jr_017_5849                            ; $589C: $20 $AB

    ld d, b                                       ; $589E: $50
    ld b, b                                       ; $589F: $40
    nop                                           ; $58A0: $00
    inc de                                        ; $58A1: $13
    add c                                         ; $58A2: $81
    ld e, l                                       ; $58A3: $5D
    ld b, l                                       ; $58A4: $45
    jr nz, jr_017_5852                            ; $58A5: $20 $AB

    ld d, b                                       ; $58A7: $50
    rrca                                          ; $58A8: $0F
    nop                                           ; $58A9: $00
    dec de                                        ; $58AA: $1B
    inc bc                                        ; $58AB: $03
    dec d                                         ; $58AC: $15
    ld de, $7978                                  ; $58AD: $11 $78 $79
    jr nz, jr_017_58B2                            ; $58B0: $20 $00

jr_017_58B2:
    add e                                         ; $58B2: $83
    ld bc, $0003                                  ; $58B3: $01 $03 $00
    nop                                           ; $58B6: $00
    add e                                         ; $58B7: $83
    ld bc, $00FD                                  ; $58B8: $01 $FD $00
    nop                                           ; $58BB: $00
    add e                                         ; $58BC: $83
    ld bc, $FD03                                  ; $58BD: $01 $03 $FD
    nop                                           ; $58C0: $00
    add e                                         ; $58C1: $83
    ld bc, $03FD                                  ; $58C2: $01 $FD $03
    nop                                           ; $58C5: $00
    add e                                         ; $58C6: $83
    ld bc, $FD00                                  ; $58C7: $01 $00 $FD
    nop                                           ; $58CA: $00
    add e                                         ; $58CB: $83
    ld bc, $0300                                  ; $58CC: $01 $00 $03
    nop                                           ; $58CF: $00
    ld b, d                                       ; $58D0: $42
    sub e                                         ; $58D1: $93
    ld h, l                                       ; $58D2: $65
    ld b, c                                       ; $58D3: $41
    ld c, d                                       ; $58D4: $4A
    ld c, a                                       ; $58D5: $4F
    ld h, h                                       ; $58D6: $64
    call Call_017_664D                            ; $58D7: $CD $4D $66
    ret nz                                        ; $58DA: $C0

    ld e, h                                       ; $58DB: $5C
    ld hl, $0005                                  ; $58DC: $21 $05 $00
    ld l, e                                       ; $58DF: $6B
    ld c, d                                       ; $58E0: $4A
    inc l                                         ; $58E1: $2C
    ld [bc], a                                    ; $58E2: $02
    sub b                                         ; $58E3: $90
    ret nc                                        ; $58E4: $D0

    nop                                           ; $58E5: $00
    rla                                           ; $58E6: $17
    scf                                           ; $58E7: $37
    ld e, c                                       ; $58E8: $59
    ld [hl+], a                                   ; $58E9: $22
    dec b                                         ; $58EA: $05
    ld b, b                                       ; $58EB: $40
    dec b                                         ; $58EC: $05
    ld [bc], a                                    ; $58ED: $02
    ld l, e                                       ; $58EE: $6B
    ld c, d                                       ; $58EF: $4A
    dec h                                         ; $58F0: $25
    dec d                                         ; $58F1: $15
    ccf                                           ; $58F2: $3F
    call nc, $173C                                ; $58F3: $D4 $3C $17
    sbc $5A                                       ; $58F6: $DE $5A
    ld [hl+], a                                   ; $58F8: $22
    dec b                                         ; $58F9: $05
    ld b, b                                       ; $58FA: $40
    dec b                                         ; $58FB: $05
    inc bc                                        ; $58FC: $03
    ld l, e                                       ; $58FD: $6B
    ld c, d                                       ; $58FE: $4A
    ld hl, $0F0F                                  ; $58FF: $21 $0F $0F
    db $D3                                        ; $5902: $D3
    ld [hl], b                                    ; $5903: $70
    rla                                           ; $5904: $17
    ld l, e                                       ; $5905: $6B
    ld e, e                                       ; $5906: $5B
    ld [hl+], a                                   ; $5907: $22
    dec b                                         ; $5908: $05
    ld b, b                                       ; $5909: $40
    ld l, e                                       ; $590A: $6B
    dec hl                                        ; $590B: $2B
    dec bc                                        ; $590C: $0B
    db $10                                        ; $590D: $10
    ld l, d                                       ; $590E: $6A
    nop                                           ; $590F: $00
    add b                                         ; $5910: $80
    nop                                           ; $5911: $00
    ld l, e                                       ; $5912: $6B
    inc c                                         ; $5913: $0C
    dec c                                         ; $5914: $0D
    ld [hl], b                                    ; $5915: $70
    ld l, l                                       ; $5916: $6D
    nop                                           ; $5917: $00
    add e                                         ; $5918: $83
    nop                                           ; $5919: $00
    ld l, e                                       ; $591A: $6B
    dec h                                         ; $591B: $25
    dec c                                         ; $591C: $0D
    jr nz, @+$5B                                  ; $591D: $20 $59

    ret nz                                        ; $591F: $C0

    add e                                         ; $5920: $83
    nop                                           ; $5921: $00
    ld l, e                                       ; $5922: $6B
    inc h                                         ; $5923: $24
    dec bc                                        ; $5924: $0B
    ldh a, [$5F]                                  ; $5925: $F0 $5F
    nop                                           ; $5927: $00
    add a                                         ; $5928: $87
    nop                                           ; $5929: $00
    dec bc                                        ; $592A: $0B
    nop                                           ; $592B: $00
    dec bc                                        ; $592C: $0B
    ld [bc], a                                    ; $592D: $02
    add d                                         ; $592E: $82
    sub h                                         ; $592F: $94
    ld h, b                                       ; $5930: $60
    ld bc, $2545                                  ; $5931: $01 $45 $25
    or l                                          ; $5934: $B5
    ld [hl], c                                    ; $5935: $71
    ld b, d                                       ; $5936: $42
    dec d                                         ; $5937: $15
    rrca                                          ; $5938: $0F
    and b                                         ; $5939: $A0
    ld l, h                                       ; $593A: $6C
    stop                                          ; $593B: $10 $00
    ld d, $0F                                     ; $593D: $16 $0F
    and b                                         ; $593F: $A0
    ld l, h                                       ; $5940: $6C
    and b                                         ; $5941: $A0
    nop                                           ; $5942: $00
    ld bc, $B00F                                  ; $5943: $01 $0F $B0
    ld l, h                                       ; $5946: $6C
    ld [hl], b                                    ; $5947: $70
    rst $38                                       ; $5948: $FF
    nop                                           ; $5949: $00
    nop                                           ; $594A: $00
    dec d                                         ; $594B: $15
    rrca                                          ; $594C: $0F
    jr c, jr_017_59BC                             ; $594D: $38 $6D

    jr nz, @+$11                                  ; $594F: $20 $0F

    inc h                                         ; $5951: $24
    ld l, l                                       ; $5952: $6D
    jr nz, @+$11                                  ; $5953: $20 $0F

    ld c, h                                       ; $5955: $4C
    ld l, l                                       ; $5956: $6D
    jr nz, jr_017_5968                            ; $5957: $20 $0F

    ld a, [de]                                    ; $5959: $1A
    ld l, l                                       ; $595A: $6D
    jr nz, jr_017_596C                            ; $595B: $20 $0F

    ld d, [hl]                                    ; $595D: $56
    ld l, l                                       ; $595E: $6D
    ld [$2E0F], sp                                ; $595F: $08 $0F $2E
    ld l, l                                       ; $5962: $6D
    jr nz, jr_017_5974                            ; $5963: $20 $0F

    ld d, [hl]                                    ; $5965: $56
    ld l, l                                       ; $5966: $6D
    inc b                                         ; $5967: $04

jr_017_5968:
    rrca                                          ; $5968: $0F
    ld a, [de]                                    ; $5969: $1A
    ld l, l                                       ; $596A: $6D
    inc b                                         ; $596B: $04

jr_017_596C:
    rrca                                          ; $596C: $0F
    ld c, h                                       ; $596D: $4C
    ld l, l                                       ; $596E: $6D
    jr nz, jr_017_5971                            ; $596F: $20 $00

jr_017_5971:
    ld d, $0F                                     ; $5971: $16 $0F
    and b                                         ; $5973: $A0

jr_017_5974:
    ld l, h                                       ; $5974: $6C
    jr nc, jr_017_5977                            ; $5975: $30 $00

jr_017_5977:
    ld bc, $1A0F                                  ; $5977: $01 $0F $1A
    ld l, l                                       ; $597A: $6D
    jr nz, jr_017_597D                            ; $597B: $20 $00

jr_017_597D:
    nop                                           ; $597D: $00
    rrca                                          ; $597E: $0F
    ld a, [de]                                    ; $597F: $1A
    ld l, l                                       ; $5980: $6D
    jr nz, jr_017_5983                            ; $5981: $20 $00

jr_017_5983:
    ld [bc], a                                    ; $5983: $02
    nop                                           ; $5984: $00
    dec d                                         ; $5985: $15
    rrca                                          ; $5986: $0F
    ldh a, [$6C]                                  ; $5987: $F0 $6C
    ld [$E00F], sp                                ; $5989: $08 $0F $E0
    ld l, h                                       ; $598C: $6C
    ld [$560F], sp                                ; $598D: $08 $0F $56
    ld l, l                                       ; $5990: $6D
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    ld e, h                                       ; $5993: $5C
    nop                                           ; $5994: $00
    ld [bc], a                                    ; $5995: $02
    dec d                                         ; $5996: $15
    rrca                                          ; $5997: $0F
    ld d, [hl]                                    ; $5998: $56
    ld l, l                                       ; $5999: $6D
    jr z, @+$11                                   ; $599A: $28 $0F

    ld a, [de]                                    ; $599C: $1A
    ld l, l                                       ; $599D: $6D
    jr nz, @+$11                                  ; $599E: $20 $0F

    ld c, h                                       ; $59A0: $4C
    ld l, l                                       ; $59A1: $6D
    db $10                                        ; $59A2: $10
    rrca                                          ; $59A3: $0F
    nop                                           ; $59A4: $00
    ld l, l                                       ; $59A5: $6D
    ld [$E00F], sp                                ; $59A6: $08 $0F $E0
    ld l, h                                       ; $59A9: $6C
    jr nz, jr_017_59AC                            ; $59AA: $20 $00

jr_017_59AC:
    ld d, $0F                                     ; $59AC: $16 $0F
    ldh [$6C], a                                  ; $59AE: $E0 $6C
    jr jr_017_59B2                                ; $59B0: $18 $00

jr_017_59B2:
    ld [bc], a                                    ; $59B2: $02
    rrca                                          ; $59B3: $0F
    ldh a, [$6C]                                  ; $59B4: $F0 $6C

jr_017_59B6:
    jr z, jr_017_59B6                             ; $59B6: $28 $FE

    nop                                           ; $59B8: $00
    rrca                                          ; $59B9: $0F
    inc h                                         ; $59BA: $24
    ld l, l                                       ; $59BB: $6D

jr_017_59BC:
    stop                                          ; $59BC: $10 $00
    nop                                           ; $59BE: $00
    rrca                                          ; $59BF: $0F
    inc h                                         ; $59C0: $24
    ld l, l                                       ; $59C1: $6D
    jr nc, @+$01                                  ; $59C2: $30 $FF

    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    ld e, h                                       ; $59C6: $5C
    ld bc, $1502                                  ; $59C7: $01 $02 $15
    rrca                                          ; $59CA: $0F
    or b                                          ; $59CB: $B0
    ld l, h                                       ; $59CC: $6C
    db $10                                        ; $59CD: $10
    rrca                                          ; $59CE: $0F
    inc h                                         ; $59CF: $24
    ld l, l                                       ; $59D0: $6D
    db $10                                        ; $59D1: $10
    rrca                                          ; $59D2: $0F
    or b                                          ; $59D3: $B0
    ld l, h                                       ; $59D4: $6C
    db $10                                        ; $59D5: $10
    rrca                                          ; $59D6: $0F
    inc h                                         ; $59D7: $24
    ld l, l                                       ; $59D8: $6D
    db $10                                        ; $59D9: $10
    rrca                                          ; $59DA: $0F
    ld [hl], l                                    ; $59DB: $75
    ld l, l                                       ; $59DC: $6D
    inc b                                         ; $59DD: $04
    rrca                                          ; $59DE: $0F
    ld [hl], l                                    ; $59DF: $75
    ld l, l                                       ; $59E0: $6D
    jr nz, @+$11                                  ; $59E1: $20 $0F

    inc h                                         ; $59E3: $24
    ld l, l                                       ; $59E4: $6D
    db $10                                        ; $59E5: $10
    rrca                                          ; $59E6: $0F
    jr c, jr_017_5A56                             ; $59E7: $38 $6D

    inc b                                         ; $59E9: $04
    rrca                                          ; $59EA: $0F
    db $10                                        ; $59EB: $10
    ld l, l                                       ; $59EC: $6D
    db $10                                        ; $59ED: $10
    rrca                                          ; $59EE: $0F
    ldh a, [$6C]                                  ; $59EF: $F0 $6C
    jr c, @+$11                                   ; $59F1: $38 $0F

    ret nc                                        ; $59F3: $D0

    ld l, h                                       ; $59F4: $6C
    jr nc, jr_017_5A06                            ; $59F5: $30 $0F

    nop                                           ; $59F7: $00
    ld l, l                                       ; $59F8: $6D
    jr nz, jr_017_5A0A                            ; $59F9: $20 $0F

    db $10                                        ; $59FB: $10
    ld l, l                                       ; $59FC: $6D
    db $10                                        ; $59FD: $10
    rrca                                          ; $59FE: $0F
    ret nc                                        ; $59FF: $D0

    ld l, h                                       ; $5A00: $6C
    ld [$100F], sp                                ; $5A01: $08 $0F $10
    ld l, l                                       ; $5A04: $6D
    db $10                                        ; $5A05: $10

jr_017_5A06:
    rrca                                          ; $5A06: $0F
    ld b, d                                       ; $5A07: $42
    ld l, l                                       ; $5A08: $6D
    inc b                                         ; $5A09: $04

jr_017_5A0A:
    rrca                                          ; $5A0A: $0F
    ld l, $6D                                     ; $5A0B: $2E $6D
    db $10                                        ; $5A0D: $10
    rrca                                          ; $5A0E: $0F
    ld d, [hl]                                    ; $5A0F: $56
    ld l, l                                       ; $5A10: $6D
    inc b                                         ; $5A11: $04
    rrca                                          ; $5A12: $0F
    ldh [$6C], a                                  ; $5A13: $E0 $6C
    ld [$F00F], sp                                ; $5A15: $08 $0F $F0
    ld l, h                                       ; $5A18: $6C
    jr nz, jr_017_5A2A                            ; $5A19: $20 $0F

    ld a, [de]                                    ; $5A1B: $1A
    ld l, l                                       ; $5A1C: $6D
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    ld e, h                                       ; $5A1F: $5C
    ld [bc], a                                    ; $5A20: $02
    ld [bc], a                                    ; $5A21: $02
    ld b, d                                       ; $5A22: $42
    ld e, h                                       ; $5A23: $5C
    inc bc                                        ; $5A24: $03
    ld [bc], a                                    ; $5A25: $02
    dec d                                         ; $5A26: $15
    rrca                                          ; $5A27: $0F
    inc h                                         ; $5A28: $24
    ld l, l                                       ; $5A29: $6D

jr_017_5A2A:
    ld b, b                                       ; $5A2A: $40
    rrca                                          ; $5A2B: $0F
    ldh a, [$6C]                                  ; $5A2C: $F0 $6C
    jr z, jr_017_5A3F                             ; $5A2E: $28 $0F

    inc h                                         ; $5A30: $24
    ld l, l                                       ; $5A31: $6D
    db $10                                        ; $5A32: $10
    rrca                                          ; $5A33: $0F
    or b                                          ; $5A34: $B0
    ld l, h                                       ; $5A35: $6C
    db $10                                        ; $5A36: $10
    rrca                                          ; $5A37: $0F
    inc h                                         ; $5A38: $24
    ld l, l                                       ; $5A39: $6D
    db $10                                        ; $5A3A: $10
    rrca                                          ; $5A3B: $0F
    ld [hl], l                                    ; $5A3C: $75
    ld l, l                                       ; $5A3D: $6D
    inc b                                         ; $5A3E: $04

jr_017_5A3F:
    rrca                                          ; $5A3F: $0F
    ld [hl], l                                    ; $5A40: $75
    ld l, l                                       ; $5A41: $6D
    jr @+$11                                      ; $5A42: $18 $0F

    inc h                                         ; $5A44: $24
    ld l, l                                       ; $5A45: $6D
    db $10                                        ; $5A46: $10
    rrca                                          ; $5A47: $0F
    ld c, h                                       ; $5A48: $4C
    ld l, l                                       ; $5A49: $6D
    inc b                                         ; $5A4A: $04
    rrca                                          ; $5A4B: $0F
    ld a, [de]                                    ; $5A4C: $1A
    ld l, l                                       ; $5A4D: $6D
    db $10                                        ; $5A4E: $10
    rrca                                          ; $5A4F: $0F
    inc h                                         ; $5A50: $24
    ld l, l                                       ; $5A51: $6D
    ld [$100F], sp                                ; $5A52: $08 $0F $10
    ld l, l                                       ; $5A55: $6D

jr_017_5A56:
    db $10                                        ; $5A56: $10
    rrca                                          ; $5A57: $0F
    ret nc                                        ; $5A58: $D0

    ld l, h                                       ; $5A59: $6C
    jr nz, jr_017_5A6B                            ; $5A5A: $20 $0F

    db $10                                        ; $5A5C: $10
    ld l, l                                       ; $5A5D: $6D
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    ld e, d                                       ; $5A60: $5A
    rla                                           ; $5A61: $17
    or [hl]                                       ; $5A62: $B6
    ld e, e                                       ; $5A63: $5B
    ld b, b                                       ; $5A64: $40
    ld b, b                                       ; $5A65: $40
    add e                                         ; $5A66: $83
    db $10                                        ; $5A67: $10
    rst $38                                       ; $5A68: $FF
    rst $38                                       ; $5A69: $FF
    nop                                           ; $5A6A: $00

jr_017_5A6B:
    dec bc                                        ; $5A6B: $0B
    inc bc                                        ; $5A6C: $03
    ld e, h                                       ; $5A6D: $5C
    inc b                                         ; $5A6E: $04
    ld [bc], a                                    ; $5A6F: $02
    dec d                                         ; $5A70: $15
    rrca                                          ; $5A71: $0F
    db $10                                        ; $5A72: $10
    ld l, l                                       ; $5A73: $6D
    jr nc, @+$11                                  ; $5A74: $30 $0F

    ld l, e                                       ; $5A76: $6B
    ld l, l                                       ; $5A77: $6D
    ld [$100F], sp                                ; $5A78: $08 $0F $10
    ld l, l                                       ; $5A7B: $6D
    db $10                                        ; $5A7C: $10
    rrca                                          ; $5A7D: $0F
    ld l, e                                       ; $5A7E: $6B
    ld l, l                                       ; $5A7F: $6D
    ld [$100F], sp                                ; $5A80: $08 $0F $10
    ld l, l                                       ; $5A83: $6D
    jr nz, @+$11                                  ; $5A84: $20 $0F

    jr c, @+$6F                                   ; $5A86: $38 $6D

    ld [$420F], sp                                ; $5A88: $08 $0F $42
    ld l, l                                       ; $5A8B: $6D
    ld [$380F], sp                                ; $5A8C: $08 $0F $38
    ld l, l                                       ; $5A8F: $6D
    ld [$420F], sp                                ; $5A90: $08 $0F $42
    ld l, l                                       ; $5A93: $6D
    ld [$380F], sp                                ; $5A94: $08 $0F $38
    ld l, l                                       ; $5A97: $6D
    ld [$420F], sp                                ; $5A98: $08 $0F $42
    ld l, l                                       ; $5A9B: $6D
    ld [$100F], sp                                ; $5A9C: $08 $0F $10
    ld l, l                                       ; $5A9F: $6D
    db $10                                        ; $5AA0: $10
    rrca                                          ; $5AA1: $0F
    jr c, jr_017_5B11                             ; $5AA2: $38 $6D

    ld [$240F], sp                                ; $5AA4: $08 $0F $24
    ld l, l                                       ; $5AA7: $6D
    db $10                                        ; $5AA8: $10
    rrca                                          ; $5AA9: $0F
    ld a, [de]                                    ; $5AAA: $1A
    ld l, l                                       ; $5AAB: $6D
    ld [$D00F], sp                                ; $5AAC: $08 $0F $D0
    ld l, h                                       ; $5AAF: $6C
    inc b                                         ; $5AB0: $04
    rrca                                          ; $5AB1: $0F
    ldh a, [$6C]                                  ; $5AB2: $F0 $6C
    inc b                                         ; $5AB4: $04
    rrca                                          ; $5AB5: $0F
    nop                                           ; $5AB6: $00
    ld l, l                                       ; $5AB7: $6D
    inc b                                         ; $5AB8: $04
    rrca                                          ; $5AB9: $0F
    ldh a, [$6C]                                  ; $5ABA: $F0 $6C
    inc b                                         ; $5ABC: $04
    rrca                                          ; $5ABD: $0F
    nop                                           ; $5ABE: $00
    ld l, l                                       ; $5ABF: $6D
    inc b                                         ; $5AC0: $04
    rrca                                          ; $5AC1: $0F
    ldh a, [$6C]                                  ; $5AC2: $F0 $6C
    inc b                                         ; $5AC4: $04
    rrca                                          ; $5AC5: $0F
    nop                                           ; $5AC6: $00
    ld l, l                                       ; $5AC7: $6D
    inc b                                         ; $5AC8: $04
    rrca                                          ; $5AC9: $0F
    ldh a, [$6C]                                  ; $5ACA: $F0 $6C
    inc b                                         ; $5ACC: $04
    rrca                                          ; $5ACD: $0F
    nop                                           ; $5ACE: $00
    ld l, l                                       ; $5ACF: $6D
    inc b                                         ; $5AD0: $04
    rrca                                          ; $5AD1: $0F
    ldh a, [$6C]                                  ; $5AD2: $F0 $6C
    ld b, b                                       ; $5AD4: $40
    rrca                                          ; $5AD5: $0F
    ld l, $6D                                     ; $5AD6: $2E $6D
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    ld e, h                                       ; $5ADA: $5C
    dec b                                         ; $5ADB: $05
    inc bc                                        ; $5ADC: $03
    ld b, d                                       ; $5ADD: $42
    inc d                                         ; $5ADE: $14
    dec h                                         ; $5ADF: $25
    ld b, $49                                     ; $5AE0: $06 $49
    ld e, h                                       ; $5AE2: $5C
    nop                                           ; $5AE3: $00
    ld [bc], a                                    ; $5AE4: $02
    dec d                                         ; $5AE5: $15
    dec h                                         ; $5AE6: $25
    ld a, $49                                     ; $5AE7: $3E $49
    jr nc, jr_017_5B10                            ; $5AE9: $30 $25

    ld [hl+], a                                   ; $5AEB: $22
    ld c, c                                       ; $5AEC: $49
    sub b                                         ; $5AED: $90
    dec h                                         ; $5AEE: $25
    ld b, $49                                     ; $5AEF: $06 $49
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    ld e, h                                       ; $5AF3: $5C
    ld bc, $1502                                  ; $5AF4: $01 $02 $15
    dec h                                         ; $5AF7: $25
    ld b, $49                                     ; $5AF8: $06 $49
    ld d, b                                       ; $5AFA: $50
    nop                                           ; $5AFB: $00
    ld d, $25                                     ; $5AFC: $16 $25
    ld c, h                                       ; $5AFE: $4C
    ld c, c                                       ; $5AFF: $49
    jr nc, jr_017_5B02                            ; $5B00: $30 $00

jr_017_5B02:
    rst $38                                       ; $5B02: $FF
    dec h                                         ; $5B03: $25
    ld [hl+], a                                   ; $5B04: $22
    ld c, c                                       ; $5B05: $49
    jr nc, @+$01                                  ; $5B06: $30 $FF

    nop                                           ; $5B08: $00
    dec h                                         ; $5B09: $25
    ld b, $49                                     ; $5B0A: $06 $49
    jr nz, jr_017_5B0E                            ; $5B0C: $20 $00

jr_017_5B0E:
    nop                                           ; $5B0E: $00
    dec h                                         ; $5B0F: $25

jr_017_5B10:
    ld c, h                                       ; $5B10: $4C

jr_017_5B11:
    ld c, c                                       ; $5B11: $49
    ld h, b                                       ; $5B12: $60
    nop                                           ; $5B13: $00
    rst $38                                       ; $5B14: $FF
    dec h                                         ; $5B15: $25
    ld b, $49                                     ; $5B16: $06 $49
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    ld e, h                                       ; $5B1C: $5C
    ld [bc], a                                    ; $5B1D: $02
    ld [bc], a                                    ; $5B1E: $02
    dec b                                         ; $5B1F: $05
    nop                                           ; $5B20: $00
    ld l, e                                       ; $5B21: $6B
    ld c, d                                       ; $5B22: $4A
    ld hl, $0F0F                                  ; $5B23: $21 $0F $0F
    db $D3                                        ; $5B26: $D3
    nop                                           ; $5B27: $00
    rla                                           ; $5B28: $17
    inc hl                                        ; $5B29: $23
    ld e, d                                       ; $5B2A: $5A
    ld [hl+], a                                   ; $5B2B: $22
    dec b                                         ; $5B2C: $05
    ld b, b                                       ; $5B2D: $40
    ld e, h                                       ; $5B2E: $5C
    inc bc                                        ; $5B2F: $03
    ld [bc], a                                    ; $5B30: $02
    dec d                                         ; $5B31: $15
    dec h                                         ; $5B32: $25
    ld b, $49                                     ; $5B33: $06 $49
    xor b                                         ; $5B35: $A8
    nop                                           ; $5B36: $00
    ld d, $25                                     ; $5B37: $16 $25
    ld c, h                                       ; $5B39: $4C
    ld c, c                                       ; $5B3A: $49
    jr nc, jr_017_5B3D                            ; $5B3B: $30 $00

jr_017_5B3D:
    rst $38                                       ; $5B3D: $FF
    dec h                                         ; $5B3E: $25
    ld b, $49                                     ; $5B3F: $06 $49
    jr jr_017_5B43                                ; $5B41: $18 $00

jr_017_5B43:
    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    dec d                                         ; $5B45: $15
    dec h                                         ; $5B46: $25
    ld [hl+], a                                   ; $5B47: $22
    ld c, c                                       ; $5B48: $49
    add b                                         ; $5B49: $80
    dec h                                         ; $5B4A: $25
    ld b, $49                                     ; $5B4B: $06 $49
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    ld e, h                                       ; $5B4F: $5C
    dec b                                         ; $5B50: $05
    inc bc                                        ; $5B51: $03
    dec d                                         ; $5B52: $15
    dec h                                         ; $5B53: $25
    ld a, $49                                     ; $5B54: $3E $49
    db $10                                        ; $5B56: $10
    dec h                                         ; $5B57: $25
    jr nc, jr_017_5BA3                            ; $5B58: $30 $49

    add b                                         ; $5B5A: $80
    dec h                                         ; $5B5B: $25
    inc d                                         ; $5B5C: $14
    ld c, c                                       ; $5B5D: $49
    jr nz, @+$27                                  ; $5B5E: $20 $25

    ld b, $49                                     ; $5B60: $06 $49
    jr nz, jr_017_5B89                            ; $5B62: $20 $25

    ld a, $49                                     ; $5B64: $3E $49
    ld b, b                                       ; $5B66: $40
    nop                                           ; $5B67: $00
    ld d, [hl]                                    ; $5B68: $56
    ld bc, $1542                                  ; $5B69: $01 $42 $15
    rrca                                          ; $5B6C: $0F
    rst $18                                       ; $5B6D: $DF
    ld h, h                                       ; $5B6E: $64
    adc b                                         ; $5B6F: $88
    rrca                                          ; $5B70: $0F
    ccf                                           ; $5B71: $3F
    ld h, l                                       ; $5B72: $65
    jr nz, jr_017_5B84                            ; $5B73: $20 $0F

    cp a                                          ; $5B75: $BF
    ld h, h                                       ; $5B76: $64
    db $10                                        ; $5B77: $10
    rrca                                          ; $5B78: $0F
    ccf                                           ; $5B79: $3F
    ld h, l                                       ; $5B7A: $65
    stop                                          ; $5B7B: $10 $00
    ld e, h                                       ; $5B7D: $5C
    inc b                                         ; $5B7E: $04
    ld [bc], a                                    ; $5B7F: $02
    dec d                                         ; $5B80: $15
    rrca                                          ; $5B81: $0F
    ccf                                           ; $5B82: $3F
    ld h, l                                       ; $5B83: $65

jr_017_5B84:
    call z, $0F0F                                 ; $5B84: $CC $0F $0F
    ld h, l                                       ; $5B87: $65
    inc b                                         ; $5B88: $04

jr_017_5B89:
    rrca                                          ; $5B89: $0F
    rra                                           ; $5B8A: $1F
    ld h, l                                       ; $5B8B: $65
    inc b                                         ; $5B8C: $04
    rrca                                          ; $5B8D: $0F
    cpl                                           ; $5B8E: $2F
    ld h, l                                       ; $5B8F: $65
    inc b                                         ; $5B90: $04
    rrca                                          ; $5B91: $0F
    rra                                           ; $5B92: $1F
    ld h, l                                       ; $5B93: $65
    inc b                                         ; $5B94: $04
    rrca                                          ; $5B95: $0F
    cpl                                           ; $5B96: $2F
    ld h, l                                       ; $5B97: $65
    inc b                                         ; $5B98: $04
    rrca                                          ; $5B99: $0F
    rra                                           ; $5B9A: $1F
    ld h, l                                       ; $5B9B: $65
    inc b                                         ; $5B9C: $04
    rrca                                          ; $5B9D: $0F
    cpl                                           ; $5B9E: $2F
    ld h, l                                       ; $5B9F: $65
    inc b                                         ; $5BA0: $04
    rrca                                          ; $5BA1: $0F
    rra                                           ; $5BA2: $1F

jr_017_5BA3:
    ld h, l                                       ; $5BA3: $65
    inc b                                         ; $5BA4: $04
    rrca                                          ; $5BA5: $0F
    cpl                                           ; $5BA6: $2F
    ld h, l                                       ; $5BA7: $65
    inc b                                         ; $5BA8: $04
    rrca                                          ; $5BA9: $0F
    cpl                                           ; $5BAA: $2F
    ld h, l                                       ; $5BAB: $65
    ld b, b                                       ; $5BAC: $40
    rrca                                          ; $5BAD: $0F
    ld c, c                                       ; $5BAE: $49
    ld h, l                                       ; $5BAF: $65
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    ld e, h                                       ; $5BB2: $5C
    dec b                                         ; $5BB3: $05
    inc bc                                        ; $5BB4: $03
    ld b, d                                       ; $5BB5: $42
    add e                                         ; $5BB6: $83
    ld [bc], a                                    ; $5BB7: $02
    nop                                           ; $5BB8: $00
    ld [bc], a                                    ; $5BB9: $02
    ld [bc], a                                    ; $5BBA: $02
    nop                                           ; $5BBB: $00
    db $FD                                        ; $5BBC: $FD
    ld [bc], a                                    ; $5BBD: $02
    nop                                           ; $5BBE: $00
    inc bc                                        ; $5BBF: $03
    ld [bc], a                                    ; $5BC0: $02
    nop                                           ; $5BC1: $00
    db $FD                                        ; $5BC2: $FD
    ld [bc], a                                    ; $5BC3: $02
    nop                                           ; $5BC4: $00
    inc bc                                        ; $5BC5: $03
    ld [bc], a                                    ; $5BC6: $02
    nop                                           ; $5BC7: $00
    cp $02                                        ; $5BC8: $FE $02
    nop                                           ; $5BCA: $00
    ld [bc], a                                    ; $5BCB: $02
    ld [bc], a                                    ; $5BCC: $02
    nop                                           ; $5BCD: $00
    cp $02                                        ; $5BCE: $FE $02
    nop                                           ; $5BD0: $00
    ld [bc], a                                    ; $5BD1: $02
    ld [bc], a                                    ; $5BD2: $02
    nop                                           ; $5BD3: $00
    cp $02                                        ; $5BD4: $FE $02
    nop                                           ; $5BD6: $00
    ld bc, $0002                                  ; $5BD7: $01 $02 $00
    rst $38                                       ; $5BDA: $FF
    ld [bc], a                                    ; $5BDB: $02
    nop                                           ; $5BDC: $00
    ld bc, $0002                                  ; $5BDD: $01 $02 $00
    rst $38                                       ; $5BE0: $FF
    ld [bc], a                                    ; $5BE1: $02
    nop                                           ; $5BE2: $00
    ld bc, $0002                                  ; $5BE3: $01 $02 $00
    rst $38                                       ; $5BE6: $FF
    ld bc, $0100                                  ; $5BE7: $01 $00 $01
    ld bc, $FF00                                  ; $5BEA: $01 $00 $FF
    ld bc, $0200                                  ; $5BED: $01 $00 $02
    ld bc, $FD00                                  ; $5BF0: $01 $00 $FD
    ld bc, $0300                                  ; $5BF3: $01 $00 $03
    ld bc, $FD00                                  ; $5BF6: $01 $00 $FD
    ld bc, $0300                                  ; $5BF9: $01 $00 $03
    ld bc, $FE00                                  ; $5BFC: $01 $00 $FE
    ld bc, $0200                                  ; $5BFF: $01 $00 $02
    ld bc, $FE00                                  ; $5C02: $01 $00 $FE
    ld bc, $0200                                  ; $5C05: $01 $00 $02
    ld bc, $FE00                                  ; $5C08: $01 $00 $FE
    ld bc, $0100                                  ; $5C0B: $01 $00 $01
    ld bc, $FF00                                  ; $5C0E: $01 $00 $FF
    ld bc, $0100                                  ; $5C11: $01 $00 $01
    ld bc, $FF00                                  ; $5C14: $01 $00 $FF
    ld bc, $0100                                  ; $5C17: $01 $00 $01
    ld bc, $FF00                                  ; $5C1A: $01 $00 $FF
    ld bc, $0100                                  ; $5C1D: $01 $00 $01
    ld bc, $FF00                                  ; $5C20: $01 $00 $FF

jr_017_5C23:
    nop                                           ; $5C23: $00
    ld b, d                                       ; $5C24: $42
    ld [bc], a                                    ; $5C25: $02
    nop                                           ; $5C26: $00
    dec sp                                        ; $5C27: $3B
    rlca                                          ; $5C28: $07
    ld [$1745], sp                                ; $5C29: $08 $45 $17
    adc $52                                       ; $5C2C: $CE $52
    ld bc, $0009                                  ; $5C2E: $01 $09 $00
    ld b, l                                       ; $5C31: $45
    rla                                           ; $5C32: $17
    jr nc, jr_017_5C92                            ; $5C33: $30 $5D

    sub e                                         ; $5C35: $93
    ld h, l                                       ; $5C36: $65
    ld e, a                                       ; $5C37: $5F
    ld c, d                                       ; $5C38: $4A
    ld c, a                                       ; $5C39: $4F
    ld h, h                                       ; $5C3A: $64
    ldh [rKEY1], a                                ; $5C3B: $E0 $4D
    ld h, [hl]                                    ; $5C3D: $66
    ret nz                                        ; $5C3E: $C0

    ld e, h                                       ; $5C3F: $5C
    ld hl, $0005                                  ; $5C40: $21 $05 $00
    add c                                         ; $5C43: $81
    ld e, l                                       ; $5C44: $5D
    dec b                                         ; $5C45: $05
    dec b                                         ; $5C46: $05

jr_017_5C47:
    ld sp, $00D1                                  ; $5C47: $31 $D1 $00
    jr nz, jr_017_5C47                            ; $5C4A: $20 $FB

    ld d, b                                       ; $5C4C: $50
    ld [hl+], a                                   ; $5C4D: $22
    dec b                                         ; $5C4E: $05
    ld b, b                                       ; $5C4F: $40
    dec bc                                        ; $5C50: $0B
    nop                                           ; $5C51: $00
    dec b                                         ; $5C52: $05
    jr nz, jr_017_5C23                            ; $5C53: $20 $CE

    ld h, e                                       ; $5C55: $63
    ld a, [bc]                                    ; $5C56: $0A
    add hl, bc                                    ; $5C57: $09
    ld h, $D2                                     ; $5C58: $26 $D2
    nop                                           ; $5C5A: $00
    ld [hl+], a                                   ; $5C5B: $22
    jp c, $1740                                   ; $5C5C: $DA $40 $17

    rlca                                          ; $5C5F: $07
    ld c, [hl]                                    ; $5C60: $4E
    dec b                                         ; $5C61: $05
    rra                                           ; $5C62: $1F
    adc $63                                       ; $5C63: $CE $63
    ld a, [bc]                                    ; $5C65: $0A
    add hl, bc                                    ; $5C66: $09
    ld h, $D2                                     ; $5C67: $26 $D2
    nop                                           ; $5C69: $00
    ld [hl+], a                                   ; $5C6A: $22
    jp c, $1740                                   ; $5C6B: $DA $40 $17

    rlca                                          ; $5C6E: $07
    ld c, [hl]                                    ; $5C6F: $4E
    dec b                                         ; $5C70: $05
    ld e, $CE                                     ; $5C71: $1E $CE
    ld h, e                                       ; $5C73: $63
    ld a, [bc]                                    ; $5C74: $0A
    add hl, bc                                    ; $5C75: $09
    ld h, $D2                                     ; $5C76: $26 $D2
    ld b, [hl]                                    ; $5C78: $46
    rla                                           ; $5C79: $17
    add c                                         ; $5C7A: $81
    ld d, b                                       ; $5C7B: $50
    rla                                           ; $5C7C: $17
    ld l, h                                       ; $5C7D: $6C
    ld c, l                                       ; $5C7E: $4D
    dec bc                                        ; $5C7F: $0B
    nop                                           ; $5C80: $00
    dec bc                                        ; $5C81: $0B
    jr nz, jr_017_5C8F                            ; $5C82: $20 $0B

    ld e, $0B                                     ; $5C84: $1E $0B
    rra                                           ; $5C86: $1F
    ld l, e                                       ; $5C87: $6B
    inc [hl]                                      ; $5C88: $34
    dec c                                         ; $5C89: $0D
    jr nc, @+$6C                                  ; $5C8A: $30 $6A

    nop                                           ; $5C8C: $00
    add b                                         ; $5C8D: $80
    nop                                           ; $5C8E: $00

jr_017_5C8F:
    ld l, e                                       ; $5C8F: $6B
    db $10                                        ; $5C90: $10
    ld a, [bc]                                    ; $5C91: $0A

jr_017_5C92:
    add b                                         ; $5C92: $80
    ld a, c                                       ; $5C93: $79
    ld h, b                                       ; $5C94: $60
    add h                                         ; $5C95: $84
    nop                                           ; $5C96: $00
    ld sp, $3517                                  ; $5C97: $31 $17 $35
    ld e, h                                       ; $5C9A: $5C
    ld [hl+], a                                   ; $5C9B: $22
    adc $40                                       ; $5C9C: $CE $40
    nop                                           ; $5C9E: $00
    add d                                         ; $5C9F: $82
    rra                                           ; $5CA0: $1F
    ld hl, $4294                                  ; $5CA1: $21 $94 $42
    ld bc, $1017                                  ; $5CA4: $01 $17 $10
    ld b, l                                       ; $5CA7: $45
    cpl                                           ; $5CA8: $2F
    adc a                                         ; $5CA9: $8F
    ld b, l                                       ; $5CAA: $45
    ld [bc], a                                    ; $5CAB: $02
    rlca                                          ; $5CAC: $07
    ld a, [de]                                    ; $5CAD: $1A
    nop                                           ; $5CAE: $00
    daa                                           ; $5CAF: $27
    ld b, l                                       ; $5CB0: $45
    rla                                           ; $5CB1: $17
    add $50                                       ; $5CB2: $C6 $50
    sub e                                         ; $5CB4: $93
    ld h, l                                       ; $5CB5: $65
    ld l, [hl]                                    ; $5CB6: $6E
    ld c, d                                       ; $5CB7: $4A
    ld c, a                                       ; $5CB8: $4F
    ld h, h                                       ; $5CB9: $64
    jp hl                                         ; $5CBA: $E9


    ld c, l                                       ; $5CBB: $4D
    ld h, [hl]                                    ; $5CBC: $66
    ret nz                                        ; $5CBD: $C0

    ld e, h                                       ; $5CBE: $5C
    ld hl, $0005                                  ; $5CBF: $21 $05 $00
    add c                                         ; $5CC2: $81
    ld e, l                                       ; $5CC3: $5D
    dec b                                         ; $5CC4: $05
    dec b                                         ; $5CC5: $05

jr_017_5CC6:
    ld l, c                                       ; $5CC6: $69
    ret nc                                        ; $5CC7: $D0

    nop                                           ; $5CC8: $00
    jr nz, jr_017_5CC6                            ; $5CC9: $20 $FB

    ld d, b                                       ; $5CCB: $50
    ld [hl+], a                                   ; $5CCC: $22
    dec b                                         ; $5CCD: $05
    ld b, b                                       ; $5CCE: $40
    dec bc                                        ; $5CCF: $0B
    nop                                           ; $5CD0: $00
    dec b                                         ; $5CD1: $05
    jr nz, @-$30                                  ; $5CD2: $20 $CE

    ld h, e                                       ; $5CD4: $63
    ld a, [bc]                                    ; $5CD5: $0A
    add hl, bc                                    ; $5CD6: $09
    cp [hl]                                       ; $5CD7: $BE
    ret nc                                        ; $5CD8: $D0

    nop                                           ; $5CD9: $00
    ld [hl+], a                                   ; $5CDA: $22
    jp c, $1740                                   ; $5CDB: $DA $40 $17

    rlca                                          ; $5CDE: $07
    ld c, [hl]                                    ; $5CDF: $4E
    dec b                                         ; $5CE0: $05
    rra                                           ; $5CE1: $1F
    adc $63                                       ; $5CE2: $CE $63
    ld a, [bc]                                    ; $5CE4: $0A
    add hl, bc                                    ; $5CE5: $09
    cp [hl]                                       ; $5CE6: $BE
    ret nc                                        ; $5CE7: $D0

    nop                                           ; $5CE8: $00
    ld [hl+], a                                   ; $5CE9: $22
    jp c, $1740                                   ; $5CEA: $DA $40 $17

    rlca                                          ; $5CED: $07
    ld c, [hl]                                    ; $5CEE: $4E
    dec b                                         ; $5CEF: $05
    ld e, $CE                                     ; $5CF0: $1E $CE
    ld h, e                                       ; $5CF2: $63
    ld a, [bc]                                    ; $5CF3: $0A
    add hl, bc                                    ; $5CF4: $09
    ld h, $D2                                     ; $5CF5: $26 $D2
    ld b, [hl]                                    ; $5CF7: $46
    rla                                           ; $5CF8: $17
    add c                                         ; $5CF9: $81
    ld d, b                                       ; $5CFA: $50
    rla                                           ; $5CFB: $17
    ld l, h                                       ; $5CFC: $6C
    ld c, l                                       ; $5CFD: $4D
    dec bc                                        ; $5CFE: $0B
    jr nz, jr_017_5D0C                            ; $5CFF: $20 $0B

    rra                                           ; $5D01: $1F
    dec bc                                        ; $5D02: $0B
    ld e, $6B                                     ; $5D03: $1E $6B
    inc [hl]                                      ; $5D05: $34
    dec c                                         ; $5D06: $0D
    jr nc, jr_017_5D73                            ; $5D07: $30 $6A

    nop                                           ; $5D09: $00
    add b                                         ; $5D0A: $80
    nop                                           ; $5D0B: $00

jr_017_5D0C:
    ld l, e                                       ; $5D0C: $6B
    db $10                                        ; $5D0D: $10
    ld a, [bc]                                    ; $5D0E: $0A
    add b                                         ; $5D0F: $80
    ld a, c                                       ; $5D10: $79
    ld h, b                                       ; $5D11: $60
    add h                                         ; $5D12: $84
    nop                                           ; $5D13: $00
    ld sp, $B417                                  ; $5D14: $31 $17 $B4
    ld e, h                                       ; $5D17: $5C
    ld [hl+], a                                   ; $5D18: $22
    adc $40                                       ; $5D19: $CE $40
    nop                                           ; $5D1B: $00
    add d                                         ; $5D1C: $82
    rra                                           ; $5D1D: $1F
    ld hl, $4294                                  ; $5D1E: $21 $94 $42

jr_017_5D21:
    ld bc, $1135                                  ; $5D21: $01 $35 $11
    ld b, l                                       ; $5D24: $45
    rla                                           ; $5D25: $17
    dec [hl]                                      ; $5D26: $35
    ld e, h                                       ; $5D27: $5C
    and h                                         ; $5D28: $A4
    ld b, a                                       ; $5D29: $47
    and e                                         ; $5D2A: $A3
    ld bc, $1400                                  ; $5D2B: $01 $00 $14
    dec h                                         ; $5D2E: $25
    pop de                                        ; $5D2F: $D1
    sub e                                         ; $5D30: $93
    ld h, l                                       ; $5D31: $65
    ld a, l                                       ; $5D32: $7D
    ld c, d                                       ; $5D33: $4A
    ld c, a                                       ; $5D34: $4F
    ld h, h                                       ; $5D35: $64
    ld a, [c]                                     ; $5D36: $F2
    ld c, l                                       ; $5D37: $4D
    ld l, c                                       ; $5D38: $69
    rst $30                                       ; $5D39: $F7
    ld c, l                                       ; $5D3A: $4D
    ld h, [hl]                                    ; $5D3B: $66
    ret nz                                        ; $5D3C: $C0

    ld e, h                                       ; $5D3D: $5C
    ld hl, $0005                                  ; $5D3E: $21 $05 $00
    add c                                         ; $5D41: $81
    ld e, l                                       ; $5D42: $5D
    dec b                                         ; $5D43: $05
    dec b                                         ; $5D44: $05

jr_017_5D45:
    ld l, c                                       ; $5D45: $69
    ret nc                                        ; $5D46: $D0

    nop                                           ; $5D47: $00
    jr nz, jr_017_5D45                            ; $5D48: $20 $FB

    ld d, b                                       ; $5D4A: $50
    ld [hl+], a                                   ; $5D4B: $22
    dec b                                         ; $5D4C: $05
    ld b, b                                       ; $5D4D: $40
    dec bc                                        ; $5D4E: $0B
    nop                                           ; $5D4F: $00
    dec b                                         ; $5D50: $05
    jr nz, jr_017_5D21                            ; $5D51: $20 $CE

    ld h, e                                       ; $5D53: $63
    ld a, [bc]                                    ; $5D54: $0A
    add hl, bc                                    ; $5D55: $09
    cp [hl]                                       ; $5D56: $BE
    ret nc                                        ; $5D57: $D0

    nop                                           ; $5D58: $00
    ld [hl+], a                                   ; $5D59: $22
    jp c, $1740                                   ; $5D5A: $DA $40 $17

    rlca                                          ; $5D5D: $07
    ld c, [hl]                                    ; $5D5E: $4E
    dec b                                         ; $5D5F: $05
    rra                                           ; $5D60: $1F
    adc $63                                       ; $5D61: $CE $63
    ld a, [bc]                                    ; $5D63: $0A
    add hl, bc                                    ; $5D64: $09
    cp [hl]                                       ; $5D65: $BE
    ret nc                                        ; $5D66: $D0

    nop                                           ; $5D67: $00
    ld [hl+], a                                   ; $5D68: $22
    jp c, $1740                                   ; $5D69: $DA $40 $17

    rlca                                          ; $5D6C: $07
    ld c, [hl]                                    ; $5D6D: $4E
    dec b                                         ; $5D6E: $05
    ld e, $CE                                     ; $5D6F: $1E $CE
    ld h, e                                       ; $5D71: $63
    ld a, [bc]                                    ; $5D72: $0A

jr_017_5D73:
    add hl, bc                                    ; $5D73: $09
    ld h, $D2                                     ; $5D74: $26 $D2
    ld b, [hl]                                    ; $5D76: $46
    rla                                           ; $5D77: $17
    add c                                         ; $5D78: $81
    ld d, b                                       ; $5D79: $50
    rla                                           ; $5D7A: $17
    ld l, h                                       ; $5D7B: $6C
    ld c, l                                       ; $5D7C: $4D
    dec bc                                        ; $5D7D: $0B
    jr nz, jr_017_5D8B                            ; $5D7E: $20 $0B

    rra                                           ; $5D80: $1F
    dec bc                                        ; $5D81: $0B
    ld e, $6B                                     ; $5D82: $1E $6B
    inc [hl]                                      ; $5D84: $34
    dec c                                         ; $5D85: $0D
    jr nc, jr_017_5DF2                            ; $5D86: $30 $6A

    nop                                           ; $5D88: $00
    add b                                         ; $5D89: $80
    nop                                           ; $5D8A: $00

jr_017_5D8B:
    ld l, e                                       ; $5D8B: $6B
    db $10                                        ; $5D8C: $10
    ld a, [bc]                                    ; $5D8D: $0A
    add b                                         ; $5D8E: $80
    ld a, c                                       ; $5D8F: $79
    ld h, b                                       ; $5D90: $60
    add h                                         ; $5D91: $84
    nop                                           ; $5D92: $00
    ld sp, $3017                                  ; $5D93: $31 $17 $30
    ld e, l                                       ; $5D96: $5D
    ld [hl+], a                                   ; $5D97: $22
    adc $40                                       ; $5D98: $CE $40
    nop                                           ; $5D9A: $00
    add d                                         ; $5D9B: $82
    rra                                           ; $5D9C: $1F
    ld hl, $4294                                  ; $5D9D: $21 $94 $42
    ld [bc], a                                    ; $5DA0: $02
    inc de                                        ; $5DA1: $13
    nop                                           ; $5DA2: $00
    ld [de], a                                    ; $5DA3: $12
    db $10                                        ; $5DA4: $10
    ld b, l                                       ; $5DA5: $45
    ld [de], a                                    ; $5DA6: $12
    ld a, a                                       ; $5DA7: $7F
    ld [hl], c                                    ; $5DA8: $71
    ld [bc], a                                    ; $5DA9: $02
    inc de                                        ; $5DAA: $13
    nop                                           ; $5DAB: $00
    ld hl, $451F                                  ; $5DAC: $21 $1F $45
    ld [de], a                                    ; $5DAF: $12
    ld a, a                                       ; $5DB0: $7F
    ld [hl], c                                    ; $5DB1: $71
    ld [bc], a                                    ; $5DB2: $02
    rlca                                          ; $5DB3: $07
    dec b                                         ; $5DB4: $05
    ld [hl+], a                                   ; $5DB5: $22
    inc c                                         ; $5DB6: $0C
    ld b, l                                       ; $5DB7: $45
    ld e, $E0                                     ; $5DB8: $1E $E0
    halt                                          ; $5DBA: $76
    ld [bc], a                                    ; $5DBB: $02
    ld b, $04                                     ; $5DBC: $06 $04
    ld c, $11                                     ; $5DBE: $0E $11
    ld b, l                                       ; $5DC0: $45
    ld e, $D5                                     ; $5DC1: $1E $D5
    ld l, a                                       ; $5DC3: $6F
    sbc e                                         ; $5DC4: $9B
    add hl, de                                    ; $5DC5: $19
    ld c, [hl]                                    ; $5DC6: $4E
    sbc a                                         ; $5DC7: $9F
    ld c, b                                       ; $5DC8: $48
    ld h, l                                       ; $5DC9: $65
    ld a, c                                       ; $5DCA: $79
    inc l                                         ; $5DCB: $2C
    jr nz, jr_017_5E22                            ; $5DCC: $20 $54

    ld l, a                                       ; $5DCE: $6F
    ld l, [hl]                                    ; $5DCF: $6E
    ld a, c                                       ; $5DD0: $79
    ld hl, $47FF                                  ; $5DD1: $21 $FF $47
    ld l, a                                       ; $5DD4: $6F
    jr nz, jr_017_5E3A                            ; $5DD5: $20 $63

    ld l, b                                       ; $5DD7: $68
    ld h, l                                       ; $5DD8: $65
    ld h, e                                       ; $5DD9: $63
    ld l, e                                       ; $5DDA: $6B
    jr nz, @+$71                                  ; $5DDB: $20 $6F

    ld [hl], l                                    ; $5DDD: $75
    ld [hl], h                                    ; $5DDE: $74
    cp $74                                        ; $5DDF: $FE $74
    ld l, b                                       ; $5DE1: $68
    ld h, l                                       ; $5DE2: $65
    jr nz, jr_017_5E52                            ; $5DE3: $20 $6D

    ld h, c                                       ; $5DE5: $61
    ld h, a                                       ; $5DE6: $67
    ld l, c                                       ; $5DE7: $69
    ld h, e                                       ; $5DE8: $63
    jr nz, jr_017_5E5E                            ; $5DE9: $20 $73

    ld l, b                                       ; $5DEB: $68
    ld l, a                                       ; $5DEC: $6F
    ld [hl], a                                    ; $5DED: $77
    ld l, $FE                                     ; $5DEE: $2E $FE
    db $FD                                        ; $5DF0: $FD
    sbc d                                         ; $5DF1: $9A

jr_017_5DF2:
    ld e, b                                       ; $5DF2: $58
    ld bc, $9B42                                  ; $5DF3: $01 $42 $9B
    ret c                                         ; $5DF6: $D8

    ld h, b                                       ; $5DF7: $60
    sbc a                                         ; $5DF8: $9F
    ld d, a                                       ; $5DF9: $57
    ld h, l                                       ; $5DFA: $65
    ld l, h                                       ; $5DFB: $6C
    ld h, e                                       ; $5DFC: $63
    ld l, a                                       ; $5DFD: $6F
    ld l, l                                       ; $5DFE: $6D
    ld h, l                                       ; $5DFF: $65
    jr nz, jr_017_5E76                            ; $5E00: $20 $74

    ld l, a                                       ; $5E02: $6F
    jr nz, @+$76                                  ; $5E03: $20 $74

    ld l, b                                       ; $5E05: $68
    ld h, l                                       ; $5E06: $65
    rst $38                                       ; $5E07: $FF
    ld [hl], e                                    ; $5E08: $73
    ld l, a                                       ; $5E09: $6F
    ld l, a                                       ; $5E0A: $6F
    ld l, [hl]                                    ; $5E0B: $6E
    jr nz, jr_017_5E82                            ; $5E0C: $20 $74

    ld l, a                                       ; $5E0E: $6F
    jr nz, jr_017_5E73                            ; $5E0F: $20 $62

    ld h, l                                       ; $5E11: $65
    cp $66                                        ; $5E12: $FE $66
    ld h, c                                       ; $5E14: $61
    ld l, l                                       ; $5E15: $6D
    ld l, a                                       ; $5E16: $6F
    ld [hl], l                                    ; $5E17: $75
    ld [hl], e                                    ; $5E18: $73
    jr nz, jr_017_5E5E                            ; $5E19: $20 $43

    ld h, c                                       ; $5E1B: $61
    ld l, h                                       ; $5E1C: $6C
    ld h, h                                       ; $5E1D: $64
    rst $38                                       ; $5E1E: $FF
    ld c, l                                       ; $5E1F: $4D
    ld h, c                                       ; $5E20: $61
    ld h, a                                       ; $5E21: $67

jr_017_5E22:
    ld l, c                                       ; $5E22: $69
    ld h, e                                       ; $5E23: $63
    jr nz, @+$55                                  ; $5E24: $20 $53

    ld l, b                                       ; $5E26: $68
    ld l, a                                       ; $5E27: $6F
    ld [hl], a                                    ; $5E28: $77
    ld hl, $2121                                  ; $5E29: $21 $21 $21
    cp $4D                                        ; $5E2C: $FE $4D
    ld a, c                                       ; $5E2E: $79
    jr nz, @+$6E                                  ; $5E2F: $20 $6C

    ld l, a                                       ; $5E31: $6F
    halt                                          ; $5E32: $76
    ld h, l                                       ; $5E33: $65
    ld l, h                                       ; $5E34: $6C
    ld a, c                                       ; $5E35: $79
    rst $38                                       ; $5E36: $FF
    ld h, c                                       ; $5E37: $61
    ld [hl], e                                    ; $5E38: $73
    ld [hl], e                                    ; $5E39: $73

jr_017_5E3A:
    ld l, c                                       ; $5E3A: $69
    ld [hl], e                                    ; $5E3B: $73
    ld [hl], h                                    ; $5E3C: $74
    ld h, c                                       ; $5E3D: $61
    ld l, [hl]                                    ; $5E3E: $6E
    ld [hl], h                                    ; $5E3F: $74
    jr nz, jr_017_5EA3                            ; $5E40: $20 $61

    ld l, [hl]                                    ; $5E42: $6E
    ld h, h                                       ; $5E43: $64
    cp $49                                        ; $5E44: $FE $49
    jr nz, jr_017_5EBF                            ; $5E46: $20 $77

    ld l, c                                       ; $5E48: $69
    ld l, h                                       ; $5E49: $6C
    ld l, h                                       ; $5E4A: $6C
    jr nz, jr_017_5EBD                            ; $5E4B: $20 $70

    ld h, l                                       ; $5E4D: $65
    ld [hl], d                                    ; $5E4E: $72
    ld h, [hl]                                    ; $5E4F: $66
    ld l, a                                       ; $5E50: $6F
    ld [hl], d                                    ; $5E51: $72

jr_017_5E52:
    ld l, l                                       ; $5E52: $6D
    rst $38                                       ; $5E53: $FF
    ld h, h                                       ; $5E54: $64
    ld h, c                                       ; $5E55: $61
    ld [hl], d                                    ; $5E56: $72
    ld l, c                                       ; $5E57: $69
    ld l, [hl]                                    ; $5E58: $6E
    ld h, a                                       ; $5E59: $67
    jr nz, jr_017_5EC2                            ; $5E5A: $20 $66

    ld h, l                                       ; $5E5C: $65
    ld h, c                                       ; $5E5D: $61

jr_017_5E5E:
    ld [hl], h                                    ; $5E5E: $74
    ld [hl], e                                    ; $5E5F: $73
    ld hl, $FDFE                                  ; $5E60: $21 $FE $FD
    sbc e                                         ; $5E63: $9B
    ld a, b                                       ; $5E64: $78
    ld [hl], b                                    ; $5E65: $70
    sbc a                                         ; $5E66: $9F
    jr nz, @+$4F                                  ; $5E67: $20 $4D

    ld h, c                                       ; $5E69: $61
    ld a, c                                       ; $5E6A: $79
    ld h, d                                       ; $5E6B: $62
    ld h, l                                       ; $5E6C: $65
    jr nz, jr_017_5EDB                            ; $5E6D: $20 $6C

    ld h, c                                       ; $5E6F: $61
    ld [hl], h                                    ; $5E70: $74
    ld h, l                                       ; $5E71: $65
    ld [hl], d                                    ; $5E72: $72

jr_017_5E73:
    rst $38                                       ; $5E73: $FF
    jr nz, jr_017_5EC9                            ; $5E74: $20 $53

jr_017_5E76:
    ld h, l                                       ; $5E76: $65
    ld h, l                                       ; $5E77: $65
    jr nz, jr_017_5EEE                            ; $5E78: $20 $74

    ld l, b                                       ; $5E7A: $68
    ld h, l                                       ; $5E7B: $65
    jr nz, jr_017_5EF1                            ; $5E7C: $20 $73

    ld l, b                                       ; $5E7E: $68
    ld l, a                                       ; $5E7F: $6F
    ld [hl], a                                    ; $5E80: $77
    db $FD                                        ; $5E81: $FD

jr_017_5E82:
    sbc h                                         ; $5E82: $9C
    ld [bc], a                                    ; $5E83: $02
    rla                                           ; $5E84: $17
    adc d                                         ; $5E85: $8A
    ld e, [hl]                                    ; $5E86: $5E
    rla                                           ; $5E87: $17
    cp e                                          ; $5E88: $BB
    ld e, [hl]                                    ; $5E89: $5E
    sbc c                                         ; $5E8A: $99
    sbc e                                         ; $5E8B: $9B
    ld a, b                                       ; $5E8C: $78
    ld [hl], b                                    ; $5E8D: $70
    sbc a                                         ; $5E8E: $9F
    ld c, l                                       ; $5E8F: $4D
    ld h, c                                       ; $5E90: $61
    ld a, c                                       ; $5E91: $79
    ld h, d                                       ; $5E92: $62
    ld h, l                                       ; $5E93: $65
    jr nz, jr_017_5F02                            ; $5E94: $20 $6C

    ld h, c                                       ; $5E96: $61
    ld [hl], h                                    ; $5E97: $74
    ld h, l                                       ; $5E98: $65
    ld [hl], d                                    ; $5E99: $72
    ld l, $2E                                     ; $5E9A: $2E $2E
    ld l, $FE                                     ; $5E9C: $2E $FE
    db $FD                                        ; $5E9E: $FD
    sbc e                                         ; $5E9F: $9B
    ret c                                         ; $5EA0: $D8

    ld h, b                                       ; $5EA1: $60
    sbc a                                         ; $5EA2: $9F

jr_017_5EA3:
    ld b, e                                       ; $5EA3: $43
    ld l, a                                       ; $5EA4: $6F
    ld l, l                                       ; $5EA5: $6D
    ld h, l                                       ; $5EA6: $65
    jr nz, jr_017_5F0B                            ; $5EA7: $20 $62

    ld h, c                                       ; $5EA9: $61
    ld h, e                                       ; $5EAA: $63
    ld l, e                                       ; $5EAB: $6B
    rst $38                                       ; $5EAC: $FF
    ld h, c                                       ; $5EAD: $61
    ld l, [hl]                                    ; $5EAE: $6E
    ld a, c                                       ; $5EAF: $79
    ld [hl], h                                    ; $5EB0: $74
    ld l, c                                       ; $5EB1: $69
    ld l, l                                       ; $5EB2: $6D
    ld h, l                                       ; $5EB3: $65
    ld hl, $FDFE                                  ; $5EB4: $21 $FE $FD
    sbc d                                         ; $5EB7: $9A
    ld e, b                                       ; $5EB8: $58
    ld bc, $0742                                  ; $5EB9: $01 $42 $07
    nop                                           ; $5EBC: $00

jr_017_5EBD:
    ld l, e                                       ; $5EBD: $6B
    ld c, d                                       ; $5EBE: $4A

jr_017_5EBF:
    ld b, e                                       ; $5EBF: $43
    rrca                                          ; $5EC0: $0F
    inc bc                                        ; $5EC1: $03

jr_017_5EC2:
    dec b                                         ; $5EC2: $05
    ld bc, $D017                                  ; $5EC3: $01 $17 $D0
    ld e, [hl]                                    ; $5EC6: $5E
    add hl, bc                                    ; $5EC7: $09
    nop                                           ; $5EC8: $00

jr_017_5EC9:
    rla                                           ; $5EC9: $17
    add l                                         ; $5ECA: $85
    ld h, l                                       ; $5ECB: $65
    ld b, l                                       ; $5ECC: $45
    rla                                           ; $5ECD: $17
    push de                                       ; $5ECE: $D5
    ld e, [hl]                                    ; $5ECF: $5E
    add hl, bc                                    ; $5ED0: $09
    nop                                           ; $5ED1: $00
    rla                                           ; $5ED2: $17
    and b                                         ; $5ED3: $A0
    ld h, l                                       ; $5ED4: $65
    sbc c                                         ; $5ED5: $99
    sbc e                                         ; $5ED6: $9B
    ld a, b                                       ; $5ED7: $78
    ld [hl], b                                    ; $5ED8: $70
    sbc a                                         ; $5ED9: $9F
    ld c, a                                       ; $5EDA: $4F

jr_017_5EDB:
    ld l, e                                       ; $5EDB: $6B
    ld h, c                                       ; $5EDC: $61
    ld a, c                                       ; $5EDD: $79
    inc l                                         ; $5EDE: $2C
    jr nz, jr_017_5F2A                            ; $5EDF: $20 $49

    daa                                           ; $5EE1: $27
    ld l, h                                       ; $5EE2: $6C
    ld l, h                                       ; $5EE3: $6C
    rst $38                                       ; $5EE4: $FF
    ld [hl], a                                    ; $5EE5: $77
    ld h, c                                       ; $5EE6: $61
    ld [hl], h                                    ; $5EE7: $74
    ld h, e                                       ; $5EE8: $63
    ld l, b                                       ; $5EE9: $68
    ld l, $2E                                     ; $5EEA: $2E $2E
    ld l, $FE                                     ; $5EEC: $2E $FE

jr_017_5EEE:
    db $FD                                        ; $5EEE: $FD
    sbc e                                         ; $5EEF: $9B
    ret c                                         ; $5EF0: $D8

jr_017_5EF1:
    ld h, b                                       ; $5EF1: $60
    sbc a                                         ; $5EF2: $9F
    ld b, c                                       ; $5EF3: $41
    ld c, h                                       ; $5EF4: $4C
    ld d, d                                       ; $5EF5: $52
    ld c, c                                       ; $5EF6: $49
    ld b, a                                       ; $5EF7: $47
    ld c, b                                       ; $5EF8: $48
    ld d, h                                       ; $5EF9: $54
    ld hl, $4720                                  ; $5EFA: $21 $20 $47
    ld l, c                                       ; $5EFD: $69
    halt                                          ; $5EFE: $76
    ld h, l                                       ; $5EFF: $65
    rst $38                                       ; $5F00: $FF
    ld l, l                                       ; $5F01: $6D

jr_017_5F02:
    ld h, l                                       ; $5F02: $65
    jr nz, @+$63                                  ; $5F03: $20 $61

    jr nz, jr_017_5F73                            ; $5F05: $20 $6C

    ld l, c                                       ; $5F07: $69
    ld [hl], h                                    ; $5F08: $74
    ld [hl], h                                    ; $5F09: $74
    ld l, h                                       ; $5F0A: $6C

jr_017_5F0B:
    ld h, l                                       ; $5F0B: $65
    cp $73                                        ; $5F0C: $FE $73
    ld [hl], b                                    ; $5F0E: $70
    ld h, c                                       ; $5F0F: $61
    ld h, e                                       ; $5F10: $63
    ld h, l                                       ; $5F11: $65
    jr nz, jr_017_5F84                            ; $5F12: $20 $70

    ld l, h                                       ; $5F14: $6C
    ld h, l                                       ; $5F15: $65
    ld h, c                                       ; $5F16: $61
    ld [hl], e                                    ; $5F17: $73
    ld h, l                                       ; $5F18: $65
    ld l, $FF                                     ; $5F19: $2E $FF
    db $FD                                        ; $5F1B: $FD
    ld b, b                                       ; $5F1C: $40
    jr jr_017_5F74                                ; $5F1D: $18 $55

    ld e, a                                       ; $5F1F: $5F
    add hl, bc                                    ; $5F20: $09
    ld [bc], a                                    ; $5F21: $02
    db $10                                        ; $5F22: $10
    ld e, e                                       ; $5F23: $5B
    ld e, h                                       ; $5F24: $5C
    sbc a                                         ; $5F25: $9F
    ld d, h                                       ; $5F26: $54
    ld l, b                                       ; $5F27: $68
    ld h, c                                       ; $5F28: $61
    ld l, [hl]                                    ; $5F29: $6E

jr_017_5F2A:
    ld l, e                                       ; $5F2A: $6B
    jr nz, jr_017_5FA6                            ; $5F2B: $20 $79

    ld l, a                                       ; $5F2D: $6F
    ld [hl], l                                    ; $5F2E: $75
    ld l, $2E                                     ; $5F2F: $2E $2E
    ld l, $FE                                     ; $5F31: $2E $FE
    ld b, [hl]                                    ; $5F33: $46
    ld l, a                                       ; $5F34: $6F
    ld [hl], d                                    ; $5F35: $72
    jr nz, jr_017_5FA5                            ; $5F36: $20 $6D

    ld a, c                                       ; $5F38: $79
    jr nz, @+$68                                  ; $5F39: $20 $66

    ld l, c                                       ; $5F3B: $69
    ld [hl], d                                    ; $5F3C: $72
    ld [hl], e                                    ; $5F3D: $73
    ld [hl], h                                    ; $5F3E: $74
    rst $38                                       ; $5F3F: $FF
    ld [hl], h                                    ; $5F40: $74
    ld [hl], d                                    ; $5F41: $72
    ld l, c                                       ; $5F42: $69
    ld h, e                                       ; $5F43: $63
    ld l, e                                       ; $5F44: $6B
    jr nz, jr_017_5F90                            ; $5F45: $20 $49

    jr nz, jr_017_5FC0                            ; $5F47: $20 $77

    ld l, c                                       ; $5F49: $69
    ld l, h                                       ; $5F4A: $6C
    ld l, h                                       ; $5F4B: $6C
    cp $74                                        ; $5F4C: $FE $74
    ld [hl], l                                    ; $5F4E: $75
    ld [hl], d                                    ; $5F4F: $72
    ld l, [hl]                                    ; $5F50: $6E
    jr nz, jr_017_5FC0                            ; $5F51: $20 $6D

    ld a, c                                       ; $5F53: $79
    jr nz, jr_017_5FC2                            ; $5F54: $20 $6C

    ld l, a                                       ; $5F56: $6F
    halt                                          ; $5F57: $76
    ld h, l                                       ; $5F58: $65
    ld l, h                                       ; $5F59: $6C
    ld a, c                                       ; $5F5A: $79
    rst $38                                       ; $5F5B: $FF
    ld h, c                                       ; $5F5C: $61
    ld [hl], e                                    ; $5F5D: $73
    ld [hl], e                                    ; $5F5E: $73
    ld l, c                                       ; $5F5F: $69
    ld [hl], e                                    ; $5F60: $73
    ld [hl], h                                    ; $5F61: $74
    ld h, c                                       ; $5F62: $61
    ld l, [hl]                                    ; $5F63: $6E
    ld [hl], h                                    ; $5F64: $74
    jr nz, jr_017_5FD0                            ; $5F65: $20 $69

    ld l, [hl]                                    ; $5F67: $6E
    ld [hl], h                                    ; $5F68: $74
    ld l, a                                       ; $5F69: $6F
    cp $61                                        ; $5F6A: $FE $61
    jr nz, jr_017_5FD4                            ; $5F6C: $20 $66

    ld h, l                                       ; $5F6E: $65
    ld [hl], d                                    ; $5F6F: $72
    ld l, a                                       ; $5F70: $6F
    ld h, e                                       ; $5F71: $63
    ld l, c                                       ; $5F72: $69

jr_017_5F73:
    ld l, a                                       ; $5F73: $6F

jr_017_5F74:
    ld [hl], l                                    ; $5F74: $75
    ld [hl], e                                    ; $5F75: $73
    inc l                                         ; $5F76: $2C
    cp $68                                        ; $5F77: $FE $68
    ld l, a                                       ; $5F79: $6F
    ld [hl], d                                    ; $5F7A: $72
    ld [hl], d                                    ; $5F7B: $72
    ld l, c                                       ; $5F7C: $69
    ld h, d                                       ; $5F7D: $62
    ld l, h                                       ; $5F7E: $6C
    ld h, l                                       ; $5F7F: $65
    jr nz, jr_017_5FE4                            ; $5F80: $20 $62

    ld h, l                                       ; $5F82: $65
    ld h, c                                       ; $5F83: $61

jr_017_5F84:
    ld [hl], e                                    ; $5F84: $73

jr_017_5F85:
    ld [hl], h                                    ; $5F85: $74
    ld hl, $FDFE                                  ; $5F86: $21 $FE $FD
    add hl, bc                                    ; $5F89: $09
    inc bc                                        ; $5F8A: $03
    rla                                           ; $5F8B: $17
    push af                                       ; $5F8C: $F5
    ld h, l                                       ; $5F8D: $65
    sbc e                                         ; $5F8E: $9B
    adc b                                         ; $5F8F: $88

jr_017_5F90:
    ld c, h                                       ; $5F90: $4C
    sbc a                                         ; $5F91: $9F
    ld d, a                                       ; $5F92: $57
    ld c, b                                       ; $5F93: $48
    ld b, c                                       ; $5F94: $41
    ld d, h                                       ; $5F95: $54
    ld hl, $213F                                  ; $5F96: $21 $3F $21
    ccf                                           ; $5F99: $3F
    ld hl, $54FF                                  ; $5F9A: $21 $FF $54
    ld l, b                                       ; $5F9D: $68

jr_017_5F9E:
    ld h, c                                       ; $5F9E: $61
    ld [hl], h                                    ; $5F9F: $74
    jr nz, jr_017_600B                            ; $5FA0: $20 $69

    ld [hl], e                                    ; $5FA2: $73
    ld l, [hl]                                    ; $5FA3: $6E
    daa                                           ; $5FA4: $27

jr_017_5FA5:
    ld [hl], h                                    ; $5FA5: $74

jr_017_5FA6:
    cp $77                                        ; $5FA6: $FE $77
    ld l, b                                       ; $5FA8: $68
    ld h, c                                       ; $5FA9: $61
    ld [hl], h                                    ; $5FAA: $74
    jr nz, @+$79                                  ; $5FAB: $20 $77

    ld h, l                                       ; $5FAD: $65
    jr nz, jr_017_6011                            ; $5FAE: $20 $61

    ld h, a                                       ; $5FB0: $67
    ld [hl], d                                    ; $5FB1: $72
    ld h, l                                       ; $5FB2: $65
    ld h, l                                       ; $5FB3: $65
    ld h, h                                       ; $5FB4: $64
    rst $38                                       ; $5FB5: $FF
    ld [hl], h                                    ; $5FB6: $74
    ld l, a                                       ; $5FB7: $6F
    ld hl, $FDFE                                  ; $5FB8: $21 $FE $FD
    sbc d                                         ; $5FBB: $9A
    add hl, bc                                    ; $5FBC: $09
    ld [bc], a                                    ; $5FBD: $02
    rla                                           ; $5FBE: $17
    add d                                         ; $5FBF: $82

jr_017_5FC0:
    ld h, [hl]                                    ; $5FC0: $66
    ld b, b                                       ; $5FC1: $40

jr_017_5FC2:
    jr jr_017_601C                                ; $5FC2: $18 $58

    add hl, hl                                    ; $5FC4: $29
    ld h, d                                       ; $5FC5: $62
    inc sp                                        ; $5FC6: $33
    sbc e                                         ; $5FC7: $9B
    ret c                                         ; $5FC8: $D8

    ld h, b                                       ; $5FC9: $60
    sbc a                                         ; $5FCA: $9F
    ld c, a                                       ; $5FCB: $4F
    ld l, a                                       ; $5FCC: $6F
    ld [hl], b                                    ; $5FCD: $70
    ld [hl], e                                    ; $5FCE: $73
    inc l                                         ; $5FCF: $2C

jr_017_5FD0:
    jr nz, jr_017_601B                            ; $5FD0: $20 $49

    jr nz, jr_017_6038                            ; $5FD2: $20 $64

jr_017_5FD4:
    ld l, c                                       ; $5FD4: $69
    ld h, h                                       ; $5FD5: $64
    jr nz, jr_017_6041                            ; $5FD6: $20 $69

    ld [hl], h                                    ; $5FD8: $74
    rst $38                                       ; $5FD9: $FF
    ld h, c                                       ; $5FDA: $61
    ld h, a                                       ; $5FDB: $67
    ld h, c                                       ; $5FDC: $61
    ld l, c                                       ; $5FDD: $69
    ld l, [hl]                                    ; $5FDE: $6E
    ld hl, $FDFE                                  ; $5FDF: $21 $FE $FD
    sbc d                                         ; $5FE2: $9A
    ld e, b                                       ; $5FE3: $58

jr_017_5FE4:
    inc [hl]                                      ; $5FE4: $34
    ld h, b                                       ; $5FE5: $60
    dec [hl]                                      ; $5FE6: $35
    ld b, b                                       ; $5FE7: $40
    jr jr_017_5F85                                ; $5FE8: $18 $9B

    ret c                                         ; $5FEA: $D8

    ld h, b                                       ; $5FEB: $60
    sbc a                                         ; $5FEC: $9F
    ld b, c                                       ; $5FED: $41
    ld c, c                                       ; $5FEE: $49
    ld b, c                                       ; $5FEF: $41
    ld c, c                                       ; $5FF0: $49
    ld b, a                                       ; $5FF1: $47
    ld b, a                                       ; $5FF2: $47
    ld b, a                                       ; $5FF3: $47
    ld b, a                                       ; $5FF4: $47
    ld c, b                                       ; $5FF5: $48
    ld c, b                                       ; $5FF6: $48
    ld c, b                                       ; $5FF7: $48
    ld hl, $2121                                  ; $5FF8: $21 $21 $21
    rst $38                                       ; $5FFB: $FF
    db $FD                                        ; $5FFC: $FD
    sbc d                                         ; $5FFD: $9A
    ld h, d                                       ; $5FFE: $62
    scf                                           ; $5FFF: $37
    ld e, b                                       ; $6000: $58
    jr c, jr_017_5F9E                             ; $6001: $38 $9B

    ret c                                         ; $6003: $D8

    ld h, b                                       ; $6004: $60
    sbc a                                         ; $6005: $9F
    ld c, a                                       ; $6006: $4F
    ld l, e                                       ; $6007: $6B
    ld h, c                                       ; $6008: $61
    ld a, c                                       ; $6009: $79
    inc l                                         ; $600A: $2C

jr_017_600B:
    jr nz, jr_017_607C                            ; $600B: $20 $6F

    ld l, e                                       ; $600D: $6B
    ld h, c                                       ; $600E: $61
    ld a, c                                       ; $600F: $79
    inc l                                         ; $6010: $2C

jr_017_6011:
    rst $38                                       ; $6011: $FF
    ld l, h                                       ; $6012: $6C
    ld h, l                                       ; $6013: $65
    ld [hl], h                                    ; $6014: $74
    jr nz, jr_017_6084                            ; $6015: $20 $6D

    ld h, l                                       ; $6017: $65
    jr nz, jr_017_608E                            ; $6018: $20 $74

    ld [hl], d                                    ; $601A: $72

jr_017_601B:
    ld a, c                                       ; $601B: $79

jr_017_601C:
    cp $74                                        ; $601C: $FE $74
    ld l, a                                       ; $601E: $6F
    jr nz, jr_017_6087                            ; $601F: $20 $66

    ld l, c                                       ; $6021: $69
    ld a, b                                       ; $6022: $78
    jr nz, jr_017_6099                            ; $6023: $20 $74

    ld l, b                                       ; $6025: $68
    ld l, c                                       ; $6026: $69
    ld l, [hl]                                    ; $6027: $6E
    ld h, a                                       ; $6028: $67
    ld [hl], e                                    ; $6029: $73
    ld hl, $FDFE                                  ; $602A: $21 $FE $FD
    sbc d                                         ; $602D: $9A
    ld b, b                                       ; $602E: $40
    jr jr_017_6089                                ; $602F: $18 $58

    add hl, sp                                    ; $6031: $39
    ld h, d                                       ; $6032: $62
    dec a                                         ; $6033: $3D
    sbc e                                         ; $6034: $9B
    ld a, b                                       ; $6035: $78
    ld [hl], b                                    ; $6036: $70
    sbc a                                         ; $6037: $9F

jr_017_6038:
    ld l, $2E                                     ; $6038: $2E $2E
    ld l, $21                                     ; $603A: $2E $21
    ccf                                           ; $603C: $3F
    cp $FD                                        ; $603D: $FE $FD
    sbc d                                         ; $603F: $9A
    ld e, b                                       ; $6040: $58

jr_017_6041:
    ld a, $42                                     ; $6041: $3E $42
    sbc e                                         ; $6043: $9B
    ret c                                         ; $6044: $D8

    ld h, b                                       ; $6045: $60
    sbc a                                         ; $6046: $9F
    ld b, c                                       ; $6047: $41
    ld l, b                                       ; $6048: $68
    ld l, $2E                                     ; $6049: $2E $2E
    jr nz, jr_017_60C1                            ; $604B: $20 $74

    ld l, b                                       ; $604D: $68
    ld h, c                                       ; $604E: $61
    ld [hl], h                                    ; $604F: $74
    daa                                           ; $6050: $27

jr_017_6051:
    ld [hl], e                                    ; $6051: $73
    jr nz, jr_017_60C8                            ; $6052: $20 $74

    ld l, b                                       ; $6054: $68
    ld h, l                                       ; $6055: $65
    rst $38                                       ; $6056: $FF
    ld [hl], d                                    ; $6057: $72
    ld l, c                                       ; $6058: $69
    ld h, a                                       ; $6059: $67
    ld l, b                                       ; $605A: $68
    ld [hl], h                                    ; $605B: $74
    jr nz, jr_017_60CD                            ; $605C: $20 $6F

    ld l, [hl]                                    ; $605E: $6E
    ld h, l                                       ; $605F: $65
    ld l, $FE                                     ; $6060: $2E $FE
    db $FD                                        ; $6062: $FD
    sbc e                                         ; $6063: $9B
    adc b                                         ; $6064: $88
    ld c, h                                       ; $6065: $4C
    sbc a                                         ; $6066: $9F
    ld c, c                                       ; $6067: $49
    daa                                           ; $6068: $27
    ld l, l                                       ; $6069: $6D
    jr nz, jr_017_60DB                            ; $606A: $20 $6F

    ld [hl], l                                    ; $606C: $75
    ld [hl], h                                    ; $606D: $74
    jr nz, @+$71                                  ; $606E: $20 $6F

    ld h, [hl]                                    ; $6070: $66
    jr nz, jr_017_60DB                            ; $6071: $20 $68

    ld h, l                                       ; $6073: $65
    ld [hl], d                                    ; $6074: $72
    ld h, l                                       ; $6075: $65
    rst $38                                       ; $6076: $FF
    ld a, c                                       ; $6077: $79
    ld l, a                                       ; $6078: $6F
    ld [hl], l                                    ; $6079: $75
    jr nz, jr_017_60E5                            ; $607A: $20 $69

jr_017_607C:
    ld h, h                                       ; $607C: $64
    ld l, c                                       ; $607D: $69
    ld l, a                                       ; $607E: $6F
    ld [hl], h                                    ; $607F: $74
    ld hl, $FDFE                                  ; $6080: $21 $FE $FD
    sbc d                                         ; $6083: $9A

jr_017_6084:
    ld e, b                                       ; $6084: $58
    ld b, a                                       ; $6085: $47
    ld h, d                                       ; $6086: $62

jr_017_6087:
    ld c, b                                       ; $6087: $48
    sbc e                                         ; $6088: $9B

jr_017_6089:
    ret c                                         ; $6089: $D8

    ld h, b                                       ; $608A: $60
    sbc a                                         ; $608B: $9F
    ld c, a                                       ; $608C: $4F
    ld l, b                                       ; $608D: $68

jr_017_608E:
    jr nz, jr_017_6107                            ; $608E: $20 $77

    ld h, l                                       ; $6090: $65
    ld l, h                                       ; $6091: $6C
    ld l, h                                       ; $6092: $6C
    ld l, $2E                                     ; $6093: $2E $2E
    ld l, $2E                                     ; $6095: $2E $2E
    cp $FD                                        ; $6097: $FE $FD

jr_017_6099:
    sbc d                                         ; $6099: $9A
    ld e, b                                       ; $609A: $58
    ld c, c                                       ; $609B: $49
    ld e, b                                       ; $609C: $58
    ld bc, $0007                                  ; $609D: $01 $07 $00
    add c                                         ; $60A0: $81
    ld e, l                                       ; $60A1: $5D
    add hl, bc                                    ; $60A2: $09
    nop                                           ; $60A3: $00
    jr nz, jr_017_6051                            ; $60A4: $20 $AB

    ld d, b                                       ; $60A6: $50
    ld b, d                                       ; $60A7: $42
    sbc e                                         ; $60A8: $9B
    adc b                                         ; $60A9: $88
    ld c, h                                       ; $60AA: $4C
    sbc a                                         ; $60AB: $9F
    ld d, h                                       ; $60AC: $54
    ld l, b                                       ; $60AD: $68
    ld l, c                                       ; $60AE: $69
    ld [hl], e                                    ; $60AF: $73
    jr nz, jr_017_611B                            ; $60B0: $20 $69

    ld [hl], e                                    ; $60B2: $73
    jr nz, jr_017_6129                            ; $60B3: $20 $74

    ld l, b                                       ; $60B5: $68
    ld h, l                                       ; $60B6: $65
    rst $38                                       ; $60B7: $FF
    ld h, [hl]                                    ; $60B8: $66
    ld l, c                                       ; $60B9: $69
    ld [hl], d                                    ; $60BA: $72
    ld [hl], e                                    ; $60BB: $73
    ld [hl], h                                    ; $60BC: $74
    jr nz, jr_017_612C                            ; $60BD: $20 $6D

    ld h, c                                       ; $60BF: $61
    ld h, a                                       ; $60C0: $67

jr_017_60C1:
    ld l, c                                       ; $60C1: $69
    ld h, e                                       ; $60C2: $63
    cp $73                                        ; $60C3: $FE $73
    ld l, b                                       ; $60C5: $68
    ld l, a                                       ; $60C6: $6F
    ld [hl], a                                    ; $60C7: $77

jr_017_60C8:
    jr nz, jr_017_6141                            ; $60C8: $20 $77

    ld h, l                                       ; $60CA: $65
    daa                                           ; $60CB: $27
    halt                                          ; $60CC: $76

jr_017_60CD:
    ld h, l                                       ; $60CD: $65
    rst $38                                       ; $60CE: $FF
    ld h, l                                       ; $60CF: $65
    halt                                          ; $60D0: $76
    ld h, l                                       ; $60D1: $65
    ld [hl], d                                    ; $60D2: $72

jr_017_60D3:
    jr nz, @+$66                                  ; $60D3: $20 $64

    ld l, a                                       ; $60D5: $6F
    ld l, [hl]                                    ; $60D6: $6E
    ld h, l                                       ; $60D7: $65
    ld l, $FE                                     ; $60D8: $2E $FE
    db $FD                                        ; $60DA: $FD

jr_017_60DB:
    sbc d                                         ; $60DB: $9A
    ld e, b                                       ; $60DC: $58
    ld bc, $9B42                                  ; $60DD: $01 $42 $9B
    ret c                                         ; $60E0: $D8

    ld h, b                                       ; $60E1: $60
    sbc a                                         ; $60E2: $9F
    ld b, [hl]                                    ; $60E3: $46
    ld l, a                                       ; $60E4: $6F

jr_017_60E5:
    ld [hl], d                                    ; $60E5: $72
    jr nz, jr_017_6155                            ; $60E6: $20 $6D

    ld a, c                                       ; $60E8: $79
    jr nz, jr_017_6159                            ; $60E9: $20 $6E

    ld h, l                                       ; $60EB: $65
    ld a, b                                       ; $60EC: $78
    ld [hl], h                                    ; $60ED: $74
    rst $38                                       ; $60EE: $FF
    ld [hl], h                                    ; $60EF: $74
    ld [hl], d                                    ; $60F0: $72
    ld l, c                                       ; $60F1: $69
    ld h, e                                       ; $60F2: $63
    ld l, e                                       ; $60F3: $6B
    jr nz, @+$4B                                  ; $60F4: $20 $49

    jr nz, jr_017_616F                            ; $60F6: $20 $77

    ld l, c                                       ; $60F8: $69
    ld l, h                                       ; $60F9: $6C
    ld l, h                                       ; $60FA: $6C
    cp $74                                        ; $60FB: $FE $74
    ld h, l                                       ; $60FD: $65
    ld l, h                                       ; $60FE: $6C
    ld h, l                                       ; $60FF: $65
    ld [hl], b                                    ; $6100: $70
    ld l, a                                       ; $6101: $6F
    ld [hl], d                                    ; $6102: $72
    ld [hl], h                                    ; $6103: $74
    jr nz, @+$7B                                  ; $6104: $20 $79

    ld l, a                                       ; $6106: $6F

jr_017_6107:
    ld [hl], l                                    ; $6107: $75
    rst $38                                       ; $6108: $FF
    ld l, b                                       ; $6109: $68
    ld l, a                                       ; $610A: $6F
    ld l, l                                       ; $610B: $6D
    ld h, l                                       ; $610C: $65
    ld hl, $FDFE                                  ; $610D: $21 $FE $FD
    rlca                                          ; $6110: $07
    nop                                           ; $6111: $00
    ld l, e                                       ; $6112: $6B
    ld c, d                                       ; $6113: $4A
    add hl, bc                                    ; $6114: $09
    nop                                           ; $6115: $00
    rla                                           ; $6116: $17
    ld e, h                                       ; $6117: $5C
    ld h, a                                       ; $6118: $67
    sbc e                                         ; $6119: $9B
    ld a, b                                       ; $611A: $78

jr_017_611B:
    ld [hl], b                                    ; $611B: $70
    sbc a                                         ; $611C: $9F
    ld c, [hl]                                    ; $611D: $4E
    ld l, a                                       ; $611E: $6F
    inc l                                         ; $611F: $2C
    jr nz, jr_017_6196                            ; $6120: $20 $74

    ld l, b                                       ; $6122: $68
    ld h, c                                       ; $6123: $61
    ld [hl], h                                    ; $6124: $74
    daa                                           ; $6125: $27
    ld [hl], e                                    ; $6126: $73
    jr nz, jr_017_6198                            ; $6127: $20 $6F

jr_017_6129:
    ld l, e                                       ; $6129: $6B
    ld h, c                                       ; $612A: $61
    ld a, c                                       ; $612B: $79

jr_017_612C:
    rst $38                                       ; $612C: $FF
    ld c, c                                       ; $612D: $49
    daa                                           ; $612E: $27
    ld l, h                                       ; $612F: $6C
    ld l, h                                       ; $6130: $6C
    jr nz, jr_017_619D                            ; $6131: $20 $6A

    ld [hl], l                                    ; $6133: $75
    ld [hl], e                                    ; $6134: $73
    ld [hl], h                                    ; $6135: $74
    ld l, $2E                                     ; $6136: $2E $2E
    ld l, $2E                                     ; $6138: $2E $2E
    cp $FD                                        ; $613A: $FE $FD
    sbc d                                         ; $613C: $9A
    ld b, b                                       ; $613D: $40
    jr @+$07                                      ; $613E: $18 $05

    nop                                           ; $6140: $00

jr_017_6141:
    ld l, e                                       ; $6141: $6B
    ld c, d                                       ; $6142: $4A
    dec c                                         ; $6143: $0D
    jr nz, jr_017_60D3                            ; $6144: $20 $8D

    jp nc, $1197                                  ; $6146: $D2 $97 $11

    ld d, c                                       ; $6149: $51
    ld a, l                                       ; $614A: $7D
    ld [hl+], a                                   ; $614B: $22
    dec b                                         ; $614C: $05
    ld b, b                                       ; $614D: $40
    ld b, b                                       ; $614E: $40
    ld c, b                                       ; $614F: $48
    ld a, h                                       ; $6150: $7C
    ld a, [bc]                                    ; $6151: $0A
    rlca                                          ; $6152: $07
    ld [bc], a                                    ; $6153: $02
    dec b                                         ; $6154: $05

jr_017_6155:
    nop                                           ; $6155: $00
    ld l, e                                       ; $6156: $6B
    ld c, d                                       ; $6157: $4A
    ld a, [bc]                                    ; $6158: $0A

jr_017_6159:
    rlca                                          ; $6159: $07
    sub [hl]                                      ; $615A: $96
    ret nc                                        ; $615B: $D0

    ld d, d                                       ; $615C: $52
    ld de, $7D3B                                  ; $615D: $11 $3B $7D
    ld [hl+], a                                   ; $6160: $22
    dec b                                         ; $6161: $05
    ld b, b                                       ; $6162: $40
    ld b, b                                       ; $6163: $40
    jr c, jr_017_616B                             ; $6164: $38 $05

    nop                                           ; $6166: $00
    ld l, e                                       ; $6167: $6B
    ld c, d                                       ; $6168: $4A
    ld a, [bc]                                    ; $6169: $0A
    rlca                                          ; $616A: $07

jr_017_616B:
    sub [hl]                                      ; $616B: $96
    ret nc                                        ; $616C: $D0

    nop                                           ; $616D: $00
    rla                                           ; $616E: $17

jr_017_616F:
    ret nz                                        ; $616F: $C0

    ld h, [hl]                                    ; $6170: $66
    ld [hl+], a                                   ; $6171: $22
    dec b                                         ; $6172: $05
    ld b, b                                       ; $6173: $40
    ld e, a                                       ; $6174: $5F
    sbc e                                         ; $6175: $9B
    ld a, b                                       ; $6176: $78
    ld [hl], b                                    ; $6177: $70
    sbc a                                         ; $6178: $9F
    ld b, a                                       ; $6179: $47
    ld [hl], d                                    ; $617A: $72
    ld h, l                                       ; $617B: $65
    ld h, c                                       ; $617C: $61
    ld [hl], h                                    ; $617D: $74
    ld l, $2E                                     ; $617E: $2E $2E
    ld l, $20                                     ; $6180: $2E $20
    ld l, [hl]                                    ; $6182: $6E
    ld l, a                                       ; $6183: $6F
    ld [hl], a                                    ; $6184: $77
    rst $38                                       ; $6185: $FF
    ld [hl], a                                    ; $6186: $77
    ld l, b                                       ; $6187: $68
    ld h, c                                       ; $6188: $61
    ld [hl], h                                    ; $6189: $74
    jr nz, jr_017_61ED                            ; $618A: $20 $61

    ld l, l                                       ; $618C: $6D
    jr nz, jr_017_61D8                            ; $618D: $20 $49

    cp $73                                        ; $618F: $FE $73
    ld [hl], l                                    ; $6191: $75
    ld [hl], b                                    ; $6192: $70
    ld [hl], b                                    ; $6193: $70
    ld l, a                                       ; $6194: $6F
    ld [hl], e                                    ; $6195: $73

jr_017_6196:
    ld h, l                                       ; $6196: $65
    ld h, h                                       ; $6197: $64

jr_017_6198:
    jr nz, jr_017_620E                            ; $6198: $20 $74

    ld l, a                                       ; $619A: $6F
    jr nz, jr_017_6201                            ; $619B: $20 $64

jr_017_619D:
    ld l, a                                       ; $619D: $6F
    ccf                                           ; $619E: $3F
    cp $FD                                        ; $619F: $FE $FD
    sbc d                                         ; $61A1: $9A
    add hl, bc                                    ; $61A2: $09
    rlca                                          ; $61A3: $07
    db $10                                        ; $61A4: $10
    ld d, c                                       ; $61A5: $51
    ld e, h                                       ; $61A6: $5C
    ld a, h                                       ; $61A7: $7C
    ld c, $1C                                     ; $61A8: $0E $1C
    ld [bc], a                                    ; $61AA: $02
    sbc e                                         ; $61AB: $9B
    ret c                                         ; $61AC: $D8

    ld h, b                                       ; $61AD: $60
    sbc a                                         ; $61AE: $9F
    ld d, l                                       ; $61AF: $55
    ld l, l                                       ; $61B0: $6D
    ld l, l                                       ; $61B1: $6D
    ld l, l                                       ; $61B2: $6D
    ld l, l                                       ; $61B3: $6D
    ld l, $2E                                     ; $61B4: $2E $2E
    ld l, $20                                     ; $61B6: $2E $20
    ld l, d                                       ; $61B8: $6A
    ld [hl], l                                    ; $61B9: $75
    ld l, l                                       ; $61BA: $6D
    ld [hl], b                                    ; $61BB: $70
    ccf                                           ; $61BC: $3F
    cp $FD                                        ; $61BD: $FE $FD
    sbc d                                         ; $61BF: $9A
    ld a, l                                       ; $61C0: $7D
    adc c                                         ; $61C1: $89
    pop bc                                        ; $61C2: $C1
    ld [bc], a                                    ; $61C3: $02
    sbc e                                         ; $61C4: $9B
    ld a, b                                       ; $61C5: $78
    ld [hl], b                                    ; $61C6: $70
    sbc a                                         ; $61C7: $9F
    ld d, h                                       ; $61C8: $54
    ld l, b                                       ; $61C9: $68
    ld h, c                                       ; $61CA: $61
    ld [hl], h                                    ; $61CB: $74
    jr nz, @+$6B                                  ; $61CC: $20 $69

    ld [hl], e                                    ; $61CE: $73
    jr nz, jr_017_6224                            ; $61CF: $20 $53

    ld c, a                                       ; $61D1: $4F
    rst $38                                       ; $61D2: $FF
    ld h, e                                       ; $61D3: $63
    ld l, a                                       ; $61D4: $6F
    ld l, l                                       ; $61D5: $6D
    ld h, [hl]                                    ; $61D6: $66
    ld l, a                                       ; $61D7: $6F

jr_017_61D8:
    ld [hl], d                                    ; $61D8: $72
    ld [hl], h                                    ; $61D9: $74
    ld l, c                                       ; $61DA: $69
    ld l, [hl]                                    ; $61DB: $6E
    ld h, a                                       ; $61DC: $67
    ld l, $2E                                     ; $61DD: $2E $2E
    ld l, $FE                                     ; $61DF: $2E $FE
    db $FD                                        ; $61E1: $FD
    sbc d                                         ; $61E2: $9A
    ld e, b                                       ; $61E3: $58
    rla                                           ; $61E4: $17
    ld b, d                                       ; $61E5: $42
    sbc e                                         ; $61E6: $9B
    ret c                                         ; $61E7: $D8

    ld h, b                                       ; $61E8: $60
    sbc a                                         ; $61E9: $9F
    ld d, e                                       ; $61EA: $53
    ld l, a                                       ; $61EB: $6F
    ld [hl], d                                    ; $61EC: $72

jr_017_61ED:
    ld [hl], d                                    ; $61ED: $72
    ld a, c                                       ; $61EE: $79
    inc l                                         ; $61EF: $2C
    jr nz, @+$64                                  ; $61F0: $20 $62

    ld [hl], l                                    ; $61F2: $75
    ld [hl], h                                    ; $61F3: $74
    jr nz, jr_017_623F                            ; $61F4: $20 $49

    rst $38                                       ; $61F6: $FF
    ld h, c                                       ; $61F7: $61
    ld l, l                                       ; $61F8: $6D
    jr nz, jr_017_626D                            ; $61F9: $20 $72

    ld h, l                                       ; $61FB: $65
    ld [hl], h                                    ; $61FC: $74
    ld l, c                                       ; $61FD: $69
    ld [hl], d                                    ; $61FE: $72
    ld h, l                                       ; $61FF: $65
    ld h, h                                       ; $6200: $64

jr_017_6201:
    ld l, $2E                                     ; $6201: $2E $2E
    ld l, $FE                                     ; $6203: $2E $FE
    db $FD                                        ; $6205: $FD
    sbc d                                         ; $6206: $9A
    ld e, b                                       ; $6207: $58
    ld bc, $9B42                                  ; $6208: $01 $42 $9B
    ld a, b                                       ; $620B: $78
    ld [hl], b                                    ; $620C: $70
    sbc a                                         ; $620D: $9F

jr_017_620E:
    ld c, c                                       ; $620E: $49
    daa                                           ; $620F: $27
    ld l, l                                       ; $6210: $6D
    jr nz, jr_017_6281                            ; $6211: $20 $6E

    ld l, a                                       ; $6213: $6F
    ld [hl], h                                    ; $6214: $74
    jr nz, jr_017_627E                            ; $6215: $20 $67

    ld l, a                                       ; $6217: $6F
    ld l, c                                       ; $6218: $69
    ld l, [hl]                                    ; $6219: $6E
    ld h, a                                       ; $621A: $67
    rst $38                                       ; $621B: $FF
    ld [hl], h                                    ; $621C: $74
    ld l, a                                       ; $621D: $6F
    jr nz, jr_017_628C                            ; $621E: $20 $6C

    ld h, l                                       ; $6220: $65
    ld h, c                                       ; $6221: $61
    halt                                          ; $6222: $76
    ld h, l                                       ; $6223: $65

jr_017_6224:
    jr nz, @+$6F                                  ; $6224: $20 $6D

    ld a, c                                       ; $6226: $79
    cp $6F                                        ; $6227: $FE $6F
    ld [hl], a                                    ; $6229: $77
    ld l, [hl]                                    ; $622A: $6E
    jr nz, jr_017_629D                            ; $622B: $20 $70

    ld h, c                                       ; $622D: $61
    ld [hl], d                                    ; $622E: $72
    ld [hl], h                                    ; $622F: $74
    ld a, c                                       ; $6230: $79
    ld hl, $FDFE                                  ; $6231: $21 $FE $FD
    sbc d                                         ; $6234: $9A
    ld e, b                                       ; $6235: $58
    ld bc, $9F42                                  ; $6236: $01 $42 $9F
    ld c, h                                       ; $6239: $4C
    ld h, l                                       ; $623A: $65
    ld h, c                                       ; $623B: $61
    halt                                          ; $623C: $76
    ld l, c                                       ; $623D: $69
    ld l, [hl]                                    ; $623E: $6E

jr_017_623F:
    ld h, a                                       ; $623F: $67
    jr nz, jr_017_62B5                            ; $6240: $20 $73

    ld l, a                                       ; $6242: $6F
    rst $38                                       ; $6243: $FF

Call_017_6244:
    ld [hl], e                                    ; $6244: $73
    ld l, a                                       ; $6245: $6F
    ld l, a                                       ; $6246: $6F
    ld l, [hl]                                    ; $6247: $6E
    inc l                                         ; $6248: $2C
    jr nz, jr_017_629F                            ; $6249: $20 $54

    ld l, a                                       ; $624B: $6F
    ld l, [hl]                                    ; $624C: $6E
    ld a, c                                       ; $624D: $79
    ccf                                           ; $624E: $3F
    cp $FD                                        ; $624F: $FE $FD
    sbc d                                         ; $6251: $9A
    ld e, b                                       ; $6252: $58
    ld bc, $9B42                                  ; $6253: $01 $42 $9B
    adc b                                         ; $6256: $88
    ld c, h                                       ; $6257: $4C
    sbc a                                         ; $6258: $9F
    ld b, c                                       ; $6259: $41
    ld [hl], d                                    ; $625A: $72
    ld h, l                                       ; $625B: $65
    ld l, [hl]                                    ; $625C: $6E
    daa                                           ; $625D: $27
    ld [hl], h                                    ; $625E: $74
    jr nz, jr_017_62D5                            ; $625F: $20 $74

    ld l, b                                       ; $6261: $68
    ld h, l                                       ; $6262: $65
    rst $38                                       ; $6263: $FF
    ld l, h                                       ; $6264: $6C
    ld h, c                                       ; $6265: $61
    halt                                          ; $6266: $76
    ld h, c                                       ; $6267: $61
    jr nz, jr_017_62D6                            ; $6268: $20 $6C

    ld h, c                                       ; $626A: $61
    ld l, l                                       ; $626B: $6D
    ld [hl], b                                    ; $626C: $70

jr_017_626D:
    ld [hl], e                                    ; $626D: $73
    cp $70                                        ; $626E: $FE $70
    ld [hl], d                                    ; $6270: $72
    ld h, l                                       ; $6271: $65
    ld [hl], h                                    ; $6272: $74
    ld [hl], h                                    ; $6273: $74
    ld a, c                                       ; $6274: $79
    ccf                                           ; $6275: $3F
    cp $FD                                        ; $6276: $FE $FD
    sbc d                                         ; $6278: $9A
    ld e, b                                       ; $6279: $58
    ld bc, $9B42                                  ; $627A: $01 $42 $9B
    add hl, de                                    ; $627D: $19

jr_017_627E:
    ld c, [hl]                                    ; $627E: $4E
    sbc a                                         ; $627F: $9F
    ld d, h                                       ; $6280: $54

jr_017_6281:
    ld l, b                                       ; $6281: $68
    ld h, l                                       ; $6282: $65
    jr nz, @+$72                                  ; $6283: $20 $70

    ld h, l                                       ; $6285: $65
    ld l, a                                       ; $6286: $6F
    ld [hl], b                                    ; $6287: $70
    ld l, h                                       ; $6288: $6C
    ld h, l                                       ; $6289: $65
    jr nz, @+$6B                                  ; $628A: $20 $69

jr_017_628C:
    ld l, [hl]                                    ; $628C: $6E
    rst $38                                       ; $628D: $FF
    ld [hl], h                                    ; $628E: $74
    ld l, b                                       ; $628F: $68
    ld l, c                                       ; $6290: $69
    ld [hl], e                                    ; $6291: $73
    jr nz, jr_017_6308                            ; $6292: $20 $74

    ld l, a                                       ; $6294: $6F
    ld [hl], a                                    ; $6295: $77
    ld l, [hl]                                    ; $6296: $6E
    jr nz, jr_017_62FA                            ; $6297: $20 $61

    ld [hl], d                                    ; $6299: $72
    ld h, l                                       ; $629A: $65
    cp $66                                        ; $629B: $FE $66

jr_017_629D:
    ld l, a                                       ; $629D: $6F
    ld l, a                                       ; $629E: $6F

jr_017_629F:
    ld l, h                                       ; $629F: $6C
    ld [hl], e                                    ; $62A0: $73
    ld l, $FE                                     ; $62A1: $2E $FE
    db $FD                                        ; $62A3: $FD
    sbc d                                         ; $62A4: $9A
    ld e, b                                       ; $62A5: $58
    ld bc, $9B42                                  ; $62A6: $01 $42 $9B
    adc b                                         ; $62A9: $88
    ld c, h                                       ; $62AA: $4C
    sbc a                                         ; $62AB: $9F
    ld c, b                                       ; $62AC: $48
    ld h, l                                       ; $62AD: $65
    ld a, c                                       ; $62AE: $79
    inc l                                         ; $62AF: $2C
    jr nz, jr_017_631A                            ; $62B0: $20 $68

    ld h, l                                       ; $62B2: $65
    ld a, c                                       ; $62B3: $79
    inc l                                         ; $62B4: $2C

jr_017_62B5:
    jr nz, @+$4B                                  ; $62B5: $20 $49

    rst $38                                       ; $62B7: $FF
    ld h, d                                       ; $62B8: $62
    ld h, l                                       ; $62B9: $65
    ld [hl], h                                    ; $62BA: $74
    jr nz, jr_017_6331                            ; $62BB: $20 $74

    ld l, b                                       ; $62BD: $68
    ld l, a                                       ; $62BE: $6F
    ld [hl], e                                    ; $62BF: $73
    ld h, l                                       ; $62C0: $65
    jr nz, jr_017_630F                            ; $62C1: $20 $4C

    ld h, c                                       ; $62C3: $61
    halt                                          ; $62C4: $76
    ld h, c                                       ; $62C5: $61
    cp $41                                        ; $62C6: $FE $41
    ld [hl], d                                    ; $62C8: $72
    ld h, d                                       ; $62C9: $62
    ld l, a                                       ; $62CA: $6F
    ld l, h                                       ; $62CB: $6C
    ld l, h                                       ; $62CC: $6C
    ld [hl], e                                    ; $62CD: $73
    jr nz, jr_017_633C                            ; $62CE: $20 $6C

    ld l, a                                       ; $62D0: $6F
    halt                                          ; $62D1: $76
    ld h, l                                       ; $62D2: $65
    rst $38                                       ; $62D3: $FF
    ld [hl], d                                    ; $62D4: $72

jr_017_62D5:
    ld h, l                                       ; $62D5: $65

jr_017_62D6:
    ld h, c                                       ; $62D6: $61
    ld l, h                                       ; $62D7: $6C
    ld l, h                                       ; $62D8: $6C
    ld a, c                                       ; $62D9: $79
    jr nz, jr_017_6344                            ; $62DA: $20 $68

    ld l, a                                       ; $62DC: $6F
    ld [hl], h                                    ; $62DD: $74
    rst $38                                       ; $62DE: $FF
    ld [hl], b                                    ; $62DF: $70
    ld l, h                                       ; $62E0: $6C
    ld h, c                                       ; $62E1: $61
    ld h, e                                       ; $62E2: $63
    ld h, l                                       ; $62E3: $65
    ld [hl], e                                    ; $62E4: $73
    ld hl, $FDFE                                  ; $62E5: $21 $FE $FD
    sbc d                                         ; $62E8: $9A
    ld e, b                                       ; $62E9: $58
    ld bc, $9B42                                  ; $62EA: $01 $42 $9B
    add hl, de                                    ; $62ED: $19
    ld c, [hl]                                    ; $62EE: $4E
    sbc a                                         ; $62EF: $9F
    ld c, c                                       ; $62F0: $49
    ld [hl], h                                    ; $62F1: $74
    daa                                           ; $62F2: $27
    ld [hl], e                                    ; $62F3: $73
    jr nz, jr_017_636A                            ; $62F4: $20 $74

    ld l, a                                       ; $62F6: $6F
    ld l, a                                       ; $62F7: $6F
    jr nz, @+$6A                                  ; $62F8: $20 $68

jr_017_62FA:
    ld l, a                                       ; $62FA: $6F
    ld [hl], h                                    ; $62FB: $74
    rst $38                                       ; $62FC: $FF
    ld [hl], h                                    ; $62FD: $74
    ld l, a                                       ; $62FE: $6F
    jr nz, jr_017_636E                            ; $62FF: $20 $6D

    ld l, a                                       ; $6301: $6F
    halt                                          ; $6302: $76
    ld h, l                                       ; $6303: $65
    jr nz, jr_017_6367                            ; $6304: $20 $61

    ld [hl], d                                    ; $6306: $72
    ld l, a                                       ; $6307: $6F

jr_017_6308:
    ld [hl], l                                    ; $6308: $75
    ld l, [hl]                                    ; $6309: $6E
    ld h, h                                       ; $630A: $64
    cp $68                                        ; $630B: $FE $68
    ld h, l                                       ; $630D: $65
    ld [hl], d                                    ; $630E: $72

jr_017_630F:
    ld h, l                                       ; $630F: $65
    ld l, $FE                                     ; $6310: $2E $FE
    db $FD                                        ; $6312: $FD
    sbc d                                         ; $6313: $9A
    ld e, b                                       ; $6314: $58
    ld bc, $9B42                                  ; $6315: $01 $42 $9B
    adc b                                         ; $6318: $88
    ld c, h                                       ; $6319: $4C

jr_017_631A:
    sbc a                                         ; $631A: $9F
    ld c, h                                       ; $631B: $4C
    ld h, l                                       ; $631C: $65
    ld h, c                                       ; $631D: $61
    halt                                          ; $631E: $76
    ld h, l                                       ; $631F: $65
    jr nz, jr_017_638F                            ; $6320: $20 $6D

    ld h, l                                       ; $6322: $65
    jr nz, jr_017_6386                            ; $6323: $20 $61

    ld l, h                                       ; $6325: $6C
    ld l, a                                       ; $6326: $6F
    ld l, [hl]                                    ; $6327: $6E
    ld h, l                                       ; $6328: $65
    ld l, $FE                                     ; $6329: $2E $FE
    db $FD                                        ; $632B: $FD
    sbc d                                         ; $632C: $9A
    ld e, b                                       ; $632D: $58
    ld bc, $9B42                                  ; $632E: $01 $42 $9B

jr_017_6331:
    add hl, de                                    ; $6331: $19
    ld c, [hl]                                    ; $6332: $4E
    sbc a                                         ; $6333: $9F
    ld c, b                                       ; $6334: $48
    ld l, l                                       ; $6335: $6D
    ld [hl], b                                    ; $6336: $70
    ld l, b                                       ; $6337: $68
    ld l, $FE                                     ; $6338: $2E $FE
    db $FD                                        ; $633A: $FD
    sbc d                                         ; $633B: $9A

jr_017_633C:
    ld e, b                                       ; $633C: $58
    ld bc, $9B42                                  ; $633D: $01 $42 $9B
    adc b                                         ; $6340: $88
    ld c, h                                       ; $6341: $4C
    sbc a                                         ; $6342: $9F
    ld d, a                                       ; $6343: $57

jr_017_6344:
    ld l, c                                       ; $6344: $69
    ld l, h                                       ; $6345: $6C
    ld l, h                                       ; $6346: $6C
    jr nz, jr_017_63C2                            ; $6347: $20 $79

    ld l, a                                       ; $6349: $6F
    ld [hl], l                                    ; $634A: $75
    jr nz, jr_017_63C0                            ; $634B: $20 $73

    ld [hl], h                                    ; $634D: $74
    ld l, a                                       ; $634E: $6F
    ld [hl], b                                    ; $634F: $70
    rst $38                                       ; $6350: $FF
    ld [hl], h                                    ; $6351: $74
    ld l, b                                       ; $6352: $68
    ld h, l                                       ; $6353: $65
    jr nz, jr_017_63BD                            ; $6354: $20 $67

    ld h, l                                       ; $6356: $65
    ld a, c                                       ; $6357: $79
    ld [hl], e                                    ; $6358: $73
    ld h, l                                       ; $6359: $65
    ld [hl], d                                    ; $635A: $72
    ccf                                           ; $635B: $3F
    cp $FD                                        ; $635C: $FE $FD
    sbc d                                         ; $635E: $9A
    ld e, b                                       ; $635F: $58
    ld bc, $9B42                                  ; $6360: $01 $42 $9B
    add hl, de                                    ; $6363: $19
    ld c, [hl]                                    ; $6364: $4E
    sbc a                                         ; $6365: $9F
    ld c, c                                       ; $6366: $49

jr_017_6367:
    daa                                           ; $6367: $27
    halt                                          ; $6368: $76
    ld h, l                                       ; $6369: $65

jr_017_636A:
    jr nz, jr_017_63DA                            ; $636A: $20 $6E

    ld h, l                                       ; $636C: $65
    halt                                          ; $636D: $76

jr_017_636E:
    ld h, l                                       ; $636E: $65
    ld [hl], d                                    ; $636F: $72
    rst $38                                       ; $6370: $FF
    ld [hl], e                                    ; $6371: $73
    ld h, l                                       ; $6372: $65
    ld h, l                                       ; $6373: $65
    ld l, [hl]                                    ; $6374: $6E
    jr nz, @+$63                                  ; $6375: $20 $61

    jr nz, jr_017_63E0                            ; $6377: $20 $67

    ld h, l                                       ; $6379: $65
    ld a, c                                       ; $637A: $79
    ld [hl], e                                    ; $637B: $73
    ld h, l                                       ; $637C: $65
    ld [hl], d                                    ; $637D: $72
    ld l, $FE                                     ; $637E: $2E $FE
    db $FD                                        ; $6380: $FD
    sbc d                                         ; $6381: $9A
    ld e, b                                       ; $6382: $58
    ld bc, $9B42                                  ; $6383: $01 $42 $9B

jr_017_6386:
    adc b                                         ; $6386: $88
    ld c, h                                       ; $6387: $4C
    sbc a                                         ; $6388: $9F
    ld c, b                                       ; $6389: $48
    ld l, a                                       ; $638A: $6F
    ld [hl], a                                    ; $638B: $77
    jr nz, @+$6B                                  ; $638C: $20 $69

    ld [hl], e                                    ; $638E: $73

jr_017_638F:
    jr nz, jr_017_640A                            ; $638F: $20 $79

    ld l, a                                       ; $6391: $6F
    ld [hl], l                                    ; $6392: $75
    ld [hl], d                                    ; $6393: $72
    rst $38                                       ; $6394: $FF
    ld h, h                                       ; $6395: $64
    ld h, c                                       ; $6396: $61
    ld a, c                                       ; $6397: $79
    jr nz, jr_017_640E                            ; $6398: $20 $74

    ld l, a                                       ; $639A: $6F
    ld h, h                                       ; $639B: $64
    ld h, c                                       ; $639C: $61
    ld a, c                                       ; $639D: $79
    ccf                                           ; $639E: $3F
    cp $FD                                        ; $639F: $FE $FD
    sbc d                                         ; $63A1: $9A
    ld e, b                                       ; $63A2: $58
    ld bc, $9B42                                  ; $63A3: $01 $42 $9B
    add hl, de                                    ; $63A6: $19
    ld c, [hl]                                    ; $63A7: $4E
    sbc a                                         ; $63A8: $9F
    ld d, h                                       ; $63A9: $54
    ld l, b                                       ; $63AA: $68
    ld h, l                                       ; $63AB: $65
    jr nz, jr_017_6410                            ; $63AC: $20 $62

    ld [hl], d                                    ; $63AE: $72
    ld l, c                                       ; $63AF: $69
    ld h, h                                       ; $63B0: $64
    ld h, a                                       ; $63B1: $67
    ld h, l                                       ; $63B2: $65
    ld [hl], e                                    ; $63B3: $73
    rst $38                                       ; $63B4: $FF
    ld l, b                                       ; $63B5: $68
    ld h, l                                       ; $63B6: $65
    ld [hl], d                                    ; $63B7: $72
    ld h, l                                       ; $63B8: $65
    jr nz, jr_017_6432                            ; $63B9: $20 $77

    ld h, l                                       ; $63BB: $65
    ld [hl], d                                    ; $63BC: $72

jr_017_63BD:
    ld h, l                                       ; $63BD: $65
    jr nz, jr_017_6421                            ; $63BE: $20 $61

jr_017_63C0:
    ld l, h                                       ; $63C0: $6C
    ld l, h                                       ; $63C1: $6C

jr_017_63C2:
    cp $62                                        ; $63C2: $FE $62
    ld [hl], l                                    ; $63C4: $75
    ld l, c                                       ; $63C5: $69
    ld l, h                                       ; $63C6: $6C
    ld [hl], h                                    ; $63C7: $74
    jr nz, @+$64                                  ; $63C8: $20 $62

    ld a, c                                       ; $63CA: $79
    rst $38                                       ; $63CB: $FF
    ld d, [hl]                                    ; $63CC: $56
    ld h, c                                       ; $63CD: $61
    ld l, h                                       ; $63CE: $6C
    ld l, e                                       ; $63CF: $6B
    ld h, c                                       ; $63D0: $61
    ld l, [hl]                                    ; $63D1: $6E
    ld l, $FE                                     ; $63D2: $2E $FE
    db $FD                                        ; $63D4: $FD
    sbc d                                         ; $63D5: $9A
    ld e, b                                       ; $63D6: $58
    ld bc, $9B42                                  ; $63D7: $01 $42 $9B

jr_017_63DA:
    adc b                                         ; $63DA: $88
    ld c, h                                       ; $63DB: $4C
    sbc a                                         ; $63DC: $9F
    ld d, a                                       ; $63DD: $57
    ld l, b                                       ; $63DE: $68
    ld h, c                                       ; $63DF: $61

jr_017_63E0:
    ld [hl], h                                    ; $63E0: $74
    jr nz, @+$63                                  ; $63E1: $20 $61

    jr nz, jr_017_644C                            ; $63E3: $20 $67

    ld [hl], d                                    ; $63E5: $72
    ld h, l                                       ; $63E6: $65
    ld h, c                                       ; $63E7: $61
    ld [hl], h                                    ; $63E8: $74
    rst $38                                       ; $63E9: $FF
    ld h, h                                       ; $63EA: $64
    ld h, c                                       ; $63EB: $61
    ld a, c                                       ; $63EC: $79
    jr nz, jr_017_6463                            ; $63ED: $20 $74

    ld l, a                                       ; $63EF: $6F
    ld h, h                                       ; $63F0: $64
    ld h, c                                       ; $63F1: $61
    ld a, c                                       ; $63F2: $79
    jr nz, jr_017_645E                            ; $63F3: $20 $69

    ld [hl], e                                    ; $63F5: $73
    ld l, $FE                                     ; $63F6: $2E $FE
    db $FD                                        ; $63F8: $FD
    sbc d                                         ; $63F9: $9A
    ld e, b                                       ; $63FA: $58
    ld bc, $9B42                                  ; $63FB: $01 $42 $9B
    add hl, de                                    ; $63FE: $19
    ld c, [hl]                                    ; $63FF: $4E
    sbc a                                         ; $6400: $9F
    ld e, c                                       ; $6401: $59
    ld l, a                                       ; $6402: $6F
    ld [hl], l                                    ; $6403: $75
    daa                                           ; $6404: $27
    ld [hl], d                                    ; $6405: $72
    ld h, l                                       ; $6406: $65
    jr nz, jr_017_647C                            ; $6407: $20 $73

    ld [hl], h                                    ; $6409: $74

jr_017_640A:
    ld l, c                                       ; $640A: $69
    ld l, h                                       ; $640B: $6C
    ld l, h                                       ; $640C: $6C
    rst $38                                       ; $640D: $FF

jr_017_640E:
    ld h, c                                       ; $640E: $61
    ld l, h                                       ; $640F: $6C

jr_017_6410:
    ld l, c                                       ; $6410: $69
    halt                                          ; $6411: $76
    ld h, l                                       ; $6412: $65
    ccf                                           ; $6413: $3F
    cp $43                                        ; $6414: $FE $43
    ld l, a                                       ; $6416: $6F
    ld l, a                                       ; $6417: $6F
    ld l, h                                       ; $6418: $6C
    ld hl, $FDFE                                  ; $6419: $21 $FE $FD
    sbc d                                         ; $641C: $9A
    ld e, b                                       ; $641D: $58
    ld bc, $9342                                  ; $641E: $01 $42 $93

jr_017_6421:
    ld h, l                                       ; $6421: $65
    ld hl, sp+$47                                 ; $6422: $F8 $47
    ld c, a                                       ; $6424: $4F
    ld h, h                                       ; $6425: $64
    jp c, Jump_017_664A                           ; $6426: $DA $4A $66

    ret nz                                        ; $6429: $C0

    ld e, h                                       ; $642A: $5C
    ld hl, $0005                                  ; $642B: $21 $05 $00
    add c                                         ; $642E: $81
    ld e, l                                       ; $642F: $5D
    dec b                                         ; $6430: $05
    dec b                                         ; $6431: $05

jr_017_6432:
    ld l, c                                       ; $6432: $69
    ret nc                                        ; $6433: $D0

    nop                                           ; $6434: $00
    jr nz, jr_017_6432                            ; $6435: $20 $FB

    ld d, b                                       ; $6437: $50
    ld [hl+], a                                   ; $6438: $22
    dec b                                         ; $6439: $05
    ld b, b                                       ; $643A: $40
    dec bc                                        ; $643B: $0B
    nop                                           ; $643C: $00
    dec b                                         ; $643D: $05
    ld [bc], a                                    ; $643E: $02
    db $ED                                        ; $643F: $ED
    ld h, e                                       ; $6440: $63
    ld c, $1C                                     ; $6441: $0E $1C
    ld a, $D2                                     ; $6443: $3E $D2
    nop                                           ; $6445: $00
    rla                                           ; $6446: $17
    ld h, e                                       ; $6447: $63
    ld h, l                                       ; $6448: $65
    rla                                           ; $6449: $17
    ld [hl], l                                    ; $644A: $75
    ld h, l                                       ; $644B: $65

jr_017_644C:
    dec bc                                        ; $644C: $0B
    ld [bc], a                                    ; $644D: $02
    dec b                                         ; $644E: $05
    inc bc                                        ; $644F: $03
    db $ED                                        ; $6450: $ED
    ld h, e                                       ; $6451: $63
    inc c                                         ; $6452: $0C
    inc e                                         ; $6453: $1C
    inc a                                         ; $6454: $3C
    jp nc, $1726                                  ; $6455: $D2 $26 $17

    ld [hl], b                                    ; $6458: $70
    ld h, l                                       ; $6459: $65
    rla                                           ; $645A: $17
    ld a, l                                       ; $645B: $7D
    ld h, l                                       ; $645C: $65
    dec bc                                        ; $645D: $0B

jr_017_645E:
    inc bc                                        ; $645E: $03
    dec b                                         ; $645F: $05
    inc b                                         ; $6460: $04
    ld l, e                                       ; $6461: $6B
    ld c, d                                       ; $6462: $4A

jr_017_6463:
    inc c                                         ; $6463: $0C
    inc e                                         ; $6464: $1C
    inc a                                         ; $6465: $3C
    jp nc, $1752                                  ; $6466: $D2 $52 $17

    ld d, b                                       ; $6469: $50
    ld h, a                                       ; $646A: $67
    ld [hl+], a                                   ; $646B: $22
    dec b                                         ; $646C: $05
    ld b, b                                       ; $646D: $40
    dec b                                         ; $646E: $05
    dec b                                         ; $646F: $05
    ld l, e                                       ; $6470: $6B
    ld c, d                                       ; $6471: $4A
    inc c                                         ; $6472: $0C
    inc e                                         ; $6473: $1C
    inc a                                         ; $6474: $3C
    jp nc, $1761                                  ; $6475: $D2 $61 $17

    add hl, bc                                    ; $6478: $09
    ld h, [hl]                                    ; $6479: $66
    ld [hl+], a                                   ; $647A: $22
    dec b                                         ; $647B: $05

jr_017_647C:
    ld b, b                                       ; $647C: $40
    dec b                                         ; $647D: $05
    add hl, bc                                    ; $647E: $09
    ld l, e                                       ; $647F: $6B
    ld c, d                                       ; $6480: $4A
    ld c, $1C                                     ; $6481: $0E $1C
    ld a, $D2                                     ; $6483: $3E $D2
    ld d, d                                       ; $6485: $52
    rla                                           ; $6486: $17
    ld a, e                                       ; $6487: $7B
    ld h, a                                       ; $6488: $67
    ld [hl+], a                                   ; $6489: $22
    dec b                                         ; $648A: $05
    ld b, b                                       ; $648B: $40
    dec b                                         ; $648C: $05
    ld a, [bc]                                    ; $648D: $0A
    ld l, e                                       ; $648E: $6B
    ld c, d                                       ; $648F: $4A
    inc c                                         ; $6490: $0C
    inc e                                         ; $6491: $1C
    inc a                                         ; $6492: $3C

jr_017_6493:
    jp nc, $1752                                  ; $6493: $D2 $52 $17

    add e                                         ; $6496: $83
    ld h, a                                       ; $6497: $67
    ld [hl+], a                                   ; $6498: $22
    dec b                                         ; $6499: $05
    ld b, b                                       ; $649A: $40
    dec b                                         ; $649B: $05
    dec bc                                        ; $649C: $0B
    ld l, e                                       ; $649D: $6B
    ld c, d                                       ; $649E: $4A
    ld c, $1C                                     ; $649F: $0E $1C
    ld a, $D2                                     ; $64A1: $3E $D2
    ld d, d                                       ; $64A3: $52
    rla                                           ; $64A4: $17
    adc l                                         ; $64A5: $8D
    ld h, a                                       ; $64A6: $67
    ld [hl+], a                                   ; $64A7: $22
    dec b                                         ; $64A8: $05
    ld b, b                                       ; $64A9: $40
    dec b                                         ; $64AA: $05
    ld b, $ED                                     ; $64AB: $06 $ED
    ld h, e                                       ; $64AD: $63
    inc c                                         ; $64AE: $0C
    inc de                                        ; $64AF: $13
    adc b                                         ; $64B0: $88
    pop de                                        ; $64B1: $D1
    ld l, e                                       ; $64B2: $6B
    rla                                           ; $64B3: $17
    dec [hl]                                      ; $64B4: $35
    ld h, l                                       ; $64B5: $65
    rla                                           ; $64B6: $17
    ld e, e                                       ; $64B7: $5B
    ld h, l                                       ; $64B8: $65
    dec bc                                        ; $64B9: $0B
    ld b, $05                                     ; $64BA: $06 $05
    rlca                                          ; $64BC: $07
    db $ED                                        ; $64BD: $ED
    ld h, e                                       ; $64BE: $63
    ld c, $1C                                     ; $64BF: $0E $1C
    ld a, $D2                                     ; $64C1: $3E $D2
    nop                                           ; $64C3: $00
    rla                                           ; $64C4: $17
    ld b, $67                                     ; $64C5: $06 $67
    rla                                           ; $64C7: $17
    ld bc, $0566                                  ; $64C8: $01 $66 $05
    ld [$4A6B], sp                                ; $64CB: $08 $6B $4A
    inc c                                         ; $64CE: $0C
    inc e                                         ; $64CF: $1C
    inc a                                         ; $64D0: $3C
    jp nc, $1726                                  ; $64D1: $D2 $26 $17

    ld a, [hl+]                                   ; $64D4: $2A
    ld h, a                                       ; $64D5: $67
    ld [hl+], a                                   ; $64D6: $22
    dec b                                         ; $64D7: $05
    ld b, b                                       ; $64D8: $40
    dec b                                         ; $64D9: $05
    rla                                           ; $64DA: $17
    ld l, e                                       ; $64DB: $6B
    ld c, d                                       ; $64DC: $4A
    ld c, $1C                                     ; $64DD: $0E $1C
    ld a, $D2                                     ; $64DF: $3E $D2
    sub [hl]                                      ; $64E1: $96
    rla                                           ; $64E2: $17
    or $66                                        ; $64E3: $F6 $66
    ld [hl+], a                                   ; $64E5: $22
    dec b                                         ; $64E6: $05
    ld b, b                                       ; $64E7: $40
    dec b                                         ; $64E8: $05
    ld e, $6B                                     ; $64E9: $1E $6B
    ld c, d                                       ; $64EB: $4A
    ld a, [bc]                                    ; $64EC: $0A
    rlca                                          ; $64ED: $07
    sub [hl]                                      ; $64EE: $96
    ret nc                                        ; $64EF: $D0

    ld d, d                                       ; $64F0: $52
    ld de, $7D25                                  ; $64F1: $11 $25 $7D
    ld [hl+], a                                   ; $64F4: $22
    dec b                                         ; $64F5: $05
    ld b, b                                       ; $64F6: $40
    ld l, e                                       ; $64F7: $6B
    ld h, $0B                                     ; $64F8: $26 $0B
    ld d, b                                       ; $64FA: $50
    ld d, h                                       ; $64FB: $54
    nop                                           ; $64FC: $00
    add b                                         ; $64FD: $80
    nop                                           ; $64FE: $00
    ld l, e                                       ; $64FF: $6B
    inc l                                         ; $6500: $2C
    dec bc                                        ; $6501: $0B
    jr nz, jr_017_6547                            ; $6502: $20 $43

    ld h, b                                       ; $6504: $60
    add d                                         ; $6505: $82
    nop                                           ; $6506: $00
    ld l, e                                       ; $6507: $6B
    rrca                                          ; $6508: $0F
    dec c                                         ; $6509: $0D
    ld b, b                                       ; $650A: $40
    ld l, c                                       ; $650B: $69
    jr nz, jr_017_6493                            ; $650C: $20 $85

    nop                                           ; $650E: $00
    ld l, e                                       ; $650F: $6B
    ld a, [bc]                                    ; $6510: $0A
    ld a, [bc]                                    ; $6511: $0A
    jr nz, jr_017_6589                            ; $6512: $20 $75

    db $10                                        ; $6514: $10
    add [hl]                                      ; $6515: $86
    nop                                           ; $6516: $00
    ld l, e                                       ; $6517: $6B
    dec hl                                        ; $6518: $2B
    dec bc                                        ; $6519: $0B
    add b                                         ; $651A: $80
    ld c, h                                       ; $651B: $4C
    or b                                          ; $651C: $B0
    add [hl]                                      ; $651D: $86
    nop                                           ; $651E: $00
    ld l, e                                       ; $651F: $6B
    ld bc, $000A                                  ; $6520: $01 $0A $00
    ld d, a                                       ; $6523: $57
    ld h, b                                       ; $6524: $60
    adc c                                         ; $6525: $89
    nop                                           ; $6526: $00
    ld l, e                                       ; $6527: $6B
    jr @+$0F                                      ; $6528: $18 $0D

    ldh [rLYC], a                                 ; $652A: $E0 $45
    ld [hl], b                                    ; $652C: $70
    adc c                                         ; $652D: $89
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    add d                                         ; $6530: $82
    rra                                           ; $6531: $1F
    db $10                                        ; $6532: $10

jr_017_6533:
    sub h                                         ; $6533: $94
    ld b, d                                       ; $6534: $42
    dec d                                         ; $6535: $15
    ld de, $49B7                                  ; $6536: $11 $B7 $49
    ld b, b                                       ; $6539: $40
    ld de, $4997                                  ; $653A: $11 $97 $49
    jr nz, jr_017_6550                            ; $653D: $20 $11

    rst $00                                       ; $653F: $C7
    ld c, c                                       ; $6540: $49
    db $10                                        ; $6541: $10
    ld de, $4997                                  ; $6542: $11 $97 $49
    jr z, jr_017_6558                             ; $6545: $28 $11

jr_017_6547:
    rst $00                                       ; $6547: $C7
    ld c, c                                       ; $6548: $49
    jr z, jr_017_655C                             ; $6549: $28 $11

    and a                                         ; $654B: $A7
    ld c, c                                       ; $654C: $49
    jr jr_017_6560                                ; $654D: $18 $11

    rst $00                                       ; $654F: $C7

jr_017_6550:
    ld c, c                                       ; $6550: $49
    ld [$A711], sp                                ; $6551: $08 $11 $A7
    ld c, c                                       ; $6554: $49
    jr nc, jr_017_6557                            ; $6555: $30 $00

jr_017_6557:
    ld b, l                                       ; $6557: $45

jr_017_6558:
    rla                                           ; $6558: $17
    dec [hl]                                      ; $6559: $35
    ld h, l                                       ; $655A: $65

jr_017_655B:
    ld e, e                                       ; $655B: $5B

jr_017_655C:
    rla                                           ; $655C: $17
    call nz, Call_017_455D                        ; $655D: $C4 $5D $45

jr_017_6560:
    ld de, $4A67                                  ; $6560: $11 $67 $4A
    inc d                                         ; $6563: $14
    db $10                                        ; $6564: $10
    ld e, e                                       ; $6565: $5B
    ld e, h                                       ; $6566: $5C
    ld b, d                                       ; $6567: $42

jr_017_6568:
    ld e, e                                       ; $6568: $5B
    rla                                           ; $6569: $17
    and $61                                       ; $656A: $E6 $61

jr_017_656C:
    ld b, l                                       ; $656C: $45
    db $10                                        ; $656D: $10
    and c                                         ; $656E: $A1
    ld e, h                                       ; $656F: $5C
    inc d                                         ; $6570: $14
    db $10                                        ; $6571: $10
    cp [hl]                                       ; $6572: $BE
    ld d, l                                       ; $6573: $55
    ld b, d                                       ; $6574: $42
    ld e, e                                       ; $6575: $5B

jr_017_6576:
    rla                                           ; $6576: $17
    push af                                       ; $6577: $F5

jr_017_6578:
    ld e, l                                       ; $6578: $5D
    ld b, l                                       ; $6579: $45
    db $10                                        ; $657A: $10
    and c                                         ; $657B: $A1
    ld e, h                                       ; $657C: $5C
    ld e, e                                       ; $657D: $5B
    rla                                           ; $657E: $17
    xor b                                         ; $657F: $A8
    ld h, b                                       ; $6580: $60
    ld b, l                                       ; $6581: $45
    db $10                                        ; $6582: $10
    inc b                                         ; $6583: $04
    ld d, [hl]                                    ; $6584: $56
    inc d                                         ; $6585: $14
    jr nz, jr_017_6533                            ; $6586: $20 $AB

jr_017_6588:
    ld d, b                                       ; $6588: $50

jr_017_6589:
    ld e, a                                       ; $6589: $5F
    ld d, $20                                     ; $658A: $16 $20
    ld e, l                                       ; $658C: $5D
    ld d, b                                       ; $658D: $50
    stop                                          ; $658E: $10 $00
    ld bc, $1500                                  ; $6590: $01 $00 $15
    jr nz, @+$79                                  ; $6593: $20 $77

    ld d, b                                       ; $6595: $50
    ld [$AB20], sp                                ; $6596: $08 $20 $AB
    ld d, b                                       ; $6599: $50
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    ld b, l                                       ; $659C: $45
    rla                                           ; $659D: $17
    or c                                          ; $659E: $B1
    ld h, l                                       ; $659F: $65
    inc d                                         ; $65A0: $14
    jr nz, jr_017_656C                            ; $65A1: $20 $C9

    ld d, b                                       ; $65A3: $50

jr_017_65A4:
    ld e, a                                       ; $65A4: $5F
    ld d, $20                                     ; $65A5: $16 $20
    ld e, l                                       ; $65A7: $5D
    ld d, b                                       ; $65A8: $50
    jr jr_017_65AB                                ; $65A9: $18 $00

jr_017_65AB:
    ld bc, $1400                                  ; $65AB: $01 $00 $14
    jr nz, jr_017_655B                            ; $65AE: $20 $AB

    ld d, b                                       ; $65B0: $50
    ld d, l                                       ; $65B1: $55
    ld h, b                                       ; $65B2: $60
    inc b                                         ; $65B3: $04
    inc d                                         ; $65B4: $14
    jr nz, jr_017_656C                            ; $65B5: $20 $B5

    ld d, b                                       ; $65B7: $50
    ld h, b                                       ; $65B8: $60
    dec b                                         ; $65B9: $05
    inc d                                         ; $65BA: $14
    jr nz, jr_017_6568                            ; $65BB: $20 $AB

    ld d, b                                       ; $65BD: $50
    ld h, b                                       ; $65BE: $60
    inc a                                         ; $65BF: $3C
    inc d                                         ; $65C0: $14
    jr nz, jr_017_6578                            ; $65C1: $20 $B5

    ld d, b                                       ; $65C3: $50
    ld e, b                                       ; $65C4: $58
    dec a                                         ; $65C5: $3D
    ld h, d                                       ; $65C6: $62
    ld a, $14                                     ; $65C7: $3E $14
    jr nz, jr_017_6576                            ; $65C9: $20 $AB

    ld d, b                                       ; $65CB: $50
    ld b, b                                       ; $65CC: $40
    jr nc, jr_017_6625                            ; $65CD: $30 $56

    ld a, [hl-]                                   ; $65CF: $3A
    ld d, [hl]                                    ; $65D0: $56
    rrca                                          ; $65D1: $0F
    ld h, b                                       ; $65D2: $60
    dec sp                                        ; $65D3: $3B
    dec bc                                        ; $65D4: $0B
    rlca                                          ; $65D5: $07
    dec bc                                        ; $65D6: $0B
    ld [$4762], sp                                ; $65D7: $08 $62 $47
    dec d                                         ; $65DA: $15
    jr nz, jr_017_6588                            ; $65DB: $20 $AB

    ld d, b                                       ; $65DD: $50
    ld [$E720], sp                                ; $65DE: $08 $20 $E7
    ld d, b                                       ; $65E1: $50
    db $10                                        ; $65E2: $10
    jr nz, jr_017_65A4                            ; $65E3: $20 $BF

    ld d, b                                       ; $65E5: $50
    ld [$D320], sp                                ; $65E6: $08 $20 $D3
    ld d, b                                       ; $65E9: $50
    ld [$B520], sp                                ; $65EA: $08 $20 $B5
    ld d, b                                       ; $65ED: $50
    jr nc, @+$22                                  ; $65EE: $30 $20

    xor e                                         ; $65F0: $AB
    ld d, b                                       ; $65F1: $50
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    ld b, d                                       ; $65F4: $42
    inc d                                         ; $65F5: $14
    db $10                                        ; $65F6: $10
    jp nc, $6255                                  ; $65F7: $D2 $55 $62

    add hl, hl                                    ; $65FA: $29
    ld e, d                                       ; $65FB: $5A
    rla                                           ; $65FC: $17
    sub a                                         ; $65FD: $97
    ld h, a                                       ; $65FE: $67
    add hl, de                                    ; $65FF: $19
    ld b, d                                       ; $6600: $42
    ld e, e                                       ; $6601: $5B
    rla                                           ; $6602: $17
    rst $18                                       ; $6603: $DF
    ld h, b                                       ; $6604: $60
    ld b, l                                       ; $6605: $45
    db $10                                        ; $6606: $10
    and c                                         ; $6607: $A1
    ld e, h                                       ; $6608: $5C
    dec d                                         ; $6609: $15
    db $10                                        ; $660A: $10
    jp c, $3060                                   ; $660B: $DA $60 $30

    db $10                                        ; $660E: $10
    and $60                                       ; $660F: $E6 $60
    jr nc, jr_017_6613                            ; $6611: $30 $00

jr_017_6613:
    ld e, b                                       ; $6613: $58
    inc sp                                        ; $6614: $33
    ld h, d                                       ; $6615: $62
    inc [hl]                                      ; $6616: $34
    dec d                                         ; $6617: $15
    db $10                                        ; $6618: $10
    cp $60                                        ; $6619: $FE $60
    ld a, [bc]                                    ; $661B: $0A
    db $10                                        ; $661C: $10
    ld a, [hl+]                                   ; $661D: $2A
    ld h, c                                       ; $661E: $61
    inc h                                         ; $661F: $24
    nop                                           ; $6620: $00
    ld d, [hl]                                    ; $6621: $56
    dec [hl]                                      ; $6622: $35
    ld d, $10                                     ; $6623: $16 $10

jr_017_6625:
    ld a, [de]                                    ; $6625: $1A
    ld h, c                                       ; $6626: $61
    ld b, b                                       ; $6627: $40
    nop                                           ; $6628: $00
    ld [bc], a                                    ; $6629: $02
    db $10                                        ; $662A: $10
    ld a, [c]                                     ; $662B: $F2
    ld h, b                                       ; $662C: $60
    ld d, b                                       ; $662D: $50
    cp $00                                        ; $662E: $FE $00
    db $10                                        ; $6630: $10
    ld a, [de]                                    ; $6631: $1A
    ld h, c                                       ; $6632: $61
    jr nz, jr_017_6635                            ; $6633: $20 $00

jr_017_6635:
    ld [bc], a                                    ; $6635: $02
    db $10                                        ; $6636: $10
    cp $60                                        ; $6637: $FE $60
    jr nz, jr_017_663D                            ; $6639: $20 $02

    nop                                           ; $663B: $00
    db $10                                        ; $663C: $10

jr_017_663D:
    ld a, [bc]                                    ; $663D: $0A
    ld h, c                                       ; $663E: $61
    jr nz, jr_017_6641                            ; $663F: $20 $00

jr_017_6641:
    cp $10                                        ; $6641: $FE $10
    cp $60                                        ; $6643: $FE $60
    jr nc, jr_017_6649                            ; $6645: $30 $02

    nop                                           ; $6647: $00
    db $10                                        ; $6648: $10

jr_017_6649:
    ld a, [bc]                                    ; $6649: $0A

Jump_017_664A:
    ld h, c                                       ; $664A: $61
    jr c, jr_017_664D                             ; $664B: $38 $00

Call_017_664D:
jr_017_664D:
    cp $00                                        ; $664D: $FE $00
    ld d, [hl]                                    ; $664F: $56
    dec b                                         ; $6650: $05
    dec d                                         ; $6651: $15
    db $10                                        ; $6652: $10
    ld a, [bc]                                    ; $6653: $0A
    ld h, c                                       ; $6654: $61
    ld [$DA10], sp                                ; $6655: $08 $10 $DA
    ld h, b                                       ; $6658: $60
    db $10                                        ; $6659: $10
    db $10                                        ; $665A: $10
    and $60                                       ; $665B: $E6 $60
    db $10                                        ; $665D: $10
    db $10                                        ; $665E: $10
    jp c, $1060                                   ; $665F: $DA $60 $10

    db $10                                        ; $6662: $10
    and $60                                       ; $6663: $E6 $60
    db $10                                        ; $6665: $10
    db $10                                        ; $6666: $10
    ld c, b                                       ; $6667: $48
    ld h, c                                       ; $6668: $61
    inc h                                         ; $6669: $24
    db $10                                        ; $666A: $10
    ld a, [c]                                     ; $666B: $F2
    ld h, b                                       ; $666C: $60
    ld [$D010], sp                                ; $666D: $08 $10 $D0
    ld h, b                                       ; $6670: $60
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    add e                                         ; $6673: $83
    ld [$0200], sp                                ; $6674: $08 $00 $02
    nop                                           ; $6677: $00
    ld e, b                                       ; $6678: $58
    scf                                           ; $6679: $37
    ld h, b                                       ; $667A: $60
    ld a, [hl-]                                   ; $667B: $3A
    ld e, d                                       ; $667C: $5A
    rla                                           ; $667D: $17
    sbc d                                         ; $667E: $9A
    ld h, a                                       ; $667F: $67
    add hl, de                                    ; $6680: $19
    ld b, d                                       ; $6681: $42
    inc d                                         ; $6682: $14
    db $10                                        ; $6683: $10
    ld h, l                                       ; $6684: $65
    ld e, h                                       ; $6685: $5C
    ld h, b                                       ; $6686: $60
    dec [hl]                                      ; $6687: $35
    dec d                                         ; $6688: $15

jr_017_6689:
    db $10                                        ; $6689: $10
    ld hl, $205C                                  ; $668A: $21 $5C $20
    nop                                           ; $668D: $00
    ld d, [hl]                                    ; $668E: $56
    inc b                                         ; $668F: $04
    dec d                                         ; $6690: $15
    db $10                                        ; $6691: $10
    ld hl, $205C                                  ; $6692: $21 $5C $20
    db $10                                        ; $6695: $10
    ld sp, $505C                                  ; $6696: $31 $5C $50
    db $10                                        ; $6699: $10
    ld hl, $205C                                  ; $669A: $21 $5C $20
    db $10                                        ; $669D: $10
    ld b, c                                       ; $669E: $41
    ld e, h                                       ; $669F: $5C
    jr nz, jr_017_66B2                            ; $66A0: $20 $10

    ld de, $205C                                  ; $66A2: $11 $5C $20
    db $10                                        ; $66A5: $10
    ld b, c                                       ; $66A6: $41
    ld e, h                                       ; $66A7: $5C

jr_017_66A8:
    jr nc, jr_017_66BA                            ; $66A8: $30 $10

    ld de, $405C                                  ; $66AA: $11 $5C $40
    db $10                                        ; $66AD: $10
    ld e, e                                       ; $66AE: $5B
    ld e, h                                       ; $66AF: $5C
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00

jr_017_66B2:
    ld h, d                                       ; $66B2: $62
    jr c, @+$16                                   ; $66B3: $38 $14

    db $10                                        ; $66B5: $10
    ld h, l                                       ; $66B6: $65
    ld e, h                                       ; $66B7: $5C

jr_017_66B8:
    ld h, d                                       ; $66B8: $62
    add hl, sp                                    ; $66B9: $39

jr_017_66BA:
    ld e, d                                       ; $66BA: $5A
    rla                                           ; $66BB: $17
    sbc l                                         ; $66BC: $9D
    ld h, a                                       ; $66BD: $67
    add hl, de                                    ; $66BE: $19
    ld b, d                                       ; $66BF: $42
    dec d                                         ; $66C0: $15
    jr nz, @-$35                                  ; $66C1: $20 $C9

    ld d, b                                       ; $66C3: $50
    jr z, jr_017_66E6                             ; $66C4: $28 $20

    cp a                                          ; $66C6: $BF
    ld d, b                                       ; $66C7: $50
    jr z, @+$22                                   ; $66C8: $28 $20

    xor e                                         ; $66CA: $AB
    ld d, b                                       ; $66CB: $50
    jr z, jr_017_66EE                             ; $66CC: $28 $20

    or l                                          ; $66CE: $B5
    ld d, b                                       ; $66CF: $50
    jr z, jr_017_66D2                             ; $66D0: $28 $00

jr_017_66D2:
    ld d, l                                       ; $66D2: $55
    ld h, d                                       ; $66D3: $62
    rla                                           ; $66D4: $17
    dec d                                         ; $66D5: $15
    jr nz, @-$3F                                  ; $66D6: $20 $BF

    ld d, b                                       ; $66D8: $50
    jr nz, jr_017_66DB                            ; $66D9: $20 $00

jr_017_66DB:
    ld d, l                                       ; $66DB: $55
    dec d                                         ; $66DC: $15
    jr nz, jr_017_6689                            ; $66DD: $20 $AA

    ld e, b                                       ; $66DF: $58
    ld [de], a                                    ; $66E0: $12
    nop                                           ; $66E1: $00
    ld b, l                                       ; $66E2: $45
    ld e, $BC                                     ; $66E3: $1E $BC
    ld [hl], b                                    ; $66E5: $70

jr_017_66E6:
    ld b, b                                       ; $66E6: $40
    jr nz, jr_017_66FF                            ; $66E7: $20 $16

    jr nz, jr_017_66B8                            ; $66E9: $20 $CD

    ld c, a                                       ; $66EB: $4F
    jr nc, jr_017_66EE                            ; $66EC: $30 $00

jr_017_66EE:
    ld bc, $1400                                  ; $66EE: $01 $00 $14
    jr nz, jr_017_66A8                            ; $66F1: $20 $B5

    ld d, b                                       ; $66F3: $50
    ld d, l                                       ; $66F4: $55
    ld b, d                                       ; $66F5: $42
    dec d                                         ; $66F6: $15
    db $10                                        ; $66F7: $10
    ld l, [hl]                                    ; $66F8: $6E
    ld d, a                                       ; $66F9: $57
    jr z, jr_017_66FC                             ; $66FA: $28 $00

jr_017_66FC:
    ld d, [hl]                                    ; $66FC: $56
    inc a                                         ; $66FD: $3C
    ld h, b                                       ; $66FE: $60

jr_017_66FF:
    rrca                                          ; $66FF: $0F
    ld e, d                                       ; $6700: $5A
    rla                                           ; $6701: $17
    and b                                         ; $6702: $A0
    ld h, a                                       ; $6703: $67
    add hl, de                                    ; $6704: $19
    ld b, d                                       ; $6705: $42
    dec d                                         ; $6706: $15
    db $10                                        ; $6707: $10
    ld e, e                                       ; $6708: $5B
    ld e, h                                       ; $6709: $5C
    jr nz, jr_017_671C                            ; $670A: $20 $10

    ld h, l                                       ; $670C: $65
    ld e, h                                       ; $670D: $5C
    jr nz, jr_017_6720                            ; $670E: $20 $10

    ld e, e                                       ; $6710: $5B
    ld e, h                                       ; $6711: $5C
    jr nz, jr_017_6724                            ; $6712: $20 $10

    ld h, l                                       ; $6714: $65
    ld e, h                                       ; $6715: $5C
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    ld e, e                                       ; $6718: $5B
    rla                                           ; $6719: $17
    ld b, e                                       ; $671A: $43
    ld h, b                                       ; $671B: $60

jr_017_671C:
    ld h, d                                       ; $671C: $62
    ld c, c                                       ; $671D: $49
    dec d                                         ; $671E: $15
    db $10                                        ; $671F: $10

jr_017_6720:
    ld e, e                                       ; $6720: $5B
    ld e, h                                       ; $6721: $5C
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00

jr_017_6724:
    ld e, d                                       ; $6724: $5A
    rla                                           ; $6725: $17
    and [hl]                                      ; $6726: $A6
    ld h, a                                       ; $6727: $67
    ld [de], a                                    ; $6728: $12
    ld b, d                                       ; $6729: $42
    dec d                                         ; $672A: $15
    db $10                                        ; $672B: $10
    cp [hl]                                       ; $672C: $BE
    ld d, l                                       ; $672D: $55
    jr nz, jr_017_6740                            ; $672E: $20 $10

    jp nc, $2055                                  ; $6730: $D2 $55 $20

    db $10                                        ; $6733: $10
    cp [hl]                                       ; $6734: $BE
    ld d, l                                       ; $6735: $55
    jr nz, jr_017_6748                            ; $6736: $20 $10

    jp nc, $0055                                  ; $6738: $D2 $55 $00

    nop                                           ; $673B: $00
    ld h, d                                       ; $673C: $62
    ld b, a                                       ; $673D: $47
    dec d                                         ; $673E: $15
    db $10                                        ; $673F: $10

jr_017_6740:
    add h                                         ; $6740: $84
    ld d, l                                       ; $6741: $55
    inc a                                         ; $6742: $3C
    nop                                           ; $6743: $00
    ld e, b                                       ; $6744: $58
    ld c, b                                       ; $6745: $48
    add hl, de                                    ; $6746: $19
    ld b, d                                       ; $6747: $42

jr_017_6748:
    ld e, e                                       ; $6748: $5B
    rla                                           ; $6749: $17
    rst $18                                       ; $674A: $DF
    ld h, b                                       ; $674B: $60
    ld b, l                                       ; $674C: $45
    db $10                                        ; $674D: $10
    and c                                         ; $674E: $A1
    ld e, h                                       ; $674F: $5C
    dec d                                         ; $6750: $15
    ld de, $7D25                                  ; $6751: $11 $25 $7D
    jr c, jr_017_6756                             ; $6754: $38 $00

jr_017_6756:
    ld e, d                                       ; $6756: $5A
    rla                                           ; $6757: $17
    and e                                         ; $6758: $A3
    ld h, a                                       ; $6759: $67
    add hl, de                                    ; $675A: $19
    ld b, d                                       ; $675B: $42
    ld d, $20                                     ; $675C: $16 $20
    dec e                                         ; $675E: $1D
    ld d, b                                       ; $675F: $50
    inc e                                         ; $6760: $1C
    nop                                           ; $6761: $00
    ld bc, $AB20                                  ; $6762: $01 $20 $AB
    ld d, b                                       ; $6765: $50
    ld bc, $0000                                  ; $6766: $01 $00 $00
    jr nz, @+$1F                                  ; $6769: $20 $1D

    ld d, b                                       ; $676B: $50
    ld e, $00                                     ; $676C: $1E $00
    ld bc, $2D20                                  ; $676E: $01 $20 $2D
    ld d, b                                       ; $6771: $50
    stop                                          ; $6772: $10 $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    inc d                                         ; $6776: $14
    jr nz, jr_017_6724                            ; $6777: $20 $AB

    ld d, b                                       ; $6779: $50
    ld b, d                                       ; $677A: $42
    dec d                                         ; $677B: $15
    ld de, $7D3B                                  ; $677C: $11 $3B $7D
    jr c, jr_017_6781                             ; $677F: $38 $00

jr_017_6781:
    add hl, de                                    ; $6781: $19
    ld b, d                                       ; $6782: $42
    dec d                                         ; $6783: $15
    ld de, $7D3B                                  ; $6784: $11 $3B $7D
    jr c, jr_017_6789                             ; $6787: $38 $00

jr_017_6789:
    ld d, [hl]                                    ; $6789: $56
    dec sp                                        ; $678A: $3B
    add hl, de                                    ; $678B: $19
    ld b, d                                       ; $678C: $42
    dec d                                         ; $678D: $15
    ld de, $7D25                                  ; $678E: $11 $25 $7D
    jr c, jr_017_6793                             ; $6791: $38 $00

jr_017_6793:
    dec bc                                        ; $6793: $0B
    rla                                           ; $6794: $17
    add hl, de                                    ; $6795: $19
    ld b, d                                       ; $6796: $42
    dec bc                                        ; $6797: $0B
    inc b                                         ; $6798: $04
    ld b, d                                       ; $6799: $42
    dec bc                                        ; $679A: $0B
    ld a, [bc]                                    ; $679B: $0A
    ld b, d                                       ; $679C: $42
    dec bc                                        ; $679D: $0B
    dec bc                                        ; $679E: $0B
    ld b, d                                       ; $679F: $42
    dec bc                                        ; $67A0: $0B
    add hl, bc                                    ; $67A1: $09
    ld b, d                                       ; $67A2: $42
    dec bc                                        ; $67A3: $0B
    dec b                                         ; $67A4: $05
    ld b, d                                       ; $67A5: $42
    add hl, bc                                    ; $67A6: $09
    rlca                                          ; $67A7: $07
    db $10                                        ; $67A8: $10
    ld e, e                                       ; $67A9: $5B
    ld e, h                                       ; $67AA: $5C
    ld b, d                                       ; $67AB: $42
    sub e                                         ; $67AC: $93
    ld h, l                                       ; $67AD: $65
    ld hl, sp+$47                                 ; $67AE: $F8 $47
    ld c, a                                       ; $67B0: $4F
    ld h, h                                       ; $67B1: $64
    jp c, Jump_017_664A                           ; $67B2: $DA $4A $66

    ret nz                                        ; $67B5: $C0

    ld e, h                                       ; $67B6: $5C
    ld hl, $0005                                  ; $67B7: $21 $05 $00
    add c                                         ; $67BA: $81
    ld e, l                                       ; $67BB: $5D
    ld c, $01                                     ; $67BC: $0E $01

jr_017_67BE:
    ld [hl+], a                                   ; $67BE: $22
    ret nc                                        ; $67BF: $D0

    nop                                           ; $67C0: $00
    jr nz, jr_017_67BE                            ; $67C1: $20 $FB

    ld d, b                                       ; $67C3: $50
    ld [hl+], a                                   ; $67C4: $22
    dec b                                         ; $67C5: $05
    ld b, b                                       ; $67C6: $40
    dec b                                         ; $67C7: $05
    ld [bc], a                                    ; $67C8: $02
    db $ED                                        ; $67C9: $ED
    ld h, e                                       ; $67CA: $63
    dec b                                         ; $67CB: $05
    inc hl                                        ; $67CC: $23
    pop bc                                        ; $67CD: $C1
    jp nc, $1700                                  ; $67CE: $D2 $00 $17

    call z, $176A                                 ; $67D1: $CC $6A $17
    inc a                                         ; $67D4: $3C
    ld l, b                                       ; $67D5: $68
    dec b                                         ; $67D6: $05
    inc bc                                        ; $67D7: $03
    db $ED                                        ; $67D8: $ED
    ld h, e                                       ; $67D9: $63
    inc c                                         ; $67DA: $0C
    db $10                                        ; $67DB: $10
    ld c, h                                       ; $67DC: $4C
    pop de                                        ; $67DD: $D1
    jr nc, @+$19                                  ; $67DE: $30 $17

    ld h, $6B                                     ; $67E0: $26 $6B
    rla                                           ; $67E2: $17
    ld b, h                                       ; $67E3: $44
    ld l, b                                       ; $67E4: $68
    dec b                                         ; $67E5: $05
    inc b                                         ; $67E6: $04
    adc $63                                       ; $67E7: $CE $63
    ld bc, $1501                                  ; $67E9: $01 $01 $15
    ret nc                                        ; $67EC: $D0

    ld e, c                                       ; $67ED: $59
    ld l, $E3                                     ; $67EE: $2E $E3
    ld d, l                                       ; $67F0: $55
    ld [hl+], a                                   ; $67F1: $22
    dec b                                         ; $67F2: $05
    ld b, b                                       ; $67F3: $40
    dec b                                         ; $67F4: $05
    dec b                                         ; $67F5: $05
    adc $63                                       ; $67F6: $CE $63
    ld bc, $1501                                  ; $67F8: $01 $01 $15
    ret nc                                        ; $67FB: $D0

    ld e, c                                       ; $67FC: $59
    ld l, $E3                                     ; $67FD: $2E $E3
    ld d, l                                       ; $67FF: $55
    ld [hl+], a                                   ; $6800: $22
    dec b                                         ; $6801: $05
    ld b, b                                       ; $6802: $40
    dec b                                         ; $6803: $05
    ld b, $CE                                     ; $6804: $06 $CE
    ld h, e                                       ; $6806: $63
    ld bc, $1501                                  ; $6807: $01 $01 $15
    ret nc                                        ; $680A: $D0

    ld e, c                                       ; $680B: $59
    ld l, $E3                                     ; $680C: $2E $E3
    ld d, l                                       ; $680E: $55
    ld [hl+], a                                   ; $680F: $22
    dec b                                         ; $6810: $05
    ld b, b                                       ; $6811: $40
    dec bc                                        ; $6812: $0B
    nop                                           ; $6813: $00
    dec bc                                        ; $6814: $0B
    ld [bc], a                                    ; $6815: $02
    dec bc                                        ; $6816: $0B
    inc bc                                        ; $6817: $03
    dec bc                                        ; $6818: $0B
    inc b                                         ; $6819: $04
    dec bc                                        ; $681A: $0B
    dec b                                         ; $681B: $05
    dec bc                                        ; $681C: $0B
    ld b, $6B                                     ; $681D: $06 $6B
    jr nc, jr_017_682D                            ; $681F: $30 $0C

    jr nc, jr_017_687D                            ; $6821: $30 $5A

    nop                                           ; $6823: $00
    add b                                         ; $6824: $80
    nop                                           ; $6825: $00
    ld l, e                                       ; $6826: $6B
    add hl, hl                                    ; $6827: $29
    dec bc                                        ; $6828: $0B
    jr nc, jr_017_687A                            ; $6829: $30 $4F

    nop                                           ; $682B: $00
    add e                                         ; $682C: $83

jr_017_682D:
    nop                                           ; $682D: $00
    ld l, e                                       ; $682E: $6B
    ld b, $0D                                     ; $682F: $06 $0D
    ld [hl], b                                    ; $6831: $70
    ld e, e                                       ; $6832: $5B
    sub b                                         ; $6833: $90
    add l                                         ; $6834: $85
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    add d                                         ; $6837: $82
    rra                                           ; $6838: $1F
    dec e                                         ; $6839: $1D
    sub h                                         ; $683A: $94
    ld b, d                                       ; $683B: $42
    ld e, e                                       ; $683C: $5B
    rla                                           ; $683D: $17
    ld d, l                                       ; $683E: $55
    ld h, d                                       ; $683F: $62
    ld b, l                                       ; $6840: $45
    db $10                                        ; $6841: $10
    db $E3                                        ; $6842: $E3
    ld [hl], d                                    ; $6843: $72
    ld e, e                                       ; $6844: $5B
    rla                                           ; $6845: $17
    ld a, h                                       ; $6846: $7C
    ld h, d                                       ; $6847: $62
    ld b, l                                       ; $6848: $45
    rrca                                          ; $6849: $0F
    ccf                                           ; $684A: $3F
    ld a, h                                       ; $684B: $7C
    sub e                                         ; $684C: $93
    ld h, l                                       ; $684D: $65
    ld hl, sp+$47                                 ; $684E: $F8 $47
    ld c, a                                       ; $6850: $4F
    ld h, h                                       ; $6851: $64
    jp c, Jump_017_664A                           ; $6852: $DA $4A $66

    ret nz                                        ; $6855: $C0

    ld e, h                                       ; $6856: $5C
    ld hl, $0005                                  ; $6857: $21 $05 $00
    add c                                         ; $685A: $81
    ld e, l                                       ; $685B: $5D
    ld c, $01                                     ; $685C: $0E $01

jr_017_685E:
    ld [hl+], a                                   ; $685E: $22
    ret nc                                        ; $685F: $D0

    nop                                           ; $6860: $00
    jr nz, jr_017_685E                            ; $6861: $20 $FB

    ld d, b                                       ; $6863: $50
    ld [hl+], a                                   ; $6864: $22
    dec b                                         ; $6865: $05
    ld b, b                                       ; $6866: $40
    dec b                                         ; $6867: $05
    ld [bc], a                                    ; $6868: $02
    db $ED                                        ; $6869: $ED
    ld h, e                                       ; $686A: $63
    dec b                                         ; $686B: $05
    inc hl                                        ; $686C: $23
    pop bc                                        ; $686D: $C1
    jp nc, $1700                                  ; $686E: $D2 $00 $17

    call z, $176A                                 ; $6871: $CC $6A $17
    call c, $0568                                 ; $6874: $DC $68 $05
    inc bc                                        ; $6877: $03
    db $ED                                        ; $6878: $ED
    ld h, e                                       ; $6879: $63

jr_017_687A:
    inc c                                         ; $687A: $0C
    db $10                                        ; $687B: $10
    ld c, h                                       ; $687C: $4C

jr_017_687D:
    pop de                                        ; $687D: $D1
    jr nc, @+$19                                  ; $687E: $30 $17

    ld h, $6B                                     ; $6880: $26 $6B
    rla                                           ; $6882: $17
    db $E4                                        ; $6883: $E4
    ld l, b                                       ; $6884: $68
    dec b                                         ; $6885: $05
    inc b                                         ; $6886: $04
    adc $63                                       ; $6887: $CE $63
    ld bc, $1501                                  ; $6889: $01 $01 $15
    ret nc                                        ; $688C: $D0

    ld e, c                                       ; $688D: $59
    ld l, $E3                                     ; $688E: $2E $E3
    ld d, l                                       ; $6890: $55
    ld [hl+], a                                   ; $6891: $22
    dec b                                         ; $6892: $05
    ld b, b                                       ; $6893: $40
    dec b                                         ; $6894: $05
    dec b                                         ; $6895: $05
    adc $63                                       ; $6896: $CE $63
    ld bc, $1501                                  ; $6898: $01 $01 $15
    ret nc                                        ; $689B: $D0

    ld e, c                                       ; $689C: $59
    ld l, $E3                                     ; $689D: $2E $E3
    ld d, l                                       ; $689F: $55
    ld [hl+], a                                   ; $68A0: $22
    dec b                                         ; $68A1: $05
    ld b, b                                       ; $68A2: $40
    dec b                                         ; $68A3: $05
    ld b, $CE                                     ; $68A4: $06 $CE
    ld h, e                                       ; $68A6: $63
    ld bc, $1501                                  ; $68A7: $01 $01 $15
    ret nc                                        ; $68AA: $D0

    ld e, c                                       ; $68AB: $59
    ld l, $E3                                     ; $68AC: $2E $E3
    ld d, l                                       ; $68AE: $55
    ld [hl+], a                                   ; $68AF: $22
    dec b                                         ; $68B0: $05
    ld b, b                                       ; $68B1: $40
    dec bc                                        ; $68B2: $0B
    nop                                           ; $68B3: $00
    dec bc                                        ; $68B4: $0B
    ld [bc], a                                    ; $68B5: $02
    dec bc                                        ; $68B6: $0B
    inc bc                                        ; $68B7: $03
    dec bc                                        ; $68B8: $0B
    inc b                                         ; $68B9: $04
    dec bc                                        ; $68BA: $0B
    dec b                                         ; $68BB: $05
    dec bc                                        ; $68BC: $0B
    ld b, $6B                                     ; $68BD: $06 $6B
    jr nc, jr_017_68CD                            ; $68BF: $30 $0C

    jr nc, jr_017_691D                            ; $68C1: $30 $5A

    nop                                           ; $68C3: $00
    add b                                         ; $68C4: $80
    nop                                           ; $68C5: $00
    ld l, e                                       ; $68C6: $6B
    add hl, hl                                    ; $68C7: $29
    dec bc                                        ; $68C8: $0B
    jr nc, jr_017_691A                            ; $68C9: $30 $4F

    nop                                           ; $68CB: $00
    add e                                         ; $68CC: $83

jr_017_68CD:
    nop                                           ; $68CD: $00
    ld l, e                                       ; $68CE: $6B
    ld b, $0D                                     ; $68CF: $06 $0D
    ld [hl], b                                    ; $68D1: $70
    ld e, e                                       ; $68D2: $5B
    sub b                                         ; $68D3: $90
    add l                                         ; $68D4: $85
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    add d                                         ; $68D7: $82
    rra                                           ; $68D8: $1F
    dec e                                         ; $68D9: $1D
    sub h                                         ; $68DA: $94
    ld b, d                                       ; $68DB: $42
    ld e, e                                       ; $68DC: $5B
    rla                                           ; $68DD: $17
    xor b                                         ; $68DE: $A8
    ld h, d                                       ; $68DF: $62
    ld b, l                                       ; $68E0: $45
    db $10                                        ; $68E1: $10
    db $E3                                        ; $68E2: $E3
    ld [hl], d                                    ; $68E3: $72
    ld e, e                                       ; $68E4: $5B
    rla                                           ; $68E5: $17
    db $EC                                        ; $68E6: $EC
    ld h, d                                       ; $68E7: $62
    ld b, l                                       ; $68E8: $45
    rrca                                          ; $68E9: $0F
    ccf                                           ; $68EA: $3F
    ld a, h                                       ; $68EB: $7C
    sub e                                         ; $68EC: $93
    ld h, l                                       ; $68ED: $65
    ld hl, sp+$47                                 ; $68EE: $F8 $47
    ld c, a                                       ; $68F0: $4F
    ld h, h                                       ; $68F1: $64
    jp c, Jump_017_664A                           ; $68F2: $DA $4A $66

    ret nz                                        ; $68F5: $C0

    ld e, h                                       ; $68F6: $5C
    ld hl, $0005                                  ; $68F7: $21 $05 $00
    add c                                         ; $68FA: $81
    ld e, l                                       ; $68FB: $5D
    ld c, $01                                     ; $68FC: $0E $01

jr_017_68FE:
    ld [hl+], a                                   ; $68FE: $22
    ret nc                                        ; $68FF: $D0

    nop                                           ; $6900: $00
    jr nz, jr_017_68FE                            ; $6901: $20 $FB

    ld d, b                                       ; $6903: $50
    ld [hl+], a                                   ; $6904: $22
    dec b                                         ; $6905: $05
    ld b, b                                       ; $6906: $40
    dec b                                         ; $6907: $05
    ld [bc], a                                    ; $6908: $02
    db $ED                                        ; $6909: $ED
    ld h, e                                       ; $690A: $63
    dec b                                         ; $690B: $05
    inc hl                                        ; $690C: $23
    pop bc                                        ; $690D: $C1
    jp nc, $1700                                  ; $690E: $D2 $00 $17

    call z, $176A                                 ; $6911: $CC $6A $17
    ld a, h                                       ; $6914: $7C
    ld l, c                                       ; $6915: $69
    dec b                                         ; $6916: $05
    inc bc                                        ; $6917: $03
    db $ED                                        ; $6918: $ED
    ld h, e                                       ; $6919: $63

jr_017_691A:
    inc c                                         ; $691A: $0C
    db $10                                        ; $691B: $10
    ld c, h                                       ; $691C: $4C

jr_017_691D:
    pop de                                        ; $691D: $D1
    jr nc, @+$19                                  ; $691E: $30 $17

    ld h, $6B                                     ; $6920: $26 $6B
    rla                                           ; $6922: $17
    add h                                         ; $6923: $84
    ld l, c                                       ; $6924: $69
    dec b                                         ; $6925: $05
    inc b                                         ; $6926: $04
    adc $63                                       ; $6927: $CE $63
    ld bc, $1501                                  ; $6929: $01 $01 $15
    ret nc                                        ; $692C: $D0

    ld e, c                                       ; $692D: $59
    ld l, $E3                                     ; $692E: $2E $E3
    ld d, l                                       ; $6930: $55
    ld [hl+], a                                   ; $6931: $22
    dec b                                         ; $6932: $05
    ld b, b                                       ; $6933: $40
    dec b                                         ; $6934: $05
    dec b                                         ; $6935: $05
    adc $63                                       ; $6936: $CE $63
    ld bc, $1501                                  ; $6938: $01 $01 $15
    ret nc                                        ; $693B: $D0

    ld e, c                                       ; $693C: $59
    ld l, $E3                                     ; $693D: $2E $E3
    ld d, l                                       ; $693F: $55
    ld [hl+], a                                   ; $6940: $22
    dec b                                         ; $6941: $05
    ld b, b                                       ; $6942: $40
    dec b                                         ; $6943: $05
    ld b, $CE                                     ; $6944: $06 $CE
    ld h, e                                       ; $6946: $63
    ld bc, $1501                                  ; $6947: $01 $01 $15
    ret nc                                        ; $694A: $D0

    ld e, c                                       ; $694B: $59
    ld l, $E3                                     ; $694C: $2E $E3
    ld d, l                                       ; $694E: $55
    ld [hl+], a                                   ; $694F: $22
    dec b                                         ; $6950: $05
    ld b, b                                       ; $6951: $40
    dec bc                                        ; $6952: $0B
    nop                                           ; $6953: $00
    dec bc                                        ; $6954: $0B
    ld [bc], a                                    ; $6955: $02
    dec bc                                        ; $6956: $0B
    inc bc                                        ; $6957: $03
    dec bc                                        ; $6958: $0B
    inc b                                         ; $6959: $04
    dec bc                                        ; $695A: $0B
    dec b                                         ; $695B: $05
    dec bc                                        ; $695C: $0B
    ld b, $6B                                     ; $695D: $06 $6B
    jr nc, jr_017_696D                            ; $695F: $30 $0C

    jr nc, jr_017_69BD                            ; $6961: $30 $5A

    nop                                           ; $6963: $00
    add b                                         ; $6964: $80
    nop                                           ; $6965: $00
    ld l, e                                       ; $6966: $6B
    add hl, hl                                    ; $6967: $29
    dec bc                                        ; $6968: $0B
    jr nc, jr_017_69BA                            ; $6969: $30 $4F

    nop                                           ; $696B: $00
    add e                                         ; $696C: $83

jr_017_696D:
    nop                                           ; $696D: $00
    ld l, e                                       ; $696E: $6B
    ld b, $0D                                     ; $696F: $06 $0D
    ld [hl], b                                    ; $6971: $70
    ld e, e                                       ; $6972: $5B
    sub b                                         ; $6973: $90
    add l                                         ; $6974: $85
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    add d                                         ; $6977: $82
    rra                                           ; $6978: $1F
    dec e                                         ; $6979: $1D
    sub h                                         ; $697A: $94
    ld b, d                                       ; $697B: $42
    ld e, e                                       ; $697C: $5B
    rla                                           ; $697D: $17
    rla                                           ; $697E: $17
    ld h, e                                       ; $697F: $63
    ld b, l                                       ; $6980: $45
    db $10                                        ; $6981: $10
    db $E3                                        ; $6982: $E3
    ld [hl], d                                    ; $6983: $72
    ld e, e                                       ; $6984: $5B
    rla                                           ; $6985: $17
    jr nc, jr_017_69EB                            ; $6986: $30 $63

    ld b, l                                       ; $6988: $45
    rrca                                          ; $6989: $0F
    ccf                                           ; $698A: $3F
    ld a, h                                       ; $698B: $7C
    sub e                                         ; $698C: $93
    ld h, l                                       ; $698D: $65
    ld hl, sp+$47                                 ; $698E: $F8 $47
    ld c, a                                       ; $6990: $4F
    ld h, h                                       ; $6991: $64
    jp c, Jump_017_664A                           ; $6992: $DA $4A $66

    ret nz                                        ; $6995: $C0

    ld e, h                                       ; $6996: $5C
    ld hl, $0005                                  ; $6997: $21 $05 $00
    add c                                         ; $699A: $81
    ld e, l                                       ; $699B: $5D
    ld c, $01                                     ; $699C: $0E $01

jr_017_699E:
    ld [hl+], a                                   ; $699E: $22
    ret nc                                        ; $699F: $D0

    nop                                           ; $69A0: $00
    jr nz, jr_017_699E                            ; $69A1: $20 $FB

    ld d, b                                       ; $69A3: $50
    ld [hl+], a                                   ; $69A4: $22
    dec b                                         ; $69A5: $05
    ld b, b                                       ; $69A6: $40
    dec b                                         ; $69A7: $05
    ld [bc], a                                    ; $69A8: $02
    db $ED                                        ; $69A9: $ED
    ld h, e                                       ; $69AA: $63
    dec b                                         ; $69AB: $05
    inc hl                                        ; $69AC: $23
    pop bc                                        ; $69AD: $C1
    jp nc, $1700                                  ; $69AE: $D2 $00 $17

    call z, $176A                                 ; $69B1: $CC $6A $17
    inc e                                         ; $69B4: $1C
    ld l, d                                       ; $69B5: $6A
    dec b                                         ; $69B6: $05
    inc bc                                        ; $69B7: $03
    db $ED                                        ; $69B8: $ED
    ld h, e                                       ; $69B9: $63

jr_017_69BA:
    inc c                                         ; $69BA: $0C
    db $10                                        ; $69BB: $10
    ld c, h                                       ; $69BC: $4C

jr_017_69BD:
    pop de                                        ; $69BD: $D1
    jr nc, @+$19                                  ; $69BE: $30 $17

    ld h, $6B                                     ; $69C0: $26 $6B
    rla                                           ; $69C2: $17
    inc h                                         ; $69C3: $24
    ld l, d                                       ; $69C4: $6A
    dec b                                         ; $69C5: $05
    inc b                                         ; $69C6: $04
    adc $63                                       ; $69C7: $CE $63
    ld bc, $1501                                  ; $69C9: $01 $01 $15
    ret nc                                        ; $69CC: $D0

    ld e, c                                       ; $69CD: $59
    ld l, $E3                                     ; $69CE: $2E $E3
    ld d, l                                       ; $69D0: $55
    ld [hl+], a                                   ; $69D1: $22
    dec b                                         ; $69D2: $05
    ld b, b                                       ; $69D3: $40
    dec b                                         ; $69D4: $05
    dec b                                         ; $69D5: $05
    adc $63                                       ; $69D6: $CE $63
    ld bc, $1501                                  ; $69D8: $01 $01 $15
    ret nc                                        ; $69DB: $D0

    ld e, c                                       ; $69DC: $59
    ld l, $E3                                     ; $69DD: $2E $E3
    ld d, l                                       ; $69DF: $55
    ld [hl+], a                                   ; $69E0: $22
    dec b                                         ; $69E1: $05
    ld b, b                                       ; $69E2: $40
    dec b                                         ; $69E3: $05
    ld b, $CE                                     ; $69E4: $06 $CE
    ld h, e                                       ; $69E6: $63
    ld bc, $1501                                  ; $69E7: $01 $01 $15
    ret nc                                        ; $69EA: $D0

jr_017_69EB:
    ld e, c                                       ; $69EB: $59
    ld l, $E3                                     ; $69EC: $2E $E3
    ld d, l                                       ; $69EE: $55
    ld [hl+], a                                   ; $69EF: $22
    dec b                                         ; $69F0: $05
    ld b, b                                       ; $69F1: $40
    dec bc                                        ; $69F2: $0B
    nop                                           ; $69F3: $00
    dec bc                                        ; $69F4: $0B
    ld [bc], a                                    ; $69F5: $02
    dec bc                                        ; $69F6: $0B
    inc bc                                        ; $69F7: $03
    dec bc                                        ; $69F8: $0B
    inc b                                         ; $69F9: $04
    dec bc                                        ; $69FA: $0B
    dec b                                         ; $69FB: $05
    dec bc                                        ; $69FC: $0B
    ld b, $6B                                     ; $69FD: $06 $6B
    jr nc, jr_017_6A0D                            ; $69FF: $30 $0C

    jr nc, jr_017_6A5D                            ; $6A01: $30 $5A

    nop                                           ; $6A03: $00
    add b                                         ; $6A04: $80
    nop                                           ; $6A05: $00
    ld l, e                                       ; $6A06: $6B
    add hl, hl                                    ; $6A07: $29
    dec bc                                        ; $6A08: $0B
    jr nc, jr_017_6A5A                            ; $6A09: $30 $4F

    nop                                           ; $6A0B: $00
    add e                                         ; $6A0C: $83

jr_017_6A0D:
    nop                                           ; $6A0D: $00
    ld l, e                                       ; $6A0E: $6B
    ld b, $0D                                     ; $6A0F: $06 $0D
    ld [hl], b                                    ; $6A11: $70
    ld e, e                                       ; $6A12: $5B
    sub b                                         ; $6A13: $90
    add l                                         ; $6A14: $85
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    add d                                         ; $6A17: $82
    rra                                           ; $6A18: $1F
    dec e                                         ; $6A19: $1D
    sub h                                         ; $6A1A: $94
    ld b, d                                       ; $6A1B: $42
    ld e, e                                       ; $6A1C: $5B
    rla                                           ; $6A1D: $17
    ccf                                           ; $6A1E: $3F
    ld h, e                                       ; $6A1F: $63
    ld b, l                                       ; $6A20: $45
    db $10                                        ; $6A21: $10
    db $E3                                        ; $6A22: $E3
    ld [hl], d                                    ; $6A23: $72
    ld e, e                                       ; $6A24: $5B
    rla                                           ; $6A25: $17
    ld h, d                                       ; $6A26: $62
    ld h, e                                       ; $6A27: $63
    ld b, l                                       ; $6A28: $45
    rrca                                          ; $6A29: $0F
    ccf                                           ; $6A2A: $3F
    ld a, h                                       ; $6A2B: $7C
    sub e                                         ; $6A2C: $93
    ld h, l                                       ; $6A2D: $65
    ld hl, sp+$47                                 ; $6A2E: $F8 $47
    ld c, a                                       ; $6A30: $4F
    ld h, h                                       ; $6A31: $64
    jp c, Jump_017_664A                           ; $6A32: $DA $4A $66

    ret nz                                        ; $6A35: $C0

    ld e, h                                       ; $6A36: $5C
    ld hl, $0005                                  ; $6A37: $21 $05 $00
    add c                                         ; $6A3A: $81
    ld e, l                                       ; $6A3B: $5D
    ld c, $01                                     ; $6A3C: $0E $01

jr_017_6A3E:
    ld [hl+], a                                   ; $6A3E: $22
    ret nc                                        ; $6A3F: $D0

    nop                                           ; $6A40: $00
    jr nz, jr_017_6A3E                            ; $6A41: $20 $FB

    ld d, b                                       ; $6A43: $50
    ld [hl+], a                                   ; $6A44: $22
    dec b                                         ; $6A45: $05
    ld b, b                                       ; $6A46: $40
    dec b                                         ; $6A47: $05
    ld [bc], a                                    ; $6A48: $02
    db $ED                                        ; $6A49: $ED
    ld h, e                                       ; $6A4A: $63
    dec b                                         ; $6A4B: $05
    inc hl                                        ; $6A4C: $23
    pop bc                                        ; $6A4D: $C1
    jp nc, $1700                                  ; $6A4E: $D2 $00 $17

    call z, $176A                                 ; $6A51: $CC $6A $17
    cp h                                          ; $6A54: $BC
    ld l, d                                       ; $6A55: $6A
    dec b                                         ; $6A56: $05
    inc bc                                        ; $6A57: $03
    db $ED                                        ; $6A58: $ED
    ld h, e                                       ; $6A59: $63

jr_017_6A5A:
    inc c                                         ; $6A5A: $0C
    db $10                                        ; $6A5B: $10
    ld c, h                                       ; $6A5C: $4C

jr_017_6A5D:
    pop de                                        ; $6A5D: $D1
    jr nc, @+$19                                  ; $6A5E: $30 $17

    ld h, $6B                                     ; $6A60: $26 $6B
    rla                                           ; $6A62: $17
    call nz, $056A                                ; $6A63: $C4 $6A $05
    inc b                                         ; $6A66: $04
    adc $63                                       ; $6A67: $CE $63
    ld bc, $1501                                  ; $6A69: $01 $01 $15
    ret nc                                        ; $6A6C: $D0

    ld e, c                                       ; $6A6D: $59
    ld l, $E3                                     ; $6A6E: $2E $E3
    ld d, l                                       ; $6A70: $55
    ld [hl+], a                                   ; $6A71: $22
    dec b                                         ; $6A72: $05
    ld b, b                                       ; $6A73: $40
    dec b                                         ; $6A74: $05
    dec b                                         ; $6A75: $05
    adc $63                                       ; $6A76: $CE $63
    ld bc, $1501                                  ; $6A78: $01 $01 $15
    ret nc                                        ; $6A7B: $D0

    ld e, c                                       ; $6A7C: $59
    ld l, $E3                                     ; $6A7D: $2E $E3
    ld d, l                                       ; $6A7F: $55
    ld [hl+], a                                   ; $6A80: $22
    dec b                                         ; $6A81: $05
    ld b, b                                       ; $6A82: $40
    dec b                                         ; $6A83: $05
    ld b, $CE                                     ; $6A84: $06 $CE
    ld h, e                                       ; $6A86: $63
    ld bc, $1501                                  ; $6A87: $01 $01 $15
    ret nc                                        ; $6A8A: $D0

    ld e, c                                       ; $6A8B: $59
    ld l, $E3                                     ; $6A8C: $2E $E3
    ld d, l                                       ; $6A8E: $55
    ld [hl+], a                                   ; $6A8F: $22
    dec b                                         ; $6A90: $05
    ld b, b                                       ; $6A91: $40
    dec bc                                        ; $6A92: $0B
    nop                                           ; $6A93: $00
    dec bc                                        ; $6A94: $0B
    ld [bc], a                                    ; $6A95: $02
    dec bc                                        ; $6A96: $0B
    inc bc                                        ; $6A97: $03
    dec bc                                        ; $6A98: $0B
    inc b                                         ; $6A99: $04
    dec bc                                        ; $6A9A: $0B
    dec b                                         ; $6A9B: $05
    dec bc                                        ; $6A9C: $0B
    ld b, $6B                                     ; $6A9D: $06 $6B
    jr nc, jr_017_6AAD                            ; $6A9F: $30 $0C

    jr nc, jr_017_6AFD                            ; $6AA1: $30 $5A

    nop                                           ; $6AA3: $00
    add b                                         ; $6AA4: $80
    nop                                           ; $6AA5: $00
    ld l, e                                       ; $6AA6: $6B
    add hl, hl                                    ; $6AA7: $29
    dec bc                                        ; $6AA8: $0B
    jr nc, jr_017_6AFA                            ; $6AA9: $30 $4F

    nop                                           ; $6AAB: $00
    add e                                         ; $6AAC: $83

jr_017_6AAD:
    nop                                           ; $6AAD: $00
    ld l, e                                       ; $6AAE: $6B
    ld b, $0D                                     ; $6AAF: $06 $0D
    ld [hl], b                                    ; $6AB1: $70
    ld e, e                                       ; $6AB2: $5B
    sub b                                         ; $6AB3: $90
    add l                                         ; $6AB4: $85
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    add d                                         ; $6AB7: $82
    rra                                           ; $6AB8: $1F
    dec e                                         ; $6AB9: $1D
    sub h                                         ; $6ABA: $94
    ld b, d                                       ; $6ABB: $42
    ld e, e                                       ; $6ABC: $5B
    rla                                           ; $6ABD: $17
    add l                                         ; $6ABE: $85
    ld h, e                                       ; $6ABF: $63
    ld b, l                                       ; $6AC0: $45
    db $10                                        ; $6AC1: $10
    db $E3                                        ; $6AC2: $E3
    ld [hl], d                                    ; $6AC3: $72
    ld e, e                                       ; $6AC4: $5B
    rla                                           ; $6AC5: $17
    and l                                         ; $6AC6: $A5
    ld h, e                                       ; $6AC7: $63
    ld b, l                                       ; $6AC8: $45
    rrca                                          ; $6AC9: $0F
    ccf                                           ; $6ACA: $3F
    ld a, h                                       ; $6ACB: $7C
    dec d                                         ; $6ACC: $15
    db $10                                        ; $6ACD: $10
    and a                                         ; $6ACE: $A7
    ld [hl], d                                    ; $6ACF: $72
    ld b, b                                       ; $6AD0: $40
    db $10                                        ; $6AD1: $10
    inc sp                                        ; $6AD2: $33
    ld [hl], d                                    ; $6AD3: $72
    ld b, b                                       ; $6AD4: $40
    db $10                                        ; $6AD5: $10
    and a                                         ; $6AD6: $A7
    ld [hl], d                                    ; $6AD7: $72
    ld b, b                                       ; $6AD8: $40
    db $10                                        ; $6AD9: $10
    inc de                                        ; $6ADA: $13
    ld [hl], d                                    ; $6ADB: $72
    db $10                                        ; $6ADC: $10
    db $10                                        ; $6ADD: $10
    and a                                         ; $6ADE: $A7
    ld [hl], d                                    ; $6ADF: $72
    ld b, b                                       ; $6AE0: $40
    db $10                                        ; $6AE1: $10
    rst $08                                       ; $6AE2: $CF
    ld [hl], d                                    ; $6AE3: $72
    ld b, b                                       ; $6AE4: $40
    db $10                                        ; $6AE5: $10
    cp e                                          ; $6AE6: $BB
    ld [hl], d                                    ; $6AE7: $72
    ld b, b                                       ; $6AE8: $40
    db $10                                        ; $6AE9: $10
    inc hl                                        ; $6AEA: $23
    ld [hl], d                                    ; $6AEB: $72
    jr nz, jr_017_6AFE                            ; $6AEC: $20 $10

    reti                                          ; $6AEE: $D9


    ld [hl], d                                    ; $6AEF: $72
    ld b, b                                       ; $6AF0: $40
    db $10                                        ; $6AF1: $10
    push bc                                       ; $6AF2: $C5
    ld [hl], d                                    ; $6AF3: $72
    ld b, b                                       ; $6AF4: $40
    db $10                                        ; $6AF5: $10
    inc de                                        ; $6AF6: $13
    ld [hl], d                                    ; $6AF7: $72
    db $10                                        ; $6AF8: $10
    db $10                                        ; $6AF9: $10

jr_017_6AFA:
    and a                                         ; $6AFA: $A7
    ld [hl], d                                    ; $6AFB: $72
    ld b, b                                       ; $6AFC: $40

jr_017_6AFD:
    db $10                                        ; $6AFD: $10

jr_017_6AFE:
    ld b, e                                       ; $6AFE: $43
    ld [hl], d                                    ; $6AFF: $72
    ld b, b                                       ; $6B00: $40
    db $10                                        ; $6B01: $10
    sbc l                                         ; $6B02: $9D
    ld [hl], d                                    ; $6B03: $72
    jr nz, jr_017_6B16                            ; $6B04: $20 $10

    rst $08                                       ; $6B06: $CF
    ld [hl], d                                    ; $6B07: $72
    jr nz, jr_017_6B1A                            ; $6B08: $20 $10

    and a                                         ; $6B0A: $A7
    ld [hl], d                                    ; $6B0B: $72
    jr nz, jr_017_6B1E                            ; $6B0C: $20 $10

    cp e                                          ; $6B0E: $BB
    ld [hl], d                                    ; $6B0F: $72
    jr nz, jr_017_6B22                            ; $6B10: $20 $10

    sub e                                         ; $6B12: $93
    ld [hl], d                                    ; $6B13: $72
    jr nz, @+$12                                  ; $6B14: $20 $10

jr_017_6B16:
    push bc                                       ; $6B16: $C5
    ld [hl], d                                    ; $6B17: $72
    jr nz, jr_017_6B2A                            ; $6B18: $20 $10

jr_017_6B1A:
    or c                                          ; $6B1A: $B1
    ld [hl], d                                    ; $6B1B: $72
    jr nz, jr_017_6B2E                            ; $6B1C: $20 $10

jr_017_6B1E:
    reti                                          ; $6B1E: $D9


    ld [hl], d                                    ; $6B1F: $72
    jr nz, jr_017_6B22                            ; $6B20: $20 $00

jr_017_6B22:
    ld b, l                                       ; $6B22: $45
    rla                                           ; $6B23: $17
    call z, $156A                                 ; $6B24: $CC $6A $15
    rrca                                          ; $6B27: $0F
    ld sp, hl                                     ; $6B28: $F9
    ld a, e                                       ; $6B29: $7B

jr_017_6B2A:
    ld b, b                                       ; $6B2A: $40
    nop                                           ; $6B2B: $00
    ld b, l                                       ; $6B2C: $45
    rla                                           ; $6B2D: $17

jr_017_6B2E:
    ld h, $6B                                     ; $6B2E: $26 $6B
    xor h                                         ; $6B30: $AC
    or d                                          ; $6B31: $B2
    and d                                         ; $6B32: $A2
    ld bc, $044B                                  ; $6B33: $01 $4B $04
    rla                                           ; $6B36: $17
    dec bc                                        ; $6B37: $0B
    nop                                           ; $6B38: $00
    xor h                                         ; $6B39: $AC
    ld h, a                                       ; $6B3A: $67
    rla                                           ; $6B3B: $17
    inc c                                         ; $6B3C: $0C
    nop                                           ; $6B3D: $00
    ld c, h                                       ; $6B3E: $4C
    ld l, b                                       ; $6B3F: $68
    rla                                           ; $6B40: $17
    dec c                                         ; $6B41: $0D
    nop                                           ; $6B42: $00
    inc l                                         ; $6B43: $2C
    ld l, d                                       ; $6B44: $6A
    rla                                           ; $6B45: $17
    ld c, $00                                     ; $6B46: $0E $00
    adc h                                         ; $6B48: $8C
    ld l, c                                       ; $6B49: $69
    rla                                           ; $6B4A: $17
    rrca                                          ; $6B4B: $0F
    nop                                           ; $6B4C: $00
    adc h                                         ; $6B4D: $8C
    ld l, c                                       ; $6B4E: $69
    rla                                           ; $6B4F: $17
    stop                                          ; $6B50: $10 $00
    jr nz, jr_017_6BB8                            ; $6B52: $20 $64

    rst $38                                       ; $6B54: $FF
    ld b, e                                       ; $6B55: $43
    nop                                           ; $6B56: $00
    and l                                         ; $6B57: $A5
    and c                                         ; $6B58: $A1
    inc b                                         ; $6B59: $04
    rla                                           ; $6B5A: $17
    db $EC                                        ; $6B5B: $EC
    ld l, b                                       ; $6B5C: $68
    sub e                                         ; $6B5D: $93
    ld h, l                                       ; $6B5E: $65
    ld hl, sp+$47                                 ; $6B5F: $F8 $47
    ld c, a                                       ; $6B61: $4F
    ld h, h                                       ; $6B62: $64
    jp c, Jump_017_664A                           ; $6B63: $DA $4A $66

    ret nz                                        ; $6B66: $C0

    ld e, h                                       ; $6B67: $5C
    ld hl, $0005                                  ; $6B68: $21 $05 $00
    add c                                         ; $6B6B: $81
    ld e, l                                       ; $6B6C: $5D
    ld c, $01                                     ; $6B6D: $0E $01

jr_017_6B6F:
    ld [hl+], a                                   ; $6B6F: $22
    ret nc                                        ; $6B70: $D0

    nop                                           ; $6B71: $00
    jr nz, jr_017_6B6F                            ; $6B72: $20 $FB

    ld d, b                                       ; $6B74: $50
    ld [hl+], a                                   ; $6B75: $22
    dec b                                         ; $6B76: $05
    ld b, b                                       ; $6B77: $40
    dec b                                         ; $6B78: $05
    ld [bc], a                                    ; $6B79: $02
    db $ED                                        ; $6B7A: $ED
    ld h, e                                       ; $6B7B: $63
    dec b                                         ; $6B7C: $05
    inc hl                                        ; $6B7D: $23
    pop bc                                        ; $6B7E: $C1
    jp nc, $1700                                  ; $6B7F: $D2 $00 $17

    call z, $176A                                 ; $6B82: $CC $6A $17
    db $ED                                        ; $6B85: $ED
    ld l, e                                       ; $6B86: $6B
    dec b                                         ; $6B87: $05
    inc bc                                        ; $6B88: $03
    db $ED                                        ; $6B89: $ED
    ld h, e                                       ; $6B8A: $63
    inc c                                         ; $6B8B: $0C
    db $10                                        ; $6B8C: $10
    ld c, h                                       ; $6B8D: $4C
    pop de                                        ; $6B8E: $D1
    jr nc, @+$19                                  ; $6B8F: $30 $17

    ld h, $6B                                     ; $6B91: $26 $6B
    rla                                           ; $6B93: $17
    push af                                       ; $6B94: $F5
    ld l, e                                       ; $6B95: $6B
    dec b                                         ; $6B96: $05
    inc b                                         ; $6B97: $04
    adc $63                                       ; $6B98: $CE $63
    ld bc, $1501                                  ; $6B9A: $01 $01 $15
    ret nc                                        ; $6B9D: $D0

    ld e, c                                       ; $6B9E: $59
    ld l, $E3                                     ; $6B9F: $2E $E3
    ld d, l                                       ; $6BA1: $55
    ld [hl+], a                                   ; $6BA2: $22
    dec b                                         ; $6BA3: $05
    ld b, b                                       ; $6BA4: $40
    dec b                                         ; $6BA5: $05
    dec b                                         ; $6BA6: $05
    adc $63                                       ; $6BA7: $CE $63
    ld bc, $1501                                  ; $6BA9: $01 $01 $15
    ret nc                                        ; $6BAC: $D0

    ld e, c                                       ; $6BAD: $59
    ld l, $E3                                     ; $6BAE: $2E $E3
    ld d, l                                       ; $6BB0: $55
    ld [hl+], a                                   ; $6BB1: $22
    dec b                                         ; $6BB2: $05
    ld b, b                                       ; $6BB3: $40
    dec b                                         ; $6BB4: $05
    ld b, $CE                                     ; $6BB5: $06 $CE
    ld h, e                                       ; $6BB7: $63

jr_017_6BB8:
    ld bc, $1501                                  ; $6BB8: $01 $01 $15
    ret nc                                        ; $6BBB: $D0

    ld e, c                                       ; $6BBC: $59
    ld l, $E3                                     ; $6BBD: $2E $E3
    ld d, l                                       ; $6BBF: $55
    ld [hl+], a                                   ; $6BC0: $22
    dec b                                         ; $6BC1: $05
    ld b, b                                       ; $6BC2: $40
    dec bc                                        ; $6BC3: $0B
    nop                                           ; $6BC4: $00
    dec bc                                        ; $6BC5: $0B
    ld [bc], a                                    ; $6BC6: $02
    dec bc                                        ; $6BC7: $0B
    inc bc                                        ; $6BC8: $03
    dec bc                                        ; $6BC9: $0B
    inc b                                         ; $6BCA: $04
    dec bc                                        ; $6BCB: $0B
    dec b                                         ; $6BCC: $05
    dec bc                                        ; $6BCD: $0B
    ld b, $6B                                     ; $6BCE: $06 $6B
    jr nc, jr_017_6BDE                            ; $6BD0: $30 $0C

    jr nc, jr_017_6C2E                            ; $6BD2: $30 $5A

    nop                                           ; $6BD4: $00
    add b                                         ; $6BD5: $80
    nop                                           ; $6BD6: $00
    ld l, e                                       ; $6BD7: $6B
    add hl, hl                                    ; $6BD8: $29
    dec bc                                        ; $6BD9: $0B
    jr nc, jr_017_6C2B                            ; $6BDA: $30 $4F

    nop                                           ; $6BDC: $00
    add e                                         ; $6BDD: $83

jr_017_6BDE:
    nop                                           ; $6BDE: $00
    ld l, e                                       ; $6BDF: $6B
    ld b, $0D                                     ; $6BE0: $06 $0D
    ld [hl], b                                    ; $6BE2: $70
    ld e, e                                       ; $6BE3: $5B
    sub b                                         ; $6BE4: $90
    add l                                         ; $6BE5: $85
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    add d                                         ; $6BE8: $82
    rra                                           ; $6BE9: $1F
    dec e                                         ; $6BEA: $1D
    sub h                                         ; $6BEB: $94
    ld b, d                                       ; $6BEC: $42
    ld e, e                                       ; $6BED: $5B
    rla                                           ; $6BEE: $17
    reti                                          ; $6BEF: $D9


    ld h, e                                       ; $6BF0: $63
    ld b, l                                       ; $6BF1: $45
    db $10                                        ; $6BF2: $10
    db $E3                                        ; $6BF3: $E3
    ld [hl], d                                    ; $6BF4: $72
    ld e, e                                       ; $6BF5: $5B
    rla                                           ; $6BF6: $17
    db $FD                                        ; $6BF7: $FD
    ld h, e                                       ; $6BF8: $63
    ld b, l                                       ; $6BF9: $45
    rrca                                          ; $6BFA: $0F
    ccf                                           ; $6BFB: $3F
    ld a, h                                       ; $6BFC: $7C
    ld bc, $1415                                  ; $6BFD: $01 $15 $14
    ld b, l                                       ; $6C00: $45

jr_017_6C01:
    cpl                                           ; $6C01: $2F
    scf                                           ; $6C02: $37
    ld c, h                                       ; $6C03: $4C
    ld [bc], a                                    ; $6C04: $02
    rra                                           ; $6C05: $1F
    ld bc, $0B0C                                  ; $6C06: $01 $0C $0B
    ld b, l                                       ; $6C09: $45
    rla                                           ; $6C0A: $17
    ld [hl], $6D                                  ; $6C0B: $36 $6D
    ld [bc], a                                    ; $6C0D: $02
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    jr nc, jr_017_6C01                            ; $6C12: $30 $ED

    ld d, [hl]                                    ; $6C14: $56
    inc c                                         ; $6C15: $0C
    ld b, a                                       ; $6C16: $47
    ld [$3017], sp                                ; $6C17: $08 $17 $30
    ld l, h                                       ; $6C1A: $6C
    rla                                           ; $6C1B: $17
    ld a, $6C                                     ; $6C1C: $3E $6C
    rla                                           ; $6C1E: $17
    ld d, e                                       ; $6C1F: $53
    ld l, h                                       ; $6C20: $6C
    rla                                           ; $6C21: $17
    ld l, a                                       ; $6C22: $6F
    ld l, h                                       ; $6C23: $6C
    rla                                           ; $6C24: $17
    add h                                         ; $6C25: $84
    ld l, h                                       ; $6C26: $6C
    rla                                           ; $6C27: $17
    sbc c                                         ; $6C28: $99
    ld l, h                                       ; $6C29: $6C
    rla                                           ; $6C2A: $17

jr_017_6C2B:
    xor [hl]                                      ; $6C2B: $AE
    ld l, h                                       ; $6C2C: $6C
    rla                                           ; $6C2D: $17

jr_017_6C2E:
    pop de                                        ; $6C2E: $D1
    ld l, h                                       ; $6C2F: $6C
    dec h                                         ; $6C30: $25
    nop                                           ; $6C31: $00
    ld l, h                                       ; $6C32: $6C
    dec hl                                        ; $6C33: $2B
    ld c, h                                       ; $6C34: $4C
    inc hl                                        ; $6C35: $23
    ld b, b                                       ; $6C36: $40
    ld l, $09                                     ; $6C37: $2E $09
    ld a, [de]                                    ; $6C39: $1A
    dec hl                                        ; $6C3A: $2B
    ld d, [hl]                                    ; $6C3B: $56
    ld bc, $2527                                  ; $6C3C: $01 $27 $25
    nop                                           ; $6C3F: $00
    ld l, h                                       ; $6C40: $6C
    inc l                                         ; $6C41: $2C
    ld c, h                                       ; $6C42: $4C
    inc hl                                        ; $6C43: $23
    ld b, b                                       ; $6C44: $40
    ld l, $09                                     ; $6C45: $2E $09
    ld [bc], a                                    ; $6C47: $02
    dec hl                                        ; $6C48: $2B
    ld d, a                                       ; $6C49: $57
    ld bc, $2E2B                                  ; $6C4A: $01 $2B $2E
    add hl, bc                                    ; $6C4D: $09
    ld [hl-], a                                   ; $6C4E: $32
    ld a, [hl+]                                   ; $6C4F: $2A
    ld d, h                                       ; $6C50: $54
    ld bc, $2527                                  ; $6C51: $01 $27 $25
    nop                                           ; $6C54: $00
    ld l, h                                       ; $6C55: $6C
    ld a, [hl+]                                   ; $6C56: $2A
    ld c, h                                       ; $6C57: $4C
    inc hl                                        ; $6C58: $23
    ld b, b                                       ; $6C59: $40
    ld l, $09                                     ; $6C5A: $2E $09
    dec b                                         ; $6C5C: $05
    dec hl                                        ; $6C5D: $2B
    ld d, [hl]                                    ; $6C5E: $56
    ld bc, $2E2B                                  ; $6C5F: $01 $2B $2E
    add hl, bc                                    ; $6C62: $09
    ld c, l                                       ; $6C63: $4D
    jr z, @+$52                                   ; $6C64: $28 $50

    ld bc, $2E2B                                  ; $6C66: $01 $2B $2E
    add hl, bc                                    ; $6C69: $09
    ld c, l                                       ; $6C6A: $4D
    jr z, jr_017_6CBD                             ; $6C6B: $28 $50

    ld bc, $2527                                  ; $6C6D: $01 $27 $25
    nop                                           ; $6C70: $00
    ld l, h                                       ; $6C71: $6C
    dec hl                                        ; $6C72: $2B
    ld c, h                                       ; $6C73: $4C
    inc hl                                        ; $6C74: $23
    ld b, b                                       ; $6C75: $40
    ld l, $09                                     ; $6C76: $2E $09
    ld [hl-], a                                   ; $6C78: $32
    ld a, [hl+]                                   ; $6C79: $2A
    ld d, l                                       ; $6C7A: $55
    ld bc, $2E2B                                  ; $6C7B: $01 $2B $2E
    add hl, bc                                    ; $6C7E: $09
    ld c, h                                       ; $6C7F: $4C
    jr z, jr_017_6CD4                             ; $6C80: $28 $52

    ld bc, $2527                                  ; $6C82: $01 $27 $25
    nop                                           ; $6C85: $00
    ld l, h                                       ; $6C86: $6C
    dec hl                                        ; $6C87: $2B
    ld c, h                                       ; $6C88: $4C
    inc hl                                        ; $6C89: $23
    ld b, b                                       ; $6C8A: $40
    ld l, $09                                     ; $6C8B: $2E $09
    ld [bc], a                                    ; $6C8D: $02
    ld a, [hl+]                                   ; $6C8E: $2A
    ld d, l                                       ; $6C8F: $55
    ld bc, $2E2B                                  ; $6C90: $01 $2B $2E
    add hl, bc                                    ; $6C93: $09
    ld a, [de]                                    ; $6C94: $1A
    jr z, jr_017_6CE7                             ; $6C95: $28 $50

    ld bc, $2527                                  ; $6C97: $01 $27 $25
    nop                                           ; $6C9A: $00
    ld l, h                                       ; $6C9B: $6C
    ld a, [hl+]                                   ; $6C9C: $2A
    ld c, h                                       ; $6C9D: $4C
    inc hl                                        ; $6C9E: $23
    ld b, b                                       ; $6C9F: $40
    ld l, $09                                     ; $6CA0: $2E $09
    dec b                                         ; $6CA2: $05
    jr z, @+$54                                   ; $6CA3: $28 $52

    ld bc, $2E2B                                  ; $6CA5: $01 $2B $2E
    add hl, bc                                    ; $6CA8: $09
    ld c, l                                       ; $6CA9: $4D
    jr z, @+$52                                   ; $6CAA: $28 $50

    ld bc, $2527                                  ; $6CAC: $01 $27 $25
    nop                                           ; $6CAF: $00
    ld l, h                                       ; $6CB0: $6C
    ld a, [hl+]                                   ; $6CB1: $2A
    ld c, h                                       ; $6CB2: $4C
    inc hl                                        ; $6CB3: $23
    ld b, b                                       ; $6CB4: $40
    ld l, $09                                     ; $6CB5: $2E $09
    jr c, jr_017_6CE1                             ; $6CB7: $38 $28

    ld d, b                                       ; $6CB9: $50
    ld bc, $2E2B                                  ; $6CBA: $01 $2B $2E

jr_017_6CBD:
    add hl, bc                                    ; $6CBD: $09
    ld bc, $5028                                  ; $6CBE: $01 $28 $50
    ld bc, $2E2B                                  ; $6CC1: $01 $2B $2E
    add hl, bc                                    ; $6CC4: $09
    inc a                                         ; $6CC5: $3C
    jr z, jr_017_6D18                             ; $6CC6: $28 $50

    ld bc, $2E2B                                  ; $6CC8: $01 $2B $2E
    add hl, bc                                    ; $6CCB: $09
    inc [hl]                                      ; $6CCC: $34
    jr z, jr_017_6D1F                             ; $6CCD: $28 $50

    ld bc, $2527                                  ; $6CCF: $01 $27 $25
    nop                                           ; $6CD2: $00
    ld l, h                                       ; $6CD3: $6C

jr_017_6CD4:
    dec hl                                        ; $6CD4: $2B
    ld c, h                                       ; $6CD5: $4C
    inc hl                                        ; $6CD6: $23
    ld b, b                                       ; $6CD7: $40
    ld l, $09                                     ; $6CD8: $2E $09
    ld [hl-], a                                   ; $6CDA: $32
    add hl, hl                                    ; $6CDB: $29
    ld e, d                                       ; $6CDC: $5A
    ld bc, $2E2B                                  ; $6CDD: $01 $2B $2E
    add hl, bc                                    ; $6CE0: $09

jr_017_6CE1:
    ld c, h                                       ; $6CE1: $4C
    jr z, jr_017_6D48                             ; $6CE2: $28 $64

    ld bc, $9327                                  ; $6CE4: $01 $27 $93

jr_017_6CE7:
    ld h, l                                       ; $6CE7: $65
    ld h, a                                       ; $6CE8: $67
    ld d, c                                       ; $6CE9: $51
    ld c, a                                       ; $6CEA: $4F
    ld h, h                                       ; $6CEB: $64
    db $EC                                        ; $6CEC: $EC
    ld d, [hl]                                    ; $6CED: $56
    ld h, [hl]                                    ; $6CEE: $66
    ret nz                                        ; $6CEF: $C0

    ld e, h                                       ; $6CF0: $5C
    ld hl, $0905                                  ; $6CF1: $21 $05 $09
    adc $63                                       ; $6CF4: $CE $63
    ld bc, $3301                                  ; $6CF6: $01 $01 $33
    ret nc                                        ; $6CF9: $D0

    nop                                           ; $6CFA: $00
    ld l, $23                                     ; $6CFB: $2E $23
    ld d, [hl]                                    ; $6CFD: $56
    ld [hl+], a                                   ; $6CFE: $22
    dec b                                         ; $6CFF: $05
    ld b, b                                       ; $6D00: $40
    dec b                                         ; $6D01: $05
    ld a, [bc]                                    ; $6D02: $0A
    adc $63                                       ; $6D03: $CE $63
    ld bc, $3301                                  ; $6D05: $01 $01 $33
    ret nc                                        ; $6D08: $D0

    nop                                           ; $6D09: $00
    ld l, $23                                     ; $6D0A: $2E $23
    ld d, [hl]                                    ; $6D0C: $56
    ld [hl+], a                                   ; $6D0D: $22
    dec b                                         ; $6D0E: $05
    ld b, b                                       ; $6D0F: $40
    dec bc                                        ; $6D10: $0B
    nop                                           ; $6D11: $00
    dec bc                                        ; $6D12: $0B
    add hl, bc                                    ; $6D13: $09
    dec bc                                        ; $6D14: $0B

jr_017_6D15:
    ld a, [bc]                                    ; $6D15: $0A
    ld l, e                                       ; $6D16: $6B
    inc b                                         ; $6D17: $04

jr_017_6D18:
    inc h                                         ; $6D18: $24
    nop                                           ; $6D19: $00
    ld h, c                                       ; $6D1A: $61
    nop                                           ; $6D1B: $00
    add b                                         ; $6D1C: $80
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00

jr_017_6D1F:
    add d                                         ; $6D1F: $82
    rra                                           ; $6D20: $1F
    rra                                           ; $6D21: $1F
    sub h                                         ; $6D22: $94
    ld b, d                                       ; $6D23: $42
    ld [bc], a                                    ; $6D24: $02
    nop                                           ; $6D25: $00
    ld e, $0B                                     ; $6D26: $1E $0B
    inc c                                         ; $6D28: $0C
    ld b, l                                       ; $6D29: $45
    rla                                           ; $6D2A: $17
    and $6C                                       ; $6D2B: $E6 $6C
    ld [bc], a                                    ; $6D2D: $02
    ccf                                           ; $6D2E: $3F
    ld bc, $220B                                  ; $6D2F: $01 $0B $22
    ld b, l                                       ; $6D32: $45
    rla                                           ; $6D33: $17
    or c                                          ; $6D34: $B1
    ld l, l                                       ; $6D35: $6D
    sub e                                         ; $6D36: $93
    ld h, l                                       ; $6D37: $65
    halt                                          ; $6D38: $76
    ld d, c                                       ; $6D39: $51
    ld c, a                                       ; $6D3A: $4F
    ld h, h                                       ; $6D3B: $64
    push af                                       ; $6D3C: $F5
    ld d, [hl]                                    ; $6D3D: $56
    ld h, [hl]                                    ; $6D3E: $66
    ret nz                                        ; $6D3F: $C0

    ld e, h                                       ; $6D40: $5C
    ld hl, $000B                                  ; $6D41: $21 $0B $00
    dec b                                         ; $6D44: $05
    jr nz, jr_017_6D15                            ; $6D45: $20 $CE

    ld h, e                                       ; $6D47: $63

jr_017_6D48:
    ld a, [bc]                                    ; $6D48: $0A
    add hl, bc                                    ; $6D49: $09
    ld c, d                                       ; $6D4A: $4A
    jp nc, $2200                                  ; $6D4B: $D2 $00 $22

    jp c, $1740                                   ; $6D4E: $DA $40 $17

    dec c                                         ; $6D51: $0D
    ld l, h                                       ; $6D52: $6C
    dec b                                         ; $6D53: $05
    rra                                           ; $6D54: $1F
    adc $63                                       ; $6D55: $CE $63
    ld a, [bc]                                    ; $6D57: $0A
    add hl, bc                                    ; $6D58: $09
    ld c, d                                       ; $6D59: $4A
    jp nc, $2200                                  ; $6D5A: $D2 $00 $22

    jp c, $1740                                   ; $6D5D: $DA $40 $17

    dec c                                         ; $6D60: $0D
    ld l, h                                       ; $6D61: $6C
    dec bc                                        ; $6D62: $0B
    jr nz, @+$0D                                  ; $6D63: $20 $0B

    rra                                           ; $6D65: $1F
    ld l, e                                       ; $6D66: $6B
    inc [hl]                                      ; $6D67: $34
    dec c                                         ; $6D68: $0D
    jr nc, jr_017_6DD5                            ; $6D69: $30 $6A

    nop                                           ; $6D6B: $00
    add b                                         ; $6D6C: $80
    nop                                           ; $6D6D: $00
    ld sp, $7B17                                  ; $6D6E: $31 $17 $7B
    ld l, l                                       ; $6D71: $6D
    ld [hl+], a                                   ; $6D72: $22
    adc $40                                       ; $6D73: $CE $40
    nop                                           ; $6D75: $00
    add d                                         ; $6D76: $82
    rra                                           ; $6D77: $1F
    rra                                           ; $6D78: $1F
    sub h                                         ; $6D79: $94
    ld b, d                                       ; $6D7A: $42
    dec b                                         ; $6D7B: $05
    nop                                           ; $6D7C: $00
    add c                                         ; $6D7D: $81
    ld e, l                                       ; $6D7E: $5D
    dec b                                         ; $6D7F: $05
    dec b                                         ; $6D80: $05
    ld b, l                                       ; $6D81: $45
    pop de                                        ; $6D82: $D1
    nop                                           ; $6D83: $00
    jr nz, @-$53                                  ; $6D84: $20 $AB

    ld d, b                                       ; $6D86: $50
    ld [hl+], a                                   ; $6D87: $22
    dec b                                         ; $6D88: $05
    ld b, b                                       ; $6D89: $40
    ld b, l                                       ; $6D8A: $45
    rla                                           ; $6D8B: $17
    ld [hl], $6D                                  ; $6D8C: $36 $6D
    ld [bc], a                                    ; $6D8E: $02
    nop                                           ; $6D8F: $00
    ld a, $22                                     ; $6D90: $3E $22
    dec bc                                        ; $6D92: $0B

jr_017_6D93:
    ld b, l                                       ; $6D93: $45
    rla                                           ; $6D94: $17
    ld [hl], $6D                                  ; $6D95: $36 $6D
    ld [bc], a                                    ; $6D97: $02
    nop                                           ; $6D98: $00
    ld a, $07                                     ; $6D99: $3E $07
    ld a, [bc]                                    ; $6D9B: $0A
    ld b, l                                       ; $6D9C: $45
    rla                                           ; $6D9D: $17
    inc e                                         ; $6D9E: $1C
    ld l, [hl]                                    ; $6D9F: $6E
    ld [bc], a                                    ; $6DA0: $02
    dec h                                         ; $6DA1: $25
    dec d                                         ; $6DA2: $15
    nop                                           ; $6DA3: $00
    dec [hl]                                      ; $6DA4: $35
    ld b, l                                       ; $6DA5: $45
    rla                                           ; $6DA6: $17
    ld a, [$A46E]                                 ; $6DA7: $FA $6E $A4
    ld b, a                                       ; $6DAA: $47
    and e                                         ; $6DAB: $A3
    add b                                         ; $6DAC: $80
    nop                                           ; $6DAD: $00
    ld bc, $DB6E                                  ; $6DAE: $01 $6E $DB
    sub e                                         ; $6DB1: $93
    ld h, l                                       ; $6DB2: $65
    add l                                         ; $6DB3: $85
    ld d, c                                       ; $6DB4: $51
    ld c, a                                       ; $6DB5: $4F
    ld h, h                                       ; $6DB6: $64
    cp $56                                        ; $6DB7: $FE $56
    ld l, c                                       ; $6DB9: $69
    dec bc                                        ; $6DBA: $0B
    ld d, a                                       ; $6DBB: $57
    ld h, [hl]                                    ; $6DBC: $66
    ret nz                                        ; $6DBD: $C0

    ld e, h                                       ; $6DBE: $5C
    ld hl, $000B                                  ; $6DBF: $21 $0B $00
    dec b                                         ; $6DC2: $05
    jr nz, jr_017_6D93                            ; $6DC3: $20 $CE

    ld h, e                                       ; $6DC5: $63
    ld a, [bc]                                    ; $6DC6: $0A
    add hl, bc                                    ; $6DC7: $09
    ld c, d                                       ; $6DC8: $4A
    jp nc, $2200                                  ; $6DC9: $D2 $00 $22

    jp c, $1740                                   ; $6DCC: $DA $40 $17

    dec c                                         ; $6DCF: $0D
    ld l, h                                       ; $6DD0: $6C
    dec b                                         ; $6DD1: $05
    rra                                           ; $6DD2: $1F
    adc $63                                       ; $6DD3: $CE $63

jr_017_6DD5:
    ld a, [bc]                                    ; $6DD5: $0A
    add hl, bc                                    ; $6DD6: $09
    ld c, d                                       ; $6DD7: $4A
    jp nc, $2200                                  ; $6DD8: $D2 $00 $22

    jp c, $1740                                   ; $6DDB: $DA $40 $17

    dec c                                         ; $6DDE: $0D
    ld l, h                                       ; $6DDF: $6C
    dec bc                                        ; $6DE0: $0B
    jr nz, @+$0D                                  ; $6DE1: $20 $0B

    rra                                           ; $6DE3: $1F
    ld l, e                                       ; $6DE4: $6B
    inc [hl]                                      ; $6DE5: $34
    dec c                                         ; $6DE6: $0D
    jr nc, jr_017_6E53                            ; $6DE7: $30 $6A

    nop                                           ; $6DE9: $00
    add b                                         ; $6DEA: $80
    nop                                           ; $6DEB: $00
    ld sp, $F917                                  ; $6DEC: $31 $17 $F9
    ld l, l                                       ; $6DEF: $6D
    ld [hl+], a                                   ; $6DF0: $22
    adc $40                                       ; $6DF1: $CE $40
    nop                                           ; $6DF3: $00
    add d                                         ; $6DF4: $82
    rra                                           ; $6DF5: $1F
    rra                                           ; $6DF6: $1F
    sub h                                         ; $6DF7: $94
    ld b, d                                       ; $6DF8: $42
    dec b                                         ; $6DF9: $05
    nop                                           ; $6DFA: $00

jr_017_6DFB:
    add c                                         ; $6DFB: $81
    ld e, l                                       ; $6DFC: $5D
    dec b                                         ; $6DFD: $05
    dec b                                         ; $6DFE: $05
    ld b, l                                       ; $6DFF: $45
    pop de                                        ; $6E00: $D1
    nop                                           ; $6E01: $00
    jr nz, @-$53                                  ; $6E02: $20 $AB

    ld d, b                                       ; $6E04: $50
    ld [hl+], a                                   ; $6E05: $22
    dec b                                         ; $6E06: $05
    ld b, b                                       ; $6E07: $40
    ld b, l                                       ; $6E08: $45
    rla                                           ; $6E09: $17
    or c                                          ; $6E0A: $B1
    ld l, l                                       ; $6E0B: $6D
    ld [bc], a                                    ; $6E0C: $02
    ccf                                           ; $6E0D: $3F
    ld bc, $070A                                  ; $6E0E: $01 $0A $07
    ld b, l                                       ; $6E11: $45
    rla                                           ; $6E12: $17
    or c                                          ; $6E13: $B1
    ld l, l                                       ; $6E14: $6D
    ld bc, $1E17                                  ; $6E15: $01 $17 $1E
    ld b, l                                       ; $6E18: $45
    rla                                           ; $6E19: $17
    add d                                         ; $6E1A: $82
    ld l, [hl]                                    ; $6E1B: $6E
    sub e                                         ; $6E1C: $93
    ld h, l                                       ; $6E1D: $65
    sub h                                         ; $6E1E: $94
    ld d, c                                       ; $6E1F: $51
    ld c, a                                       ; $6E20: $4F
    ld h, h                                       ; $6E21: $64
    db $10                                        ; $6E22: $10
    ld d, a                                       ; $6E23: $57
    ld h, [hl]                                    ; $6E24: $66
    ret nz                                        ; $6E25: $C0

    ld e, h                                       ; $6E26: $5C
    ld hl, $000B                                  ; $6E27: $21 $0B $00
    dec b                                         ; $6E2A: $05
    jr nz, jr_017_6DFB                            ; $6E2B: $20 $CE

    ld h, e                                       ; $6E2D: $63
    ld a, [bc]                                    ; $6E2E: $0A
    add hl, bc                                    ; $6E2F: $09
    ld c, d                                       ; $6E30: $4A
    jp nc, $2200                                  ; $6E31: $D2 $00 $22

    jp c, $1740                                   ; $6E34: $DA $40 $17

    dec c                                         ; $6E37: $0D
    ld l, h                                       ; $6E38: $6C
    dec b                                         ; $6E39: $05
    rra                                           ; $6E3A: $1F
    adc $63                                       ; $6E3B: $CE $63
    ld a, [bc]                                    ; $6E3D: $0A
    add hl, bc                                    ; $6E3E: $09
    ld c, d                                       ; $6E3F: $4A
    jp nc, $2200                                  ; $6E40: $D2 $00 $22

    jp c, $1740                                   ; $6E43: $DA $40 $17

    dec c                                         ; $6E46: $0D
    ld l, h                                       ; $6E47: $6C
    dec bc                                        ; $6E48: $0B
    jr nz, @+$0D                                  ; $6E49: $20 $0B

    rra                                           ; $6E4B: $1F
    ld l, e                                       ; $6E4C: $6B
    inc [hl]                                      ; $6E4D: $34
    dec c                                         ; $6E4E: $0D
    jr nc, @+$6C                                  ; $6E4F: $30 $6A

    nop                                           ; $6E51: $00
    add b                                         ; $6E52: $80

jr_017_6E53:
    nop                                           ; $6E53: $00
    ld sp, $6117                                  ; $6E54: $31 $17 $61
    ld l, [hl]                                    ; $6E57: $6E
    ld [hl+], a                                   ; $6E58: $22
    adc $40                                       ; $6E59: $CE $40
    nop                                           ; $6E5B: $00
    add d                                         ; $6E5C: $82
    rra                                           ; $6E5D: $1F
    rra                                           ; $6E5E: $1F
    sub h                                         ; $6E5F: $94
    ld b, d                                       ; $6E60: $42

jr_017_6E61:
    dec b                                         ; $6E61: $05
    nop                                           ; $6E62: $00
    add c                                         ; $6E63: $81
    ld e, l                                       ; $6E64: $5D
    dec b                                         ; $6E65: $05
    dec b                                         ; $6E66: $05
    ld b, l                                       ; $6E67: $45
    pop de                                        ; $6E68: $D1
    nop                                           ; $6E69: $00
    jr nz, @-$53                                  ; $6E6A: $20 $AB

    ld d, b                                       ; $6E6C: $50
    ld [hl+], a                                   ; $6E6D: $22
    dec b                                         ; $6E6E: $05
    ld b, b                                       ; $6E6F: $40
    ld b, l                                       ; $6E70: $45
    rla                                           ; $6E71: $17
    inc e                                         ; $6E72: $1C
    ld l, [hl]                                    ; $6E73: $6E
    ld bc, $0102                                  ; $6E74: $01 $02 $01
    ld b, l                                       ; $6E77: $45
    rla                                           ; $6E78: $17
    inc e                                         ; $6E79: $1C
    ld l, [hl]                                    ; $6E7A: $6E
    ld bc, $060E                                  ; $6E7B: $01 $0E $06
    ld b, l                                       ; $6E7E: $45
    ld a, [de]                                    ; $6E7F: $1A
    db $ED                                        ; $6E80: $ED
    ld c, e                                       ; $6E81: $4B
    sub e                                         ; $6E82: $93
    ld h, l                                       ; $6E83: $65
    and e                                         ; $6E84: $A3
    ld d, c                                       ; $6E85: $51
    ld c, a                                       ; $6E86: $4F
    ld h, h                                       ; $6E87: $64
    add hl, de                                    ; $6E88: $19
    ld d, a                                       ; $6E89: $57
    ld h, [hl]                                    ; $6E8A: $66
    ret nz                                        ; $6E8B: $C0

    ld e, h                                       ; $6E8C: $5C
    ld hl, $000B                                  ; $6E8D: $21 $0B $00
    dec b                                         ; $6E90: $05
    jr nz, jr_017_6E61                            ; $6E91: $20 $CE

    ld h, e                                       ; $6E93: $63
    ld a, [bc]                                    ; $6E94: $0A
    add hl, bc                                    ; $6E95: $09
    cp d                                          ; $6E96: $BA
    pop de                                        ; $6E97: $D1
    nop                                           ; $6E98: $00
    ld [hl+], a                                   ; $6E99: $22
    jp c, $1740                                   ; $6E9A: $DA $40 $17

    dec c                                         ; $6E9D: $0D
    ld l, h                                       ; $6E9E: $6C
    dec b                                         ; $6E9F: $05
    rra                                           ; $6EA0: $1F
    adc $63                                       ; $6EA1: $CE $63
    ld a, [bc]                                    ; $6EA3: $0A
    add hl, bc                                    ; $6EA4: $09
    cp d                                          ; $6EA5: $BA
    pop de                                        ; $6EA6: $D1
    nop                                           ; $6EA7: $00
    ld [hl+], a                                   ; $6EA8: $22
    jp c, $1740                                   ; $6EA9: $DA $40 $17

    dec c                                         ; $6EAC: $0D
    ld l, h                                       ; $6EAD: $6C
    dec bc                                        ; $6EAE: $0B
    jr nz, @+$0D                                  ; $6EAF: $20 $0B

    rra                                           ; $6EB1: $1F
    ld l, e                                       ; $6EB2: $6B
    inc [hl]                                      ; $6EB3: $34
    dec c                                         ; $6EB4: $0D
    jr nc, @+$6C                                  ; $6EB5: $30 $6A

    nop                                           ; $6EB7: $00
    add b                                         ; $6EB8: $80
    nop                                           ; $6EB9: $00
    ld sp, $C717                                  ; $6EBA: $31 $17 $C7
    ld l, [hl]                                    ; $6EBD: $6E
    ld [hl+], a                                   ; $6EBE: $22
    adc $40                                       ; $6EBF: $CE $40
    nop                                           ; $6EC1: $00
    add d                                         ; $6EC2: $82
    rra                                           ; $6EC3: $1F
    rra                                           ; $6EC4: $1F
    sub h                                         ; $6EC5: $94
    ld b, d                                       ; $6EC6: $42
    dec b                                         ; $6EC7: $05
    nop                                           ; $6EC8: $00
    add c                                         ; $6EC9: $81
    ld e, l                                       ; $6ECA: $5D
    dec b                                         ; $6ECB: $05
    dec b                                         ; $6ECC: $05
    push af                                       ; $6ECD: $F5
    ret nc                                        ; $6ECE: $D0

    nop                                           ; $6ECF: $00
    jr nz, @-$53                                  ; $6ED0: $20 $AB

    ld d, b                                       ; $6ED2: $50
    ld [hl+], a                                   ; $6ED3: $22
    dec b                                         ; $6ED4: $05
    ld b, b                                       ; $6ED5: $40
    ld b, l                                       ; $6ED6: $45
    rla                                           ; $6ED7: $17
    add d                                         ; $6ED8: $82
    ld l, [hl]                                    ; $6ED9: $6E
    ld [bc], a                                    ; $6EDA: $02
    dec d                                         ; $6EDB: $15

jr_017_6EDC:
    dec h                                         ; $6EDC: $25
    dec [hl]                                      ; $6EDD: $35
    nop                                           ; $6EDE: $00
    ld b, l                                       ; $6EDF: $45
    rla                                           ; $6EE0: $17
    or c                                          ; $6EE1: $B1
    ld l, l                                       ; $6EE2: $6D
    ld bc, $1016                                  ; $6EE3: $01 $16 $10
    ld b, l                                       ; $6EE6: $45
    cpl                                           ; $6EE7: $2F
    scf                                           ; $6EE8: $37
    ld c, h                                       ; $6EE9: $4C
    and h                                         ; $6EEA: $A4
    ld b, a                                       ; $6EEB: $47
    and e                                         ; $6EEC: $A3
    jr nz, jr_017_6EF1                            ; $6EED: $20 $02

    dec d                                         ; $6EEF: $15
    ret nz                                        ; $6EF0: $C0

jr_017_6EF1:
    db $D3                                        ; $6EF1: $D3
    and h                                         ; $6EF2: $A4
    ld b, a                                       ; $6EF3: $47
    and e                                         ; $6EF4: $A3
    ld b, b                                       ; $6EF5: $40
    ld [bc], a                                    ; $6EF6: $02
    dec de                                        ; $6EF7: $1B

jr_017_6EF8:
    db $DD                                        ; $6EF8: $DD
    db $D3                                        ; $6EF9: $D3
    sub e                                         ; $6EFA: $93
    ld h, l                                       ; $6EFB: $65
    or d                                          ; $6EFC: $B2
    ld d, c                                       ; $6EFD: $51
    ld c, a                                       ; $6EFE: $4F
    ld h, h                                       ; $6EFF: $64
    ld [hl+], a                                   ; $6F00: $22
    ld d, a                                       ; $6F01: $57
    ld l, c                                       ; $6F02: $69
    dec hl                                        ; $6F03: $2B
    ld d, a                                       ; $6F04: $57
    ld h, [hl]                                    ; $6F05: $66
    ret nz                                        ; $6F06: $C0

    ld e, h                                       ; $6F07: $5C
    ld hl, $000B                                  ; $6F08: $21 $0B $00
    dec b                                         ; $6F0B: $05
    jr nz, jr_017_6EDC                            ; $6F0C: $20 $CE

    ld h, e                                       ; $6F0E: $63
    ld a, [bc]                                    ; $6F0F: $0A
    add hl, bc                                    ; $6F10: $09
    call z, $00D1                                 ; $6F11: $CC $D1 $00
    ld [hl+], a                                   ; $6F14: $22
    jp c, $1740                                   ; $6F15: $DA $40 $17

    dec c                                         ; $6F18: $0D
    ld l, h                                       ; $6F19: $6C
    dec b                                         ; $6F1A: $05
    rra                                           ; $6F1B: $1F
    adc $63                                       ; $6F1C: $CE $63
    ld a, [bc]                                    ; $6F1E: $0A
    add hl, bc                                    ; $6F1F: $09
    call z, $00D1                                 ; $6F20: $CC $D1 $00
    ld [hl+], a                                   ; $6F23: $22
    jp c, $1740                                   ; $6F24: $DA $40 $17

    dec c                                         ; $6F27: $0D
    ld l, h                                       ; $6F28: $6C
    dec bc                                        ; $6F29: $0B
    jr nz, @+$0D                                  ; $6F2A: $20 $0B

    rra                                           ; $6F2C: $1F
    ld l, e                                       ; $6F2D: $6B
    inc [hl]                                      ; $6F2E: $34
    dec c                                         ; $6F2F: $0D
    jr nc, @+$6C                                  ; $6F30: $30 $6A

    nop                                           ; $6F32: $00
    add b                                         ; $6F33: $80
    nop                                           ; $6F34: $00
    ld sp, $4217                                  ; $6F35: $31 $17 $42
    ld l, a                                       ; $6F38: $6F
    ld [hl+], a                                   ; $6F39: $22
    adc $40                                       ; $6F3A: $CE $40
    nop                                           ; $6F3C: $00
    add d                                         ; $6F3D: $82
    rra                                           ; $6F3E: $1F
    rra                                           ; $6F3F: $1F
    sub h                                         ; $6F40: $94
    ld b, d                                       ; $6F41: $42
    dec b                                         ; $6F42: $05
    nop                                           ; $6F43: $00
    add c                                         ; $6F44: $81
    ld e, l                                       ; $6F45: $5D
    dec b                                         ; $6F46: $05
    dec b                                         ; $6F47: $05
    rst $38                                       ; $6F48: $FF
    ret nc                                        ; $6F49: $D0

    nop                                           ; $6F4A: $00
    jr nz, jr_017_6EF8                            ; $6F4B: $20 $AB

jr_017_6F4D:
    ld d, b                                       ; $6F4D: $50
    ld [hl+], a                                   ; $6F4E: $22
    dec b                                         ; $6F4F: $05
    ld b, b                                       ; $6F50: $40
    ld b, l                                       ; $6F51: $45
    rla                                           ; $6F52: $17
    ld a, [$016E]                                 ; $6F53: $FA $6E $01
    inc d                                         ; $6F56: $14
    dec c                                         ; $6F57: $0D
    ld b, l                                       ; $6F58: $45
    cpl                                           ; $6F59: $2F
    scf                                           ; $6F5A: $37
    ld c, h                                       ; $6F5B: $4C
    ld [bc], a                                    ; $6F5C: $02
    nop                                           ; $6F5D: $00
    dec sp                                        ; $6F5E: $3B
    ld de, $4512                                  ; $6F5F: $11 $12 $45
    rla                                           ; $6F62: $17
    ret c                                         ; $6F63: $D8

    ld l, a                                       ; $6F64: $6F
    ld [bc], a                                    ; $6F65: $02
    ld de, $0004                                  ; $6F66: $11 $04 $00

jr_017_6F69:
    ld b, l                                       ; $6F69: $45
    ld b, l                                       ; $6F6A: $45
    rla                                           ; $6F6B: $17
    db $10                                        ; $6F6C: $10
    ld [hl], b                                    ; $6F6D: $70
    sub e                                         ; $6F6E: $93
    ld h, l                                       ; $6F6F: $65
    pop bc                                        ; $6F70: $C1
    ld d, c                                       ; $6F71: $51
    ld c, a                                       ; $6F72: $4F
    ld h, h                                       ; $6F73: $64
    inc [hl]                                      ; $6F74: $34
    ld d, a                                       ; $6F75: $57
    ld h, [hl]                                    ; $6F76: $66
    ret nz                                        ; $6F77: $C0

    ld e, h                                       ; $6F78: $5C
    ld hl, $000B                                  ; $6F79: $21 $0B $00
    dec b                                         ; $6F7C: $05
    jr nz, jr_017_6F4D                            ; $6F7D: $20 $CE

    ld h, e                                       ; $6F7F: $63
    ld a, [bc]                                    ; $6F80: $0A
    add hl, bc                                    ; $6F81: $09
    add h                                         ; $6F82: $84
    pop de                                        ; $6F83: $D1
    nop                                           ; $6F84: $00
    ld [hl+], a                                   ; $6F85: $22
    jp c, $1740                                   ; $6F86: $DA $40 $17

    dec c                                         ; $6F89: $0D
    ld l, h                                       ; $6F8A: $6C
    dec b                                         ; $6F8B: $05
    rra                                           ; $6F8C: $1F
    adc $63                                       ; $6F8D: $CE $63
    ld a, [bc]                                    ; $6F8F: $0A
    add hl, bc                                    ; $6F90: $09
    add h                                         ; $6F91: $84
    pop de                                        ; $6F92: $D1
    nop                                           ; $6F93: $00
    ld [hl+], a                                   ; $6F94: $22
    jp c, $1740                                   ; $6F95: $DA $40 $17

    dec c                                         ; $6F98: $0D
    ld l, h                                       ; $6F99: $6C
    dec bc                                        ; $6F9A: $0B
    jr nz, @+$0D                                  ; $6F9B: $20 $0B

    rra                                           ; $6F9D: $1F
    ld l, e                                       ; $6F9E: $6B
    inc [hl]                                      ; $6F9F: $34
    dec c                                         ; $6FA0: $0D
    jr nc, jr_017_700D                            ; $6FA1: $30 $6A

    nop                                           ; $6FA3: $00
    add b                                         ; $6FA4: $80
    nop                                           ; $6FA5: $00
    ld sp, $B317                                  ; $6FA6: $31 $17 $B3
    ld l, a                                       ; $6FA9: $6F
    ld [hl+], a                                   ; $6FAA: $22
    adc $40                                       ; $6FAB: $CE $40
    nop                                           ; $6FAD: $00
    add d                                         ; $6FAE: $82
    rra                                           ; $6FAF: $1F
    rra                                           ; $6FB0: $1F
    sub h                                         ; $6FB1: $94
    ld b, d                                       ; $6FB2: $42
    dec b                                         ; $6FB3: $05
    nop                                           ; $6FB4: $00
    add c                                         ; $6FB5: $81
    ld e, l                                       ; $6FB6: $5D
    dec b                                         ; $6FB7: $05
    dec b                                         ; $6FB8: $05
    rst $38                                       ; $6FB9: $FF
    ret nc                                        ; $6FBA: $D0

    nop                                           ; $6FBB: $00
    jr nz, jr_017_6F69                            ; $6FBC: $20 $AB

    ld d, b                                       ; $6FBE: $50
    ld [hl+], a                                   ; $6FBF: $22
    dec b                                         ; $6FC0: $05
    ld b, b                                       ; $6FC1: $40
    ld b, l                                       ; $6FC2: $45
    rla                                           ; $6FC3: $17
    ld l, [hl]                                    ; $6FC4: $6E
    ld l, a                                       ; $6FC5: $6F
    ld [bc], a                                    ; $6FC6: $02
    dec sp                                        ; $6FC7: $3B
    nop                                           ; $6FC8: $00
    ld [de], a                                    ; $6FC9: $12
    ld de, $1745                                  ; $6FCA: $11 $45 $17
    ld l, [hl]                                    ; $6FCD: $6E
    ld l, a                                       ; $6FCE: $6F
    ld [bc], a                                    ; $6FCF: $02
    nop                                           ; $6FD0: $00
    inc de                                        ; $6FD1: $13
    dec bc                                        ; $6FD2: $0B
    ld b, b                                       ; $6FD3: $40
    ld b, l                                       ; $6FD4: $45
    rla                                           ; $6FD5: $17
    cp e                                          ; $6FD6: $BB
    ld [hl], b                                    ; $6FD7: $70
    sub e                                         ; $6FD8: $93
    ld h, l                                       ; $6FD9: $65
    ret nc                                        ; $6FDA: $D0

    ld d, c                                       ; $6FDB: $51
    ld c, a                                       ; $6FDC: $4F
    ld h, h                                       ; $6FDD: $64
    ld b, c                                       ; $6FDE: $41
    ld d, a                                       ; $6FDF: $57
    ld h, [hl]                                    ; $6FE0: $66
    ret nz                                        ; $6FE1: $C0

    ld e, h                                       ; $6FE2: $5C
    ld hl, $000B                                  ; $6FE3: $21 $0B $00
    nop                                           ; $6FE6: $00
    add d                                         ; $6FE7: $82
    rra                                           ; $6FE8: $1F
    rra                                           ; $6FE9: $1F
    sub h                                         ; $6FEA: $94
    ld b, d                                       ; $6FEB: $42
    ld [bc], a                                    ; $6FEC: $02
    inc b                                         ; $6FED: $04
    ld de, $0045                                  ; $6FEE: $11 $45 $00
    ld b, l                                       ; $6FF1: $45
    rla                                           ; $6FF2: $17
    ld l, [hl]                                    ; $6FF3: $6E
    ld l, a                                       ; $6FF4: $6F
    ld [bc], a                                    ; $6FF5: $02
    nop                                           ; $6FF6: $00
    ld a, $28                                     ; $6FF7: $3E $28
    dec hl                                        ; $6FF9: $2B
    ld b, l                                       ; $6FFA: $45
    rla                                           ; $6FFB: $17
    adc h                                         ; $6FFC: $8C
    ld [hl], b                                    ; $6FFD: $70
    ld [bc], a                                    ; $6FFE: $02
    ld a, [bc]                                    ; $6FFF: $0A
    ld sp, $1300                                  ; $7000: $31 $00 $13
    ld b, l                                       ; $7003: $45
    rla                                           ; $7004: $17
    rst $18                                       ; $7005: $DF
    ld [hl], b                                    ; $7006: $70
    ld [bc], a                                    ; $7007: $02
    nop                                           ; $7008: $00
    ld a, $36                                     ; $7009: $3E $36

jr_017_700B:
    add hl, sp                                    ; $700B: $39
    ld b, l                                       ; $700C: $45

jr_017_700D:
    rla                                           ; $700D: $17
    adc h                                         ; $700E: $8C
    ld [hl], b                                    ; $700F: $70
    sub e                                         ; $7010: $93
    ld h, l                                       ; $7011: $65
    rst $18                                       ; $7012: $DF
    ld d, c                                       ; $7013: $51
    ld c, a                                       ; $7014: $4F
    ld h, h                                       ; $7015: $64
    ld c, d                                       ; $7016: $4A
    ld d, a                                       ; $7017: $57
    ld h, [hl]                                    ; $7018: $66
    ret nz                                        ; $7019: $C0

    ld e, h                                       ; $701A: $5C
    ld hl, $000B                                  ; $701B: $21 $0B $00
    dec b                                         ; $701E: $05
    jr nz, @-$30                                  ; $701F: $20 $CE

    ld h, e                                       ; $7021: $63
    ld a, [bc]                                    ; $7022: $0A
    add hl, bc                                    ; $7023: $09
    cp [hl]                                       ; $7024: $BE
    ret nc                                        ; $7025: $D0

    nop                                           ; $7026: $00
    ld [hl+], a                                   ; $7027: $22
    jp c, $1740                                   ; $7028: $DA $40 $17

    dec c                                         ; $702B: $0D
    ld l, h                                       ; $702C: $6C
    dec b                                         ; $702D: $05
    rra                                           ; $702E: $1F
    adc $63                                       ; $702F: $CE $63
    ld a, [bc]                                    ; $7031: $0A
    add hl, bc                                    ; $7032: $09
    cp [hl]                                       ; $7033: $BE
    ret nc                                        ; $7034: $D0

    nop                                           ; $7035: $00
    ld [hl+], a                                   ; $7036: $22
    jp c, $1740                                   ; $7037: $DA $40 $17

    dec c                                         ; $703A: $0D
    ld l, h                                       ; $703B: $6C
    dec bc                                        ; $703C: $0B
    jr nz, @+$0D                                  ; $703D: $20 $0B

    rra                                           ; $703F: $1F
    ld l, e                                       ; $7040: $6B
    inc [hl]                                      ; $7041: $34
    dec c                                         ; $7042: $0D
    jr nc, jr_017_70AF                            ; $7043: $30 $6A

    nop                                           ; $7045: $00
    add b                                         ; $7046: $80
    nop                                           ; $7047: $00
    ld sp, $5517                                  ; $7048: $31 $17 $55
    ld [hl], b                                    ; $704B: $70
    ld [hl+], a                                   ; $704C: $22
    adc $40                                       ; $704D: $CE $40
    nop                                           ; $704F: $00
    add d                                         ; $7050: $82
    rra                                           ; $7051: $1F
    rra                                           ; $7052: $1F
    sub h                                         ; $7053: $94
    ld b, d                                       ; $7054: $42
    dec b                                         ; $7055: $05
    nop                                           ; $7056: $00
    add c                                         ; $7057: $81
    ld e, l                                       ; $7058: $5D
    dec b                                         ; $7059: $05
    dec b                                         ; $705A: $05
    rst $38                                       ; $705B: $FF
    ret nc                                        ; $705C: $D0

    nop                                           ; $705D: $00
    jr nz, jr_017_700B                            ; $705E: $20 $AB

    ld d, b                                       ; $7060: $50
    ld [hl+], a                                   ; $7061: $22
    dec b                                         ; $7062: $05
    ld b, b                                       ; $7063: $40
    ld b, l                                       ; $7064: $45
    rla                                           ; $7065: $17
    db $10                                        ; $7066: $10
    ld [hl], b                                    ; $7067: $70
    ld [bc], a                                    ; $7068: $02
    ccf                                           ; $7069: $3F
    ld bc, $282B                                  ; $706A: $01 $2B $28
    ld b, l                                       ; $706D: $45
    rla                                           ; $706E: $17
    db $10                                        ; $706F: $10
    ld [hl], b                                    ; $7070: $70
    ld [bc], a                                    ; $7071: $02
    nop                                           ; $7072: $00
    inc de                                        ; $7073: $13
    ld sp, $4526                                  ; $7074: $31 $26 $45
    rla                                           ; $7077: $17
    cp e                                          ; $7078: $BB
    ld [hl], b                                    ; $7079: $70
    ld [bc], a                                    ; $707A: $02
    ld a, [bc]                                    ; $707B: $0A
    inc d                                         ; $707C: $14
    nop                                           ; $707D: $00
    inc hl                                        ; $707E: $23
    ld b, l                                       ; $707F: $45
    rla                                           ; $7080: $17
    inc de                                        ; $7081: $13
    ld [hl], c                                    ; $7082: $71
    ld [bc], a                                    ; $7083: $02
    ccf                                           ; $7084: $3F
    ld bc, $3639                                  ; $7085: $01 $39 $36
    ld b, l                                       ; $7088: $45
    rla                                           ; $7089: $17
    db $10                                        ; $708A: $10
    ld [hl], b                                    ; $708B: $70
    sub e                                         ; $708C: $93
    ld h, l                                       ; $708D: $65
    xor $51                                       ; $708E: $EE $51
    ld c, a                                       ; $7090: $4F
    ld h, h                                       ; $7091: $64
    ld e, e                                       ; $7092: $5B
    ld d, a                                       ; $7093: $57
    ld h, [hl]                                    ; $7094: $66
    ret nz                                        ; $7095: $C0

    ld e, h                                       ; $7096: $5C
    ld hl, $000B                                  ; $7097: $21 $0B $00
    nop                                           ; $709A: $00
    add d                                         ; $709B: $82
    rra                                           ; $709C: $1F
    rra                                           ; $709D: $1F
    sub h                                         ; $709E: $94
    ld b, d                                       ; $709F: $42
    ld [bc], a                                    ; $70A0: $02
    inc de                                        ; $70A1: $13
    nop                                           ; $70A2: $00
    ld b, b                                       ; $70A3: $40
    dec bc                                        ; $70A4: $0B
    ld b, l                                       ; $70A5: $45
    rla                                           ; $70A6: $17
    ret c                                         ; $70A7: $D8

    ld l, a                                       ; $70A8: $6F
    ld [bc], a                                    ; $70A9: $02
    inc de                                        ; $70AA: $13
    nop                                           ; $70AB: $00
    ld h, $31                                     ; $70AC: $26 $31
    ld b, l                                       ; $70AE: $45

jr_017_70AF:
    rla                                           ; $70AF: $17
    adc h                                         ; $70B0: $8C
    ld [hl], b                                    ; $70B1: $70
    ld [bc], a                                    ; $70B2: $02
    add hl, bc                                    ; $70B3: $09
    ld [bc], a                                    ; $70B4: $02
    nop                                           ; $70B5: $00
    inc hl                                        ; $70B6: $23
    ld b, l                                       ; $70B7: $45
    rla                                           ; $70B8: $17
    inc de                                        ; $70B9: $13
    ld [hl], c                                    ; $70BA: $71
    sub e                                         ; $70BB: $93
    ld h, l                                       ; $70BC: $65
    db $FD                                        ; $70BD: $FD
    ld d, c                                       ; $70BE: $51
    ld c, a                                       ; $70BF: $4F
    ld h, h                                       ; $70C0: $64
    ld l, h                                       ; $70C1: $6C
    ld d, a                                       ; $70C2: $57
    ld h, [hl]                                    ; $70C3: $66
    ret nz                                        ; $70C4: $C0

    ld e, h                                       ; $70C5: $5C
    ld hl, $000B                                  ; $70C6: $21 $0B $00
    nop                                           ; $70C9: $00
    add d                                         ; $70CA: $82
    rra                                           ; $70CB: $1F
    rra                                           ; $70CC: $1F
    sub h                                         ; $70CD: $94
    ld b, d                                       ; $70CE: $42
    ld [bc], a                                    ; $70CF: $02
    ld sp, $130A                                  ; $70D0: $31 $0A $13
    nop                                           ; $70D3: $00
    ld b, l                                       ; $70D4: $45
    rla                                           ; $70D5: $17
    db $10                                        ; $70D6: $10
    ld [hl], b                                    ; $70D7: $70
    ld bc, $1423                                  ; $70D8: $01 $23 $14
    ld b, l                                       ; $70DB: $45
    rla                                           ; $70DC: $17
    inc de                                        ; $70DD: $13
    ld [hl], c                                    ; $70DE: $71
    sub e                                         ; $70DF: $93
    ld h, l                                       ; $70E0: $65
    inc c                                         ; $70E1: $0C
    ld d, d                                       ; $70E2: $52
    ld c, a                                       ; $70E3: $4F
    ld h, h                                       ; $70E4: $64
    ld a, c                                       ; $70E5: $79
    ld d, a                                       ; $70E6: $57
    ld h, [hl]                                    ; $70E7: $66

jr_017_70E8:
    ret nz                                        ; $70E8: $C0

    ld e, h                                       ; $70E9: $5C
    ld hl, $000B                                  ; $70EA: $21 $0B $00
    nop                                           ; $70ED: $00
    add d                                         ; $70EE: $82
    rra                                           ; $70EF: $1F
    rra                                           ; $70F0: $1F
    sub h                                         ; $70F1: $94
    ld b, d                                       ; $70F2: $42
    ld [bc], a                                    ; $70F3: $02
    inc d                                         ; $70F4: $14
    ld a, [bc]                                    ; $70F5: $0A
    inc hl                                        ; $70F6: $23
    nop                                           ; $70F7: $00
    ld b, l                                       ; $70F8: $45
    rla                                           ; $70F9: $17
    adc h                                         ; $70FA: $8C
    ld [hl], b                                    ; $70FB: $70
    ld [bc], a                                    ; $70FC: $02
    ld [bc], a                                    ; $70FD: $02
    add hl, bc                                    ; $70FE: $09
    inc hl                                        ; $70FF: $23
    nop                                           ; $7100: $00
    ld b, l                                       ; $7101: $45
    rla                                           ; $7102: $17
    cp e                                          ; $7103: $BB
    ld [hl], b                                    ; $7104: $70
    ld bc, $0700                                  ; $7105: $01 $00 $07
    ld b, l                                       ; $7108: $45
    rla                                           ; $7109: $17
    rst $18                                       ; $710A: $DF
    ld [hl], b                                    ; $710B: $70

jr_017_710C:
    ld bc, $0912                                  ; $710C: $01 $12 $09
    ld b, l                                       ; $710F: $45
    cpl                                           ; $7110: $2F
    scf                                           ; $7111: $37
    ld c, h                                       ; $7112: $4C
    sub e                                         ; $7113: $93
    ld h, l                                       ; $7114: $65
    dec de                                        ; $7115: $1B
    ld d, d                                       ; $7116: $52
    ld c, a                                       ; $7117: $4F
    ld h, h                                       ; $7118: $64
    add d                                         ; $7119: $82
    ld d, a                                       ; $711A: $57
    ld h, [hl]                                    ; $711B: $66
    ret nz                                        ; $711C: $C0

    ld e, h                                       ; $711D: $5C
    ld hl, $000B                                  ; $711E: $21 $0B $00
    nop                                           ; $7121: $00
    add d                                         ; $7122: $82
    rra                                           ; $7123: $1F
    rra                                           ; $7124: $1F
    sub h                                         ; $7125: $94
    ld b, d                                       ; $7126: $42
    ld bc, $0013                                  ; $7127: $01 $13 $00
    dec b                                         ; $712A: $05
    nop                                           ; $712B: $00
    rst $28                                       ; $712C: $EF
    ld c, [hl]                                    ; $712D: $4E
    dec b                                         ; $712E: $05
    dec b                                         ; $712F: $05
    ld a, l                                       ; $7130: $7D
    ret nc                                        ; $7131: $D0

jr_017_7132:
    nop                                           ; $7132: $00
    jr nz, jr_017_70E8                            ; $7133: $20 $B3

    ld e, h                                       ; $7135: $5C
    ld [hl+], a                                   ; $7136: $22
    dec b                                         ; $7137: $05
    ld b, b                                       ; $7138: $40
    ld b, l                                       ; $7139: $45
    ld h, $86                                     ; $713A: $26 $86

jr_017_713C:
    ld [hl], e                                    ; $713C: $73
    ld bc, $1C07                                  ; $713D: $01 $07 $1C
    ld b, l                                       ; $7140: $45
    cpl                                           ; $7141: $2F
    scf                                           ; $7142: $37
    ld c, h                                       ; $7143: $4C
    sbc e                                         ; $7144: $9B
    cp c                                          ; $7145: $B9
    ld e, l                                       ; $7146: $5D
    sbc a                                         ; $7147: $9F
    ld d, h                                       ; $7148: $54

jr_017_7149:
    ld l, b                                       ; $7149: $68
    ld h, l                                       ; $714A: $65
    jr nz, jr_017_71BD                            ; $714B: $20 $70

    ld h, c                                       ; $714D: $61
    ld l, h                                       ; $714E: $6C
    ld h, c                                       ; $714F: $61
    ld h, e                                       ; $7150: $63
    ld h, l                                       ; $7151: $65
    jr nz, jr_017_71BD                            ; $7152: $20 $69

    ld [hl], e                                    ; $7154: $73
    rst $38                                       ; $7155: $FF
    db $FD                                        ; $7156: $FD
    ld b, b                                       ; $7157: $40
    db $10                                        ; $7158: $10
    sbc a                                         ; $7159: $9F
    ld l, d                                       ; $715A: $6A
    ld [hl], l                                    ; $715B: $75
    ld [hl], e                                    ; $715C: $73
    ld [hl], h                                    ; $715D: $74
    jr nz, jr_017_71D5                            ; $715E: $20 $75

    ld [hl], b                                    ; $7160: $70
    jr nz, jr_017_71C4                            ; $7161: $20 $61

    ld l, b                                       ; $7163: $68
    ld h, l                                       ; $7164: $65
    ld h, c                                       ; $7165: $61
    ld h, h                                       ; $7166: $64
    ld hl, $FDFF                                  ; $7167: $21 $FF $FD
    ld b, b                                       ; $716A: $40
    jr nz, jr_017_710C                            ; $716B: $20 $9F

    ld d, h                                       ; $716D: $54
    ld l, b                                       ; $716E: $68
    ld h, l                                       ; $716F: $65
    jr nz, @+$53                                  ; $7170: $20 $51

    ld [hl], l                                    ; $7172: $75
    ld h, l                                       ; $7173: $65
    ld h, l                                       ; $7174: $65
    ld l, [hl]                                    ; $7175: $6E
    jr nz, jr_017_71EE                            ; $7176: $20 $76

    ld h, l                                       ; $7178: $65
    ld [hl], d                                    ; $7179: $72
    ld a, c                                       ; $717A: $79
    rst $38                                       ; $717B: $FF
    db $FD                                        ; $717C: $FD
    ld b, b                                       ; $717D: $40
    db $10                                        ; $717E: $10
    sbc a                                         ; $717F: $9F
    ld l, l                                       ; $7180: $6D
    ld [hl], l                                    ; $7181: $75
    ld h, e                                       ; $7182: $63
    ld l, b                                       ; $7183: $68
    jr nz, jr_017_71FD                            ; $7184: $20 $77

    ld l, c                                       ; $7186: $69
    ld [hl], e                                    ; $7187: $73
    ld l, b                                       ; $7188: $68
    ld h, l                                       ; $7189: $65
    ld [hl], e                                    ; $718A: $73
    jr nz, jr_017_7201                            ; $718B: $20 $74

    ld l, a                                       ; $718D: $6F
    rst $38                                       ; $718E: $FF
    db $FD                                        ; $718F: $FD
    ld b, b                                       ; $7190: $40
    jr nz, jr_017_7132                            ; $7191: $20 $9F

    ld l, l                                       ; $7193: $6D
    ld h, l                                       ; $7194: $65

jr_017_7195:
    ld h, l                                       ; $7195: $65
    ld [hl], h                                    ; $7196: $74
    jr nz, jr_017_7212                            ; $7197: $20 $79

    ld l, a                                       ; $7199: $6F
    ld [hl], l                                    ; $719A: $75
    ld l, $FF                                     ; $719B: $2E $FF
    db $FD                                        ; $719D: $FD
    ld b, b                                       ; $719E: $40
    jr nz, jr_017_713C                            ; $719F: $20 $9B

    ld a, b                                       ; $71A1: $78
    ld [hl], b                                    ; $71A2: $70
    sbc a                                         ; $71A3: $9F
    ld d, c                                       ; $71A4: $51
    ld [hl], l                                    ; $71A5: $75
    ld h, l                                       ; $71A6: $65
    ld h, l                                       ; $71A7: $65
    ld l, [hl]                                    ; $71A8: $6E
    ccf                                           ; $71A9: $3F
    rst $38                                       ; $71AA: $FF
    db $FD                                        ; $71AB: $FD
    ld b, b                                       ; $71AC: $40
    jr nz, jr_017_7149                            ; $71AD: $20 $9A

    xor c                                         ; $71AF: $A9
    ld d, $00                                     ; $71B0: $16 $00
    ld b, l                                       ; $71B2: $45
    ld a, [de]                                    ; $71B3: $1A
    add l                                         ; $71B4: $85
    ld d, l                                       ; $71B5: $55
    sub e                                         ; $71B6: $93
    ld h, l                                       ; $71B7: $65
    ld a, [hl+]                                   ; $71B8: $2A
    ld d, d                                       ; $71B9: $52
    ld c, a                                       ; $71BA: $4F
    ld h, h                                       ; $71BB: $64
    sub e                                         ; $71BC: $93

jr_017_71BD:
    ld d, a                                       ; $71BD: $57
    ld h, [hl]                                    ; $71BE: $66
    ret nz                                        ; $71BF: $C0

    ld e, h                                       ; $71C0: $5C
    ld hl, $000B                                  ; $71C1: $21 $0B $00

jr_017_71C4:
    dec b                                         ; $71C4: $05
    jr nz, jr_017_7195                            ; $71C5: $20 $CE

    ld h, e                                       ; $71C7: $63
    ld a, [bc]                                    ; $71C8: $0A
    add hl, bc                                    ; $71C9: $09
    sub c                                         ; $71CA: $91
    ret nc                                        ; $71CB: $D0

    nop                                           ; $71CC: $00
    ld [hl+], a                                   ; $71CD: $22
    jp c, $1740                                   ; $71CE: $DA $40 $17

    dec c                                         ; $71D1: $0D
    ld l, h                                       ; $71D2: $6C
    dec b                                         ; $71D3: $05
    rra                                           ; $71D4: $1F

jr_017_71D5:
    adc $63                                       ; $71D5: $CE $63
    ld a, [bc]                                    ; $71D7: $0A
    add hl, bc                                    ; $71D8: $09
    sub c                                         ; $71D9: $91
    ret nc                                        ; $71DA: $D0

    nop                                           ; $71DB: $00
    ld [hl+], a                                   ; $71DC: $22
    jp c, $1740                                   ; $71DD: $DA $40 $17

    dec c                                         ; $71E0: $0D
    ld l, h                                       ; $71E1: $6C
    dec bc                                        ; $71E2: $0B
    jr nz, @+$0D                                  ; $71E3: $20 $0B

    rra                                           ; $71E5: $1F
    ld l, e                                       ; $71E6: $6B
    inc [hl]                                      ; $71E7: $34
    dec c                                         ; $71E8: $0D
    jr nc, jr_017_7255                            ; $71E9: $30 $6A

    nop                                           ; $71EB: $00
    add b                                         ; $71EC: $80
    nop                                           ; $71ED: $00

jr_017_71EE:
    ld sp, $B617                                  ; $71EE: $31 $17 $B6
    ld [hl], c                                    ; $71F1: $71
    ld [hl+], a                                   ; $71F2: $22
    adc $40                                       ; $71F3: $CE $40
    nop                                           ; $71F5: $00
    add d                                         ; $71F6: $82
    rra                                           ; $71F7: $1F
    rra                                           ; $71F8: $1F
    sub h                                         ; $71F9: $94
    ld b, d                                       ; $71FA: $42
    sub e                                         ; $71FB: $93
    ld h, l                                       ; $71FC: $65

jr_017_71FD:
    ld a, [hl+]                                   ; $71FD: $2A
    ld d, d                                       ; $71FE: $52
    ld c, a                                       ; $71FF: $4F
    ld h, h                                       ; $7200: $64

jr_017_7201:
    sub e                                         ; $7201: $93
    ld d, a                                       ; $7202: $57
    ld h, [hl]                                    ; $7203: $66
    ret nz                                        ; $7204: $C0

    ld e, h                                       ; $7205: $5C
    ld hl, $0005                                  ; $7206: $21 $05 $00
    ld l, e                                       ; $7209: $6B
    ld c, d                                       ; $720A: $4A
    ld b, $31                                     ; $720B: $06 $31
    push hl                                       ; $720D: $E5
    jp nc, $2000                                  ; $720E: $D2 $00 $20

    ld h, a                                       ; $7211: $67

jr_017_7212:
    ld d, c                                       ; $7212: $51
    ld [hl+], a                                   ; $7213: $22
    dec b                                         ; $7214: $05
    ld b, b                                       ; $7215: $40
    dec b                                         ; $7216: $05
    ld [bc], a                                    ; $7217: $02
    ld l, e                                       ; $7218: $6B
    ld c, d                                       ; $7219: $4A
    ld b, $2F                                     ; $721A: $06 $2F

jr_017_721C:
    rst $00                                       ; $721C: $C7
    jp nc, $2000                                  ; $721D: $D2 $00 $20

    db $EB                                        ; $7220: $EB
    ld h, l                                       ; $7221: $65
    ld [hl+], a                                   ; $7222: $22
    dec b                                         ; $7223: $05
    ld b, b                                       ; $7224: $40
    dec b                                         ; $7225: $05
    inc bc                                        ; $7226: $03
    ld l, e                                       ; $7227: $6B
    ld c, d                                       ; $7228: $4A
    ld b, $31                                     ; $7229: $06 $31
    push hl                                       ; $722B: $E5
    jp nc, $2000                                  ; $722C: $D2 $00 $20

    db $EB                                        ; $722F: $EB
    ld h, l                                       ; $7230: $65
    ld [hl+], a                                   ; $7231: $22
    dec b                                         ; $7232: $05
    ld b, b                                       ; $7233: $40
    ld l, e                                       ; $7234: $6B
    cpl                                           ; $7235: $2F
    dec c                                         ; $7236: $0D
    nop                                           ; $7237: $00
    ld b, b                                       ; $7238: $40
    nop                                           ; $7239: $00
    add e                                         ; $723A: $83
    nop                                           ; $723B: $00
    dec bc                                        ; $723C: $0B
    nop                                           ; $723D: $00

jr_017_723E:
    dec bc                                        ; $723E: $0B
    ld [bc], a                                    ; $723F: $02
    add d                                         ; $7240: $82
    rra                                           ; $7241: $1F
    rra                                           ; $7242: $1F
    sub h                                         ; $7243: $94
    ld b, b                                       ; $7244: $40
    ld [$030B], sp                                ; $7245: $08 $0B $03
    ld b, b                                       ; $7248: $40
    jr nc, jr_017_72A6                            ; $7249: $30 $5B

    rla                                           ; $724B: $17
    ld b, h                                       ; $724C: $44
    ld [hl], c                                    ; $724D: $71
    add e                                         ; $724E: $83
    call nc, $FF00                                ; $724F: $D4 $00 $FF
    nop                                           ; $7252: $00
    ld b, l                                       ; $7253: $45
    rla                                           ; $7254: $17

jr_017_7255:
    ld c, [hl]                                    ; $7255: $4E
    ld [hl], d                                    ; $7256: $72
    ld bc, $1D16                                  ; $7257: $01 $16 $1D
    ld b, l                                       ; $725A: $45
    cpl                                           ; $725B: $2F
    scf                                           ; $725C: $37
    ld c, h                                       ; $725D: $4C
    dec b                                         ; $725E: $05
    nop                                           ; $725F: $00
    rst $28                                       ; $7260: $EF
    ld c, [hl]                                    ; $7261: $4E
    dec b                                         ; $7262: $05
    dec b                                         ; $7263: $05
    sbc e                                         ; $7264: $9B
    ret nc                                        ; $7265: $D0

    nop                                           ; $7266: $00
    jr nz, jr_017_721C                            ; $7267: $20 $B3

    ld e, h                                       ; $7269: $5C
    ld [hl+], a                                   ; $726A: $22
    dec b                                         ; $726B: $05
    ld b, b                                       ; $726C: $40
    ld bc, $0116                                  ; $726D: $01 $16 $01
    ld b, l                                       ; $7270: $45
    rla                                           ; $7271: $17
    cp b                                          ; $7272: $B8
    ld [hl], d                                    ; $7273: $72
    sub e                                         ; $7274: $93
    ld h, l                                       ; $7275: $65
    add hl, sp                                    ; $7276: $39
    ld d, d                                       ; $7277: $52
    ld c, a                                       ; $7278: $4F
    ld h, h                                       ; $7279: $64
    sbc h                                         ; $727A: $9C
    ld d, a                                       ; $727B: $57
    ld h, [hl]                                    ; $727C: $66
    ret nz                                        ; $727D: $C0

    ld e, h                                       ; $727E: $5C
    ld hl, $000B                                  ; $727F: $21 $0B $00
    nop                                           ; $7282: $00
    add d                                         ; $7283: $82
    rra                                           ; $7284: $1F
    rra                                           ; $7285: $1F
    sub h                                         ; $7286: $94
    ld b, d                                       ; $7287: $42
    dec b                                         ; $7288: $05
    nop                                           ; $7289: $00
    add c                                         ; $728A: $81
    ld e, l                                       ; $728B: $5D
    dec b                                         ; $728C: $05
    dec b                                         ; $728D: $05
    ld b, l                                       ; $728E: $45
    pop de                                        ; $728F: $D1
    nop                                           ; $7290: $00
    jr nz, jr_017_723E                            ; $7291: $20 $AB

    ld d, b                                       ; $7293: $50
    ld [hl+], a                                   ; $7294: $22
    dec b                                         ; $7295: $05
    ld b, b                                       ; $7296: $40

jr_017_7297:
    ld b, l                                       ; $7297: $45
    rla                                           ; $7298: $17
    ld [hl], h                                    ; $7299: $74
    ld [hl], d                                    ; $729A: $72
    dec b                                         ; $729B: $05
    nop                                           ; $729C: $00
    db $ED                                        ; $729D: $ED
    ld d, b                                       ; $729E: $50
    dec b                                         ; $729F: $05
    dec b                                         ; $72A0: $05
    ld b, l                                       ; $72A1: $45
    pop de                                        ; $72A2: $D1
    nop                                           ; $72A3: $00
    jr nz, jr_017_72DE                            ; $72A4: $20 $38

jr_017_72A6:
    ld e, h                                       ; $72A6: $5C
    ld [hl+], a                                   ; $72A7: $22
    dec b                                         ; $72A8: $05
    ld b, b                                       ; $72A9: $40
    ld bc, $3E31                                  ; $72AA: $01 $31 $3E
    ld b, l                                       ; $72AD: $45
    rla                                           ; $72AE: $17
    ld [hl], h                                    ; $72AF: $74
    ld [hl], d                                    ; $72B0: $72
    ld bc, $2017                                  ; $72B1: $01 $17 $20
    ld b, l                                       ; $72B4: $45
    cpl                                           ; $72B5: $2F
    scf                                           ; $72B6: $37
    ld c, h                                       ; $72B7: $4C
    sub e                                         ; $72B8: $93
    ld h, l                                       ; $72B9: $65
    ld c, b                                       ; $72BA: $48
    ld d, d                                       ; $72BB: $52
    ld c, a                                       ; $72BC: $4F
    ld h, h                                       ; $72BD: $64
    and l                                         ; $72BE: $A5
    ld d, a                                       ; $72BF: $57
    ld h, [hl]                                    ; $72C0: $66
    ret nz                                        ; $72C1: $C0

    ld e, h                                       ; $72C2: $5C
    ld hl, $000B                                  ; $72C3: $21 $0B $00
    dec b                                         ; $72C6: $05
    jr nz, jr_017_7297                            ; $72C7: $20 $CE

    ld h, e                                       ; $72C9: $63
    ld a, [bc]                                    ; $72CA: $0A
    add hl, bc                                    ; $72CB: $09
    cp [hl]                                       ; $72CC: $BE
    ret nc                                        ; $72CD: $D0

    nop                                           ; $72CE: $00
    ld [hl+], a                                   ; $72CF: $22
    jp c, $1740                                   ; $72D0: $DA $40 $17

    dec c                                         ; $72D3: $0D
    ld l, h                                       ; $72D4: $6C
    dec b                                         ; $72D5: $05
    rra                                           ; $72D6: $1F
    adc $63                                       ; $72D7: $CE $63
    ld a, [bc]                                    ; $72D9: $0A
    add hl, bc                                    ; $72DA: $09
    cp [hl]                                       ; $72DB: $BE
    ret nc                                        ; $72DC: $D0

    nop                                           ; $72DD: $00

jr_017_72DE:
    ld [hl+], a                                   ; $72DE: $22
    jp c, $1740                                   ; $72DF: $DA $40 $17

    dec c                                         ; $72E2: $0D
    ld l, h                                       ; $72E3: $6C
    dec bc                                        ; $72E4: $0B
    jr nz, @+$0D                                  ; $72E5: $20 $0B

    rra                                           ; $72E7: $1F
    ld l, e                                       ; $72E8: $6B
    inc [hl]                                      ; $72E9: $34
    dec c                                         ; $72EA: $0D
    jr nc, jr_017_7357                            ; $72EB: $30 $6A

    nop                                           ; $72ED: $00
    add b                                         ; $72EE: $80
    nop                                           ; $72EF: $00
    ld sp, $FD17                                  ; $72F0: $31 $17 $FD
    ld [hl], d                                    ; $72F3: $72
    ld [hl+], a                                   ; $72F4: $22
    adc $40                                       ; $72F5: $CE $40
    nop                                           ; $72F7: $00
    add d                                         ; $72F8: $82
    rra                                           ; $72F9: $1F
    rra                                           ; $72FA: $1F
    sub h                                         ; $72FB: $94
    ld b, d                                       ; $72FC: $42
    dec b                                         ; $72FD: $05
    nop                                           ; $72FE: $00
    add c                                         ; $72FF: $81
    ld e, l                                       ; $7300: $5D
    dec b                                         ; $7301: $05
    dec b                                         ; $7302: $05
    sbc e                                         ; $7303: $9B
    ret nc                                        ; $7304: $D0

    nop                                           ; $7305: $00
    jr nz, @-$53                                  ; $7306: $20 $AB

    ld d, b                                       ; $7308: $50
    ld [hl+], a                                   ; $7309: $22
    dec b                                         ; $730A: $05
    ld b, b                                       ; $730B: $40
    ld b, l                                       ; $730C: $45
    rla                                           ; $730D: $17
    cp b                                          ; $730E: $B8
    ld [hl], d                                    ; $730F: $72
    ld [bc], a                                    ; $7310: $02
    daa                                           ; $7311: $27
    nop                                           ; $7312: $00
    inc c                                         ; $7313: $0C
    dec bc                                        ; $7314: $0B
    ld b, l                                       ; $7315: $45
    dec e                                         ; $7316: $1D
    pop de                                        ; $7317: $D1
    ld b, c                                       ; $7318: $41
    ld [bc], a                                    ; $7319: $02
    nop                                           ; $731A: $00
    ld sp, $0F0C                                  ; $731B: $31 $0C $0F
    ld b, l                                       ; $731E: $45

jr_017_731F:
    rla                                           ; $731F: $17
    dec bc                                        ; $7320: $0B
    halt                                          ; $7321: $76
    ld [bc], a                                    ; $7322: $02
    ld e, $25                                     ; $7323: $1E $25
    nop                                           ; $7325: $00
    ld sp, $1A45                                  ; $7326: $31 $45 $1A
    cp c                                          ; $7329: $B9
    ld l, b                                       ; $732A: $68
    ld [bc], a                                    ; $732B: $02
    nop                                           ; $732C: $00
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    nop                                           ; $732F: $00
    jr nc, jr_017_731F                            ; $7330: $30 $ED

    ld d, [hl]                                    ; $7332: $56
    daa                                           ; $7333: $27
    ld b, a                                       ; $7334: $47
    ld [$4E17], sp                                ; $7335: $08 $17 $4E
    ld [hl], e                                    ; $7338: $73
    rla                                           ; $7339: $17
    ld h, e                                       ; $733A: $63
    ld [hl], e                                    ; $733B: $73
    rla                                           ; $733C: $17
    ld [hl], c                                    ; $733D: $71
    ld [hl], e                                    ; $733E: $73
    rla                                           ; $733F: $17
    add a                                         ; $7340: $87
    ld [hl], e                                    ; $7341: $73
    rla                                           ; $7342: $17
    xor d                                         ; $7343: $AA
    ld [hl], e                                    ; $7344: $73
    rla                                           ; $7345: $17
    cp a                                          ; $7346: $BF
    ld [hl], e                                    ; $7347: $73
    rla                                           ; $7348: $17
    call nc, $1773                                ; $7349: $D4 $73 $17
    rst $30                                       ; $734C: $F7
    ld [hl], e                                    ; $734D: $73
    dec h                                         ; $734E: $25
    ld b, $6C                                     ; $734F: $06 $6C
    dec b                                         ; $7351: $05
    ld c, h                                       ; $7352: $4C
    inc hl                                        ; $7353: $23
    ld b, b                                       ; $7354: $40
    ld l, $09                                     ; $7355: $2E $09

jr_017_7357:
    dec sp                                        ; $7357: $3B
    ld [bc], a                                    ; $7358: $02
    dec b                                         ; $7359: $05
    ld bc, $2E2B                                  ; $735A: $01 $2B $2E
    add hl, bc                                    ; $735D: $09
    inc b                                         ; $735E: $04
    inc bc                                        ; $735F: $03
    ld b, $01                                     ; $7360: $06 $01
    daa                                           ; $7362: $27
    dec h                                         ; $7363: $25
    ld b, $6C                                     ; $7364: $06 $6C
    ld b, $4C                                     ; $7366: $06 $4C
    inc hl                                        ; $7368: $23
    ld b, b                                       ; $7369: $40
    ld l, $09                                     ; $736A: $2E $09
    dec a                                         ; $736C: $3D
    ld b, $0D                                     ; $736D: $06 $0D
    ld bc, $2527                                  ; $736F: $01 $27 $25
    ld b, $6C                                     ; $7372: $06 $6C
    ld b, $4C                                     ; $7374: $06 $4C
    inc hl                                        ; $7376: $23
    ld b, b                                       ; $7377: $40
    ld l, $09                                     ; $7378: $2E $09
    jr c, jr_017_7380                             ; $737A: $38 $04

    add hl, bc                                    ; $737C: $09
    ld bc, $2B2B                                  ; $737D: $01 $2B $2B

jr_017_7380:
    ld l, $09                                     ; $7380: $2E $09
    dec a                                         ; $7382: $3D
    inc b                                         ; $7383: $04
    add hl, bc                                    ; $7384: $09
    ld bc, $2527                                  ; $7385: $01 $27 $25
    ld b, $6C                                     ; $7388: $06 $6C
    dec b                                         ; $738A: $05
    ld c, h                                       ; $738B: $4C
    inc hl                                        ; $738C: $23
    ld b, b                                       ; $738D: $40
    ld l, $09                                     ; $738E: $2E $09
    inc b                                         ; $7390: $04
    inc b                                         ; $7391: $04
    ld a, [bc]                                    ; $7392: $0A
    ld bc, $2E2B                                  ; $7393: $01 $2B $2E
    add hl, bc                                    ; $7396: $09
    inc b                                         ; $7397: $04
    inc bc                                        ; $7398: $03
    rlca                                          ; $7399: $07
    ld bc, $2E2B                                  ; $739A: $01 $2B $2E
    add hl, bc                                    ; $739D: $09
    ld c, c                                       ; $739E: $49
    ld bc, $0103                                  ; $739F: $01 $03 $01
    dec hl                                        ; $73A2: $2B
    ld l, $09                                     ; $73A3: $2E $09
    dec sp                                        ; $73A5: $3B
    ld bc, $0103                                  ; $73A6: $01 $03 $01
    daa                                           ; $73A9: $27
    dec h                                         ; $73AA: $25
    ld b, $6C                                     ; $73AB: $06 $6C
    inc b                                         ; $73AD: $04
    ld c, h                                       ; $73AE: $4C
    inc hl                                        ; $73AF: $23
    ld b, b                                       ; $73B0: $40
    ld l, $09                                     ; $73B1: $2E $09
    dec sp                                        ; $73B3: $3B
    ld [bc], a                                    ; $73B4: $02
    inc b                                         ; $73B5: $04
    ld bc, $2E2B                                  ; $73B6: $01 $2B $2E
    add hl, bc                                    ; $73B9: $09
    dec a                                         ; $73BA: $3D
    inc bc                                        ; $73BB: $03
    rlca                                          ; $73BC: $07
    ld bc, $2527                                  ; $73BD: $01 $27 $25
    ld b, $6C                                     ; $73C0: $06 $6C
    dec b                                         ; $73C2: $05
    ld c, h                                       ; $73C3: $4C
    inc hl                                        ; $73C4: $23
    ld b, b                                       ; $73C5: $40
    ld l, $09                                     ; $73C6: $2E $09
    inc b                                         ; $73C8: $04
    ld [bc], a                                    ; $73C9: $02
    inc b                                         ; $73CA: $04
    ld bc, $2E2B                                  ; $73CB: $01 $2B $2E
    add hl, bc                                    ; $73CE: $09
    jr c, jr_017_73D4                             ; $73CF: $38 $03

    ld b, $01                                     ; $73D1: $06 $01
    daa                                           ; $73D3: $27

jr_017_73D4:
    dec h                                         ; $73D4: $25
    ld b, $6C                                     ; $73D5: $06 $6C
    ld b, $4C                                     ; $73D7: $06 $4C
    inc hl                                        ; $73D9: $23
    ld b, b                                       ; $73DA: $40
    ld l, $09                                     ; $73DB: $2E $09
    dec a                                         ; $73DD: $3D
    inc bc                                        ; $73DE: $03
    ld b, $01                                     ; $73DF: $06 $01
    dec hl                                        ; $73E1: $2B
    ld l, $09                                     ; $73E2: $2E $09
    jr c, @+$06                                   ; $73E4: $38 $04

    ld [$2B01], sp                                ; $73E6: $08 $01 $2B
    ld l, $09                                     ; $73E9: $2E $09
    inc b                                         ; $73EB: $04
    ld [bc], a                                    ; $73EC: $02
    inc b                                         ; $73ED: $04
    ld bc, $2E2B                                  ; $73EE: $01 $2B $2E
    add hl, bc                                    ; $73F1: $09
    dec sp                                        ; $73F2: $3B
    ld [bc], a                                    ; $73F3: $02
    inc bc                                        ; $73F4: $03
    ld bc, $2527                                  ; $73F5: $01 $27 $25
    ld b, $6C                                     ; $73F8: $06 $6C
    dec b                                         ; $73FA: $05
    ld c, h                                       ; $73FB: $4C
    inc hl                                        ; $73FC: $23
    ld b, b                                       ; $73FD: $40
    ld l, $09                                     ; $73FE: $2E $09
    dec sp                                        ; $7400: $3B
    dec b                                         ; $7401: $05
    add hl, bc                                    ; $7402: $09
    ld bc, $0227                                  ; $7403: $01 $27 $02
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    jr nc, @-$11                                  ; $740A: $30 $ED

    ld d, [hl]                                    ; $740C: $56
    jr nz, @+$27                                  ; $740D: $20 $25

jr_017_740F:
    ld b, $6C                                     ; $740F: $06 $6C
    ld b, $4C                                     ; $7411: $06 $4C
    inc hl                                        ; $7413: $23
    ld b, b                                       ; $7414: $40
    xor d                                         ; $7415: $AA
    db $D3                                        ; $7416: $D3
    ret nc                                        ; $7417: $D0

    rlca                                          ; $7418: $07
    nop                                           ; $7419: $00
    ld l, $09                                     ; $741A: $2E $09
    ld [$0A06], sp                                ; $741C: $08 $06 $0A
    nop                                           ; $741F: $00
    daa                                           ; $7420: $27
    sub e                                         ; $7421: $93
    ld h, l                                       ; $7422: $65
    sub l                                         ; $7423: $95
    ld b, c                                       ; $7424: $41
    ld c, a                                       ; $7425: $4F
    ld h, h                                       ; $7426: $64
    adc b                                         ; $7427: $88
    ld b, c                                       ; $7428: $41
    ld h, [hl]                                    ; $7429: $66
    ret nz                                        ; $742A: $C0

    ld e, h                                       ; $742B: $5C
    ld hl, $0005                                  ; $742C: $21 $05 $00
    add c                                         ; $742F: $81
    ld e, l                                       ; $7430: $5D
    dec b                                         ; $7431: $05
    dec b                                         ; $7432: $05

jr_017_7433:
    call $00D0                                    ; $7433: $CD $D0 $00
    jr nz, jr_017_7433                            ; $7436: $20 $FB

    ld d, b                                       ; $7438: $50
    ld [hl+], a                                   ; $7439: $22
    dec b                                         ; $743A: $05
    ld b, b                                       ; $743B: $40
    dec bc                                        ; $743C: $0B
    nop                                           ; $743D: $00
    dec b                                         ; $743E: $05
    jr nz, jr_017_740F                            ; $743F: $20 $CE

    ld h, e                                       ; $7441: $63
    ld a, [bc]                                    ; $7442: $0A
    add hl, bc                                    ; $7443: $09
    ld [hl], d                                    ; $7444: $72
    pop de                                        ; $7445: $D1
    nop                                           ; $7446: $00
    ld [hl+], a                                   ; $7447: $22
    jp c, $1740                                   ; $7448: $DA $40 $17

    dec hl                                        ; $744B: $2B
    ld [hl], e                                    ; $744C: $73
    dec b                                         ; $744D: $05
    rra                                           ; $744E: $1F
    adc $63                                       ; $744F: $CE $63
    ld a, [bc]                                    ; $7451: $0A
    add hl, bc                                    ; $7452: $09
    ld [hl], d                                    ; $7453: $72
    pop de                                        ; $7454: $D1
    nop                                           ; $7455: $00
    ld [hl+], a                                   ; $7456: $22
    jp c, $1740                                   ; $7457: $DA $40 $17

    dec hl                                        ; $745A: $2B
    ld [hl], e                                    ; $745B: $73
    dec bc                                        ; $745C: $0B
    jr nz, @+$0D                                  ; $745D: $20 $0B

    rra                                           ; $745F: $1F
    ld l, e                                       ; $7460: $6B
    inc [hl]                                      ; $7461: $34
    dec c                                         ; $7462: $0D
    jr nc, jr_017_74CF                            ; $7463: $30 $6A

    nop                                           ; $7465: $00
    add b                                         ; $7466: $80
    nop                                           ; $7467: $00
    ld sp, $2117                                  ; $7468: $31 $17 $21
    ld [hl], h                                    ; $746B: $74
    ld [hl+], a                                   ; $746C: $22
    adc $40                                       ; $746D: $CE $40
    nop                                           ; $746F: $00
    add d                                         ; $7470: $82
    rra                                           ; $7471: $1F
    ld h, $94                                     ; $7472: $26 $94
    ld b, d                                       ; $7474: $42
    ld [bc], a                                    ; $7475: $02
    ld sp, $0F00                                  ; $7476: $31 $00 $0F
    inc c                                         ; $7479: $0C
    ld b, l                                       ; $747A: $45
    rla                                           ; $747B: $17
    ld hl, $0274                                  ; $747C: $21 $74 $02
    nop                                           ; $747F: $00
    daa                                           ; $7480: $27
    dec bc                                        ; $7481: $0B
    dec bc                                        ; $7482: $0B
    ld b, l                                       ; $7483: $45
    rla                                           ; $7484: $17
    jr c, @+$7A                                   ; $7485: $38 $78

    sbc a                                         ; $7487: $9F
    ld d, d                                       ; $7488: $52
    ld c, a                                       ; $7489: $4F
    ld b, c                                       ; $748A: $41
    ld b, c                                       ; $748B: $41
    ld b, c                                       ; $748C: $41
    ld b, c                                       ; $748D: $41
    ld b, c                                       ; $748E: $41
    ld d, d                                       ; $748F: $52
    ld d, d                                       ; $7490: $52
    ld hl, $2121                                  ; $7491: $21 $21 $21
    cp $FD                                        ; $7494: $FE $FD
    sbc d                                         ; $7496: $9A
    ld e, b                                       ; $7497: $58
    ld bc, $9F42                                  ; $7498: $01 $42 $9F
    ld d, b                                       ; $749B: $50
    ld d, l                                       ; $749C: $55
    ld c, [hl]                                    ; $749D: $4E
    ld d, h                                       ; $749E: $54
    ld hl, $FDFE                                  ; $749F: $21 $FE $FD
    sbc d                                         ; $74A2: $9A
    ld e, b                                       ; $74A3: $58
    ld [bc], a                                    ; $74A4: $02
    ld b, d                                       ; $74A5: $42
    sbc e                                         ; $74A6: $9B
    ld a, b                                       ; $74A7: $78
    ld [hl], b                                    ; $74A8: $70
    sbc a                                         ; $74A9: $9F
    ld b, c                                       ; $74AA: $41
    ld [hl], d                                    ; $74AB: $72
    ld h, l                                       ; $74AC: $65
    jr nz, jr_017_7528                            ; $74AD: $20 $79

    ld l, a                                       ; $74AF: $6F
    ld [hl], l                                    ; $74B0: $75
    jr nz, jr_017_7514                            ; $74B1: $20 $61

    ld l, h                                       ; $74B3: $6C
    ld l, h                                       ; $74B4: $6C
    rst $38                                       ; $74B5: $FF
    ld [hl], d                                    ; $74B6: $72
    ld l, c                                       ; $74B7: $69
    ld h, a                                       ; $74B8: $67
    ld l, b                                       ; $74B9: $68
    ld [hl], h                                    ; $74BA: $74
    ccf                                           ; $74BB: $3F
    cp $FD                                        ; $74BC: $FE $FD
    sbc e                                         ; $74BE: $9B
    ld c, b                                       ; $74BF: $48
    ld a, b                                       ; $74C0: $78
    sbc a                                         ; $74C1: $9F
    ld e, c                                       ; $74C2: $59
    ld h, l                                       ; $74C3: $65
    ld [hl], e                                    ; $74C4: $73
    inc l                                         ; $74C5: $2C
    jr nz, jr_017_753C                            ; $74C6: $20 $74

    ld l, b                                       ; $74C8: $68
    ld h, c                                       ; $74C9: $61
    ld l, [hl]                                    ; $74CA: $6E
    ld l, e                                       ; $74CB: $6B
    ld [hl], e                                    ; $74CC: $73
    rst $38                                       ; $74CD: $FF
    ld [hl], h                                    ; $74CE: $74

jr_017_74CF:
    ld l, a                                       ; $74CF: $6F
    jr nz, jr_017_754B                            ; $74D0: $20 $79

    ld l, a                                       ; $74D2: $6F
    ld [hl], l                                    ; $74D3: $75
    ld l, $FE                                     ; $74D4: $2E $FE
    ld c, c                                       ; $74D6: $49
    jr nz, jr_017_753D                            ; $74D7: $20 $64

    ld l, c                                       ; $74D9: $69
    ld h, h                                       ; $74DA: $64
    ld l, [hl]                                    ; $74DB: $6E
    daa                                           ; $74DC: $27
    ld [hl], h                                    ; $74DD: $74
    rst $38                                       ; $74DE: $FF
    ld [hl], e                                    ; $74DF: $73
    ld h, l                                       ; $74E0: $65
    ld h, l                                       ; $74E1: $65
    jr nz, jr_017_7558                            ; $74E2: $20 $74

    ld l, b                                       ; $74E4: $68
    ld h, c                                       ; $74E5: $61
    ld [hl], h                                    ; $74E6: $74
    jr nz, jr_017_7558                            ; $74E7: $20 $6F

    ld l, [hl]                                    ; $74E9: $6E
    ld h, l                                       ; $74EA: $65
    ld l, $2E                                     ; $74EB: $2E $2E
    ld l, $FE                                     ; $74ED: $2E $FE
    ld l, l                                       ; $74EF: $6D
    ld [hl], l                                    ; $74F0: $75
    ld [hl], e                                    ; $74F1: $73
    ld [hl], h                                    ; $74F2: $74
    jr nz, jr_017_7557                            ; $74F3: $20 $62

    ld h, l                                       ; $74F5: $65
    rst $38                                       ; $74F6: $FF
    ld h, a                                       ; $74F7: $67
    ld h, l                                       ; $74F8: $65
    ld [hl], h                                    ; $74F9: $74
    ld [hl], h                                    ; $74FA: $74
    ld l, c                                       ; $74FB: $69
    ld l, [hl]                                    ; $74FC: $6E
    ld h, a                                       ; $74FD: $67
    jr nz, jr_017_7572                            ; $74FE: $20 $72

    ld [hl], l                                    ; $7500: $75
    ld [hl], e                                    ; $7501: $73
    ld [hl], h                                    ; $7502: $74
    ld a, c                                       ; $7503: $79
    ld l, $FE                                     ; $7504: $2E $FE
    ld c, l                                       ; $7506: $4D
    ld a, c                                       ; $7507: $79
    jr nz, jr_017_7578                            ; $7508: $20 $6E

    ld h, c                                       ; $750A: $61
    ld l, l                                       ; $750B: $6D
    ld h, l                                       ; $750C: $65
    rst $38                                       ; $750D: $FF
    ld l, c                                       ; $750E: $69
    ld [hl], e                                    ; $750F: $73
    jr nz, jr_017_7569                            ; $7510: $20 $57

    ld h, l                                       ; $7512: $65
    ld l, [hl]                                    ; $7513: $6E

jr_017_7514:
    ld h, e                                       ; $7514: $63
    ld h, l                                       ; $7515: $65
    ld l, $FE                                     ; $7516: $2E $FE
    db $FD                                        ; $7518: $FD
    sbc e                                         ; $7519: $9B
    ld a, b                                       ; $751A: $78
    ld [hl], b                                    ; $751B: $70
    sbc a                                         ; $751C: $9F
    ld c, c                                       ; $751D: $49
    daa                                           ; $751E: $27
    ld l, l                                       ; $751F: $6D
    jr nz, jr_017_7576                            ; $7520: $20 $54

    ld l, a                                       ; $7522: $6F
    ld l, [hl]                                    ; $7523: $6E
    ld a, c                                       ; $7524: $79
    ld l, $FE                                     ; $7525: $2E $FE
    db $FD                                        ; $7527: $FD

jr_017_7528:
    sbc e                                         ; $7528: $9B
    ld c, b                                       ; $7529: $48
    ld a, b                                       ; $752A: $78
    sbc a                                         ; $752B: $9F
    ld d, a                                       ; $752C: $57
    ld h, l                                       ; $752D: $65
    ld l, h                                       ; $752E: $6C
    ld l, h                                       ; $752F: $6C
    jr nz, jr_017_7586                            ; $7530: $20 $54

    ld l, a                                       ; $7532: $6F
    ld l, [hl]                                    ; $7533: $6E
    ld a, c                                       ; $7534: $79
    inc l                                         ; $7535: $2C
    jr nz, @+$6B                                  ; $7536: $20 $69

    ld [hl], h                                    ; $7538: $74
    rst $38                                       ; $7539: $FF
    ld [hl], e                                    ; $753A: $73
    ld h, l                                       ; $753B: $65

jr_017_753C:
    ld h, l                                       ; $753C: $65

jr_017_753D:
    ld l, l                                       ; $753D: $6D
    ld [hl], e                                    ; $753E: $73
    jr nz, jr_017_758A                            ; $753F: $20 $49

    jr nz, jr_017_75B2                            ; $7541: $20 $6F

    ld [hl], a                                    ; $7543: $77
    ld h, l                                       ; $7544: $65
    jr nz, jr_017_75C0                            ; $7545: $20 $79

    ld l, a                                       ; $7547: $6F
    ld [hl], l                                    ; $7548: $75
    rst $38                                       ; $7549: $FF
    ld h, c                                       ; $754A: $61

jr_017_754B:
    jr nz, @+$66                                  ; $754B: $20 $64

    ld h, l                                       ; $754D: $65
    ld h, d                                       ; $754E: $62
    ld [hl], h                                    ; $754F: $74
    ld l, $20                                     ; $7550: $2E $20
    ld c, c                                       ; $7552: $49
    jr nz, jr_017_75C1                            ; $7553: $20 $6C

    ld l, c                                       ; $7555: $69
    halt                                          ; $7556: $76

jr_017_7557:
    ld h, l                                       ; $7557: $65

jr_017_7558:
    cp $6E                                        ; $7558: $FE $6E
    ld h, l                                       ; $755A: $65
    ld h, c                                       ; $755B: $61
    ld [hl], d                                    ; $755C: $72
    jr nz, jr_017_75C7                            ; $755D: $20 $68

    ld h, l                                       ; $755F: $65
    ld [hl], d                                    ; $7560: $72
    ld h, l                                       ; $7561: $65
    inc l                                         ; $7562: $2C
    jr nz, jr_017_75D8                            ; $7563: $20 $73

    ld l, a                                       ; $7565: $6F
    rst $38                                       ; $7566: $FF
    ld a, c                                       ; $7567: $79
    ld l, a                                       ; $7568: $6F

jr_017_7569:
    ld [hl], l                                    ; $7569: $75
    jr nz, jr_017_75CF                            ; $756A: $20 $63

    ld h, c                                       ; $756C: $61
    ld l, [hl]                                    ; $756D: $6E
    jr nz, jr_017_75D3                            ; $756E: $20 $63

    ld l, a                                       ; $7570: $6F
    ld l, l                                       ; $7571: $6D

jr_017_7572:
    ld h, l                                       ; $7572: $65

jr_017_7573:
    jr nz, jr_017_7573                            ; $7573: $20 $FE

    ld h, c                                       ; $7575: $61

jr_017_7576:
    ld [hl], d                                    ; $7576: $72
    ld l, a                                       ; $7577: $6F

jr_017_7578:
    ld [hl], l                                    ; $7578: $75
    ld l, [hl]                                    ; $7579: $6E
    ld h, h                                       ; $757A: $64
    jr nz, jr_017_75F1                            ; $757B: $20 $74

    ld l, a                                       ; $757D: $6F
    jr nz, jr_017_75ED                            ; $757E: $20 $6D

    ld a, c                                       ; $7580: $79
    rst $38                                       ; $7581: $FF
    ld [hl], b                                    ; $7582: $70
    ld l, h                                       ; $7583: $6C
    ld h, c                                       ; $7584: $61
    ld h, e                                       ; $7585: $63

jr_017_7586:
    ld h, l                                       ; $7586: $65
    jr nz, @+$63                                  ; $7587: $20 $61

    ld l, [hl]                                    ; $7589: $6E

jr_017_758A:
    ld a, c                                       ; $758A: $79
    jr nz, jr_017_7601                            ; $758B: $20 $74

    ld l, c                                       ; $758D: $69
    ld l, l                                       ; $758E: $6D
    ld h, l                                       ; $758F: $65
    cp $79                                        ; $7590: $FE $79
    ld l, a                                       ; $7592: $6F
    ld [hl], l                                    ; $7593: $75
    jr nz, jr_017_7604                            ; $7594: $20 $6E

    ld h, l                                       ; $7596: $65
    ld h, l                                       ; $7597: $65
    ld h, h                                       ; $7598: $64
    jr nz, jr_017_75FC                            ; $7599: $20 $61

    rst $38                                       ; $759B: $FF
    ld [hl], d                                    ; $759C: $72
    ld h, l                                       ; $759D: $65
    ld [hl], e                                    ; $759E: $73
    ld [hl], h                                    ; $759F: $74
    ld l, $20                                     ; $75A0: $2E $20
    ld b, h                                       ; $75A2: $44
    ld l, a                                       ; $75A3: $6F
    ld l, [hl]                                    ; $75A4: $6E
    daa                                           ; $75A5: $27
    ld [hl], h                                    ; $75A6: $74
    cp $77                                        ; $75A7: $FE $77
    ld l, a                                       ; $75A9: $6F
    ld [hl], d                                    ; $75AA: $72
    ld [hl], d                                    ; $75AB: $72
    ld a, c                                       ; $75AC: $79
    jr nz, jr_017_7618                            ; $75AD: $20 $69

    ld h, [hl]                                    ; $75AF: $66
    jr nz, jr_017_75FB                            ; $75B0: $20 $49

jr_017_75B2:
    daa                                           ; $75B2: $27
    ld l, l                                       ; $75B3: $6D
    rst $38                                       ; $75B4: $FF
    ld l, [hl]                                    ; $75B5: $6E
    ld l, a                                       ; $75B6: $6F
    ld [hl], h                                    ; $75B7: $74
    jr nz, jr_017_7622                            ; $75B8: $20 $68

    ld l, a                                       ; $75BA: $6F
    ld l, l                                       ; $75BB: $6D
    ld h, l                                       ; $75BC: $65
    inc l                                         ; $75BD: $2C
    jr nz, @+$68                                  ; $75BE: $20 $66

jr_017_75C0:
    ld h, l                                       ; $75C0: $65

jr_017_75C1:
    ld h, l                                       ; $75C1: $65
    ld l, h                                       ; $75C2: $6C
    cp $66                                        ; $75C3: $FE $66
    ld [hl], d                                    ; $75C5: $72
    ld h, l                                       ; $75C6: $65

jr_017_75C7:
    ld h, l                                       ; $75C7: $65
    jr nz, @+$76                                  ; $75C8: $20 $74

    ld l, a                                       ; $75CA: $6F
    jr nz, jr_017_7634                            ; $75CB: $20 $67

    ld l, a                                       ; $75CD: $6F
    rst $38                                       ; $75CE: $FF

jr_017_75CF:
    ld [hl], h                                    ; $75CF: $74
    ld l, b                                       ; $75D0: $68
    ld h, l                                       ; $75D1: $65
    ld [hl], d                                    ; $75D2: $72

jr_017_75D3:
    ld h, l                                       ; $75D3: $65
    jr nz, jr_017_7637                            ; $75D4: $20 $61

    ld l, [hl]                                    ; $75D6: $6E
    ld a, c                                       ; $75D7: $79

jr_017_75D8:
    ld [hl], h                                    ; $75D8: $74
    ld l, c                                       ; $75D9: $69
    ld l, l                                       ; $75DA: $6D
    ld h, l                                       ; $75DB: $65
    ld l, $FE                                     ; $75DC: $2E $FE
    db $FD                                        ; $75DE: $FD
    sbc e                                         ; $75DF: $9B
    ld a, b                                       ; $75E0: $78
    ld [hl], b                                    ; $75E1: $70
    sbc a                                         ; $75E2: $9F
    ld d, h                                       ; $75E3: $54
    ld l, b                                       ; $75E4: $68
    ld h, c                                       ; $75E5: $61
    ld l, [hl]                                    ; $75E6: $6E
    ld l, e                                       ; $75E7: $6B
    ld [hl], e                                    ; $75E8: $73
    ld l, $FE                                     ; $75E9: $2E $FE
    db $FD                                        ; $75EB: $FD
    sbc e                                         ; $75EC: $9B

jr_017_75ED:
    ld c, b                                       ; $75ED: $48
    ld a, b                                       ; $75EE: $78
    sbc a                                         ; $75EF: $9F
    ld d, e                                       ; $75F0: $53

jr_017_75F1:
    ld h, l                                       ; $75F1: $65
    ld h, l                                       ; $75F2: $65
    jr nz, jr_017_766E                            ; $75F3: $20 $79

    ld l, a                                       ; $75F5: $6F
    ld [hl], l                                    ; $75F6: $75
    jr nz, jr_017_765A                            ; $75F7: $20 $61

    ld [hl], d                                    ; $75F9: $72
    ld l, a                                       ; $75FA: $6F

jr_017_75FB:
    ld [hl], l                                    ; $75FB: $75

jr_017_75FC:
    ld l, [hl]                                    ; $75FC: $6E
    ld h, h                                       ; $75FD: $64
    inc l                                         ; $75FE: $2C
    rst $38                                       ; $75FF: $FF
    ld d, h                                       ; $7600: $54

jr_017_7601:
    ld l, a                                       ; $7601: $6F
    ld l, [hl]                                    ; $7602: $6E
    ld a, c                                       ; $7603: $79

jr_017_7604:
    ld hl, $FDFE                                  ; $7604: $21 $FE $FD

jr_017_7607:
    sbc d                                         ; $7607: $9A
    ld e, b                                       ; $7608: $58
    ld bc, $4342                                  ; $7609: $01 $42 $43
    ld [$040F], sp                                ; $760C: $08 $0F $04
    dec b                                         ; $760F: $05
    ld b, $0A                                     ; $7610: $06 $0A
    nop                                           ; $7612: $00
    dec h                                         ; $7613: $25
    and c                                         ; $7614: $A1
    ld bc, $6D17                                  ; $7615: $01 $17 $6D

jr_017_7618:
    halt                                          ; $7618: $76
    sub e                                         ; $7619: $93
    ld h, l                                       ; $761A: $65
    and h                                         ; $761B: $A4
    ld b, c                                       ; $761C: $41
    ld c, a                                       ; $761D: $4F
    ld h, h                                       ; $761E: $64
    sub l                                         ; $761F: $95
    ld b, c                                       ; $7620: $41
    ld h, [hl]                                    ; $7621: $66

jr_017_7622:
    ret nz                                        ; $7622: $C0

    ld e, h                                       ; $7623: $5C
    ld hl, $0005                                  ; $7624: $21 $05 $00
    add c                                         ; $7627: $81
    ld e, l                                       ; $7628: $5D
    dec b                                         ; $7629: $05
    dec b                                         ; $762A: $05

jr_017_762B:
    rst $38                                       ; $762B: $FF
    ret nc                                        ; $762C: $D0

    nop                                           ; $762D: $00
    jr nz, jr_017_762B                            ; $762E: $20 $FB

    ld d, b                                       ; $7630: $50
    ld [hl+], a                                   ; $7631: $22
    dec b                                         ; $7632: $05
    ld b, b                                       ; $7633: $40

jr_017_7634:
    dec bc                                        ; $7634: $0B
    nop                                           ; $7635: $00
    dec b                                         ; $7636: $05

jr_017_7637:
    jr nz, jr_017_7607                            ; $7637: $20 $CE

    ld h, e                                       ; $7639: $63
    ld a, [bc]                                    ; $763A: $0A
    add hl, bc                                    ; $763B: $09
    call z, $00D1                                 ; $763C: $CC $D1 $00
    ld [hl+], a                                   ; $763F: $22
    jp c, $1740                                   ; $7640: $DA $40 $17

    dec hl                                        ; $7643: $2B
    ld [hl], e                                    ; $7644: $73
    dec b                                         ; $7645: $05
    rra                                           ; $7646: $1F
    adc $63                                       ; $7647: $CE $63
    ld a, [bc]                                    ; $7649: $0A
    add hl, bc                                    ; $764A: $09
    call z, $00D1                                 ; $764B: $CC $D1 $00
    ld [hl+], a                                   ; $764E: $22
    jp c, $1740                                   ; $764F: $DA $40 $17

    dec hl                                        ; $7652: $2B
    ld [hl], e                                    ; $7653: $73
    dec bc                                        ; $7654: $0B
    jr nz, @+$0D                                  ; $7655: $20 $0B

    rra                                           ; $7657: $1F
    ld l, e                                       ; $7658: $6B
    inc [hl]                                      ; $7659: $34

jr_017_765A:
    dec c                                         ; $765A: $0D
    jr nc, jr_017_76C7                            ; $765B: $30 $6A

    nop                                           ; $765D: $00
    add b                                         ; $765E: $80
    nop                                           ; $765F: $00
    ld sp, $0B17                                  ; $7660: $31 $17 $0B
    halt                                          ; $7663: $76
    ld [hl+], a                                   ; $7664: $22

jr_017_7665:
    adc $40                                       ; $7665: $CE $40
    nop                                           ; $7667: $00
    add d                                         ; $7668: $82
    rra                                           ; $7669: $1F
    ld h, $94                                     ; $766A: $26 $94
    ld b, d                                       ; $766C: $42
    sub e                                         ; $766D: $93

jr_017_766E:
    ld h, l                                       ; $766E: $65
    and h                                         ; $766F: $A4
    ld b, c                                       ; $7670: $41
    ld c, a                                       ; $7671: $4F
    ld h, h                                       ; $7672: $64
    sub l                                         ; $7673: $95
    ld b, c                                       ; $7674: $41
    ld h, [hl]                                    ; $7675: $66
    ret nz                                        ; $7676: $C0

    ld e, h                                       ; $7677: $5C
    ld hl, $0005                                  ; $7678: $21 $05 $00
    ld l, e                                       ; $767B: $6B
    ld c, d                                       ; $767C: $4A
    ld sp, $BB0D                                  ; $767D: $31 $0D $BB
    jp nc, $1700                                  ; $7680: $D2 $00 $17

    sub $76                                       ; $7683: $D6 $76
    ld [hl+], a                                   ; $7685: $22

jr_017_7686:
    dec b                                         ; $7686: $05
    ld b, b                                       ; $7687: $40
    dec b                                         ; $7688: $05
    ld [bc], a                                    ; $7689: $02
    ld l, e                                       ; $768A: $6B
    ld c, d                                       ; $768B: $4A
    jr nz, jr_017_769A                            ; $768C: $20 $0C

    ld a, b                                       ; $768E: $78
    jp nc, $1740                                  ; $768F: $D2 $40 $17

    inc hl                                        ; $7692: $23
    ld [hl], a                                    ; $7693: $77
    ld [hl+], a                                   ; $7694: $22
    dec b                                         ; $7695: $05
    ld b, b                                       ; $7696: $40
    dec b                                         ; $7697: $05
    inc bc                                        ; $7698: $03
    ld l, e                                       ; $7699: $6B

jr_017_769A:
    ld c, d                                       ; $769A: $4A
    dec e                                         ; $769B: $1D
    inc c                                         ; $769C: $0C
    ld [hl], l                                    ; $769D: $75
    jp nc, $1700                                  ; $769E: $D2 $00 $17

    ld c, d                                       ; $76A1: $4A
    ld [hl], a                                    ; $76A2: $77
    ld [hl+], a                                   ; $76A3: $22

jr_017_76A4:
    dec b                                         ; $76A4: $05
    ld b, b                                       ; $76A5: $40
    dec b                                         ; $76A6: $05
    inc b                                         ; $76A7: $04
    ld l, e                                       ; $76A8: $6B
    ld c, d                                       ; $76A9: $4A
    ld [hl+], a                                   ; $76AA: $22
    inc c                                         ; $76AB: $0C
    ld a, d                                       ; $76AC: $7A
    jp nc, $1700                                  ; $76AD: $D2 $00 $17

    ld l, e                                       ; $76B0: $6B
    ld [hl], a                                    ; $76B1: $77
    ld [hl+], a                                   ; $76B2: $22
    dec b                                         ; $76B3: $05
    ld b, b                                       ; $76B4: $40
    dec bc                                        ; $76B5: $0B

jr_017_76B6:
    nop                                           ; $76B6: $00
    ld l, e                                       ; $76B7: $6B
    ld b, b                                       ; $76B8: $40
    dec c                                         ; $76B9: $0D
    ld h, b                                       ; $76BA: $60
    ld c, b                                       ; $76BB: $48
    nop                                           ; $76BC: $00
    add b                                         ; $76BD: $80

jr_017_76BE:
    nop                                           ; $76BE: $00
    ld l, e                                       ; $76BF: $6B
    jr nc, @+$0D                                  ; $76C0: $30 $0B

    ld h, b                                       ; $76C2: $60
    ld l, a                                       ; $76C3: $6F
    nop                                           ; $76C4: $00
    add h                                         ; $76C5: $84
    nop                                           ; $76C6: $00

jr_017_76C7:
    dec bc                                        ; $76C7: $0B
    ld [bc], a                                    ; $76C8: $02
    dec bc                                        ; $76C9: $0B
    inc bc                                        ; $76CA: $03
    add h                                         ; $76CB: $84
    jr nc, jr_017_76DA                            ; $76CC: $30 $0C

    rra                                           ; $76CE: $1F
    jr nz, jr_017_7665                            ; $76CF: $20 $94

    xor a                                         ; $76D1: $AF
    dec h                                         ; $76D2: $25
    and c                                         ; $76D3: $A1

jr_017_76D4:
    ld bc, $1642                                  ; $76D4: $01 $42 $16
    jr nz, jr_017_76B6                            ; $76D7: $20 $DD

    ld c, a                                       ; $76D9: $4F

jr_017_76DA:
    ld b, b                                       ; $76DA: $40
    ld bc, $0000                                  ; $76DB: $01 $00 $00
    ld e, e                                       ; $76DE: $5B
    rla                                           ; $76DF: $17
    add a                                         ; $76E0: $87
    ld [hl], h                                    ; $76E1: $74
    inc d                                         ; $76E2: $14
    jr nz, jr_017_76A4                            ; $76E3: $20 $BF

    ld d, b                                       ; $76E5: $50
    ld h, d                                       ; $76E6: $62
    ld bc, $2016                                  ; $76E7: $01 $16 $20
    ld [hl], a                                    ; $76EA: $77
    ld d, b                                       ; $76EB: $50
    inc h                                         ; $76EC: $24
    cp $00                                        ; $76ED: $FE $00
    jr nz, @+$4F                                  ; $76EF: $20 $4D

    ld d, b                                       ; $76F1: $50
    ld [rRAMG], sp                                ; $76F2: $08 $00 $00
    jr nz, jr_017_776E                            ; $76F5: $20 $77

    ld d, b                                       ; $76F7: $50
    inc h                                         ; $76F8: $24
    cp $00                                        ; $76F9: $FE $00
    nop                                           ; $76FB: $00
    inc d                                         ; $76FC: $14
    jr nz, jr_017_76BE                            ; $76FD: $20 $BF

    ld d, b                                       ; $76FF: $50
    ld d, [hl]                                    ; $7700: $56
    jr nz, jr_017_7686                            ; $7701: $20 $83

    inc c                                         ; $7703: $0C
    db $FC                                        ; $7704: $FC
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    ld e, h                                       ; $7707: $5C
    nop                                           ; $7708: $00
    ld [bc], a                                    ; $7709: $02
    ld d, $20                                     ; $770A: $16 $20
    ld [hl], a                                    ; $770C: $77
    ld d, b                                       ; $770D: $50
    inc b                                         ; $770E: $04
    cp $00                                        ; $770F: $FE $00
    nop                                           ; $7711: $00
    dec d                                         ; $7712: $15
    jr nz, jr_017_76D4                            ; $7713: $20 $BF

    ld d, b                                       ; $7715: $50
    ld [$3100], sp                                ; $7716: $08 $00 $31
    rla                                           ; $7719: $17
    ld a, e                                       ; $771A: $7B
    ld [hl], a                                    ; $771B: $77
    ld [hl+], a                                   ; $771C: $22
    adc $40                                       ; $771D: $CE $40
    ld b, l                                       ; $771F: $45
    rla                                           ; $7720: $17
    dec b                                         ; $7721: $05
    ld [hl], h                                    ; $7722: $74
    inc d                                         ; $7723: $14
    rrca                                          ; $7724: $0F
    ret z                                         ; $7725: $C8

    ld [hl], e                                    ; $7726: $73
    ld h, b                                       ; $7727: $60
    jr nz, @+$17                                  ; $7728: $20 $15

    rrca                                          ; $772A: $0F
    ret z                                         ; $772B: $C8

    ld [hl], e                                    ; $772C: $73
    ld b, b                                       ; $772D: $40
    rrca                                          ; $772E: $0F
    sub h                                         ; $772F: $94
    ld [hl], e                                    ; $7730: $73
    ld [$A40F], sp                                ; $7731: $08 $0F $A4
    ld [hl], e                                    ; $7734: $73
    ld [$940F], sp                                ; $7735: $08 $0F $94
    ld [hl], e                                    ; $7738: $73
    ld [$A40F], sp                                ; $7739: $08 $0F $A4
    ld [hl], e                                    ; $773C: $73
    ld [$C80F], sp                                ; $773D: $08 $0F $C8
    ld [hl], e                                    ; $7740: $73
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    ld h, b                                       ; $7743: $60
    ld [bc], a                                    ; $7744: $02
    inc d                                         ; $7745: $14
    rrca                                          ; $7746: $0F
    jp nc, $4273                                  ; $7747: $D2 $73 $42

    dec d                                         ; $774A: $15
    dec h                                         ; $774B: $25
    ld a, [hl+]                                   ; $774C: $2A
    ld b, d                                       ; $774D: $42
    nop                                           ; $774E: $00
    nop                                           ; $774F: $00
    ld h, b                                       ; $7750: $60
    jr nz, jr_017_7768                            ; $7751: $20 $15

    dec h                                         ; $7753: $25
    ld a, [hl+]                                   ; $7754: $2A
    ld b, d                                       ; $7755: $42
    jr z, jr_017_777D                             ; $7756: $28 $25

    ld l, d                                       ; $7758: $6A
    ld b, d                                       ; $7759: $42
    jr jr_017_7781                                ; $775A: $18 $25

    ld a, [hl+]                                   ; $775C: $2A
    ld b, d                                       ; $775D: $42
    jr jr_017_7785                                ; $775E: $18 $25

    jp z, $3042                                   ; $7760: $CA $42 $30

    nop                                           ; $7763: $00
    dec bc                                        ; $7764: $0B
    inc b                                         ; $7765: $04
    ld a, h                                       ; $7766: $7C
    inc hl                                        ; $7767: $23

jr_017_7768:
    inc c                                         ; $7768: $0C
    inc bc                                        ; $7769: $03
    ld b, d                                       ; $776A: $42
    dec d                                         ; $776B: $15
    dec h                                         ; $776C: $25
    ld a, [hl+]                                   ; $776D: $2A

jr_017_776E:
    ld b, d                                       ; $776E: $42
    jr nz, jr_017_7771                            ; $776F: $20 $00

jr_017_7771:
    ld e, h                                       ; $7771: $5C
    nop                                           ; $7772: $00

jr_017_7773:
    ld [bc], a                                    ; $7773: $02
    dec d                                         ; $7774: $15
    dec h                                         ; $7775: $25
    db $10                                        ; $7776: $10
    ld b, d                                       ; $7777: $42
    jr nz, jr_017_777A                            ; $7778: $20 $00

jr_017_777A:
    ld b, d                                       ; $777A: $42
    sub e                                         ; $777B: $93
    ld h, l                                       ; $777C: $65

jr_017_777D:
    and h                                         ; $777D: $A4
    ld b, c                                       ; $777E: $41
    ld c, a                                       ; $777F: $4F
    ld h, h                                       ; $7780: $64

jr_017_7781:
    sub l                                         ; $7781: $95
    ld b, c                                       ; $7782: $41
    ld h, [hl]                                    ; $7783: $66
    ret nz                                        ; $7784: $C0

jr_017_7785:
    ld e, h                                       ; $7785: $5C
    ld hl, $0005                                  ; $7786: $21 $05 $00
    ld l, e                                       ; $7789: $6B
    ld c, d                                       ; $778A: $4A
    ld [hl+], a                                   ; $778B: $22
    inc c                                         ; $778C: $0C
    ld a, d                                       ; $778D: $7A
    jp nc, $1700                                  ; $778E: $D2 $00 $17

    db $D3                                        ; $7791: $D3
    ld [hl], a                                    ; $7792: $77
    ld [hl+], a                                   ; $7793: $22
    dec b                                         ; $7794: $05

jr_017_7795:
    ld b, b                                       ; $7795: $40
    dec b                                         ; $7796: $05
    ld [bc], a                                    ; $7797: $02
    ld l, e                                       ; $7798: $6B
    ld c, d                                       ; $7799: $4A
    jr nz, jr_017_77A8                            ; $779A: $20 $0C

    ld a, b                                       ; $779C: $78
    jp nc, $1740                                  ; $779D: $D2 $40 $17

    ld [$2277], a                                 ; $77A0: $EA $77 $22
    dec b                                         ; $77A3: $05
    ld b, b                                       ; $77A4: $40
    dec b                                         ; $77A5: $05
    inc b                                         ; $77A6: $04
    ld l, e                                       ; $77A7: $6B

jr_017_77A8:
    ld c, d                                       ; $77A8: $4A
    ld [hl+], a                                   ; $77A9: $22
    inc c                                         ; $77AA: $0C
    ld a, d                                       ; $77AB: $7A
    jp nc, $1700                                  ; $77AC: $D2 $00 $17

    inc de                                        ; $77AF: $13
    ld a, b                                       ; $77B0: $78
    ld [hl+], a                                   ; $77B1: $22
    dec b                                         ; $77B2: $05
    ld b, b                                       ; $77B3: $40
    dec bc                                        ; $77B4: $0B
    nop                                           ; $77B5: $00
    ld l, e                                       ; $77B6: $6B
    ld b, b                                       ; $77B7: $40
    dec c                                         ; $77B8: $0D
    ld h, b                                       ; $77B9: $60
    ld c, b                                       ; $77BA: $48
    nop                                           ; $77BB: $00
    add b                                         ; $77BC: $80
    nop                                           ; $77BD: $00
    ld l, e                                       ; $77BE: $6B
    jr nc, jr_017_77CC                            ; $77BF: $30 $0B

    ld h, b                                       ; $77C1: $60
    ld l, a                                       ; $77C2: $6F
    nop                                           ; $77C3: $00
    add h                                         ; $77C4: $84
    nop                                           ; $77C5: $00
    dec bc                                        ; $77C6: $0B
    ld [bc], a                                    ; $77C7: $02
    add h                                         ; $77C8: $84
    jr nz, jr_017_77D7                            ; $77C9: $20 $0C

    rra                                           ; $77CB: $1F

jr_017_77CC:
    jr nz, @-$6A                                  ; $77CC: $20 $94

    xor a                                         ; $77CE: $AF
    dec h                                         ; $77CF: $25
    and c                                         ; $77D0: $A1
    ld bc, $1542                                  ; $77D1: $01 $42 $15
    jr nz, jr_017_7795                            ; $77D4: $20 $BF

    ld d, b                                       ; $77D6: $50

jr_017_77D7:
    nop                                           ; $77D7: $00
    nop                                           ; $77D8: $00
    ld h, b                                       ; $77D9: $60
    ld bc, $2015                                  ; $77DA: $01 $15 $20
    ld [hl], a                                    ; $77DD: $77
    ld d, b                                       ; $77DE: $50
    db $10                                        ; $77DF: $10
    jr nz, jr_017_7773                            ; $77E0: $20 $91

    ld d, b                                       ; $77E2: $50
    ld [$BF20], sp                                ; $77E3: $08 $20 $BF
    ld d, b                                       ; $77E6: $50
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    ld b, d                                       ; $77E9: $42
    dec d                                         ; $77EA: $15
    rrca                                          ; $77EB: $0F
    jp nc, $0073                                  ; $77EC: $D2 $73 $00

    nop                                           ; $77EF: $00
    ld e, e                                       ; $77F0: $5B
    rla                                           ; $77F1: $17
    and [hl]                                      ; $77F2: $A6
    ld [hl], h                                    ; $77F3: $74
    ld h, d                                       ; $77F4: $62
    ld bc, $1424                                  ; $77F5: $01 $24 $14
    dec d                                         ; $77F8: $15
    rrca                                          ; $77F9: $0F
    and h                                         ; $77FA: $A4
    ld [hl], e                                    ; $77FB: $73
    ld [$740F], sp                                ; $77FC: $08 $0F $74
    ld [hl], e                                    ; $77FF: $73
    db $10                                        ; $7800: $10
    rrca                                          ; $7801: $0F
    and h                                         ; $7802: $A4
    ld [hl], e                                    ; $7803: $73
    ld b, b                                       ; $7804: $40
    nop                                           ; $7805: $00
    rlca                                          ; $7806: $07
    nop                                           ; $7807: $00
    add c                                         ; $7808: $81
    ld e, l                                       ; $7809: $5D
    add hl, bc                                    ; $780A: $09
    nop                                           ; $780B: $00
    jr nz, jr_017_77D7                            ; $780C: $20 $C9

    ld d, b                                       ; $780E: $50
    rra                                           ; $780F: $1F
    ld h, $19                                     ; $7810: $26 $19
    ld b, d                                       ; $7812: $42
    dec d                                         ; $7813: $15
    dec h                                         ; $7814: $25
    db $10                                        ; $7815: $10
    ld b, d                                       ; $7816: $42
    jr nz, jr_017_7819                            ; $7817: $20 $00

jr_017_7819:
    ld d, [hl]                                    ; $7819: $56
    ld bc, $2040                                  ; $781A: $01 $40 $20
    dec d                                         ; $781D: $15
    dec h                                         ; $781E: $25
    cp d                                          ; $781F: $BA
    ld b, d                                       ; $7820: $42
    jr nz, jr_017_7823                            ; $7821: $20 $00

jr_017_7823:
    ld d, [hl]                                    ; $7823: $56

jr_017_7824:
    ld [bc], a                                    ; $7824: $02
    ld b, d                                       ; $7825: $42
    ld [bc], a                                    ; $7826: $02
    daa                                           ; $7827: $27
    nop                                           ; $7828: $00
    dec bc                                        ; $7829: $0B
    dec bc                                        ; $782A: $0B
    ld b, l                                       ; $782B: $45
    rla                                           ; $782C: $17
    dec bc                                        ; $782D: $0B
    halt                                          ; $782E: $76
    ld [bc], a                                    ; $782F: $02
    inc c                                         ; $7830: $0C
    dec b                                         ; $7831: $05
    inc de                                        ; $7832: $13
    nop                                           ; $7833: $00
    ld b, l                                       ; $7834: $45
    dec hl                                        ; $7835: $2B
    ld sp, $9372                                  ; $7836: $31 $72 $93
    ld h, l                                       ; $7839: $65
    or e                                          ; $783A: $B3
    ld b, c                                       ; $783B: $41
    ld c, a                                       ; $783C: $4F
    ld h, h                                       ; $783D: $64
    sbc [hl]                                      ; $783E: $9E
    ld b, c                                       ; $783F: $41
    ld h, [hl]                                    ; $7840: $66
    ret nz                                        ; $7841: $C0

    ld e, h                                       ; $7842: $5C
    ld hl, $0005                                  ; $7843: $21 $05 $00
    add c                                         ; $7846: $81
    ld e, l                                       ; $7847: $5D
    dec b                                         ; $7848: $05
    dec b                                         ; $7849: $05

jr_017_784A:
    call $00D0                                    ; $784A: $CD $D0 $00
    jr nz, jr_017_784A                            ; $784D: $20 $FB

    ld d, b                                       ; $784F: $50
    ld [hl+], a                                   ; $7850: $22
    dec b                                         ; $7851: $05
    ld b, b                                       ; $7852: $40
    dec b                                         ; $7853: $05
    jr nz, jr_017_7824                            ; $7854: $20 $CE

    ld h, e                                       ; $7856: $63
    ld a, [bc]                                    ; $7857: $0A
    add hl, bc                                    ; $7858: $09
    ld [hl], d                                    ; $7859: $72
    pop de                                        ; $785A: $D1
    nop                                           ; $785B: $00
    ld [hl+], a                                   ; $785C: $22
    jp c, $1740                                   ; $785D: $DA $40 $17

    dec hl                                        ; $7860: $2B
    ld [hl], e                                    ; $7861: $73
    dec b                                         ; $7862: $05
    rra                                           ; $7863: $1F
    adc $63                                       ; $7864: $CE $63
    ld a, [bc]                                    ; $7866: $0A
    add hl, bc                                    ; $7867: $09
    ld [hl], d                                    ; $7868: $72
    pop de                                        ; $7869: $D1
    nop                                           ; $786A: $00
    ld [hl+], a                                   ; $786B: $22
    jp c, $1740                                   ; $786C: $DA $40 $17

    dec hl                                        ; $786F: $2B
    ld [hl], e                                    ; $7870: $73
    dec bc                                        ; $7871: $0B
    jr nz, @+$0D                                  ; $7872: $20 $0B

    rra                                           ; $7874: $1F
    ld l, e                                       ; $7875: $6B
    inc [hl]                                      ; $7876: $34
    dec c                                         ; $7877: $0D
    jr nc, jr_017_78E4                            ; $7878: $30 $6A

    nop                                           ; $787A: $00
    add b                                         ; $787B: $80
    nop                                           ; $787C: $00
    ld sp, $3817                                  ; $787D: $31 $17 $38
    ld a, b                                       ; $7880: $78
    ld [hl+], a                                   ; $7881: $22
    adc $40                                       ; $7882: $CE $40
    dec bc                                        ; $7884: $0B
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    add d                                         ; $7887: $82
    rra                                           ; $7888: $1F
    ld h, $94                                     ; $7889: $26 $94
    ld b, d                                       ; $788B: $42
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

jr_017_78E4:
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
