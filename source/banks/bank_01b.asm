SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    ld bc, $0B0A                                  ; $4000: $01 $0A $0B
    ld b, l                                       ; $4003: $45
    dec de                                        ; $4004: $1B
    ld l, d                                       ; $4005: $6A
    ld c, [hl]                                    ; $4006: $4E
    ld [bc], a                                    ; $4007: $02
    add hl, bc                                    ; $4008: $09
    dec b                                         ; $4009: $05
    ld b, $06                                     ; $400A: $06 $06
    rlca                                          ; $400C: $07
    nop                                           ; $400D: $00
    ld l, e                                       ; $400E: $6B
    ld c, d                                       ; $400F: $4A
    add hl, bc                                    ; $4010: $09
    nop                                           ; $4011: $00
    db $20, $B5                                   ; $4012: $20 $B5
    ld d, b                                       ; $4014: $50
    ld l, [hl]                                    ; $4015: $6E
    rrca                                          ; $4016: $0F
    rst $38                                       ; $4017: $FF
    ld a, a                                       ; $4018: $7F
    halt                                          ; $4019: $76
    jr nz, jr_01B_402B                            ; $401A: $20 $0F

    ld b, l                                       ; $401C: $45
    add hl, de                                    ; $401D: $19
    inc d                                         ; $401E: $14
    ld l, h                                       ; $401F: $6C
    ld b, e                                       ; $4020: $43
    nop                                           ; $4021: $00
    dec h                                         ; $4022: $25
    and c                                         ; $4023: $A1
    ld [bc], a                                    ; $4024: $02
    dec de                                        ; $4025: $1B
    ld l, [hl]                                    ; $4026: $6E
    ld b, b                                       ; $4027: $40
    rlca                                          ; $4028: $07
    nop                                           ; $4029: $00
    ld l, e                                       ; $402A: $6B

jr_01B_402B:
    ld c, d                                       ; $402B: $4A
    add hl, bc                                    ; $402C: $09
    nop                                           ; $402D: $00
    db $20, $BF                                   ; $402E: $20 $BF
    ld d, b                                       ; $4030: $50
    sbc e                                         ; $4031: $9B
    ld a, b                                       ; $4032: $78
    ld [hl], b                                    ; $4033: $70
    sbc a                                         ; $4034: $9F
    ld d, h                                       ; $4035: $54
    ld l, b                                       ; $4036: $68
    ld h, c                                       ; $4037: $61
    ld [hl], h                                    ; $4038: $74
    daa                                           ; $4039: $27
    ld [hl], e                                    ; $403A: $73
    jr nz, jr_01B_40AC                            ; $403B: $20 $6F

    ld h, h                                       ; $403D: $64
    ld h, h                                       ; $403E: $64
    inc l                                         ; $403F: $2C
    rst $38                                       ; $4040: $FF
    db $FD                                        ; $4041: $FD
    sbc a                                         ; $4042: $9F
    ld c, c                                       ; $4043: $49
    jr nz, @+$6C                                  ; $4044: $20 $6A

    ld [hl], l                                    ; $4046: $75
    ld [hl], e                                    ; $4047: $73
    ld [hl], h                                    ; $4048: $74
    jr nz, jr_01B_40B1                            ; $4049: $20 $66

    ld h, l                                       ; $404B: $65
    ld l, h                                       ; $404C: $6C
    ld [hl], h                                    ; $404D: $74
    jr nz, jr_01B_40B1                            ; $404E: $20 $61

    cp $FD                                        ; $4050: $FE $FD
    sbc a                                         ; $4052: $9F
    ld h, a                                       ; $4053: $67
    ld [hl], l                                    ; $4054: $75
    ld [hl], e                                    ; $4055: $73
    ld [hl], h                                    ; $4056: $74
    jr nz, jr_01B_40C8                            ; $4057: $20 $6F

    ld h, [hl]                                    ; $4059: $66

Jump_01B_405A:
    jr nz, jr_01B_40D3                            ; $405A: $20 $77

    ld l, c                                       ; $405C: $69
    ld l, [hl]                                    ; $405D: $6E
    ld h, h                                       ; $405E: $64
    ld l, $2E                                     ; $405F: $2E $2E
    ld l, $FE                                     ; $4061: $2E $FE
    db $FD                                        ; $4063: $FD

Jump_01B_4064:
    sbc d                                         ; $4064: $9A
    rlca                                          ; $4065: $07
    nop                                           ; $4066: $00
    add c                                         ; $4067: $81

jr_01B_4068:
    ld e, l                                       ; $4068: $5D

jr_01B_4069:
    add hl, bc                                    ; $4069: $09
    nop                                           ; $406A: $00
    jr nz, jr_01B_4068                            ; $406B: $20 $FB

    ld d, b                                       ; $406D: $50
    ld b, d                                       ; $406E: $42
    and c                                         ; $406F: $A1
    dec h                                         ; $4070: $25
    and c                                         ; $4071: $A1
    ld [bc], a                                    ; $4072: $02
    dec de                                        ; $4073: $1B
    cp a                                          ; $4074: $BF
    ld b, b                                       ; $4075: $40
    and b                                         ; $4076: $A0
    and c                                         ; $4077: $A1
    ld [hl], c                                    ; $4078: $71
    ret nc                                        ; $4079: $D0

    xor [hl]                                      ; $407A: $AE
    dec h                                         ; $407B: $25
    and c                                         ; $407C: $A1
    db $FD                                        ; $407D: $FD
    sbc a                                         ; $407E: $9F
    ld b, e                                       ; $407F: $43
    ld l, h                                       ; $4080: $6C
    ld l, c                                       ; $4081: $69
    ld h, e                                       ; $4082: $63
    ld l, e                                       ; $4083: $6B
    ld hl, $FDFE                                  ; $4084: $21 $FE $FD
    sbc d                                         ; $4087: $9A
    rlca                                          ; $4088: $07
    nop                                           ; $4089: $00
    ld l, e                                       ; $408A: $6B
    ld c, d                                       ; $408B: $4A
    add hl, bc                                    ; $408C: $09
    nop                                           ; $408D: $00
    jr nz, @-$3F                                  ; $408E: $20 $BF

    ld d, b                                       ; $4090: $50
    add e                                         ; $4091: $83
    ld h, b                                       ; $4092: $60
    rst $38                                       ; $4093: $FF

jr_01B_4094:
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    ld a, [hl]                                    ; $4096: $7E
    jr nc, jr_01B_4069                            ; $4097: $30 $D0

    ld [bc], a                                    ; $4099: $02
    ld [bc], a                                    ; $409A: $02
    sbc d                                         ; $409B: $9A
    ret nc                                        ; $409C: $D0

    ld b, $0A                                     ; $409D: $06 $0A
    ld b, b                                       ; $409F: $40
    ld c, b                                       ; $40A0: $48
    add e                                         ; $40A1: $83
    ld h, b                                       ; $40A2: $60
    ld bc, $0000                                  ; $40A3: $01 $00 $00
    sbc e                                         ; $40A6: $9B
    ld a, b                                       ; $40A7: $78
    ld [hl], b                                    ; $40A8: $70
    sbc a                                         ; $40A9: $9F
    ld c, b                                       ; $40AA: $48
    ld l, l                                       ; $40AB: $6D

jr_01B_40AC:
    ld l, l                                       ; $40AC: $6D
    ld l, l                                       ; $40AD: $6D
    ld l, l                                       ; $40AE: $6D
    ld l, $2E                                     ; $40AF: $2E $2E

jr_01B_40B1:
    ld l, $FE                                     ; $40B1: $2E $FE
    db $FD                                        ; $40B3: $FD
    sbc d                                         ; $40B4: $9A
    rlca                                          ; $40B5: $07
    nop                                           ; $40B6: $00
    add c                                         ; $40B7: $81

jr_01B_40B8:
    ld e, l                                       ; $40B8: $5D
    add hl, bc                                    ; $40B9: $09
    nop                                           ; $40BA: $00
    jr nz, jr_01B_40B8                            ; $40BB: $20 $FB

    ld d, b                                       ; $40BD: $50
    ld b, d                                       ; $40BE: $42
    xor a                                         ; $40BF: $AF
    dec h                                         ; $40C0: $25
    and c                                         ; $40C1: $A1
    ld [bc], a                                    ; $40C2: $02
    sbc a                                         ; $40C3: $9F
    ld b, e                                       ; $40C4: $43
    ld l, h                                       ; $40C5: $6C
    ld l, c                                       ; $40C6: $69
    ld h, e                                       ; $40C7: $63

jr_01B_40C8:
    ld l, e                                       ; $40C8: $6B
    ld hl, $FDFE                                  ; $40C9: $21 $FE $FD
    sbc d                                         ; $40CC: $9A
    rlca                                          ; $40CD: $07
    nop                                           ; $40CE: $00
    ld l, e                                       ; $40CF: $6B
    ld c, d                                       ; $40D0: $4A
    add hl, bc                                    ; $40D1: $09
    nop                                           ; $40D2: $00

jr_01B_40D3:
    jr nz, jr_01B_4094                            ; $40D3: $20 $BF

    ld d, b                                       ; $40D5: $50
    add e                                         ; $40D6: $83
    ld h, b                                       ; $40D7: $60
    rst $38                                       ; $40D8: $FF
    nop                                           ; $40D9: $00
    nop                                           ; $40DA: $00
    ld a, [hl]                                    ; $40DB: $7E
    nop                                           ; $40DC: $00
    ret nc                                        ; $40DD: $D0

    ld [bc], a                                    ; $40DE: $02
    ld [bc], a                                    ; $40DF: $02
    sbc d                                         ; $40E0: $9A
    ret nc                                        ; $40E1: $D0

    ld b, $0A                                     ; $40E2: $06 $0A
    ld b, b                                       ; $40E4: $40
    ld c, b                                       ; $40E5: $48
    add e                                         ; $40E6: $83
    ld h, b                                       ; $40E7: $60
    ld bc, $0000                                  ; $40E8: $01 $00 $00
    sbc e                                         ; $40EB: $9B
    ld a, b                                       ; $40EC: $78
    ld [hl], b                                    ; $40ED: $70
    sbc a                                         ; $40EE: $9F
    ld d, a                                       ; $40EF: $57
    ld l, b                                       ; $40F0: $68
    ld h, c                                       ; $40F1: $61
    ld [hl], h                                    ; $40F2: $74
    jr nz, jr_01B_4169                            ; $40F3: $20 $74

    ld l, b                                       ; $40F5: $68
    ld h, l                                       ; $40F6: $65
    ccf                                           ; $40F7: $3F
    ld l, $2E                                     ; $40F8: $2E $2E
    ld l, $2E                                     ; $40FA: $2E $2E
    cp $FD                                        ; $40FC: $FE $FD
    sbc d                                         ; $40FE: $9A
    rlca                                          ; $40FF: $07
    nop                                           ; $4100: $00
    add c                                         ; $4101: $81

jr_01B_4102:
    ld e, l                                       ; $4102: $5D
    add hl, bc                                    ; $4103: $09
    nop                                           ; $4104: $00
    jr nz, jr_01B_4102                            ; $4105: $20 $FB

    ld d, b                                       ; $4107: $50
    ld b, d                                       ; $4108: $42
    and c                                         ; $4109: $A1
    dec h                                         ; $410A: $25
    and c                                         ; $410B: $A1
    inc b                                         ; $410C: $04
    dec de                                        ; $410D: $1B
    ld c, e                                       ; $410E: $4B
    ld b, c                                       ; $410F: $41
    and c                                         ; $4110: $A1
    and c                                         ; $4111: $A1
    ld [hl], b                                    ; $4112: $70
    ret nc                                        ; $4113: $D0

    xor [hl]                                      ; $4114: $AE
    dec h                                         ; $4115: $25
    and c                                         ; $4116: $A1
    ei                                            ; $4117: $FB
    rlca                                          ; $4118: $07
    nop                                           ; $4119: $00
    ld l, e                                       ; $411A: $6B
    ld c, d                                       ; $411B: $4A
    add hl, bc                                    ; $411C: $09
    nop                                           ; $411D: $00
    jr nz, @-$53                                  ; $411E: $20 $AB

    ld d, b                                       ; $4120: $50
    sbc e                                         ; $4121: $9B
    ld a, b                                       ; $4122: $78
    ld [hl], b                                    ; $4123: $70
    sbc a                                         ; $4124: $9F
    ld d, h                                       ; $4125: $54
    ld l, b                                       ; $4126: $68
    ld h, l                                       ; $4127: $65
    ld [hl], e                                    ; $4128: $73
    ld h, l                                       ; $4129: $65
    jr nz, jr_01B_418D                            ; $412A: $20 $61

    ld [hl], d                                    ; $412C: $72
    ld h, l                                       ; $412D: $65
    jr nz, jr_01B_4191                            ; $412E: $20 $61

    ld l, h                                       ; $4130: $6C
    ld l, h                                       ; $4131: $6C
    rst $38                                       ; $4132: $FF
    ld l, d                                       ; $4133: $6A
    ld l, a                                       ; $4134: $6F
    ld l, e                                       ; $4135: $6B
    ld h, l                                       ; $4136: $65
    jr nz, jr_01B_419B                            ; $4137: $20 $62

    ld l, a                                       ; $4139: $6F
    ld l, a                                       ; $413A: $6F
    ld l, e                                       ; $413B: $6B
    ld [hl], e                                    ; $413C: $73
    ccf                                           ; $413D: $3F

jr_01B_413E:
    cp $FD                                        ; $413E: $FE $FD
    sbc d                                         ; $4140: $9A
    rlca                                          ; $4141: $07
    nop                                           ; $4142: $00
    add c                                         ; $4143: $81
    ld e, l                                       ; $4144: $5D
    add hl, bc                                    ; $4145: $09
    nop                                           ; $4146: $00
    jr nz, @-$53                                  ; $4147: $20 $AB

    ld d, b                                       ; $4149: $50
    ld b, d                                       ; $414A: $42
    xor a                                         ; $414B: $AF
    dec h                                         ; $414C: $25
    and c                                         ; $414D: $A1
    inc b                                         ; $414E: $04
    rlca                                          ; $414F: $07
    nop                                           ; $4150: $00
    ld l, e                                       ; $4151: $6B
    ld c, d                                       ; $4152: $4A
    add hl, bc                                    ; $4153: $09
    nop                                           ; $4154: $00
    jr nz, jr_01B_4102                            ; $4155: $20 $AB

jr_01B_4157:
    ld d, b                                       ; $4157: $50
    sbc a                                         ; $4158: $9F
    ld d, h                                       ; $4159: $54
    ld l, b                                       ; $415A: $68
    ld l, a                                       ; $415B: $6F
    ld [hl], l                                    ; $415C: $75
    ld [hl], e                                    ; $415D: $73
    ld h, c                                       ; $415E: $61
    ld l, [hl]                                    ; $415F: $6E
    ld h, h                                       ; $4160: $64
    ld [hl], e                                    ; $4161: $73
    jr nz, jr_01B_41D3                            ; $4162: $20 $6F

    ld h, [hl]                                    ; $4164: $66
    rst $38                                       ; $4165: $FF
    ld b, [hl]                                    ; $4166: $46
    ld [hl], l                                    ; $4167: $75
    ld l, [hl]                                    ; $4168: $6E

jr_01B_4169:
    ld l, [hl]                                    ; $4169: $6E
    ld a, c                                       ; $416A: $79
    jr nz, jr_01B_41B7                            ; $416B: $20 $4A

    ld l, a                                       ; $416D: $6F
    ld l, e                                       ; $416E: $6B
    ld h, l                                       ; $416F: $65
    ld [hl], e                                    ; $4170: $73
    cp $61                                        ; $4171: $FE $61
    ld l, [hl]                                    ; $4173: $6E
    ld h, h                                       ; $4174: $64
    jr nz, jr_01B_41C6                            ; $4175: $20 $4F

    ld l, [hl]                                    ; $4177: $6E
    ld h, l                                       ; $4178: $65
    rst $38                                       ; $4179: $FF
    ld d, d                                       ; $417A: $52
    ld h, l                                       ; $417B: $65
    ld h, c                                       ; $417C: $61
    ld l, h                                       ; $417D: $6C
    ld l, h                                       ; $417E: $6C
    ld a, c                                       ; $417F: $79
    jr nz, jr_01B_41C4                            ; $4180: $20 $42

    ld h, c                                       ; $4182: $61
    ld h, h                                       ; $4183: $64
    jr nz, @+$51                                  ; $4184: $20 $4F

    ld l, [hl]                                    ; $4186: $6E
    ld h, l                                       ; $4187: $65
    cp $FD                                        ; $4188: $FE $FD

jr_01B_418A:
    sbc d                                         ; $418A: $9A
    rlca                                          ; $418B: $07
    nop                                           ; $418C: $00

jr_01B_418D:
    add c                                         ; $418D: $81
    ld e, l                                       ; $418E: $5D
    add hl, bc                                    ; $418F: $09
    nop                                           ; $4190: $00

jr_01B_4191:
    jr nz, jr_01B_413E                            ; $4191: $20 $AB

    ld d, b                                       ; $4193: $50
    ld b, d                                       ; $4194: $42
    and c                                         ; $4195: $A1
    dec h                                         ; $4196: $25
    and c                                         ; $4197: $A1

jr_01B_4198:
    ld [$E11B], sp                                ; $4198: $08 $1B $E1

jr_01B_419B:
    ld b, c                                       ; $419B: $41
    and c                                         ; $419C: $A1
    and c                                         ; $419D: $A1
    ld l, a                                       ; $419E: $6F
    ret nc                                        ; $419F: $D0

    xor [hl]                                      ; $41A0: $AE
    dec h                                         ; $41A1: $25
    and c                                         ; $41A2: $A1
    rst $30                                       ; $41A3: $F7
    rlca                                          ; $41A4: $07
    nop                                           ; $41A5: $00
    ld l, e                                       ; $41A6: $6B
    ld c, d                                       ; $41A7: $4A
    add hl, bc                                    ; $41A8: $09
    nop                                           ; $41A9: $00
    jr nz, jr_01B_4157                            ; $41AA: $20 $AB

    ld d, b                                       ; $41AC: $50
    sbc e                                         ; $41AD: $9B
    ld a, b                                       ; $41AE: $78
    ld [hl], b                                    ; $41AF: $70
    sbc a                                         ; $41B0: $9F
    ld c, c                                       ; $41B1: $49
    jr nz, jr_01B_421C                            ; $41B2: $20 $68

    ld h, c                                       ; $41B4: $61
    ld [hl], d                                    ; $41B5: $72
    ld h, h                                       ; $41B6: $64

jr_01B_41B7:
    ld l, h                                       ; $41B7: $6C
    ld a, c                                       ; $41B8: $79
    jr nz, jr_01B_4232                            ; $41B9: $20 $77

    ld h, c                                       ; $41BB: $61
    ld l, [hl]                                    ; $41BC: $6E
    ld [hl], h                                    ; $41BD: $74
    rst $38                                       ; $41BE: $FF
    ld [hl], h                                    ; $41BF: $74
    ld l, a                                       ; $41C0: $6F
    jr nz, @+$74                                  ; $41C1: $20 $72

    ld h, l                                       ; $41C3: $65

jr_01B_41C4:
    ld h, c                                       ; $41C4: $61
    ld h, h                                       ; $41C5: $64

jr_01B_41C6:
    jr nz, jr_01B_4229                            ; $41C6: $20 $61

    ld l, h                                       ; $41C8: $6C
    ld l, h                                       ; $41C9: $6C
    cp $6F                                        ; $41CA: $FE $6F
    ld h, [hl]                                    ; $41CC: $66
    jr nz, jr_01B_4243                            ; $41CD: $20 $74

    ld l, b                                       ; $41CF: $68
    ld h, l                                       ; $41D0: $65
    ld [hl], e                                    ; $41D1: $73
    ld h, l                                       ; $41D2: $65

jr_01B_41D3:
    ld hl, $FDFE                                  ; $41D3: $21 $FE $FD
    sbc d                                         ; $41D6: $9A
    rlca                                          ; $41D7: $07
    nop                                           ; $41D8: $00
    add c                                         ; $41D9: $81
    ld e, l                                       ; $41DA: $5D
    add hl, bc                                    ; $41DB: $09
    nop                                           ; $41DC: $00
    jr nz, jr_01B_418A                            ; $41DD: $20 $AB

    ld d, b                                       ; $41DF: $50
    ld b, d                                       ; $41E0: $42
    xor a                                         ; $41E1: $AF
    dec h                                         ; $41E2: $25
    and c                                         ; $41E3: $A1
    ld [$0007], sp                                ; $41E4: $08 $07 $00
    ld l, e                                       ; $41E7: $6B
    ld c, d                                       ; $41E8: $4A
    add hl, bc                                    ; $41E9: $09

jr_01B_41EA:
    nop                                           ; $41EA: $00
    jr nz, jr_01B_4198                            ; $41EB: $20 $AB

    ld d, b                                       ; $41ED: $50
    sbc a                                         ; $41EE: $9F
    ld d, b                                       ; $41EF: $50
    ld [hl], d                                    ; $41F0: $72
    ld h, c                                       ; $41F1: $61
    ld l, [hl]                                    ; $41F2: $6E
    ld l, e                                       ; $41F3: $6B
    ld [hl], e                                    ; $41F4: $73
    jr nz, jr_01B_426B                            ; $41F5: $20 $74

    ld l, a                                       ; $41F7: $6F
    rst $38                                       ; $41F8: $FF
    ld d, b                                       ; $41F9: $50
    ld l, h                                       ; $41FA: $6C
    ld h, c                                       ; $41FB: $61
    ld a, c                                       ; $41FC: $79
    jr nz, jr_01B_426E                            ; $41FD: $20 $6F

    ld l, [hl]                                    ; $41FF: $6E
    cp $42                                        ; $4200: $FE $42
    ld l, h                                       ; $4202: $6C
    ld l, a                                       ; $4203: $6F
    ld l, [hl]                                    ; $4204: $6E
    ld h, h                                       ; $4205: $64
    ld h, l                                       ; $4206: $65
    jr nz, jr_01B_4251                            ; $4207: $20 $48

    ld h, c                                       ; $4209: $61
    ld l, c                                       ; $420A: $69
    ld [hl], d                                    ; $420B: $72
    ld h, l                                       ; $420C: $65
    ld h, h                                       ; $420D: $64
    rst $38                                       ; $420E: $FF
    ld d, e                                       ; $420F: $53
    ld [hl], h                                    ; $4210: $74
    ld [hl], d                                    ; $4211: $72
    ld h, c                                       ; $4212: $61
    ld l, [hl]                                    ; $4213: $6E
    ld h, a                                       ; $4214: $67
    ld h, l                                       ; $4215: $65
    ld [hl], d                                    ; $4216: $72
    ld [hl], e                                    ; $4217: $73
    cp $FD                                        ; $4218: $FE $FD
    sbc e                                         ; $421A: $9B
    ld a, b                                       ; $421B: $78

jr_01B_421C:
    ld [hl], b                                    ; $421C: $70
    sbc a                                         ; $421D: $9F
    ld c, b                                       ; $421E: $48
    ld h, l                                       ; $421F: $65
    ld a, c                                       ; $4220: $79
    ld l, $2E                                     ; $4221: $2E $2E
    ld l, $21                                     ; $4223: $2E $21
    cp $57                                        ; $4225: $FE $57
    ld h, c                                       ; $4227: $61
    ld l, c                                       ; $4228: $69

jr_01B_4229:
    ld [hl], h                                    ; $4229: $74
    jr nz, jr_01B_428D                            ; $422A: $20 $61

    jr nz, jr_01B_429B                            ; $422C: $20 $6D

    ld l, c                                       ; $422E: $69
    ld l, [hl]                                    ; $422F: $6E
    ld [hl], l                                    ; $4230: $75
    ld [hl], h                                    ; $4231: $74

jr_01B_4232:
    ld h, l                                       ; $4232: $65
    ld hl, $FDFE                                  ; $4233: $21 $FE $FD
    sbc d                                         ; $4236: $9A
    rlca                                          ; $4237: $07
    nop                                           ; $4238: $00
    add c                                         ; $4239: $81
    ld e, l                                       ; $423A: $5D
    add hl, bc                                    ; $423B: $09
    nop                                           ; $423C: $00
    jr nz, jr_01B_41EA                            ; $423D: $20 $AB

    ld d, b                                       ; $423F: $50
    ld b, d                                       ; $4240: $42
    sbc e                                         ; $4241: $9B
    ld a, b                                       ; $4242: $78

jr_01B_4243:
    ld [hl], b                                    ; $4243: $70
    sbc a                                         ; $4244: $9F
    ld d, h                                       ; $4245: $54
    ld l, b                                       ; $4246: $68
    ld l, c                                       ; $4247: $69
    ld [hl], e                                    ; $4248: $73
    jr nz, jr_01B_42AD                            ; $4249: $20 $62

    ld h, l                                       ; $424B: $65
    ld h, h                                       ; $424C: $64
    jr nz, jr_01B_42BB                            ; $424D: $20 $6C

    ld l, a                                       ; $424F: $6F
    ld l, a                                       ; $4250: $6F

jr_01B_4251:
    ld l, e                                       ; $4251: $6B
    ld [hl], e                                    ; $4252: $73
    rst $38                                       ; $4253: $FF
    ld [hl], e                                    ; $4254: $73
    ld l, a                                       ; $4255: $6F
    ld h, [hl]                                    ; $4256: $66
    ld [hl], h                                    ; $4257: $74
    jr nz, jr_01B_42BB                            ; $4258: $20 $61

    ld l, [hl]                                    ; $425A: $6E
    ld h, h                                       ; $425B: $64
    jr nz, jr_01B_42C1                            ; $425C: $20 $63

    ld l, a                                       ; $425E: $6F
    ld l, l                                       ; $425F: $6D
    ld h, [hl]                                    ; $4260: $66
    ld a, c                                       ; $4261: $79
    ld l, $FE                                     ; $4262: $2E $FE
    ld d, e                                       ; $4264: $53
    ld l, h                                       ; $4265: $6C
    ld h, l                                       ; $4266: $65
    ld h, l                                       ; $4267: $65
    ld [hl], b                                    ; $4268: $70
    jr nz, jr_01B_42D3                            ; $4269: $20 $68

jr_01B_426B:
    ld h, l                                       ; $426B: $65
    ld [hl], d                                    ; $426C: $72
    ld h, l                                       ; $426D: $65

jr_01B_426E:
    jr nz, jr_01B_42D6                            ; $426E: $20 $66

    ld l, a                                       ; $4270: $6F
    ld [hl], d                                    ; $4271: $72
    rst $38                                       ; $4272: $FF
    ld [hl], h                                    ; $4273: $74
    ld l, b                                       ; $4274: $68
    ld h, l                                       ; $4275: $65
    jr nz, jr_01B_42E6                            ; $4276: $20 $6E

    ld l, c                                       ; $4278: $69
    ld h, a                                       ; $4279: $67
    ld l, b                                       ; $427A: $68
    ld [hl], h                                    ; $427B: $74
    ccf                                           ; $427C: $3F
    cp $20                                        ; $427D: $FE $20
    ld d, e                                       ; $427F: $53
    ld l, h                                       ; $4280: $6C
    ld h, l                                       ; $4281: $65
    ld h, l                                       ; $4282: $65

jr_01B_4283:
    ld [hl], b                                    ; $4283: $70
    jr nz, jr_01B_42EE                            ; $4284: $20 $68

    ld h, l                                       ; $4286: $65
    ld [hl], d                                    ; $4287: $72
    ld h, l                                       ; $4288: $65
    rst $38                                       ; $4289: $FF
    jr nz, jr_01B_42D0                            ; $428A: $20 $44

    ld l, a                                       ; $428C: $6F

jr_01B_428D:
    ld l, [hl]                                    ; $428D: $6E
    daa                                           ; $428E: $27
    ld [hl], h                                    ; $428F: $74
    jr nz, @+$75                                  ; $4290: $20 $73

    ld l, h                                       ; $4292: $6C
    ld h, l                                       ; $4293: $65
    ld h, l                                       ; $4294: $65
    ld [hl], b                                    ; $4295: $70
    db $FD                                        ; $4296: $FD
    sbc h                                         ; $4297: $9C

jr_01B_4298:
    ld [bc], a                                    ; $4298: $02
    dec de                                        ; $4299: $1B
    cp e                                          ; $429A: $BB

jr_01B_429B:
    ld b, d                                       ; $429B: $42
    dec de                                        ; $429C: $1B
    sbc a                                         ; $429D: $9F
    ld b, d                                       ; $429E: $42
    sbc c                                         ; $429F: $99
    sbc e                                         ; $42A0: $9B
    ld a, b                                       ; $42A1: $78
    ld [hl], b                                    ; $42A2: $70
    sbc a                                         ; $42A3: $9F
    ld c, c                                       ; $42A4: $49
    daa                                           ; $42A5: $27
    ld l, l                                       ; $42A6: $6D
    jr nz, jr_01B_4317                            ; $42A7: $20 $6E

    ld l, a                                       ; $42A9: $6F
    ld [hl], h                                    ; $42AA: $74
    jr nz, jr_01B_4321                            ; $42AB: $20 $74

jr_01B_42AD:
    ld l, b                                       ; $42AD: $68
    ld h, c                                       ; $42AE: $61
    ld [hl], h                                    ; $42AF: $74
    rst $38                                       ; $42B0: $FF
    ld [hl], h                                    ; $42B1: $74
    ld l, c                                       ; $42B2: $69
    ld [hl], d                                    ; $42B3: $72
    ld h, l                                       ; $42B4: $65
    ld h, h                                       ; $42B5: $64
    ld l, $FE                                     ; $42B6: $2E $FE
    db $FD                                        ; $42B8: $FD
    sbc d                                         ; $42B9: $9A
    ld b, d                                       ; $42BA: $42

jr_01B_42BB:
    sbc d                                         ; $42BB: $9A
    rlca                                          ; $42BC: $07
    nop                                           ; $42BD: $00
    ld l, e                                       ; $42BE: $6B
    ld c, d                                       ; $42BF: $4A
    add hl, bc                                    ; $42C0: $09

jr_01B_42C1:
    nop                                           ; $42C1: $00
    jr nz, jr_01B_4283                            ; $42C2: $20 $BF

    ld d, b                                       ; $42C4: $50
    ld b, b                                       ; $42C5: $40
    jr jr_01B_4336                                ; $42C6: $18 $6E

    rrca                                          ; $42C8: $0F
    rst $38                                       ; $42C9: $FF
    ld a, a                                       ; $42CA: $7F
    halt                                          ; $42CB: $76
    jr nz, jr_01B_42DD                            ; $42CC: $20 $0F

    add a                                         ; $42CE: $87
    dec b                                         ; $42CF: $05

jr_01B_42D0:
    dec b                                         ; $42D0: $05
    ret z                                         ; $42D1: $C8

    add a                                         ; $42D2: $87

jr_01B_42D3:
    dec b                                         ; $42D3: $05
    dec b                                         ; $42D4: $05
    ret z                                         ; $42D5: $C8

jr_01B_42D6:
    add a                                         ; $42D6: $87
    dec b                                         ; $42D7: $05

jr_01B_42D8:
    dec b                                         ; $42D8: $05
    ret z                                         ; $42D9: $C8

    add a                                         ; $42DA: $87
    dec b                                         ; $42DB: $05
    dec b                                         ; $42DC: $05

jr_01B_42DD:
    ret z                                         ; $42DD: $C8

    add a                                         ; $42DE: $87
    dec b                                         ; $42DF: $05
    dec b                                         ; $42E0: $05
    ret z                                         ; $42E1: $C8

    add hl, bc                                    ; $42E2: $09
    nop                                           ; $42E3: $00
    jr nz, jr_01B_429B                            ; $42E4: $20 $B5

jr_01B_42E6:
    ld d, b                                       ; $42E6: $50
    ld b, b                                       ; $42E7: $40
    ld a, b                                       ; $42E8: $78
    ld a, b                                       ; $42E9: $78
    inc a                                         ; $42EA: $3C
    ld d, [hl]                                    ; $42EB: $56
    ld a, h                                       ; $42EC: $7C
    rlca                                          ; $42ED: $07

jr_01B_42EE:
    ld a, b                                       ; $42EE: $78
    ret nz                                        ; $42EF: $C0

    ld e, h                                       ; $42F0: $5C
    ld hl, $6F87                                  ; $42F1: $21 $87 $6F
    rrca                                          ; $42F4: $0F
    rst $38                                       ; $42F5: $FF
    ld a, a                                       ; $42F6: $7F
    halt                                          ; $42F7: $76
    jr nz, jr_01B_4309                            ; $42F8: $20 $0F

    ld b, b                                       ; $42FA: $40
    jr nz, jr_01B_4298                            ; $42FB: $20 $9B

    ld a, b                                       ; $42FD: $78
    ld [hl], b                                    ; $42FE: $70
    sbc a                                         ; $42FF: $9F
    ld b, c                                       ; $4300: $41
    ld l, b                                       ; $4301: $68
    ld l, b                                       ; $4302: $68
    inc l                                         ; $4303: $2C
    jr nz, jr_01B_437A                            ; $4304: $20 $74

    ld l, b                                       ; $4306: $68
    ld h, c                                       ; $4307: $61
    ld [hl], h                                    ; $4308: $74

jr_01B_4309:
    daa                                           ; $4309: $27
    ld [hl], e                                    ; $430A: $73
    rst $38                                       ; $430B: $FF
    ld l, l                                       ; $430C: $6D
    ld [hl], l                                    ; $430D: $75
    ld h, e                                       ; $430E: $63
    ld l, b                                       ; $430F: $68
    jr nz, jr_01B_4374                            ; $4310: $20 $62

    ld h, l                                       ; $4312: $65
    ld [hl], h                                    ; $4313: $74
    ld [hl], h                                    ; $4314: $74
    ld h, l                                       ; $4315: $65
    ld [hl], d                                    ; $4316: $72

jr_01B_4317:
    ld l, $FE                                     ; $4317: $2E $FE
    db $FD                                        ; $4319: $FD
    sbc d                                         ; $431A: $9A
    rlca                                          ; $431B: $07
    nop                                           ; $431C: $00
    add c                                         ; $431D: $81
    ld e, l                                       ; $431E: $5D
    add hl, bc                                    ; $431F: $09
    nop                                           ; $4320: $00

jr_01B_4321:
    jr nz, jr_01B_42D8                            ; $4321: $20 $B5

    ld d, b                                       ; $4323: $50
    ld b, d                                       ; $4324: $42
    sbc e                                         ; $4325: $9B
    ld a, b                                       ; $4326: $78
    ld [hl], b                                    ; $4327: $70
    sbc a                                         ; $4328: $9F
    ld b, c                                       ; $4329: $41
    jr nz, jr_01B_439F                            ; $432A: $20 $73

    ld l, c                                       ; $432C: $69
    ld l, l                                       ; $432D: $6D
    ld [hl], b                                    ; $432E: $70
    ld l, h                                       ; $432F: $6C
    ld h, l                                       ; $4330: $65
    jr nz, jr_01B_43AA                            ; $4331: $20 $77

    ld l, a                                       ; $4333: $6F
    ld l, a                                       ; $4334: $6F
    ld h, h                                       ; $4335: $64

jr_01B_4336:
    ld h, l                                       ; $4336: $65
    ld l, [hl]                                    ; $4337: $6E
    rst $38                                       ; $4338: $FF
    ld h, e                                       ; $4339: $63
    ld l, b                                       ; $433A: $68
    ld h, c                                       ; $433B: $61
    ld l, c                                       ; $433C: $69
    ld [hl], d                                    ; $433D: $72
    ld l, $FE                                     ; $433E: $2E $FE
    ld c, a                                       ; $4340: $4F
    ld [hl], d                                    ; $4341: $72
    jr nz, jr_01B_43AD                            ; $4342: $20 $69

    ld [hl], e                                    ; $4344: $73
    jr nz, jr_01B_43B0                            ; $4345: $20 $69

    ld [hl], h                                    ; $4347: $74
    ccf                                           ; $4348: $3F
    cp $FD                                        ; $4349: $FE $FD
    sbc d                                         ; $434B: $9A
    ld b, d                                       ; $434C: $42
    sbc e                                         ; $434D: $9B
    ld a, b                                       ; $434E: $78
    ld [hl], b                                    ; $434F: $70
    sbc a                                         ; $4350: $9F
    ld c, c                                       ; $4351: $49
    jr nz, jr_01B_43BA                            ; $4352: $20 $66

    ld h, l                                       ; $4354: $65
    ld h, c                                       ; $4355: $61
    ld [hl], d                                    ; $4356: $72
    jr nz, jr_01B_43CD                            ; $4357: $20 $74

    ld l, b                                       ; $4359: $68
    ld h, l                                       ; $435A: $65
    rst $38                                       ; $435B: $FF
    ld l, c                                       ; $435C: $69
    ld l, [hl]                                    ; $435D: $6E
    ld h, l                                       ; $435E: $65
    halt                                          ; $435F: $76
    ld l, c                                       ; $4360: $69
    ld [hl], h                                    ; $4361: $74
    ld h, c                                       ; $4362: $61
    ld h, d                                       ; $4363: $62
    ld l, h                                       ; $4364: $6C
    ld h, l                                       ; $4365: $65
    jr nz, jr_01B_43D7                            ; $4366: $20 $6F

    ld h, [hl]                                    ; $4368: $66
    cp $73                                        ; $4369: $FE $73
    ld l, c                                       ; $436B: $69
    ld [hl], h                                    ; $436C: $74
    ld [hl], h                                    ; $436D: $74
    ld l, c                                       ; $436E: $69
    ld l, [hl]                                    ; $436F: $6E
    ld h, a                                       ; $4370: $67
    jr nz, jr_01B_43D7                            ; $4371: $20 $64

    ld l, a                                       ; $4373: $6F

jr_01B_4374:
    ld [hl], a                                    ; $4374: $77
    ld l, [hl]                                    ; $4375: $6E
    ld l, $FE                                     ; $4376: $2E $FE
    db $FD                                        ; $4378: $FD
    sbc d                                         ; $4379: $9A

jr_01B_437A:
    ld b, d                                       ; $437A: $42
    sbc e                                         ; $437B: $9B
    ld a, b                                       ; $437C: $78
    ld [hl], b                                    ; $437D: $70
    sbc a                                         ; $437E: $9F
    ld c, c                                       ; $437F: $49
    daa                                           ; $4380: $27
    halt                                          ; $4381: $76
    ld h, l                                       ; $4382: $65
    jr nz, jr_01B_43EC                            ; $4383: $20 $67

    ld l, a                                       ; $4385: $6F
    ld [hl], h                                    ; $4386: $74
    jr nz, jr_01B_43EA                            ; $4387: $20 $61

    rst $38                                       ; $4389: $FF
    ld [hl], b                                    ; $438A: $70
    ld [hl], d                                    ; $438B: $72
    ld l, c                                       ; $438C: $69
    ld a, d                                       ; $438D: $7A
    ld h, l                                       ; $438E: $65
    jr nz, jr_01B_4407                            ; $438F: $20 $76

    ld l, c                                       ; $4391: $69
    ld h, l                                       ; $4392: $65
    ld [hl], a                                    ; $4393: $77
    jr nz, jr_01B_4405                            ; $4394: $20 $6F

    ld h, [hl]                                    ; $4396: $66
    cp $74                                        ; $4397: $FE $74
    ld l, b                                       ; $4399: $68
    ld l, c                                       ; $439A: $69
    ld [hl], e                                    ; $439B: $73
    jr nz, jr_01B_4401                            ; $439C: $20 $63

    ld l, b                                       ; $439E: $68

jr_01B_439F:
    ld h, c                                       ; $439F: $61
    ld l, c                                       ; $43A0: $69
    ld [hl], d                                    ; $43A1: $72
    rst $38                                       ; $43A2: $FF
    ld h, [hl]                                    ; $43A3: $66
    ld [hl], d                                    ; $43A4: $72
    ld l, a                                       ; $43A5: $6F
    ld l, l                                       ; $43A6: $6D
    jr nz, jr_01B_441B                            ; $43A7: $20 $72

    ld l, c                                       ; $43A9: $69

jr_01B_43AA:
    ld h, a                                       ; $43AA: $67
    ld l, b                                       ; $43AB: $68
    ld [hl], h                                    ; $43AC: $74

jr_01B_43AD:
    cp $61                                        ; $43AD: $FE $61
    ld h, d                                       ; $43AF: $62

jr_01B_43B0:
    ld l, a                                       ; $43B0: $6F
    ld [hl], l                                    ; $43B1: $75
    ld [hl], h                                    ; $43B2: $74
    jr nz, jr_01B_441D                            ; $43B3: $20 $68

    ld h, l                                       ; $43B5: $65
    ld [hl], d                                    ; $43B6: $72
    ld h, l                                       ; $43B7: $65
    ld l, $FE                                     ; $43B8: $2E $FE

jr_01B_43BA:
    db $FD                                        ; $43BA: $FD
    sbc d                                         ; $43BB: $9A
    ld b, d                                       ; $43BC: $42
    xor h                                         ; $43BD: $AC
    or d                                          ; $43BE: $B2
    and d                                         ; $43BF: $A2
    ld bc, $0043                                  ; $43C0: $01 $43 $00
    dec h                                         ; $43C3: $25
    and c                                         ; $43C4: $A1
    ld [bc], a                                    ; $43C5: $02
    dec de                                        ; $43C6: $1B
    rst $28                                       ; $43C7: $EF
    ld b, e                                       ; $43C8: $43
    sub e                                         ; $43C9: $93
    ld h, l                                       ; $43CA: $65
    pop af                                        ; $43CB: $F1
    ld c, [hl]                                    ; $43CC: $4E

jr_01B_43CD:
    ld c, a                                       ; $43CD: $4F
    ld h, h                                       ; $43CE: $64
    and b                                         ; $43CF: $A0
    ld d, e                                       ; $43D0: $53
    ld l, c                                       ; $43D1: $69
    xor l                                         ; $43D2: $AD
    ld d, e                                       ; $43D3: $53
    ld h, [hl]                                    ; $43D4: $66
    ret nz                                        ; $43D5: $C0

    ld e, h                                       ; $43D6: $5C

jr_01B_43D7:
    ld hl, $0005                                  ; $43D7: $21 $05 $00
    add c                                         ; $43DA: $81
    ld e, l                                       ; $43DB: $5D
    dec b                                         ; $43DC: $05
    dec b                                         ; $43DD: $05

jr_01B_43DE:
    ld a, l                                       ; $43DE: $7D
    ret nc                                        ; $43DF: $D0

    nop                                           ; $43E0: $00
    jr nz, jr_01B_43DE                            ; $43E1: $20 $FB

    ld d, b                                       ; $43E3: $50
    ld [hl+], a                                   ; $43E4: $22
    dec b                                         ; $43E5: $05
    ld b, b                                       ; $43E6: $40
    dec bc                                        ; $43E7: $0B
    nop                                           ; $43E8: $00
    nop                                           ; $43E9: $00

jr_01B_43EA:
    add d                                         ; $43EA: $82
    rra                                           ; $43EB: $1F

jr_01B_43EC:
    rla                                           ; $43EC: $17
    sub h                                         ; $43ED: $94
    ld b, d                                       ; $43EE: $42
    sub e                                         ; $43EF: $93
    ld h, l                                       ; $43F0: $65
    pop af                                        ; $43F1: $F1
    ld c, [hl]                                    ; $43F2: $4E
    ld c, a                                       ; $43F3: $4F
    ld h, h                                       ; $43F4: $64
    and b                                         ; $43F5: $A0
    ld d, e                                       ; $43F6: $53
    ld l, c                                       ; $43F7: $69
    xor l                                         ; $43F8: $AD
    ld d, e                                       ; $43F9: $53
    ld h, [hl]                                    ; $43FA: $66
    ret nz                                        ; $43FB: $C0

    ld e, h                                       ; $43FC: $5C
    ld hl, $0005                                  ; $43FD: $21 $05 $00
    add c                                         ; $4400: $81

jr_01B_4401:
    ld e, l                                       ; $4401: $5D
    dec b                                         ; $4402: $05
    dec b                                         ; $4403: $05

jr_01B_4404:
    ld a, l                                       ; $4404: $7D

jr_01B_4405:
    ret nc                                        ; $4405: $D0

    nop                                           ; $4406: $00

jr_01B_4407:
    jr nz, jr_01B_4404                            ; $4407: $20 $FB

    ld d, b                                       ; $4409: $50
    ld [hl+], a                                   ; $440A: $22
    dec b                                         ; $440B: $05
    ld b, b                                       ; $440C: $40
    dec bc                                        ; $440D: $0B
    nop                                           ; $440E: $00
    nop                                           ; $440F: $00
    add d                                         ; $4410: $82
    ld a, [hl]                                    ; $4411: $7E
    nop                                           ; $4412: $00
    ret nc                                        ; $4413: $D0

    ld [bc], a                                    ; $4414: $02
    ld [bc], a                                    ; $4415: $02
    sbc d                                         ; $4416: $9A
    ret nc                                        ; $4417: $D0

    ld b, $0A                                     ; $4418: $06 $0A
    rra                                           ; $441A: $1F

jr_01B_441B:
    rla                                           ; $441B: $17
    sub h                                         ; $441C: $94

jr_01B_441D:
    ld b, d                                       ; $441D: $42
    sbc e                                         ; $441E: $9B
    sbc c                                         ; $441F: $99
    ld e, d                                       ; $4420: $5A
    sbc a                                         ; $4421: $9F
    ld l, $2E                                     ; $4422: $2E $2E
    ld l, $79                                     ; $4424: $2E $79
    ld h, l                                       ; $4426: $65
    ld h, c                                       ; $4427: $61
    ld l, b                                       ; $4428: $68
    inc l                                         ; $4429: $2C
    jr nz, @+$51                                  ; $442A: $20 $4F

    ld [hl], d                                    ; $442C: $72
    ld l, h                                       ; $442D: $6C
    ld l, a                                       ; $442E: $6F
    ld l, [hl]                                    ; $442F: $6E
    rst $38                                       ; $4430: $FF
    ld h, c                                       ; $4431: $61
    ld l, [hl]                                    ; $4432: $6E
    ld h, h                                       ; $4433: $64
    jr nz, @+$6F                                  ; $4434: $20 $6D

    ld h, l                                       ; $4436: $65
    inc l                                         ; $4437: $2C
    jr nz, jr_01B_44B1                            ; $4438: $20 $77

    ld h, l                                       ; $443A: $65
    jr nz, jr_01B_44A4                            ; $443B: $20 $67

    ld l, a                                       ; $443D: $6F
    cp $77                                        ; $443E: $FE $77
    ld h, c                                       ; $4440: $61
    ld h, c                                       ; $4441: $61
    ld h, c                                       ; $4442: $61
    ld h, c                                       ; $4443: $61
    ld a, c                                       ; $4444: $79
    jr nz, jr_01B_44A9                            ; $4445: $20 $62

    ld h, c                                       ; $4447: $61
    ld h, e                                       ; $4448: $63
    ld l, e                                       ; $4449: $6B
    ld l, $20                                     ; $444A: $2E $20
    ld d, a                                       ; $444C: $57
    ld h, l                                       ; $444D: $65
    rst $38                                       ; $444E: $FF
    ld l, b                                       ; $444F: $68
    ld h, c                                       ; $4450: $61
    ld h, h                                       ; $4451: $64
    jr nz, jr_01B_44C8                            ; $4452: $20 $74

    ld l, b                                       ; $4454: $68
    ld l, c                                       ; $4455: $69
    ld [hl], e                                    ; $4456: $73
    jr nz, jr_01B_449B                            ; $4457: $20 $42

    ld [hl], a                                    ; $4459: $77

Jump_01B_445A:
    ld l, c                                       ; $445A: $69
    ld l, h                                       ; $445B: $6C
    ld l, h                                       ; $445C: $6C
    inc l                                         ; $445D: $2C
    cp $69                                        ; $445E: $FE $69
    ld [hl], h                                    ; $4460: $74
    jr nz, jr_01B_44DA                            ; $4461: $20 $77

    ld h, c                                       ; $4463: $61
    ld [hl], e                                    ; $4464: $73
    jr nz, jr_01B_44C8                            ; $4465: $20 $61

    jr nz, jr_01B_44D1                            ; $4467: $20 $68

    ld a, c                                       ; $4469: $79
    ld [hl], b                                    ; $446A: $70
    ld h, l                                       ; $446B: $65
    ld [hl], d                                    ; $446C: $72
    rst $38                                       ; $446D: $FF
    ld l, h                                       ; $446E: $6C
    ld l, c                                       ; $446F: $69
    ld [hl], h                                    ; $4470: $74
    ld [hl], h                                    ; $4471: $74
    ld l, h                                       ; $4472: $6C
    ld h, l                                       ; $4473: $65
    jr nz, jr_01B_44EA                            ; $4474: $20 $74

    ld l, b                                       ; $4476: $68
    ld l, c                                       ; $4477: $69
    ld l, [hl]                                    ; $4478: $6E
    ld h, a                                       ; $4479: $67
    ld l, $FE                                     ; $447A: $2E $FE
    ld c, c                                       ; $447C: $49
    ld [hl], h                                    ; $447D: $74
    jr nz, @+$74                                  ; $447E: $20 $72

    ld h, l                                       ; $4480: $65
    ld h, c                                       ; $4481: $61
    ld l, h                                       ; $4482: $6C
    ld l, h                                       ; $4483: $6C
    ld a, c                                       ; $4484: $79
    jr nz, jr_01B_44F4                            ; $4485: $20 $6D

    ld h, c                                       ; $4487: $61
    ld h, h                                       ; $4488: $64
    ld h, l                                       ; $4489: $65
    rst $38                                       ; $448A: $FF
    ld l, l                                       ; $448B: $6D
    ld h, l                                       ; $448C: $65
    ld [hl], e                                    ; $448D: $73
    ld [hl], e                                    ; $448E: $73
    ld h, l                                       ; $448F: $65
    ld [hl], e                                    ; $4490: $73
    cp $65                                        ; $4491: $FE $65
    halt                                          ; $4493: $76
    ld h, l                                       ; $4494: $65
    ld [hl], d                                    ; $4495: $72
    ld a, c                                       ; $4496: $79
    ld [hl], a                                    ; $4497: $77
    ld l, b                                       ; $4498: $68
    ld h, l                                       ; $4499: $65
    ld [hl], d                                    ; $449A: $72

jr_01B_449B:
    ld h, l                                       ; $449B: $65
    ld l, $FE                                     ; $449C: $2E $FE
    ld c, b                                       ; $449E: $48
    ld h, l                                       ; $449F: $65
    ld l, b                                       ; $44A0: $68
    inc l                                         ; $44A1: $2C
    jr nz, jr_01B_4513                            ; $44A2: $20 $6F

jr_01B_44A4:
    ld l, [hl]                                    ; $44A4: $6E
    ld h, l                                       ; $44A5: $65
    jr nz, @+$76                                  ; $44A6: $20 $74

    ld l, c                                       ; $44A8: $69

jr_01B_44A9:
    ld l, l                                       ; $44A9: $6D
    ld h, l                                       ; $44AA: $65
    rst $38                                       ; $44AB: $FF
    ld d, a                                       ; $44AC: $57
    ld h, l                                       ; $44AD: $65
    jr nz, jr_01B_4517                            ; $44AE: $20 $67

    ld h, c                                       ; $44B0: $61

jr_01B_44B1:
    halt                                          ; $44B1: $76
    ld h, l                                       ; $44B2: $65
    jr nz, jr_01B_4529                            ; $44B3: $20 $74

    ld l, b                                       ; $44B5: $68
    ld h, l                                       ; $44B6: $65
    cp $42                                        ; $44B7: $FE $42
    ld [hl], a                                    ; $44B9: $77
    ld l, c                                       ; $44BA: $69
    ld l, h                                       ; $44BB: $6C
    ld l, h                                       ; $44BC: $6C
    jr nz, jr_01B_4520                            ; $44BD: $20 $61

    jr nz, jr_01B_4531                            ; $44BF: $20 $70

    ld h, c                                       ; $44C1: $61
    ld l, [hl]                                    ; $44C2: $6E
    ld h, e                                       ; $44C3: $63
    ld h, c                                       ; $44C4: $61
    ld l, e                                       ; $44C5: $6B
    ld h, l                                       ; $44C6: $65
    rst $38                                       ; $44C7: $FF

jr_01B_44C8:
    ld h, h                                       ; $44C8: $64
    ld h, l                                       ; $44C9: $65
    ld h, c                                       ; $44CA: $61
    ld l, h                                       ; $44CB: $6C
    dec l                                         ; $44CC: $2D
    cp $FD                                        ; $44CD: $FE $FD
    ld e, b                                       ; $44CF: $58
    ld a, [bc]                                    ; $44D0: $0A

jr_01B_44D1:
    sbc e                                         ; $44D1: $9B
    ld a, b                                       ; $44D2: $78
    ld [hl], b                                    ; $44D3: $70
    sbc a                                         ; $44D4: $9F
    ld d, l                                       ; $44D5: $55
    ld l, b                                       ; $44D6: $68
    inc l                                         ; $44D7: $2C
    jr nz, jr_01B_453B                            ; $44D8: $20 $61

jr_01B_44DA:
    ld [hl], d                                    ; $44DA: $72
    ld h, l                                       ; $44DB: $65
    jr nz, @+$7B                                  ; $44DC: $20 $79

    ld l, a                                       ; $44DE: $6F
    ld [hl], l                                    ; $44DF: $75
    rst $38                                       ; $44E0: $FF
    ld [hl], e                                    ; $44E1: $73
    ld [hl], l                                    ; $44E2: $75
    ld [hl], d                                    ; $44E3: $72
    ld h, l                                       ; $44E4: $65
    jr nz, jr_01B_455B                            ; $44E5: $20 $74

    ld l, b                                       ; $44E7: $68
    ld l, c                                       ; $44E8: $69
    ld [hl], e                                    ; $44E9: $73

jr_01B_44EA:
    jr nz, jr_01B_4555                            ; $44EA: $20 $69

    ld [hl], e                                    ; $44EC: $73
    cp $74                                        ; $44ED: $FE $74
    ld l, b                                       ; $44EF: $68
    ld h, l                                       ; $44F0: $65
    jr nz, jr_01B_456A                            ; $44F1: $20 $77

    ld h, c                                       ; $44F3: $61

jr_01B_44F4:
    ld a, c                                       ; $44F4: $79
    jr nz, jr_01B_456B                            ; $44F5: $20 $74

    ld l, a                                       ; $44F7: $6F
    rst $38                                       ; $44F8: $FF
    ld b, e                                       ; $44F9: $43
    ld h, c                                       ; $44FA: $61
    ld l, h                                       ; $44FB: $6C
    ld h, h                                       ; $44FC: $64
    ccf                                           ; $44FD: $3F
    cp $FD                                        ; $44FE: $FE $FD
    ld e, b                                       ; $4500: $58
    inc d                                         ; $4501: $14
    sbc e                                         ; $4502: $9B
    sbc c                                         ; $4503: $99
    ld e, d                                       ; $4504: $5A
    sbc a                                         ; $4505: $9F
    ld c, a                                       ; $4506: $4F
    ld l, b                                       ; $4507: $68
    jr nz, jr_01B_4583                            ; $4508: $20 $79

    ld h, l                                       ; $450A: $65
    ld h, c                                       ; $450B: $61
    ld l, b                                       ; $450C: $68
    ld l, $FF                                     ; $450D: $2E $FF
    ld d, b                                       ; $450F: $50
    ld l, a                                       ; $4510: $6F
    ld [hl], e                                    ; $4511: $73
    ld l, c                                       ; $4512: $69

jr_01B_4513:
    ld [hl], h                                    ; $4513: $74
    ld l, c                                       ; $4514: $69
    halt                                          ; $4515: $76
    ld h, l                                       ; $4516: $65

jr_01B_4517:
    ld l, $20                                     ; $4517: $2E $20
    ld d, e                                       ; $4519: $53
    ld l, a                                       ; $451A: $6F
    cp $61                                        ; $451B: $FE $61
    ld l, [hl]                                    ; $451D: $6E
    ld a, c                                       ; $451E: $79
    ld [hl], a                                    ; $451F: $77

jr_01B_4520:
    ld h, c                                       ; $4520: $61
    ld a, c                                       ; $4521: $79
    inc l                                         ; $4522: $2C
    jr nz, @+$76                                  ; $4523: $20 $74

    ld l, b                                       ; $4525: $68
    ld h, c                                       ; $4526: $61
    ld [hl], h                                    ; $4527: $74
    rst $38                                       ; $4528: $FF

jr_01B_4529:
    ld b, d                                       ; $4529: $42
    ld [hl], a                                    ; $452A: $77
    ld l, c                                       ; $452B: $69
    ld l, h                                       ; $452C: $6C
    ld l, h                                       ; $452D: $6C
    inc l                                         ; $452E: $2C
    jr nz, jr_01B_459A                            ; $452F: $20 $69

jr_01B_4531:
    ld [hl], h                                    ; $4531: $74
    jr nz, jr_01B_459B                            ; $4532: $20 $67

    ld l, a                                       ; $4534: $6F
    ld [hl], h                                    ; $4535: $74
    cp $72                                        ; $4536: $FE $72

jr_01B_4538:
    ld h, l                                       ; $4538: $65
    ld h, c                                       ; $4539: $61
    ld l, h                                       ; $453A: $6C

jr_01B_453B:
    ld l, h                                       ; $453B: $6C
    ld a, c                                       ; $453C: $79
    jr nz, jr_01B_45A7                            ; $453D: $20 $68

    ld a, c                                       ; $453F: $79
    ld [hl], b                                    ; $4540: $70
    ld h, l                                       ; $4541: $65
    ld [hl], d                                    ; $4542: $72
    rst $38                                       ; $4543: $FF
    ld h, c                                       ; $4544: $61
    ld h, [hl]                                    ; $4545: $66
    ld [hl], h                                    ; $4546: $74
    ld h, l                                       ; $4547: $65
    ld [hl], d                                    ; $4548: $72
    jr nz, jr_01B_45BF                            ; $4549: $20 $74

    ld l, b                                       ; $454B: $68
    ld h, c                                       ; $454C: $61
    ld [hl], h                                    ; $454D: $74
    jr nz, jr_01B_45B6                            ; $454E: $20 $66

    ld [hl], d                                    ; $4550: $72
    ld l, a                                       ; $4551: $6F
    ld l, l                                       ; $4552: $6D
    cp $FD                                        ; $4553: $FE $FD

jr_01B_4555:
    ld e, b                                       ; $4555: $58
    ld bc, $619F                                  ; $4556: $01 $9F $61
    ld l, h                                       ; $4559: $6C
    ld l, h                                       ; $455A: $6C

jr_01B_455B:
    jr nz, jr_01B_45D1                            ; $455B: $20 $74

    ld l, b                                       ; $455D: $68
    ld h, c                                       ; $455E: $61
    ld [hl], h                                    ; $455F: $74
    jr nz, jr_01B_45D5                            ; $4560: $20 $73

    ld a, c                                       ; $4562: $79
    ld [hl], d                                    ; $4563: $72
    ld [hl], l                                    ; $4564: $75
    ld [hl], b                                    ; $4565: $70
    inc l                                         ; $4566: $2C
    rst $38                                       ; $4567: $FF
    ld h, d                                       ; $4568: $62
    ld l, a                                       ; $4569: $6F

jr_01B_456A:
    ld a, c                                       ; $456A: $79

jr_01B_456B:
    jr nz, jr_01B_45D6                            ; $456B: $20 $69

    ld [hl], h                                    ; $456D: $74
    jr nz, jr_01B_45E7                            ; $456E: $20 $77

    ld h, c                                       ; $4570: $61
    ld [hl], e                                    ; $4571: $73
    jr nz, jr_01B_45DE                            ; $4572: $20 $6A

    ld [hl], l                                    ; $4574: $75
    ld [hl], e                                    ; $4575: $73
    ld [hl], h                                    ; $4576: $74
    cp $FD                                        ; $4577: $FE $FD
    ld b, b                                       ; $4579: $40
    db $10                                        ; $457A: $10
    sbc a                                         ; $457B: $9F
    ld h, d                                       ; $457C: $62
    ld l, a                                       ; $457D: $6F
    ld [hl], l                                    ; $457E: $75
    ld l, [hl]                                    ; $457F: $6E
    ld h, e                                       ; $4580: $63
    ld l, c                                       ; $4581: $69
    ld l, [hl]                                    ; $4582: $6E

jr_01B_4583:
    ld h, a                                       ; $4583: $67
    jr nz, @+$71                                  ; $4584: $20 $6F

    ld h, [hl]                                    ; $4586: $66
    ld h, [hl]                                    ; $4587: $66
    rst $38                                       ; $4588: $FF
    ld [hl], h                                    ; $4589: $74
    ld l, b                                       ; $458A: $68
    ld h, l                                       ; $458B: $65
    jr nz, @+$79                                  ; $458C: $20 $77

    ld h, c                                       ; $458E: $61
    ld l, h                                       ; $458F: $6C
    ld l, h                                       ; $4590: $6C
    jr nz, jr_01B_45FF                            ; $4591: $20 $6C

    ld l, c                                       ; $4593: $69
    ld l, e                                       ; $4594: $6B
    ld h, l                                       ; $4595: $65
    ld l, $2E                                     ; $4596: $2E $2E
    ld l, $FE                                     ; $4598: $2E $FE

jr_01B_459A:
    db $FD                                        ; $459A: $FD

jr_01B_459B:
    ld b, b                                       ; $459B: $40
    jr nz, jr_01B_4538                            ; $459C: $20 $9A

    ld b, d                                       ; $459E: $42
    sbc e                                         ; $459F: $9B
    sbc c                                         ; $45A0: $99
    ld e, d                                       ; $45A1: $5A
    sbc a                                         ; $45A2: $9F
    ld l, $2E                                     ; $45A3: $2E $2E
    ld l, $67                                     ; $45A5: $2E $67

jr_01B_45A7:
    ld h, c                                       ; $45A7: $61
    halt                                          ; $45A8: $76
    ld h, l                                       ; $45A9: $65
    jr nz, @+$6F                                  ; $45AA: $20 $6D

    ld h, l                                       ; $45AC: $65
    jr nz, jr_01B_4610                            ; $45AD: $20 $61

    rst $38                                       ; $45AF: $FF
    ld l, b                                       ; $45B0: $68
    ld [hl], l                                    ; $45B1: $75
    ld h, a                                       ; $45B2: $67
    ld h, l                                       ; $45B3: $65
    jr nz, jr_01B_462D                            ; $45B4: $20 $77

jr_01B_45B6:
    ld h, l                                       ; $45B6: $65
    ld h, h                                       ; $45B7: $64
    ld h, a                                       ; $45B8: $67
    ld l, c                                       ; $45B9: $69
    ld h, l                                       ; $45BA: $65
    ld hl, $50FE                                  ; $45BB: $21 $FE $50
    ld [hl], d                                    ; $45BE: $72

jr_01B_45BF:
    ld h, l                                       ; $45BF: $65
    ld [hl], h                                    ; $45C0: $74
    ld [hl], h                                    ; $45C1: $74
    ld a, c                                       ; $45C2: $79
    jr nz, @+$68                                  ; $45C3: $20 $66

    ld [hl], l                                    ; $45C5: $75
    ld l, [hl]                                    ; $45C6: $6E
    ld l, [hl]                                    ; $45C7: $6E
    ld a, c                                       ; $45C8: $79
    inc l                                         ; $45C9: $2C
    rst $38                                       ; $45CA: $FF
    ld l, b                                       ; $45CB: $68
    ld [hl], l                                    ; $45CC: $75
    ld l, b                                       ; $45CD: $68
    ccf                                           ; $45CE: $3F
    jr nz, jr_01B_461A                            ; $45CF: $20 $49

jr_01B_45D1:
    jr nz, jr_01B_4647                            ; $45D1: $20 $74

    ld l, b                                       ; $45D3: $68
    ld l, c                                       ; $45D4: $69

jr_01B_45D5:
    ld l, [hl]                                    ; $45D5: $6E

jr_01B_45D6:
    ld l, e                                       ; $45D6: $6B
    cp $49                                        ; $45D7: $FE $49
    daa                                           ; $45D9: $27
    halt                                          ; $45DA: $76
    ld h, l                                       ; $45DB: $65
    jr nz, jr_01B_4651                            ; $45DC: $20 $73

jr_01B_45DE:
    ld [hl], h                                    ; $45DE: $74
    ld l, c                                       ; $45DF: $69
    ld l, h                                       ; $45E0: $6C
    ld l, h                                       ; $45E1: $6C
    jr nz, jr_01B_464B                            ; $45E2: $20 $67

    ld l, a                                       ; $45E4: $6F
    ld [hl], h                                    ; $45E5: $74
    rst $38                                       ; $45E6: $FF

jr_01B_45E7:
    ld [hl], h                                    ; $45E7: $74
    ld l, b                                       ; $45E8: $68
    ld h, l                                       ; $45E9: $65
    jr nz, jr_01B_465F                            ; $45EA: $20 $73

    ld h, e                                       ; $45EC: $63
    ld h, c                                       ; $45ED: $61
    ld [hl], d                                    ; $45EE: $72
    jr nz, jr_01B_4653                            ; $45EF: $20 $62

    ld h, c                                       ; $45F1: $61
    ld h, e                                       ; $45F2: $63
    ld l, e                                       ; $45F3: $6B
    cp $69                                        ; $45F4: $FE $69
    ld l, [hl]                                    ; $45F6: $6E
    dec l                                         ; $45F7: $2D
    cp $FD                                        ; $45F8: $FE $FD
    ld e, b                                       ; $45FA: $58
    dec bc                                        ; $45FB: $0B
    sbc e                                         ; $45FC: $9B
    ld a, b                                       ; $45FD: $78
    ld [hl], b                                    ; $45FE: $70

jr_01B_45FF:
    sbc a                                         ; $45FF: $9F
    ld c, b                                       ; $4600: $48
    ld h, l                                       ; $4601: $65
    ld a, c                                       ; $4602: $79
    inc l                                         ; $4603: $2C
    jr nz, @+$63                                  ; $4604: $20 $61

    ld [hl], d                                    ; $4606: $72
    ld h, l                                       ; $4607: $65
    jr nz, @+$7B                                  ; $4608: $20 $79

    ld l, a                                       ; $460A: $6F
    ld [hl], l                                    ; $460B: $75
    rst $38                                       ; $460C: $FF
    ld [hl], d                                    ; $460D: $72
    ld h, l                                       ; $460E: $65
    ld h, c                                       ; $460F: $61

jr_01B_4610:
    ld l, h                                       ; $4610: $6C
    ld l, h                                       ; $4611: $6C
    ld a, c                                       ; $4612: $79
    jr nz, jr_01B_4688                            ; $4613: $20 $73

    ld [hl], l                                    ; $4615: $75
    ld [hl], d                                    ; $4616: $72
    ld h, l                                       ; $4617: $65
    cp $74                                        ; $4618: $FE $74

jr_01B_461A:
    ld l, b                                       ; $461A: $68
    ld l, c                                       ; $461B: $69
    ld [hl], e                                    ; $461C: $73
    jr nz, jr_01B_4688                            ; $461D: $20 $69

    ld [hl], e                                    ; $461F: $73
    jr nz, jr_01B_4696                            ; $4620: $20 $74

    ld l, b                                       ; $4622: $68
    ld h, l                                       ; $4623: $65
    rst $38                                       ; $4624: $FF
    ld [hl], d                                    ; $4625: $72
    ld l, c                                       ; $4626: $69
    ld h, a                                       ; $4627: $67
    ld l, b                                       ; $4628: $68
    ld [hl], h                                    ; $4629: $74
    jr nz, jr_01B_46A3                            ; $462A: $20 $77

    ld h, c                                       ; $462C: $61

jr_01B_462D:
    ld a, c                                       ; $462D: $79
    ccf                                           ; $462E: $3F
    cp $FD                                        ; $462F: $FE $FD
    ld e, b                                       ; $4631: $58
    dec d                                         ; $4632: $15
    sbc e                                         ; $4633: $9B
    sbc c                                         ; $4634: $99
    ld e, d                                       ; $4635: $5A
    sbc a                                         ; $4636: $9F
    ld c, a                                       ; $4637: $4F
    ld h, [hl]                                    ; $4638: $66
    jr nz, jr_01B_469E                            ; $4639: $20 $63

    ld l, a                                       ; $463B: $6F
    ld [hl], l                                    ; $463C: $75
    ld [hl], d                                    ; $463D: $72
    ld [hl], e                                    ; $463E: $73
    ld h, l                                       ; $463F: $65
    ld hl, $41FF                                  ; $4640: $21 $FF $41
    ld l, [hl]                                    ; $4643: $6E
    ld a, c                                       ; $4644: $79
    ld [hl], a                                    ; $4645: $77
    ld h, c                                       ; $4646: $61

jr_01B_4647:
    ld a, c                                       ; $4647: $79
    inc l                                         ; $4648: $2C
    jr nz, jr_01B_46BF                            ; $4649: $20 $74

jr_01B_464B:
    ld l, b                                       ; $464B: $68
    ld h, c                                       ; $464C: $61

jr_01B_464D:
    ld [hl], h                                    ; $464D: $74
    cp $54                                        ; $464E: $FE $54
    ld l, b                                       ; $4650: $68

jr_01B_4651:
    ld [hl], l                                    ; $4651: $75
    ld l, [hl]                                    ; $4652: $6E

jr_01B_4653:
    ld h, h                                       ; $4653: $64

Jump_01B_4654:
    ld h, l                                       ; $4654: $65
    ld [hl], d                                    ; $4655: $72
    jr nz, @+$4A                                  ; $4656: $20 $48

    ld a, c                                       ; $4658: $79
    ld [hl], d                                    ; $4659: $72
    ld h, l                                       ; $465A: $65
    ld l, [hl]                                    ; $465B: $6E
    rst $38                                       ; $465C: $FF
    ld [hl], a                                    ; $465D: $77
    ld h, c                                       ; $465E: $61

jr_01B_465F:
    ld [hl], e                                    ; $465F: $73
    jr nz, jr_01B_46CA                            ; $4660: $20 $68

    ld [hl], l                                    ; $4662: $75
    ld h, a                                       ; $4663: $67
    ld h, l                                       ; $4664: $65
    inc l                                         ; $4665: $2C
    jr nz, jr_01B_46CA                            ; $4666: $20 $62

    ld [hl], l                                    ; $4668: $75
    ld [hl], h                                    ; $4669: $74
    cp $6D                                        ; $466A: $FE $6D
    ld h, l                                       ; $466C: $65
    jr nz, jr_01B_46D0                            ; $466D: $20 $61

    ld l, [hl]                                    ; $466F: $6E
    ld h, h                                       ; $4670: $64
    jr nz, jr_01B_46C2                            ; $4671: $20 $4F

    ld [hl], d                                    ; $4673: $72
    ld l, h                                       ; $4674: $6C
    ld l, a                                       ; $4675: $6F
    ld l, [hl]                                    ; $4676: $6E
    inc l                                         ; $4677: $2C
    rst $38                                       ; $4678: $FF
    db $FD                                        ; $4679: $FD
    ld e, b                                       ; $467A: $58
    ld [bc], a                                    ; $467B: $02
    sbc a                                         ; $467C: $9F
    ld [hl], a                                    ; $467D: $77
    ld h, l                                       ; $467E: $65
    jr nz, @+$69                                  ; $467F: $20 $67

    ld l, a                                       ; $4681: $6F
    jr nz, jr_01B_46FB                            ; $4682: $20 $77

    ld h, c                                       ; $4684: $61
    ld h, c                                       ; $4685: $61
    ld h, c                                       ; $4686: $61
    ld h, c                                       ; $4687: $61

jr_01B_4688:
    ld h, c                                       ; $4688: $61
    ld a, c                                       ; $4689: $79
    cp $62                                        ; $468A: $FE $62
    ld h, c                                       ; $468C: $61
    ld h, e                                       ; $468D: $63
    ld l, e                                       ; $468E: $6B
    inc l                                         ; $468F: $2C
    jr nz, jr_01B_4705                            ; $4690: $20 $73

    ld l, a                                       ; $4692: $6F
    jr nz, jr_01B_46FD                            ; $4693: $20 $68

    ld h, l                                       ; $4695: $65

jr_01B_4696:
    cp $FD                                        ; $4696: $FE $FD
    ld b, b                                       ; $4698: $40
    db $10                                        ; $4699: $10
    sbc a                                         ; $469A: $9F
    ld l, e                                       ; $469B: $6B
    ld l, [hl]                                    ; $469C: $6E
    ld h, l                                       ; $469D: $65

jr_01B_469E:
    ld [hl], a                                    ; $469E: $77
    jr nz, jr_01B_4706                            ; $469F: $20 $65

    ld a, b                                       ; $46A1: $78
    ld h, c                                       ; $46A2: $61

jr_01B_46A3:
    ld h, e                                       ; $46A3: $63
    ld [hl], h                                    ; $46A4: $74
    ld l, h                                       ; $46A5: $6C
    ld a, c                                       ; $46A6: $79
    rst $38                                       ; $46A7: $FF
    ld [hl], a                                    ; $46A8: $77
    ld l, b                                       ; $46A9: $68
    ld h, c                                       ; $46AA: $61
    ld [hl], h                                    ; $46AB: $74
    ld l, $2E                                     ; $46AC: $2E $2E
    cp $FD                                        ; $46AE: $FE $FD
    ld b, b                                       ; $46B0: $40
    jr nz, jr_01B_464D                            ; $46B1: $20 $9A

    ld b, d                                       ; $46B3: $42
    sub e                                         ; $46B4: $93
    ld h, l                                       ; $46B5: $65
    nop                                           ; $46B6: $00
    ld c, a                                       ; $46B7: $4F
    ld c, a                                       ; $46B8: $4F
    ld h, [hl]                                    ; $46B9: $66
    ret nz                                        ; $46BA: $C0

    ld e, h                                       ; $46BB: $5C
    ld hl, $076F                                  ; $46BC: $21 $6F $07

jr_01B_46BF:
    rst $38                                       ; $46BF: $FF
    ld a, a                                       ; $46C0: $7F
    dec b                                         ; $46C1: $05

jr_01B_46C2:
    nop                                           ; $46C2: $00
    ld l, e                                       ; $46C3: $6B
    ld c, d                                       ; $46C4: $4A
    inc c                                         ; $46C5: $0C
    inc b                                         ; $46C6: $04
    ld l, b                                       ; $46C7: $68
    ret nc                                        ; $46C8: $D0

    nop                                           ; $46C9: $00

jr_01B_46CA:
    dec de                                        ; $46CA: $1B
    inc hl                                        ; $46CB: $23
    ld b, a                                       ; $46CC: $47
    ld [hl+], a                                   ; $46CD: $22
    dec b                                         ; $46CE: $05
    ld b, b                                       ; $46CF: $40

jr_01B_46D0:
    dec b                                         ; $46D0: $05
    ld [bc], a                                    ; $46D1: $02
    ld l, e                                       ; $46D2: $6B
    ld c, d                                       ; $46D3: $4A
    ld a, [bc]                                    ; $46D4: $0A

jr_01B_46D5:
    inc b                                         ; $46D5: $04
    ld h, [hl]                                    ; $46D6: $66
    ret nc                                        ; $46D7: $D0

    nop                                           ; $46D8: $00
    dec de                                        ; $46D9: $1B
    ld a, [hl]                                    ; $46DA: $7E
    ld b, a                                       ; $46DB: $47
    ld [hl+], a                                   ; $46DC: $22
    dec b                                         ; $46DD: $05
    ld b, b                                       ; $46DE: $40
    dec b                                         ; $46DF: $05
    inc bc                                        ; $46E0: $03
    ld l, e                                       ; $46E1: $6B
    ld c, d                                       ; $46E2: $4A
    dec bc                                        ; $46E3: $0B
    ld [bc], a                                    ; $46E4: $02
    add hl, sp                                    ; $46E5: $39
    ret nc                                        ; $46E6: $D0

    ld h, $11                                     ; $46E7: $26 $11
    ld e, e                                       ; $46E9: $5B
    ld [hl], d                                    ; $46EA: $72
    ld [hl+], a                                   ; $46EB: $22
    dec b                                         ; $46EC: $05
    ld b, b                                       ; $46ED: $40
    ld l, e                                       ; $46EE: $6B

jr_01B_46EF:
    ld h, $0C                                     ; $46EF: $26 $0C
    sub b                                         ; $46F1: $90
    ld l, l                                       ; $46F2: $6D
    nop                                           ; $46F3: $00
    add b                                         ; $46F4: $80
    nop                                           ; $46F5: $00
    ld l, e                                       ; $46F6: $6B
    dec d                                         ; $46F7: $15
    dec c                                         ; $46F8: $0D
    ldh [rWX], a                                  ; $46F9: $E0 $4B

jr_01B_46FB:
    ld h, b                                       ; $46FB: $60
    add d                                         ; $46FC: $82

jr_01B_46FD:
    nop                                           ; $46FD: $00
    dec bc                                        ; $46FE: $0B
    nop                                           ; $46FF: $00
    dec bc                                        ; $4700: $0B
    ld [bc], a                                    ; $4701: $02
    dec bc                                        ; $4702: $0B
    inc bc                                        ; $4703: $03
    rra                                           ; $4704: $1F

jr_01B_4705:
    db $10                                        ; $4705: $10

jr_01B_4706:
    add h                                         ; $4706: $84
    nop                                           ; $4707: $00
    dec b                                         ; $4708: $05

jr_01B_4709:
    sub h                                         ; $4709: $94
    halt                                          ; $470A: $76
    jr nz, jr_01B_4714                            ; $470B: $20 $07

    add e                                         ; $470D: $83
    jr nc, jr_01B_4711                            ; $470E: $30 $01

    nop                                           ; $4710: $00

jr_01B_4711:
    nop                                           ; $4711: $00
    ld e, e                                       ; $4712: $5B
    dec de                                        ; $4713: $1B

jr_01B_4714:
    ld e, $44                                     ; $4714: $1E $44
    add e                                         ; $4716: $83

jr_01B_4717:
    ld b, b                                       ; $4717: $40
    ld bc, $0000                                  ; $4718: $01 $00 $00

jr_01B_471B:
    ld h, d                                       ; $471B: $62
    ld a, [bc]                                    ; $471C: $0A
    add hl, bc                                    ; $471D: $09
    nop                                           ; $471E: $00

jr_01B_471F:
    dec de                                        ; $471F: $1B
    ld h, a                                       ; $4720: $67
    ld b, a                                       ; $4721: $47
    ld b, d                                       ; $4722: $42
    dec d                                         ; $4723: $15
    jr nz, jr_01B_479D                            ; $4724: $20 $77

    ld d, b                                       ; $4726: $50
    inc bc                                        ; $4727: $03
    jr nz, jr_01B_46D5                            ; $4728: $20 $AB

    ld d, b                                       ; $472A: $50

jr_01B_472B:
    nop                                           ; $472B: $00
    nop                                           ; $472C: $00

jr_01B_472D:
    dec d                                         ; $472D: $15
    jr nz, jr_01B_46EF                            ; $472E: $20 $BF

    ld d, b                                       ; $4730: $50
    jr nc, jr_01B_4753                            ; $4731: $30 $20

    pop af                                        ; $4733: $F1
    ld d, b                                       ; $4734: $50
    ld h, b                                       ; $4735: $60
    jr nz, jr_01B_471F                            ; $4736: $20 $E7

    ld d, b                                       ; $4738: $50
    ld [hl], b                                    ; $4739: $70
    jr nz, jr_01B_472D                            ; $473A: $20 $F1

    ld d, b                                       ; $473C: $50
    ld b, b                                       ; $473D: $40
    jr nz, jr_01B_4709                            ; $473E: $20 $C9

    ld d, b                                       ; $4740: $50
    ret nz                                        ; $4741: $C0

    jr nz, jr_01B_4717                            ; $4742: $20 $D3

    ld d, b                                       ; $4744: $50
    ld b, b                                       ; $4745: $40
    jr nz, jr_01B_46FD                            ; $4746: $20 $B5

    ld d, b                                       ; $4748: $50
    jr nc, jr_01B_476B                            ; $4749: $30 $20

    db $D3                                        ; $474B: $D3
    ld d, b                                       ; $474C: $50
    ld h, b                                       ; $474D: $60
    jr nz, jr_01B_472D                            ; $474E: $20 $DD

    ld d, b                                       ; $4750: $50
    jr nc, jr_01B_4773                            ; $4751: $30 $20

jr_01B_4753:
    or l                                          ; $4753: $B5
    ld d, b                                       ; $4754: $50
    inc bc                                        ; $4755: $03
    jr nz, jr_01B_472B                            ; $4756: $20 $D3

    ld d, b                                       ; $4758: $50
    inc bc                                        ; $4759: $03
    jr nz, jr_01B_471B                            ; $475A: $20 $BF

    ld d, b                                       ; $475C: $50
    ld [hl], b                                    ; $475D: $70
    jr nz, @-$35                                  ; $475E: $20 $C9

    ld d, b                                       ; $4760: $50
    ld h, b                                       ; $4761: $60
    nop                                           ; $4762: $00
    ld b, l                                       ; $4763: $45
    dec de                                        ; $4764: $1B
    dec l                                         ; $4765: $2D
    ld b, a                                       ; $4766: $47
    inc d                                         ; $4767: $14
    jr nz, @-$3F                                  ; $4768: $20 $BF

    ld d, b                                       ; $476A: $50

jr_01B_476B:
    ld h, d                                       ; $476B: $62
    ld bc, $9083                                  ; $476C: $01 $83 $90
    ld bc, $0000                                  ; $476F: $01 $00 $00
    ld l, [hl]                                    ; $4772: $6E

jr_01B_4773:
    rrca                                          ; $4773: $0F
    rst $38                                       ; $4774: $FF
    ld a, a                                       ; $4775: $7F
    halt                                          ; $4776: $76
    jr nz, jr_01B_4788                            ; $4777: $20 $0F

    ld b, l                                       ; $4779: $45
    dec de                                        ; $477A: $1B
    sub l                                         ; $477B: $95
    ld b, a                                       ; $477C: $47
    ld b, d                                       ; $477D: $42
    dec d                                         ; $477E: $15
    dec h                                         ; $477F: $25
    xor l                                         ; $4780: $AD
    ld d, e                                       ; $4781: $53
    inc b                                         ; $4782: $04
    dec h                                         ; $4783: $25
    pop de                                        ; $4784: $D1
    ld d, e                                       ; $4785: $53
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00

jr_01B_4788:
    ld h, d                                       ; $4788: $62
    inc d                                         ; $4789: $14
    inc d                                         ; $478A: $14
    dec h                                         ; $478B: $25
    db $DB                                        ; $478C: $DB
    ld d, e                                       ; $478D: $53
    ld b, b                                       ; $478E: $40
    and b                                         ; $478F: $A0
    inc d                                         ; $4790: $14
    dec h                                         ; $4791: $25
    pop de                                        ; $4792: $D1
    ld d, e                                       ; $4793: $53
    ld b, d                                       ; $4794: $42
    sub e                                         ; $4795: $93
    ld h, l                                       ; $4796: $65
    nop                                           ; $4797: $00
    ld c, a                                       ; $4798: $4F
    ld c, a                                       ; $4799: $4F
    ld h, [hl]                                    ; $479A: $66
    ret nz                                        ; $479B: $C0

    ld e, h                                       ; $479C: $5C

jr_01B_479D:
    ld hl, $076F                                  ; $479D: $21 $6F $07
    rst $38                                       ; $47A0: $FF
    ld a, a                                       ; $47A1: $7F
    dec b                                         ; $47A2: $05
    nop                                           ; $47A3: $00
    ld l, e                                       ; $47A4: $6B
    ld c, d                                       ; $47A5: $4A
    inc c                                         ; $47A6: $0C
    inc b                                         ; $47A7: $04
    ld l, b                                       ; $47A8: $68
    ret nc                                        ; $47A9: $D0

    nop                                           ; $47AA: $00
    dec de                                        ; $47AB: $1B
    inc b                                         ; $47AC: $04
    ld c, b                                       ; $47AD: $48
    ld [hl+], a                                   ; $47AE: $22
    dec b                                         ; $47AF: $05
    ld b, b                                       ; $47B0: $40
    dec b                                         ; $47B1: $05
    ld [bc], a                                    ; $47B2: $02
    ld l, e                                       ; $47B3: $6B
    ld c, d                                       ; $47B4: $4A
    ld a, [bc]                                    ; $47B5: $0A

jr_01B_47B6:
    inc b                                         ; $47B6: $04
    ld h, [hl]                                    ; $47B7: $66
    ret nc                                        ; $47B8: $D0

    nop                                           ; $47B9: $00
    dec de                                        ; $47BA: $1B
    ld e, a                                       ; $47BB: $5F
    ld c, b                                       ; $47BC: $48
    ld [hl+], a                                   ; $47BD: $22
    dec b                                         ; $47BE: $05
    ld b, b                                       ; $47BF: $40
    dec b                                         ; $47C0: $05
    inc bc                                        ; $47C1: $03
    ld l, e                                       ; $47C2: $6B
    ld c, d                                       ; $47C3: $4A
    dec bc                                        ; $47C4: $0B
    ld [bc], a                                    ; $47C5: $02
    add hl, sp                                    ; $47C6: $39
    ret nc                                        ; $47C7: $D0

    ld h, $11                                     ; $47C8: $26 $11
    ld e, e                                       ; $47CA: $5B
    ld [hl], d                                    ; $47CB: $72
    ld [hl+], a                                   ; $47CC: $22
    dec b                                         ; $47CD: $05
    ld b, b                                       ; $47CE: $40
    ld l, e                                       ; $47CF: $6B

jr_01B_47D0:
    ld h, $0C                                     ; $47D0: $26 $0C

jr_01B_47D2:
    sub b                                         ; $47D2: $90
    ld l, l                                       ; $47D3: $6D
    nop                                           ; $47D4: $00
    add b                                         ; $47D5: $80
    nop                                           ; $47D6: $00
    ld l, e                                       ; $47D7: $6B
    dec d                                         ; $47D8: $15
    dec c                                         ; $47D9: $0D
    ldh [rWX], a                                  ; $47DA: $E0 $4B
    ld h, b                                       ; $47DC: $60
    add d                                         ; $47DD: $82

jr_01B_47DE:
    nop                                           ; $47DE: $00
    dec bc                                        ; $47DF: $0B

jr_01B_47E0:
    nop                                           ; $47E0: $00
    dec bc                                        ; $47E1: $0B
    ld [bc], a                                    ; $47E2: $02
    dec bc                                        ; $47E3: $0B
    inc bc                                        ; $47E4: $03
    rra                                           ; $47E5: $1F
    db $10                                        ; $47E6: $10
    add h                                         ; $47E7: $84
    nop                                           ; $47E8: $00
    dec b                                         ; $47E9: $05
    sub h                                         ; $47EA: $94
    halt                                          ; $47EB: $76
    jr nz, jr_01B_47F5                            ; $47EC: $20 $07

jr_01B_47EE:
    add e                                         ; $47EE: $83
    jr nc, jr_01B_47F2                            ; $47EF: $30 $01

    nop                                           ; $47F1: $00

jr_01B_47F2:
    nop                                           ; $47F2: $00
    ld e, e                                       ; $47F3: $5B
    dec de                                        ; $47F4: $1B

jr_01B_47F5:
    sbc a                                         ; $47F5: $9F

jr_01B_47F6:
    ld b, l                                       ; $47F6: $45
    add e                                         ; $47F7: $83
    ld b, b                                       ; $47F8: $40
    ld bc, $0000                                  ; $47F9: $01 $00 $00
    ld h, d                                       ; $47FC: $62
    dec bc                                        ; $47FD: $0B

jr_01B_47FE:
    add hl, bc                                    ; $47FE: $09
    nop                                           ; $47FF: $00

jr_01B_4800:
    dec de                                        ; $4800: $1B
    ld c, b                                       ; $4801: $48
    ld c, b                                       ; $4802: $48
    ld b, d                                       ; $4803: $42
    dec d                                         ; $4804: $15
    jr nz, jr_01B_487E                            ; $4805: $20 $77

    ld d, b                                       ; $4807: $50
    inc bc                                        ; $4808: $03
    jr nz, jr_01B_47B6                            ; $4809: $20 $AB

    ld d, b                                       ; $480B: $50
    nop                                           ; $480C: $00
    nop                                           ; $480D: $00
    dec d                                         ; $480E: $15
    jr nz, jr_01B_47D0                            ; $480F: $20 $BF

    ld d, b                                       ; $4811: $50
    jr nc, @+$22                                  ; $4812: $30 $20

jr_01B_4814:
    pop af                                        ; $4814: $F1
    ld d, b                                       ; $4815: $50
    ld a, [de]                                    ; $4816: $1A
    jr nz, jr_01B_47F6                            ; $4817: $20 $DD

    ld d, b                                       ; $4819: $50
    ld b, h                                       ; $481A: $44
    jr nz, jr_01B_47D2                            ; $481B: $20 $B5

    ld d, b                                       ; $481D: $50
    sub b                                         ; $481E: $90
    jr nz, jr_01B_47E0                            ; $481F: $20 $BF

    ld d, b                                       ; $4821: $50

jr_01B_4822:
    inc l                                         ; $4822: $2C
    jr nz, jr_01B_47EE                            ; $4823: $20 $C9

    ld d, b                                       ; $4825: $50
    ld h, b                                       ; $4826: $60
    jr nz, jr_01B_47DE                            ; $4827: $20 $B5

    ld d, b                                       ; $4829: $50
    sub h                                         ; $482A: $94
    jr nz, jr_01B_4800                            ; $482B: $20 $D3

    ld d, b                                       ; $482D: $50
    ld d, b                                       ; $482E: $50
    jr nz, jr_01B_4822                            ; $482F: $20 $F1

    ld d, b                                       ; $4831: $50
    ld b, b                                       ; $4832: $40
    jr nz, jr_01B_47FE                            ; $4833: $20 $C9

    ld d, b                                       ; $4835: $50
    jr nc, jr_01B_4858                            ; $4836: $30 $20

    db $D3                                        ; $4838: $D3
    ld d, b                                       ; $4839: $50
    ld a, h                                       ; $483A: $7C
    jr nz, @-$17                                  ; $483B: $20 $E7

    ld d, b                                       ; $483D: $50
    and d                                         ; $483E: $A2
    jr nz, jr_01B_4814                            ; $483F: $20 $D3

    ld d, b                                       ; $4841: $50
    ld b, d                                       ; $4842: $42
    nop                                           ; $4843: $00
    ld b, l                                       ; $4844: $45
    dec de                                        ; $4845: $1B
    ld c, $48                                     ; $4846: $0E $48
    inc d                                         ; $4848: $14
    jr nz, @-$3F                                  ; $4849: $20 $BF

    ld d, b                                       ; $484B: $50
    ld h, d                                       ; $484C: $62
    ld [bc], a                                    ; $484D: $02
    add e                                         ; $484E: $83
    add d                                         ; $484F: $82
    ld bc, $0000                                  ; $4850: $01 $00 $00
    ld l, [hl]                                    ; $4853: $6E
    rrca                                          ; $4854: $0F
    rst $38                                       ; $4855: $FF
    ld a, a                                       ; $4856: $7F
    halt                                          ; $4857: $76

jr_01B_4858:
    jr nz, jr_01B_4869                            ; $4858: $20 $0F

    ld b, l                                       ; $485A: $45
    ld a, [hl+]                                   ; $485B: $2A
    ld l, $5D                                     ; $485C: $2E $5D
    ld b, d                                       ; $485E: $42
    dec d                                         ; $485F: $15
    dec h                                         ; $4860: $25
    xor l                                         ; $4861: $AD
    ld d, e                                       ; $4862: $53
    inc b                                         ; $4863: $04
    dec h                                         ; $4864: $25
    pop de                                        ; $4865: $D1
    ld d, e                                       ; $4866: $53
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00

jr_01B_4869:
    ld h, d                                       ; $4869: $62
    dec d                                         ; $486A: $15
    inc d                                         ; $486B: $14
    dec h                                         ; $486C: $25
    db $DB                                        ; $486D: $DB
    ld d, e                                       ; $486E: $53
    ld b, b                                       ; $486F: $40
    and b                                         ; $4870: $A0
    inc d                                         ; $4871: $14
    dec h                                         ; $4872: $25
    pop de                                        ; $4873: $D1
    ld d, e                                       ; $4874: $53
    ld b, d                                       ; $4875: $42
    dec b                                         ; $4876: $05
    inc bc                                        ; $4877: $03
    dec b                                         ; $4878: $05
    ld h, h                                       ; $4879: $64
    scf                                           ; $487A: $37
    dec l                                         ; $487B: $2D
    ld [hl], a                                    ; $487C: $77
    db $DB                                        ; $487D: $DB

jr_01B_487E:
    db $10                                        ; $487E: $10
    ld [hl+], a                                   ; $487F: $22
    cp d                                          ; $4880: $BA
    ld b, b                                       ; $4881: $40
    ld [hl+], a                                   ; $4882: $22
    jp nz, $0140                                  ; $4883: $C2 $40 $01

    ld a, [hl-]                                   ; $4886: $3A
    ld l, $45                                     ; $4887: $2E $45
    cpl                                           ; $4889: $2F
    ld h, l                                       ; $488A: $65
    ld b, c                                       ; $488B: $41
    ld bc, $120F                                  ; $488C: $01 $0F $12
    ld b, l                                       ; $488F: $45
    dec de                                        ; $4890: $1B
    cp l                                          ; $4891: $BD
    ld b, e                                       ; $4892: $43
    ld b, e                                       ; $4893: $43
    add hl, bc                                    ; $4894: $09
    nop                                           ; $4895: $00
    dec h                                         ; $4896: $25
    and c                                         ; $4897: $A1
    db $10                                        ; $4898: $10
    ld de, $0504                                  ; $4899: $11 $04 $05
    ld c, $1B                                     ; $489C: $0E $1B
    sbc a                                         ; $489E: $9F
    ld c, c                                       ; $489F: $49
    sbc e                                         ; $48A0: $9B
    ld hl, sp+$63                                 ; $48A1: $F8 $63
    sbc a                                         ; $48A3: $9F
    ld c, b                                       ; $48A4: $48
    ld h, l                                       ; $48A5: $65
    ld l, h                                       ; $48A6: $6C
    ld l, h                                       ; $48A7: $6C
    ld l, a                                       ; $48A8: $6F
    inc l                                         ; $48A9: $2C
    rst $38                                       ; $48AA: $FF
    ld [hl], h                                    ; $48AB: $74
    ld [hl], d                                    ; $48AC: $72
    ld h, c                                       ; $48AD: $61
    halt                                          ; $48AE: $76
    ld h, l                                       ; $48AF: $65
    ld l, h                                       ; $48B0: $6C
    ld h, l                                       ; $48B1: $65
    ld [hl], d                                    ; $48B2: $72
    ld l, $FE                                     ; $48B3: $2E $FE
    db $FD                                        ; $48B5: $FD
    sbc e                                         ; $48B6: $9B
    ld a, b                                       ; $48B7: $78
    ld [hl], b                                    ; $48B8: $70
    sbc a                                         ; $48B9: $9F
    ld c, c                                       ; $48BA: $49
    ld [hl], e                                    ; $48BB: $73
    jr nz, jr_01B_4932                            ; $48BC: $20 $74

    ld l, b                                       ; $48BE: $68
    ld l, c                                       ; $48BF: $69
    ld [hl], e                                    ; $48C0: $73
    jr nz, jr_01B_4912                            ; $48C1: $20 $4F

    ld [hl], d                                    ; $48C3: $72
    ld l, a                                       ; $48C4: $6F
    ld [hl], h                                    ; $48C5: $74
    ld l, b                                       ; $48C6: $68
    ld h, l                                       ; $48C7: $65
    ccf                                           ; $48C8: $3F
    cp $FD                                        ; $48C9: $FE $FD
    sbc e                                         ; $48CB: $9B
    ld hl, sp+$63                                 ; $48CC: $F8 $63
    sbc a                                         ; $48CE: $9F
    ld e, c                                       ; $48CF: $59
    ld h, l                                       ; $48D0: $65
    ld [hl], e                                    ; $48D1: $73
    jr nz, jr_01B_493D                            ; $48D2: $20 $69

    ld [hl], h                                    ; $48D4: $74
    jr nz, jr_01B_4940                            ; $48D5: $20 $69

    ld [hl], e                                    ; $48D7: $73
    ld l, $FE                                     ; $48D8: $2E $FE
    db $FD                                        ; $48DA: $FD
    sbc e                                         ; $48DB: $9B
    ld a, b                                       ; $48DC: $78
    ld [hl], b                                    ; $48DD: $70
    sbc a                                         ; $48DE: $9F
    ld b, e                                       ; $48DF: $43
    ld h, c                                       ; $48E0: $61
    ld l, [hl]                                    ; $48E1: $6E
    jr nz, jr_01B_495D                            ; $48E2: $20 $79

    ld l, a                                       ; $48E4: $6F
    ld [hl], l                                    ; $48E5: $75
    jr nz, jr_01B_494C                            ; $48E6: $20 $64

    ld l, c                                       ; $48E8: $69
    ld [hl], d                                    ; $48E9: $72
    ld h, l                                       ; $48EA: $65
    ld h, e                                       ; $48EB: $63
    ld [hl], h                                    ; $48EC: $74
    rst $38                                       ; $48ED: $FF
    ld l, l                                       ; $48EE: $6D
    ld h, l                                       ; $48EF: $65
    jr nz, jr_01B_4966                            ; $48F0: $20 $74

    ld l, a                                       ; $48F2: $6F
    jr nz, jr_01B_4969                            ; $48F3: $20 $74

    ld l, b                                       ; $48F5: $68
    ld h, l                                       ; $48F6: $65
    cp $76                                        ; $48F7: $FE $76
    ld h, c                                       ; $48F9: $61
    ld [hl], l                                    ; $48FA: $75
    ld l, h                                       ; $48FB: $6C
    ld [hl], h                                    ; $48FC: $74
    ccf                                           ; $48FD: $3F
    cp $FD                                        ; $48FE: $FE $FD
    sbc e                                         ; $4900: $9B
    ld hl, sp+$63                                 ; $4901: $F8 $63
    sbc a                                         ; $4903: $9F
    ld d, [hl]                                    ; $4904: $56
    ld h, c                                       ; $4905: $61
    ld [hl], l                                    ; $4906: $75
    ld l, h                                       ; $4907: $6C
    ld [hl], h                                    ; $4908: $74
    ccf                                           ; $4909: $3F
    jr nz, jr_01B_4955                            ; $490A: $20 $49

    jr nz, jr_01B_4972                            ; $490C: $20 $64

    ld l, a                                       ; $490E: $6F
    ld l, [hl]                                    ; $490F: $6E
    daa                                           ; $4910: $27
    ld [hl], h                                    ; $4911: $74

jr_01B_4912:
    rst $38                                       ; $4912: $FF
    ld l, e                                       ; $4913: $6B
    ld l, [hl]                                    ; $4914: $6E
    ld l, a                                       ; $4915: $6F
    ld [hl], a                                    ; $4916: $77
    jr nz, @+$63                                  ; $4917: $20 $61

    ld l, [hl]                                    ; $4919: $6E
    ld a, c                                       ; $491A: $79
    jr nz, @+$78                                  ; $491B: $20 $76

    ld h, c                                       ; $491D: $61
    ld [hl], l                                    ; $491E: $75
    ld l, h                                       ; $491F: $6C
    ld [hl], h                                    ; $4920: $74
    ld l, $FE                                     ; $4921: $2E $FE
    ld d, h                                       ; $4923: $54
    ld l, b                                       ; $4924: $68
    ld l, c                                       ; $4925: $69
    ld [hl], e                                    ; $4926: $73
    jr nz, jr_01B_4992                            ; $4927: $20 $69

    ld [hl], e                                    ; $4929: $73
    jr nz, jr_01B_498D                            ; $492A: $20 $61

    ld l, h                                       ; $492C: $6C
    ld l, h                                       ; $492D: $6C
    rst $38                                       ; $492E: $FF
    ld [hl], h                                    ; $492F: $74
    ld l, b                                       ; $4930: $68
    ld h, c                                       ; $4931: $61

jr_01B_4932:
    ld [hl], h                                    ; $4932: $74
    daa                                           ; $4933: $27
    ld [hl], e                                    ; $4934: $73
    jr nz, jr_01B_49A3                            ; $4935: $20 $6C

    ld h, l                                       ; $4937: $65
    ld h, [hl]                                    ; $4938: $66
    ld [hl], h                                    ; $4939: $74
    jr nz, jr_01B_49AB                            ; $493A: $20 $6F

    ld h, [hl]                                    ; $493C: $66

jr_01B_493D:
    cp $4F                                        ; $493D: $FE $4F
    ld [hl], d                                    ; $493F: $72

jr_01B_4940:
    ld l, a                                       ; $4940: $6F
    ld [hl], h                                    ; $4941: $74
    ld l, b                                       ; $4942: $68
    ld h, l                                       ; $4943: $65
    ld l, $20                                     ; $4944: $2E $20
    ld e, c                                       ; $4946: $59
    ld h, l                                       ; $4947: $65
    ld h, c                                       ; $4948: $61
    ld l, b                                       ; $4949: $68
    ld l, $FE                                     ; $494A: $2E $FE

jr_01B_494C:
    db $FD                                        ; $494C: $FD
    sbc e                                         ; $494D: $9B
    ld a, b                                       ; $494E: $78
    ld [hl], b                                    ; $494F: $70
    sbc a                                         ; $4950: $9F
    ld d, a                                       ; $4951: $57
    ld l, b                                       ; $4952: $68
    ld h, c                                       ; $4953: $61
    ld [hl], h                                    ; $4954: $74

jr_01B_4955:
    ccf                                           ; $4955: $3F
    cp $FD                                        ; $4956: $FE $FD
    sbc e                                         ; $4958: $9B
    ld hl, sp+$63                                 ; $4959: $F8 $63
    sbc a                                         ; $495B: $9F
    ld d, h                                       ; $495C: $54

jr_01B_495D:
    ld l, b                                       ; $495D: $68
    ld l, c                                       ; $495E: $69
    ld [hl], e                                    ; $495F: $73
    jr nz, jr_01B_49CB                            ; $4960: $20 $69

    ld [hl], e                                    ; $4962: $73
    ld l, h                                       ; $4963: $6C
    ld h, c                                       ; $4964: $61
    ld l, [hl]                                    ; $4965: $6E

jr_01B_4966:
    ld h, h                                       ; $4966: $64
    inc l                                         ; $4967: $2C
    rst $38                                       ; $4968: $FF

jr_01B_4969:
    ld [hl], h                                    ; $4969: $74
    ld l, b                                       ; $496A: $68
    ld h, c                                       ; $496B: $61
    ld [hl], h                                    ; $496C: $74
    jr nz, jr_01B_49D7                            ; $496D: $20 $68

    ld [hl], l                                    ; $496F: $75
    ld [hl], h                                    ; $4970: $74
    inc l                                         ; $4971: $2C

jr_01B_4972:
    jr nz, jr_01B_49D5                            ; $4972: $20 $61

    ld l, [hl]                                    ; $4974: $6E
    ld h, h                                       ; $4975: $64
    cp $6D                                        ; $4976: $FE $6D
    ld h, l                                       ; $4978: $65
    ld l, $20                                     ; $4979: $2E $20
    ld e, c                                       ; $497B: $59
    ld [hl], l                                    ; $497C: $75
    ld [hl], b                                    ; $497D: $70
    inc l                                         ; $497E: $2C
    jr nz, jr_01B_49F5                            ; $497F: $20 $74

    ld l, b                                       ; $4981: $68
    ld h, c                                       ; $4982: $61
    ld [hl], h                                    ; $4983: $74
    daa                                           ; $4984: $27
    ld [hl], e                                    ; $4985: $73
    rst $38                                       ; $4986: $FF
    ld l, c                                       ; $4987: $69
    ld [hl], h                                    ; $4988: $74
    ld l, $20                                     ; $4989: $2E $20
    ld c, b                                       ; $498B: $48
    ld h, l                                       ; $498C: $65

jr_01B_498D:
    ld h, l                                       ; $498D: $65
    jr nz, jr_01B_49F8                            ; $498E: $20 $68

    ld h, l                                       ; $4990: $65
    ld h, l                                       ; $4991: $65

jr_01B_4992:
    ld l, $2E                                     ; $4992: $2E $2E
    ld l, $FE                                     ; $4994: $2E $FE
    db $FD                                        ; $4996: $FD
    sbc d                                         ; $4997: $9A
    xor a                                         ; $4998: $AF
    dec h                                         ; $4999: $25
    and c                                         ; $499A: $A1
    db $10                                        ; $499B: $10
    ld e, b                                       ; $499C: $58
    ld bc, $9B42                                  ; $499D: $01 $42 $9B
    ld hl, sp+$63                                 ; $49A0: $F8 $63
    sbc a                                         ; $49A2: $9F

jr_01B_49A3:
    ld b, [hl]                                    ; $49A3: $46
    ld l, c                                       ; $49A4: $69
    ld l, [hl]                                    ; $49A5: $6E
    ld h, h                                       ; $49A6: $64
    jr nz, jr_01B_4A0A                            ; $49A7: $20 $61

    ld l, [hl]                                    ; $49A9: $6E
    ld a, c                                       ; $49AA: $79

jr_01B_49AB:
    ld [hl], h                                    ; $49AB: $74
    ld l, b                                       ; $49AC: $68
    ld l, c                                       ; $49AD: $69
    ld l, [hl]                                    ; $49AE: $6E
    ld h, a                                       ; $49AF: $67
    ccf                                           ; $49B0: $3F
    cp $FD                                        ; $49B1: $FE $FD
    sbc d                                         ; $49B3: $9A
    ld e, b                                       ; $49B4: $58
    ld bc, $9B42                                  ; $49B5: $01 $42 $9B
    ld hl, sp+$63                                 ; $49B8: $F8 $63
    sbc a                                         ; $49BA: $9F
    ld c, c                                       ; $49BB: $49

jr_01B_49BC:
    daa                                           ; $49BC: $27
    ld l, l                                       ; $49BD: $6D

jr_01B_49BE:
    jr nz, jr_01B_4A21                            ; $49BE: $20 $61

    ld l, h                                       ; $49C0: $6C
    ld l, h                                       ; $49C1: $6C
    jr nz, jr_01B_4A25                            ; $49C2: $20 $61

    ld l, h                                       ; $49C4: $6C
    ld l, a                                       ; $49C5: $6F
    ld l, [hl]                                    ; $49C6: $6E

jr_01B_49C7:
    ld h, l                                       ; $49C7: $65
    inc l                                         ; $49C8: $2C
    rst $38                                       ; $49C9: $FF
    ld a, c                                       ; $49CA: $79

jr_01B_49CB:
    ld h, l                                       ; $49CB: $65
    ld [hl], b                                    ; $49CC: $70
    inc l                                         ; $49CD: $2C
    jr nz, jr_01B_4A44                            ; $49CE: $20 $74

    ld l, b                                       ; $49D0: $68
    ld h, c                                       ; $49D1: $61

jr_01B_49D2:
    ld [hl], h                                    ; $49D2: $74
    daa                                           ; $49D3: $27
    ld [hl], e                                    ; $49D4: $73

jr_01B_49D5:
    cp $72                                        ; $49D5: $FE $72

jr_01B_49D7:
    ld l, c                                       ; $49D7: $69
    ld h, a                                       ; $49D8: $67
    ld l, b                                       ; $49D9: $68
    ld [hl], h                                    ; $49DA: $74
    ld l, $2E                                     ; $49DB: $2E $2E
    ld l, $79                                     ; $49DD: $2E $79
    ld h, l                                       ; $49DF: $65
    ld [hl], b                                    ; $49E0: $70
    ld l, $2E                                     ; $49E1: $2E $2E
    ld l, $FE                                     ; $49E3: $2E $FE
    db $FD                                        ; $49E5: $FD
    sbc d                                         ; $49E6: $9A
    ld e, b                                       ; $49E7: $58

jr_01B_49E8:
    ld bc, $0742                                  ; $49E8: $01 $42 $07
    nop                                           ; $49EB: $00
    ld l, e                                       ; $49EC: $6B
    ld c, d                                       ; $49ED: $4A
    ld c, e                                       ; $49EE: $4B
    inc bc                                        ; $49EF: $03
    dec de                                        ; $49F0: $1B
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    dec b                                         ; $49F3: $05
    ld c, d                                       ; $49F4: $4A

jr_01B_49F5:
    dec de                                        ; $49F5: $1B
    inc bc                                        ; $49F6: $03
    nop                                           ; $49F7: $00

jr_01B_49F8:
    dec c                                         ; $49F8: $0D
    ld c, d                                       ; $49F9: $4A
    dec de                                        ; $49FA: $1B
    ld [bc], a                                    ; $49FB: $02
    nop                                           ; $49FC: $00
    dec d                                         ; $49FD: $15
    ld c, d                                       ; $49FE: $4A
    dec de                                        ; $49FF: $1B
    ld bc, $2B00                                  ; $4A00: $01 $00 $2B
    ld c, d                                       ; $4A03: $4A
    rst $38                                       ; $4A04: $FF
    add hl, bc                                    ; $4A05: $09
    nop                                           ; $4A06: $00
    jr nz, jr_01B_49BE                            ; $4A07: $20 $B5

    ld d, b                                       ; $4A09: $50

jr_01B_4A0A:
    ld b, [hl]                                    ; $4A0A: $46
    ld a, $4A                                     ; $4A0B: $3E $4A
    add hl, bc                                    ; $4A0D: $09
    nop                                           ; $4A0E: $00
    jr nz, jr_01B_49BC                            ; $4A0F: $20 $AB

    ld d, b                                       ; $4A11: $50
    ld b, [hl]                                    ; $4A12: $46
    ld a, $4A                                     ; $4A13: $3E $4A
    add hl, bc                                    ; $4A15: $09
    nop                                           ; $4A16: $00
    jr nz, jr_01B_4A76                            ; $4A17: $20 $5D

    ld d, b                                       ; $4A19: $50
    ld b, b                                       ; $4A1A: $40
    ld [$0009], sp                                ; $4A1B: $08 $09 $00
    jr nz, jr_01B_4A97                            ; $4A1E: $20 $77

    ld d, b                                       ; $4A20: $50

jr_01B_4A21:
    ld b, b                                       ; $4A21: $40
    ld [$0009], sp                                ; $4A22: $08 $09 $00

jr_01B_4A25:
    jr nz, jr_01B_49D2                            ; $4A25: $20 $AB

    ld d, b                                       ; $4A27: $50
    ld b, [hl]                                    ; $4A28: $46
    ld a, $4A                                     ; $4A29: $3E $4A
    add hl, bc                                    ; $4A2B: $09
    nop                                           ; $4A2C: $00
    jr nz, jr_01B_4A8C                            ; $4A2D: $20 $5D

    ld d, b                                       ; $4A2F: $50
    ld b, b                                       ; $4A30: $40
    ld [$0009], sp                                ; $4A31: $08 $09 $00
    jr nz, jr_01B_49C7                            ; $4A34: $20 $91

    ld d, b                                       ; $4A36: $50
    ld b, b                                       ; $4A37: $40
    ld [$0009], sp                                ; $4A38: $08 $09 $00
    jr nz, jr_01B_49E8                            ; $4A3B: $20 $AB

    ld d, b                                       ; $4A3D: $50
    sbc e                                         ; $4A3E: $9B
    ld a, b                                       ; $4A3F: $78
    ld [hl], b                                    ; $4A40: $70
    sbc a                                         ; $4A41: $9F
    ld c, b                                       ; $4A42: $48
    ld h, l                                       ; $4A43: $65

jr_01B_4A44:
    ld a, c                                       ; $4A44: $79
    jr nz, jr_01B_4A96                            ; $4A45: $20 $4F

    ld [hl], d                                    ; $4A47: $72
    ld l, h                                       ; $4A48: $6C
    ld l, a                                       ; $4A49: $6F
    ld l, [hl]                                    ; $4A4A: $6E
    inc l                                         ; $4A4B: $2C
    rst $38                                       ; $4A4C: $FF
    ld h, e                                       ; $4A4D: $63
    ld h, c                                       ; $4A4E: $61
    ld l, [hl]                                    ; $4A4F: $6E
    jr nz, jr_01B_4ACB                            ; $4A50: $20 $79

    ld l, a                                       ; $4A52: $6F
    ld [hl], l                                    ; $4A53: $75
    jr nz, jr_01B_4AC3                            ; $4A54: $20 $6D

    ld h, c                                       ; $4A56: $61
    ld l, e                                       ; $4A57: $6B
    ld h, l                                       ; $4A58: $65
    cp $6D                                        ; $4A59: $FE $6D
    ld h, l                                       ; $4A5B: $65
    jr nz, @+$63                                  ; $4A5C: $20 $61

    jr nz, jr_01B_4AD2                            ; $4A5E: $20 $72

    ld l, c                                       ; $4A60: $69
    ld l, [hl]                                    ; $4A61: $6E
    ld h, a                                       ; $4A62: $67
    ccf                                           ; $4A63: $3F

Jump_01B_4A64:
    cp $FD                                        ; $4A64: $FE $FD
    sbc e                                         ; $4A66: $9B
    ld hl, sp+$63                                 ; $4A67: $F8 $63
    sbc a                                         ; $4A69: $9F
    ld d, b                                       ; $4A6A: $50
    ld c, a                                       ; $4A6B: $4F
    ld c, a                                       ; $4A6C: $4F
    ld b, [hl]                                    ; $4A6D: $46
    ld hl, $5920                                  ; $4A6E: $21 $20 $59
    ld l, a                                       ; $4A71: $6F
    ld [hl], l                                    ; $4A72: $75
    daa                                           ; $4A73: $27
    ld [hl], d                                    ; $4A74: $72
    ld h, l                                       ; $4A75: $65

jr_01B_4A76:
    rst $38                                       ; $4A76: $FF
    ld h, c                                       ; $4A77: $61
    jr nz, jr_01B_4AEC                            ; $4A78: $20 $72

    ld l, c                                       ; $4A7A: $69
    ld l, [hl]                                    ; $4A7B: $6E
    ld h, a                                       ; $4A7C: $67
    ld hl, $FDFE                                  ; $4A7D: $21 $FE $FD
    sbc e                                         ; $4A80: $9B
    ld a, b                                       ; $4A81: $78
    ld [hl], b                                    ; $4A82: $70
    sbc a                                         ; $4A83: $9F
    ld l, $2E                                     ; $4A84: $2E $2E
    ld l, $2E                                     ; $4A86: $2E $2E
    ld l, $2E                                     ; $4A88: $2E $2E
    ld l, $2E                                     ; $4A8A: $2E $2E

jr_01B_4A8C:
    ld l, $FE                                     ; $4A8C: $2E $FE
    db $FD                                        ; $4A8E: $FD
    sbc e                                         ; $4A8F: $9B
    ld hl, sp+$63                                 ; $4A90: $F8 $63
    sbc a                                         ; $4A92: $9F
    ld c, e                                       ; $4A93: $4B
    ld l, c                                       ; $4A94: $69
    ld h, h                                       ; $4A95: $64

jr_01B_4A96:
    ld h, h                                       ; $4A96: $64

jr_01B_4A97:
    ld l, c                                       ; $4A97: $69
    ld l, [hl]                                    ; $4A98: $6E
    ld h, a                                       ; $4A99: $67
    ld hl, $4FFF                                  ; $4A9A: $21 $FF $4F
    ld l, [hl]                                    ; $4A9D: $6E
    ld l, h                                       ; $4A9E: $6C
    ld a, c                                       ; $4A9F: $79
    jr nz, jr_01B_4B0D                            ; $4AA0: $20 $6B

    ld l, c                                       ; $4AA2: $69
    ld h, h                                       ; $4AA3: $64
    ld h, h                                       ; $4AA4: $64
    ld l, c                                       ; $4AA5: $69
    ld l, [hl]                                    ; $4AA6: $6E
    ld h, a                                       ; $4AA7: $67
    ld hl, $53FE                                  ; $4AA8: $21 $FE $53
    ld l, a                                       ; $4AAB: $6F
    jr nz, jr_01B_4B25                            ; $4AAC: $20 $77

    ld l, b                                       ; $4AAE: $68
    ld h, c                                       ; $4AAF: $61
    ld [hl], h                                    ; $4AB0: $74
    jr nz, jr_01B_4B17                            ; $4AB1: $20 $64

    ld l, a                                       ; $4AB3: $6F
    rst $38                                       ; $4AB4: $FF
    ld a, c                                       ; $4AB5: $79
    ld l, a                                       ; $4AB6: $6F
    ld [hl], l                                    ; $4AB7: $75
    jr nz, jr_01B_4B31                            ; $4AB8: $20 $77

    ld h, c                                       ; $4ABA: $61
    ld l, [hl]                                    ; $4ABB: $6E
    ld [hl], h                                    ; $4ABC: $74
    ccf                                           ; $4ABD: $3F
    cp $FD                                        ; $4ABE: $FE $FD
    sbc c                                         ; $4AC0: $99
    sbc e                                         ; $4AC1: $9B
    ld a, b                                       ; $4AC2: $78

jr_01B_4AC3:
    ld [hl], b                                    ; $4AC3: $70
    sbc a                                         ; $4AC4: $9F
    jr nz, jr_01B_4B0D                            ; $4AC5: $20 $46

    ld l, a                                       ; $4AC7: $6F
    ld [hl], d                                    ; $4AC8: $72
    ld h, a                                       ; $4AC9: $67
    ld h, l                                       ; $4ACA: $65

jr_01B_4ACB:
    jr nz, jr_01B_4AED                            ; $4ACB: $20 $20

    ld b, l                                       ; $4ACD: $45
    ld [hl], c                                    ; $4ACE: $71
    ld [hl], l                                    ; $4ACF: $75
    ld l, c                                       ; $4AD0: $69
    ld [hl], b                                    ; $4AD1: $70

jr_01B_4AD2:
    rst $38                                       ; $4AD2: $FF
    jr nz, jr_01B_4B25                            ; $4AD3: $20 $50

    ld l, a                                       ; $4AD5: $6F
    ld [hl], a                                    ; $4AD6: $77
    ld h, l                                       ; $4AD7: $65
    ld [hl], d                                    ; $4AD8: $72
    jr nz, jr_01B_4AFB                            ; $4AD9: $20 $20

    ld b, h                                       ; $4ADB: $44
    ld l, a                                       ; $4ADC: $6F
    ld l, [hl]                                    ; $4ADD: $6E
    ld h, l                                       ; $4ADE: $65
    db $FD                                        ; $4ADF: $FD
    sbc h                                         ; $4AE0: $9C
    inc b                                         ; $4AE1: $04
    dec de                                        ; $4AE2: $1B
    ld a, [bc]                                    ; $4AE3: $0A
    ld c, e                                       ; $4AE4: $4B
    dec de                                        ; $4AE5: $1B
    xor $4A                                       ; $4AE6: $EE $4A
    dec de                                        ; $4AE8: $1B
    inc b                                         ; $4AE9: $04
    ld c, e                                       ; $4AEA: $4B
    dec de                                        ; $4AEB: $1B

jr_01B_4AEC:
    xor e                                         ; $4AEC: $AB

jr_01B_4AED:
    ld c, h                                       ; $4AED: $4C
    sbc d                                         ; $4AEE: $9A
    adc a                                         ; $4AEF: $8F
    ld c, $00                                     ; $4AF0: $0E $00
    dec c                                         ; $4AF2: $0D
    ld b, e                                       ; $4AF3: $43
    inc [hl]                                      ; $4AF4: $34
    dec [hl]                                      ; $4AF5: $35
    nop                                           ; $4AF6: $00
    inc c                                         ; $4AF7: $0C
    scf                                           ; $4AF8: $37
    ld b, l                                       ; $4AF9: $45
    ld b, b                                       ; $4AFA: $40

jr_01B_4AFB:
    inc h                                         ; $4AFB: $24
    ld h, $10                                     ; $4AFC: $26 $10
    dec d                                         ; $4AFE: $15
    cpl                                           ; $4AFF: $2F
    ld b, l                                       ; $4B00: $45
    dec de                                        ; $4B01: $1B
    ret nz                                        ; $4B02: $C0

    ld c, d                                       ; $4B03: $4A
    sbc d                                         ; $4B04: $9A
    adc l                                         ; $4B05: $8D
    ld b, l                                       ; $4B06: $45
    dec de                                        ; $4B07: $1B
    ret nz                                        ; $4B08: $C0

    ld c, d                                       ; $4B09: $4A
    sbc e                                         ; $4B0A: $9B
    ld hl, sp+$63                                 ; $4B0B: $F8 $63

jr_01B_4B0D:
    ld b, a                                       ; $4B0D: $47
    inc bc                                        ; $4B0E: $03
    dec de                                        ; $4B0F: $1B
    jr jr_01B_4B5D                                ; $4B10: $18 $4B

    dec de                                        ; $4B12: $1B
    ld e, c                                       ; $4B13: $59
    ld c, e                                       ; $4B14: $4B
    dec de                                        ; $4B15: $1B
    xor [hl]                                      ; $4B16: $AE

jr_01B_4B17:
    ld c, e                                       ; $4B17: $4B
    sbc a                                         ; $4B18: $9F
    ld b, h                                       ; $4B19: $44
    ld l, a                                       ; $4B1A: $6F
    ld h, l                                       ; $4B1B: $65
    ld [hl], e                                    ; $4B1C: $73
    jr nz, jr_01B_4B98                            ; $4B1D: $20 $79

    ld l, a                                       ; $4B1F: $6F
    ld [hl], l                                    ; $4B20: $75
    ld [hl], d                                    ; $4B21: $72
    jr nz, jr_01B_4B8A                            ; $4B22: $20 $66

    ld h, c                                       ; $4B24: $61

jr_01B_4B25:
    ld h, e                                       ; $4B25: $63
    ld h, l                                       ; $4B26: $65
    rst $38                                       ; $4B27: $FF
    ld l, b                                       ; $4B28: $68
    ld [hl], l                                    ; $4B29: $75
    ld [hl], d                                    ; $4B2A: $72
    ld [hl], h                                    ; $4B2B: $74
    ccf                                           ; $4B2C: $3F
    cp $27                                        ; $4B2D: $FE $27
    ld b, e                                       ; $4B2F: $43
    ld h, c                                       ; $4B30: $61

jr_01B_4B31:
    ld [hl], l                                    ; $4B31: $75
    ld [hl], e                                    ; $4B32: $73
    ld h, l                                       ; $4B33: $65
    jr nz, @+$6B                                  ; $4B34: $20 $69

    ld [hl], h                                    ; $4B36: $74
    daa                                           ; $4B37: $27
    ld [hl], e                                    ; $4B38: $73
    rst $38                                       ; $4B39: $FF
    ld c, e                                       ; $4B3A: $4B
    ld c, c                                       ; $4B3B: $49
    ld c, h                                       ; $4B3C: $4C
    ld c, h                                       ; $4B3D: $4C
    ld c, c                                       ; $4B3E: $49
    ld c, [hl]                                    ; $4B3F: $4E
    daa                                           ; $4B40: $27
    jr nz, jr_01B_4BB0                            ; $4B41: $20 $6D

    ld h, l                                       ; $4B43: $65
    ld hl, $41FE                                  ; $4B44: $21 $FE $41
    ld c, b                                       ; $4B47: $48
    ld c, b                                       ; $4B48: $48
    jr nz, jr_01B_4B93                            ; $4B49: $20 $48

    ld b, c                                       ; $4B4B: $41
    jr nz, jr_01B_4B96                            ; $4B4C: $20 $48

    ld b, c                                       ; $4B4E: $41
    jr nz, jr_01B_4B99                            ; $4B4F: $20 $48

    ld b, c                                       ; $4B51: $41
    ld hl, $FE21                                  ; $4B52: $21 $21 $FE
    db $FD                                        ; $4B55: $FD
    ld b, [hl]                                    ; $4B56: $46
    db $E3                                        ; $4B57: $E3
    ld c, e                                       ; $4B58: $4B
    sbc a                                         ; $4B59: $9F
    ld b, l                                       ; $4B5A: $45
    halt                                          ; $4B5B: $76
    ld h, l                                       ; $4B5C: $65

jr_01B_4B5D:
    ld [hl], d                                    ; $4B5D: $72
    ld a, c                                       ; $4B5E: $79
    jr nz, @+$6D                                  ; $4B5F: $20 $6B

    ld l, c                                       ; $4B61: $69
    ld h, h                                       ; $4B62: $64
    jr nz, jr_01B_4BCD                            ; $4B63: $20 $68

    ld h, c                                       ; $4B65: $61
    ld [hl], e                                    ; $4B66: $73
    rst $38                                       ; $4B67: $FF
    ld [hl], h                                    ; $4B68: $74
    ld l, b                                       ; $4B69: $68
    ld h, l                                       ; $4B6A: $65
    jr nz, jr_01B_4BDF                            ; $4B6B: $20 $72

    ld l, c                                       ; $4B6D: $69
    ld h, a                                       ; $4B6E: $67
    ld l, b                                       ; $4B6F: $68
    ld [hl], h                                    ; $4B70: $74
    jr nz, jr_01B_4BE7                            ; $4B71: $20 $74

    ld l, a                                       ; $4B73: $6F
    cp $62                                        ; $4B74: $FE $62
    ld h, l                                       ; $4B76: $65
    jr nz, jr_01B_4BEE                            ; $4B77: $20 $75

    ld h, a                                       ; $4B79: $67
    ld l, h                                       ; $4B7A: $6C
    ld a, c                                       ; $4B7B: $79
    inc l                                         ; $4B7C: $2C
    jr nz, @+$64                                  ; $4B7D: $20 $62

    ld [hl], l                                    ; $4B7F: $75
    ld [hl], h                                    ; $4B80: $74
    rst $38                                       ; $4B81: $FF
    ld a, c                                       ; $4B82: $79
    ld l, a                                       ; $4B83: $6F
    ld [hl], l                                    ; $4B84: $75
    jr nz, jr_01B_4BE8                            ; $4B85: $20 $61

    ld h, d                                       ; $4B87: $62
    ld [hl], l                                    ; $4B88: $75
    ld [hl], e                                    ; $4B89: $73

jr_01B_4B8A:
    ld h, l                                       ; $4B8A: $65
    ld h, h                                       ; $4B8B: $64
    cp $74                                        ; $4B8C: $FE $74
    ld l, b                                       ; $4B8E: $68
    ld h, l                                       ; $4B8F: $65
    jr nz, @+$72                                  ; $4B90: $20 $70

    ld [hl], d                                    ; $4B92: $72

jr_01B_4B93:
    ld l, c                                       ; $4B93: $69
    halt                                          ; $4B94: $76
    ld l, c                                       ; $4B95: $69

jr_01B_4B96:
    ld l, h                                       ; $4B96: $6C
    ld h, l                                       ; $4B97: $65

jr_01B_4B98:
    ld h, a                                       ; $4B98: $67

jr_01B_4B99:
    ld h, l                                       ; $4B99: $65
    ld hl, $48FE                                  ; $4B9A: $21 $FE $48
    ld b, c                                       ; $4B9D: $41
    jr nz, jr_01B_4BE8                            ; $4B9E: $20 $48

    ld b, c                                       ; $4BA0: $41
    ld b, c                                       ; $4BA1: $41
    jr nz, jr_01B_4BEC                            ; $4BA2: $20 $48

    ld b, c                                       ; $4BA4: $41
    ld b, c                                       ; $4BA5: $41
    ld b, c                                       ; $4BA6: $41
    ld hl, $FE21                                  ; $4BA7: $21 $21 $FE
    db $FD                                        ; $4BAA: $FD
    ld b, [hl]                                    ; $4BAB: $46
    db $E3                                        ; $4BAC: $E3
    ld c, e                                       ; $4BAD: $4B
    sbc a                                         ; $4BAE: $9F
    ld e, c                                       ; $4BAF: $59

jr_01B_4BB0:
    ld l, a                                       ; $4BB0: $6F
    ld [hl], l                                    ; $4BB1: $75
    ld [hl], d                                    ; $4BB2: $72
    jr nz, jr_01B_4C22                            ; $4BB3: $20 $6D

    ld l, a                                       ; $4BB5: $6F
    ld [hl], h                                    ; $4BB6: $74
    ld l, b                                       ; $4BB7: $68
    ld h, l                                       ; $4BB8: $65
    ld [hl], d                                    ; $4BB9: $72
    inc l                                         ; $4BBA: $2C
    rst $38                                       ; $4BBB: $FF
    ld h, h                                       ; $4BBC: $64
    ld l, a                                       ; $4BBD: $6F
    ld h, l                                       ; $4BBE: $65
    ld [hl], e                                    ; $4BBF: $73
    jr nz, jr_01B_4C35                            ; $4BC0: $20 $73

    ld l, b                                       ; $4BC2: $68
    ld h, l                                       ; $4BC3: $65
    jr nz, @+$6A                                  ; $4BC4: $20 $68

    ld h, c                                       ; $4BC6: $61
    halt                                          ; $4BC7: $76
    ld h, l                                       ; $4BC8: $65
    cp $61                                        ; $4BC9: $FE $61
    jr nz, jr_01B_4C39                            ; $4BCB: $20 $6C

jr_01B_4BCD:
    ld l, a                                       ; $4BCD: $6F
    ld [hl], l                                    ; $4BCE: $75
    ld h, h                                       ; $4BCF: $64
    jr nz, @+$64                                  ; $4BD0: $20 $62

    ld h, c                                       ; $4BD2: $61
    ld [hl], d                                    ; $4BD3: $72
    ld l, e                                       ; $4BD4: $6B
    ccf                                           ; $4BD5: $3F
    cp $42                                        ; $4BD6: $FE $42
    ld d, a                                       ; $4BD8: $57
    ld b, c                                       ; $4BD9: $41
    ld c, b                                       ; $4BDA: $48
    jr nz, jr_01B_4C25                            ; $4BDB: $20 $48

    ld b, c                                       ; $4BDD: $41
    ld c, b                                       ; $4BDE: $48

jr_01B_4BDF:
    ld hl, $FE21                                  ; $4BDF: $21 $21 $FE
    db $FD                                        ; $4BE2: $FD
    sbc d                                         ; $4BE3: $9A
    adc [hl]                                      ; $4BE4: $8E
    dec de                                        ; $4BE5: $1B
    add h                                         ; $4BE6: $84

jr_01B_4BE7:
    ld c, h                                       ; $4BE7: $4C

jr_01B_4BE8:
    dec de                                        ; $4BE8: $1B
    ret nz                                        ; $4BE9: $C0

    ld c, d                                       ; $4BEA: $4A
    ld h, c                                       ; $4BEB: $61

jr_01B_4BEC:
    nop                                           ; $4BEC: $00
    inc c                                         ; $4BED: $0C

jr_01B_4BEE:
    ld b, e                                       ; $4BEE: $43
    ld b, e                                       ; $4BEF: $43
    ld [bc], a                                    ; $4BF0: $02
    rst $38                                       ; $4BF1: $FF
    nop                                           ; $4BF2: $00
    ld h, h                                       ; $4BF3: $64
    nop                                           ; $4BF4: $00
    inc hl                                        ; $4BF5: $23
    inc [hl]                                      ; $4BF6: $34
    inc [hl]                                      ; $4BF7: $34
    ld [bc], a                                    ; $4BF8: $02
    ld bc, $6401                                  ; $4BF9: $01 $01 $64
    nop                                           ; $4BFC: $00
    inc hl                                        ; $4BFD: $23
    dec [hl]                                      ; $4BFE: $35
    dec [hl]                                      ; $4BFF: $35
    inc bc                                        ; $4C00: $03
    ld [hl], $01                                  ; $4C01: $36 $01
    ld h, h                                       ; $4C03: $64
    nop                                           ; $4C04: $00
    inc hl                                        ; $4C05: $23
    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00
    inc b                                         ; $4C08: $04
    ld d, b                                       ; $4C09: $50
    ld bc, $0064                                  ; $4C0A: $01 $64 $00
    ld h, $0C                                     ; $4C0D: $26 $0C
    inc c                                         ; $4C0F: $0C
    ld [bc], a                                    ; $4C10: $02
    dec bc                                        ; $4C11: $0B
    ld bc, $0064                                  ; $4C12: $01 $64 $00
    inc hl                                        ; $4C15: $23
    scf                                           ; $4C16: $37
    scf                                           ; $4C17: $37
    inc b                                         ; $4C18: $04
    rst $38                                       ; $4C19: $FF
    nop                                           ; $4C1A: $00
    sub [hl]                                      ; $4C1B: $96
    nop                                           ; $4C1C: $00
    ld h, $45                                     ; $4C1D: $26 $45
    ld b, l                                       ; $4C1F: $45
    inc bc                                        ; $4C20: $03
    ld b, e                                       ; $4C21: $43

jr_01B_4C22:
    ld bc, $0096                                  ; $4C22: $01 $96 $00

jr_01B_4C25:
    ld h, $40                                     ; $4C25: $26 $40
    ld b, b                                       ; $4C27: $40
    ld [bc], a                                    ; $4C28: $02
    ld a, $01                                     ; $4C29: $3E $01
    sub [hl]                                      ; $4C2B: $96
    nop                                           ; $4C2C: $00
    ld h, $24                                     ; $4C2D: $26 $24
    inc h                                         ; $4C2F: $24
    ld [bc], a                                    ; $4C30: $02
    dec [hl]                                      ; $4C31: $35
    ld bc, $0096                                  ; $4C32: $01 $96 $00

jr_01B_4C35:
    ld h, $10                                     ; $4C35: $26 $10
    db $10                                        ; $4C37: $10
    inc bc                                        ; $4C38: $03

jr_01B_4C39:
    dec [hl]                                      ; $4C39: $35
    ld bc, $01F4                                  ; $4C3A: $01 $F4 $01
    ld [hl-], a                                   ; $4C3D: $32
    dec d                                         ; $4C3E: $15
    dec d                                         ; $4C3F: $15
    dec b                                         ; $4C40: $05
    inc [hl]                                      ; $4C41: $34
    ld bc, $0258                                  ; $4C42: $01 $58 $02
    ld [hl-], a                                   ; $4C45: $32
    cpl                                           ; $4C46: $2F
    cpl                                           ; $4C47: $2F
    dec b                                         ; $4C48: $05
    ld sp, $8A01                                  ; $4C49: $31 $01 $8A
    ld [bc], a                                    ; $4C4C: $02
    ld [hl-], a                                   ; $4C4D: $32
    sbc e                                         ; $4C4E: $9B
    ld hl, sp+$63                                 ; $4C4F: $F8 $63
    sbc a                                         ; $4C51: $9F
    ld c, b                                       ; $4C52: $48
    ld h, l                                       ; $4C53: $65
    ld [hl], d                                    ; $4C54: $72
    ld h, l                                       ; $4C55: $65
    jr nz, jr_01B_4CBF                            ; $4C56: $20 $67

    ld l, a                                       ; $4C58: $6F
    ld h, l                                       ; $4C59: $65
    ld [hl], e                                    ; $4C5A: $73
    ld hl, $FDFE                                  ; $4C5B: $21 $FE $FD
    sbc d                                         ; $4C5E: $9A
    add hl, bc                                    ; $4C5F: $09
    ld [bc], a                                    ; $4C60: $02
    dec de                                        ; $4C61: $1B
    rst $10                                       ; $4C62: $D7
    ld c, [hl]                                    ; $4C63: $4E
    ld e, l                                       ; $4C64: $5D
    sbc e                                         ; $4C65: $9B
    ld hl, sp+$63                                 ; $4C66: $F8 $63
    sbc a                                         ; $4C68: $9F
    ld c, b                                       ; $4C69: $48
    ld h, l                                       ; $4C6A: $65
    ld [hl], d                                    ; $4C6B: $72
    ld h, l                                       ; $4C6C: $65
    daa                                           ; $4C6D: $27
    ld [hl], e                                    ; $4C6E: $73
    jr nz, jr_01B_4CE5                            ; $4C6F: $20 $74

    ld l, b                                       ; $4C71: $68
    ld h, c                                       ; $4C72: $61
    ld [hl], h                                    ; $4C73: $74
    rst $38                                       ; $4C74: $FF
    db $FC                                        ; $4C75: $FC
    cp $66                                        ; $4C76: $FE $66
    ld [hl], d                                    ; $4C78: $72
    ld h, l                                       ; $4C79: $65
    ld h, c                                       ; $4C7A: $61
    ld l, e                                       ; $4C7B: $6B
    ld a, c                                       ; $4C7C: $79
    ld hl, $FDFE                                  ; $4C7D: $21 $FE $FD
    ld b, l                                       ; $4C80: $45
    dec de                                        ; $4C81: $1B
    ret nz                                        ; $4C82: $C0

    ld c, d                                       ; $4C83: $4A
    sbc e                                         ; $4C84: $9B
    ld hl, sp+$63                                 ; $4C85: $F8 $63
    sbc a                                         ; $4C87: $9F
    ld d, e                                       ; $4C88: $53
    ld l, a                                       ; $4C89: $6F
    ld [hl], d                                    ; $4C8A: $72
    ld [hl], d                                    ; $4C8B: $72
    ld a, c                                       ; $4C8C: $79
    ld hl, $59FE                                  ; $4C8D: $21 $FE $59
    ld l, a                                       ; $4C90: $6F
    ld [hl], l                                    ; $4C91: $75
    ld [hl], d                                    ; $4C92: $72
    jr nz, jr_01B_4CE7                            ; $4C93: $20 $52

    ld l, c                                       ; $4C95: $69
    ld l, [hl]                                    ; $4C96: $6E
    ld h, a                                       ; $4C97: $67
    jr nz, jr_01B_4CDC                            ; $4C98: $20 $42

    ld h, c                                       ; $4C9A: $61
    ld l, [hl]                                    ; $4C9B: $6E
    ld l, e                                       ; $4C9C: $6B
    rst $38                                       ; $4C9D: $FF
    ld l, c                                       ; $4C9E: $69
    ld [hl], e                                    ; $4C9F: $73
    jr nz, @+$68                                  ; $4CA0: $20 $66

    ld [hl], l                                    ; $4CA2: $75
    ld l, h                                       ; $4CA3: $6C
    ld l, h                                       ; $4CA4: $6C
    ld l, $FE                                     ; $4CA5: $2E $FE
    db $FD                                        ; $4CA7: $FD
    ld b, [hl]                                    ; $4CA8: $46
    ret nz                                        ; $4CA9: $C0

    ld c, d                                       ; $4CAA: $4A
    sbc e                                         ; $4CAB: $9B
    ld hl, sp+$63                                 ; $4CAC: $F8 $63
    sbc a                                         ; $4CAE: $9F
    ld b, d                                       ; $4CAF: $42
    ld h, l                                       ; $4CB0: $65
    jr nz, jr_01B_4D16                            ; $4CB1: $20 $63

    ld h, c                                       ; $4CB3: $61
    ld [hl], d                                    ; $4CB4: $72
    ld h, l                                       ; $4CB5: $65
    ld h, [hl]                                    ; $4CB6: $66
    ld [hl], l                                    ; $4CB7: $75
    ld l, h                                       ; $4CB8: $6C
    ld l, $FF                                     ; $4CB9: $2E $FF
    ld b, c                                       ; $4CBB: $41
    ld l, [hl]                                    ; $4CBC: $6E
    ld l, c                                       ; $4CBD: $69

jr_01B_4CBE:
    ld l, l                                       ; $4CBE: $6D

jr_01B_4CBF:
    ld l, c                                       ; $4CBF: $69
    ld [hl], h                                    ; $4CC0: $74
    ld h, l                                       ; $4CC1: $65
    jr nz, jr_01B_4D27                            ; $4CC2: $20 $63

    ld h, c                                       ; $4CC4: $61
    ld [hl], l                                    ; $4CC5: $75
    ld [hl], e                                    ; $4CC6: $73
    ld h, l                                       ; $4CC7: $65
    ld [hl], e                                    ; $4CC8: $73
    cp $73                                        ; $4CC9: $FE $73
    ld h, l                                       ; $4CCB: $65
    halt                                          ; $4CCC: $76
    ld h, l                                       ; $4CCD: $65
    ld [hl], d                                    ; $4CCE: $72
    ld h, l                                       ; $4CCF: $65
    jr nz, jr_01B_4D3A                            ; $4CD0: $20 $68

    ld h, l                                       ; $4CD2: $65
    ld h, c                                       ; $4CD3: $61
    ld h, h                                       ; $4CD4: $64
    rst $38                                       ; $4CD5: $FF
    ld [hl], e                                    ; $4CD6: $73
    ld [hl], a                                    ; $4CD7: $77
    ld h, l                                       ; $4CD8: $65
    ld l, h                                       ; $4CD9: $6C
    ld l, h                                       ; $4CDA: $6C
    ld l, c                                       ; $4CDB: $69

jr_01B_4CDC:
    ld l, [hl]                                    ; $4CDC: $6E
    ld h, a                                       ; $4CDD: $67
    ld l, $FE                                     ; $4CDE: $2E $FE
    db $FD                                        ; $4CE0: $FD
    sbc e                                         ; $4CE1: $9B
    ld a, b                                       ; $4CE2: $78
    ld [hl], b                                    ; $4CE3: $70
    sbc a                                         ; $4CE4: $9F

jr_01B_4CE5:
    ld c, c                                       ; $4CE5: $49
    ld [hl], h                                    ; $4CE6: $74

jr_01B_4CE7:
    jr nz, @+$66                                  ; $4CE7: $20 $64

    ld l, a                                       ; $4CE9: $6F
    ld h, l                                       ; $4CEA: $65
    ld [hl], e                                    ; $4CEB: $73
    ccf                                           ; $4CEC: $3F
    ld hl, $FDFE                                  ; $4CED: $21 $FE $FD
    sbc e                                         ; $4CF0: $9B
    ld hl, sp+$63                                 ; $4CF1: $F8 $63
    sbc a                                         ; $4CF3: $9F
    ld d, e                                       ; $4CF4: $53
    ld [hl], l                                    ; $4CF5: $75
    ld [hl], d                                    ; $4CF6: $72
    ld h, l                                       ; $4CF7: $65
    ld hl, $FDFE                                  ; $4CF8: $21 $FE $FD
    sbc e                                         ; $4CFB: $9B
    ld a, b                                       ; $4CFC: $78
    ld [hl], b                                    ; $4CFD: $70
    sbc a                                         ; $4CFE: $9F
    ld l, $2E                                     ; $4CFF: $2E $2E
    ld l, $2E                                     ; $4D01: $2E $2E
    ld l, $2E                                     ; $4D03: $2E $2E
    ld l, $2E                                     ; $4D05: $2E $2E
    ld l, $FE                                     ; $4D07: $2E $FE
    db $FD                                        ; $4D09: $FD
    sbc d                                         ; $4D0A: $9A
    rlca                                          ; $4D0B: $07
    nop                                           ; $4D0C: $00
    add c                                         ; $4D0D: $81
    ld e, l                                       ; $4D0E: $5D
    add hl, bc                                    ; $4D0F: $09
    nop                                           ; $4D10: $00
    jr nz, jr_01B_4CBE                            ; $4D11: $20 $AB

    ld d, b                                       ; $4D13: $50
    ld [de], a                                    ; $4D14: $12
    ld b, d                                       ; $4D15: $42

jr_01B_4D16:
    sbc e                                         ; $4D16: $9B
    ld a, b                                       ; $4D17: $78
    ld [hl], b                                    ; $4D18: $70
    sbc a                                         ; $4D19: $9F
    ld c, b                                       ; $4D1A: $48
    ld h, l                                       ; $4D1B: $65
    ld a, c                                       ; $4D1C: $79
    inc l                                         ; $4D1D: $2C
    jr nz, jr_01B_4D94                            ; $4D1E: $20 $74

    ld l, b                                       ; $4D20: $68
    ld h, l                                       ; $4D21: $65
    jr nz, @+$68                                  ; $4D22: $20 $66

    ld h, l                                       ; $4D24: $65
    ld [hl], d                                    ; $4D25: $72
    ld [hl], d                                    ; $4D26: $72

jr_01B_4D27:
    ld a, c                                       ; $4D27: $79
    rst $38                                       ; $4D28: $FF
    ld l, h                                       ; $4D29: $6C
    ld h, l                                       ; $4D2A: $65
    ld h, [hl]                                    ; $4D2B: $66
    ld [hl], h                                    ; $4D2C: $74
    ld hl, $48FE                                  ; $4D2D: $21 $FE $48
    ld l, a                                       ; $4D30: $6F
    ld [hl], a                                    ; $4D31: $77
    jr nz, jr_01B_4D98                            ; $4D32: $20 $64

    ld l, a                                       ; $4D34: $6F
    jr nz, @+$4B                                  ; $4D35: $20 $49

    jr nz, @+$69                                  ; $4D37: $20 $67

    ld h, l                                       ; $4D39: $65

jr_01B_4D3A:
    ld [hl], h                                    ; $4D3A: $74
    rst $38                                       ; $4D3B: $FF
    ld h, d                                       ; $4D3C: $62
    ld h, c                                       ; $4D3D: $61
    ld h, e                                       ; $4D3E: $63
    ld l, e                                       ; $4D3F: $6B
    jr nz, jr_01B_4DB6                            ; $4D40: $20 $74

    ld l, a                                       ; $4D42: $6F
    jr nz, jr_01B_4D88                            ; $4D43: $20 $43

    ld h, c                                       ; $4D45: $61
    ld l, h                                       ; $4D46: $6C
    ld h, h                                       ; $4D47: $64
    ccf                                           ; $4D48: $3F
    cp $FD                                        ; $4D49: $FE $FD
    sbc e                                         ; $4D4B: $9B
    ld hl, sp+$63                                 ; $4D4C: $F8 $63
    sbc a                                         ; $4D4E: $9F
    ld c, c                                       ; $4D4F: $49
    jr nz, jr_01B_4DB9                            ; $4D50: $20 $67

    ld [hl], l                                    ; $4D52: $75
    ld h, l                                       ; $4D53: $65
    ld [hl], e                                    ; $4D54: $73
    ld [hl], e                                    ; $4D55: $73
    jr nz, @+$7B                                  ; $4D56: $20 $79

    ld l, a                                       ; $4D58: $6F
    ld [hl], l                                    ; $4D59: $75
    daa                                           ; $4D5A: $27
    ld [hl], d                                    ; $4D5B: $72
    ld h, l                                       ; $4D5C: $65
    rst $38                                       ; $4D5D: $FF
    ld [hl], e                                    ; $4D5E: $73
    ld [hl], h                                    ; $4D5F: $74
    ld [hl], l                                    ; $4D60: $75
    ld h, e                                       ; $4D61: $63
    ld l, e                                       ; $4D62: $6B
    jr nz, jr_01B_4DCD                            ; $4D63: $20 $68

    ld h, l                                       ; $4D65: $65
    ld [hl], d                                    ; $4D66: $72
    ld h, l                                       ; $4D67: $65
    jr nz, @+$79                                  ; $4D68: $20 $77

    ld l, c                                       ; $4D6A: $69
    ld [hl], h                                    ; $4D6B: $74
    ld l, b                                       ; $4D6C: $68
    cp $6D                                        ; $4D6D: $FE $6D
    ld h, l                                       ; $4D6F: $65
    inc l                                         ; $4D70: $2C
    jr nz, jr_01B_4DE7                            ; $4D71: $20 $74

    ld l, b                                       ; $4D73: $68
    ld h, l                                       ; $4D74: $65
    ld l, [hl]                                    ; $4D75: $6E
    ld hl, $FDFE                                  ; $4D76: $21 $FE $FD
    sbc e                                         ; $4D79: $9B
    ld a, b                                       ; $4D7A: $78
    ld [hl], b                                    ; $4D7B: $70
    sbc a                                         ; $4D7C: $9F
    ld l, $2E                                     ; $4D7D: $2E $2E
    ld l, $2E                                     ; $4D7F: $2E $2E
    ld l, $2E                                     ; $4D81: $2E $2E
    ld l, $2E                                     ; $4D83: $2E $2E
    ld l, $FE                                     ; $4D85: $2E $FE
    db $FD                                        ; $4D87: $FD

jr_01B_4D88:
    sbc e                                         ; $4D88: $9B
    ld hl, sp+$63                                 ; $4D89: $F8 $63
    sbc a                                         ; $4D8B: $9F
    ld b, a                                       ; $4D8C: $47
    ld h, l                                       ; $4D8D: $65
    ld h, l                                       ; $4D8E: $65
    ld a, d                                       ; $4D8F: $7A
    inc l                                         ; $4D90: $2C
    jr nz, jr_01B_4DF7                            ; $4D91: $20 $64

    ld l, a                                       ; $4D93: $6F

jr_01B_4D94:
    ld l, [hl]                                    ; $4D94: $6E
    daa                                           ; $4D95: $27
    ld [hl], h                                    ; $4D96: $74
    rst $38                                       ; $4D97: $FF

jr_01B_4D98:
    ld [hl], h                                    ; $4D98: $74
    ld h, c                                       ; $4D99: $61
    ld l, e                                       ; $4D9A: $6B
    ld h, l                                       ; $4D9B: $65
    jr nz, jr_01B_4E07                            ; $4D9C: $20 $69

    ld [hl], h                                    ; $4D9E: $74
    jr nz, @+$75                                  ; $4D9F: $20 $73

    ld l, a                                       ; $4DA1: $6F
    cp $73                                        ; $4DA2: $FE $73
    ld h, l                                       ; $4DA4: $65
    ld [hl], d                                    ; $4DA5: $72
    ld l, c                                       ; $4DA6: $69
    ld l, a                                       ; $4DA7: $6F
    ld [hl], l                                    ; $4DA8: $75
    ld [hl], e                                    ; $4DA9: $73
    ld l, h                                       ; $4DAA: $6C
    ld a, c                                       ; $4DAB: $79
    inc l                                         ; $4DAC: $2C
    jr nz, jr_01B_4DF8                            ; $4DAD: $20 $49

    daa                                           ; $4DAF: $27
    ld l, l                                       ; $4DB0: $6D
    rst $38                                       ; $4DB1: $FF
    ld l, d                                       ; $4DB2: $6A
    ld [hl], l                                    ; $4DB3: $75
    ld [hl], e                                    ; $4DB4: $73
    ld [hl], h                                    ; $4DB5: $74

jr_01B_4DB6:
    jr nz, jr_01B_4E23                            ; $4DB6: $20 $6B

    ld l, c                                       ; $4DB8: $69

jr_01B_4DB9:
    ld h, h                                       ; $4DB9: $64
    ld h, h                                       ; $4DBA: $64
    ld l, c                                       ; $4DBB: $69
    ld l, [hl]                                    ; $4DBC: $6E
    ld h, a                                       ; $4DBD: $67
    ld hl, $4EFE                                  ; $4DBE: $21 $FE $4E
    ld l, a                                       ; $4DC1: $6F
    ld [hl], a                                    ; $4DC2: $77
    jr nz, jr_01B_4E31                            ; $4DC3: $20 $6C

    ld h, l                                       ; $4DC5: $65
    ld [hl], h                                    ; $4DC6: $74
    jr nz, jr_01B_4E36                            ; $4DC7: $20 $6D

    ld h, l                                       ; $4DC9: $65
    rst $38                                       ; $4DCA: $FF
    ld [hl], e                                    ; $4DCB: $73
    ld h, l                                       ; $4DCC: $65

jr_01B_4DCD:
    ld h, l                                       ; $4DCD: $65
    ld l, $2E                                     ; $4DCE: $2E $2E
    ld l, $FE                                     ; $4DD0: $2E $FE
    ld c, b                                       ; $4DD2: $48
    ld l, l                                       ; $4DD3: $6D
    ld l, l                                       ; $4DD4: $6D
    ld l, l                                       ; $4DD5: $6D
    ld l, $2E                                     ; $4DD6: $2E $2E
    ld l, $49                                     ; $4DD8: $2E $49
    jr nz, jr_01B_4E47                            ; $4DDA: $20 $6B

    ld l, [hl]                                    ; $4DDC: $6E
    ld l, a                                       ; $4DDD: $6F
    ld [hl], a                                    ; $4DDE: $77
    ld hl, $43FF                                  ; $4DDF: $21 $FF $43
    ld l, a                                       ; $4DE2: $6F
    ld l, l                                       ; $4DE3: $6D
    ld h, l                                       ; $4DE4: $65
    jr nz, jr_01B_4E5E                            ; $4DE5: $20 $77

jr_01B_4DE7:
    ld l, c                                       ; $4DE7: $69
    ld [hl], h                                    ; $4DE8: $74
    ld l, b                                       ; $4DE9: $68
    jr nz, jr_01B_4E59                            ; $4DEA: $20 $6D

    ld h, l                                       ; $4DEC: $65
    ld hl, $FDFE                                  ; $4DED: $21 $FE $FD
    sbc d                                         ; $4DF0: $9A
    ld e, b                                       ; $4DF1: $58
    ld bc, $9B42                                  ; $4DF2: $01 $42 $9B
    ld c, b                                       ; $4DF5: $48
    ld b, [hl]                                    ; $4DF6: $46

jr_01B_4DF7:
    sbc a                                         ; $4DF7: $9F

jr_01B_4DF8:
    ld d, h                                       ; $4DF8: $54
    ld l, a                                       ; $4DF9: $6F
    ld l, [hl]                                    ; $4DFA: $6E
    ld a, c                                       ; $4DFB: $79
    ld hl, $FDFE                                  ; $4DFC: $21 $FE $FD
    sbc d                                         ; $4DFF: $9A
    ld e, h                                       ; $4E00: $5C
    nop                                           ; $4E01: $00
    ld [bc], a                                    ; $4E02: $02
    ld b, d                                       ; $4E03: $42
    sbc e                                         ; $4E04: $9B
    ld a, b                                       ; $4E05: $78
    ld [hl], b                                    ; $4E06: $70

jr_01B_4E07:
    sbc a                                         ; $4E07: $9F
    ld d, a                                       ; $4E08: $57
    ld l, b                                       ; $4E09: $68
    ld h, c                                       ; $4E0A: $61
    ld [hl], h                                    ; $4E0B: $74
    jr nz, jr_01B_4E77                            ; $4E0C: $20 $69

    ld [hl], e                                    ; $4E0E: $73
    jr nz, jr_01B_4E7A                            ; $4E0F: $20 $69

    ld [hl], h                                    ; $4E11: $74
    ccf                                           ; $4E12: $3F
    cp $FD                                        ; $4E13: $FE $FD
    sbc e                                         ; $4E15: $9B
    ld c, b                                       ; $4E16: $48
    ld b, [hl]                                    ; $4E17: $46
    sbc a                                         ; $4E18: $9F
    ld d, e                                       ; $4E19: $53
    ld l, a                                       ; $4E1A: $6F
    ld l, l                                       ; $4E1B: $6D
    ld h, l                                       ; $4E1C: $65
    ld [hl], h                                    ; $4E1D: $74
    ld l, b                                       ; $4E1E: $68
    ld l, c                                       ; $4E1F: $69
    ld l, [hl]                                    ; $4E20: $6E
    ld h, a                                       ; $4E21: $67
    rst $38                                       ; $4E22: $FF

jr_01B_4E23:
    ld l, b                                       ; $4E23: $68
    ld l, a                                       ; $4E24: $6F
    ld [hl], d                                    ; $4E25: $72
    ld [hl], d                                    ; $4E26: $72
    ld l, c                                       ; $4E27: $69
    ld h, d                                       ; $4E28: $62
    ld l, h                                       ; $4E29: $6C
    ld h, l                                       ; $4E2A: $65
    cp $68                                        ; $4E2B: $FE $68
    ld h, c                                       ; $4E2D: $61
    ld [hl], e                                    ; $4E2E: $73
    jr nz, jr_01B_4E99                            ; $4E2F: $20 $68

jr_01B_4E31:
    ld h, c                                       ; $4E31: $61
    ld [hl], b                                    ; $4E32: $70
    ld [hl], b                                    ; $4E33: $70
    ld h, l                                       ; $4E34: $65
    ld l, [hl]                                    ; $4E35: $6E

jr_01B_4E36:
    ld h, l                                       ; $4E36: $65
    ld h, h                                       ; $4E37: $64
    ld l, $FF                                     ; $4E38: $2E $FF
    ld e, c                                       ; $4E3A: $59
    ld l, a                                       ; $4E3B: $6F
    ld [hl], l                                    ; $4E3C: $75
    jr nz, jr_01B_4EAC                            ; $4E3D: $20 $6D

    ld [hl], l                                    ; $4E3F: $75
    ld [hl], e                                    ; $4E40: $73
    ld [hl], h                                    ; $4E41: $74
    jr nz, jr_01B_4EA7                            ; $4E42: $20 $63

    ld l, a                                       ; $4E44: $6F
    ld l, l                                       ; $4E45: $6D
    ld h, l                                       ; $4E46: $65

jr_01B_4E47:
    cp $77                                        ; $4E47: $FE $77
    ld l, c                                       ; $4E49: $69
    ld [hl], h                                    ; $4E4A: $74
    ld l, b                                       ; $4E4B: $68
    jr nz, jr_01B_4EBB                            ; $4E4C: $20 $6D

    ld h, l                                       ; $4E4E: $65
    ld l, $FE                                     ; $4E4F: $2E $FE
    db $FD                                        ; $4E51: $FD
    sbc e                                         ; $4E52: $9B
    ld a, b                                       ; $4E53: $78
    ld [hl], b                                    ; $4E54: $70
    sbc a                                         ; $4E55: $9F
    ld c, h                                       ; $4E56: $4C
    ld h, l                                       ; $4E57: $65
    ld h, c                                       ; $4E58: $61

jr_01B_4E59:
    ld h, h                                       ; $4E59: $64
    jr nz, jr_01B_4ED0                            ; $4E5A: $20 $74

    ld l, b                                       ; $4E5C: $68
    ld h, l                                       ; $4E5D: $65

jr_01B_4E5E:
    jr nz, jr_01B_4ED7                            ; $4E5E: $20 $77

    ld h, c                                       ; $4E60: $61
    ld a, c                                       ; $4E61: $79
    ld l, $FE                                     ; $4E62: $2E $FE

Jump_01B_4E64:
    db $FD                                        ; $4E64: $FD
    sbc d                                         ; $4E65: $9A
    ld e, h                                       ; $4E66: $5C
    ld bc, $4203                                  ; $4E67: $01 $03 $42
    xor h                                         ; $4E6A: $AC
    or d                                          ; $4E6B: $B2
    and d                                         ; $4E6C: $A2
    ld bc, $044B                                  ; $4E6D: $01 $4B $04
    dec de                                        ; $4E70: $1B
    ld c, $00                                     ; $4E71: $0E $00
    sbc $4F                                       ; $4E73: $DE $4F
    dec de                                        ; $4E75: $1B
    rrca                                          ; $4E76: $0F

jr_01B_4E77:
    nop                                           ; $4E77: $00
    sbc $4F                                       ; $4E78: $DE $4F

jr_01B_4E7A:
    dec de                                        ; $4E7A: $1B
    ld [de], a                                    ; $4E7B: $12
    nop                                           ; $4E7C: $00
    ld [$1B4E], a                                 ; $4E7D: $EA $4E $1B
    inc de                                        ; $4E80: $13
    nop                                           ; $4E81: $00
    ld [$1B4E], a                                 ; $4E82: $EA $4E $1B
    inc d                                         ; $4E85: $14
    nop                                           ; $4E86: $00
    dec c                                         ; $4E87: $0D
    ld c, a                                       ; $4E88: $4F
    rst $38                                       ; $4E89: $FF
    sub e                                         ; $4E8A: $93
    ld h, l                                       ; $4E8B: $65
    rrca                                          ; $4E8C: $0F
    ld c, a                                       ; $4E8D: $4F
    ld c, a                                       ; $4E8E: $4F
    ld h, h                                       ; $4E8F: $64
    jp z, Jump_01B_6653                           ; $4E90: $CA $53 $66

    ret nz                                        ; $4E93: $C0

    ld e, h                                       ; $4E94: $5C
    ld hl, $0005                                  ; $4E95: $21 $05 $00
    add c                                         ; $4E98: $81

jr_01B_4E99:
    ld e, l                                       ; $4E99: $5D
    nop                                           ; $4E9A: $00
    nop                                           ; $4E9B: $00

jr_01B_4E9C:
    nop                                           ; $4E9C: $00
    ret nc                                        ; $4E9D: $D0

    nop                                           ; $4E9E: $00
    jr nz, jr_01B_4E9C                            ; $4E9F: $20 $FB

    ld d, b                                       ; $4EA1: $50
    ld [hl+], a                                   ; $4EA2: $22
    dec b                                         ; $4EA3: $05
    ld b, b                                       ; $4EA4: $40
    dec b                                         ; $4EA5: $05
    ld [bc], a                                    ; $4EA6: $02

jr_01B_4EA7:
    db $ED                                        ; $4EA7: $ED
    ld h, e                                       ; $4EA8: $63
    rlca                                          ; $4EA9: $07
    inc c                                         ; $4EAA: $0C
    rst $00                                       ; $4EAB: $C7

jr_01B_4EAC:
    ret nc                                        ; $4EAC: $D0

    nop                                           ; $4EAD: $00
    rrca                                          ; $4EAE: $0F
    ret c                                         ; $4EAF: $D8

    ld d, d                                       ; $4EB0: $52
    dec de                                        ; $4EB1: $1B
    adc $4E                                       ; $4EB2: $CE $4E
    ld l, e                                       ; $4EB4: $6B
    jr nc, jr_01B_4EC4                            ; $4EB5: $30 $0D

    jr nc, jr_01B_4F1B                            ; $4EB7: $30 $62

    nop                                           ; $4EB9: $00
    add b                                         ; $4EBA: $80

jr_01B_4EBB:
    nop                                           ; $4EBB: $00
    ld l, e                                       ; $4EBC: $6B
    jr z, jr_01B_4ECB                             ; $4EBD: $28 $0C

    or b                                          ; $4EBF: $B0
    ld a, d                                       ; $4EC0: $7A
    nop                                           ; $4EC1: $00
    add e                                         ; $4EC2: $83
    nop                                           ; $4EC3: $00

jr_01B_4EC4:
    dec bc                                        ; $4EC4: $0B
    nop                                           ; $4EC5: $00
    dec bc                                        ; $4EC6: $0B
    ld [bc], a                                    ; $4EC7: $02
    nop                                           ; $4EC8: $00
    rra                                           ; $4EC9: $1F
    db $10                                        ; $4ECA: $10

jr_01B_4ECB:
    add d                                         ; $4ECB: $82
    sub h                                         ; $4ECC: $94
    ld b, d                                       ; $4ECD: $42
    inc d                                         ; $4ECE: $14
    rrca                                          ; $4ECF: $0F

jr_01B_4ED0:
    ret c                                         ; $4ED0: $D8

    ld d, d                                       ; $4ED1: $52
    ld e, e                                       ; $4ED2: $5B
    dec de                                        ; $4ED3: $1B
    ld [$4249], a                                 ; $4ED4: $EA $49 $42

jr_01B_4ED7:
    dec d                                         ; $4ED7: $15
    rrca                                          ; $4ED8: $0F
    ld e, $53                                     ; $4ED9: $1E $53
    ld a, [$A00F]                                 ; $4EDB: $FA $0F $A0
    ld d, e                                       ; $4EDE: $53
    ld e, $00                                     ; $4EDF: $1E $00
    inc d                                         ; $4EE1: $14
    rrca                                          ; $4EE2: $0F
    ret c                                         ; $4EE3: $D8

    ld d, d                                       ; $4EE4: $52
    ld d, e                                       ; $4EE5: $53
    ld [de], a                                    ; $4EE6: $12
    ld b, d                                       ; $4EE7: $42
    ld [de], a                                    ; $4EE8: $12
    ld b, d                                       ; $4EE9: $42
    sub e                                         ; $4EEA: $93
    ld h, l                                       ; $4EEB: $65
    rrca                                          ; $4EEC: $0F
    ld c, a                                       ; $4EED: $4F
    ld c, a                                       ; $4EEE: $4F
    ld h, h                                       ; $4EEF: $64
    jp z, Jump_01B_6653                           ; $4EF0: $CA $53 $66

    ret nz                                        ; $4EF3: $C0

    ld e, h                                       ; $4EF4: $5C
    ld hl, $0005                                  ; $4EF5: $21 $05 $00
    add c                                         ; $4EF8: $81
    ld e, l                                       ; $4EF9: $5D
    dec b                                         ; $4EFA: $05
    dec b                                         ; $4EFB: $05

jr_01B_4EFC:
    ld d, l                                       ; $4EFC: $55
    ret nc                                        ; $4EFD: $D0

    nop                                           ; $4EFE: $00
    jr nz, jr_01B_4EFC                            ; $4EFF: $20 $FB

    ld d, b                                       ; $4F01: $50
    ld [hl+], a                                   ; $4F02: $22
    dec b                                         ; $4F03: $05
    ld b, b                                       ; $4F04: $40
    dec bc                                        ; $4F05: $0B
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    rra                                           ; $4F08: $1F
    db $10                                        ; $4F09: $10
    add d                                         ; $4F0A: $82
    sub h                                         ; $4F0B: $94
    ld b, d                                       ; $4F0C: $42
    sub [hl]                                      ; $4F0D: $96
    inc d                                         ; $4F0E: $14
    or e                                          ; $4F0F: $B3
    ld d, b                                       ; $4F10: $50
    sub e                                         ; $4F11: $93
    ld h, l                                       ; $4F12: $65
    rrca                                          ; $4F13: $0F
    ld c, a                                       ; $4F14: $4F
    ld c, a                                       ; $4F15: $4F
    ld h, h                                       ; $4F16: $64
    jp z, Jump_01B_6653                           ; $4F17: $CA $53 $66

    ret nz                                        ; $4F1A: $C0

jr_01B_4F1B:
    ld e, h                                       ; $4F1B: $5C
    ld hl, $0005                                  ; $4F1C: $21 $05 $00
    ld l, e                                       ; $4F1F: $6B
    ld c, d                                       ; $4F20: $4A
    ld a, [bc]                                    ; $4F21: $0A
    ld a, [bc]                                    ; $4F22: $0A
    xor d                                         ; $4F23: $AA
    ret nc                                        ; $4F24: $D0

    nop                                           ; $4F25: $00
    dec de                                        ; $4F26: $1B
    add d                                         ; $4F27: $82
    ld c, a                                       ; $4F28: $4F
    ld [hl+], a                                   ; $4F29: $22
    dec b                                         ; $4F2A: $05
    ld b, b                                       ; $4F2B: $40
    dec b                                         ; $4F2C: $05
    ld [bc], a                                    ; $4F2D: $02
    ld l, e                                       ; $4F2E: $6B
    ld c, d                                       ; $4F2F: $4A
    dec bc                                        ; $4F30: $0B
    db $10                                        ; $4F31: $10
    dec bc                                        ; $4F32: $0B
    pop de                                        ; $4F33: $D1
    nop                                           ; $4F34: $00
    dec de                                        ; $4F35: $1B
    ld [hl], e                                    ; $4F36: $73
    ld c, a                                       ; $4F37: $4F
    ld [hl+], a                                   ; $4F38: $22
    dec b                                         ; $4F39: $05
    ld b, b                                       ; $4F3A: $40
    dec b                                         ; $4F3B: $05
    inc bc                                        ; $4F3C: $03
    ld l, e                                       ; $4F3D: $6B
    ld c, d                                       ; $4F3E: $4A
    add hl, bc                                    ; $4F3F: $09
    db $10                                        ; $4F40: $10
    add hl, bc                                    ; $4F41: $09
    pop de                                        ; $4F42: $D1
    ld a, [hl+]                                   ; $4F43: $2A
    dec de                                        ; $4F44: $1B
    and l                                         ; $4F45: $A5
    ld c, a                                       ; $4F46: $4F
    ld [hl+], a                                   ; $4F47: $22
    dec b                                         ; $4F48: $05
    ld b, b                                       ; $4F49: $40
    ld l, e                                       ; $4F4A: $6B
    ld a, [hl+]                                   ; $4F4B: $2A
    dec c                                         ; $4F4C: $0D
    jr nc, jr_01B_4FB1                            ; $4F4D: $30 $62

    nop                                           ; $4F4F: $00
    add b                                         ; $4F50: $80
    nop                                           ; $4F51: $00

jr_01B_4F52:
    ld l, e                                       ; $4F52: $6B
    ld a, [hl+]                                   ; $4F53: $2A

Call_01B_4F54:
    ld a, [bc]                                    ; $4F54: $0A
    or b                                          ; $4F55: $B0
    ld c, b                                       ; $4F56: $48
    and b                                         ; $4F57: $A0
    add d                                         ; $4F58: $82
    nop                                           ; $4F59: $00
    dec bc                                        ; $4F5A: $0B
    ld [bc], a                                    ; $4F5B: $02
    dec bc                                        ; $4F5C: $0B
    inc bc                                        ; $4F5D: $03
    rra                                           ; $4F5E: $1F

jr_01B_4F5F:
    inc hl                                        ; $4F5F: $23
    add h                                         ; $4F60: $84
    ld a, [bc]                                    ; $4F61: $0A
    inc d                                         ; $4F62: $14
    sub h                                         ; $4F63: $94
    ld l, a                                       ; $4F64: $6F
    rrca                                          ; $4F65: $0F
    rst $38                                       ; $4F66: $FF
    ld a, a                                       ; $4F67: $7F
    halt                                          ; $4F68: $76
    jr nz, @+$11                                  ; $4F69: $20 $0F

    dec bc                                        ; $4F6B: $0B
    nop                                           ; $4F6C: $00
    add e                                         ; $4F6D: $83
    jr nz, jr_01B_4F70                            ; $4F6E: $20 $00

jr_01B_4F70:
    rst $38                                       ; $4F70: $FF
    nop                                           ; $4F71: $00
    ld b, d                                       ; $4F72: $42
    dec d                                         ; $4F73: $15
    rrca                                          ; $4F74: $0F
    ld [c], a                                     ; $4F75: $E2
    ld d, d                                       ; $4F76: $52
    jr nz, jr_01B_4F88                            ; $4F77: $20 $0F

    or $52                                        ; $4F79: $F6 $52
    inc b                                         ; $4F7B: $04
    rrca                                          ; $4F7C: $0F
    adc $52                                       ; $4F7D: $CE $52
    nop                                           ; $4F7F: $00
    nop                                           ; $4F80: $00
    ld b, d                                       ; $4F81: $42
    dec d                                         ; $4F82: $15
    jr nz, jr_01B_4F52                            ; $4F83: $20 $CD

    ld c, a                                       ; $4F85: $4F
    jr nz, jr_01B_4FA8                            ; $4F86: $20 $20

jr_01B_4F88:
    or l                                          ; $4F88: $B5
    ld d, b                                       ; $4F89: $50
    nop                                           ; $4F8A: $00
    nop                                           ; $4F8B: $00
    ld e, h                                       ; $4F8C: $5C
    ld bc, $1503                                  ; $4F8D: $01 $03 $15
    jr nz, jr_01B_4F5F                            ; $4F90: $20 $CD

    ld c, a                                       ; $4F92: $4F
    jr nz, jr_01B_4FB5                            ; $4F93: $20 $20

    db $DD                                        ; $4F95: $DD
    ld c, a                                       ; $4F96: $4F
    nop                                           ; $4F97: $00
    nop                                           ; $4F98: $00
    ld l, [hl]                                    ; $4F99: $6E
    rrca                                          ; $4F9A: $0F
    rst $38                                       ; $4F9B: $FF
    ld a, a                                       ; $4F9C: $7F
    halt                                          ; $4F9D: $76
    jr nz, @+$11                                  ; $4F9E: $20 $0F

    ld b, l                                       ; $4FA0: $45
    inc d                                         ; $4FA1: $14
    ld e, e                                       ; $4FA2: $5B
    ld d, l                                       ; $4FA3: $55
    ld b, d                                       ; $4FA4: $42
    dec d                                         ; $4FA5: $15
    ld c, $0E                                     ; $4FA6: $0E $0E

jr_01B_4FA8:
    ld d, h                                       ; $4FA8: $54
    jr nz, jr_01B_4FB9                            ; $4FA9: $20 $0E

    ld [hl+], a                                   ; $4FAB: $22
    ld d, h                                       ; $4FAC: $54
    inc b                                         ; $4FAD: $04
    ld c, $F0                                     ; $4FAE: $0E $F0
    ld d, e                                       ; $4FB0: $53

jr_01B_4FB1:
    nop                                           ; $4FB1: $00
    nop                                           ; $4FB2: $00
    ld e, e                                       ; $4FB3: $5B
    dec de                                        ; $4FB4: $1B

jr_01B_4FB5:
    db $F4                                        ; $4FB5: $F4
    ld c, l                                       ; $4FB6: $4D
    ld e, h                                       ; $4FB7: $5C
    nop                                           ; $4FB8: $00

jr_01B_4FB9:
    ld [bc], a                                    ; $4FB9: $02
    dec d                                         ; $4FBA: $15
    ld c, $B0                                     ; $4FBB: $0E $B0
    ld d, e                                       ; $4FBD: $53
    ld [$E00E], sp                                ; $4FBE: $08 $0E $E0
    ld d, e                                       ; $4FC1: $53
    ld [$B00E], sp                                ; $4FC2: $08 $0E $B0
    ld d, e                                       ; $4FC5: $53
    ld [$F00E], sp                                ; $4FC6: $08 $0E $F0
    ld d, e                                       ; $4FC9: $53
    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    ld e, e                                       ; $4FCC: $5B
    dec de                                        ; $4FCD: $1B
    inc b                                         ; $4FCE: $04
    ld c, [hl]                                    ; $4FCF: $4E
    ld e, h                                       ; $4FD0: $5C
    ld bc, $1503                                  ; $4FD1: $01 $03 $15
    ld c, $18                                     ; $4FD4: $0E $18
    ld d, h                                       ; $4FD6: $54
    inc b                                         ; $4FD7: $04
    ld c, $90                                     ; $4FD8: $0E $90
    ld d, e                                       ; $4FDA: $53
    nop                                           ; $4FDB: $00
    nop                                           ; $4FDC: $00
    ld b, d                                       ; $4FDD: $42
    ld b, e                                       ; $4FDE: $43
    ld [$0F08], sp                                ; $4FDF: $08 $08 $0F
    inc b                                         ; $4FE2: $04
    dec b                                         ; $4FE3: $05
    rrca                                          ; $4FE4: $0F
    rrca                                          ; $4FE5: $0F
    ld bc, $A2AD                                  ; $4FE6: $01 $AD $A2
    dec b                                         ; $4FE9: $05
    ld [bc], a                                    ; $4FEA: $02
    nop                                           ; $4FEB: $00
    xor h                                         ; $4FEC: $AC
    and c                                         ; $4FED: $A1
    db $10                                        ; $4FEE: $10
    dec de                                        ; $4FEF: $1B
    ld b, d                                       ; $4FF0: $42
    ld d, b                                       ; $4FF1: $50
    sub e                                         ; $4FF2: $93
    ld h, l                                       ; $4FF3: $65
    rrca                                          ; $4FF4: $0F
    ld c, a                                       ; $4FF5: $4F
    ld c, a                                       ; $4FF6: $4F
    ld h, h                                       ; $4FF7: $64
    jp z, Jump_01B_6653                           ; $4FF8: $CA $53 $66

    ret nz                                        ; $4FFB: $C0

    ld e, h                                       ; $4FFC: $5C
    ld hl, $0005                                  ; $4FFD: $21 $05 $00
    add c                                         ; $5000: $81
    ld e, l                                       ; $5001: $5D
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00

jr_01B_5004:
    nop                                           ; $5004: $00
    ret nc                                        ; $5005: $D0

    nop                                           ; $5006: $00
    jr nz, jr_01B_5004                            ; $5007: $20 $FB

    ld d, b                                       ; $5009: $50
    ld [hl+], a                                   ; $500A: $22
    dec b                                         ; $500B: $05
    ld b, b                                       ; $500C: $40
    dec b                                         ; $500D: $05
    ld [bc], a                                    ; $500E: $02
    db $ED                                        ; $500F: $ED
    ld h, e                                       ; $5010: $63
    rlca                                          ; $5011: $07
    inc c                                         ; $5012: $0C
    rst $00                                       ; $5013: $C7
    ret nc                                        ; $5014: $D0

    nop                                           ; $5015: $00
    rrca                                          ; $5016: $0F
    ret c                                         ; $5017: $D8

    ld d, d                                       ; $5018: $52
    dec de                                        ; $5019: $1B
    ld [hl], $50                                  ; $501A: $36 $50
    ld l, e                                       ; $501C: $6B
    jr nc, jr_01B_502C                            ; $501D: $30 $0D

    jr nc, jr_01B_5083                            ; $501F: $30 $62

    nop                                           ; $5021: $00
    add b                                         ; $5022: $80
    nop                                           ; $5023: $00
    ld l, e                                       ; $5024: $6B
    jr z, jr_01B_5033                             ; $5025: $28 $0C

    or b                                          ; $5027: $B0
    ld a, d                                       ; $5028: $7A
    nop                                           ; $5029: $00
    add e                                         ; $502A: $83
    nop                                           ; $502B: $00

jr_01B_502C:
    dec bc                                        ; $502C: $0B
    nop                                           ; $502D: $00
    dec bc                                        ; $502E: $0B
    ld [bc], a                                    ; $502F: $02
    nop                                           ; $5030: $00
    rra                                           ; $5031: $1F
    db $10                                        ; $5032: $10

jr_01B_5033:
    add d                                         ; $5033: $82
    sub h                                         ; $5034: $94
    ld b, d                                       ; $5035: $42
    inc d                                         ; $5036: $14
    rrca                                          ; $5037: $0F
    ret c                                         ; $5038: $D8

    ld d, d                                       ; $5039: $52
    ld e, e                                       ; $503A: $5B
    dec de                                        ; $503B: $1B
    sub e                                         ; $503C: $93
    ld c, b                                       ; $503D: $48
    ld b, l                                       ; $503E: $45
    rrca                                          ; $503F: $0F
    db $ED                                        ; $5040: $ED
    ld d, e                                       ; $5041: $53
    sub e                                         ; $5042: $93

jr_01B_5043:
    ld h, l                                       ; $5043: $65
    rrca                                          ; $5044: $0F
    ld c, a                                       ; $5045: $4F
    ld c, a                                       ; $5046: $4F
    ld h, h                                       ; $5047: $64
    jp z, Jump_01B_6653                           ; $5048: $CA $53 $66

    ret nz                                        ; $504B: $C0

    ld e, h                                       ; $504C: $5C
    ld hl, $0005                                  ; $504D: $21 $05 $00
    add c                                         ; $5050: $81
    ld e, l                                       ; $5051: $5D
    dec b                                         ; $5052: $05

jr_01B_5053:
    dec b                                         ; $5053: $05

Jump_01B_5054:
jr_01B_5054:
    ld d, l                                       ; $5054: $55
    ret nc                                        ; $5055: $D0

    nop                                           ; $5056: $00
    jr nz, jr_01B_5054                            ; $5057: $20 $FB

    ld d, b                                       ; $5059: $50
    ld [hl+], a                                   ; $505A: $22
    dec b                                         ; $505B: $05
    ld b, b                                       ; $505C: $40
    dec b                                         ; $505D: $05
    ld [bc], a                                    ; $505E: $02
    db $ED                                        ; $505F: $ED
    ld h, e                                       ; $5060: $63
    rlca                                          ; $5061: $07
    inc c                                         ; $5062: $0C
    rst $00                                       ; $5063: $C7
    ret nc                                        ; $5064: $D0

    nop                                           ; $5065: $00
    dec de                                        ; $5066: $1B
    add d                                         ; $5067: $82
    ld d, b                                       ; $5068: $50
    dec de                                        ; $5069: $1B
    sbc d                                         ; $506A: $9A
    ld d, b                                       ; $506B: $50
    ld l, e                                       ; $506C: $6B
    ld a, [hl+]                                   ; $506D: $2A
    dec c                                         ; $506E: $0D
    jr nc, jr_01B_50D3                            ; $506F: $30 $62

    nop                                           ; $5071: $00

jr_01B_5072:
    add b                                         ; $5072: $80

Jump_01B_5073:
jr_01B_5073:
    nop                                           ; $5073: $00
    dec bc                                        ; $5074: $0B
    nop                                           ; $5075: $00
    dec bc                                        ; $5076: $0B

jr_01B_5077:
    ld [bc], a                                    ; $5077: $02
    nop                                           ; $5078: $00
    rra                                           ; $5079: $1F
    db $10                                        ; $507A: $10
    add d                                         ; $507B: $82
    sub h                                         ; $507C: $94
    xor a                                         ; $507D: $AF
    or c                                          ; $507E: $B1
    and c                                         ; $507F: $A1
    inc b                                         ; $5080: $04
    ld b, d                                       ; $5081: $42
    inc d                                         ; $5082: $14

jr_01B_5083:
    rrca                                          ; $5083: $0F
    ret c                                         ; $5084: $D8

    ld d, d                                       ; $5085: $52
    ld b, d                                       ; $5086: $42
    dec d                                         ; $5087: $15
    jr nz, jr_01B_5053                            ; $5088: $20 $C9

    ld d, b                                       ; $508A: $50
    db $10                                        ; $508B: $10
    jr nz, jr_01B_5043                            ; $508C: $20 $B5

    ld d, b                                       ; $508E: $50
    jr @+$22                                      ; $508F: $18 $20

    call $104F                                    ; $5091: $CD $4F $10
    jr nz, jr_01B_5073                            ; $5094: $20 $DD

    ld c, a                                       ; $5096: $4F
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    ld b, d                                       ; $5099: $42
    ld e, e                                       ; $509A: $5B
    dec de                                        ; $509B: $1B
    ld d, $4D                                     ; $509C: $16 $4D
    ld c, e                                       ; $509E: $4B
    inc bc                                        ; $509F: $03
    dec de                                        ; $50A0: $1B
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    or l                                          ; $50A3: $B5

jr_01B_50A4:
    ld d, b                                       ; $50A4: $50
    dec de                                        ; $50A5: $1B
    inc bc                                        ; $50A6: $03
    nop                                           ; $50A7: $00
    call nz, $1B50                                ; $50A8: $C4 $50 $1B
    ld [bc], a                                    ; $50AB: $02
    nop                                           ; $50AC: $00
    ld [c], a                                     ; $50AD: $E2
    ld d, b                                       ; $50AE: $50
    dec de                                        ; $50AF: $1B
    ld bc, $D300                                  ; $50B0: $01 $00 $D3
    ld d, b                                       ; $50B3: $50
    rst $38                                       ; $50B4: $FF
    inc d                                         ; $50B5: $14
    rrca                                          ; $50B6: $0F
    adc $52                                       ; $50B7: $CE $52
    add hl, bc                                    ; $50B9: $09
    nop                                           ; $50BA: $00
    jr nz, jr_01B_5072                            ; $50BB: $20 $B5

    ld d, b                                       ; $50BD: $50
    ld h, d                                       ; $50BE: $62
    ld bc, $1B45                                  ; $50BF: $01 $45 $1B

Call_01B_50C2:
    db $ED                                        ; $50C2: $ED
    ld d, b                                       ; $50C3: $50
    inc d                                         ; $50C4: $14
    rrca                                          ; $50C5: $0F
    ret c                                         ; $50C6: $D8

    ld d, d                                       ; $50C7: $52
    add hl, bc                                    ; $50C8: $09
    nop                                           ; $50C9: $00
    jr nz, jr_01B_5077                            ; $50CA: $20 $AB

    ld d, b                                       ; $50CC: $50
    ld h, d                                       ; $50CD: $62
    ld bc, $1B45                                  ; $50CE: $01 $45 $1B
    dec bc                                        ; $50D1: $0B
    ld d, c                                       ; $50D2: $51

jr_01B_50D3:
    inc d                                         ; $50D3: $14
    rrca                                          ; $50D4: $0F
    ld [c], a                                     ; $50D5: $E2
    ld d, d                                       ; $50D6: $52
    add hl, bc                                    ; $50D7: $09
    nop                                           ; $50D8: $00
    jr nz, jr_01B_50A4                            ; $50D9: $20 $C9

    ld d, b                                       ; $50DB: $50
    ld h, d                                       ; $50DC: $62
    ld bc, $1B45                                  ; $50DD: $01 $45 $1B
    db $ED                                        ; $50E0: $ED
    ld d, b                                       ; $50E1: $50
    inc d                                         ; $50E2: $14
    rrca                                          ; $50E3: $0F
    db $EC                                        ; $50E4: $EC
    ld d, d                                       ; $50E5: $52
    add hl, bc                                    ; $50E6: $09
    nop                                           ; $50E7: $00
    jr nz, @-$3F                                  ; $50E8: $20 $BF

    ld d, b                                       ; $50EA: $50
    ld h, d                                       ; $50EB: $62
    ld bc, $0007                                  ; $50EC: $01 $07 $00
    ld l, e                                       ; $50EF: $6B

jr_01B_50F0:
    ld c, d                                       ; $50F0: $4A
    add hl, bc                                    ; $50F1: $09
    nop                                           ; $50F2: $00
    dec de                                        ; $50F3: $1B
    add a                                         ; $50F4: $87
    ld d, b                                       ; $50F5: $50
    dec d                                         ; $50F6: $15
    rrca                                          ; $50F7: $0F
    sbc [hl]                                      ; $50F8: $9E
    ld d, d                                       ; $50F9: $52
    db $10                                        ; $50FA: $10
    rrca                                          ; $50FB: $0F
    xor [hl]                                      ; $50FC: $AE
    ld d, d                                       ; $50FD: $52
    ld b, b                                       ; $50FE: $40
    nop                                           ; $50FF: $00
    ld l, [hl]                                    ; $5100: $6E
    rrca                                          ; $5101: $0F
    rst $38                                       ; $5102: $FF
    ld a, a                                       ; $5103: $7F
    halt                                          ; $5104: $76
    jr nz, jr_01B_5116                            ; $5105: $20 $0F

    ld b, l                                       ; $5107: $45
    ld a, [hl+]                                   ; $5108: $2A
    ld b, a                                       ; $5109: $47
    ld h, l                                       ; $510A: $65
    rlca                                          ; $510B: $07
    nop                                           ; $510C: $00
    ld l, e                                       ; $510D: $6B
    ld c, d                                       ; $510E: $4A
    add hl, bc                                    ; $510F: $09
    nop                                           ; $5110: $00
    dec de                                        ; $5111: $1B
    add a                                         ; $5112: $87
    ld d, b                                       ; $5113: $50
    dec d                                         ; $5114: $15
    rrca                                          ; $5115: $0F

jr_01B_5116:
    cp [hl]                                       ; $5116: $BE
    ld d, d                                       ; $5117: $52
    ld [$9E0F], sp                                ; $5118: $08 $0F $9E
    ld d, d                                       ; $511B: $52
    db $10                                        ; $511C: $10
    rrca                                          ; $511D: $0F
    xor [hl]                                      ; $511E: $AE
    ld d, d                                       ; $511F: $52
    jr nz, jr_01B_5122                            ; $5120: $20 $00

jr_01B_5122:
    ld l, [hl]                                    ; $5122: $6E
    rrca                                          ; $5123: $0F
    rst $38                                       ; $5124: $FF
    ld a, a                                       ; $5125: $7F
    halt                                          ; $5126: $76
    jr nz, jr_01B_5138                            ; $5127: $20 $0F

    ld b, l                                       ; $5129: $45
    ld a, [hl+]                                   ; $512A: $2A
    ld b, a                                       ; $512B: $47
    ld h, l                                       ; $512C: $65
    ld [bc], a                                    ; $512D: $02
    inc bc                                        ; $512E: $03
    ld [$0517], sp                                ; $512F: $08 $17 $05
    ld b, l                                       ; $5132: $45
    dec h                                         ; $5133: $25
    ld [hl], e                                    ; $5134: $73
    halt                                          ; $5135: $76
    ld [bc], a                                    ; $5136: $02
    rla                                           ; $5137: $17

jr_01B_5138:
    dec b                                         ; $5138: $05
    rla                                           ; $5139: $17
    nop                                           ; $513A: $00
    ld b, l                                       ; $513B: $45
    dec de                                        ; $513C: $1B
    ld c, [hl]                                    ; $513D: $4E
    ld d, l                                       ; $513E: $55
    ld b, e                                       ; $513F: $43
    nop                                           ; $5140: $00
    dec h                                         ; $5141: $25
    and c                                         ; $5142: $A1
    ld bc, $4B1B                                  ; $5143: $01 $1B $4B
    ld d, c                                       ; $5146: $51
    ld b, l                                       ; $5147: $45
    dec de                                        ; $5148: $1B
    sbc h                                         ; $5149: $9C
    ld d, h                                       ; $514A: $54
    ld b, d                                       ; $514B: $42
    and c                                         ; $514C: $A1
    jr z, jr_01B_50F0                             ; $514D: $28 $A1

    ld bc, $0422                                  ; $514F: $01 $22 $04
    ld b, b                                       ; $5152: $40
    ld a, [$FDFB]                                 ; $5153: $FA $FB $FD
    ret nc                                        ; $5156: $D0

    ld b, d                                       ; $5157: $42
    sbc e                                         ; $5158: $9B
    ld a, b                                       ; $5159: $78
    ld [hl], b                                    ; $515A: $70
    sbc a                                         ; $515B: $9F
    ld c, d                                       ; $515C: $4A
    ld [hl], l                                    ; $515D: $75
    ld [hl], e                                    ; $515E: $73
    ld [hl], h                                    ; $515F: $74
    jr nz, jr_01B_51D5                            ; $5160: $20 $73

    ld [hl], b                                    ; $5162: $70
    ld [hl], d                                    ; $5163: $72
    ld l, c                                       ; $5164: $69
    ld l, [hl]                                    ; $5165: $6E
    ld h, a                                       ; $5166: $67
    ld [hl], e                                    ; $5167: $73
    rst $38                                       ; $5168: $FF
    ld h, c                                       ; $5169: $61
    ld l, [hl]                                    ; $516A: $6E
    ld h, h                                       ; $516B: $64
    jr nz, jr_01B_51CF                            ; $516C: $20 $61

    jr nz, @+$76                                  ; $516E: $20 $74

    ld l, a                                       ; $5170: $6F
    ld [hl], d                                    ; $5171: $72
    ld l, [hl]                                    ; $5172: $6E
    cp $73                                        ; $5173: $FE $73
    ld l, b                                       ; $5175: $68
    ld h, l                                       ; $5176: $65
    ld h, l                                       ; $5177: $65
    ld [hl], h                                    ; $5178: $74
    ld l, $FE                                     ; $5179: $2E $FE
    db $FD                                        ; $517B: $FD
    sbc d                                         ; $517C: $9A
    ld b, d                                       ; $517D: $42
    sbc e                                         ; $517E: $9B
    ld a, b                                       ; $517F: $78
    ld [hl], b                                    ; $5180: $70
    sbc a                                         ; $5181: $9F
    ld b, [hl]                                    ; $5182: $46
    ld l, c                                       ; $5183: $69
    ld l, h                                       ; $5184: $6C
    ld l, h                                       ; $5185: $6C
    ld h, l                                       ; $5186: $65
    ld h, h                                       ; $5187: $64
    jr nz, @+$79                                  ; $5188: $20 $77

    ld l, c                                       ; $518A: $69
    ld [hl], h                                    ; $518B: $74
    ld l, b                                       ; $518C: $68
    rst $38                                       ; $518D: $FF
    halt                                          ; $518E: $76
    ld l, c                                       ; $518F: $69
    ld l, h                                       ; $5190: $6C
    ld h, l                                       ; $5191: $65
    jr nz, jr_01B_51FB                            ; $5192: $20 $67

    ld l, a                                       ; $5194: $6F
    ld l, a                                       ; $5195: $6F
    ld l, $FE                                     ; $5196: $2E $FE
    db $FD                                        ; $5198: $FD
    sbc d                                         ; $5199: $9A
    ld b, d                                       ; $519A: $42
    sbc e                                         ; $519B: $9B
    ld a, c                                       ; $519C: $79
    ld d, a                                       ; $519D: $57
    sbc a                                         ; $519E: $9F
    ld b, h                                       ; $519F: $44
    ld l, a                                       ; $51A0: $6F
    ld l, [hl]                                    ; $51A1: $6E
    daa                                           ; $51A2: $27
    ld [hl], h                                    ; $51A3: $74
    jr nz, jr_01B_520E                            ; $51A4: $20 $68

    ld [hl], l                                    ; $51A6: $75
    ld [hl], d                                    ; $51A7: $72
    ld [hl], h                                    ; $51A8: $74
    jr nz, @+$6F                                  ; $51A9: $20 $6D

    ld h, l                                       ; $51AB: $65
    ld hl, $FDFE                                  ; $51AC: $21 $FE $FD
    sbc e                                         ; $51AF: $9B
    ld a, b                                       ; $51B0: $78
    ld [hl], b                                    ; $51B1: $70
    sbc a                                         ; $51B2: $9F
    ld c, c                                       ; $51B3: $49
    daa                                           ; $51B4: $27
    ld l, l                                       ; $51B5: $6D
    jr nz, jr_01B_5226                            ; $51B6: $20 $6E

    ld l, a                                       ; $51B8: $6F
    ld [hl], h                                    ; $51B9: $74
    jr nz, @+$6A                                  ; $51BA: $20 $68

    ld h, l                                       ; $51BC: $65
    ld [hl], d                                    ; $51BD: $72
    ld h, l                                       ; $51BE: $65
    jr nz, jr_01B_5235                            ; $51BF: $20 $74

    ld l, a                                       ; $51C1: $6F
    rst $38                                       ; $51C2: $FF
    ld l, b                                       ; $51C3: $68
    ld [hl], l                                    ; $51C4: $75
    ld [hl], d                                    ; $51C5: $72
    ld [hl], h                                    ; $51C6: $74
    jr nz, jr_01B_5242                            ; $51C7: $20 $79

    ld l, a                                       ; $51C9: $6F
    ld [hl], l                                    ; $51CA: $75
    inc l                                         ; $51CB: $2C
    jr nz, jr_01B_5217                            ; $51CC: $20 $49

    daa                                           ; $51CE: $27

jr_01B_51CF:
    ld l, l                                       ; $51CF: $6D
    cp $68                                        ; $51D0: $FE $68
    ld h, l                                       ; $51D2: $65
    ld [hl], d                                    ; $51D3: $72
    ld h, l                                       ; $51D4: $65

jr_01B_51D5:
    jr nz, jr_01B_524B                            ; $51D5: $20 $74

    ld l, a                                       ; $51D7: $6F
    rst $38                                       ; $51D8: $FF
    ld [hl], d                                    ; $51D9: $72
    ld h, l                                       ; $51DA: $65
    ld [hl], e                                    ; $51DB: $73
    ld h, e                                       ; $51DC: $63
    ld [hl], l                                    ; $51DD: $75
    ld h, l                                       ; $51DE: $65
    jr nz, jr_01B_525A                            ; $51DF: $20 $79

    ld l, a                                       ; $51E1: $6F
    ld [hl], l                                    ; $51E2: $75
    ld hl, $FDFE                                  ; $51E3: $21 $FE $FD
    sbc e                                         ; $51E6: $9B
    ld a, c                                       ; $51E7: $79
    ld d, a                                       ; $51E8: $57
    sbc a                                         ; $51E9: $9F
    ld d, h                                       ; $51EA: $54
    ld c, b                                       ; $51EB: $48
    ld b, c                                       ; $51EC: $41
    ld c, [hl]                                    ; $51ED: $4E
    ld c, e                                       ; $51EE: $4B
    ld e, c                                       ; $51EF: $59
    ld c, a                                       ; $51F0: $4F
    ld d, l                                       ; $51F1: $55
    ld hl, $FE21                                  ; $51F2: $21 $21 $FE
    db $FD                                        ; $51F5: $FD
    sbc e                                         ; $51F6: $9B
    ld a, b                                       ; $51F7: $78
    ld [hl], b                                    ; $51F8: $70
    sbc a                                         ; $51F9: $9F
    ld d, a                                       ; $51FA: $57

jr_01B_51FB:
    ld l, b                                       ; $51FB: $68
    ld h, c                                       ; $51FC: $61
    ld [hl], h                                    ; $51FD: $74
    daa                                           ; $51FE: $27
    ld [hl], e                                    ; $51FF: $73
    jr nz, @+$76                                  ; $5200: $20 $74

    ld l, b                                       ; $5202: $68
    ld h, c                                       ; $5203: $61
    ld [hl], h                                    ; $5204: $74
    rst $38                                       ; $5205: $FF
    ld [hl], e                                    ; $5206: $73
    ld [hl], a                                    ; $5207: $77
    ld l, c                                       ; $5208: $69
    ld [hl], h                                    ; $5209: $74
    ld h, e                                       ; $520A: $63
    ld l, b                                       ; $520B: $68
    jr nz, jr_01B_527D                            ; $520C: $20 $6F

jr_01B_520E:
    halt                                          ; $520E: $76
    ld h, l                                       ; $520F: $65
    ld [hl], d                                    ; $5210: $72
    cp $74                                        ; $5211: $FE $74
    ld l, b                                       ; $5213: $68
    ld h, l                                       ; $5214: $65
    ld [hl], d                                    ; $5215: $72
    ld h, l                                       ; $5216: $65

jr_01B_5217:
    jr nz, jr_01B_527F                            ; $5217: $20 $66

    ld l, a                                       ; $5219: $6F
    ld [hl], d                                    ; $521A: $72
    ccf                                           ; $521B: $3F
    cp $FD                                        ; $521C: $FE $FD
    sbc e                                         ; $521E: $9B
    ld a, c                                       ; $521F: $79
    ld d, a                                       ; $5220: $57
    sbc a                                         ; $5221: $9F
    ld c, c                                       ; $5222: $49
    jr nz, jr_01B_5289                            ; $5223: $20 $64

    ld l, a                                       ; $5225: $6F

jr_01B_5226:
    ld l, [hl]                                    ; $5226: $6E
    daa                                           ; $5227: $27
    ld [hl], h                                    ; $5228: $74
    jr nz, @+$6D                                  ; $5229: $20 $6B

    ld l, [hl]                                    ; $522B: $6E
    ld l, a                                       ; $522C: $6F
    ld [hl], a                                    ; $522D: $77
    inc l                                         ; $522E: $2C
    rst $38                                       ; $522F: $FF
    ld h, d                                       ; $5230: $62
    ld [hl], l                                    ; $5231: $75
    ld [hl], h                                    ; $5232: $74
    jr nz, jr_01B_52A9                            ; $5233: $20 $74

jr_01B_5235:
    ld l, b                                       ; $5235: $68
    ld h, l                                       ; $5236: $65
    ld a, c                                       ; $5237: $79
    jr nz, jr_01B_52AE                            ; $5238: $20 $74

    ld l, a                                       ; $523A: $6F
    ld l, h                                       ; $523B: $6C
    ld h, h                                       ; $523C: $64
    cp $6D                                        ; $523D: $FE $6D
    ld h, l                                       ; $523F: $65
    jr nz, jr_01B_52B0                            ; $5240: $20 $6E

jr_01B_5242:
    ld l, a                                       ; $5242: $6F
    ld [hl], h                                    ; $5243: $74
    jr nz, jr_01B_52BA                            ; $5244: $20 $74

    ld l, a                                       ; $5246: $6F
    rst $38                                       ; $5247: $FF
    ld [hl], h                                    ; $5248: $74
    ld l, a                                       ; $5249: $6F
    ld [hl], l                                    ; $524A: $75

jr_01B_524B:
    ld h, e                                       ; $524B: $63
    ld l, b                                       ; $524C: $68
    jr nz, jr_01B_52B8                            ; $524D: $20 $69

    ld [hl], h                                    ; $524F: $74
    ld l, $FE                                     ; $5250: $2E $FE
    ld d, a                                       ; $5252: $57
    ld h, l                                       ; $5253: $65
    ld l, h                                       ; $5254: $6C
    ld l, h                                       ; $5255: $6C
    ld l, $2E                                     ; $5256: $2E $2E
    ld l, $20                                     ; $5258: $2E $20

jr_01B_525A:
    ld b, d                                       ; $525A: $42
    ld a, c                                       ; $525B: $79
    ld h, l                                       ; $525C: $65
    ld l, $FE                                     ; $525D: $2E $FE
    db $FD                                        ; $525F: $FD
    sbc d                                         ; $5260: $9A
    ld e, b                                       ; $5261: $58
    ld bc, $9B42                                  ; $5262: $01 $42 $9B
    ld a, b                                       ; $5265: $78
    ld [hl], b                                    ; $5266: $70
    sbc a                                         ; $5267: $9F
    dec l                                         ; $5268: $2D
    ld c, c                                       ; $5269: $49
    ld d, h                                       ; $526A: $54
    daa                                           ; $526B: $27
    ld d, e                                       ; $526C: $53
    jr nz, jr_01B_52BB                            ; $526D: $20 $4C

    ld c, a                                       ; $526F: $4F
    ld b, e                                       ; $5270: $43
    ld c, e                                       ; $5271: $4B
    ld b, l                                       ; $5272: $45
    ld b, h                                       ; $5273: $44
    dec l                                         ; $5274: $2D
    cp $FD                                        ; $5275: $FE $FD
    sbc d                                         ; $5277: $9A
    ld e, b                                       ; $5278: $58
    ld [bc], a                                    ; $5279: $02
    ld b, d                                       ; $527A: $42

jr_01B_527B:
    sbc e                                         ; $527B: $9B
    ld a, b                                       ; $527C: $78

jr_01B_527D:
    ld [hl], b                                    ; $527D: $70
    sbc a                                         ; $527E: $9F

jr_01B_527F:
    dec l                                         ; $527F: $2D
    ld d, h                                       ; $5280: $54
    ld c, a                                       ; $5281: $4F
    ld c, [hl]                                    ; $5282: $4E
    ld e, c                                       ; $5283: $59
    jr nz, jr_01B_52DB                            ; $5284: $20 $55

    ld c, [hl]                                    ; $5286: $4E
    ld c, h                                       ; $5287: $4C
    ld c, a                                       ; $5288: $4F

jr_01B_5289:
    ld b, e                                       ; $5289: $43
    ld c, e                                       ; $528A: $4B
    ld d, e                                       ; $528B: $53
    rst $38                                       ; $528C: $FF
    ld d, h                                       ; $528D: $54
    ld c, b                                       ; $528E: $48
    ld b, l                                       ; $528F: $45
    jr nz, jr_01B_52D6                            ; $5290: $20 $44

    ld c, a                                       ; $5292: $4F
    ld c, a                                       ; $5293: $4F
    ld d, d                                       ; $5294: $52
    ld l, $20                                     ; $5295: $2E $20
    ld d, h                                       ; $5297: $54
    ld c, b                                       ; $5298: $48
    ld b, l                                       ; $5299: $45
    cp $4B                                        ; $529A: $FE $4B
    ld b, l                                       ; $529C: $45
    ld e, c                                       ; $529D: $59
    jr nz, jr_01B_52EA                            ; $529E: $20 $4A

    ld b, c                                       ; $52A0: $41
    ld c, l                                       ; $52A1: $4D
    ld d, e                                       ; $52A2: $53
    jr nz, jr_01B_52E6                            ; $52A3: $20 $41

    ld c, [hl]                                    ; $52A5: $4E
    ld b, h                                       ; $52A6: $44
    rst $38                                       ; $52A7: $FF
    ld b, d                                       ; $52A8: $42

jr_01B_52A9:
    ld d, d                                       ; $52A9: $52
    ld b, l                                       ; $52AA: $45
    ld b, c                                       ; $52AB: $41
    ld c, e                                       ; $52AC: $4B
    ld d, e                                       ; $52AD: $53

jr_01B_52AE:
    jr nz, @+$4B                                  ; $52AE: $20 $49

jr_01B_52B0:
    ld c, [hl]                                    ; $52B0: $4E
    jr nz, jr_01B_5307                            ; $52B1: $20 $54

    ld c, b                                       ; $52B3: $48
    ld b, l                                       ; $52B4: $45
    cp $4C                                        ; $52B5: $FE $4C
    ld c, a                                       ; $52B7: $4F

jr_01B_52B8:
    ld b, e                                       ; $52B8: $43
    ld c, e                                       ; $52B9: $4B

jr_01B_52BA:
    dec l                                         ; $52BA: $2D

jr_01B_52BB:
    cp $FD                                        ; $52BB: $FE $FD
    sbc d                                         ; $52BD: $9A

jr_01B_52BE:
    rlca                                          ; $52BE: $07
    nop                                           ; $52BF: $00
    add c                                         ; $52C0: $81
    ld e, l                                       ; $52C1: $5D
    add hl, bc                                    ; $52C2: $09
    nop                                           ; $52C3: $00
    jr nz, jr_01B_527B                            ; $52C4: $20 $B5

    ld d, b                                       ; $52C6: $50
    ld e, b                                       ; $52C7: $58
    ld bc, $0242                                  ; $52C8: $01 $42 $02
    nop                                           ; $52CB: $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    jr nc, jr_01B_52BE                            ; $52CF: $30 $ED

    ld d, [hl]                                    ; $52D1: $56
    jr nz, jr_01B_531B                            ; $52D2: $20 $47

    ld b, $1B                                     ; $52D4: $06 $1B

jr_01B_52D6:
    rst $20                                       ; $52D6: $E7
    ld d, d                                       ; $52D7: $52
    dec de                                        ; $52D8: $1B
    push af                                       ; $52D9: $F5
    ld d, d                                       ; $52DA: $52

jr_01B_52DB:
    dec de                                        ; $52DB: $1B
    inc bc                                        ; $52DC: $03
    ld d, e                                       ; $52DD: $53
    dec de                                        ; $52DE: $1B
    ld e, $53                                     ; $52DF: $1E $53
    dec de                                        ; $52E1: $1B
    inc l                                         ; $52E2: $2C
    ld d, e                                       ; $52E3: $53
    dec de                                        ; $52E4: $1B
    ld a, [hl-]                                   ; $52E5: $3A

jr_01B_52E6:
    ld d, e                                       ; $52E6: $53
    dec h                                         ; $52E7: $25
    inc c                                         ; $52E8: $0C
    ld l, h                                       ; $52E9: $6C

jr_01B_52EA:
    jr nz, @+$4E                                  ; $52EA: $20 $4C

    inc hl                                        ; $52EC: $23
    ld b, b                                       ; $52ED: $40
    ld l, $09                                     ; $52EE: $2E $09
    ld a, [bc]                                    ; $52F0: $0A
    jr nz, jr_01B_5333                            ; $52F1: $20 $40

    ld bc, $2527                                  ; $52F3: $01 $27 $25
    inc c                                         ; $52F6: $0C
    ld l, h                                       ; $52F7: $6C
    ld e, $4C                                     ; $52F8: $1E $4C
    inc hl                                        ; $52FA: $23
    ld b, b                                       ; $52FB: $40
    ld l, $09                                     ; $52FC: $2E $09
    ld b, [hl]                                    ; $52FE: $46
    ld e, $3C                                     ; $52FF: $1E $3C
    ld bc, $2527                                  ; $5301: $01 $27 $25
    inc c                                         ; $5304: $0C
    ld l, h                                       ; $5305: $6C
    rra                                           ; $5306: $1F

jr_01B_5307:
    ld c, h                                       ; $5307: $4C
    inc hl                                        ; $5308: $23
    ld b, b                                       ; $5309: $40
    ld l, $09                                     ; $530A: $2E $09
    ccf                                           ; $530C: $3F
    ld e, $3C                                     ; $530D: $1E $3C
    ld bc, $2E2B                                  ; $530F: $01 $2B $2E
    add hl, bc                                    ; $5312: $09
    daa                                           ; $5313: $27
    add hl, de                                    ; $5314: $19
    ld [hl-], a                                   ; $5315: $32
    ld bc, $092E                                  ; $5316: $01 $2E $09
    daa                                           ; $5319: $27
    add hl, de                                    ; $531A: $19

jr_01B_531B:
    ld [hl-], a                                   ; $531B: $32
    ld bc, $2527                                  ; $531C: $01 $27 $25
    inc c                                         ; $531F: $0C
    ld l, h                                       ; $5320: $6C
    rra                                           ; $5321: $1F
    ld c, h                                       ; $5322: $4C
    inc hl                                        ; $5323: $23
    ld b, b                                       ; $5324: $40
    ld l, $09                                     ; $5325: $2E $09
    ccf                                           ; $5327: $3F
    rra                                           ; $5328: $1F
    ld a, $01                                     ; $5329: $3E $01
    daa                                           ; $532B: $27
    dec h                                         ; $532C: $25
    inc c                                         ; $532D: $0C
    ld l, h                                       ; $532E: $6C
    dec de                                        ; $532F: $1B
    ld c, h                                       ; $5330: $4C
    inc hl                                        ; $5331: $23
    ld b, b                                       ; $5332: $40

jr_01B_5333:
    ld l, $09                                     ; $5333: $2E $09
    daa                                           ; $5335: $27
    dec de                                        ; $5336: $1B
    ld [hl], $01                                  ; $5337: $36 $01
    daa                                           ; $5339: $27
    dec h                                         ; $533A: $25
    inc c                                         ; $533B: $0C
    ld l, h                                       ; $533C: $6C
    inc e                                         ; $533D: $1C
    ld c, h                                       ; $533E: $4C
    inc hl                                        ; $533F: $23
    ld b, b                                       ; $5340: $40
    ld l, $09                                     ; $5341: $2E $09

jr_01B_5343:
    daa                                           ; $5343: $27
    jr jr_01B_5378                                ; $5344: $18 $32

    ld bc, $2E2B                                  ; $5346: $01 $2B $2E
    add hl, bc                                    ; $5349: $09
    ld a, [bc]                                    ; $534A: $0A
    ld e, $3C                                     ; $534B: $1E $3C
    ld bc, $0227                                  ; $534D: $01 $27 $02
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    jr nc, jr_01B_5343                            ; $5354: $30 $ED

    ld d, [hl]                                    ; $5356: $56
    jr nz, jr_01B_537E                            ; $5357: $20 $25

    inc c                                         ; $5359: $0C
    ld l, c                                       ; $535A: $69
    inc hl                                        ; $535B: $23
    ld c, h                                       ; $535C: $4C
    inc hl                                        ; $535D: $23
    ld b, b                                       ; $535E: $40
    xor d                                         ; $535F: $AA
    dec a                                         ; $5360: $3D
    db $D3                                        ; $5361: $D3
    rlca                                          ; $5362: $07
    nop                                           ; $5363: $00
    xor d                                         ; $5364: $AA
    ld a, $D3                                     ; $5365: $3E $D3
    rlca                                          ; $5367: $07
    ld l, [hl]                                    ; $5368: $6E
    ld l, $09                                     ; $5369: $2E $09

jr_01B_536B:
    ld [$3219], sp                                ; $536B: $08 $19 $32
    ld bc, $2E2B                                  ; $536E: $01 $2B $2E
    add hl, bc                                    ; $5371: $09
    ld de, $3219                                  ; $5372: $11 $19 $32
    ld bc, $0227                                  ; $5375: $01 $27 $02

jr_01B_5378:
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    jr nc, jr_01B_536B                            ; $537C: $30 $ED

jr_01B_537E:
    ld d, [hl]                                    ; $537E: $56
    jr nz, jr_01B_53A6                            ; $537F: $20 $25

    inc c                                         ; $5381: $0C
    ld l, d                                       ; $5382: $6A
    dec l                                         ; $5383: $2D
    ld c, h                                       ; $5384: $4C
    inc hl                                        ; $5385: $23
    ld b, b                                       ; $5386: $40
    xor d                                         ; $5387: $AA
    dec a                                         ; $5388: $3D
    db $D3                                        ; $5389: $D3
    rlca                                          ; $538A: $07
    nop                                           ; $538B: $00

jr_01B_538C:
    xor d                                         ; $538C: $AA
    ld a, $D3                                     ; $538D: $3E $D3
    rlca                                          ; $538F: $07
    ld h, h                                       ; $5390: $64
    ld l, $09                                     ; $5391: $2E $09
    ld [de], a                                    ; $5393: $12
    jr nc, jr_01B_53E6                            ; $5394: $30 $50

    ld bc, $0227                                  ; $5396: $01 $27 $02
    nop                                           ; $5399: $00
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    jr nc, jr_01B_538C                            ; $539D: $30 $ED

    ld d, [hl]                                    ; $539F: $56
    jr nz, jr_01B_53C7                            ; $53A0: $20 $25

    inc c                                         ; $53A2: $0C
    ld l, h                                       ; $53A3: $6C
    jr nz, @+$4E                                  ; $53A4: $20 $4C

jr_01B_53A6:
    inc hl                                        ; $53A6: $23
    ld b, b                                       ; $53A7: $40
    xor d                                         ; $53A8: $AA
    db $D3                                        ; $53A9: $D3
    ret nc                                        ; $53AA: $D0

    rlca                                          ; $53AB: $07
    nop                                           ; $53AC: $00
    ld l, $09                                     ; $53AD: $2E $09
    inc hl                                        ; $53AF: $23
    jr nz, @+$42                                  ; $53B0: $20 $40

    nop                                           ; $53B2: $00
    daa                                           ; $53B3: $27
    sub e                                         ; $53B4: $93
    ld h, l                                       ; $53B5: $65
    ei                                            ; $53B6: $FB
    ld d, e                                       ; $53B7: $53
    ld c, a                                       ; $53B8: $4F
    ld h, h                                       ; $53B9: $64
    cpl                                           ; $53BA: $2F
    ld e, d                                       ; $53BB: $5A
    ld l, c                                       ; $53BC: $69
    inc a                                         ; $53BD: $3C
    ld e, d                                       ; $53BE: $5A
    ld l, d                                       ; $53BF: $6A
    adc a                                         ; $53C0: $8F
    ld h, h                                       ; $53C1: $64
    ld a, h                                       ; $53C2: $7C
    ld a, h                                       ; $53C3: $7C
    ld c, l                                       ; $53C4: $4D
    ld a, h                                       ; $53C5: $7C
    rra                                           ; $53C6: $1F

jr_01B_53C7:
    inc e                                         ; $53C7: $1C
    ld h, [hl]                                    ; $53C8: $66
    ret nz                                        ; $53C9: $C0

    ld e, h                                       ; $53CA: $5C
    ld hl, $0005                                  ; $53CB: $21 $05 $00
    add c                                         ; $53CE: $81
    ld e, l                                       ; $53CF: $5D
    dec b                                         ; $53D0: $05
    dec b                                         ; $53D1: $05

jr_01B_53D2:
    and l                                         ; $53D2: $A5
    ret nc                                        ; $53D3: $D0

    nop                                           ; $53D4: $00
    jr nz, jr_01B_53D2                            ; $53D5: $20 $FB

    ld d, b                                       ; $53D7: $50
    ld [hl+], a                                   ; $53D8: $22
    dec b                                         ; $53D9: $05
    ld b, b                                       ; $53DA: $40
    dec bc                                        ; $53DB: $0B
    nop                                           ; $53DC: $00
    ld [hl-], a                                   ; $53DD: $32
    dec de                                        ; $53DE: $1B
    jp z, $8D52                                   ; $53DF: $CA $52 $8D

    ld b, c                                       ; $53E2: $41
    ld sp, $BF1B                                  ; $53E3: $31 $1B $BF

jr_01B_53E6:
    ld d, e                                       ; $53E6: $53
    ld [hl+], a                                   ; $53E7: $22
    adc $40                                       ; $53E8: $CE $40
    nop                                           ; $53EA: $00
    add d                                         ; $53EB: $82
    ld b, e                                       ; $53EC: $43
    ld a, [bc]                                    ; $53ED: $0A
    nop                                           ; $53EE: $00
    dec h                                         ; $53EF: $25
    and c                                         ; $53F0: $A1
    ld bc, $FE1B                                  ; $53F1: $01 $1B $FE
    ld d, e                                       ; $53F4: $53
    ld a, [hl]                                    ; $53F5: $7E
    nop                                           ; $53F6: $00
    ret nc                                        ; $53F7: $D0

    ld [bc], a                                    ; $53F8: $02
    ld [bc], a                                    ; $53F9: $02
    sbc b                                         ; $53FA: $98
    pop de                                        ; $53FB: $D1
    inc c                                         ; $53FC: $0C
    jr @+$45                                      ; $53FD: $18 $43

    nop                                           ; $53FF: $00
    and [hl]                                      ; $5400: $A6
    and c                                         ; $5401: $A1
    ld [bc], a                                    ; $5402: $02
    dec de                                        ; $5403: $1B
    rra                                           ; $5404: $1F
    ld d, h                                       ; $5405: $54
    dec b                                         ; $5406: $05
    ld [bc], a                                    ; $5407: $02
    dec b                                         ; $5408: $05
    ld h, h                                       ; $5409: $64
    add hl, de                                    ; $540A: $19
    ld b, $D9                                     ; $540B: $06 $D9
    ret nc                                        ; $540D: $D0

    nop                                           ; $540E: $00
    ld de, $450B                                  ; $540F: $11 $0B $45
    dec de                                        ; $5412: $1B
    ld hl, $6B54                                  ; $5413: $21 $54 $6B
    jr nc, jr_01B_5423                            ; $5416: $30 $0B

    jr nz, @+$49                                  ; $5418: $20 $47

    nop                                           ; $541A: $00
    add b                                         ; $541B: $80
    nop                                           ; $541C: $00
    dec bc                                        ; $541D: $0B
    ld [bc], a                                    ; $541E: $02
    sub h                                         ; $541F: $94
    ld b, d                                       ; $5420: $42
    xor a                                         ; $5421: $AF
    and [hl]                                      ; $5422: $A6

jr_01B_5423:
    and c                                         ; $5423: $A1
    ld [bc], a                                    ; $5424: $02
    ld e, e                                       ; $5425: $5B
    dec de                                        ; $5426: $1B
    sbc e                                         ; $5427: $9B
    ld d, c                                       ; $5428: $51
    ld c, e                                       ; $5429: $4B
    inc bc                                        ; $542A: $03

jr_01B_542B:
    dec de                                        ; $542B: $1B
    nop                                           ; $542C: $00
    nop                                           ; $542D: $00
    ld b, b                                       ; $542E: $40
    ld d, h                                       ; $542F: $54
    dec de                                        ; $5430: $1B
    inc bc                                        ; $5431: $03
    nop                                           ; $5432: $00
    ld c, d                                       ; $5433: $4A
    ld d, h                                       ; $5434: $54
    dec de                                        ; $5435: $1B
    ld [bc], a                                    ; $5436: $02
    nop                                           ; $5437: $00
    ld e, [hl]                                    ; $5438: $5E
    ld d, h                                       ; $5439: $54
    dec de                                        ; $543A: $1B
    ld bc, $5400                                  ; $543B: $01 $00 $54
    ld d, h                                       ; $543E: $54
    rst $38                                       ; $543F: $FF
    inc d                                         ; $5440: $14
    ld de, $4501                                  ; $5441: $11 $01 $45
    ld h, d                                       ; $5444: $62
    ld bc, $1B45                                  ; $5445: $01 $45 $1B
    ld l, b                                       ; $5448: $68
    ld d, h                                       ; $5449: $54
    inc d                                         ; $544A: $14
    ld de, $450B                                  ; $544B: $11 $0B $45

jr_01B_544E:
    ld h, d                                       ; $544E: $62
    ld bc, $1B45                                  ; $544F: $01 $45 $1B
    ld a, c                                       ; $5452: $79
    ld d, h                                       ; $5453: $54
    inc d                                         ; $5454: $14
    ld de, $4515                                  ; $5455: $11 $15 $45
    ld h, d                                       ; $5458: $62
    ld bc, $1B45                                  ; $5459: $01 $45 $1B
    ld l, b                                       ; $545C: $68
    ld d, h                                       ; $545D: $54
    inc d                                         ; $545E: $14
    ld de, $451F                                  ; $545F: $11 $1F $45
    ld h, d                                       ; $5462: $62
    ld bc, $1B45                                  ; $5463: $01 $45 $1B
    ld l, b                                       ; $5466: $68
    ld d, h                                       ; $5467: $54
    inc d                                         ; $5468: $14
    ld de, $44D1                                  ; $5469: $11 $D1 $44
    ld b, b                                       ; $546C: $40
    jr nz, jr_01B_5476                            ; $546D: $20 $07

jr_01B_546F:
    nop                                           ; $546F: $00
    add c                                         ; $5470: $81
    ld e, l                                       ; $5471: $5D
    add hl, bc                                    ; $5472: $09
    nop                                           ; $5473: $00
    jr nz, jr_01B_542B                            ; $5474: $20 $B5

jr_01B_5476:
    ld d, b                                       ; $5476: $50
    add hl, de                                    ; $5477: $19
    ld b, d                                       ; $5478: $42
    inc d                                         ; $5479: $14
    ld de, $44F1                                  ; $547A: $11 $F1 $44
    ld b, b                                       ; $547D: $40
    ld [$1114], sp                                ; $547E: $08 $14 $11
    pop de                                        ; $5481: $D1
    ld b, h                                       ; $5482: $44
    ld b, b                                       ; $5483: $40
    db $10                                        ; $5484: $10
    inc d                                         ; $5485: $14
    ld de, $44E1                                  ; $5486: $11 $E1 $44
    ld b, b                                       ; $5489: $40
    ld [$1114], sp                                ; $548A: $08 $14 $11
    pop de                                        ; $548D: $D1
    ld b, h                                       ; $548E: $44
    ld b, b                                       ; $548F: $40
    jr jr_01B_5499                                ; $5490: $18 $07

    nop                                           ; $5492: $00
    add c                                         ; $5493: $81
    ld e, l                                       ; $5494: $5D
    add hl, bc                                    ; $5495: $09
    nop                                           ; $5496: $00
    jr nz, jr_01B_544E                            ; $5497: $20 $B5

jr_01B_5499:
    ld d, b                                       ; $5499: $50
    add hl, de                                    ; $549A: $19
    ld b, d                                       ; $549B: $42
    ld b, e                                       ; $549C: $43
    ld de, $C301                                  ; $549D: $11 $01 $C3
    and e                                         ; $54A0: $A3
    dec b                                         ; $54A1: $05
    nop                                           ; $54A2: $00
    dec de                                        ; $54A3: $1B
    add $54                                       ; $54A4: $C6 $54
    rlca                                          ; $54A6: $07
    nop                                           ; $54A7: $00
    ld l, e                                       ; $54A8: $6B
    ld c, d                                       ; $54A9: $4A
    add hl, bc                                    ; $54AA: $09
    nop                                           ; $54AB: $00
    jr nz, @-$31                                  ; $54AC: $20 $CD

    ld c, a                                       ; $54AE: $4F
    ld b, b                                       ; $54AF: $40
    ld [$0009], sp                                ; $54B0: $08 $09 $00
    jr nz, @-$53                                  ; $54B3: $20 $AB

    ld d, b                                       ; $54B5: $50
    ld e, e                                       ; $54B6: $5B
    dec de                                        ; $54B7: $1B
    ld h, h                                       ; $54B8: $64
    ld d, d                                       ; $54B9: $52
    ld h, d                                       ; $54BA: $62
    ld [bc], a                                    ; $54BB: $02
    rlca                                          ; $54BC: $07
    nop                                           ; $54BD: $00
    add c                                         ; $54BE: $81
    ld e, l                                       ; $54BF: $5D
    add hl, bc                                    ; $54C0: $09
    nop                                           ; $54C1: $00
    jr nz, jr_01B_546F                            ; $54C2: $20 $AB

    ld d, b                                       ; $54C4: $50
    ld b, d                                       ; $54C5: $42
    ld e, e                                       ; $54C6: $5B
    dec de                                        ; $54C7: $1B
    ld a, e                                       ; $54C8: $7B
    ld d, d                                       ; $54C9: $52
    ld h, d                                       ; $54CA: $62
    ld bc, $007E                                  ; $54CB: $01 $7E $00
    ret nc                                        ; $54CE: $D0

    ld [bc], a                                    ; $54CF: $02
    ld [bc], a                                    ; $54D0: $02
    sbc b                                         ; $54D1: $98
    pop de                                        ; $54D2: $D1
    inc c                                         ; $54D3: $0C
    jr @-$58                                      ; $54D4: $18 $A6

    jp $0CA3                                      ; $54D6: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $54D9: $01 $C3 $A3
    dec b                                         ; $54DC: $05
    ld bc, $25AF                                  ; $54DD: $01 $AF $25
    and c                                         ; $54E0: $A1
    ld bc, $0242                                  ; $54E1: $01 $42 $02
    dec b                                         ; $54E4: $05
    rla                                           ; $54E5: $17
    nop                                           ; $54E6: $00
    rla                                           ; $54E7: $17
    ld b, l                                       ; $54E8: $45
    dec de                                        ; $54E9: $1B
    or h                                          ; $54EA: $B4
    ld d, e                                       ; $54EB: $53
    ld [bc], a                                    ; $54EC: $02
    ld de, $1703                                  ; $54ED: $11 $03 $17
    nop                                           ; $54F0: $00
    ld b, l                                       ; $54F1: $45
    dec de                                        ; $54F2: $1B
    db $F4                                        ; $54F3: $F4
    ld d, l                                       ; $54F4: $55
    and c                                         ; $54F5: $A1
    jr z, jr_01B_5499                             ; $54F6: $28 $A1

    ld b, b                                       ; $54F8: $40
    ld [hl+], a                                   ; $54F9: $22
    inc b                                         ; $54FA: $04
    ld b, b                                       ; $54FB: $40
    ld a, [$A4FB]                                 ; $54FC: $FA $FB $A4
    ret nc                                        ; $54FF: $D0

    ld b, d                                       ; $5500: $42
    sbc e                                         ; $5501: $9B
    ld a, b                                       ; $5502: $78
    ld [hl], b                                    ; $5503: $70
    sbc a                                         ; $5504: $9F
    ld d, h                                       ; $5505: $54
    ld l, b                                       ; $5506: $68
    ld l, c                                       ; $5507: $69
    ld [hl], e                                    ; $5508: $73
    jr nz, jr_01B_556F                            ; $5509: $20 $64

    ld l, a                                       ; $550B: $6F
    ld l, a                                       ; $550C: $6F
    ld [hl], d                                    ; $550D: $72
    rst $38                                       ; $550E: $FF
    ld h, h                                       ; $550F: $64
    ld l, a                                       ; $5510: $6F
    ld h, l                                       ; $5511: $65
    ld [hl], e                                    ; $5512: $73
    ld l, [hl]                                    ; $5513: $6E
    daa                                           ; $5514: $27
    ld [hl], h                                    ; $5515: $74
    jr nz, jr_01B_557D                            ; $5516: $20 $65

    halt                                          ; $5518: $76
    ld h, l                                       ; $5519: $65
    ld l, [hl]                                    ; $551A: $6E
    cp $68                                        ; $551B: $FE $68
    ld h, c                                       ; $551D: $61
    halt                                          ; $551E: $76
    ld h, l                                       ; $551F: $65
    jr nz, @+$63                                  ; $5520: $20 $61

    jr nz, @+$6D                                  ; $5522: $20 $6B

    ld h, l                                       ; $5524: $65

jr_01B_5525:
    ld a, c                                       ; $5525: $79
    ld l, b                                       ; $5526: $68
    ld l, a                                       ; $5527: $6F
    ld l, h                                       ; $5528: $6C
    ld h, l                                       ; $5529: $65
    ld hl, $FDFE                                  ; $552A: $21 $FE $FD
    sbc d                                         ; $552D: $9A
    ld b, d                                       ; $552E: $42
    sbc e                                         ; $552F: $9B
    ld a, b                                       ; $5530: $78
    ld [hl], b                                    ; $5531: $70
    sbc a                                         ; $5532: $9F
    ld c, c                                       ; $5533: $49
    ld [hl], h                                    ; $5534: $74
    jr nz, jr_01B_55A3                            ; $5535: $20 $6C

    ld l, a                                       ; $5537: $6F
    ld l, a                                       ; $5538: $6F
    ld l, e                                       ; $5539: $6B
    ld [hl], e                                    ; $553A: $73
    rst $38                                       ; $553B: $FF
    ld [hl], d                                    ; $553C: $72
    ld h, c                                       ; $553D: $61
    ld h, h                                       ; $553E: $64
    ld l, c                                       ; $553F: $69
    ld l, a                                       ; $5540: $6F
    ld h, c                                       ; $5541: $61
    ld h, e                                       ; $5542: $63
    ld [hl], h                                    ; $5543: $74
    ld l, c                                       ; $5544: $69
    halt                                          ; $5545: $76
    ld h, l                                       ; $5546: $65
    ld l, $2E                                     ; $5547: $2E $2E
    ld l, $FE                                     ; $5549: $2E $FE
    db $FD                                        ; $554B: $FD
    sbc d                                         ; $554C: $9A
    ld b, d                                       ; $554D: $42
    sub e                                         ; $554E: $93
    ld h, l                                       ; $554F: $65
    ld a, [bc]                                    ; $5550: $0A
    ld d, h                                       ; $5551: $54
    ld c, a                                       ; $5552: $4F
    ld l, c                                       ; $5553: $69
    ld d, d                                       ; $5554: $52
    ld e, d                                       ; $5555: $5A
    ld h, h                                       ; $5556: $64
    ld c, c                                       ; $5557: $49
    ld e, d                                       ; $5558: $5A
    ld h, [hl]                                    ; $5559: $66
    ret nz                                        ; $555A: $C0

    ld e, h                                       ; $555B: $5C
    ld hl, $1C1F                                  ; $555C: $21 $1F $1C
    dec b                                         ; $555F: $05
    nop                                           ; $5560: $00
    add c                                         ; $5561: $81
    ld e, l                                       ; $5562: $5D
    dec b                                         ; $5563: $05
    dec b                                         ; $5564: $05

jr_01B_5565:
    ld a, l                                       ; $5565: $7D
    ret nc                                        ; $5566: $D0

    nop                                           ; $5567: $00
    jr nz, jr_01B_5565                            ; $5568: $20 $FB

    ld d, b                                       ; $556A: $50
    ld [hl+], a                                   ; $556B: $22
    dec b                                         ; $556C: $05
    ld b, b                                       ; $556D: $40
    dec bc                                        ; $556E: $0B

jr_01B_556F:
    nop                                           ; $556F: $00
    ld [hl-], a                                   ; $5570: $32
    dec de                                        ; $5571: $1B
    jp z, $8D52                                   ; $5572: $CA $52 $8D

    ld b, c                                       ; $5575: $41
    ld sp, $4E1B                                  ; $5576: $31 $1B $4E
    ld d, l                                       ; $5579: $55
    ld [hl+], a                                   ; $557A: $22
    adc $40                                       ; $557B: $CE $40

jr_01B_557D:
    nop                                           ; $557D: $00
    add d                                         ; $557E: $82
    ld b, e                                       ; $557F: $43
    ld a, [bc]                                    ; $5580: $0A
    nop                                           ; $5581: $00
    jr z, jr_01B_5525                             ; $5582: $28 $A1

    jr nz, jr_01B_55A1                            ; $5584: $20 $1B

    sub c                                         ; $5586: $91
    ld d, l                                       ; $5587: $55
    ld a, [hl]                                    ; $5588: $7E
    db $10                                        ; $5589: $10
    jp nc, $0202                                  ; $558A: $D2 $02 $02

    ld bc, $0AD1                                  ; $558D: $01 $D1 $0A
    ld de, $4294                                  ; $5590: $11 $94 $42
    ld [bc], a                                    ; $5593: $02
    inc bc                                        ; $5594: $03
    ld de, $1700                                  ; $5595: $11 $00 $17
    ld b, l                                       ; $5598: $45
    dec de                                        ; $5599: $1B
    ld c, [hl]                                    ; $559A: $4E
    ld d, l                                       ; $559B: $55
    ld [bc], a                                    ; $559C: $02
    ld de, $0003                                  ; $559D: $11 $03 $00
    dec c                                         ; $55A0: $0D

jr_01B_55A1:
    ld b, l                                       ; $55A1: $45
    dec de                                        ; $55A2: $1B

jr_01B_55A3:
    call z, $0256                                 ; $55A3: $CC $56 $02
    daa                                           ; $55A6: $27
    nop                                           ; $55A7: $00
    add hl, bc                                    ; $55A8: $09
    ld d, $45                                     ; $55A9: $16 $45
    dec de                                        ; $55AB: $1B
    ld a, $60                                     ; $55AC: $3E $60
    ld [bc], a                                    ; $55AE: $02
    ld de, $0F08                                  ; $55AF: $11 $08 $0F
    nop                                           ; $55B2: $00
    ld b, l                                       ; $55B3: $45
    dec de                                        ; $55B4: $1B
    add e                                         ; $55B5: $83
    ld e, h                                       ; $55B6: $5C
    ld b, l                                       ; $55B7: $45
    dec de                                        ; $55B8: $1B
    ld c, d                                       ; $55B9: $4A
    ld d, [hl]                                    ; $55BA: $56
    and d                                         ; $55BB: $A2
    ld sp, $04A3                                  ; $55BC: $31 $A3 $04
    ld [hl+], a                                   ; $55BF: $22
    ld e, e                                       ; $55C0: $5B
    ld b, b                                       ; $55C1: $40
    rst $38                                       ; $55C2: $FF
    ld [hl], d                                    ; $55C3: $72
    ret nc                                        ; $55C4: $D0

    ld b, h                                       ; $55C5: $44
    rst $10                                       ; $55C6: $D7
    ld d, l                                       ; $55C7: $55
    sbc a                                         ; $55C8: $9F
    ld d, d                                       ; $55C9: $52
    ld c, a                                       ; $55CA: $4F
    ld c, a                                       ; $55CB: $4F
    ld c, a                                       ; $55CC: $4F
    ld b, c                                       ; $55CD: $41
    ld d, d                                       ; $55CE: $52
    ld hl, $FDFE                                  ; $55CF: $21 $FE $FD
    sbc d                                         ; $55D2: $9A
    ld b, l                                       ; $55D3: $45
    dec de                                        ; $55D4: $1B
    sbc b                                         ; $55D5: $98
    ld d, e                                       ; $55D6: $53
    ld b, d                                       ; $55D7: $42
    and h                                         ; $55D8: $A4
    inc sp                                        ; $55D9: $33
    and e                                         ; $55DA: $A3
    ld bc, $1000                                  ; $55DB: $01 $00 $10
    ld [hl], e                                    ; $55DE: $73
    ret nc                                        ; $55DF: $D0

    and d                                         ; $55E0: $A2

jr_01B_55E1:
    inc l                                         ; $55E1: $2C
    and c                                         ; $55E2: $A1
    ld bc, $9622                                  ; $55E3: $01 $22 $96
    ld b, b                                       ; $55E6: $40
    ld a, [$D134]                                 ; $55E7: $FA $34 $D1
    ld a, [hl]                                    ; $55EA: $7E

jr_01B_55EB:
    or [hl]                                       ; $55EB: $B6
    ret nc                                        ; $55EC: $D0

    inc bc                                        ; $55ED: $03
    dec b                                         ; $55EE: $05
    cp c                                          ; $55EF: $B9
    ret nc                                        ; $55F0: $D0

    inc b                                         ; $55F1: $04
    add hl, de                                    ; $55F2: $19
    ld b, d                                       ; $55F3: $42
    sub e                                         ; $55F4: $93
    ld h, l                                       ; $55F5: $65
    add hl, de                                    ; $55F6: $19
    ld d, h                                       ; $55F7: $54
    ld c, a                                       ; $55F8: $4F

jr_01B_55F9:
    ld h, h                                       ; $55F9: $64
    ld e, a                                       ; $55FA: $5F
    ld e, d                                       ; $55FB: $5A
    ld l, c                                       ; $55FC: $69
    ld [hl], h                                    ; $55FD: $74
    ld e, d                                       ; $55FE: $5A
    ld h, [hl]                                    ; $55FF: $66
    ret nz                                        ; $5600: $C0

    ld e, h                                       ; $5601: $5C
    ld hl, $0005                                  ; $5602: $21 $05 $00
    add c                                         ; $5605: $81
    ld e, l                                       ; $5606: $5D
    dec b                                         ; $5607: $05
    dec b                                         ; $5608: $05

jr_01B_5609:
    call $00D0                                    ; $5609: $CD $D0 $00

jr_01B_560C:
    jr nz, jr_01B_5609                            ; $560C: $20 $FB

    ld d, b                                       ; $560E: $50
    ld [hl+], a                                   ; $560F: $22
    dec b                                         ; $5610: $05
    ld b, b                                       ; $5611: $40
    dec b                                         ; $5612: $05
    ld [bc], a                                    ; $5613: $02
    ld l, e                                       ; $5614: $6B
    ld c, d                                       ; $5615: $4A
    jr nz, jr_01B_561F                            ; $5616: $20 $07

    jr c, jr_01B_55EB                             ; $5618: $38 $D1

    nop                                           ; $561A: $00
    dec de                                        ; $561B: $1B
    ld a, $56                                     ; $561C: $3E $56
    ld [hl+], a                                   ; $561E: $22

jr_01B_561F:
    dec b                                         ; $561F: $05
    ld b, b                                       ; $5620: $40
    ld l, e                                       ; $5621: $6B
    dec de                                        ; $5622: $1B

jr_01B_5623:
    inc h                                         ; $5623: $24
    ld b, b                                       ; $5624: $40
    ld b, e                                       ; $5625: $43
    nop                                           ; $5626: $00
    add b                                         ; $5627: $80
    nop                                           ; $5628: $00
    rra                                           ; $5629: $1F
    inc e                                         ; $562A: $1C
    dec bc                                        ; $562B: $0B
    nop                                           ; $562C: $00
    ld [hl-], a                                   ; $562D: $32
    dec de                                        ; $562E: $1B
    jp z, $8D52                                   ; $562F: $CA $52 $8D

jr_01B_5632:
    ld b, c                                       ; $5632: $41
    ld sp, $F41B                                  ; $5633: $31 $1B $F4
    ld d, l                                       ; $5636: $55
    ld [hl+], a                                   ; $5637: $22
    adc $40                                       ; $5638: $CE $40
    nop                                           ; $563A: $00
    add d                                         ; $563B: $82
    sub h                                         ; $563C: $94

jr_01B_563D:
    ld b, d                                       ; $563D: $42
    dec d                                         ; $563E: $15
    jr nz, jr_01B_560C                            ; $563F: $20 $CB

    ld h, l                                       ; $5641: $65
    jr nz, jr_01B_5664                            ; $5642: $20 $20

    db $DB                                        ; $5644: $DB
    ld h, l                                       ; $5645: $65
    jr jr_01B_5648                                ; $5646: $18 $00

jr_01B_5648:
    add hl, de                                    ; $5648: $19
    ld b, d                                       ; $5649: $42
    ld b, e                                       ; $564A: $43

jr_01B_564B:
    nop                                           ; $564B: $00
    inc l                                         ; $564C: $2C
    and c                                         ; $564D: $A1

jr_01B_564E:
    ld bc, $0422                                  ; $564E: $01 $22 $04
    ld b, b                                       ; $5651: $40
    rlca                                          ; $5652: $07
    nop                                           ; $5653: $00
    ld l, e                                       ; $5654: $6B
    ld c, d                                       ; $5655: $4A
    add hl, bc                                    ; $5656: $09
    nop                                           ; $5657: $00
    jr nz, jr_01B_5623                            ; $5658: $20 $C9

    ld d, b                                       ; $565A: $50
    ld b, b                                       ; $565B: $40

jr_01B_565C:
    jr nz, jr_01B_55E1                            ; $565C: $20 $83

    ld b, b                                       ; $565E: $40
    ld bc, $0000                                  ; $565F: $01 $00 $00
    dec bc                                        ; $5662: $0B
    ld [bc], a                                    ; $5663: $02

jr_01B_5664:
    ld b, b                                       ; $5664: $40
    jr nz, jr_01B_56E5                            ; $5665: $20 $7E

    ld e, b                                       ; $5667: $58
    jp nc, $0101                                  ; $5668: $D2 $01 $01

    inc [hl]                                      ; $566B: $34
    pop de                                        ; $566C: $D1
    rlca                                          ; $566D: $07
    inc e                                         ; $566E: $1C
    ld e, d                                       ; $566F: $5A
    dec de                                        ; $5670: $1B
    ldh [rHDMA5], a                               ; $5671: $E0 $55
    ld b, b                                       ; $5673: $40
    jr nz, jr_01B_55F9                            ; $5674: $20 $83

    inc l                                         ; $5676: $2C
    rst $38                                       ; $5677: $FF
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    add hl, bc                                    ; $567A: $09
    nop                                           ; $567B: $00
    jr nz, jr_01B_563D                            ; $567C: $20 $BF

    ld d, b                                       ; $567E: $50
    ld b, b                                       ; $567F: $40
    jr nz, @+$0B                                  ; $5680: $20 $09

    nop                                           ; $5682: $00
    jr nz, jr_01B_564E                            ; $5683: $20 $C9

    ld d, b                                       ; $5685: $50
    ld b, b                                       ; $5686: $40
    jr nz, @+$0B                                  ; $5687: $20 $09

    nop                                           ; $5689: $00
    jr nz, jr_01B_564B                            ; $568A: $20 $BF

    ld d, b                                       ; $568C: $50
    ld b, b                                       ; $568D: $40
    jr nz, jr_01B_5699                            ; $568E: $20 $09

    nop                                           ; $5690: $00
    jr nz, jr_01B_565C                            ; $5691: $20 $C9

    ld d, b                                       ; $5693: $50
    ld b, b                                       ; $5694: $40
    jr nz, jr_01B_5632                            ; $5695: $20 $9B

    ld a, b                                       ; $5697: $78
    ld [hl], b                                    ; $5698: $70

jr_01B_5699:
    sbc a                                         ; $5699: $9F
    ld c, a                                       ; $569A: $4F
    ld c, e                                       ; $569B: $4B
    inc l                                         ; $569C: $2C
    jr nz, @+$79                                  ; $569D: $20 $77

    ld l, b                                       ; $569F: $68

jr_01B_56A0:
    ld l, a                                       ; $56A0: $6F
    jr nz, jr_01B_5707                            ; $56A1: $20 $64

    ld l, c                                       ; $56A3: $69
    ld h, h                                       ; $56A4: $64
    rst $38                                       ; $56A5: $FF
    ld [hl], h                                    ; $56A6: $74
    ld l, b                                       ; $56A7: $68
    ld h, c                                       ; $56A8: $61
    ld [hl], h                                    ; $56A9: $74
    ccf                                           ; $56AA: $3F
    cp $FD                                        ; $56AB: $FE $FD
    sbc d                                         ; $56AD: $9A
    ld b, b                                       ; $56AE: $40
    jr nz, jr_01B_56B8                            ; $56AF: $20 $07

    nop                                           ; $56B1: $00
    add c                                         ; $56B2: $81
    ld e, l                                       ; $56B3: $5D
    add hl, bc                                    ; $56B4: $09
    nop                                           ; $56B5: $00
    jr nz, @-$35                                  ; $56B6: $20 $C9

jr_01B_56B8:
    ld d, b                                       ; $56B8: $50
    ld b, d                                       ; $56B9: $42
    ld [bc], a                                    ; $56BA: $02
    inc bc                                        ; $56BB: $03
    ld de, $000D                                  ; $56BC: $11 $0D $00
    ld b, l                                       ; $56BF: $45
    dec de                                        ; $56C0: $1B
    db $F4                                        ; $56C1: $F4
    ld d, l                                       ; $56C2: $55
    ld [bc], a                                    ; $56C3: $02
    inc bc                                        ; $56C4: $03
    ld [de], a                                    ; $56C5: $12
    nop                                           ; $56C6: $00
    rla                                           ; $56C7: $17
    ld b, l                                       ; $56C8: $45
    dec de                                        ; $56C9: $1B
    ld d, b                                       ; $56CA: $50
    ld e, c                                       ; $56CB: $59
    sub e                                         ; $56CC: $93
    ld h, l                                       ; $56CD: $65
    jr z, jr_01B_5724                             ; $56CE: $28 $54

    ld c, a                                       ; $56D0: $4F
    ld h, h                                       ; $56D1: $64
    add c                                         ; $56D2: $81
    ld e, d                                       ; $56D3: $5A
    ld h, [hl]                                    ; $56D4: $66
    ret nz                                        ; $56D5: $C0

    ld e, h                                       ; $56D6: $5C
    ld hl, $0005                                  ; $56D7: $21 $05 $00
    add c                                         ; $56DA: $81
    ld e, l                                       ; $56DB: $5D
    dec b                                         ; $56DC: $05
    dec b                                         ; $56DD: $05

jr_01B_56DE:
    scf                                           ; $56DE: $37
    ret nc                                        ; $56DF: $D0

    nop                                           ; $56E0: $00
    jr nz, jr_01B_56DE                            ; $56E1: $20 $FB

    ld d, b                                       ; $56E3: $50
    ld [hl+], a                                   ; $56E4: $22

jr_01B_56E5:
    dec b                                         ; $56E5: $05
    ld b, b                                       ; $56E6: $40
    rra                                           ; $56E7: $1F
    inc e                                         ; $56E8: $1C
    dec bc                                        ; $56E9: $0B

jr_01B_56EA:
    nop                                           ; $56EA: $00
    ld [hl-], a                                   ; $56EB: $32
    dec de                                        ; $56EC: $1B
    jp z, $8D52                                   ; $56ED: $CA $52 $8D

    ld b, c                                       ; $56F0: $41
    ld sp, $CC1B                                  ; $56F1: $31 $1B $CC
    ld d, [hl]                                    ; $56F4: $56
    ld [hl+], a                                   ; $56F5: $22
    adc $40                                       ; $56F6: $CE $40
    nop                                           ; $56F8: $00
    add d                                         ; $56F9: $82
    ld b, e                                       ; $56FA: $43
    ld a, [bc]                                    ; $56FB: $0A
    nop                                           ; $56FC: $00
    jr z, jr_01B_56A0                             ; $56FD: $28 $A1

    add b                                         ; $56FF: $80
    dec de                                        ; $5700: $1B
    inc c                                         ; $5701: $0C
    ld d, a                                       ; $5702: $57
    ld a, [hl]                                    ; $5703: $7E
    ld c, d                                       ; $5704: $4A
    ret nc                                        ; $5705: $D0

    ld [bc], a                                    ; $5706: $02

jr_01B_5707:
    inc bc                                        ; $5707: $03
    inc l                                         ; $5708: $2C
    ret nc                                        ; $5709: $D0

    inc b                                         ; $570A: $04
    inc b                                         ; $570B: $04
    sub h                                         ; $570C: $94
    ld b, d                                       ; $570D: $42
    ld [bc], a                                    ; $570E: $02
    ld [de], a                                    ; $570F: $12
    inc bc                                        ; $5710: $03
    rla                                           ; $5711: $17
    nop                                           ; $5712: $00
    ld b, l                                       ; $5713: $45
    dec de                                        ; $5714: $1B
    call z, $0256                                 ; $5715: $CC $56 $02
    nop                                           ; $5718: $00
    ld sp, $1710                                  ; $5719: $31 $10 $17
    ld b, l                                       ; $571C: $45
    dec de                                        ; $571D: $1B
    dec h                                         ; $571E: $25
    ld h, [hl]                                    ; $571F: $66
    ld b, e                                       ; $5720: $43
    nop                                           ; $5721: $00
    dec h                                         ; $5722: $25
    and c                                         ; $5723: $A1

jr_01B_5724:
    inc b                                         ; $5724: $04
    dec de                                        ; $5725: $1B
    inc l                                         ; $5726: $2C
    ld d, a                                       ; $5727: $57
    ld b, l                                       ; $5728: $45
    dec de                                        ; $5729: $1B
    adc $5A                                       ; $572A: $CE $5A
    ld b, d                                       ; $572C: $42
    ld b, e                                       ; $572D: $43
    nop                                           ; $572E: $00
    dec h                                         ; $572F: $25
    and c                                         ; $5730: $A1
    ld [$391B], sp                                ; $5731: $08 $1B $39
    ld d, a                                       ; $5734: $57
    ld b, l                                       ; $5735: $45
    dec de                                        ; $5736: $1B
    dec d                                         ; $5737: $15
    ld e, e                                       ; $5738: $5B
    ld b, d                                       ; $5739: $42
    and c                                         ; $573A: $A1
    add hl, hl                                    ; $573B: $29
    and c                                         ; $573C: $A1
    ld [bc], a                                    ; $573D: $02
    ld [hl+], a                                   ; $573E: $22
    inc b                                         ; $573F: $04
    ld b, b                                       ; $5740: $40
    ld a, [$C0FB]                                 ; $5741: $FA $FB $C0
    ret nc                                        ; $5744: $D0

    ld b, d                                       ; $5745: $42
    and c                                         ; $5746: $A1
    jr z, jr_01B_56EA                             ; $5747: $28 $A1

    add b                                         ; $5749: $80
    ld [hl+], a                                   ; $574A: $22
    inc b                                         ; $574B: $04
    ld b, b                                       ; $574C: $40
    ld a, [$BEFB]                                 ; $574D: $FA $FB $BE
    pop de                                        ; $5750: $D1
    ld b, d                                       ; $5751: $42
    and h                                         ; $5752: $A4
    ld sp, $08A3                                  ; $5753: $31 $A3 $08
    nop                                           ; $5756: $00
    ld de, $D1BF                                  ; $5757: $11 $BF $D1
    sbc e                                         ; $575A: $9B
    ld a, b                                       ; $575B: $78
    ld [hl], b                                    ; $575C: $70
    sbc a                                         ; $575D: $9F
    ld b, e                                       ; $575E: $43
    ld l, a                                       ; $575F: $6F
    halt                                          ; $5760: $76
    ld h, l                                       ; $5761: $65
    ld [hl], d                                    ; $5762: $72
    ld h, l                                       ; $5763: $65
    ld h, h                                       ; $5764: $64
    jr nz, @+$79                                  ; $5765: $20 $77

    ld l, c                                       ; $5767: $69
    ld [hl], h                                    ; $5768: $74
    ld l, b                                       ; $5769: $68
    rst $38                                       ; $576A: $FF
    ld [hl], e                                    ; $576B: $73
    ld l, b                                       ; $576C: $68
    ld [hl], d                                    ; $576D: $72
    ld h, l                                       ; $576E: $65
    ld h, h                                       ; $576F: $64
    ld h, h                                       ; $5770: $64
    ld h, l                                       ; $5771: $65
    ld h, h                                       ; $5772: $64
    jr nz, jr_01B_57D8                            ; $5773: $20 $63

    ld l, h                                       ; $5775: $6C
    ld l, a                                       ; $5776: $6F
    ld [hl], h                                    ; $5777: $74
    ld l, b                                       ; $5778: $68
    ld l, $FE                                     ; $5779: $2E $FE
    db $FD                                        ; $577B: $FD
    sbc d                                         ; $577C: $9A
    ld b, d                                       ; $577D: $42
    sbc e                                         ; $577E: $9B
    ld a, b                                       ; $577F: $78
    ld [hl], b                                    ; $5780: $70
    sbc a                                         ; $5781: $9F
    ld d, a                                       ; $5782: $57
    ld l, b                                       ; $5783: $68
    ld l, a                                       ; $5784: $6F
    jr nz, jr_01B_57EA                            ; $5785: $20 $63

    ld l, a                                       ; $5787: $6F
    ld [hl], l                                    ; $5788: $75
    ld l, h                                       ; $5789: $6C
    ld h, h                                       ; $578A: $64
    jr nz, jr_01B_5800                            ; $578B: $20 $73

    ld l, h                                       ; $578D: $6C
    ld h, l                                       ; $578E: $65
    ld h, l                                       ; $578F: $65
    ld [hl], b                                    ; $5790: $70
    rst $38                                       ; $5791: $FF
    ld l, c                                       ; $5792: $69
    ld l, [hl]                                    ; $5793: $6E
    jr nz, jr_01B_57F7                            ; $5794: $20 $61

    jr nz, jr_01B_5808                            ; $5796: $20 $70

    ld l, h                                       ; $5798: $6C
    ld h, c                                       ; $5799: $61
    ld h, e                                       ; $579A: $63
    ld h, l                                       ; $579B: $65
    jr nz, jr_01B_580A                            ; $579C: $20 $6C

    ld l, c                                       ; $579E: $69
    ld l, e                                       ; $579F: $6B
    ld h, l                                       ; $57A0: $65
    cp $74                                        ; $57A1: $FE $74
    ld l, b                                       ; $57A3: $68
    ld l, c                                       ; $57A4: $69
    ld [hl], e                                    ; $57A5: $73
    ccf                                           ; $57A6: $3F
    cp $FD                                        ; $57A7: $FE $FD
    sbc d                                         ; $57A9: $9A
    ld b, d                                       ; $57AA: $42
    sbc e                                         ; $57AB: $9B
    ld a, b                                       ; $57AC: $78
    ld [hl], b                                    ; $57AD: $70
    sbc a                                         ; $57AE: $9F
    ld b, e                                       ; $57AF: $43
    ld l, h                                       ; $57B0: $6C
    ld l, a                                       ; $57B1: $6F
    ld h, a                                       ; $57B2: $67
    ld h, a                                       ; $57B3: $67
    ld h, l                                       ; $57B4: $65
    ld h, h                                       ; $57B5: $64
    jr nz, jr_01B_582F                            ; $57B6: $20 $77

    ld l, c                                       ; $57B8: $69
    ld [hl], h                                    ; $57B9: $74
    ld l, b                                       ; $57BA: $68
    rst $38                                       ; $57BB: $FF
    ld h, a                                       ; $57BC: $67
    ld [hl], l                                    ; $57BD: $75
    ld l, [hl]                                    ; $57BE: $6E
    ld l, e                                       ; $57BF: $6B
    ld l, $FE                                     ; $57C0: $2E $FE
    db $FD                                        ; $57C2: $FD
    sbc d                                         ; $57C3: $9A
    ld b, d                                       ; $57C4: $42
    sbc e                                         ; $57C5: $9B
    ld a, b                                       ; $57C6: $78
    ld [hl], b                                    ; $57C7: $70
    sbc a                                         ; $57C8: $9F
    ld c, c                                       ; $57C9: $49
    jr nz, jr_01B_5840                            ; $57CA: $20 $74

    ld l, b                                       ; $57CC: $68
    ld l, c                                       ; $57CD: $69
    ld l, [hl]                                    ; $57CE: $6E
    ld l, e                                       ; $57CF: $6B
    jr nz, jr_01B_581B                            ; $57D0: $20 $49

    daa                                           ; $57D2: $27
    ld l, l                                       ; $57D3: $6D
    rst $38                                       ; $57D4: $FF
    ld h, a                                       ; $57D5: $67
    ld l, a                                       ; $57D6: $6F
    ld l, [hl]                                    ; $57D7: $6E

jr_01B_57D8:
    ld l, [hl]                                    ; $57D8: $6E
    ld h, c                                       ; $57D9: $61
    jr nz, jr_01B_583E                            ; $57DA: $20 $62

    ld h, l                                       ; $57DC: $65
    jr nz, @+$75                                  ; $57DD: $20 $73

    ld l, c                                       ; $57DF: $69
    ld h, e                                       ; $57E0: $63
    ld l, e                                       ; $57E1: $6B
    ld hl, $FDFE                                  ; $57E2: $21 $FE $FD
    sbc d                                         ; $57E5: $9A
    ld b, d                                       ; $57E6: $42
    sbc e                                         ; $57E7: $9B
    add hl, bc                                    ; $57E8: $09
    ld e, c                                       ; $57E9: $59

jr_01B_57EA:
    sbc a                                         ; $57EA: $9F
    ld b, h                                       ; $57EB: $44
    ld l, a                                       ; $57EC: $6F
    ld l, [hl]                                    ; $57ED: $6E
    daa                                           ; $57EE: $27
    ld [hl], h                                    ; $57EF: $74
    jr nz, @+$6A                                  ; $57F0: $20 $68

    ld [hl], l                                    ; $57F2: $75
    ld [hl], d                                    ; $57F3: $72
    ld [hl], h                                    ; $57F4: $74
    jr nz, jr_01B_5864                            ; $57F5: $20 $6D

jr_01B_57F7:
    ld h, l                                       ; $57F7: $65
    ld hl, $FDFE                                  ; $57F8: $21 $FE $FD
    sbc e                                         ; $57FB: $9B
    ld a, b                                       ; $57FC: $78
    ld [hl], b                                    ; $57FD: $70
    sbc a                                         ; $57FE: $9F
    ld d, e                                       ; $57FF: $53

jr_01B_5800:
    ld l, b                                       ; $5800: $68
    ld h, l                                       ; $5801: $65
    ld h, l                                       ; $5802: $65
    ld [hl], e                                    ; $5803: $73
    ld l, b                                       ; $5804: $68
    ld l, $20                                     ; $5805: $2E $20
    ld c, c                                       ; $5807: $49

jr_01B_5808:
    daa                                           ; $5808: $27
    ld l, l                                       ; $5809: $6D

jr_01B_580A:
    jr nz, jr_01B_587A                            ; $580A: $20 $6E

    ld l, a                                       ; $580C: $6F
    ld [hl], h                                    ; $580D: $74
    rst $38                                       ; $580E: $FF
    ld l, b                                       ; $580F: $68
    ld h, l                                       ; $5810: $65
    ld [hl], d                                    ; $5811: $72
    ld h, l                                       ; $5812: $65
    jr nz, jr_01B_5889                            ; $5813: $20 $74

    ld l, a                                       ; $5815: $6F
    jr nz, jr_01B_5880                            ; $5816: $20 $68

    ld [hl], l                                    ; $5818: $75
    ld [hl], d                                    ; $5819: $72
    ld [hl], h                                    ; $581A: $74

jr_01B_581B:
    cp $79                                        ; $581B: $FE $79
    ld l, a                                       ; $581D: $6F
    ld [hl], l                                    ; $581E: $75
    inc l                                         ; $581F: $2C
    jr nz, jr_01B_586B                            ; $5820: $20 $49

    daa                                           ; $5822: $27
    ld l, l                                       ; $5823: $6D
    jr nz, jr_01B_588E                            ; $5824: $20 $68

    ld h, l                                       ; $5826: $65
    ld [hl], d                                    ; $5827: $72
    ld h, l                                       ; $5828: $65
    rst $38                                       ; $5829: $FF
    ld [hl], h                                    ; $582A: $74
    ld l, a                                       ; $582B: $6F
    jr nz, jr_01B_58A0                            ; $582C: $20 $72

    ld h, l                                       ; $582E: $65

jr_01B_582F:
    ld [hl], e                                    ; $582F: $73
    ld h, e                                       ; $5830: $63
    ld [hl], l                                    ; $5831: $75
    ld h, l                                       ; $5832: $65
    jr nz, jr_01B_58AE                            ; $5833: $20 $79

    ld l, a                                       ; $5835: $6F
    ld [hl], l                                    ; $5836: $75
    ld hl, $FDFE                                  ; $5837: $21 $FE $FD
    sbc e                                         ; $583A: $9B
    add hl, bc                                    ; $583B: $09
    ld e, c                                       ; $583C: $59
    sbc a                                         ; $583D: $9F

jr_01B_583E:
    ld d, a                                       ; $583E: $57
    ld h, l                                       ; $583F: $65

jr_01B_5840:
    ld l, h                                       ; $5840: $6C
    ld l, h                                       ; $5841: $6C
    inc l                                         ; $5842: $2C
    jr nz, jr_01B_58B9                            ; $5843: $20 $74

    ld l, b                                       ; $5845: $68
    ld h, l                                       ; $5846: $65
    ld l, [hl]                                    ; $5847: $6E
    inc l                                         ; $5848: $2C
    jr nz, @+$75                                  ; $5849: $20 $73

    ld h, l                                       ; $584B: $65
    ld h, l                                       ; $584C: $65
    rst $38                                       ; $584D: $FF
    ld a, c                                       ; $584E: $79
    ld l, a                                       ; $584F: $6F
    ld [hl], l                                    ; $5850: $75
    jr nz, jr_01B_58B4                            ; $5851: $20 $61

    ld [hl], d                                    ; $5853: $72
    ld l, a                                       ; $5854: $6F
    ld [hl], l                                    ; $5855: $75
    ld l, [hl]                                    ; $5856: $6E
    ld h, h                                       ; $5857: $64
    ld hl, $FDFE                                  ; $5858: $21 $FE $FD
    sbc d                                         ; $585B: $9A
    ld e, b                                       ; $585C: $58
    ld bc, $9B42                                  ; $585D: $01 $42 $9B
    add hl, de                                    ; $5860: $19
    ld c, [hl]                                    ; $5861: $4E
    sbc a                                         ; $5862: $9F
    ld b, h                                       ; $5863: $44

jr_01B_5864:
    ld l, a                                       ; $5864: $6F
    ld l, [hl]                                    ; $5865: $6E
    daa                                           ; $5866: $27
    ld [hl], h                                    ; $5867: $74
    jr nz, jr_01B_58D2                            ; $5868: $20 $68

    ld [hl], l                                    ; $586A: $75

jr_01B_586B:
    ld [hl], d                                    ; $586B: $72
    ld [hl], h                                    ; $586C: $74
    jr nz, jr_01B_58DC                            ; $586D: $20 $6D

    ld h, l                                       ; $586F: $65
    ld hl, $FDFE                                  ; $5870: $21 $FE $FD
    sbc e                                         ; $5873: $9B
    ld a, b                                       ; $5874: $78
    ld [hl], b                                    ; $5875: $70
    sbc a                                         ; $5876: $9F
    ld d, e                                       ; $5877: $53
    ld l, b                                       ; $5878: $68
    ld h, l                                       ; $5879: $65

jr_01B_587A:
    ld h, l                                       ; $587A: $65
    ld [hl], e                                    ; $587B: $73
    ld l, b                                       ; $587C: $68
    ld l, $20                                     ; $587D: $2E $20
    ld c, c                                       ; $587F: $49

jr_01B_5880:
    daa                                           ; $5880: $27
    ld l, l                                       ; $5881: $6D
    jr nz, jr_01B_58F2                            ; $5882: $20 $6E

    ld l, a                                       ; $5884: $6F
    ld [hl], h                                    ; $5885: $74
    rst $38                                       ; $5886: $FF
    ld l, b                                       ; $5887: $68
    ld h, l                                       ; $5888: $65

jr_01B_5889:
    ld [hl], d                                    ; $5889: $72
    ld h, l                                       ; $588A: $65
    jr nz, jr_01B_5901                            ; $588B: $20 $74

    ld l, a                                       ; $588D: $6F

jr_01B_588E:
    jr nz, @+$6A                                  ; $588E: $20 $68

    ld [hl], l                                    ; $5890: $75
    ld [hl], d                                    ; $5891: $72
    ld [hl], h                                    ; $5892: $74
    cp $79                                        ; $5893: $FE $79
    ld l, a                                       ; $5895: $6F
    ld [hl], l                                    ; $5896: $75
    inc l                                         ; $5897: $2C
    jr nz, jr_01B_58E3                            ; $5898: $20 $49

    daa                                           ; $589A: $27
    ld l, l                                       ; $589B: $6D
    jr nz, @+$6A                                  ; $589C: $20 $68

    ld h, l                                       ; $589E: $65
    ld [hl], d                                    ; $589F: $72

jr_01B_58A0:
    ld h, l                                       ; $58A0: $65
    rst $38                                       ; $58A1: $FF
    ld [hl], h                                    ; $58A2: $74
    ld l, a                                       ; $58A3: $6F
    rst $38                                       ; $58A4: $FF
    db $FD                                        ; $58A5: $FD
    sbc e                                         ; $58A6: $9B
    add hl, de                                    ; $58A7: $19
    ld c, [hl]                                    ; $58A8: $4E
    sbc a                                         ; $58A9: $9F
    ld d, a                                       ; $58AA: $57
    ld h, l                                       ; $58AB: $65
    ld l, h                                       ; $58AC: $6C
    ld l, h                                       ; $58AD: $6C

jr_01B_58AE:
    inc l                                         ; $58AE: $2C
    jr nz, jr_01B_5925                            ; $58AF: $20 $74

    ld l, b                                       ; $58B1: $68
    ld h, l                                       ; $58B2: $65
    ld l, [hl]                                    ; $58B3: $6E

jr_01B_58B4:
    inc l                                         ; $58B4: $2C
    jr nz, jr_01B_592A                            ; $58B5: $20 $73

    ld h, l                                       ; $58B7: $65
    ld h, l                                       ; $58B8: $65

jr_01B_58B9:
    rst $38                                       ; $58B9: $FF
    ld a, c                                       ; $58BA: $79
    ld l, a                                       ; $58BB: $6F
    ld [hl], l                                    ; $58BC: $75
    jr nz, jr_01B_5920                            ; $58BD: $20 $61

    ld [hl], d                                    ; $58BF: $72
    ld l, a                                       ; $58C0: $6F
    ld [hl], l                                    ; $58C1: $75
    ld l, [hl]                                    ; $58C2: $6E
    ld h, h                                       ; $58C3: $64
    ld hl, $FDFE                                  ; $58C4: $21 $FE $FD
    sbc d                                         ; $58C7: $9A
    ld e, b                                       ; $58C8: $58
    ld bc, $9B42                                  ; $58C9: $01 $42 $9B
    ld a, b                                       ; $58CC: $78
    ld [hl], b                                    ; $58CD: $70
    sbc a                                         ; $58CE: $9F
    dec l                                         ; $58CF: $2D
    ld c, c                                       ; $58D0: $49
    ld d, h                                       ; $58D1: $54

jr_01B_58D2:
    daa                                           ; $58D2: $27
    ld d, e                                       ; $58D3: $53
    jr nz, jr_01B_5922                            ; $58D4: $20 $4C

    ld c, a                                       ; $58D6: $4F
    ld b, e                                       ; $58D7: $43
    ld c, e                                       ; $58D8: $4B
    ld b, l                                       ; $58D9: $45
    ld b, h                                       ; $58DA: $44
    dec l                                         ; $58DB: $2D

jr_01B_58DC:
    cp $FD                                        ; $58DC: $FE $FD
    sbc d                                         ; $58DE: $9A
    ld e, b                                       ; $58DF: $58
    inc bc                                        ; $58E0: $03
    ld b, d                                       ; $58E1: $42
    sbc e                                         ; $58E2: $9B

jr_01B_58E3:
    ld a, b                                       ; $58E3: $78
    ld [hl], b                                    ; $58E4: $70
    sbc a                                         ; $58E5: $9F
    dec l                                         ; $58E6: $2D
    ld d, h                                       ; $58E7: $54
    ld c, a                                       ; $58E8: $4F
    ld c, [hl]                                    ; $58E9: $4E
    ld e, c                                       ; $58EA: $59
    jr nz, jr_01B_5942                            ; $58EB: $20 $55

    ld c, [hl]                                    ; $58ED: $4E
    ld c, h                                       ; $58EE: $4C
    ld c, a                                       ; $58EF: $4F
    ld b, e                                       ; $58F0: $43
    ld c, e                                       ; $58F1: $4B

jr_01B_58F2:
    ld d, e                                       ; $58F2: $53
    rst $38                                       ; $58F3: $FF
    ld d, h                                       ; $58F4: $54
    ld c, b                                       ; $58F5: $48
    ld b, l                                       ; $58F6: $45
    jr nz, jr_01B_593D                            ; $58F7: $20 $44

    ld c, a                                       ; $58F9: $4F
    ld c, a                                       ; $58FA: $4F
    ld d, d                                       ; $58FB: $52
    ld l, $20                                     ; $58FC: $2E $20
    ld d, h                                       ; $58FE: $54
    ld c, b                                       ; $58FF: $48
    ld b, l                                       ; $5900: $45

jr_01B_5901:
    cp $4B                                        ; $5901: $FE $4B
    ld b, l                                       ; $5903: $45
    ld e, c                                       ; $5904: $59
    jr nz, jr_01B_5951                            ; $5905: $20 $4A

    ld b, c                                       ; $5907: $41
    ld c, l                                       ; $5908: $4D
    ld d, e                                       ; $5909: $53
    jr nz, jr_01B_594D                            ; $590A: $20 $41

    ld c, [hl]                                    ; $590C: $4E
    ld b, h                                       ; $590D: $44
    rst $38                                       ; $590E: $FF
    ld b, d                                       ; $590F: $42
    ld d, d                                       ; $5910: $52
    ld b, l                                       ; $5911: $45
    ld b, c                                       ; $5912: $41
    ld c, e                                       ; $5913: $4B
    ld d, e                                       ; $5914: $53
    jr nz, jr_01B_5960                            ; $5915: $20 $49

    ld c, [hl]                                    ; $5917: $4E
    jr nz, jr_01B_596E                            ; $5918: $20 $54

    ld c, b                                       ; $591A: $48
    ld b, l                                       ; $591B: $45
    cp $4C                                        ; $591C: $FE $4C
    ld c, a                                       ; $591E: $4F
    ld b, e                                       ; $591F: $43

jr_01B_5920:
    ld c, e                                       ; $5920: $4B
    dec l                                         ; $5921: $2D

jr_01B_5922:
    cp $FD                                        ; $5922: $FE $FD
    sbc d                                         ; $5924: $9A

jr_01B_5925:
    ld e, b                                       ; $5925: $58
    ld bc, $9B42                                  ; $5926: $01 $42 $9B
    ld a, b                                       ; $5929: $78

jr_01B_592A:
    ld [hl], b                                    ; $592A: $70
    sbc a                                         ; $592B: $9F
    ld d, a                                       ; $592C: $57
    ld l, a                                       ; $592D: $6F
    ld [hl], a                                    ; $592E: $77
    inc l                                         ; $592F: $2C
    jr nz, @+$6A                                  ; $5930: $20 $68

    ld h, l                                       ; $5932: $65
    jr nz, jr_01B_59AC                            ; $5933: $20 $77

    ld h, c                                       ; $5935: $61
    ld [hl], e                                    ; $5936: $73
    rst $38                                       ; $5937: $FF
    ld [hl], d                                    ; $5938: $72
    ld h, c                                       ; $5939: $61
    ld [hl], h                                    ; $593A: $74
    ld l, b                                       ; $593B: $68
    ld h, l                                       ; $593C: $65

jr_01B_593D:
    ld [hl], d                                    ; $593D: $72
    cp $75                                        ; $593E: $FE $75
    ld l, [hl]                                    ; $5940: $6E
    ld h, a                                       ; $5941: $67

jr_01B_5942:
    ld [hl], d                                    ; $5942: $72
    ld h, c                                       ; $5943: $61
    ld [hl], h                                    ; $5944: $74
    ld h, l                                       ; $5945: $65
    ld h, [hl]                                    ; $5946: $66
    ld [hl], l                                    ; $5947: $75
    ld l, h                                       ; $5948: $6C
    ld l, $2E                                     ; $5949: $2E $2E
    ld l, $FE                                     ; $594B: $2E $FE

jr_01B_594D:
    db $FD                                        ; $594D: $FD
    sbc d                                         ; $594E: $9A
    ld b, d                                       ; $594F: $42
    sub e                                         ; $5950: $93

jr_01B_5951:
    ld h, l                                       ; $5951: $65
    scf                                           ; $5952: $37
    ld d, h                                       ; $5953: $54
    ld c, a                                       ; $5954: $4F
    rra                                           ; $5955: $1F
    inc e                                         ; $5956: $1C
    ld h, h                                       ; $5957: $64
    adc d                                         ; $5958: $8A
    ld e, d                                       ; $5959: $5A
    ld l, d                                       ; $595A: $6A
    adc a                                         ; $595B: $8F
    ld h, h                                       ; $595C: $64
    ld a, h                                       ; $595D: $7C
    ld a, h                                       ; $595E: $7C
    ld c, l                                       ; $595F: $4D

jr_01B_5960:
    ld a, h                                       ; $5960: $7C
    ld l, c                                       ; $5961: $69
    sbc e                                         ; $5962: $9B
    ld e, d                                       ; $5963: $5A
    ld h, [hl]                                    ; $5964: $66
    ret nz                                        ; $5965: $C0

    ld e, h                                       ; $5966: $5C
    ld hl, $0005                                  ; $5967: $21 $05 $00
    add c                                         ; $596A: $81
    ld e, l                                       ; $596B: $5D
    dec b                                         ; $596C: $05
    dec b                                         ; $596D: $05

jr_01B_596E:
    sbc e                                         ; $596E: $9B
    ret nc                                        ; $596F: $D0

    nop                                           ; $5970: $00
    jr nz, jr_01B_596E                            ; $5971: $20 $FB

    ld d, b                                       ; $5973: $50
    ld [hl+], a                                   ; $5974: $22
    dec b                                         ; $5975: $05
    ld b, b                                       ; $5976: $40
    dec bc                                        ; $5977: $0B
    nop                                           ; $5978: $00
    ld [hl-], a                                   ; $5979: $32
    dec de                                        ; $597A: $1B
    jp z, $8D52                                   ; $597B: $CA $52 $8D

    ld b, c                                       ; $597E: $41
    ld sp, $5A1B                                  ; $597F: $31 $1B $5A
    ld e, c                                       ; $5982: $59
    ld [hl+], a                                   ; $5983: $22
    adc $40                                       ; $5984: $CE $40
    nop                                           ; $5986: $00
    add d                                         ; $5987: $82
    ld b, e                                       ; $5988: $43
    ld a, [bc]                                    ; $5989: $0A
    nop                                           ; $598A: $00
    dec h                                         ; $598B: $25
    and c                                         ; $598C: $A1
    inc b                                         ; $598D: $04
    dec de                                        ; $598E: $1B
    sbc d                                         ; $598F: $9A
    ld e, c                                       ; $5990: $59
    ld a, [hl]                                    ; $5991: $7E
    nop                                           ; $5992: $00
    ret nc                                        ; $5993: $D0

    ld [bc], a                                    ; $5994: $02
    ld [bc], a                                    ; $5995: $02
    ld e, b                                       ; $5996: $58
    pop de                                        ; $5997: $D1
    dec bc                                        ; $5998: $0B
    ld c, $43                                     ; $5999: $0E $43
    ld a, [bc]                                    ; $599B: $0A
    nop                                           ; $599C: $00
    dec h                                         ; $599D: $25
    and c                                         ; $599E: $A1
    ld [$AC1B], sp                                ; $599F: $08 $1B $AC
    ld e, c                                       ; $59A2: $59
    ld a, [hl]                                    ; $59A3: $7E
    nop                                           ; $59A4: $00
    ret nc                                        ; $59A5: $D0

    ld [bc], a                                    ; $59A6: $02
    ld [bc], a                                    ; $59A7: $02
    ld h, c                                       ; $59A8: $61
    pop de                                        ; $59A9: $D1
    dec bc                                        ; $59AA: $0B
    rla                                           ; $59AB: $17

jr_01B_59AC:
    ld b, e                                       ; $59AC: $43
    nop                                           ; $59AD: $00
    and [hl]                                      ; $59AE: $A6
    and c                                         ; $59AF: $A1
    ld [$CD1B], sp                                ; $59B0: $08 $1B $CD
    ld e, c                                       ; $59B3: $59
    dec b                                         ; $59B4: $05
    ld [bc], a                                    ; $59B5: $02
    dec b                                         ; $59B6: $05
    ld h, h                                       ; $59B7: $64
    ld c, $06                                     ; $59B8: $0E $06
    jp nz, $00D0                                  ; $59BA: $C2 $D0 $00

    ld de, $4796                                  ; $59BD: $11 $96 $47
    dec de                                        ; $59C0: $1B
    ldh a, [$59]                                  ; $59C1: $F0 $59
    dec bc                                        ; $59C3: $0B
    ld [bc], a                                    ; $59C4: $02
    ld l, e                                       ; $59C5: $6B
    jr nc, jr_01B_59D3                            ; $59C6: $30 $0B

    ret nc                                        ; $59C8: $D0

    ld c, c                                       ; $59C9: $49
    nop                                           ; $59CA: $00
    add b                                         ; $59CB: $80
    nop                                           ; $59CC: $00
    ld b, e                                       ; $59CD: $43
    nop                                           ; $59CE: $00
    and [hl]                                      ; $59CF: $A6
    and c                                         ; $59D0: $A1
    db $10                                        ; $59D1: $10
    dec de                                        ; $59D2: $1B

jr_01B_59D3:
    xor $59                                       ; $59D3: $EE $59
    dec b                                         ; $59D5: $05
    inc bc                                        ; $59D6: $03
    dec b                                         ; $59D7: $05
    ld h, h                                       ; $59D8: $64
    jr jr_01B_59E1                                ; $59D9: $18 $06

    call z, $30D0                                 ; $59DB: $CC $D0 $30
    ld de, $4A21                                  ; $59DE: $11 $21 $4A

jr_01B_59E1:
    dec de                                        ; $59E1: $1B
    ld h, c                                       ; $59E2: $61
    ld e, d                                       ; $59E3: $5A
    dec bc                                        ; $59E4: $0B
    inc bc                                        ; $59E5: $03
    ld l, e                                       ; $59E6: $6B
    jr nc, @+$0D                                  ; $59E7: $30 $0B

    add b                                         ; $59E9: $80
    ld c, h                                       ; $59EA: $4C
    nop                                           ; $59EB: $00
    add e                                         ; $59EC: $83
    nop                                           ; $59ED: $00
    sub h                                         ; $59EE: $94
    ld b, d                                       ; $59EF: $42
    xor a                                         ; $59F0: $AF
    and [hl]                                      ; $59F1: $A6
    and c                                         ; $59F2: $A1
    ld [$1B5B], sp                                ; $59F3: $08 $5B $1B
    rst $20                                       ; $59F6: $E7
    ld d, a                                       ; $59F7: $57
    ld c, e                                       ; $59F8: $4B
    inc bc                                        ; $59F9: $03

jr_01B_59FA:
    dec de                                        ; $59FA: $1B
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    rrca                                          ; $59FD: $0F
    ld e, d                                       ; $59FE: $5A
    dec de                                        ; $59FF: $1B
    inc bc                                        ; $5A00: $03
    nop                                           ; $5A01: $00
    add hl, de                                    ; $5A02: $19
    ld e, d                                       ; $5A03: $5A
    dec de                                        ; $5A04: $1B
    ld [bc], a                                    ; $5A05: $02
    nop                                           ; $5A06: $00
    dec l                                         ; $5A07: $2D
    ld e, d                                       ; $5A08: $5A
    dec de                                        ; $5A09: $1B
    ld bc, $2300                                  ; $5A0A: $01 $00 $23
    ld e, d                                       ; $5A0D: $5A
    rst $38                                       ; $5A0E: $FF

jr_01B_5A0F:
    inc d                                         ; $5A0F: $14
    ld de, $478C                                  ; $5A10: $11 $8C $47
    ld h, d                                       ; $5A13: $62
    ld bc, $1B45                                  ; $5A14: $01 $45 $1B
    scf                                           ; $5A17: $37
    ld e, d                                       ; $5A18: $5A
    inc d                                         ; $5A19: $14
    ld de, $4796                                  ; $5A1A: $11 $96 $47
    ld h, d                                       ; $5A1D: $62
    ld bc, $1B45                                  ; $5A1E: $01 $45 $1B
    ld c, b                                       ; $5A21: $48
    ld e, d                                       ; $5A22: $5A
    inc d                                         ; $5A23: $14
    ld de, $47A0                                  ; $5A24: $11 $A0 $47
    ld h, d                                       ; $5A27: $62
    ld bc, $1B45                                  ; $5A28: $01 $45 $1B
    scf                                           ; $5A2B: $37
    ld e, d                                       ; $5A2C: $5A
    inc d                                         ; $5A2D: $14
    ld de, $47AA                                  ; $5A2E: $11 $AA $47
    ld h, d                                       ; $5A31: $62
    ld bc, $1B45                                  ; $5A32: $01 $45 $1B
    scf                                           ; $5A35: $37
    ld e, d                                       ; $5A36: $5A
    dec d                                         ; $5A37: $15
    ld de, $475C                                  ; $5A38: $11 $5C $47
    jr nz, jr_01B_5A3D                            ; $5A3B: $20 $00

jr_01B_5A3D:
    rlca                                          ; $5A3D: $07
    nop                                           ; $5A3E: $00
    add c                                         ; $5A3F: $81
    ld e, l                                       ; $5A40: $5D
    add hl, bc                                    ; $5A41: $09
    nop                                           ; $5A42: $00
    jr nz, jr_01B_59FA                            ; $5A43: $20 $B5

    ld d, b                                       ; $5A45: $50
    add hl, de                                    ; $5A46: $19
    ld b, d                                       ; $5A47: $42
    dec d                                         ; $5A48: $15
    ld de, $477C                                  ; $5A49: $11 $7C $47
    ld [$5C11], sp                                ; $5A4C: $08 $11 $5C
    ld b, a                                       ; $5A4F: $47
    jr jr_01B_5A52                                ; $5A50: $18 $00

jr_01B_5A52:
    rlca                                          ; $5A52: $07
    nop                                           ; $5A53: $00
    add c                                         ; $5A54: $81
    ld e, l                                       ; $5A55: $5D
    add hl, bc                                    ; $5A56: $09
    nop                                           ; $5A57: $00
    jr nz, jr_01B_5A0F                            ; $5A58: $20 $B5

    ld d, b                                       ; $5A5A: $50
    ld e, e                                       ; $5A5B: $5B
    dec de                                        ; $5A5C: $1B
    jr z, jr_01B_5AB8                             ; $5A5D: $28 $59

    add hl, de                                    ; $5A5F: $19
    ld b, d                                       ; $5A60: $42
    xor a                                         ; $5A61: $AF
    and [hl]                                      ; $5A62: $A6
    and c                                         ; $5A63: $A1
    db $10                                        ; $5A64: $10
    ld e, e                                       ; $5A65: $5B
    dec de                                        ; $5A66: $1B
    ld e, a                                       ; $5A67: $5F
    ld e, b                                       ; $5A68: $58
    ld c, e                                       ; $5A69: $4B
    inc bc                                        ; $5A6A: $03

jr_01B_5A6B:
    dec de                                        ; $5A6B: $1B
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    add b                                         ; $5A6E: $80
    ld e, d                                       ; $5A6F: $5A
    dec de                                        ; $5A70: $1B
    inc bc                                        ; $5A71: $03
    nop                                           ; $5A72: $00
    adc d                                         ; $5A73: $8A
    ld e, d                                       ; $5A74: $5A
    dec de                                        ; $5A75: $1B
    ld [bc], a                                    ; $5A76: $02
    nop                                           ; $5A77: $00
    sbc [hl]                                      ; $5A78: $9E
    ld e, d                                       ; $5A79: $5A
    dec de                                        ; $5A7A: $1B
    ld bc, $9400                                  ; $5A7B: $01 $00 $94
    ld e, d                                       ; $5A7E: $5A
    rst $38                                       ; $5A7F: $FF

jr_01B_5A80:
    inc d                                         ; $5A80: $14
    ld de, $4A17                                  ; $5A81: $11 $17 $4A
    ld h, d                                       ; $5A84: $62
    ld bc, $1B45                                  ; $5A85: $01 $45 $1B
    xor b                                         ; $5A88: $A8
    ld e, d                                       ; $5A89: $5A
    inc d                                         ; $5A8A: $14
    ld de, $4A21                                  ; $5A8B: $11 $21 $4A
    ld h, d                                       ; $5A8E: $62
    ld bc, $1B45                                  ; $5A8F: $01 $45 $1B

jr_01B_5A92:
    cp c                                          ; $5A92: $B9
    ld e, d                                       ; $5A93: $5A
    inc d                                         ; $5A94: $14
    ld de, $4A2B                                  ; $5A95: $11 $2B $4A
    ld h, d                                       ; $5A98: $62
    ld bc, $1B45                                  ; $5A99: $01 $45 $1B
    xor b                                         ; $5A9C: $A8
    ld e, d                                       ; $5A9D: $5A
    inc d                                         ; $5A9E: $14
    ld de, $4A35                                  ; $5A9F: $11 $35 $4A
    ld h, d                                       ; $5AA2: $62
    ld bc, $1B45                                  ; $5AA3: $01 $45 $1B
    xor b                                         ; $5AA6: $A8
    ld e, d                                       ; $5AA7: $5A
    dec d                                         ; $5AA8: $15
    ld de, $49E7                                  ; $5AA9: $11 $E7 $49
    jr nz, jr_01B_5AAE                            ; $5AAC: $20 $00

jr_01B_5AAE:
    rlca                                          ; $5AAE: $07
    nop                                           ; $5AAF: $00
    add c                                         ; $5AB0: $81
    ld e, l                                       ; $5AB1: $5D
    add hl, bc                                    ; $5AB2: $09
    nop                                           ; $5AB3: $00
    jr nz, jr_01B_5A6B                            ; $5AB4: $20 $B5

    ld d, b                                       ; $5AB6: $50
    add hl, de                                    ; $5AB7: $19

jr_01B_5AB8:
    ld b, d                                       ; $5AB8: $42
    dec d                                         ; $5AB9: $15
    ld de, $49F7                                  ; $5ABA: $11 $F7 $49
    ld [$E711], sp                                ; $5ABD: $08 $11 $E7
    ld c, c                                       ; $5AC0: $49
    jr jr_01B_5AC3                                ; $5AC1: $18 $00

jr_01B_5AC3:
    rlca                                          ; $5AC3: $07
    nop                                           ; $5AC4: $00
    add c                                         ; $5AC5: $81
    ld e, l                                       ; $5AC6: $5D
    add hl, bc                                    ; $5AC7: $09
    nop                                           ; $5AC8: $00
    jr nz, jr_01B_5A80                            ; $5AC9: $20 $B5

    ld d, b                                       ; $5ACB: $50
    add hl, de                                    ; $5ACC: $19
    ld b, d                                       ; $5ACD: $42
    ld b, e                                       ; $5ACE: $43
    ld de, $C301                                  ; $5ACF: $11 $01 $C3
    and e                                         ; $5AD2: $A3
    dec b                                         ; $5AD3: $05
    nop                                           ; $5AD4: $00
    dec de                                        ; $5AD5: $1B
    ld hl, sp+$5A                                 ; $5AD6: $F8 $5A
    rlca                                          ; $5AD8: $07

jr_01B_5AD9:
    nop                                           ; $5AD9: $00
    ld l, e                                       ; $5ADA: $6B
    ld c, d                                       ; $5ADB: $4A
    add hl, bc                                    ; $5ADC: $09
    nop                                           ; $5ADD: $00
    jr nz, @-$31                                  ; $5ADE: $20 $CD

    ld c, a                                       ; $5AE0: $4F
    ld b, b                                       ; $5AE1: $40
    ld [$0009], sp                                ; $5AE2: $08 $09 $00
    jr nz, jr_01B_5A92                            ; $5AE5: $20 $AB

    ld d, b                                       ; $5AE7: $50

jr_01B_5AE8:
    ld e, e                                       ; $5AE8: $5B
    dec de                                        ; $5AE9: $1B
    bit 3, b                                      ; $5AEA: $CB $58
    ld h, d                                       ; $5AEC: $62
    inc bc                                        ; $5AED: $03
    rlca                                          ; $5AEE: $07
    nop                                           ; $5AEF: $00
    add c                                         ; $5AF0: $81
    ld e, l                                       ; $5AF1: $5D
    add hl, bc                                    ; $5AF2: $09
    nop                                           ; $5AF3: $00

jr_01B_5AF4:
    jr nz, @-$53                                  ; $5AF4: $20 $AB

    ld d, b                                       ; $5AF6: $50
    ld b, d                                       ; $5AF7: $42
    ld e, e                                       ; $5AF8: $5B
    dec de                                        ; $5AF9: $1B
    ld [c], a                                     ; $5AFA: $E2
    ld e, b                                       ; $5AFB: $58
    ld h, d                                       ; $5AFC: $62
    ld bc, $007E                                  ; $5AFD: $01 $7E $00
    ret nc                                        ; $5B00: $D0

    ld [bc], a                                    ; $5B01: $02
    ld [bc], a                                    ; $5B02: $02
    ld e, b                                       ; $5B03: $58
    pop de                                        ; $5B04: $D1
    dec bc                                        ; $5B05: $0B
    ld c, $A6                                     ; $5B06: $0E $A6
    jp $0CA3                                      ; $5B08: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $5B0B: $01 $C3 $A3
    dec b                                         ; $5B0E: $05
    ld bc, $25AF                                  ; $5B0F: $01 $AF $25
    and c                                         ; $5B12: $A1
    inc b                                         ; $5B13: $04
    ld b, d                                       ; $5B14: $42
    ld b, e                                       ; $5B15: $43
    ld de, $C301                                  ; $5B16: $11 $01 $C3
    and e                                         ; $5B19: $A3
    dec b                                         ; $5B1A: $05
    nop                                           ; $5B1B: $00
    dec de                                        ; $5B1C: $1B
    ccf                                           ; $5B1D: $3F
    ld e, e                                       ; $5B1E: $5B
    rlca                                          ; $5B1F: $07
    nop                                           ; $5B20: $00
    ld l, e                                       ; $5B21: $6B
    ld c, d                                       ; $5B22: $4A
    add hl, bc                                    ; $5B23: $09
    nop                                           ; $5B24: $00
    jr nz, jr_01B_5AF4                            ; $5B25: $20 $CD

    ld c, a                                       ; $5B27: $4F
    ld b, b                                       ; $5B28: $40
    ld [$0009], sp                                ; $5B29: $08 $09 $00
    jr nz, jr_01B_5AD9                            ; $5B2C: $20 $AB

    ld d, b                                       ; $5B2E: $50
    ld e, e                                       ; $5B2F: $5B
    dec de                                        ; $5B30: $1B
    bit 3, b                                      ; $5B31: $CB $58
    ld h, d                                       ; $5B33: $62
    inc bc                                        ; $5B34: $03
    rlca                                          ; $5B35: $07
    nop                                           ; $5B36: $00
    add c                                         ; $5B37: $81
    ld e, l                                       ; $5B38: $5D
    add hl, bc                                    ; $5B39: $09
    nop                                           ; $5B3A: $00
    jr nz, jr_01B_5AE8                            ; $5B3B: $20 $AB

    ld d, b                                       ; $5B3D: $50
    ld b, d                                       ; $5B3E: $42
    ld e, e                                       ; $5B3F: $5B
    dec de                                        ; $5B40: $1B
    ld [c], a                                     ; $5B41: $E2
    ld e, b                                       ; $5B42: $58
    ld h, d                                       ; $5B43: $62
    ld bc, $007E                                  ; $5B44: $01 $7E $00
    ret nc                                        ; $5B47: $D0

    ld [bc], a                                    ; $5B48: $02
    ld [bc], a                                    ; $5B49: $02
    ld h, c                                       ; $5B4A: $61
    pop de                                        ; $5B4B: $D1
    dec bc                                        ; $5B4C: $0B
    rla                                           ; $5B4D: $17
    and [hl]                                      ; $5B4E: $A6
    jp $0CA3                                      ; $5B4F: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $5B52: $01 $C3 $A3
    dec b                                         ; $5B55: $05
    ld bc, $25AF                                  ; $5B56: $01 $AF $25
    and c                                         ; $5B59: $A1
    ld [$0242], sp                                ; $5B5A: $08 $42 $02
    ld [$0011], sp                                ; $5B5D: $08 $11 $00
    rrca                                          ; $5B60: $0F
    ld b, l                                       ; $5B61: $45
    dec de                                        ; $5B62: $1B
    db $F4                                        ; $5B63: $F4
    ld d, l                                       ; $5B64: $55
    ld [bc], a                                    ; $5B65: $02
    rla                                           ; $5B66: $17
    nop                                           ; $5B67: $00
    ld d, $08                                     ; $5B68: $16 $08
    ld b, l                                       ; $5B6A: $45
    dec de                                        ; $5B6B: $1B
    pop af                                        ; $5B6C: $F1
    ld e, a                                       ; $5B6D: $5F
    ld b, e                                       ; $5B6E: $43
    nop                                           ; $5B6F: $00
    dec h                                         ; $5B70: $25
    and c                                         ; $5B71: $A1
    ld b, b                                       ; $5B72: $40
    dec de                                        ; $5B73: $1B
    ld a, d                                       ; $5B74: $7A
    ld e, e                                       ; $5B75: $5B
    ld b, l                                       ; $5B76: $45
    dec de                                        ; $5B77: $1B
    dec sp                                        ; $5B78: $3B
    ld e, [hl]                                    ; $5B79: $5E
    ld b, d                                       ; $5B7A: $42
    ld b, e                                       ; $5B7B: $43
    nop                                           ; $5B7C: $00
    ld h, $A1                                     ; $5B7D: $26 $A1
    inc b                                         ; $5B7F: $04
    ld [hl+], a                                   ; $5B80: $22
    inc b                                         ; $5B81: $04
    ld b, b                                       ; $5B82: $40
    xor a                                         ; $5B83: $AF
    ld h, $A1                                     ; $5B84: $26 $A1
    inc b                                         ; $5B86: $04
    ld b, l                                       ; $5B87: $45
    dec de                                        ; $5B88: $1B
    add l                                         ; $5B89: $85
    ld e, l                                       ; $5B8A: $5D
    and h                                         ; $5B8B: $A4
    daa                                           ; $5B8C: $27
    and c                                         ; $5B8D: $A1
    add b                                         ; $5B8E: $80
    nop                                           ; $5B8F: $00
    dec de                                        ; $5B90: $1B
    cp l                                          ; $5B91: $BD
    ret nc                                        ; $5B92: $D0

    sbc e                                         ; $5B93: $9B
    ld a, b                                       ; $5B94: $78
    ld [hl], b                                    ; $5B95: $70
    sbc a                                         ; $5B96: $9F
    ld d, h                                       ; $5B97: $54
    ld l, b                                       ; $5B98: $68
    ld h, l                                       ; $5B99: $65
    ld [hl], d                                    ; $5B9A: $72
    ld h, l                                       ; $5B9B: $65
    daa                                           ; $5B9C: $27
    ld [hl], e                                    ; $5B9D: $73
    jr nz, jr_01B_5C01                            ; $5B9E: $20 $61

    jr nz, jr_01B_5C04                            ; $5BA0: $20 $62

    ld l, c                                       ; $5BA2: $69
    ld h, a                                       ; $5BA3: $67
    rst $38                                       ; $5BA4: $FF
    ld [hl], b                                    ; $5BA5: $70
    ld l, c                                       ; $5BA6: $69
    ld l, h                                       ; $5BA7: $6C
    ld h, l                                       ; $5BA8: $65
    jr nz, jr_01B_5C1A                            ; $5BA9: $20 $6F

    ld h, [hl]                                    ; $5BAB: $66
    jr nz, jr_01B_5C25                            ; $5BAC: $20 $77

    ld l, a                                       ; $5BAE: $6F
    ld [hl], d                                    ; $5BAF: $72
    ld l, l                                       ; $5BB0: $6D
    ld [hl], e                                    ; $5BB1: $73
    cp $75                                        ; $5BB2: $FE $75
    ld l, [hl]                                    ; $5BB4: $6E
    ld h, h                                       ; $5BB5: $64
    ld h, l                                       ; $5BB6: $65
    ld [hl], d                                    ; $5BB7: $72
    jr nz, jr_01B_5C2E                            ; $5BB8: $20 $74

    ld l, b                                       ; $5BBA: $68
    ld l, c                                       ; $5BBB: $69
    ld [hl], e                                    ; $5BBC: $73
    rst $38                                       ; $5BBD: $FF
    ld l, l                                       ; $5BBE: $6D
    ld h, c                                       ; $5BBF: $61
    ld [hl], h                                    ; $5BC0: $74
    ld [hl], h                                    ; $5BC1: $74
    ld [hl], d                                    ; $5BC2: $72
    ld h, l                                       ; $5BC3: $65
    ld [hl], e                                    ; $5BC4: $73
    ld [hl], e                                    ; $5BC5: $73
    ld hl, $FDFE                                  ; $5BC6: $21 $FE $FD
    sbc d                                         ; $5BC9: $9A
    ld b, d                                       ; $5BCA: $42
    sbc e                                         ; $5BCB: $9B
    ld a, b                                       ; $5BCC: $78
    ld [hl], b                                    ; $5BCD: $70
    sbc a                                         ; $5BCE: $9F
    ld d, e                                       ; $5BCF: $53
    ld l, a                                       ; $5BD0: $6F
    ld l, l                                       ; $5BD1: $6D
    ld h, l                                       ; $5BD2: $65
    ld [hl], h                                    ; $5BD3: $74
    ld l, b                                       ; $5BD4: $68
    ld l, c                                       ; $5BD5: $69
    ld l, [hl]                                    ; $5BD6: $6E
    ld h, a                                       ; $5BD7: $67
    daa                                           ; $5BD8: $27
    ld [hl], e                                    ; $5BD9: $73
    rst $38                                       ; $5BDA: $FF
    ld h, d                                       ; $5BDB: $62
    ld [hl], l                                    ; $5BDC: $75
    ld h, d                                       ; $5BDD: $62
    ld h, d                                       ; $5BDE: $62
    ld l, h                                       ; $5BDF: $6C
    ld h, l                                       ; $5BE0: $65
    ld h, h                                       ; $5BE1: $64
    jr nz, jr_01B_5C59                            ; $5BE2: $20 $75

    ld [hl], b                                    ; $5BE4: $70
    jr nz, @+$6B                                  ; $5BE5: $20 $69

    ld l, [hl]                                    ; $5BE7: $6E
    cp $68                                        ; $5BE8: $FE $68
    ld h, l                                       ; $5BEA: $65
    ld [hl], d                                    ; $5BEB: $72
    ld h, l                                       ; $5BEC: $65
    inc l                                         ; $5BED: $2C
    jr nz, jr_01B_5C51                            ; $5BEE: $20 $61

    ld l, [hl]                                    ; $5BF0: $6E
    ld h, h                                       ; $5BF1: $64
    jr nz, jr_01B_5C5D                            ; $5BF2: $20 $69

    ld [hl], h                                    ; $5BF4: $74
    rst $38                                       ; $5BF5: $FF
    ld h, h                                       ; $5BF6: $64
    ld l, a                                       ; $5BF7: $6F
    ld h, l                                       ; $5BF8: $65
    ld [hl], e                                    ; $5BF9: $73
    ld l, [hl]                                    ; $5BFA: $6E
    daa                                           ; $5BFB: $27
    ld [hl], h                                    ; $5BFC: $74
    jr nz, @+$6E                                  ; $5BFD: $20 $6C

    ld l, a                                       ; $5BFF: $6F
    ld l, a                                       ; $5C00: $6F

jr_01B_5C01:
    ld l, e                                       ; $5C01: $6B
    cp $66                                        ; $5C02: $FE $66

jr_01B_5C04:
    ld [hl], d                                    ; $5C04: $72
    ld l, c                                       ; $5C05: $69
    ld h, l                                       ; $5C06: $65
    ld l, [hl]                                    ; $5C07: $6E
    ld h, h                                       ; $5C08: $64
    ld l, h                                       ; $5C09: $6C
    ld a, c                                       ; $5C0A: $79
    ld l, $FE                                     ; $5C0B: $2E $FE
    db $FD                                        ; $5C0D: $FD
    sbc d                                         ; $5C0E: $9A
    ld b, d                                       ; $5C0F: $42
    sbc e                                         ; $5C10: $9B
    ld a, b                                       ; $5C11: $78
    ld [hl], b                                    ; $5C12: $70
    sbc a                                         ; $5C13: $9F
    dec l                                         ; $5C14: $2D
    ld d, h                                       ; $5C15: $54
    ld c, b                                       ; $5C16: $48
    ld b, l                                       ; $5C17: $45
    jr nz, jr_01B_5C5E                            ; $5C18: $20 $44

jr_01B_5C1A:
    ld c, a                                       ; $5C1A: $4F
    ld c, a                                       ; $5C1B: $4F
    ld d, d                                       ; $5C1C: $52
    jr nz, jr_01B_5C68                            ; $5C1D: $20 $49

    ld d, e                                       ; $5C1F: $53
    rst $38                                       ; $5C20: $FF
    ld d, e                                       ; $5C21: $53
    ld b, e                                       ; $5C22: $43
    ld d, d                                       ; $5C23: $52
    ld b, l                                       ; $5C24: $45

jr_01B_5C25:
    ld d, a                                       ; $5C25: $57
    ld b, l                                       ; $5C26: $45
    ld b, h                                       ; $5C27: $44
    jr nz, jr_01B_5C7D                            ; $5C28: $20 $53

    ld c, b                                       ; $5C2A: $48
    ld d, l                                       ; $5C2B: $55
    ld d, h                                       ; $5C2C: $54
    dec l                                         ; $5C2D: $2D

jr_01B_5C2E:
    cp $FD                                        ; $5C2E: $FE $FD
    sbc d                                         ; $5C30: $9A
    ld e, b                                       ; $5C31: $58
    ld bc, $9B42                                  ; $5C32: $01 $42 $9B
    ld a, b                                       ; $5C35: $78
    ld [hl], b                                    ; $5C36: $70
    sbc a                                         ; $5C37: $9F
    dec l                                         ; $5C38: $2D
    ld d, h                                       ; $5C39: $54
    ld c, a                                       ; $5C3A: $4F
    ld c, [hl]                                    ; $5C3B: $4E
    ld e, c                                       ; $5C3C: $59
    jr nz, jr_01B_5C94                            ; $5C3D: $20 $55

    ld c, [hl]                                    ; $5C3F: $4E
    ld d, e                                       ; $5C40: $53
    ld b, e                                       ; $5C41: $43
    ld d, d                                       ; $5C42: $52
    ld b, l                                       ; $5C43: $45
    ld d, a                                       ; $5C44: $57
    ld d, e                                       ; $5C45: $53
    rst $38                                       ; $5C46: $FF
    ld d, h                                       ; $5C47: $54
    ld c, b                                       ; $5C48: $48
    ld b, l                                       ; $5C49: $45
    jr nz, jr_01B_5C90                            ; $5C4A: $20 $44

    ld c, a                                       ; $5C4C: $4F
    ld c, a                                       ; $5C4D: $4F
    ld d, d                                       ; $5C4E: $52
    jr nz, jr_01B_5CA8                            ; $5C4F: $20 $57

jr_01B_5C51:
    ld c, c                                       ; $5C51: $49
    ld d, h                                       ; $5C52: $54
    ld c, b                                       ; $5C53: $48
    cp $54                                        ; $5C54: $FE $54
    ld c, b                                       ; $5C56: $48
    ld b, l                                       ; $5C57: $45
    rst $38                                       ; $5C58: $FF

jr_01B_5C59:
    ld d, e                                       ; $5C59: $53
    ld b, e                                       ; $5C5A: $43
    ld d, d                                       ; $5C5B: $52
    ld b, l                                       ; $5C5C: $45

jr_01B_5C5D:
    ld d, a                                       ; $5C5D: $57

jr_01B_5C5E:
    ld b, h                                       ; $5C5E: $44
    ld d, d                                       ; $5C5F: $52
    ld c, c                                       ; $5C60: $49
    ld d, [hl]                                    ; $5C61: $56
    ld b, l                                       ; $5C62: $45
    ld d, d                                       ; $5C63: $52
    dec l                                         ; $5C64: $2D
    cp $FD                                        ; $5C65: $FE $FD
    sbc d                                         ; $5C67: $9A

jr_01B_5C68:
    ld e, b                                       ; $5C68: $58
    ld bc, $9B42                                  ; $5C69: $01 $42 $9B
    ld a, b                                       ; $5C6C: $78
    ld [hl], b                                    ; $5C6D: $70
    sbc a                                         ; $5C6E: $9F
    ld d, a                                       ; $5C6F: $57
    ld l, b                                       ; $5C70: $68
    ld h, c                                       ; $5C71: $61
    ld [hl], h                                    ; $5C72: $74
    jr nz, jr_01B_5CEC                            ; $5C73: $20 $77

jr_01B_5C75:
    ld h, c                                       ; $5C75: $61
    ld [hl], e                                    ; $5C76: $73
    jr nz, jr_01B_5CED                            ; $5C77: $20 $74

    ld l, b                                       ; $5C79: $68
    ld h, c                                       ; $5C7A: $61
    ld [hl], h                                    ; $5C7B: $74
    ccf                                           ; $5C7C: $3F

jr_01B_5C7D:
    cp $FD                                        ; $5C7D: $FE $FD
    sbc d                                         ; $5C7F: $9A
    ld e, b                                       ; $5C80: $58
    ld [bc], a                                    ; $5C81: $02
    ld b, d                                       ; $5C82: $42
    sub e                                         ; $5C83: $93
    ld h, l                                       ; $5C84: $65
    ld b, [hl]                                    ; $5C85: $46
    ld d, h                                       ; $5C86: $54
    ld c, a                                       ; $5C87: $4F
    ld l, c                                       ; $5C88: $69
    ret                                           ; $5C89: $C9


    ld e, d                                       ; $5C8A: $5A
    dec b                                         ; $5C8B: $05
    nop                                           ; $5C8C: $00
    add c                                         ; $5C8D: $81
    ld e, l                                       ; $5C8E: $5D
    dec b                                         ; $5C8F: $05

jr_01B_5C90:
    dec b                                         ; $5C90: $05

jr_01B_5C91:
    ld a, l                                       ; $5C91: $7D
    ret nc                                        ; $5C92: $D0

    nop                                           ; $5C93: $00

jr_01B_5C94:
    jr nz, jr_01B_5C91                            ; $5C94: $20 $FB

    ld d, b                                       ; $5C96: $50
    ld [hl+], a                                   ; $5C97: $22
    dec b                                         ; $5C98: $05
    ld b, b                                       ; $5C99: $40
    dec b                                         ; $5C9A: $05
    ld [bc], a                                    ; $5C9B: $02
    dec b                                         ; $5C9C: $05
    ld h, h                                       ; $5C9D: $64
    ld de, $A106                                  ; $5C9E: $11 $06 $A1
    ret nc                                        ; $5CA1: $D0

    nop                                           ; $5CA2: $00
    ld de, $75A6                                  ; $5CA3: $11 $A6 $75
    dec de                                        ; $5CA6: $1B
    ld h, h                                       ; $5CA7: $64

jr_01B_5CA8:
    ld e, l                                       ; $5CA8: $5D
    dec b                                         ; $5CA9: $05
    inc bc                                        ; $5CAA: $03
    ld l, e                                       ; $5CAB: $6B
    ld c, d                                       ; $5CAC: $4A
    ld de, $610E                                  ; $5CAD: $11 $0E $61
    pop de                                        ; $5CB0: $D1
    ld [bc], a                                    ; $5CB1: $02
    db $10                                        ; $5CB2: $10
    ld b, d                                       ; $5CB3: $42
    ld c, a                                       ; $5CB4: $4F
    ld [hl+], a                                   ; $5CB5: $22
    dec b                                         ; $5CB6: $05
    ld b, b                                       ; $5CB7: $40
    dec b                                         ; $5CB8: $05
    inc b                                         ; $5CB9: $04
    ld l, e                                       ; $5CBA: $6B
    ld c, d                                       ; $5CBB: $4A
    inc d                                         ; $5CBC: $14
    ld c, $64                                     ; $5CBD: $0E $64
    pop de                                        ; $5CBF: $D1
    cpl                                           ; $5CC0: $2F
    db $10                                        ; $5CC1: $10
    db $EC                                        ; $5CC2: $EC
    ld d, d                                       ; $5CC3: $52
    ld [hl+], a                                   ; $5CC4: $22
    dec b                                         ; $5CC5: $05
    ld b, b                                       ; $5CC6: $40
    dec b                                         ; $5CC7: $05
    dec b                                         ; $5CC8: $05
    ld l, e                                       ; $5CC9: $6B
    ld c, d                                       ; $5CCA: $4A
    db $10                                        ; $5CCB: $10
    ld b, $A0                                     ; $5CCC: $06 $A0
    ret nc                                        ; $5CCE: $D0

    ld d, a                                       ; $5CCF: $57
    dec de                                        ; $5CD0: $1B
    ld [hl], d                                    ; $5CD1: $72
    ld e, l                                       ; $5CD2: $5D
    ld [hl+], a                                   ; $5CD3: $22
    dec b                                         ; $5CD4: $05
    ld b, b                                       ; $5CD5: $40
    ld l, d                                       ; $5CD6: $6A
    adc a                                         ; $5CD7: $8F
    ld h, h                                       ; $5CD8: $64
    ld a, h                                       ; $5CD9: $7C
    ld a, h                                       ; $5CDA: $7C
    ld c, l                                       ; $5CDB: $4D
    ld a, h                                       ; $5CDC: $7C
    ld h, h                                       ; $5CDD: $64
    cp b                                          ; $5CDE: $B8
    ld e, d                                       ; $5CDF: $5A
    rra                                           ; $5CE0: $1F
    inc e                                         ; $5CE1: $1C
    ld h, [hl]                                    ; $5CE2: $66
    ret nz                                        ; $5CE3: $C0

    ld e, h                                       ; $5CE4: $5C

jr_01B_5CE5:
    ld hl, $026B                                  ; $5CE5: $21 $6B $02
    dec c                                         ; $5CE8: $0D
    jr nz, jr_01B_5D3E                            ; $5CE9: $20 $53

    nop                                           ; $5CEB: $00

jr_01B_5CEC:
    add b                                         ; $5CEC: $80

jr_01B_5CED:
    nop                                           ; $5CED: $00
    ld l, e                                       ; $5CEE: $6B
    dec l                                         ; $5CEF: $2D
    inc c                                         ; $5CF0: $0C
    ldh a, [rVBK]                                 ; $5CF1: $F0 $4F
    jr nz, jr_01B_5C75                            ; $5CF3: $20 $80

    nop                                           ; $5CF5: $00
    ld l, e                                       ; $5CF6: $6B
    jr z, jr_01B_5D05                             ; $5CF7: $28 $0C

    ret nz                                        ; $5CF9: $C0

    ld d, d                                       ; $5CFA: $52
    ldh a, [$82]                                  ; $5CFB: $F0 $82
    nop                                           ; $5CFD: $00
    ld l, e                                       ; $5CFE: $6B
    dec de                                        ; $5CFF: $1B
    inc h                                         ; $5D00: $24
    ld b, b                                       ; $5D01: $40
    ld b, e                                       ; $5D02: $43
    ld [hl], b                                    ; $5D03: $70
    add l                                         ; $5D04: $85

jr_01B_5D05:
    nop                                           ; $5D05: $00
    ld [hl-], a                                   ; $5D06: $32
    dec de                                        ; $5D07: $1B
    jp z, $8D52                                   ; $5D08: $CA $52 $8D

    ld b, c                                       ; $5D0B: $41
    ld sp, $8B1B                                  ; $5D0C: $31 $1B $8B
    ld e, h                                       ; $5D0F: $5C
    ld [hl+], a                                   ; $5D10: $22
    adc $40                                       ; $5D11: $CE $40
    dec bc                                        ; $5D13: $0B
    nop                                           ; $5D14: $00
    nop                                           ; $5D15: $00
    add d                                         ; $5D16: $82
    ld b, e                                       ; $5D17: $43
    nop                                           ; $5D18: $00
    ld h, $A1                                     ; $5D19: $26 $A1
    inc b                                         ; $5D1B: $04
    dec de                                        ; $5D1C: $1B
    inc hl                                        ; $5D1D: $23
    ld e, l                                       ; $5D1E: $5D
    dec bc                                        ; $5D1F: $0B
    inc bc                                        ; $5D20: $03
    dec bc                                        ; $5D21: $0B
    inc b                                         ; $5D22: $04
    ld b, e                                       ; $5D23: $43
    nop                                           ; $5D24: $00
    ld h, $A1                                     ; $5D25: $26 $A1
    ld [$2D1B], sp                                ; $5D27: $08 $1B $2D
    ld e, l                                       ; $5D2A: $5D
    dec bc                                        ; $5D2B: $0B

jr_01B_5D2C:
    ld [bc], a                                    ; $5D2C: $02
    ld b, e                                       ; $5D2D: $43
    ld a, [bc]                                    ; $5D2E: $0A
    nop                                           ; $5D2F: $00
    dec h                                         ; $5D30: $25
    and c                                         ; $5D31: $A1
    ld b, b                                       ; $5D32: $40
    dec de                                        ; $5D33: $1B

jr_01B_5D34:
    ccf                                           ; $5D34: $3F
    ld e, l                                       ; $5D35: $5D
    ld a, [hl]                                    ; $5D36: $7E
    nop                                           ; $5D37: $00

jr_01B_5D38:
    ret nc                                        ; $5D38: $D0

    ld [bc], a                                    ; $5D39: $02
    ld [bc], a                                    ; $5D3A: $02
    ld [hl-], a                                   ; $5D3B: $32
    pop de                                        ; $5D3C: $D1
    inc c                                         ; $5D3D: $0C

jr_01B_5D3E:
    ld [de], a                                    ; $5D3E: $12
    ld b, e                                       ; $5D3F: $43
    ld a, [bc]                                    ; $5D40: $0A
    nop                                           ; $5D41: $00
    jr z, jr_01B_5CE5                             ; $5D42: $28 $A1

    ld b, b                                       ; $5D44: $40
    dec de                                        ; $5D45: $1B
    ld d, c                                       ; $5D46: $51
    ld e, l                                       ; $5D47: $5D
    ld a, [hl]                                    ; $5D48: $7E
    sbc c                                         ; $5D49: $99
    ret nc                                        ; $5D4A: $D0

    ld [bc], a                                    ; $5D4B: $02
    inc bc                                        ; $5D4C: $03
    ld d, c                                       ; $5D4D: $51
    ret nc                                        ; $5D4E: $D0

    inc bc                                        ; $5D4F: $03

jr_01B_5D50:
    add hl, bc                                    ; $5D50: $09
    ld b, e                                       ; $5D51: $43
    nop                                           ; $5D52: $00
    add hl, hl                                    ; $5D53: $29
    and c                                         ; $5D54: $A1
    inc b                                         ; $5D55: $04
    dec de                                        ; $5D56: $1B
    ld h, d                                       ; $5D57: $62
    ld e, l                                       ; $5D58: $5D
    ld a, [hl]                                    ; $5D59: $7E
    ld a, [de]                                    ; $5D5A: $1A
    ret nc                                        ; $5D5B: $D0

    ld b, $06                                     ; $5D5C: $06 $06
    ld h, b                                       ; $5D5E: $60
    pop de                                        ; $5D5F: $D1
    ld c, $10                                     ; $5D60: $0E $10
    sub h                                         ; $5D62: $94
    ld b, d                                       ; $5D63: $42
    xor a                                         ; $5D64: $AF
    ld h, $A1                                     ; $5D65: $26 $A1
    ld [$0087], sp                                ; $5D67: $08 $87 $00
    jr nz, jr_01B_5D6D                            ; $5D6A: $20 $01

    ld e, e                                       ; $5D6C: $5B

jr_01B_5D6D:
    inc e                                         ; $5D6D: $1C
    ld c, b                                       ; $5D6E: $48
    ld b, d                                       ; $5D6F: $42
    add hl, de                                    ; $5D70: $19
    ld b, d                                       ; $5D71: $42
    dec d                                         ; $5D72: $15
    jr nz, jr_01B_5D50                            ; $5D73: $20 $DB

    ld h, l                                       ; $5D75: $65
    db $10                                        ; $5D76: $10
    jr nz, jr_01B_5D34                            ; $5D77: $20 $BB

    ld h, l                                       ; $5D79: $65
    jr nz, jr_01B_5D7C                            ; $5D7A: $20 $00

jr_01B_5D7C:
    ld sp, $8B1B                                  ; $5D7C: $31 $1B $8B
    ld e, h                                       ; $5D7F: $5C
    ld [hl+], a                                   ; $5D80: $22
    adc $40                                       ; $5D81: $CE $40
    add hl, de                                    ; $5D83: $19
    ld b, d                                       ; $5D84: $42
    rlca                                          ; $5D85: $07
    nop                                           ; $5D86: $00
    ld l, e                                       ; $5D87: $6B
    ld c, d                                       ; $5D88: $4A
    add hl, bc                                    ; $5D89: $09
    nop                                           ; $5D8A: $00
    jr nz, jr_01B_5D38                            ; $5D8B: $20 $AB

    ld d, b                                       ; $5D8D: $50
    ld b, b                                       ; $5D8E: $40
    jr nz, jr_01B_5D2C                            ; $5D8F: $20 $9B

    ld a, b                                       ; $5D91: $78
    ld [hl], b                                    ; $5D92: $70
    sbc a                                         ; $5D93: $9F
    ld d, l                                       ; $5D94: $55
    ld l, b                                       ; $5D95: $68
    jr nz, jr_01B_5E07                            ; $5D96: $20 $6F

    ld l, b                                       ; $5D98: $68
    ld l, $FE                                     ; $5D99: $2E $FE
    db $FD                                        ; $5D9B: $FD
    sbc d                                         ; $5D9C: $9A
    add hl, bc                                    ; $5D9D: $09
    inc bc                                        ; $5D9E: $03
    db $10                                        ; $5D9F: $10
    add sp, $4E                                   ; $5DA0: $E8 $4E
    ld b, b                                       ; $5DA2: $40
    db $10                                        ; $5DA3: $10
    add hl, bc                                    ; $5DA4: $09
    inc bc                                        ; $5DA5: $03
    db $10                                        ; $5DA6: $10
    ret z                                         ; $5DA7: $C8

    ld c, [hl]                                    ; $5DA8: $4E
    ld b, b                                       ; $5DA9: $40
    db $10                                        ; $5DAA: $10
    add hl, bc                                    ; $5DAB: $09
    inc bc                                        ; $5DAC: $03
    db $10                                        ; $5DAD: $10
    ld [$094F], sp                                ; $5DAE: $08 $4F $09
    nop                                           ; $5DB1: $00
    jr nz, jr_01B_5E01                            ; $5DB2: $20 $4D

    ld d, b                                       ; $5DB4: $50
    ld b, b                                       ; $5DB5: $40
    inc b                                         ; $5DB6: $04
    ld sp, $C21B                                  ; $5DB7: $31 $1B $C2
    ld e, l                                       ; $5DBA: $5D
    ld [hl+], a                                   ; $5DBB: $22
    adc $40                                       ; $5DBC: $CE $40
    ld b, l                                       ; $5DBE: $45
    dec de                                        ; $5DBF: $1B
    ld c, a                                       ; $5DC0: $4F
    ld d, e                                       ; $5DC1: $53
    ld l, d                                       ; $5DC2: $6A
    adc a                                         ; $5DC3: $8F
    ld h, h                                       ; $5DC4: $64
    ld a, h                                       ; $5DC5: $7C
    ld a, h                                       ; $5DC6: $7C
    ld c, l                                       ; $5DC7: $4D

jr_01B_5DC8:
    ld a, h                                       ; $5DC8: $7C
    ld h, h                                       ; $5DC9: $64
    cp b                                          ; $5DCA: $B8
    ld e, d                                       ; $5DCB: $5A
    rra                                           ; $5DCC: $1F
    inc e                                         ; $5DCD: $1C
    ld h, [hl]                                    ; $5DCE: $66
    ret nz                                        ; $5DCF: $C0

    ld e, h                                       ; $5DD0: $5C
    ld hl, $026B                                  ; $5DD1: $21 $6B $02
    dec c                                         ; $5DD4: $0D
    jr nz, jr_01B_5E2A                            ; $5DD5: $20 $53

    nop                                           ; $5DD7: $00
    add b                                         ; $5DD8: $80
    nop                                           ; $5DD9: $00
    ld l, e                                       ; $5DDA: $6B
    dec l                                         ; $5DDB: $2D
    inc c                                         ; $5DDC: $0C
    ldh a, [rVBK]                                 ; $5DDD: $F0 $4F
    jr nz, @-$7E                                  ; $5DDF: $20 $80

    nop                                           ; $5DE1: $00
    ld l, e                                       ; $5DE2: $6B
    jr z, jr_01B_5DF1                             ; $5DE3: $28 $0C

    ret nz                                        ; $5DE5: $C0

    ld d, d                                       ; $5DE6: $52
    ldh a, [$82]                                  ; $5DE7: $F0 $82
    nop                                           ; $5DE9: $00
    ld l, e                                       ; $5DEA: $6B
    dec de                                        ; $5DEB: $1B
    inc h                                         ; $5DEC: $24
    ld b, b                                       ; $5DED: $40
    ld b, e                                       ; $5DEE: $43
    ld [hl], b                                    ; $5DEF: $70
    add l                                         ; $5DF0: $85

jr_01B_5DF1:
    nop                                           ; $5DF1: $00
    dec b                                         ; $5DF2: $05
    inc b                                         ; $5DF3: $04
    ld l, e                                       ; $5DF4: $6B
    ld c, d                                       ; $5DF5: $4A
    inc d                                         ; $5DF6: $14
    ld c, $64                                     ; $5DF7: $0E $64
    pop de                                        ; $5DF9: $D1
    cpl                                           ; $5DFA: $2F
    db $10                                        ; $5DFB: $10

jr_01B_5DFC:
    db $EC                                        ; $5DFC: $EC
    ld d, d                                       ; $5DFD: $52
    ld [hl+], a                                   ; $5DFE: $22
    dec b                                         ; $5DFF: $05
    ld b, b                                       ; $5E00: $40

jr_01B_5E01:
    dec bc                                        ; $5E01: $0B
    nop                                           ; $5E02: $00
    dec bc                                        ; $5E03: $0B
    inc b                                         ; $5E04: $04
    add hl, bc                                    ; $5E05: $09
    nop                                           ; $5E06: $00

jr_01B_5E07:
    dec de                                        ; $5E07: $1B
    ld a, [de]                                    ; $5E08: $1A
    ld e, [hl]                                    ; $5E09: $5E
    add hl, bc                                    ; $5E0A: $09

jr_01B_5E0B:
    inc b                                         ; $5E0B: $04
    dec de                                        ; $5E0C: $1B
    jr z, jr_01B_5E6D                             ; $5E0D: $28 $5E

    nop                                           ; $5E0F: $00
    add d                                         ; $5E10: $82
    ld sp, $8B1B                                  ; $5E11: $31 $1B $8B
    ld e, h                                       ; $5E14: $5C

jr_01B_5E15:
    ld [hl+], a                                   ; $5E15: $22
    adc $40                                       ; $5E16: $CE $40
    sub h                                         ; $5E18: $94
    ld b, d                                       ; $5E19: $42
    dec d                                         ; $5E1A: $15
    jr nz, jr_01B_5DC8                            ; $5E1B: $20 $AB

    ld d, b                                       ; $5E1D: $50
    jr c, jr_01B_5E40                             ; $5E1E: $38 $20

    ld c, l                                       ; $5E20: $4D
    ld d, b                                       ; $5E21: $50
    inc b                                         ; $5E22: $04
    nop                                           ; $5E23: $00
    ld b, l                                       ; $5E24: $45
    dec de                                        ; $5E25: $1B
    ld [hl], a                                    ; $5E26: $77
    ld d, e                                       ; $5E27: $53
    dec d                                         ; $5E28: $15
    db $10                                        ; $5E29: $10

jr_01B_5E2A:
    db $EC                                        ; $5E2A: $EC
    ld d, d                                       ; $5E2B: $52
    jr nz, @+$12                                  ; $5E2C: $20 $10

    add d                                         ; $5E2E: $82
    ld d, d                                       ; $5E2F: $52
    db $10                                        ; $5E30: $10
    db $10                                        ; $5E31: $10
    ld [hl], d                                    ; $5E32: $72
    ld d, d                                       ; $5E33: $52
    ld [$B210], sp                                ; $5E34: $08 $10 $B2
    ld d, d                                       ; $5E37: $52
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    ld b, d                                       ; $5E3A: $42
    ld b, e                                       ; $5E3B: $43
    ld bc, $A3CB                                  ; $5E3C: $01 $CB $A3
    dec de                                        ; $5E3F: $1B

jr_01B_5E40:
    ld h, d                                       ; $5E40: $62
    ld e, [hl]                                    ; $5E41: $5E
    rlca                                          ; $5E42: $07
    nop                                           ; $5E43: $00
    ld l, e                                       ; $5E44: $6B

jr_01B_5E45:
    ld c, d                                       ; $5E45: $4A
    add hl, bc                                    ; $5E46: $09
    nop                                           ; $5E47: $00
    jr nz, @-$31                                  ; $5E48: $20 $CD

    ld c, a                                       ; $5E4A: $4F
    ld b, b                                       ; $5E4B: $40
    ld [$0009], sp                                ; $5E4C: $08 $09 $00
    jr nz, jr_01B_5DFC                            ; $5E4F: $20 $AB

    ld d, b                                       ; $5E51: $50
    ld e, e                                       ; $5E52: $5B
    dec de                                        ; $5E53: $1B
    db $10                                        ; $5E54: $10
    ld e, h                                       ; $5E55: $5C
    ld h, d                                       ; $5E56: $62
    ld bc, $0007                                  ; $5E57: $01 $07 $00
    add c                                         ; $5E5A: $81
    ld e, l                                       ; $5E5B: $5D
    add hl, bc                                    ; $5E5C: $09
    nop                                           ; $5E5D: $00
    jr nz, jr_01B_5E0B                            ; $5E5E: $20 $AB

    ld d, b                                       ; $5E60: $50
    ld b, d                                       ; $5E61: $42
    rlca                                          ; $5E62: $07
    nop                                           ; $5E63: $00
    ld l, e                                       ; $5E64: $6B
    ld c, d                                       ; $5E65: $4A
    add hl, bc                                    ; $5E66: $09
    nop                                           ; $5E67: $00
    jr nz, jr_01B_5E15                            ; $5E68: $20 $AB

    ld d, b                                       ; $5E6A: $50
    ld e, e                                       ; $5E6B: $5B
    dec de                                        ; $5E6C: $1B

jr_01B_5E6D:
    inc [hl]                                      ; $5E6D: $34
    ld e, h                                       ; $5E6E: $5C
    ld h, d                                       ; $5E6F: $62
    ld bc, $007E                                  ; $5E70: $01 $7E $00
    ret nc                                        ; $5E73: $D0

    ld [bc], a                                    ; $5E74: $02
    ld [bc], a                                    ; $5E75: $02
    ld [hl-], a                                   ; $5E76: $32
    pop de                                        ; $5E77: $D1
    inc c                                         ; $5E78: $0C
    ld [de], a                                    ; $5E79: $12
    add e                                         ; $5E7A: $83
    ld [hl], h                                    ; $5E7B: $74
    nop                                           ; $5E7C: $00
    rst $38                                       ; $5E7D: $FF
    nop                                           ; $5E7E: $00
    dec bc                                        ; $5E7F: $0B
    ld [bc], a                                    ; $5E80: $02
    dec bc                                        ; $5E81: $0B
    dec b                                         ; $5E82: $05
    ld e, e                                       ; $5E83: $5B
    dec de                                        ; $5E84: $1B
    ld l, e                                       ; $5E85: $6B
    ld e, h                                       ; $5E86: $5C
    ld h, d                                       ; $5E87: $62
    ld [bc], a                                    ; $5E88: $02
    add e                                         ; $5E89: $83
    ld [hl], h                                    ; $5E8A: $74
    nop                                           ; $5E8B: $00
    ld bc, $AF00                                  ; $5E8C: $01 $00 $AF
    dec h                                         ; $5E8F: $25
    and c                                         ; $5E90: $A1
    ld b, b                                       ; $5E91: $40
    rlca                                          ; $5E92: $07
    nop                                           ; $5E93: $00
    add c                                         ; $5E94: $81
    ld e, l                                       ; $5E95: $5D
    add hl, bc                                    ; $5E96: $09
    nop                                           ; $5E97: $00
    jr nz, jr_01B_5E45                            ; $5E98: $20 $AB

    ld d, b                                       ; $5E9A: $50
    ld b, d                                       ; $5E9B: $42
    ld [bc], a                                    ; $5E9C: $02
    nop                                           ; $5E9D: $00
    rla                                           ; $5E9E: $17
    ld [$4516], sp                                ; $5E9F: $08 $16 $45
    dec de                                        ; $5EA2: $1B
    add e                                         ; $5EA3: $83
    ld e, h                                       ; $5EA4: $5C
    and h                                         ; $5EA5: $A4
    ld sp, $10A3                                  ; $5EA6: $31 $A3 $10
    nop                                           ; $5EA9: $00
    inc de                                        ; $5EAA: $13
    ld b, e                                       ; $5EAB: $43
    ret nc                                        ; $5EAC: $D0

    and h                                         ; $5EAD: $A4
    ld sp, $20A3                                  ; $5EAE: $31 $A3 $20
    ld [bc], a                                    ; $5EB1: $02
    add hl, bc                                    ; $5EB2: $09
    ld e, l                                       ; $5EB3: $5D
    ret nc                                        ; $5EB4: $D0

    and d                                         ; $5EB5: $A2
    ld sp, $40A3                                  ; $5EB6: $31 $A3 $40
    ld [hl+], a                                   ; $5EB9: $22
    ld e, e                                       ; $5EBA: $5B
    ld b, b                                       ; $5EBB: $40
    rst $38                                       ; $5EBC: $FF
    ld a, a                                       ; $5EBD: $7F
    ret nc                                        ; $5EBE: $D0

    ld b, h                                       ; $5EBF: $44
    pop de                                        ; $5EC0: $D1
    ld e, [hl]                                    ; $5EC1: $5E
    sbc a                                         ; $5EC2: $9F
    ld d, d                                       ; $5EC3: $52
    ld c, a                                       ; $5EC4: $4F
    ld c, a                                       ; $5EC5: $4F
    ld c, a                                       ; $5EC6: $4F
    ld b, c                                       ; $5EC7: $41
    ld d, d                                       ; $5EC8: $52
    ld hl, $FDFE                                  ; $5EC9: $21 $FE $FD
    sbc d                                         ; $5ECC: $9A
    ld b, l                                       ; $5ECD: $45
    dec de                                        ; $5ECE: $1B
    sbc b                                         ; $5ECF: $98
    ld d, e                                       ; $5ED0: $53
    ld b, d                                       ; $5ED1: $42
    sbc e                                         ; $5ED2: $9B
    ld a, b                                       ; $5ED3: $78
    ld [hl], b                                    ; $5ED4: $70
    sbc a                                         ; $5ED5: $9F
    ld d, h                                       ; $5ED6: $54
    ld l, b                                       ; $5ED7: $68
    ld l, c                                       ; $5ED8: $69
    ld [hl], e                                    ; $5ED9: $73
    jr nz, jr_01B_5F49                            ; $5EDA: $20 $6D

    ld [hl], l                                    ; $5EDC: $75
    ld [hl], e                                    ; $5EDD: $73
    ld [hl], h                                    ; $5EDE: $74
    jr nz, jr_01B_5F49                            ; $5EDF: $20 $68

    ld h, c                                       ; $5EE1: $61
    halt                                          ; $5EE2: $76
    ld h, l                                       ; $5EE3: $65
    rst $38                                       ; $5EE4: $FF
    ld h, e                                       ; $5EE5: $63
    ld l, a                                       ; $5EE6: $6F
    ld [hl], e                                    ; $5EE7: $73
    ld [hl], h                                    ; $5EE8: $74
    jr nz, jr_01B_5F4C                            ; $5EE9: $20 $61

    ld [hl], h                                    ; $5EEB: $74
    jr nz, jr_01B_5F5A                            ; $5EEC: $20 $6C

    ld h, l                                       ; $5EEE: $65
    ld h, c                                       ; $5EEF: $61
    ld [hl], e                                    ; $5EF0: $73
    ld [hl], h                                    ; $5EF1: $74
    cp $73                                        ; $5EF2: $FE $73
    ld h, l                                       ; $5EF4: $65
    halt                                          ; $5EF5: $76
    ld h, l                                       ; $5EF6: $65
    ld l, [hl]                                    ; $5EF7: $6E
    ld [hl], h                                    ; $5EF8: $74
    ld a, c                                       ; $5EF9: $79
    dec l                                         ; $5EFA: $2D
    ld h, [hl]                                    ; $5EFB: $66
    ld l, c                                       ; $5EFC: $69
    halt                                          ; $5EFD: $76
    ld h, l                                       ; $5EFE: $65
    rst $38                                       ; $5EFF: $FF
    ld h, h                                       ; $5F00: $64
    ld l, a                                       ; $5F01: $6F
    ld l, h                                       ; $5F02: $6C
    ld l, h                                       ; $5F03: $6C
    ld h, c                                       ; $5F04: $61
    ld [hl], d                                    ; $5F05: $72
    ld [hl], e                                    ; $5F06: $73
    jr nz, jr_01B_5F78                            ; $5F07: $20 $6F

    ld [hl], d                                    ; $5F09: $72
    jr nz, jr_01B_5F7F                            ; $5F0A: $20 $73

    ld l, a                                       ; $5F0C: $6F
    ld l, $FE                                     ; $5F0D: $2E $FE
    db $FD                                        ; $5F0F: $FD
    sbc d                                         ; $5F10: $9A
    ld b, d                                       ; $5F11: $42
    sbc e                                         ; $5F12: $9B
    ld a, b                                       ; $5F13: $78
    ld [hl], b                                    ; $5F14: $70
    sbc a                                         ; $5F15: $9F
    ld b, e                                       ; $5F16: $43
    ld l, a                                       ; $5F17: $6F
    ld l, l                                       ; $5F18: $6D
    ld [hl], b                                    ; $5F19: $70
    ld l, a                                       ; $5F1A: $6F
    ld l, [hl]                                    ; $5F1B: $6E
    ld h, l                                       ; $5F1C: $65
    ld l, [hl]                                    ; $5F1D: $6E
    ld [hl], h                                    ; $5F1E: $74
    ld [hl], e                                    ; $5F1F: $73
    jr nz, jr_01B_5F91                            ; $5F20: $20 $6F

    ld h, [hl]                                    ; $5F22: $66
    rst $38                                       ; $5F23: $FF
    ld h, c                                       ; $5F24: $61
    jr nz, jr_01B_5F8B                            ; $5F25: $20 $64

    ld h, c                                       ; $5F27: $61
    ld [hl], d                                    ; $5F28: $72
    ld l, e                                       ; $5F29: $6B
    inc l                                         ; $5F2A: $2C
    cp $68                                        ; $5F2B: $FE $68
    ld h, l                                       ; $5F2D: $65
    ld h, c                                       ; $5F2E: $61
    ld [hl], d                                    ; $5F2F: $72
    ld [hl], h                                    ; $5F30: $74
    ld l, h                                       ; $5F31: $6C
    ld h, l                                       ; $5F32: $65
    ld [hl], e                                    ; $5F33: $73
    ld [hl], e                                    ; $5F34: $73
    rst $38                                       ; $5F35: $FF
    ld [hl], b                                    ; $5F36: $70
    ld l, h                                       ; $5F37: $6C
    ld h, c                                       ; $5F38: $61
    ld h, e                                       ; $5F39: $63
    ld h, l                                       ; $5F3A: $65
    ld l, $FE                                     ; $5F3B: $2E $FE
    db $FD                                        ; $5F3D: $FD
    sbc d                                         ; $5F3E: $9A
    ld b, d                                       ; $5F3F: $42
    sbc e                                         ; $5F40: $9B
    ld a, b                                       ; $5F41: $78
    ld [hl], b                                    ; $5F42: $70
    sbc a                                         ; $5F43: $9F
    ld c, h                                       ; $5F44: $4C
    ld l, a                                       ; $5F45: $6F
    ld l, a                                       ; $5F46: $6F
    ld l, e                                       ; $5F47: $6B
    ld [hl], e                                    ; $5F48: $73

jr_01B_5F49:
    jr nz, @+$6E                                  ; $5F49: $20 $6C

    ld l, c                                       ; $5F4B: $69

jr_01B_5F4C:
    ld l, e                                       ; $5F4C: $6B
    ld h, l                                       ; $5F4D: $65
    jr nz, jr_01B_5FC4                            ; $5F4E: $20 $74

    ld l, b                                       ; $5F50: $68
    ld h, l                                       ; $5F51: $65
    ld a, c                                       ; $5F52: $79
    rst $38                                       ; $5F53: $FF
    ld h, h                                       ; $5F54: $64
    ld l, c                                       ; $5F55: $69
    ld h, h                                       ; $5F56: $64
    ld l, [hl]                                    ; $5F57: $6E
    daa                                           ; $5F58: $27
    ld [hl], h                                    ; $5F59: $74

jr_01B_5F5A:
    jr nz, jr_01B_5FC4                            ; $5F5A: $20 $68

    ld h, c                                       ; $5F5C: $61
    halt                                          ; $5F5D: $76
    ld h, l                                       ; $5F5E: $65
    cp $74                                        ; $5F5F: $FE $74
    ld l, c                                       ; $5F61: $69
    ld l, l                                       ; $5F62: $6D
    ld h, l                                       ; $5F63: $65
    jr nz, jr_01B_5FDA                            ; $5F64: $20 $74

    ld l, a                                       ; $5F66: $6F
    jr nz, jr_01B_5FCF                            ; $5F67: $20 $66

    ld l, c                                       ; $5F69: $69
    ld l, [hl]                                    ; $5F6A: $6E
    ld l, c                                       ; $5F6B: $69
    ld [hl], e                                    ; $5F6C: $73
    ld l, b                                       ; $5F6D: $68
    ld l, $FE                                     ; $5F6E: $2E $FE
    ld d, e                                       ; $5F70: $53
    ld l, a                                       ; $5F71: $6F
    ld l, l                                       ; $5F72: $6D
    ld h, l                                       ; $5F73: $65
    ld [hl], h                                    ; $5F74: $74
    ld l, b                                       ; $5F75: $68
    ld l, c                                       ; $5F76: $69
    ld l, [hl]                                    ; $5F77: $6E

jr_01B_5F78:
    ld h, a                                       ; $5F78: $67
    jr nz, @+$6F                                  ; $5F79: $20 $6D

    ld [hl], l                                    ; $5F7B: $75
    ld [hl], e                                    ; $5F7C: $73
    ld [hl], h                                    ; $5F7D: $74
    rst $38                                       ; $5F7E: $FF

jr_01B_5F7F:
    ld l, b                                       ; $5F7F: $68
    ld h, c                                       ; $5F80: $61
    halt                                          ; $5F81: $76
    ld h, l                                       ; $5F82: $65
    jr nz, @+$6A                                  ; $5F83: $20 $68

    ld h, c                                       ; $5F85: $61
    ld [hl], b                                    ; $5F86: $70
    ld [hl], b                                    ; $5F87: $70
    ld h, l                                       ; $5F88: $65
    ld l, [hl]                                    ; $5F89: $6E
    ld h, l                                       ; $5F8A: $65

jr_01B_5F8B:
    ld h, h                                       ; $5F8B: $64
    ld l, $FE                                     ; $5F8C: $2E $FE
    db $FD                                        ; $5F8E: $FD
    sbc d                                         ; $5F8F: $9A
    ld b, d                                       ; $5F90: $42

jr_01B_5F91:
    sbc e                                         ; $5F91: $9B
    ld a, b                                       ; $5F92: $78
    ld [hl], b                                    ; $5F93: $70
    sbc a                                         ; $5F94: $9F
    ld b, c                                       ; $5F95: $41
    jr nz, jr_01B_5FFF                            ; $5F96: $20 $67

    ld l, c                                       ; $5F98: $69
    ld h, c                                       ; $5F99: $61
    ld l, [hl]                                    ; $5F9A: $6E
    ld [hl], h                                    ; $5F9B: $74
    inc l                                         ; $5F9C: $2C
    rst $38                                       ; $5F9D: $FF
    ld [hl], d                                    ; $5F9E: $72
    ld [hl], l                                    ; $5F9F: $75
    ld [hl], e                                    ; $5FA0: $73
    ld [hl], h                                    ; $5FA1: $74
    ld h, l                                       ; $5FA2: $65
    ld h, h                                       ; $5FA3: $64
    jr nz, jr_01B_6019                            ; $5FA4: $20 $73

    ld h, e                                       ; $5FA6: $63
    ld [hl], d                                    ; $5FA7: $72
    ld h, l                                       ; $5FA8: $65
    ld [hl], a                                    ; $5FA9: $77
    ld l, $FE                                     ; $5FAA: $2E $FE
    db $FD                                        ; $5FAC: $FD
    sbc d                                         ; $5FAD: $9A
    ld b, d                                       ; $5FAE: $42
    sbc e                                         ; $5FAF: $9B
    ld a, b                                       ; $5FB0: $78
    ld [hl], b                                    ; $5FB1: $70
    sbc a                                         ; $5FB2: $9F
    ld d, a                                       ; $5FB3: $57
    ld l, a                                       ; $5FB4: $6F
    ld [hl], a                                    ; $5FB5: $77
    ld hl, $54FE                                  ; $5FB6: $21 $FE $54
    ld l, b                                       ; $5FB9: $68
    ld h, c                                       ; $5FBA: $61
    ld [hl], h                                    ; $5FBB: $74
    daa                                           ; $5FBC: $27
    ld [hl], e                                    ; $5FBD: $73
    jr nz, jr_01B_6034                            ; $5FBE: $20 $74

    ld l, b                                       ; $5FC0: $68
    ld h, l                                       ; $5FC1: $65
    rst $38                                       ; $5FC2: $FF
    ld [hl], e                                    ; $5FC3: $73

jr_01B_5FC4:
    ld h, l                                       ; $5FC4: $65
    ld h, e                                       ; $5FC5: $63
    ld l, a                                       ; $5FC6: $6F
    ld l, [hl]                                    ; $5FC7: $6E
    ld h, h                                       ; $5FC8: $64
    jr nz, jr_01B_602D                            ; $5FC9: $20 $62

    ld l, c                                       ; $5FCB: $69
    ld h, a                                       ; $5FCC: $67
    ld h, a                                       ; $5FCD: $67
    ld h, l                                       ; $5FCE: $65

jr_01B_5FCF:
    ld [hl], e                                    ; $5FCF: $73
    ld [hl], h                                    ; $5FD0: $74
    cp $73                                        ; $5FD1: $FE $73
    ld h, e                                       ; $5FD3: $63
    ld [hl], d                                    ; $5FD4: $72
    ld h, l                                       ; $5FD5: $65
    ld [hl], a                                    ; $5FD6: $77
    ld h, h                                       ; $5FD7: $64
    ld [hl], d                                    ; $5FD8: $72
    ld l, c                                       ; $5FD9: $69

jr_01B_5FDA:
    halt                                          ; $5FDA: $76
    ld h, l                                       ; $5FDB: $65
    ld [hl], d                                    ; $5FDC: $72
    rst $38                                       ; $5FDD: $FF
    ld c, c                                       ; $5FDE: $49
    daa                                           ; $5FDF: $27
    halt                                          ; $5FE0: $76
    ld h, l                                       ; $5FE1: $65
    jr nz, jr_01B_6049                            ; $5FE2: $20 $65

    halt                                          ; $5FE4: $76
    ld h, l                                       ; $5FE5: $65
    ld [hl], d                                    ; $5FE6: $72
    jr nz, jr_01B_605C                            ; $5FE7: $20 $73

    ld h, l                                       ; $5FE9: $65
    ld h, l                                       ; $5FEA: $65
    ld l, [hl]                                    ; $5FEB: $6E
    ld hl, $FDFE                                  ; $5FEC: $21 $FE $FD
    sbc d                                         ; $5FEF: $9A
    ld b, d                                       ; $5FF0: $42
    sub e                                         ; $5FF1: $93
    ld h, l                                       ; $5FF2: $65
    ld d, l                                       ; $5FF3: $55
    ld d, h                                       ; $5FF4: $54
    ld c, a                                       ; $5FF5: $4F
    ld h, h                                       ; $5FF6: $64
    sub $5A                                       ; $5FF7: $D6 $5A
    ld l, c                                       ; $5FF9: $69
    db $DB                                        ; $5FFA: $DB
    ld e, d                                       ; $5FFB: $5A
    ld h, [hl]                                    ; $5FFC: $66
    ret nz                                        ; $5FFD: $C0

    ld e, h                                       ; $5FFE: $5C

jr_01B_5FFF:
    ld hl, $0005                                  ; $5FFF: $21 $05 $00
    add c                                         ; $6002: $81
    ld e, l                                       ; $6003: $5D
    dec b                                         ; $6004: $05
    dec b                                         ; $6005: $05

jr_01B_6006:
    ld b, c                                       ; $6006: $41
    ret nc                                        ; $6007: $D0

    nop                                           ; $6008: $00
    jr nz, jr_01B_6006                            ; $6009: $20 $FB

    ld d, b                                       ; $600B: $50
    ld [hl+], a                                   ; $600C: $22
    dec b                                         ; $600D: $05
    ld b, b                                       ; $600E: $40
    rra                                           ; $600F: $1F
    inc e                                         ; $6010: $1C
    dec bc                                        ; $6011: $0B
    nop                                           ; $6012: $00
    ld [hl-], a                                   ; $6013: $32
    dec de                                        ; $6014: $1B

jr_01B_6015:
    jp z, $8D52                                   ; $6015: $CA $52 $8D

    ld b, c                                       ; $6018: $41

jr_01B_6019:
    ld sp, $F11B                                  ; $6019: $31 $1B $F1
    ld e, a                                       ; $601C: $5F
    ld [hl+], a                                   ; $601D: $22
    adc $40                                       ; $601E: $CE $40
    nop                                           ; $6020: $00
    add d                                         ; $6021: $82
    sub h                                         ; $6022: $94
    ld b, d                                       ; $6023: $42
    ld [bc], a                                    ; $6024: $02
    nop                                           ; $6025: $00
    daa                                           ; $6026: $27
    ld d, $09                                     ; $6027: $16 $09
    ld b, l                                       ; $6029: $45
    dec de                                        ; $602A: $1B
    db $F4                                        ; $602B: $F4
    ld d, l                                       ; $602C: $55

jr_01B_602D:
    ld [bc], a                                    ; $602D: $02
    rlca                                          ; $602E: $07
    dec bc                                        ; $602F: $0B
    nop                                           ; $6030: $00
    daa                                           ; $6031: $27
    ld b, l                                       ; $6032: $45
    dec de                                        ; $6033: $1B

jr_01B_6034:
    xor [hl]                                      ; $6034: $AE
    ld h, b                                       ; $6035: $60
    and h                                         ; $6036: $A4
    daa                                           ; $6037: $27
    and c                                         ; $6038: $A1
    ld bc, $1C00                                  ; $6039: $01 $00 $1C
    jp hl                                         ; $603C: $E9


    ret nc                                        ; $603D: $D0

    sub e                                         ; $603E: $93
    ld h, l                                       ; $603F: $65
    ld h, h                                       ; $6040: $64
    ld d, h                                       ; $6041: $54
    ld c, a                                       ; $6042: $4F
    ld l, c                                       ; $6043: $69
    dec b                                         ; $6044: $05
    ld e, e                                       ; $6045: $5B
    ld h, h                                       ; $6046: $64
    db $FC                                        ; $6047: $FC
    ld e, d                                       ; $6048: $5A

jr_01B_6049:
    ld h, [hl]                                    ; $6049: $66
    ret nz                                        ; $604A: $C0

    ld e, h                                       ; $604B: $5C
    ld hl, $1C1F                                  ; $604C: $21 $1F $1C
    dec b                                         ; $604F: $05
    nop                                           ; $6050: $00
    add c                                         ; $6051: $81
    ld e, l                                       ; $6052: $5D
    dec b                                         ; $6053: $05
    dec b                                         ; $6054: $05

jr_01B_6055:
    ld l, c                                       ; $6055: $69
    ret nc                                        ; $6056: $D0

    nop                                           ; $6057: $00
    jr nz, jr_01B_6055                            ; $6058: $20 $FB

    ld d, b                                       ; $605A: $50
    ld [hl+], a                                   ; $605B: $22

jr_01B_605C:
    dec b                                         ; $605C: $05
    ld b, b                                       ; $605D: $40
    dec bc                                        ; $605E: $0B
    nop                                           ; $605F: $00
    ld [hl-], a                                   ; $6060: $32
    dec de                                        ; $6061: $1B
    jp z, $8D52                                   ; $6062: $CA $52 $8D

    ld b, c                                       ; $6065: $41
    ld sp, $3E1B                                  ; $6066: $31 $1B $3E
    ld h, b                                       ; $6069: $60
    ld [hl+], a                                   ; $606A: $22
    adc $40                                       ; $606B: $CE $40
    nop                                           ; $606D: $00
    add d                                         ; $606E: $82
    ld b, e                                       ; $606F: $43
    ld a, [bc]                                    ; $6070: $0A
    nop                                           ; $6071: $00
    jr z, jr_01B_6015                             ; $6072: $28 $A1

    ld bc, $811B                                  ; $6074: $01 $1B $81
    ld h, b                                       ; $6077: $60
    ld a, [hl]                                    ; $6078: $7E
    inc e                                         ; $6079: $1C
    ret nc                                        ; $607A: $D0

    inc bc                                        ; $607B: $03
    inc bc                                        ; $607C: $03
    ld l, h                                       ; $607D: $6C
    ret nc                                        ; $607E: $D0

    dec b                                         ; $607F: $05
    ld [$4294], sp                                ; $6080: $08 $94 $42
    ld [bc], a                                    ; $6083: $02
    dec bc                                        ; $6084: $0B
    rlca                                          ; $6085: $07
    daa                                           ; $6086: $27
    nop                                           ; $6087: $00
    ld b, l                                       ; $6088: $45
    dec de                                        ; $6089: $1B
    ld a, $60                                     ; $608A: $3E $60
    ld [bc], a                                    ; $608C: $02
    add hl, bc                                    ; $608D: $09
    add hl, hl                                    ; $608E: $29
    nop                                           ; $608F: $00
    dec e                                         ; $6090: $1D
    ld b, l                                       ; $6091: $45
    dec de                                        ; $6092: $1B
    ei                                            ; $6093: $FB
    ld h, d                                       ; $6094: $62
    ld [bc], a                                    ; $6095: $02
    rla                                           ; $6096: $17
    nop                                           ; $6097: $00
    ld a, [bc]                                    ; $6098: $0A
    rrca                                          ; $6099: $0F
    ld b, l                                       ; $609A: $45
    dec de                                        ; $609B: $1B
    and d                                         ; $609C: $A2
    ld h, h                                       ; $609D: $64
    and h                                         ; $609E: $A4
    ld sp, $80A3                                  ; $609F: $31 $A3 $80
    nop                                           ; $60A2: $00
    inc d                                         ; $60A3: $14
    add c                                         ; $60A4: $81
    jp nc, $32A4                                  ; $60A5: $D2 $A4 $32

    and e                                         ; $60A8: $A3
    ld bc, $1400                                  ; $60A9: $01 $00 $14
    inc d                                         ; $60AC: $14
    jp nc, Jump_01B_6593                          ; $60AD: $D2 $93 $65

    ld [hl], e                                    ; $60B0: $73
    ld d, h                                       ; $60B1: $54
    ld c, a                                       ; $60B2: $4F
    ld h, h                                       ; $60B3: $64
    ld a, [bc]                                    ; $60B4: $0A
    ld e, e                                       ; $60B5: $5B
    ld l, d                                       ; $60B6: $6A
    adc a                                         ; $60B7: $8F
    ld h, h                                       ; $60B8: $64
    ld a, h                                       ; $60B9: $7C
    ld a, h                                       ; $60BA: $7C
    ld c, l                                       ; $60BB: $4D
    ld a, h                                       ; $60BC: $7C
    ld l, c                                       ; $60BD: $69
    rla                                           ; $60BE: $17
    ld e, e                                       ; $60BF: $5B
    ld h, [hl]                                    ; $60C0: $66
    ret nz                                        ; $60C1: $C0

    ld e, h                                       ; $60C2: $5C
    ld hl, $0005                                  ; $60C3: $21 $05 $00
    add c                                         ; $60C6: $81

jr_01B_60C7:
    ld e, l                                       ; $60C7: $5D
    dec b                                         ; $60C8: $05
    dec b                                         ; $60C9: $05

jr_01B_60CA:
    ld a, l                                       ; $60CA: $7D
    ret nc                                        ; $60CB: $D0

    nop                                           ; $60CC: $00
    jr nz, jr_01B_60CA                            ; $60CD: $20 $FB

    ld d, b                                       ; $60CF: $50
    ld [hl+], a                                   ; $60D0: $22
    dec b                                         ; $60D1: $05
    ld b, b                                       ; $60D2: $40
    rra                                           ; $60D3: $1F
    inc e                                         ; $60D4: $1C
    dec bc                                        ; $60D5: $0B
    nop                                           ; $60D6: $00
    ld [hl-], a                                   ; $60D7: $32
    dec de                                        ; $60D8: $1B
    jp z, $8D52                                   ; $60D9: $CA $52 $8D

    ld b, c                                       ; $60DC: $41
    ld sp, $B61B                                  ; $60DD: $31 $1B $B6
    ld h, b                                       ; $60E0: $60
    ld [hl+], a                                   ; $60E1: $22
    adc $40                                       ; $60E2: $CE $40
    nop                                           ; $60E4: $00
    add d                                         ; $60E5: $82

jr_01B_60E6:
    ld b, e                                       ; $60E6: $43
    nop                                           ; $60E7: $00
    add hl, hl                                    ; $60E8: $29
    and c                                         ; $60E9: $A1
    ld [$F71B], sp                                ; $60EA: $08 $1B $F7
    ld h, b                                       ; $60ED: $60
    ld a, [hl]                                    ; $60EE: $7E
    nop                                           ; $60EF: $00
    ret nc                                        ; $60F0: $D0

    ld [bc], a                                    ; $60F1: $02
    ld b, $8C                                     ; $60F2: $06 $8C
    ret nc                                        ; $60F4: $D0

    dec b                                         ; $60F5: $05
    inc d                                         ; $60F6: $14
    sub h                                         ; $60F7: $94
    ld b, d                                       ; $60F8: $42
    ld [bc], a                                    ; $60F9: $02
    add hl, hl                                    ; $60FA: $29
    add hl, bc                                    ; $60FB: $09
    dec e                                         ; $60FC: $1D
    nop                                           ; $60FD: $00
    ld b, l                                       ; $60FE: $45
    dec de                                        ; $60FF: $1B
    xor [hl]                                      ; $6100: $AE
    ld h, b                                       ; $6101: $60
    ld b, e                                       ; $6102: $43
    nop                                           ; $6103: $00
    ld h, $A1                                     ; $6104: $26 $A1
    ld [bc], a                                    ; $6106: $02
    dec de                                        ; $6107: $1B
    ld c, $61                                     ; $6108: $0E $61
    ld b, l                                       ; $610A: $45
    dec de                                        ; $610B: $1B
    inc [hl]                                      ; $610C: $34
    ld h, h                                       ; $610D: $64

jr_01B_610E:
    ld b, d                                       ; $610E: $42
    and h                                         ; $610F: $A4
    daa                                           ; $6110: $27
    and c                                         ; $6111: $A1
    ld [bc], a                                    ; $6112: $02
    nop                                           ; $6113: $00
    inc e                                         ; $6114: $1C
    add a                                         ; $6115: $87
    db $D3                                        ; $6116: $D3
    and c                                         ; $6117: $A1
    add hl, hl                                    ; $6118: $29
    and c                                         ; $6119: $A1
    ld [$0422], sp                                ; $611A: $08 $22 $04
    ld b, b                                       ; $611D: $40
    ld a, [$CDFB]                                 ; $611E: $FA $FB $CD
    pop de                                        ; $6121: $D1
    ld b, d                                       ; $6122: $42
    and c                                         ; $6123: $A1
    jr z, jr_01B_60C7                             ; $6124: $28 $A1

    ld [bc], a                                    ; $6126: $02
    dec de                                        ; $6127: $1B
    jr c, jr_01B_618B                             ; $6128: $38 $61

    ld a, [$D5FB]                                 ; $612A: $FA $FB $D5
    call nc, $007E                                ; $612D: $D4 $7E $00
    ret nc                                        ; $6130: $D0

    ld [bc], a                                    ; $6131: $02
    inc bc                                        ; $6132: $03
    or e                                          ; $6133: $B3
    jp nc, $290D                                  ; $6134: $D2 $0D $29

    ld b, d                                       ; $6137: $42
    ld a, [hl]                                    ; $6138: $7E
    ld b, e                                       ; $6139: $43
    pop de                                        ; $613A: $D1
    ld [bc], a                                    ; $613B: $02
    inc bc                                        ; $613C: $03
    or e                                          ; $613D: $B3
    jp nc, $290D                                  ; $613E: $D2 $0D $29

    ld b, d                                       ; $6141: $42
    and c                                         ; $6142: $A1
    jr z, jr_01B_60E6                             ; $6143: $28 $A1

    inc b                                         ; $6145: $04
    dec de                                        ; $6146: $1B
    ld h, b                                       ; $6147: $60
    ld h, c                                       ; $6148: $61
    ld a, [$58FB]                                 ; $6149: $FA $FB $58
    pop de                                        ; $614C: $D1
    ld a, [hl]                                    ; $614D: $7E
    sub $D0                                       ; $614E: $D6 $D0
    ld [bc], a                                    ; $6150: $02
    rlca                                          ; $6151: $07
    ld [hl], d                                    ; $6152: $72
    db $D3                                        ; $6153: $D3
    ld de, $7E20                                  ; $6154: $11 $20 $7E
    inc b                                         ; $6157: $04
    ret nc                                        ; $6158: $D0

    ld bc, $9F01                                  ; $6159: $01 $01 $9F
    call nc, $2117                                ; $615C: $D4 $17 $21
    ld b, d                                       ; $615F: $42
    ld a, [hl]                                    ; $6160: $7E
    or l                                          ; $6161: $B5
    ret nc                                        ; $6162: $D0

    ld [bc], a                                    ; $6163: $02
    rlca                                          ; $6164: $07
    ld [hl], d                                    ; $6165: $72
    db $D3                                        ; $6166: $D3
    ld de, $4220                                  ; $6167: $11 $20 $42
    and c                                         ; $616A: $A1
    jr z, jr_01B_610E                             ; $616B: $28 $A1

    ld [$881B], sp                                ; $616D: $08 $1B $88
    ld h, c                                       ; $6170: $61
    ld a, [$6BFB]                                 ; $6171: $FA $FB $6B
    db $D3                                        ; $6174: $D3
    ld a, [hl]                                    ; $6175: $7E
    sub $D0                                       ; $6176: $D6 $D0
    ld [bc], a                                    ; $6178: $02
    rlca                                          ; $6179: $07
    or a                                          ; $617A: $B7
    ret nc                                        ; $617B: $D0

    inc bc                                        ; $617C: $03
    ld hl, $047E                                  ; $617D: $21 $7E $04
    ret nc                                        ; $6180: $D0

    ld bc, $E301                                  ; $6181: $01 $01 $E3
    pop de                                        ; $6184: $D1
    add hl, bc                                    ; $6185: $09
    ld hl, $7E42                                  ; $6186: $21 $42 $7E
    or l                                          ; $6189: $B5
    ret nc                                        ; $618A: $D0

jr_01B_618B:
    ld [bc], a                                    ; $618B: $02
    rlca                                          ; $618C: $07
    or a                                          ; $618D: $B7
    ret nc                                        ; $618E: $D0

    inc bc                                        ; $618F: $03
    ld hl, $A142                                  ; $6190: $21 $42 $A1
    jr z, @-$5D                                   ; $6193: $28 $A1

    db $10                                        ; $6195: $10
    dec de                                        ; $6196: $1B
    or b                                          ; $6197: $B0
    ld h, c                                       ; $6198: $61
    ld a, [$3DFB]                                 ; $6199: $FA $FB $3D
    pop de                                        ; $619C: $D1
    ld a, [hl]                                    ; $619D: $7E
    sub $D0                                       ; $619E: $D6 $D0
    ld [bc], a                                    ; $61A0: $02
    rlca                                          ; $61A1: $07
    ld h, b                                       ; $61A2: $60
    db $D3                                        ; $61A3: $D3
    ld de, $7E0E                                  ; $61A4: $11 $0E $7E
    inc b                                         ; $61A7: $04
    ret nc                                        ; $61A8: $D0

    ld bc, $8C01                                  ; $61A9: $01 $01 $8C
    call nc, $0E17                                ; $61AC: $D4 $17 $0E
    ld b, d                                       ; $61AF: $42
    ld a, [hl]                                    ; $61B0: $7E
    or l                                          ; $61B1: $B5
    ret nc                                        ; $61B2: $D0

    ld [bc], a                                    ; $61B3: $02
    rlca                                          ; $61B4: $07
    ld h, b                                       ; $61B5: $60
    db $D3                                        ; $61B6: $D3
    ld de, $420E                                  ; $61B7: $11 $0E $42
    and c                                         ; $61BA: $A1
    jr z, @-$5D                                   ; $61BB: $28 $A1

    jr nz, jr_01B_61E1                            ; $61BD: $20 $22

    inc b                                         ; $61BF: $04
    ld b, b                                       ; $61C0: $40
    ld a, [$B8FB]                                 ; $61C1: $FA $FB $B8
    call nc, $A442                                ; $61C4: $D4 $42 $A4
    ld [hl-], a                                   ; $61C7: $32
    and e                                         ; $61C8: $A3
    ld [bc], a                                    ; $61C9: $02
    nop                                           ; $61CA: $00
    ld [de], a                                    ; $61CB: $12
    add hl, bc                                    ; $61CC: $09
    jp nc, Jump_01B_789B                          ; $61CD: $D2 $9B $78

    ld [hl], b                                    ; $61D0: $70
    sbc a                                         ; $61D1: $9F
    ld d, a                                       ; $61D2: $57
    ld l, b                                       ; $61D3: $68
    ld h, c                                       ; $61D4: $61
    ld [hl], h                                    ; $61D5: $74
    jr nz, jr_01B_6241                            ; $61D6: $20 $69

    ld [hl], e                                    ; $61D8: $73
    jr nz, jr_01B_624F                            ; $61D9: $20 $74

    ld l, b                                       ; $61DB: $68
    ld l, c                                       ; $61DC: $69
    ld [hl], e                                    ; $61DD: $73
    rst $38                                       ; $61DE: $FF
    ld [hl], e                                    ; $61DF: $73
    ld [hl], h                                    ; $61E0: $74

jr_01B_61E1:
    ld [hl], l                                    ; $61E1: $75
    ld h, [hl]                                    ; $61E2: $66
    ld h, [hl]                                    ; $61E3: $66
    ccf                                           ; $61E4: $3F
    cp $FD                                        ; $61E5: $FE $FD
    sbc d                                         ; $61E7: $9A
    ld b, d                                       ; $61E8: $42
    sbc e                                         ; $61E9: $9B
    ld a, b                                       ; $61EA: $78
    ld [hl], b                                    ; $61EB: $70
    sbc a                                         ; $61EC: $9F
    ld b, h                                       ; $61ED: $44
    ld l, c                                       ; $61EE: $69
    ld [hl], e                                    ; $61EF: $73
    ld [hl], h                                    ; $61F0: $74
    ld [hl], l                                    ; $61F1: $75
    ld [hl], d                                    ; $61F2: $72
    ld h, d                                       ; $61F3: $62
    ld l, c                                       ; $61F4: $69
    ld l, [hl]                                    ; $61F5: $6E
    ld h, a                                       ; $61F6: $67
    ld l, $FE                                     ; $61F7: $2E $FE
    db $FD                                        ; $61F9: $FD
    sbc d                                         ; $61FA: $9A
    ld b, d                                       ; $61FB: $42
    sbc e                                         ; $61FC: $9B
    jp hl                                         ; $61FD: $E9


    ld d, l                                       ; $61FE: $55
    sbc a                                         ; $61FF: $9F
    ld b, h                                       ; $6200: $44
    ld l, a                                       ; $6201: $6F
    ld l, [hl]                                    ; $6202: $6E
    daa                                           ; $6203: $27
    ld [hl], h                                    ; $6204: $74
    jr nz, jr_01B_626F                            ; $6205: $20 $68

    ld [hl], l                                    ; $6207: $75
    ld [hl], d                                    ; $6208: $72
    ld [hl], h                                    ; $6209: $74
    jr nz, @+$6F                                  ; $620A: $20 $6D

    ld h, l                                       ; $620C: $65
    ld hl, $FDFE                                  ; $620D: $21 $FE $FD
    sbc e                                         ; $6210: $9B
    ld a, b                                       ; $6211: $78
    ld [hl], b                                    ; $6212: $70
    sbc a                                         ; $6213: $9F
    ld d, e                                       ; $6214: $53
    ld l, b                                       ; $6215: $68
    ld h, l                                       ; $6216: $65
    ld h, l                                       ; $6217: $65
    ld [hl], e                                    ; $6218: $73
    ld l, b                                       ; $6219: $68
    ld l, $20                                     ; $621A: $2E $20
    ld c, c                                       ; $621C: $49
    daa                                           ; $621D: $27
    ld l, l                                       ; $621E: $6D
    jr nz, jr_01B_628F                            ; $621F: $20 $6E

    ld l, a                                       ; $6221: $6F
    ld [hl], h                                    ; $6222: $74
    rst $38                                       ; $6223: $FF
    ld l, b                                       ; $6224: $68
    ld h, l                                       ; $6225: $65
    ld [hl], d                                    ; $6226: $72
    ld h, l                                       ; $6227: $65
    jr nz, @+$76                                  ; $6228: $20 $74

    ld l, a                                       ; $622A: $6F
    jr nz, jr_01B_6295                            ; $622B: $20 $68

    ld [hl], l                                    ; $622D: $75
    ld [hl], d                                    ; $622E: $72
    ld [hl], h                                    ; $622F: $74
    cp $79                                        ; $6230: $FE $79
    ld l, a                                       ; $6232: $6F
    ld [hl], l                                    ; $6233: $75
    inc l                                         ; $6234: $2C
    jr nz, jr_01B_6280                            ; $6235: $20 $49

    daa                                           ; $6237: $27
    ld l, l                                       ; $6238: $6D
    jr nz, jr_01B_62A3                            ; $6239: $20 $68

    ld h, l                                       ; $623B: $65
    ld [hl], d                                    ; $623C: $72
    ld h, l                                       ; $623D: $65
    rst $38                                       ; $623E: $FF
    ld [hl], h                                    ; $623F: $74
    ld l, a                                       ; $6240: $6F

jr_01B_6241:
    jr nz, jr_01B_62B5                            ; $6241: $20 $72

    ld h, l                                       ; $6243: $65
    ld [hl], e                                    ; $6244: $73
    ld h, e                                       ; $6245: $63
    ld [hl], l                                    ; $6246: $75
    ld h, l                                       ; $6247: $65
    jr nz, jr_01B_62C3                            ; $6248: $20 $79

    ld l, a                                       ; $624A: $6F
    ld [hl], l                                    ; $624B: $75
    ld hl, $FDFE                                  ; $624C: $21 $FE $FD

jr_01B_624F:
    sbc e                                         ; $624F: $9B
    jp hl                                         ; $6250: $E9


    ld d, l                                       ; $6251: $55
    sbc a                                         ; $6252: $9F
    ld d, h                                       ; $6253: $54
    ld l, b                                       ; $6254: $68
    ld h, c                                       ; $6255: $61
    ld l, [hl]                                    ; $6256: $6E
    ld l, e                                       ; $6257: $6B
    ld [hl], e                                    ; $6258: $73
    inc l                                         ; $6259: $2C
    jr nz, jr_01B_62BD                            ; $625A: $20 $61

    ld l, [hl]                                    ; $625C: $6E
    ld h, h                                       ; $625D: $64
    jr nz, jr_01B_62C2                            ; $625E: $20 $62

    ld h, l                                       ; $6260: $65
    rst $38                                       ; $6261: $FF
    ld h, e                                       ; $6262: $63
    ld h, c                                       ; $6263: $61
    ld [hl], d                                    ; $6264: $72
    ld h, l                                       ; $6265: $65
    ld h, [hl]                                    ; $6266: $66
    ld [hl], l                                    ; $6267: $75
    ld l, h                                       ; $6268: $6C
    ld l, $20                                     ; $6269: $2E $20
    ld d, h                                       ; $626B: $54
    ld l, b                                       ; $626C: $68
    ld h, l                                       ; $626D: $65
    ld [hl], d                                    ; $626E: $72

jr_01B_626F:
    ld h, l                                       ; $626F: $65
    cp $69                                        ; $6270: $FE $69
    ld [hl], e                                    ; $6272: $73
    jr nz, jr_01B_62E8                            ; $6273: $20 $73

    ld l, a                                       ; $6275: $6F
    ld l, l                                       ; $6276: $6D
    ld h, l                                       ; $6277: $65
    jr nz, jr_01B_62EA                            ; $6278: $20 $70

    ld [hl], d                                    ; $627A: $72
    ld h, l                                       ; $627B: $65
    ld [hl], h                                    ; $627C: $74
    ld [hl], h                                    ; $627D: $74
    ld a, c                                       ; $627E: $79
    rst $38                                       ; $627F: $FF

jr_01B_6280:
    ld [hl], a                                    ; $6280: $77
    ld h, l                                       ; $6281: $65
    ld l, c                                       ; $6282: $69
    ld [hl], d                                    ; $6283: $72
    ld h, h                                       ; $6284: $64
    jr nz, jr_01B_62FA                            ; $6285: $20 $73

    ld [hl], h                                    ; $6287: $74
    ld [hl], l                                    ; $6288: $75
    ld h, [hl]                                    ; $6289: $66
    ld h, [hl]                                    ; $628A: $66
    cp $61                                        ; $628B: $FE $61
    ld [hl], d                                    ; $628D: $72
    ld l, a                                       ; $628E: $6F

jr_01B_628F:
    ld [hl], l                                    ; $628F: $75
    ld l, [hl]                                    ; $6290: $6E
    ld h, h                                       ; $6291: $64
    jr nz, jr_01B_62FC                            ; $6292: $20 $68

    ld h, l                                       ; $6294: $65

jr_01B_6295:
    ld [hl], d                                    ; $6295: $72
    ld h, l                                       ; $6296: $65
    ld l, $FE                                     ; $6297: $2E $FE
    db $FD                                        ; $6299: $FD
    sbc d                                         ; $629A: $9A
    ld e, b                                       ; $629B: $58
    ld bc, $9B42                                  ; $629C: $01 $42 $9B
    ld a, b                                       ; $629F: $78
    ld [hl], b                                    ; $62A0: $70
    sbc a                                         ; $62A1: $9F
    dec l                                         ; $62A2: $2D

jr_01B_62A3:
    ld c, c                                       ; $62A3: $49
    ld d, h                                       ; $62A4: $54
    daa                                           ; $62A5: $27
    ld d, e                                       ; $62A6: $53
    jr nz, jr_01B_62F5                            ; $62A7: $20 $4C

    ld c, a                                       ; $62A9: $4F
    ld b, e                                       ; $62AA: $43
    ld c, e                                       ; $62AB: $4B
    ld b, l                                       ; $62AC: $45
    ld b, h                                       ; $62AD: $44
    dec l                                         ; $62AE: $2D
    cp $FD                                        ; $62AF: $FE $FD
    sbc d                                         ; $62B1: $9A
    ld e, b                                       ; $62B2: $58
    ld [bc], a                                    ; $62B3: $02
    ld b, d                                       ; $62B4: $42

jr_01B_62B5:
    sbc e                                         ; $62B5: $9B
    ld a, b                                       ; $62B6: $78
    ld [hl], b                                    ; $62B7: $70
    sbc a                                         ; $62B8: $9F
    dec l                                         ; $62B9: $2D
    ld d, h                                       ; $62BA: $54
    ld c, a                                       ; $62BB: $4F
    ld c, [hl]                                    ; $62BC: $4E

jr_01B_62BD:
    ld e, c                                       ; $62BD: $59
    jr nz, jr_01B_6315                            ; $62BE: $20 $55

    ld c, [hl]                                    ; $62C0: $4E
    ld c, h                                       ; $62C1: $4C

jr_01B_62C2:
    ld c, a                                       ; $62C2: $4F

jr_01B_62C3:
    ld b, e                                       ; $62C3: $43
    ld c, e                                       ; $62C4: $4B
    ld d, e                                       ; $62C5: $53
    rst $38                                       ; $62C6: $FF
    ld d, h                                       ; $62C7: $54
    ld c, b                                       ; $62C8: $48
    ld b, l                                       ; $62C9: $45
    jr nz, jr_01B_6310                            ; $62CA: $20 $44

    ld c, a                                       ; $62CC: $4F
    ld c, a                                       ; $62CD: $4F
    ld d, d                                       ; $62CE: $52
    ld l, $20                                     ; $62CF: $2E $20
    ld d, h                                       ; $62D1: $54
    ld c, b                                       ; $62D2: $48
    ld b, l                                       ; $62D3: $45
    cp $4B                                        ; $62D4: $FE $4B
    ld b, l                                       ; $62D6: $45
    ld e, c                                       ; $62D7: $59
    jr nz, jr_01B_6324                            ; $62D8: $20 $4A

    ld b, c                                       ; $62DA: $41
    ld c, l                                       ; $62DB: $4D
    ld d, e                                       ; $62DC: $53
    jr nz, jr_01B_6320                            ; $62DD: $20 $41

    ld c, [hl]                                    ; $62DF: $4E
    ld b, h                                       ; $62E0: $44
    rst $38                                       ; $62E1: $FF
    ld b, d                                       ; $62E2: $42
    ld d, d                                       ; $62E3: $52
    ld b, l                                       ; $62E4: $45
    ld b, c                                       ; $62E5: $41
    ld c, e                                       ; $62E6: $4B
    ld d, e                                       ; $62E7: $53

jr_01B_62E8:
    jr nz, jr_01B_6333                            ; $62E8: $20 $49

jr_01B_62EA:
    ld c, [hl]                                    ; $62EA: $4E
    jr nz, jr_01B_6341                            ; $62EB: $20 $54

    ld c, b                                       ; $62ED: $48
    ld b, l                                       ; $62EE: $45
    cp $4C                                        ; $62EF: $FE $4C
    ld c, a                                       ; $62F1: $4F
    ld b, e                                       ; $62F2: $43
    ld c, e                                       ; $62F3: $4B
    dec l                                         ; $62F4: $2D

jr_01B_62F5:
    cp $FD                                        ; $62F5: $FE $FD
    sbc d                                         ; $62F7: $9A
    ld e, b                                       ; $62F8: $58

jr_01B_62F9:
    ld [bc], a                                    ; $62F9: $02

jr_01B_62FA:
    ld b, d                                       ; $62FA: $42
    sub e                                         ; $62FB: $93

jr_01B_62FC:
    ld h, l                                       ; $62FC: $65
    add d                                         ; $62FD: $82
    ld d, h                                       ; $62FE: $54
    ld c, a                                       ; $62FF: $4F
    ld h, h                                       ; $6300: $64
    jr nz, jr_01B_635E                            ; $6301: $20 $5B

    ld l, d                                       ; $6303: $6A
    adc a                                         ; $6304: $8F
    ld h, h                                       ; $6305: $64
    ld a, h                                       ; $6306: $7C
    ld a, h                                       ; $6307: $7C
    ld c, l                                       ; $6308: $4D
    ld a, h                                       ; $6309: $7C

jr_01B_630A:
    rra                                           ; $630A: $1F
    inc e                                         ; $630B: $1C
    ld l, c                                       ; $630C: $69
    add hl, hl                                    ; $630D: $29
    ld e, e                                       ; $630E: $5B
    ld h, [hl]                                    ; $630F: $66

jr_01B_6310:
    ret nz                                        ; $6310: $C0

    ld e, h                                       ; $6311: $5C
    ld hl, $0005                                  ; $6312: $21 $05 $00

jr_01B_6315:
    add c                                         ; $6315: $81
    ld e, l                                       ; $6316: $5D
    dec b                                         ; $6317: $05
    dec b                                         ; $6318: $05

jr_01B_6319:
    rst $38                                       ; $6319: $FF
    ret nc                                        ; $631A: $D0

    nop                                           ; $631B: $00
    jr nz, jr_01B_6319                            ; $631C: $20 $FB

    ld d, b                                       ; $631E: $50
    ld [hl+], a                                   ; $631F: $22

jr_01B_6320:
    dec b                                         ; $6320: $05
    ld b, b                                       ; $6321: $40
    dec bc                                        ; $6322: $0B
    nop                                           ; $6323: $00

jr_01B_6324:
    ld [hl-], a                                   ; $6324: $32
    dec de                                        ; $6325: $1B
    jp z, $8D52                                   ; $6326: $CA $52 $8D

    ld b, c                                       ; $6329: $41
    ld sp, $031B                                  ; $632A: $31 $1B $03
    ld h, e                                       ; $632D: $63
    ld [hl+], a                                   ; $632E: $22
    adc $40                                       ; $632F: $CE $40
    nop                                           ; $6331: $00
    add d                                         ; $6332: $82

jr_01B_6333:
    ld b, e                                       ; $6333: $43
    nop                                           ; $6334: $00
    and [hl]                                      ; $6335: $A6
    and c                                         ; $6336: $A1
    inc b                                         ; $6337: $04
    dec de                                        ; $6338: $1B
    ld d, h                                       ; $6339: $54
    ld h, e                                       ; $633A: $63
    dec b                                         ; $633B: $05
    ld [bc], a                                    ; $633C: $02
    dec b                                         ; $633D: $05

jr_01B_633E:
    ld h, h                                       ; $633E: $64
    ld b, $08                                     ; $633F: $06 $08

jr_01B_6341:
    sub [hl]                                      ; $6341: $96
    pop de                                        ; $6342: $D1
    nop                                           ; $6343: $00
    ld de, $4CAC                                  ; $6344: $11 $AC $4C
    dec de                                        ; $6347: $1B
    rst $00                                       ; $6348: $C7
    ld h, e                                       ; $6349: $63
    ld l, e                                       ; $634A: $6B
    jr nc, jr_01B_6358                            ; $634B: $30 $0B

    jr nc, jr_01B_639E                            ; $634D: $30 $4F

    nop                                           ; $634F: $00
    add b                                         ; $6350: $80
    nop                                           ; $6351: $00
    dec bc                                        ; $6352: $0B
    ld [bc], a                                    ; $6353: $02
    ld b, e                                       ; $6354: $43
    nop                                           ; $6355: $00
    jr z, jr_01B_62F9                             ; $6356: $28 $A1

jr_01B_6358:
    ld [bc], a                                    ; $6358: $02
    dec de                                        ; $6359: $1B
    ld h, l                                       ; $635A: $65
    ld h, e                                       ; $635B: $63
    ld a, [hl]                                    ; $635C: $7E
    nop                                           ; $635D: $00

jr_01B_635E:
    ret nc                                        ; $635E: $D0

    ld [bc], a                                    ; $635F: $02
    inc bc                                        ; $6360: $03
    or e                                          ; $6361: $B3
    jp nc, $290D                                  ; $6362: $D2 $0D $29

    ld b, e                                       ; $6365: $43
    nop                                           ; $6366: $00
    jr z, jr_01B_630A                             ; $6367: $28 $A1

    inc b                                         ; $6369: $04
    dec de                                        ; $636A: $1B
    ld a, a                                       ; $636B: $7F
    ld h, e                                       ; $636C: $63
    ld a, [hl]                                    ; $636D: $7E
    sub $D0                                       ; $636E: $D6 $D0
    ld [bc], a                                    ; $6370: $02
    rlca                                          ; $6371: $07
    ld [hl], d                                    ; $6372: $72
    db $D3                                        ; $6373: $D3
    ld de, $7E20                                  ; $6374: $11 $20 $7E
    inc b                                         ; $6377: $04
    ret nc                                        ; $6378: $D0

    ld [bc], a                                    ; $6379: $02
    ld bc, $D49E                                  ; $637A: $01 $9E $D4
    rla                                           ; $637D: $17
    jr nz, @+$45                                  ; $637E: $20 $43

    nop                                           ; $6380: $00
    jr z, jr_01B_6324                             ; $6381: $28 $A1

    ld [$991B], sp                                ; $6383: $08 $1B $99
    ld h, e                                       ; $6386: $63
    ld a, [hl]                                    ; $6387: $7E
    sub $D0                                       ; $6388: $D6 $D0
    ld [bc], a                                    ; $638A: $02
    rlca                                          ; $638B: $07
    or a                                          ; $638C: $B7
    ret nc                                        ; $638D: $D0

    inc bc                                        ; $638E: $03
    ld hl, $047E                                  ; $638F: $21 $7E $04
    ret nc                                        ; $6392: $D0

    ld bc, $E301                                  ; $6393: $01 $01 $E3
    pop de                                        ; $6396: $D1
    add hl, bc                                    ; $6397: $09
    ld hl, $0043                                  ; $6398: $21 $43 $00
    jr z, jr_01B_633E                             ; $639B: $28 $A1

    db $10                                        ; $639D: $10

jr_01B_639E:
    dec de                                        ; $639E: $1B
    or e                                          ; $639F: $B3
    ld h, e                                       ; $63A0: $63
    ld a, [hl]                                    ; $63A1: $7E
    sub $D0                                       ; $63A2: $D6 $D0
    ld [bc], a                                    ; $63A4: $02
    rlca                                          ; $63A5: $07
    ld h, b                                       ; $63A6: $60
    db $D3                                        ; $63A7: $D3
    ld de, $7E0E                                  ; $63A8: $11 $0E $7E
    inc b                                         ; $63AB: $04
    ret nc                                        ; $63AC: $D0

    ld bc, $8C01                                  ; $63AD: $01 $01 $8C
    call nc, $0E17                                ; $63B0: $D4 $17 $0E
    ld b, e                                       ; $63B3: $43
    ld a, [bc]                                    ; $63B4: $0A
    nop                                           ; $63B5: $00
    ld h, $A1                                     ; $63B6: $26 $A1
    ld [bc], a                                    ; $63B8: $02
    dec de                                        ; $63B9: $1B
    push bc                                       ; $63BA: $C5
    ld h, e                                       ; $63BB: $63
    ld a, [hl]                                    ; $63BC: $7E
    ld [bc], a                                    ; $63BD: $02
    ret nc                                        ; $63BE: $D0

    ld [bc], a                                    ; $63BF: $02
    ld [bc], a                                    ; $63C0: $02
    pop bc                                        ; $63C1: $C1
    jp nc, $050E                                  ; $63C2: $D2 $0E $05

    sub h                                         ; $63C5: $94
    ld b, d                                       ; $63C6: $42
    xor a                                         ; $63C7: $AF
    and [hl]                                      ; $63C8: $A6
    and c                                         ; $63C9: $A1
    inc b                                         ; $63CA: $04
    ld e, e                                       ; $63CB: $5B
    dec de                                        ; $63CC: $1B
    db $FC                                        ; $63CD: $FC
    ld h, c                                       ; $63CE: $61
    ld c, e                                       ; $63CF: $4B
    inc bc                                        ; $63D0: $03

jr_01B_63D1:
    dec de                                        ; $63D1: $1B
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    and $63                                       ; $63D4: $E6 $63
    dec de                                        ; $63D6: $1B
    inc bc                                        ; $63D7: $03
    nop                                           ; $63D8: $00
    ldh a, [$63]                                  ; $63D9: $F0 $63
    dec de                                        ; $63DB: $1B
    ld [bc], a                                    ; $63DC: $02
    nop                                           ; $63DD: $00
    inc b                                         ; $63DE: $04
    ld h, h                                       ; $63DF: $64
    dec de                                        ; $63E0: $1B
    ld bc, $FA00                                  ; $63E1: $01 $00 $FA
    ld h, e                                       ; $63E4: $63
    rst $38                                       ; $63E5: $FF

jr_01B_63E6:
    inc d                                         ; $63E6: $14
    ld de, $4A17                                  ; $63E7: $11 $17 $4A
    ld h, d                                       ; $63EA: $62
    ld bc, $1B45                                  ; $63EB: $01 $45 $1B
    ld c, $64                                     ; $63EE: $0E $64
    inc d                                         ; $63F0: $14
    ld de, $4A21                                  ; $63F1: $11 $21 $4A
    ld h, d                                       ; $63F4: $62
    ld bc, $1B45                                  ; $63F5: $01 $45 $1B

jr_01B_63F8:
    rra                                           ; $63F8: $1F
    ld h, h                                       ; $63F9: $64
    inc d                                         ; $63FA: $14
    ld de, $4A2B                                  ; $63FB: $11 $2B $4A
    ld h, d                                       ; $63FE: $62
    ld bc, $1B45                                  ; $63FF: $01 $45 $1B
    ld c, $64                                     ; $6402: $0E $64
    inc d                                         ; $6404: $14
    ld de, $4A35                                  ; $6405: $11 $35 $4A
    ld h, d                                       ; $6408: $62
    ld bc, $1B45                                  ; $6409: $01 $45 $1B
    ld c, $64                                     ; $640C: $0E $64
    dec d                                         ; $640E: $15
    ld de, $49E7                                  ; $640F: $11 $E7 $49
    jr nz, jr_01B_6414                            ; $6412: $20 $00

jr_01B_6414:
    rlca                                          ; $6414: $07
    nop                                           ; $6415: $00
    add c                                         ; $6416: $81
    ld e, l                                       ; $6417: $5D
    add hl, bc                                    ; $6418: $09
    nop                                           ; $6419: $00
    jr nz, jr_01B_63D1                            ; $641A: $20 $B5

    ld d, b                                       ; $641C: $50
    add hl, de                                    ; $641D: $19
    ld b, d                                       ; $641E: $42
    dec d                                         ; $641F: $15
    ld de, $49F7                                  ; $6420: $11 $F7 $49
    ld [$E711], sp                                ; $6423: $08 $11 $E7
    ld c, c                                       ; $6426: $49
    jr jr_01B_6429                                ; $6427: $18 $00

jr_01B_6429:
    rlca                                          ; $6429: $07
    nop                                           ; $642A: $00
    add c                                         ; $642B: $81
    ld e, l                                       ; $642C: $5D
    add hl, bc                                    ; $642D: $09
    nop                                           ; $642E: $00
    jr nz, jr_01B_63E6                            ; $642F: $20 $B5

    ld d, b                                       ; $6431: $50
    add hl, de                                    ; $6432: $19
    ld b, d                                       ; $6433: $42
    ld b, e                                       ; $6434: $43
    ld de, $C301                                  ; $6435: $11 $01 $C3
    and e                                         ; $6438: $A3
    dec b                                         ; $6439: $05
    nop                                           ; $643A: $00
    dec de                                        ; $643B: $1B
    ld h, c                                       ; $643C: $61
    ld h, h                                       ; $643D: $64
    rlca                                          ; $643E: $07
    nop                                           ; $643F: $00
    ld l, e                                       ; $6440: $6B
    ld c, d                                       ; $6441: $4A
    add hl, bc                                    ; $6442: $09
    nop                                           ; $6443: $00
    jr nz, @-$31                                  ; $6444: $20 $CD

    ld c, a                                       ; $6446: $4F
    ld b, b                                       ; $6447: $40
    ld [$0009], sp                                ; $6448: $08 $09 $00
    jr nz, jr_01B_63F8                            ; $644B: $20 $AB

    ld d, b                                       ; $644D: $50
    ld e, e                                       ; $644E: $5B
    dec de                                        ; $644F: $1B
    sbc [hl]                                      ; $6450: $9E
    ld h, d                                       ; $6451: $62
    ld h, d                                       ; $6452: $62
    ld [bc], a                                    ; $6453: $02
    rlca                                          ; $6454: $07
    nop                                           ; $6455: $00
    add c                                         ; $6456: $81
    ld e, l                                       ; $6457: $5D
    add hl, bc                                    ; $6458: $09
    nop                                           ; $6459: $00
    jr nz, @-$53                                  ; $645A: $20 $AB

    ld d, b                                       ; $645C: $50
    ld b, l                                       ; $645D: $45
    dec de                                        ; $645E: $1B
    ld a, l                                       ; $645F: $7D
    ld h, h                                       ; $6460: $64
    ld e, e                                       ; $6461: $5B
    dec de                                        ; $6462: $1B
    or l                                          ; $6463: $B5
    ld h, d                                       ; $6464: $62
    ld h, d                                       ; $6465: $62
    ld [bc], a                                    ; $6466: $02
    ld a, [hl]                                    ; $6467: $7E
    ld [bc], a                                    ; $6468: $02
    ret nc                                        ; $6469: $D0

    ld [bc], a                                    ; $646A: $02
    ld [bc], a                                    ; $646B: $02
    pop bc                                        ; $646C: $C1
    jp nc, $050E                                  ; $646D: $D2 $0E $05

    and [hl]                                      ; $6470: $A6
    jp $0CA3                                      ; $6471: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $6474: $01 $C3 $A3
    dec b                                         ; $6477: $05
    ld bc, $26AF                                  ; $6478: $01 $AF $26
    and c                                         ; $647B: $A1
    ld [bc], a                                    ; $647C: $02
    ld b, d                                       ; $647D: $42
    ld [bc], a                                    ; $647E: $02
    nop                                           ; $647F: $00
    rla                                           ; $6480: $17
    rrca                                          ; $6481: $0F
    ld a, [bc]                                    ; $6482: $0A
    ld b, l                                       ; $6483: $45
    dec de                                        ; $6484: $1B
    xor [hl]                                      ; $6485: $AE
    ld h, b                                       ; $6486: $60
    ld [bc], a                                    ; $6487: $02
    dec bc                                        ; $6488: $0B
    dec bc                                        ; $6489: $0B
    nop                                           ; $648A: $00
    jr jr_01B_64D2                                ; $648B: $18 $45

    dec de                                        ; $648D: $1B
    dec h                                         ; $648E: $25
    ld h, [hl]                                    ; $648F: $66
    ld [bc], a                                    ; $6490: $02
    ld a, [bc]                                    ; $6491: $0A
    ld [de], a                                    ; $6492: $12
    jr jr_01B_6495                                ; $6493: $18 $00

jr_01B_6495:
    ld b, l                                       ; $6495: $45
    dec de                                        ; $6496: $1B
    ld hl, sp+$64                                 ; $6497: $F8 $64
    ld [bc], a                                    ; $6499: $02
    nop                                           ; $649A: $00
    ld bc, $1800                                  ; $649B: $01 $00 $18
    ld b, l                                       ; $649E: $45
    dec de                                        ; $649F: $1B
    dec h                                         ; $64A0: $25
    ld h, [hl]                                    ; $64A1: $66
    sub e                                         ; $64A2: $93
    ld h, l                                       ; $64A3: $65
    sub c                                         ; $64A4: $91
    ld d, h                                       ; $64A5: $54
    ld c, a                                       ; $64A6: $4F
    ld h, h                                       ; $64A7: $64
    ld d, d                                       ; $64A8: $52
    ld e, e                                       ; $64A9: $5B
    ld h, [hl]                                    ; $64AA: $66
    ret nz                                        ; $64AB: $C0

    ld e, h                                       ; $64AC: $5C
    ld hl, $0005                                  ; $64AD: $21 $05 $00
    add c                                         ; $64B0: $81
    ld e, l                                       ; $64B1: $5D
    dec b                                         ; $64B2: $05
    dec b                                         ; $64B3: $05

jr_01B_64B4:
    add d                                         ; $64B4: $82
    ret nc                                        ; $64B5: $D0

    nop                                           ; $64B6: $00
    jr nz, jr_01B_64B4                            ; $64B7: $20 $FB

    ld d, b                                       ; $64B9: $50
    ld [hl+], a                                   ; $64BA: $22
    dec b                                         ; $64BB: $05
    ld b, b                                       ; $64BC: $40
    rra                                           ; $64BD: $1F
    inc e                                         ; $64BE: $1C
    dec bc                                        ; $64BF: $0B
    nop                                           ; $64C0: $00
    ld [hl-], a                                   ; $64C1: $32
    dec de                                        ; $64C2: $1B
    jp z, $8D52                                   ; $64C3: $CA $52 $8D

    ld b, c                                       ; $64C6: $41
    ld sp, $A21B                                  ; $64C7: $31 $1B $A2
    ld h, h                                       ; $64CA: $64
    ld [hl+], a                                   ; $64CB: $22
    adc $40                                       ; $64CC: $CE $40
    nop                                           ; $64CE: $00
    add d                                         ; $64CF: $82
    sub h                                         ; $64D0: $94
    ld b, d                                       ; $64D1: $42

jr_01B_64D2:
    ld [bc], a                                    ; $64D2: $02
    ld [de], a                                    ; $64D3: $12
    ld a, [bc]                                    ; $64D4: $0A
    nop                                           ; $64D5: $00
    jr @+$47                                      ; $64D6: $18 $45

    dec de                                        ; $64D8: $1B
    and d                                         ; $64D9: $A2
    ld h, h                                       ; $64DA: $64
    and d                                         ; $64DB: $A2
    ld [hl-], a                                   ; $64DC: $32
    and e                                         ; $64DD: $A3
    inc b                                         ; $64DE: $04
    ld [hl+], a                                   ; $64DF: $22
    ld e, e                                       ; $64E0: $5B
    ld b, b                                       ; $64E1: $40
    rst $38                                       ; $64E2: $FF
    cp d                                          ; $64E3: $BA
    jp nc, $F744                                  ; $64E4: $D2 $44 $F7

    ld h, h                                       ; $64E7: $64
    sbc a                                         ; $64E8: $9F
    ld d, d                                       ; $64E9: $52
    ld c, a                                       ; $64EA: $4F
    ld c, a                                       ; $64EB: $4F
    ld c, a                                       ; $64EC: $4F
    ld b, c                                       ; $64ED: $41
    ld d, d                                       ; $64EE: $52
    ld hl, $FDFE                                  ; $64EF: $21 $FE $FD
    sbc d                                         ; $64F2: $9A
    ld b, l                                       ; $64F3: $45
    dec de                                        ; $64F4: $1B
    sbc b                                         ; $64F5: $98
    ld d, e                                       ; $64F6: $53
    ld b, d                                       ; $64F7: $42
    sub e                                         ; $64F8: $93
    ld h, l                                       ; $64F9: $65
    and b                                         ; $64FA: $A0
    ld d, h                                       ; $64FB: $54
    ld c, a                                       ; $64FC: $4F
    ld l, c                                       ; $64FD: $69
    ld l, b                                       ; $64FE: $68
    ld e, e                                       ; $64FF: $5B
    ld h, h                                       ; $6500: $64
    ld h, e                                       ; $6501: $63
    ld e, e                                       ; $6502: $5B
    ld h, [hl]                                    ; $6503: $66
    ret nz                                        ; $6504: $C0

    ld e, h                                       ; $6505: $5C
    ld hl, $0005                                  ; $6506: $21 $05 $00
    add c                                         ; $6509: $81
    ld e, l                                       ; $650A: $5D

jr_01B_650B:
    dec b                                         ; $650B: $05
    dec b                                         ; $650C: $05

jr_01B_650D:
    add a                                         ; $650D: $87
    ret nc                                        ; $650E: $D0

    nop                                           ; $650F: $00
    jr nz, jr_01B_650D                            ; $6510: $20 $FB

    ld d, b                                       ; $6512: $50
    ld [hl+], a                                   ; $6513: $22
    dec b                                         ; $6514: $05
    ld b, b                                       ; $6515: $40
    rra                                           ; $6516: $1F
    inc e                                         ; $6517: $1C
    dec bc                                        ; $6518: $0B
    nop                                           ; $6519: $00
    ld [hl-], a                                   ; $651A: $32
    dec de                                        ; $651B: $1B
    jp z, $8D52                                   ; $651C: $CA $52 $8D

    ld b, c                                       ; $651F: $41
    ld sp, $F81B                                  ; $6520: $31 $1B $F8
    ld h, h                                       ; $6523: $64
    ld [hl+], a                                   ; $6524: $22
    adc $40                                       ; $6525: $CE $40
    nop                                           ; $6527: $00
    add d                                         ; $6528: $82
    sub h                                         ; $6529: $94
    ld b, d                                       ; $652A: $42
    sub e                                         ; $652B: $93
    ld h, l                                       ; $652C: $65
    and b                                         ; $652D: $A0
    ld d, h                                       ; $652E: $54
    ld c, a                                       ; $652F: $4F
    ld h, h                                       ; $6530: $64
    ld h, e                                       ; $6531: $63
    ld e, e                                       ; $6532: $5B
    ld l, c                                       ; $6533: $69
    ld l, b                                       ; $6534: $68
    ld e, e                                       ; $6535: $5B
    ld h, [hl]                                    ; $6536: $66
    ret nz                                        ; $6537: $C0

    ld e, h                                       ; $6538: $5C
    ld hl, $0005                                  ; $6539: $21 $05 $00
    ld l, e                                       ; $653C: $6B
    ld c, d                                       ; $653D: $4A
    rrca                                          ; $653E: $0F
    dec bc                                        ; $653F: $0B
    dec l                                         ; $6540: $2D
    pop de                                        ; $6541: $D1
    nop                                           ; $6542: $00
    dec de                                        ; $6543: $1B
    ld [hl], e                                    ; $6544: $73
    ld h, l                                       ; $6545: $65
    ld [hl+], a                                   ; $6546: $22
    dec b                                         ; $6547: $05
    ld b, b                                       ; $6548: $40
    rra                                           ; $6549: $1F
    inc e                                         ; $654A: $1C
    add h                                         ; $654B: $84
    rrca                                          ; $654C: $0F
    ld [de], a                                    ; $654D: $12
    ld [hl-], a                                   ; $654E: $32
    dec de                                        ; $654F: $1B
    jp z, $8D52                                   ; $6550: $CA $52 $8D

    ld b, c                                       ; $6553: $41
    ld sp, $F81B                                  ; $6554: $31 $1B $F8
    ld h, h                                       ; $6557: $64
    ld [hl+], a                                   ; $6558: $22
    adc $40                                       ; $6559: $CE $40
    sub h                                         ; $655B: $94
    sbc e                                         ; $655C: $9B
    ld a, b                                       ; $655D: $78
    ld [hl], b                                    ; $655E: $70
    sbc a                                         ; $655F: $9F
    ld b, c                                       ; $6560: $41
    ld b, c                                       ; $6561: $41
    ld b, c                                       ; $6562: $41
    ld b, c                                       ; $6563: $41
    ld b, c                                       ; $6564: $41
    ld c, b                                       ; $6565: $48
    ld c, b                                       ; $6566: $48
    ld c, b                                       ; $6567: $48
    ld c, b                                       ; $6568: $48
    ld hl, $2121                                  ; $6569: $21 $21 $21
    ld hl, $FDFE                                  ; $656C: $21 $FE $FD
    sbc d                                         ; $656F: $9A
    dec bc                                        ; $6570: $0B
    nop                                           ; $6571: $00
    ld b, d                                       ; $6572: $42
    dec d                                         ; $6573: $15
    jr nz, jr_01B_65A1                            ; $6574: $20 $2B

    ld d, l                                       ; $6576: $55
    jr nz, jr_01B_6579                            ; $6577: $20 $00

jr_01B_6579:
    dec d                                         ; $6579: $15
    jr nz, jr_01B_650B                            ; $657A: $20 $8F

    ld d, h                                       ; $657C: $54
    jr nc, jr_01B_657F                            ; $657D: $30 $00

jr_01B_657F:
    dec d                                         ; $657F: $15

jr_01B_6580:
    jr nz, @-$79                                  ; $6580: $20 $85

    ld d, h                                       ; $6582: $54
    jr nc, jr_01B_65A5                            ; $6583: $30 $20

    adc a                                         ; $6585: $8F
    ld d, h                                       ; $6586: $54
    jr nz, jr_01B_65A9                            ; $6587: $20 $20

    cp a                                          ; $6589: $BF
    ld d, b                                       ; $658A: $50
    stop                                          ; $658B: $10 $00
    sbc e                                         ; $658D: $9B
    ld a, b                                       ; $658E: $78
    ld [hl], b                                    ; $658F: $70
    sbc a                                         ; $6590: $9F
    ld c, a                                       ; $6591: $4F
    ld l, a                                       ; $6592: $6F

Jump_01B_6593:
    ld l, a                                       ; $6593: $6F
    ld l, a                                       ; $6594: $6F
    inc l                                         ; $6595: $2C
    jr nz, jr_01B_660C                            ; $6596: $20 $74

    ld l, b                                       ; $6598: $68
    ld h, c                                       ; $6599: $61
    ld [hl], h                                    ; $659A: $74
    daa                                           ; $659B: $27
    ld [hl], e                                    ; $659C: $73
    rst $38                                       ; $659D: $FF
    ld h, a                                       ; $659E: $67
    ld l, a                                       ; $659F: $6F
    ld l, [hl]                                    ; $65A0: $6E

jr_01B_65A1:
    ld l, [hl]                                    ; $65A1: $6E
    ld h, c                                       ; $65A2: $61
    jr nz, @+$6E                                  ; $65A3: $20 $6C

jr_01B_65A5:
    ld h, l                                       ; $65A5: $65
    ld h, c                                       ; $65A6: $61
    halt                                          ; $65A7: $76
    ld h, l                                       ; $65A8: $65

jr_01B_65A9:
    jr nz, jr_01B_660C                            ; $65A9: $20 $61

    cp $6D                                        ; $65AB: $FE $6D
    ld h, c                                       ; $65AD: $61
    ld [hl], d                                    ; $65AE: $72
    ld l, e                                       ; $65AF: $6B
    ld hl, $FDFE                                  ; $65B0: $21 $FE $FD
    sbc d                                         ; $65B3: $9A
    ld e, d                                       ; $65B4: $5A
    dec de                                        ; $65B5: $1B
    cp c                                          ; $65B6: $B9
    ld h, l                                       ; $65B7: $65
    ld b, d                                       ; $65B8: $42
    rlca                                          ; $65B9: $07
    nop                                           ; $65BA: $00
    add c                                         ; $65BB: $81
    ld e, l                                       ; $65BC: $5D
    add hl, bc                                    ; $65BD: $09
    nop                                           ; $65BE: $00
    jr nz, jr_01B_6580                            ; $65BF: $20 $BF

    ld d, b                                       ; $65C1: $50
    ld b, d                                       ; $65C2: $42
    ld [bc], a                                    ; $65C3: $02
    dec bc                                        ; $65C4: $0B
    dec bc                                        ; $65C5: $0B
    jr jr_01B_65C8                                ; $65C6: $18 $00

jr_01B_65C8:
    ld b, l                                       ; $65C8: $45
    dec de                                        ; $65C9: $1B
    and d                                         ; $65CA: $A2
    ld h, h                                       ; $65CB: $64
    ld [bc], a                                    ; $65CC: $02
    jr nz, jr_01B_65D4                            ; $65CD: $20 $05

    jr jr_01B_65D1                                ; $65CF: $18 $00

jr_01B_65D1:
    ld b, l                                       ; $65D1: $45
    dec de                                        ; $65D2: $1B
    push bc                                       ; $65D3: $C5

jr_01B_65D4:
    ld h, a                                       ; $65D4: $67
    ld [bc], a                                    ; $65D5: $02
    ld sp, $1700                                  ; $65D6: $31 $00 $17
    db $10                                        ; $65D9: $10
    ld b, l                                       ; $65DA: $45
    dec de                                        ; $65DB: $1B
    ld d, b                                       ; $65DC: $50
    ld e, c                                       ; $65DD: $59
    ld [bc], a                                    ; $65DE: $02
    ld bc, $1800                                  ; $65DF: $01 $00 $18
    nop                                           ; $65E2: $00
    ld b, l                                       ; $65E3: $45
    dec de                                        ; $65E4: $1B
    and d                                         ; $65E5: $A2
    ld h, h                                       ; $65E6: $64
    rlca                                          ; $65E7: $07
    nop                                           ; $65E8: $00
    ld l, e                                       ; $65E9: $6B
    ld c, d                                       ; $65EA: $4A
    add hl, bc                                    ; $65EB: $09
    nop                                           ; $65EC: $00
    jr nz, jr_01B_662A                            ; $65ED: $20 $3B

    ld d, l                                       ; $65EF: $55
    ld b, b                                       ; $65F0: $40
    jr jr_01B_6638                                ; $65F1: $18 $45

    dec de                                        ; $65F3: $1B
    dec hl                                        ; $65F4: $2B
    ld h, l                                       ; $65F5: $65
    and d                                         ; $65F6: $A2
    daa                                           ; $65F7: $27
    and c                                         ; $65F8: $A1
    inc b                                         ; $65F9: $04
    ld [hl+], a                                   ; $65FA: $22
    ld e, e                                       ; $65FB: $5B
    ld b, b                                       ; $65FC: $40
    rst $38                                       ; $65FD: $FF
    dec de                                        ; $65FE: $1B
    jp nc, $2444                                  ; $65FF: $D2 $44 $24

    ld h, [hl]                                    ; $6602: $66
    add a                                         ; $6603: $87
    nop                                           ; $6604: $00
    inc e                                         ; $6605: $1C
    ld bc, $549F                                  ; $6606: $01 $9F $54
    ld l, a                                       ; $6609: $6F
    ld l, [hl]                                    ; $660A: $6E
    ld a, c                                       ; $660B: $79

jr_01B_660C:
    jr nz, jr_01B_6675                            ; $660C: $20 $67

    ld l, a                                       ; $660E: $6F
    ld [hl], h                                    ; $660F: $74
    jr nz, jr_01B_6673                            ; $6610: $20 $61

    rst $38                                       ; $6612: $FF
    ld d, e                                       ; $6613: $53
    ld l, b                                       ; $6614: $68
    ld h, c                                       ; $6615: $61
    ld h, h                                       ; $6616: $64
    ld l, a                                       ; $6617: $6F
    ld [hl], a                                    ; $6618: $77
    jr nz, jr_01B_6666                            ; $6619: $20 $4B

    ld h, l                                       ; $661B: $65
    ld a, c                                       ; $661C: $79
    cp $FD                                        ; $661D: $FE $FD
    sbc d                                         ; $661F: $9A
    ld b, l                                       ; $6620: $45
    dec de                                        ; $6621: $1B
    ld h, a                                       ; $6622: $67
    ld h, [hl]                                    ; $6623: $66
    ld b, d                                       ; $6624: $42
    sub e                                         ; $6625: $93
    ld h, l                                       ; $6626: $65
    xor a                                         ; $6627: $AF
    ld d, h                                       ; $6628: $54
    ld c, a                                       ; $6629: $4F

jr_01B_662A:
    ld h, h                                       ; $662A: $64
    ld l, l                                       ; $662B: $6D
    ld e, e                                       ; $662C: $5B
    ld l, d                                       ; $662D: $6A
    adc a                                         ; $662E: $8F
    ld h, h                                       ; $662F: $64
    ld a, h                                       ; $6630: $7C
    ld a, h                                       ; $6631: $7C
    ld c, l                                       ; $6632: $4D
    ld a, h                                       ; $6633: $7C
    ld l, c                                       ; $6634: $69
    add d                                         ; $6635: $82
    ld e, e                                       ; $6636: $5B
    rra                                           ; $6637: $1F

jr_01B_6638:
    inc e                                         ; $6638: $1C
    ld h, [hl]                                    ; $6639: $66
    ret nz                                        ; $663A: $C0

    ld e, h                                       ; $663B: $5C
    ld hl, $0005                                  ; $663C: $21 $05 $00
    add c                                         ; $663F: $81
    ld e, l                                       ; $6640: $5D
    dec b                                         ; $6641: $05
    dec b                                         ; $6642: $05

jr_01B_6643:
    rst $38                                       ; $6643: $FF
    ret nc                                        ; $6644: $D0

    nop                                           ; $6645: $00
    jr nz, jr_01B_6643                            ; $6646: $20 $FB

    ld d, b                                       ; $6648: $50

Call_01B_6649:
    ld [hl+], a                                   ; $6649: $22
    dec b                                         ; $664A: $05
    ld b, b                                       ; $664B: $40
    dec bc                                        ; $664C: $0B
    nop                                           ; $664D: $00
    ld [hl-], a                                   ; $664E: $32
    dec de                                        ; $664F: $1B
    jp z, $8D52                                   ; $6650: $CA $52 $8D

Jump_01B_6653:
    ld b, c                                       ; $6653: $41
    ld sp, $2D1B                                  ; $6654: $31 $1B $2D
    ld h, [hl]                                    ; $6657: $66
    ld [hl+], a                                   ; $6658: $22
    adc $40                                       ; $6659: $CE $40
    nop                                           ; $665B: $00
    add d                                         ; $665C: $82
    sub h                                         ; $665D: $94
    ld b, e                                       ; $665E: $43
    nop                                           ; $665F: $00
    ld h, $A1                                     ; $6660: $26 $A1
    ld bc, $851B                                  ; $6662: $01 $1B $85
    ld h, [hl]                                    ; $6665: $66

jr_01B_6666:
    ld b, d                                       ; $6666: $42
    xor a                                         ; $6667: $AF
    ld h, $A1                                     ; $6668: $26 $A1
    ld bc, $1B5A                                  ; $666A: $01 $5A $1B
    adc [hl]                                      ; $666D: $8E
    ld h, a                                       ; $666E: $67
    ld h, c                                       ; $666F: $61
    ld bc, $789B                                  ; $6670: $01 $9B $78

jr_01B_6673:
    ld [hl], b                                    ; $6673: $70
    sbc a                                         ; $6674: $9F

jr_01B_6675:
    ld d, l                                       ; $6675: $55
    ld l, b                                       ; $6676: $68
    jr nz, @+$71                                  ; $6677: $20 $6F

    ld l, b                                       ; $6679: $68
    ld l, $2E                                     ; $667A: $2E $2E
    ld l, $FE                                     ; $667C: $2E $FE
    db $FD                                        ; $667E: $FD
    sbc d                                         ; $667F: $9A
    ld e, d                                       ; $6680: $5A
    dec de                                        ; $6681: $1B
    add l                                         ; $6682: $85
    ld h, [hl]                                    ; $6683: $66
    ld b, d                                       ; $6684: $42
    ld a, [hl]                                    ; $6685: $7E
    ld l, $D0                                     ; $6686: $2E $D0
    inc bc                                        ; $6688: $03
    ld bc, $D2E3                                  ; $6689: $01 $E3 $D2
    ld c, $27                                     ; $668C: $0E $27
    ld b, b                                       ; $668E: $40
    ld [$2E7E], sp                                ; $668F: $08 $7E $2E
    ret nc                                        ; $6692: $D0

    inc bc                                        ; $6693: $03
    ld bc, $D2B1                                  ; $6694: $01 $B1 $D2
    dec c                                         ; $6697: $0D
    daa                                           ; $6698: $27
    ld b, b                                       ; $6699: $40
    ld [$2E7E], sp                                ; $669A: $08 $7E $2E
    ret nc                                        ; $669D: $D0

    inc bc                                        ; $669E: $03
    ld bc, $D27F                                  ; $669F: $01 $7F $D2
    inc c                                         ; $66A2: $0C
    daa                                           ; $66A3: $27
    ld b, b                                       ; $66A4: $40
    ld [$2E7E], sp                                ; $66A5: $08 $7E $2E
    ret nc                                        ; $66A8: $D0

    inc bc                                        ; $66A9: $03
    ld bc, $D24D                                  ; $66AA: $01 $4D $D2
    dec bc                                        ; $66AD: $0B
    daa                                           ; $66AE: $27
    ld b, b                                       ; $66AF: $40
    ld [$2E7E], sp                                ; $66B0: $08 $7E $2E
    ret nc                                        ; $66B3: $D0

    inc b                                         ; $66B4: $04
    ld bc, $D21A                                  ; $66B5: $01 $1A $D2
    ld a, [bc]                                    ; $66B8: $0A
    ld h, $40                                     ; $66B9: $26 $40
    ld [$2E7E], sp                                ; $66BB: $08 $7E $2E
    ret nc                                        ; $66BE: $D0

    inc b                                         ; $66BF: $04
    ld bc, $D1E8                                  ; $66C0: $01 $E8 $D1
    add hl, bc                                    ; $66C3: $09
    ld h, $40                                     ; $66C4: $26 $40
    ld [$2E7E], sp                                ; $66C6: $08 $7E $2E
    ret nc                                        ; $66C9: $D0

    inc b                                         ; $66CA: $04
    ld bc, $D1B6                                  ; $66CB: $01 $B6 $D1
    ld [$4026], sp                                ; $66CE: $08 $26 $40
    ld [$2E7E], sp                                ; $66D1: $08 $7E $2E
    ret nc                                        ; $66D4: $D0

    inc bc                                        ; $66D5: $03
    ld bc, $D184                                  ; $66D6: $01 $84 $D1
    rlca                                          ; $66D9: $07
    ld h, $40                                     ; $66DA: $26 $40
    ld [$2E7E], sp                                ; $66DC: $08 $7E $2E
    ret nc                                        ; $66DF: $D0

    inc bc                                        ; $66E0: $03
    ld bc, $D152                                  ; $66E1: $01 $52 $D1
    ld b, $26                                     ; $66E4: $06 $26
    ld b, b                                       ; $66E6: $40
    ld [$2E7E], sp                                ; $66E7: $08 $7E $2E
    ret nc                                        ; $66EA: $D0

    inc bc                                        ; $66EB: $03
    ld bc, $D120                                  ; $66EC: $01 $20 $D1
    dec b                                         ; $66EF: $05
    ld h, $40                                     ; $66F0: $26 $40
    ld [$2E7E], sp                                ; $66F2: $08 $7E $2E
    ret nc                                        ; $66F5: $D0

    inc bc                                        ; $66F6: $03
    ld bc, $D0EE                                  ; $66F7: $01 $EE $D0
    inc b                                         ; $66FA: $04
    ld h, $40                                     ; $66FB: $26 $40
    ld [$2E7E], sp                                ; $66FD: $08 $7E $2E
    ret nc                                        ; $6700: $D0

    inc bc                                        ; $6701: $03
    ld bc, $D0BC                                  ; $6702: $01 $BC $D0
    inc bc                                        ; $6705: $03
    ld h, $40                                     ; $6706: $26 $40
    ld [$2E7E], sp                                ; $6708: $08 $7E $2E
    ret nc                                        ; $670B: $D0

    inc bc                                        ; $670C: $03
    ld bc, $D08A                                  ; $670D: $01 $8A $D0
    ld [bc], a                                    ; $6710: $02
    ld h, $40                                     ; $6711: $26 $40
    ld [$317E], sp                                ; $6713: $08 $7E $31
    ret nc                                        ; $6716: $D0

    ld bc, $8903                                  ; $6717: $01 $03 $89
    ret nc                                        ; $671A: $D0

    ld [bc], a                                    ; $671B: $02
    dec h                                         ; $671C: $25
    ld b, b                                       ; $671D: $40
    ld [$317E], sp                                ; $671E: $08 $7E $31
    ret nc                                        ; $6721: $D0

    ld bc, $8803                                  ; $6722: $01 $03 $88
    ret nc                                        ; $6725: $D0

    ld [bc], a                                    ; $6726: $02
    inc h                                         ; $6727: $24
    ld b, b                                       ; $6728: $40
    ld [$317E], sp                                ; $6729: $08 $7E $31
    ret nc                                        ; $672C: $D0

    ld bc, $8703                                  ; $672D: $01 $03 $87
    ret nc                                        ; $6730: $D0

    ld [bc], a                                    ; $6731: $02
    inc hl                                        ; $6732: $23
    ld b, b                                       ; $6733: $40
    ld [$317E], sp                                ; $6734: $08 $7E $31
    ret nc                                        ; $6737: $D0

    ld bc, $8603                                  ; $6738: $01 $03 $86
    ret nc                                        ; $673B: $D0

    ld [bc], a                                    ; $673C: $02
    ld [hl+], a                                   ; $673D: $22
    ld b, b                                       ; $673E: $40
    ld [$317E], sp                                ; $673F: $08 $7E $31
    ret nc                                        ; $6742: $D0

    ld bc, $8503                                  ; $6743: $01 $03 $85
    ret nc                                        ; $6746: $D0

    ld [bc], a                                    ; $6747: $02
    ld hl, $0840                                  ; $6748: $21 $40 $08
    ld a, [hl]                                    ; $674B: $7E
    ld sp, $01D0                                  ; $674C: $31 $D0 $01
    inc bc                                        ; $674F: $03
    add h                                         ; $6750: $84
    ret nc                                        ; $6751: $D0

    ld [bc], a                                    ; $6752: $02
    jr nz, @+$42                                  ; $6753: $20 $40

    ld [$317E], sp                                ; $6755: $08 $7E $31
    ret nc                                        ; $6758: $D0

    ld bc, $8303                                  ; $6759: $01 $03 $83
    ret nc                                        ; $675C: $D0

    ld [bc], a                                    ; $675D: $02
    rra                                           ; $675E: $1F
    ld b, b                                       ; $675F: $40
    ld [$317E], sp                                ; $6760: $08 $7E $31
    ret nc                                        ; $6763: $D0

    ld bc, $8203                                  ; $6764: $01 $03 $82
    ret nc                                        ; $6767: $D0

    ld [bc], a                                    ; $6768: $02
    ld e, $40                                     ; $6769: $1E $40
    ld [$317E], sp                                ; $676B: $08 $7E $31
    ret nc                                        ; $676E: $D0

    ld bc, $8103                                  ; $676F: $01 $03 $81
    ret nc                                        ; $6772: $D0

    ld [bc], a                                    ; $6773: $02
    dec e                                         ; $6774: $1D
    ld b, b                                       ; $6775: $40
    ld [$317E], sp                                ; $6776: $08 $7E $31
    ret nc                                        ; $6779: $D0

    ld bc, $8003                                  ; $677A: $01 $03 $80
    ret nc                                        ; $677D: $D0

    ld [bc], a                                    ; $677E: $02
    inc e                                         ; $677F: $1C
    ld b, b                                       ; $6780: $40
    ld [$317E], sp                                ; $6781: $08 $7E $31
    ret nc                                        ; $6784: $D0

    ld bc, $7F03                                  ; $6785: $01 $03 $7F
    ret nc                                        ; $6788: $D0

    ld [bc], a                                    ; $6789: $02
    dec de                                        ; $678A: $1B
    ld b, b                                       ; $678B: $40
    ld [$8342], sp                                ; $678C: $08 $42 $83
    inc bc                                        ; $678F: $03
    cp $00                                        ; $6790: $FE $00
    inc bc                                        ; $6792: $03
    nop                                           ; $6793: $00
    cp $02                                        ; $6794: $FE $02
    inc bc                                        ; $6796: $03
    nop                                           ; $6797: $00
    ld [bc], a                                    ; $6798: $02
    nop                                           ; $6799: $00
    inc bc                                        ; $679A: $03
    inc bc                                        ; $679B: $03
    cp $00                                        ; $679C: $FE $00
    inc bc                                        ; $679E: $03
    nop                                           ; $679F: $00
    cp $02                                        ; $67A0: $FE $02
    inc bc                                        ; $67A2: $03
    nop                                           ; $67A3: $00
    ld [bc], a                                    ; $67A4: $02
    nop                                           ; $67A5: $00
    inc bc                                        ; $67A6: $03
    nop                                           ; $67A7: $00
    ld d, a                                       ; $67A8: $57
    ld bc, $0242                                  ; $67A9: $01 $42 $02
    dec b                                         ; $67AC: $05
    jr nz, jr_01B_67AF                            ; $67AD: $20 $00

jr_01B_67AF:
    jr @+$47                                      ; $67AF: $18 $45

    dec de                                        ; $67B1: $1B
    dec h                                         ; $67B2: $25
    ld h, [hl]                                    ; $67B3: $66
    ld [bc], a                                    ; $67B4: $02
    dec b                                         ; $67B5: $05
    ld bc, $0027                                  ; $67B6: $01 $27 $00
    ld b, l                                       ; $67B9: $45
    dec de                                        ; $67BA: $1B
    dec a                                         ; $67BB: $3D
    ld l, e                                       ; $67BC: $6B
    and h                                         ; $67BD: $A4
    daa                                           ; $67BE: $27
    and c                                         ; $67BF: $A1
    ld [$1C00], sp                                ; $67C0: $08 $00 $1C
    cp d                                          ; $67C3: $BA
    pop de                                        ; $67C4: $D1
    sub e                                         ; $67C5: $93
    ld h, l                                       ; $67C6: $65
    cp [hl]                                       ; $67C7: $BE
    ld d, h                                       ; $67C8: $54
    ld c, a                                       ; $67C9: $4F
    ld h, h                                       ; $67CA: $64
    add a                                         ; $67CB: $87
    ld e, e                                       ; $67CC: $5B
    ld l, d                                       ; $67CD: $6A
    adc a                                         ; $67CE: $8F
    ld h, h                                       ; $67CF: $64
    ld a, h                                       ; $67D0: $7C
    ld a, h                                       ; $67D1: $7C
    ld c, l                                       ; $67D2: $4D
    ld a, h                                       ; $67D3: $7C
    ld h, [hl]                                    ; $67D4: $66
    ret nz                                        ; $67D5: $C0

    ld e, h                                       ; $67D6: $5C
    ld hl, $9069                                  ; $67D7: $21 $69 $90
    ld e, e                                       ; $67DA: $5B
    rra                                           ; $67DB: $1F
    inc e                                         ; $67DC: $1C
    dec b                                         ; $67DD: $05
    nop                                           ; $67DE: $00
    add c                                         ; $67DF: $81
    ld e, l                                       ; $67E0: $5D
    dec b                                         ; $67E1: $05
    dec b                                         ; $67E2: $05

jr_01B_67E3:
    ld d, l                                       ; $67E3: $55
    ret nc                                        ; $67E4: $D0

    nop                                           ; $67E5: $00
    jr nz, jr_01B_67E3                            ; $67E6: $20 $FB

    ld d, b                                       ; $67E8: $50
    ld [hl+], a                                   ; $67E9: $22
    dec b                                         ; $67EA: $05
    ld b, b                                       ; $67EB: $40
    dec bc                                        ; $67EC: $0B
    nop                                           ; $67ED: $00
    ld [hl-], a                                   ; $67EE: $32
    dec de                                        ; $67EF: $1B
    jp z, $8D52                                   ; $67F0: $CA $52 $8D

    ld b, c                                       ; $67F3: $41
    ld sp, $CD1B                                  ; $67F4: $31 $1B $CD
    ld h, a                                       ; $67F7: $67
    ld [hl+], a                                   ; $67F8: $22
    adc $40                                       ; $67F9: $CE $40
    nop                                           ; $67FB: $00
    add d                                         ; $67FC: $82
    sub h                                         ; $67FD: $94
    ld b, d                                       ; $67FE: $42
    ld [bc], a                                    ; $67FF: $02
    ld bc, $0005                                  ; $6800: $01 $05 $00
    daa                                           ; $6803: $27
    ld b, l                                       ; $6804: $45
    dec de                                        ; $6805: $1B
    push bc                                       ; $6806: $C5
    ld h, a                                       ; $6807: $67
    ld [bc], a                                    ; $6808: $02
    dec b                                         ; $6809: $05
    ld a, [bc]                                    ; $680A: $0A
    ld h, $00                                     ; $680B: $26 $00
    ld b, l                                       ; $680D: $45
    dec de                                        ; $680E: $1B
    sbc h                                         ; $680F: $9C
    ld l, l                                       ; $6810: $6D
    ld b, e                                       ; $6811: $43
    nop                                           ; $6812: $00
    dec h                                         ; $6813: $25
    and c                                         ; $6814: $A1
    db $10                                        ; $6815: $10
    dec de                                        ; $6816: $1B
    dec e                                         ; $6817: $1D
    ld l, b                                       ; $6818: $68
    ld b, l                                       ; $6819: $45
    dec de                                        ; $681A: $1B
    or a                                          ; $681B: $B7
    ld l, h                                       ; $681C: $6C
    ld b, d                                       ; $681D: $42
    ld b, e                                       ; $681E: $43
    nop                                           ; $681F: $00
    dec h                                         ; $6820: $25
    and c                                         ; $6821: $A1
    jr nz, @+$1D                                  ; $6822: $20 $1B

    ld a, [hl+]                                   ; $6824: $2A
    ld l, b                                       ; $6825: $68
    ld b, l                                       ; $6826: $45
    dec de                                        ; $6827: $1B
    ld bc, $426D                                  ; $6828: $01 $6D $42
    ld b, l                                       ; $682B: $45
    dec de                                        ; $682C: $1B
    ld c, e                                       ; $682D: $4B
    ld l, l                                       ; $682E: $6D
    and c                                         ; $682F: $A1
    add hl, hl                                    ; $6830: $29
    and c                                         ; $6831: $A1
    ld bc, $0422                                  ; $6832: $01 $22 $04
    ld b, b                                       ; $6835: $40
    ld a, [$9AFB]                                 ; $6836: $FA $FB $9A
    sub $42                                       ; $6839: $D6 $42
    and h                                         ; $683B: $A4
    ld [hl-], a                                   ; $683C: $32
    and e                                         ; $683D: $A3
    ld [$1200], sp                                ; $683E: $08 $00 $12
    ld l, [hl]                                    ; $6841: $6E
    pop de                                        ; $6842: $D1
    sbc e                                         ; $6843: $9B
    ld a, b                                       ; $6844: $78
    ld [hl], b                                    ; $6845: $70
    sbc a                                         ; $6846: $9F
    ld d, h                                       ; $6847: $54
    ld l, b                                       ; $6848: $68
    ld l, c                                       ; $6849: $69
    ld [hl], e                                    ; $684A: $73
    jr nz, jr_01B_68BC                            ; $684B: $20 $6F

    ld l, [hl]                                    ; $684D: $6E
    ld h, l                                       ; $684E: $65
    jr nz, jr_01B_68BD                            ; $684F: $20 $6C

    ld l, a                                       ; $6851: $6F
    ld l, a                                       ; $6852: $6F
    ld l, e                                       ; $6853: $6B
    ld [hl], e                                    ; $6854: $73
    rst $38                                       ; $6855: $FF
    ld [hl], d                                    ; $6856: $72
    ld h, l                                       ; $6857: $65
    ld h, c                                       ; $6858: $61
    ld h, h                                       ; $6859: $64
    ld a, c                                       ; $685A: $79
    jr nz, jr_01B_68D1                            ; $685B: $20 $74

    ld l, a                                       ; $685D: $6F
    jr nz, @+$72                                  ; $685E: $20 $70

    ld l, a                                       ; $6860: $6F
    ld [hl], b                                    ; $6861: $70
    ld l, $FE                                     ; $6862: $2E $FE
    ld c, c                                       ; $6864: $49
    daa                                           ; $6865: $27
    ld h, h                                       ; $6866: $64
    jr nz, jr_01B_68CB                            ; $6867: $20 $62

    ld h, l                                       ; $6869: $65
    ld [hl], h                                    ; $686A: $74
    ld [hl], h                                    ; $686B: $74
    ld h, l                                       ; $686C: $65
    ld [hl], d                                    ; $686D: $72
    jr nz, jr_01B_68D7                            ; $686E: $20 $67

    ld h, l                                       ; $6870: $65
    ld [hl], h                                    ; $6871: $74
    rst $38                                       ; $6872: $FF
    ld l, a                                       ; $6873: $6F
    ld [hl], l                                    ; $6874: $75
    ld [hl], h                                    ; $6875: $74
    jr nz, jr_01B_68E7                            ; $6876: $20 $6F

    ld h, [hl]                                    ; $6878: $66
    jr nz, @+$6A                                  ; $6879: $20 $68

    ld h, l                                       ; $687B: $65
    ld [hl], d                                    ; $687C: $72
    ld h, l                                       ; $687D: $65
    ld hl, $FDFE                                  ; $687E: $21 $FE $FD
    sbc d                                         ; $6881: $9A
    ld b, d                                       ; $6882: $42
    sbc e                                         ; $6883: $9B
    ld a, b                                       ; $6884: $78
    ld [hl], b                                    ; $6885: $70
    sbc a                                         ; $6886: $9F
    ld c, h                                       ; $6887: $4C
    ld l, a                                       ; $6888: $6F
    ld l, a                                       ; $6889: $6F
    ld l, e                                       ; $688A: $6B
    ld [hl], e                                    ; $688B: $73
    jr nz, jr_01B_68FA                            ; $688C: $20 $6C

    ld l, c                                       ; $688E: $69
    ld l, e                                       ; $688F: $6B
    ld h, l                                       ; $6890: $65
    rst $38                                       ; $6891: $FF
    ld l, b                                       ; $6892: $68
    ld h, l                                       ; $6893: $65
    jr nz, jr_01B_690D                            ; $6894: $20 $77

    ld h, c                                       ; $6896: $61
    ld [hl], e                                    ; $6897: $73
    jr nz, jr_01B_690E                            ; $6898: $20 $74

    ld [hl], d                                    ; $689A: $72
    ld a, c                                       ; $689B: $79
    ld l, c                                       ; $689C: $69
    ld l, [hl]                                    ; $689D: $6E
    ld h, a                                       ; $689E: $67
    cp $74                                        ; $689F: $FE $74
    ld l, a                                       ; $68A1: $6F
    jr nz, jr_01B_690B                            ; $68A2: $20 $67

    ld h, l                                       ; $68A4: $65
    ld [hl], h                                    ; $68A5: $74
    jr nz, jr_01B_690A                            ; $68A6: $20 $62

    ld h, c                                       ; $68A8: $61
    ld h, e                                       ; $68A9: $63
    ld l, e                                       ; $68AA: $6B
    rst $38                                       ; $68AB: $FF
    ld l, c                                       ; $68AC: $69
    ld l, [hl]                                    ; $68AD: $6E
    jr nz, jr_01B_6912                            ; $68AE: $20 $62

    ld h, l                                       ; $68B0: $65
    ld h, h                                       ; $68B1: $64
    ld l, $FE                                     ; $68B2: $2E $FE
    db $FD                                        ; $68B4: $FD
    sbc d                                         ; $68B5: $9A
    ld b, d                                       ; $68B6: $42
    sbc e                                         ; $68B7: $9B
    ld a, b                                       ; $68B8: $78
    ld [hl], b                                    ; $68B9: $70
    sbc a                                         ; $68BA: $9F
    ld c, a                                       ; $68BB: $4F

jr_01B_68BC:
    ld l, h                                       ; $68BC: $6C

jr_01B_68BD:
    ld h, h                                       ; $68BD: $64
    jr nz, jr_01B_6922                            ; $68BE: $20 $62

    ld l, a                                       ; $68C0: $6F
    ld l, [hl]                                    ; $68C1: $6E
    ld h, l                                       ; $68C2: $65
    ld [hl], e                                    ; $68C3: $73
    cp $65                                        ; $68C4: $FE $65
    ld l, l                                       ; $68C6: $6D
    ld l, c                                       ; $68C7: $69
    ld [hl], h                                    ; $68C8: $74
    ld [hl], h                                    ; $68C9: $74
    ld l, c                                       ; $68CA: $69

jr_01B_68CB:
    ld l, [hl]                                    ; $68CB: $6E
    ld h, a                                       ; $68CC: $67
    jr nz, jr_01B_6930                            ; $68CD: $20 $61

    cp $70                                        ; $68CF: $FE $70

jr_01B_68D1:
    ld h, c                                       ; $68D1: $61
    ld l, h                                       ; $68D2: $6C
    ld h, l                                       ; $68D3: $65
    jr nz, jr_01B_693D                            ; $68D4: $20 $67

    ld [hl], d                                    ; $68D6: $72

jr_01B_68D7:
    ld h, l                                       ; $68D7: $65
    ld h, l                                       ; $68D8: $65
    ld l, [hl]                                    ; $68D9: $6E
    ld l, c                                       ; $68DA: $69
    ld [hl], e                                    ; $68DB: $73
    ld l, b                                       ; $68DC: $68
    cp $61                                        ; $68DD: $FE $61
    ld [hl], l                                    ; $68DF: $75
    ld [hl], d                                    ; $68E0: $72
    ld h, c                                       ; $68E1: $61
    ld l, $2E                                     ; $68E2: $2E $2E
    ld l, $FE                                     ; $68E4: $2E $FE
    db $FD                                        ; $68E6: $FD

jr_01B_68E7:
    sbc d                                         ; $68E7: $9A
    ld b, d                                       ; $68E8: $42
    sbc e                                         ; $68E9: $9B
    ld a, b                                       ; $68EA: $78
    ld [hl], b                                    ; $68EB: $70
    sbc a                                         ; $68EC: $9F
    ld b, e                                       ; $68ED: $43
    ld l, a                                       ; $68EE: $6F
    ld l, h                                       ; $68EF: $6C
    ld h, h                                       ; $68F0: $64
    jr nz, jr_01B_6954                            ; $68F1: $20 $61

    ld [hl], e                                    ; $68F3: $73
    jr nz, jr_01B_696A                            ; $68F4: $20 $74

    ld l, b                                       ; $68F6: $68
    ld h, l                                       ; $68F7: $65
    rst $38                                       ; $68F8: $FF
    ld h, a                                       ; $68F9: $67

jr_01B_68FA:
    ld [hl], d                                    ; $68FA: $72
    ld h, c                                       ; $68FB: $61
    halt                                          ; $68FC: $76
    ld h, l                                       ; $68FD: $65
    ld l, $FE                                     ; $68FE: $2E $FE
    db $FD                                        ; $6900: $FD
    sbc d                                         ; $6901: $9A
    ld b, d                                       ; $6902: $42
    sbc e                                         ; $6903: $9B
    ld a, b                                       ; $6904: $78
    ld [hl], b                                    ; $6905: $70
    sbc a                                         ; $6906: $9F
    ld d, e                                       ; $6907: $53
    ld l, a                                       ; $6908: $6F
    ld l, l                                       ; $6909: $6D

jr_01B_690A:
    ld h, l                                       ; $690A: $65

jr_01B_690B:
    ld l, a                                       ; $690B: $6F
    ld l, [hl]                                    ; $690C: $6E

jr_01B_690D:
    ld h, l                                       ; $690D: $65

jr_01B_690E:
    daa                                           ; $690E: $27
    ld [hl], e                                    ; $690F: $73
    rst $38                                       ; $6910: $FF
    ld h, [hl]                                    ; $6911: $66

jr_01B_6912:
    ld l, c                                       ; $6912: $69
    ld l, [hl]                                    ; $6913: $6E
    ld h, c                                       ; $6914: $61
    ld l, h                                       ; $6915: $6C
    jr nz, jr_01B_698A                            ; $6916: $20 $72

    ld h, l                                       ; $6918: $65
    ld [hl], e                                    ; $6919: $73
    ld [hl], h                                    ; $691A: $74
    ld l, c                                       ; $691B: $69
    ld l, [hl]                                    ; $691C: $6E
    ld h, a                                       ; $691D: $67
    cp $72                                        ; $691E: $FE $72
    ld h, l                                       ; $6920: $65
    ld [hl], e                                    ; $6921: $73

jr_01B_6922:
    ld [hl], h                                    ; $6922: $74
    ld l, c                                       ; $6923: $69
    ld l, [hl]                                    ; $6924: $6E
    ld h, a                                       ; $6925: $67
    jr nz, jr_01B_6998                            ; $6926: $20 $70

    ld l, h                                       ; $6928: $6C
    ld h, c                                       ; $6929: $61
    ld h, e                                       ; $692A: $63
    ld h, l                                       ; $692B: $65
    ld l, $FE                                     ; $692C: $2E $FE
    db $FD                                        ; $692E: $FD
    sbc d                                         ; $692F: $9A

jr_01B_6930:
    ld b, d                                       ; $6930: $42
    sbc e                                         ; $6931: $9B
    ld a, b                                       ; $6932: $78
    ld [hl], b                                    ; $6933: $70
    sbc a                                         ; $6934: $9F
    ld l, $2E                                     ; $6935: $2E $2E
    ld l, $FE                                     ; $6937: $2E $FE
    db $FD                                        ; $6939: $FD
    sbc d                                         ; $693A: $9A
    ld b, d                                       ; $693B: $42
    sbc e                                         ; $693C: $9B

jr_01B_693D:
    ld a, b                                       ; $693D: $78
    ld [hl], b                                    ; $693E: $70
    sbc a                                         ; $693F: $9F
    ld l, $2E                                     ; $6940: $2E $2E
    ld l, $FE                                     ; $6942: $2E $FE
    db $FD                                        ; $6944: $FD
    sbc d                                         ; $6945: $9A
    ld b, d                                       ; $6946: $42
    sbc e                                         ; $6947: $9B
    ld a, b                                       ; $6948: $78
    ld [hl], b                                    ; $6949: $70
    sbc a                                         ; $694A: $9F
    ld d, h                                       ; $694B: $54
    ld l, b                                       ; $694C: $68
    ld h, l                                       ; $694D: $65
    ld [hl], d                                    ; $694E: $72
    ld h, l                                       ; $694F: $65
    daa                                           ; $6950: $27
    ld [hl], e                                    ; $6951: $73
    jr nz, jr_01B_69B5                            ; $6952: $20 $61

jr_01B_6954:
    rst $38                                       ; $6954: $FF
    ld l, [hl]                                    ; $6955: $6E
    ld l, a                                       ; $6956: $6F
    ld [hl], h                                    ; $6957: $74
    ld h, l                                       ; $6958: $65
    jr nz, jr_01B_69C3                            ; $6959: $20 $68

    ld h, l                                       ; $695B: $65
    ld [hl], d                                    ; $695C: $72
    ld h, l                                       ; $695D: $65
    ld l, $FE                                     ; $695E: $2E $FE
    ld c, b                                       ; $6960: $48
    ld l, l                                       ; $6961: $6D
    ld l, l                                       ; $6962: $6D
    ld l, $2E                                     ; $6963: $2E $2E
    ld l, $FE                                     ; $6965: $2E $FE
    ld c, c                                       ; $6967: $49
    ld [hl], h                                    ; $6968: $74
    daa                                           ; $6969: $27

jr_01B_696A:
    ld [hl], e                                    ; $696A: $73
    jr nz, jr_01B_69D0                            ; $696B: $20 $63

    ld l, a                                       ; $696D: $6F
    halt                                          ; $696E: $76
    ld h, l                                       ; $696F: $65
    ld [hl], d                                    ; $6970: $72
    ld h, l                                       ; $6971: $65
    ld h, h                                       ; $6972: $64
    rst $38                                       ; $6973: $FF
    ld l, c                                       ; $6974: $69
    ld l, [hl]                                    ; $6975: $6E
    jr nz, jr_01B_69EF                            ; $6976: $20 $77

    ld h, l                                       ; $6978: $65
    ld l, c                                       ; $6979: $69
    ld [hl], d                                    ; $697A: $72
    ld h, h                                       ; $697B: $64
    cp $73                                        ; $697C: $FE $73
    ld [hl], c                                    ; $697E: $71
    ld [hl], l                                    ; $697F: $75
    ld l, c                                       ; $6980: $69
    ld h, a                                       ; $6981: $67
    ld h, a                                       ; $6982: $67
    ld l, h                                       ; $6983: $6C
    ld h, l                                       ; $6984: $65
    ld [hl], e                                    ; $6985: $73
    jr nz, jr_01B_69E9                            ; $6986: $20 $61

    ld l, [hl]                                    ; $6988: $6E
    ld h, h                                       ; $6989: $64

jr_01B_698A:
    rst $38                                       ; $698A: $FF
    ld h, h                                       ; $698B: $64
    ld l, a                                       ; $698C: $6F
    ld [hl], h                                    ; $698D: $74
    ld [hl], e                                    ; $698E: $73
    ld l, $FE                                     ; $698F: $2E $FE
    db $FD                                        ; $6991: $FD
    sbc d                                         ; $6992: $9A
    ld b, d                                       ; $6993: $42
    sbc e                                         ; $6994: $9B
    ld a, c                                       ; $6995: $79
    ld d, a                                       ; $6996: $57
    sbc a                                         ; $6997: $9F

jr_01B_6998:
    ld b, h                                       ; $6998: $44
    ld l, a                                       ; $6999: $6F
    ld l, [hl]                                    ; $699A: $6E
    daa                                           ; $699B: $27
    ld [hl], h                                    ; $699C: $74
    jr nz, @+$6A                                  ; $699D: $20 $68

    ld [hl], l                                    ; $699F: $75
    ld [hl], d                                    ; $69A0: $72
    ld [hl], h                                    ; $69A1: $74
    jr nz, jr_01B_6A11                            ; $69A2: $20 $6D

    ld h, l                                       ; $69A4: $65
    ld hl, $FDFE                                  ; $69A5: $21 $FE $FD
    sbc e                                         ; $69A8: $9B
    ld a, b                                       ; $69A9: $78
    ld [hl], b                                    ; $69AA: $70
    sbc a                                         ; $69AB: $9F
    ld d, e                                       ; $69AC: $53
    ld l, b                                       ; $69AD: $68
    ld h, l                                       ; $69AE: $65
    ld h, l                                       ; $69AF: $65
    ld [hl], e                                    ; $69B0: $73
    ld l, b                                       ; $69B1: $68
    ld l, $20                                     ; $69B2: $2E $20
    ld c, c                                       ; $69B4: $49

jr_01B_69B5:
    daa                                           ; $69B5: $27
    ld l, l                                       ; $69B6: $6D
    jr nz, jr_01B_6A27                            ; $69B7: $20 $6E

    ld l, a                                       ; $69B9: $6F
    ld [hl], h                                    ; $69BA: $74
    rst $38                                       ; $69BB: $FF
    ld l, b                                       ; $69BC: $68
    ld h, l                                       ; $69BD: $65
    ld [hl], d                                    ; $69BE: $72
    ld h, l                                       ; $69BF: $65
    jr nz, jr_01B_6A36                            ; $69C0: $20 $74

    ld l, a                                       ; $69C2: $6F

jr_01B_69C3:
    jr nz, jr_01B_6A2D                            ; $69C3: $20 $68

    ld [hl], l                                    ; $69C5: $75
    ld [hl], d                                    ; $69C6: $72
    ld [hl], h                                    ; $69C7: $74
    cp $79                                        ; $69C8: $FE $79
    ld l, a                                       ; $69CA: $6F
    ld [hl], l                                    ; $69CB: $75
    inc l                                         ; $69CC: $2C
    jr nz, jr_01B_6A18                            ; $69CD: $20 $49

    daa                                           ; $69CF: $27

jr_01B_69D0:
    ld l, l                                       ; $69D0: $6D
    jr nz, jr_01B_6A3B                            ; $69D1: $20 $68

    ld h, l                                       ; $69D3: $65
    ld [hl], d                                    ; $69D4: $72
    ld h, l                                       ; $69D5: $65
    rst $38                                       ; $69D6: $FF
    ld [hl], h                                    ; $69D7: $74
    ld l, a                                       ; $69D8: $6F
    jr nz, jr_01B_6A4D                            ; $69D9: $20 $72

    ld h, l                                       ; $69DB: $65
    ld [hl], e                                    ; $69DC: $73
    ld h, e                                       ; $69DD: $63
    ld [hl], l                                    ; $69DE: $75
    ld h, l                                       ; $69DF: $65
    jr nz, jr_01B_6A5B                            ; $69E0: $20 $79

    ld l, a                                       ; $69E2: $6F
    ld [hl], l                                    ; $69E3: $75
    ld hl, $FDFE                                  ; $69E4: $21 $FE $FD
    sbc e                                         ; $69E7: $9B
    ld a, c                                       ; $69E8: $79

jr_01B_69E9:
    ld d, a                                       ; $69E9: $57
    sbc a                                         ; $69EA: $9F
    ld d, a                                       ; $69EB: $57
    ld h, l                                       ; $69EC: $65
    ld l, h                                       ; $69ED: $6C
    ld l, h                                       ; $69EE: $6C

jr_01B_69EF:
    inc l                                         ; $69EF: $2C
    jr nz, jr_01B_6A66                            ; $69F0: $20 $74

    ld l, b                                       ; $69F2: $68
    ld h, l                                       ; $69F3: $65
    ld l, [hl]                                    ; $69F4: $6E
    inc l                                         ; $69F5: $2C
    jr nz, jr_01B_6A6B                            ; $69F6: $20 $73

    ld h, l                                       ; $69F8: $65
    ld h, l                                       ; $69F9: $65
    rst $38                                       ; $69FA: $FF
    ld a, c                                       ; $69FB: $79
    ld l, a                                       ; $69FC: $6F
    ld [hl], l                                    ; $69FD: $75
    jr nz, jr_01B_6A61                            ; $69FE: $20 $61

    ld [hl], d                                    ; $6A00: $72
    ld l, a                                       ; $6A01: $6F
    ld [hl], l                                    ; $6A02: $75
    ld l, [hl]                                    ; $6A03: $6E
    ld h, h                                       ; $6A04: $64
    ld hl, $FDFE                                  ; $6A05: $21 $FE $FD
    sbc d                                         ; $6A08: $9A
    ld e, b                                       ; $6A09: $58
    ld bc, $9B42                                  ; $6A0A: $01 $42 $9B
    add hl, de                                    ; $6A0D: $19
    ld c, [hl]                                    ; $6A0E: $4E
    sbc a                                         ; $6A0F: $9F
    ld b, h                                       ; $6A10: $44

jr_01B_6A11:
    ld l, a                                       ; $6A11: $6F
    ld l, [hl]                                    ; $6A12: $6E
    daa                                           ; $6A13: $27
    ld [hl], h                                    ; $6A14: $74
    jr nz, @+$6A                                  ; $6A15: $20 $68

    ld [hl], l                                    ; $6A17: $75

jr_01B_6A18:
    ld [hl], d                                    ; $6A18: $72
    ld [hl], h                                    ; $6A19: $74
    jr nz, jr_01B_6A89                            ; $6A1A: $20 $6D

    ld h, l                                       ; $6A1C: $65
    ld hl, $FDFE                                  ; $6A1D: $21 $FE $FD
    sbc e                                         ; $6A20: $9B
    ld a, b                                       ; $6A21: $78
    ld [hl], b                                    ; $6A22: $70
    sbc a                                         ; $6A23: $9F
    ld d, e                                       ; $6A24: $53
    ld l, b                                       ; $6A25: $68
    ld h, l                                       ; $6A26: $65

jr_01B_6A27:
    ld h, l                                       ; $6A27: $65
    ld [hl], e                                    ; $6A28: $73
    ld l, b                                       ; $6A29: $68
    ld l, $20                                     ; $6A2A: $2E $20
    ld c, c                                       ; $6A2C: $49

jr_01B_6A2D:
    daa                                           ; $6A2D: $27
    ld l, l                                       ; $6A2E: $6D
    jr nz, jr_01B_6A9F                            ; $6A2F: $20 $6E

    ld l, a                                       ; $6A31: $6F
    ld [hl], h                                    ; $6A32: $74
    rst $38                                       ; $6A33: $FF
    ld l, b                                       ; $6A34: $68
    ld h, l                                       ; $6A35: $65

jr_01B_6A36:
    ld [hl], d                                    ; $6A36: $72
    ld h, l                                       ; $6A37: $65
    jr nz, jr_01B_6AAE                            ; $6A38: $20 $74

    ld l, a                                       ; $6A3A: $6F

jr_01B_6A3B:
    jr nz, @+$6A                                  ; $6A3B: $20 $68

    ld [hl], l                                    ; $6A3D: $75
    ld [hl], d                                    ; $6A3E: $72
    ld [hl], h                                    ; $6A3F: $74
    cp $79                                        ; $6A40: $FE $79
    ld l, a                                       ; $6A42: $6F
    ld [hl], l                                    ; $6A43: $75
    inc l                                         ; $6A44: $2C
    jr nz, jr_01B_6A90                            ; $6A45: $20 $49

    daa                                           ; $6A47: $27
    ld l, l                                       ; $6A48: $6D
    jr nz, jr_01B_6AB3                            ; $6A49: $20 $68

    ld h, l                                       ; $6A4B: $65
    ld [hl], d                                    ; $6A4C: $72

jr_01B_6A4D:
    ld h, l                                       ; $6A4D: $65
    rst $38                                       ; $6A4E: $FF
    ld [hl], h                                    ; $6A4F: $74
    ld l, a                                       ; $6A50: $6F
    jr nz, jr_01B_6AC5                            ; $6A51: $20 $72

    ld h, l                                       ; $6A53: $65
    ld [hl], e                                    ; $6A54: $73
    ld h, e                                       ; $6A55: $63
    ld [hl], l                                    ; $6A56: $75
    ld h, l                                       ; $6A57: $65
    jr nz, jr_01B_6AD3                            ; $6A58: $20 $79

    ld l, a                                       ; $6A5A: $6F

jr_01B_6A5B:
    ld [hl], l                                    ; $6A5B: $75
    ld hl, $FDFE                                  ; $6A5C: $21 $FE $FD
    sbc e                                         ; $6A5F: $9B
    add hl, de                                    ; $6A60: $19

jr_01B_6A61:
    ld c, [hl]                                    ; $6A61: $4E
    sbc a                                         ; $6A62: $9F
    ld d, a                                       ; $6A63: $57
    ld h, l                                       ; $6A64: $65
    ld l, h                                       ; $6A65: $6C

jr_01B_6A66:
    ld l, h                                       ; $6A66: $6C
    inc l                                         ; $6A67: $2C
    jr nz, jr_01B_6ADE                            ; $6A68: $20 $74

    ld l, b                                       ; $6A6A: $68

jr_01B_6A6B:
    ld h, l                                       ; $6A6B: $65
    ld l, [hl]                                    ; $6A6C: $6E
    inc l                                         ; $6A6D: $2C
    jr nz, jr_01B_6AE3                            ; $6A6E: $20 $73

    ld h, l                                       ; $6A70: $65
    ld h, l                                       ; $6A71: $65
    rst $38                                       ; $6A72: $FF
    ld a, c                                       ; $6A73: $79
    ld l, a                                       ; $6A74: $6F
    ld [hl], l                                    ; $6A75: $75
    jr nz, jr_01B_6AD9                            ; $6A76: $20 $61

    ld [hl], d                                    ; $6A78: $72
    ld l, a                                       ; $6A79: $6F
    ld [hl], l                                    ; $6A7A: $75
    ld l, [hl]                                    ; $6A7B: $6E
    ld h, h                                       ; $6A7C: $64
    ld hl, $FDFE                                  ; $6A7D: $21 $FE $FD
    sbc d                                         ; $6A80: $9A
    ld e, b                                       ; $6A81: $58
    ld bc, $9B42                                  ; $6A82: $01 $42 $9B
    ld a, b                                       ; $6A85: $78
    ld [hl], b                                    ; $6A86: $70
    sbc a                                         ; $6A87: $9F
    dec l                                         ; $6A88: $2D

jr_01B_6A89:
    ld c, c                                       ; $6A89: $49
    ld d, h                                       ; $6A8A: $54
    daa                                           ; $6A8B: $27
    ld d, e                                       ; $6A8C: $53
    jr nz, @+$4E                                  ; $6A8D: $20 $4C

    ld c, a                                       ; $6A8F: $4F

jr_01B_6A90:
    ld b, e                                       ; $6A90: $43
    ld c, e                                       ; $6A91: $4B
    ld b, l                                       ; $6A92: $45
    ld b, h                                       ; $6A93: $44
    dec l                                         ; $6A94: $2D
    cp $FD                                        ; $6A95: $FE $FD
    sbc d                                         ; $6A97: $9A
    ld e, b                                       ; $6A98: $58
    inc bc                                        ; $6A99: $03
    ld b, d                                       ; $6A9A: $42
    sbc e                                         ; $6A9B: $9B
    ld a, b                                       ; $6A9C: $78
    ld [hl], b                                    ; $6A9D: $70
    sbc a                                         ; $6A9E: $9F

jr_01B_6A9F:
    dec l                                         ; $6A9F: $2D
    ld d, h                                       ; $6AA0: $54
    ld c, a                                       ; $6AA1: $4F
    ld c, [hl]                                    ; $6AA2: $4E
    ld e, c                                       ; $6AA3: $59
    jr nz, jr_01B_6AFB                            ; $6AA4: $20 $55

    ld c, [hl]                                    ; $6AA6: $4E
    ld c, h                                       ; $6AA7: $4C
    ld c, a                                       ; $6AA8: $4F
    ld b, e                                       ; $6AA9: $43
    ld c, e                                       ; $6AAA: $4B
    ld d, e                                       ; $6AAB: $53
    rst $38                                       ; $6AAC: $FF
    ld d, h                                       ; $6AAD: $54

jr_01B_6AAE:
    ld c, b                                       ; $6AAE: $48
    ld b, l                                       ; $6AAF: $45
    jr nz, jr_01B_6AF6                            ; $6AB0: $20 $44

    ld c, a                                       ; $6AB2: $4F

jr_01B_6AB3:
    ld c, a                                       ; $6AB3: $4F
    ld d, d                                       ; $6AB4: $52
    ld l, $20                                     ; $6AB5: $2E $20
    ld d, h                                       ; $6AB7: $54
    ld c, b                                       ; $6AB8: $48
    ld b, l                                       ; $6AB9: $45
    cp $4B                                        ; $6ABA: $FE $4B
    ld b, l                                       ; $6ABC: $45
    ld e, c                                       ; $6ABD: $59
    jr nz, jr_01B_6B0A                            ; $6ABE: $20 $4A

    ld b, c                                       ; $6AC0: $41
    ld c, l                                       ; $6AC1: $4D
    ld d, e                                       ; $6AC2: $53
    jr nz, jr_01B_6B06                            ; $6AC3: $20 $41

jr_01B_6AC5:
    ld c, [hl]                                    ; $6AC5: $4E
    ld b, h                                       ; $6AC6: $44
    rst $38                                       ; $6AC7: $FF
    ld b, d                                       ; $6AC8: $42
    ld d, d                                       ; $6AC9: $52
    ld b, l                                       ; $6ACA: $45
    ld b, c                                       ; $6ACB: $41
    ld c, e                                       ; $6ACC: $4B
    ld d, e                                       ; $6ACD: $53
    jr nz, jr_01B_6B19                            ; $6ACE: $20 $49

    ld c, [hl]                                    ; $6AD0: $4E
    jr nz, jr_01B_6B27                            ; $6AD1: $20 $54

jr_01B_6AD3:
    ld c, b                                       ; $6AD3: $48
    ld b, l                                       ; $6AD4: $45
    cp $4C                                        ; $6AD5: $FE $4C
    ld c, a                                       ; $6AD7: $4F
    ld b, e                                       ; $6AD8: $43

jr_01B_6AD9:
    ld c, e                                       ; $6AD9: $4B
    cp $FD                                        ; $6ADA: $FE $FD
    sbc d                                         ; $6ADC: $9A
    ld e, b                                       ; $6ADD: $58

jr_01B_6ADE:
    ld bc, $9B42                                  ; $6ADE: $01 $42 $9B
    ld a, b                                       ; $6AE1: $78
    ld [hl], b                                    ; $6AE2: $70

jr_01B_6AE3:
    sbc a                                         ; $6AE3: $9F
    ld c, h                                       ; $6AE4: $4C
    ld l, a                                       ; $6AE5: $6F
    ld l, a                                       ; $6AE6: $6F
    ld l, e                                       ; $6AE7: $6B
    ld [hl], e                                    ; $6AE8: $73
    jr nz, jr_01B_6B57                            ; $6AE9: $20 $6C

    ld l, c                                       ; $6AEB: $69
    ld l, e                                       ; $6AEC: $6B
    ld h, l                                       ; $6AED: $65
    jr nz, jr_01B_6B64                            ; $6AEE: $20 $74

    ld l, b                                       ; $6AF0: $68
    ld h, l                                       ; $6AF1: $65
    ld a, c                                       ; $6AF2: $79
    rst $38                                       ; $6AF3: $FF
    ld h, a                                       ; $6AF4: $67
    ld l, a                                       ; $6AF5: $6F

jr_01B_6AF6:
    ld [hl], h                                    ; $6AF6: $74
    jr nz, jr_01B_6B66                            ; $6AF7: $20 $6D

    ld l, a                                       ; $6AF9: $6F
    ld [hl], d                                    ; $6AFA: $72

jr_01B_6AFB:
    ld h, l                                       ; $6AFB: $65
    jr nz, @+$76                                  ; $6AFC: $20 $74

    ld l, b                                       ; $6AFE: $68
    ld h, c                                       ; $6AFF: $61
    ld l, [hl]                                    ; $6B00: $6E
    cp $74                                        ; $6B01: $FE $74
    ld l, b                                       ; $6B03: $68
    ld h, l                                       ; $6B04: $65
    ld a, c                                       ; $6B05: $79

jr_01B_6B06:
    jr nz, @+$67                                  ; $6B06: $20 $65

    ld a, b                                       ; $6B08: $78
    ld [hl], b                                    ; $6B09: $70

jr_01B_6B0A:
    ld h, l                                       ; $6B0A: $65
    ld h, e                                       ; $6B0B: $63
    ld [hl], h                                    ; $6B0C: $74
    ld h, l                                       ; $6B0D: $65
    ld h, h                                       ; $6B0E: $64
    ld l, $FE                                     ; $6B0F: $2E $FE
    ld b, e                                       ; $6B11: $43
    ld [hl], l                                    ; $6B12: $75
    ld [hl], d                                    ; $6B13: $72
    ld l, c                                       ; $6B14: $69
    ld l, a                                       ; $6B15: $6F
    ld [hl], e                                    ; $6B16: $73
    ld l, c                                       ; $6B17: $69
    ld [hl], h                                    ; $6B18: $74

jr_01B_6B19:
    ld a, c                                       ; $6B19: $79
    jr nz, jr_01B_6B7F                            ; $6B1A: $20 $63

    ld h, c                                       ; $6B1C: $61
    ld l, [hl]                                    ; $6B1D: $6E
    rst $38                                       ; $6B1E: $FF
    ld l, b                                       ; $6B1F: $68
    ld h, c                                       ; $6B20: $61
    halt                                          ; $6B21: $76
    ld h, l                                       ; $6B22: $65
    jr nz, jr_01B_6B8E                            ; $6B23: $20 $69

    ld [hl], h                                    ; $6B25: $74
    ld [hl], e                                    ; $6B26: $73

jr_01B_6B27:
    cp $63                                        ; $6B27: $FE $63
    ld l, a                                       ; $6B29: $6F
    ld l, [hl]                                    ; $6B2A: $6E
    ld [hl], e                                    ; $6B2B: $73
    ld h, l                                       ; $6B2C: $65
    ld [hl], c                                    ; $6B2D: $71

jr_01B_6B2E:
    ld [hl], l                                    ; $6B2E: $75
    ld h, l                                       ; $6B2F: $65
    ld l, [hl]                                    ; $6B30: $6E
    ld h, e                                       ; $6B31: $63
    ld h, l                                       ; $6B32: $65
    ld [hl], e                                    ; $6B33: $73
    ld l, $2E                                     ; $6B34: $2E $2E
    ld l, $FE                                     ; $6B36: $2E $FE
    db $FD                                        ; $6B38: $FD
    sbc d                                         ; $6B39: $9A
    ld e, b                                       ; $6B3A: $58
    dec b                                         ; $6B3B: $05
    ld b, d                                       ; $6B3C: $42
    sub e                                         ; $6B3D: $93
    ld h, l                                       ; $6B3E: $65
    call Call_01B_4F54                            ; $6B3F: $CD $54 $4F
    ld h, h                                       ; $6B42: $64
    sub l                                         ; $6B43: $95
    ld e, e                                       ; $6B44: $5B
    ld l, c                                       ; $6B45: $69
    xor d                                         ; $6B46: $AA
    ld e, e                                       ; $6B47: $5B
    ld l, d                                       ; $6B48: $6A
    adc a                                         ; $6B49: $8F
    ld h, h                                       ; $6B4A: $64
    ld a, h                                       ; $6B4B: $7C
    ld a, h                                       ; $6B4C: $7C
    ld c, l                                       ; $6B4D: $4D
    ld a, h                                       ; $6B4E: $7C
    rra                                           ; $6B4F: $1F
    inc e                                         ; $6B50: $1C
    ld h, [hl]                                    ; $6B51: $66
    ret nz                                        ; $6B52: $C0

    ld e, h                                       ; $6B53: $5C
    ld hl, $0005                                  ; $6B54: $21 $05 $00

jr_01B_6B57:
    add c                                         ; $6B57: $81
    ld e, l                                       ; $6B58: $5D
    dec b                                         ; $6B59: $05
    dec b                                         ; $6B5A: $05

jr_01B_6B5B:
    jr jr_01B_6B2E                                ; $6B5B: $18 $D1

    nop                                           ; $6B5D: $00
    jr nz, jr_01B_6B5B                            ; $6B5E: $20 $FB

    ld d, b                                       ; $6B60: $50
    ld [hl+], a                                   ; $6B61: $22
    dec b                                         ; $6B62: $05
    ld b, b                                       ; $6B63: $40

jr_01B_6B64:
    dec bc                                        ; $6B64: $0B
    nop                                           ; $6B65: $00

jr_01B_6B66:
    ld [hl-], a                                   ; $6B66: $32
    dec de                                        ; $6B67: $1B
    jp z, $8D52                                   ; $6B68: $CA $52 $8D

    ld b, c                                       ; $6B6B: $41
    ld sp, $481B                                  ; $6B6C: $31 $1B $48
    ld l, e                                       ; $6B6F: $6B
    ld [hl+], a                                   ; $6B70: $22
    adc $40                                       ; $6B71: $CE $40
    nop                                           ; $6B73: $00
    add d                                         ; $6B74: $82
    ld b, e                                       ; $6B75: $43
    ld a, [bc]                                    ; $6B76: $0A
    nop                                           ; $6B77: $00
    dec h                                         ; $6B78: $25
    and c                                         ; $6B79: $A1
    db $10                                        ; $6B7A: $10
    dec de                                        ; $6B7B: $1B
    add a                                         ; $6B7C: $87
    ld l, e                                       ; $6B7D: $6B
    ld a, [hl]                                    ; $6B7E: $7E

jr_01B_6B7F:
    db $EC                                        ; $6B7F: $EC
    push de                                       ; $6B80: $D5
    ld [bc], a                                    ; $6B81: $02
    ld [bc], a                                    ; $6B82: $02
    db $DD                                        ; $6B83: $DD
    push de                                       ; $6B84: $D5
    dec de                                        ; $6B85: $1B
    db $10                                        ; $6B86: $10
    ld b, e                                       ; $6B87: $43
    ld a, [bc]                                    ; $6B88: $0A
    nop                                           ; $6B89: $00
    dec h                                         ; $6B8A: $25
    and c                                         ; $6B8B: $A1
    jr nz, @+$1D                                  ; $6B8C: $20 $1B

jr_01B_6B8E:
    sbc c                                         ; $6B8E: $99
    ld l, e                                       ; $6B8F: $6B
    ld a, [hl]                                    ; $6B90: $7E
    db $EC                                        ; $6B91: $EC
    push de                                       ; $6B92: $D5
    ld [bc], a                                    ; $6B93: $02
    ld [bc], a                                    ; $6B94: $02
    ld sp, hl                                     ; $6B95: $F9
    push de                                       ; $6B96: $D5
    dec de                                        ; $6B97: $1B
    inc l                                         ; $6B98: $2C
    ld b, e                                       ; $6B99: $43
    nop                                           ; $6B9A: $00
    and [hl]                                      ; $6B9B: $A6
    and c                                         ; $6B9C: $A1
    jr nz, jr_01B_6BBA                            ; $6B9D: $20 $1B

    cp d                                          ; $6B9F: $BA
    ld l, e                                       ; $6BA0: $6B
    dec b                                         ; $6BA1: $05
    ld [bc], a                                    ; $6BA2: $02
    dec b                                         ; $6BA3: $05
    ld h, h                                       ; $6BA4: $64
    db $10                                        ; $6BA5: $10
    rra                                           ; $6BA6: $1F
    cp c                                          ; $6BA7: $B9
    sub $00                                       ; $6BA8: $D6 $00
    ld de, $478C                                  ; $6BAA: $11 $8C $47
    dec de                                        ; $6BAD: $1B
    db $DD                                        ; $6BAE: $DD
    ld l, e                                       ; $6BAF: $6B
    dec bc                                        ; $6BB0: $0B
    ld [bc], a                                    ; $6BB1: $02
    ld l, e                                       ; $6BB2: $6B
    jr nc, jr_01B_6BC0                            ; $6BB3: $30 $0B

    ret nc                                        ; $6BB5: $D0

    ld c, c                                       ; $6BB6: $49
    nop                                           ; $6BB7: $00
    add b                                         ; $6BB8: $80
    nop                                           ; $6BB9: $00

jr_01B_6BBA:
    ld b, e                                       ; $6BBA: $43
    nop                                           ; $6BBB: $00
    and [hl]                                      ; $6BBC: $A6
    and c                                         ; $6BBD: $A1
    ld b, b                                       ; $6BBE: $40
    dec de                                        ; $6BBF: $1B

jr_01B_6BC0:
    db $DB                                        ; $6BC0: $DB
    ld l, e                                       ; $6BC1: $6B
    dec b                                         ; $6BC2: $05
    inc bc                                        ; $6BC3: $03
    dec b                                         ; $6BC4: $05
    ld h, h                                       ; $6BC5: $64
    dec l                                         ; $6BC6: $2D
    rra                                           ; $6BC7: $1F
    sub $D6                                       ; $6BC8: $D6 $D6
    jr nc, jr_01B_6BDD                            ; $6BCA: $30 $11

    rla                                           ; $6BCC: $17
    ld c, d                                       ; $6BCD: $4A
    dec de                                        ; $6BCE: $1B
    ld c, d                                       ; $6BCF: $4A
    ld l, h                                       ; $6BD0: $6C
    dec bc                                        ; $6BD1: $0B
    inc bc                                        ; $6BD2: $03
    ld l, e                                       ; $6BD3: $6B
    jr nc, @+$0D                                  ; $6BD4: $30 $0B

    add b                                         ; $6BD6: $80
    ld c, h                                       ; $6BD7: $4C
    nop                                           ; $6BD8: $00
    add e                                         ; $6BD9: $83
    nop                                           ; $6BDA: $00
    sub h                                         ; $6BDB: $94
    ld b, d                                       ; $6BDC: $42

jr_01B_6BDD:
    xor a                                         ; $6BDD: $AF
    and [hl]                                      ; $6BDE: $A6
    and c                                         ; $6BDF: $A1
    jr nz, jr_01B_6C3D                            ; $6BE0: $20 $5B

    dec de                                        ; $6BE2: $1B
    sub h                                         ; $6BE3: $94
    ld l, c                                       ; $6BE4: $69
    ld c, e                                       ; $6BE5: $4B
    inc bc                                        ; $6BE6: $03

jr_01B_6BE7:
    dec de                                        ; $6BE7: $1B
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    db $FC                                        ; $6BEA: $FC
    ld l, e                                       ; $6BEB: $6B
    dec de                                        ; $6BEC: $1B
    inc bc                                        ; $6BED: $03
    nop                                           ; $6BEE: $00
    ld b, $6C                                     ; $6BEF: $06 $6C
    dec de                                        ; $6BF1: $1B
    ld [bc], a                                    ; $6BF2: $02
    nop                                           ; $6BF3: $00
    ld a, [de]                                    ; $6BF4: $1A
    ld l, h                                       ; $6BF5: $6C
    dec de                                        ; $6BF6: $1B
    ld bc, $1000                                  ; $6BF7: $01 $00 $10
    ld l, h                                       ; $6BFA: $6C
    rst $38                                       ; $6BFB: $FF

jr_01B_6BFC:
    inc d                                         ; $6BFC: $14
    ld de, $478C                                  ; $6BFD: $11 $8C $47
    ld h, d                                       ; $6C00: $62
    ld bc, $1B45                                  ; $6C01: $01 $45 $1B
    dec [hl]                                      ; $6C04: $35
    ld l, h                                       ; $6C05: $6C
    inc d                                         ; $6C06: $14
    ld de, $4796                                  ; $6C07: $11 $96 $47
    ld h, d                                       ; $6C0A: $62
    ld bc, $1B45                                  ; $6C0B: $01 $45 $1B
    inc h                                         ; $6C0E: $24
    ld l, h                                       ; $6C0F: $6C
    inc d                                         ; $6C10: $14
    ld de, $47A0                                  ; $6C11: $11 $A0 $47
    ld h, d                                       ; $6C14: $62
    ld bc, $1B45                                  ; $6C15: $01 $45 $1B
    inc h                                         ; $6C18: $24
    ld l, h                                       ; $6C19: $6C
    inc d                                         ; $6C1A: $14
    ld de, $47AA                                  ; $6C1B: $11 $AA $47
    ld h, d                                       ; $6C1E: $62
    ld bc, $1B45                                  ; $6C1F: $01 $45 $1B
    inc h                                         ; $6C22: $24
    ld l, h                                       ; $6C23: $6C
    dec d                                         ; $6C24: $15
    ld de, $474C                                  ; $6C25: $11 $4C $47
    jr nz, jr_01B_6C2A                            ; $6C28: $20 $00

jr_01B_6C2A:
    rlca                                          ; $6C2A: $07
    nop                                           ; $6C2B: $00
    add c                                         ; $6C2C: $81
    ld e, l                                       ; $6C2D: $5D
    add hl, bc                                    ; $6C2E: $09
    nop                                           ; $6C2F: $00
    jr nz, jr_01B_6BE7                            ; $6C30: $20 $B5

    ld d, b                                       ; $6C32: $50
    add hl, de                                    ; $6C33: $19
    ld b, d                                       ; $6C34: $42
    dec d                                         ; $6C35: $15
    ld de, $477C                                  ; $6C36: $11 $7C $47
    ld [$4C11], sp                                ; $6C39: $08 $11 $4C
    ld b, a                                       ; $6C3C: $47

jr_01B_6C3D:
    jr jr_01B_6C3F                                ; $6C3D: $18 $00

jr_01B_6C3F:
    rlca                                          ; $6C3F: $07
    nop                                           ; $6C40: $00
    add c                                         ; $6C41: $81
    ld e, l                                       ; $6C42: $5D
    add hl, bc                                    ; $6C43: $09
    nop                                           ; $6C44: $00
    jr nz, jr_01B_6BFC                            ; $6C45: $20 $B5

    ld d, b                                       ; $6C47: $50
    add hl, de                                    ; $6C48: $19
    ld b, d                                       ; $6C49: $42
    xor a                                         ; $6C4A: $AF
    and [hl]                                      ; $6C4B: $A6
    and c                                         ; $6C4C: $A1
    ld b, b                                       ; $6C4D: $40
    ld e, e                                       ; $6C4E: $5B
    dec de                                        ; $6C4F: $1B
    inc c                                         ; $6C50: $0C
    ld l, d                                       ; $6C51: $6A
    ld c, e                                       ; $6C52: $4B
    inc bc                                        ; $6C53: $03

jr_01B_6C54:
    dec de                                        ; $6C54: $1B
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    ld l, c                                       ; $6C57: $69
    ld l, h                                       ; $6C58: $6C
    dec de                                        ; $6C59: $1B
    inc bc                                        ; $6C5A: $03
    nop                                           ; $6C5B: $00
    ld [hl], e                                    ; $6C5C: $73
    ld l, h                                       ; $6C5D: $6C
    dec de                                        ; $6C5E: $1B
    ld [bc], a                                    ; $6C5F: $02
    nop                                           ; $6C60: $00
    add a                                         ; $6C61: $87
    ld l, h                                       ; $6C62: $6C
    dec de                                        ; $6C63: $1B
    ld bc, $7D00                                  ; $6C64: $01 $00 $7D
    ld l, h                                       ; $6C67: $6C
    rst $38                                       ; $6C68: $FF

jr_01B_6C69:
    inc d                                         ; $6C69: $14
    ld de, $4A17                                  ; $6C6A: $11 $17 $4A
    ld h, d                                       ; $6C6D: $62
    ld bc, $1B45                                  ; $6C6E: $01 $45 $1B
    and d                                         ; $6C71: $A2
    ld l, h                                       ; $6C72: $6C
    inc d                                         ; $6C73: $14
    ld de, $4A21                                  ; $6C74: $11 $21 $4A
    ld h, d                                       ; $6C77: $62
    ld bc, $1B45                                  ; $6C78: $01 $45 $1B
    sub c                                         ; $6C7B: $91

jr_01B_6C7C:
    ld l, h                                       ; $6C7C: $6C
    inc d                                         ; $6C7D: $14
    ld de, $4A2B                                  ; $6C7E: $11 $2B $4A
    ld h, d                                       ; $6C81: $62
    ld bc, $1B45                                  ; $6C82: $01 $45 $1B

jr_01B_6C85:
    sub c                                         ; $6C85: $91
    ld l, h                                       ; $6C86: $6C
    inc d                                         ; $6C87: $14
    ld de, $4A35                                  ; $6C88: $11 $35 $4A
    ld h, d                                       ; $6C8B: $62
    ld bc, $1B45                                  ; $6C8C: $01 $45 $1B
    sub c                                         ; $6C8F: $91
    ld l, h                                       ; $6C90: $6C
    dec d                                         ; $6C91: $15
    ld de, $49D7                                  ; $6C92: $11 $D7 $49
    jr nz, jr_01B_6C97                            ; $6C95: $20 $00

jr_01B_6C97:
    rlca                                          ; $6C97: $07
    nop                                           ; $6C98: $00
    add c                                         ; $6C99: $81
    ld e, l                                       ; $6C9A: $5D
    add hl, bc                                    ; $6C9B: $09
    nop                                           ; $6C9C: $00
    jr nz, jr_01B_6C54                            ; $6C9D: $20 $B5

    ld d, b                                       ; $6C9F: $50
    add hl, de                                    ; $6CA0: $19
    ld b, d                                       ; $6CA1: $42
    dec d                                         ; $6CA2: $15
    ld de, $49F7                                  ; $6CA3: $11 $F7 $49
    ld [$D711], sp                                ; $6CA6: $08 $11 $D7
    ld c, c                                       ; $6CA9: $49
    jr jr_01B_6CAC                                ; $6CAA: $18 $00

jr_01B_6CAC:
    rlca                                          ; $6CAC: $07
    nop                                           ; $6CAD: $00
    add c                                         ; $6CAE: $81
    ld e, l                                       ; $6CAF: $5D
    add hl, bc                                    ; $6CB0: $09
    nop                                           ; $6CB1: $00
    jr nz, jr_01B_6C69                            ; $6CB2: $20 $B5

    ld d, b                                       ; $6CB4: $50
    add hl, de                                    ; $6CB5: $19
    ld b, d                                       ; $6CB6: $42
    ld b, e                                       ; $6CB7: $43
    ld de, $C301                                  ; $6CB8: $11 $01 $C3
    and e                                         ; $6CBB: $A3
    dec b                                         ; $6CBC: $05
    nop                                           ; $6CBD: $00
    dec de                                        ; $6CBE: $1B
    db $E4                                        ; $6CBF: $E4
    ld l, h                                       ; $6CC0: $6C
    rlca                                          ; $6CC1: $07
    nop                                           ; $6CC2: $00
    ld l, e                                       ; $6CC3: $6B
    ld c, d                                       ; $6CC4: $4A
    add hl, bc                                    ; $6CC5: $09

jr_01B_6CC6:
    nop                                           ; $6CC6: $00
    jr nz, jr_01B_6C7C                            ; $6CC7: $20 $B3

    ld c, a                                       ; $6CC9: $4F
    ld b, b                                       ; $6CCA: $40
    ld [$0009], sp                                ; $6CCB: $08 $09 $00
    jr nz, jr_01B_6C85                            ; $6CCE: $20 $B5

    ld d, b                                       ; $6CD0: $50
    ld e, e                                       ; $6CD1: $5B
    dec de                                        ; $6CD2: $1B
    add h                                         ; $6CD3: $84
    ld l, d                                       ; $6CD4: $6A
    ld h, d                                       ; $6CD5: $62
    inc bc                                        ; $6CD6: $03
    rlca                                          ; $6CD7: $07
    nop                                           ; $6CD8: $00
    add c                                         ; $6CD9: $81
    ld e, l                                       ; $6CDA: $5D
    add hl, bc                                    ; $6CDB: $09
    nop                                           ; $6CDC: $00
    jr nz, @-$49                                  ; $6CDD: $20 $B5

    ld d, b                                       ; $6CDF: $50
    ld b, l                                       ; $6CE0: $45
    dec de                                        ; $6CE1: $1B
    nop                                           ; $6CE2: $00
    ld l, l                                       ; $6CE3: $6D
    ld e, e                                       ; $6CE4: $5B
    dec de                                        ; $6CE5: $1B
    sbc e                                         ; $6CE6: $9B
    ld l, d                                       ; $6CE7: $6A
    ld h, d                                       ; $6CE8: $62
    ld bc, $EC7E                                  ; $6CE9: $01 $7E $EC
    push de                                       ; $6CEC: $D5
    ld [bc], a                                    ; $6CED: $02
    ld [bc], a                                    ; $6CEE: $02
    db $DD                                        ; $6CEF: $DD
    push de                                       ; $6CF0: $D5
    dec de                                        ; $6CF1: $1B
    db $10                                        ; $6CF2: $10
    and [hl]                                      ; $6CF3: $A6
    jp $0CA3                                      ; $6CF4: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $6CF7: $01 $C3 $A3
    dec b                                         ; $6CFA: $05
    ld bc, $25AF                                  ; $6CFB: $01 $AF $25
    and c                                         ; $6CFE: $A1
    db $10                                        ; $6CFF: $10
    ld b, d                                       ; $6D00: $42
    ld b, e                                       ; $6D01: $43
    ld de, $C301                                  ; $6D02: $11 $01 $C3

jr_01B_6D05:
    and e                                         ; $6D05: $A3
    dec b                                         ; $6D06: $05
    nop                                           ; $6D07: $00
    dec de                                        ; $6D08: $1B
    ld l, $6D                                     ; $6D09: $2E $6D
    rlca                                          ; $6D0B: $07
    nop                                           ; $6D0C: $00
    ld l, e                                       ; $6D0D: $6B
    ld c, d                                       ; $6D0E: $4A
    add hl, bc                                    ; $6D0F: $09
    nop                                           ; $6D10: $00
    jr nz, jr_01B_6CC6                            ; $6D11: $20 $B3

    ld c, a                                       ; $6D13: $4F
    ld b, b                                       ; $6D14: $40
    ld [$0009], sp                                ; $6D15: $08 $09 $00
    jr nz, @-$49                                  ; $6D18: $20 $B5

    ld d, b                                       ; $6D1A: $50
    ld e, e                                       ; $6D1B: $5B
    dec de                                        ; $6D1C: $1B
    add h                                         ; $6D1D: $84
    ld l, d                                       ; $6D1E: $6A
    ld h, d                                       ; $6D1F: $62

jr_01B_6D20:
    inc bc                                        ; $6D20: $03
    rlca                                          ; $6D21: $07
    nop                                           ; $6D22: $00
    add c                                         ; $6D23: $81
    ld e, l                                       ; $6D24: $5D
    add hl, bc                                    ; $6D25: $09
    nop                                           ; $6D26: $00
    jr nz, @-$49                                  ; $6D27: $20 $B5

    ld d, b                                       ; $6D29: $50

jr_01B_6D2A:
    ld b, l                                       ; $6D2A: $45
    dec de                                        ; $6D2B: $1B
    ld c, d                                       ; $6D2C: $4A
    ld l, l                                       ; $6D2D: $6D
    ld e, e                                       ; $6D2E: $5B
    dec de                                        ; $6D2F: $1B
    sbc e                                         ; $6D30: $9B
    ld l, d                                       ; $6D31: $6A
    ld h, d                                       ; $6D32: $62
    ld bc, $EC7E                                  ; $6D33: $01 $7E $EC
    push de                                       ; $6D36: $D5
    ld [bc], a                                    ; $6D37: $02
    ld [bc], a                                    ; $6D38: $02
    ld sp, hl                                     ; $6D39: $F9
    push de                                       ; $6D3A: $D5
    dec de                                        ; $6D3B: $1B
    inc l                                         ; $6D3C: $2C
    and [hl]                                      ; $6D3D: $A6
    jp $0CA3                                      ; $6D3E: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $6D41: $01 $C3 $A3
    dec b                                         ; $6D44: $05
    ld bc, $25AF                                  ; $6D45: $01 $AF $25
    and c                                         ; $6D48: $A1
    jr nz, @+$44                                  ; $6D49: $20 $42

    rlca                                          ; $6D4B: $07
    nop                                           ; $6D4C: $00
    ld l, e                                       ; $6D4D: $6B
    ld c, d                                       ; $6D4E: $4A
    add hl, bc                                    ; $6D4F: $09
    nop                                           ; $6D50: $00
    jr nz, jr_01B_6D20                            ; $6D51: $20 $CD

    ld c, a                                       ; $6D53: $4F
    ld b, b                                       ; $6D54: $40
    ld [$0009], sp                                ; $6D55: $08 $09 $00
    jr nz, jr_01B_6D05                            ; $6D58: $20 $AB

    ld d, b                                       ; $6D5A: $50
    ld b, b                                       ; $6D5B: $40
    ld b, b                                       ; $6D5C: $40
    add e                                         ; $6D5D: $83
    ld [hl], h                                    ; $6D5E: $74
    nop                                           ; $6D5F: $00
    rst $38                                       ; $6D60: $FF
    jr nc, jr_01B_6D63                            ; $6D61: $30 $00

jr_01B_6D63:
    nop                                           ; $6D63: $00
    jr nc, jr_01B_6D67                            ; $6D64: $30 $01

    nop                                           ; $6D66: $00

jr_01B_6D67:
    jr nc, jr_01B_6D69                            ; $6D67: $30 $00

jr_01B_6D69:
    nop                                           ; $6D69: $00
    jr nc, @+$01                                  ; $6D6A: $30 $FF

    nop                                           ; $6D6C: $00
    ld [hl], h                                    ; $6D6D: $74
    nop                                           ; $6D6E: $00
    ld bc, $5B00                                  ; $6D6F: $01 $00 $5B
    dec de                                        ; $6D72: $1B
    ldh [rOCPS], a                                ; $6D73: $E0 $6A
    ld h, d                                       ; $6D75: $62
    dec b                                         ; $6D76: $05
    rlca                                          ; $6D77: $07
    nop                                           ; $6D78: $00
    add c                                         ; $6D79: $81
    ld e, l                                       ; $6D7A: $5D
    add hl, bc                                    ; $6D7B: $09
    nop                                           ; $6D7C: $00
    jr nz, jr_01B_6D2A                            ; $6D7D: $20 $AB

    ld d, b                                       ; $6D7F: $50
    ld b, d                                       ; $6D80: $42
    ld [bc], a                                    ; $6D81: $02
    ld a, [bc]                                    ; $6D82: $0A
    dec b                                         ; $6D83: $05
    nop                                           ; $6D84: $00
    ld h, $45                                     ; $6D85: $26 $45
    dec de                                        ; $6D87: $1B
    dec a                                         ; $6D88: $3D
    ld l, e                                       ; $6D89: $6B
    ld [bc], a                                    ; $6D8A: $02
    nop                                           ; $6D8B: $00
    jr jr_01B_6D9A                                ; $6D8C: $18 $0C

    rrca                                          ; $6D8E: $0F
    ld b, l                                       ; $6D8F: $45
    dec de                                        ; $6D90: $1B
    or $6D                                        ; $6D91: $F6 $6D
    ld [bc], a                                    ; $6D93: $02
    ld [de], a                                    ; $6D94: $12
    dec c                                         ; $6D95: $0D
    dec e                                         ; $6D96: $1D
    nop                                           ; $6D97: $00
    ld b, l                                       ; $6D98: $45
    dec de                                        ; $6D99: $1B

jr_01B_6D9A:
    ld h, l                                       ; $6D9A: $65
    ld l, [hl]                                    ; $6D9B: $6E
    sub e                                         ; $6D9C: $93
    ld h, l                                       ; $6D9D: $65
    call c, Call_01B_4F54                         ; $6D9E: $DC $54 $4F
    ld h, h                                       ; $6DA1: $64
    db $D3                                        ; $6DA2: $D3
    ld e, e                                       ; $6DA3: $5B
    ld h, [hl]                                    ; $6DA4: $66
    ret nz                                        ; $6DA5: $C0

    ld e, h                                       ; $6DA6: $5C
    ld hl, $0005                                  ; $6DA7: $21 $05 $00
    add c                                         ; $6DAA: $81
    ld e, l                                       ; $6DAB: $5D
    dec b                                         ; $6DAC: $05
    dec b                                         ; $6DAD: $05

jr_01B_6DAE:
    add d                                         ; $6DAE: $82
    ret nc                                        ; $6DAF: $D0

    nop                                           ; $6DB0: $00
    jr nz, jr_01B_6DAE                            ; $6DB1: $20 $FB

    ld d, b                                       ; $6DB3: $50
    ld [hl+], a                                   ; $6DB4: $22
    dec b                                         ; $6DB5: $05
    ld b, b                                       ; $6DB6: $40
    dec bc                                        ; $6DB7: $0B
    nop                                           ; $6DB8: $00
    ld [hl-], a                                   ; $6DB9: $32
    dec de                                        ; $6DBA: $1B
    jp z, $8D52                                   ; $6DBB: $CA $52 $8D

    ld b, c                                       ; $6DBE: $41
    ld sp, $9C1B                                  ; $6DBF: $31 $1B $9C
    ld l, l                                       ; $6DC2: $6D
    ld [hl+], a                                   ; $6DC3: $22
    adc $40                                       ; $6DC4: $CE $40
    nop                                           ; $6DC6: $00
    rra                                           ; $6DC7: $1F
    inc e                                         ; $6DC8: $1C
    add d                                         ; $6DC9: $82
    ld b, e                                       ; $6DCA: $43
    nop                                           ; $6DCB: $00
    add hl, hl                                    ; $6DCC: $29
    and c                                         ; $6DCD: $A1
    ld bc, $DB1B                                  ; $6DCE: $01 $1B $DB
    ld l, l                                       ; $6DD1: $6D
    ld a, [hl]                                    ; $6DD2: $7E
    rla                                           ; $6DD3: $17
    ret nc                                        ; $6DD4: $D0

    ld [bc], a                                    ; $6DD5: $02
    ld [$D1E8], sp                                ; $6DD6: $08 $E8 $D1
    inc de                                        ; $6DD9: $13
    dec c                                         ; $6DDA: $0D
    sub h                                         ; $6DDB: $94
    ld b, d                                       ; $6DDC: $42
    ld [bc], a                                    ; $6DDD: $02
    jr jr_01B_6DE0                                ; $6DDE: $18 $00

jr_01B_6DE0:
    rrca                                          ; $6DE0: $0F
    inc c                                         ; $6DE1: $0C
    ld b, l                                       ; $6DE2: $45
    dec de                                        ; $6DE3: $1B
    sbc h                                         ; $6DE4: $9C
    ld l, l                                       ; $6DE5: $6D
    and h                                         ; $6DE6: $A4
    daa                                           ; $6DE7: $27
    and c                                         ; $6DE8: $A1
    ld b, b                                       ; $6DE9: $40
    nop                                           ; $6DEA: $00
    inc h                                         ; $6DEB: $24
    add l                                         ; $6DEC: $85
    jp nc, $27A4                                  ; $6DED: $D2 $A4 $27

    and c                                         ; $6DF0: $A1
    stop                                          ; $6DF1: $10 $00
    inc e                                         ; $6DF3: $1C
    or d                                          ; $6DF4: $B2
    ret nc                                        ; $6DF5: $D0

    sub e                                         ; $6DF6: $93
    ld h, l                                       ; $6DF7: $65
    db $EB                                        ; $6DF8: $EB
    ld d, h                                       ; $6DF9: $54
    ld c, a                                       ; $6DFA: $4F
    ld h, h                                       ; $6DFB: $64
    ldh [$5B], a                                  ; $6DFC: $E0 $5B
    ld l, c                                       ; $6DFE: $69
    push hl                                       ; $6DFF: $E5
    ld e, e                                       ; $6E00: $5B
    ld l, d                                       ; $6E01: $6A
    adc a                                         ; $6E02: $8F
    ld h, h                                       ; $6E03: $64
    ld a, h                                       ; $6E04: $7C
    ld a, h                                       ; $6E05: $7C
    ld c, l                                       ; $6E06: $4D
    ld a, h                                       ; $6E07: $7C
    ld h, [hl]                                    ; $6E08: $66
    ret nz                                        ; $6E09: $C0

    ld e, h                                       ; $6E0A: $5C
    ld hl, $0005                                  ; $6E0B: $21 $05 $00
    add c                                         ; $6E0E: $81
    ld e, l                                       ; $6E0F: $5D
    dec b                                         ; $6E10: $05
    dec b                                         ; $6E11: $05

jr_01B_6E12:
    add d                                         ; $6E12: $82
    ret nc                                        ; $6E13: $D0

    nop                                           ; $6E14: $00
    jr nz, jr_01B_6E12                            ; $6E15: $20 $FB

    ld d, b                                       ; $6E17: $50
    ld [hl+], a                                   ; $6E18: $22
    dec b                                         ; $6E19: $05
    ld b, b                                       ; $6E1A: $40
    dec bc                                        ; $6E1B: $0B
    nop                                           ; $6E1C: $00
    ld [hl-], a                                   ; $6E1D: $32
    dec de                                        ; $6E1E: $1B
    jp z, $8D52                                   ; $6E1F: $CA $52 $8D

    ld b, c                                       ; $6E22: $41
    ld sp, $011B                                  ; $6E23: $31 $1B $01
    ld l, [hl]                                    ; $6E26: $6E
    ld [hl+], a                                   ; $6E27: $22
    adc $40                                       ; $6E28: $CE $40
    rra                                           ; $6E2A: $1F
    inc e                                         ; $6E2B: $1C
    nop                                           ; $6E2C: $00
    add d                                         ; $6E2D: $82
    ld b, e                                       ; $6E2E: $43
    nop                                           ; $6E2F: $00
    add hl, hl                                    ; $6E30: $29
    and c                                         ; $6E31: $A1
    ld [bc], a                                    ; $6E32: $02
    dec de                                        ; $6E33: $1B
    ld c, b                                       ; $6E34: $48
    ld l, [hl]                                    ; $6E35: $6E
    ld a, [hl]                                    ; $6E36: $7E
    and $D1                                       ; $6E37: $E6 $D1
    ld [bc], a                                    ; $6E39: $02
    ld b, $95                                     ; $6E3A: $06 $95
    jp nc, $0B1A                                  ; $6E3C: $D2 $1A $0B

    ld a, [hl]                                    ; $6E3F: $7E
    adc b                                         ; $6E40: $88
    pop de                                        ; $6E41: $D1
    ld [bc], a                                    ; $6E42: $02
    ld bc, $D32B                                  ; $6E43: $01 $2B $D3
    jr nz, jr_01B_6E53                            ; $6E46: $20 $0B

    sub h                                         ; $6E48: $94
    ld b, d                                       ; $6E49: $42
    ld [bc], a                                    ; $6E4A: $02
    dec c                                         ; $6E4B: $0D
    ld [de], a                                    ; $6E4C: $12
    nop                                           ; $6E4D: $00
    dec e                                         ; $6E4E: $1D
    ld b, l                                       ; $6E4F: $45
    dec de                                        ; $6E50: $1B
    sbc h                                         ; $6E51: $9C
    ld l, l                                       ; $6E52: $6D

jr_01B_6E53:
    ld [bc], a                                    ; $6E53: $02
    inc hl                                        ; $6E54: $23
    nop                                           ; $6E55: $00
    rlca                                          ; $6E56: $07
    inc d                                         ; $6E57: $14
    ld b, l                                       ; $6E58: $45
    rra                                           ; $6E59: $1F
    adc e                                         ; $6E5A: $8B
    ld a, e                                       ; $6E5B: $7B
    ld [bc], a                                    ; $6E5C: $02
    inc hl                                        ; $6E5D: $23
    nop                                           ; $6E5E: $00
    inc de                                        ; $6E5F: $13
    rlca                                          ; $6E60: $07
    ld b, l                                       ; $6E61: $45
    dec de                                        ; $6E62: $1B
    rst $00                                       ; $6E63: $C7
    ld l, [hl]                                    ; $6E64: $6E
    sub e                                         ; $6E65: $93
    ld h, l                                       ; $6E66: $65
    ld a, [$4F54]                                 ; $6E67: $FA $54 $4F
    ld h, h                                       ; $6E6A: $64
    xor $5B                                       ; $6E6B: $EE $5B
    ld l, d                                       ; $6E6D: $6A
    adc a                                         ; $6E6E: $8F
    ld h, h                                       ; $6E6F: $64
    ld a, h                                       ; $6E70: $7C
    ld a, h                                       ; $6E71: $7C
    ld c, l                                       ; $6E72: $4D
    ld a, h                                       ; $6E73: $7C
    ld h, [hl]                                    ; $6E74: $66
    ret nz                                        ; $6E75: $C0

    ld e, h                                       ; $6E76: $5C
    ld hl, $0005                                  ; $6E77: $21 $05 $00
    add c                                         ; $6E7A: $81
    ld e, l                                       ; $6E7B: $5D
    dec b                                         ; $6E7C: $05
    dec b                                         ; $6E7D: $05

jr_01B_6E7E:
    cp c                                          ; $6E7E: $B9
    ret nc                                        ; $6E7F: $D0

    nop                                           ; $6E80: $00
    jr nz, jr_01B_6E7E                            ; $6E81: $20 $FB

    ld d, b                                       ; $6E83: $50
    ld [hl+], a                                   ; $6E84: $22
    dec b                                         ; $6E85: $05
    ld b, b                                       ; $6E86: $40
    dec bc                                        ; $6E87: $0B
    nop                                           ; $6E88: $00
    ld [hl-], a                                   ; $6E89: $32
    dec de                                        ; $6E8A: $1B
    jp z, $8D52                                   ; $6E8B: $CA $52 $8D

    ld b, c                                       ; $6E8E: $41
    ld sp, $6D1B                                  ; $6E8F: $31 $1B $6D
    ld l, [hl]                                    ; $6E92: $6E
    ld [hl+], a                                   ; $6E93: $22
    adc $40                                       ; $6E94: $CE $40
    nop                                           ; $6E96: $00
    rra                                           ; $6E97: $1F
    inc e                                         ; $6E98: $1C
    add d                                         ; $6E99: $82
    sub h                                         ; $6E9A: $94
    ld b, d                                       ; $6E9B: $42
    ld [bc], a                                    ; $6E9C: $02
    nop                                           ; $6E9D: $00
    inc hl                                        ; $6E9E: $23
    rlca                                          ; $6E9F: $07
    inc de                                        ; $6EA0: $13
    ld b, l                                       ; $6EA1: $45
    dec de                                        ; $6EA2: $1B
    ld h, l                                       ; $6EA3: $65
    ld l, [hl]                                    ; $6EA4: $6E
    ld [bc], a                                    ; $6EA5: $02
    ld d, $16                                     ; $6EA6: $16 $16
    nop                                           ; $6EA8: $00
    dec e                                         ; $6EA9: $1D
    ld b, l                                       ; $6EAA: $45
    rra                                           ; $6EAB: $1F
    adc e                                         ; $6EAC: $8B
    ld a, e                                       ; $6EAD: $7B
    ld [bc], a                                    ; $6EAE: $02
    inc e                                         ; $6EAF: $1C
    inc e                                         ; $6EB0: $1C

jr_01B_6EB1:
    nop                                           ; $6EB1: $00
    dec e                                         ; $6EB2: $1D
    ld b, l                                       ; $6EB3: $45
    rra                                           ; $6EB4: $1F
    adc e                                         ; $6EB5: $8B
    ld a, e                                       ; $6EB6: $7B
    and h                                         ; $6EB7: $A4
    daa                                           ; $6EB8: $27
    and c                                         ; $6EB9: $A1
    jr nz, jr_01B_6EBC                            ; $6EBA: $20 $00

jr_01B_6EBC:
    inc e                                         ; $6EBC: $1C
    or l                                          ; $6EBD: $B5
    pop de                                        ; $6EBE: $D1
    and h                                         ; $6EBF: $A4
    ld [hl-], a                                   ; $6EC0: $32
    and e                                         ; $6EC1: $A3
    jr nz, jr_01B_6EC4                            ; $6EC2: $20 $00

jr_01B_6EC4:
    dec d                                         ; $6EC4: $15
    or a                                          ; $6EC5: $B7
    pop de                                        ; $6EC6: $D1
    sub e                                         ; $6EC7: $93
    ld h, l                                       ; $6EC8: $65
    add hl, bc                                    ; $6EC9: $09
    ld d, l                                       ; $6ECA: $55
    ld c, a                                       ; $6ECB: $4F
    ld l, c                                       ; $6ECC: $69
    ld [$645C], sp                                ; $6ECD: $08 $5C $64
    ei                                            ; $6ED0: $FB
    ld e, e                                       ; $6ED1: $5B
    ld h, [hl]                                    ; $6ED2: $66
    ret nz                                        ; $6ED3: $C0

    ld e, h                                       ; $6ED4: $5C
    ld hl, $0005                                  ; $6ED5: $21 $05 $00
    add c                                         ; $6ED8: $81
    ld e, l                                       ; $6ED9: $5D
    dec b                                         ; $6EDA: $05
    dec b                                         ; $6EDB: $05

jr_01B_6EDC:
    or h                                          ; $6EDC: $B4
    ret nc                                        ; $6EDD: $D0

    nop                                           ; $6EDE: $00
    jr nz, jr_01B_6EDC                            ; $6EDF: $20 $FB

    ld d, b                                       ; $6EE1: $50
    ld [hl+], a                                   ; $6EE2: $22
    dec b                                         ; $6EE3: $05
    ld b, b                                       ; $6EE4: $40
    dec bc                                        ; $6EE5: $0B
    nop                                           ; $6EE6: $00
    ld [hl-], a                                   ; $6EE7: $32
    dec de                                        ; $6EE8: $1B
    jp z, $8D52                                   ; $6EE9: $CA $52 $8D

    ld b, c                                       ; $6EEC: $41
    ld sp, $C71B                                  ; $6EED: $31 $1B $C7
    ld l, [hl]                                    ; $6EF0: $6E
    ld [hl+], a                                   ; $6EF1: $22
    adc $40                                       ; $6EF2: $CE $40
    rra                                           ; $6EF4: $1F
    inc e                                         ; $6EF5: $1C
    nop                                           ; $6EF6: $00
    add d                                         ; $6EF7: $82
    sub h                                         ; $6EF8: $94
    ld b, d                                       ; $6EF9: $42
    jr nz, jr_01B_6EB1                            ; $6EFA: $20 $B5

    ld d, b                                       ; $6EFC: $50
    sbc d                                         ; $6EFD: $9A
    ld a, b                                       ; $6EFE: $78
    ld [hl], b                                    ; $6EFF: $70
    sbc [hl]                                      ; $6F00: $9E

jr_01B_6F01:
    ld d, e                                       ; $6F01: $53
    ld [hl], l                                    ; $6F02: $75
    ld [hl], d                                    ; $6F03: $72
    ld h, l                                       ; $6F04: $65
    inc l                                         ; $6F05: $2C
    jr nz, jr_01B_6F75                            ; $6F06: $20 $6D

    ld h, c                                       ; $6F08: $61
    ld a, c                                       ; $6F09: $79
    ld h, d                                       ; $6F0A: $62
    ld h, l                                       ; $6F0B: $65
    jr nz, jr_01B_6F77                            ; $6F0C: $20 $69

    ld [hl], h                                    ; $6F0E: $74
    rst $38                                       ; $6F0F: $FF
    ld [hl], a                                    ; $6F10: $77
    ld h, c                                       ; $6F11: $61
    ld [hl], e                                    ; $6F12: $73
    jr nz, jr_01B_6F7B                            ; $6F13: $20 $66

    ld [hl], l                                    ; $6F15: $75
    ld l, [hl]                                    ; $6F16: $6E
    jr nz, @+$72                                  ; $6F17: $20 $70

    ld l, h                                       ; $6F19: $6C
    ld h, c                                       ; $6F1A: $61
    ld a, c                                       ; $6F1B: $79
    ld l, c                                       ; $6F1C: $69
    ld l, [hl]                                    ; $6F1D: $6E
    ld h, a                                       ; $6F1E: $67
    cp $68                                        ; $6F1F: $FE $68
    ld h, l                                       ; $6F21: $65
    ld [hl], d                                    ; $6F22: $72
    ld l, a                                       ; $6F23: $6F
    jr nz, jr_01B_6F87                            ; $6F24: $20 $61

    ld l, [hl]                                    ; $6F26: $6E
    ld h, h                                       ; $6F27: $64
    jr nz, jr_01B_6F8B                            ; $6F28: $20 $61

    ld l, h                                       ; $6F2A: $6C
    ld l, h                                       ; $6F2B: $6C
    rst $38                                       ; $6F2C: $FF
    ld [hl], h                                    ; $6F2D: $74
    ld l, b                                       ; $6F2E: $68
    ld h, c                                       ; $6F2F: $61
    ld [hl], h                                    ; $6F30: $74
    inc l                                         ; $6F31: $2C
    jr nz, jr_01B_6F96                            ; $6F32: $20 $62

    ld [hl], l                                    ; $6F34: $75
    ld [hl], h                                    ; $6F35: $74
    ld l, $2E                                     ; $6F36: $2E $2E
    ld l, $FE                                     ; $6F38: $2E $FE
    db $FD                                        ; $6F3A: $FD
    sbc c                                         ; $6F3B: $99
    ld b, b                                       ; $6F3C: $40
    ld h, b                                       ; $6F3D: $60
    add hl, bc                                    ; $6F3E: $09
    nop                                           ; $6F3F: $00
    jr nz, jr_01B_6F01                            ; $6F40: $20 $BF

    ld d, b                                       ; $6F42: $50
    sbc d                                         ; $6F43: $9A
    ld a, b                                       ; $6F44: $78
    ld [hl], b                                    ; $6F45: $70
    sbc [hl]                                      ; $6F46: $9E
    ld l, $2E                                     ; $6F47: $2E $2E
    ld l, $69                                     ; $6F49: $2E $69
    ld [hl], h                                    ; $6F4B: $74
    daa                                           ; $6F4C: $27
    ld [hl], e                                    ; $6F4D: $73
    jr nz, jr_01B_6FB2                            ; $6F4E: $20 $62

    ld h, l                                       ; $6F50: $65
    ld [hl], h                                    ; $6F51: $74
    ld [hl], h                                    ; $6F52: $74
    ld h, l                                       ; $6F53: $65
    ld [hl], d                                    ; $6F54: $72
    rst $38                                       ; $6F55: $FF
    ld l, c                                       ; $6F56: $69
    ld h, [hl]                                    ; $6F57: $66
    jr nz, jr_01B_6FA3                            ; $6F58: $20 $49

    jr nz, jr_01B_6FC8                            ; $6F5A: $20 $6C

    ld h, l                                       ; $6F5C: $65
    ld h, c                                       ; $6F5D: $61
    halt                                          ; $6F5E: $76
    ld h, l                                       ; $6F5F: $65
    ld l, $FE                                     ; $6F60: $2E $FE
    ld b, c                                       ; $6F62: $41
    ld h, [hl]                                    ; $6F63: $66
    ld [hl], h                                    ; $6F64: $74
    ld h, l                                       ; $6F65: $65
    ld [hl], d                                    ; $6F66: $72
    jr nz, jr_01B_6FCA                            ; $6F67: $20 $61

    ld l, h                                       ; $6F69: $6C
    ld l, h                                       ; $6F6A: $6C
    inc l                                         ; $6F6B: $2C
    jr nz, jr_01B_6FB5                            ; $6F6C: $20 $47

    ld l, c                                       ; $6F6E: $69
    ld h, c                                       ; $6F6F: $61
    rst $38                                       ; $6F70: $FF
    ld [hl], e                                    ; $6F71: $73
    ld h, c                                       ; $6F72: $61
    ld l, c                                       ; $6F73: $69
    ld h, h                                       ; $6F74: $64

jr_01B_6F75:
    jr nz, jr_01B_6FC0                            ; $6F75: $20 $49

jr_01B_6F77:
    jr nz, jr_01B_6FF0                            ; $6F77: $20 $77

    ld h, c                                       ; $6F79: $61
    ld [hl], e                                    ; $6F7A: $73

jr_01B_6F7B:
    jr nz, jr_01B_6FF1                            ; $6F7B: $20 $74

    ld l, b                                       ; $6F7D: $68
    ld h, l                                       ; $6F7E: $65
    cp $63                                        ; $6F7F: $FE $63
    ld h, c                                       ; $6F81: $61
    ld [hl], l                                    ; $6F82: $75
    ld [hl], e                                    ; $6F83: $73
    ld h, l                                       ; $6F84: $65
    jr nz, @+$71                                  ; $6F85: $20 $6F

jr_01B_6F87:
    ld h, [hl]                                    ; $6F87: $66
    jr nz, jr_01B_6FEB                            ; $6F88: $20 $61

    ld l, h                                       ; $6F8A: $6C

jr_01B_6F8B:
    ld l, h                                       ; $6F8B: $6C
    rst $38                                       ; $6F8C: $FF
    ld [hl], h                                    ; $6F8D: $74
    ld l, b                                       ; $6F8E: $68
    ld l, a                                       ; $6F8F: $6F
    ld [hl], e                                    ; $6F90: $73
    ld h, l                                       ; $6F91: $65
    jr nz, jr_01B_7004                            ; $6F92: $20 $70

    ld [hl], d                                    ; $6F94: $72
    ld l, a                                       ; $6F95: $6F

jr_01B_6F96:
    ld h, d                                       ; $6F96: $62
    ld l, h                                       ; $6F97: $6C
    ld h, l                                       ; $6F98: $65
    ld l, l                                       ; $6F99: $6D
    ld [hl], e                                    ; $6F9A: $73
    ld l, $FE                                     ; $6F9B: $2E $FE
    ld l, $2E                                     ; $6F9D: $2E $2E
    ld l, $2E                                     ; $6F9F: $2E $2E
    ld l, $2E                                     ; $6FA1: $2E $2E

jr_01B_6FA3:
    ld l, $2E                                     ; $6FA3: $2E $2E
    ld l, $FE                                     ; $6FA5: $2E $FE
    ld c, c                                       ; $6FA7: $49
    ld [hl], h                                    ; $6FA8: $74
    daa                                           ; $6FA9: $27
    ld [hl], e                                    ; $6FAA: $73
    jr nz, jr_01B_7021                            ; $6FAB: $20 $74

    ld l, b                                       ; $6FAD: $68
    ld h, l                                       ; $6FAE: $65
    rst $38                                       ; $6FAF: $FF
    ld [hl], d                                    ; $6FB0: $72
    ld l, c                                       ; $6FB1: $69

jr_01B_6FB2:
    ld h, a                                       ; $6FB2: $67
    ld l, b                                       ; $6FB3: $68
    ld [hl], h                                    ; $6FB4: $74

jr_01B_6FB5:
    jr nz, @+$76                                  ; $6FB5: $20 $74

    ld l, b                                       ; $6FB7: $68
    ld l, c                                       ; $6FB8: $69
    ld l, [hl]                                    ; $6FB9: $6E
    ld h, a                                       ; $6FBA: $67
    cp $74                                        ; $6FBB: $FE $74
    ld l, a                                       ; $6FBD: $6F
    jr nz, jr_01B_7024                            ; $6FBE: $20 $64

jr_01B_6FC0:
    ld l, a                                       ; $6FC0: $6F
    ld l, $FE                                     ; $6FC1: $2E $FE
    db $FD                                        ; $6FC3: $FD
    sbc c                                         ; $6FC4: $99
    sbc d                                         ; $6FC5: $9A
    ld a, b                                       ; $6FC6: $78
    ld [hl], b                                    ; $6FC7: $70

jr_01B_6FC8:
    sbc [hl]                                      ; $6FC8: $9E
    ld c, h                                       ; $6FC9: $4C

jr_01B_6FCA:
    ld h, l                                       ; $6FCA: $65
    ld [hl], h                                    ; $6FCB: $74
    daa                                           ; $6FCC: $27
    ld [hl], e                                    ; $6FCD: $73
    jr nz, jr_01B_7043                            ; $6FCE: $20 $73

    ld h, l                                       ; $6FD0: $65
    ld h, l                                       ; $6FD1: $65
    ld l, $2E                                     ; $6FD2: $2E $2E
    ld l, $20                                     ; $6FD4: $2E $20
    ld l, c                                       ; $6FD6: $69
    ld h, [hl]                                    ; $6FD7: $66
    cp $49                                        ; $6FD8: $FE $49
    jr nz, jr_01B_7046                            ; $6FDA: $20 $6A

    ld [hl], l                                    ; $6FDC: $75
    ld [hl], e                                    ; $6FDD: $73
    ld [hl], h                                    ; $6FDE: $74
    jr nz, @+$72                                  ; $6FDF: $20 $70

    ld [hl], l                                    ; $6FE1: $75
    ld [hl], h                                    ; $6FE2: $74
    jr nz, jr_01B_7059                            ; $6FE3: $20 $74

    ld l, b                                       ; $6FE5: $68
    ld h, l                                       ; $6FE6: $65
    rst $38                                       ; $6FE7: $FF
    ld b, a                                       ; $6FE8: $47
    ld l, h                                       ; $6FE9: $6C
    ld a, c                                       ; $6FEA: $79

jr_01B_6FEB:
    ld [hl], b                                    ; $6FEB: $70
    ld l, b                                       ; $6FEC: $68
    jr nz, jr_01B_7063                            ; $6FED: $20 $74

    ld l, b                                       ; $6FEF: $68

jr_01B_6FF0:
    ld h, l                                       ; $6FF0: $65

jr_01B_6FF1:
    ld [hl], d                                    ; $6FF1: $72
    ld h, l                                       ; $6FF2: $65
    ld l, $2E                                     ; $6FF3: $2E $2E
    ld l, $FE                                     ; $6FF5: $2E $FE
    ld [hl], e                                    ; $6FF7: $73
    ld l, a                                       ; $6FF8: $6F
    ld l, l                                       ; $6FF9: $6D
    ld h, l                                       ; $6FFA: $65
    ld [hl], h                                    ; $6FFB: $74
    ld l, b                                       ; $6FFC: $68
    ld l, c                                       ; $6FFD: $69
    ld l, [hl]                                    ; $6FFE: $6E
    ld h, a                                       ; $6FFF: $67
    rst $38                                       ; $7000: $FF
    ld [hl], e                                    ; $7001: $73
    ld l, b                                       ; $7002: $68
    ld l, a                                       ; $7003: $6F

jr_01B_7004:
    ld [hl], l                                    ; $7004: $75
    ld l, h                                       ; $7005: $6C
    ld h, h                                       ; $7006: $64
    jr nz, jr_01B_7071                            ; $7007: $20 $68

    ld h, c                                       ; $7009: $61
    ld [hl], b                                    ; $700A: $70
    ld [hl], b                                    ; $700B: $70
    ld h, l                                       ; $700C: $65
    ld l, [hl]                                    ; $700D: $6E
    ld l, $FE                                     ; $700E: $2E $FE
    db $FD                                        ; $7010: $FD
    sbc c                                         ; $7011: $99
    ld b, l                                       ; $7012: $45
    dec de                                        ; $7013: $1B
    ret nc                                        ; $7014: $D0

    ld a, b                                       ; $7015: $78
    sbc d                                         ; $7016: $9A
    xor c                                         ; $7017: $A9
    ld c, a                                       ; $7018: $4F
    sbc [hl]                                      ; $7019: $9E
    ld b, [hl]                                    ; $701A: $46
    ld c, c                                       ; $701B: $49
    ld c, [hl]                                    ; $701C: $4E
    ld b, c                                       ; $701D: $41
    ld c, h                                       ; $701E: $4C
    ld c, h                                       ; $701F: $4C
    ld e, c                                       ; $7020: $59

jr_01B_7021:
    ld hl, $46FF                                  ; $7021: $21 $FF $46

jr_01B_7024:
    ld l, c                                       ; $7024: $69
    ld l, [hl]                                    ; $7025: $6E
    ld h, c                                       ; $7026: $61
    ld l, h                                       ; $7027: $6C
    ld l, h                                       ; $7028: $6C
    ld a, c                                       ; $7029: $79
    jr nz, jr_01B_7075                            ; $702A: $20 $49

    jr nz, jr_01B_708F                            ; $702C: $20 $61

    ld l, l                                       ; $702E: $6D
    cp $72                                        ; $702F: $FE $72
    ld l, c                                       ; $7031: $69
    ld h, h                                       ; $7032: $64
    jr nz, jr_01B_70A4                            ; $7033: $20 $6F

    ld h, [hl]                                    ; $7035: $66
    jr nz, jr_01B_70AC                            ; $7036: $20 $74

    ld l, b                                       ; $7038: $68
    ld h, c                                       ; $7039: $61
    ld [hl], h                                    ; $703A: $74
    rst $38                                       ; $703B: $FF
    ld l, c                                       ; $703C: $69
    ld l, [hl]                                    ; $703D: $6E
    ld h, e                                       ; $703E: $63
    ld l, a                                       ; $703F: $6F
    ld l, l                                       ; $7040: $6D
    ld [hl], b                                    ; $7041: $70
    ld h, c                                       ; $7042: $61

jr_01B_7043:
    ld [hl], d                                    ; $7043: $72
    ld h, c                                       ; $7044: $61
    ld h, d                                       ; $7045: $62

jr_01B_7046:
    ld l, h                                       ; $7046: $6C
    ld h, l                                       ; $7047: $65
    cp $63                                        ; $7048: $FE $63
    ld [hl], d                                    ; $704A: $72
    ld h, l                                       ; $704B: $65
    ld [hl], h                                    ; $704C: $74
    ld l, c                                       ; $704D: $69
    ld l, [hl]                                    ; $704E: $6E
    ld hl, $4E20                                  ; $704F: $21 $20 $4E
    ld l, a                                       ; $7052: $6F
    jr nz, jr_01B_70C2                            ; $7053: $20 $6D

    ld l, a                                       ; $7055: $6F
    ld [hl], d                                    ; $7056: $72
    ld h, l                                       ; $7057: $65
    rst $38                                       ; $7058: $FF

jr_01B_7059:
    ld l, l                                       ; $7059: $6D
    ld h, l                                       ; $705A: $65
    ld [hl], e                                    ; $705B: $73
    ld [hl], e                                    ; $705C: $73
    ld l, c                                       ; $705D: $69
    ld l, [hl]                                    ; $705E: $6E
    ld h, a                                       ; $705F: $67
    jr nz, jr_01B_70D9                            ; $7060: $20 $77

    ld l, c                                       ; $7062: $69

jr_01B_7063:
    ld [hl], h                                    ; $7063: $74
    ld l, b                                       ; $7064: $68
    jr nz, jr_01B_70D4                            ; $7065: $20 $6D

    ld a, c                                       ; $7067: $79
    cp $63                                        ; $7068: $FE $63
    ld h, c                                       ; $706A: $61
    ld [hl], d                                    ; $706B: $72
    ld h, l                                       ; $706C: $65
    ld h, [hl]                                    ; $706D: $66
    ld [hl], l                                    ; $706E: $75
    ld l, h                                       ; $706F: $6C
    ld l, h                                       ; $7070: $6C

jr_01B_7071:
    ld a, c                                       ; $7071: $79
    dec l                                         ; $7072: $2D
    ld l, h                                       ; $7073: $6C
    ld h, c                                       ; $7074: $61

jr_01B_7075:
    ld l, c                                       ; $7075: $69
    ld h, h                                       ; $7076: $64
    rst $38                                       ; $7077: $FF
    ld [hl], b                                    ; $7078: $70
    ld l, h                                       ; $7079: $6C
    ld h, c                                       ; $707A: $61
    ld l, [hl]                                    ; $707B: $6E
    ld [hl], e                                    ; $707C: $73
    ld hl, $4E20                                  ; $707D: $21 $20 $4E
    ld l, a                                       ; $7080: $6F
    jr nz, jr_01B_70F0                            ; $7081: $20 $6D

    ld l, a                                       ; $7083: $6F
    ld [hl], d                                    ; $7084: $72
    ld h, l                                       ; $7085: $65
    cp $6F                                        ; $7086: $FE $6F
    ld h, [hl]                                    ; $7088: $66
    jr nz, jr_01B_70FF                            ; $7089: $20 $74

    ld l, b                                       ; $708B: $68
    ld h, c                                       ; $708C: $61
    ld [hl], h                                    ; $708D: $74
    rst $38                                       ; $708E: $FF

jr_01B_708F:
    ld h, a                                       ; $708F: $67
    ld l, c                                       ; $7090: $69
    ld h, a                                       ; $7091: $67
    ld h, c                                       ; $7092: $61
    ld l, [hl]                                    ; $7093: $6E
    ld [hl], h                                    ; $7094: $74
    ld l, c                                       ; $7095: $69
    ld h, e                                       ; $7096: $63
    jr nz, jr_01B_70FE                            ; $7097: $20 $65

    ld h, a                                       ; $7099: $67
    ld l, a                                       ; $709A: $6F
    ld hl, $41FE                                  ; $709B: $21 $FE $41
    ld l, [hl]                                    ; $709E: $6E
    ld h, h                                       ; $709F: $64
    jr nz, jr_01B_710F                            ; $70A0: $20 $6D

    ld l, a                                       ; $70A2: $6F
    ld [hl], e                                    ; $70A3: $73

jr_01B_70A4:
    ld [hl], h                                    ; $70A4: $74
    jr nz, jr_01B_7116                            ; $70A5: $20 $6F

    ld h, [hl]                                    ; $70A7: $66
    rst $38                                       ; $70A8: $FF
    ld h, c                                       ; $70A9: $61
    ld l, h                                       ; $70AA: $6C
    ld l, h                                       ; $70AB: $6C

jr_01B_70AC:
    inc l                                         ; $70AC: $2C
    jr nz, jr_01B_711D                            ; $70AD: $20 $6E

    ld l, a                                       ; $70AF: $6F
    jr nz, @+$6F                                  ; $70B0: $20 $6D

    ld l, a                                       ; $70B2: $6F
    ld [hl], d                                    ; $70B3: $72
    ld h, l                                       ; $70B4: $65
    cp $27                                        ; $70B5: $FE $27
    ld d, e                                       ; $70B7: $53
    ld l, b                                       ; $70B8: $68
    ld h, c                                       ; $70B9: $61
    ld h, h                                       ; $70BA: $64
    ld h, h                                       ; $70BB: $64
    ld [hl], l                                    ; $70BC: $75
    ld [hl], b                                    ; $70BD: $70
    jr nz, @+$5C                                  ; $70BE: $20 $5A

    ld h, l                                       ; $70C0: $65
    ld [hl], h                                    ; $70C1: $74

jr_01B_70C2:
    ld hl, $FE27                                  ; $70C2: $21 $27 $FE
    ld c, b                                       ; $70C5: $48
    ld b, c                                       ; $70C6: $41
    jr nz, jr_01B_7111                            ; $70C7: $20 $48

    ld b, c                                       ; $70C9: $41
    jr nz, jr_01B_7114                            ; $70CA: $20 $48

    ld b, c                                       ; $70CC: $41
    ld hl, $5720                                  ; $70CD: $21 $20 $57
    ld c, b                                       ; $70D0: $48
    ld c, a                                       ; $70D1: $4F
    daa                                           ; $70D2: $27
    ld d, e                                       ; $70D3: $53

jr_01B_70D4:
    rst $38                                       ; $70D4: $FF
    ld c, c                                       ; $70D5: $49
    ld c, [hl]                                    ; $70D6: $4E
    jr nz, jr_01B_711C                            ; $70D7: $20 $43

jr_01B_70D9:
    ld c, b                                       ; $70D9: $48
    ld b, c                                       ; $70DA: $41
    ld d, d                                       ; $70DB: $52
    ld b, a                                       ; $70DC: $47
    ld b, l                                       ; $70DD: $45
    jr nz, jr_01B_712E                            ; $70DE: $20 $4E

    ld c, a                                       ; $70E0: $4F
    ld d, a                                       ; $70E1: $57
    inc l                                         ; $70E2: $2C
    cp $59                                        ; $70E3: $FE $59
    ld c, a                                       ; $70E5: $4F
    ld d, l                                       ; $70E6: $55
    jr nz, jr_01B_712A                            ; $70E7: $20 $41

    ld c, [hl]                                    ; $70E9: $4E
    ld c, [hl]                                    ; $70EA: $4E
    ld c, a                                       ; $70EB: $4F
    ld e, c                                       ; $70EC: $59
    ld c, c                                       ; $70ED: $49
    ld c, [hl]                                    ; $70EE: $4E
    ld b, a                                       ; $70EF: $47

jr_01B_70F0:
    rst $38                                       ; $70F0: $FF
    ld c, c                                       ; $70F1: $49
    ld c, l                                       ; $70F2: $4D
    ld b, d                                       ; $70F3: $42
    ld b, l                                       ; $70F4: $45
    ld b, e                                       ; $70F5: $43
    ld c, c                                       ; $70F6: $49
    ld c, h                                       ; $70F7: $4C
    ld b, l                                       ; $70F8: $45
    ccf                                           ; $70F9: $3F
    ld hl, $FE21                                  ; $70FA: $21 $21 $FE
    db $FD                                        ; $70FD: $FD

jr_01B_70FE:
    sbc c                                         ; $70FE: $99

jr_01B_70FF:
    ld e, b                                       ; $70FF: $58
    inc bc                                        ; $7100: $03
    ld b, d                                       ; $7101: $42
    sbc d                                         ; $7102: $9A
    ld c, b                                       ; $7103: $48
    ld b, [hl]                                    ; $7104: $46
    sbc [hl]                                      ; $7105: $9E
    ld d, h                                       ; $7106: $54
    ld l, a                                       ; $7107: $6F
    ld l, [hl]                                    ; $7108: $6E
    ld a, c                                       ; $7109: $79
    ld hl, $4120                                  ; $710A: $21 $20 $41
    ld [hl], d                                    ; $710D: $72
    ld h, l                                       ; $710E: $65

jr_01B_710F:
    jr nz, @+$7B                                  ; $710F: $20 $79

jr_01B_7111:
    ld l, a                                       ; $7111: $6F
    ld [hl], l                                    ; $7112: $75
    rst $38                                       ; $7113: $FF

jr_01B_7114:
    ld l, a                                       ; $7114: $6F
    ld l, e                                       ; $7115: $6B

jr_01B_7116:
    ld h, c                                       ; $7116: $61
    ld a, c                                       ; $7117: $79
    ccf                                           ; $7118: $3F
    jr nz, jr_01B_716F                            ; $7119: $20 $54

    ld h, c                                       ; $711B: $61

jr_01B_711C:
    ld l, e                                       ; $711C: $6B

jr_01B_711D:
    ld h, l                                       ; $711D: $65
    jr nz, jr_01B_7194                            ; $711E: $20 $74

    ld l, b                                       ; $7120: $68
    ld l, c                                       ; $7121: $69
    ld [hl], e                                    ; $7122: $73
    cp $74                                        ; $7123: $FE $74
    ld l, a                                       ; $7125: $6F
    jr nz, jr_01B_719A                            ; $7126: $20 $72

    ld h, l                                       ; $7128: $65
    ld [hl], e                                    ; $7129: $73

jr_01B_712A:
    ld [hl], h                                    ; $712A: $74
    ld l, a                                       ; $712B: $6F
    ld [hl], d                                    ; $712C: $72
    ld h, l                                       ; $712D: $65

jr_01B_712E:
    jr nz, jr_01B_71A9                            ; $712E: $20 $79

    ld l, a                                       ; $7130: $6F
    ld [hl], l                                    ; $7131: $75
    ld [hl], d                                    ; $7132: $72
    rst $38                                       ; $7133: $FF
    ld [hl], e                                    ; $7134: $73
    ld [hl], h                                    ; $7135: $74
    ld [hl], d                                    ; $7136: $72
    ld h, l                                       ; $7137: $65
    ld l, [hl]                                    ; $7138: $6E
    ld h, a                                       ; $7139: $67
    ld [hl], h                                    ; $713A: $74
    ld l, b                                       ; $713B: $68
    ld hl, $FDFE                                  ; $713C: $21 $FE $FD
    sbc c                                         ; $713F: $99
    ld e, b                                       ; $7140: $58
    inc b                                         ; $7141: $04
    ld b, d                                       ; $7142: $42
    sbc d                                         ; $7143: $9A
    xor c                                         ; $7144: $A9
    ld c, a                                       ; $7145: $4F
    sbc [hl]                                      ; $7146: $9E
    ld c, [hl]                                    ; $7147: $4E
    ld l, a                                       ; $7148: $6F
    ld [hl], a                                    ; $7149: $77
    inc l                                         ; $714A: $2C
    jr nz, @+$4B                                  ; $714B: $20 $49

    jr nz, jr_01B_71B2                            ; $714D: $20 $63

    ld h, c                                       ; $714F: $61
    ld l, [hl]                                    ; $7150: $6E
    jr nz, jr_01B_71BA                            ; $7151: $20 $67

    ld h, l                                       ; $7153: $65
    ld [hl], h                                    ; $7154: $74
    rst $38                                       ; $7155: $FF
    ld [hl], h                                    ; $7156: $74
    ld l, b                                       ; $7157: $68
    ld h, l                                       ; $7158: $65
    cp $61                                        ; $7159: $FE $61
    ld [hl], b                                    ; $715B: $70
    ld [hl], b                                    ; $715C: $70
    ld [hl], d                                    ; $715D: $72
    ld h, l                                       ; $715E: $65
    ld h, e                                       ; $715F: $63
    ld l, c                                       ; $7160: $69
    ld h, c                                       ; $7161: $61
    ld [hl], h                                    ; $7162: $74
    ld l, c                                       ; $7163: $69
    ld l, a                                       ; $7164: $6F
    ld l, [hl]                                    ; $7165: $6E
    jr nz, jr_01B_71B1                            ; $7166: $20 $49

    rst $38                                       ; $7168: $FF
    ld h, h                                       ; $7169: $64
    ld h, l                                       ; $716A: $65
    ld [hl], e                                    ; $716B: $73
    ld h, l                                       ; $716C: $65
    ld [hl], d                                    ; $716D: $72
    halt                                          ; $716E: $76

jr_01B_716F:
    ld h, l                                       ; $716F: $65
    jr nz, jr_01B_71D8                            ; $7170: $20 $66

    ld [hl], d                                    ; $7172: $72
    ld l, a                                       ; $7173: $6F
    ld l, l                                       ; $7174: $6D
    cp $4D                                        ; $7175: $FE $4D
    ld l, a                                       ; $7177: $6F
    ld [hl], d                                    ; $7178: $72
    ld h, c                                       ; $7179: $61
    ld h, a                                       ; $717A: $67
    ld l, $20                                     ; $717B: $2E $20
    ld c, b                                       ; $717D: $48
    ld h, l                                       ; $717E: $65
    daa                                           ; $717F: $27
    ld l, h                                       ; $7180: $6C
    ld l, h                                       ; $7181: $6C
    rst $38                                       ; $7182: $FF
    ld [hl], a                                    ; $7183: $77
    ld l, a                                       ; $7184: $6F
    ld l, [hl]                                    ; $7185: $6E
    ld h, h                                       ; $7186: $64
    ld h, l                                       ; $7187: $65
    ld [hl], d                                    ; $7188: $72
    jr nz, @+$79                                  ; $7189: $20 $77

    ld l, b                                       ; $718B: $68
    ld a, c                                       ; $718C: $79
    jr nz, jr_01B_71F7                            ; $718D: $20 $68

    ld h, l                                       ; $718F: $65
    cp $65                                        ; $7190: $FE $65
    halt                                          ; $7192: $76
    ld h, l                                       ; $7193: $65

jr_01B_7194:
    ld [hl], d                                    ; $7194: $72
    jr nz, @+$75                                  ; $7195: $20 $73

    ld [hl], l                                    ; $7197: $75
    ld [hl], b                                    ; $7198: $70
    ld [hl], b                                    ; $7199: $70

jr_01B_719A:
    ld [hl], d                                    ; $719A: $72
    ld h, l                                       ; $719B: $65
    ld [hl], e                                    ; $719C: $73
    ld [hl], e                                    ; $719D: $73
    ld h, l                                       ; $719E: $65
    ld h, h                                       ; $719F: $64
    rst $38                                       ; $71A0: $FF
    ld l, l                                       ; $71A1: $6D
    ld h, l                                       ; $71A2: $65
    jr nz, jr_01B_721A                            ; $71A3: $20 $75

    ld l, [hl]                                    ; $71A5: $6E
    ld h, h                                       ; $71A6: $64
    ld h, l                                       ; $71A7: $65
    ld [hl], d                                    ; $71A8: $72

jr_01B_71A9:
    jr nz, jr_01B_721F                            ; $71A9: $20 $74

    ld l, b                                       ; $71AB: $68
    ld h, c                                       ; $71AC: $61
    ld [hl], h                                    ; $71AD: $74
    cp $69                                        ; $71AE: $FE $69
    ld h, a                                       ; $71B0: $67

jr_01B_71B1:
    ld l, [hl]                                    ; $71B1: $6E

jr_01B_71B2:
    ld l, a                                       ; $71B2: $6F
    ld [hl], d                                    ; $71B3: $72
    ld h, c                                       ; $71B4: $61
    ld l, [hl]                                    ; $71B5: $6E
    ld l, c                                       ; $71B6: $69
    ld l, l                                       ; $71B7: $6D
    ld [hl], l                                    ; $71B8: $75
    ld [hl], e                                    ; $71B9: $73

jr_01B_71BA:
    ld l, $FF                                     ; $71BA: $2E $FF
    ld d, h                                       ; $71BC: $54
    ld h, c                                       ; $71BD: $61
    ld [hl], e                                    ; $71BE: $73
    ld [hl], h                                    ; $71BF: $74
    ld h, l                                       ; $71C0: $65
    jr nz, jr_01B_7237                            ; $71C1: $20 $74

    ld l, b                                       ; $71C3: $68
    ld h, l                                       ; $71C4: $65
    jr nz, jr_01B_722D                            ; $71C5: $20 $66

    ld [hl], l                                    ; $71C7: $75
    ld l, h                                       ; $71C8: $6C
    ld l, h                                       ; $71C9: $6C
    cp $70                                        ; $71CA: $FE $70
    ld l, a                                       ; $71CC: $6F
    ld [hl], a                                    ; $71CD: $77
    ld h, l                                       ; $71CE: $65
    ld [hl], d                                    ; $71CF: $72
    jr nz, jr_01B_7241                            ; $71D0: $20 $6F

    ld h, [hl]                                    ; $71D2: $66
    jr nz, jr_01B_7242                            ; $71D3: $20 $6D

    ld a, c                                       ; $71D5: $79
    rst $38                                       ; $71D6: $FF
    ld [hl], a                                    ; $71D7: $77

jr_01B_71D8:
    ld [hl], d                                    ; $71D8: $72
    ld h, c                                       ; $71D9: $61
    ld [hl], h                                    ; $71DA: $74
    ld l, b                                       ; $71DB: $68
    ld hl, $FE21                                  ; $71DC: $21 $21 $FE
    db $FD                                        ; $71DF: $FD
    sbc c                                         ; $71E0: $99
    ld e, b                                       ; $71E1: $58
    dec b                                         ; $71E2: $05
    ld b, d                                       ; $71E3: $42
    sbc d                                         ; $71E4: $9A
    xor c                                         ; $71E5: $A9
    ld c, a                                       ; $71E6: $4F
    sbc [hl]                                      ; $71E7: $9E
    ld c, c                                       ; $71E8: $49
    dec l                                         ; $71E9: $2D
    ld c, c                                       ; $71EA: $49
    ld l, l                                       ; $71EB: $6D
    ld [hl], b                                    ; $71EC: $70
    ld l, a                                       ; $71ED: $6F
    ld [hl], e                                    ; $71EE: $73
    ld [hl], e                                    ; $71EF: $73
    ld l, c                                       ; $71F0: $69
    ld h, d                                       ; $71F1: $62
    ld l, h                                       ; $71F2: $6C
    ld h, l                                       ; $71F3: $65
    ld hl, $4920                                  ; $71F4: $21 $20 $49

jr_01B_71F7:
    rst $38                                       ; $71F7: $FF
    ld h, c                                       ; $71F8: $61
    ld l, l                                       ; $71F9: $6D
    ld l, $2E                                     ; $71FA: $2E $2E
    ld l, $20                                     ; $71FC: $2E $20
    ld l, [hl]                                    ; $71FE: $6E
    ld l, a                                       ; $71FF: $6F
    ld [hl], h                                    ; $7200: $74
    jr nz, @+$63                                  ; $7201: $20 $61

    ld [hl], e                                    ; $7203: $73
    cp $77                                        ; $7204: $FE $77
    ld h, l                                       ; $7206: $65
    ld h, c                                       ; $7207: $61
    ld l, e                                       ; $7208: $6B
    ld l, $2E                                     ; $7209: $2E $2E
    ld l, $20                                     ; $720B: $2E $20
    ld h, c                                       ; $720D: $61
    ld [hl], e                                    ; $720E: $73
    jr nz, @+$76                                  ; $720F: $20 $74

    ld l, b                                       ; $7211: $68
    ld h, c                                       ; $7212: $61
    ld [hl], h                                    ; $7213: $74
    rst $38                                       ; $7214: $FF
    ld [hl], b                                    ; $7215: $70
    ld h, c                                       ; $7216: $61
    ld [hl], h                                    ; $7217: $74
    ld l, b                                       ; $7218: $68
    ld h, l                                       ; $7219: $65

jr_01B_721A:
    ld [hl], h                                    ; $721A: $74
    ld l, c                                       ; $721B: $69
    ld h, e                                       ; $721C: $63
    ld l, $2E                                     ; $721D: $2E $2E

jr_01B_721F:
    ld l, $FE                                     ; $721F: $2E $FE
    ld h, c                                       ; $7221: $61
    ld l, b                                       ; $7222: $68
    ld l, b                                       ; $7223: $68
    ld l, b                                       ; $7224: $68
    ld l, b                                       ; $7225: $68
    ld hl, $2121                                  ; $7226: $21 $21 $21
    cp $FD                                        ; $7229: $FE $FD
    sbc c                                         ; $722B: $99
    ld e, b                                       ; $722C: $58

jr_01B_722D:
    ld b, $42                                     ; $722D: $06 $42
    sbc d                                         ; $722F: $9A
    ld c, b                                       ; $7230: $48
    ld b, [hl]                                    ; $7231: $46
    sbc [hl]                                      ; $7232: $9E
    ld d, h                                       ; $7233: $54
    ld l, a                                       ; $7234: $6F
    ld l, [hl]                                    ; $7235: $6E
    ld a, c                                       ; $7236: $79

jr_01B_7237:
    ld hl, $4120                                  ; $7237: $21 $20 $41
    ld [hl], d                                    ; $723A: $72
    ld h, l                                       ; $723B: $65
    jr nz, @+$7B                                  ; $723C: $20 $79

    ld l, a                                       ; $723E: $6F
    ld [hl], l                                    ; $723F: $75
    rst $38                                       ; $7240: $FF

jr_01B_7241:
    ld l, b                                       ; $7241: $68

jr_01B_7242:
    ld [hl], l                                    ; $7242: $75
    ld [hl], d                                    ; $7243: $72
    ld [hl], h                                    ; $7244: $74
    ccf                                           ; $7245: $3F
    cp $FD                                        ; $7246: $FE $FD
    sbc d                                         ; $7248: $9A
    ld a, b                                       ; $7249: $78
    ld [hl], b                                    ; $724A: $70
    sbc [hl]                                      ; $724B: $9E
    ld c, c                                       ; $724C: $49
    daa                                           ; $724D: $27
    ld l, l                                       ; $724E: $6D
    jr nz, @+$68                                  ; $724F: $20 $66

    ld l, c                                       ; $7251: $69
    ld l, [hl]                                    ; $7252: $6E
    ld h, l                                       ; $7253: $65
    inc l                                         ; $7254: $2C
    rst $38                                       ; $7255: $FF
    ld b, l                                       ; $7256: $45
    ld l, c                                       ; $7257: $69
    ld h, h                                       ; $7258: $64
    ld l, a                                       ; $7259: $6F
    ld l, [hl]                                    ; $725A: $6E
    ld l, $20                                     ; $725B: $2E $20
    ld c, d                                       ; $725D: $4A
    ld [hl], l                                    ; $725E: $75
    ld [hl], e                                    ; $725F: $73
    ld [hl], h                                    ; $7260: $74
    jr nz, jr_01B_72C4                            ; $7261: $20 $61

    cp $6C                                        ; $7263: $FE $6C
    ld l, c                                       ; $7265: $69
    ld [hl], h                                    ; $7266: $74
    ld [hl], h                                    ; $7267: $74
    ld l, h                                       ; $7268: $6C
    ld h, l                                       ; $7269: $65
    jr nz, jr_01B_72E3                            ; $726A: $20 $77

    ld l, c                                       ; $726C: $69
    ld l, [hl]                                    ; $726D: $6E
    ld h, h                                       ; $726E: $64
    ld h, l                                       ; $726F: $65
    ld h, h                                       ; $7270: $64
    ld l, $FE                                     ; $7271: $2E $FE
    db $FD                                        ; $7273: $FD
    sbc d                                         ; $7274: $9A
    ld c, b                                       ; $7275: $48
    ld b, [hl]                                    ; $7276: $46
    sbc [hl]                                      ; $7277: $9E
    ld d, h                                       ; $7278: $54
    ld l, b                                       ; $7279: $68
    ld h, c                                       ; $727A: $61
    ld [hl], h                                    ; $727B: $74
    daa                                           ; $727C: $27
    ld [hl], e                                    ; $727D: $73
    jr nz, jr_01B_72E7                            ; $727E: $20 $67

    ld l, a                                       ; $7280: $6F
    ld l, a                                       ; $7281: $6F
    ld h, h                                       ; $7282: $64
    dec l                                         ; $7283: $2D
    cp $FD                                        ; $7284: $FE $FD
    sbc c                                         ; $7286: $99
    ld e, b                                       ; $7287: $58
    rlca                                          ; $7288: $07
    ld b, d                                       ; $7289: $42
    sbc d                                         ; $728A: $9A
    ld a, b                                       ; $728B: $78
    ld [hl], b                                    ; $728C: $70
    sbc [hl]                                      ; $728D: $9E
    ld hl, $2121                                  ; $728E: $21 $21 $21
    ld hl, $FDFE                                  ; $7291: $21 $FE $FD
    sbc d                                         ; $7294: $9A
    add hl, hl                                    ; $7295: $29
    ld b, e                                       ; $7296: $43
    sbc [hl]                                      ; $7297: $9E
    ld c, c                                       ; $7298: $49
    jr nz, jr_01B_72FC                            ; $7299: $20 $61

    ld [hl], b                                    ; $729B: $70
    ld l, a                                       ; $729C: $6F
    ld l, h                                       ; $729D: $6C
    ld l, a                                       ; $729E: $6F
    ld h, a                                       ; $729F: $67
    ld l, c                                       ; $72A0: $69
    ld a, d                                       ; $72A1: $7A
    ld h, l                                       ; $72A2: $65
    jr nz, jr_01B_730B                            ; $72A3: $20 $66

    ld l, a                                       ; $72A5: $6F
    ld [hl], d                                    ; $72A6: $72
    rst $38                                       ; $72A7: $FF
    ld [hl], e                                    ; $72A8: $73
    ld [hl], h                                    ; $72A9: $74
    ld h, c                                       ; $72AA: $61
    ld [hl], d                                    ; $72AB: $72
    ld [hl], h                                    ; $72AC: $74
    ld l, h                                       ; $72AD: $6C
    ld l, c                                       ; $72AE: $69
    ld l, [hl]                                    ; $72AF: $6E
    ld h, a                                       ; $72B0: $67
    jr nz, jr_01B_732C                            ; $72B1: $20 $79

    ld l, a                                       ; $72B3: $6F
    ld [hl], l                                    ; $72B4: $75
    inc l                                         ; $72B5: $2C
    cp $47                                        ; $72B6: $FE $47
    ld [hl], d                                    ; $72B8: $72
    ld h, l                                       ; $72B9: $65
    ld h, c                                       ; $72BA: $61
    ld [hl], h                                    ; $72BB: $74
    jr nz, jr_01B_730B                            ; $72BC: $20 $4D

    ld h, c                                       ; $72BE: $61
    ld h, a                                       ; $72BF: $67
    ld [hl], l                                    ; $72C0: $75
    ld [hl], e                                    ; $72C1: $73
    ld l, $FF                                     ; $72C2: $2E $FF

jr_01B_72C4:
    ld d, h                                       ; $72C4: $54
    ld l, b                                       ; $72C5: $68
    ld l, c                                       ; $72C6: $69
    ld [hl], e                                    ; $72C7: $73
    jr nz, @+$6B                                  ; $72C8: $20 $69

    ld [hl], e                                    ; $72CA: $73
    cp $70                                        ; $72CB: $FE $70
    ld [hl], d                                    ; $72CD: $72
    ld l, a                                       ; $72CE: $6F
    ld h, d                                       ; $72CF: $62
    ld h, c                                       ; $72D0: $61
    ld h, d                                       ; $72D1: $62
    ld l, h                                       ; $72D2: $6C
    ld a, c                                       ; $72D3: $79
    rst $38                                       ; $72D4: $FF
    ld [hl], e                                    ; $72D5: $73
    ld l, a                                       ; $72D6: $6F
    ld l, l                                       ; $72D7: $6D
    ld h, l                                       ; $72D8: $65
    ld [hl], h                                    ; $72D9: $74
    ld l, b                                       ; $72DA: $68
    ld l, c                                       ; $72DB: $69
    ld l, [hl]                                    ; $72DC: $6E
    ld h, a                                       ; $72DD: $67
    jr nz, jr_01B_734F                            ; $72DE: $20 $6F

    ld h, [hl]                                    ; $72E0: $66
    jr nz, jr_01B_7344                            ; $72E1: $20 $61

jr_01B_72E3:
    cp $73                                        ; $72E3: $FE $73
    ld [hl], l                                    ; $72E5: $75
    ld [hl], d                                    ; $72E6: $72

jr_01B_72E7:
    ld [hl], b                                    ; $72E7: $70
    ld [hl], d                                    ; $72E8: $72
    ld l, c                                       ; $72E9: $69
    ld [hl], e                                    ; $72EA: $73
    ld h, l                                       ; $72EB: $65
    jr nz, jr_01B_7362                            ; $72EC: $20 $74

    ld l, a                                       ; $72EE: $6F
    rst $38                                       ; $72EF: $FF
    ld a, c                                       ; $72F0: $79
    ld l, a                                       ; $72F1: $6F
    ld [hl], l                                    ; $72F2: $75
    ld l, $FE                                     ; $72F3: $2E $FE
    db $FD                                        ; $72F5: $FD
    ld e, b                                       ; $72F6: $58
    ld [bc], a                                    ; $72F7: $02
    sbc d                                         ; $72F8: $9A
    ld a, b                                       ; $72F9: $78
    ld [hl], b                                    ; $72FA: $70
    sbc [hl]                                      ; $72FB: $9E

jr_01B_72FC:
    ld c, d                                       ; $72FC: $4A
    ld [hl], l                                    ; $72FD: $75
    ld [hl], e                                    ; $72FE: $73
    ld [hl], h                                    ; $72FF: $74
    ld l, $2E                                     ; $7300: $2E $2E
    ld l, $20                                     ; $7302: $2E $20
    ld [hl], a                                    ; $7304: $77
    ld l, b                                       ; $7305: $68
    ld l, a                                       ; $7306: $6F
    jr nz, jr_01B_736A                            ; $7307: $20 $61

    ld [hl], d                                    ; $7309: $72
    ld h, l                                       ; $730A: $65

jr_01B_730B:
    rst $38                                       ; $730B: $FF
    ld a, c                                       ; $730C: $79
    ld l, a                                       ; $730D: $6F
    ld [hl], l                                    ; $730E: $75
    ccf                                           ; $730F: $3F
    jr nz, jr_01B_7369                            ; $7310: $20 $57

    ld l, b                                       ; $7312: $68
    ld h, c                                       ; $7313: $61
    ld [hl], h                                    ; $7314: $74
    jr nz, jr_01B_737B                            ; $7315: $20 $64

    ld l, c                                       ; $7317: $69
    ld h, h                                       ; $7318: $64
    cp $79                                        ; $7319: $FE $79
    ld l, a                                       ; $731B: $6F
    ld [hl], l                                    ; $731C: $75
    jr nz, jr_01B_7383                            ; $731D: $20 $64

    ld l, a                                       ; $731F: $6F
    jr nz, jr_01B_7396                            ; $7320: $20 $74

    ld l, a                                       ; $7322: $6F
    rst $38                                       ; $7323: $FF
    ld b, l                                       ; $7324: $45
    ld l, c                                       ; $7325: $69
    ld h, h                                       ; $7326: $64
    ld l, a                                       ; $7327: $6F
    ld l, [hl]                                    ; $7328: $6E
    ccf                                           ; $7329: $3F
    cp $FD                                        ; $732A: $FE $FD

jr_01B_732C:
    sbc d                                         ; $732C: $9A
    add hl, hl                                    ; $732D: $29
    ld b, e                                       ; $732E: $43
    sbc [hl]                                      ; $732F: $9E
    ld d, a                                       ; $7330: $57
    ld h, l                                       ; $7331: $65
    jr nz, jr_01B_7395                            ; $7332: $20 $61

    ld [hl], d                                    ; $7334: $72
    ld h, l                                       ; $7335: $65
    rst $38                                       ; $7336: $FF
    ld b, c                                       ; $7337: $41
    ld [hl], d                                    ; $7338: $72
    ld h, h                                       ; $7339: $64
    ld h, l                                       ; $733A: $65
    ld [hl], d                                    ; $733B: $72
    ld l, c                                       ; $733C: $69
    ld h, c                                       ; $733D: $61
    ld l, h                                       ; $733E: $6C
    ld [hl], e                                    ; $733F: $73
    inc l                                         ; $7340: $2C
    cp $70                                        ; $7341: $FE $70
    ld h, l                                       ; $7343: $65

jr_01B_7344:
    ld l, a                                       ; $7344: $6F
    ld [hl], b                                    ; $7345: $70
    ld l, h                                       ; $7346: $6C
    ld h, l                                       ; $7347: $65
    jr nz, @+$71                                  ; $7348: $20 $6F

    ld h, [hl]                                    ; $734A: $66
    jr nz, @+$76                                  ; $734B: $20 $74

    ld l, b                                       ; $734D: $68
    ld h, l                                       ; $734E: $65

jr_01B_734F:
    rst $38                                       ; $734F: $FF
    ld [hl], e                                    ; $7350: $73
    ld l, e                                       ; $7351: $6B
    ld a, c                                       ; $7352: $79
    ld l, $20                                     ; $7353: $2E $20
    ld b, [hl]                                    ; $7355: $46
    ld l, a                                       ; $7356: $6F
    ld [hl], d                                    ; $7357: $72
    cp $63                                        ; $7358: $FE $63
    ld h, l                                       ; $735A: $65
    ld l, [hl]                                    ; $735B: $6E
    ld [hl], h                                    ; $735C: $74
    ld [hl], l                                    ; $735D: $75
    ld [hl], d                                    ; $735E: $72
    ld l, c                                       ; $735F: $69
    ld h, l                                       ; $7360: $65
    ld [hl], e                                    ; $7361: $73

jr_01B_7362:
    jr nz, jr_01B_73DB                            ; $7362: $20 $77

    ld h, l                                       ; $7364: $65
    rst $38                                       ; $7365: $FF
    ld l, b                                       ; $7366: $68
    ld h, c                                       ; $7367: $61
    halt                                          ; $7368: $76

jr_01B_7369:
    ld h, l                                       ; $7369: $65

jr_01B_736A:
    jr nz, jr_01B_73D5                            ; $736A: $20 $69

    ld [hl], e                                    ; $736C: $73
    ld l, a                                       ; $736D: $6F
    ld l, h                                       ; $736E: $6C
    ld h, c                                       ; $736F: $61
    ld [hl], h                                    ; $7370: $74
    ld h, l                                       ; $7371: $65
    ld h, h                                       ; $7372: $64
    cp $6F                                        ; $7373: $FE $6F
    ld [hl], l                                    ; $7375: $75
    ld [hl], d                                    ; $7376: $72
    ld [hl], e                                    ; $7377: $73
    ld h, l                                       ; $7378: $65
    ld l, h                                       ; $7379: $6C
    halt                                          ; $737A: $76

jr_01B_737B:
    ld h, l                                       ; $737B: $65
    ld [hl], e                                    ; $737C: $73
    jr nz, @+$68                                  ; $737D: $20 $66

    ld [hl], d                                    ; $737F: $72
    ld l, a                                       ; $7380: $6F
    ld l, l                                       ; $7381: $6D
    rst $38                                       ; $7382: $FF

jr_01B_7383:
    ld [hl], h                                    ; $7383: $74
    ld l, b                                       ; $7384: $68
    ld h, l                                       ; $7385: $65
    jr nz, jr_01B_73F7                            ; $7386: $20 $6F

    ld [hl], h                                    ; $7388: $74
    ld l, b                                       ; $7389: $68
    ld h, l                                       ; $738A: $65
    ld [hl], d                                    ; $738B: $72
    cp $63                                        ; $738C: $FE $63
    ld l, a                                       ; $738E: $6F
    ld [hl], l                                    ; $738F: $75
    ld l, [hl]                                    ; $7390: $6E
    ld [hl], h                                    ; $7391: $74
    ld [hl], d                                    ; $7392: $72
    ld l, c                                       ; $7393: $69
    ld h, l                                       ; $7394: $65

jr_01B_7395:
    ld [hl], e                                    ; $7395: $73

jr_01B_7396:
    jr nz, jr_01B_7407                            ; $7396: $20 $6F

    ld h, [hl]                                    ; $7398: $66
    rst $38                                       ; $7399: $FF
    ld c, l                                       ; $739A: $4D
    ld h, c                                       ; $739B: $61
    ld h, a                                       ; $739C: $67
    ld l, c                                       ; $739D: $69
    dec l                                         ; $739E: $2D
    ld c, [hl]                                    ; $739F: $4E
    ld h, c                                       ; $73A0: $61
    ld [hl], h                                    ; $73A1: $74
    ld l, c                                       ; $73A2: $69
    ld l, a                                       ; $73A3: $6F
    ld l, [hl]                                    ; $73A4: $6E
    inc l                                         ; $73A5: $2C
    cp $62                                        ; $73A6: $FE $62
    ld [hl], l                                    ; $73A8: $75
    ld [hl], h                                    ; $73A9: $74
    jr nz, jr_01B_7420                            ; $73AA: $20 $74

    ld l, b                                       ; $73AC: $68
    ld h, l                                       ; $73AD: $65
    rst $38                                       ; $73AE: $FF
    ld [hl], e                                    ; $73AF: $73
    ld l, c                                       ; $73B0: $69
    ld [hl], h                                    ; $73B1: $74
    ld [hl], l                                    ; $73B2: $75
    ld h, c                                       ; $73B3: $61
    ld [hl], h                                    ; $73B4: $74
    ld l, c                                       ; $73B5: $69
    ld l, a                                       ; $73B6: $6F
    ld l, [hl]                                    ; $73B7: $6E
    jr nz, @+$7B                                  ; $73B8: $20 $79

    ld l, a                                       ; $73BA: $6F
    ld [hl], l                                    ; $73BB: $75
    cp $61                                        ; $73BC: $FE $61
    ld [hl], d                                    ; $73BE: $72
    ld h, l                                       ; $73BF: $65
    jr nz, jr_01B_742B                            ; $73C0: $20 $69

    ld l, [hl]                                    ; $73C2: $6E
    halt                                          ; $73C3: $76
    ld l, a                                       ; $73C4: $6F
    ld l, h                                       ; $73C5: $6C
    halt                                          ; $73C6: $76
    ld h, l                                       ; $73C7: $65
    ld h, h                                       ; $73C8: $64
    jr nz, jr_01B_7434                            ; $73C9: $20 $69

    ld l, [hl]                                    ; $73CB: $6E
    rst $38                                       ; $73CC: $FF
    ld l, c                                       ; $73CD: $69
    ld [hl], e                                    ; $73CE: $73
    jr nz, @+$75                                  ; $73CF: $20 $73

    ld l, a                                       ; $73D1: $6F
    ld l, l                                       ; $73D2: $6D
    ld h, l                                       ; $73D3: $65
    ld [hl], h                                    ; $73D4: $74

jr_01B_73D5:
    ld l, b                                       ; $73D5: $68
    ld l, c                                       ; $73D6: $69
    ld l, [hl]                                    ; $73D7: $6E
    ld h, a                                       ; $73D8: $67
    jr nz, jr_01B_7452                            ; $73D9: $20 $77

jr_01B_73DB:
    ld h, l                                       ; $73DB: $65
    cp $68                                        ; $73DC: $FE $68
    ld h, c                                       ; $73DE: $61
    halt                                          ; $73DF: $76
    ld h, l                                       ; $73E0: $65
    ld l, [hl]                                    ; $73E1: $6E
    daa                                           ; $73E2: $27
    ld [hl], h                                    ; $73E3: $74
    jr nz, jr_01B_7448                            ; $73E4: $20 $62

    ld h, l                                       ; $73E6: $65
    ld h, l                                       ; $73E7: $65
    ld l, [hl]                                    ; $73E8: $6E
    rst $38                                       ; $73E9: $FF
    ld h, c                                       ; $73EA: $61
    ld h, d                                       ; $73EB: $62
    ld l, h                                       ; $73EC: $6C
    ld h, l                                       ; $73ED: $65
    jr nz, jr_01B_7464                            ; $73EE: $20 $74

    ld l, a                                       ; $73F0: $6F
    jr nz, jr_01B_745C                            ; $73F1: $20 $69

    ld h, a                                       ; $73F3: $67
    ld l, [hl]                                    ; $73F4: $6E
    ld l, a                                       ; $73F5: $6F
    ld [hl], d                                    ; $73F6: $72

jr_01B_73F7:
    ld h, l                                       ; $73F7: $65
    ld l, $FE                                     ; $73F8: $2E $FE
    ld b, c                                       ; $73FA: $41
    ld [hl], e                                    ; $73FB: $73
    jr nz, jr_01B_7464                            ; $73FC: $20 $66

    ld l, a                                       ; $73FE: $6F
    ld [hl], d                                    ; $73FF: $72
    jr nz, jr_01B_747B                            ; $7400: $20 $79

    ld l, a                                       ; $7402: $6F
    ld [hl], l                                    ; $7403: $75
    ld [hl], d                                    ; $7404: $72
    rst $38                                       ; $7405: $FF
    ld h, [hl]                                    ; $7406: $66

jr_01B_7407:
    ld [hl], d                                    ; $7407: $72
    ld l, c                                       ; $7408: $69
    ld h, l                                       ; $7409: $65
    ld l, [hl]                                    ; $740A: $6E
    ld h, h                                       ; $740B: $64
    jr nz, jr_01B_7453                            ; $740C: $20 $45

    ld l, c                                       ; $740E: $69
    ld h, h                                       ; $740F: $64
    ld l, a                                       ; $7410: $6F
    ld l, [hl]                                    ; $7411: $6E
    inc l                                         ; $7412: $2C
    cp $77                                        ; $7413: $FE $77
    ld h, l                                       ; $7415: $65
    jr nz, jr_01B_7485                            ; $7416: $20 $6D

    ld h, l                                       ; $7418: $65
    ld [hl], d                                    ; $7419: $72
    ld h, l                                       ; $741A: $65
    ld l, h                                       ; $741B: $6C
    ld a, c                                       ; $741C: $79
    jr nz, jr_01B_7483                            ; $741D: $20 $64

    ld h, l                                       ; $741F: $65

jr_01B_7420:
    ld h, c                                       ; $7420: $61
    ld l, h                                       ; $7421: $6C
    ld [hl], h                                    ; $7422: $74
    rst $38                                       ; $7423: $FF
    ld l, b                                       ; $7424: $68
    ld l, c                                       ; $7425: $69
    ld l, l                                       ; $7426: $6D
    jr nz, jr_01B_748A                            ; $7427: $20 $61

    jr nz, jr_01B_7493                            ; $7429: $20 $68

jr_01B_742B:
    ld h, c                                       ; $742B: $61
    ld [hl], d                                    ; $742C: $72
    ld l, l                                       ; $742D: $6D
    ld l, h                                       ; $742E: $6C
    ld h, l                                       ; $742F: $65
    ld [hl], e                                    ; $7430: $73
    ld [hl], e                                    ; $7431: $73
    cp $62                                        ; $7432: $FE $62

jr_01B_7434:
    ld l, h                                       ; $7434: $6C
    ld l, a                                       ; $7435: $6F
    ld [hl], a                                    ; $7436: $77
    ld l, $20                                     ; $7437: $2E $20
    ld c, b                                       ; $7439: $48
    ld h, l                                       ; $743A: $65
    jr nz, jr_01B_74B4                            ; $743B: $20 $77

    ld l, c                                       ; $743D: $69
    ld l, h                                       ; $743E: $6C
    ld l, h                                       ; $743F: $6C
    rst $38                                       ; $7440: $FF
    ld h, d                                       ; $7441: $62
    ld h, l                                       ; $7442: $65
    jr nz, jr_01B_74AB                            ; $7443: $20 $66

    ld l, c                                       ; $7445: $69
    ld l, [hl]                                    ; $7446: $6E
    ld h, l                                       ; $7447: $65

jr_01B_7448:
    ld l, $FE                                     ; $7448: $2E $FE
    db $FD                                        ; $744A: $FD
    ld e, b                                       ; $744B: $58
    inc bc                                        ; $744C: $03
    sbc d                                         ; $744D: $9A
    ld a, b                                       ; $744E: $78
    ld [hl], b                                    ; $744F: $70
    sbc [hl]                                      ; $7450: $9E
    ld d, a                                       ; $7451: $57

jr_01B_7452:
    ld h, c                                       ; $7452: $61

jr_01B_7453:
    ld l, c                                       ; $7453: $69
    ld [hl], h                                    ; $7454: $74
    jr nz, jr_01B_74B8                            ; $7455: $20 $61

    jr nz, jr_01B_74C6                            ; $7457: $20 $6D

    ld l, c                                       ; $7459: $69
    ld l, [hl]                                    ; $745A: $6E
    ld [hl], l                                    ; $745B: $75

jr_01B_745C:
    ld [hl], h                                    ; $745C: $74
    ld h, l                                       ; $745D: $65
    inc l                                         ; $745E: $2C
    cp $49                                        ; $745F: $FE $49
    jr nz, jr_01B_74D5                            ; $7461: $20 $72

    ld h, l                                       ; $7463: $65

jr_01B_7464:
    ld h, e                                       ; $7464: $63
    ld l, a                                       ; $7465: $6F
    ld h, a                                       ; $7466: $67
    ld l, [hl]                                    ; $7467: $6E
    ld l, c                                       ; $7468: $69
    ld a, d                                       ; $7469: $7A
    ld h, l                                       ; $746A: $65
    rst $38                                       ; $746B: $FF
    ld [hl], h                                    ; $746C: $74
    ld l, b                                       ; $746D: $68
    ld h, c                                       ; $746E: $61
    ld [hl], h                                    ; $746F: $74
    jr nz, jr_01B_74E8                            ; $7470: $20 $76

    ld l, a                                       ; $7472: $6F
    ld l, c                                       ; $7473: $69
    ld h, e                                       ; $7474: $63
    ld h, l                                       ; $7475: $65
    ld l, $2E                                     ; $7476: $2E $2E
    ld l, $FE                                     ; $7478: $2E $FE
    db $FD                                        ; $747A: $FD

jr_01B_747B:
    sbc d                                         ; $747B: $9A
    add hl, hl                                    ; $747C: $29
    ld b, e                                       ; $747D: $43
    sbc [hl]                                      ; $747E: $9E
    ld e, c                                       ; $747F: $59
    ld h, l                                       ; $7480: $65
    ld [hl], e                                    ; $7481: $73
    inc l                                         ; $7482: $2C

jr_01B_7483:
    jr nz, @+$6B                                  ; $7483: $20 $69

jr_01B_7485:
    ld [hl], h                                    ; $7485: $74
    jr nz, jr_01B_74FF                            ; $7486: $20 $77

    ld h, c                                       ; $7488: $61
    ld [hl], e                                    ; $7489: $73

jr_01B_748A:
    jr nz, jr_01B_74D5                            ; $748A: $20 $49

    rst $38                                       ; $748C: $FF
    ld [hl], a                                    ; $748D: $77
    ld l, b                                       ; $748E: $68
    ld l, a                                       ; $748F: $6F
    jr nz, jr_01B_74FA                            ; $7490: $20 $68

    ld h, l                                       ; $7492: $65

jr_01B_7493:
    ld l, h                                       ; $7493: $6C
    ld [hl], b                                    ; $7494: $70
    ld h, l                                       ; $7495: $65
    ld h, h                                       ; $7496: $64
    jr nz, jr_01B_7512                            ; $7497: $20 $79

    ld l, a                                       ; $7499: $6F
    ld [hl], l                                    ; $749A: $75
    cp $6F                                        ; $749B: $FE $6F
    ld [hl], l                                    ; $749D: $75
    ld [hl], h                                    ; $749E: $74
    jr nz, jr_01B_7510                            ; $749F: $20 $6F

    ld h, [hl]                                    ; $74A1: $66
    jr nz, jr_01B_7518                            ; $74A2: $20 $74

    ld l, b                                       ; $74A4: $68
    ld h, l                                       ; $74A5: $65
    rst $38                                       ; $74A6: $FF
    ld d, e                                       ; $74A7: $53
    ld l, b                                       ; $74A8: $68
    ld h, c                                       ; $74A9: $61
    ld h, h                                       ; $74AA: $64

jr_01B_74AB:
    ld l, a                                       ; $74AB: $6F
    ld [hl], a                                    ; $74AC: $77
    ld l, b                                       ; $74AD: $68
    ld l, a                                       ; $74AE: $6F
    ld l, h                                       ; $74AF: $6C
    ld h, h                                       ; $74B0: $64
    ld l, $FE                                     ; $74B1: $2E $FE
    ld d, l                                       ; $74B3: $55

jr_01B_74B4:
    ld l, [hl]                                    ; $74B4: $6E
    ld h, [hl]                                    ; $74B5: $66
    ld l, a                                       ; $74B6: $6F
    ld [hl], d                                    ; $74B7: $72

jr_01B_74B8:
    ld [hl], h                                    ; $74B8: $74
    ld [hl], l                                    ; $74B9: $75
    ld l, [hl]                                    ; $74BA: $6E
    ld h, c                                       ; $74BB: $61
    ld [hl], h                                    ; $74BC: $74
    ld h, l                                       ; $74BD: $65
    ld l, h                                       ; $74BE: $6C
    ld a, c                                       ; $74BF: $79
    jr nz, jr_01B_750B                            ; $74C0: $20 $49

    rst $38                                       ; $74C2: $FF
    ld [hl], a                                    ; $74C3: $77
    ld h, c                                       ; $74C4: $61
    ld [hl], e                                    ; $74C5: $73

jr_01B_74C6:
    jr nz, jr_01B_753B                            ; $74C6: $20 $73

    ld l, c                                       ; $74C8: $69
    ld h, h                                       ; $74C9: $64
    ld h, l                                       ; $74CA: $65
    ld [hl], h                                    ; $74CB: $74
    ld [hl], d                                    ; $74CC: $72
    ld h, c                                       ; $74CD: $61
    ld h, e                                       ; $74CE: $63
    ld l, e                                       ; $74CF: $6B
    ld h, l                                       ; $74D0: $65
    ld h, h                                       ; $74D1: $64
    cp $74                                        ; $74D2: $FE $74
    ld l, b                                       ; $74D4: $68

jr_01B_74D5:
    ld h, l                                       ; $74D5: $65
    ld [hl], d                                    ; $74D6: $72
    ld h, l                                       ; $74D7: $65
    jr nz, jr_01B_754D                            ; $74D8: $20 $73

    ld l, a                                       ; $74DA: $6F
    jr nz, jr_01B_7526                            ; $74DB: $20 $49

    jr nz, jr_01B_7547                            ; $74DD: $20 $68

    ld h, c                                       ; $74DF: $61
    ld h, h                                       ; $74E0: $64
    rst $38                                       ; $74E1: $FF
    ld [hl], h                                    ; $74E2: $74
    ld l, a                                       ; $74E3: $6F
    jr nz, jr_01B_7556                            ; $74E4: $20 $70

    ld l, h                                       ; $74E6: $6C
    ld h, c                                       ; $74E7: $61

jr_01B_74E8:
    ld h, e                                       ; $74E8: $63
    ld h, l                                       ; $74E9: $65
    jr nz, jr_01B_7559                            ; $74EA: $20 $6D

    ld a, c                                       ; $74EC: $79
    cp $66                                        ; $74ED: $FE $66
    ld h, c                                       ; $74EF: $61
    ld l, c                                       ; $74F0: $69
    ld [hl], h                                    ; $74F1: $74
    ld l, b                                       ; $74F2: $68
    jr nz, @+$6B                                  ; $74F3: $20 $69

    ld l, [hl]                                    ; $74F5: $6E
    jr nz, jr_01B_7571                            ; $74F6: $20 $79

    ld l, a                                       ; $74F8: $6F
    ld [hl], l                                    ; $74F9: $75

jr_01B_74FA:
    rst $38                                       ; $74FA: $FF
    ld [hl], h                                    ; $74FB: $74
    ld l, b                                       ; $74FC: $68
    ld h, c                                       ; $74FD: $61
    ld [hl], h                                    ; $74FE: $74

jr_01B_74FF:
    jr nz, jr_01B_757A                            ; $74FF: $20 $79

    ld l, a                                       ; $7501: $6F
    ld [hl], l                                    ; $7502: $75
    jr nz, @+$6F                                  ; $7503: $20 $6D

    ld l, c                                       ; $7505: $69
    ld h, a                                       ; $7506: $67
    ld l, b                                       ; $7507: $68
    ld [hl], h                                    ; $7508: $74
    cp $65                                        ; $7509: $FE $65

jr_01B_750B:
    ld [hl], e                                    ; $750B: $73
    ld h, e                                       ; $750C: $63
    ld h, c                                       ; $750D: $61
    ld [hl], b                                    ; $750E: $70
    ld h, l                                       ; $750F: $65

jr_01B_7510:
    jr nz, jr_01B_7589                            ; $7510: $20 $77

jr_01B_7512:
    ld l, c                                       ; $7512: $69
    ld [hl], h                                    ; $7513: $74
    ld l, b                                       ; $7514: $68
    ld l, a                                       ; $7515: $6F
    ld [hl], l                                    ; $7516: $75
    ld [hl], h                                    ; $7517: $74

jr_01B_7518:
    rst $38                                       ; $7518: $FF
    ld l, l                                       ; $7519: $6D
    ld a, c                                       ; $751A: $79
    jr nz, jr_01B_7585                            ; $751B: $20 $68

    ld h, l                                       ; $751D: $65
    ld l, h                                       ; $751E: $6C
    ld [hl], b                                    ; $751F: $70
    ld l, $2E                                     ; $7520: $2E $2E
    ld l, $FE                                     ; $7522: $2E $FE
    ld [hl], a                                    ; $7524: $77
    ld l, b                                       ; $7525: $68

jr_01B_7526:
    ld l, c                                       ; $7526: $69
    ld h, e                                       ; $7527: $63
    ld l, b                                       ; $7528: $68
    jr nz, jr_01B_75A4                            ; $7529: $20 $79

    ld l, a                                       ; $752B: $6F
    ld [hl], l                                    ; $752C: $75
    jr nz, jr_01B_7593                            ; $752D: $20 $64

    ld l, c                                       ; $752F: $69
    ld h, h                                       ; $7530: $64
    ld l, $FE                                     ; $7531: $2E $FE
    db $FD                                        ; $7533: $FD
    ld e, b                                       ; $7534: $58
    inc b                                         ; $7535: $04
    sbc d                                         ; $7536: $9A
    ld a, b                                       ; $7537: $78
    ld [hl], b                                    ; $7538: $70
    sbc [hl]                                      ; $7539: $9E
    ld d, e                                       ; $753A: $53

jr_01B_753B:
    ld l, a                                       ; $753B: $6F
    jr nz, @+$79                                  ; $753C: $20 $77

    ld l, b                                       ; $753E: $68
    ld h, c                                       ; $753F: $61
    ld [hl], h                                    ; $7540: $74
    jr nz, jr_01B_75A7                            ; $7541: $20 $64

    ld l, a                                       ; $7543: $6F
    jr nz, jr_01B_75BF                            ; $7544: $20 $79

    ld l, a                                       ; $7546: $6F

jr_01B_7547:
    ld [hl], l                                    ; $7547: $75
    rst $38                                       ; $7548: $FF
    ld [hl], a                                    ; $7549: $77
    ld h, c                                       ; $754A: $61
    ld l, [hl]                                    ; $754B: $6E
    ld [hl], h                                    ; $754C: $74

jr_01B_754D:
    jr nz, jr_01B_75C6                            ; $754D: $20 $77

    ld l, c                                       ; $754F: $69
    ld [hl], h                                    ; $7550: $74
    ld l, b                                       ; $7551: $68
    jr nz, jr_01B_75C1                            ; $7552: $20 $6D

    ld h, l                                       ; $7554: $65
    ccf                                           ; $7555: $3F

jr_01B_7556:
    cp $FD                                        ; $7556: $FE $FD
    sbc d                                         ; $7558: $9A

jr_01B_7559:
    add hl, hl                                    ; $7559: $29
    ld b, e                                       ; $755A: $43
    sbc [hl]                                      ; $755B: $9E
    ld b, c                                       ; $755C: $41
    jr nz, jr_01B_75C6                            ; $755D: $20 $67

    ld l, c                                       ; $755F: $69
    ld h, c                                       ; $7560: $61
    ld l, [hl]                                    ; $7561: $6E
    ld [hl], h                                    ; $7562: $74
    rst $38                                       ; $7563: $FF
    ld d, e                                       ; $7564: $53
    ld l, b                                       ; $7565: $68
    ld h, c                                       ; $7566: $61
    ld h, h                                       ; $7567: $64
    ld l, a                                       ; $7568: $6F
    ld [hl], a                                    ; $7569: $77
    jr nz, jr_01B_75B3                            ; $756A: $20 $47

    ld h, l                                       ; $756C: $65
    ld a, c                                       ; $756D: $79
    ld [hl], e                                    ; $756E: $73
    ld h, l                                       ; $756F: $65
    ld [hl], d                                    ; $7570: $72

jr_01B_7571:
    cp $68                                        ; $7571: $FE $68
    ld h, c                                       ; $7573: $61
    ld [hl], e                                    ; $7574: $73
    jr nz, jr_01B_75D8                            ; $7575: $20 $61

    ld [hl], b                                    ; $7577: $70
    ld [hl], b                                    ; $7578: $70
    ld h, l                                       ; $7579: $65

jr_01B_757A:
    ld h, c                                       ; $757A: $61
    ld [hl], d                                    ; $757B: $72
    ld h, l                                       ; $757C: $65
    ld h, h                                       ; $757D: $64
    rst $38                                       ; $757E: $FF
    ld l, [hl]                                    ; $757F: $6E
    ld h, l                                       ; $7580: $65
    ld h, c                                       ; $7581: $61
    ld [hl], d                                    ; $7582: $72
    jr nz, jr_01B_75F9                            ; $7583: $20 $74

jr_01B_7585:
    ld l, b                                       ; $7585: $68
    ld h, l                                       ; $7586: $65
    cp $70                                        ; $7587: $FE $70

jr_01B_7589:
    ld h, c                                       ; $7589: $61
    ld l, h                                       ; $758A: $6C
    ld h, c                                       ; $758B: $61
    ld h, e                                       ; $758C: $63
    ld h, l                                       ; $758D: $65
    ld l, $20                                     ; $758E: $2E $20
    ld b, e                                       ; $7590: $43
    ld l, a                                       ; $7591: $6F
    ld [hl], d                                    ; $7592: $72

jr_01B_7593:
    ld h, l                                       ; $7593: $65
    rst $38                                       ; $7594: $FF
    ld h, e                                       ; $7595: $63
    ld [hl], d                                    ; $7596: $72
    ld h, l                                       ; $7597: $65
    ld h, c                                       ; $7598: $61
    ld [hl], h                                    ; $7599: $74
    ld [hl], l                                    ; $759A: $75
    ld [hl], d                                    ; $759B: $72
    ld h, l                                       ; $759C: $65
    ld [hl], e                                    ; $759D: $73
    jr nz, jr_01B_7601                            ; $759E: $20 $61

    ld [hl], d                                    ; $75A0: $72
    ld h, l                                       ; $75A1: $65
    cp $77                                        ; $75A2: $FE $77

jr_01B_75A4:
    ld [hl], d                                    ; $75A4: $72
    ld h, l                                       ; $75A5: $65
    ld h, c                                       ; $75A6: $61

jr_01B_75A7:
    ld l, e                                       ; $75A7: $6B
    ld l, c                                       ; $75A8: $69
    ld l, [hl]                                    ; $75A9: $6E
    ld h, a                                       ; $75AA: $67
    jr nz, jr_01B_7615                            ; $75AB: $20 $68

    ld h, c                                       ; $75AD: $61
    halt                                          ; $75AE: $76
    ld l, a                                       ; $75AF: $6F
    ld h, e                                       ; $75B0: $63
    rst $38                                       ; $75B1: $FF
    ld l, a                                       ; $75B2: $6F

jr_01B_75B3:
    ld l, [hl]                                    ; $75B3: $6E
    jr nz, jr_01B_7617                            ; $75B4: $20 $61

    ld l, h                                       ; $75B6: $6C
    ld l, h                                       ; $75B7: $6C
    jr nz, jr_01B_762E                            ; $75B8: $20 $74

    ld l, b                                       ; $75BA: $68
    ld h, l                                       ; $75BB: $65
    cp $69                                        ; $75BC: $FE $69
    ld l, [hl]                                    ; $75BE: $6E

jr_01B_75BF:
    ld l, b                                       ; $75BF: $68
    ld h, c                                       ; $75C0: $61

jr_01B_75C1:
    ld h, d                                       ; $75C1: $62
    ld l, c                                       ; $75C2: $69
    ld [hl], h                                    ; $75C3: $74
    ld h, c                                       ; $75C4: $61
    ld l, [hl]                                    ; $75C5: $6E

jr_01B_75C6:
    ld [hl], h                                    ; $75C6: $74
    ld [hl], e                                    ; $75C7: $73
    jr nz, jr_01B_7639                            ; $75C8: $20 $6F

    ld h, [hl]                                    ; $75CA: $66
    rst $38                                       ; $75CB: $FF
    ld b, c                                       ; $75CC: $41
    ld [hl], d                                    ; $75CD: $72
    ld h, h                                       ; $75CE: $64
    ld h, l                                       ; $75CF: $65
    ld [hl], d                                    ; $75D0: $72
    ld l, c                                       ; $75D1: $69
    ld h, c                                       ; $75D2: $61
    ld l, h                                       ; $75D3: $6C
    ld l, $FE                                     ; $75D4: $2E $FE
    db $FD                                        ; $75D6: $FD
    sbc d                                         ; $75D7: $9A

jr_01B_75D8:
    ld a, b                                       ; $75D8: $78
    ld [hl], b                                    ; $75D9: $70
    sbc [hl]                                      ; $75DA: $9E
    ld b, c                                       ; $75DB: $41
    jr nz, @+$55                                  ; $75DC: $20 $53

    ld l, b                                       ; $75DE: $68
    ld h, c                                       ; $75DF: $61
    ld h, h                                       ; $75E0: $64
    ld l, a                                       ; $75E1: $6F
    ld [hl], a                                    ; $75E2: $77
    rst $38                                       ; $75E3: $FF
    ld b, a                                       ; $75E4: $47
    ld h, l                                       ; $75E5: $65
    ld a, c                                       ; $75E6: $79
    ld [hl], e                                    ; $75E7: $73
    ld h, l                                       ; $75E8: $65
    ld [hl], d                                    ; $75E9: $72
    ccf                                           ; $75EA: $3F
    jr nz, jr_01B_7641                            ; $75EB: $20 $54

    ld l, b                                       ; $75ED: $68
    ld h, c                                       ; $75EE: $61
    ld [hl], h                                    ; $75EF: $74
    daa                                           ; $75F0: $27
    ld [hl], e                                    ; $75F1: $73
    cp $69                                        ; $75F2: $FE $69
    ld l, l                                       ; $75F4: $6D
    ld [hl], b                                    ; $75F5: $70
    ld l, a                                       ; $75F6: $6F
    ld [hl], e                                    ; $75F7: $73
    ld [hl], e                                    ; $75F8: $73

jr_01B_75F9:
    ld l, c                                       ; $75F9: $69
    ld h, d                                       ; $75FA: $62
    ld l, h                                       ; $75FB: $6C
    ld h, l                                       ; $75FC: $65
    ld hl, $4920                                  ; $75FD: $21 $20 $49
    rst $38                                       ; $7600: $FF

jr_01B_7601:
    ld l, b                                       ; $7601: $68
    ld h, c                                       ; $7602: $61
    halt                                          ; $7603: $76
    ld h, l                                       ; $7604: $65
    jr nz, jr_01B_7668                            ; $7605: $20 $61

    ld l, h                                       ; $7607: $6C
    ld l, h                                       ; $7608: $6C
    jr nz, jr_01B_767F                            ; $7609: $20 $74

    ld l, b                                       ; $760B: $68
    ld h, l                                       ; $760C: $65
    cp $43                                        ; $760D: $FE $43
    ld l, a                                       ; $760F: $6F
    ld [hl], d                                    ; $7610: $72
    ld h, l                                       ; $7611: $65
    jr nz, jr_01B_7667                            ; $7612: $20 $53

    ld [hl], h                                    ; $7614: $74

jr_01B_7615:
    ld l, a                                       ; $7615: $6F
    ld l, [hl]                                    ; $7616: $6E

jr_01B_7617:
    ld h, l                                       ; $7617: $65
    ld [hl], e                                    ; $7618: $73
    rst $38                                       ; $7619: $FF
    ld l, b                                       ; $761A: $68
    ld h, l                                       ; $761B: $65
    ld [hl], d                                    ; $761C: $72
    ld h, l                                       ; $761D: $65
    jr nz, @+$6B                                  ; $761E: $20 $69

    ld l, [hl]                                    ; $7620: $6E
    jr nz, jr_01B_7697                            ; $7621: $20 $74

    ld l, b                                       ; $7623: $68
    ld h, l                                       ; $7624: $65
    cp $43                                        ; $7625: $FE $43
    ld l, a                                       ; $7627: $6F
    ld [hl], d                                    ; $7628: $72
    ld h, l                                       ; $7629: $65
    jr nz, jr_01B_7673                            ; $762A: $20 $47

    ld l, h                                       ; $762C: $6C
    ld a, c                                       ; $762D: $79

jr_01B_762E:
    ld [hl], b                                    ; $762E: $70
    ld l, b                                       ; $762F: $68
    ld l, $FE                                     ; $7630: $2E $FE
    db $FD                                        ; $7632: $FD
    sbc d                                         ; $7633: $9A
    add hl, hl                                    ; $7634: $29
    ld b, e                                       ; $7635: $43
    sbc [hl]                                      ; $7636: $9E
    ld c, [hl]                                    ; $7637: $4E
    ld l, a                                       ; $7638: $6F

jr_01B_7639:
    ld l, [hl]                                    ; $7639: $6E
    ld h, l                                       ; $763A: $65
    ld [hl], h                                    ; $763B: $74
    ld l, b                                       ; $763C: $68
    ld h, l                                       ; $763D: $65
    ld l, h                                       ; $763E: $6C
    ld h, l                                       ; $763F: $65
    ld [hl], e                                    ; $7640: $73

jr_01B_7641:
    ld [hl], e                                    ; $7641: $73
    ld l, $2E                                     ; $7642: $2E $2E
    ld l, $FE                                     ; $7644: $2E $FE
    ld l, a                                       ; $7646: $6F
    ld l, [hl]                                    ; $7647: $6E
    ld h, l                                       ; $7648: $65
    jr nz, @+$6A                                  ; $7649: $20 $68

    ld h, c                                       ; $764B: $61
    ld [hl], e                                    ; $764C: $73
    rst $38                                       ; $764D: $FF
    ld h, c                                       ; $764E: $61
    ld [hl], b                                    ; $764F: $70
    ld [hl], b                                    ; $7650: $70
    ld h, l                                       ; $7651: $65
    ld h, c                                       ; $7652: $61
    ld [hl], d                                    ; $7653: $72
    ld h, l                                       ; $7654: $65
    ld h, h                                       ; $7655: $64
    inc l                                         ; $7656: $2C
    jr nz, jr_01B_76BA                            ; $7657: $20 $61

    ld l, [hl]                                    ; $7659: $6E
    ld h, h                                       ; $765A: $64
    cp $69                                        ; $765B: $FE $69
    ld [hl], h                                    ; $765D: $74
    jr nz, jr_01B_76C9                            ; $765E: $20 $69

    ld [hl], e                                    ; $7660: $73
    jr nz, jr_01B_76C4                            ; $7661: $20 $61

    ld l, [hl]                                    ; $7663: $6E
    rst $38                                       ; $7664: $FF
    ld h, l                                       ; $7665: $65
    ld a, b                                       ; $7666: $78

jr_01B_7667:
    ld [hl], h                                    ; $7667: $74

jr_01B_7668:
    ld [hl], d                                    ; $7668: $72
    ld h, l                                       ; $7669: $65
    ld l, l                                       ; $766A: $6D
    ld h, l                                       ; $766B: $65
    ld l, h                                       ; $766C: $6C
    ld a, c                                       ; $766D: $79
    cp $70                                        ; $766E: $FE $70
    ld l, a                                       ; $7670: $6F
    ld [hl], a                                    ; $7671: $77
    ld h, l                                       ; $7672: $65

jr_01B_7673:
    ld [hl], d                                    ; $7673: $72
    ld h, [hl]                                    ; $7674: $66
    ld [hl], l                                    ; $7675: $75
    ld l, h                                       ; $7676: $6C
    jr nz, jr_01B_76E8                            ; $7677: $20 $6F

    ld l, [hl]                                    ; $7679: $6E
    ld h, l                                       ; $767A: $65
    ld l, $FF                                     ; $767B: $2E $FF
    ld b, c                                       ; $767D: $41
    ld [hl], e                                    ; $767E: $73

jr_01B_767F:
    jr nz, jr_01B_76F8                            ; $767F: $20 $77

    ld l, c                                       ; $7681: $69
    ld [hl], h                                    ; $7682: $74
    ld l, b                                       ; $7683: $68
    jr nz, jr_01B_76E7                            ; $7684: $20 $61

    ld l, h                                       ; $7686: $6C
    ld l, h                                       ; $7687: $6C
    jr nz, jr_01B_76FE                            ; $7688: $20 $74

    ld l, b                                       ; $768A: $68
    ld h, l                                       ; $768B: $65
    cp $6F                                        ; $768C: $FE $6F
    ld [hl], h                                    ; $768E: $74
    ld l, b                                       ; $768F: $68
    ld h, l                                       ; $7690: $65
    ld [hl], d                                    ; $7691: $72
    ld [hl], e                                    ; $7692: $73
    inc l                                         ; $7693: $2C
    rst $38                                       ; $7694: $FF
    ld b, c                                       ; $7695: $41
    ld [hl], d                                    ; $7696: $72

jr_01B_7697:
    ld h, h                                       ; $7697: $64
    ld h, l                                       ; $7698: $65
    ld [hl], d                                    ; $7699: $72
    ld l, c                                       ; $769A: $69
    ld h, c                                       ; $769B: $61
    ld l, h                                       ; $769C: $6C
    jr nz, jr_01B_76EC                            ; $769D: $20 $4D

    ld h, c                                       ; $769F: $61
    ld h, a                                       ; $76A0: $67
    ld l, c                                       ; $76A1: $69
    cp $63                                        ; $76A2: $FE $63
    ld h, c                                       ; $76A4: $61
    ld l, [hl]                                    ; $76A5: $6E
    ld l, [hl]                                    ; $76A6: $6E
    ld l, a                                       ; $76A7: $6F
    ld [hl], h                                    ; $76A8: $74
    jr nz, @+$67                                  ; $76A9: $20 $65

    ld l, [hl]                                    ; $76AB: $6E
    ld [hl], h                                    ; $76AC: $74
    ld h, l                                       ; $76AD: $65
    ld [hl], d                                    ; $76AE: $72
    rst $38                                       ; $76AF: $FF
    ld l, c                                       ; $76B0: $69
    ld [hl], h                                    ; $76B1: $74
    ld l, $20                                     ; $76B2: $2E $20
    ld d, h                                       ; $76B4: $54
    ld l, b                                       ; $76B5: $68
    ld l, c                                       ; $76B6: $69
    ld [hl], e                                    ; $76B7: $73
    jr nz, jr_01B_7723                            ; $76B8: $20 $69

jr_01B_76BA:
    ld [hl], e                                    ; $76BA: $73
    jr nz, jr_01B_7734                            ; $76BB: $20 $77

    ld l, b                                       ; $76BD: $68
    ld a, c                                       ; $76BE: $79
    cp $77                                        ; $76BF: $FE $77
    ld h, l                                       ; $76C1: $65
    jr nz, jr_01B_772C                            ; $76C2: $20 $68

jr_01B_76C4:
    ld h, c                                       ; $76C4: $61
    ld h, h                                       ; $76C5: $64
    jr nz, jr_01B_773C                            ; $76C6: $20 $74

    ld l, a                                       ; $76C8: $6F

jr_01B_76C9:
    jr nz, jr_01B_772D                            ; $76C9: $20 $62

    ld [hl], d                                    ; $76CB: $72
    ld l, c                                       ; $76CC: $69
    ld l, [hl]                                    ; $76CD: $6E
    ld h, a                                       ; $76CE: $67
    rst $38                                       ; $76CF: $FF
    ld a, c                                       ; $76D0: $79
    ld l, a                                       ; $76D1: $6F
    ld [hl], l                                    ; $76D2: $75
    ld l, $20                                     ; $76D3: $2E $20
    ld d, b                                       ; $76D5: $50
    ld l, h                                       ; $76D6: $6C
    ld h, l                                       ; $76D7: $65
    ld h, c                                       ; $76D8: $61
    ld [hl], e                                    ; $76D9: $73
    ld h, l                                       ; $76DA: $65
    inc l                                         ; $76DB: $2C
    cp $79                                        ; $76DC: $FE $79
    ld l, a                                       ; $76DE: $6F
    ld [hl], l                                    ; $76DF: $75
    jr nz, @+$6F                                  ; $76E0: $20 $6D

    ld [hl], l                                    ; $76E2: $75
    ld [hl], e                                    ; $76E3: $73
    ld [hl], h                                    ; $76E4: $74
    jr nz, @+$6A                                  ; $76E5: $20 $68

jr_01B_76E7:
    ld h, l                                       ; $76E7: $65

jr_01B_76E8:
    ld l, h                                       ; $76E8: $6C
    ld [hl], b                                    ; $76E9: $70
    rst $38                                       ; $76EA: $FF
    ld [hl], l                                    ; $76EB: $75

jr_01B_76EC:
    ld [hl], e                                    ; $76EC: $73
    ld hl, $FDFE                                  ; $76ED: $21 $FE $FD
    sbc d                                         ; $76F0: $9A
    ld a, b                                       ; $76F1: $78
    ld [hl], b                                    ; $76F2: $70
    sbc [hl]                                      ; $76F3: $9E
    ld c, c                                       ; $76F4: $49
    jr nz, jr_01B_776A                            ; $76F5: $20 $73

    ld h, l                                       ; $76F7: $65

jr_01B_76F8:
    ld h, l                                       ; $76F8: $65
    ld l, $FE                                     ; $76F9: $2E $FE
    ld c, a                                       ; $76FB: $4F
    ld l, e                                       ; $76FC: $6B
    ld h, c                                       ; $76FD: $61

jr_01B_76FE:
    ld a, c                                       ; $76FE: $79
    inc l                                         ; $76FF: $2C
    jr nz, jr_01B_776E                            ; $7700: $20 $6C

    ld h, l                                       ; $7702: $65
    ld [hl], h                                    ; $7703: $74
    daa                                           ; $7704: $27
    ld [hl], e                                    ; $7705: $73
    rst $38                                       ; $7706: $FF
    ld h, a                                       ; $7707: $67
    ld l, a                                       ; $7708: $6F
    ld l, $FE                                     ; $7709: $2E $FE
    db $FD                                        ; $770B: $FD
    sbc c                                         ; $770C: $99
    ld e, b                                       ; $770D: $58
    ld [$0242], sp                                ; $770E: $08 $42 $02
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    jr nc, @-$1F                                  ; $7715: $30 $DF

    ld d, [hl]                                    ; $7717: $56
    add hl, bc                                    ; $7718: $09
    dec h                                         ; $7719: $25
    dec b                                         ; $771A: $05
    ld e, [hl]                                    ; $771B: $5E

jr_01B_771C:
    ld [hl-], a                                   ; $771C: $32
    ld c, h                                       ; $771D: $4C
    inc hl                                        ; $771E: $23
    ld b, b                                       ; $771F: $40
    dec hl                                        ; $7720: $2B
    xor c                                         ; $7721: $A9
    dec a                                         ; $7722: $3D

jr_01B_7723:
    db $D3                                        ; $7723: $D3
    rlca                                          ; $7724: $07
    ld [bc], a                                    ; $7725: $02
    xor c                                         ; $7726: $A9
    ld a, $D3                                     ; $7727: $3E $D3
    rlca                                          ; $7729: $07
    push de                                       ; $772A: $D5
    sbc d                                         ; $772B: $9A

jr_01B_772C:
    xor c                                         ; $772C: $A9

jr_01B_772D:
    ld c, a                                       ; $772D: $4F
    sbc [hl]                                      ; $772E: $9E
    ld c, [hl]                                    ; $772F: $4E
    ld l, a                                       ; $7730: $6F
    ld [hl], a                                    ; $7731: $77
    jr nz, jr_01B_77AD                            ; $7732: $20 $79

jr_01B_7734:
    ld l, a                                       ; $7734: $6F
    ld [hl], l                                    ; $7735: $75
    jr nz, jr_01B_77AF                            ; $7736: $20 $77

    ld l, c                                       ; $7738: $69
    ld l, h                                       ; $7739: $6C
    ld l, h                                       ; $773A: $6C
    rst $38                                       ; $773B: $FF

jr_01B_773C:
    ld [hl], e                                    ; $773C: $73
    ld h, l                                       ; $773D: $65
    ld h, l                                       ; $773E: $65
    jr nz, jr_01B_77B5                            ; $773F: $20 $74

    ld l, b                                       ; $7741: $68
    ld h, l                                       ; $7742: $65
    jr nz, jr_01B_77B9                            ; $7743: $20 $74

    ld [hl], d                                    ; $7745: $72
    ld [hl], l                                    ; $7746: $75
    ld h, l                                       ; $7747: $65
    cp $70                                        ; $7748: $FE $70
    ld l, a                                       ; $774A: $6F
    ld [hl], a                                    ; $774B: $77
    ld h, l                                       ; $774C: $65
    ld [hl], d                                    ; $774D: $72
    jr nz, @+$4B                                  ; $774E: $20 $49

    jr nz, jr_01B_77BA                            ; $7750: $20 $68

    ld l, a                                       ; $7752: $6F
    ld l, h                                       ; $7753: $6C
    ld h, h                                       ; $7754: $64
    ld hl, $FDFE                                  ; $7755: $21 $FE $FD
    sbc c                                         ; $7758: $99
    ld l, $09                                     ; $7759: $2E $09
    dec h                                         ; $775B: $25
    ld l, $87                                     ; $775C: $2E $87
    nop                                           ; $775E: $00
    dec hl                                        ; $775F: $2B
    ld e, d                                       ; $7760: $5A
    dec de                                        ; $7761: $1B
    ld [hl], b                                    ; $7762: $70
    ld [hl], a                                    ; $7763: $77
    ld e, [hl]                                    ; $7764: $5E
    dec hl                                        ; $7765: $2B
    ld e, d                                       ; $7766: $5A
    dec de                                        ; $7767: $1B
    ld a, [hl]                                    ; $7768: $7E
    ld [hl], a                                    ; $7769: $77

jr_01B_776A:
    ld e, [hl]                                    ; $776A: $5E
    dec hl                                        ; $776B: $2B
    ld b, l                                       ; $776C: $45
    dec de                                        ; $776D: $1B

jr_01B_776E:
    ld h, b                                       ; $776E: $60
    ld [hl], a                                    ; $776F: $77
    ld b, a                                       ; $7770: $47
    inc b                                         ; $7771: $04
    dec de                                        ; $7772: $1B
    sbc l                                         ; $7773: $9D
    ld [hl], a                                    ; $7774: $77
    dec de                                        ; $7775: $1B
    db $ED                                        ; $7776: $ED
    ld [hl], a                                    ; $7777: $77
    dec de                                        ; $7778: $1B
    db $ED                                        ; $7779: $ED
    ld [hl], a                                    ; $777A: $77
    dec de                                        ; $777B: $1B
    ld b, c                                       ; $777C: $41
    ld a, b                                       ; $777D: $78
    ld b, a                                       ; $777E: $47
    rlca                                          ; $777F: $07
    dec de                                        ; $7780: $1B
    sub l                                         ; $7781: $95
    ld [hl], a                                    ; $7782: $77
    dec de                                        ; $7783: $1B
    sub l                                         ; $7784: $95
    ld [hl], a                                    ; $7785: $77
    dec de                                        ; $7786: $1B
    sbc l                                         ; $7787: $9D
    ld [hl], a                                    ; $7788: $77
    dec de                                        ; $7789: $1B
    rst $10                                       ; $778A: $D7
    ld [hl], a                                    ; $778B: $77
    dec de                                        ; $778C: $1B
    push hl                                       ; $778D: $E5
    ld [hl], a                                    ; $778E: $77
    dec de                                        ; $778F: $1B
    push hl                                       ; $7790: $E5
    ld [hl], a                                    ; $7791: $77
    dec de                                        ; $7792: $1B
    ld a, [hl-]                                   ; $7793: $3A
    ld a, b                                       ; $7794: $78
    ld l, $09                                     ; $7795: $2E $09
    dec h                                         ; $7797: $25
    jr nc, jr_01B_771C                            ; $7798: $30 $82

    nop                                           ; $779A: $00
    ld d, h                                       ; $779B: $54
    ld b, d                                       ; $779C: $42
    ld l, $09                                     ; $779D: $2E $09
    dec h                                         ; $779F: $25
    jr z, jr_01B_7810                             ; $77A0: $28 $6E

    nop                                           ; $77A2: $00
    ld b, e                                       ; $77A3: $43
    ld d, $07                                     ; $77A4: $16 $07
    rrca                                          ; $77A6: $0F
    ld bc, $D0AF                                  ; $77A7: $01 $AF $D0
    dec b                                         ; $77AA: $05
    nop                                           ; $77AB: $00
    dec de                                        ; $77AC: $1B

jr_01B_77AD:
    rst $10                                       ; $77AD: $D7
    ld [hl], a                                    ; $77AE: $77

jr_01B_77AF:
    cpl                                           ; $77AF: $2F
    add hl, bc                                    ; $77B0: $09
    ld b, l                                       ; $77B1: $45
    ld e, a                                       ; $77B2: $5F
    ld b, $9A                                     ; $77B3: $06 $9A

jr_01B_77B5:
    xor c                                         ; $77B5: $A9
    ld c, a                                       ; $77B6: $4F
    sbc [hl]                                      ; $77B7: $9E
    ld b, d                                       ; $77B8: $42

jr_01B_77B9:
    ld h, l                                       ; $77B9: $65

jr_01B_77BA:
    ld [hl], h                                    ; $77BA: $74
    jr nz, @+$7B                                  ; $77BB: $20 $79

    ld l, a                                       ; $77BD: $6F
    ld [hl], l                                    ; $77BE: $75
    jr nz, jr_01B_7824                            ; $77BF: $20 $63

    ld h, c                                       ; $77C1: $61
    ld l, [hl]                                    ; $77C2: $6E
    daa                                           ; $77C3: $27
    ld [hl], h                                    ; $77C4: $74
    rst $38                                       ; $77C5: $FF
    ld l, b                                       ; $77C6: $68
    ld h, c                                       ; $77C7: $61
    ld l, [hl]                                    ; $77C8: $6E
    ld h, h                                       ; $77C9: $64
    ld l, h                                       ; $77CA: $6C
    ld h, l                                       ; $77CB: $65
    jr nz, @+$76                                  ; $77CC: $20 $74

    ld l, b                                       ; $77CE: $68
    ld l, c                                       ; $77CF: $69
    ld [hl], e                                    ; $77D0: $73
    ld hl, $FDFE                                  ; $77D1: $21 $FE $FD
    sbc c                                         ; $77D4: $99
    ld d, h                                       ; $77D5: $54
    ld b, d                                       ; $77D6: $42
    cpl                                           ; $77D7: $2F
    add hl, bc                                    ; $77D8: $09
    ld d, a                                       ; $77D9: $57
    ld e, [hl]                                    ; $77DA: $5E
    nop                                           ; $77DB: $00
    ld d, h                                       ; $77DC: $54
    ld b, d                                       ; $77DD: $42
    jr z, jr_01B_77E9                             ; $77DE: $28 $09

    sub a                                         ; $77E0: $97
    ld [hl], c                                    ; $77E1: $71
    db $10                                        ; $77E2: $10
    ld d, h                                       ; $77E3: $54
    ld b, d                                       ; $77E4: $42
    ld l, $09                                     ; $77E5: $2E $09
    ld c, [hl]                                    ; $77E7: $4E
    dec l                                         ; $77E8: $2D

jr_01B_77E9:
    ld [hl], e                                    ; $77E9: $73
    nop                                           ; $77EA: $00
    ld d, h                                       ; $77EB: $54
    ld b, d                                       ; $77EC: $42
    ld l, $09                                     ; $77ED: $2E $09
    ld c, [hl]                                    ; $77EF: $4E
    jr z, jr_01B_7860                             ; $77F0: $28 $6E

    nop                                           ; $77F2: $00
    ld b, e                                       ; $77F3: $43
    ld d, $07                                     ; $77F4: $16 $07
    rrca                                          ; $77F6: $0F
    ld bc, $D0AF                                  ; $77F7: $01 $AF $D0
    dec b                                         ; $77FA: $05
    nop                                           ; $77FB: $00
    dec de                                        ; $77FC: $1B
    rst $10                                       ; $77FD: $D7
    ld [hl], a                                    ; $77FE: $77
    jr z, jr_01B_780A                             ; $77FF: $28 $09

    sub a                                         ; $7801: $97
    ld [hl], c                                    ; $7802: $71
    db $10                                        ; $7803: $10
    add hl, bc                                    ; $7804: $09
    ld c, $0E                                     ; $7805: $0E $0E
    ld e, a                                       ; $7807: $5F
    ld a, a                                       ; $7808: $7F
    sbc d                                         ; $7809: $9A

jr_01B_780A:
    xor c                                         ; $780A: $A9
    ld c, a                                       ; $780B: $4F
    sbc [hl]                                      ; $780C: $9E
    ld c, c                                       ; $780D: $49
    jr nz, jr_01B_7880                            ; $780E: $20 $70

jr_01B_7810:
    ld h, l                                       ; $7810: $65
    ld [hl], d                                    ; $7811: $72
    ld h, [hl]                                    ; $7812: $66
    ld h, l                                       ; $7813: $65
    ld h, e                                       ; $7814: $63
    ld [hl], h                                    ; $7815: $74
    ld h, l                                       ; $7816: $65
    ld h, h                                       ; $7817: $64
    rst $38                                       ; $7818: $FF
    ld [hl], h                                    ; $7819: $74
    ld l, b                                       ; $781A: $68
    ld l, c                                       ; $781B: $69
    ld [hl], e                                    ; $781C: $73
    jr nz, jr_01B_7893                            ; $781D: $20 $74

    ld h, l                                       ; $781F: $65
    ld h, e                                       ; $7820: $63
    ld l, b                                       ; $7821: $68
    ld l, [hl]                                    ; $7822: $6E
    ld l, c                                       ; $7823: $69

jr_01B_7824:
    ld [hl], c                                    ; $7824: $71
    ld [hl], l                                    ; $7825: $75
    ld h, l                                       ; $7826: $65
    cp $75                                        ; $7827: $FE $75
    ld l, [hl]                                    ; $7829: $6E
    ld h, h                                       ; $782A: $64
    ld h, l                                       ; $782B: $65
    ld [hl], d                                    ; $782C: $72
    jr nz, jr_01B_7890                            ; $782D: $20 $61

    jr nz, jr_01B_78A3                            ; $782F: $20 $72

    ld l, a                                       ; $7831: $6F
    ld h, e                                       ; $7832: $63
    ld l, e                                       ; $7833: $6B
    ld hl, $FDFE                                  ; $7834: $21 $FE $FD
    sbc c                                         ; $7837: $99
    ld d, h                                       ; $7838: $54
    ld b, d                                       ; $7839: $42
    cpl                                           ; $783A: $2F
    add hl, bc                                    ; $783B: $09
    ld b, l                                       ; $783C: $45
    ld e, a                                       ; $783D: $5F
    ld b, $54                                     ; $783E: $06 $54
    ld b, d                                       ; $7840: $42
    jr z, jr_01B_784C                             ; $7841: $28 $09

    add l                                         ; $7843: $85
    ld [hl], d                                    ; $7844: $72
    ld c, $54                                     ; $7845: $0E $54
    ld b, d                                       ; $7847: $42
    sub e                                         ; $7848: $93
    ld l, d                                       ; $7849: $6A
    and [hl]                                      ; $784A: $A6
    ld h, [hl]                                    ; $784B: $66

jr_01B_784C:
    ld a, h                                       ; $784C: $7C
    db $F4                                        ; $784D: $F4
    ld e, b                                       ; $784E: $58
    ld a, h                                       ; $784F: $7C
    dec bc                                        ; $7850: $0B
    nop                                           ; $7851: $00
    add d                                         ; $7852: $82
    sub h                                         ; $7853: $94
    ld b, d                                       ; $7854: $42
    xor e                                         ; $7855: $AB
    or c                                          ; $7856: $B1
    and e                                         ; $7857: $A3
    ld bc, $0F43                                  ; $7858: $01 $43 $0F
    inc b                                         ; $785B: $04
    dec b                                         ; $785C: $05
    jr jr_01B_787A                                ; $785D: $18 $1B

    sub b                                         ; $785F: $90

jr_01B_7860:
    ld a, b                                       ; $7860: $78
    sub e                                         ; $7861: $93
    ld h, l                                       ; $7862: $65
    sbc d                                         ; $7863: $9A
    ld c, e                                       ; $7864: $4B
    ld c, a                                       ; $7865: $4F
    ld l, b                                       ; $7866: $68
    or d                                          ; $7867: $B2
    ld a, a                                       ; $7868: $7F
    ld a, c                                       ; $7869: $79
    ld d, $6A                                     ; $786A: $16 $6A
    ld a, h                                       ; $786C: $7C
    ld h, h                                       ; $786D: $64
    rst $08                                       ; $786E: $CF
    ld c, c                                       ; $786F: $49
    ld l, c                                       ; $7870: $69
    call c, Call_01B_6649                         ; $7871: $DC $49 $66
    cp c                                          ; $7874: $B9
    ld e, h                                       ; $7875: $5C
    ld hl, $000B                                  ; $7876: $21 $0B $00
    nop                                           ; $7879: $00

jr_01B_787A:
    add d                                         ; $787A: $82
    rra                                           ; $787B: $1F
    dec c                                         ; $787C: $0D
    ld b, e                                       ; $787D: $43
    inc d                                         ; $787E: $14
    inc b                                         ; $787F: $04

jr_01B_7880:
    dec b                                         ; $7880: $05
    dec d                                         ; $7881: $15
    dec de                                        ; $7882: $1B
    adc [hl]                                      ; $7883: $8E
    ld a, b                                       ; $7884: $78
    ld a, a                                       ; $7885: $7F
    ld d, e                                       ; $7886: $53
    ret nc                                        ; $7887: $D0

    dec b                                         ; $7888: $05
    inc bc                                        ; $7889: $03
    sbc d                                         ; $788A: $9A
    ret nc                                        ; $788B: $D0

    ld b, $0A                                     ; $788C: $06 $0A
    sub h                                         ; $788E: $94
    ld b, d                                       ; $788F: $42

jr_01B_7890:
    sub e                                         ; $7890: $93
    ld h, l                                       ; $7891: $65
    sbc d                                         ; $7892: $9A

jr_01B_7893:
    ld c, e                                       ; $7893: $4B
    ld c, a                                       ; $7894: $4F
    ld l, b                                       ; $7895: $68
    or d                                          ; $7896: $B2
    ld a, a                                       ; $7897: $7F
    ld a, c                                       ; $7898: $79
    ld d, $6A                                     ; $7899: $16 $6A

Jump_01B_789B:
    ld a, h                                       ; $789B: $7C
    ld h, h                                       ; $789C: $64
    rst $08                                       ; $789D: $CF
    ld c, c                                       ; $789E: $49
    ld l, c                                       ; $789F: $69
    call c, Call_01B_6649                         ; $78A0: $DC $49 $66

jr_01B_78A3:
    cp c                                          ; $78A3: $B9
    ld e, h                                       ; $78A4: $5C
    ld hl, $000B                                  ; $78A5: $21 $0B $00
    nop                                           ; $78A8: $00
    add d                                         ; $78A9: $82
    rra                                           ; $78AA: $1F
    dec c                                         ; $78AB: $0D
    ld l, a                                       ; $78AC: $6F
    rrca                                          ; $78AD: $0F
    rst $38                                       ; $78AE: $FF
    ld a, a                                       ; $78AF: $7F
    ld a, a                                       ; $78B0: $7F
    ld d, e                                       ; $78B1: $53
    ret nc                                        ; $78B2: $D0

jr_01B_78B3:
    dec b                                         ; $78B3: $05
    inc bc                                        ; $78B4: $03

jr_01B_78B5:
    sbc d                                         ; $78B5: $9A
    ret nc                                        ; $78B6: $D0

    ld b, $0A                                     ; $78B7: $06 $0A
    ld b, e                                       ; $78B9: $43
    ld a, [bc]                                    ; $78BA: $0A

jr_01B_78BB:
    nop                                           ; $78BB: $00
    xor h                                         ; $78BC: $AC
    and d                                         ; $78BD: $A2
    ld bc, $CB1B                                  ; $78BE: $01 $1B $CB
    ld a, b                                       ; $78C1: $78
    ld a, a                                       ; $78C2: $7F
    ld c, l                                       ; $78C3: $4D
    ret nc                                        ; $78C4: $D0

    ld bc, $4D04                                  ; $78C5: $01 $04 $4D
    ret nc                                        ; $78C8: $D0

    inc bc                                        ; $78C9: $03
    dec b                                         ; $78CA: $05
    sub h                                         ; $78CB: $94
    halt                                          ; $78CC: $76
    jr nz, @+$11                                  ; $78CD: $20 $0F

    ld b, d                                       ; $78CF: $42
    rlca                                          ; $78D0: $07
    nop                                           ; $78D1: $00
    ld l, c                                       ; $78D2: $69
    ld c, d                                       ; $78D3: $4A
    add hl, bc                                    ; $78D4: $09
    nop                                           ; $78D5: $00
    dec de                                        ; $78D6: $1B
    pop af                                        ; $78D7: $F1
    ld a, b                                       ; $78D8: $78

jr_01B_78D9:
    dec b                                         ; $78D9: $05
    ld [bc], a                                    ; $78DA: $02
    ld l, c                                       ; $78DB: $69
    ld c, d                                       ; $78DC: $4A
    ld b, $06                                     ; $78DD: $06 $06
    sub [hl]                                      ; $78DF: $96
    ret nc                                        ; $78E0: $D0

    nop                                           ; $78E1: $00
    ld de, $76A3                                  ; $78E2: $11 $A3 $76
    ld [hl+], a                                   ; $78E5: $22
    dec b                                         ; $78E6: $05
    ld b, b                                       ; $78E7: $40
    ld l, e                                       ; $78E8: $6B
    inc b                                         ; $78E9: $04
    dec c                                         ; $78EA: $0D

jr_01B_78EB:
    ldh [$58], a                                  ; $78EB: $E0 $58
    nop                                           ; $78ED: $00
    add b                                         ; $78EE: $80
    nop                                           ; $78EF: $00
    ld b, d                                       ; $78F0: $42

jr_01B_78F1:
    dec d                                         ; $78F1: $15
    jr nz, jr_01B_78B3                            ; $78F2: $20 $BF

    ld d, b                                       ; $78F4: $50
    db $10                                        ; $78F5: $10
    jr nz, jr_01B_7935                            ; $78F6: $20 $3D

    ld d, b                                       ; $78F8: $50
    db $10                                        ; $78F9: $10
    jr nz, jr_01B_78BB                            ; $78FA: $20 $BF

    ld d, b                                       ; $78FC: $50
    inc b                                         ; $78FD: $04
    nop                                           ; $78FE: $00
    dec bc                                        ; $78FF: $0B
    ld [bc], a                                    ; $7900: $02
    ld b, b                                       ; $7901: $40
    jr nz, jr_01B_795E                            ; $7902: $20 $5A

    dec de                                        ; $7904: $1B
    ld b, h                                       ; $7905: $44
    ld a, e                                       ; $7906: $7B
    dec d                                         ; $7907: $15
    jr nz, jr_01B_78F1                            ; $7908: $20 $E7

    ld d, b                                       ; $790A: $50
    db $10                                        ; $790B: $10
    jr nz, jr_01B_78EB                            ; $790C: $20 $DD

    ld d, b                                       ; $790E: $50
    db $10                                        ; $790F: $10
    jr nz, @-$0D                                  ; $7910: $20 $F1

    ld d, b                                       ; $7912: $50
    db $10                                        ; $7913: $10

jr_01B_7914:
    jr nz, @-$21                                  ; $7914: $20 $DD

    ld d, b                                       ; $7916: $50
    db $10                                        ; $7917: $10
    jr nz, jr_01B_78D9                            ; $7918: $20 $BF

    ld d, b                                       ; $791A: $50
    nop                                           ; $791B: $00
    nop                                           ; $791C: $00
    ld e, e                                       ; $791D: $5B
    dec de                                        ; $791E: $1B
    ld b, b                                       ; $791F: $40
    ld a, c                                       ; $7920: $79
    ld e, h                                       ; $7921: $5C
    nop                                           ; $7922: $00
    ld [bc], a                                    ; $7923: $02
    ld b, b                                       ; $7924: $40
    jr nc, jr_01B_7982                            ; $7925: $30 $5B

    dec de                                        ; $7927: $1B
    ld e, e                                       ; $7928: $5B
    ld a, c                                       ; $7929: $79
    ld e, h                                       ; $792A: $5C
    ld bc, $1502                                  ; $792B: $01 $02 $15
    jr nz, jr_01B_78B5                            ; $792E: $20 $85

    ld d, h                                       ; $7930: $54
    jr nz, jr_01B_7933                            ; $7931: $20 $00

jr_01B_7933:
    ld l, [hl]                                    ; $7933: $6E

jr_01B_7934:
    rrca                                          ; $7934: $0F

jr_01B_7935:
    rst $38                                       ; $7935: $FF
    ld a, a                                       ; $7936: $7F
    halt                                          ; $7937: $76
    jr nz, jr_01B_7949                            ; $7938: $20 $0F

    ld b, b                                       ; $793A: $40
    ld h, b                                       ; $793B: $60
    ld b, l                                       ; $793C: $45
    rra                                           ; $793D: $1F
    dec hl                                        ; $793E: $2B

jr_01B_793F:
    ld e, a                                       ; $793F: $5F
    sbc d                                         ; $7940: $9A
    ld a, b                                       ; $7941: $78
    ld [hl], b                                    ; $7942: $70
    sbc [hl]                                      ; $7943: $9E
    ld d, a                                       ; $7944: $57
    ld l, b                                       ; $7945: $68
    ld h, c                                       ; $7946: $61
    ld [hl], h                                    ; $7947: $74
    daa                                           ; $7948: $27

jr_01B_7949:
    ld [hl], e                                    ; $7949: $73
    jr nz, @+$69                                  ; $794A: $20 $67

    ld l, a                                       ; $794C: $6F
    ld l, c                                       ; $794D: $69
    ld l, [hl]                                    ; $794E: $6E
    ld h, a                                       ; $794F: $67
    rst $38                                       ; $7950: $FF
    ld l, a                                       ; $7951: $6F
    ld l, [hl]                                    ; $7952: $6E
    ccf                                           ; $7953: $3F
    cp $FD                                        ; $7954: $FE $FD
    sbc c                                         ; $7956: $99
    ld e, h                                       ; $7957: $5C
    nop                                           ; $7958: $00
    ld [bc], a                                    ; $7959: $02
    ld b, d                                       ; $795A: $42
    sbc d                                         ; $795B: $9A
    ld a, b                                       ; $795C: $78
    ld [hl], b                                    ; $795D: $70

jr_01B_795E:
    sbc [hl]                                      ; $795E: $9E
    ld b, a                                       ; $795F: $47
    ld h, l                                       ; $7960: $65
    ld [hl], h                                    ; $7961: $74
    ld [hl], h                                    ; $7962: $74
    ld l, c                                       ; $7963: $69
    ld l, [hl]                                    ; $7964: $6E
    ld h, a                                       ; $7965: $67
    ld l, $2E                                     ; $7966: $2E $2E
    ld l, $2E                                     ; $7968: $2E $2E
    rst $38                                       ; $796A: $FF
    ld l, $2E                                     ; $796B: $2E $2E
    ld l, $2E                                     ; $796D: $2E $2E
    ld h, h                                       ; $796F: $64
    ld l, c                                       ; $7970: $69
    ld a, d                                       ; $7971: $7A
    ld a, d                                       ; $7972: $7A
    ld a, c                                       ; $7973: $79
    ld l, $2E                                     ; $7974: $2E $2E
    rst $38                                       ; $7976: $FF
    db $FD                                        ; $7977: $FD
    ld b, b                                       ; $7978: $40
    jr nc, jr_01B_7914                            ; $7979: $30 $99

    ld e, h                                       ; $797B: $5C
    ld bc, $4202                                  ; $797C: $01 $02 $42
    xor e                                         ; $797F: $AB
    or c                                          ; $7980: $B1
    and e                                         ; $7981: $A3

jr_01B_7982:
    ld bc, $ACAE                                  ; $7982: $01 $AE $AC
    and d                                         ; $7985: $A2
    ld bc, $0007                                  ; $7986: $01 $07 $00
    ld l, c                                       ; $7989: $69
    ld c, d                                       ; $798A: $4A
    add hl, bc                                    ; $798B: $09
    nop                                           ; $798C: $00
    dec de                                        ; $798D: $1B
    ld [de], a                                    ; $798E: $12
    ld a, e                                       ; $798F: $7B
    ld e, d                                       ; $7990: $5A
    dec de                                        ; $7991: $1B
    inc sp                                        ; $7992: $33
    ld a, e                                       ; $7993: $7B
    ld b, b                                       ; $7994: $40
    ld d, b                                       ; $7995: $50
    dec b                                         ; $7996: $05
    ld [bc], a                                    ; $7997: $02
    ld l, c                                       ; $7998: $69
    ld c, d                                       ; $7999: $4A
    ld b, $06                                     ; $799A: $06 $06
    sub [hl]                                      ; $799C: $96
    ret nc                                        ; $799D: $D0

    nop                                           ; $799E: $00
    ld de, $7699                                  ; $799F: $11 $99 $76
    ld [hl+], a                                   ; $79A2: $22
    dec b                                         ; $79A3: $05
    ld b, b                                       ; $79A4: $40
    ld l, e                                       ; $79A5: $6B
    inc bc                                        ; $79A6: $03
    dec c                                         ; $79A7: $0D
    or b                                          ; $79A8: $B0
    ld e, b                                       ; $79A9: $58
    nop                                           ; $79AA: $00
    add b                                         ; $79AB: $80
    nop                                           ; $79AC: $00
    ld l, e                                       ; $79AD: $6B
    jr nc, jr_01B_79FF                            ; $79AE: $30 $4F

    sbc a                                         ; $79B0: $9F
    ld d, l                                       ; $79B1: $55
    jr nc, jr_01B_7934                            ; $79B2: $30 $80

    nop                                           ; $79B4: $00
    ld l, e                                       ; $79B5: $6B
    dec l                                         ; $79B6: $2D
    ld b, c                                       ; $79B7: $41
    ret nz                                        ; $79B8: $C0

    ld d, [hl]                                    ; $79B9: $56
    jr nc, jr_01B_793F                            ; $79BA: $30 $83

    nop                                           ; $79BC: $00
    add hl, bc                                    ; $79BD: $09
    nop                                           ; $79BE: $00
    dec de                                        ; $79BF: $1B
    ld l, $7B                                     ; $79C0: $2E $7B
    ld b, b                                       ; $79C2: $40
    ld b, b                                       ; $79C3: $40
    ld d, b                                       ; $79C4: $50
    call Call_01B_50C2                            ; $79C5: $CD $C2 $50
    ld b, b                                       ; $79C8: $40
    inc bc                                        ; $79C9: $03
    ld b, b                                       ; $79CA: $40
    jp nc, Jump_01B_5073                          ; $79CB: $D2 $73 $50

    add sp, -$3E                                  ; $79CE: $E8 $C2
    ld d, b                                       ; $79D0: $50
    ld b, b                                       ; $79D1: $40
    inc sp                                        ; $79D2: $33
    ld b, b                                       ; $79D3: $40
    ld h, [hl]                                    ; $79D4: $66
    ld [hl], e                                    ; $79D5: $73
    ld d, b                                       ; $79D6: $50
    inc bc                                        ; $79D7: $03
    jp $5058                                      ; $79D8: $C3 $58 $50


    inc bc                                        ; $79DB: $03
    ld b, b                                       ; $79DC: $40
    inc hl                                        ; $79DD: $23
    ld [hl], h                                    ; $79DE: $74
    ld d, b                                       ; $79DF: $50
    ld e, $C3                                     ; $79E0: $1E $C3
    ld d, b                                       ; $79E2: $50
    ld b, b                                       ; $79E3: $40
    inc bc                                        ; $79E4: $03
    ld b, b                                       ; $79E5: $40
    inc hl                                        ; $79E6: $23
    ld [hl], h                                    ; $79E7: $74
    ld d, b                                       ; $79E8: $50
    add hl, sp                                    ; $79E9: $39
    jp $3A50                                      ; $79EA: $C3 $50 $3A


    inc bc                                        ; $79ED: $03
    ld b, b                                       ; $79EE: $40
    inc hl                                        ; $79EF: $23
    ld [hl], h                                    ; $79F0: $74
    ld d, b                                       ; $79F1: $50
    ld d, h                                       ; $79F2: $54
    jp $464A                                      ; $79F3: $C3 $4A $46


    inc bc                                        ; $79F6: $03
    ld b, b                                       ; $79F7: $40
    inc hl                                        ; $79F8: $23
    ld [hl], h                                    ; $79F9: $74
    ld d, b                                       ; $79FA: $50
    ld l, a                                       ; $79FB: $6F
    jp $3A56                                      ; $79FC: $C3 $56 $3A


jr_01B_79FF:
    inc bc                                        ; $79FF: $03
    ld b, b                                       ; $7A00: $40
    inc hl                                        ; $7A01: $23
    ld [hl], h                                    ; $7A02: $74
    ld d, b                                       ; $7A03: $50
    adc d                                         ; $7A04: $8A
    jp Jump_01B_405A                              ; $7A05: $C3 $5A $40


    inc bc                                        ; $7A08: $03
    ld b, b                                       ; $7A09: $40
    inc hl                                        ; $7A0A: $23
    ld [hl], h                                    ; $7A0B: $74
    ld d, b                                       ; $7A0C: $50
    and l                                         ; $7A0D: $A5
    jp Jump_01B_445A                              ; $7A0E: $C3 $5A $44


    inc bc                                        ; $7A11: $03
    ld b, b                                       ; $7A12: $40
    inc hl                                        ; $7A13: $23
    ld [hl], h                                    ; $7A14: $74
    ld d, b                                       ; $7A15: $50
    ret nz                                        ; $7A16: $C0

    jp $3A56                                      ; $7A17: $C3 $56 $3A


    inc bc                                        ; $7A1A: $03
    ld b, b                                       ; $7A1B: $40
    inc hl                                        ; $7A1C: $23
    ld [hl], h                                    ; $7A1D: $74
    ld a, b                                       ; $7A1E: $78
    ret nz                                        ; $7A1F: $C0

    ld b, e                                       ; $7A20: $43
    ld b, b                                       ; $7A21: $40
    add a                                         ; $7A22: $87
    ld a, c                                       ; $7A23: $79
    add a                                         ; $7A24: $87
    ld b, b                                       ; $7A25: $40
    jr nz, jr_01B_7A33                            ; $7A26: $20 $0B

    inc c                                         ; $7A28: $0C
    ld b, b                                       ; $7A29: $40
    ld [bc], a                                    ; $7A2A: $02
    ld l, a                                       ; $7A2B: $6F
    ld b, $FF                                     ; $7A2C: $06 $FF
    ld a, a                                       ; $7A2E: $7F
    ld b, b                                       ; $7A2F: $40
    ld [bc], a                                    ; $7A30: $02
    ld e, d                                       ; $7A31: $5A
    dec de                                        ; $7A32: $1B

jr_01B_7A33:
    ld d, l                                       ; $7A33: $55
    ld a, e                                       ; $7A34: $7B
    ld a, b                                       ; $7A35: $78
    db $F4                                        ; $7A36: $F4
    ld e, b                                       ; $7A37: $58
    ld a, h                                       ; $7A38: $7C
    ld b, $79                                     ; $7A39: $06 $79
    ld b, $40                                     ; $7A3B: $06 $40
    ld bc, $0E0B                                  ; $7A3D: $01 $0B $0E
    ld b, b                                       ; $7A40: $40
    ld [bc], a                                    ; $7A41: $02
    dec bc                                        ; $7A42: $0B
    rrca                                          ; $7A43: $0F
    ld b, b                                       ; $7A44: $40
    ld [bc], a                                    ; $7A45: $02
    ld l, a                                       ; $7A46: $6F
    ld b, $FF                                     ; $7A47: $06 $FF
    ld a, a                                       ; $7A49: $7F
    ld b, b                                       ; $7A4A: $40
    ld [bc], a                                    ; $7A4B: $02
    ld a, b                                       ; $7A4C: $78
    db $F4                                        ; $7A4D: $F4
    ld e, b                                       ; $7A4E: $58
    ld a, h                                       ; $7A4F: $7C
    ld b, $79                                     ; $7A50: $06 $79
    ld b, $0B                                     ; $7A52: $06 $0B
    db $10                                        ; $7A54: $10
    ld b, b                                       ; $7A55: $40
    ld b, $7F                                     ; $7A56: $06 $7F
    ld c, l                                       ; $7A58: $4D
    ret nc                                        ; $7A59: $D0

    ld bc, $4D04                                  ; $7A5A: $01 $04 $4D
    ret nc                                        ; $7A5D: $D0

    inc bc                                        ; $7A5E: $03
    dec b                                         ; $7A5F: $05
    dec bc                                        ; $7A60: $0B
    ld de, $0840                                  ; $7A61: $11 $40 $08
    dec bc                                        ; $7A64: $0B
    ld [de], a                                    ; $7A65: $12
    ld b, b                                       ; $7A66: $40
    ld a, [bc]                                    ; $7A67: $0A
    dec bc                                        ; $7A68: $0B
    inc de                                        ; $7A69: $13
    ld e, d                                       ; $7A6A: $5A
    dec de                                        ; $7A6B: $1B
    ld b, h                                       ; $7A6C: $44
    ld a, e                                       ; $7A6D: $7B
    ld b, b                                       ; $7A6E: $40
    db $10                                        ; $7A6F: $10
    dec bc                                        ; $7A70: $0B
    inc d                                         ; $7A71: $14
    ld b, b                                       ; $7A72: $40
    jr @+$5C                                      ; $7A73: $18 $5A

    dec de                                        ; $7A75: $1B
    inc sp                                        ; $7A76: $33
    ld a, e                                       ; $7A77: $7B
    dec bc                                        ; $7A78: $0B
    dec d                                         ; $7A79: $15
    ld b, b                                       ; $7A7A: $40
    jr jr_01B_7A89                                ; $7A7B: $18 $0C

    ld c, $0C                                     ; $7A7D: $0E $0C
    rrca                                          ; $7A7F: $0F
    inc c                                         ; $7A80: $0C
    db $10                                        ; $7A81: $10
    inc c                                         ; $7A82: $0C
    ld de, $120C                                  ; $7A83: $11 $0C $12
    inc c                                         ; $7A86: $0C

jr_01B_7A87:
    inc de                                        ; $7A87: $13
    inc c                                         ; $7A88: $0C

jr_01B_7A89:
    inc d                                         ; $7A89: $14
    inc c                                         ; $7A8A: $0C
    dec d                                         ; $7A8B: $15
    ld d, b                                       ; $7A8C: $50
    inc bc                                        ; $7A8D: $03
    jp Jump_01B_4064                              ; $7A8E: $C3 $64 $40


    inc bc                                        ; $7A91: $03
    ld b, b                                       ; $7A92: $40
    inc hl                                        ; $7A93: $23
    ld [hl], h                                    ; $7A94: $74
    ld d, b                                       ; $7A95: $50
    ld e, $C3                                     ; $7A96: $1E $C3
    ld d, h                                       ; $7A98: $54
    ld b, h                                       ; $7A99: $44
    inc bc                                        ; $7A9A: $03
    ld b, b                                       ; $7A9B: $40
    inc hl                                        ; $7A9C: $23
    ld [hl], h                                    ; $7A9D: $74
    ld d, b                                       ; $7A9E: $50
    add hl, sp                                    ; $7A9F: $39
    jp Jump_01B_4654                              ; $7AA0: $C3 $54 $46


    inc bc                                        ; $7AA3: $03
    ld b, b                                       ; $7AA4: $40
    inc hl                                        ; $7AA5: $23
    ld [hl], h                                    ; $7AA6: $74
    ld d, b                                       ; $7AA7: $50
    ld d, h                                       ; $7AA8: $54
    jp Jump_01B_4A64                              ; $7AA9: $C3 $64 $4A


    inc bc                                        ; $7AAC: $03
    ld b, b                                       ; $7AAD: $40
    inc hl                                        ; $7AAE: $23
    ld [hl], h                                    ; $7AAF: $74
    ld d, b                                       ; $7AB0: $50
    ld l, a                                       ; $7AB1: $6F

jr_01B_7AB2:
    jp Jump_01B_4E64                              ; $7AB2: $C3 $64 $4E


    inc bc                                        ; $7AB5: $03
    ld b, b                                       ; $7AB6: $40
    inc hl                                        ; $7AB7: $23
    ld [hl], h                                    ; $7AB8: $74
    ld d, b                                       ; $7AB9: $50
    adc d                                         ; $7ABA: $8A
    jp Jump_01B_5054                              ; $7ABB: $C3 $54 $50


    inc bc                                        ; $7ABE: $03
    ld b, b                                       ; $7ABF: $40
    inc hl                                        ; $7AC0: $23
    ld [hl], h                                    ; $7AC1: $74
    ld d, b                                       ; $7AC2: $50
    and l                                         ; $7AC3: $A5
    jp $5666                                      ; $7AC4: $C3 $66 $56


    inc bc                                        ; $7AC7: $03
    ld b, b                                       ; $7AC8: $40
    inc hl                                        ; $7AC9: $23
    ld [hl], h                                    ; $7ACA: $74
    ld d, b                                       ; $7ACB: $50
    ret nz                                        ; $7ACC: $C0

    jp $5852                                      ; $7ACD: $C3 $52 $58


    inc bc                                        ; $7AD0: $03
    ld b, b                                       ; $7AD1: $40
    inc hl                                        ; $7AD2: $23
    ld [hl], h                                    ; $7AD3: $74

jr_01B_7AD4:
    dec bc                                        ; $7AD4: $0B
    ld c, $40                                     ; $7AD5: $0E $40
    ld [$2B5A], sp                                ; $7AD7: $08 $5A $2B
    ld e, d                                       ; $7ADA: $5A
    ld h, c                                       ; $7ADB: $61

jr_01B_7ADC:
    dec bc                                        ; $7ADC: $0B
    rrca                                          ; $7ADD: $0F
    ld b, b                                       ; $7ADE: $40
    db $10                                        ; $7ADF: $10
    dec bc                                        ; $7AE0: $0B
    db $10                                        ; $7AE1: $10
    ld b, b                                       ; $7AE2: $40
    inc c                                         ; $7AE3: $0C
    dec bc                                        ; $7AE4: $0B
    ld de, $0840                                  ; $7AE5: $11 $40 $08
    dec bc                                        ; $7AE8: $0B
    ld [de], a                                    ; $7AE9: $12
    ld b, b                                       ; $7AEA: $40
    db $10                                        ; $7AEB: $10
    dec bc                                        ; $7AEC: $0B
    inc de                                        ; $7AED: $13
    ld b, b                                       ; $7AEE: $40
    jr jr_01B_7AFC                                ; $7AEF: $18 $0B

    inc d                                         ; $7AF1: $14
    ld b, b                                       ; $7AF2: $40
    db $10                                        ; $7AF3: $10
    dec bc                                        ; $7AF4: $0B
    dec d                                         ; $7AF5: $15
    ld b, b                                       ; $7AF6: $40
    jr jr_01B_7B04                                ; $7AF7: $18 $0B

    nop                                           ; $7AF9: $00
    ld a, b                                       ; $7AFA: $78
    cp c                                          ; $7AFB: $B9

jr_01B_7AFC:
    ld e, h                                       ; $7AFC: $5C
    ld hl, $7987                                  ; $7AFD: $21 $87 $79
    add a                                         ; $7B00: $87
    ld b, b                                       ; $7B01: $40
    jr nz, jr_01B_7A87                            ; $7B02: $20 $83

jr_01B_7B04:
    ld b, b                                       ; $7B04: $40
    ld bc, $0000                                  ; $7B05: $01 $00 $00
    rlca                                          ; $7B08: $07
    nop                                           ; $7B09: $00
    ld b, a                                       ; $7B0A: $47
    ld e, l                                       ; $7B0B: $5D
    add hl, bc                                    ; $7B0C: $09
    nop                                           ; $7B0D: $00
    jr nz, @-$3F                                  ; $7B0E: $20 $BF

    ld d, b                                       ; $7B10: $50
    ld b, d                                       ; $7B11: $42
    dec d                                         ; $7B12: $15
    jr nz, jr_01B_7AD4                            ; $7B13: $20 $BF

    ld d, b                                       ; $7B15: $50
    db $10                                        ; $7B16: $10
    jr nz, jr_01B_7B56                            ; $7B17: $20 $3D

    ld d, b                                       ; $7B19: $50
    db $10                                        ; $7B1A: $10
    jr nz, jr_01B_7ADC                            ; $7B1B: $20 $BF

    ld d, b                                       ; $7B1D: $50
    db $10                                        ; $7B1E: $10
    jr nz, jr_01B_7AB2                            ; $7B1F: $20 $91

    ld d, b                                       ; $7B21: $50
    jr jr_01B_7B44                                ; $7B22: $18 $20

    cp a                                          ; $7B24: $BF
    ld d, b                                       ; $7B25: $50
    nop                                           ; $7B26: $00
    nop                                           ; $7B27: $00
    add e                                         ; $7B28: $83
    jr nc, @+$01                                  ; $7B29: $30 $FF

    nop                                           ; $7B2B: $00
    nop                                           ; $7B2C: $00
    add hl, de                                    ; $7B2D: $19
    inc d                                         ; $7B2E: $14
    jr nz, @-$3F                                  ; $7B2F: $20 $BF

    ld d, b                                       ; $7B31: $50
    ld b, d                                       ; $7B32: $42
    add e                                         ; $7B33: $83
    ld bc, $0100                                  ; $7B34: $01 $00 $01
    ld bc, $0001                                  ; $7B37: $01 $01 $00
    ld bc, $FF00                                  ; $7B3A: $01 $00 $FF
    ld bc, $00FF                                  ; $7B3D: $01 $FF $00
    nop                                           ; $7B40: $00
    ld b, [hl]                                    ; $7B41: $46
    inc sp                                        ; $7B42: $33
    ld a, e                                       ; $7B43: $7B

jr_01B_7B44:
    add e                                         ; $7B44: $83
    ld bc, $0200                                  ; $7B45: $01 $00 $02
    ld bc, $0002                                  ; $7B48: $01 $02 $00
    ld bc, $FE00                                  ; $7B4B: $01 $00 $FE
    ld bc, $00FE                                  ; $7B4E: $01 $FE $00
    nop                                           ; $7B51: $00
    ld b, [hl]                                    ; $7B52: $46
    ld b, h                                       ; $7B53: $44
    ld a, e                                       ; $7B54: $7B
    add e                                         ; $7B55: $83

jr_01B_7B56:
    ld bc, $0300                                  ; $7B56: $01 $00 $03
    ld bc, $0003                                  ; $7B59: $01 $03 $00
    ld bc, $FD00                                  ; $7B5C: $01 $00 $FD
    ld bc, $00FD                                  ; $7B5F: $01 $FD $00
    nop                                           ; $7B62: $00
    ld b, [hl]                                    ; $7B63: $46
    ld d, l                                       ; $7B64: $55
    ld a, e                                       ; $7B65: $7B
    add e                                         ; $7B66: $83
    ld bc, $0400                                  ; $7B67: $01 $00 $04
    ld bc, $0004                                  ; $7B6A: $01 $04 $00
    ld bc, $FC00                                  ; $7B6D: $01 $00 $FC
    ld bc, $00FC                                  ; $7B70: $01 $FC $00
    nop                                           ; $7B73: $00
    ld b, [hl]                                    ; $7B74: $46
    ld h, [hl]                                    ; $7B75: $66
    ld a, e                                       ; $7B76: $7B
    xor e                                         ; $7B77: $AB
    or c                                          ; $7B78: $B1
    and e                                         ; $7B79: $A3
    ld bc, $6593                                  ; $7B7A: $01 $93 $65
    sbc d                                         ; $7B7D: $9A
    ld c, e                                       ; $7B7E: $4B
    ld c, a                                       ; $7B7F: $4F
    ld l, b                                       ; $7B80: $68
    or d                                          ; $7B81: $B2
    ld a, a                                       ; $7B82: $7F
    ld a, c                                       ; $7B83: $79
    ld d, $6A                                     ; $7B84: $16 $6A
    ld a, h                                       ; $7B86: $7C
    ld h, h                                       ; $7B87: $64
    rst $08                                       ; $7B88: $CF
    ld c, c                                       ; $7B89: $49
    ld h, [hl]                                    ; $7B8A: $66
    cp c                                          ; $7B8B: $B9
    ld e, h                                       ; $7B8C: $5C
    ld hl, $0005                                  ; $7B8D: $21 $05 $00
    ld l, c                                       ; $7B90: $69
    ld c, d                                       ; $7B91: $4A
    ld a, [bc]                                    ; $7B92: $0A
    ld b, $9A                                     ; $7B93: $06 $9A
    ret nc                                        ; $7B95: $D0

    nop                                           ; $7B96: $00
    dec de                                        ; $7B97: $1B
    rst $28                                       ; $7B98: $EF
    ld a, e                                       ; $7B99: $7B
    ld [hl+], a                                   ; $7B9A: $22
    dec b                                         ; $7B9B: $05
    ld b, b                                       ; $7B9C: $40
    dec b                                         ; $7B9D: $05
    ld [bc], a                                    ; $7B9E: $02
    ld l, c                                       ; $7B9F: $69
    ld c, d                                       ; $7BA0: $4A
    inc c                                         ; $7BA1: $0C
    ld b, $9C                                     ; $7BA2: $06 $9C
    ret nc                                        ; $7BA4: $D0

    jr nc, jr_01B_7BC2                            ; $7BA5: $30 $1B

    ld c, [hl]                                    ; $7BA7: $4E
    ld a, h                                       ; $7BA8: $7C
    ld [hl+], a                                   ; $7BA9: $22
    dec b                                         ; $7BAA: $05
    ld b, b                                       ; $7BAB: $40
    dec b                                         ; $7BAC: $05
    inc bc                                        ; $7BAD: $03
    ld l, c                                       ; $7BAE: $69
    ld c, d                                       ; $7BAF: $4A
    ld b, $06                                     ; $7BB0: $06 $06
    sub [hl]                                      ; $7BB2: $96
    ret nc                                        ; $7BB3: $D0

    nop                                           ; $7BB4: $00
    dec de                                        ; $7BB5: $1B
    adc l                                         ; $7BB6: $8D
    ld a, h                                       ; $7BB7: $7C
    ld [hl+], a                                   ; $7BB8: $22
    dec b                                         ; $7BB9: $05
    ld b, b                                       ; $7BBA: $40

jr_01B_7BBB:
    dec b                                         ; $7BBB: $05
    ld [$4A69], sp                                ; $7BBC: $08 $69 $4A

jr_01B_7BBF:
    dec c                                         ; $7BBF: $0D
    inc b                                         ; $7BC0: $04
    ld l, l                                       ; $7BC1: $6D

jr_01B_7BC2:
    ret nc                                        ; $7BC2: $D0

    ld l, [hl]                                    ; $7BC3: $6E
    db $10                                        ; $7BC4: $10

jr_01B_7BC5:
    sub l                                         ; $7BC5: $95
    ld d, a                                       ; $7BC6: $57
    ld [hl+], a                                   ; $7BC7: $22
    dec b                                         ; $7BC8: $05
    ld b, b                                       ; $7BC9: $40
    ld l, e                                       ; $7BCA: $6B
    ld a, [hl+]                                   ; $7BCB: $2A
    ld a, [bc]                                    ; $7BCC: $0A

jr_01B_7BCD:
    ldh a, [$5E]                                  ; $7BCD: $F0 $5E
    nop                                           ; $7BCF: $00
    add e                                         ; $7BD0: $83
    nop                                           ; $7BD1: $00
    ld l, e                                       ; $7BD2: $6B
    jr nc, @+$0D                                  ; $7BD3: $30 $0B

jr_01B_7BD5:
    ld d, b                                       ; $7BD5: $50
    ld a, d                                       ; $7BD6: $7A
    nop                                           ; $7BD7: $00
    add b                                         ; $7BD8: $80
    nop                                           ; $7BD9: $00
    ld l, e                                       ; $7BDA: $6B
    ld bc, $000A                                  ; $7BDB: $01 $0A $00
    ld d, a                                       ; $7BDE: $57
    ldh [$86], a                                  ; $7BDF: $E0 $86
    nop                                           ; $7BE1: $00
    dec bc                                        ; $7BE2: $0B
    nop                                           ; $7BE3: $00
    dec bc                                        ; $7BE4: $0B
    ld [bc], a                                    ; $7BE5: $02
    dec bc                                        ; $7BE6: $0B
    inc bc                                        ; $7BE7: $03
    add h                                         ; $7BE8: $84
    add hl, bc                                    ; $7BE9: $09
    ld b, $1F                                     ; $7BEA: $06 $1F
    dec c                                         ; $7BEC: $0D
    sub h                                         ; $7BED: $94
    ld b, d                                       ; $7BEE: $42
    dec d                                         ; $7BEF: $15
    jr nz, jr_01B_7C3F                            ; $7BF0: $20 $4D

    ld d, b                                       ; $7BF2: $50
    inc b                                         ; $7BF3: $04
    jr nz, jr_01B_7BBF                            ; $7BF4: $20 $C9

    ld d, b                                       ; $7BF6: $50
    nop                                           ; $7BF7: $00

jr_01B_7BF8:
    nop                                           ; $7BF8: $00
    inc d                                         ; $7BF9: $14
    jr nz, jr_01B_7BC5                            ; $7BFA: $20 $C9

    ld d, b                                       ; $7BFC: $50

jr_01B_7BFD:
    ld h, b                                       ; $7BFD: $60
    ld [bc], a                                    ; $7BFE: $02
    ld d, [hl]                                    ; $7BFF: $56
    inc bc                                        ; $7C00: $03
    dec d                                         ; $7C01: $15
    jr nz, jr_01B_7BCD                            ; $7C02: $20 $C9

    ld d, b                                       ; $7C04: $50
    ld c, b                                       ; $7C05: $48
    jr nz, @-$11                                  ; $7C06: $20 $ED

    ld c, a                                       ; $7C08: $4F
    db $10                                        ; $7C09: $10
    jr nz, jr_01B_7BD5                            ; $7C0A: $20 $C9

    ld d, b                                       ; $7C0C: $50
    jr jr_01B_7C2F                                ; $7C0D: $18 $20

    db $DD                                        ; $7C0F: $DD
    ld d, b                                       ; $7C10: $50
    nop                                           ; $7C11: $00
    nop                                           ; $7C12: $00
    ld d, [hl]                                    ; $7C13: $56
    inc b                                         ; $7C14: $04
    ld e, h                                       ; $7C15: $5C
    nop                                           ; $7C16: $00
    inc bc                                        ; $7C17: $03
    inc d                                         ; $7C18: $14
    jr nz, jr_01B_7BF8                            ; $7C19: $20 $DD

    ld d, b                                       ; $7C1B: $50
    ld e, h                                       ; $7C1C: $5C
    ld bc, $1502                                  ; $7C1D: $01 $02 $15
    jr nz, jr_01B_7BBB                            ; $7C20: $20 $99

    ld d, h                                       ; $7C22: $54
    inc d                                         ; $7C23: $14
    jr nz, jr_01B_7C9D                            ; $7C24: $20 $77

    ld d, b                                       ; $7C26: $50
    ld [$C920], sp                                ; $7C27: $08 $20 $C9
    ld d, b                                       ; $7C2A: $50
    jr nc, jr_01B_7C4D                            ; $7C2B: $30 $20

    dec l                                         ; $7C2D: $2D
    ld d, b                                       ; $7C2E: $50

jr_01B_7C2F:
    stop                                          ; $7C2F: $10 $00
    inc d                                         ; $7C31: $14
    jr nz, jr_01B_7BFD                            ; $7C32: $20 $C9

    ld d, b                                       ; $7C34: $50
    ld h, d                                       ; $7C35: $62
    inc b                                         ; $7C36: $04
    dec d                                         ; $7C37: $15
    jr nz, @-$35                                  ; $7C38: $20 $C9

    ld d, b                                       ; $7C3A: $50
    inc h                                         ; $7C3B: $24
    jr nz, jr_01B_7BFD                            ; $7C3C: $20 $BF

    ld d, b                                       ; $7C3E: $50

jr_01B_7C3F:
    ld [$0C00], sp                                ; $7C3F: $08 $00 $0C
    ld [$2015], sp                                ; $7C42: $08 $15 $20
    add l                                         ; $7C45: $85
    ld d, h                                       ; $7C46: $54
    ld [$C920], sp                                ; $7C47: $08 $20 $C9
    ld d, b                                       ; $7C4A: $50
    nop                                           ; $7C4B: $00
    nop                                           ; $7C4C: $00

jr_01B_7C4D:
    ld b, d                                       ; $7C4D: $42
    dec d                                         ; $7C4E: $15
    ld c, $07                                     ; $7C4F: $0E $07
    ld [hl], d                                    ; $7C51: $72
    inc b                                         ; $7C52: $04
    ld c, $5B                                     ; $7C53: $0E $5B
    ld [hl], d                                    ; $7C55: $72
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    ld e, d                                       ; $7C58: $5A
    dec de                                        ; $7C59: $1B
    ld d, c                                       ; $7C5A: $51
    ld a, l                                       ; $7C5B: $7D
    inc d                                         ; $7C5C: $14
    ld c, $5B                                     ; $7C5D: $0E $5B
    ld [hl], d                                    ; $7C5F: $72
    ld h, b                                       ; $7C60: $60
    inc bc                                        ; $7C61: $03
    dec d                                         ; $7C62: $15
    ld c, $5B                                     ; $7C63: $0E $5B
    ld [hl], d                                    ; $7C65: $72
    inc e                                         ; $7C66: $1C
    nop                                           ; $7C67: $00
    ld e, d                                       ; $7C68: $5A
    dec de                                        ; $7C69: $1B
    ld b, d                                       ; $7C6A: $42
    ld a, l                                       ; $7C6B: $7D
    ld a, a                                       ; $7C6C: $7F
    sbc e                                         ; $7C6D: $9B
    ret nc                                        ; $7C6E: $D0

    inc bc                                        ; $7C6F: $03
    ld [bc], a                                    ; $7C70: $02
    sbc e                                         ; $7C71: $9B
    ret nc                                        ; $7C72: $D0

    ld b, $0B                                     ; $7C73: $06 $0B
    ld b, b                                       ; $7C75: $40
    db $10                                        ; $7C76: $10
    ld a, a                                       ; $7C77: $7F
    ld d, e                                       ; $7C78: $53
    ret nc                                        ; $7C79: $D0

    dec b                                         ; $7C7A: $05
    inc bc                                        ; $7C7B: $03
    sbc d                                         ; $7C7C: $9A
    ret nc                                        ; $7C7D: $D0

    ld b, $0A                                     ; $7C7E: $06 $0A
    ld b, b                                       ; $7C80: $40
    jr nz, jr_01B_7C98                            ; $7C81: $20 $15

    ld c, $B7                                     ; $7C83: $0E $B7
    ld [hl], d                                    ; $7C85: $72
    jr nc, jr_01B_7C88                            ; $7C86: $30 $00

jr_01B_7C88:
    ld e, h                                       ; $7C88: $5C
    nop                                           ; $7C89: $00
    inc bc                                        ; $7C8A: $03
    add hl, de                                    ; $7C8B: $19
    ld b, d                                       ; $7C8C: $42
    dec d                                         ; $7C8D: $15
    ld c, $46                                     ; $7C8E: $0E $46
    ld a, [hl]                                    ; $7C90: $7E
    inc b                                         ; $7C91: $04
    ld c, $A4                                     ; $7C92: $0E $A4
    ld a, [hl]                                    ; $7C94: $7E
    nop                                           ; $7C95: $00
    nop                                           ; $7C96: $00
    ld d, [hl]                                    ; $7C97: $56

jr_01B_7C98:
    ld [bc], a                                    ; $7C98: $02
    ld h, b                                       ; $7C99: $60
    inc b                                         ; $7C9A: $04
    ld d, $0E                                     ; $7C9B: $16 $0E

jr_01B_7C9D:
    ld [hl], $7E                                  ; $7C9D: $36 $7E
    jr nz, @+$01                                  ; $7C9F: $20 $FF

    nop                                           ; $7CA1: $00
    nop                                           ; $7CA2: $00
    inc d                                         ; $7CA3: $14
    ld c, $CC                                     ; $7CA4: $0E $CC
    ld a, [hl]                                    ; $7CA6: $7E
    ld e, h                                       ; $7CA7: $5C
    nop                                           ; $7CA8: $00
    inc bc                                        ; $7CA9: $03
    dec d                                         ; $7CAA: $15
    ld c, $16                                     ; $7CAB: $0E $16
    ld a, [hl]                                    ; $7CAD: $7E
    ld [$CC0E], sp                                ; $7CAE: $08 $0E $CC
    ld a, [hl]                                    ; $7CB1: $7E
    stop                                          ; $7CB2: $10 $00
    dec b                                         ; $7CB4: $05
    inc b                                         ; $7CB5: $04
    ld l, c                                       ; $7CB6: $69
    ld c, d                                       ; $7CB7: $4A
    ld [de], a                                    ; $7CB8: $12
    ld b, $A2                                     ; $7CB9: $06 $A2
    ret nc                                        ; $7CBB: $D0

    jr nc, @+$1D                                  ; $7CBC: $30 $1B

    db $10                                        ; $7CBE: $10
    ld a, l                                       ; $7CBF: $7D
    ld [hl+], a                                   ; $7CC0: $22
    dec b                                         ; $7CC1: $05
    ld b, b                                       ; $7CC2: $40
    ld l, e                                       ; $7CC3: $6B
    inc l                                         ; $7CC4: $2C
    ld a, [bc]                                    ; $7CC5: $0A
    or b                                          ; $7CC6: $B0
    ld c, b                                       ; $7CC7: $48
    nop                                           ; $7CC8: $00
    add e                                         ; $7CC9: $83
    nop                                           ; $7CCA: $00
    ld l, e                                       ; $7CCB: $6B
    ld c, $0D                                     ; $7CCC: $0E $0D
    ld [hl], b                                    ; $7CCE: $70
    ld d, b                                       ; $7CCF: $50
    nop                                           ; $7CD0: $00
    add [hl]                                      ; $7CD1: $86
    nop                                           ; $7CD2: $00
    dec d                                         ; $7CD3: $15
    ld c, $46                                     ; $7CD4: $0E $46
    ld a, [hl]                                    ; $7CD6: $7E
    inc b                                         ; $7CD7: $04
    ld c, $76                                     ; $7CD8: $0E $76
    ld a, [hl]                                    ; $7CDA: $7E
    ld [$5C00], sp                                ; $7CDB: $08 $00 $5C
    ld bc, $1502                                  ; $7CDE: $01 $02 $15
    ld c, $76                                     ; $7CE1: $0E $76
    ld a, [hl]                                    ; $7CE3: $7E
    ld c, $0E                                     ; $7CE4: $0E $0E
    call z, $207E                                 ; $7CE6: $CC $7E $20
    nop                                           ; $7CE9: $00
    dec bc                                        ; $7CEA: $0B
    inc b                                         ; $7CEB: $04
    ld e, e                                       ; $7CEC: $5B
    dec de                                        ; $7CED: $1B
    ld d, $70                                     ; $7CEE: $16 $70
    ld b, b                                       ; $7CF0: $40
    jr c, jr_01B_7D49                             ; $7CF1: $38 $56

    ld a, [bc]                                    ; $7CF3: $0A
    ld h, d                                       ; $7CF4: $62
    inc b                                         ; $7CF5: $04
    add e                                         ; $7CF6: $83
    db $10                                        ; $7CF7: $10
    cp $00                                        ; $7CF8: $FE $00
    nop                                           ; $7CFA: $00
    inc d                                         ; $7CFB: $14
    ld c, $9A                                     ; $7CFC: $0E $9A
    ld a, [hl]                                    ; $7CFE: $7E
    ld e, e                                       ; $7CFF: $5B
    dec de                                        ; $7D00: $1B
    ld b, e                                       ; $7D01: $43
    ld [hl], c                                    ; $7D02: $71
    ld h, d                                       ; $7D03: $62
    dec b                                         ; $7D04: $05
    ld sp, $631B                                  ; $7D05: $31 $1B $63
    ld a, l                                       ; $7D08: $7D
    ld [hl+], a                                   ; $7D09: $22
    ld [$4541], sp                                ; $7D0A: $08 $41 $45
    dec de                                        ; $7D0D: $1B
    db $10                                        ; $7D0E: $10
    ld [hl], a                                    ; $7D0F: $77
    ld h, d                                       ; $7D10: $62
    inc bc                                        ; $7D11: $03
    dec d                                         ; $7D12: $15
    ld c, $B4                                     ; $7D13: $0E $B4
    ld d, e                                       ; $7D15: $53
    inc b                                         ; $7D16: $04
    ld c, $D4                                     ; $7D17: $0E $D4
    ld d, e                                       ; $7D19: $53
    jr nz, jr_01B_7D1C                            ; $7D1A: $20 $00

jr_01B_7D1C:
    inc d                                         ; $7D1C: $14
    ld c, $08                                     ; $7D1D: $0E $08
    ld d, h                                       ; $7D1F: $54
    add e                                         ; $7D20: $83
    db $10                                        ; $7D21: $10
    ld [bc], a                                    ; $7D22: $02
    nop                                           ; $7D23: $00
    nop                                           ; $7D24: $00
    ld b, b                                       ; $7D25: $40
    db $10                                        ; $7D26: $10
    ld d, [hl]                                    ; $7D27: $56
    dec b                                         ; $7D28: $05
    ld e, e                                       ; $7D29: $5B
    dec de                                        ; $7D2A: $1B
    ld [bc], a                                    ; $7D2B: $02
    ld [hl], c                                    ; $7D2C: $71
    ld h, d                                       ; $7D2D: $62
    inc b                                         ; $7D2E: $04
    dec bc                                        ; $7D2F: $0B
    ld [$0587], sp                                ; $7D30: $08 $87 $05
    dec b                                         ; $7D33: $05
    rst $38                                       ; $7D34: $FF
    add a                                         ; $7D35: $87
    dec b                                         ; $7D36: $05
    dec b                                         ; $7D37: $05
    rst $38                                       ; $7D38: $FF
    add a                                         ; $7D39: $87
    dec b                                         ; $7D3A: $05
    dec b                                         ; $7D3B: $05
    rst $38                                       ; $7D3C: $FF
    add a                                         ; $7D3D: $87
    dec b                                         ; $7D3E: $05
    dec b                                         ; $7D3F: $05
    rst $38                                       ; $7D40: $FF
    ld b, d                                       ; $7D41: $42
    add e                                         ; $7D42: $83
    ld [bc], a                                    ; $7D43: $02
    nop                                           ; $7D44: $00
    inc bc                                        ; $7D45: $03
    ld [bc], a                                    ; $7D46: $02
    inc bc                                        ; $7D47: $03
    nop                                           ; $7D48: $00

jr_01B_7D49:
    ld [bc], a                                    ; $7D49: $02
    nop                                           ; $7D4A: $00
    db $FD                                        ; $7D4B: $FD
    ld [bc], a                                    ; $7D4C: $02
    db $FD                                        ; $7D4D: $FD
    nop                                           ; $7D4E: $00
    nop                                           ; $7D4F: $00
    ld b, d                                       ; $7D50: $42
    add e                                         ; $7D51: $83
    jr nz, jr_01B_7D56                            ; $7D52: $20 $02

    nop                                           ; $7D54: $00
    nop                                           ; $7D55: $00

jr_01B_7D56:
    ld b, d                                       ; $7D56: $42
    add e                                         ; $7D57: $83

jr_01B_7D58:
    jr nc, jr_01B_7D58                            ; $7D58: $30 $FE

    nop                                           ; $7D5A: $00
    nop                                           ; $7D5B: $00
    ld b, d                                       ; $7D5C: $42
    add e                                         ; $7D5D: $83
    jr nc, jr_01B_7D62                            ; $7D5E: $30 $02

    nop                                           ; $7D60: $00
    nop                                           ; $7D61: $00

jr_01B_7D62:
    ld b, d                                       ; $7D62: $42
    sub e                                         ; $7D63: $93
    ld h, l                                       ; $7D64: $65
    sbc d                                         ; $7D65: $9A
    ld c, e                                       ; $7D66: $4B
    ld c, a                                       ; $7D67: $4F
    ld l, b                                       ; $7D68: $68
    or d                                          ; $7D69: $B2
    ld a, a                                       ; $7D6A: $7F
    ld a, c                                       ; $7D6B: $79
    ld d, $6A                                     ; $7D6C: $16 $6A
    ld a, h                                       ; $7D6E: $7C
    ld h, h                                       ; $7D6F: $64
    rst $08                                       ; $7D70: $CF
    ld c, c                                       ; $7D71: $49
    ld h, [hl]                                    ; $7D72: $66
    cp c                                          ; $7D73: $B9
    ld e, h                                       ; $7D74: $5C
    ld hl, $0005                                  ; $7D75: $21 $05 $00
    ld l, c                                       ; $7D78: $69
    ld c, d                                       ; $7D79: $4A
    ld [$9806], sp                                ; $7D7A: $08 $06 $98
    ret nc                                        ; $7D7D: $D0

    nop                                           ; $7D7E: $00
    dec de                                        ; $7D7F: $1B
    pop de                                        ; $7D80: $D1
    ld a, l                                       ; $7D81: $7D
    ld [hl+], a                                   ; $7D82: $22
    dec b                                         ; $7D83: $05
    ld b, b                                       ; $7D84: $40
    dec b                                         ; $7D85: $05
    inc bc                                        ; $7D86: $03
    ld l, c                                       ; $7D87: $69
    ld c, d                                       ; $7D88: $4A
    ld a, [bc]                                    ; $7D89: $0A
    ld b, $9A                                     ; $7D8A: $06 $9A
    ret nc                                        ; $7D8C: $D0

    ld a, $1B                                     ; $7D8D: $3E $1B
    ld d, b                                       ; $7D8F: $50
    ld a, [hl]                                    ; $7D90: $7E
    ld [hl+], a                                   ; $7D91: $22
    dec b                                         ; $7D92: $05
    ld b, b                                       ; $7D93: $40
    dec b                                         ; $7D94: $05
    inc b                                         ; $7D95: $04
    ld l, c                                       ; $7D96: $69
    ld c, d                                       ; $7D97: $4A
    rrca                                          ; $7D98: $0F
    ld b, $9F                                     ; $7D99: $06 $9F
    ret nc                                        ; $7D9B: $D0

    nop                                           ; $7D9C: $00
    dec de                                        ; $7D9D: $1B
    ld h, a                                       ; $7D9E: $67
    ld a, [hl]                                    ; $7D9F: $7E
    ld [hl+], a                                   ; $7DA0: $22

jr_01B_7DA1:
    dec b                                         ; $7DA1: $05
    ld b, b                                       ; $7DA2: $40
    ld l, e                                       ; $7DA3: $6B
    jr nc, jr_01B_7DB1                            ; $7DA4: $30 $0B

    ld d, b                                       ; $7DA6: $50
    ld a, d                                       ; $7DA7: $7A
    ldh [$83], a                                  ; $7DA8: $E0 $83
    nop                                           ; $7DAA: $00
    ld l, e                                       ; $7DAB: $6B
    inc l                                         ; $7DAC: $2C
    ld a, [bc]                                    ; $7DAD: $0A
    or b                                          ; $7DAE: $B0
    ld c, b                                       ; $7DAF: $48
    nop                                           ; $7DB0: $00

jr_01B_7DB1:
    add b                                         ; $7DB1: $80
    nop                                           ; $7DB2: $00
    ld l, e                                       ; $7DB3: $6B
    ld c, $0D                                     ; $7DB4: $0E $0D
    ld [hl], b                                    ; $7DB6: $70
    ld d, b                                       ; $7DB7: $50
    nop                                           ; $7DB8: $00
    add e                                         ; $7DB9: $83
    nop                                           ; $7DBA: $00
    dec bc                                        ; $7DBB: $0B
    nop                                           ; $7DBC: $00
    dec bc                                        ; $7DBD: $0B

jr_01B_7DBE:
    inc bc                                        ; $7DBE: $03
    dec bc                                        ; $7DBF: $0B
    inc b                                         ; $7DC0: $04
    add h                                         ; $7DC1: $84
    add hl, bc                                    ; $7DC2: $09
    rlca                                          ; $7DC3: $07
    rra                                           ; $7DC4: $1F
    dec c                                         ; $7DC5: $0D
    ld a, a                                       ; $7DC6: $7F
    ld d, e                                       ; $7DC7: $53
    ret nc                                        ; $7DC8: $D0

    dec b                                         ; $7DC9: $05
    inc bc                                        ; $7DCA: $03
    sbc d                                         ; $7DCB: $9A
    ret nc                                        ; $7DCC: $D0

    ld b, $0A                                     ; $7DCD: $06 $0A
    sub h                                         ; $7DCF: $94

jr_01B_7DD0:
    ld b, d                                       ; $7DD0: $42
    dec d                                         ; $7DD1: $15
    jr nz, jr_01B_7E21                            ; $7DD2: $20 $4D

    ld d, b                                       ; $7DD4: $50
    inc b                                         ; $7DD5: $04
    jr nz, jr_01B_7DA1                            ; $7DD6: $20 $C9

    ld d, b                                       ; $7DD8: $50
    ld [$5C00], sp                                ; $7DD9: $08 $00 $5C
    nop                                           ; $7DDC: $00
    inc bc                                        ; $7DDD: $03
    ld b, b                                       ; $7DDE: $40
    ld h, b                                       ; $7DDF: $60
    dec d                                         ; $7DE0: $15

jr_01B_7DE1:
    jr nz, jr_01B_7DD0                            ; $7DE1: $20 $ED

    ld c, a                                       ; $7DE3: $4F
    jr nz, jr_01B_7E06                            ; $7DE4: $20 $20

    ret                                           ; $7DE6: $C9


    ld d, b                                       ; $7DE7: $50
    nop                                           ; $7DE8: $00
    nop                                           ; $7DE9: $00
    ld h, d                                       ; $7DEA: $62
    ld [bc], a                                    ; $7DEB: $02
    dec d                                         ; $7DEC: $15

jr_01B_7DED:
    jr nz, jr_01B_7E1C                            ; $7DED: $20 $2D

    ld d, b                                       ; $7DEF: $50
    ld [$C920], sp                                ; $7DF0: $08 $20 $C9
    ld d, b                                       ; $7DF3: $50
    jr nc, jr_01B_7E16                            ; $7DF4: $30 $20

    xor e                                         ; $7DF6: $AB
    ld d, b                                       ; $7DF7: $50
    jr nc, jr_01B_7E1A                            ; $7DF8: $30 $20

    ret                                           ; $7DFA: $C9


    ld d, b                                       ; $7DFB: $50
    jr nz, jr_01B_7E1E                            ; $7DFC: $20 $20

    xor e                                         ; $7DFE: $AB
    ld d, b                                       ; $7DFF: $50
    jr nz, jr_01B_7E22                            ; $7E00: $20 $20

    ret                                           ; $7E02: $C9


    ld d, b                                       ; $7E03: $50
    jr nz, jr_01B_7E26                            ; $7E04: $20 $20

jr_01B_7E06:
    xor e                                         ; $7E06: $AB
    ld d, b                                       ; $7E07: $50
    nop                                           ; $7E08: $00
    nop                                           ; $7E09: $00
    ld h, d                                       ; $7E0A: $62
    inc bc                                        ; $7E0B: $03
    dec d                                         ; $7E0C: $15
    jr nz, jr_01B_7E2C                            ; $7E0D: $20 $1D

    ld d, b                                       ; $7E0F: $50
    inc b                                         ; $7E10: $04
    jr nz, jr_01B_7DBE                            ; $7E11: $20 $AB

    ld d, b                                       ; $7E13: $50
    jr nc, jr_01B_7E36                            ; $7E14: $30 $20

jr_01B_7E16:
    ret                                           ; $7E16: $C9


jr_01B_7E17:
    ld d, b                                       ; $7E17: $50
    jr nz, jr_01B_7E3A                            ; $7E18: $20 $20

jr_01B_7E1A:
    xor e                                         ; $7E1A: $AB
    ld d, b                                       ; $7E1B: $50

jr_01B_7E1C:
    nop                                           ; $7E1C: $00
    nop                                           ; $7E1D: $00

jr_01B_7E1E:
    ld e, h                                       ; $7E1E: $5C
    nop                                           ; $7E1F: $00
    ld [bc], a                                    ; $7E20: $02

jr_01B_7E21:
    inc d                                         ; $7E21: $14

jr_01B_7E22:
    jr nz, jr_01B_7DED                            ; $7E22: $20 $C9

    ld d, b                                       ; $7E24: $50
    ld h, b                                       ; $7E25: $60

jr_01B_7E26:
    inc d                                         ; $7E26: $14
    ld d, [hl]                                    ; $7E27: $56
    ld c, $40                                     ; $7E28: $0E $40
    jr nz, jr_01B_7E41                            ; $7E2A: $20 $15

jr_01B_7E2C:
    jr nz, jr_01B_7DE1                            ; $7E2C: $20 $B3

    ld c, a                                       ; $7E2E: $4F
    ld b, $20                                     ; $7E2F: $06 $20
    xor e                                         ; $7E31: $AB
    ld d, b                                       ; $7E32: $50
    ld [$C920], sp                                ; $7E33: $08 $20 $C9

jr_01B_7E36:
    ld d, b                                       ; $7E36: $50
    inc c                                         ; $7E37: $0C
    jr nz, jr_01B_7E17                            ; $7E38: $20 $DD

jr_01B_7E3A:
    ld d, b                                       ; $7E3A: $50
    ld b, $00                                     ; $7E3B: $06 $00
    ld d, $20                                     ; $7E3D: $16 $20
    ld h, a                                       ; $7E3F: $67
    ld d, c                                       ; $7E40: $51

jr_01B_7E41:
    jr nz, jr_01B_7E43                            ; $7E41: $20 $00

jr_01B_7E43:
    rst $38                                       ; $7E43: $FF
    nop                                           ; $7E44: $00
    dec d                                         ; $7E45: $15
    jr nz, @+$69                                  ; $7E46: $20 $67

    ld d, c                                       ; $7E48: $51
    jr z, jr_01B_7E4B                             ; $7E49: $28 $00

jr_01B_7E4B:
    ld b, l                                       ; $7E4B: $45
    rla                                           ; $7E4C: $17
    ldh a, [$71]                                  ; $7E4D: $F0 $71
    ld b, d                                       ; $7E4F: $42
    inc d                                         ; $7E50: $14
    ld c, $9A                                     ; $7E51: $0E $9A
    ld a, [hl]                                    ; $7E53: $7E
    ld d, [hl]                                    ; $7E54: $56
    rlca                                          ; $7E55: $07
    ld e, e                                       ; $7E56: $5B
    dec de                                        ; $7E57: $1B
    db $E4                                        ; $7E58: $E4
    ld [hl], c                                    ; $7E59: $71
    ld h, d                                       ; $7E5A: $62
    ld b, $15                                     ; $7E5B: $06 $15
    ld c, $B5                                     ; $7E5D: $0E $B5
    ld a, a                                       ; $7E5F: $7F
    ld b, b                                       ; $7E60: $40
    nop                                           ; $7E61: $00
    ld e, h                                       ; $7E62: $5C
    nop                                           ; $7E63: $00
    inc bc                                        ; $7E64: $03
    add hl, de                                    ; $7E65: $19
    ld b, d                                       ; $7E66: $42
    dec d                                         ; $7E67: $15
    ld c, $B4                                     ; $7E68: $0E $B4
    ld d, e                                       ; $7E6A: $53
    inc b                                         ; $7E6B: $04
    ld c, $08                                     ; $7E6C: $0E $08
    ld d, h                                       ; $7E6E: $54
    nop                                           ; $7E6F: $00
    nop                                           ; $7E70: $00
    ld e, h                                       ; $7E71: $5C
    nop                                           ; $7E72: $00
    inc bc                                        ; $7E73: $03
    ld b, b                                       ; $7E74: $40
    ld [$0505], sp                                ; $7E75: $08 $05 $05
    ld l, c                                       ; $7E78: $69
    ld c, d                                       ; $7E79: $4A

jr_01B_7E7A:
    rrca                                          ; $7E7A: $0F
    nop                                           ; $7E7B: $00
    rrca                                          ; $7E7C: $0F
    ret nc                                        ; $7E7D: $D0

    ld c, $1B                                     ; $7E7E: $0E $1B
    ret z                                         ; $7E80: $C8

    ld a, [hl]                                    ; $7E81: $7E
    ld [hl+], a                                   ; $7E82: $22
    dec b                                         ; $7E83: $05
    ld b, b                                       ; $7E84: $40
    dec b                                         ; $7E85: $05
    ld b, $69                                     ; $7E86: $06 $69
    ld c, d                                       ; $7E88: $4A
    ld a, [bc]                                    ; $7E89: $0A
    ld bc, $D022                                  ; $7E8A: $01 $22 $D0
    ld c, $1B                                     ; $7E8D: $0E $1B
    ld bc, $227F                                  ; $7E8F: $01 $7F $22
    dec b                                         ; $7E92: $05
    ld b, b                                       ; $7E93: $40
    ld l, e                                       ; $7E94: $6B
    ld [hl], $0D                                  ; $7E95: $36 $0D
    nop                                           ; $7E97: $00
    ld b, b                                       ; $7E98: $40
    ldh [$83], a                                  ; $7E99: $E0 $83
    nop                                           ; $7E9B: $00
    add e                                         ; $7E9C: $83
    jr jr_01B_7EA1                                ; $7E9D: $18 $02

    nop                                           ; $7E9F: $00
    nop                                           ; $7EA0: $00

jr_01B_7EA1:
    ld e, e                                       ; $7EA1: $5B
    dec de                                        ; $7EA2: $1B
    cpl                                           ; $7EA3: $2F
    ld [hl], d                                    ; $7EA4: $72
    ld h, d                                       ; $7EA5: $62
    rlca                                          ; $7EA6: $07
    rra                                           ; $7EA7: $1F
    dec c                                         ; $7EA8: $0D
    dec bc                                        ; $7EA9: $0B
    dec b                                         ; $7EAA: $05
    ld b, b                                       ; $7EAB: $40
    dec hl                                        ; $7EAC: $2B
    dec d                                         ; $7EAD: $15
    ld c, $FD                                     ; $7EAE: $0E $FD
    ld d, h                                       ; $7EB0: $54
    db $10                                        ; $7EB1: $10
    ld c, $04                                     ; $7EB2: $0E $04
    ld d, l                                       ; $7EB4: $55
    jr jr_01B_7EB7                                ; $7EB5: $18 $00

jr_01B_7EB7:
    ld e, e                                       ; $7EB7: $5B
    dec de                                        ; $7EB8: $1B
    adc d                                         ; $7EB9: $8A
    ld [hl], d                                    ; $7EBA: $72
    ld b, b                                       ; $7EBB: $40
    add b                                         ; $7EBC: $80
    ld e, d                                       ; $7EBD: $5A
    dec e                                         ; $7EBE: $1D
    and c                                         ; $7EBF: $A1
    ld d, c                                       ; $7EC0: $51
    ld b, b                                       ; $7EC1: $40
    ld h, b                                       ; $7EC2: $60
    ld e, d                                       ; $7EC3: $5A
    dec hl                                        ; $7EC4: $2B
    ld e, d                                       ; $7EC5: $5A
    ld h, c                                       ; $7EC6: $61
    ld b, d                                       ; $7EC7: $42
    dec d                                         ; $7EC8: $15
    jr nz, jr_01B_7E7A                            ; $7EC9: $20 $AF

    ld h, [hl]                                    ; $7ECB: $66
    dec b                                         ; $7ECC: $05
    jr nz, jr_01B_7F4E                            ; $7ECD: $20 $7F

    ld h, [hl]                                    ; $7ECF: $66
    ld b, $20                                     ; $7ED0: $06 $20
    ld b, c                                       ; $7ED2: $41
    ld h, a                                       ; $7ED3: $67
    ld d, h                                       ; $7ED4: $54
    jr nz, jr_01B_7EE2                            ; $7ED5: $20 $0B

    ld h, [hl]                                    ; $7ED7: $66
    jr jr_01B_7EFA                                ; $7ED8: $18 $20

    ld d, l                                       ; $7EDA: $55
    ld h, [hl]                                    ; $7EDB: $66
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    dec bc                                        ; $7EDE: $0B
    ld b, $62                                     ; $7EDF: $06 $62
    inc b                                         ; $7EE1: $04

jr_01B_7EE2:
    ld e, h                                       ; $7EE2: $5C

jr_01B_7EE3:
    nop                                           ; $7EE3: $00
    ld [bc], a                                    ; $7EE4: $02
    dec d                                         ; $7EE5: $15
    jr nz, jr_01B_7EF3                            ; $7EE6: $20 $0B

    ld h, [hl]                                    ; $7EE8: $66
    jr nz, jr_01B_7F0B                            ; $7EE9: $20 $20

    ld d, l                                       ; $7EEB: $55
    ld h, [hl]                                    ; $7EEC: $66
    nop                                           ; $7EED: $00
    nop                                           ; $7EEE: $00
    ld h, d                                       ; $7EEF: $62
    ld [$1456], sp                                ; $7EF0: $08 $56 $14

jr_01B_7EF3:
    ld b, b                                       ; $7EF3: $40
    db $10                                        ; $7EF4: $10
    dec d                                         ; $7EF5: $15
    jr nz, jr_01B_7EE3                            ; $7EF6: $20 $EB

    ld h, l                                       ; $7EF8: $65
    and b                                         ; $7EF9: $A0

jr_01B_7EFA:
    jr nz, jr_01B_7F27                            ; $7EFA: $20 $2B

    ld h, [hl]                                    ; $7EFC: $66
    nop                                           ; $7EFD: $00
    nop                                           ; $7EFE: $00
    add hl, de                                    ; $7EFF: $19
    ld b, d                                       ; $7F00: $42
    dec d                                         ; $7F01: $15
    jr nz, @+$3D                                  ; $7F02: $20 $3B

    ld h, [hl]                                    ; $7F04: $66
    jr z, jr_01B_7F27                             ; $7F05: $28 $20

    ei                                            ; $7F07: $FB
    ld h, l                                       ; $7F08: $65
    jr nz, jr_01B_7F2B                            ; $7F09: $20 $20

jr_01B_7F0B:
    dec sp                                        ; $7F0B: $3B
    ld h, [hl]                                    ; $7F0C: $66
    nop                                           ; $7F0D: $00
    nop                                           ; $7F0E: $00

jr_01B_7F0F:
    ld h, b                                       ; $7F0F: $60
    ld c, $15                                     ; $7F10: $0E $15
    jr nz, jr_01B_7F0F                            ; $7F12: $20 $FB

    ld h, l                                       ; $7F14: $65
    ld [hl+], a                                   ; $7F15: $22
    nop                                           ; $7F16: $00

jr_01B_7F17:
    ld d, [hl]                                    ; $7F17: $56
    ld a, [bc]                                    ; $7F18: $0A
    dec d                                         ; $7F19: $15
    jr nz, jr_01B_7F17                            ; $7F1A: $20 $FB

    ld h, l                                       ; $7F1C: $65
    db $10                                        ; $7F1D: $10
    jr nz, jr_01B_7F2B                            ; $7F1E: $20 $0B

    ld h, [hl]                                    ; $7F20: $66
    ld [$EB20], sp                                ; $7F21: $08 $20 $EB
    ld h, l                                       ; $7F24: $65
    and b                                         ; $7F25: $A0
    nop                                           ; $7F26: $00

jr_01B_7F27:
    add hl, de                                    ; $7F27: $19
    ld b, d                                       ; $7F28: $42
    jr nz, jr_01B_7F6C                            ; $7F29: $20 $41

jr_01B_7F2B:
    ld h, a                                       ; $7F2B: $67
    ld d, h                                       ; $7F2C: $54
    jr nz, jr_01B_7F3A                            ; $7F2D: $20 $0B

    ld h, [hl]                                    ; $7F2F: $66
    jr jr_01B_7F52                                ; $7F30: $18 $20

    ld d, l                                       ; $7F32: $55
    ld h, [hl]                                    ; $7F33: $66
    nop                                           ; $7F34: $00
    nop                                           ; $7F35: $00
    dec bc                                        ; $7F36: $0B
    ld b, $62                                     ; $7F37: $06 $62
    inc b                                         ; $7F39: $04

jr_01B_7F3A:
    ld e, h                                       ; $7F3A: $5C

jr_01B_7F3B:
    nop                                           ; $7F3B: $00
    ld [bc], a                                    ; $7F3C: $02
    dec d                                         ; $7F3D: $15
    jr nz, jr_01B_7F4B                            ; $7F3E: $20 $0B

    ld h, [hl]                                    ; $7F40: $66
    jr nz, jr_01B_7F63                            ; $7F41: $20 $20

    ld d, l                                       ; $7F43: $55
    ld h, [hl]                                    ; $7F44: $66
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    ld h, d                                       ; $7F47: $62
    ld [$1456], sp                                ; $7F48: $08 $56 $14

jr_01B_7F4B:
    ld b, b                                       ; $7F4B: $40
    db $10                                        ; $7F4C: $10
    dec d                                         ; $7F4D: $15

jr_01B_7F4E:
    jr nz, jr_01B_7F3B                            ; $7F4E: $20 $EB

    ld h, l                                       ; $7F50: $65
    and b                                         ; $7F51: $A0

jr_01B_7F52:
    jr nz, jr_01B_7F7F                            ; $7F52: $20 $2B

    ld h, [hl]                                    ; $7F54: $66
    nop                                           ; $7F55: $00
    nop                                           ; $7F56: $00
    add hl, de                                    ; $7F57: $19
    ld b, d                                       ; $7F58: $42
    dec d                                         ; $7F59: $15
    jr nz, jr_01B_7F97                            ; $7F5A: $20 $3B

    ld h, [hl]                                    ; $7F5C: $66
    jr z, jr_01B_7F7F                             ; $7F5D: $28 $20

    ei                                            ; $7F5F: $FB
    ld h, l                                       ; $7F60: $65
    jr nz, jr_01B_7F83                            ; $7F61: $20 $20

jr_01B_7F63:
    dec sp                                        ; $7F63: $3B
    ld h, [hl]                                    ; $7F64: $66
    nop                                           ; $7F65: $00
    nop                                           ; $7F66: $00

jr_01B_7F67:
    ld h, b                                       ; $7F67: $60
    ld c, $15                                     ; $7F68: $0E $15
    jr nz, jr_01B_7F67                            ; $7F6A: $20 $FB

jr_01B_7F6C:
    ld h, l                                       ; $7F6C: $65
    ld [hl+], a                                   ; $7F6D: $22
    nop                                           ; $7F6E: $00

jr_01B_7F6F:
    ld d, [hl]                                    ; $7F6F: $56
    ld a, [bc]                                    ; $7F70: $0A
    dec d                                         ; $7F71: $15
    jr nz, jr_01B_7F6F                            ; $7F72: $20 $FB

    ld h, l                                       ; $7F74: $65
    db $10                                        ; $7F75: $10
    jr nz, jr_01B_7F83                            ; $7F76: $20 $0B

    ld h, [hl]                                    ; $7F78: $66
    ld [$EB20], sp                                ; $7F79: $08 $20 $EB
    ld h, l                                       ; $7F7C: $65
    and b                                         ; $7F7D: $A0
    nop                                           ; $7F7E: $00

jr_01B_7F7F:
    add hl, de                                    ; $7F7F: $19
    ld b, d                                       ; $7F80: $42
    nop                                           ; $7F81: $00
    nop                                           ; $7F82: $00

jr_01B_7F83:
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

jr_01B_7F97:
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
