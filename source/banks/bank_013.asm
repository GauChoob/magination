SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    db $02, $00, $0F, $0C, $0A, $45, $14, $B6, $50

    ld b, e                                       ; $4009: $43
    nop                                           ; $400A: $00
    and l                                         ; $400B: $A5
    and c                                         ; $400C: $A1
    add b                                         ; $400D: $80
    inc de                                        ; $400E: $13
    scf                                           ; $400F: $37
    ld b, b                                       ; $4010: $40
    ld b, e                                       ; $4011: $43
    add hl, bc                                    ; $4012: $09
    rrca                                          ; $4013: $0F
    inc b                                         ; $4014: $04
    dec b                                         ; $4015: $05
    jr @+$15                                      ; $4016: $18 $13

    inc b                                         ; $4018: $04
    dec b                                         ; $4019: $05
    inc bc                                        ; $401A: $03
    ld [hl+], a                                   ; $401B: $22
    inc b                                         ; $401C: $04
    ld b, b                                       ; $401D: $40
    and [hl]                                      ; $401E: $A6
    or h                                          ; $401F: $B4
    and d                                         ; $4020: $A2
    dec bc                                        ; $4021: $0B
    ld bc, $A2B4                                  ; $4022: $01 $B4 $A2
    dec b                                         ; $4025: $05
    ld bc, $1143                                  ; $4026: $01 $43 $11
    ld bc, $A2B4                                  ; $4029: $01 $B4 $A2
    dec b                                         ; $402C: $05
    dec b                                         ; $402D: $05
    inc de                                        ; $402E: $13
    ld [hl-], a                                   ; $402F: $32
    ld b, b                                       ; $4030: $40
    ld b, d                                       ; $4031: $42
    xor h                                         ; $4032: $AC
    or h                                          ; $4033: $B4
    and d                                         ; $4034: $A2
    nop                                           ; $4035: $00
    ld b, d                                       ; $4036: $42
    xor h                                         ; $4037: $AC
    or l                                          ; $4038: $B5
    and d                                         ; $4039: $A2
    nop                                           ; $403A: $00
    ld b, d                                       ; $403B: $42
    xor h                                         ; $403C: $AC
    or h                                          ; $403D: $B4
    and d                                         ; $403E: $A2
    nop                                           ; $403F: $00
    xor h                                         ; $4040: $AC
    or l                                          ; $4041: $B5
    and d                                         ; $4042: $A2
    nop                                           ; $4043: $00
    ld b, d                                       ; $4044: $42
    ld b, e                                       ; $4045: $43
    rrca                                          ; $4046: $0F
    inc b                                         ; $4047: $04
    dec b                                         ; $4048: $05
    rrca                                          ; $4049: $0F
    inc de                                        ; $404A: $13
    ld d, [hl]                                    ; $404B: $56
    ld b, b                                       ; $404C: $40
    ld e, c                                       ; $404D: $59
    inc de                                        ; $404E: $13
    jr c, jr_013_40A8                             ; $404F: $38 $57

    xor [hl]                                      ; $4051: $AE
    and l                                         ; $4052: $A5
    and c                                         ; $4053: $A1
    ld a, a                                       ; $4054: $7F
    ld b, d                                       ; $4055: $42
    ld [bc], a                                    ; $4056: $02
    inc d                                         ; $4057: $14
    inc b                                         ; $4058: $04
    rlca                                          ; $4059: $07
    rrca                                          ; $405A: $0F
    ld b, l                                       ; $405B: $45
    jr z, jr_013_4095                             ; $405C: $28 $37

    ld e, a                                       ; $405E: $5F
    ld b, e                                       ; $405F: $43
    nop                                           ; $4060: $00
    and l                                         ; $4061: $A5
    and c                                         ; $4062: $A1
    add b                                         ; $4063: $80
    inc de                                        ; $4064: $13
    ld l, h                                       ; $4065: $6C
    ld b, b                                       ; $4066: $40
    xor h                                         ; $4067: $AC
    or h                                          ; $4068: $B4
    and d                                         ; $4069: $A2
    nop                                           ; $406A: $00
    ld b, d                                       ; $406B: $42
    and [hl]                                      ; $406C: $A6
    or l                                          ; $406D: $B5
    and d                                         ; $406E: $A2
    dec bc                                        ; $406F: $0B
    ld bc, $A2B5                                  ; $4070: $01 $B5 $A2
    dec b                                         ; $4073: $05
    ld bc, $1143                                  ; $4074: $01 $43 $11
    ld bc, $A2B5                                  ; $4077: $01 $B5 $A2
    dec b                                         ; $407A: $05
    dec b                                         ; $407B: $05
    inc de                                        ; $407C: $13
    add b                                         ; $407D: $80
    ld b, b                                       ; $407E: $40
    ld b, d                                       ; $407F: $42
    xor h                                         ; $4080: $AC
    or l                                          ; $4081: $B5
    and d                                         ; $4082: $A2
    nop                                           ; $4083: $00
    ld b, d                                       ; $4084: $42
    sbc e                                         ; $4085: $9B
    ld a, b                                       ; $4086: $78
    ld [hl], b                                    ; $4087: $70
    sbc a                                         ; $4088: $9F
    ld d, h                                       ; $4089: $54
    ld l, b                                       ; $408A: $68
    ld l, c                                       ; $408B: $69
    ld [hl], e                                    ; $408C: $73
    jr nz, jr_013_40FC                            ; $408D: $20 $6D

    ld [hl], l                                    ; $408F: $75
    ld [hl], e                                    ; $4090: $73
    ld [hl], h                                    ; $4091: $74
    jr nz, jr_013_40F6                            ; $4092: $20 $62

    ld h, l                                       ; $4094: $65

jr_013_4095:
    rst $38                                       ; $4095: $FF
    ld [hl], a                                    ; $4096: $77
    ld l, b                                       ; $4097: $68
    ld h, l                                       ; $4098: $65
    ld [hl], d                                    ; $4099: $72
    ld h, l                                       ; $409A: $65
    jr nz, jr_013_4111                            ; $409B: $20 $74

    ld l, b                                       ; $409D: $68
    ld h, l                                       ; $409E: $65
    ld a, c                                       ; $409F: $79
    cp $73                                        ; $40A0: $FE $73
    ld [hl], h                                    ; $40A2: $74
    ld l, a                                       ; $40A3: $6F
    ld [hl], d                                    ; $40A4: $72
    ld h, l                                       ; $40A5: $65
    jr nz, jr_013_411C                            ; $40A6: $20 $74

jr_013_40A8:
    ld l, b                                       ; $40A8: $68
    ld h, l                                       ; $40A9: $65
    rst $38                                       ; $40AA: $FF
    ld [hl], h                                    ; $40AB: $74
    ld [hl], d                                    ; $40AC: $72
    ld h, c                                       ; $40AD: $61
    ld l, c                                       ; $40AE: $69
    ld l, [hl]                                    ; $40AF: $6E
    ld l, c                                       ; $40B0: $69
    ld l, [hl]                                    ; $40B1: $6E
    ld h, a                                       ; $40B2: $67
    cp $65                                        ; $40B3: $FE $65
    ld [hl], c                                    ; $40B5: $71
    ld [hl], l                                    ; $40B6: $75
    ld l, c                                       ; $40B7: $69
    ld [hl], b                                    ; $40B8: $70
    ld l, l                                       ; $40B9: $6D
    ld h, l                                       ; $40BA: $65
    ld l, [hl]                                    ; $40BB: $6E
    ld [hl], h                                    ; $40BC: $74
    ld l, $FE                                     ; $40BD: $2E $FE
    db $FD                                        ; $40BF: $FD
    sbc d                                         ; $40C0: $9A
    ld b, d                                       ; $40C1: $42
    xor h                                         ; $40C2: $AC
    or h                                          ; $40C3: $B4
    and d                                         ; $40C4: $A2
    nop                                           ; $40C5: $00
    xor h                                         ; $40C6: $AC
    or l                                          ; $40C7: $B5
    and d                                         ; $40C8: $A2
    nop                                           ; $40C9: $00
    sbc e                                         ; $40CA: $9B
    ld a, b                                       ; $40CB: $78
    ld [hl], b                                    ; $40CC: $70
    sbc a                                         ; $40CD: $9F
    ld d, e                                       ; $40CE: $53
    ld h, e                                       ; $40CF: $63
    ld h, c                                       ; $40D0: $61
    ld [hl], d                                    ; $40D1: $72
    ld a, c                                       ; $40D2: $79
    ld l, $20                                     ; $40D3: $2E $20
    ld b, c                                       ; $40D5: $41
    ld l, [hl]                                    ; $40D6: $6E
    ld h, h                                       ; $40D7: $64
    rst $38                                       ; $40D8: $FF
    ld h, d                                       ; $40D9: $62
    ld l, c                                       ; $40DA: $69
    ld h, a                                       ; $40DB: $67
    ld l, $FE                                     ; $40DC: $2E $FE
    db $FD                                        ; $40DE: $FD
    sbc d                                         ; $40DF: $9A
    ld b, d                                       ; $40E0: $42
    ld b, e                                       ; $40E1: $43
    ld [$010F], sp                                ; $40E2: $08 $0F $01
    or l                                          ; $40E5: $B5
    and d                                         ; $40E6: $A2
    dec b                                         ; $40E7: $05
    dec b                                         ; $40E8: $05
    nop                                           ; $40E9: $00
    and l                                         ; $40EA: $A5
    and c                                         ; $40EB: $A1
    add b                                         ; $40EC: $80
    inc de                                        ; $40ED: $13
    ld b, a                                       ; $40EE: $47
    ld b, c                                       ; $40EF: $41
    ld b, e                                       ; $40F0: $43
    rrca                                          ; $40F1: $0F
    ld bc, $A2B4                                  ; $40F2: $01 $B4 $A2
    dec b                                         ; $40F5: $05

jr_013_40F6:
    dec b                                         ; $40F6: $05
    inc de                                        ; $40F7: $13
    add hl, de                                    ; $40F8: $19
    ld b, c                                       ; $40F9: $41
    xor h                                         ; $40FA: $AC
    or h                                          ; $40FB: $B4

jr_013_40FC:
    and d                                         ; $40FC: $A2
    nop                                           ; $40FD: $00
    xor h                                         ; $40FE: $AC
    or l                                          ; $40FF: $B5
    and d                                         ; $4100: $A2
    nop                                           ; $4101: $00
    sbc e                                         ; $4102: $9B
    ld a, b                                       ; $4103: $78
    ld [hl], b                                    ; $4104: $70
    sbc a                                         ; $4105: $9F
    ld d, e                                       ; $4106: $53
    ld h, e                                       ; $4107: $63
    ld h, c                                       ; $4108: $61
    ld [hl], d                                    ; $4109: $72
    ld a, c                                       ; $410A: $79
    ld l, $20                                     ; $410B: $2E $20
    ld b, c                                       ; $410D: $41
    ld l, [hl]                                    ; $410E: $6E
    ld h, h                                       ; $410F: $64
    rst $38                                       ; $4110: $FF

jr_013_4111:
    ld h, d                                       ; $4111: $62
    ld l, c                                       ; $4112: $69
    ld h, a                                       ; $4113: $67
    ld l, $FE                                     ; $4114: $2E $FE
    db $FD                                        ; $4116: $FD
    sbc d                                         ; $4117: $9A
    ld b, d                                       ; $4118: $42
    xor h                                         ; $4119: $AC
    or h                                          ; $411A: $B4
    and d                                         ; $411B: $A2

jr_013_411C:
    nop                                           ; $411C: $00
    xor a                                         ; $411D: $AF
    and l                                         ; $411E: $A5
    and c                                         ; $411F: $A1
    add b                                         ; $4120: $80
    sbc a                                         ; $4121: $9F
    ld b, e                                       ; $4122: $43
    ld l, h                                       ; $4123: $6C
    ld l, c                                       ; $4124: $69
    ld h, e                                       ; $4125: $63
    ld l, e                                       ; $4126: $6B
    ld hl, $FDFE                                  ; $4127: $21 $FE $FD
    sbc d                                         ; $412A: $9A
    ld a, [hl]                                    ; $412B: $7E
    nop                                           ; $412C: $00
    ret nc                                        ; $412D: $D0

    ld [bc], a                                    ; $412E: $02
    ld bc, $D092                                  ; $412F: $01 $92 $D0
    dec b                                         ; $4132: $05
    dec d                                         ; $4133: $15
    ld a, [hl]                                    ; $4134: $7E
    nop                                           ; $4135: $00
    ret nc                                        ; $4136: $D0

    ld [bc], a                                    ; $4137: $02
    ld bc, $D0AB                                  ; $4138: $01 $AB $D0
    ld b, $15                                     ; $413B: $06 $15
    ld a, [hl]                                    ; $413D: $7E
    add hl, de                                    ; $413E: $19
    ret nc                                        ; $413F: $D0

    ld [bc], a                                    ; $4140: $02
    ld bc, $D0C4                                  ; $4141: $01 $C4 $D0
    rlca                                          ; $4144: $07
    dec d                                         ; $4145: $15
    ld b, d                                       ; $4146: $42
    xor h                                         ; $4147: $AC
    or l                                          ; $4148: $B5
    and d                                         ; $4149: $A2
    nop                                           ; $414A: $00
    xor [hl]                                      ; $414B: $AE
    and l                                         ; $414C: $A5
    and c                                         ; $414D: $A1
    ld a, a                                       ; $414E: $7F
    sbc a                                         ; $414F: $9F
    ld b, e                                       ; $4150: $43
    ld l, h                                       ; $4151: $6C
    ld l, c                                       ; $4152: $69

jr_013_4153:
    ld h, e                                       ; $4153: $63
    ld l, e                                       ; $4154: $6B
    ld hl, $FDFE                                  ; $4155: $21 $FE $FD
    sbc d                                         ; $4158: $9A
    ld a, [hl]                                    ; $4159: $7E
    and e                                         ; $415A: $A3
    jp nc, $0302                                  ; $415B: $D2 $02 $03

    sub d                                         ; $415E: $92
    ret nc                                        ; $415F: $D0

    dec b                                         ; $4160: $05
    dec d                                         ; $4161: $15
    ld b, d                                       ; $4162: $42
    rlca                                          ; $4163: $07
    nop                                           ; $4164: $00
    ld l, e                                       ; $4165: $6B
    ld c, d                                       ; $4166: $4A
    add hl, bc                                    ; $4167: $09
    nop                                           ; $4168: $00
    inc de                                        ; $4169: $13
    add c                                         ; $416A: $81
    ld b, c                                       ; $416B: $41
    add hl, bc                                    ; $416C: $09
    ld [hl+], a                                   ; $416D: $22
    inc de                                        ; $416E: $13
    ld [hl], d                                    ; $416F: $72
    ld b, c                                       ; $4170: $41

jr_013_4171:
    ld b, d                                       ; $4171: $42
    dec d                                         ; $4172: $15
    ld c, $90                                     ; $4173: $0E $90
    ld d, e                                       ; $4175: $53
    db $10                                        ; $4176: $10
    ld c, $04                                     ; $4177: $0E $04
    ld d, h                                       ; $4179: $54
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    ld e, e                                       ; $417C: $5B
    inc de                                        ; $417D: $13
    adc h                                         ; $417E: $8C
    ld b, c                                       ; $417F: $41
    ld b, d                                       ; $4180: $42
    dec d                                         ; $4181: $15
    jr nz, jr_013_4171                            ; $4182: $20 $ED

    ld c, a                                       ; $4184: $4F
    jr jr_013_4187                                ; $4185: $18 $00

jr_013_4187:
    inc d                                         ; $4187: $14
    jr nz, jr_013_4153                            ; $4188: $20 $C9

    ld d, b                                       ; $418A: $50
    ld b, d                                       ; $418B: $42
    sbc e                                         ; $418C: $9B
    ld c, b                                       ; $418D: $48
    ld b, [hl]                                    ; $418E: $46
    sbc a                                         ; $418F: $9F
    ld b, c                                       ; $4190: $41
    ld [hl], d                                    ; $4191: $72
    ld h, l                                       ; $4192: $65
    jr nz, @+$7B                                  ; $4193: $20 $79

    ld l, a                                       ; $4195: $6F
    ld [hl], l                                    ; $4196: $75
    jr nz, jr_013_420C                            ; $4197: $20 $73

    ld [hl], l                                    ; $4199: $75
    ld [hl], d                                    ; $419A: $72
    ld h, l                                       ; $419B: $65
    rst $38                                       ; $419C: $FF
    ld a, c                                       ; $419D: $79
    ld l, a                                       ; $419E: $6F
    ld [hl], l                                    ; $419F: $75
    daa                                           ; $41A0: $27
    halt                                          ; $41A1: $76
    ld h, l                                       ; $41A2: $65
    jr nz, jr_013_4219                            ; $41A3: $20 $74

    ld [hl], d                                    ; $41A5: $72
    ld h, c                                       ; $41A6: $61
    ld l, c                                       ; $41A7: $69
    ld l, [hl]                                    ; $41A8: $6E
    ld h, l                                       ; $41A9: $65
    ld h, h                                       ; $41AA: $64
    cp $65                                        ; $41AB: $FE $65
    ld l, [hl]                                    ; $41AD: $6E
    ld l, a                                       ; $41AE: $6F
    ld [hl], l                                    ; $41AF: $75
    ld h, a                                       ; $41B0: $67
    ld l, b                                       ; $41B1: $68
    ccf                                           ; $41B2: $3F
    cp $FD                                        ; $41B3: $FE $FD
    sbc c                                         ; $41B5: $99
    sbc e                                         ; $41B6: $9B
    ld a, b                                       ; $41B7: $78
    ld [hl], b                                    ; $41B8: $70
    sbc a                                         ; $41B9: $9F
    jr nz, jr_013_420A                            ; $41BA: $20 $4E

    ld l, a                                       ; $41BC: $6F
    rst $38                                       ; $41BD: $FF
    jr nz, jr_013_4219                            ; $41BE: $20 $59

    ld h, l                                       ; $41C0: $65
    ld [hl], e                                    ; $41C1: $73
    db $FD                                        ; $41C2: $FD
    sbc h                                         ; $41C3: $9C
    ld [bc], a                                    ; $41C4: $02
    inc de                                        ; $41C5: $13
    bit 0, c                                      ; $41C6: $CB $41
    inc de                                        ; $41C8: $13
    rrca                                          ; $41C9: $0F
    ld b, d                                       ; $41CA: $42
    sbc c                                         ; $41CB: $99
    sbc e                                         ; $41CC: $9B
    ld a, b                                       ; $41CD: $78
    ld [hl], b                                    ; $41CE: $70
    sbc a                                         ; $41CF: $9F
    ld c, l                                       ; $41D0: $4D
    ld h, c                                       ; $41D1: $61
    ld a, c                                       ; $41D2: $79
    ld h, d                                       ; $41D3: $62
    ld h, l                                       ; $41D4: $65
    jr nz, jr_013_4220                            ; $41D5: $20 $49

    jr nz, jr_013_424C                            ; $41D7: $20 $73

    ld l, b                                       ; $41D9: $68
    ld l, a                                       ; $41DA: $6F
    ld [hl], l                                    ; $41DB: $75
    ld l, h                                       ; $41DC: $6C
    ld h, h                                       ; $41DD: $64
    rst $38                                       ; $41DE: $FF
    ld [hl], h                                    ; $41DF: $74
    ld [hl], d                                    ; $41E0: $72
    ld h, c                                       ; $41E1: $61
    ld l, c                                       ; $41E2: $69
    ld l, [hl]                                    ; $41E3: $6E
    jr nz, jr_013_4259                            ; $41E4: $20 $73

    ld l, a                                       ; $41E6: $6F
    ld l, l                                       ; $41E7: $6D
    ld h, l                                       ; $41E8: $65
    jr nz, jr_013_4258                            ; $41E9: $20 $6D

    ld l, a                                       ; $41EB: $6F
    ld [hl], d                                    ; $41EC: $72
    ld h, l                                       ; $41ED: $65
    ld l, $FE                                     ; $41EE: $2E $FE
    db $FD                                        ; $41F0: $FD
    sbc e                                         ; $41F1: $9B
    ld c, b                                       ; $41F2: $48
    ld b, [hl]                                    ; $41F3: $46
    sbc a                                         ; $41F4: $9F
    ld d, a                                       ; $41F5: $57
    ld h, l                                       ; $41F6: $65
    ld l, h                                       ; $41F7: $6C
    ld l, h                                       ; $41F8: $6C
    jr nz, jr_013_4264                            ; $41F9: $20 $69

    ld l, [hl]                                    ; $41FB: $6E
    jr nz, jr_013_4272                            ; $41FC: $20 $74

    ld l, b                                       ; $41FE: $68
    ld h, c                                       ; $41FF: $61
    ld [hl], h                                    ; $4200: $74
    rst $38                                       ; $4201: $FF
    ld h, e                                       ; $4202: $63
    ld h, c                                       ; $4203: $61
    ld [hl], e                                    ; $4204: $73
    ld h, l                                       ; $4205: $65
    ld l, $2E                                     ; $4206: $2E $2E
    cp $FD                                        ; $4208: $FE $FD

jr_013_420A:
    sbc d                                         ; $420A: $9A
    ld b, l                                       ; $420B: $45

jr_013_420C:
    inc de                                        ; $420C: $13
    bit 3, h                                      ; $420D: $CB $5C
    sbc e                                         ; $420F: $9B
    ld a, b                                       ; $4210: $78
    ld [hl], b                                    ; $4211: $70
    sbc a                                         ; $4212: $9F
    ld e, c                                       ; $4213: $59
    ld h, l                                       ; $4214: $65
    ld [hl], b                                    ; $4215: $70
    ld hl, $FDFE                                  ; $4216: $21 $FE $FD

jr_013_4219:
    sbc e                                         ; $4219: $9B
    ld c, b                                       ; $421A: $48
    ld b, [hl]                                    ; $421B: $46
    sbc a                                         ; $421C: $9F
    ld d, a                                       ; $421D: $57
    ld h, l                                       ; $421E: $65
    ld l, h                                       ; $421F: $6C

jr_013_4220:
    ld l, h                                       ; $4220: $6C
    jr nz, @+$6B                                  ; $4221: $20 $69

    ld l, [hl]                                    ; $4223: $6E
    jr nz, jr_013_429A                            ; $4224: $20 $74

    ld l, b                                       ; $4226: $68
    ld h, c                                       ; $4227: $61
    ld [hl], h                                    ; $4228: $74
    rst $38                                       ; $4229: $FF
    ld h, e                                       ; $422A: $63
    ld h, c                                       ; $422B: $61
    ld [hl], e                                    ; $422C: $73
    ld h, l                                       ; $422D: $65
    ld l, $2E                                     ; $422E: $2E $2E
    cp $FD                                        ; $4230: $FE $FD
    sbc d                                         ; $4232: $9A
    ld b, l                                       ; $4233: $45
    inc de                                        ; $4234: $13
    bit 3, h                                      ; $4235: $CB $5C
    sbc e                                         ; $4237: $9B
    ld a, b                                       ; $4238: $78
    ld [hl], b                                    ; $4239: $70
    sbc a                                         ; $423A: $9F
    ld c, a                                       ; $423B: $4F
    ld l, e                                       ; $423C: $6B
    ld h, c                                       ; $423D: $61
    ld a, c                                       ; $423E: $79
    inc l                                         ; $423F: $2C
    jr nz, jr_013_42B6                            ; $4240: $20 $74

    ld h, l                                       ; $4242: $65
    ld l, h                                       ; $4243: $6C
    ld l, h                                       ; $4244: $6C
    jr nz, jr_013_42B4                            ; $4245: $20 $6D

    ld h, l                                       ; $4247: $65
    rst $38                                       ; $4248: $FF
    ld h, c                                       ; $4249: $61
    ld h, d                                       ; $424A: $62
    ld l, a                                       ; $424B: $6F

jr_013_424C:
    ld [hl], l                                    ; $424C: $75
    ld [hl], h                                    ; $424D: $74
    ld l, $2E                                     ; $424E: $2E $2E
    ld l, $FE                                     ; $4250: $2E $FE
    db $FD                                        ; $4252: $FD
    sbc c                                         ; $4253: $99
    sbc a                                         ; $4254: $9F
    jr nz, jr_013_4299                            ; $4255: $20 $42

    ld h, c                                       ; $4257: $61

jr_013_4258:
    ld [hl], e                                    ; $4258: $73

jr_013_4259:
    ld l, c                                       ; $4259: $69
    ld h, e                                       ; $425A: $63
    ld [hl], e                                    ; $425B: $73
    jr nz, @+$43                                  ; $425C: $20 $41

    ld h, e                                       ; $425E: $63
    ld [hl], h                                    ; $425F: $74
    ld l, c                                       ; $4260: $69
    ld l, a                                       ; $4261: $6F
    ld l, [hl]                                    ; $4262: $6E
    rst $38                                       ; $4263: $FF

jr_013_4264:
    jr nz, jr_013_42BA                            ; $4264: $20 $54

    ld l, c                                       ; $4266: $69
    ld [hl], b                                    ; $4267: $70
    ld [hl], e                                    ; $4268: $73
    jr nz, jr_013_428B                            ; $4269: $20 $20

    jr nz, jr_013_42B5                            ; $426B: $20 $48

    ld [hl], l                                    ; $426D: $75
    ld l, [hl]                                    ; $426E: $6E
    ld [hl], h                                    ; $426F: $74
    ld l, c                                       ; $4270: $69
    ld l, [hl]                                    ; $4271: $6E

jr_013_4272:
    ld h, a                                       ; $4272: $67
    db $FD                                        ; $4273: $FD
    sbc h                                         ; $4274: $9C
    inc b                                         ; $4275: $04
    inc de                                        ; $4276: $13
    add d                                         ; $4277: $82
    ld b, d                                       ; $4278: $42
    inc de                                        ; $4279: $13
    inc b                                         ; $427A: $04
    ld c, [hl]                                    ; $427B: $4E
    inc de                                        ; $427C: $13
    adc b                                         ; $427D: $88
    ld b, a                                       ; $427E: $47
    inc de                                        ; $427F: $13
    ld [bc], a                                    ; $4280: $02
    ld d, b                                       ; $4281: $50
    sbc c                                         ; $4282: $99
    sbc e                                         ; $4283: $9B
    ld hl, sp+$7C                                 ; $4284: $F8 $7C
    sbc a                                         ; $4286: $9F
    ld d, a                                       ; $4287: $57
    ld c, a                                       ; $4288: $4F
    ld c, a                                       ; $4289: $4F
    ld c, a                                       ; $428A: $4F

jr_013_428B:
    ld hl, $5420                                  ; $428B: $21 $20 $54
    ld c, b                                       ; $428E: $48
    ld b, c                                       ; $428F: $41
    ld d, h                                       ; $4290: $54
    daa                                           ; $4291: $27
    ld d, e                                       ; $4292: $53
    rst $38                                       ; $4293: $FF
    ld d, h                                       ; $4294: $54
    ld c, b                                       ; $4295: $48
    ld b, l                                       ; $4296: $45
    jr nz, jr_013_42EC                            ; $4297: $20 $53

jr_013_4299:
    ld d, b                                       ; $4299: $50

jr_013_429A:
    ld c, c                                       ; $429A: $49
    ld d, d                                       ; $429B: $52
    ld c, c                                       ; $429C: $49
    ld d, h                                       ; $429D: $54
    ld hl, $4FFE                                  ; $429E: $21 $FE $4F
    ld l, e                                       ; $42A1: $6B
    ld h, c                                       ; $42A2: $61
    ld a, c                                       ; $42A3: $79
    inc l                                         ; $42A4: $2C
    jr nz, jr_013_430F                            ; $42A5: $20 $68

    ld h, l                                       ; $42A7: $65
    ld [hl], d                                    ; $42A8: $72
    ld h, l                                       ; $42A9: $65
    daa                                           ; $42AA: $27
    ld [hl], e                                    ; $42AB: $73
    rst $38                                       ; $42AC: $FF
    ld [hl], h                                    ; $42AD: $74
    ld l, b                                       ; $42AE: $68
    ld h, l                                       ; $42AF: $65
    jr nz, jr_013_4314                            ; $42B0: $20 $62

    ld h, c                                       ; $42B2: $61
    ld [hl], e                                    ; $42B3: $73

jr_013_42B4:
    ld l, c                                       ; $42B4: $69

jr_013_42B5:
    ld h, e                                       ; $42B5: $63

jr_013_42B6:
    ld [hl], e                                    ; $42B6: $73
    ld l, $FE                                     ; $42B7: $2E $FE
    ld d, h                                       ; $42B9: $54

jr_013_42BA:
    ld l, b                                       ; $42BA: $68
    ld h, l                                       ; $42BB: $65
    ld [hl], d                                    ; $42BC: $72
    ld h, l                                       ; $42BD: $65
    jr nz, jr_013_4321                            ; $42BE: $20 $61

    ld [hl], d                                    ; $42C0: $72
    ld h, l                                       ; $42C1: $65
    jr nz, @+$76                                  ; $42C2: $20 $74

    ld [hl], a                                    ; $42C4: $77
    ld l, a                                       ; $42C5: $6F
    rst $38                                       ; $42C6: $FF
    ld l, e                                       ; $42C7: $6B
    ld l, c                                       ; $42C8: $69
    ld l, [hl]                                    ; $42C9: $6E
    ld h, h                                       ; $42CA: $64
    ld [hl], e                                    ; $42CB: $73
    jr nz, jr_013_433D                            ; $42CC: $20 $6F

    ld h, [hl]                                    ; $42CE: $66
    cp $62                                        ; $42CF: $FE $62
    ld h, c                                       ; $42D1: $61
    ld [hl], h                                    ; $42D2: $74
    ld [hl], h                                    ; $42D3: $74
    ld l, h                                       ; $42D4: $6C
    ld h, l                                       ; $42D5: $65
    ld [hl], e                                    ; $42D6: $73
    jr nz, jr_013_4352                            ; $42D7: $20 $79

    ld l, a                                       ; $42D9: $6F
    ld [hl], l                                    ; $42DA: $75
    rst $38                                       ; $42DB: $FF
    ld h, e                                       ; $42DC: $63
    ld h, c                                       ; $42DD: $61
    ld l, [hl]                                    ; $42DE: $6E
    jr nz, jr_013_4348                            ; $42DF: $20 $67

    ld h, l                                       ; $42E1: $65
    ld [hl], h                                    ; $42E2: $74
    jr nz, jr_013_434E                            ; $42E3: $20 $69

    ld l, [hl]                                    ; $42E5: $6E
    ld [hl], h                                    ; $42E6: $74
    ld l, a                                       ; $42E7: $6F
    ld l, $FE                                     ; $42E8: $2E $FE
    ld c, a                                       ; $42EA: $4F
    ld l, [hl]                                    ; $42EB: $6E

jr_013_42EC:
    ld h, l                                       ; $42EC: $65
    jr nz, jr_013_4358                            ; $42ED: $20 $69

    ld [hl], e                                    ; $42EF: $73
    jr nz, jr_013_4335                            ; $42F0: $20 $43

    ld [hl], d                                    ; $42F2: $72
    ld h, l                                       ; $42F3: $65
    ld h, c                                       ; $42F4: $61
    ld [hl], h                                    ; $42F5: $74
    ld [hl], l                                    ; $42F6: $75
    ld [hl], d                                    ; $42F7: $72
    ld h, l                                       ; $42F8: $65
    rst $38                                       ; $42F9: $FF
    ld h, d                                       ; $42FA: $62
    ld h, c                                       ; $42FB: $61
    ld [hl], h                                    ; $42FC: $74
    ld [hl], h                                    ; $42FD: $74
    ld l, h                                       ; $42FE: $6C
    ld h, l                                       ; $42FF: $65
    inc l                                         ; $4300: $2C
    jr nz, @+$63                                  ; $4301: $20 $61

    ld l, [hl]                                    ; $4303: $6E
    ld h, h                                       ; $4304: $64
    jr nz, jr_013_437B                            ; $4305: $20 $74

    ld l, b                                       ; $4307: $68
    ld h, l                                       ; $4308: $65
    cp $6F                                        ; $4309: $FE $6F
    ld [hl], h                                    ; $430B: $74
    ld l, b                                       ; $430C: $68
    ld h, l                                       ; $430D: $65
    ld [hl], d                                    ; $430E: $72

jr_013_430F:
    jr nz, jr_013_437A                            ; $430F: $20 $69

    ld [hl], e                                    ; $4311: $73
    jr nz, jr_013_4361                            ; $4312: $20 $4D

jr_013_4314:
    ld h, c                                       ; $4314: $61
    ld h, a                                       ; $4315: $67
    ld l, c                                       ; $4316: $69
    rst $38                                       ; $4317: $FF
    ld h, d                                       ; $4318: $62
    ld h, c                                       ; $4319: $61
    ld [hl], h                                    ; $431A: $74
    ld [hl], h                                    ; $431B: $74
    ld l, h                                       ; $431C: $6C
    ld h, l                                       ; $431D: $65
    ld l, $FE                                     ; $431E: $2E $FE
    ld b, e                                       ; $4320: $43

jr_013_4321:
    ld [hl], d                                    ; $4321: $72
    ld h, l                                       ; $4322: $65
    ld h, c                                       ; $4323: $61
    ld [hl], h                                    ; $4324: $74
    ld [hl], l                                    ; $4325: $75
    ld [hl], d                                    ; $4326: $72
    ld h, l                                       ; $4327: $65
    jr nz, jr_013_438C                            ; $4328: $20 $62

    ld h, c                                       ; $432A: $61
    ld [hl], h                                    ; $432B: $74
    ld [hl], h                                    ; $432C: $74
    ld l, h                                       ; $432D: $6C
    ld h, l                                       ; $432E: $65
    rst $38                                       ; $432F: $FF
    ld l, c                                       ; $4330: $69
    ld [hl], e                                    ; $4331: $73
    jr nz, jr_013_43AB                            ; $4332: $20 $77

    ld l, b                                       ; $4334: $68

jr_013_4335:
    ld h, l                                       ; $4335: $65
    ld l, [hl]                                    ; $4336: $6E
    jr nz, jr_013_43B2                            ; $4337: $20 $79

    ld l, a                                       ; $4339: $6F
    ld [hl], l                                    ; $433A: $75
    daa                                           ; $433B: $27
    ld [hl], d                                    ; $433C: $72

jr_013_433D:
    ld h, l                                       ; $433D: $65
    cp $6A                                        ; $433E: $FE $6A
    ld [hl], l                                    ; $4340: $75
    ld [hl], e                                    ; $4341: $73
    ld [hl], h                                    ; $4342: $74
    jr nz, jr_013_43AB                            ; $4343: $20 $66

    ld l, c                                       ; $4345: $69
    ld h, a                                       ; $4346: $67
    ld l, b                                       ; $4347: $68

jr_013_4348:
    ld [hl], h                                    ; $4348: $74
    ld l, c                                       ; $4349: $69
    ld l, [hl]                                    ; $434A: $6E
    ld h, a                                       ; $434B: $67
    rst $38                                       ; $434C: $FF
    ld b, h                                       ; $434D: $44

jr_013_434E:
    ld [hl], d                                    ; $434E: $72
    ld h, l                                       ; $434F: $65
    ld h, c                                       ; $4350: $61
    ld l, l                                       ; $4351: $6D

jr_013_4352:
    jr nz, @+$45                                  ; $4352: $20 $43

    ld [hl], d                                    ; $4354: $72
    ld h, l                                       ; $4355: $65
    ld h, c                                       ; $4356: $61
    ld [hl], h                                    ; $4357: $74

jr_013_4358:
    ld [hl], l                                    ; $4358: $75
    ld [hl], d                                    ; $4359: $72
    ld h, l                                       ; $435A: $65
    ld [hl], e                                    ; $435B: $73
    cp $73                                        ; $435C: $FE $73
    ld l, a                                       ; $435E: $6F
    jr nz, jr_013_43DA                            ; $435F: $20 $79

jr_013_4361:
    ld l, a                                       ; $4361: $6F
    ld [hl], l                                    ; $4362: $75
    jr nz, jr_013_43C8                            ; $4363: $20 $63

    ld h, c                                       ; $4365: $61
    ld l, [hl]                                    ; $4366: $6E
    jr nz, jr_013_43D7                            ; $4367: $20 $6E

    ld h, c                                       ; $4369: $61
    ld h, d                                       ; $436A: $62
    rst $38                                       ; $436B: $FF
    daa                                           ; $436C: $27
    ld h, l                                       ; $436D: $65
    ld l, l                                       ; $436E: $6D
    ld hl, $4D20                                  ; $436F: $21 $20 $4D
    ld h, c                                       ; $4372: $61
    ld h, a                                       ; $4373: $67
    ld l, c                                       ; $4374: $69
    cp $62                                        ; $4375: $FE $62
    ld h, c                                       ; $4377: $61
    ld [hl], h                                    ; $4378: $74
    ld [hl], h                                    ; $4379: $74

jr_013_437A:
    ld l, h                                       ; $437A: $6C

jr_013_437B:
    ld h, l                                       ; $437B: $65
    jr nz, jr_013_43E7                            ; $437C: $20 $69

    ld [hl], e                                    ; $437E: $73
    jr nz, jr_013_43E2                            ; $437F: $20 $61

    rst $38                                       ; $4381: $FF
    ld h, h                                       ; $4382: $64
    ld [hl], l                                    ; $4383: $75
    ld h, l                                       ; $4384: $65
    ld l, h                                       ; $4385: $6C
    jr nz, jr_013_43EA                            ; $4386: $20 $62

    ld h, l                                       ; $4388: $65
    ld [hl], h                                    ; $4389: $74
    ld [hl], a                                    ; $438A: $77
    ld h, l                                       ; $438B: $65

jr_013_438C:
    ld h, l                                       ; $438C: $65
    ld l, [hl]                                    ; $438D: $6E
    cp $79                                        ; $438E: $FE $79
    ld l, a                                       ; $4390: $6F
    ld [hl], l                                    ; $4391: $75
    jr nz, jr_013_43F5                            ; $4392: $20 $61

    ld l, [hl]                                    ; $4394: $6E
    ld h, h                                       ; $4395: $64
    jr nz, jr_013_43F9                            ; $4396: $20 $61

    ld l, [hl]                                    ; $4398: $6E
    ld l, a                                       ; $4399: $6F
    ld [hl], h                                    ; $439A: $74
    ld l, b                                       ; $439B: $68
    ld h, l                                       ; $439C: $65
    ld [hl], d                                    ; $439D: $72
    cp $4D                                        ; $439E: $FE $4D
    ld h, c                                       ; $43A0: $61
    ld h, a                                       ; $43A1: $67
    ld l, c                                       ; $43A2: $69
    ld hl, $41FE                                  ; $43A3: $21 $FE $41
    ld l, h                                       ; $43A6: $6C
    ld l, h                                       ; $43A7: $6C
    jr nz, jr_013_440C                            ; $43A8: $20 $62

    ld h, c                                       ; $43AA: $61

jr_013_43AB:
    ld [hl], h                                    ; $43AB: $74
    ld [hl], h                                    ; $43AC: $74
    ld l, h                                       ; $43AD: $6C
    ld h, l                                       ; $43AE: $65
    ld [hl], e                                    ; $43AF: $73
    rst $38                                       ; $43B0: $FF
    ld l, b                                       ; $43B1: $68

jr_013_43B2:
    ld h, c                                       ; $43B2: $61
    ld [hl], b                                    ; $43B3: $70
    ld [hl], b                                    ; $43B4: $70
    ld h, l                                       ; $43B5: $65
    ld l, [hl]                                    ; $43B6: $6E
    jr nz, @+$76                                  ; $43B7: $20 $74

    ld [hl], l                                    ; $43B9: $75
    ld [hl], d                                    ; $43BA: $72
    ld l, [hl]                                    ; $43BB: $6E
    cp $62                                        ; $43BC: $FE $62
    ld a, c                                       ; $43BE: $79
    jr nz, jr_013_4435                            ; $43BF: $20 $74

    ld [hl], l                                    ; $43C1: $75
    ld [hl], d                                    ; $43C2: $72
    ld l, [hl]                                    ; $43C3: $6E
    inc l                                         ; $43C4: $2C
    jr nz, jr_013_4428                            ; $43C5: $20 $61

    ld l, [hl]                                    ; $43C7: $6E

jr_013_43C8:
    ld h, h                                       ; $43C8: $64
    rst $38                                       ; $43C9: $FF
    ld a, c                                       ; $43CA: $79
    ld l, a                                       ; $43CB: $6F
    ld [hl], l                                    ; $43CC: $75
    jr nz, @+$69                                  ; $43CD: $20 $67

    ld h, l                                       ; $43CF: $65
    ld [hl], h                                    ; $43D0: $74
    jr nz, jr_013_4422                            ; $43D1: $20 $4F

    ld c, [hl]                                    ; $43D3: $4E
    ld b, l                                       ; $43D4: $45
    jr nz, @+$2F                                  ; $43D5: $20 $2D

jr_013_43D7:
    jr nz, jr_013_43D7                            ; $43D7: $20 $FE

    ld [hl], h                                    ; $43D9: $74

jr_013_43DA:
    ld l, b                                       ; $43DA: $68
    ld h, c                                       ; $43DB: $61
    ld [hl], h                                    ; $43DC: $74
    daa                                           ; $43DD: $27
    ld [hl], e                                    ; $43DE: $73
    jr nz, jr_013_4453                            ; $43DF: $20 $72

    ld l, c                                       ; $43E1: $69

jr_013_43E2:
    ld h, a                                       ; $43E2: $67
    ld l, b                                       ; $43E3: $68
    ld [hl], h                                    ; $43E4: $74
    inc l                                         ; $43E5: $2C
    rst $38                                       ; $43E6: $FF

jr_013_43E7:
    ld l, d                                       ; $43E7: $6A
    ld [hl], l                                    ; $43E8: $75
    ld [hl], e                                    ; $43E9: $73

jr_013_43EA:
    ld [hl], h                                    ; $43EA: $74
    jr nz, jr_013_443C                            ; $43EB: $20 $4F

    ld c, [hl]                                    ; $43ED: $4E
    ld b, l                                       ; $43EE: $45
    jr nz, jr_013_441E                            ; $43EF: $20 $2D

jr_013_43F1:
    jr nz, jr_013_43F1                            ; $43F1: $20 $FE

    ld h, c                                       ; $43F3: $61
    ld h, e                                       ; $43F4: $63

jr_013_43F5:
    ld [hl], h                                    ; $43F5: $74
    ld l, c                                       ; $43F6: $69
    ld l, a                                       ; $43F7: $6F
    ld l, [hl]                                    ; $43F8: $6E

jr_013_43F9:
    jr nz, jr_013_4460                            ; $43F9: $20 $65

    ld h, c                                       ; $43FB: $61
    ld h, e                                       ; $43FC: $63
    ld l, b                                       ; $43FD: $68
    rst $38                                       ; $43FE: $FF
    ld [hl], h                                    ; $43FF: $74
    ld [hl], l                                    ; $4400: $75
    ld [hl], d                                    ; $4401: $72
    ld l, [hl]                                    ; $4402: $6E
    ld l, $20                                     ; $4403: $2E $20
    ld b, l                                       ; $4405: $45
    ld h, c                                       ; $4406: $61
    ld h, e                                       ; $4407: $63
    ld l, b                                       ; $4408: $68
    cp $61                                        ; $4409: $FE $61
    ld h, e                                       ; $440B: $63

jr_013_440C:
    ld [hl], h                                    ; $440C: $74
    ld l, c                                       ; $440D: $69
    ld l, a                                       ; $440E: $6F
    ld l, [hl]                                    ; $440F: $6E
    jr nz, jr_013_4486                            ; $4410: $20 $74

    ld h, c                                       ; $4412: $61
    ld l, e                                       ; $4413: $6B
    ld h, l                                       ; $4414: $65
    ld [hl], e                                    ; $4415: $73
    rst $38                                       ; $4416: $FF
    ld [hl], e                                    ; $4417: $73
    ld l, a                                       ; $4418: $6F
    ld l, l                                       ; $4419: $6D
    ld h, l                                       ; $441A: $65
    jr nz, jr_013_4491                            ; $441B: $20 $74

    ld l, c                                       ; $441D: $69

jr_013_441E:
    ld l, l                                       ; $441E: $6D
    ld h, l                                       ; $441F: $65
    jr nz, jr_013_4496                            ; $4420: $20 $74

jr_013_4422:
    ld l, a                                       ; $4422: $6F
    cp $70                                        ; $4423: $FE $70
    ld h, l                                       ; $4425: $65
    ld [hl], d                                    ; $4426: $72
    ld h, [hl]                                    ; $4427: $66

jr_013_4428:
    ld l, a                                       ; $4428: $6F
    ld [hl], d                                    ; $4429: $72
    ld l, l                                       ; $442A: $6D
    inc l                                         ; $442B: $2C
    jr nz, @+$75                                  ; $442C: $20 $73

    ld l, a                                       ; $442E: $6F
    rst $38                                       ; $442F: $FF
    ld [hl], a                                    ; $4430: $77
    ld h, c                                       ; $4431: $61
    ld [hl], h                                    ; $4432: $74
    ld h, e                                       ; $4433: $63
    ld l, b                                       ; $4434: $68

jr_013_4435:
    jr nz, jr_013_44A0                            ; $4435: $20 $69

    ld [hl], h                                    ; $4437: $74
    ld hl, $FDFE                                  ; $4438: $21 $FE $FD
    sbc e                                         ; $443B: $9B

jr_013_443C:
    ld a, b                                       ; $443C: $78
    ld [hl], b                                    ; $443D: $70
    sbc a                                         ; $443E: $9F
    ld d, a                                       ; $443F: $57
    ld l, b                                       ; $4440: $68
    ld h, c                                       ; $4441: $61
    ld [hl], h                                    ; $4442: $74
    jr nz, jr_013_44A8                            ; $4443: $20 $63

    ld h, c                                       ; $4445: $61
    ld l, [hl]                                    ; $4446: $6E
    jr nz, jr_013_4492                            ; $4447: $20 $49

    rst $38                                       ; $4449: $FF
    ld h, h                                       ; $444A: $64
    ld l, a                                       ; $444B: $6F
    ccf                                           ; $444C: $3F
    cp $FD                                        ; $444D: $FE $FD
    sbc e                                         ; $444F: $9B
    ld hl, sp+$7C                                 ; $4450: $F8 $7C
    sbc a                                         ; $4452: $9F

jr_013_4453:
    ld c, c                                       ; $4453: $49
    daa                                           ; $4454: $27
    ld l, h                                       ; $4455: $6C
    ld l, h                                       ; $4456: $6C
    jr nz, jr_013_44CC                            ; $4457: $20 $73

    ld [hl], b                                    ; $4459: $70
    ld h, c                                       ; $445A: $61
    ld [hl], d                                    ; $445B: $72
    ld h, l                                       ; $445C: $65
    jr nz, jr_013_44D8                            ; $445D: $20 $79

    ld l, a                                       ; $445F: $6F

jr_013_4460:
    ld [hl], l                                    ; $4460: $75
    rst $38                                       ; $4461: $FF
    ld [hl], h                                    ; $4462: $74
    ld l, b                                       ; $4463: $68
    ld h, l                                       ; $4464: $65
    jr nz, jr_013_44CB                            ; $4465: $20 $64

    ld h, l                                       ; $4467: $65
    ld [hl], h                                    ; $4468: $74
    ld h, c                                       ; $4469: $61
    ld l, c                                       ; $446A: $69
    ld l, h                                       ; $446B: $6C
    ld [hl], e                                    ; $446C: $73
    cp $66                                        ; $446D: $FE $66
    ld l, a                                       ; $446F: $6F
    ld [hl], d                                    ; $4470: $72
    jr nz, jr_013_44E1                            ; $4471: $20 $6E

    ld l, a                                       ; $4473: $6F
    ld [hl], a                                    ; $4474: $77
    inc l                                         ; $4475: $2C
    jr nz, jr_013_44DA                            ; $4476: $20 $62

    ld [hl], l                                    ; $4478: $75
    ld [hl], h                                    ; $4479: $74
    rst $38                                       ; $447A: $FF
    ld [hl], h                                    ; $447B: $74
    ld l, b                                       ; $447C: $68
    ld h, l                                       ; $447D: $65
    jr nz, jr_013_44E1                            ; $447E: $20 $61

    ld h, e                                       ; $4480: $63
    ld [hl], h                                    ; $4481: $74
    ld l, c                                       ; $4482: $69
    ld l, a                                       ; $4483: $6F
    ld l, [hl]                                    ; $4484: $6E
    ld [hl], e                                    ; $4485: $73

jr_013_4486:
    cp $61                                        ; $4486: $FE $61
    ld [hl], d                                    ; $4488: $72
    ld h, l                                       ; $4489: $65
    jr nz, jr_013_44D2                            ; $448A: $20 $46

    ld c, a                                       ; $448C: $4F
    ld b, e                                       ; $448D: $43
    ld d, l                                       ; $448E: $55
    ld d, e                                       ; $448F: $53
    inc l                                         ; $4490: $2C

jr_013_4491:
    rst $38                                       ; $4491: $FF

jr_013_4492:
    ld d, e                                       ; $4492: $53
    ld d, l                                       ; $4493: $55
    ld c, l                                       ; $4494: $4D
    ld c, l                                       ; $4495: $4D

jr_013_4496:
    ld c, a                                       ; $4496: $4F
    ld c, [hl]                                    ; $4497: $4E
    inc l                                         ; $4498: $2C
    jr nz, jr_013_44EE                            ; $4499: $20 $53

    ld d, b                                       ; $449B: $50
    ld b, l                                       ; $449C: $45
    ld c, h                                       ; $449D: $4C
    ld c, h                                       ; $449E: $4C
    inc l                                         ; $449F: $2C

jr_013_44A0:
    cp $49                                        ; $44A0: $FE $49
    ld d, h                                       ; $44A2: $54
    ld b, l                                       ; $44A3: $45
    ld c, l                                       ; $44A4: $4D
    inc l                                         ; $44A5: $2C
    jr nz, jr_013_4509                            ; $44A6: $20 $61

jr_013_44A8:
    ld l, [hl]                                    ; $44A8: $6E
    ld h, h                                       ; $44A9: $64
    jr nz, jr_013_44FE                            ; $44AA: $20 $52

    ld d, l                                       ; $44AC: $55
    ld c, [hl]                                    ; $44AD: $4E
    ld hl, $FDFE                                  ; $44AE: $21 $FE $FD
    sbc e                                         ; $44B1: $9B
    ld a, b                                       ; $44B2: $78
    ld [hl], b                                    ; $44B3: $70
    sbc a                                         ; $44B4: $9F
    ld c, b                                       ; $44B5: $48
    ld l, a                                       ; $44B6: $6F
    ld [hl], a                                    ; $44B7: $77
    jr nz, jr_013_451D                            ; $44B8: $20 $63

    ld h, c                                       ; $44BA: $61
    ld l, [hl]                                    ; $44BB: $6E
    jr nz, jr_013_4507                            ; $44BC: $20 $49

    jr nz, jr_013_452B                            ; $44BE: $20 $6B

    ld h, l                                       ; $44C0: $65
    ld h, l                                       ; $44C1: $65
    ld [hl], b                                    ; $44C2: $70
    rst $38                                       ; $44C3: $FF
    ld h, [hl]                                    ; $44C4: $66
    ld [hl], d                                    ; $44C5: $72
    ld l, a                                       ; $44C6: $6F
    ld l, l                                       ; $44C7: $6D
    jr nz, jr_013_4531                            ; $44C8: $20 $67

    ld h, l                                       ; $44CA: $65

jr_013_44CB:
    ld [hl], h                                    ; $44CB: $74

jr_013_44CC:
    ld [hl], h                                    ; $44CC: $74
    ld l, c                                       ; $44CD: $69
    ld l, [hl]                                    ; $44CE: $6E
    ld h, a                                       ; $44CF: $67
    cp $68                                        ; $44D0: $FE $68

jr_013_44D2:
    ld l, c                                       ; $44D2: $69
    ld [hl], h                                    ; $44D3: $74
    ccf                                           ; $44D4: $3F
    cp $FD                                        ; $44D5: $FE $FD
    sbc e                                         ; $44D7: $9B

jr_013_44D8:
    ld hl, sp+$7C                                 ; $44D8: $F8 $7C

jr_013_44DA:
    sbc a                                         ; $44DA: $9F
    ld b, d                                       ; $44DB: $42
    ld h, c                                       ; $44DC: $61
    ld [hl], e                                    ; $44DD: $73
    ld l, c                                       ; $44DE: $69
    ld h, e                                       ; $44DF: $63
    ld h, c                                       ; $44E0: $61

jr_013_44E1:
    ld l, h                                       ; $44E1: $6C
    ld l, h                                       ; $44E2: $6C
    ld a, c                                       ; $44E3: $79
    inc l                                         ; $44E4: $2C
    jr nz, jr_013_455B                            ; $44E5: $20 $74

    ld l, b                                       ; $44E7: $68
    ld h, l                                       ; $44E8: $65
    rst $38                                       ; $44E9: $FF
    ld h, e                                       ; $44EA: $63
    ld [hl], d                                    ; $44EB: $72
    ld h, l                                       ; $44EC: $65
    ld h, c                                       ; $44ED: $61

jr_013_44EE:
    ld [hl], h                                    ; $44EE: $74
    ld [hl], l                                    ; $44EF: $75
    ld [hl], d                                    ; $44F0: $72
    ld h, l                                       ; $44F1: $65
    ld [hl], e                                    ; $44F2: $73
    jr nz, @+$7B                                  ; $44F3: $20 $79

    ld l, a                                       ; $44F5: $6F
    ld [hl], l                                    ; $44F6: $75
    cp $73                                        ; $44F7: $FE $73
    ld [hl], l                                    ; $44F9: $75
    ld l, l                                       ; $44FA: $6D
    ld l, l                                       ; $44FB: $6D
    ld l, a                                       ; $44FC: $6F
    ld l, [hl]                                    ; $44FD: $6E

jr_013_44FE:
    jr nz, @+$76                                  ; $44FE: $20 $74

    ld h, c                                       ; $4500: $61
    ld l, e                                       ; $4501: $6B
    ld h, l                                       ; $4502: $65
    jr nz, jr_013_4579                            ; $4503: $20 $74

    ld l, b                                       ; $4505: $68
    ld h, l                                       ; $4506: $65

jr_013_4507:
    rst $38                                       ; $4507: $FF
    ld h, h                                       ; $4508: $64

jr_013_4509:
    ld h, c                                       ; $4509: $61
    ld l, l                                       ; $450A: $6D
    ld h, c                                       ; $450B: $61
    ld h, a                                       ; $450C: $67
    ld h, l                                       ; $450D: $65
    jr nz, jr_013_4576                            ; $450E: $20 $66

    ld l, a                                       ; $4510: $6F
    ld [hl], d                                    ; $4511: $72
    jr nz, jr_013_458D                            ; $4512: $20 $79

    ld l, a                                       ; $4514: $6F
    ld [hl], l                                    ; $4515: $75
    ld l, $FE                                     ; $4516: $2E $FE
    ld d, h                                       ; $4518: $54
    ld l, b                                       ; $4519: $68
    ld h, l                                       ; $451A: $65
    jr nz, jr_013_458C                            ; $451B: $20 $6F

jr_013_451D:
    ld l, [hl]                                    ; $451D: $6E
    ld l, h                                       ; $451E: $6C
    ld a, c                                       ; $451F: $79
    jr nz, jr_013_4596                            ; $4520: $20 $74

    ld l, c                                       ; $4522: $69
    ld l, l                                       ; $4523: $6D
    ld h, l                                       ; $4524: $65
    rst $38                                       ; $4525: $FF
    ld a, c                                       ; $4526: $79
    ld l, a                                       ; $4527: $6F
    ld [hl], l                                    ; $4528: $75
    jr nz, jr_013_45A4                            ; $4529: $20 $79

jr_013_452B:
    ld l, a                                       ; $452B: $6F
    ld [hl], l                                    ; $452C: $75
    ld [hl], d                                    ; $452D: $72
    ld [hl], e                                    ; $452E: $73
    ld h, l                                       ; $452F: $65
    ld l, h                                       ; $4530: $6C

jr_013_4531:
    ld h, [hl]                                    ; $4531: $66
    cp $74                                        ; $4532: $FE $74
    ld h, c                                       ; $4534: $61
    ld l, e                                       ; $4535: $6B
    ld h, l                                       ; $4536: $65
    jr nz, @+$66                                  ; $4537: $20 $64

    ld h, c                                       ; $4539: $61
    ld l, l                                       ; $453A: $6D
    ld h, c                                       ; $453B: $61
    ld h, a                                       ; $453C: $67
    ld h, l                                       ; $453D: $65
    rst $38                                       ; $453E: $FF
    ld l, c                                       ; $453F: $69
    ld [hl], e                                    ; $4540: $73
    jr nz, jr_013_45BA                            ; $4541: $20 $77

    ld l, b                                       ; $4543: $68
    ld h, l                                       ; $4544: $65
    ld l, [hl]                                    ; $4545: $6E
    jr nz, jr_013_45C1                            ; $4546: $20 $79

    ld l, a                                       ; $4548: $6F
    ld [hl], l                                    ; $4549: $75
    cp $64                                        ; $454A: $FE $64
    ld l, a                                       ; $454C: $6F
    ld l, [hl]                                    ; $454D: $6E
    daa                                           ; $454E: $27
    ld [hl], h                                    ; $454F: $74
    jr nz, jr_013_45BA                            ; $4550: $20 $68

    ld h, c                                       ; $4552: $61
    halt                                          ; $4553: $76
    ld h, l                                       ; $4554: $65
    jr nz, jr_013_45B8                            ; $4555: $20 $61

    ld l, [hl]                                    ; $4557: $6E
    ld a, c                                       ; $4558: $79
    rst $38                                       ; $4559: $FF
    ld h, e                                       ; $455A: $63

jr_013_455B:
    ld [hl], d                                    ; $455B: $72
    ld h, l                                       ; $455C: $65
    ld h, c                                       ; $455D: $61
    ld [hl], h                                    ; $455E: $74
    ld [hl], l                                    ; $455F: $75
    ld [hl], d                                    ; $4560: $72
    ld h, l                                       ; $4561: $65
    ld [hl], e                                    ; $4562: $73
    cp $73                                        ; $4563: $FE $73
    ld [hl], l                                    ; $4565: $75
    ld l, l                                       ; $4566: $6D
    ld l, l                                       ; $4567: $6D
    ld l, a                                       ; $4568: $6F
    ld l, [hl]                                    ; $4569: $6E
    ld h, l                                       ; $456A: $65
    ld h, h                                       ; $456B: $64
    inc l                                         ; $456C: $2C
    jr nz, jr_013_45DE                            ; $456D: $20 $6F

    ld [hl], d                                    ; $456F: $72
    rst $38                                       ; $4570: $FF
    ld l, c                                       ; $4571: $69
    ld h, [hl]                                    ; $4572: $66
    jr nz, jr_013_45E9                            ; $4573: $20 $74

Call_013_4575:
    ld l, b                                       ; $4575: $68

jr_013_4576:
    ld h, l                                       ; $4576: $65
    jr nz, jr_013_45E8                            ; $4577: $20 $6F

jr_013_4579:
    ld [hl], b                                    ; $4579: $70
    ld [hl], b                                    ; $457A: $70
    ld l, a                                       ; $457B: $6F
    ld l, [hl]                                    ; $457C: $6E
    ld h, l                                       ; $457D: $65
    ld l, [hl]                                    ; $457E: $6E
    ld [hl], h                                    ; $457F: $74
    cp $68                                        ; $4580: $FE $68
    ld h, c                                       ; $4582: $61
    ld [hl], e                                    ; $4583: $73
    jr nz, jr_013_45E7                            ; $4584: $20 $61

    jr nz, jr_013_45FB                            ; $4586: $20 $73

    ld [hl], b                                    ; $4588: $70
    ld h, l                                       ; $4589: $65
    ld h, e                                       ; $458A: $63
    ld l, c                                       ; $458B: $69

jr_013_458C:
    ld h, c                                       ; $458C: $61

jr_013_458D:
    ld l, h                                       ; $458D: $6C
    rst $38                                       ; $458E: $FF
    ld h, c                                       ; $458F: $61
    ld h, d                                       ; $4590: $62
    ld l, c                                       ; $4591: $69
    ld l, h                                       ; $4592: $6C
    ld l, c                                       ; $4593: $69
    ld [hl], h                                    ; $4594: $74
    ld a, c                                       ; $4595: $79

jr_013_4596:
    jr nz, jr_013_460C                            ; $4596: $20 $74

    ld l, a                                       ; $4598: $6F
    jr nz, jr_013_45FF                            ; $4599: $20 $64

    ld l, a                                       ; $459B: $6F
    cp $74                                        ; $459C: $FE $74
    ld l, b                                       ; $459E: $68
    ld h, c                                       ; $459F: $61
    ld [hl], h                                    ; $45A0: $74
    ld l, $FE                                     ; $45A1: $2E $FE
    db $FD                                        ; $45A3: $FD

jr_013_45A4:
    sbc e                                         ; $45A4: $9B
    ld a, b                                       ; $45A5: $78
    ld [hl], b                                    ; $45A6: $70
    sbc a                                         ; $45A7: $9F
    ld b, c                                       ; $45A8: $41
    ld l, [hl]                                    ; $45A9: $6E
    ld h, h                                       ; $45AA: $64
    jr nz, jr_013_4615                            ; $45AB: $20 $68

    ld l, a                                       ; $45AD: $6F
    ld [hl], a                                    ; $45AE: $77
    jr nz, jr_013_4615                            ; $45AF: $20 $64

    ld l, a                                       ; $45B1: $6F
    jr nz, jr_013_45FD                            ; $45B2: $20 $49

    rst $38                                       ; $45B4: $FF
    ld [hl], a                                    ; $45B5: $77
    ld l, c                                       ; $45B6: $69
    ld l, [hl]                                    ; $45B7: $6E

jr_013_45B8:
    jr nz, jr_013_462E                            ; $45B8: $20 $74

jr_013_45BA:
    ld l, b                                       ; $45BA: $68
    ld h, l                                       ; $45BB: $65
    jr nz, jr_013_4624                            ; $45BC: $20 $66

    ld l, c                                       ; $45BE: $69
    ld h, a                                       ; $45BF: $67
    ld l, b                                       ; $45C0: $68

jr_013_45C1:
    ld [hl], h                                    ; $45C1: $74
    ccf                                           ; $45C2: $3F
    cp $FD                                        ; $45C3: $FE $FD
    sbc e                                         ; $45C5: $9B
    ld hl, sp+$7C                                 ; $45C6: $F8 $7C
    sbc a                                         ; $45C8: $9F
    ld c, a                                       ; $45C9: $4F
    ld c, a                                       ; $45CA: $4F
    ld c, a                                       ; $45CB: $4F
    ld c, a                                       ; $45CC: $4F
    ld c, a                                       ; $45CD: $4F
    ld c, b                                       ; $45CE: $48
    jr nz, jr_013_462A                            ; $45CF: $20 $59

    ld b, l                                       ; $45D1: $45
    ld b, c                                       ; $45D2: $41
    ld c, b                                       ; $45D3: $48
    ld c, b                                       ; $45D4: $48
    ld c, b                                       ; $45D5: $48
    ld hl, $54FF                                  ; $45D6: $21 $FF $54
    ld c, b                                       ; $45D9: $48
    ld b, c                                       ; $45DA: $41
    ld d, h                                       ; $45DB: $54
    daa                                           ; $45DC: $27
    ld d, e                                       ; $45DD: $53

jr_013_45DE:
    jr nz, jr_013_4625                            ; $45DE: $20 $45

    ld b, c                                       ; $45E0: $41
    ld d, e                                       ; $45E1: $53
    ld e, c                                       ; $45E2: $59
    ld hl, $42FE                                  ; $45E3: $21 $FE $42
    ld h, l                                       ; $45E6: $65

jr_013_45E7:
    ld h, c                                       ; $45E7: $61

jr_013_45E8:
    ld [hl], h                                    ; $45E8: $74

jr_013_45E9:
    jr nz, jr_013_464F                            ; $45E9: $20 $64

    ld l, a                                       ; $45EB: $6F
    ld [hl], a                                    ; $45EC: $77
    ld l, [hl]                                    ; $45ED: $6E
    jr nz, jr_013_4651                            ; $45EE: $20 $61

    ld l, h                                       ; $45F0: $6C
    ld l, h                                       ; $45F1: $6C
    rst $38                                       ; $45F2: $FF
    ld [hl], h                                    ; $45F3: $74
    ld l, b                                       ; $45F4: $68
    ld l, a                                       ; $45F5: $6F
    ld [hl], e                                    ; $45F6: $73
    ld h, l                                       ; $45F7: $65
    jr nz, @+$65                                  ; $45F8: $20 $63

    ld [hl], d                                    ; $45FA: $72

jr_013_45FB:
    ld h, l                                       ; $45FB: $65
    ld h, c                                       ; $45FC: $61

jr_013_45FD:
    ld [hl], h                                    ; $45FD: $74
    ld [hl], l                                    ; $45FE: $75

jr_013_45FF:
    ld [hl], d                                    ; $45FF: $72
    ld h, l                                       ; $4600: $65
    ld [hl], e                                    ; $4601: $73
    cp $61                                        ; $4602: $FE $61
    ld l, [hl]                                    ; $4604: $6E
    ld h, h                                       ; $4605: $64
    jr nz, jr_013_4661                            ; $4606: $20 $59

    ld c, a                                       ; $4608: $4F
    ld d, l                                       ; $4609: $55
    jr nz, jr_013_4663                            ; $460A: $20 $57

jr_013_460C:
    ld c, c                                       ; $460C: $49
    ld c, [hl]                                    ; $460D: $4E
    inc l                                         ; $460E: $2C
    rst $38                                       ; $460F: $FF
    ld b, d                                       ; $4610: $42
    ld d, d                                       ; $4611: $52
    ld c, a                                       ; $4612: $4F
    ld d, h                                       ; $4613: $54
    ld c, b                                       ; $4614: $48

jr_013_4615:
    ld b, l                                       ; $4615: $45
    ld d, d                                       ; $4616: $52
    ld hl, $41FE                                  ; $4617: $21 $FE $41
    ld l, [hl]                                    ; $461A: $6E
    ld h, h                                       ; $461B: $64
    jr nz, @+$6B                                  ; $461C: $20 $69

    ld l, [hl]                                    ; $461E: $6E
    jr nz, jr_013_466E                            ; $461F: $20 $4D

    ld h, c                                       ; $4621: $61
    ld h, a                                       ; $4622: $67
    ld l, c                                       ; $4623: $69

jr_013_4624:
    rst $38                                       ; $4624: $FF

jr_013_4625:
    ld h, d                                       ; $4625: $62
    ld h, c                                       ; $4626: $61
    ld [hl], h                                    ; $4627: $74
    ld [hl], h                                    ; $4628: $74
    ld l, h                                       ; $4629: $6C

jr_013_462A:
    ld h, l                                       ; $462A: $65
    ld [hl], e                                    ; $462B: $73
    ld l, $2E                                     ; $462C: $2E $2E

jr_013_462E:
    ld l, $FE                                     ; $462E: $2E $FE
    ld [hl], h                                    ; $4630: $74
    ld l, b                                       ; $4631: $68
    ld l, c                                       ; $4632: $69
    ld [hl], e                                    ; $4633: $73
    jr nz, jr_013_469F                            ; $4634: $20 $69

    ld l, [hl]                                    ; $4636: $6E
    ld h, e                                       ; $4637: $63
    ld l, h                                       ; $4638: $6C
    ld [hl], l                                    ; $4639: $75
    ld h, h                                       ; $463A: $64
    ld h, l                                       ; $463B: $65
    ld [hl], e                                    ; $463C: $73
    rst $38                                       ; $463D: $FF
    ld [hl], h                                    ; $463E: $74
    ld l, b                                       ; $463F: $68
    ld h, l                                       ; $4640: $65
    jr nz, @+$69                                  ; $4641: $20 $67

    ld [hl], l                                    ; $4643: $75
    ld a, c                                       ; $4644: $79
    jr nz, jr_013_46BB                            ; $4645: $20 $74

    ld l, b                                       ; $4647: $68
    ld h, c                                       ; $4648: $61
    ld [hl], h                                    ; $4649: $74
    daa                                           ; $464A: $27
    ld [hl], e                                    ; $464B: $73
    cp $63                                        ; $464C: $FE $63
    ld l, a                                       ; $464E: $6F

jr_013_464F:
    ld l, [hl]                                    ; $464F: $6E
    ld [hl], h                                    ; $4650: $74

jr_013_4651:
    ld [hl], d                                    ; $4651: $72
    ld l, a                                       ; $4652: $6F
    ld l, h                                       ; $4653: $6C
    ld l, h                                       ; $4654: $6C
    ld l, c                                       ; $4655: $69
    ld l, [hl]                                    ; $4656: $6E
    ld h, a                                       ; $4657: $67
    rst $38                                       ; $4658: $FF
    ld [hl], h                                    ; $4659: $74
    ld l, b                                       ; $465A: $68
    ld h, l                                       ; $465B: $65
    jr nz, @+$65                                  ; $465C: $20 $63

    ld [hl], d                                    ; $465E: $72
    ld h, l                                       ; $465F: $65
    ld h, c                                       ; $4660: $61

jr_013_4661:
    ld [hl], h                                    ; $4661: $74
    ld [hl], l                                    ; $4662: $75

jr_013_4663:
    ld [hl], d                                    ; $4663: $72
    ld h, l                                       ; $4664: $65
    ld [hl], e                                    ; $4665: $73
    ld l, $FE                                     ; $4666: $2E $FE
    ld c, a                                       ; $4668: $4F
    ld h, [hl]                                    ; $4669: $66
    jr nz, jr_013_46CF                            ; $466A: $20 $63

    ld l, a                                       ; $466C: $6F
    ld [hl], l                                    ; $466D: $75

jr_013_466E:
    ld [hl], d                                    ; $466E: $72
    ld [hl], e                                    ; $466F: $73
    ld h, l                                       ; $4670: $65
    inc l                                         ; $4671: $2C
    jr nz, jr_013_46DD                            ; $4672: $20 $69

    ld h, [hl]                                    ; $4674: $66
    rst $38                                       ; $4675: $FF
    ld a, c                                       ; $4676: $79
    ld l, a                                       ; $4677: $6F
    ld [hl], l                                    ; $4678: $75
    jr nz, jr_013_46DC                            ; $4679: $20 $61

    ld l, [hl]                                    ; $467B: $6E
    ld h, h                                       ; $467C: $64
    jr nz, jr_013_46E0                            ; $467D: $20 $61

    ld l, h                                       ; $467F: $6C
    ld l, h                                       ; $4680: $6C
    cp $79                                        ; $4681: $FE $79
    ld l, a                                       ; $4683: $6F
    ld [hl], l                                    ; $4684: $75
    ld [hl], d                                    ; $4685: $72
    jr nz, jr_013_46EB                            ; $4686: $20 $63

    ld [hl], d                                    ; $4688: $72
    ld h, l                                       ; $4689: $65
    ld h, c                                       ; $468A: $61
    ld [hl], h                                    ; $468B: $74
    ld [hl], l                                    ; $468C: $75
    ld [hl], d                                    ; $468D: $72
    ld h, l                                       ; $468E: $65
    ld [hl], e                                    ; $468F: $73
    rst $38                                       ; $4690: $FF
    ld h, a                                       ; $4691: $67
    ld h, l                                       ; $4692: $65
    ld [hl], h                                    ; $4693: $74
    jr nz, jr_013_46F8                            ; $4694: $20 $62

    ld h, l                                       ; $4696: $65
    ld h, c                                       ; $4697: $61
    ld [hl], h                                    ; $4698: $74
    jr nz, @+$77                                  ; $4699: $20 $75

    ld [hl], b                                    ; $469B: $70
    inc l                                         ; $469C: $2C
    cp $59                                        ; $469D: $FE $59

jr_013_469F:
    ld c, a                                       ; $469F: $4F
    ld d, l                                       ; $46A0: $55
    jr nz, jr_013_46EF                            ; $46A1: $20 $4C

    ld c, a                                       ; $46A3: $4F
    ld d, e                                       ; $46A4: $53
    ld b, l                                       ; $46A5: $45
    ld hl, $2EFE                                  ; $46A6: $21 $FE $2E
    ld l, $2E                                     ; $46A9: $2E $2E
    ld c, b                                       ; $46AB: $48
    ld c, a                                       ; $46AC: $4F
    ld d, a                                       ; $46AD: $57
    ld b, l                                       ; $46AE: $45
    ld d, [hl]                                    ; $46AF: $56
    ld b, l                                       ; $46B0: $45
    ld d, d                                       ; $46B1: $52
    ld hl, $2121                                  ; $46B2: $21 $21 $21
    rst $38                                       ; $46B5: $FF
    ld b, c                                       ; $46B6: $41
    ld [hl], e                                    ; $46B7: $73
    jr nz, jr_013_4726                            ; $46B8: $20 $6C

    ld l, a                                       ; $46BA: $6F

jr_013_46BB:
    ld l, [hl]                                    ; $46BB: $6E
    ld h, a                                       ; $46BC: $67
    jr nz, jr_013_4720                            ; $46BD: $20 $61

    ld [hl], e                                    ; $46BF: $73
    cp $79                                        ; $46C0: $FE $79
    ld l, a                                       ; $46C2: $6F
    ld [hl], l                                    ; $46C3: $75
    jr nz, jr_013_4739                            ; $46C4: $20 $73

    ld [hl], h                                    ; $46C6: $74
    ld l, c                                       ; $46C7: $69
    ld l, h                                       ; $46C8: $6C
    ld l, h                                       ; $46C9: $6C
    jr nz, jr_013_4734                            ; $46CA: $20 $68

    ld h, c                                       ; $46CC: $61
    halt                                          ; $46CD: $76
    ld h, l                                       ; $46CE: $65

jr_013_46CF:
    rst $38                                       ; $46CF: $FF
    ld h, c                                       ; $46D0: $61
    jr nz, @+$65                                  ; $46D1: $20 $63

    ld [hl], d                                    ; $46D3: $72
    ld h, l                                       ; $46D4: $65
    ld h, c                                       ; $46D5: $61
    ld [hl], h                                    ; $46D6: $74
    ld [hl], l                                    ; $46D7: $75
    ld [hl], d                                    ; $46D8: $72
    ld h, l                                       ; $46D9: $65
    cp $73                                        ; $46DA: $FE $73

jr_013_46DC:
    ld [hl], l                                    ; $46DC: $75

jr_013_46DD:
    ld l, l                                       ; $46DD: $6D
    ld l, l                                       ; $46DE: $6D
    ld l, a                                       ; $46DF: $6F

jr_013_46E0:
    ld l, [hl]                                    ; $46E0: $6E
    ld h, l                                       ; $46E1: $65
    ld h, h                                       ; $46E2: $64
    inc l                                         ; $46E3: $2C
    jr nz, jr_013_475F                            ; $46E4: $20 $79

    ld l, a                                       ; $46E6: $6F
    ld [hl], l                                    ; $46E7: $75
    rst $38                                       ; $46E8: $FF
    ld h, e                                       ; $46E9: $63
    ld h, c                                       ; $46EA: $61

jr_013_46EB:
    ld l, [hl]                                    ; $46EB: $6E
    jr nz, jr_013_4750                            ; $46EC: $20 $62

    ld h, l                                       ; $46EE: $65

jr_013_46EF:
    jr nz, jr_013_475A                            ; $46EF: $20 $69

    ld l, [hl]                                    ; $46F1: $6E
    jr nz, @+$76                                  ; $46F2: $20 $74

    ld l, b                                       ; $46F4: $68
    ld h, l                                       ; $46F5: $65
    cp $77                                        ; $46F6: $FE $77

jr_013_46F8:
    ld l, a                                       ; $46F8: $6F
    ld [hl], d                                    ; $46F9: $72
    ld [hl], e                                    ; $46FA: $73
    ld [hl], h                                    ; $46FB: $74
    jr nz, jr_013_4771                            ; $46FC: $20 $73

    ld l, b                                       ; $46FE: $68
    ld h, c                                       ; $46FF: $61
    ld [hl], b                                    ; $4700: $70
    ld h, l                                       ; $4701: $65
    rst $38                                       ; $4702: $FF
    ld [hl], b                                    ; $4703: $70
    ld l, a                                       ; $4704: $6F
    ld [hl], e                                    ; $4705: $73
    ld [hl], e                                    ; $4706: $73
    ld l, c                                       ; $4707: $69
    ld h, d                                       ; $4708: $62
    ld l, h                                       ; $4709: $6C
    ld h, l                                       ; $470A: $65
    jr nz, jr_013_476E                            ; $470B: $20 $61

    ld l, [hl]                                    ; $470D: $6E
    ld h, h                                       ; $470E: $64
    cp $73                                        ; $470F: $FE $73
    ld [hl], h                                    ; $4711: $74
    ld l, c                                       ; $4712: $69
    ld l, h                                       ; $4713: $6C
    ld l, h                                       ; $4714: $6C
    jr nz, jr_013_478E                            ; $4715: $20 $77

    ld l, c                                       ; $4717: $69
    ld l, [hl]                                    ; $4718: $6E
    ld hl, $5320                                  ; $4719: $21 $20 $53
    ld l, a                                       ; $471C: $6F
    rst $38                                       ; $471D: $FF
    ld h, h                                       ; $471E: $64
    ld l, a                                       ; $471F: $6F

jr_013_4720:
    ld l, [hl]                                    ; $4720: $6E
    daa                                           ; $4721: $27
    ld [hl], h                                    ; $4722: $74
    jr nz, jr_013_478C                            ; $4723: $20 $67

    ld l, c                                       ; $4725: $69

jr_013_4726:
    halt                                          ; $4726: $76
    ld h, l                                       ; $4727: $65
    jr nz, @+$77                                  ; $4728: $20 $75

    ld [hl], b                                    ; $472A: $70
    ld hl, $41FE                                  ; $472B: $21 $FE $41
    ld l, [hl]                                    ; $472E: $6E
    ld h, h                                       ; $472F: $64
    jr nz, jr_013_47A9                            ; $4730: $20 $77

    ld l, b                                       ; $4732: $68
    ld h, l                                       ; $4733: $65

jr_013_4734:
    ld l, [hl]                                    ; $4734: $6E
    jr nz, jr_013_47AB                            ; $4735: $20 $74

    ld l, b                                       ; $4737: $68
    ld h, l                                       ; $4738: $65

jr_013_4739:
    rst $38                                       ; $4739: $FF
    ld h, [hl]                                    ; $473A: $66
    ld l, c                                       ; $473B: $69
    ld h, a                                       ; $473C: $67
    ld l, b                                       ; $473D: $68
    ld [hl], h                                    ; $473E: $74
    daa                                           ; $473F: $27
    ld [hl], e                                    ; $4740: $73
    jr nz, jr_013_47B2                            ; $4741: $20 $6F

    halt                                          ; $4743: $76
    ld h, l                                       ; $4744: $65
    ld [hl], d                                    ; $4745: $72
    inc l                                         ; $4746: $2C
    cp $79                                        ; $4747: $FE $79
    ld l, a                                       ; $4749: $6F
    ld [hl], l                                    ; $474A: $75
    ld [hl], d                                    ; $474B: $72
    jr nz, jr_013_47B1                            ; $474C: $20 $63

    ld [hl], d                                    ; $474E: $72
    ld h, l                                       ; $474F: $65

jr_013_4750:
    ld h, c                                       ; $4750: $61
    ld [hl], h                                    ; $4751: $74
    ld [hl], l                                    ; $4752: $75
    ld [hl], d                                    ; $4753: $72
    ld h, l                                       ; $4754: $65
    ld [hl], e                                    ; $4755: $73
    daa                                           ; $4756: $27
    rst $38                                       ; $4757: $FF
    ld l, h                                       ; $4758: $6C
    ld h, l                                       ; $4759: $65

jr_013_475A:
    ld h, [hl]                                    ; $475A: $66
    ld [hl], h                                    ; $475B: $74
    ld l, a                                       ; $475C: $6F
    halt                                          ; $475D: $76
    ld h, l                                       ; $475E: $65

jr_013_475F:
    ld [hl], d                                    ; $475F: $72
    jr nz, jr_013_47C7                            ; $4760: $20 $65

    ld l, [hl]                                    ; $4762: $6E
    ld h, l                                       ; $4763: $65
    ld [hl], d                                    ; $4764: $72
    ld h, a                                       ; $4765: $67
    ld a, c                                       ; $4766: $79
    cp $77                                        ; $4767: $FE $77
    ld l, c                                       ; $4769: $69
    ld l, h                                       ; $476A: $6C
    ld l, h                                       ; $476B: $6C
    jr nz, jr_013_47E0                            ; $476C: $20 $72

jr_013_476E:
    ld h, l                                       ; $476E: $65
    ld [hl], h                                    ; $476F: $74
    ld [hl], l                                    ; $4770: $75

jr_013_4771:
    ld [hl], d                                    ; $4771: $72
    ld l, [hl]                                    ; $4772: $6E
    rst $38                                       ; $4773: $FF
    ld [hl], h                                    ; $4774: $74
    ld l, a                                       ; $4775: $6F
    jr nz, @+$7B                                  ; $4776: $20 $79

    ld l, a                                       ; $4778: $6F
    ld [hl], l                                    ; $4779: $75
    ld hl, $5720                                  ; $477A: $21 $20 $57
    ld c, a                                       ; $477D: $4F
    ld c, a                                       ; $477E: $4F
    ld hl, $FE21                                  ; $477F: $21 $21 $FE
    db $FD                                        ; $4782: $FD
    sbc d                                         ; $4783: $9A
    ld b, l                                       ; $4784: $45
    inc de                                        ; $4785: $13
    ldh [$50], a                                  ; $4786: $E0 $50
    sbc c                                         ; $4788: $99
    sbc a                                         ; $4789: $9F
    jr nz, jr_013_47DF                            ; $478A: $20 $53

jr_013_478C:
    ld [hl], l                                    ; $478C: $75
    ld l, l                                       ; $478D: $6D

jr_013_478E:
    ld l, l                                       ; $478E: $6D
    ld l, a                                       ; $478F: $6F
    ld l, [hl]                                    ; $4790: $6E
    jr nz, jr_013_47E6                            ; $4791: $20 $53

    ld [hl], b                                    ; $4793: $70
    ld h, l                                       ; $4794: $65
    ld l, h                                       ; $4795: $6C
    ld l, h                                       ; $4796: $6C
    rst $38                                       ; $4797: $FF
    jr nz, jr_013_47E0                            ; $4798: $20 $46

    ld l, a                                       ; $479A: $6F
    ld h, e                                       ; $479B: $63
    ld [hl], l                                    ; $479C: $75
    ld [hl], e                                    ; $479D: $73
    jr nz, jr_013_47C0                            ; $479E: $20 $20

    ld c, c                                       ; $47A0: $49
    ld [hl], h                                    ; $47A1: $74
    ld h, l                                       ; $47A2: $65
    ld l, l                                       ; $47A3: $6D
    db $FD                                        ; $47A4: $FD
    sbc h                                         ; $47A5: $9C
    inc b                                         ; $47A6: $04
    inc de                                        ; $47A7: $13
    or e                                          ; $47A8: $B3

jr_013_47A9:
    ld b, a                                       ; $47A9: $47
    inc de                                        ; $47AA: $13

jr_013_47AB:
    ld e, $4D                                     ; $47AB: $1E $4D
    inc de                                        ; $47AD: $13
    or e                                          ; $47AE: $B3
    ld c, d                                       ; $47AF: $4A
    inc de                                        ; $47B0: $13

jr_013_47B1:
    sbc c                                         ; $47B1: $99

jr_013_47B2:
    ld c, e                                       ; $47B2: $4B
    sbc c                                         ; $47B3: $99
    sbc e                                         ; $47B4: $9B
    ld hl, sp+$7C                                 ; $47B5: $F8 $7C
    sbc a                                         ; $47B7: $9F
    ld d, h                                       ; $47B8: $54
    ld l, b                                       ; $47B9: $68
    ld h, l                                       ; $47BA: $65
    jr nz, jr_013_4803                            ; $47BB: $20 $46

    ld c, c                                       ; $47BD: $49
    ld d, d                                       ; $47BE: $52
    ld d, e                                       ; $47BF: $53

jr_013_47C0:
    ld d, h                                       ; $47C0: $54
    inc l                                         ; $47C1: $2C
    jr nz, @+$63                                  ; $47C2: $20 $61

    ld l, [hl]                                    ; $47C4: $6E
    ld h, h                                       ; $47C5: $64
    rst $38                                       ; $47C6: $FF

jr_013_47C7:
    ld c, l                                       ; $47C7: $4D
    ld c, a                                       ; $47C8: $4F
    ld d, e                                       ; $47C9: $53
    ld d, h                                       ; $47CA: $54
    jr nz, jr_013_4816                            ; $47CB: $20 $49

    ld c, l                                       ; $47CD: $4D
    ld d, b                                       ; $47CE: $50
    ld c, a                                       ; $47CF: $4F
    ld d, d                                       ; $47D0: $52
    ld d, h                                       ; $47D1: $54
    ld b, c                                       ; $47D2: $41
    ld c, [hl]                                    ; $47D3: $4E
    ld d, h                                       ; $47D4: $54
    cp $41                                        ; $47D5: $FE $41
    ld b, e                                       ; $47D7: $43
    ld d, h                                       ; $47D8: $54
    ld c, c                                       ; $47D9: $49
    ld c, a                                       ; $47DA: $4F
    ld c, [hl]                                    ; $47DB: $4E
    inc l                                         ; $47DC: $2C
    rst $38                                       ; $47DD: $FF
    ld h, d                                       ; $47DE: $62

jr_013_47DF:
    ld [hl], d                                    ; $47DF: $72

jr_013_47E0:
    ld l, a                                       ; $47E0: $6F
    ld [hl], h                                    ; $47E1: $74
    ld l, b                                       ; $47E2: $68
    ld h, l                                       ; $47E3: $65
    ld [hl], d                                    ; $47E4: $72
    inc l                                         ; $47E5: $2C

jr_013_47E6:
    jr nz, jr_013_4851                            ; $47E6: $20 $69

    ld [hl], e                                    ; $47E8: $73
    cp $53                                        ; $47E9: $FE $53
    ld d, l                                       ; $47EB: $55
    ld c, l                                       ; $47EC: $4D
    ld c, l                                       ; $47ED: $4D
    ld c, a                                       ; $47EE: $4F
    ld c, [hl]                                    ; $47EF: $4E
    ld hl, $FF21                                  ; $47F0: $21 $21 $FF
    ld c, a                                       ; $47F3: $4F
    ld c, a                                       ; $47F4: $4F
    ld c, a                                       ; $47F5: $4F
    ld c, a                                       ; $47F6: $4F
    ld c, a                                       ; $47F7: $4F
    ld c, b                                       ; $47F8: $48
    jr nz, @+$5B                                  ; $47F9: $20 $59

    ld b, l                                       ; $47FB: $45
    ld b, c                                       ; $47FC: $41
    ld c, b                                       ; $47FD: $48
    ld c, b                                       ; $47FE: $48
    ld c, b                                       ; $47FF: $48
    ld hl, $54FE                                  ; $4800: $21 $FE $54

jr_013_4803:
    ld l, b                                       ; $4803: $68
    ld h, l                                       ; $4804: $65
    ld [hl], d                                    ; $4805: $72
    ld h, l                                       ; $4806: $65
    daa                                           ; $4807: $27
    ld [hl], e                                    ; $4808: $73
    jr nz, jr_013_487A                            ; $4809: $20 $6F

    ld l, [hl]                                    ; $480B: $6E
    ld l, h                                       ; $480C: $6C
    ld a, c                                       ; $480D: $79
    jr nz, @+$75                                  ; $480E: $20 $73

    ld l, a                                       ; $4810: $6F
    rst $38                                       ; $4811: $FF
    ld l, l                                       ; $4812: $6D
    ld [hl], l                                    ; $4813: $75
    ld h, e                                       ; $4814: $63
    ld l, b                                       ; $4815: $68

jr_013_4816:
    jr nz, jr_013_4879                            ; $4816: $20 $61

    jr nz, @+$4F                                  ; $4818: $20 $4D

    ld h, c                                       ; $481A: $61
    ld h, a                                       ; $481B: $67
    ld l, c                                       ; $481C: $69
    cp $63                                        ; $481D: $FE $63
    ld h, c                                       ; $481F: $61
    ld l, [hl]                                    ; $4820: $6E
    jr nz, @+$66                                  ; $4821: $20 $64

    ld l, a                                       ; $4823: $6F
    jr nz, jr_013_4890                            ; $4824: $20 $6A

    ld [hl], l                                    ; $4826: $75
    ld [hl], e                                    ; $4827: $73
    ld [hl], h                                    ; $4828: $74
    jr nz, jr_013_488D                            ; $4829: $20 $62

    ld a, c                                       ; $482B: $79
    rst $38                                       ; $482C: $FF
    ld l, b                                       ; $482D: $68
    ld l, c                                       ; $482E: $69
    ld l, l                                       ; $482F: $6D
    ld [hl], e                                    ; $4830: $73
    ld h, l                                       ; $4831: $65
    ld l, h                                       ; $4832: $6C
    ld h, [hl]                                    ; $4833: $66
    inc l                                         ; $4834: $2C
    jr nz, jr_013_48AA                            ; $4835: $20 $73

    ld l, a                                       ; $4837: $6F
    cp $53                                        ; $4838: $FE $53
    ld d, l                                       ; $483A: $55
    ld c, l                                       ; $483B: $4D
    ld c, l                                       ; $483C: $4D
    ld c, a                                       ; $483D: $4F
    ld c, [hl]                                    ; $483E: $4E
    ld c, c                                       ; $483F: $49
    ld c, [hl]                                    ; $4840: $4E
    ld b, a                                       ; $4841: $47
    rst $38                                       ; $4842: $FF
    ld b, e                                       ; $4843: $43
    ld d, d                                       ; $4844: $52
    ld b, l                                       ; $4845: $45
    ld b, c                                       ; $4846: $41
    ld d, h                                       ; $4847: $54
    ld d, l                                       ; $4848: $55
    ld d, d                                       ; $4849: $52
    ld b, l                                       ; $484A: $45
    ld d, e                                       ; $484B: $53
    jr nz, jr_013_48B7                            ; $484C: $20 $69

    ld [hl], e                                    ; $484E: $73
    cp $74                                        ; $484F: $FE $74

jr_013_4851:
    ld l, b                                       ; $4851: $68
    ld h, l                                       ; $4852: $65
    jr nz, jr_013_48B7                            ; $4853: $20 $62

    ld h, l                                       ; $4855: $65
    ld [hl], e                                    ; $4856: $73
    ld [hl], h                                    ; $4857: $74
    jr nz, jr_013_48D1                            ; $4858: $20 $77

    ld h, c                                       ; $485A: $61
    ld a, c                                       ; $485B: $79
    rst $38                                       ; $485C: $FF
    ld [hl], h                                    ; $485D: $74
    ld l, a                                       ; $485E: $6F
    jr nz, jr_013_48C2                            ; $485F: $20 $61

    ld [hl], h                                    ; $4861: $74
    ld [hl], h                                    ; $4862: $74
    ld h, c                                       ; $4863: $61
    ld h, e                                       ; $4864: $63
    ld l, e                                       ; $4865: $6B
    jr nz, jr_013_48E1                            ; $4866: $20 $79

    ld l, a                                       ; $4868: $6F
    ld [hl], l                                    ; $4869: $75
    ld [hl], d                                    ; $486A: $72
    cp $6F                                        ; $486B: $FE $6F
    ld [hl], b                                    ; $486D: $70
    ld [hl], b                                    ; $486E: $70
    ld l, a                                       ; $486F: $6F
    ld l, [hl]                                    ; $4870: $6E
    ld h, l                                       ; $4871: $65
    ld l, [hl]                                    ; $4872: $6E
    ld [hl], h                                    ; $4873: $74
    ld [hl], e                                    ; $4874: $73
    jr nz, jr_013_48B8                            ; $4875: $20 $41

    ld c, [hl]                                    ; $4877: $4E
    ld b, h                                       ; $4878: $44

jr_013_4879:
    rst $38                                       ; $4879: $FF

jr_013_487A:
    ld [hl], h                                    ; $487A: $74
    ld l, b                                       ; $487B: $68
    ld h, l                                       ; $487C: $65
    jr nz, jr_013_48E1                            ; $487D: $20 $62

    ld h, l                                       ; $487F: $65
    ld [hl], e                                    ; $4880: $73
    ld [hl], h                                    ; $4881: $74
    jr nz, jr_013_48FB                            ; $4882: $20 $77

    ld h, c                                       ; $4884: $61
    ld a, c                                       ; $4885: $79
    jr nz, jr_013_48FC                            ; $4886: $20 $74

    ld l, a                                       ; $4888: $6F
    cp $64                                        ; $4889: $FE $64
    ld h, l                                       ; $488B: $65
    ld h, [hl]                                    ; $488C: $66

jr_013_488D:
    ld h, l                                       ; $488D: $65
    ld l, [hl]                                    ; $488E: $6E
    ld h, h                                       ; $488F: $64

jr_013_4890:
    jr nz, jr_013_48F3                            ; $4890: $20 $61

    ld h, a                                       ; $4892: $67
    ld h, c                                       ; $4893: $61
    ld l, c                                       ; $4894: $69
    ld l, [hl]                                    ; $4895: $6E
    ld [hl], e                                    ; $4896: $73
    ld [hl], h                                    ; $4897: $74
    rst $38                                       ; $4898: $FF
    ld [hl], h                                    ; $4899: $74
    ld l, b                                       ; $489A: $68
    ld h, l                                       ; $489B: $65
    ld l, l                                       ; $489C: $6D
    ld hl, $FDFE                                  ; $489D: $21 $FE $FD
    sbc e                                         ; $48A0: $9B
    ld a, b                                       ; $48A1: $78
    ld [hl], b                                    ; $48A2: $70
    sbc a                                         ; $48A3: $9F
    ld d, e                                       ; $48A4: $53
    ld l, a                                       ; $48A5: $6F
    jr nz, jr_013_491F                            ; $48A6: $20 $77

    ld l, b                                       ; $48A8: $68
    ld h, c                                       ; $48A9: $61

jr_013_48AA:
    ld [hl], h                                    ; $48AA: $74
    jr nz, jr_013_4910                            ; $48AB: $20 $63

    ld h, c                                       ; $48AD: $61
    ld l, [hl]                                    ; $48AE: $6E
    rst $38                                       ; $48AF: $FF
    ld l, l                                       ; $48B0: $6D
    ld a, c                                       ; $48B1: $79
    jr nz, jr_013_4917                            ; $48B2: $20 $63

    ld [hl], d                                    ; $48B4: $72
    ld h, l                                       ; $48B5: $65
    ld h, c                                       ; $48B6: $61

jr_013_48B7:
    ld [hl], h                                    ; $48B7: $74

jr_013_48B8:
    ld [hl], l                                    ; $48B8: $75
    ld [hl], d                                    ; $48B9: $72
    ld h, l                                       ; $48BA: $65
    ld [hl], e                                    ; $48BB: $73
    cp $64                                        ; $48BC: $FE $64
    ld l, a                                       ; $48BE: $6F
    jr nz, jr_013_4927                            ; $48BF: $20 $66

    ld l, a                                       ; $48C1: $6F

jr_013_48C2:
    ld [hl], d                                    ; $48C2: $72
    jr nz, jr_013_4932                            ; $48C3: $20 $6D

    ld h, l                                       ; $48C5: $65
    ccf                                           ; $48C6: $3F
    cp $FD                                        ; $48C7: $FE $FD
    sbc e                                         ; $48C9: $9B
    ld hl, sp+$7C                                 ; $48CA: $F8 $7C
    sbc a                                         ; $48CC: $9F
    ld c, h                                       ; $48CD: $4C
    ld c, a                                       ; $48CE: $4F
    ld d, h                                       ; $48CF: $54
    ld d, e                                       ; $48D0: $53

jr_013_48D1:
    jr nz, jr_013_4922                            ; $48D1: $20 $4F

    ld b, [hl]                                    ; $48D3: $46
    jr nz, jr_013_4929                            ; $48D4: $20 $53

    ld d, h                                       ; $48D6: $54
    ld d, l                                       ; $48D7: $55
    ld b, [hl]                                    ; $48D8: $46
    ld b, [hl]                                    ; $48D9: $46
    ld hl, $44FE                                  ; $48DA: $21 $FE $44
    ld l, c                                       ; $48DD: $69
    ld h, [hl]                                    ; $48DE: $66
    ld h, [hl]                                    ; $48DF: $66
    ld h, l                                       ; $48E0: $65

jr_013_48E1:
    ld [hl], d                                    ; $48E1: $72
    ld h, l                                       ; $48E2: $65
    ld l, [hl]                                    ; $48E3: $6E
    ld [hl], h                                    ; $48E4: $74
    rst $38                                       ; $48E5: $FF
    ld h, e                                       ; $48E6: $63
    ld [hl], d                                    ; $48E7: $72
    ld h, l                                       ; $48E8: $65
    ld h, c                                       ; $48E9: $61
    ld [hl], h                                    ; $48EA: $74
    ld [hl], l                                    ; $48EB: $75
    ld [hl], d                                    ; $48EC: $72
    ld h, l                                       ; $48ED: $65
    ld [hl], e                                    ; $48EE: $73
    jr nz, jr_013_4959                            ; $48EF: $20 $68

    ld h, c                                       ; $48F1: $61
    halt                                          ; $48F2: $76

jr_013_48F3:
    ld h, l                                       ; $48F3: $65
    cp $64                                        ; $48F4: $FE $64
    ld l, c                                       ; $48F6: $69
    ld h, [hl]                                    ; $48F7: $66
    ld h, [hl]                                    ; $48F8: $66
    ld h, l                                       ; $48F9: $65
    ld [hl], d                                    ; $48FA: $72

jr_013_48FB:
    ld h, l                                       ; $48FB: $65

jr_013_48FC:
    ld l, [hl]                                    ; $48FC: $6E
    ld [hl], h                                    ; $48FD: $74
    rst $38                                       ; $48FE: $FF
    ld h, c                                       ; $48FF: $61
    ld h, e                                       ; $4900: $63
    ld [hl], h                                    ; $4901: $74
    ld l, c                                       ; $4902: $69
    ld l, a                                       ; $4903: $6F
    ld l, [hl]                                    ; $4904: $6E
    ld [hl], e                                    ; $4905: $73
    inc l                                         ; $4906: $2C
    jr nz, jr_013_496A                            ; $4907: $20 $61

    ld l, [hl]                                    ; $4909: $6E
    ld h, h                                       ; $490A: $64
    cp $65                                        ; $490B: $FE $65
    ld h, c                                       ; $490D: $61
    ld h, e                                       ; $490E: $63
    ld l, b                                       ; $490F: $68

jr_013_4910:
    jr nz, jr_013_4986                            ; $4910: $20 $74

    ld [hl], l                                    ; $4912: $75
    ld [hl], d                                    ; $4913: $72
    ld l, [hl]                                    ; $4914: $6E
    inc l                                         ; $4915: $2C
    rst $38                                       ; $4916: $FF

jr_013_4917:
    ld a, c                                       ; $4917: $79
    ld l, a                                       ; $4918: $6F
    ld [hl], l                                    ; $4919: $75
    ld [hl], d                                    ; $491A: $72
    jr nz, jr_013_4980                            ; $491B: $20 $63

    ld [hl], d                                    ; $491D: $72
    ld h, l                                       ; $491E: $65

jr_013_491F:
    ld h, c                                       ; $491F: $61
    ld [hl], h                                    ; $4920: $74
    ld [hl], l                                    ; $4921: $75

jr_013_4922:
    ld [hl], d                                    ; $4922: $72
    ld h, l                                       ; $4923: $65
    ld [hl], e                                    ; $4924: $73
    cp $77                                        ; $4925: $FE $77

jr_013_4927:
    ld l, c                                       ; $4927: $69
    ld l, h                                       ; $4928: $6C

jr_013_4929:
    ld l, h                                       ; $4929: $6C
    jr nz, jr_013_4990                            ; $492A: $20 $64

    ld l, a                                       ; $492C: $6F
    jr nz, jr_013_49A3                            ; $492D: $20 $74

    ld l, b                                       ; $492F: $68
    ld h, l                                       ; $4930: $65
    rst $38                                       ; $4931: $FF

jr_013_4932:
    ld h, c                                       ; $4932: $61
    ld h, e                                       ; $4933: $63
    ld [hl], h                                    ; $4934: $74
    ld l, c                                       ; $4935: $69
    ld l, a                                       ; $4936: $6F
    ld l, [hl]                                    ; $4937: $6E
    jr nz, jr_013_49B3                            ; $4938: $20 $79

    ld l, a                                       ; $493A: $6F
    ld [hl], l                                    ; $493B: $75
    jr nz, @+$76                                  ; $493C: $20 $74

    ld h, l                                       ; $493E: $65
    ld l, h                                       ; $493F: $6C
    ld l, h                                       ; $4940: $6C
    cp $74                                        ; $4941: $FE $74
    ld l, b                                       ; $4943: $68

Call_013_4944:
    ld h, l                                       ; $4944: $65
    ld l, l                                       ; $4945: $6D
    jr nz, jr_013_49BC                            ; $4946: $20 $74

    ld l, a                                       ; $4948: $6F
    jr nz, jr_013_49AF                            ; $4949: $20 $64

    ld l, a                                       ; $494B: $6F
    ld l, $FE                                     ; $494C: $2E $FE
    ld d, h                                       ; $494E: $54
    ld l, b                                       ; $494F: $68
    ld h, l                                       ; $4950: $65
    ld a, c                                       ; $4951: $79
    jr nz, jr_013_49BB                            ; $4952: $20 $67

    ld h, l                                       ; $4954: $65
    ld [hl], h                                    ; $4955: $74
    jr nz, jr_013_49C7                            ; $4956: $20 $6F

    ld l, [hl]                                    ; $4958: $6E

jr_013_4959:
    ld h, l                                       ; $4959: $65
    rst $38                                       ; $495A: $FF
    ld h, c                                       ; $495B: $61
    ld h, e                                       ; $495C: $63
    ld [hl], h                                    ; $495D: $74
    ld l, c                                       ; $495E: $69
    ld l, a                                       ; $495F: $6F
    ld l, [hl]                                    ; $4960: $6E
    jr nz, jr_013_49D3                            ; $4961: $20 $70

    ld h, l                                       ; $4963: $65
    ld [hl], d                                    ; $4964: $72
    cp $74                                        ; $4965: $FE $74
    ld [hl], l                                    ; $4967: $75
    ld [hl], d                                    ; $4968: $72
    ld l, [hl]                                    ; $4969: $6E

jr_013_496A:
    inc l                                         ; $496A: $2C
    jr nz, @+$6E                                  ; $496B: $20 $6C

    ld l, c                                       ; $496D: $69
    ld l, e                                       ; $496E: $6B
    ld h, l                                       ; $496F: $65
    jr nz, jr_013_49EB                            ; $4970: $20 $79

    ld l, a                                       ; $4972: $6F
    ld [hl], l                                    ; $4973: $75
    ld l, $FE                                     ; $4974: $2E $FE
    db $FD                                        ; $4976: $FD
    sbc e                                         ; $4977: $9B
    ld a, b                                       ; $4978: $78
    ld [hl], b                                    ; $4979: $70
    sbc a                                         ; $497A: $9F
    ld d, e                                       ; $497B: $53
    ld l, a                                       ; $497C: $6F
    ld [hl], l                                    ; $497D: $75
    ld l, [hl]                                    ; $497E: $6E
    ld h, h                                       ; $497F: $64

jr_013_4980:
    ld [hl], e                                    ; $4980: $73
    jr nz, jr_013_49F8                            ; $4981: $20 $75

    ld [hl], e                                    ; $4983: $73
    ld h, l                                       ; $4984: $65
    ld h, [hl]                                    ; $4985: $66

jr_013_4986:
    ld [hl], l                                    ; $4986: $75
    ld l, h                                       ; $4987: $6C
    ld l, $FE                                     ; $4988: $2E $FE
    db $FD                                        ; $498A: $FD
    sbc e                                         ; $498B: $9B
    ld hl, sp+$7C                                 ; $498C: $F8 $7C
    sbc a                                         ; $498E: $9F
    ld b, d                                       ; $498F: $42

jr_013_4990:
    ld d, l                                       ; $4990: $55
    ld d, h                                       ; $4991: $54
    jr nz, @+$54                                  ; $4992: $20 $52

    ld b, l                                       ; $4994: $45
    ld c, l                                       ; $4995: $4D
    ld b, l                                       ; $4996: $45
    ld c, l                                       ; $4997: $4D
    ld b, d                                       ; $4998: $42
    ld b, l                                       ; $4999: $45
    ld d, d                                       ; $499A: $52
    rst $38                                       ; $499B: $FF
    ld d, h                                       ; $499C: $54
    ld c, b                                       ; $499D: $48
    ld c, c                                       ; $499E: $49
    ld d, e                                       ; $499F: $53
    jr nz, jr_013_49F0                            ; $49A0: $20 $4E

    ld b, l                                       ; $49A2: $45

jr_013_49A3:
    ld e, b                                       ; $49A3: $58
    ld d, h                                       ; $49A4: $54
    jr nz, jr_013_49F7                            ; $49A5: $20 $50

    ld b, c                                       ; $49A7: $41
    ld d, d                                       ; $49A8: $52
    ld d, h                                       ; $49A9: $54
    ld hl, $54FE                                  ; $49AA: $21 $FE $54
    ld l, b                                       ; $49AD: $68
    ld h, l                                       ; $49AE: $65

jr_013_49AF:
    ld [hl], d                                    ; $49AF: $72
    ld h, l                                       ; $49B0: $65
    jr nz, jr_013_4A14                            ; $49B1: $20 $61

jr_013_49B3:
    ld [hl], d                                    ; $49B3: $72
    ld h, l                                       ; $49B4: $65
    jr nz, jr_013_4A2A                            ; $49B5: $20 $73

    ld l, a                                       ; $49B7: $6F
    ld l, l                                       ; $49B8: $6D
    ld h, l                                       ; $49B9: $65
    rst $38                                       ; $49BA: $FF

jr_013_49BB:
    ld h, h                                       ; $49BB: $64

jr_013_49BC:
    ld l, a                                       ; $49BC: $6F
    ld [hl], a                                    ; $49BD: $77
    ld l, [hl]                                    ; $49BE: $6E
    ld [hl], e                                    ; $49BF: $73
    ld l, c                                       ; $49C0: $69
    ld h, h                                       ; $49C1: $64
    ld h, l                                       ; $49C2: $65
    ld [hl], e                                    ; $49C3: $73
    ld hl, $FE21                                  ; $49C4: $21 $21 $FE

jr_013_49C7:
    ld b, [hl]                                    ; $49C7: $46
    ld l, a                                       ; $49C8: $6F
    ld [hl], d                                    ; $49C9: $72
    jr nz, jr_013_4A3B                            ; $49CA: $20 $6F

    ld l, [hl]                                    ; $49CC: $6E
    ld h, l                                       ; $49CD: $65
    inc l                                         ; $49CE: $2C
    jr nz, jr_013_4A3A                            ; $49CF: $20 $69

    ld [hl], h                                    ; $49D1: $74
    rst $38                                       ; $49D2: $FF

jr_013_49D3:
    ld [hl], h                                    ; $49D3: $74
    ld h, c                                       ; $49D4: $61
    ld l, e                                       ; $49D5: $6B
    ld h, l                                       ; $49D6: $65
    ld [hl], e                                    ; $49D7: $73
    jr nz, @+$75                                  ; $49D8: $20 $73

    ld l, a                                       ; $49DA: $6F
    ld l, l                                       ; $49DB: $6D
    ld h, l                                       ; $49DC: $65
    cp $6F                                        ; $49DD: $FE $6F
    ld h, [hl]                                    ; $49DF: $66
    jr nz, jr_013_4A5B                            ; $49E0: $20 $79

    ld l, a                                       ; $49E2: $6F
    ld [hl], l                                    ; $49E3: $75
    ld [hl], d                                    ; $49E4: $72
    jr nz, jr_013_4A56                            ; $49E5: $20 $6F

    ld [hl], a                                    ; $49E7: $77
    ld l, [hl]                                    ; $49E8: $6E
    rst $38                                       ; $49E9: $FF
    ld h, l                                       ; $49EA: $65

jr_013_49EB:
    ld l, [hl]                                    ; $49EB: $6E
    ld h, l                                       ; $49EC: $65
    ld [hl], d                                    ; $49ED: $72
    ld h, a                                       ; $49EE: $67
    ld a, c                                       ; $49EF: $79

jr_013_49F0:
    jr nz, jr_013_4A66                            ; $49F0: $20 $74

    ld l, a                                       ; $49F2: $6F
    jr nz, jr_013_4A58                            ; $49F3: $20 $63

    ld h, c                                       ; $49F5: $61
    ld l, h                                       ; $49F6: $6C

jr_013_49F7:
    ld l, h                                       ; $49F7: $6C

jr_013_49F8:
    cp $6F                                        ; $49F8: $FE $6F
    ld l, [hl]                                    ; $49FA: $6E
    ld h, l                                       ; $49FB: $65
    jr nz, jr_013_4A6D                            ; $49FC: $20 $6F

    ld h, [hl]                                    ; $49FE: $66
    jr nz, jr_013_4A75                            ; $49FF: $20 $74

    ld l, b                                       ; $4A01: $68
    ld h, l                                       ; $4A02: $65
    ld [hl], e                                    ; $4A03: $73
    ld h, l                                       ; $4A04: $65
    rst $38                                       ; $4A05: $FF
    ld h, e                                       ; $4A06: $63
    ld [hl], d                                    ; $4A07: $72
    ld h, l                                       ; $4A08: $65
    ld h, c                                       ; $4A09: $61
    ld [hl], h                                    ; $4A0A: $74
    ld [hl], l                                    ; $4A0B: $75
    ld [hl], d                                    ; $4A0C: $72
    ld h, l                                       ; $4A0D: $65
    ld [hl], e                                    ; $4A0E: $73
    ld l, $FE                                     ; $4A0F: $2E $FE
    ld d, e                                       ; $4A11: $53
    ld h, l                                       ; $4A12: $65
    ld h, e                                       ; $4A13: $63

jr_013_4A14:
    ld l, a                                       ; $4A14: $6F
    ld l, [hl]                                    ; $4A15: $6E
    ld h, h                                       ; $4A16: $64
    inc l                                         ; $4A17: $2C
    jr nz, jr_013_4A93                            ; $4A18: $20 $79

    ld l, a                                       ; $4A1A: $6F
    ld [hl], l                                    ; $4A1B: $75
    jr nz, @+$65                                  ; $4A1C: $20 $63

    ld h, c                                       ; $4A1E: $61
    ld l, [hl]                                    ; $4A1F: $6E
    rst $38                                       ; $4A20: $FF
    ld l, a                                       ; $4A21: $6F
    ld l, [hl]                                    ; $4A22: $6E
    ld l, h                                       ; $4A23: $6C
    ld a, c                                       ; $4A24: $79
    jr nz, jr_013_4A8F                            ; $4A25: $20 $68

    ld h, c                                       ; $4A27: $61
    halt                                          ; $4A28: $76
    ld h, l                                       ; $4A29: $65

jr_013_4A2A:
    jr nz, @+$71                                  ; $4A2A: $20 $6F

    ld [hl], l                                    ; $4A2C: $75
    ld [hl], h                                    ; $4A2D: $74
    cp $46                                        ; $4A2E: $FE $46
    ld c, a                                       ; $4A30: $4F
    ld d, l                                       ; $4A31: $55
    ld d, d                                       ; $4A32: $52
    jr nz, jr_013_4A98                            ; $4A33: $20 $63

    ld [hl], d                                    ; $4A35: $72
    ld h, l                                       ; $4A36: $65
    ld h, c                                       ; $4A37: $61
    ld [hl], h                                    ; $4A38: $74
    ld [hl], l                                    ; $4A39: $75

jr_013_4A3A:
    ld [hl], d                                    ; $4A3A: $72

jr_013_4A3B:
    ld h, l                                       ; $4A3B: $65
    ld [hl], e                                    ; $4A3C: $73
    rst $38                                       ; $4A3D: $FF
    ld h, c                                       ; $4A3E: $61
    ld [hl], h                                    ; $4A3F: $74
    jr nz, jr_013_4AA3                            ; $4A40: $20 $61

    jr nz, jr_013_4AB8                            ; $4A42: $20 $74

    ld l, c                                       ; $4A44: $69
    ld l, l                                       ; $4A45: $6D
    ld h, l                                       ; $4A46: $65
    ld hl, $41FE                                  ; $4A47: $21 $FE $41
    ld l, [hl]                                    ; $4A4A: $6E
    ld h, h                                       ; $4A4B: $64
    jr nz, jr_013_4AC2                            ; $4A4C: $20 $74

    ld l, b                                       ; $4A4E: $68
    ld l, c                                       ; $4A4F: $69
    ld [hl], d                                    ; $4A50: $72
    ld h, h                                       ; $4A51: $64
    inc l                                         ; $4A52: $2C
    rst $38                                       ; $4A53: $FF
    ld h, e                                       ; $4A54: $63
    ld [hl], d                                    ; $4A55: $72

jr_013_4A56:
    ld h, l                                       ; $4A56: $65
    ld h, c                                       ; $4A57: $61

jr_013_4A58:
    ld [hl], h                                    ; $4A58: $74
    ld [hl], l                                    ; $4A59: $75
    ld [hl], d                                    ; $4A5A: $72

jr_013_4A5B:
    ld h, l                                       ; $4A5B: $65
    ld [hl], e                                    ; $4A5C: $73
    jr nz, jr_013_4AC3                            ; $4A5D: $20 $64

    ld l, a                                       ; $4A5F: $6F
    ld l, [hl]                                    ; $4A60: $6E
    daa                                           ; $4A61: $27
    ld [hl], h                                    ; $4A62: $74
    cp $67                                        ; $4A63: $FE $67
    ld h, l                                       ; $4A65: $65

jr_013_4A66:
    ld [hl], h                                    ; $4A66: $74
    jr nz, jr_013_4ADD                            ; $4A67: $20 $74

    ld l, a                                       ; $4A69: $6F
    jr nz, @+$66                                  ; $4A6A: $20 $64

    ld l, a                                       ; $4A6C: $6F

jr_013_4A6D:
    jr nz, @+$63                                  ; $4A6D: $20 $61

    ld l, [hl]                                    ; $4A6F: $6E
    ld a, c                                       ; $4A70: $79
    rst $38                                       ; $4A71: $FF
    ld h, c                                       ; $4A72: $61
    ld h, e                                       ; $4A73: $63
    ld [hl], h                                    ; $4A74: $74

jr_013_4A75:
    ld l, c                                       ; $4A75: $69
    ld l, a                                       ; $4A76: $6F
    ld l, [hl]                                    ; $4A77: $6E
    ld [hl], e                                    ; $4A78: $73
    jr nz, jr_013_4AEA                            ; $4A79: $20 $6F

    ld l, [hl]                                    ; $4A7B: $6E
    jr nz, jr_013_4AF2                            ; $4A7C: $20 $74

    ld l, b                                       ; $4A7E: $68
    ld h, l                                       ; $4A7F: $65
    cp $74                                        ; $4A80: $FE $74
    ld [hl], l                                    ; $4A82: $75
    ld [hl], d                                    ; $4A83: $72
    ld l, [hl]                                    ; $4A84: $6E
    jr nz, @+$7B                                  ; $4A85: $20 $79

    ld l, a                                       ; $4A87: $6F
    ld [hl], l                                    ; $4A88: $75
    jr nz, jr_013_4AFE                            ; $4A89: $20 $73

    ld [hl], l                                    ; $4A8B: $75
    ld l, l                                       ; $4A8C: $6D
    ld l, l                                       ; $4A8D: $6D
    ld l, a                                       ; $4A8E: $6F

jr_013_4A8F:
    ld l, [hl]                                    ; $4A8F: $6E
    rst $38                                       ; $4A90: $FF
    ld [hl], h                                    ; $4A91: $74
    ld l, b                                       ; $4A92: $68

jr_013_4A93:
    ld h, l                                       ; $4A93: $65
    ld l, l                                       ; $4A94: $6D
    ld hl, $2021                                  ; $4A95: $21 $21 $20

jr_013_4A98:
    ld d, e                                       ; $4A98: $53
    ld l, a                                       ; $4A99: $6F
    jr nz, jr_013_4AFE                            ; $4A9A: $20 $62

    ld h, l                                       ; $4A9C: $65
    rst $38                                       ; $4A9D: $FF
    ld h, e                                       ; $4A9E: $63
    ld h, c                                       ; $4A9F: $61
    ld [hl], d                                    ; $4AA0: $72
    ld h, l                                       ; $4AA1: $65
    ld h, [hl]                                    ; $4AA2: $66

jr_013_4AA3:
    ld [hl], l                                    ; $4AA3: $75
    ld l, h                                       ; $4AA4: $6C
    inc l                                         ; $4AA5: $2C
    jr nz, jr_013_4B0C                            ; $4AA6: $20 $64

    ld [hl], l                                    ; $4AA8: $75
    ld h, h                                       ; $4AA9: $64
    ld h, l                                       ; $4AAA: $65
    ld hl, $FDFE                                  ; $4AAB: $21 $FE $FD
    sbc d                                         ; $4AAE: $9A
    ld b, l                                       ; $4AAF: $45
    inc de                                        ; $4AB0: $13
    ldh [$50], a                                  ; $4AB1: $E0 $50
    sbc c                                         ; $4AB3: $99
    sbc e                                         ; $4AB4: $9B
    ld hl, sp+$7C                                 ; $4AB5: $F8 $7C
    sbc a                                         ; $4AB7: $9F

jr_013_4AB8:
    ld b, e                                       ; $4AB8: $43
    ld b, c                                       ; $4AB9: $41
    ld d, e                                       ; $4ABA: $53
    ld d, h                                       ; $4ABB: $54
    ld c, c                                       ; $4ABC: $49
    ld c, [hl]                                    ; $4ABD: $4E
    ld b, a                                       ; $4ABE: $47
    jr nz, jr_013_4B14                            ; $4ABF: $20 $53

    ld d, b                                       ; $4AC1: $50

jr_013_4AC2:
    ld b, l                                       ; $4AC2: $45

jr_013_4AC3:
    ld c, h                                       ; $4AC3: $4C
    ld c, h                                       ; $4AC4: $4C
    ld d, e                                       ; $4AC5: $53
    ld hl, $44FE                                  ; $4AC6: $21 $FE $44
    ld c, c                                       ; $4AC9: $49
    ld b, a                                       ; $4ACA: $47
    jr nz, jr_013_4B16                            ; $4ACB: $20 $49

    ld d, h                                       ; $4ACD: $54
    ld hl, $5320                                  ; $4ACE: $21 $20 $53
    ld [hl], b                                    ; $4AD1: $70
    ld h, l                                       ; $4AD2: $65
    ld l, h                                       ; $4AD3: $6C
    ld l, h                                       ; $4AD4: $6C
    ld [hl], e                                    ; $4AD5: $73
    rst $38                                       ; $4AD6: $FF
    ld h, e                                       ; $4AD7: $63
    ld h, c                                       ; $4AD8: $61
    ld l, [hl]                                    ; $4AD9: $6E
    jr nz, jr_013_4B40                            ; $4ADA: $20 $64

    ld h, l                                       ; $4ADC: $65

jr_013_4ADD:
    ld h, c                                       ; $4ADD: $61
    ld l, h                                       ; $4ADE: $6C
    cp $64                                        ; $4ADF: $FE $64
    ld h, c                                       ; $4AE1: $61
    ld l, l                                       ; $4AE2: $6D
    ld h, c                                       ; $4AE3: $61
    ld h, a                                       ; $4AE4: $67
    ld h, l                                       ; $4AE5: $65
    inc l                                         ; $4AE6: $2C
    jr nz, jr_013_4B4C                            ; $4AE7: $20 $63

    ld [hl], l                                    ; $4AE9: $75

jr_013_4AEA:
    ld [hl], d                                    ; $4AEA: $72
    ld h, l                                       ; $4AEB: $65
    rst $38                                       ; $4AEC: $FF
    ld h, c                                       ; $4AED: $61
    ld l, c                                       ; $4AEE: $69
    ld l, h                                       ; $4AEF: $6C
    ld l, l                                       ; $4AF0: $6D
    ld h, l                                       ; $4AF1: $65

jr_013_4AF2:
    ld l, [hl]                                    ; $4AF2: $6E
    ld [hl], h                                    ; $4AF3: $74
    ld [hl], e                                    ; $4AF4: $73
    inc l                                         ; $4AF5: $2C
    jr nz, jr_013_4B67                            ; $4AF6: $20 $6F

    ld [hl], d                                    ; $4AF8: $72
    cp $70                                        ; $4AF9: $FE $70
    ld l, a                                       ; $4AFB: $6F
    ld [hl], a                                    ; $4AFC: $77
    ld h, l                                       ; $4AFD: $65

jr_013_4AFE:
    ld [hl], d                                    ; $4AFE: $72
    jr nz, jr_013_4B76                            ; $4AFF: $20 $75

    ld [hl], b                                    ; $4B01: $70
    jr nz, jr_013_4B7D                            ; $4B02: $20 $79

    ld l, a                                       ; $4B04: $6F
    ld [hl], l                                    ; $4B05: $75
    ld [hl], d                                    ; $4B06: $72
    rst $38                                       ; $4B07: $FF
    ld h, e                                       ; $4B08: $63
    ld [hl], d                                    ; $4B09: $72
    ld h, l                                       ; $4B0A: $65
    ld h, c                                       ; $4B0B: $61

jr_013_4B0C:
    ld [hl], h                                    ; $4B0C: $74
    ld [hl], l                                    ; $4B0D: $75
    ld [hl], d                                    ; $4B0E: $72
    ld h, l                                       ; $4B0F: $65
    ld [hl], e                                    ; $4B10: $73
    ld l, $20                                     ; $4B11: $2E $20
    ld d, h                                       ; $4B13: $54

jr_013_4B14:
    ld l, b                                       ; $4B14: $68
    ld h, l                                       ; $4B15: $65

jr_013_4B16:
    ld a, c                                       ; $4B16: $79
    cp $61                                        ; $4B17: $FE $61
    ld l, h                                       ; $4B19: $6C
    ld [hl], e                                    ; $4B1A: $73
    ld l, a                                       ; $4B1B: $6F
    jr nz, jr_013_4B86                            ; $4B1C: $20 $68

    ld h, c                                       ; $4B1E: $61
    ld [hl], b                                    ; $4B1F: $70
    ld [hl], b                                    ; $4B20: $70
    ld h, l                                       ; $4B21: $65
    ld l, [hl]                                    ; $4B22: $6E
    rst $38                                       ; $4B23: $FF
    ld h, [hl]                                    ; $4B24: $66
    ld h, c                                       ; $4B25: $61
    ld [hl], e                                    ; $4B26: $73
    ld [hl], h                                    ; $4B27: $74
    ld h, l                                       ; $4B28: $65
    ld [hl], d                                    ; $4B29: $72
    jr nz, jr_013_4BA0                            ; $4B2A: $20 $74

    ld l, b                                       ; $4B2C: $68
    ld h, c                                       ; $4B2D: $61
    ld l, [hl]                                    ; $4B2E: $6E
    cp $6D                                        ; $4B2F: $FE $6D
    ld l, a                                       ; $4B31: $6F
    ld [hl], e                                    ; $4B32: $73
    ld [hl], h                                    ; $4B33: $74
    jr nz, jr_013_4BA5                            ; $4B34: $20 $6F

    ld [hl], h                                    ; $4B36: $74
    ld l, b                                       ; $4B37: $68
    ld h, l                                       ; $4B38: $65
    ld [hl], d                                    ; $4B39: $72
    rst $38                                       ; $4B3A: $FF
    ld h, c                                       ; $4B3B: $61
    ld h, e                                       ; $4B3C: $63
    ld [hl], h                                    ; $4B3D: $74
    ld l, c                                       ; $4B3E: $69
    ld l, a                                       ; $4B3F: $6F

jr_013_4B40:
    ld l, [hl]                                    ; $4B40: $6E
    ld [hl], e                                    ; $4B41: $73
    ld l, $20                                     ; $4B42: $2E $20
    ld b, d                                       ; $4B44: $42
    ld [hl], l                                    ; $4B45: $75
    ld [hl], h                                    ; $4B46: $74
    cp $73                                        ; $4B47: $FE $73
    ld [hl], b                                    ; $4B49: $70
    ld h, l                                       ; $4B4A: $65
    ld l, h                                       ; $4B4B: $6C

jr_013_4B4C:
    ld l, h                                       ; $4B4C: $6C
    ld [hl], e                                    ; $4B4D: $73
    jr nz, jr_013_4BC4                            ; $4B4E: $20 $74

    ld h, c                                       ; $4B50: $61
    ld l, e                                       ; $4B51: $6B
    ld h, l                                       ; $4B52: $65
    rst $38                                       ; $4B53: $FF
    ld a, c                                       ; $4B54: $79
    ld l, a                                       ; $4B55: $6F
    ld [hl], l                                    ; $4B56: $75
    ld [hl], d                                    ; $4B57: $72
    jr nz, @+$67                                  ; $4B58: $20 $65

    ld l, [hl]                                    ; $4B5A: $6E
    ld h, l                                       ; $4B5B: $65
    ld [hl], d                                    ; $4B5C: $72
    ld h, a                                       ; $4B5D: $67
    ld a, c                                       ; $4B5E: $79
    jr nz, @+$76                                  ; $4B5F: $20 $74

    ld l, a                                       ; $4B61: $6F
    cp $70                                        ; $4B62: $FE $70
    ld h, l                                       ; $4B64: $65
    ld [hl], d                                    ; $4B65: $72
    ld h, [hl]                                    ; $4B66: $66

jr_013_4B67:
    ld l, a                                       ; $4B67: $6F
    ld [hl], d                                    ; $4B68: $72
    ld l, l                                       ; $4B69: $6D
    inc l                                         ; $4B6A: $2C
    jr nz, jr_013_4BE0                            ; $4B6B: $20 $73

    ld l, a                                       ; $4B6D: $6F
    rst $38                                       ; $4B6E: $FF
    ld [hl], h                                    ; $4B6F: $74
    ld [hl], d                                    ; $4B70: $72
    ld a, c                                       ; $4B71: $79
    jr nz, jr_013_4BE2                            ; $4B72: $20 $6E

    ld l, a                                       ; $4B74: $6F
    ld [hl], h                                    ; $4B75: $74

jr_013_4B76:
    jr nz, @+$76                                  ; $4B76: $20 $74

    ld l, a                                       ; $4B78: $6F
    cp $64                                        ; $4B79: $FE $64
    ld h, l                                       ; $4B7B: $65
    ld [hl], b                                    ; $4B7C: $70

jr_013_4B7D:
    ld h, l                                       ; $4B7D: $65
    ld l, [hl]                                    ; $4B7E: $6E
    ld h, h                                       ; $4B7F: $64
    jr nz, jr_013_4BF1                            ; $4B80: $20 $6F

    ld l, [hl]                                    ; $4B82: $6E
    jr nz, @+$76                                  ; $4B83: $20 $74

    ld l, b                                       ; $4B85: $68

jr_013_4B86:
    ld h, l                                       ; $4B86: $65
    ld l, l                                       ; $4B87: $6D
    rst $38                                       ; $4B88: $FF
    ld [hl], h                                    ; $4B89: $74
    ld l, a                                       ; $4B8A: $6F
    ld l, a                                       ; $4B8B: $6F
    jr nz, jr_013_4BFB                            ; $4B8C: $20 $6D

    ld [hl], l                                    ; $4B8E: $75
    ld h, e                                       ; $4B8F: $63
    ld l, b                                       ; $4B90: $68
    ld hl, $FDFE                                  ; $4B91: $21 $FE $FD
    sbc d                                         ; $4B94: $9A
    ld b, l                                       ; $4B95: $45
    inc de                                        ; $4B96: $13
    ldh [$50], a                                  ; $4B97: $E0 $50
    sbc e                                         ; $4B99: $9B
    ld hl, sp+$7C                                 ; $4B9A: $F8 $7C
    sbc a                                         ; $4B9C: $9F
    ld c, c                                       ; $4B9D: $49
    ld d, h                                       ; $4B9E: $54
    ld b, l                                       ; $4B9F: $45

jr_013_4BA0:
    ld c, l                                       ; $4BA0: $4D
    ld d, e                                       ; $4BA1: $53
    ld hl, $5720                                  ; $4BA2: $21 $20 $57

jr_013_4BA5:
    ld c, a                                       ; $4BA5: $4F
    ld c, a                                       ; $4BA6: $4F
    ld hl, $45FF                                  ; $4BA7: $21 $FF $45
    halt                                          ; $4BAA: $76
    ld h, l                                       ; $4BAB: $65
    ld [hl], d                                    ; $4BAC: $72
    ld a, c                                       ; $4BAD: $79
    jr nz, jr_013_4C1E                            ; $4BAE: $20 $6E

    ld l, a                                       ; $4BB0: $6F
    ld [hl], a                                    ; $4BB1: $77
    jr nz, jr_013_4C15                            ; $4BB2: $20 $61

    ld l, [hl]                                    ; $4BB4: $6E
    ld h, h                                       ; $4BB5: $64
    cp $74                                        ; $4BB6: $FE $74
    ld l, b                                       ; $4BB8: $68
    ld h, l                                       ; $4BB9: $65
    ld l, [hl]                                    ; $4BBA: $6E
    jr nz, jr_013_4C26                            ; $4BBB: $20 $69

    ld [hl], h                                    ; $4BBD: $74
    jr nz, jr_013_4C28                            ; $4BBE: $20 $68

    ld h, l                                       ; $4BC0: $65
    ld l, h                                       ; $4BC1: $6C
    ld [hl], b                                    ; $4BC2: $70
    ld [hl], e                                    ; $4BC3: $73

jr_013_4BC4:
    rst $38                                       ; $4BC4: $FF
    ld [hl], h                                    ; $4BC5: $74
    ld l, a                                       ; $4BC6: $6F
    jr nz, jr_013_4C3B                            ; $4BC7: $20 $72

    ld h, l                                       ; $4BC9: $65
    ld [hl], e                                    ; $4BCA: $73
    ld [hl], h                                    ; $4BCB: $74
    ld l, a                                       ; $4BCC: $6F
    ld [hl], d                                    ; $4BCD: $72
    ld h, l                                       ; $4BCE: $65
    jr nz, jr_013_4C4A                            ; $4BCF: $20 $79

    ld l, a                                       ; $4BD1: $6F
    ld [hl], l                                    ; $4BD2: $75
    ld [hl], d                                    ; $4BD3: $72
    cp $63                                        ; $4BD4: $FE $63
    ld [hl], d                                    ; $4BD6: $72
    ld h, l                                       ; $4BD7: $65
    ld h, c                                       ; $4BD8: $61
    ld [hl], h                                    ; $4BD9: $74
    ld [hl], l                                    ; $4BDA: $75
    ld [hl], d                                    ; $4BDB: $72
    ld h, l                                       ; $4BDC: $65
    daa                                           ; $4BDD: $27
    ld [hl], e                                    ; $4BDE: $73
    rst $38                                       ; $4BDF: $FF

jr_013_4BE0:
    ld h, l                                       ; $4BE0: $65
    ld l, [hl]                                    ; $4BE1: $6E

jr_013_4BE2:
    ld h, l                                       ; $4BE2: $65
    ld [hl], d                                    ; $4BE3: $72
    ld h, a                                       ; $4BE4: $67
    ld a, c                                       ; $4BE5: $79
    jr nz, jr_013_4C5F                            ; $4BE6: $20 $77

    ld l, c                                       ; $4BE8: $69
    ld [hl], h                                    ; $4BE9: $74
    ld l, b                                       ; $4BEA: $68
    jr nz, jr_013_4C4E                            ; $4BEB: $20 $61

    cp $42                                        ; $4BED: $FE $42
    ld h, c                                       ; $4BEF: $61
    ld l, h                                       ; $4BF0: $6C

jr_013_4BF1:
    ld l, a                                       ; $4BF1: $6F
    ld l, a                                       ; $4BF2: $6F
    jr nz, jr_013_4C41                            ; $4BF3: $20 $4C

    ld h, l                                       ; $4BF5: $65
    ld h, c                                       ; $4BF6: $61
    ld h, [hl]                                    ; $4BF7: $66
    jr nz, jr_013_4C69                            ; $4BF8: $20 $6F

    ld [hl], d                                    ; $4BFA: $72

jr_013_4BFB:
    rst $38                                       ; $4BFB: $FF
    ld l, c                                       ; $4BFC: $69
    ld l, l                                       ; $4BFD: $6D
    ld [hl], b                                    ; $4BFE: $70
    ld [hl], d                                    ; $4BFF: $72
    ld l, a                                       ; $4C00: $6F
    halt                                          ; $4C01: $76
    ld h, l                                       ; $4C02: $65
    jr nz, jr_013_4C7E                            ; $4C03: $20 $79

    ld l, a                                       ; $4C05: $6F
    ld [hl], l                                    ; $4C06: $75
    ld [hl], d                                    ; $4C07: $72
    cp $63                                        ; $4C08: $FE $63
    ld [hl], d                                    ; $4C0A: $72
    ld h, l                                       ; $4C0B: $65
    ld h, c                                       ; $4C0C: $61
    ld [hl], h                                    ; $4C0D: $74
    ld [hl], l                                    ; $4C0E: $75
    ld [hl], d                                    ; $4C0F: $72
    ld h, l                                       ; $4C10: $65
    daa                                           ; $4C11: $27
    ld [hl], e                                    ; $4C12: $73
    rst $38                                       ; $4C13: $FF
    ld [hl], b                                    ; $4C14: $70

jr_013_4C15:
    ld l, a                                       ; $4C15: $6F
    ld [hl], a                                    ; $4C16: $77
    ld h, l                                       ; $4C17: $65
    ld [hl], d                                    ; $4C18: $72
    jr nz, jr_013_4C92                            ; $4C19: $20 $77

    ld l, c                                       ; $4C1B: $69
    ld [hl], h                                    ; $4C1C: $74
    ld l, b                                       ; $4C1D: $68

jr_013_4C1E:
    jr nz, jr_013_4C81                            ; $4C1E: $20 $61

    cp $50                                        ; $4C20: $FE $50
    ld l, a                                       ; $4C22: $6F
    ld [hl], a                                    ; $4C23: $77
    ld h, l                                       ; $4C24: $65
    ld [hl], d                                    ; $4C25: $72

jr_013_4C26:
    jr nz, jr_013_4C6F                            ; $4C26: $20 $47

jr_013_4C28:
    ld h, l                                       ; $4C28: $65
    ld l, l                                       ; $4C29: $6D
    ld l, $FF                                     ; $4C2A: $2E $FF
    ld c, c                                       ; $4C2C: $49
    ld [hl], h                                    ; $4C2D: $74
    ld h, l                                       ; $4C2E: $65
    ld l, l                                       ; $4C2F: $6D
    ld [hl], e                                    ; $4C30: $73
    jr nz, jr_013_4C94                            ; $4C31: $20 $61

    ld [hl], d                                    ; $4C33: $72
    ld h, l                                       ; $4C34: $65
    jr nz, jr_013_4C98                            ; $4C35: $20 $61

    ld l, h                                       ; $4C37: $6C
    ld l, h                                       ; $4C38: $6C
    cp $6F                                        ; $4C39: $FE $6F

jr_013_4C3B:
    halt                                          ; $4C3B: $76
    ld h, l                                       ; $4C3C: $65
    ld [hl], d                                    ; $4C3D: $72
    ld hl, $5920                                  ; $4C3E: $21 $20 $59

jr_013_4C41:
    ld l, a                                       ; $4C41: $6F
    ld [hl], l                                    ; $4C42: $75
    jr nz, jr_013_4CA8                            ; $4C43: $20 $63

    ld h, c                                       ; $4C45: $61
    ld l, [hl]                                    ; $4C46: $6E
    rst $38                                       ; $4C47: $FF
    ld h, [hl]                                    ; $4C48: $66
    ld l, c                                       ; $4C49: $69

jr_013_4C4A:
    ld l, [hl]                                    ; $4C4A: $6E
    ld h, h                                       ; $4C4B: $64
    jr nz, jr_013_4C75                            ; $4C4C: $20 $27

jr_013_4C4E:
    ld h, l                                       ; $4C4E: $65
    ld l, l                                       ; $4C4F: $6D
    inc l                                         ; $4C50: $2C
    jr nz, jr_013_4CC2                            ; $4C51: $20 $6F

    ld [hl], d                                    ; $4C53: $72
    jr nz, jr_013_4CBD                            ; $4C54: $20 $67

    ld l, a                                       ; $4C56: $6F
    cp $74                                        ; $4C57: $FE $74
    ld l, a                                       ; $4C59: $6F
    jr nz, jr_013_4CBD                            ; $4C5A: $20 $61

    jr nz, jr_013_4CD1                            ; $4C5C: $20 $73

    ld l, b                                       ; $4C5E: $68

jr_013_4C5F:
    ld l, a                                       ; $4C5F: $6F
    ld [hl], b                                    ; $4C60: $70
    jr nz, jr_013_4CC4                            ; $4C61: $20 $61

    ld l, [hl]                                    ; $4C63: $6E
    ld h, h                                       ; $4C64: $64
    rst $38                                       ; $4C65: $FF
    ld h, d                                       ; $4C66: $62
    ld [hl], l                                    ; $4C67: $75
    ld a, c                                       ; $4C68: $79

jr_013_4C69:
    jr nz, jr_013_4CD0                            ; $4C69: $20 $65

    ld l, l                                       ; $4C6B: $6D
    ld hl, $42FE                                  ; $4C6C: $21 $FE $42

jr_013_4C6F:
    ld [hl], l                                    ; $4C6F: $75
    ld [hl], h                                    ; $4C70: $74
    jr nz, jr_013_4CBF                            ; $4C71: $20 $4C

    ld c, c                                       ; $4C73: $49
    ld d, e                                       ; $4C74: $53

jr_013_4C75:
    ld d, h                                       ; $4C75: $54
    ld b, l                                       ; $4C76: $45
    ld c, [hl]                                    ; $4C77: $4E
    jr nz, jr_013_4CCF                            ; $4C78: $20 $55

    ld d, b                                       ; $4C7A: $50
    ld hl, $53FF                                  ; $4C7B: $21 $FF $53

jr_013_4C7E:
    ld l, a                                       ; $4C7E: $6F
    ld l, l                                       ; $4C7F: $6D
    ld h, l                                       ; $4C80: $65

jr_013_4C81:
    jr nz, jr_013_4CEC                            ; $4C81: $20 $69

    ld [hl], h                                    ; $4C83: $74
    ld h, l                                       ; $4C84: $65
    ld l, l                                       ; $4C85: $6D
    ld [hl], e                                    ; $4C86: $73
    cp $63                                        ; $4C87: $FE $63
    ld h, c                                       ; $4C89: $61
    ld l, [hl]                                    ; $4C8A: $6E
    daa                                           ; $4C8B: $27
    ld [hl], h                                    ; $4C8C: $74
    jr nz, jr_013_4CF1                            ; $4C8D: $20 $62

    ld h, l                                       ; $4C8F: $65
    jr nz, @+$64                                  ; $4C90: $20 $62

jr_013_4C92:
    ld l, a                                       ; $4C92: $6F
    ld [hl], l                                    ; $4C93: $75

jr_013_4C94:
    ld h, a                                       ; $4C94: $67
    ld l, b                                       ; $4C95: $68
    ld [hl], h                                    ; $4C96: $74
    rst $38                                       ; $4C97: $FF

jr_013_4C98:
    ld h, c                                       ; $4C98: $61
    ld [hl], h                                    ; $4C99: $74
    jr nz, jr_013_4D10                            ; $4C9A: $20 $74

    ld l, b                                       ; $4C9C: $68
    ld h, l                                       ; $4C9D: $65
    jr nz, jr_013_4D13                            ; $4C9E: $20 $73

    ld [hl], h                                    ; $4CA0: $74
    ld l, a                                       ; $4CA1: $6F
    ld [hl], d                                    ; $4CA2: $72
    ld h, l                                       ; $4CA3: $65
    ld l, $FE                                     ; $4CA4: $2E $FE
    ld b, [hl]                                    ; $4CA6: $46
    ld l, a                                       ; $4CA7: $6F

jr_013_4CA8:
    ld [hl], d                                    ; $4CA8: $72
    jr nz, jr_013_4D1F                            ; $4CA9: $20 $74

    ld l, b                                       ; $4CAB: $68
    ld l, a                                       ; $4CAC: $6F
    ld [hl], e                                    ; $4CAD: $73
    ld h, l                                       ; $4CAE: $65
    jr nz, jr_013_4D1A                            ; $4CAF: $20 $69

    ld [hl], h                                    ; $4CB1: $74
    ld h, l                                       ; $4CB2: $65
    ld l, l                                       ; $4CB3: $6D
    ld [hl], e                                    ; $4CB4: $73
    rst $38                                       ; $4CB5: $FF
    ld a, c                                       ; $4CB6: $79
    ld l, a                                       ; $4CB7: $6F
    ld [hl], l                                    ; $4CB8: $75
    jr nz, jr_013_4D22                            ; $4CB9: $20 $67

    ld l, a                                       ; $4CBB: $6F
    ld [hl], h                                    ; $4CBC: $74

jr_013_4CBD:
    ld [hl], h                                    ; $4CBD: $74
    ld h, c                                       ; $4CBE: $61

jr_013_4CBF:
    jr nz, jr_013_4D2D                            ; $4CBF: $20 $6C

    ld l, a                                       ; $4CC1: $6F

jr_013_4CC2:
    ld l, a                                       ; $4CC2: $6F
    ld l, e                                       ; $4CC3: $6B

jr_013_4CC4:
    cp $61                                        ; $4CC4: $FE $61
    ld [hl], d                                    ; $4CC6: $72
    ld l, a                                       ; $4CC7: $6F
    ld [hl], l                                    ; $4CC8: $75
    ld l, [hl]                                    ; $4CC9: $6E
    ld h, h                                       ; $4CCA: $64
    ld l, $20                                     ; $4CCB: $2E $20
    ld c, c                                       ; $4CCD: $49
    ld [hl], h                                    ; $4CCE: $74

jr_013_4CCF:
    rst $38                                       ; $4CCF: $FF

jr_013_4CD0:
    ld h, e                                       ; $4CD0: $63

jr_013_4CD1:
    ld l, a                                       ; $4CD1: $6F
    ld [hl], l                                    ; $4CD2: $75
    ld l, h                                       ; $4CD3: $6C
    ld h, h                                       ; $4CD4: $64
    jr nz, @+$64                                  ; $4CD5: $20 $62

    ld h, l                                       ; $4CD7: $65
    jr nz, jr_013_4D46                            ; $4CD8: $20 $6C

    ld a, c                                       ; $4CDA: $79
    ld l, c                                       ; $4CDB: $69
    ld l, [hl]                                    ; $4CDC: $6E
    ld h, a                                       ; $4CDD: $67
    cp $61                                        ; $4CDE: $FE $61
    ld [hl], d                                    ; $4CE0: $72
    ld l, a                                       ; $4CE1: $6F
    ld [hl], l                                    ; $4CE2: $75
    ld l, [hl]                                    ; $4CE3: $6E
    ld h, h                                       ; $4CE4: $64
    jr nz, jr_013_4D56                            ; $4CE5: $20 $6F

    ld [hl], d                                    ; $4CE7: $72
    jr nz, jr_013_4D4B                            ; $4CE8: $20 $61

    rst $38                                       ; $4CEA: $FF
    ld h, e                                       ; $4CEB: $63

jr_013_4CEC:
    ld [hl], d                                    ; $4CEC: $72
    ld h, l                                       ; $4CED: $65
    ld h, c                                       ; $4CEE: $61
    ld [hl], h                                    ; $4CEF: $74
    ld [hl], l                                    ; $4CF0: $75

jr_013_4CF1:
    ld [hl], d                                    ; $4CF1: $72
    ld h, l                                       ; $4CF2: $65
    jr nz, jr_013_4D62                            ; $4CF3: $20 $6D

    ld l, c                                       ; $4CF5: $69
    ld h, a                                       ; $4CF6: $67
    ld l, b                                       ; $4CF7: $68
    ld [hl], h                                    ; $4CF8: $74
    cp $62                                        ; $4CF9: $FE $62
    ld h, l                                       ; $4CFB: $65
    jr nz, jr_013_4D6E                            ; $4CFC: $20 $70

    ld [hl], d                                    ; $4CFE: $72
    ld l, a                                       ; $4CFF: $6F
    ld [hl], h                                    ; $4D00: $74
    ld h, l                                       ; $4D01: $65
    ld h, e                                       ; $4D02: $63
    ld [hl], h                                    ; $4D03: $74
    ld l, c                                       ; $4D04: $69
    ld l, [hl]                                    ; $4D05: $6E
    ld h, a                                       ; $4D06: $67
    rst $38                                       ; $4D07: $FF
    ld l, c                                       ; $4D08: $69
    ld [hl], h                                    ; $4D09: $74
    ld hl, $5320                                  ; $4D0A: $21 $20 $53
    ld l, a                                       ; $4D0D: $6F
    jr nz, jr_013_4D75                            ; $4D0E: $20 $65

jr_013_4D10:
    ld a, b                                       ; $4D10: $78
    ld [hl], b                                    ; $4D11: $70
    ld l, h                                       ; $4D12: $6C

jr_013_4D13:
    ld l, a                                       ; $4D13: $6F
    ld [hl], d                                    ; $4D14: $72
    ld h, l                                       ; $4D15: $65
    ld hl, $FDFE                                  ; $4D16: $21 $FE $FD
    sbc d                                         ; $4D19: $9A

jr_013_4D1A:
    ld b, l                                       ; $4D1A: $45
    inc de                                        ; $4D1B: $13
    ldh [$50], a                                  ; $4D1C: $E0 $50
    sbc c                                         ; $4D1E: $99

jr_013_4D1F:
    sbc e                                         ; $4D1F: $9B
    ld hl, sp+$7C                                 ; $4D20: $F8 $7C

jr_013_4D22:
    sbc a                                         ; $4D22: $9F
    ld b, h                                       ; $4D23: $44
    ld c, c                                       ; $4D24: $49
    ld b, a                                       ; $4D25: $47
    jr nz, jr_013_4D71                            ; $4D26: $20 $49

    ld d, h                                       ; $4D28: $54
    ld hl, $FE21                                  ; $4D29: $21 $21 $FE
    ld b, [hl]                                    ; $4D2C: $46

jr_013_4D2D:
    ld c, a                                       ; $4D2D: $4F
    ld b, e                                       ; $4D2E: $43
    ld d, l                                       ; $4D2F: $55
    ld d, e                                       ; $4D30: $53
    jr nz, jr_013_4D96                            ; $4D31: $20 $63

    ld h, c                                       ; $4D33: $61
    ld l, [hl]                                    ; $4D34: $6E
    jr nz, jr_013_4D99                            ; $4D35: $20 $62

    ld h, l                                       ; $4D37: $65
    cp $75                                        ; $4D38: $FE $75
    ld [hl], e                                    ; $4D3A: $73
    ld h, l                                       ; $4D3B: $65
    ld h, [hl]                                    ; $4D3C: $66
    ld [hl], l                                    ; $4D3D: $75
    ld l, h                                       ; $4D3E: $6C
    jr nz, jr_013_4DAA                            ; $4D3F: $20 $69

    ld l, [hl]                                    ; $4D41: $6E
    jr nz, jr_013_4DB7                            ; $4D42: $20 $73

    ld l, a                                       ; $4D44: $6F
    ld l, l                                       ; $4D45: $6D

jr_013_4D46:
    ld h, l                                       ; $4D46: $65
    rst $38                                       ; $4D47: $FF
    ld [hl], e                                    ; $4D48: $73
    ld l, c                                       ; $4D49: $69
    ld [hl], h                                    ; $4D4A: $74

jr_013_4D4B:
    ld [hl], l                                    ; $4D4B: $75
    ld h, c                                       ; $4D4C: $61
    ld [hl], h                                    ; $4D4D: $74
    ld l, c                                       ; $4D4E: $69
    ld l, a                                       ; $4D4F: $6F
    ld l, [hl]                                    ; $4D50: $6E
    ld [hl], e                                    ; $4D51: $73
    ld l, $20                                     ; $4D52: $2E $20
    ld c, c                                       ; $4D54: $49
    ld [hl], h                                    ; $4D55: $74

jr_013_4D56:
    cp $63                                        ; $4D56: $FE $63
    ld h, c                                       ; $4D58: $61
    ld l, [hl]                                    ; $4D59: $6E
    jr nz, @+$69                                  ; $4D5A: $20 $67

    ld l, c                                       ; $4D5C: $69
    halt                                          ; $4D5D: $76
    ld h, l                                       ; $4D5E: $65
    jr nz, jr_013_4DDA                            ; $4D5F: $20 $79

    ld l, a                                       ; $4D61: $6F

jr_013_4D62:
    ld [hl], l                                    ; $4D62: $75
    rst $38                                       ; $4D63: $FF
    ld [hl], h                                    ; $4D64: $74
    ld l, b                                       ; $4D65: $68
    ld h, c                                       ; $4D66: $61
    ld [hl], h                                    ; $4D67: $74
    jr nz, jr_013_4DCF                            ; $4D68: $20 $65

    ld a, b                                       ; $4D6A: $78
    ld [hl], h                                    ; $4D6B: $74
    ld [hl], d                                    ; $4D6C: $72
    ld h, c                                       ; $4D6D: $61

jr_013_4D6E:
    cp $65                                        ; $4D6E: $FE $65
    ld l, [hl]                                    ; $4D70: $6E

jr_013_4D71:
    ld h, l                                       ; $4D71: $65
    ld [hl], d                                    ; $4D72: $72
    ld h, a                                       ; $4D73: $67
    ld a, c                                       ; $4D74: $79

jr_013_4D75:
    jr nz, jr_013_4DF0                            ; $4D75: $20 $79

    ld l, a                                       ; $4D77: $6F
    ld [hl], l                                    ; $4D78: $75
    jr nz, jr_013_4DE9                            ; $4D79: $20 $6E

    ld h, l                                       ; $4D7B: $65
    ld h, l                                       ; $4D7C: $65
    ld h, h                                       ; $4D7D: $64
    rst $38                                       ; $4D7E: $FF
    ld [hl], h                                    ; $4D7F: $74
    ld l, a                                       ; $4D80: $6F
    jr nz, jr_013_4DE5                            ; $4D81: $20 $62

    ld [hl], d                                    ; $4D83: $72
    ld l, c                                       ; $4D84: $69
    ld l, [hl]                                    ; $4D85: $6E
    ld h, a                                       ; $4D86: $67
    jr nz, jr_013_4DF8                            ; $4D87: $20 $6F

    ld [hl], l                                    ; $4D89: $75
    ld [hl], h                                    ; $4D8A: $74
    cp $74                                        ; $4D8B: $FE $74
    ld l, b                                       ; $4D8D: $68
    ld h, c                                       ; $4D8E: $61
    ld [hl], h                                    ; $4D8F: $74
    jr nz, jr_013_4DFB                            ; $4D90: $20 $69

    ld l, l                                       ; $4D92: $6D
    ld [hl], b                                    ; $4D93: $70
    ld l, a                                       ; $4D94: $6F
    ld [hl], d                                    ; $4D95: $72

jr_013_4D96:
    ld [hl], h                                    ; $4D96: $74
    ld h, c                                       ; $4D97: $61
    ld l, [hl]                                    ; $4D98: $6E

jr_013_4D99:
    ld [hl], h                                    ; $4D99: $74
    rst $38                                       ; $4D9A: $FF
    ld h, e                                       ; $4D9B: $63
    ld [hl], d                                    ; $4D9C: $72
    ld h, l                                       ; $4D9D: $65
    ld h, c                                       ; $4D9E: $61
    ld [hl], h                                    ; $4D9F: $74
    ld [hl], l                                    ; $4DA0: $75
    ld [hl], d                                    ; $4DA1: $72
    ld h, l                                       ; $4DA2: $65
    jr nz, jr_013_4E14                            ; $4DA3: $20 $6F

    ld [hl], d                                    ; $4DA5: $72
    cp $73                                        ; $4DA6: $FE $73
    ld [hl], b                                    ; $4DA8: $70
    ld h, l                                       ; $4DA9: $65

jr_013_4DAA:
    ld l, h                                       ; $4DAA: $6C
    ld l, h                                       ; $4DAB: $6C
    ld l, $20                                     ; $4DAC: $2E $20
    ld c, c                                       ; $4DAE: $49
    ld [hl], h                                    ; $4DAF: $74
    jr nz, jr_013_4E15                            ; $4DB0: $20 $63

    ld h, c                                       ; $4DB2: $61
    ld l, [hl]                                    ; $4DB3: $6E
    rst $38                                       ; $4DB4: $FF
    ld h, c                                       ; $4DB5: $61
    ld l, h                                       ; $4DB6: $6C

jr_013_4DB7:
    ld [hl], e                                    ; $4DB7: $73
    ld l, a                                       ; $4DB8: $6F
    jr nz, jr_013_4E23                            ; $4DB9: $20 $68

    ld h, l                                       ; $4DBB: $65
    ld l, h                                       ; $4DBC: $6C
    ld [hl], b                                    ; $4DBD: $70
    jr nz, jr_013_4E39                            ; $4DBE: $20 $79

    ld l, a                                       ; $4DC0: $6F
    ld [hl], l                                    ; $4DC1: $75
    cp $72                                        ; $4DC2: $FE $72
    ld h, l                                       ; $4DC4: $65
    ld h, e                                       ; $4DC5: $63
    ld l, a                                       ; $4DC6: $6F
    halt                                          ; $4DC7: $76
    ld h, l                                       ; $4DC8: $65
    ld [hl], d                                    ; $4DC9: $72
    jr nz, @+$79                                  ; $4DCA: $20 $77

    ld l, b                                       ; $4DCC: $68
    ld h, l                                       ; $4DCD: $65
    ld l, [hl]                                    ; $4DCE: $6E

jr_013_4DCF:
    rst $38                                       ; $4DCF: $FF
    ld a, c                                       ; $4DD0: $79
    ld l, a                                       ; $4DD1: $6F
    ld [hl], l                                    ; $4DD2: $75
    ld [hl], d                                    ; $4DD3: $72
    jr nz, jr_013_4E39                            ; $4DD4: $20 $63

    ld [hl], d                                    ; $4DD6: $72
    ld h, l                                       ; $4DD7: $65
    ld h, c                                       ; $4DD8: $61
    ld [hl], h                                    ; $4DD9: $74

jr_013_4DDA:
    ld [hl], l                                    ; $4DDA: $75
    ld [hl], d                                    ; $4DDB: $72
    ld h, l                                       ; $4DDC: $65
    ld [hl], e                                    ; $4DDD: $73
    cp $68                                        ; $4DDE: $FE $68
    ld h, c                                       ; $4DE0: $61
    halt                                          ; $4DE1: $76
    ld h, l                                       ; $4DE2: $65
    jr nz, jr_013_4E59                            ; $4DE3: $20 $74

jr_013_4DE5:
    ld l, b                                       ; $4DE5: $68
    ld h, l                                       ; $4DE6: $65
    jr nz, jr_013_4E4B                            ; $4DE7: $20 $62

jr_013_4DE9:
    ld h, c                                       ; $4DE9: $61
    ld [hl], h                                    ; $4DEA: $74
    ld [hl], h                                    ; $4DEB: $74
    ld l, h                                       ; $4DEC: $6C
    ld h, l                                       ; $4DED: $65
    rst $38                                       ; $4DEE: $FF
    ld [hl], l                                    ; $4DEF: $75

jr_013_4DF0:
    ld l, [hl]                                    ; $4DF0: $6E
    ld h, h                                       ; $4DF1: $64
    ld h, l                                       ; $4DF2: $65
    ld [hl], d                                    ; $4DF3: $72
    jr nz, jr_013_4E59                            ; $4DF4: $20 $63

    ld l, a                                       ; $4DF6: $6F
    ld l, [hl]                                    ; $4DF7: $6E

jr_013_4DF8:
    ld [hl], h                                    ; $4DF8: $74
    ld [hl], d                                    ; $4DF9: $72
    ld l, a                                       ; $4DFA: $6F

jr_013_4DFB:
    ld l, h                                       ; $4DFB: $6C
    ld l, $FE                                     ; $4DFC: $2E $FE
    db $FD                                        ; $4DFE: $FD
    sbc d                                         ; $4DFF: $9A
    ld b, l                                       ; $4E00: $45
    inc de                                        ; $4E01: $13
    ldh [$50], a                                  ; $4E02: $E0 $50
    sbc e                                         ; $4E04: $9B
    ld hl, sp+$7C                                 ; $4E05: $F8 $7C
    sbc a                                         ; $4E07: $9F
    ld b, c                                       ; $4E08: $41
    ld l, h                                       ; $4E09: $6C
    ld [hl], a                                    ; $4E0A: $77
    ld h, c                                       ; $4E0B: $61
    ld a, c                                       ; $4E0C: $79
    ld [hl], e                                    ; $4E0D: $73
    jr nz, jr_013_4E82                            ; $4E0E: $20 $72

    ld h, l                                       ; $4E10: $65
    ld l, l                                       ; $4E11: $6D
    ld h, l                                       ; $4E12: $65
    ld l, l                                       ; $4E13: $6D

jr_013_4E14:
    ld h, d                                       ; $4E14: $62

jr_013_4E15:
    ld h, l                                       ; $4E15: $65
    ld [hl], d                                    ; $4E16: $72
    rst $38                                       ; $4E17: $FF
    ld [hl], h                                    ; $4E18: $74
    ld l, a                                       ; $4E19: $6F
    jr nz, jr_013_4E73                            ; $4E1A: $20 $57

    ld b, c                                       ; $4E1C: $41
    ld d, h                                       ; $4E1D: $54
    ld b, e                                       ; $4E1E: $43
    ld c, b                                       ; $4E1F: $48
    jr nz, @+$5B                                  ; $4E20: $20 $59

    ld c, a                                       ; $4E22: $4F

jr_013_4E23:
    ld d, l                                       ; $4E23: $55
    ld d, d                                       ; $4E24: $52
    cp $45                                        ; $4E25: $FE $45
    ld c, [hl]                                    ; $4E27: $4E
    ld b, l                                       ; $4E28: $45
    ld d, d                                       ; $4E29: $52
    ld b, a                                       ; $4E2A: $47
    ld e, c                                       ; $4E2B: $59
    ld hl, $4420                                  ; $4E2C: $21 $20 $44
    ld l, a                                       ; $4E2F: $6F
    ld l, [hl]                                    ; $4E30: $6E
    daa                                           ; $4E31: $27
    ld [hl], h                                    ; $4E32: $74
    rst $38                                       ; $4E33: $FF
    ld h, h                                       ; $4E34: $64
    ld [hl], d                                    ; $4E35: $72
    ld h, c                                       ; $4E36: $61
    ld l, c                                       ; $4E37: $69
    ld l, [hl]                                    ; $4E38: $6E

jr_013_4E39:
    jr nz, @+$7B                                  ; $4E39: $20 $79

    ld l, a                                       ; $4E3B: $6F
    ld [hl], l                                    ; $4E3C: $75
    ld [hl], d                                    ; $4E3D: $72
    ld [hl], e                                    ; $4E3E: $73
    ld h, l                                       ; $4E3F: $65
    ld l, h                                       ; $4E40: $6C
    ld h, [hl]                                    ; $4E41: $66
    cp $77                                        ; $4E42: $FE $77
    ld l, c                                       ; $4E44: $69
    ld [hl], h                                    ; $4E45: $74
    ld l, b                                       ; $4E46: $68
    jr nz, jr_013_4EBC                            ; $4E47: $20 $73

    ld [hl], b                                    ; $4E49: $70
    ld h, l                                       ; $4E4A: $65

jr_013_4E4B:
    ld l, h                                       ; $4E4B: $6C
    ld l, h                                       ; $4E4C: $6C
    ld [hl], e                                    ; $4E4D: $73
    jr nz, jr_013_4EB9                            ; $4E4E: $20 $69

    ld h, [hl]                                    ; $4E50: $66
    rst $38                                       ; $4E51: $FF
    ld a, c                                       ; $4E52: $79
    ld l, a                                       ; $4E53: $6F
    ld [hl], l                                    ; $4E54: $75
    jr nz, jr_013_4EBB                            ; $4E55: $20 $64

    ld l, a                                       ; $4E57: $6F
    ld l, [hl]                                    ; $4E58: $6E

jr_013_4E59:
    daa                                           ; $4E59: $27
    ld [hl], h                                    ; $4E5A: $74
    jr nz, jr_013_4EC5                            ; $4E5B: $20 $68

    ld h, c                                       ; $4E5D: $61
    halt                                          ; $4E5E: $76
    ld h, l                                       ; $4E5F: $65
    cp $61                                        ; $4E60: $FE $61
    jr nz, @+$69                                  ; $4E62: $20 $67

    ld l, a                                       ; $4E64: $6F
    ld l, a                                       ; $4E65: $6F
    ld h, h                                       ; $4E66: $64
    jr nz, jr_013_4ECD                            ; $4E67: $20 $64

    ld h, l                                       ; $4E69: $65
    ld h, [hl]                                    ; $4E6A: $66
    ld h, l                                       ; $4E6B: $65
    ld l, [hl]                                    ; $4E6C: $6E
    ld [hl], e                                    ; $4E6D: $73
    ld h, l                                       ; $4E6E: $65
    ld l, $FF                                     ; $4E6F: $2E $FF
    daa                                           ; $4E71: $27
    ld b, e                                       ; $4E72: $43

jr_013_4E73:
    ld h, c                                       ; $4E73: $61
    ld [hl], l                                    ; $4E74: $75
    ld [hl], e                                    ; $4E75: $73
    ld h, l                                       ; $4E76: $65
    jr nz, jr_013_4EE2                            ; $4E77: $20 $69

    ld h, [hl]                                    ; $4E79: $66
    jr nz, jr_013_4EF5                            ; $4E7A: $20 $79

    ld l, a                                       ; $4E7C: $6F
    ld [hl], l                                    ; $4E7D: $75
    cp $61                                        ; $4E7E: $FE $61
    ld l, [hl]                                    ; $4E80: $6E
    ld h, h                                       ; $4E81: $64

jr_013_4E82:
    jr nz, jr_013_4EFD                            ; $4E82: $20 $79

    ld l, a                                       ; $4E84: $6F
    ld [hl], l                                    ; $4E85: $75
    ld [hl], d                                    ; $4E86: $72
    rst $38                                       ; $4E87: $FF
    ld h, e                                       ; $4E88: $63
    ld [hl], d                                    ; $4E89: $72
    ld h, l                                       ; $4E8A: $65
    ld h, c                                       ; $4E8B: $61
    ld [hl], h                                    ; $4E8C: $74
    ld [hl], l                                    ; $4E8D: $75
    ld [hl], d                                    ; $4E8E: $72
    ld h, l                                       ; $4E8F: $65
    ld [hl], e                                    ; $4E90: $73
    jr nz, jr_013_4F05                            ; $4E91: $20 $72

    ld [hl], l                                    ; $4E93: $75
    ld l, [hl]                                    ; $4E94: $6E
    cp $6F                                        ; $4E95: $FE $6F
    ld [hl], l                                    ; $4E97: $75
    ld [hl], h                                    ; $4E98: $74
    jr nz, jr_013_4F0A                            ; $4E99: $20 $6F

    ld h, [hl]                                    ; $4E9B: $66
    jr nz, jr_013_4F03                            ; $4E9C: $20 $65

    ld l, [hl]                                    ; $4E9E: $6E
    ld h, l                                       ; $4E9F: $65
    ld [hl], d                                    ; $4EA0: $72
    ld h, a                                       ; $4EA1: $67
    ld a, c                                       ; $4EA2: $79
    inc l                                         ; $4EA3: $2C
    rst $38                                       ; $4EA4: $FF
    ld l, c                                       ; $4EA5: $69
    ld [hl], h                                    ; $4EA6: $74
    daa                                           ; $4EA7: $27
    ld [hl], e                                    ; $4EA8: $73
    jr nz, jr_013_4EEC                            ; $4EA9: $20 $41

    ld c, h                                       ; $4EAB: $4C
    ld c, h                                       ; $4EAC: $4C
    jr nz, @+$51                                  ; $4EAD: $20 $4F

    ld d, [hl]                                    ; $4EAF: $56
    ld b, l                                       ; $4EB0: $45
    ld d, d                                       ; $4EB1: $52
    ld hl, $FDFE                                  ; $4EB2: $21 $FE $FD
    sbc e                                         ; $4EB5: $9B
    ld a, b                                       ; $4EB6: $78
    ld [hl], b                                    ; $4EB7: $70
    sbc a                                         ; $4EB8: $9F

jr_013_4EB9:
    ld b, c                                       ; $4EB9: $41
    ld l, [hl]                                    ; $4EBA: $6E

jr_013_4EBB:
    ld a, c                                       ; $4EBB: $79

jr_013_4EBC:
    ld [hl], h                                    ; $4EBC: $74
    ld l, b                                       ; $4EBD: $68
    ld l, c                                       ; $4EBE: $69
    ld l, [hl]                                    ; $4EBF: $6E
    ld h, a                                       ; $4EC0: $67
    jr nz, jr_013_4F28                            ; $4EC1: $20 $65

    ld l, h                                       ; $4EC3: $6C
    ld [hl], e                                    ; $4EC4: $73

jr_013_4EC5:
    ld h, l                                       ; $4EC5: $65
    ccf                                           ; $4EC6: $3F
    cp $FD                                        ; $4EC7: $FE $FD
    sbc e                                         ; $4EC9: $9B
    ld hl, sp+$7C                                 ; $4ECA: $F8 $7C
    sbc a                                         ; $4ECC: $9F

jr_013_4ECD:
    ld b, h                                       ; $4ECD: $44
    ld l, a                                       ; $4ECE: $6F
    ld l, [hl]                                    ; $4ECF: $6E
    daa                                           ; $4ED0: $27
    ld [hl], h                                    ; $4ED1: $74
    jr nz, jr_013_4F36                            ; $4ED2: $20 $62

    ld h, l                                       ; $4ED4: $65
    jr nz, jr_013_4F38                            ; $4ED5: $20 $61

    ld h, [hl]                                    ; $4ED7: $66
    ld [hl], d                                    ; $4ED8: $72
    ld h, c                                       ; $4ED9: $61
    ld l, c                                       ; $4EDA: $69
    ld h, h                                       ; $4EDB: $64
    rst $38                                       ; $4EDC: $FF
    ld [hl], h                                    ; $4EDD: $74
    ld l, a                                       ; $4EDE: $6F
    jr nz, @+$54                                  ; $4EDF: $20 $52

    ld d, l                                       ; $4EE1: $55

jr_013_4EE2:
    ld c, [hl]                                    ; $4EE2: $4E
    jr nz, jr_013_4F4E                            ; $4EE3: $20 $69

    ld h, [hl]                                    ; $4EE5: $66
    jr nz, jr_013_4F61                            ; $4EE6: $20 $79

    ld l, a                                       ; $4EE8: $6F
    ld [hl], l                                    ; $4EE9: $75
    cp $68                                        ; $4EEA: $FE $68

jr_013_4EEC:
    ld h, c                                       ; $4EEC: $61
    halt                                          ; $4EED: $76
    ld h, l                                       ; $4EEE: $65
    jr nz, jr_013_4F65                            ; $4EEF: $20 $74

    ld l, a                                       ; $4EF1: $6F
    ld hl, $5920                                  ; $4EF2: $21 $20 $59

jr_013_4EF5:
    ld l, a                                       ; $4EF5: $6F
    ld [hl], l                                    ; $4EF6: $75
    rst $38                                       ; $4EF7: $FF
    ld h, h                                       ; $4EF8: $64
    ld l, a                                       ; $4EF9: $6F
    ld l, [hl]                                    ; $4EFA: $6E
    daa                                           ; $4EFB: $27
    ld [hl], h                                    ; $4EFC: $74

jr_013_4EFD:
    jr nz, @+$69                                  ; $4EFD: $20 $67

    ld h, l                                       ; $4EFF: $65
    ld [hl], h                                    ; $4F00: $74
    jr nz, jr_013_4F64                            ; $4F01: $20 $61

jr_013_4F03:
    ld l, [hl]                                    ; $4F03: $6E
    ld a, c                                       ; $4F04: $79

jr_013_4F05:
    cp $72                                        ; $4F05: $FE $72
    ld h, l                                       ; $4F07: $65
    ld [hl], a                                    ; $4F08: $77
    ld h, c                                       ; $4F09: $61

jr_013_4F0A:
    ld [hl], d                                    ; $4F0A: $72
    ld h, h                                       ; $4F0B: $64
    jr nz, jr_013_4F74                            ; $4F0C: $20 $66

    ld l, a                                       ; $4F0E: $6F
    ld [hl], d                                    ; $4F0F: $72
    rst $38                                       ; $4F10: $FF
    ld [hl], d                                    ; $4F11: $72
    ld [hl], l                                    ; $4F12: $75
    ld l, [hl]                                    ; $4F13: $6E
    ld l, [hl]                                    ; $4F14: $6E
    ld l, c                                       ; $4F15: $69
    ld l, [hl]                                    ; $4F16: $6E
    ld h, a                                       ; $4F17: $67
    jr nz, jr_013_4F7B                            ; $4F18: $20 $61

    ld [hl], a                                    ; $4F1A: $77
    ld h, c                                       ; $4F1B: $61
    ld a, c                                       ; $4F1C: $79
    inc l                                         ; $4F1D: $2C
    cp $62                                        ; $4F1E: $FE $62
    ld [hl], l                                    ; $4F20: $75
    ld [hl], h                                    ; $4F21: $74
    jr nz, jr_013_4F9D                            ; $4F22: $20 $79

    ld l, a                                       ; $4F24: $6F
    ld [hl], l                                    ; $4F25: $75
    jr nz, jr_013_4F9F                            ; $4F26: $20 $77

jr_013_4F28:
    ld l, a                                       ; $4F28: $6F
    ld [hl], l                                    ; $4F29: $75
    ld l, h                                       ; $4F2A: $6C
    ld h, h                                       ; $4F2B: $64
    rst $38                                       ; $4F2C: $FF
    ld [hl], h                                    ; $4F2D: $74
    ld l, b                                       ; $4F2E: $68
    ld l, c                                       ; $4F2F: $69
    ld l, [hl]                                    ; $4F30: $6E
    ld l, e                                       ; $4F31: $6B
    jr nz, jr_013_4F95                            ; $4F32: $20 $61

    halt                                          ; $4F34: $76
    ld l, a                                       ; $4F35: $6F

jr_013_4F36:
    ld l, c                                       ; $4F36: $69
    ld h, h                                       ; $4F37: $64

jr_013_4F38:
    ld l, c                                       ; $4F38: $69
    ld l, [hl]                                    ; $4F39: $6E
    ld h, a                                       ; $4F3A: $67
    cp $61                                        ; $4F3B: $FE $61
    jr nz, jr_013_4FA7                            ; $4F3D: $20 $68

    ld [hl], l                                    ; $4F3F: $75
    ld h, a                                       ; $4F40: $67
    ld h, l                                       ; $4F41: $65
    jr nz, jr_013_4FA6                            ; $4F42: $20 $62

    ld h, l                                       ; $4F44: $65
    ld h, c                                       ; $4F45: $61
    ld [hl], h                                    ; $4F46: $74
    ld h, h                                       ; $4F47: $64
    ld l, a                                       ; $4F48: $6F
    ld [hl], a                                    ; $4F49: $77
    ld l, [hl]                                    ; $4F4A: $6E
    rst $38                                       ; $4F4B: $FF
    ld l, c                                       ; $4F4C: $69
    ld [hl], e                                    ; $4F4D: $73

jr_013_4F4E:
    jr nz, jr_013_4FB5                            ; $4F4E: $20 $65

    ld l, [hl]                                    ; $4F50: $6E
    ld l, a                                       ; $4F51: $6F
    ld [hl], l                                    ; $4F52: $75
    ld h, a                                       ; $4F53: $67
    ld l, b                                       ; $4F54: $68
    jr nz, jr_013_4FBD                            ; $4F55: $20 $66

    ld l, a                                       ; $4F57: $6F
    ld [hl], d                                    ; $4F58: $72
    cp $6D                                        ; $4F59: $FE $6D
    ld l, a                                       ; $4F5B: $6F
    ld [hl], e                                    ; $4F5C: $73
    ld [hl], h                                    ; $4F5D: $74
    jr nz, @+$72                                  ; $4F5E: $20 $70

    ld h, l                                       ; $4F60: $65

jr_013_4F61:
    ld l, a                                       ; $4F61: $6F
    ld [hl], b                                    ; $4F62: $70
    ld l, h                                       ; $4F63: $6C

jr_013_4F64:
    ld h, l                                       ; $4F64: $65

jr_013_4F65:
    ld hl, $55FE                                  ; $4F65: $21 $FE $55
    ld l, [hl]                                    ; $4F68: $6E
    ld h, [hl]                                    ; $4F69: $66
    ld l, a                                       ; $4F6A: $6F
    ld [hl], d                                    ; $4F6B: $72
    ld [hl], h                                    ; $4F6C: $74
    ld [hl], l                                    ; $4F6D: $75
    ld l, [hl]                                    ; $4F6E: $6E
    ld h, c                                       ; $4F6F: $61
    ld [hl], h                                    ; $4F70: $74
    ld h, l                                       ; $4F71: $65
    ld l, h                                       ; $4F72: $6C
    ld a, c                                       ; $4F73: $79

jr_013_4F74:
    inc l                                         ; $4F74: $2C
    rst $38                                       ; $4F75: $FF
    ld a, c                                       ; $4F76: $79
    ld l, a                                       ; $4F77: $6F
    ld [hl], l                                    ; $4F78: $75
    jr nz, jr_013_4FDE                            ; $4F79: $20 $63

jr_013_4F7B:
    ld h, c                                       ; $4F7B: $61
    ld l, [hl]                                    ; $4F7C: $6E
    jr nz, jr_013_4FEE                            ; $4F7D: $20 $6F

    ld l, [hl]                                    ; $4F7F: $6E
    ld l, h                                       ; $4F80: $6C
    ld a, c                                       ; $4F81: $79
    cp $72                                        ; $4F82: $FE $72
    ld [hl], l                                    ; $4F84: $75
    ld l, [hl]                                    ; $4F85: $6E
    jr nz, jr_013_4FE9                            ; $4F86: $20 $61

    ld [hl], a                                    ; $4F88: $77
    ld h, c                                       ; $4F89: $61
    ld a, c                                       ; $4F8A: $79
    jr nz, jr_013_4FF3                            ; $4F8B: $20 $66

    ld [hl], d                                    ; $4F8D: $72
    ld l, a                                       ; $4F8E: $6F
    ld l, l                                       ; $4F8F: $6D
    rst $38                                       ; $4F90: $FF
    ld b, e                                       ; $4F91: $43
    ld [hl], d                                    ; $4F92: $72
    ld h, l                                       ; $4F93: $65
    ld h, c                                       ; $4F94: $61

jr_013_4F95:
    ld [hl], h                                    ; $4F95: $74
    ld [hl], l                                    ; $4F96: $75
    ld [hl], d                                    ; $4F97: $72
    ld h, l                                       ; $4F98: $65
    cp $62                                        ; $4F99: $FE $62
    ld h, c                                       ; $4F9B: $61
    ld [hl], h                                    ; $4F9C: $74

jr_013_4F9D:
    ld [hl], h                                    ; $4F9D: $74
    ld l, h                                       ; $4F9E: $6C

jr_013_4F9F:
    ld h, l                                       ; $4F9F: $65
    ld [hl], e                                    ; $4FA0: $73
    ld l, $FF                                     ; $4FA1: $2E $FF
    ld c, l                                       ; $4FA3: $4D
    ld h, c                                       ; $4FA4: $61
    ld h, a                                       ; $4FA5: $67

jr_013_4FA6:
    ld l, c                                       ; $4FA6: $69

jr_013_4FA7:
    jr nz, jr_013_500B                            ; $4FA7: $20 $62

    ld h, c                                       ; $4FA9: $61
    ld [hl], h                                    ; $4FAA: $74
    ld [hl], h                                    ; $4FAB: $74
    ld l, h                                       ; $4FAC: $6C
    ld h, l                                       ; $4FAD: $65
    ld [hl], e                                    ; $4FAE: $73
    cp $61                                        ; $4FAF: $FE $61
    ld [hl], d                                    ; $4FB1: $72
    ld h, l                                       ; $4FB2: $65
    jr nz, jr_013_501D                            ; $4FB3: $20 $68

jr_013_4FB5:
    ld l, a                                       ; $4FB5: $6F
    ld l, [hl]                                    ; $4FB6: $6E
    ld l, a                                       ; $4FB7: $6F
    ld [hl], d                                    ; $4FB8: $72
    ld h, c                                       ; $4FB9: $61
    ld h, d                                       ; $4FBA: $62
    ld l, h                                       ; $4FBB: $6C
    ld h, l                                       ; $4FBC: $65

jr_013_4FBD:
    rst $38                                       ; $4FBD: $FF
    ld h, h                                       ; $4FBE: $64
    ld [hl], l                                    ; $4FBF: $75
    ld h, l                                       ; $4FC0: $65
    ld l, h                                       ; $4FC1: $6C
    ld [hl], e                                    ; $4FC2: $73
    jr nz, jr_013_5038                            ; $4FC3: $20 $73

    ld l, a                                       ; $4FC5: $6F
    jr nz, jr_013_502C                            ; $4FC6: $20 $64

    ld l, a                                       ; $4FC8: $6F
    ld l, [hl]                                    ; $4FC9: $6E
    daa                                           ; $4FCA: $27
    ld [hl], h                                    ; $4FCB: $74
    cp $64                                        ; $4FCC: $FE $64
    ld l, a                                       ; $4FCE: $6F
    jr nz, jr_013_5032                            ; $4FCF: $20 $61

    ld l, [hl]                                    ; $4FD1: $6E
    ld a, c                                       ; $4FD2: $79
    ld [hl], h                                    ; $4FD3: $74
    ld l, b                                       ; $4FD4: $68
    ld l, c                                       ; $4FD5: $69
    ld l, [hl]                                    ; $4FD6: $6E
    daa                                           ; $4FD7: $27
    rst $38                                       ; $4FD8: $FF
    ld h, e                                       ; $4FD9: $63
    ld l, a                                       ; $4FDA: $6F
    ld [hl], a                                    ; $4FDB: $77
    ld h, c                                       ; $4FDC: $61
    ld [hl], d                                    ; $4FDD: $72

jr_013_4FDE:
    ld h, h                                       ; $4FDE: $64
    ld l, h                                       ; $4FDF: $6C
    ld a, c                                       ; $4FE0: $79
    jr nz, @+$71                                  ; $4FE1: $20 $6F

    ld [hl], d                                    ; $4FE3: $72
    cp $79                                        ; $4FE4: $FE $79
    ld l, a                                       ; $4FE6: $6F
    ld [hl], l                                    ; $4FE7: $75
    daa                                           ; $4FE8: $27

jr_013_4FE9:
    ld l, h                                       ; $4FE9: $6C
    ld l, h                                       ; $4FEA: $6C
    jr nz, jr_013_504F                            ; $4FEB: $20 $62

    ld h, l                                       ; $4FED: $65

jr_013_4FEE:
    jr nz, @+$6F                                  ; $4FEE: $20 $6D

    ld h, c                                       ; $4FF0: $61
    ld h, h                                       ; $4FF1: $64
    ld h, l                                       ; $4FF2: $65

jr_013_4FF3:
    rst $38                                       ; $4FF3: $FF
    ld h, [hl]                                    ; $4FF4: $66
    ld [hl], l                                    ; $4FF5: $75
    ld l, [hl]                                    ; $4FF6: $6E
    jr nz, @+$71                                  ; $4FF7: $20 $6F

    ld h, [hl]                                    ; $4FF9: $66
    ld hl, $FDFE                                  ; $4FFA: $21 $FE $FD
    sbc d                                         ; $4FFD: $9A
    ld b, l                                       ; $4FFE: $45
    inc de                                        ; $4FFF: $13
    ldh [$50], a                                  ; $5000: $E0 $50
    sbc c                                         ; $5002: $99
    sbc e                                         ; $5003: $9B
    ld hl, sp+$7C                                 ; $5004: $F8 $7C
    sbc a                                         ; $5006: $9F
    ld b, c                                       ; $5007: $41
    jr nz, jr_013_504D                            ; $5008: $20 $43

    ld [hl], d                                    ; $500A: $72

jr_013_500B:
    ld h, l                                       ; $500B: $65
    ld h, c                                       ; $500C: $61
    ld [hl], h                                    ; $500D: $74
    ld [hl], l                                    ; $500E: $75
    ld [hl], d                                    ; $500F: $72
    ld h, l                                       ; $5010: $65
    rst $38                                       ; $5011: $FF
    ld h, d                                       ; $5012: $62
    ld h, c                                       ; $5013: $61
    ld [hl], h                                    ; $5014: $74
    ld [hl], h                                    ; $5015: $74
    ld l, h                                       ; $5016: $6C
    ld h, l                                       ; $5017: $65
    jr nz, jr_013_5083                            ; $5018: $20 $69

    ld [hl], e                                    ; $501A: $73
    jr nz, jr_013_5082                            ; $501B: $20 $65

jr_013_501D:
    ld h, c                                       ; $501D: $61
    ld [hl], e                                    ; $501E: $73
    ld a, c                                       ; $501F: $79
    cp $74                                        ; $5020: $FE $74
    ld l, a                                       ; $5022: $6F
    jr nz, jr_013_508C                            ; $5023: $20 $67

    ld h, l                                       ; $5025: $65
    ld [hl], h                                    ; $5026: $74
    jr nz, jr_013_5092                            ; $5027: $20 $69

    ld l, [hl]                                    ; $5029: $6E
    ld [hl], h                                    ; $502A: $74
    ld l, a                                       ; $502B: $6F

jr_013_502C:
    ld hl, $57FF                                  ; $502C: $21 $FF $57
    ld l, b                                       ; $502F: $68
    ld h, l                                       ; $5030: $65
    ld l, [hl]                                    ; $5031: $6E

jr_013_5032:
    ld h, l                                       ; $5032: $65
    halt                                          ; $5033: $76
    ld h, l                                       ; $5034: $65
    ld [hl], d                                    ; $5035: $72
    jr nz, jr_013_50AB                            ; $5036: $20 $73

jr_013_5038:
    ld l, a                                       ; $5038: $6F
    ld l, l                                       ; $5039: $6D
    ld h, l                                       ; $503A: $65
    cp $63                                        ; $503B: $FE $63
    ld [hl], d                                    ; $503D: $72
    ld h, l                                       ; $503E: $65
    ld h, c                                       ; $503F: $61
    ld [hl], h                                    ; $5040: $74
    ld [hl], l                                    ; $5041: $75
    ld [hl], d                                    ; $5042: $72
    ld h, l                                       ; $5043: $65
    ld [hl], e                                    ; $5044: $73
    jr nz, @+$63                                  ; $5045: $20 $61

    ld [hl], d                                    ; $5047: $72
    ld h, l                                       ; $5048: $65
    rst $38                                       ; $5049: $FF
    ld l, [hl]                                    ; $504A: $6E
    ld h, l                                       ; $504B: $65
    ld h, c                                       ; $504C: $61

jr_013_504D:
    ld [hl], d                                    ; $504D: $72
    ld h, d                                       ; $504E: $62

jr_013_504F:
    ld a, c                                       ; $504F: $79
    inc l                                         ; $5050: $2C
    jr nz, jr_013_50CC                            ; $5051: $20 $79

    ld l, a                                       ; $5053: $6F
    ld [hl], l                                    ; $5054: $75
    daa                                           ; $5055: $27
    ld l, h                                       ; $5056: $6C
    ld l, h                                       ; $5057: $6C
    cp $73                                        ; $5058: $FE $73
    ld h, l                                       ; $505A: $65
    ld h, l                                       ; $505B: $65
    jr nz, @+$63                                  ; $505C: $20 $61

    jr nz, jr_013_50C2                            ; $505E: $20 $62

    ld [hl], l                                    ; $5060: $75
    ld [hl], d                                    ; $5061: $72
    ld [hl], e                                    ; $5062: $73
    ld [hl], h                                    ; $5063: $74
    jr nz, @+$71                                  ; $5064: $20 $6F

    ld h, [hl]                                    ; $5066: $66
    cp $44                                        ; $5067: $FE $44
    ld [hl], d                                    ; $5069: $72
    ld h, l                                       ; $506A: $65
    ld h, c                                       ; $506B: $61
    ld l, l                                       ; $506C: $6D
    jr nz, jr_013_50B4                            ; $506D: $20 $45

    ld l, [hl]                                    ; $506F: $6E
    ld h, l                                       ; $5070: $65
    ld [hl], d                                    ; $5071: $72
    ld h, a                                       ; $5072: $67
    ld a, c                                       ; $5073: $79
    ld hl, $4AFE                                  ; $5074: $21 $FE $4A
    ld [hl], l                                    ; $5077: $75
    ld [hl], e                                    ; $5078: $73
    ld [hl], h                                    ; $5079: $74
    jr nz, jr_013_50EE                            ; $507A: $20 $72

    ld [hl], l                                    ; $507C: $75
    ld l, [hl]                                    ; $507D: $6E
    jr nz, jr_013_50F2                            ; $507E: $20 $72

    ld l, c                                       ; $5080: $69
    ld h, a                                       ; $5081: $67

jr_013_5082:
    ld l, b                                       ; $5082: $68

jr_013_5083:
    ld [hl], h                                    ; $5083: $74
    rst $38                                       ; $5084: $FF
    ld l, c                                       ; $5085: $69
    ld l, [hl]                                    ; $5086: $6E
    ld [hl], h                                    ; $5087: $74
    ld l, a                                       ; $5088: $6F
    jr nz, jr_013_50F4                            ; $5089: $20 $69

    ld [hl], h                                    ; $508B: $74

jr_013_508C:
    jr nz, jr_013_50EF                            ; $508C: $20 $61

    ld l, [hl]                                    ; $508E: $6E
    ld h, h                                       ; $508F: $64
    cp $79                                        ; $5090: $FE $79

jr_013_5092:
    ld l, a                                       ; $5092: $6F
    ld [hl], l                                    ; $5093: $75
    daa                                           ; $5094: $27
    ld l, h                                       ; $5095: $6C
    ld l, h                                       ; $5096: $6C
    jr nz, jr_013_50FF                            ; $5097: $20 $66

    ld l, c                                       ; $5099: $69
    ld l, [hl]                                    ; $509A: $6E
    ld h, h                                       ; $509B: $64
    rst $38                                       ; $509C: $FF
    ld h, e                                       ; $509D: $63
    ld [hl], d                                    ; $509E: $72
    ld h, l                                       ; $509F: $65
    ld h, c                                       ; $50A0: $61
    ld [hl], h                                    ; $50A1: $74
    ld [hl], l                                    ; $50A2: $75
    ld [hl], d                                    ; $50A3: $72
    ld h, l                                       ; $50A4: $65
    ld [hl], e                                    ; $50A5: $73
    ld hl, $46FE                                  ; $50A6: $21 $FE $46
    ld [hl], d                                    ; $50A9: $72
    ld l, a                                       ; $50AA: $6F

jr_013_50AB:
    ld l, l                                       ; $50AB: $6D
    jr nz, @+$76                                  ; $50AC: $20 $74

    ld l, b                                       ; $50AE: $68
    ld h, l                                       ; $50AF: $65
    ld [hl], d                                    ; $50B0: $72
    ld h, l                                       ; $50B1: $65
    inc l                                         ; $50B2: $2C
    rst $38                                       ; $50B3: $FF

jr_013_50B4:
    ld a, c                                       ; $50B4: $79
    ld l, a                                       ; $50B5: $6F
    ld [hl], l                                    ; $50B6: $75
    jr nz, @+$65                                  ; $50B7: $20 $63

    ld h, c                                       ; $50B9: $61
    ld l, [hl]                                    ; $50BA: $6E
    jr nz, jr_013_5121                            ; $50BB: $20 $64

    ld l, a                                       ; $50BD: $6F
    cp $62                                        ; $50BE: $FE $62
    ld h, c                                       ; $50C0: $61
    ld [hl], h                                    ; $50C1: $74

jr_013_50C2:
    ld [hl], h                                    ; $50C2: $74
    ld l, h                                       ; $50C3: $6C
    ld h, l                                       ; $50C4: $65
    jr nz, @+$63                                  ; $50C5: $20 $61

    ld l, [hl]                                    ; $50C7: $6E
    ld h, h                                       ; $50C8: $64
    jr nz, jr_013_513F                            ; $50C9: $20 $74

    ld [hl], d                                    ; $50CB: $72

jr_013_50CC:
    ld a, c                                       ; $50CC: $79
    rst $38                                       ; $50CD: $FF
    ld [hl], h                                    ; $50CE: $74
    ld l, a                                       ; $50CF: $6F
    jr nz, jr_013_5140                            ; $50D0: $20 $6E

    ld h, c                                       ; $50D2: $61
    ld h, d                                       ; $50D3: $62
    jr nz, jr_013_50FD                            ; $50D4: $20 $27

    ld h, l                                       ; $50D6: $65
    ld l, l                                       ; $50D7: $6D
    ld hl, $FDFE                                  ; $50D8: $21 $FE $FD
    sbc d                                         ; $50DB: $9A
    ld b, l                                       ; $50DC: $45
    inc de                                        ; $50DD: $13
    ldh [$50], a                                  ; $50DE: $E0 $50
    sbc e                                         ; $50E0: $9B
    ld hl, sp+$7C                                 ; $50E1: $F8 $7C
    sbc a                                         ; $50E3: $9F
    ld d, a                                       ; $50E4: $57
    ld h, c                                       ; $50E5: $61
    ld l, [hl]                                    ; $50E6: $6E
    ld [hl], h                                    ; $50E7: $74
    jr nz, jr_013_515E                            ; $50E8: $20 $74

    ld l, a                                       ; $50EA: $6F
    jr nz, jr_013_5158                            ; $50EB: $20 $6B

    ld l, [hl]                                    ; $50ED: $6E

jr_013_50EE:
    ld l, a                                       ; $50EE: $6F

jr_013_50EF:
    ld [hl], a                                    ; $50EF: $77
    rst $38                                       ; $50F0: $FF
    ld h, c                                       ; $50F1: $61

jr_013_50F2:
    ld l, [hl]                                    ; $50F2: $6E
    ld a, c                                       ; $50F3: $79

jr_013_50F4:
    ld [hl], h                                    ; $50F4: $74
    ld l, b                                       ; $50F5: $68
    ld l, c                                       ; $50F6: $69
    ld l, [hl]                                    ; $50F7: $6E
    ld h, a                                       ; $50F8: $67
    jr nz, jr_013_5160                            ; $50F9: $20 $65

    ld l, h                                       ; $50FB: $6C
    ld [hl], e                                    ; $50FC: $73

jr_013_50FD:
    ld h, l                                       ; $50FD: $65
    inc l                                         ; $50FE: $2C

jr_013_50FF:
    cp $62                                        ; $50FF: $FE $62
    ld [hl], d                                    ; $5101: $72
    ld l, a                                       ; $5102: $6F
    ld [hl], h                                    ; $5103: $74
    ld l, b                                       ; $5104: $68
    ld h, l                                       ; $5105: $65
    ld [hl], d                                    ; $5106: $72
    ccf                                           ; $5107: $3F
    cp $FD                                        ; $5108: $FE $FD
    sbc e                                         ; $510A: $9B
    ld a, b                                       ; $510B: $78
    ld [hl], b                                    ; $510C: $70
    sbc a                                         ; $510D: $9F
    jr nz, @+$51                                  ; $510E: $20 $4F

    ld c, a                                       ; $5110: $4F
    ld c, a                                       ; $5111: $4F
    ld c, a                                       ; $5112: $4F
    ld c, a                                       ; $5113: $4F
    ld c, b                                       ; $5114: $48
    jr nz, jr_013_5170                            ; $5115: $20 $59

    ld b, l                                       ; $5117: $45
    ld b, c                                       ; $5118: $41
    ld c, b                                       ; $5119: $48
    ld c, b                                       ; $511A: $48
    ld hl, $FF21                                  ; $511B: $21 $21 $FF
    jr nz, jr_013_5175                            ; $511E: $20 $55

    ld l, b                                       ; $5120: $68

jr_013_5121:
    ld l, $2E                                     ; $5121: $2E $2E
    ld l, $20                                     ; $5123: $2E $20
    ld l, [hl]                                    ; $5125: $6E
    ld l, a                                       ; $5126: $6F
    ld l, $FD                                     ; $5127: $2E $FD
    sbc h                                         ; $5129: $9C
    ld [bc], a                                    ; $512A: $02
    inc de                                        ; $512B: $13
    scf                                           ; $512C: $37
    ld b, d                                       ; $512D: $42
    inc de                                        ; $512E: $13
    ld sp, $9B51                                  ; $512F: $31 $51 $9B
    ld hl, sp+$7C                                 ; $5132: $F8 $7C
    sbc a                                         ; $5134: $9F
    ld c, a                                       ; $5135: $4F
    ld c, a                                       ; $5136: $4F
    ld c, a                                       ; $5137: $4F
    ld c, a                                       ; $5138: $4F
    ld c, a                                       ; $5139: $4F
    ld c, b                                       ; $513A: $48
    jr nz, jr_013_5196                            ; $513B: $20 $59

    ld b, l                                       ; $513D: $45
    ld b, c                                       ; $513E: $41

jr_013_513F:
    ld c, b                                       ; $513F: $48

jr_013_5140:
    ld c, b                                       ; $5140: $48
    ld c, b                                       ; $5141: $48
    ld hl, $44FE                                  ; $5142: $21 $FE $44
    ld c, c                                       ; $5145: $49
    ld b, a                                       ; $5146: $47
    jr nz, jr_013_5192                            ; $5147: $20 $49

    ld d, h                                       ; $5149: $54
    ld hl, $5720                                  ; $514A: $21 $20 $57
    ld c, a                                       ; $514D: $4F
    ld c, a                                       ; $514E: $4F
    ld c, a                                       ; $514F: $4F
    ld hl, $FDFE                                  ; $5150: $21 $FE $FD
    sbc e                                         ; $5153: $9B
    ld a, b                                       ; $5154: $78
    ld [hl], b                                    ; $5155: $70
    sbc a                                         ; $5156: $9F
    ld c, c                                       ; $5157: $49

jr_013_5158:
    jr nz, jr_013_51CE                            ; $5158: $20 $74

    ld l, b                                       ; $515A: $68
    ld l, c                                       ; $515B: $69
    ld l, [hl]                                    ; $515C: $6E
    ld l, e                                       ; $515D: $6B

jr_013_515E:
    jr nz, jr_013_51A9                            ; $515E: $20 $49

jr_013_5160:
    daa                                           ; $5160: $27
    halt                                          ; $5161: $76
    ld h, l                                       ; $5162: $65
    rst $38                                       ; $5163: $FF
    ld l, b                                       ; $5164: $68
    ld h, c                                       ; $5165: $61
    ld h, h                                       ; $5166: $64
    jr nz, jr_013_51CE                            ; $5167: $20 $65

jr_013_5169:
    ld l, [hl]                                    ; $5169: $6E
    ld l, a                                       ; $516A: $6F
    ld [hl], l                                    ; $516B: $75
    ld h, a                                       ; $516C: $67
    ld l, b                                       ; $516D: $68
    jr nz, jr_013_51DF                            ; $516E: $20 $6F

jr_013_5170:
    ld h, [hl]                                    ; $5170: $66
    cp $74                                        ; $5171: $FE $74
    ld l, b                                       ; $5173: $68
    ld l, c                                       ; $5174: $69

jr_013_5175:
    ld [hl], e                                    ; $5175: $73
    jr nz, jr_013_51DF                            ; $5176: $20 $67

    ld [hl], l                                    ; $5178: $75
    ld a, c                                       ; $5179: $79
    ld l, $2E                                     ; $517A: $2E $2E
    ld l, $FE                                     ; $517C: $2E $FE
    db $FD                                        ; $517E: $FD
    sbc d                                         ; $517F: $9A
    ld [de], a                                    ; $5180: $12
    sub e                                         ; $5181: $93
    ld h, l                                       ; $5182: $65
    sub e                                         ; $5183: $93
    ld b, e                                       ; $5184: $43
    ld c, a                                       ; $5185: $4F
    ld l, c                                       ; $5186: $69
    ld d, $44                                     ; $5187: $16 $44
    ld h, h                                       ; $5189: $64
    ld bc, $6644                                  ; $518A: $01 $44 $66
    ret nz                                        ; $518D: $C0

    ld e, h                                       ; $518E: $5C

jr_013_518F:
    ld hl, $0005                                  ; $518F: $21 $05 $00

jr_013_5192:
    add c                                         ; $5192: $81
    ld e, l                                       ; $5193: $5D
    inc c                                         ; $5194: $0C
    inc c                                         ; $5195: $0C

jr_013_5196:
    jr c, jr_013_5169                             ; $5196: $38 $D1

    nop                                           ; $5198: $00
    jr nz, jr_013_5196                            ; $5199: $20 $FB

    ld d, b                                       ; $519B: $50
    ld [hl+], a                                   ; $519C: $22
    dec b                                         ; $519D: $05
    ld b, b                                       ; $519E: $40
    dec bc                                        ; $519F: $0B
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    add d                                         ; $51A2: $82
    rra                                           ; $51A3: $1F
    ld a, [de]                                    ; $51A4: $1A
    sub h                                         ; $51A5: $94
    ld b, d                                       ; $51A6: $42
    sub e                                         ; $51A7: $93
    ld h, l                                       ; $51A8: $65

jr_013_51A9:
    sub e                                         ; $51A9: $93
    ld b, e                                       ; $51AA: $43
    ld c, a                                       ; $51AB: $4F
    ld l, c                                       ; $51AC: $69
    ld d, $44                                     ; $51AD: $16 $44
    ld h, h                                       ; $51AF: $64
    ld bc, $6644                                  ; $51B0: $01 $44 $66
    ret nz                                        ; $51B3: $C0

    ld e, h                                       ; $51B4: $5C
    ld hl, $0005                                  ; $51B5: $21 $05 $00
    add c                                         ; $51B8: $81
    ld e, l                                       ; $51B9: $5D
    inc c                                         ; $51BA: $0C
    inc c                                         ; $51BB: $0C

jr_013_51BC:
    jr c, jr_013_518F                             ; $51BC: $38 $D1

    nop                                           ; $51BE: $00
    jr nz, jr_013_51BC                            ; $51BF: $20 $FB

    ld d, b                                       ; $51C1: $50
    ld [hl+], a                                   ; $51C2: $22
    dec b                                         ; $51C3: $05
    ld b, b                                       ; $51C4: $40
    dec b                                         ; $51C5: $05
    ld [bc], a                                    ; $51C6: $02
    db $ED                                        ; $51C7: $ED
    ld h, e                                       ; $51C8: $63
    ld c, $08                                     ; $51C9: $0E $08
    sub $D0                                       ; $51CB: $D6 $D0
    nop                                           ; $51CD: $00

jr_013_51CE:
    inc de                                        ; $51CE: $13
    and $51                                       ; $51CF: $E6 $51
    inc de                                        ; $51D1: $13
    inc l                                         ; $51D2: $2C
    ld d, d                                       ; $51D3: $52
    dec bc                                        ; $51D4: $0B
    nop                                           ; $51D5: $00
    dec bc                                        ; $51D6: $0B
    ld [bc], a                                    ; $51D7: $02
    ld l, e                                       ; $51D8: $6B
    jr nc, jr_013_51E6                            ; $51D9: $30 $0B

    ret nz                                        ; $51DB: $C0

    ld [hl], a                                    ; $51DC: $77
    nop                                           ; $51DD: $00
    add b                                         ; $51DE: $80

jr_013_51DF:
    nop                                           ; $51DF: $00
    nop                                           ; $51E0: $00
    add d                                         ; $51E1: $82
    rra                                           ; $51E2: $1F
    db $10                                        ; $51E3: $10
    sub h                                         ; $51E4: $94
    ld b, d                                       ; $51E5: $42

jr_013_51E6:
    dec d                                         ; $51E6: $15
    rrca                                          ; $51E7: $0F
    inc b                                         ; $51E8: $04
    ld a, c                                       ; $51E9: $79
    db $10                                        ; $51EA: $10
    rrca                                          ; $51EB: $0F
    ld b, h                                       ; $51EC: $44
    ld a, c                                       ; $51ED: $79
    jr z, jr_013_51FF                             ; $51EE: $28 $0F

    inc b                                         ; $51F0: $04
    ld a, c                                       ; $51F1: $79
    db $10                                        ; $51F2: $10
    rrca                                          ; $51F3: $0F
    adc h                                         ; $51F4: $8C
    ld a, c                                       ; $51F5: $79
    ld [$E40F], sp                                ; $51F6: $08 $0F $E4
    ld a, b                                       ; $51F9: $78
    ld [$240F], sp                                ; $51FA: $08 $0F $24
    ld a, c                                       ; $51FD: $79
    db $10                                        ; $51FE: $10

jr_013_51FF:
    rrca                                          ; $51FF: $0F
    db $E4                                        ; $5200: $E4
    ld a, b                                       ; $5201: $78
    ld [$960F], sp                                ; $5202: $08 $0F $96
    ld a, c                                       ; $5205: $79
    ld [$140F], sp                                ; $5206: $08 $0F $14
    ld a, c                                       ; $5209: $79
    db $10                                        ; $520A: $10
    rrca                                          ; $520B: $0F
    ld d, h                                       ; $520C: $54
    ld a, c                                       ; $520D: $79
    jr z, jr_013_521F                             ; $520E: $28 $0F

    inc d                                         ; $5210: $14
    ld a, c                                       ; $5211: $79
    db $10                                        ; $5212: $10
    rrca                                          ; $5213: $0F
    xor d                                         ; $5214: $AA
    ld a, c                                       ; $5215: $79
    ld [$F40F], sp                                ; $5216: $08 $0F $F4
    ld a, b                                       ; $5219: $78
    ld [$340F], sp                                ; $521A: $08 $0F $34
    ld a, c                                       ; $521D: $79
    db $10                                        ; $521E: $10

jr_013_521F:
    rrca                                          ; $521F: $0F
    db $F4                                        ; $5220: $F4
    ld a, b                                       ; $5221: $78
    ld [$A00F], sp                                ; $5222: $08 $0F $A0
    ld a, c                                       ; $5225: $79
    ld [$4500], sp                                ; $5226: $08 $00 $45
    inc de                                        ; $5229: $13
    and $51                                       ; $522A: $E6 $51
    ld b, e                                       ; $522C: $43
    nop                                           ; $522D: $00
    ld h, $A1                                     ; $522E: $26 $A1
    ld [$3C13], sp                                ; $5230: $08 $13 $3C
    ld d, d                                       ; $5233: $52
    ld e, e                                       ; $5234: $5B
    inc de                                        ; $5235: $13
    ld b, h                                       ; $5236: $44
    ld d, d                                       ; $5237: $52
    ld b, l                                       ; $5238: $45
    rrca                                          ; $5239: $0F
    or h                                          ; $523A: $B4
    ld a, c                                       ; $523B: $79
    ld e, e                                       ; $523C: $5B
    inc de                                        ; $523D: $13
    halt                                          ; $523E: $76
    ld d, e                                       ; $523F: $53
    ld b, l                                       ; $5240: $45
    rrca                                          ; $5241: $0F
    or h                                          ; $5242: $B4
    ld a, c                                       ; $5243: $79
    sbc e                                         ; $5244: $9B
    ld hl, sp+$7C                                 ; $5245: $F8 $7C
    sbc a                                         ; $5247: $9F
    ld c, a                                       ; $5248: $4F
    ld c, a                                       ; $5249: $4F
    ld c, a                                       ; $524A: $4F
    ld c, a                                       ; $524B: $4F
    ld c, b                                       ; $524C: $48
    ld c, b                                       ; $524D: $48
    ld c, b                                       ; $524E: $48
    ld c, b                                       ; $524F: $48
    jr nz, jr_013_52AB                            ; $5250: $20 $59

    ld b, l                                       ; $5252: $45
    ld b, c                                       ; $5253: $41
    ld c, b                                       ; $5254: $48
    ld hl, $47FF                                  ; $5255: $21 $FF $47
    ld l, a                                       ; $5258: $6F
    ld [hl], h                                    ; $5259: $74
    ld [hl], h                                    ; $525A: $74
    ld h, c                                       ; $525B: $61
    jr nz, jr_013_52D0                            ; $525C: $20 $72

    ld [hl], l                                    ; $525E: $75
    ld l, [hl]                                    ; $525F: $6E
    jr nz, jr_013_52D6                            ; $5260: $20 $74

    ld l, b                                       ; $5262: $68
    ld l, a                                       ; $5263: $6F
    ld [hl], e                                    ; $5264: $73
    ld h, l                                       ; $5265: $65
    cp $6C                                        ; $5266: $FE $6C
    ld h, c                                       ; $5268: $61
    ld [hl], b                                    ; $5269: $70
    ld [hl], e                                    ; $526A: $73
    ld hl, $4720                                  ; $526B: $21 $20 $47
    ld l, a                                       ; $526E: $6F
    ld [hl], h                                    ; $526F: $74
    ld [hl], h                                    ; $5270: $74
    ld h, c                                       ; $5271: $61
    jr nz, jr_013_52D6                            ; $5272: $20 $62

    ld h, l                                       ; $5274: $65
    rst $38                                       ; $5275: $FF
    ld h, [hl]                                    ; $5276: $66
    ld l, c                                       ; $5277: $69
    ld [hl], h                                    ; $5278: $74
    ld hl, $5720                                  ; $5279: $21 $20 $57
    ld c, a                                       ; $527C: $4F
    ld c, a                                       ; $527D: $4F
    ld c, a                                       ; $527E: $4F
    ld c, a                                       ; $527F: $4F
    ld hl, $FE21                                  ; $5280: $21 $21 $FE
    db $FD                                        ; $5283: $FD
    sbc d                                         ; $5284: $9A
    ld b, b                                       ; $5285: $40
    jr nz, @-$63                                  ; $5286: $20 $9B

    ld hl, sp+$7C                                 ; $5288: $F8 $7C
    sbc a                                         ; $528A: $9F
    ld l, $2E                                     ; $528B: $2E $2E
    ld l, $59                                     ; $528D: $2E $59
    ld c, a                                       ; $528F: $4F
    ld d, l                                       ; $5290: $55
    ld hl, $54FE                                  ; $5291: $21 $FE $54
    ld [hl], d                                    ; $5294: $72
    ld h, c                                       ; $5295: $61
    ld l, c                                       ; $5296: $69
    ld l, [hl]                                    ; $5297: $6E
    ld l, c                                       ; $5298: $69
    ld l, [hl]                                    ; $5299: $6E
    ld h, a                                       ; $529A: $67
    jr nz, jr_013_5306                            ; $529B: $20 $69

    ld [hl], e                                    ; $529D: $73
    rst $38                                       ; $529E: $FF
    ld h, a                                       ; $529F: $67
    ld l, a                                       ; $52A0: $6F
    ld l, a                                       ; $52A1: $6F
    ld h, h                                       ; $52A2: $64
    jr nz, jr_013_530B                            ; $52A3: $20 $66

    ld l, a                                       ; $52A5: $6F
    ld [hl], d                                    ; $52A6: $72
    jr nz, @+$7B                                  ; $52A7: $20 $79

    ld l, a                                       ; $52A9: $6F
    ld [hl], l                                    ; $52AA: $75

jr_013_52AB:
    ld hl, $44FE                                  ; $52AB: $21 $FE $44
    ld l, a                                       ; $52AE: $6F
    ld l, [hl]                                    ; $52AF: $6E
    daa                                           ; $52B0: $27
    ld [hl], h                                    ; $52B1: $74
    jr nz, @+$7B                                  ; $52B2: $20 $79

    ld l, a                                       ; $52B4: $6F
    ld [hl], l                                    ; $52B5: $75
    rst $38                                       ; $52B6: $FF
    ld h, [hl]                                    ; $52B7: $66
    ld l, a                                       ; $52B8: $6F
    ld [hl], d                                    ; $52B9: $72
    ld h, a                                       ; $52BA: $67
    ld h, l                                       ; $52BB: $65
    ld [hl], h                                    ; $52BC: $74
    jr nz, jr_013_5333                            ; $52BD: $20 $74

    ld l, b                                       ; $52BF: $68
    ld h, c                                       ; $52C0: $61
    ld [hl], h                                    ; $52C1: $74
    inc l                                         ; $52C2: $2C
    cp $62                                        ; $52C3: $FE $62
    ld [hl], d                                    ; $52C5: $72
    ld l, a                                       ; $52C6: $6F
    ld [hl], h                                    ; $52C7: $74
    ld l, b                                       ; $52C8: $68
    ld h, l                                       ; $52C9: $65
    ld [hl], d                                    ; $52CA: $72
    ld hl, $52FE                                  ; $52CB: $21 $FE $52
    ld h, l                                       ; $52CE: $65
    ld [hl], b                                    ; $52CF: $70

jr_013_52D0:
    ld h, l                                       ; $52D0: $65
    ld h, c                                       ; $52D1: $61
    ld [hl], h                                    ; $52D2: $74
    jr nz, jr_013_5336                            ; $52D3: $20 $61

    ld h, [hl]                                    ; $52D5: $66

jr_013_52D6:
    ld [hl], h                                    ; $52D6: $74
    ld h, l                                       ; $52D7: $65
    ld [hl], d                                    ; $52D8: $72
    rst $38                                       ; $52D9: $FF
    ld l, l                                       ; $52DA: $6D
    ld h, l                                       ; $52DB: $65
    ld l, $2E                                     ; $52DC: $2E $2E
    ld l, $FE                                     ; $52DE: $2E $FE
    ld c, c                                       ; $52E0: $49
    ld d, h                                       ; $52E1: $54
    daa                                           ; $52E2: $27
    ld d, e                                       ; $52E3: $53
    jr nz, @+$49                                  ; $52E4: $20 $47

    ld c, a                                       ; $52E6: $4F
    ld c, a                                       ; $52E7: $4F
    ld b, h                                       ; $52E8: $44
    jr nz, jr_013_5331                            ; $52E9: $20 $46

    ld c, a                                       ; $52EB: $4F
    ld d, d                                       ; $52EC: $52
    rst $38                                       ; $52ED: $FF
    ld e, c                                       ; $52EE: $59
    ld c, a                                       ; $52EF: $4F
    ld d, l                                       ; $52F0: $55
    ld hl, $2121                                  ; $52F1: $21 $21 $21
    cp $FD                                        ; $52F4: $FE $FD
    sbc e                                         ; $52F6: $9B
    ld a, b                                       ; $52F7: $78
    ld [hl], b                                    ; $52F8: $70
    sbc a                                         ; $52F9: $9F
    ld d, l                                       ; $52FA: $55
    ld l, b                                       ; $52FB: $68
    ld l, $2E                                     ; $52FC: $2E $2E
    ld l, $FE                                     ; $52FE: $2E $FE
    ld c, c                                       ; $5300: $49
    ld [hl], h                                    ; $5301: $74
    daa                                           ; $5302: $27
    ld [hl], e                                    ; $5303: $73
    jr nz, @+$69                                  ; $5304: $20 $67

jr_013_5306:
    ld l, a                                       ; $5306: $6F
    ld l, a                                       ; $5307: $6F
    ld h, h                                       ; $5308: $64
    jr nz, @+$68                                  ; $5309: $20 $66

jr_013_530B:
    ld l, a                                       ; $530B: $6F
    ld [hl], d                                    ; $530C: $72
    rst $38                                       ; $530D: $FF
    ld a, c                                       ; $530E: $79
    ld l, a                                       ; $530F: $6F
    ld [hl], l                                    ; $5310: $75
    ld hl, $FDFE                                  ; $5311: $21 $FE $FD
    sbc e                                         ; $5314: $9B
    ld hl, sp+$7C                                 ; $5315: $F8 $7C
    sbc a                                         ; $5317: $9F
    ld c, h                                       ; $5318: $4C
    ld c, a                                       ; $5319: $4F
    ld d, l                                       ; $531A: $55
    ld b, h                                       ; $531B: $44
    ld b, l                                       ; $531C: $45
    ld d, d                                       ; $531D: $52
    ld hl, $2121                                  ; $531E: $21 $21 $21
    ld hl, $FDFE                                  ; $5321: $21 $FE $FD
    sbc e                                         ; $5324: $9B
    ld a, b                                       ; $5325: $78
    ld [hl], b                                    ; $5326: $70
    sbc a                                         ; $5327: $9F
    ld c, c                                       ; $5328: $49
    ld d, h                                       ; $5329: $54
    daa                                           ; $532A: $27
    ld d, e                                       ; $532B: $53
    jr nz, @+$49                                  ; $532C: $20 $47

    ld c, a                                       ; $532E: $4F
    ld c, a                                       ; $532F: $4F
    ld b, h                                       ; $5330: $44

jr_013_5331:
    jr nz, jr_013_5379                            ; $5331: $20 $46

jr_013_5333:
    ld c, a                                       ; $5333: $4F
    ld d, d                                       ; $5334: $52
    rst $38                                       ; $5335: $FF

jr_013_5336:
    ld e, c                                       ; $5336: $59
    ld c, a                                       ; $5337: $4F
    ld d, l                                       ; $5338: $55
    ld hl, $2121                                  ; $5339: $21 $21 $21
    cp $FD                                        ; $533C: $FE $FD
    sbc e                                         ; $533E: $9B
    ld hl, sp+$7C                                 ; $533F: $F8 $7C
    sbc a                                         ; $5341: $9F
    ld b, a                                       ; $5342: $47
    ld l, a                                       ; $5343: $6F
    ld l, a                                       ; $5344: $6F
    ld h, h                                       ; $5345: $64
    ld l, $20                                     ; $5346: $2E $20
    ld e, c                                       ; $5348: $59
    ld l, a                                       ; $5349: $6F
    ld [hl], l                                    ; $534A: $75
    jr nz, jr_013_53BD                            ; $534B: $20 $70

    ld h, c                                       ; $534D: $61
    ld [hl], e                                    ; $534E: $73
    ld [hl], e                                    ; $534F: $73
    ld l, $FE                                     ; $5350: $2E $FE
    ld b, d                                       ; $5352: $42
    ld h, c                                       ; $5353: $61
    ld h, e                                       ; $5354: $63
    ld l, e                                       ; $5355: $6B
    jr nz, jr_013_53CC                            ; $5356: $20 $74

    ld l, a                                       ; $5358: $6F
    jr nz, @+$6F                                  ; $5359: $20 $6D

    ld a, c                                       ; $535B: $79
    rst $38                                       ; $535C: $FF
    ld [hl], a                                    ; $535D: $77
    ld l, a                                       ; $535E: $6F
    ld [hl], d                                    ; $535F: $72
    ld l, e                                       ; $5360: $6B
    ld l, a                                       ; $5361: $6F
    ld [hl], l                                    ; $5362: $75
    ld [hl], h                                    ; $5363: $74
    ld hl, $57FE                                  ; $5364: $21 $FE $57
    ld c, a                                       ; $5367: $4F
    ld c, a                                       ; $5368: $4F
    ld hl, $2121                                  ; $5369: $21 $21 $21
    cp $FD                                        ; $536C: $FE $FD
    sbc d                                         ; $536E: $9A
    ld e, b                                       ; $536F: $58
    ld bc, $26AF                                  ; $5370: $01 $AF $26
    and c                                         ; $5373: $A1
    ld [$9B42], sp                                ; $5374: $08 $42 $9B
    ld hl, sp+$7C                                 ; $5377: $F8 $7C

jr_013_5379:
    sbc a                                         ; $5379: $9F
    ld c, a                                       ; $537A: $4F
    ld c, a                                       ; $537B: $4F
    ld c, a                                       ; $537C: $4F
    ld c, a                                       ; $537D: $4F
    ld c, b                                       ; $537E: $48
    ld c, b                                       ; $537F: $48
    ld c, b                                       ; $5380: $48
    ld c, b                                       ; $5381: $48
    jr nz, jr_013_53DD                            ; $5382: $20 $59

    ld b, l                                       ; $5384: $45
    ld b, c                                       ; $5385: $41
    ld c, b                                       ; $5386: $48
    ld hl, $44FE                                  ; $5387: $21 $FE $44
    ld c, c                                       ; $538A: $49
    ld b, a                                       ; $538B: $47
    jr nz, jr_013_53D7                            ; $538C: $20 $49

    ld d, h                                       ; $538E: $54
    ld hl, $2121                                  ; $538F: $21 $21 $21
    cp $4E                                        ; $5392: $FE $4E
    ld l, a                                       ; $5394: $6F
    jr nz, jr_013_540B                            ; $5395: $20 $74

    ld l, c                                       ; $5397: $69
    ld l, l                                       ; $5398: $6D
    ld h, l                                       ; $5399: $65
    jr nz, jr_013_5410                            ; $539A: $20 $74

    ld l, a                                       ; $539C: $6F
    rst $38                                       ; $539D: $FF
    ld [hl], h                                    ; $539E: $74
    ld h, c                                       ; $539F: $61
    ld l, h                                       ; $53A0: $6C
    ld l, e                                       ; $53A1: $6B
    inc l                                         ; $53A2: $2C
    jr nz, jr_013_5407                            ; $53A3: $20 $62

    ld [hl], d                                    ; $53A5: $72
    ld l, a                                       ; $53A6: $6F
    ld [hl], h                                    ; $53A7: $74
    ld l, b                                       ; $53A8: $68
    ld h, l                                       ; $53A9: $65
    ld [hl], d                                    ; $53AA: $72
    inc l                                         ; $53AB: $2C
    cp $67                                        ; $53AC: $FE $67
    ld l, a                                       ; $53AE: $6F
    ld [hl], h                                    ; $53AF: $74
    ld [hl], h                                    ; $53B0: $74
    ld h, c                                       ; $53B1: $61
    jr nz, jr_013_5426                            ; $53B2: $20 $72

    ld [hl], l                                    ; $53B4: $75
    ld l, [hl]                                    ; $53B5: $6E
    ld hl, $47FE                                  ; $53B6: $21 $FE $47
    ld l, a                                       ; $53B9: $6F
    ld [hl], h                                    ; $53BA: $74
    ld [hl], h                                    ; $53BB: $74
    ld h, c                                       ; $53BC: $61

jr_013_53BD:
    jr nz, jr_013_5431                            ; $53BD: $20 $72

    ld [hl], l                                    ; $53BF: $75
    ld l, [hl]                                    ; $53C0: $6E
    jr nz, jr_013_5429                            ; $53C1: $20 $66

    ld h, c                                       ; $53C3: $61
    ld [hl], e                                    ; $53C4: $73
    ld [hl], h                                    ; $53C5: $74
    ld hl, $57FE                                  ; $53C6: $21 $FE $57
    ld c, a                                       ; $53C9: $4F
    ld c, a                                       ; $53CA: $4F
    ld c, a                                       ; $53CB: $4F

jr_013_53CC:
    ld c, a                                       ; $53CC: $4F
    ld hl, $FE21                                  ; $53CD: $21 $21 $FE
    db $FD                                        ; $53D0: $FD
    sbc d                                         ; $53D1: $9A
    ld e, b                                       ; $53D2: $58
    ld bc, $AC42                                  ; $53D3: $01 $42 $AC
    or d                                          ; $53D6: $B2

jr_013_53D7:
    and d                                         ; $53D7: $A2
    ld bc, $044B                                  ; $53D8: $01 $4B $04
    inc de                                        ; $53DB: $13
    add hl, de                                    ; $53DC: $19

jr_013_53DD:
    nop                                           ; $53DD: $00

jr_013_53DE:
    add c                                         ; $53DE: $81
    ld d, c                                       ; $53DF: $51
    inc de                                        ; $53E0: $13
    ld a, [de]                                    ; $53E1: $1A
    nop                                           ; $53E2: $00
    and a                                         ; $53E3: $A7
    ld d, c                                       ; $53E4: $51
    inc de                                        ; $53E5: $13
    jr jr_013_53E8                                ; $53E6: $18 $00

jr_013_53E8:
    rst $30                                       ; $53E8: $F7
    ld d, e                                       ; $53E9: $53
    rst $38                                       ; $53EA: $FF
    ld b, e                                       ; $53EB: $43
    rrca                                          ; $53EC: $0F
    inc b                                         ; $53ED: $04
    dec b                                         ; $53EE: $05
    rrca                                          ; $53EF: $0F
    inc de                                        ; $53F0: $13
    rst $30                                       ; $53F1: $F7
    ld d, e                                       ; $53F2: $53
    xor [hl]                                      ; $53F3: $AE
    and l                                         ; $53F4: $A5
    and c                                         ; $53F5: $A1
    ld a, a                                       ; $53F6: $7F
    ld b, e                                       ; $53F7: $43
    add hl, bc                                    ; $53F8: $09
    rrca                                          ; $53F9: $0F
    inc b                                         ; $53FA: $04
    dec b                                         ; $53FB: $05
    rrca                                          ; $53FC: $0F
    rrca                                          ; $53FD: $0F
    inc b                                         ; $53FE: $04
    dec b                                         ; $53FF: $05
    jr jr_013_5415                                ; $5400: $18 $13

    ld h, a                                       ; $5402: $67
    ld d, h                                       ; $5403: $54
    sub e                                         ; $5404: $93
    dec b                                         ; $5405: $05
    nop                                           ; $5406: $00

jr_013_5407:
    add c                                         ; $5407: $81
    ld e, l                                       ; $5408: $5D
    inc c                                         ; $5409: $0C
    inc c                                         ; $540A: $0C

jr_013_540B:
    jr c, jr_013_53DE                             ; $540B: $38 $D1

    nop                                           ; $540D: $00
    jr nz, jr_013_540B                            ; $540E: $20 $FB

jr_013_5410:
    ld d, b                                       ; $5410: $50
    ld [hl+], a                                   ; $5411: $22
    dec b                                         ; $5412: $05
    ld b, b                                       ; $5413: $40
    dec b                                         ; $5414: $05

jr_013_5415:
    ld [hl+], a                                   ; $5415: $22
    db $ED                                        ; $5416: $ED
    ld h, e                                       ; $5417: $63
    dec c                                         ; $5418: $0D
    rlca                                          ; $5419: $07
    cp h                                          ; $541A: $BC
    ret nc                                        ; $541B: $D0

    nop                                           ; $541C: $00
    inc de                                        ; $541D: $13
    jr nc, jr_013_5475                            ; $541E: $30 $55

    inc de                                        ; $5420: $13
    ld b, [hl]                                    ; $5421: $46
    ld d, l                                       ; $5422: $55
    dec b                                         ; $5423: $05
    inc hl                                        ; $5424: $23
    db $ED                                        ; $5425: $ED

jr_013_5426:
    ld h, e                                       ; $5426: $63
    db $10                                        ; $5427: $10
    add hl, bc                                    ; $5428: $09

jr_013_5429:
    pop af                                        ; $5429: $F1
    ret nc                                        ; $542A: $D0

    add hl, hl                                    ; $542B: $29
    inc de                                        ; $542C: $13
    ld c, [hl]                                    ; $542D: $4E
    ld d, l                                       ; $542E: $55
    inc de                                        ; $542F: $13
    ld d, e                                       ; $5430: $53

jr_013_5431:
    ld d, l                                       ; $5431: $55
    rlca                                          ; $5432: $07
    inc hl                                        ; $5433: $23
    db $ED                                        ; $5434: $ED
    ld h, e                                       ; $5435: $63
    ld h, l                                       ; $5436: $65
    sub e                                         ; $5437: $93
    ld b, e                                       ; $5438: $43
    ld c, a                                       ; $5439: $4F
    ld h, h                                       ; $543A: $64
    ld bc, $6644                                  ; $543B: $01 $44 $66
    ret nz                                        ; $543E: $C0

    ld e, h                                       ; $543F: $5C
    ld hl, $1669                                  ; $5440: $21 $69 $16
    ld b, h                                       ; $5443: $44
    ld l, e                                       ; $5444: $6B
    add hl, hl                                    ; $5445: $29
    dec bc                                        ; $5446: $0B
    ret nz                                        ; $5447: $C0

    ld [hl], a                                    ; $5448: $77
    nop                                           ; $5449: $00
    add b                                         ; $544A: $80
    nop                                           ; $544B: $00
    ld l, e                                       ; $544C: $6B
    dec h                                         ; $544D: $25
    dec bc                                        ; $544E: $0B
    and b                                         ; $544F: $A0
    ld e, e                                       ; $5450: $5B
    sub b                                         ; $5451: $90
    add d                                         ; $5452: $82
    nop                                           ; $5453: $00
    dec bc                                        ; $5454: $0B
    ld [hl+], a                                   ; $5455: $22
    dec bc                                        ; $5456: $0B
    inc hl                                        ; $5457: $23
    dec bc                                        ; $5458: $0B
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    add d                                         ; $545B: $82
    ld sp, $E413                                  ; $545C: $31 $13 $E4
    ld d, h                                       ; $545F: $54
    inc de                                        ; $5460: $13
    ld a, [bc]                                    ; $5461: $0A
    ld d, l                                       ; $5462: $55
    rra                                           ; $5463: $1F
    add hl, de                                    ; $5464: $19
    sub h                                         ; $5465: $94
    ld b, d                                       ; $5466: $42
    sub e                                         ; $5467: $93
    dec b                                         ; $5468: $05
    nop                                           ; $5469: $00
    add c                                         ; $546A: $81
    ld e, l                                       ; $546B: $5D
    inc c                                         ; $546C: $0C
    inc c                                         ; $546D: $0C

jr_013_546E:
    jr c, @-$2D                                   ; $546E: $38 $D1

    nop                                           ; $5470: $00
    jr nz, jr_013_546E                            ; $5471: $20 $FB

    ld d, b                                       ; $5473: $50
    ld [hl+], a                                   ; $5474: $22

jr_013_5475:
    dec b                                         ; $5475: $05
    ld b, b                                       ; $5476: $40
    dec b                                         ; $5477: $05
    ld [hl+], a                                   ; $5478: $22
    db $ED                                        ; $5479: $ED
    ld h, e                                       ; $547A: $63
    dec c                                         ; $547B: $0D
    rlca                                          ; $547C: $07
    cp h                                          ; $547D: $BC
    ret nc                                        ; $547E: $D0

    nop                                           ; $547F: $00
    ld [hl+], a                                   ; $5480: $22
    inc b                                         ; $5481: $04
    ld b, b                                       ; $5482: $40
    ld [hl+], a                                   ; $5483: $22
    inc b                                         ; $5484: $04
    ld b, b                                       ; $5485: $40
    dec b                                         ; $5486: $05
    inc hl                                        ; $5487: $23
    db $ED                                        ; $5488: $ED
    ld h, e                                       ; $5489: $63
    db $10                                        ; $548A: $10
    add hl, bc                                    ; $548B: $09
    pop af                                        ; $548C: $F1
    ret nc                                        ; $548D: $D0

    add hl, hl                                    ; $548E: $29
    inc de                                        ; $548F: $13
    ld c, [hl]                                    ; $5490: $4E
    ld d, l                                       ; $5491: $55
    inc de                                        ; $5492: $13
    ld d, e                                       ; $5493: $53
    ld d, l                                       ; $5494: $55
    rlca                                          ; $5495: $07
    inc hl                                        ; $5496: $23
    db $ED                                        ; $5497: $ED
    ld h, e                                       ; $5498: $63
    ld h, l                                       ; $5499: $65
    sub e                                         ; $549A: $93
    ld b, e                                       ; $549B: $43
    ld c, a                                       ; $549C: $4F
    ld h, h                                       ; $549D: $64
    ld bc, $6644                                  ; $549E: $01 $44 $66
    ret nz                                        ; $54A1: $C0

    ld e, h                                       ; $54A2: $5C
    ld hl, $1669                                  ; $54A3: $21 $69 $16
    ld b, h                                       ; $54A6: $44
    ld l, e                                       ; $54A7: $6B
    dec h                                         ; $54A8: $25
    dec bc                                        ; $54A9: $0B
    and b                                         ; $54AA: $A0
    ld e, e                                       ; $54AB: $5B
    sub b                                         ; $54AC: $90
    add d                                         ; $54AD: $82
    nop                                           ; $54AE: $00
    dec bc                                        ; $54AF: $0B
    inc hl                                        ; $54B0: $23
    dec bc                                        ; $54B1: $0B
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    add d                                         ; $54B4: $82
    ld sp, $E413                                  ; $54B5: $31 $13 $E4
    ld d, h                                       ; $54B8: $54
    inc de                                        ; $54B9: $13
    ld a, [bc]                                    ; $54BA: $0A
    ld d, l                                       ; $54BB: $55
    rra                                           ; $54BC: $1F
    add hl, de                                    ; $54BD: $19
    ld b, e                                       ; $54BE: $43
    ld a, [bc]                                    ; $54BF: $0A
    nop                                           ; $54C0: $00
    and l                                         ; $54C1: $A5
    and c                                         ; $54C2: $A1
    add b                                         ; $54C3: $80
    inc de                                        ; $54C4: $13
    ld [c], a                                     ; $54C5: $E2
    ld d, h                                       ; $54C6: $54
    ld a, [hl]                                    ; $54C7: $7E
    nop                                           ; $54C8: $00
    ret nc                                        ; $54C9: $D0

    ld [bc], a                                    ; $54CA: $02
    ld bc, $D092                                  ; $54CB: $01 $92 $D0
    dec b                                         ; $54CE: $05
    dec d                                         ; $54CF: $15
    ld a, [hl]                                    ; $54D0: $7E
    nop                                           ; $54D1: $00
    ret nc                                        ; $54D2: $D0

    ld [bc], a                                    ; $54D3: $02
    ld bc, $D0AB                                  ; $54D4: $01 $AB $D0
    ld b, $15                                     ; $54D7: $06 $15
    ld a, [hl]                                    ; $54D9: $7E
    add hl, de                                    ; $54DA: $19
    ret nc                                        ; $54DB: $D0

    ld [bc], a                                    ; $54DC: $02
    ld bc, $D0C4                                  ; $54DD: $01 $C4 $D0
    rlca                                          ; $54E0: $07
    dec d                                         ; $54E1: $15
    sub h                                         ; $54E2: $94
    ld b, d                                       ; $54E3: $42
    add a                                         ; $54E4: $87
    dec b                                         ; $54E5: $05
    dec b                                         ; $54E6: $05
    ret z                                         ; $54E7: $C8

    add a                                         ; $54E8: $87
    dec b                                         ; $54E9: $05
    dec b                                         ; $54EA: $05
    ret z                                         ; $54EB: $C8

    add a                                         ; $54EC: $87
    dec b                                         ; $54ED: $05
    dec b                                         ; $54EE: $05
    ret z                                         ; $54EF: $C8

    add a                                         ; $54F0: $87
    dec b                                         ; $54F1: $05
    dec b                                         ; $54F2: $05
    ret z                                         ; $54F3: $C8

    add a                                         ; $54F4: $87
    dec b                                         ; $54F5: $05
    dec b                                         ; $54F6: $05
    ret z                                         ; $54F7: $C8

    sub e                                         ; $54F8: $93
    ld e, d                                       ; $54F9: $5A
    inc de                                        ; $54FA: $13
    nop                                           ; $54FB: $00
    ld d, l                                       ; $54FC: $55
    ld b, [hl]                                    ; $54FD: $46
    ld [hl-], a                                   ; $54FE: $32
    ld d, h                                       ; $54FF: $54
    ld e, e                                       ; $5500: $5B
    inc de                                        ; $5501: $13
    adc [hl]                                      ; $5502: $8E
    ld d, l                                       ; $5503: $55
    ld e, a                                       ; $5504: $5F
    rlca                                          ; $5505: $07
    nop                                           ; $5506: $00
    add c                                         ; $5507: $81
    ld e, l                                       ; $5508: $5D
    ld b, d                                       ; $5509: $42
    add a                                         ; $550A: $87
    dec b                                         ; $550B: $05
    dec b                                         ; $550C: $05
    ret z                                         ; $550D: $C8

    add a                                         ; $550E: $87
    dec b                                         ; $550F: $05
    dec b                                         ; $5510: $05
    ret z                                         ; $5511: $C8

    add a                                         ; $5512: $87
    dec b                                         ; $5513: $05
    dec b                                         ; $5514: $05
    ret z                                         ; $5515: $C8

    add a                                         ; $5516: $87
    dec b                                         ; $5517: $05
    dec b                                         ; $5518: $05
    ret z                                         ; $5519: $C8

    add a                                         ; $551A: $87
    dec b                                         ; $551B: $05
    dec b                                         ; $551C: $05
    ret z                                         ; $551D: $C8

    sub e                                         ; $551E: $93
    ld e, d                                       ; $551F: $5A
    inc de                                        ; $5520: $13
    ld h, $55                                     ; $5521: $26 $55
    ld b, [hl]                                    ; $5523: $46
    ld [hl-], a                                   ; $5524: $32
    ld d, h                                       ; $5525: $54
    ld e, e                                       ; $5526: $5B
    inc de                                        ; $5527: $13
    ld e, e                                       ; $5528: $5B
    ld d, l                                       ; $5529: $55
    ld e, a                                       ; $552A: $5F
    rlca                                          ; $552B: $07
    nop                                           ; $552C: $00
    add c                                         ; $552D: $81
    ld e, l                                       ; $552E: $5D
    ld b, d                                       ; $552F: $42
    dec d                                         ; $5530: $15
    rrca                                          ; $5531: $0F
    xor d                                         ; $5532: $AA
    ld a, c                                       ; $5533: $79
    inc a                                         ; $5534: $3C
    rrca                                          ; $5535: $0F
    ld b, h                                       ; $5536: $44
    ld a, c                                       ; $5537: $79
    jr z, jr_013_5549                             ; $5538: $28 $0F

    and b                                         ; $553A: $A0
    ld a, c                                       ; $553B: $79
    inc a                                         ; $553C: $3C
    rrca                                          ; $553D: $0F
    ld d, h                                       ; $553E: $54
    ld a, c                                       ; $553F: $79
    jr z, jr_013_5542                             ; $5540: $28 $00

jr_013_5542:
    ld b, l                                       ; $5542: $45
    inc de                                        ; $5543: $13
    jr nc, jr_013_559B                            ; $5544: $30 $55

    ld e, e                                       ; $5546: $5B
    inc de                                        ; $5547: $13
    inc b                                         ; $5548: $04

jr_013_5549:
    ld d, [hl]                                    ; $5549: $56
    ld b, l                                       ; $554A: $45
    rrca                                          ; $554B: $0F
    or h                                          ; $554C: $B4
    ld a, c                                       ; $554D: $79
    inc d                                         ; $554E: $14
    rrca                                          ; $554F: $0F
    or e                                          ; $5550: $B3
    ld h, b                                       ; $5551: $60
    ld b, d                                       ; $5552: $42
    ld e, e                                       ; $5553: $5B
    inc de                                        ; $5554: $13
    jp c, $4556                                   ; $5555: $DA $56 $45

    rrca                                          ; $5558: $0F
    ld c, b                                       ; $5559: $48
    ld h, c                                       ; $555A: $61
    sbc e                                         ; $555B: $9B
    jr c, jr_013_55C8                             ; $555C: $38 $6A

    sbc a                                         ; $555E: $9F
    ld c, b                                       ; $555F: $48
    ld l, l                                       ; $5560: $6D
    ld l, l                                       ; $5561: $6D
    ld l, l                                       ; $5562: $6D
    ld l, $2E                                     ; $5563: $2E $2E
    ld l, $20                                     ; $5565: $2E $20
    ld l, h                                       ; $5567: $6C
    ld l, a                                       ; $5568: $6F
    ld l, a                                       ; $5569: $6F
    ld l, e                                       ; $556A: $6B
    ld [hl], e                                    ; $556B: $73
    rst $38                                       ; $556C: $FF
    ld l, h                                       ; $556D: $6C
    ld l, c                                       ; $556E: $69
    ld l, e                                       ; $556F: $6B
    ld h, l                                       ; $5570: $65
    jr nz, jr_013_55EC                            ; $5571: $20 $79

    ld l, a                                       ; $5573: $6F
    ld [hl], l                                    ; $5574: $75
    jr nz, jr_013_55E5                            ; $5575: $20 $6E

    ld h, l                                       ; $5577: $65
    ld h, l                                       ; $5578: $65
    ld h, h                                       ; $5579: $64
    cp $6D                                        ; $557A: $FE $6D
    ld l, a                                       ; $557C: $6F
    ld [hl], d                                    ; $557D: $72
    ld h, l                                       ; $557E: $65
    jr nz, jr_013_55F1                            ; $557F: $20 $70

    ld [hl], d                                    ; $5581: $72
    ld h, c                                       ; $5582: $61
    ld h, e                                       ; $5583: $63
    ld [hl], h                                    ; $5584: $74
    ld l, c                                       ; $5585: $69
    ld h, e                                       ; $5586: $63
    ld h, l                                       ; $5587: $65
    ld hl, $FDFE                                  ; $5588: $21 $FE $FD
    sbc d                                         ; $558B: $9A
    ld d, l                                       ; $558C: $55
    ld b, d                                       ; $558D: $42
    sbc e                                         ; $558E: $9B
    jr c, jr_013_55FB                             ; $558F: $38 $6A

    sbc a                                         ; $5591: $9F
    ld d, a                                       ; $5592: $57
    ld l, a                                       ; $5593: $6F
    ld [hl], a                                    ; $5594: $77
    ld hl, $4720                                  ; $5595: $21 $20 $47
    ld [hl], d                                    ; $5598: $72
    ld h, l                                       ; $5599: $65
    ld h, c                                       ; $559A: $61

jr_013_559B:
    ld [hl], h                                    ; $559B: $74
    jr nz, jr_013_5608                            ; $559C: $20 $6A

    ld l, a                                       ; $559E: $6F
    ld h, d                                       ; $559F: $62
    inc l                                         ; $55A0: $2C
    rst $38                                       ; $55A1: $FF
    ld d, h                                       ; $55A2: $54
    ld l, a                                       ; $55A3: $6F
    ld l, [hl]                                    ; $55A4: $6E
    ld a, c                                       ; $55A5: $79
    ld hl, $FDFE                                  ; $55A6: $21 $FE $FD
    ld c, c                                       ; $55A9: $49
    inc b                                         ; $55AA: $04
    inc de                                        ; $55AB: $13
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    ld b, $00                                     ; $55AE: $06 $00
    ret z                                         ; $55B0: $C8

    ld d, l                                       ; $55B1: $55
    inc de                                        ; $55B2: $13
    rlca                                          ; $55B3: $07
    nop                                           ; $55B4: $00
    ld a, [bc]                                    ; $55B5: $0A
    nop                                           ; $55B6: $00
    ret z                                         ; $55B7: $C8

    ld d, l                                       ; $55B8: $55
    inc de                                        ; $55B9: $13
    dec bc                                        ; $55BA: $0B
    nop                                           ; $55BB: $00
    dec d                                         ; $55BC: $15
    nop                                           ; $55BD: $00
    ret z                                         ; $55BE: $C8

    ld d, l                                       ; $55BF: $55
    inc de                                        ; $55C0: $13
    ld d, $00                                     ; $55C1: $16 $00
    ld h, h                                       ; $55C3: $64
    nop                                           ; $55C4: $00
    ld bc, $FF56                                  ; $55C5: $01 $56 $FF

jr_013_55C8:
    sbc a                                         ; $55C8: $9F
    ld c, c                                       ; $55C9: $49
    ld h, [hl]                                    ; $55CA: $66
    jr nz, jr_013_5646                            ; $55CB: $20 $79

    ld l, a                                       ; $55CD: $6F
    ld [hl], l                                    ; $55CE: $75
    jr nz, jr_013_5634                            ; $55CF: $20 $63

    ld l, a                                       ; $55D1: $6F
    ld l, l                                       ; $55D2: $6D
    ld h, l                                       ; $55D3: $65
    rst $38                                       ; $55D4: $FF
    ld h, d                                       ; $55D5: $62
    ld h, c                                       ; $55D6: $61
    ld h, e                                       ; $55D7: $63
    ld l, e                                       ; $55D8: $6B
    jr nz, jr_013_5647                            ; $55D9: $20 $6C

    ld h, c                                       ; $55DB: $61
    ld [hl], h                                    ; $55DC: $74
    ld h, l                                       ; $55DD: $65
    ld [hl], d                                    ; $55DE: $72
    jr nz, jr_013_562A                            ; $55DF: $20 $49

    cp $6D                                        ; $55E1: $FE $6D
    ld l, c                                       ; $55E3: $69
    ld h, a                                       ; $55E4: $67

jr_013_55E5:
    ld l, b                                       ; $55E5: $68
    ld [hl], h                                    ; $55E6: $74
    jr nz, jr_013_5654                            ; $55E7: $20 $6B

    ld l, [hl]                                    ; $55E9: $6E
    ld l, a                                       ; $55EA: $6F
    ld [hl], a                                    ; $55EB: $77

jr_013_55EC:
    jr nz, @+$75                                  ; $55EC: $20 $73

    ld l, a                                       ; $55EE: $6F
    ld l, l                                       ; $55EF: $6D
    ld h, l                                       ; $55F0: $65

jr_013_55F1:
    rst $38                                       ; $55F1: $FF
    ld l, a                                       ; $55F2: $6F
    ld [hl], h                                    ; $55F3: $74
    ld l, b                                       ; $55F4: $68
    ld h, l                                       ; $55F5: $65
    ld [hl], d                                    ; $55F6: $72
    jr nz, jr_013_566D                            ; $55F7: $20 $74

    ld [hl], d                                    ; $55F9: $72
    ld l, c                                       ; $55FA: $69

jr_013_55FB:
    ld h, e                                       ; $55FB: $63
    ld l, e                                       ; $55FC: $6B
    ld [hl], e                                    ; $55FD: $73
    ld l, $FE                                     ; $55FE: $2E $FE
    db $FD                                        ; $5600: $FD
    sbc d                                         ; $5601: $9A
    ld d, l                                       ; $5602: $55
    ld b, d                                       ; $5603: $42
    sbc e                                         ; $5604: $9B
    ld hl, sp+$7C                                 ; $5605: $F8 $7C
    sbc a                                         ; $5607: $9F

jr_013_5608:
    ld c, a                                       ; $5608: $4F
    ld c, a                                       ; $5609: $4F
    ld c, a                                       ; $560A: $4F
    ld c, b                                       ; $560B: $48
    jr nz, jr_013_5667                            ; $560C: $20 $59

    ld b, l                                       ; $560E: $45
    ld b, c                                       ; $560F: $41
    ld b, c                                       ; $5610: $41
    ld c, b                                       ; $5611: $48
    ld c, b                                       ; $5612: $48
    ld hl, $FF21                                  ; $5613: $21 $21 $FF
    ld b, h                                       ; $5616: $44
    ld l, c                                       ; $5617: $69
    ld h, a                                       ; $5618: $67
    jr nz, jr_013_5684                            ; $5619: $20 $69

    ld [hl], h                                    ; $561B: $74
    ld hl, $5720                                  ; $561C: $21 $20 $57
    ld c, a                                       ; $561F: $4F
    ld c, a                                       ; $5620: $4F
    ld c, a                                       ; $5621: $4F
    ld hl, $FE21                                  ; $5622: $21 $21 $FE
    ld e, c                                       ; $5625: $59
    ld l, a                                       ; $5626: $6F
    ld [hl], l                                    ; $5627: $75
    jr nz, jr_013_568D                            ; $5628: $20 $63

jr_013_562A:
    ld h, c                                       ; $562A: $61
    ld l, l                                       ; $562B: $6D
    ld h, l                                       ; $562C: $65
    jr nz, @+$64                                  ; $562D: $20 $62

    ld h, c                                       ; $562F: $61
    ld h, e                                       ; $5630: $63
    ld l, e                                       ; $5631: $6B
    rst $38                                       ; $5632: $FF
    ld [hl], h                                    ; $5633: $74

jr_013_5634:
    ld l, a                                       ; $5634: $6F
    jr nz, jr_013_569B                            ; $5635: $20 $64

    ld l, a                                       ; $5637: $6F
    jr nz, jr_013_56AD                            ; $5638: $20 $73

    ld l, a                                       ; $563A: $6F
    ld l, l                                       ; $563B: $6D
    ld h, l                                       ; $563C: $65
    jr nz, jr_013_56AC                            ; $563D: $20 $6D

    ld l, a                                       ; $563F: $6F
    ld [hl], d                                    ; $5640: $72
    ld h, l                                       ; $5641: $65
    cp $74                                        ; $5642: $FE $74
    ld [hl], d                                    ; $5644: $72
    ld h, c                                       ; $5645: $61

jr_013_5646:
    ld l, c                                       ; $5646: $69

jr_013_5647:
    ld l, [hl]                                    ; $5647: $6E
    ld l, c                                       ; $5648: $69
    ld l, [hl]                                    ; $5649: $6E
    daa                                           ; $564A: $27
    inc l                                         ; $564B: $2C
    jr nz, @+$67                                  ; $564C: $20 $65

    ld l, b                                       ; $564E: $68
    ccf                                           ; $564F: $3F
    rst $38                                       ; $5650: $FF
    ld d, a                                       ; $5651: $57
    ld h, c                                       ; $5652: $61
    ld l, [hl]                                    ; $5653: $6E

jr_013_5654:
    ld [hl], h                                    ; $5654: $74
    jr nz, jr_013_56CB                            ; $5655: $20 $74

    ld l, a                                       ; $5657: $6F
    jr nz, @+$74                                  ; $5658: $20 $72

    ld h, l                                       ; $565A: $65
    ld h, [hl]                                    ; $565B: $66
    ld [hl], d                                    ; $565C: $72
    ld h, l                                       ; $565D: $65
    ld [hl], e                                    ; $565E: $73
    ld l, b                                       ; $565F: $68
    cp $79                                        ; $5660: $FE $79
    ld l, a                                       ; $5662: $6F
    ld [hl], l                                    ; $5663: $75
    ld [hl], d                                    ; $5664: $72
    jr nz, jr_013_56D2                            ; $5665: $20 $6B

jr_013_5667:
    ld l, [hl]                                    ; $5667: $6E
    ld l, a                                       ; $5668: $6F
    ld [hl], a                                    ; $5669: $77
    ld l, h                                       ; $566A: $6C
    ld h, l                                       ; $566B: $65
    ld h, h                                       ; $566C: $64

jr_013_566D:
    ld h, a                                       ; $566D: $67
    ld h, l                                       ; $566E: $65
    ccf                                           ; $566F: $3F
    cp $FD                                        ; $5670: $FE $FD
    sbc c                                         ; $5672: $99
    sbc e                                         ; $5673: $9B
    ld a, b                                       ; $5674: $78
    ld [hl], b                                    ; $5675: $70
    sbc a                                         ; $5676: $9F
    jr nz, jr_013_56C7                            ; $5677: $20 $4E

    ld l, a                                       ; $5679: $6F
    rst $38                                       ; $567A: $FF
    jr nz, jr_013_56D6                            ; $567B: $20 $59

    ld h, l                                       ; $567D: $65
    ld [hl], e                                    ; $567E: $73
    db $FD                                        ; $567F: $FD
    sbc h                                         ; $5680: $9C
    ld [bc], a                                    ; $5681: $02
    inc de                                        ; $5682: $13
    adc b                                         ; $5683: $88

jr_013_5684:
    ld d, [hl]                                    ; $5684: $56
    inc de                                        ; $5685: $13
    scf                                           ; $5686: $37
    ld b, d                                       ; $5687: $42
    sbc e                                         ; $5688: $9B
    ld hl, sp+$7C                                 ; $5689: $F8 $7C
    sbc a                                         ; $568B: $9F
    ld d, a                                       ; $568C: $57

jr_013_568D:
    ld h, l                                       ; $568D: $65
    ld l, h                                       ; $568E: $6C
    ld l, h                                       ; $568F: $6C
    jr nz, jr_013_56F9                            ; $5690: $20 $67

    ld h, l                                       ; $5692: $65
    ld [hl], h                                    ; $5693: $74
    jr nz, @+$71                                  ; $5694: $20 $6F

    halt                                          ; $5696: $76
    ld h, l                                       ; $5697: $65
    ld [hl], d                                    ; $5698: $72
    rst $38                                       ; $5699: $FF
    ld [hl], h                                    ; $569A: $74

jr_013_569B:
    ld l, b                                       ; $569B: $68
    ld h, l                                       ; $569C: $65
    ld [hl], d                                    ; $569D: $72
    ld h, l                                       ; $569E: $65
    jr nz, @+$63                                  ; $569F: $20 $61

    ld l, [hl]                                    ; $56A1: $6E
    ld h, h                                       ; $56A2: $64
    jr nz, jr_013_570C                            ; $56A3: $20 $67

    ld h, l                                       ; $56A5: $65
    ld [hl], h                                    ; $56A6: $74
    cp $74                                        ; $56A7: $FE $74
    ld l, a                                       ; $56A9: $6F
    jr nz, @+$64                                  ; $56AA: $20 $62

jr_013_56AC:
    ld h, l                                       ; $56AC: $65

jr_013_56AD:
    ld h, c                                       ; $56AD: $61
    ld [hl], h                                    ; $56AE: $74
    ld l, c                                       ; $56AF: $69
    ld l, [hl]                                    ; $56B0: $6E
    daa                                           ; $56B1: $27
    jr nz, @+$77                                  ; $56B2: $20 $75

    ld [hl], b                                    ; $56B4: $70
    rst $38                                       ; $56B5: $FF
    ld [hl], h                                    ; $56B6: $74
    ld l, b                                       ; $56B7: $68
    ld l, a                                       ; $56B8: $6F
    ld [hl], e                                    ; $56B9: $73
    ld h, l                                       ; $56BA: $65
    jr nz, jr_013_5701                            ; $56BB: $20 $44

    ld [hl], d                                    ; $56BD: $72
    ld h, l                                       ; $56BE: $65
    ld h, c                                       ; $56BF: $61
    ld l, l                                       ; $56C0: $6D
    cp $43                                        ; $56C1: $FE $43
    ld [hl], d                                    ; $56C3: $72
    ld h, l                                       ; $56C4: $65
    ld h, c                                       ; $56C5: $61
    ld [hl], h                                    ; $56C6: $74

jr_013_56C7:
    ld [hl], l                                    ; $56C7: $75
    ld [hl], d                                    ; $56C8: $72
    ld h, l                                       ; $56C9: $65
    ld [hl], e                                    ; $56CA: $73

jr_013_56CB:
    ld hl, $57FE                                  ; $56CB: $21 $FE $57
    ld c, a                                       ; $56CE: $4F
    ld c, a                                       ; $56CF: $4F
    ld c, a                                       ; $56D0: $4F
    ld c, a                                       ; $56D1: $4F

jr_013_56D2:
    ld c, a                                       ; $56D2: $4F
    ld hl, $2121                                  ; $56D3: $21 $21 $21

jr_013_56D6:
    cp $FD                                        ; $56D6: $FE $FD
    sbc d                                         ; $56D8: $9A
    ld [de], a                                    ; $56D9: $12
    sbc e                                         ; $56DA: $9B
    jr c, jr_013_5747                             ; $56DB: $38 $6A

    sbc a                                         ; $56DD: $9F
    ld d, d                                       ; $56DE: $52
    ld h, l                                       ; $56DF: $65
    ld h, c                                       ; $56E0: $61
    ld h, h                                       ; $56E1: $64
    ld a, c                                       ; $56E2: $79
    jr nz, jr_013_5759                            ; $56E3: $20 $74

    ld l, a                                       ; $56E5: $6F
    rst $38                                       ; $56E6: $FF
    ld h, d                                       ; $56E7: $62
    ld h, c                                       ; $56E8: $61
    ld [hl], h                                    ; $56E9: $74
    ld [hl], h                                    ; $56EA: $74
    ld l, h                                       ; $56EB: $6C
    ld h, l                                       ; $56EC: $65
    ccf                                           ; $56ED: $3F
    cp $FD                                        ; $56EE: $FE $FD
    sbc c                                         ; $56F0: $99
    sbc e                                         ; $56F1: $9B
    ld a, b                                       ; $56F2: $78
    ld [hl], b                                    ; $56F3: $70
    sbc a                                         ; $56F4: $9F
    jr nz, jr_013_5745                            ; $56F5: $20 $4E

    ld l, a                                       ; $56F7: $6F
    rst $38                                       ; $56F8: $FF

jr_013_56F9:
    jr nz, jr_013_5754                            ; $56F9: $20 $59

    ld h, l                                       ; $56FB: $65
    ld [hl], e                                    ; $56FC: $73
    db $FD                                        ; $56FD: $FD
    sbc h                                         ; $56FE: $9C
    ld [bc], a                                    ; $56FF: $02
    inc de                                        ; $5700: $13

jr_013_5701:
    ld b, $57                                     ; $5701: $06 $57
    inc de                                        ; $5703: $13
    jr jr_013_575D                                ; $5704: $18 $57

    sbc c                                         ; $5706: $99
    sbc e                                         ; $5707: $9B
    jr c, jr_013_5774                             ; $5708: $38 $6A

    sbc a                                         ; $570A: $9F
    ld c, a                                       ; $570B: $4F

jr_013_570C:
    ld l, b                                       ; $570C: $68
    ld l, $2E                                     ; $570D: $2E $2E
    ld l, $FE                                     ; $570F: $2E $FE
    ld c, a                                       ; $5711: $4F
    ld c, e                                       ; $5712: $4B
    ld l, $FE                                     ; $5713: $2E $FE
    db $FD                                        ; $5715: $FD
    sbc d                                         ; $5716: $9A
    ld [de], a                                    ; $5717: $12
    sbc c                                         ; $5718: $99
    sbc e                                         ; $5719: $9B
    jr c, jr_013_5786                             ; $571A: $38 $6A

    sbc a                                         ; $571C: $9F
    ld b, a                                       ; $571D: $47
    ld l, a                                       ; $571E: $6F
    ld l, a                                       ; $571F: $6F
    ld h, h                                       ; $5720: $64
    ld l, $FE                                     ; $5721: $2E $FE
    ld c, h                                       ; $5723: $4C
    ld h, l                                       ; $5724: $65
    ld [hl], h                                    ; $5725: $74
    daa                                           ; $5726: $27
    ld [hl], e                                    ; $5727: $73
    jr nz, jr_013_5771                            ; $5728: $20 $47

    ld l, a                                       ; $572A: $6F
    ld hl, $FDFE                                  ; $572B: $21 $FE $FD
    sbc d                                         ; $572E: $9A
    ld [bc], a                                    ; $572F: $02
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00

jr_013_5732:
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    ld b, l                                       ; $5734: $45
    ld d, $A2                                     ; $5735: $16 $A2
    ld c, c                                       ; $5737: $49
    rlca                                          ; $5738: $07
    nop                                           ; $5739: $00
    ld l, e                                       ; $573A: $6B
    ld c, d                                       ; $573B: $4A
    add hl, bc                                    ; $573C: $09
    nop                                           ; $573D: $00
    inc de                                        ; $573E: $13
    ld [hl], b                                    ; $573F: $70
    ld d, a                                       ; $5740: $57
    dec b                                         ; $5741: $05
    dec h                                         ; $5742: $25
    ld l, e                                       ; $5743: $6B
    ld c, d                                       ; $5744: $4A

jr_013_5745:
    dec c                                         ; $5745: $0D
    ld a, [bc]                                    ; $5746: $0A

jr_013_5747:
    rlca                                          ; $5747: $07
    pop de                                        ; $5748: $D1
    ld c, a                                       ; $5749: $4F
    inc de                                        ; $574A: $13
    add e                                         ; $574B: $83
    ld d, a                                       ; $574C: $57
    ld [hl+], a                                   ; $574D: $22
    dec b                                         ; $574E: $05
    ld b, b                                       ; $574F: $40
    ld l, e                                       ; $5750: $6B
    add hl, hl                                    ; $5751: $29
    dec bc                                        ; $5752: $0B
    ret nz                                        ; $5753: $C0

jr_013_5754:
    ld [hl], a                                    ; $5754: $77
    ldh a, [$84]                                  ; $5755: $F0 $84
    nop                                           ; $5757: $00
    dec bc                                        ; $5758: $0B

jr_013_5759:
    dec h                                         ; $5759: $25
    ld e, e                                       ; $575A: $5B
    inc de                                        ; $575B: $13
    and d                                         ; $575C: $A2

jr_013_575D:
    ld d, a                                       ; $575D: $57
    ld e, h                                       ; $575E: $5C
    ld [bc], a                                    ; $575F: $02
    ld [bc], a                                    ; $5760: $02
    ld l, [hl]                                    ; $5761: $6E
    rrca                                          ; $5762: $0F
    rst $38                                       ; $5763: $FF
    ld a, a                                       ; $5764: $7F
    halt                                          ; $5765: $76
    jr nz, @+$11                                  ; $5766: $20 $0F

    ld bc, $080F                                  ; $5768: $01 $0F $08
    ld b, l                                       ; $576B: $45
    inc d                                         ; $576C: $14
    or [hl]                                       ; $576D: $B6
    ld d, b                                       ; $576E: $50
    ld b, d                                       ; $576F: $42
    inc d                                         ; $5770: $14

jr_013_5771:
    jr nz, jr_013_5732                            ; $5771: $20 $BF

    ld d, b                                       ; $5773: $50

jr_013_5774:
    ld e, h                                       ; $5774: $5C
    ld bc, $1502                                  ; $5775: $01 $02 $15
    jr nz, jr_013_57D7                            ; $5778: $20 $5D

    ld d, b                                       ; $577A: $50
    inc b                                         ; $577B: $04
    jr nz, @+$79                                  ; $577C: $20 $77

    ld d, b                                       ; $577E: $50
    ld a, b                                       ; $577F: $78
    nop                                           ; $5780: $00
    add hl, de                                    ; $5781: $19
    ld b, d                                       ; $5782: $42
    ld e, h                                       ; $5783: $5C
    nop                                           ; $5784: $00
    ld [bc], a                                    ; $5785: $02

jr_013_5786:
    dec d                                         ; $5786: $15
    rrca                                          ; $5787: $0F
    ld d, h                                       ; $5788: $54
    ld a, c                                       ; $5789: $79
    ld b, b                                       ; $578A: $40
    nop                                           ; $578B: $00
    ld e, h                                       ; $578C: $5C
    ld bc, $1502                                  ; $578D: $01 $02 $15
    rrca                                          ; $5790: $0F
    inc h                                         ; $5791: $24
    ld a, c                                       ; $5792: $79
    ld [de], a                                    ; $5793: $12
    rrca                                          ; $5794: $0F
    ld b, h                                       ; $5795: $44
    ld a, c                                       ; $5796: $79
    jr z, jr_013_57A8                             ; $5797: $28 $0F

    ld a, b                                       ; $5799: $78
    ld a, c                                       ; $579A: $79
    stop                                          ; $579B: $10 $00
    ld e, e                                       ; $579D: $5B
    inc de                                        ; $579E: $13
    adc $57                                       ; $579F: $CE $57
    ld b, d                                       ; $57A1: $42
    sbc e                                         ; $57A2: $9B
    ld hl, sp+$7C                                 ; $57A3: $F8 $7C
    sbc a                                         ; $57A5: $9F
    ld c, b                                       ; $57A6: $48
    ld h, l                                       ; $57A7: $65

jr_013_57A8:
    ld a, c                                       ; $57A8: $79
    ld hl, $5920                                  ; $57A9: $21 $20 $59
    ld l, a                                       ; $57AC: $6F
    ld [hl], l                                    ; $57AD: $75
    daa                                           ; $57AE: $27
    ld [hl], d                                    ; $57AF: $72
    ld h, l                                       ; $57B0: $65
    rst $38                                       ; $57B1: $FF
    ld l, [hl]                                    ; $57B2: $6E
    ld l, a                                       ; $57B3: $6F
    ld [hl], h                                    ; $57B4: $74
    jr nz, @+$63                                  ; $57B5: $20 $61

    ld l, h                                       ; $57B7: $6C
    ld l, h                                       ; $57B8: $6C
    ld l, a                                       ; $57B9: $6F
    ld [hl], a                                    ; $57BA: $77
    ld h, l                                       ; $57BB: $65
    ld h, h                                       ; $57BC: $64
    cp $69                                        ; $57BD: $FE $69
    ld l, [hl]                                    ; $57BF: $6E
    jr nz, @+$76                                  ; $57C0: $20 $74

    ld l, b                                       ; $57C2: $68
    ld h, l                                       ; $57C3: $65
    ld [hl], d                                    ; $57C4: $72
    ld h, l                                       ; $57C5: $65
    ld hl, $FDFE                                  ; $57C6: $21 $FE $FD
    sbc d                                         ; $57C9: $9A
    ld e, h                                       ; $57CA: $5C
    nop                                           ; $57CB: $00
    ld [bc], a                                    ; $57CC: $02
    ld b, d                                       ; $57CD: $42
    sbc e                                         ; $57CE: $9B
    ld hl, sp+$7C                                 ; $57CF: $F8 $7C
    sbc a                                         ; $57D1: $9F
    ld b, c                                       ; $57D2: $41
    ld l, [hl]                                    ; $57D3: $6E
    ld h, h                                       ; $57D4: $64
    jr nz, @+$75                                  ; $57D5: $20 $73

jr_013_57D7:
    ld [hl], h                                    ; $57D7: $74
    ld h, c                                       ; $57D8: $61
    ld a, c                                       ; $57D9: $79
    jr nz, @+$71                                  ; $57DA: $20 $6F

    ld [hl], l                                    ; $57DC: $75
    ld [hl], h                                    ; $57DD: $74
    ld hl, $FDFE                                  ; $57DE: $21 $FE $FD
    sbc d                                         ; $57E1: $9A
    ld e, h                                       ; $57E2: $5C
    ld [bc], a                                    ; $57E3: $02
    ld [bc], a                                    ; $57E4: $02
    ld b, d                                       ; $57E5: $42

    db $AC, $B2, $A2, $01, $93, $05, $00, $6B, $4A, $00, $0A, $FA, $D0, $00, $13, $A0
    db $58, $22, $04, $40, $05, $22, $ED, $63, $01, $0A, $FB, $D0, $00, $13, $C2, $58
    db $13, $BA, $58, $05, $23, $ED, $63, $0C, $09, $ED, $D0, $4F, $13, $0E, $59, $13
    db $13, $59, $05, $24, $ED, $63, $0E, $0A, $08, $D1, $2A, $13, $F1, $58, $13, $06
    db $59, $65, $93, $43, $4F, $69, $16, $44, $64, $EC, $43, $66, $C0, $5C, $21, $6B
    db $2A, $0A, $B0, $48, $00, $80, $00, $6B, $25, $0B, $A0, $5B, $A0, $82, $00, $6B
    db $29, $0B, $C0, $77, $F0, $84, $00, $0B, $00, $0B, $22, $0B, $23, $0B, $24, $82
    db $31, $13, $61, $58, $13, $61, $58, $1F, $19, $94, $42

jr_013_5861:
    sub e                                         ; $5861: $93
    dec b                                         ; $5862: $05
    nop                                           ; $5863: $00
    ld l, e                                       ; $5864: $6B
    ld c, d                                       ; $5865: $4A
    dec c                                         ; $5866: $0D
    ld a, [bc]                                    ; $5867: $0A
    rlca                                          ; $5868: $07
    pop de                                        ; $5869: $D1
    nop                                           ; $586A: $00
    jr nz, @-$35                                  ; $586B: $20 $C9

    ld d, b                                       ; $586D: $50
    ld [hl+], a                                   ; $586E: $22
    inc b                                         ; $586F: $04
    ld b, b                                       ; $5870: $40
    dec b                                         ; $5871: $05
    inc h                                         ; $5872: $24
    ld l, e                                       ; $5873: $6B
    ld c, d                                       ; $5874: $4A
    ld c, $0A                                     ; $5875: $0E $0A
    ld [$2AD1], sp                                ; $5877: $08 $D1 $2A
    rrca                                          ; $587A: $0F
    or e                                          ; $587B: $B3
    ld h, b                                       ; $587C: $60
    ld [hl+], a                                   ; $587D: $22
    inc b                                         ; $587E: $04

jr_013_587F:
    ld b, b                                       ; $587F: $40
    ld e, d                                       ; $5880: $5A
    inc de                                        ; $5881: $13
    add a                                         ; $5882: $87
    ld e, b                                       ; $5883: $58
    ld b, [hl]                                    ; $5884: $46
    daa                                           ; $5885: $27
    ld e, b                                       ; $5886: $58
    ld e, e                                       ; $5887: $5B
    inc de                                        ; $5888: $13
    adc h                                         ; $5889: $8C
    ld e, h                                       ; $588A: $5C
    ld e, a                                       ; $588B: $5F
    dec b                                         ; $588C: $05
    inc h                                         ; $588D: $24
    db $ED                                        ; $588E: $ED
    ld h, e                                       ; $588F: $63
    ld c, $0A                                     ; $5890: $0E $0A
    ld [$2AD1], sp                                ; $5892: $08 $D1 $2A
    inc de                                        ; $5895: $13
    pop af                                        ; $5896: $F1
    ld e, b                                       ; $5897: $58
    inc de                                        ; $5898: $13
    ld b, $59                                     ; $5899: $06 $59
    rlca                                          ; $589B: $07
    nop                                           ; $589C: $00
    add c                                         ; $589D: $81
    ld e, l                                       ; $589E: $5D

jr_013_589F:
    ld b, d                                       ; $589F: $42

    db $15, $20, $ED, $4F, $20, $20, $C9, $50, $00, $00, $5F

    dec d                                         ; $58AB: $15
    jr nz, jr_013_5861                            ; $58AC: $20 $B3

    ld c, a                                       ; $58AE: $4F
    db $10                                        ; $58AF: $10
    jr nz, jr_013_589F                            ; $58B0: $20 $ED

    ld c, a                                       ; $58B2: $4F
    add b                                         ; $58B3: $80
    jr nz, jr_013_587F                            ; $58B4: $20 $C9

    ld d, b                                       ; $58B6: $50
    nop                                           ; $58B7: $00
    nop                                           ; $58B8: $00
    ld b, d                                       ; $58B9: $42
    ld e, e                                       ; $58BA: $5B
    inc de                                        ; $58BB: $13
    dec de                                        ; $58BC: $1B
    ld e, c                                       ; $58BD: $59
    ld b, l                                       ; $58BE: $45
    ld c, $35                                     ; $58BF: $0E $35
    ld d, l                                       ; $58C1: $55

    db $15, $0E, $A0, $53, $20, $0E, $04, $54, $00, $00, $5B, $13, $60, $59, $5F

    ld d, $0E                                     ; $58D1: $16 $0E
    and b                                         ; $58D3: $A0
    ld d, e                                       ; $58D4: $53
    add b                                         ; $58D5: $80
    ld bc, $0000                                  ; $58D6: $01 $00 $00
    inc d                                         ; $58D9: $14
    ld c, $F0                                     ; $58DA: $0E $F0
    ld d, e                                       ; $58DC: $53
    ld e, e                                       ; $58DD: $5B
    inc de                                        ; $58DE: $13
    cp $5A                                        ; $58DF: $FE $5A
    ld e, a                                       ; $58E1: $5F
    dec d                                         ; $58E2: $15
    ld c, $90                                     ; $58E3: $0E $90
    ld d, e                                       ; $58E5: $53
    ld [hl], b                                    ; $58E6: $70
    ld c, $70                                     ; $58E7: $0E $70
    ld d, e                                       ; $58E9: $53
    db $10                                        ; $58EA: $10
    ld c, $FA                                     ; $58EB: $0E $FA
    ld d, e                                       ; $58ED: $53
    nop                                           ; $58EE: $00
    nop                                           ; $58EF: $00
    ld b, d                                       ; $58F0: $42

    db $15, $0F, $4F, $60, $40, $0F, $A9, $60, $28, $0F, $3F, $60, $40, $0F, $B3, $60
    db $64, $00, $46, $F1, $58

    ld e, e                                       ; $5906: $5B
    inc de                                        ; $5907: $13
    ld [$455C], sp                                ; $5908: $08 $5C $45
    rrca                                          ; $590B: $0F
    ld c, b                                       ; $590C: $48
    ld h, c                                       ; $590D: $61

    db $14, $0F, $78, $79, $42

    ld e, e                                       ; $5913: $5B
    inc de                                        ; $5914: $13
    scf                                           ; $5915: $37
    ld b, d                                       ; $5916: $42
    ld b, l                                       ; $5917: $45
    rrca                                          ; $5918: $0F
    or h                                          ; $5919: $B4
    ld a, c                                       ; $591A: $79
    sbc e                                         ; $591B: $9B
    ld a, b                                       ; $591C: $78
    ld [hl], b                                    ; $591D: $70
    sbc a                                         ; $591E: $9F
    ld d, a                                       ; $591F: $57
    ld l, a                                       ; $5920: $6F
    ld l, [hl]                                    ; $5921: $6E
    daa                                           ; $5922: $27
    ld [hl], h                                    ; $5923: $74
    jr nz, @+$79                                  ; $5924: $20 $77

    ld h, l                                       ; $5926: $65
    jr nz, @+$69                                  ; $5927: $20 $67

    ld h, l                                       ; $5929: $65
    ld [hl], h                                    ; $592A: $74
    rst $38                                       ; $592B: $FF
    ld l, c                                       ; $592C: $69
    ld l, [hl]                                    ; $592D: $6E
    jr nz, @+$76                                  ; $592E: $20 $74

    ld [hl], d                                    ; $5930: $72
    ld l, a                                       ; $5931: $6F
    ld [hl], l                                    ; $5932: $75
    ld h, d                                       ; $5933: $62
    ld l, h                                       ; $5934: $6C
    ld h, l                                       ; $5935: $65
    jr nz, @+$6B                                  ; $5936: $20 $69

    ld h, [hl]                                    ; $5938: $66
    cp $4F                                        ; $5939: $FE $4F
    ld [hl], d                                    ; $593B: $72
    ld [hl], a                                    ; $593C: $77
    ld l, c                                       ; $593D: $69
    ld l, [hl]                                    ; $593E: $6E
    jr nz, @+$68                                  ; $593F: $20 $66

    ld l, c                                       ; $5941: $69
    ld l, [hl]                                    ; $5942: $6E
    ld h, h                                       ; $5943: $64
    ld [hl], e                                    ; $5944: $73
    jr nz, @+$77                                  ; $5945: $20 $75

    ld [hl], e                                    ; $5947: $73
    rst $38                                       ; $5948: $FF
    ld l, b                                       ; $5949: $68
    ld h, l                                       ; $594A: $65
    ld [hl], d                                    ; $594B: $72
    ld h, l                                       ; $594C: $65
    ccf                                           ; $594D: $3F
    cp $FD                                        ; $594E: $FE $FD
    sbc e                                         ; $5950: $9B
    ld c, b                                       ; $5951: $48
    ld b, [hl]                                    ; $5952: $46
    sbc a                                         ; $5953: $9F
    ld l, $2E                                     ; $5954: $2E $2E
    ld l, $2E                                     ; $5956: $2E $2E
    ld l, $2E                                     ; $5958: $2E $2E
    ld l, $2E                                     ; $595A: $2E $2E
    cp $FD                                        ; $595C: $FE $FD
    sbc d                                         ; $595E: $9A
    ld [de], a                                    ; $595F: $12

    db $9B, $48, $46, $9F, $54, $6F, $6E, $79, $2C, $20, $49, $FF, $77, $61, $6E, $74
    db $20, $79, $6F, $75, $20, $74, $6F, $FE, $68, $61, $76, $65, $20, $74, $68, $69
    db $73, $2E, $FE, $FD, $87, $00, $2D, $01, $9A, $9F, $54, $6F, $6E, $79, $20, $67
    db $6F, $74, $20, $61, $6E, $FF, $45, $6C, $64, $72, $69, $74, $63, $68, $20, $41
    db $77, $6C, $21, $FE, $FD, $9A, $9B, $48, $46, $9F, $49, $74, $20, $77, $69, $6C
    db $6C, $20, $68, $65, $6C, $70, $FF, $79, $6F, $75, $20, $65, $73, $63, $61, $70
    db $65, $20, $66, $72, $6F, $6D, $FE, $64, $61, $6E, $67, $65, $72, $6F, $75, $73
    db $FF, $61, $72, $65, $61, $73, $2E, $FE, $44, $6F, $20, $79, $6F, $75, $FF, $6B
    db $6E, $6F, $77, $20, $68, $6F, $77, $20, $74, $6F, $FE, $63, $6F, $6E, $74, $72
    db $6F, $6C, $20, $74, $68, $65, $FF, $70, $6F, $77, $65, $72, $20, $6F, $66, $FE
    db $69, $6E, $66, $75, $73, $65, $64, $FF, $41, $6E, $69, $6D, $69, $74, $65, $3F
    db $FE, $FD, $99, $9B, $78, $70, $9F, $20, $4E, $6F, $FF, $20, $59, $65, $73, $FD
    db $9C, $02

    inc de                                        ; $5A22: $13
    sbc d                                         ; $5A23: $9A
    ld e, d                                       ; $5A24: $5A

    db $13, $28, $5A, $9B, $78, $70, $9F, $59, $65, $73, $20, $49, $20, $64, $6F, $21
    db $FE, $FD, $9B, $48, $46, $9F, $48, $61, $2C, $20, $6F, $6B, $61, $79, $2E, $FF
    db $49, $6E, $20, $74, $68, $61, $74, $20, $63, $61, $73, $65, $2C, $FE, $63, $6F
    db $6D, $65, $20, $77, $69, $74, $68, $20, $6D, $65, $FF, $74, $6F, $20, $74, $68
    db $65, $20, $57, $65, $61, $76, $65, $2E, $FE, $54, $68, $65, $72, $65, $27, $73
    db $20, $61, $FF, $70, $65, $72, $73, $6F, $6E, $20, $74, $68, $65, $72, $65, $FE
    db $77, $68, $6F, $20, $79, $6F, $75, $20, $73, $68, $6F, $75, $6C, $64, $2D, $FE
    db $FD, $9A, $46, $CB, $5C

    sbc e                                         ; $5A9A: $9B
    ld a, b                                       ; $5A9B: $78
    ld [hl], b                                    ; $5A9C: $70
    sbc a                                         ; $5A9D: $9F
    ld c, [hl]                                    ; $5A9E: $4E
    ld l, a                                       ; $5A9F: $6F
    ld [hl], b                                    ; $5AA0: $70
    ld h, l                                       ; $5AA1: $65
    ld l, $FE                                     ; $5AA2: $2E $FE
    db $FD                                        ; $5AA4: $FD
    sbc e                                         ; $5AA5: $9B
    ld c, b                                       ; $5AA6: $48
    ld b, [hl]                                    ; $5AA7: $46
    sbc a                                         ; $5AA8: $9F
    ld d, a                                       ; $5AA9: $57
    ld h, l                                       ; $5AAA: $65
    ld l, h                                       ; $5AAB: $6C
    ld l, h                                       ; $5AAC: $6C
    ld l, $2E                                     ; $5AAD: $2E $2E
    ld l, $20                                     ; $5AAF: $2E $20
    ld e, c                                       ; $5AB1: $59
    ld h, c                                       ; $5AB2: $61
    ld l, e                                       ; $5AB3: $6B
    ld l, c                                       ; $5AB4: $69
    rst $38                                       ; $5AB5: $FF
    ld l, a                                       ; $5AB6: $6F
    halt                                          ; $5AB7: $76
    ld h, l                                       ; $5AB8: $65
    ld [hl], d                                    ; $5AB9: $72
    jr nz, jr_013_5B30                            ; $5ABA: $20 $74

    ld l, b                                       ; $5ABC: $68
    ld h, l                                       ; $5ABD: $65
    ld [hl], d                                    ; $5ABE: $72
    ld h, l                                       ; $5ABF: $65
    jr nz, jr_013_5B2B                            ; $5AC0: $20 $69

    ld [hl], e                                    ; $5AC2: $73
    cp $74                                        ; $5AC3: $FE $74
    ld l, b                                       ; $5AC5: $68
    ld h, l                                       ; $5AC6: $65
    jr nz, jr_013_5B3D                            ; $5AC7: $20 $74

    ld [hl], d                                    ; $5AC9: $72
    ld h, c                                       ; $5ACA: $61
    ld l, c                                       ; $5ACB: $69
    ld l, [hl]                                    ; $5ACC: $6E
    ld h, l                                       ; $5ACD: $65
    ld [hl], d                                    ; $5ACE: $72
    jr nz, jr_013_5B40                            ; $5ACF: $20 $6F

    ld h, [hl]                                    ; $5AD1: $66
    rst $38                                       ; $5AD2: $FF
    ld d, [hl]                                    ; $5AD3: $56
    ld h, c                                       ; $5AD4: $61
    ld [hl], e                                    ; $5AD5: $73
    ld l, b                                       ; $5AD6: $68
    jr nz, jr_013_5B27                            ; $5AD7: $20 $4E

    ld h, c                                       ; $5AD9: $61
    ld [hl], d                                    ; $5ADA: $72
    ld l, a                                       ; $5ADB: $6F
    ld l, a                                       ; $5ADC: $6F
    ld l, l                                       ; $5ADD: $6D
    ld l, $FE                                     ; $5ADE: $2E $FE
    ld c, b                                       ; $5AE0: $48
    ld h, l                                       ; $5AE1: $65
    ld [hl], d                                    ; $5AE2: $72
    ld h, l                                       ; $5AE3: $65
    inc l                                         ; $5AE4: $2C
    jr nz, jr_013_5B30                            ; $5AE5: $20 $49

    daa                                           ; $5AE7: $27
    ld l, h                                       ; $5AE8: $6C
    ld l, h                                       ; $5AE9: $6C
    rst $38                                       ; $5AEA: $FF
    ld l, c                                       ; $5AEB: $69
    ld l, [hl]                                    ; $5AEC: $6E
    ld [hl], h                                    ; $5AED: $74
    ld [hl], d                                    ; $5AEE: $72
    ld l, a                                       ; $5AEF: $6F
    ld h, h                                       ; $5AF0: $64
    ld [hl], l                                    ; $5AF1: $75
    ld h, e                                       ; $5AF2: $63
    ld h, l                                       ; $5AF3: $65
    jr nz, jr_013_5B6F                            ; $5AF4: $20 $79

    ld l, a                                       ; $5AF6: $6F
    ld [hl], l                                    ; $5AF7: $75
    ld l, $FE                                     ; $5AF8: $2E $FE
    db $FD                                        ; $5AFA: $FD
    sbc d                                         ; $5AFB: $9A
    ld d, l                                       ; $5AFC: $55
    ld b, d                                       ; $5AFD: $42
    sbc e                                         ; $5AFE: $9B
    ld c, b                                       ; $5AFF: $48
    ld b, [hl]                                    ; $5B00: $46
    sbc a                                         ; $5B01: $9F
    ld d, h                                       ; $5B02: $54
    ld l, a                                       ; $5B03: $6F
    ld l, [hl]                                    ; $5B04: $6E
    ld a, c                                       ; $5B05: $79
    inc l                                         ; $5B06: $2C
    jr nz, @+$4B                                  ; $5B07: $20 $49

    daa                                           ; $5B09: $27
    ld h, h                                       ; $5B0A: $64
    jr nz, jr_013_5B79                            ; $5B0B: $20 $6C

    ld l, c                                       ; $5B0D: $69
    ld l, e                                       ; $5B0E: $6B
    ld h, l                                       ; $5B0F: $65
    rst $38                                       ; $5B10: $FF
    ld a, c                                       ; $5B11: $79
    ld l, a                                       ; $5B12: $6F
    ld [hl], l                                    ; $5B13: $75
    jr nz, @+$76                                  ; $5B14: $20 $74

    ld l, a                                       ; $5B16: $6F
    jr nz, jr_013_5B86                            ; $5B17: $20 $6D

    ld h, l                                       ; $5B19: $65
    ld h, l                                       ; $5B1A: $65
    ld [hl], h                                    ; $5B1B: $74
    cp $59                                        ; $5B1C: $FE $59
    ld h, c                                       ; $5B1E: $61
    ld l, e                                       ; $5B1F: $6B
    ld l, c                                       ; $5B20: $69
    ld l, $20                                     ; $5B21: $2E $20
    ld e, c                                       ; $5B23: $59
    ld h, c                                       ; $5B24: $61
    ld l, e                                       ; $5B25: $6B
    ld l, c                                       ; $5B26: $69

jr_013_5B27:
    inc l                                         ; $5B27: $2C
    rst $38                                       ; $5B28: $FF
    ld l, l                                       ; $5B29: $6D
    ld h, l                                       ; $5B2A: $65

jr_013_5B2B:
    ld h, l                                       ; $5B2B: $65
    ld [hl], h                                    ; $5B2C: $74
    jr nz, @+$56                                  ; $5B2D: $20 $54

    ld l, a                                       ; $5B2F: $6F

jr_013_5B30:
    ld l, [hl]                                    ; $5B30: $6E
    ld a, c                                       ; $5B31: $79
    ld l, $FE                                     ; $5B32: $2E $FE
    db $FD                                        ; $5B34: $FD
    sbc d                                         ; $5B35: $9A
    ld d, l                                       ; $5B36: $55
    sbc e                                         ; $5B37: $9B
    ld hl, sp+$7C                                 ; $5B38: $F8 $7C
    sbc a                                         ; $5B3A: $9F
    ld c, a                                       ; $5B3B: $4F
    ld c, a                                       ; $5B3C: $4F

jr_013_5B3D:
    ld c, a                                       ; $5B3D: $4F
    ld c, a                                       ; $5B3E: $4F
    ld c, a                                       ; $5B3F: $4F

jr_013_5B40:
    ld c, b                                       ; $5B40: $48
    jr nz, jr_013_5B9C                            ; $5B41: $20 $59

    ld b, l                                       ; $5B43: $45
    ld b, c                                       ; $5B44: $41
    ld c, b                                       ; $5B45: $48
    ld c, b                                       ; $5B46: $48
    ld c, b                                       ; $5B47: $48
    ld hl, $FE21                                  ; $5B48: $21 $21 $FE
    ld c, b                                       ; $5B4B: $48
    ld l, a                                       ; $5B4C: $6F
    ld [hl], a                                    ; $5B4D: $77
    jr nz, @+$7B                                  ; $5B4E: $20 $79

    ld h, c                                       ; $5B50: $61
    jr nz, jr_013_5BB7                            ; $5B51: $20 $64

    ld l, a                                       ; $5B53: $6F
    ld l, c                                       ; $5B54: $69
    ld l, [hl]                                    ; $5B55: $6E
    daa                                           ; $5B56: $27
    inc l                                         ; $5B57: $2C
    rst $38                                       ; $5B58: $FF
    ld h, d                                       ; $5B59: $62
    ld [hl], d                                    ; $5B5A: $72
    ld l, a                                       ; $5B5B: $6F
    ld [hl], h                                    ; $5B5C: $74
    ld l, b                                       ; $5B5D: $68
    ld h, l                                       ; $5B5E: $65
    ld [hl], d                                    ; $5B5F: $72
    ld hl, $4920                                  ; $5B60: $21 $20 $49
    daa                                           ; $5B63: $27
    ld l, l                                       ; $5B64: $6D
    cp $74                                        ; $5B65: $FE $74
    ld l, b                                       ; $5B67: $68
    ld h, l                                       ; $5B68: $65
    jr nz, jr_013_5BD2                            ; $5B69: $20 $67

    ld [hl], l                                    ; $5B6B: $75
    ld a, c                                       ; $5B6C: $79
    jr nz, jr_013_5BE3                            ; $5B6D: $20 $74

jr_013_5B6F:
    ld l, b                                       ; $5B6F: $68
    ld h, c                                       ; $5B70: $61
    ld [hl], h                                    ; $5B71: $74
    daa                                           ; $5B72: $27
    ld [hl], e                                    ; $5B73: $73
    rst $38                                       ; $5B74: $FF
    ld h, a                                       ; $5B75: $67
    ld l, a                                       ; $5B76: $6F
    ld l, [hl]                                    ; $5B77: $6E
    ld l, [hl]                                    ; $5B78: $6E

jr_013_5B79:
    ld h, c                                       ; $5B79: $61
    jr nz, jr_013_5BF0                            ; $5B7A: $20 $74

    ld h, l                                       ; $5B7C: $65
    ld l, h                                       ; $5B7D: $6C
    ld l, h                                       ; $5B7E: $6C
    jr nz, jr_013_5BFA                            ; $5B7F: $20 $79

    ld h, c                                       ; $5B81: $61
    cp $68                                        ; $5B82: $FE $68
    ld l, a                                       ; $5B84: $6F
    ld [hl], a                                    ; $5B85: $77

jr_013_5B86:
    jr nz, @+$76                                  ; $5B86: $20 $74

    ld l, a                                       ; $5B88: $6F
    jr nz, jr_013_5BF9                            ; $5B89: $20 $6E

    ld h, c                                       ; $5B8B: $61
    ld h, d                                       ; $5B8C: $62
    rst $38                                       ; $5B8D: $FF
    ld [hl], h                                    ; $5B8E: $74
    ld l, b                                       ; $5B8F: $68
    ld l, a                                       ; $5B90: $6F
    ld [hl], e                                    ; $5B91: $73
    ld h, l                                       ; $5B92: $65
    jr nz, jr_013_5BD9                            ; $5B93: $20 $44

    ld [hl], d                                    ; $5B95: $72
    ld h, l                                       ; $5B96: $65
    ld h, c                                       ; $5B97: $61
    ld l, l                                       ; $5B98: $6D
    cp $43                                        ; $5B99: $FE $43
    ld [hl], d                                    ; $5B9B: $72

jr_013_5B9C:
    ld h, l                                       ; $5B9C: $65
    ld h, c                                       ; $5B9D: $61
    ld [hl], h                                    ; $5B9E: $74
    ld [hl], l                                    ; $5B9F: $75
    ld [hl], d                                    ; $5BA0: $72
    ld h, l                                       ; $5BA1: $65
    ld [hl], e                                    ; $5BA2: $73
    jr nz, jr_013_5C06                            ; $5BA3: $20 $61

    ld l, [hl]                                    ; $5BA5: $6E
    ld h, h                                       ; $5BA6: $64
    rst $38                                       ; $5BA7: $FF
    ld h, d                                       ; $5BA8: $62
    ld h, l                                       ; $5BA9: $65
    ld h, c                                       ; $5BAA: $61
    ld [hl], h                                    ; $5BAB: $74
    jr nz, jr_013_5BD5                            ; $5BAC: $20 $27

    ld h, l                                       ; $5BAE: $65
    ld l, l                                       ; $5BAF: $6D
    cp $73                                        ; $5BB0: $FE $73
    ld h, l                                       ; $5BB2: $65
    ld l, [hl]                                    ; $5BB3: $6E
    ld [hl], e                                    ; $5BB4: $73
    ld h, l                                       ; $5BB5: $65
    ld l, h                                       ; $5BB6: $6C

jr_013_5BB7:
    ld h, l                                       ; $5BB7: $65
    ld [hl], e                                    ; $5BB8: $73
    ld [hl], e                                    ; $5BB9: $73
    ld hl, $4520                                  ; $5BBA: $21 $20 $45
    ld [hl], d                                    ; $5BBD: $72
    inc l                                         ; $5BBE: $2C
    rst $38                                       ; $5BBF: $FF
    ld c, c                                       ; $5BC0: $49
    jr nz, jr_013_5C30                            ; $5BC1: $20 $6D

    ld h, l                                       ; $5BC3: $65
    ld h, c                                       ; $5BC4: $61
    ld l, [hl]                                    ; $5BC5: $6E
    ld l, $2E                                     ; $5BC6: $2E $2E
    ld l, $20                                     ; $5BC8: $2E $20
    ld h, d                                       ; $5BCA: $62
    ld h, l                                       ; $5BCB: $65
    ld h, c                                       ; $5BCC: $61
    ld [hl], h                                    ; $5BCD: $74
    cp $27                                        ; $5BCE: $FE $27
    ld h, l                                       ; $5BD0: $65
    ld l, l                                       ; $5BD1: $6D

jr_013_5BD2:
    jr nz, jr_013_5C35                            ; $5BD2: $20 $61

    ld l, [hl]                                    ; $5BD4: $6E

jr_013_5BD5:
    ld h, h                                       ; $5BD5: $64
    jr nz, jr_013_5C46                            ; $5BD6: $20 $6E

    ld h, c                                       ; $5BD8: $61

jr_013_5BD9:
    ld h, d                                       ; $5BD9: $62
    rst $38                                       ; $5BDA: $FF
    daa                                           ; $5BDB: $27
    ld h, l                                       ; $5BDC: $65
    ld l, l                                       ; $5BDD: $6D
    ld hl, $5720                                  ; $5BDE: $21 $20 $57
    ld c, a                                       ; $5BE1: $4F
    ld c, a                                       ; $5BE2: $4F

jr_013_5BE3:
    ld c, a                                       ; $5BE3: $4F
    ld hl, $5320                                  ; $5BE4: $21 $20 $53
    ld l, a                                       ; $5BE7: $6F
    cp $57                                        ; $5BE8: $FE $57
    ld c, b                                       ; $5BEA: $48
    ld b, c                                       ; $5BEB: $41
    ld d, h                                       ; $5BEC: $54
    ld b, e                                       ; $5BED: $43
    ld c, b                                       ; $5BEE: $48
    ld b, c                                       ; $5BEF: $41

jr_013_5BF0:
    jr nz, jr_013_5C39                            ; $5BF0: $20 $47

    ld c, a                                       ; $5BF2: $4F
    ld c, [hl]                                    ; $5BF3: $4E
    ld c, [hl]                                    ; $5BF4: $4E
    ld b, c                                       ; $5BF5: $41
    rst $38                                       ; $5BF6: $FF
    ld b, h                                       ; $5BF7: $44
    ld c, a                                       ; $5BF8: $4F

jr_013_5BF9:
    ccf                                           ; $5BF9: $3F

jr_013_5BFA:
    ld hl, $FDFE                                  ; $5BFA: $21 $FE $FD
    sbc d                                         ; $5BFD: $9A
    rlca                                          ; $5BFE: $07
    nop                                           ; $5BFF: $00
    add c                                         ; $5C00: $81
    ld e, l                                       ; $5C01: $5D
    add hl, bc                                    ; $5C02: $09
    nop                                           ; $5C03: $00
    jr nz, @-$35                                  ; $5C04: $20 $C9

jr_013_5C06:
    ld d, b                                       ; $5C06: $50
    ld b, d                                       ; $5C07: $42
    sbc e                                         ; $5C08: $9B
    jr c, jr_013_5C75                             ; $5C09: $38 $6A

    sbc a                                         ; $5C0B: $9F
    ld c, c                                       ; $5C0C: $49
    daa                                           ; $5C0D: $27
    ld l, l                                       ; $5C0E: $6D
    jr nz, jr_013_5C64                            ; $5C0F: $20 $53

    ld h, c                                       ; $5C11: $61
    ld l, h                                       ; $5C12: $6C
    ld h, c                                       ; $5C13: $61
    ld h, [hl]                                    ; $5C14: $66
    ld a, c                                       ; $5C15: $79
    inc l                                         ; $5C16: $2C
    rst $38                                       ; $5C17: $FF
    ld h, c                                       ; $5C18: $61
    ld [hl], b                                    ; $5C19: $70
    ld [hl], b                                    ; $5C1A: $70
    ld [hl], d                                    ; $5C1B: $72
    ld h, l                                       ; $5C1C: $65
    ld l, [hl]                                    ; $5C1D: $6E
    ld [hl], h                                    ; $5C1E: $74
    ld l, c                                       ; $5C1F: $69
    ld h, e                                       ; $5C20: $63
    ld h, l                                       ; $5C21: $65
    cp $74                                        ; $5C22: $FE $74
    ld [hl], d                                    ; $5C24: $72
    ld h, c                                       ; $5C25: $61
    ld l, c                                       ; $5C26: $69
    ld l, [hl]                                    ; $5C27: $6E
    ld h, l                                       ; $5C28: $65
    ld [hl], d                                    ; $5C29: $72
    ld hl, $52FE                                  ; $5C2A: $21 $FE $52
    ld h, l                                       ; $5C2D: $65
    ld h, c                                       ; $5C2E: $61
    ld h, h                                       ; $5C2F: $64

jr_013_5C30:
    ld a, c                                       ; $5C30: $79
    jr nz, @+$68                                  ; $5C31: $20 $66

    ld l, a                                       ; $5C33: $6F
    ld [hl], d                                    ; $5C34: $72

jr_013_5C35:
    jr nz, jr_013_5C98                            ; $5C35: $20 $61

    rst $38                                       ; $5C37: $FF
    ld [hl], h                                    ; $5C38: $74

jr_013_5C39:
    ld [hl], d                                    ; $5C39: $72
    ld h, c                                       ; $5C3A: $61
    ld l, c                                       ; $5C3B: $69
    ld l, [hl]                                    ; $5C3C: $6E
    ld l, c                                       ; $5C3D: $69
    ld l, [hl]                                    ; $5C3E: $6E
    ld h, a                                       ; $5C3F: $67
    jr nz, jr_013_5CAF                            ; $5C40: $20 $6D

    ld h, c                                       ; $5C42: $61
    ld [hl], h                                    ; $5C43: $74
    ld h, e                                       ; $5C44: $63
    ld l, b                                       ; $5C45: $68

jr_013_5C46:
    ccf                                           ; $5C46: $3F
    cp $FD                                        ; $5C47: $FE $FD
    sbc c                                         ; $5C49: $99
    sbc e                                         ; $5C4A: $9B
    ld a, b                                       ; $5C4B: $78
    ld [hl], b                                    ; $5C4C: $70
    sbc a                                         ; $5C4D: $9F
    jr nz, jr_013_5C9E                            ; $5C4E: $20 $4E

    ld l, a                                       ; $5C50: $6F
    rst $38                                       ; $5C51: $FF
    jr nz, jr_013_5CAD                            ; $5C52: $20 $59

    ld h, l                                       ; $5C54: $65
    ld [hl], e                                    ; $5C55: $73
    db $FD                                        ; $5C56: $FD
    sbc h                                         ; $5C57: $9C
    ld [bc], a                                    ; $5C58: $02
    inc de                                        ; $5C59: $13
    ld e, a                                       ; $5C5A: $5F
    ld e, h                                       ; $5C5B: $5C
    inc de                                        ; $5C5C: $13
    ld [hl], c                                    ; $5C5D: $71
    ld e, h                                       ; $5C5E: $5C
    sbc c                                         ; $5C5F: $99
    sbc e                                         ; $5C60: $9B
    jr c, @+$6C                                   ; $5C61: $38 $6A

    sbc a                                         ; $5C63: $9F

jr_013_5C64:
    ld c, a                                       ; $5C64: $4F
    ld l, b                                       ; $5C65: $68
    ld l, $2E                                     ; $5C66: $2E $2E
    ld l, $FE                                     ; $5C68: $2E $FE
    ld c, a                                       ; $5C6A: $4F
    ld c, e                                       ; $5C6B: $4B
    ld l, $FE                                     ; $5C6C: $2E $FE
    db $FD                                        ; $5C6E: $FD
    sbc d                                         ; $5C6F: $9A
    ld [de], a                                    ; $5C70: $12
    sbc c                                         ; $5C71: $99
    sbc e                                         ; $5C72: $9B
    jr c, @+$6C                                   ; $5C73: $38 $6A

jr_013_5C75:
    sbc a                                         ; $5C75: $9F
    ld b, a                                       ; $5C76: $47
    ld l, a                                       ; $5C77: $6F
    ld l, a                                       ; $5C78: $6F
    ld h, h                                       ; $5C79: $64
    ld l, $FE                                     ; $5C7A: $2E $FE
    ld c, h                                       ; $5C7C: $4C
    ld h, l                                       ; $5C7D: $65
    ld [hl], h                                    ; $5C7E: $74
    daa                                           ; $5C7F: $27
    ld [hl], e                                    ; $5C80: $73
    jr nz, jr_013_5CCA                            ; $5C81: $20 $47

    ld l, a                                       ; $5C83: $6F
    ld hl, $FDFE                                  ; $5C84: $21 $FE $FD
    sbc d                                         ; $5C87: $9A
    ld b, l                                       ; $5C88: $45
    ld d, $A2                                     ; $5C89: $16 $A2
    ld c, c                                       ; $5C8B: $49
    sbc e                                         ; $5C8C: $9B
    jr c, @+$6C                                   ; $5C8D: $38 $6A

    sbc a                                         ; $5C8F: $9F
    ld d, h                                       ; $5C90: $54
    ld l, b                                       ; $5C91: $68
    ld h, c                                       ; $5C92: $61
    ld [hl], h                                    ; $5C93: $74
    jr nz, @+$79                                  ; $5C94: $20 $77

    ld h, c                                       ; $5C96: $61
    ld [hl], e                                    ; $5C97: $73

jr_013_5C98:
    jr nz, @+$69                                  ; $5C98: $20 $67

    ld [hl], d                                    ; $5C9A: $72
    ld h, l                                       ; $5C9B: $65
    ld h, c                                       ; $5C9C: $61
    ld [hl], h                                    ; $5C9D: $74

jr_013_5C9E:
    ld hl, $43FE                                  ; $5C9E: $21 $FE $43
    ld l, a                                       ; $5CA1: $6F
    ld l, l                                       ; $5CA2: $6D
    ld h, l                                       ; $5CA3: $65
    jr nz, @+$64                                  ; $5CA4: $20 $62

    ld h, c                                       ; $5CA6: $61
    ld h, e                                       ; $5CA7: $63
    ld l, e                                       ; $5CA8: $6B
    jr nz, @+$63                                  ; $5CA9: $20 $61

    ld l, [hl]                                    ; $5CAB: $6E
    ld a, c                                       ; $5CAC: $79

jr_013_5CAD:
    cp $74                                        ; $5CAD: $FE $74

jr_013_5CAF:
    ld l, c                                       ; $5CAF: $69
    ld l, l                                       ; $5CB0: $6D
    ld h, l                                       ; $5CB1: $65
    ld hl, $FDFE                                  ; $5CB2: $21 $FE $FD
    sbc e                                         ; $5CB5: $9B
    ld a, b                                       ; $5CB6: $78
    ld [hl], b                                    ; $5CB7: $70
    sbc a                                         ; $5CB8: $9F
    ld c, c                                       ; $5CB9: $49
    daa                                           ; $5CBA: $27
    ld l, h                                       ; $5CBB: $6C
    ld l, h                                       ; $5CBC: $6C
    jr nz, @+$66                                  ; $5CBD: $20 $64

    ld l, a                                       ; $5CBF: $6F
    jr nz, @+$76                                  ; $5CC0: $20 $74

    ld l, b                                       ; $5CC2: $68
    ld h, c                                       ; $5CC3: $61
    ld [hl], h                                    ; $5CC4: $74
    ld l, $FE                                     ; $5CC5: $2E $FE
    db $FD                                        ; $5CC7: $FD
    sbc d                                         ; $5CC8: $9A
    ld d, l                                       ; $5CC9: $55

jr_013_5CCA:
    ld b, d                                       ; $5CCA: $42

    db $64, $01, $44, $09, $00, $13, $F7, $5C, $09, $22, $13, $10, $5D, $05, $23, $ED
    db $63, $0C, $09, $ED, $D0, $4F, $13, $36, $5D, $13, $4A, $5D, $05, $24, $ED, $63
    db $0E, $0A, $08, $D1, $2A, $13, $52, $5D, $13, $57, $5D, $42, $15, $20, $B5, $50
    db $04, $20, $BF, $50, $00, $00, $5D, $15, $20, $C9, $50, $26, $00, $5D, $13, $81
    db $5D, $45, $20, $C9, $50, $15, $0E, $FA, $53, $10, $0E, $04, $54, $00, $00, $09
    db $00, $13, $F7, $5C, $1B, $0F, $5A, $14, $2F, $55, $5B, $13, $5F, $5D, $5F, $15
    db $0E, $B0, $53, $06, $0E, $D0, $53, $30, $00, $53, $19, $5D, $40, $18, $15, $0F
    db $44, $79, $20, $0F, $78, $79, $00, $00, $5B, $13, $BF, $5D, $5F, $53, $42

    ld e, e                                       ; $5D4A: $5B
    inc de                                        ; $5D4B: $13
    db $FC                                        ; $5D4C: $FC
    ld e, l                                       ; $5D4D: $5D
    ld b, l                                       ; $5D4E: $45
    rrca                                          ; $5D4F: $0F
    or h                                          ; $5D50: $B4
    ld a, c                                       ; $5D51: $79

    db $14, $0F, $B3, $60, $42

    ld e, e                                       ; $5D57: $5B
    inc de                                        ; $5D58: $13
    jr nz, @+$60                                  ; $5D59: $20 $5E

    ld b, l                                       ; $5D5B: $45
    rrca                                          ; $5D5C: $0F
    ld c, b                                       ; $5D5D: $48
    ld h, c                                       ; $5D5E: $61

    db $A9, $03, $00, $9B, $48, $46, $9F, $48, $75, $68, $3F, $FE, $FD, $9B, $78, $70
    db $9F, $57, $68, $61, $74, $27, $73, $20, $67, $6F, $69, $6E, $67, $FF, $6F, $6E
    db $3F, $FE, $FD, $9B, $48, $46, $9F, $49, $2E, $2E, $2E, $20, $64, $6F, $6E, $27
    db $74, $FF, $6B, $6E, $6F, $77, $21, $20, $49, $20, $74, $68, $69, $6E, $6B, $FE
    db $69, $74, $27, $73, $20, $63, $6F, $6D, $69, $6E, $67, $FF, $66, $72, $6F, $6D
    db $20, $74, $68, $65, $FE, $67, $6C, $61, $64, $65, $2E, $FE, $FD, $9A, $55, $42
    db $9B, $F8, $7C, $9F, $4F, $4F, $4F, $48, $20, $59, $45, $41, $48, $21, $21, $21
    db $FE, $57, $68, $61, $74, $27, $73, $20, $73, $68, $61, $6B, $69, $6E, $27, $2C
    db $FF, $62, $72, $6F, $74, $68, $65, $72, $21, $FE, $FD, $9B, $78, $70, $9F, $2E
    db $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $FE, $FD, $9A, $55, $42

    sbc e                                         ; $5DFC: $9B
    ld hl, sp+$7C                                 ; $5DFD: $F8 $7C
    sbc a                                         ; $5DFF: $9F
    ld c, a                                       ; $5E00: $4F
    ld c, a                                       ; $5E01: $4F
    ld c, a                                       ; $5E02: $4F
    ld c, a                                       ; $5E03: $4F
    ld c, a                                       ; $5E04: $4F
    ld c, b                                       ; $5E05: $48
    jr nz, @+$5B                                  ; $5E06: $20 $59

    ld b, l                                       ; $5E08: $45
    ld b, c                                       ; $5E09: $41
    ld c, b                                       ; $5E0A: $48
    ld c, b                                       ; $5E0B: $48
    ld c, b                                       ; $5E0C: $48
    ld hl, $44FF                                  ; $5E0D: $21 $FF $44
    ld c, c                                       ; $5E10: $49
    ld b, a                                       ; $5E11: $47
    jr nz, jr_013_5E5D                            ; $5E12: $20 $49

    ld d, h                                       ; $5E14: $54

jr_013_5E15:
    ld hl, $5720                                  ; $5E15: $21 $20 $57
    ld c, a                                       ; $5E18: $4F
    ld c, a                                       ; $5E19: $4F
    ld c, a                                       ; $5E1A: $4F
    ld hl, $FDFE                                  ; $5E1B: $21 $FE $FD
    sbc d                                         ; $5E1E: $9A
    ld [de], a                                    ; $5E1F: $12
    sbc e                                         ; $5E20: $9B
    jr c, jr_013_5E8D                             ; $5E21: $38 $6A

    sbc a                                         ; $5E23: $9F
    ld c, a                                       ; $5E24: $4F
    ld l, b                                       ; $5E25: $68
    jr nz, jr_013_5E96                            ; $5E26: $20 $6E

    ld l, a                                       ; $5E28: $6F
    ld hl, $FDFE                                  ; $5E29: $21 $FE $FD
    sbc d                                         ; $5E2C: $9A
    ld [de], a                                    ; $5E2D: $12
    sub e                                         ; $5E2E: $93
    ld h, l                                       ; $5E2F: $65
    sub e                                         ; $5E30: $93
    ld b, e                                       ; $5E31: $43
    ld c, a                                       ; $5E32: $4F
    ld h, h                                       ; $5E33: $64
    ld bc, $6944                                  ; $5E34: $01 $44 $69
    ld d, $44                                     ; $5E37: $16 $44
    ld h, [hl]                                    ; $5E39: $66
    ret nz                                        ; $5E3A: $C0

    ld e, h                                       ; $5E3B: $5C
    ld hl, $0005                                  ; $5E3C: $21 $05 $00
    ld l, e                                       ; $5E3F: $6B
    ld c, d                                       ; $5E40: $4A
    dec bc                                        ; $5E41: $0B
    ld [$D0D3], sp                                ; $5E42: $08 $D3 $D0
    nop                                           ; $5E45: $00
    inc de                                        ; $5E46: $13
    xor b                                         ; $5E47: $A8
    ld e, [hl]                                    ; $5E48: $5E
    ld [hl+], a                                   ; $5E49: $22
    dec b                                         ; $5E4A: $05
    ld b, b                                       ; $5E4B: $40
    dec b                                         ; $5E4C: $05
    ld [bc], a                                    ; $5E4D: $02
    ld l, e                                       ; $5E4E: $6B
    ld c, d                                       ; $5E4F: $4A
    dec bc                                        ; $5E50: $0B
    rlca                                          ; $5E51: $07
    cp d                                          ; $5E52: $BA
    ret nc                                        ; $5E53: $D0

    add hl, hl                                    ; $5E54: $29
    inc de                                        ; $5E55: $13
    call $225E                                    ; $5E56: $CD $5E $22
    dec b                                         ; $5E59: $05
    ld b, b                                       ; $5E5A: $40
    dec b                                         ; $5E5B: $05
    inc bc                                        ; $5E5C: $03

jr_013_5E5D:
    ld l, e                                       ; $5E5D: $6B
    ld c, d                                       ; $5E5E: $4A
    dec c                                         ; $5E5F: $0D
    ld [$D0D5], sp                                ; $5E60: $08 $D5 $D0
    ld d, d                                       ; $5E63: $52
    inc de                                        ; $5E64: $13
    nop                                           ; $5E65: $00
    ld e, a                                       ; $5E66: $5F
    ld [hl+], a                                   ; $5E67: $22
    dec b                                         ; $5E68: $05
    ld b, b                                       ; $5E69: $40
    dec b                                         ; $5E6A: $05
    inc b                                         ; $5E6B: $04
    ld l, e                                       ; $5E6C: $6B
    ld c, d                                       ; $5E6D: $4A
    nop                                           ; $5E6E: $00
    ld [$D0C8], sp                                ; $5E6F: $08 $C8 $D0
    ld a, c                                       ; $5E72: $79
    inc de                                        ; $5E73: $13
    ld [hl], $5F                                  ; $5E74: $36 $5F
    ld [hl+], a                                   ; $5E76: $22
    dec b                                         ; $5E77: $05
    ld b, b                                       ; $5E78: $40
    ld l, e                                       ; $5E79: $6B
    add hl, hl                                    ; $5E7A: $29
    dec bc                                        ; $5E7B: $0B
    ld h, b                                       ; $5E7C: $60
    ld l, a                                       ; $5E7D: $6F
    nop                                           ; $5E7E: $00
    add b                                         ; $5E7F: $80
    nop                                           ; $5E80: $00
    ld l, e                                       ; $5E81: $6B
    add hl, hl                                    ; $5E82: $29
    dec bc                                        ; $5E83: $0B
    ret nz                                        ; $5E84: $C0

    ld [hl], a                                    ; $5E85: $77
    sub b                                         ; $5E86: $90
    add d                                         ; $5E87: $82
    nop                                           ; $5E88: $00
    ld l, e                                       ; $5E89: $6B
    dec h                                         ; $5E8A: $25
    dec bc                                        ; $5E8B: $0B
    and b                                         ; $5E8C: $A0

jr_013_5E8D:
    ld e, e                                       ; $5E8D: $5B
    jr nz, jr_013_5E15                            ; $5E8E: $20 $85

    nop                                           ; $5E90: $00
    ld l, e                                       ; $5E91: $6B
    daa                                           ; $5E92: $27
    ld a, [bc]                                    ; $5E93: $0A
    ldh a, [$4E]                                  ; $5E94: $F0 $4E

jr_013_5E96:
    sub b                                         ; $5E96: $90
    add a                                         ; $5E97: $87
    nop                                           ; $5E98: $00
    dec bc                                        ; $5E99: $0B
    nop                                           ; $5E9A: $00
    dec bc                                        ; $5E9B: $0B
    ld [bc], a                                    ; $5E9C: $02
    dec bc                                        ; $5E9D: $0B
    inc bc                                        ; $5E9E: $03
    add d                                         ; $5E9F: $82
    sub h                                         ; $5EA0: $94
    ld h, b                                       ; $5EA1: $60
    ld bc, $2345                                  ; $5EA2: $01 $45 $23
    xor a                                         ; $5EA5: $AF
    ld a, h                                       ; $5EA6: $7C
    ld b, d                                       ; $5EA7: $42
    dec d                                         ; $5EA8: $15
    rrca                                          ; $5EA9: $0F
    or h                                          ; $5EAA: $B4
    ld [hl], e                                    ; $5EAB: $73
    add b                                         ; $5EAC: $80
    rrca                                          ; $5EAD: $0F
    jp nc, Jump_013_6073                          ; $5EAE: $D2 $73 $60

    rrca                                          ; $5EB1: $0F
    or h                                          ; $5EB2: $B4
    ld [hl], e                                    ; $5EB3: $73
    ld h, b                                       ; $5EB4: $60
    rrca                                          ; $5EB5: $0F
    jp nc, $0073                                  ; $5EB6: $D2 $73 $00

    nop                                           ; $5EB9: $00
    ld e, h                                       ; $5EBA: $5C
    nop                                           ; $5EBB: $00
    ld [bc], a                                    ; $5EBC: $02
    dec bc                                        ; $5EBD: $0B
    inc b                                         ; $5EBE: $04
    ld e, h                                       ; $5EBF: $5C
    ld bc, $1504                                  ; $5EC0: $01 $04 $15
    rrca                                          ; $5EC3: $0F
    ret z                                         ; $5EC4: $C8

    ld [hl], e                                    ; $5EC5: $73
    jr nz, jr_013_5ED7                            ; $5EC6: $20 $0F

    inc b                                         ; $5EC8: $04
    ld [hl], h                                    ; $5EC9: $74
    add b                                         ; $5ECA: $80
    nop                                           ; $5ECB: $00
    ld b, d                                       ; $5ECC: $42
    dec d                                         ; $5ECD: $15
    rrca                                          ; $5ECE: $0F
    ld l, [hl]                                    ; $5ECF: $6E
    ld a, c                                       ; $5ED0: $79
    sub b                                         ; $5ED1: $90
    rrca                                          ; $5ED2: $0F
    xor d                                         ; $5ED3: $AA
    ld a, c                                       ; $5ED4: $79
    ld [hl], b                                    ; $5ED5: $70
    rrca                                          ; $5ED6: $0F

jr_013_5ED7:
    ld l, [hl]                                    ; $5ED7: $6E
    ld a, c                                       ; $5ED8: $79
    ld d, b                                       ; $5ED9: $50
    rrca                                          ; $5EDA: $0F
    xor d                                         ; $5EDB: $AA
    ld a, c                                       ; $5EDC: $79
    ld b, b                                       ; $5EDD: $40
    nop                                           ; $5EDE: $00
    ld e, h                                       ; $5EDF: $5C
    nop                                           ; $5EE0: $00
    ld [bc], a                                    ; $5EE1: $02
    ld b, b                                       ; $5EE2: $40
    ld h, b                                       ; $5EE3: $60
    dec d                                         ; $5EE4: $15
    rrca                                          ; $5EE5: $0F
    ld a, b                                       ; $5EE6: $78
    ld a, c                                       ; $5EE7: $79
    ld b, b                                       ; $5EE8: $40
    rrca                                          ; $5EE9: $0F
    and b                                         ; $5EEA: $A0
    ld a, c                                       ; $5EEB: $79
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    ld e, h                                       ; $5EEE: $5C
    ld bc, $1504                                  ; $5EEF: $01 $04 $15
    rrca                                          ; $5EF2: $0F
    ld a, b                                       ; $5EF3: $78
    ld a, c                                       ; $5EF4: $79
    add b                                         ; $5EF5: $80
    rrca                                          ; $5EF6: $0F
    ld l, [hl]                                    ; $5EF7: $6E
    ld a, c                                       ; $5EF8: $79
    ld l, h                                       ; $5EF9: $6C
    rrca                                          ; $5EFA: $0F
    inc d                                         ; $5EFB: $14
    ld a, c                                       ; $5EFC: $79
    ld h, b                                       ; $5EFD: $60
    nop                                           ; $5EFE: $00
    ld b, d                                       ; $5EFF: $42
    dec d                                         ; $5F00: $15
    rrca                                          ; $5F01: $0F
    or e                                          ; $5F02: $B3
    ld h, b                                       ; $5F03: $60
    db $10                                        ; $5F04: $10
    rrca                                          ; $5F05: $0F
    rst $00                                       ; $5F06: $C7
    ld h, b                                       ; $5F07: $60
    ld d, b                                       ; $5F08: $50
    rrca                                          ; $5F09: $0F
    ccf                                           ; $5F0A: $3F
    ld h, b                                       ; $5F0B: $60
    db $10                                        ; $5F0C: $10
    rrca                                          ; $5F0D: $0F
    or e                                          ; $5F0E: $B3
    ld h, b                                       ; $5F0F: $60
    ld h, b                                       ; $5F10: $60
    rrca                                          ; $5F11: $0F
    rst $00                                       ; $5F12: $C7
    ld h, b                                       ; $5F13: $60
    add b                                         ; $5F14: $80
    rrca                                          ; $5F15: $0F
    or e                                          ; $5F16: $B3
    ld h, b                                       ; $5F17: $60
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00

jr_013_5F1A:
    ld e, h                                       ; $5F1A: $5C
    ld bc, $1504                                  ; $5F1B: $01 $04 $15
    rrca                                          ; $5F1E: $0F
    or e                                          ; $5F1F: $B3
    ld h, b                                       ; $5F20: $60
    ld d, b                                       ; $5F21: $50
    rrca                                          ; $5F22: $0F
    ccf                                           ; $5F23: $3F
    ld h, b                                       ; $5F24: $60
    db $10                                        ; $5F25: $10
    rrca                                          ; $5F26: $0F
    or e                                          ; $5F27: $B3
    ld h, b                                       ; $5F28: $60
    ld b, b                                       ; $5F29: $40
    rrca                                          ; $5F2A: $0F
    sbc a                                         ; $5F2B: $9F
    ld h, b                                       ; $5F2C: $60
    ld h, b                                       ; $5F2D: $60
    rrca                                          ; $5F2E: $0F
    ld c, a                                       ; $5F2F: $4F
    ld h, b                                       ; $5F30: $60
    ld h, b                                       ; $5F31: $60
    nop                                           ; $5F32: $00
    ld d, [hl]                                    ; $5F33: $56
    ld bc, $1542                                  ; $5F34: $01 $42 $15
    ld c, $7F                                     ; $5F37: $0E $7F
    ld h, b                                       ; $5F39: $60
    and b                                         ; $5F3A: $A0
    ld c, $ED                                     ; $5F3B: $0E $ED
    ld h, b                                       ; $5F3D: $60
    ld h, b                                       ; $5F3E: $60
    nop                                           ; $5F3F: $00
    ld e, h                                       ; $5F40: $5C
    ld bc, $1504                                  ; $5F41: $01 $04 $15
    ld c, $ED                                     ; $5F44: $0E $ED
    ld h, b                                       ; $5F46: $60
    jr nz, jr_013_5F57                            ; $5F47: $20 $0E

    ld l, a                                       ; $5F49: $6F
    ld h, b                                       ; $5F4A: $60
    add b                                         ; $5F4B: $80
    nop                                           ; $5F4C: $00
    ld b, d                                       ; $5F4D: $42
    ld bc, $0D06                                  ; $5F4E: $01 $06 $0D
    ld b, l                                       ; $5F51: $45
    dec d                                         ; $5F52: $15
    or h                                          ; $5F53: $B4
    ld c, e                                       ; $5F54: $4B
    ld [bc], a                                    ; $5F55: $02
    dec e                                         ; $5F56: $1D

jr_013_5F57:
    nop                                           ; $5F57: $00
    rra                                           ; $5F58: $1F
    add hl, hl                                    ; $5F59: $29
    ld b, l                                       ; $5F5A: $45
    inc de                                        ; $5F5B: $13
    ret c                                         ; $5F5C: $D8

    ld l, l                                       ; $5F5D: $6D
    ld [bc], a                                    ; $5F5E: $02
    nop                                           ; $5F5F: $00
    rra                                           ; $5F60: $1F
    rra                                           ; $5F61: $1F
    dec hl                                        ; $5F62: $2B
    ld b, l                                       ; $5F63: $45
    inc de                                        ; $5F64: $13
    sub d                                         ; $5F65: $92
    ld h, h                                       ; $5F66: $64
    ld [bc], a                                    ; $5F67: $02
    dec bc                                        ; $5F68: $0B
    ld c, $00                                     ; $5F69: $0E $00
    daa                                           ; $5F6B: $27
    ld b, l                                       ; $5F6C: $45
    inc de                                        ; $5F6D: $13
    inc sp                                        ; $5F6E: $33
    ld l, e                                       ; $5F6F: $6B

jr_013_5F70:
    ld b, l                                       ; $5F70: $45
    inc de                                        ; $5F71: $13
    ld d, $63                                     ; $5F72: $16 $63
    and h                                         ; $5F74: $A4
    jr z, jr_013_5F1A                             ; $5F75: $28 $A3

    db $10                                        ; $5F77: $10
    inc bc                                        ; $5F78: $03
    inc b                                         ; $5F79: $04
    or b                                          ; $5F7A: $B0
    db $D3                                        ; $5F7B: $D3
    ld [bc], a                                    ; $5F7C: $02
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    jr nc, jr_013_5F70                            ; $5F81: $30 $ED

    ld d, [hl]                                    ; $5F83: $56
    jr nz, jr_013_5FCD                            ; $5F84: $20 $47

    ld [$9F13], sp                                ; $5F86: $08 $13 $9F
    ld e, a                                       ; $5F89: $5F
    inc de                                        ; $5F8A: $13
    or h                                          ; $5F8B: $B4
    ld e, a                                       ; $5F8C: $5F
    inc de                                        ; $5F8D: $13
    jp nz, $135F                                  ; $5F8E: $C2 $5F $13

    ret c                                         ; $5F91: $D8

    ld e, a                                       ; $5F92: $5F
    inc de                                        ; $5F93: $13
    db $F4                                        ; $5F94: $F4
    ld e, a                                       ; $5F95: $5F
    inc de                                        ; $5F96: $13
    add hl, bc                                    ; $5F97: $09
    ld h, b                                       ; $5F98: $60
    inc de                                        ; $5F99: $13
    ld e, $60                                     ; $5F9A: $1E $60
    inc de                                        ; $5F9C: $13
    ld b, c                                       ; $5F9D: $41
    ld h, b                                       ; $5F9E: $60
    dec h                                         ; $5F9F: $25
    rlca                                          ; $5FA0: $07
    ld l, h                                       ; $5FA1: $6C
    ld [de], a                                    ; $5FA2: $12
    ld c, h                                       ; $5FA3: $4C
    inc hl                                        ; $5FA4: $23
    ld b, b                                       ; $5FA5: $40
    ld l, $09                                     ; $5FA6: $2E $09
    ld [$2110], sp                                ; $5FA8: $08 $10 $21
    ld bc, $2E2B                                  ; $5FAB: $01 $2B $2E
    add hl, bc                                    ; $5FAE: $09
    jr nz, jr_013_5FC2                            ; $5FAF: $20 $11

    ld hl, $2701                                  ; $5FB1: $21 $01 $27
    dec h                                         ; $5FB4: $25
    rlca                                          ; $5FB5: $07
    ld l, h                                       ; $5FB6: $6C
    ld de, $234C                                  ; $5FB7: $11 $4C $23
    ld b, b                                       ; $5FBA: $40
    ld l, $09                                     ; $5FBB: $2E $09
    ld b, h                                       ; $5FBD: $44
    ld de, $0121                                  ; $5FBE: $11 $21 $01
    daa                                           ; $5FC1: $27

jr_013_5FC2:
    dec h                                         ; $5FC2: $25
    rlca                                          ; $5FC3: $07
    ld l, h                                       ; $5FC4: $6C
    inc de                                        ; $5FC5: $13
    ld c, h                                       ; $5FC6: $4C
    inc hl                                        ; $5FC7: $23
    ld b, b                                       ; $5FC8: $40
    ld l, $09                                     ; $5FC9: $2E $09
    jr nz, jr_013_5FDE                            ; $5FCB: $20 $11

jr_013_5FCD:
    ld [hl+], a                                   ; $5FCD: $22
    ld bc, $2B2B                                  ; $5FCE: $01 $2B $2B
    ld l, $09                                     ; $5FD1: $2E $09
    jr z, @+$12                                   ; $5FD3: $28 $10

    ld hl, $2701                                  ; $5FD5: $21 $01 $27
    dec h                                         ; $5FD8: $25
    rlca                                          ; $5FD9: $07
    ld l, h                                       ; $5FDA: $6C
    inc de                                        ; $5FDB: $13
    ld c, h                                       ; $5FDC: $4C
    inc hl                                        ; $5FDD: $23

jr_013_5FDE:
    ld b, b                                       ; $5FDE: $40
    ld l, $09                                     ; $5FDF: $2E $09
    jr z, jr_013_5FF5                             ; $5FE1: $28 $12

    inc h                                         ; $5FE3: $24
    ld bc, $2E2B                                  ; $5FE4: $01 $2B $2E
    add hl, bc                                    ; $5FE7: $09
    jr z, jr_013_5FFA                             ; $5FE8: $28 $10

    ld hl, $2B01                                  ; $5FEA: $21 $01 $2B
    ld l, $09                                     ; $5FED: $2E $09
    ld b, h                                       ; $5FEF: $44
    ld de, $0122                                  ; $5FF0: $11 $22 $01
    daa                                           ; $5FF3: $27
    dec h                                         ; $5FF4: $25

jr_013_5FF5:
    rlca                                          ; $5FF5: $07
    ld l, h                                       ; $5FF6: $6C
    ld de, $234C                                  ; $5FF7: $11 $4C $23

jr_013_5FFA:
    ld b, b                                       ; $5FFA: $40
    ld l, $09                                     ; $5FFB: $2E $09
    jr nz, jr_013_600F                            ; $5FFD: $20 $10

    jr nz, jr_013_6002                            ; $5FFF: $20 $01

    dec hl                                        ; $6001: $2B

jr_013_6002:
    ld l, $09                                     ; $6002: $2E $09
    ld [$1F0F], sp                                ; $6004: $08 $0F $1F
    ld bc, $2527                                  ; $6007: $01 $27 $25
    rlca                                          ; $600A: $07
    ld l, h                                       ; $600B: $6C
    ld [de], a                                    ; $600C: $12
    ld c, h                                       ; $600D: $4C
    inc hl                                        ; $600E: $23

jr_013_600F:
    ld b, b                                       ; $600F: $40
    ld l, $09                                     ; $6010: $2E $09
    ld b, h                                       ; $6012: $44
    ld de, $0122                                  ; $6013: $11 $22 $01
    dec hl                                        ; $6016: $2B
    ld l, $09                                     ; $6017: $2E $09
    jr nz, @+$12                                  ; $6019: $20 $10

    rra                                           ; $601B: $1F
    ld bc, $2527                                  ; $601C: $01 $27 $25
    rlca                                          ; $601F: $07
    ld l, h                                       ; $6020: $6C
    inc de                                        ; $6021: $13
    ld c, h                                       ; $6022: $4C
    inc hl                                        ; $6023: $23
    ld b, b                                       ; $6024: $40
    ld l, $09                                     ; $6025: $2E $09
    ld [$2311], sp                                ; $6027: $08 $11 $23
    ld bc, $2E2B                                  ; $602A: $01 $2B $2E
    add hl, bc                                    ; $602D: $09
    ld b, h                                       ; $602E: $44
    ld de, $0122                                  ; $602F: $11 $22 $01
    dec hl                                        ; $6032: $2B
    ld l, $09                                     ; $6033: $2E $09
    jr z, jr_013_6047                             ; $6035: $28 $10

    inc e                                         ; $6037: $1C
    ld bc, $2E2B                                  ; $6038: $01 $2B $2E
    add hl, bc                                    ; $603B: $09
    jr z, @+$12                                   ; $603C: $28 $10

    inc e                                         ; $603E: $1C
    ld bc, $2527                                  ; $603F: $01 $27 $25
    rlca                                          ; $6042: $07

jr_013_6043:
    ld l, h                                       ; $6043: $6C
    inc de                                        ; $6044: $13
    ld c, h                                       ; $6045: $4C
    inc hl                                        ; $6046: $23

jr_013_6047:
    ld b, b                                       ; $6047: $40
    ld l, $09                                     ; $6048: $2E $09
    ld de, $2613                                  ; $604A: $11 $13 $26
    ld bc, $0227                                  ; $604D: $01 $27 $02
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    jr nc, jr_013_6043                            ; $6054: $30 $ED

    ld d, [hl]                                    ; $6056: $56
    ld [hl+], a                                   ; $6057: $22
    dec h                                         ; $6058: $25
    rlca                                          ; $6059: $07
    ld e, d                                       ; $605A: $5A
    inc d                                         ; $605B: $14
    ld c, h                                       ; $605C: $4C
    inc hl                                        ; $605D: $23
    ld b, b                                       ; $605E: $40
    dec hl                                        ; $605F: $2B
    xor d                                         ; $6060: $AA
    dec a                                         ; $6061: $3D
    db $D3                                        ; $6062: $D3
    rlca                                          ; $6063: $07
    ld bc, $3EAA                                  ; $6064: $01 $AA $3E
    db $D3                                        ; $6067: $D3
    rlca                                          ; $6068: $07
    inc l                                         ; $6069: $2C
    add hl, bc                                    ; $606A: $09
    ld c, $0F                                     ; $606B: $0E $0F
    xor l                                         ; $606D: $AD
    ld c, [hl]                                    ; $606E: $4E
    sbc e                                         ; $606F: $9B
    ld c, b                                       ; $6070: $48
    ld e, a                                       ; $6071: $5F
    sbc a                                         ; $6072: $9F

Jump_013_6073:
    ld b, a                                       ; $6073: $47
    ld h, l                                       ; $6074: $65
    ld l, b                                       ; $6075: $68
    ld l, $FF                                     ; $6076: $2E $FF
    ld c, l                                       ; $6078: $4D
    ld a, c                                       ; $6079: $79
    jr nz, jr_013_60E7                            ; $607A: $20 $6B

    ld l, c                                       ; $607C: $69
    ld [hl], h                                    ; $607D: $74
    ld [hl], h                                    ; $607E: $74
    ld l, c                                       ; $607F: $69
    ld h, l                                       ; $6080: $65
    ld [hl], e                                    ; $6081: $73
    ld [hl], e                                    ; $6082: $73
    ld [hl], e                                    ; $6083: $73
    cp $6E                                        ; $6084: $FE $6E
    ld h, l                                       ; $6086: $65
    ld h, l                                       ; $6087: $65
    ld h, h                                       ; $6088: $64
    jr nz, jr_013_60EF                            ; $6089: $20 $64

    ld l, c                                       ; $608B: $69
    ld l, [hl]                                    ; $608C: $6E
    ld l, [hl]                                    ; $608D: $6E
    ld h, l                                       ; $608E: $65
    ld [hl], d                                    ; $608F: $72
    ld l, $FE                                     ; $6090: $2E $FE
    ld c, b                                       ; $6092: $48
    ld h, l                                       ; $6093: $65
    ld h, l                                       ; $6094: $65
    ld h, l                                       ; $6095: $65
    jr nz, jr_013_6100                            ; $6096: $20 $68

    ld h, l                                       ; $6098: $65
    ld h, l                                       ; $6099: $65
    ld l, $2E                                     ; $609A: $2E $2E
    ld l, $FE                                     ; $609C: $2E $FE
    db $FD                                        ; $609E: $FD
    sbc d                                         ; $609F: $9A
    ld l, $09                                     ; $60A0: $2E $09
    rrca                                          ; $60A2: $0F
    jr @+$34                                      ; $60A3: $18 $32

    nop                                           ; $60A5: $00
    dec hl                                        ; $60A6: $2B
    add hl, bc                                    ; $60A7: $09
    ld c, $0F                                     ; $60A8: $0E $0F
    xor l                                         ; $60AA: $AD
    ld c, [hl]                                    ; $60AB: $4E
    sbc e                                         ; $60AC: $9B
    ld c, b                                       ; $60AD: $48
    ld e, a                                       ; $60AE: $5F
    sbc a                                         ; $60AF: $9F
    ld e, c                                       ; $60B0: $59
    ld h, l                                       ; $60B1: $65
    ld [hl], e                                    ; $60B2: $73
    ld [hl], e                                    ; $60B3: $73
    ld [hl], e                                    ; $60B4: $73
    inc l                                         ; $60B5: $2C
    rst $38                                       ; $60B6: $FF
    ld l, l                                       ; $60B7: $6D
    ld l, a                                       ; $60B8: $6F
    ld [hl], d                                    ; $60B9: $72
    ld h, l                                       ; $60BA: $65
    jr nz, jr_013_6128                            ; $60BB: $20 $6B

    ld l, c                                       ; $60BD: $69
    ld [hl], h                                    ; $60BE: $74
    ld [hl], h                                    ; $60BF: $74
    ld l, c                                       ; $60C0: $69
    ld h, l                                       ; $60C1: $65
    ld [hl], e                                    ; $60C2: $73
    ld [hl], e                                    ; $60C3: $73
    ld [hl], e                                    ; $60C4: $73
    cp $74                                        ; $60C5: $FE $74
    ld l, a                                       ; $60C7: $6F
    jr nz, jr_013_613A                            ; $60C8: $20 $70

    ld l, h                                       ; $60CA: $6C
    ld h, c                                       ; $60CB: $61
    ld a, c                                       ; $60CC: $79
    jr nz, jr_013_6146                            ; $60CD: $20 $77

    ld l, c                                       ; $60CF: $69
    ld [hl], h                                    ; $60D0: $74
    ld l, b                                       ; $60D1: $68
    rst $38                                       ; $60D2: $FF
    ld [hl], h                                    ; $60D3: $74
    ld l, b                                       ; $60D4: $68
    ld h, l                                       ; $60D5: $65
    jr nz, jr_013_613B                            ; $60D6: $20 $63

    ld l, b                                       ; $60D8: $68
    ld l, c                                       ; $60D9: $69
    ld l, h                                       ; $60DA: $6C
    ld h, h                                       ; $60DB: $64
    ld l, $FE                                     ; $60DC: $2E $FE
    db $FD                                        ; $60DE: $FD
    sbc d                                         ; $60DF: $9A
    ld l, $09                                     ; $60E0: $2E $09
    rrca                                          ; $60E2: $0F
    ld de, $0032                                  ; $60E3: $11 $32 $00
    dec hl                                        ; $60E6: $2B

jr_013_60E7:
    sbc e                                         ; $60E7: $9B
    ld c, b                                       ; $60E8: $48
    ld e, a                                       ; $60E9: $5F
    add hl, bc                                    ; $60EA: $09
    ld c, $0F                                     ; $60EB: $0E $0F
    xor l                                         ; $60ED: $AD
    ld c, [hl]                                    ; $60EE: $4E

jr_013_60EF:
    sbc a                                         ; $60EF: $9F
    ld c, c                                       ; $60F0: $49
    ld [hl], e                                    ; $60F1: $73
    ld [hl], e                                    ; $60F2: $73
    ld [hl], e                                    ; $60F3: $73
    jr nz, @+$76                                  ; $60F4: $20 $74

    ld l, b                                       ; $60F6: $68
    ld h, l                                       ; $60F7: $65
    jr nz, jr_013_6165                            ; $60F8: $20 $6B

    ld l, c                                       ; $60FA: $69
    ld [hl], h                                    ; $60FB: $74
    ld [hl], h                                    ; $60FC: $74
    ld a, c                                       ; $60FD: $79
    cp $73                                        ; $60FE: $FE $73

jr_013_6100:
    ld [hl], e                                    ; $6100: $73
    ld [hl], e                                    ; $6101: $73
    ld [hl], l                                    ; $6102: $75
    ld h, [hl]                                    ; $6103: $66
    ld h, [hl]                                    ; $6104: $66
    ld h, l                                       ; $6105: $65
    ld [hl], d                                    ; $6106: $72
    ld l, c                                       ; $6107: $69
    ld l, [hl]                                    ; $6108: $6E
    ld h, a                                       ; $6109: $67
    ccf                                           ; $610A: $3F
    cp $FD                                        ; $610B: $FE $FD
    sbc d                                         ; $610D: $9A
    cpl                                           ; $610E: $2F
    add hl, bc                                    ; $610F: $09
    ld b, e                                       ; $6110: $43
    ld e, [hl]                                    ; $6111: $5E
    inc b                                         ; $6112: $04
    dec hl                                        ; $6113: $2B
    ld l, $09                                     ; $6114: $2E $09
    rrca                                          ; $6116: $0F
    inc d                                         ; $6117: $14
    ld [hl-], a                                   ; $6118: $32
    nop                                           ; $6119: $00
    dec hl                                        ; $611A: $2B
    dec hl                                        ; $611B: $2B
    ld l, $09                                     ; $611C: $2E $09
    rrca                                          ; $611E: $0F
    inc d                                         ; $611F: $14
    ld [hl-], a                                   ; $6120: $32
    nop                                           ; $6121: $00
    dec hl                                        ; $6122: $2B
    dec hl                                        ; $6123: $2B
    ld b, [hl]                                    ; $6124: $46
    inc e                                         ; $6125: $1C
    ld h, c                                       ; $6126: $61
    inc h                                         ; $6127: $24

jr_013_6128:
    ld d, b                                       ; $6128: $50
    sub e                                         ; $6129: $93
    add l                                         ; $612A: $85
    rrca                                          ; $612B: $0F
    ld h, l                                       ; $612C: $65
    ld d, e                                       ; $612D: $53
    ld b, a                                       ; $612E: $47
    ld c, a                                       ; $612F: $4F
    ld h, [hl]                                    ; $6130: $66
    ret nz                                        ; $6131: $C0

    ld e, h                                       ; $6132: $5C
    ld hl, $7B64                                  ; $6133: $21 $64 $7B
    ld c, b                                       ; $6136: $48
    ld l, c                                       ; $6137: $69
    sub b                                         ; $6138: $90
    ld c, b                                       ; $6139: $48

jr_013_613A:
    dec b                                         ; $613A: $05

jr_013_613B:
    nop                                           ; $613B: $00
    add c                                         ; $613C: $81
    ld e, l                                       ; $613D: $5D
    dec b                                         ; $613E: $05
    dec b                                         ; $613F: $05

jr_013_6140:
    sbc e                                         ; $6140: $9B
    ret nc                                        ; $6141: $D0

    nop                                           ; $6142: $00
    jr nz, jr_013_6140                            ; $6143: $20 $FB

    ld d, b                                       ; $6145: $50

jr_013_6146:
    ld [hl+], a                                   ; $6146: $22
    dec b                                         ; $6147: $05
    ld b, b                                       ; $6148: $40
    dec bc                                        ; $6149: $0B
    nop                                           ; $614A: $00
    ld [hl-], a                                   ; $614B: $32
    inc de                                        ; $614C: $13
    ld a, h                                       ; $614D: $7C
    ld e, a                                       ; $614E: $5F
    sbc h                                         ; $614F: $9C
    ld b, c                                       ; $6150: $41
    ld sp, $2913                                  ; $6151: $31 $13 $29
    ld h, c                                       ; $6154: $61
    ld [hl+], a                                   ; $6155: $22
    adc $40                                       ; $6156: $CE $40
    nop                                           ; $6158: $00
    add d                                         ; $6159: $82
    rra                                           ; $615A: $1F
    ld [de], a                                    ; $615B: $12
    ld c, e                                       ; $615C: $4B
    ld bc, $A224                                  ; $615D: $01 $24 $A2
    inc de                                        ; $6160: $13
    ld bc, $6700                                  ; $6161: $01 $00 $67
    ld h, e                                       ; $6164: $63

jr_013_6165:
    inc de                                        ; $6165: $13
    ld [bc], a                                    ; $6166: $02
    nop                                           ; $6167: $00
    jp nc, $1362                                  ; $6168: $D2 $62 $13

    inc bc                                        ; $616B: $03
    nop                                           ; $616C: $00
    dec a                                         ; $616D: $3D
    ld h, d                                       ; $616E: $62
    inc de                                        ; $616F: $13
    inc b                                         ; $6170: $04
    nop                                           ; $6171: $00
    db $FC                                        ; $6172: $FC
    ld h, e                                       ; $6173: $63
    rst $38                                       ; $6174: $FF
    sub h                                         ; $6175: $94
    ld b, e                                       ; $6176: $43
    rrca                                          ; $6177: $0F
    inc b                                         ; $6178: $04
    dec b                                         ; $6179: $05
    ld a, [bc]                                    ; $617A: $0A
    inc de                                        ; $617B: $13
    ld b, b                                       ; $617C: $40
    ld h, h                                       ; $617D: $64
    ld b, d                                       ; $617E: $42
    ld [bc], a                                    ; $617F: $02
    rra                                           ; $6180: $1F
    nop                                           ; $6181: $00
    dec hl                                        ; $6182: $2B
    rra                                           ; $6183: $1F
    ld b, l                                       ; $6184: $45
    inc de                                        ; $6185: $13
    add hl, hl                                    ; $6186: $29
    ld h, c                                       ; $6187: $61
    ld [bc], a                                    ; $6188: $02
    ld d, $15                                     ; $6189: $16 $15
    nop                                           ; $618B: $00
    ld l, $45                                     ; $618C: $2E $45
    inc de                                        ; $618E: $13
    db $EB                                        ; $618F: $EB
    ld h, l                                       ; $6190: $65
    ld [bc], a                                    ; $6191: $02
    nop                                           ; $6192: $00
    dec e                                         ; $6193: $1D
    dec l                                         ; $6194: $2D
    inc e                                         ; $6195: $1C
    ld b, l                                       ; $6196: $45
    inc de                                        ; $6197: $13
    dec c                                         ; $6198: $0D
    ld h, l                                       ; $6199: $65

jr_013_619A:
    ld bc, $0804                                  ; $619A: $01 $04 $08
    rlca                                          ; $619D: $07
    nop                                           ; $619E: $00
    ld l, e                                       ; $619F: $6B
    ld c, d                                       ; $61A0: $4A
    ld l, [hl]                                    ; $61A1: $6E
    rrca                                          ; $61A2: $0F
    rst $38                                       ; $61A3: $FF
    ld a, a                                       ; $61A4: $7F
    halt                                          ; $61A5: $76
    ld a, [bc]                                    ; $61A6: $0A
    rrca                                          ; $61A7: $0F
    ld b, l                                       ; $61A8: $45
    inc de                                        ; $61A9: $13
    inc sp                                        ; $61AA: $33
    ld l, e                                       ; $61AB: $6B
    ld b, l                                       ; $61AC: $45
    inc de                                        ; $61AD: $13
    db $EC                                        ; $61AE: $EC
    ld h, c                                       ; $61AF: $61
    ld b, l                                       ; $61B0: $45
    inc de                                        ; $61B1: $13
    add c                                         ; $61B2: $81
    ld h, d                                       ; $61B3: $62
    ld b, l                                       ; $61B4: $45
    inc de                                        ; $61B5: $13
    ld d, $63                                     ; $61B6: $16 $63
    ld b, l                                       ; $61B8: $45

jr_013_61B9:
    inc de                                        ; $61B9: $13
    xor e                                         ; $61BA: $AB
    ld h, e                                       ; $61BB: $63
    and h                                         ; $61BC: $A4
    jr z, @-$5B                                   ; $61BD: $28 $A3

    ld b, b                                       ; $61BF: $40
    ld [bc], a                                    ; $61C0: $02
    dec e                                         ; $61C1: $1D
    sub c                                         ; $61C2: $91
    push de                                       ; $61C3: $D5
    and h                                         ; $61C4: $A4
    jr z, @-$5B                                   ; $61C5: $28 $A3

    add b                                         ; $61C7: $80
    nop                                           ; $61C8: $00
    dec c                                         ; $61C9: $0D
    call c, $A4D3                                 ; $61CA: $DC $D3 $A4
    add hl, hl                                    ; $61CD: $29
    and e                                         ; $61CE: $A3
    ld bc, $1700                                  ; $61CF: $01 $00 $17
    and h                                         ; $61D2: $A4
    db $D3                                        ; $61D3: $D3
    and h                                         ; $61D4: $A4
    add hl, hl                                    ; $61D5: $29
    and e                                         ; $61D6: $A3
    ld [bc], a                                    ; $61D7: $02
    nop                                           ; $61D8: $00
    ld [bc], a                                    ; $61D9: $02
    ld c, e                                       ; $61DA: $4B
    jp nc, $29A4                                  ; $61DB: $D2 $A4 $29

    and e                                         ; $61DE: $A3
    inc b                                         ; $61DF: $04
    nop                                           ; $61E0: $00
    ld [bc], a                                    ; $61E1: $02
    dec hl                                        ; $61E2: $2B
    jp nc, $29A4                                  ; $61E3: $D2 $A4 $29

    and e                                         ; $61E6: $A3
    ld [$0200], sp                                ; $61E7: $08 $00 $02
    dec bc                                        ; $61EA: $0B
    jp nc, $0F43                                  ; $61EB: $D2 $43 $0F

    ld bc, $A224                                  ; $61EE: $01 $24 $A2
    dec b                                         ; $61F1: $05
    inc bc                                        ; $61F2: $03
    inc de                                        ; $61F3: $13
    inc a                                         ; $61F4: $3C
    ld h, d                                       ; $61F5: $62
    add l                                         ; $61F6: $85
    ld c, $AC                                     ; $61F7: $0E $AC
    inc h                                         ; $61F9: $24
    and d                                         ; $61FA: $A2
    inc bc                                        ; $61FB: $03

jr_013_61FC:
    ld l, e                                       ; $61FC: $6B
    ld [bc], a                                    ; $61FD: $02
    ld a, h                                       ; $61FE: $7C
    adc e                                         ; $61FF: $8B
    ld l, e                                       ; $6200: $6B
    nop                                           ; $6201: $00
    adc a                                         ; $6202: $8F
    ld bc, $026B                                  ; $6203: $01 $6B $02
    ld a, h                                       ; $6206: $7C
    dec hl                                        ; $6207: $2B
    ld l, e                                       ; $6208: $6B
    jr nz, jr_013_619A                            ; $6209: $20 $8F

    ld bc, $046B                                  ; $620B: $01 $6B $04
    ld a, h                                       ; $620E: $7C
    inc a                                         ; $620F: $3C
    ld d, h                                       ; $6210: $54
    ld b, b                                       ; $6211: $40
    adc a                                         ; $6212: $8F
    ld bc, $046B                                  ; $6213: $01 $6B $04
    ld a, h                                       ; $6216: $7C
    ld a, h                                       ; $6217: $7C
    ld d, c                                       ; $6218: $51
    add b                                         ; $6219: $80
    adc a                                         ; $621A: $8F
    ld bc, $026B                                  ; $621B: $01 $6B $02
    ld a, h                                       ; $621E: $7C
    dec hl                                        ; $621F: $2B
    ld l, d                                       ; $6220: $6A
    nop                                           ; $6221: $00
    adc [hl]                                      ; $6222: $8E
    ld bc, $026B                                  ; $6223: $01 $6B $02
    ld a, h                                       ; $6226: $7C
    ld l, e                                       ; $6227: $6B
    ld l, d                                       ; $6228: $6A
    jr nz, jr_013_61B9                            ; $6229: $20 $8E

    ld bc, $046B                                  ; $622B: $01 $6B $04
    ld a, h                                       ; $622E: $7C

jr_013_622F:
    ld a, h                                       ; $622F: $7C
    ld d, [hl]                                    ; $6230: $56
    ld b, b                                       ; $6231: $40
    adc [hl]                                      ; $6232: $8E
    ld bc, $046B                                  ; $6233: $01 $6B $04
    ld a, h                                       ; $6236: $7C
    cp h                                          ; $6237: $BC
    ld e, b                                       ; $6238: $58
    add b                                         ; $6239: $80
    adc [hl]                                      ; $623A: $8E
    ld bc, $8542                                  ; $623B: $01 $42 $85
    ld c, $6B                                     ; $623E: $0E $6B
    ld [bc], a                                    ; $6240: $02
    ld a, h                                       ; $6241: $7C
    adc e                                         ; $6242: $8B
    ld l, e                                       ; $6243: $6B
    nop                                           ; $6244: $00
    adc a                                         ; $6245: $8F
    ld bc, $026B                                  ; $6246: $01 $6B $02
    ld a, h                                       ; $6249: $7C
    dec hl                                        ; $624A: $2B
    ld l, e                                       ; $624B: $6B
    jr nz, @-$6F                                  ; $624C: $20 $8F

jr_013_624E:
    ld bc, $046B                                  ; $624E: $01 $6B $04
    ld a, h                                       ; $6251: $7C
    inc a                                         ; $6252: $3C
    ld d, h                                       ; $6253: $54
    ld b, b                                       ; $6254: $40
    adc a                                         ; $6255: $8F
    ld bc, $046B                                  ; $6256: $01 $6B $04
    ld a, h                                       ; $6259: $7C
    ld a, h                                       ; $625A: $7C
    ld d, c                                       ; $625B: $51
    add b                                         ; $625C: $80
    adc a                                         ; $625D: $8F
    ld bc, $026B                                  ; $625E: $01 $6B $02
    ld a, h                                       ; $6261: $7C
    dec hl                                        ; $6262: $2B
    ld l, d                                       ; $6263: $6A
    nop                                           ; $6264: $00
    adc [hl]                                      ; $6265: $8E
    ld bc, $026B                                  ; $6266: $01 $6B $02
    ld a, h                                       ; $6269: $7C
    ld l, e                                       ; $626A: $6B
    ld l, d                                       ; $626B: $6A
    jr nz, jr_013_61FC                            ; $626C: $20 $8E

    ld bc, $046B                                  ; $626E: $01 $6B $04
    ld a, h                                       ; $6271: $7C

jr_013_6272:
    ld a, h                                       ; $6272: $7C
    ld d, [hl]                                    ; $6273: $56
    ld b, b                                       ; $6274: $40
    adc [hl]                                      ; $6275: $8E
    ld bc, $046B                                  ; $6276: $01 $6B $04
    ld a, h                                       ; $6279: $7C
    cp h                                          ; $627A: $BC
    ld e, b                                       ; $627B: $58
    add b                                         ; $627C: $80
    adc [hl]                                      ; $627D: $8E
    ld bc, $4294                                  ; $627E: $01 $94 $42
    ld b, e                                       ; $6281: $43
    rrca                                          ; $6282: $0F
    ld bc, $A224                                  ; $6283: $01 $24 $A2
    dec b                                         ; $6286: $05
    ld [bc], a                                    ; $6287: $02
    inc de                                        ; $6288: $13
    pop de                                        ; $6289: $D1
    ld h, d                                       ; $628A: $62
    add l                                         ; $628B: $85
    dec c                                         ; $628C: $0D
    xor h                                         ; $628D: $AC
    inc h                                         ; $628E: $24
    and d                                         ; $628F: $A2
    ld [bc], a                                    ; $6290: $02

jr_013_6291:
    ld l, e                                       ; $6291: $6B
    ld [bc], a                                    ; $6292: $02
    ld a, h                                       ; $6293: $7C
    ld c, e                                       ; $6294: $4B
    ld l, e                                       ; $6295: $6B
    nop                                           ; $6296: $00
    adc a                                         ; $6297: $8F
    ld bc, $026B                                  ; $6298: $01 $6B $02
    ld a, h                                       ; $629B: $7C
    ld l, e                                       ; $629C: $6B
    ld l, e                                       ; $629D: $6B
    jr nz, jr_013_622F                            ; $629E: $20 $8F

    ld bc, $046B                                  ; $62A0: $01 $6B $04
    ld a, h                                       ; $62A3: $7C
    inc a                                         ; $62A4: $3C
    ld d, h                                       ; $62A5: $54
    ld b, b                                       ; $62A6: $40
    adc a                                         ; $62A7: $8F
    ld bc, $046B                                  ; $62A8: $01 $6B $04
    ld a, h                                       ; $62AB: $7C
    ld a, h                                       ; $62AC: $7C
    ld d, c                                       ; $62AD: $51
    add b                                         ; $62AE: $80
    adc a                                         ; $62AF: $8F
    ld bc, $026B                                  ; $62B0: $01 $6B $02
    ld a, h                                       ; $62B3: $7C
    ld c, e                                       ; $62B4: $4B
    ld l, d                                       ; $62B5: $6A
    nop                                           ; $62B6: $00
    adc [hl]                                      ; $62B7: $8E
    ld bc, $026B                                  ; $62B8: $01 $6B $02
    ld d, b                                       ; $62BB: $50
    ldh [$7F], a                                  ; $62BC: $E0 $7F
    jr nz, jr_013_624E                            ; $62BE: $20 $8E

    ld bc, $046B                                  ; $62C0: $01 $6B $04
    ld a, h                                       ; $62C3: $7C

jr_013_62C4:
    ld a, h                                       ; $62C4: $7C
    ld d, [hl]                                    ; $62C5: $56
    ld b, b                                       ; $62C6: $40
    adc [hl]                                      ; $62C7: $8E
    ld bc, $046B                                  ; $62C8: $01 $6B $04
    ld a, h                                       ; $62CB: $7C
    cp h                                          ; $62CC: $BC
    ld e, b                                       ; $62CD: $58
    add b                                         ; $62CE: $80
    adc [hl]                                      ; $62CF: $8E
    ld bc, $8542                                  ; $62D0: $01 $42 $85
    dec c                                         ; $62D3: $0D
    ld l, e                                       ; $62D4: $6B
    ld [bc], a                                    ; $62D5: $02
    ld a, h                                       ; $62D6: $7C
    ld c, e                                       ; $62D7: $4B
    ld l, e                                       ; $62D8: $6B
    nop                                           ; $62D9: $00
    adc a                                         ; $62DA: $8F
    ld bc, $026B                                  ; $62DB: $01 $6B $02
    ld a, h                                       ; $62DE: $7C
    ld l, e                                       ; $62DF: $6B
    ld l, e                                       ; $62E0: $6B
    jr nz, jr_013_6272                            ; $62E1: $20 $8F

jr_013_62E3:
    ld bc, $046B                                  ; $62E3: $01 $6B $04
    ld a, h                                       ; $62E6: $7C
    inc a                                         ; $62E7: $3C
    ld d, h                                       ; $62E8: $54
    ld b, b                                       ; $62E9: $40
    adc a                                         ; $62EA: $8F
    ld bc, $046B                                  ; $62EB: $01 $6B $04
    ld a, h                                       ; $62EE: $7C
    ld a, h                                       ; $62EF: $7C
    ld d, c                                       ; $62F0: $51
    add b                                         ; $62F1: $80
    adc a                                         ; $62F2: $8F
    ld bc, $026B                                  ; $62F3: $01 $6B $02
    ld a, h                                       ; $62F6: $7C
    ld c, e                                       ; $62F7: $4B
    ld l, d                                       ; $62F8: $6A
    nop                                           ; $62F9: $00
    adc [hl]                                      ; $62FA: $8E
    ld bc, $026B                                  ; $62FB: $01 $6B $02
    ld d, b                                       ; $62FE: $50
    ldh [$7F], a                                  ; $62FF: $E0 $7F
    jr nz, jr_013_6291                            ; $6301: $20 $8E

    ld bc, $046B                                  ; $6303: $01 $6B $04
    ld a, h                                       ; $6306: $7C

jr_013_6307:
    ld a, h                                       ; $6307: $7C
    ld d, [hl]                                    ; $6308: $56
    ld b, b                                       ; $6309: $40
    adc [hl]                                      ; $630A: $8E
    ld bc, $046B                                  ; $630B: $01 $6B $04
    ld a, h                                       ; $630E: $7C
    cp h                                          ; $630F: $BC
    ld e, b                                       ; $6310: $58
    add b                                         ; $6311: $80
    adc [hl]                                      ; $6312: $8E
    ld bc, $4294                                  ; $6313: $01 $94 $42
    ld b, e                                       ; $6316: $43
    rrca                                          ; $6317: $0F
    ld bc, $A224                                  ; $6318: $01 $24 $A2
    dec b                                         ; $631B: $05
    ld bc, $6613                                  ; $631C: $01 $13 $66
    ld h, e                                       ; $631F: $63
    add l                                         ; $6320: $85
    dec bc                                        ; $6321: $0B
    xor h                                         ; $6322: $AC
    inc h                                         ; $6323: $24
    and d                                         ; $6324: $A2
    ld bc, $026B                                  ; $6325: $01 $6B $02
    ld a, h                                       ; $6328: $7C
    ld c, e                                       ; $6329: $4B
    ld l, e                                       ; $632A: $6B
    nop                                           ; $632B: $00
    adc a                                         ; $632C: $8F
    ld bc, $026B                                  ; $632D: $01 $6B $02
    ld a, h                                       ; $6330: $7C
    dec hl                                        ; $6331: $2B
    ld l, e                                       ; $6332: $6B
    jr nz, jr_013_62C4                            ; $6333: $20 $8F

    ld bc, $046B                                  ; $6335: $01 $6B $04
    ld a, h                                       ; $6338: $7C
    inc a                                         ; $6339: $3C
    ld d, h                                       ; $633A: $54
    ld b, b                                       ; $633B: $40
    adc a                                         ; $633C: $8F
    ld bc, $046B                                  ; $633D: $01 $6B $04
    ld a, h                                       ; $6340: $7C
    cp h                                          ; $6341: $BC
    ld d, e                                       ; $6342: $53
    add b                                         ; $6343: $80
    adc a                                         ; $6344: $8F
    ld bc, $026B                                  ; $6345: $01 $6B $02
    ld a, h                                       ; $6348: $7C
    ld c, e                                       ; $6349: $4B
    ld l, d                                       ; $634A: $6A
    nop                                           ; $634B: $00
    adc [hl]                                      ; $634C: $8E
    ld bc, $026B                                  ; $634D: $01 $6B $02
    ld a, h                                       ; $6350: $7C
    ld l, e                                       ; $6351: $6B
    ld l, d                                       ; $6352: $6A
    jr nz, jr_013_62E3                            ; $6353: $20 $8E

    ld bc, $046B                                  ; $6355: $01 $6B $04
    ld a, h                                       ; $6358: $7C

jr_013_6359:
    ld a, h                                       ; $6359: $7C
    ld d, [hl]                                    ; $635A: $56
    ld b, b                                       ; $635B: $40
    adc [hl]                                      ; $635C: $8E
    ld bc, $046B                                  ; $635D: $01 $6B $04
    ld a, h                                       ; $6360: $7C
    inc a                                         ; $6361: $3C
    ld e, c                                       ; $6362: $59
    add b                                         ; $6363: $80
    adc [hl]                                      ; $6364: $8E
    ld bc, $8542                                  ; $6365: $01 $42 $85
    dec bc                                        ; $6368: $0B
    ld l, e                                       ; $6369: $6B
    ld [bc], a                                    ; $636A: $02
    ld a, h                                       ; $636B: $7C
    ld c, e                                       ; $636C: $4B
    ld l, e                                       ; $636D: $6B
    nop                                           ; $636E: $00
    adc a                                         ; $636F: $8F
    ld bc, $026B                                  ; $6370: $01 $6B $02
    ld a, h                                       ; $6373: $7C
    dec hl                                        ; $6374: $2B
    ld l, e                                       ; $6375: $6B
    jr nz, jr_013_6307                            ; $6376: $20 $8F

jr_013_6378:
    ld bc, $046B                                  ; $6378: $01 $6B $04
    ld a, h                                       ; $637B: $7C
    inc a                                         ; $637C: $3C
    ld d, h                                       ; $637D: $54
    ld b, b                                       ; $637E: $40
    adc a                                         ; $637F: $8F
    ld bc, $046B                                  ; $6380: $01 $6B $04
    ld a, h                                       ; $6383: $7C
    cp h                                          ; $6384: $BC
    ld d, e                                       ; $6385: $53
    add b                                         ; $6386: $80
    adc a                                         ; $6387: $8F
    ld bc, $026B                                  ; $6388: $01 $6B $02
    ld a, h                                       ; $638B: $7C
    ld c, e                                       ; $638C: $4B
    ld l, d                                       ; $638D: $6A
    nop                                           ; $638E: $00
    adc [hl]                                      ; $638F: $8E
    ld bc, $026B                                  ; $6390: $01 $6B $02
    ld a, h                                       ; $6393: $7C
    ld l, e                                       ; $6394: $6B
    ld l, d                                       ; $6395: $6A
    jr nz, @-$70                                  ; $6396: $20 $8E

    ld bc, $046B                                  ; $6398: $01 $6B $04
    ld a, h                                       ; $639B: $7C

jr_013_639C:
    ld a, h                                       ; $639C: $7C
    ld d, [hl]                                    ; $639D: $56
    ld b, b                                       ; $639E: $40
    adc [hl]                                      ; $639F: $8E
    ld bc, $046B                                  ; $63A0: $01 $6B $04
    ld a, h                                       ; $63A3: $7C
    inc a                                         ; $63A4: $3C
    ld e, c                                       ; $63A5: $59
    add b                                         ; $63A6: $80
    adc [hl]                                      ; $63A7: $8E
    ld bc, $4294                                  ; $63A8: $01 $94 $42
    ld b, e                                       ; $63AB: $43
    rrca                                          ; $63AC: $0F
    ld bc, $A224                                  ; $63AD: $01 $24 $A2
    dec b                                         ; $63B0: $05
    inc b                                         ; $63B1: $04
    inc de                                        ; $63B2: $13
    ei                                            ; $63B3: $FB
    ld h, e                                       ; $63B4: $63
    add l                                         ; $63B5: $85
    rlca                                          ; $63B6: $07
    xor h                                         ; $63B7: $AC
    inc h                                         ; $63B8: $24
    and d                                         ; $63B9: $A2
    inc b                                         ; $63BA: $04

jr_013_63BB:
    ld l, e                                       ; $63BB: $6B
    ld [bc], a                                    ; $63BC: $02
    ld a, h                                       ; $63BD: $7C
    ld c, e                                       ; $63BE: $4B
    ld l, e                                       ; $63BF: $6B
    nop                                           ; $63C0: $00
    adc a                                         ; $63C1: $8F
    ld bc, $026B                                  ; $63C2: $01 $6B $02
    ld a, h                                       ; $63C5: $7C
    dec hl                                        ; $63C6: $2B
    ld l, e                                       ; $63C7: $6B
    jr nz, jr_013_6359                            ; $63C8: $20 $8F

    ld bc, $046B                                  ; $63CA: $01 $6B $04
    ld a, h                                       ; $63CD: $7C
    db $FC                                        ; $63CE: $FC
    ld d, e                                       ; $63CF: $53
    ld b, b                                       ; $63D0: $40
    adc a                                         ; $63D1: $8F
    ld bc, $046B                                  ; $63D2: $01 $6B $04
    ld a, h                                       ; $63D5: $7C
    ld a, h                                       ; $63D6: $7C
    ld d, c                                       ; $63D7: $51
    add b                                         ; $63D8: $80
    adc a                                         ; $63D9: $8F
    ld bc, $026B                                  ; $63DA: $01 $6B $02
    ld a, h                                       ; $63DD: $7C
    ld c, e                                       ; $63DE: $4B
    ld l, d                                       ; $63DF: $6A
    nop                                           ; $63E0: $00
    adc [hl]                                      ; $63E1: $8E
    ld bc, $026B                                  ; $63E2: $01 $6B $02
    ld a, h                                       ; $63E5: $7C
    ld l, e                                       ; $63E6: $6B
    ld l, d                                       ; $63E7: $6A
    jr nz, jr_013_6378                            ; $63E8: $20 $8E

    ld bc, $046B                                  ; $63EA: $01 $6B $04
    ld a, h                                       ; $63ED: $7C
    cp h                                          ; $63EE: $BC
    ld d, [hl]                                    ; $63EF: $56
    ld b, b                                       ; $63F0: $40
    adc [hl]                                      ; $63F1: $8E
    ld bc, $046B                                  ; $63F2: $01 $6B $04
    ld a, h                                       ; $63F5: $7C
    cp h                                          ; $63F6: $BC
    ld e, b                                       ; $63F7: $58
    add b                                         ; $63F8: $80
    adc [hl]                                      ; $63F9: $8E
    ld bc, $8542                                  ; $63FA: $01 $42 $85
    rlca                                          ; $63FD: $07
    ld l, e                                       ; $63FE: $6B
    ld [bc], a                                    ; $63FF: $02
    ld a, h                                       ; $6400: $7C
    ld c, e                                       ; $6401: $4B
    ld l, e                                       ; $6402: $6B
    nop                                           ; $6403: $00
    adc a                                         ; $6404: $8F
    ld bc, $026B                                  ; $6405: $01 $6B $02
    ld a, h                                       ; $6408: $7C
    dec hl                                        ; $6409: $2B
    ld l, e                                       ; $640A: $6B
    jr nz, jr_013_639C                            ; $640B: $20 $8F

    ld bc, $046B                                  ; $640D: $01 $6B $04
    ld a, h                                       ; $6410: $7C
    db $FC                                        ; $6411: $FC
    ld d, e                                       ; $6412: $53
    ld b, b                                       ; $6413: $40
    adc a                                         ; $6414: $8F
    ld bc, $046B                                  ; $6415: $01 $6B $04
    ld a, h                                       ; $6418: $7C
    ld a, h                                       ; $6419: $7C
    ld d, c                                       ; $641A: $51
    add b                                         ; $641B: $80
    adc a                                         ; $641C: $8F
    ld bc, $026B                                  ; $641D: $01 $6B $02
    ld a, h                                       ; $6420: $7C
    ld c, e                                       ; $6421: $4B
    ld l, d                                       ; $6422: $6A
    nop                                           ; $6423: $00
    adc [hl]                                      ; $6424: $8E
    ld bc, $026B                                  ; $6425: $01 $6B $02
    ld a, h                                       ; $6428: $7C
    ld l, e                                       ; $6429: $6B
    ld l, d                                       ; $642A: $6A
    jr nz, jr_013_63BB                            ; $642B: $20 $8E

    ld bc, $046B                                  ; $642D: $01 $6B $04
    ld a, h                                       ; $6430: $7C
    cp h                                          ; $6431: $BC
    ld d, [hl]                                    ; $6432: $56
    ld b, b                                       ; $6433: $40
    adc [hl]                                      ; $6434: $8E
    ld bc, $046B                                  ; $6435: $01 $6B $04
    ld a, h                                       ; $6438: $7C
    cp h                                          ; $6439: $BC
    ld e, b                                       ; $643A: $58
    add b                                         ; $643B: $80
    adc [hl]                                      ; $643C: $8E
    ld bc, $4294                                  ; $643D: $01 $94 $42
    add e                                         ; $6440: $83
    ld bc, $0200                                  ; $6441: $01 $00 $02
    ld bc, $0002                                  ; $6444: $01 $02 $00
    ld [bc], a                                    ; $6447: $02
    nop                                           ; $6448: $00
    rst $38                                       ; $6449: $FF
    ld [bc], a                                    ; $644A: $02
    rst $38                                       ; $644B: $FF
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    ld b, [hl]                                    ; $644E: $46
    ld b, b                                       ; $644F: $40
    ld h, h                                       ; $6450: $64
    add e                                         ; $6451: $83
    ld bc, $0200                                  ; $6452: $01 $00 $02
    ld bc, $0002                                  ; $6455: $01 $02 $00
    ld [bc], a                                    ; $6458: $02
    nop                                           ; $6459: $00
    rst $38                                       ; $645A: $FF
    ld [bc], a                                    ; $645B: $02
    rst $38                                       ; $645C: $FF
    nop                                           ; $645D: $00
    ld bc, $0200                                  ; $645E: $01 $00 $02
    ld bc, $0002                                  ; $6461: $01 $02 $00
    ld [bc], a                                    ; $6464: $02
    nop                                           ; $6465: $00
    rst $38                                       ; $6466: $FF
    ld [bc], a                                    ; $6467: $02
    rst $38                                       ; $6468: $FF
    nop                                           ; $6469: $00
    ld bc, $0200                                  ; $646A: $01 $00 $02
    ld bc, $0002                                  ; $646D: $01 $02 $00
    ld [bc], a                                    ; $6470: $02
    nop                                           ; $6471: $00
    rst $38                                       ; $6472: $FF
    ld [bc], a                                    ; $6473: $02
    rst $38                                       ; $6474: $FF
    nop                                           ; $6475: $00
    ld bc, $0200                                  ; $6476: $01 $00 $02
    ld bc, $0002                                  ; $6479: $01 $02 $00
    ld [bc], a                                    ; $647C: $02
    nop                                           ; $647D: $00
    rst $38                                       ; $647E: $FF
    ld [bc], a                                    ; $647F: $02
    rst $38                                       ; $6480: $FF
    nop                                           ; $6481: $00
    ld bc, $0200                                  ; $6482: $01 $00 $02
    ld bc, $0002                                  ; $6485: $01 $02 $00
    ld [bc], a                                    ; $6488: $02
    nop                                           ; $6489: $00
    rst $38                                       ; $648A: $FF
    ld [bc], a                                    ; $648B: $02
    rst $38                                       ; $648C: $FF
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    ld d, a                                       ; $648F: $57
    ld bc, $9342                                  ; $6490: $01 $42 $93
    add l                                         ; $6493: $85
    rrca                                          ; $6494: $0F
    ld h, l                                       ; $6495: $65
    ld h, d                                       ; $6496: $62
    ld b, a                                       ; $6497: $47
    ld c, a                                       ; $6498: $4F
    ld h, [hl]                                    ; $6499: $66
    ret nz                                        ; $649A: $C0

    ld e, h                                       ; $649B: $5C
    ld hl, $9564                                  ; $649C: $21 $64 $95
    ld c, b                                       ; $649F: $48
    ld l, c                                       ; $64A0: $69
    or [hl]                                       ; $64A1: $B6
    ld c, b                                       ; $64A2: $48
    dec b                                         ; $64A3: $05
    nop                                           ; $64A4: $00
    add c                                         ; $64A5: $81
    ld e, l                                       ; $64A6: $5D
    dec b                                         ; $64A7: $05
    dec b                                         ; $64A8: $05

jr_013_64A9:
    and l                                         ; $64A9: $A5
    ret nc                                        ; $64AA: $D0

    nop                                           ; $64AB: $00
    jr nz, jr_013_64A9                            ; $64AC: $20 $FB

    ld d, b                                       ; $64AE: $50
    ld [hl+], a                                   ; $64AF: $22
    dec b                                         ; $64B0: $05
    ld b, b                                       ; $64B1: $40
    dec bc                                        ; $64B2: $0B
    nop                                           ; $64B3: $00
    ld [hl-], a                                   ; $64B4: $32
    inc de                                        ; $64B5: $13
    ld a, h                                       ; $64B6: $7C
    ld e, a                                       ; $64B7: $5F
    sbc h                                         ; $64B8: $9C
    ld b, c                                       ; $64B9: $41
    ld sp, $EF13                                  ; $64BA: $31 $13 $EF
    ld h, h                                       ; $64BD: $64
    ld [hl+], a                                   ; $64BE: $22
    adc $40                                       ; $64BF: $CE $40
    nop                                           ; $64C1: $00
    add d                                         ; $64C2: $82
    ld e, d                                       ; $64C3: $5A
    inc de                                        ; $64C4: $13
    and $64                                       ; $64C5: $E6 $64
    inc h                                         ; $64C7: $24
    ld d, b                                       ; $64C8: $50
    rra                                           ; $64C9: $1F
    ld [de], a                                    ; $64CA: $12
    ld c, e                                       ; $64CB: $4B
    ld bc, $A224                                  ; $64CC: $01 $24 $A2
    inc de                                        ; $64CF: $13
    ld bc, $6700                                  ; $64D0: $01 $00 $67
    ld h, e                                       ; $64D3: $63
    inc de                                        ; $64D4: $13
    ld [bc], a                                    ; $64D5: $02
    nop                                           ; $64D6: $00
    jp nc, $1362                                  ; $64D7: $D2 $62 $13

    inc bc                                        ; $64DA: $03
    nop                                           ; $64DB: $00
    dec a                                         ; $64DC: $3D
    ld h, d                                       ; $64DD: $62
    inc de                                        ; $64DE: $13
    inc b                                         ; $64DF: $04
    nop                                           ; $64E0: $00
    db $FC                                        ; $64E1: $FC
    ld h, e                                       ; $64E2: $63
    rst $38                                       ; $64E3: $FF
    sub h                                         ; $64E4: $94
    ld b, d                                       ; $64E5: $42
    ld b, e                                       ; $64E6: $43
    rrca                                          ; $64E7: $0F
    inc b                                         ; $64E8: $04
    dec b                                         ; $64E9: $05
    ld a, [bc]                                    ; $64EA: $0A
    inc de                                        ; $64EB: $13
    ld b, b                                       ; $64EC: $40
    ld h, h                                       ; $64ED: $64
    ld b, d                                       ; $64EE: $42
    sub e                                         ; $64EF: $93
    add l                                         ; $64F0: $85
    rrca                                          ; $64F1: $0F
    ld l, d                                       ; $64F2: $6A
    or h                                          ; $64F3: $B4
    ld l, h                                       ; $64F4: $6C
    ld a, e                                       ; $64F5: $7B
    cp h                                          ; $64F6: $BC
    ld c, [hl]                                    ; $64F7: $4E
    ld a, h                                       ; $64F8: $7C
    ld b, [hl]                                    ; $64F9: $46
    sbc c                                         ; $64FA: $99
    ld h, h                                       ; $64FB: $64
    ld [bc], a                                    ; $64FC: $02
    dec e                                         ; $64FD: $1D
    nop                                           ; $64FE: $00
    inc e                                         ; $64FF: $1C
    dec l                                         ; $6500: $2D
    ld b, l                                       ; $6501: $45
    inc de                                        ; $6502: $13
    sub d                                         ; $6503: $92
    ld h, h                                       ; $6504: $64
    and h                                         ; $6505: $A4
    ld b, [hl]                                    ; $6506: $46
    and e                                         ; $6507: $A3
    ld bc, $1100                                  ; $6508: $01 $00 $11
    sbc d                                         ; $650B: $9A
    ret nc                                        ; $650C: $D0

    sub e                                         ; $650D: $93
    ld h, l                                       ; $650E: $65
    ld [hl], c                                    ; $650F: $71
    ld b, a                                       ; $6510: $47
    ld c, a                                       ; $6511: $4F
    ld h, [hl]                                    ; $6512: $66
    ret nz                                        ; $6513: $C0

    ld e, h                                       ; $6514: $5C
    ld hl, $CF64                                  ; $6515: $21 $64 $CF
    ld c, b                                       ; $6518: $48
    ld l, c                                       ; $6519: $69
    call nc, $0548                                ; $651A: $D4 $48 $05
    nop                                           ; $651D: $00
    add c                                         ; $651E: $81
    ld e, l                                       ; $651F: $5D
    dec b                                         ; $6520: $05
    dec b                                         ; $6521: $05

jr_013_6522:
    sbc e                                         ; $6522: $9B
    ret nc                                        ; $6523: $D0

    nop                                           ; $6524: $00
    jr nz, jr_013_6522                            ; $6525: $20 $FB

    ld d, b                                       ; $6527: $50
    ld [hl+], a                                   ; $6528: $22
    dec b                                         ; $6529: $05
    ld b, b                                       ; $652A: $40
    dec bc                                        ; $652B: $0B
    nop                                           ; $652C: $00
    ld [hl-], a                                   ; $652D: $32
    inc de                                        ; $652E: $13
    ld a, h                                       ; $652F: $7C
    ld e, a                                       ; $6530: $5F
    sbc h                                         ; $6531: $9C
    ld b, c                                       ; $6532: $41
    ld sp, $0D13                                  ; $6533: $31 $13 $0D
    ld h, l                                       ; $6536: $65
    ld [hl+], a                                   ; $6537: $22
    adc $40                                       ; $6538: $CE $40
    nop                                           ; $653A: $00
    add d                                         ; $653B: $82
    inc h                                         ; $653C: $24
    ld d, b                                       ; $653D: $50
    rra                                           ; $653E: $1F
    ld [de], a                                    ; $653F: $12
    sub h                                         ; $6540: $94
    ld b, e                                       ; $6541: $43
    rrca                                          ; $6542: $0F
    inc b                                         ; $6543: $04
    dec b                                         ; $6544: $05
    ld a, [bc]                                    ; $6545: $0A
    inc de                                        ; $6546: $13
    ld b, b                                       ; $6547: $40
    ld h, h                                       ; $6548: $64
    ld b, d                                       ; $6549: $42
    ld [bc], a                                    ; $654A: $02
    inc c                                         ; $654B: $0C
    rlca                                          ; $654C: $07
    ld bc, $452E                                  ; $654D: $01 $2E $45
    inc de                                        ; $6550: $13
    db $EB                                        ; $6551: $EB
    ld h, l                                       ; $6552: $65
    ld b, l                                       ; $6553: $45
    inc de                                        ; $6554: $13
    ld d, $63                                     ; $6555: $16 $63
    ld b, l                                       ; $6557: $45
    inc de                                        ; $6558: $13
    xor e                                         ; $6559: $AB
    ld h, e                                       ; $655A: $63
    sub e                                         ; $655B: $93
    add l                                         ; $655C: $85
    rrca                                          ; $655D: $0F
    ld h, l                                       ; $655E: $65
    add b                                         ; $655F: $80
    ld b, a                                       ; $6560: $47
    ld c, a                                       ; $6561: $4F
    ld h, [hl]                                    ; $6562: $66
    ret nz                                        ; $6563: $C0

    ld e, h                                       ; $6564: $5C
    ld hl, $D964                                  ; $6565: $21 $64 $D9
    ld c, b                                       ; $6568: $48
    dec b                                         ; $6569: $05
    nop                                           ; $656A: $00
    add c                                         ; $656B: $81
    ld e, l                                       ; $656C: $5D
    dec b                                         ; $656D: $05
    dec b                                         ; $656E: $05

jr_013_656F:
    sbc e                                         ; $656F: $9B
    ret nc                                        ; $6570: $D0

    nop                                           ; $6571: $00
    jr nz, jr_013_656F                            ; $6572: $20 $FB

    ld d, b                                       ; $6574: $50
    ld [hl+], a                                   ; $6575: $22
    dec b                                         ; $6576: $05
    ld b, b                                       ; $6577: $40
    dec bc                                        ; $6578: $0B
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    add d                                         ; $657B: $82
    ld e, d                                       ; $657C: $5A
    inc de                                        ; $657D: $13
    sbc a                                         ; $657E: $9F
    ld h, l                                       ; $657F: $65
    inc h                                         ; $6580: $24
    ld d, b                                       ; $6581: $50
    rra                                           ; $6582: $1F
    ld [de], a                                    ; $6583: $12
    ld c, e                                       ; $6584: $4B
    ld bc, $A224                                  ; $6585: $01 $24 $A2
    inc de                                        ; $6588: $13
    ld bc, $6700                                  ; $6589: $01 $00 $67
    ld h, e                                       ; $658C: $63
    inc de                                        ; $658D: $13
    ld [bc], a                                    ; $658E: $02
    nop                                           ; $658F: $00
    jp nc, $1362                                  ; $6590: $D2 $62 $13

    inc bc                                        ; $6593: $03
    nop                                           ; $6594: $00
    dec a                                         ; $6595: $3D
    ld h, d                                       ; $6596: $62
    inc de                                        ; $6597: $13
    inc b                                         ; $6598: $04
    nop                                           ; $6599: $00
    db $FC                                        ; $659A: $FC
    ld h, e                                       ; $659B: $63
    rst $38                                       ; $659C: $FF
    sub h                                         ; $659D: $94
    ld b, d                                       ; $659E: $42
    ld b, e                                       ; $659F: $43
    rrca                                          ; $65A0: $0F
    inc b                                         ; $65A1: $04
    dec b                                         ; $65A2: $05
    ld a, [bc]                                    ; $65A3: $0A
    inc de                                        ; $65A4: $13
    ld b, b                                       ; $65A5: $40
    ld h, h                                       ; $65A6: $64
    ld b, d                                       ; $65A7: $42
    ld [bc], a                                    ; $65A8: $02
    rra                                           ; $65A9: $1F
    nop                                           ; $65AA: $00
    ld [$4509], sp                                ; $65AB: $08 $09 $45
    inc de                                        ; $65AE: $13
    sbc c                                         ; $65AF: $99
    ld h, [hl]                                    ; $65B0: $66
    ld [bc], a                                    ; $65B1: $02
    dec d                                         ; $65B2: $15
    ld d, $2E                                     ; $65B3: $16 $2E
    nop                                           ; $65B5: $00
    ld b, l                                       ; $65B6: $45
    inc de                                        ; $65B7: $13
    sub d                                         ; $65B8: $92
    ld h, h                                       ; $65B9: $64
    ld bc, $020D                                  ; $65BA: $01 $0D $02
    ld b, l                                       ; $65BD: $45
    inc de                                        ; $65BE: $13
    ld e, e                                       ; $65BF: $5B
    ld h, l                                       ; $65C0: $65
    ld bc, $2306                                  ; $65C1: $01 $06 $23
    rlca                                          ; $65C4: $07
    nop                                           ; $65C5: $00
    ld l, e                                       ; $65C6: $6B
    ld c, d                                       ; $65C7: $4A
    ld l, [hl]                                    ; $65C8: $6E
    rrca                                          ; $65C9: $0F
    rst $38                                       ; $65CA: $FF
    ld a, a                                       ; $65CB: $7F
    halt                                          ; $65CC: $76
    ld a, [bc]                                    ; $65CD: $0A
    rrca                                          ; $65CE: $0F
    ld b, l                                       ; $65CF: $45
    inc de                                        ; $65D0: $13
    inc sp                                        ; $65D1: $33
    ld l, e                                       ; $65D2: $6B
    ld b, l                                       ; $65D3: $45
    inc de                                        ; $65D4: $13
    db $EC                                        ; $65D5: $EC
    ld h, c                                       ; $65D6: $61
    ld b, l                                       ; $65D7: $45
    inc de                                        ; $65D8: $13
    add c                                         ; $65D9: $81
    ld h, d                                       ; $65DA: $62
    ld b, l                                       ; $65DB: $45
    inc de                                        ; $65DC: $13
    ld d, $63                                     ; $65DD: $16 $63
    ld b, l                                       ; $65DF: $45
    inc de                                        ; $65E0: $13
    xor e                                         ; $65E1: $AB
    ld h, e                                       ; $65E2: $63
    and h                                         ; $65E3: $A4
    ccf                                           ; $65E4: $3F
    and e                                         ; $65E5: $A3
    ld [bc], a                                    ; $65E6: $02
    inc bc                                        ; $65E7: $03
    dec b                                         ; $65E8: $05
    add [hl]                                      ; $65E9: $86
    db $D3                                        ; $65EA: $D3
    sub e                                         ; $65EB: $93
    add l                                         ; $65EC: $85
    rrca                                          ; $65ED: $0F
    ld h, l                                       ; $65EE: $65
    adc a                                         ; $65EF: $8F
    ld b, a                                       ; $65F0: $47
    ld c, a                                       ; $65F1: $4F
    ld h, [hl]                                    ; $65F2: $66
    ret nz                                        ; $65F3: $C0

    ld e, h                                       ; $65F4: $5C
    ld hl, $E664                                  ; $65F5: $21 $64 $E6
    ld c, b                                       ; $65F8: $48
    ld l, c                                       ; $65F9: $69
    rlca                                          ; $65FA: $07
    ld c, c                                       ; $65FB: $49
    dec b                                         ; $65FC: $05
    nop                                           ; $65FD: $00
    add c                                         ; $65FE: $81
    ld e, l                                       ; $65FF: $5D
    dec b                                         ; $6600: $05
    dec b                                         ; $6601: $05

jr_013_6602:
    and l                                         ; $6602: $A5
    ret nc                                        ; $6603: $D0

    nop                                           ; $6604: $00
    jr nz, jr_013_6602                            ; $6605: $20 $FB

    ld d, b                                       ; $6607: $50
    ld [hl+], a                                   ; $6608: $22
    dec b                                         ; $6609: $05
    ld b, b                                       ; $660A: $40
    dec bc                                        ; $660B: $0B
    nop                                           ; $660C: $00
    ld [hl-], a                                   ; $660D: $32
    inc de                                        ; $660E: $13
    ld a, h                                       ; $660F: $7C
    ld e, a                                       ; $6610: $5F
    sbc h                                         ; $6611: $9C
    ld b, c                                       ; $6612: $41
    ld sp, $4813                                  ; $6613: $31 $13 $48
    ld h, [hl]                                    ; $6616: $66
    ld [hl+], a                                   ; $6617: $22
    adc $40                                       ; $6618: $CE $40
    nop                                           ; $661A: $00
    add d                                         ; $661B: $82
    ld e, d                                       ; $661C: $5A
    inc de                                        ; $661D: $13
    ccf                                           ; $661E: $3F
    ld h, [hl]                                    ; $661F: $66
    inc h                                         ; $6620: $24
    ld d, b                                       ; $6621: $50
    rra                                           ; $6622: $1F
    ld [de], a                                    ; $6623: $12
    ld c, e                                       ; $6624: $4B
    ld bc, $A224                                  ; $6625: $01 $24 $A2
    inc de                                        ; $6628: $13
    ld bc, $6700                                  ; $6629: $01 $00 $67
    ld h, e                                       ; $662C: $63
    inc de                                        ; $662D: $13
    ld [bc], a                                    ; $662E: $02
    nop                                           ; $662F: $00
    jp nc, $1362                                  ; $6630: $D2 $62 $13

    inc bc                                        ; $6633: $03
    nop                                           ; $6634: $00
    dec a                                         ; $6635: $3D
    ld h, d                                       ; $6636: $62
    inc de                                        ; $6637: $13
    inc b                                         ; $6638: $04
    nop                                           ; $6639: $00
    db $FC                                        ; $663A: $FC
    ld h, e                                       ; $663B: $63
    rst $38                                       ; $663C: $FF
    sub h                                         ; $663D: $94
    ld b, d                                       ; $663E: $42
    ld b, e                                       ; $663F: $43
    rrca                                          ; $6640: $0F
    inc b                                         ; $6641: $04
    dec b                                         ; $6642: $05
    ld a, [bc]                                    ; $6643: $0A
    inc de                                        ; $6644: $13
    ld b, b                                       ; $6645: $40
    ld h, h                                       ; $6646: $64
    ld b, d                                       ; $6647: $42
    sub e                                         ; $6648: $93
    add l                                         ; $6649: $85
    rrca                                          ; $664A: $0F
    ld l, d                                       ; $664B: $6A
    or h                                          ; $664C: $B4
    ld l, h                                       ; $664D: $6C
    ld a, e                                       ; $664E: $7B
    cp h                                          ; $664F: $BC
    ld c, [hl]                                    ; $6650: $4E
    ld a, h                                       ; $6651: $7C
    ld b, [hl]                                    ; $6652: $46
    ld a, [c]                                     ; $6653: $F2
    ld h, l                                       ; $6654: $65
    ld [bc], a                                    ; $6655: $02
    inc b                                         ; $6656: $04
    dec b                                         ; $6657: $05
    ld l, $00                                     ; $6658: $2E $00
    ld b, l                                       ; $665A: $45
    inc de                                        ; $665B: $13
    ret c                                         ; $665C: $D8

    ld l, l                                       ; $665D: $6D
    ld [bc], a                                    ; $665E: $02
    nop                                           ; $665F: $00
    rra                                           ; $6660: $1F
    add hl, bc                                    ; $6661: $09
    ld [$1345], sp                                ; $6662: $08 $45 $13
    db $EB                                        ; $6665: $EB
    ld h, l                                       ; $6666: $65
    ld bc, $241F                                  ; $6667: $01 $1F $24
    rlca                                          ; $666A: $07
    nop                                           ; $666B: $00
    ld l, e                                       ; $666C: $6B
    ld c, d                                       ; $666D: $4A
    ld l, [hl]                                    ; $666E: $6E
    rrca                                          ; $666F: $0F
    rst $38                                       ; $6670: $FF
    ld a, a                                       ; $6671: $7F
    halt                                          ; $6672: $76
    ld a, [bc]                                    ; $6673: $0A
    rrca                                          ; $6674: $0F
    ld b, l                                       ; $6675: $45
    inc de                                        ; $6676: $13
    inc sp                                        ; $6677: $33
    ld l, e                                       ; $6678: $6B
    ld b, l                                       ; $6679: $45
    inc de                                        ; $667A: $13
    db $EC                                        ; $667B: $EC
    ld h, c                                       ; $667C: $61
    ld b, l                                       ; $667D: $45
    inc de                                        ; $667E: $13
    add c                                         ; $667F: $81
    ld h, d                                       ; $6680: $62
    ld b, l                                       ; $6681: $45
    inc de                                        ; $6682: $13
    ld d, $63                                     ; $6683: $16 $63
    ld b, l                                       ; $6685: $45
    inc de                                        ; $6686: $13
    xor e                                         ; $6687: $AB
    ld h, e                                       ; $6688: $63
    and h                                         ; $6689: $A4
    dec a                                         ; $668A: $3D
    and e                                         ; $668B: $A3
    add b                                         ; $668C: $80
    nop                                           ; $668D: $00
    dec d                                         ; $668E: $15
    push bc                                       ; $668F: $C5
    ret nc                                        ; $6690: $D0

    and h                                         ; $6691: $A4
    ld a, $A3                                     ; $6692: $3E $A3
    inc b                                         ; $6694: $04
    nop                                           ; $6695: $00
    inc bc                                        ; $6696: $03
    ld d, $D5                                     ; $6697: $16 $D5
    sub e                                         ; $6699: $93
    add l                                         ; $669A: $85
    rrca                                          ; $669B: $0F
    ld h, l                                       ; $669C: $65
    sbc [hl]                                      ; $669D: $9E
    ld b, a                                       ; $669E: $47
    ld c, a                                       ; $669F: $4F
    ld h, [hl]                                    ; $66A0: $66
    ret nz                                        ; $66A1: $C0

    ld e, h                                       ; $66A2: $5C
    ld hl, $0C64                                  ; $66A3: $21 $64 $0C
    ld c, c                                       ; $66A6: $49
    ld l, c                                       ; $66A7: $69
    add hl, hl                                    ; $66A8: $29
    ld c, c                                       ; $66A9: $49
    dec b                                         ; $66AA: $05
    nop                                           ; $66AB: $00
    add c                                         ; $66AC: $81
    ld e, l                                       ; $66AD: $5D
    dec b                                         ; $66AE: $05
    dec b                                         ; $66AF: $05

jr_013_66B0:
    and l                                         ; $66B0: $A5
    ret nc                                        ; $66B1: $D0

    nop                                           ; $66B2: $00
    jr nz, jr_013_66B0                            ; $66B3: $20 $FB

    ld d, b                                       ; $66B5: $50
    ld [hl+], a                                   ; $66B6: $22
    dec b                                         ; $66B7: $05
    ld b, b                                       ; $66B8: $40
    dec bc                                        ; $66B9: $0B
    nop                                           ; $66BA: $00
    ld [hl-], a                                   ; $66BB: $32
    inc de                                        ; $66BC: $13
    ld a, h                                       ; $66BD: $7C
    ld e, a                                       ; $66BE: $5F
    sbc h                                         ; $66BF: $9C
    ld b, c                                       ; $66C0: $41
    ld sp, $9913                                  ; $66C1: $31 $13 $99
    ld h, [hl]                                    ; $66C4: $66
    ld [hl+], a                                   ; $66C5: $22
    adc $40                                       ; $66C6: $CE $40
    nop                                           ; $66C8: $00
    add d                                         ; $66C9: $82
    ld e, d                                       ; $66CA: $5A
    inc de                                        ; $66CB: $13
    db $ED                                        ; $66CC: $ED
    ld h, [hl]                                    ; $66CD: $66
    inc h                                         ; $66CE: $24
    ld d, b                                       ; $66CF: $50
    rra                                           ; $66D0: $1F
    ld [de], a                                    ; $66D1: $12
    ld c, e                                       ; $66D2: $4B
    ld bc, $A224                                  ; $66D3: $01 $24 $A2
    inc de                                        ; $66D6: $13
    ld bc, $6700                                  ; $66D7: $01 $00 $67
    ld h, e                                       ; $66DA: $63
    inc de                                        ; $66DB: $13
    ld [bc], a                                    ; $66DC: $02
    nop                                           ; $66DD: $00
    jp nc, $1362                                  ; $66DE: $D2 $62 $13

    inc bc                                        ; $66E1: $03
    nop                                           ; $66E2: $00
    dec a                                         ; $66E3: $3D
    ld h, d                                       ; $66E4: $62
    inc de                                        ; $66E5: $13
    inc b                                         ; $66E6: $04
    nop                                           ; $66E7: $00
    db $FC                                        ; $66E8: $FC
    ld h, e                                       ; $66E9: $63
    rst $38                                       ; $66EA: $FF
    sub h                                         ; $66EB: $94
    ld b, d                                       ; $66EC: $42
    ld b, e                                       ; $66ED: $43
    rrca                                          ; $66EE: $0F
    inc b                                         ; $66EF: $04
    dec b                                         ; $66F0: $05
    ld a, [bc]                                    ; $66F1: $0A
    inc de                                        ; $66F2: $13
    ld b, b                                       ; $66F3: $40
    ld h, h                                       ; $66F4: $64
    ld b, d                                       ; $66F5: $42
    ld [bc], a                                    ; $66F6: $02
    nop                                           ; $66F7: $00
    daa                                           ; $66F8: $27
    add hl, bc                                    ; $66F9: $09
    ld d, $45                                     ; $66FA: $16 $45
    inc de                                        ; $66FC: $13
    inc sp                                        ; $66FD: $33
    ld l, e                                       ; $66FE: $6B
    and h                                         ; $66FF: $A4
    dec a                                         ; $6700: $3D
    and e                                         ; $6701: $A3
    ld b, b                                       ; $6702: $40
    ld [bc], a                                    ; $6703: $02
    ld [hl+], a                                   ; $6704: $22
    ld c, e                                       ; $6705: $4B
    db $D3                                        ; $6706: $D3
    sub e                                         ; $6707: $93
    ld h, l                                       ; $6708: $65
    xor l                                         ; $6709: $AD
    ld b, a                                       ; $670A: $47
    ld c, a                                       ; $670B: $4F
    ld h, [hl]                                    ; $670C: $66
    ret nz                                        ; $670D: $C0

    ld e, h                                       ; $670E: $5C
    ld hl, $3264                                  ; $670F: $21 $64 $32
    ld c, c                                       ; $6712: $49
    ld l, c                                       ; $6713: $69
    scf                                           ; $6714: $37
    ld c, c                                       ; $6715: $49
    dec b                                         ; $6716: $05
    nop                                           ; $6717: $00
    add c                                         ; $6718: $81
    ld e, l                                       ; $6719: $5D
    dec b                                         ; $671A: $05
    dec b                                         ; $671B: $05

jr_013_671C:
    and $D0                                       ; $671C: $E6 $D0
    nop                                           ; $671E: $00
    jr nz, jr_013_671C                            ; $671F: $20 $FB

    ld d, b                                       ; $6721: $50
    ld [hl+], a                                   ; $6722: $22
    dec b                                         ; $6723: $05
    ld b, b                                       ; $6724: $40
    dec bc                                        ; $6725: $0B
    nop                                           ; $6726: $00
    ld [hl-], a                                   ; $6727: $32
    inc de                                        ; $6728: $13
    ld a, h                                       ; $6729: $7C
    ld e, a                                       ; $672A: $5F
    sbc h                                         ; $672B: $9C
    ld b, c                                       ; $672C: $41
    ld sp, $0713                                  ; $672D: $31 $13 $07
    ld h, a                                       ; $6730: $67
    ld [hl+], a                                   ; $6731: $22
    adc $40                                       ; $6732: $CE $40
    nop                                           ; $6734: $00
    add d                                         ; $6735: $82
    inc h                                         ; $6736: $24
    ld d, b                                       ; $6737: $50
    rra                                           ; $6738: $1F
    ld [de], a                                    ; $6739: $12
    sub h                                         ; $673A: $94
    ld b, e                                       ; $673B: $43
    rrca                                          ; $673C: $0F
    inc b                                         ; $673D: $04
    dec b                                         ; $673E: $05
    ld a, [bc]                                    ; $673F: $0A
    inc de                                        ; $6740: $13
    ld b, b                                       ; $6741: $40
    ld h, h                                       ; $6742: $64
    ld b, d                                       ; $6743: $42
    ld [bc], a                                    ; $6744: $02
    ld c, $0B                                     ; $6745: $0E $0B
    daa                                           ; $6747: $27
    nop                                           ; $6748: $00
    ld b, l                                       ; $6749: $45
    inc de                                        ; $674A: $13
    add hl, hl                                    ; $674B: $29
    ld h, c                                       ; $674C: $61
    ld [bc], a                                    ; $674D: $02
    daa                                           ; $674E: $27
    nop                                           ; $674F: $00
    ld d, $09                                     ; $6750: $16 $09
    ld b, l                                       ; $6752: $45
    inc de                                        ; $6753: $13
    rlca                                          ; $6754: $07
    ld h, a                                       ; $6755: $67
    ld bc, $2605                                  ; $6756: $01 $05 $26
    rlca                                          ; $6759: $07
    nop                                           ; $675A: $00
    ld l, e                                       ; $675B: $6B
    ld c, d                                       ; $675C: $4A
    ld l, [hl]                                    ; $675D: $6E
    rrca                                          ; $675E: $0F
    rst $38                                       ; $675F: $FF
    ld a, a                                       ; $6760: $7F
    halt                                          ; $6761: $76
    ld a, [bc]                                    ; $6762: $0A
    rrca                                          ; $6763: $0F
    ld b, l                                       ; $6764: $45
    inc de                                        ; $6765: $13
    db $EB                                        ; $6766: $EB
    ld h, l                                       ; $6767: $65
    ld bc, $0806                                  ; $6768: $01 $06 $08
    rlca                                          ; $676B: $07
    nop                                           ; $676C: $00
    ld l, e                                       ; $676D: $6B
    ld c, d                                       ; $676E: $4A
    ld l, [hl]                                    ; $676F: $6E
    rrca                                          ; $6770: $0F

jr_013_6771:
    rst $38                                       ; $6771: $FF
    ld a, a                                       ; $6772: $7F
    halt                                          ; $6773: $76
    ld a, [bc]                                    ; $6774: $0A
    rrca                                          ; $6775: $0F
    ld b, l                                       ; $6776: $45
    inc de                                        ; $6777: $13
    sub d                                         ; $6778: $92
    ld h, h                                       ; $6779: $64
    ld bc, $091A                                  ; $677A: $01 $1A $09
    rlca                                          ; $677D: $07
    nop                                           ; $677E: $00
    ld l, e                                       ; $677F: $6B
    ld c, d                                       ; $6780: $4A
    ld l, [hl]                                    ; $6781: $6E
    rrca                                          ; $6782: $0F
    rst $38                                       ; $6783: $FF
    ld a, a                                       ; $6784: $7F
    halt                                          ; $6785: $76
    ld a, [bc]                                    ; $6786: $0A
    rrca                                          ; $6787: $0F
    ld b, l                                       ; $6788: $45
    inc de                                        ; $6789: $13
    ret c                                         ; $678A: $D8

    ld l, l                                       ; $678B: $6D
    ld bc, $291A                                  ; $678C: $01 $1A $29
    rlca                                          ; $678F: $07
    nop                                           ; $6790: $00
    ld l, e                                       ; $6791: $6B
    ld c, d                                       ; $6792: $4A
    ld l, [hl]                                    ; $6793: $6E
    rrca                                          ; $6794: $0F
    rst $38                                       ; $6795: $FF
    ld a, a                                       ; $6796: $7F
    halt                                          ; $6797: $76
    ld a, [bc]                                    ; $6798: $0A
    rrca                                          ; $6799: $0F
    ld b, l                                       ; $679A: $45
    inc de                                        ; $679B: $13
    sbc c                                         ; $679C: $99
    ld h, [hl]                                    ; $679D: $66
    and e                                         ; $679E: $A3
    dec h                                         ; $679F: $25
    and c                                         ; $67A0: $A1
    ld bc, $D213                                  ; $67A1: $01 $13 $D2
    ld h, a                                       ; $67A4: $67
    ld a, [$D2C6]                                 ; $67A5: $FA $C6 $D2
    dec de                                        ; $67A8: $1B
    ld de, $0007                                  ; $67A9: $11 $07 $00
    ld l, e                                       ; $67AC: $6B
    ld c, d                                       ; $67AD: $4A
    add hl, bc                                    ; $67AE: $09
    nop                                           ; $67AF: $00

jr_013_67B0:
    jr nz, jr_013_6771                            ; $67B0: $20 $BF

    ld d, b                                       ; $67B2: $50
    ld a, h                                       ; $67B3: $7C
    ld a, [de]                                    ; $67B4: $1A
    inc de                                        ; $67B5: $13
    ld [bc], a                                    ; $67B6: $02
    ld b, b                                       ; $67B7: $40
    jr nz, jr_013_6805                            ; $67B8: $20 $4B

    ld bc, $A225                                  ; $67BA: $01 $25 $A2
    inc de                                        ; $67BD: $13
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    ld [hl], d                                    ; $67C0: $72
    ld l, b                                       ; $67C1: $68
    inc de                                        ; $67C2: $13
    ld bc, $AB00                                  ; $67C3: $01 $00 $AB
    ld l, b                                       ; $67C6: $68
    inc de                                        ; $67C7: $13
    ld [bc], a                                    ; $67C8: $02
    nop                                           ; $67C9: $00
    db $E4                                        ; $67CA: $E4
    ld l, b                                       ; $67CB: $68
    inc de                                        ; $67CC: $13
    inc bc                                        ; $67CD: $03
    nop                                           ; $67CE: $00
    dec e                                         ; $67CF: $1D
    ld l, c                                       ; $67D0: $69

jr_013_67D1:
    rst $38                                       ; $67D1: $FF
    ld b, d                                       ; $67D2: $42
    and e                                         ; $67D3: $A3
    dec h                                         ; $67D4: $25
    and c                                         ; $67D5: $A1
    ld [bc], a                                    ; $67D6: $02
    inc de                                        ; $67D7: $13
    rlca                                          ; $67D8: $07
    ld l, b                                       ; $67D9: $68
    ld a, [$D4DA]                                 ; $67DA: $FA $DA $D4
    dec de                                        ; $67DD: $1B
    ld de, $0007                                  ; $67DE: $11 $07 $00
    ld l, e                                       ; $67E1: $6B
    ld c, d                                       ; $67E2: $4A
    add hl, bc                                    ; $67E3: $09
    nop                                           ; $67E4: $00
    jr nz, jr_013_67B0                            ; $67E5: $20 $C9

    ld d, b                                       ; $67E7: $50
    ld a, h                                       ; $67E8: $7C
    ld [de], a                                    ; $67E9: $12
    add hl, de                                    ; $67EA: $19
    ld [bc], a                                    ; $67EB: $02
    ld b, b                                       ; $67EC: $40
    jr nz, jr_013_683A                            ; $67ED: $20 $4B

    ld bc, $A225                                  ; $67EF: $01 $25 $A2
    inc de                                        ; $67F2: $13
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    ld [hl], d                                    ; $67F5: $72
    ld l, b                                       ; $67F6: $68
    inc de                                        ; $67F7: $13
    ld bc, $AB00                                  ; $67F8: $01 $00 $AB
    ld l, b                                       ; $67FB: $68
    inc de                                        ; $67FC: $13
    ld [bc], a                                    ; $67FD: $02
    nop                                           ; $67FE: $00
    db $E4                                        ; $67FF: $E4
    ld l, b                                       ; $6800: $68
    inc de                                        ; $6801: $13
    inc bc                                        ; $6802: $03
    nop                                           ; $6803: $00
    dec e                                         ; $6804: $1D

jr_013_6805:
    ld l, c                                       ; $6805: $69
    rst $38                                       ; $6806: $FF
    ld b, d                                       ; $6807: $42
    and e                                         ; $6808: $A3
    dec h                                         ; $6809: $25
    and c                                         ; $680A: $A1
    inc b                                         ; $680B: $04
    inc de                                        ; $680C: $13
    inc a                                         ; $680D: $3C
    ld l, b                                       ; $680E: $68
    ld a, [$D0FD]                                 ; $680F: $FA $FD $D0
    dec de                                        ; $6812: $1B
    ld de, $0007                                  ; $6813: $11 $07 $00
    ld l, e                                       ; $6816: $6B
    ld c, d                                       ; $6817: $4A
    add hl, bc                                    ; $6818: $09
    nop                                           ; $6819: $00

jr_013_681A:
    jr nz, jr_013_67D1                            ; $681A: $20 $B5

    ld d, b                                       ; $681C: $50
    ld a, h                                       ; $681D: $7C
    ld [de], a                                    ; $681E: $12
    dec c                                         ; $681F: $0D
    ld [bc], a                                    ; $6820: $02
    ld b, b                                       ; $6821: $40
    jr nz, jr_013_686F                            ; $6822: $20 $4B

    ld bc, $A225                                  ; $6824: $01 $25 $A2
    inc de                                        ; $6827: $13
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    ld [hl], d                                    ; $682A: $72
    ld l, b                                       ; $682B: $68
    inc de                                        ; $682C: $13
    ld bc, $AB00                                  ; $682D: $01 $00 $AB
    ld l, b                                       ; $6830: $68
    inc de                                        ; $6831: $13
    ld [bc], a                                    ; $6832: $02
    nop                                           ; $6833: $00
    db $E4                                        ; $6834: $E4
    ld l, b                                       ; $6835: $68
    inc de                                        ; $6836: $13
    inc bc                                        ; $6837: $03
    nop                                           ; $6838: $00
    dec e                                         ; $6839: $1D

jr_013_683A:
    ld l, c                                       ; $683A: $69
    rst $38                                       ; $683B: $FF
    ld b, d                                       ; $683C: $42
    and e                                         ; $683D: $A3
    dec h                                         ; $683E: $25
    and c                                         ; $683F: $A1
    ld [$7113], sp                                ; $6840: $08 $13 $71
    ld l, b                                       ; $6843: $68
    ld a, [$D34A]                                 ; $6844: $FA $4A $D3
    dec de                                        ; $6847: $1B
    ld de, $0007                                  ; $6848: $11 $07 $00
    ld l, e                                       ; $684B: $6B
    ld c, d                                       ; $684C: $4A
    add hl, bc                                    ; $684D: $09
    nop                                           ; $684E: $00
    jr nz, jr_013_681A                            ; $684F: $20 $C9

    ld d, b                                       ; $6851: $50
    ld a, h                                       ; $6852: $7C
    dec bc                                        ; $6853: $0B
    inc de                                        ; $6854: $13
    ld [bc], a                                    ; $6855: $02
    ld b, b                                       ; $6856: $40
    jr nz, jr_013_68A4                            ; $6857: $20 $4B

    ld bc, $A225                                  ; $6859: $01 $25 $A2

jr_013_685C:
    inc de                                        ; $685C: $13
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    ld [hl], d                                    ; $685F: $72
    ld l, b                                       ; $6860: $68
    inc de                                        ; $6861: $13
    ld bc, $AB00                                  ; $6862: $01 $00 $AB
    ld l, b                                       ; $6865: $68
    inc de                                        ; $6866: $13
    ld [bc], a                                    ; $6867: $02
    nop                                           ; $6868: $00
    db $E4                                        ; $6869: $E4
    ld l, b                                       ; $686A: $68
    inc de                                        ; $686B: $13
    inc bc                                        ; $686C: $03
    nop                                           ; $686D: $00
    dec e                                         ; $686E: $1D

jr_013_686F:
    ld l, c                                       ; $686F: $69
    rst $38                                       ; $6870: $FF
    ld b, d                                       ; $6871: $42
    xor h                                         ; $6872: $AC
    dec h                                         ; $6873: $25
    and d                                         ; $6874: $A2
    ld bc, $135A                                  ; $6875: $01 $5A $13
    ld d, [hl]                                    ; $6878: $56
    ld l, c                                       ; $6879: $69
    dec de                                        ; $687A: $1B
    inc hl                                        ; $687B: $23
    ld a, [hl]                                    ; $687C: $7E
    ld e, $D4                                     ; $687D: $1E $D4
    ld bc, $7307                                  ; $687F: $01 $07 $73
    jp nc, $1B0F                                  ; $6882: $D2 $0F $1B

    ld a, [hl]                                    ; $6885: $7E
    jr jr_013_685C                                ; $6886: $18 $D4

    ld bc, $6207                                  ; $6888: $01 $07 $62
    jp nc, $0A0F                                  ; $688B: $D2 $0F $0A

    ld a, [hl]                                    ; $688E: $7E
    ld hl, $04D4                                  ; $688F: $21 $D4 $04
    inc b                                         ; $6892: $04
    ld sp, hl                                     ; $6893: $F9
    db $D3                                        ; $6894: $D3
    add hl, de                                    ; $6895: $19
    ld de, $097E                                  ; $6896: $11 $7E $09
    push de                                       ; $6899: $D5
    dec b                                         ; $689A: $05
    ld bc, $D1C8                                  ; $689B: $01 $C8 $D1
    dec bc                                        ; $689E: $0B
    db $10                                        ; $689F: $10
    ld b, b                                       ; $68A0: $40
    jr nc, jr_013_6920                            ; $68A1: $30 $7D

    adc c                                         ; $68A3: $89

jr_013_68A4:
    pop bc                                        ; $68A4: $C1
    ld [bc], a                                    ; $68A5: $02
    rlca                                          ; $68A6: $07
    nop                                           ; $68A7: $00
    add c                                         ; $68A8: $81
    ld e, l                                       ; $68A9: $5D
    ld b, d                                       ; $68AA: $42
    xor h                                         ; $68AB: $AC
    dec h                                         ; $68AC: $25
    and d                                         ; $68AD: $A2
    ld [bc], a                                    ; $68AE: $02
    ld e, d                                       ; $68AF: $5A
    inc de                                        ; $68B0: $13
    ld d, [hl]                                    ; $68B1: $56
    ld l, c                                       ; $68B2: $69
    dec de                                        ; $68B3: $1B
    inc hl                                        ; $68B4: $23
    ld a, [hl]                                    ; $68B5: $7E
    dec e                                         ; $68B6: $1D
    call nc, $0701                                ; $68B7: $D4 $01 $07
    ld [hl], d                                    ; $68BA: $72
    jp nc, $1A0F                                  ; $68BB: $D2 $0F $1A

    ld a, [hl]                                    ; $68BE: $7E
    add hl, de                                    ; $68BF: $19
    call nc, $0701                                ; $68C0: $D4 $01 $07
    ld h, e                                       ; $68C3: $63
    jp nc, $0B0F                                  ; $68C4: $D2 $0F $0B

    ld a, [hl]                                    ; $68C7: $7E
    ld sp, hl                                     ; $68C8: $F9
    db $D3                                        ; $68C9: $D3
    inc b                                         ; $68CA: $04
    inc b                                         ; $68CB: $04
    pop de                                        ; $68CC: $D1
    db $D3                                        ; $68CD: $D3
    jr jr_013_68E1                                ; $68CE: $18 $11

    ld a, [hl]                                    ; $68D0: $7E
    dec l                                         ; $68D1: $2D
    pop de                                        ; $68D2: $D1
    dec b                                         ; $68D3: $05
    ld bc, $D1F0                                  ; $68D4: $01 $F0 $D1
    inc c                                         ; $68D7: $0C
    db $10                                        ; $68D8: $10
    ld b, b                                       ; $68D9: $40
    jr nc, jr_013_6959                            ; $68DA: $30 $7D

    adc c                                         ; $68DC: $89
    pop bc                                        ; $68DD: $C1
    ld [bc], a                                    ; $68DE: $02
    rlca                                          ; $68DF: $07
    nop                                           ; $68E0: $00

jr_013_68E1:
    add c                                         ; $68E1: $81
    ld e, l                                       ; $68E2: $5D
    ld b, d                                       ; $68E3: $42
    xor h                                         ; $68E4: $AC
    dec h                                         ; $68E5: $25
    and d                                         ; $68E6: $A2
    inc bc                                        ; $68E7: $03
    ld e, d                                       ; $68E8: $5A
    inc de                                        ; $68E9: $13
    ld d, [hl]                                    ; $68EA: $56
    ld l, c                                       ; $68EB: $69
    dec de                                        ; $68EC: $1B
    inc hl                                        ; $68ED: $23
    ld a, [hl]                                    ; $68EE: $7E
    inc e                                         ; $68EF: $1C
    call nc, $0701                                ; $68F0: $D4 $01 $07
    ld [hl], c                                    ; $68F3: $71
    jp nc, $190F                                  ; $68F4: $D2 $0F $19

    ld a, [hl]                                    ; $68F7: $7E
    ld a, [de]                                    ; $68F8: $1A
    call nc, $0701                                ; $68F9: $D4 $01 $07
    ld h, h                                       ; $68FC: $64
    jp nc, $0C0F                                  ; $68FD: $D2 $0F $0C

    ld a, [hl]                                    ; $6900: $7E
    pop de                                        ; $6901: $D1
    db $D3                                        ; $6902: $D3
    inc b                                         ; $6903: $04
    inc b                                         ; $6904: $04
    xor c                                         ; $6905: $A9
    db $D3                                        ; $6906: $D3
    rla                                           ; $6907: $17
    ld de, $2D7E                                  ; $6908: $11 $7E $2D
    pop de                                        ; $690B: $D1
    dec b                                         ; $690C: $05
    ld bc, $D218                                  ; $690D: $01 $18 $D2
    dec c                                         ; $6910: $0D
    db $10                                        ; $6911: $10
    ld b, b                                       ; $6912: $40
    jr nc, jr_013_6992                            ; $6913: $30 $7D

    adc c                                         ; $6915: $89
    pop bc                                        ; $6916: $C1
    ld [bc], a                                    ; $6917: $02
    rlca                                          ; $6918: $07
    nop                                           ; $6919: $00
    add c                                         ; $691A: $81
    ld e, l                                       ; $691B: $5D
    ld b, d                                       ; $691C: $42
    xor h                                         ; $691D: $AC
    dec h                                         ; $691E: $25
    and d                                         ; $691F: $A2

jr_013_6920:
    inc b                                         ; $6920: $04
    ld e, d                                       ; $6921: $5A
    inc de                                        ; $6922: $13
    ld d, [hl]                                    ; $6923: $56
    ld l, c                                       ; $6924: $69
    dec de                                        ; $6925: $1B
    inc hl                                        ; $6926: $23
    ld a, [hl]                                    ; $6927: $7E
    dec de                                        ; $6928: $1B
    call nc, $0701                                ; $6929: $D4 $01 $07
    ld [hl], b                                    ; $692C: $70
    jp nc, $180F                                  ; $692D: $D2 $0F $18

    ld a, [hl]                                    ; $6930: $7E
    ld e, $D4                                     ; $6931: $1E $D4
    ld bc, $6507                                  ; $6933: $01 $07 $65
    jp nc, $0D0F                                  ; $6936: $D2 $0F $0D

    ld a, [hl]                                    ; $6939: $7E
    sbc c                                         ; $693A: $99
    call nc, $0404                                ; $693B: $D4 $04 $04
    xor c                                         ; $693E: $A9
    db $D3                                        ; $693F: $D3
    rla                                           ; $6940: $17
    ld de, $E47E                                  ; $6941: $11 $7E $E4
    call nc, $0305                                ; $6944: $D4 $05 $03
    ld b, b                                       ; $6947: $40
    jp nc, $100E                                  ; $6948: $D2 $0E $10

    ld b, b                                       ; $694B: $40
    jr nc, @+$7F                                  ; $694C: $30 $7D

    adc c                                         ; $694E: $89
    pop bc                                        ; $694F: $C1
    ld [bc], a                                    ; $6950: $02
    rlca                                          ; $6951: $07
    nop                                           ; $6952: $00
    add c                                         ; $6953: $81
    ld e, l                                       ; $6954: $5D
    ld b, d                                       ; $6955: $42
    add e                                         ; $6956: $83
    inc bc                                        ; $6957: $03
    nop                                           ; $6958: $00

jr_013_6959:
    db $FD                                        ; $6959: $FD
    nop                                           ; $695A: $00
    add e                                         ; $695B: $83
    inc bc                                        ; $695C: $03
    nop                                           ; $695D: $00
    inc bc                                        ; $695E: $03
    nop                                           ; $695F: $00
    add e                                         ; $6960: $83
    inc bc                                        ; $6961: $03
    inc bc                                        ; $6962: $03
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    add e                                         ; $6965: $83
    inc bc                                        ; $6966: $03
    db $FD                                        ; $6967: $FD
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    add e                                         ; $696A: $83
    inc bc                                        ; $696B: $03
    nop                                           ; $696C: $00
    db $FD                                        ; $696D: $FD
    nop                                           ; $696E: $00
    add e                                         ; $696F: $83
    inc bc                                        ; $6970: $03
    nop                                           ; $6971: $00
    inc bc                                        ; $6972: $03
    nop                                           ; $6973: $00
    add e                                         ; $6974: $83
    inc bc                                        ; $6975: $03
    inc bc                                        ; $6976: $03
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    add e                                         ; $6979: $83
    inc bc                                        ; $697A: $03
    db $FD                                        ; $697B: $FD
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    ld b, d                                       ; $697E: $42
    sbc a                                         ; $697F: $9F
    dec l                                         ; $6980: $2D
    ld d, h                                       ; $6981: $54
    ld l, a                                       ; $6982: $6F
    ld l, [hl]                                    ; $6983: $6E
    ld a, c                                       ; $6984: $79
    jr nz, jr_013_69EE                            ; $6985: $20 $67

    ld l, a                                       ; $6987: $6F
    ld [hl], h                                    ; $6988: $74
    jr nz, jr_013_69EC                            ; $6989: $20 $61

    rst $38                                       ; $698B: $FF
    ld b, e                                       ; $698C: $43
    ld l, a                                       ; $698D: $6F
    ld [hl], d                                    ; $698E: $72
    ld h, l                                       ; $698F: $65
    jr nz, @+$55                                  ; $6990: $20 $53

jr_013_6992:
    ld [hl], h                                    ; $6992: $74
    ld l, a                                       ; $6993: $6F
    ld l, [hl]                                    ; $6994: $6E
    ld h, l                                       ; $6995: $65
    ld hl, $FE2D                                  ; $6996: $21 $2D $FE
    db $FD                                        ; $6999: $FD
    sbc d                                         ; $699A: $9A
    ld e, b                                       ; $699B: $58
    ld bc, $9B42                                  ; $699C: $01 $42 $9B
    ld c, b                                       ; $699F: $48
    ld e, a                                       ; $69A0: $5F
    sbc a                                         ; $69A1: $9F
    ld c, a                                       ; $69A2: $4F
    ld l, a                                       ; $69A3: $6F
    ld l, e                                       ; $69A4: $6B
    ld l, $2E                                     ; $69A5: $2E $2E
    ld l, $20                                     ; $69A7: $2E $20
    ld h, c                                       ; $69A9: $61
    ld l, b                                       ; $69AA: $68
    inc l                                         ; $69AB: $2C
    jr nz, jr_013_6A25                            ; $69AC: $20 $77

    ld l, b                                       ; $69AE: $68
    ld l, a                                       ; $69AF: $6F
    rst $38                                       ; $69B0: $FF
    ld l, c                                       ; $69B1: $69
    ld [hl], e                                    ; $69B2: $73
    ld [hl], e                                    ; $69B3: $73
    ld [hl], e                                    ; $69B4: $73
    jr nz, jr_013_6A2B                            ; $69B5: $20 $74

    ld l, b                                       ; $69B7: $68
    ld l, c                                       ; $69B8: $69
    ld [hl], e                                    ; $69B9: $73
    ld [hl], e                                    ; $69BA: $73
    ld [hl], e                                    ; $69BB: $73
    ccf                                           ; $69BC: $3F
    cp $FD                                        ; $69BD: $FE $FD
    sbc e                                         ; $69BF: $9B
    ld a, b                                       ; $69C0: $78
    ld [hl], b                                    ; $69C1: $70
    sbc a                                         ; $69C2: $9F
    ld d, a                                       ; $69C3: $57
    ld l, b                                       ; $69C4: $68
    ld l, a                                       ; $69C5: $6F
    jr nz, jr_013_6A29                            ; $69C6: $20 $61

    ld [hl], d                                    ; $69C8: $72
    ld h, l                                       ; $69C9: $65
    jr nz, jr_013_6A45                            ; $69CA: $20 $79

    ld l, a                                       ; $69CC: $6F
    ld [hl], l                                    ; $69CD: $75
    ccf                                           ; $69CE: $3F
    cp $FD                                        ; $69CF: $FE $FD
    sbc e                                         ; $69D1: $9B
    ld c, b                                       ; $69D2: $48
    ld e, a                                       ; $69D3: $5F
    sbc a                                         ; $69D4: $9F
    ld c, c                                       ; $69D5: $49
    jr nz, jr_013_6A4B                            ; $69D6: $20 $73

    ld [hl], e                                    ; $69D8: $73
    ld [hl], e                                    ; $69D9: $73
    ld h, l                                       ; $69DA: $65
    ld h, l                                       ; $69DB: $65
    ld l, $2E                                     ; $69DC: $2E $2E
    ld l, $FE                                     ; $69DE: $2E $FE
    ld l, l                                       ; $69E0: $6D
    ld [hl], l                                    ; $69E1: $75
    ld h, a                                       ; $69E2: $67
    ld l, b                                       ; $69E3: $68
    ld l, $2E                                     ; $69E4: $2E $2E
    ld l, $FE                                     ; $69E6: $2E $FE
    db $FD                                        ; $69E8: $FD
    sbc e                                         ; $69E9: $9B
    ld a, b                                       ; $69EA: $78
    ld [hl], b                                    ; $69EB: $70

jr_013_69EC:
    sbc a                                         ; $69EC: $9F
    ld c, l                                       ; $69ED: $4D

jr_013_69EE:
    ld [hl], l                                    ; $69EE: $75
    ld h, a                                       ; $69EF: $67
    ld l, b                                       ; $69F0: $68
    ccf                                           ; $69F1: $3F
    cp $FD                                        ; $69F2: $FE $FD
    sbc e                                         ; $69F4: $9B
    ld c, b                                       ; $69F5: $48
    ld e, a                                       ; $69F6: $5F
    sbc a                                         ; $69F7: $9F
    ld b, a                                       ; $69F8: $47
    ld h, l                                       ; $69F9: $65
    ld l, b                                       ; $69FA: $68
    ld l, $2E                                     ; $69FB: $2E $2E
    ld l, $20                                     ; $69FD: $2E $20
    ld c, a                                       ; $69FF: $4F
    ld h, a                                       ; $6A00: $67
    ld h, c                                       ; $6A01: $61
    ld [hl], d                                    ; $6A02: $72
    rst $38                                       ; $6A03: $FF
    ld [hl], e                                    ; $6A04: $73
    ld [hl], e                                    ; $6A05: $73
    ld [hl], e                                    ; $6A06: $73
    ld l, l                                       ; $6A07: $6D
    ld h, l                                       ; $6A08: $65
    ld l, h                                       ; $6A09: $6C
    ld l, h                                       ; $6A0A: $6C
    ld [hl], e                                    ; $6A0B: $73
    ld [hl], e                                    ; $6A0C: $73
    ld [hl], e                                    ; $6A0D: $73
    jr nz, jr_013_6A71                            ; $6A0E: $20 $61

    cp $63                                        ; $6A10: $FE $63
    ld l, b                                       ; $6A12: $68
    ld l, c                                       ; $6A13: $69
    ld l, h                                       ; $6A14: $6C
    ld h, h                                       ; $6A15: $64
    ld l, $2E                                     ; $6A16: $2E $2E
    ld l, $20                                     ; $6A18: $2E $20
    ld a, c                                       ; $6A1A: $79
    ld h, l                                       ; $6A1B: $65
    ld [hl], e                                    ; $6A1C: $73
    ld [hl], e                                    ; $6A1D: $73
    ld [hl], e                                    ; $6A1E: $73
    inc l                                         ; $6A1F: $2C
    rst $38                                       ; $6A20: $FF
    ld [hl], h                                    ; $6A21: $74
    ld l, b                                       ; $6A22: $68
    ld l, c                                       ; $6A23: $69
    ld [hl], e                                    ; $6A24: $73

jr_013_6A25:
    ld [hl], e                                    ; $6A25: $73
    ld [hl], e                                    ; $6A26: $73
    jr nz, jr_013_6AA0                            ; $6A27: $20 $77

jr_013_6A29:
    ld l, c                                       ; $6A29: $69
    ld l, h                                       ; $6A2A: $6C

jr_013_6A2B:
    ld l, h                                       ; $6A2B: $6C
    jr nz, jr_013_6A90                            ; $6A2C: $20 $62

    ld h, l                                       ; $6A2E: $65
    cp $61                                        ; $6A2F: $FE $61
    jr nz, @+$68                                  ; $6A31: $20 $66

    ld h, l                                       ; $6A33: $65
    ld h, c                                       ; $6A34: $61
    ld [hl], e                                    ; $6A35: $73
    ld [hl], e                                    ; $6A36: $73
    ld [hl], e                                    ; $6A37: $73
    ld [hl], h                                    ; $6A38: $74
    jr nz, jr_013_6AA1                            ; $6A39: $20 $66

    ld l, a                                       ; $6A3B: $6F
    ld [hl], d                                    ; $6A3C: $72
    rst $38                                       ; $6A3D: $FF
    ld l, l                                       ; $6A3E: $6D
    ld a, c                                       ; $6A3F: $79
    jr nz, jr_013_6AB2                            ; $6A40: $20 $70

    ld h, l                                       ; $6A42: $65
    ld [hl], h                                    ; $6A43: $74
    ld [hl], e                                    ; $6A44: $73

jr_013_6A45:
    ld [hl], e                                    ; $6A45: $73
    ld [hl], e                                    ; $6A46: $73
    ld l, $2E                                     ; $6A47: $2E $2E
    ld l, $FE                                     ; $6A49: $2E $FE

jr_013_6A4B:
    db $FD                                        ; $6A4B: $FD
    sbc e                                         ; $6A4C: $9B
    ld a, b                                       ; $6A4D: $78
    ld [hl], b                                    ; $6A4E: $70
    sbc a                                         ; $6A4F: $9F
    ld c, c                                       ; $6A50: $49
    jr nz, jr_013_6AB7                            ; $6A51: $20 $64

    ld l, a                                       ; $6A53: $6F
    ld l, [hl]                                    ; $6A54: $6E
    daa                                           ; $6A55: $27
    ld [hl], h                                    ; $6A56: $74
    jr nz, jr_013_6ACC                            ; $6A57: $20 $73

    ld [hl], l                                    ; $6A59: $75
    ld [hl], b                                    ; $6A5A: $70
    ld [hl], b                                    ; $6A5B: $70
    ld l, a                                       ; $6A5C: $6F
    ld [hl], e                                    ; $6A5D: $73
    ld h, l                                       ; $6A5E: $65
    rst $38                                       ; $6A5F: $FF
    ld a, c                                       ; $6A60: $79
    ld l, a                                       ; $6A61: $6F
    ld [hl], l                                    ; $6A62: $75
    daa                                           ; $6A63: $27
    ld l, h                                       ; $6A64: $6C
    ld l, h                                       ; $6A65: $6C
    jr nz, jr_013_6AD2                            ; $6A66: $20 $6A

    ld [hl], l                                    ; $6A68: $75
    ld [hl], e                                    ; $6A69: $73
    ld [hl], h                                    ; $6A6A: $74
    jr nz, @+$6E                                  ; $6A6B: $20 $6C

    ld h, l                                       ; $6A6D: $65
    ld [hl], h                                    ; $6A6E: $74
    cp $6D                                        ; $6A6F: $FE $6D

jr_013_6A71:
    ld h, l                                       ; $6A71: $65
    jr nz, jr_013_6ADB                            ; $6A72: $20 $67

    ld l, a                                       ; $6A74: $6F
    ccf                                           ; $6A75: $3F
    cp $FD                                        ; $6A76: $FE $FD
    sbc e                                         ; $6A78: $9B
    ld c, b                                       ; $6A79: $48
    ld e, a                                       ; $6A7A: $5F
    sbc a                                         ; $6A7B: $9F
    ld c, a                                       ; $6A7C: $4F
    ld l, a                                       ; $6A7D: $6F
    ld h, a                                       ; $6A7E: $67
    ld l, b                                       ; $6A7F: $68
    inc l                                         ; $6A80: $2C
    jr nz, jr_013_6AD2                            ; $6A81: $20 $4F

    ld h, a                                       ; $6A83: $67
    ld h, c                                       ; $6A84: $61
    ld [hl], d                                    ; $6A85: $72
    rst $38                                       ; $6A86: $FF
    ld h, h                                       ; $6A87: $64
    ld l, a                                       ; $6A88: $6F
    ld h, l                                       ; $6A89: $65
    ld [hl], e                                    ; $6A8A: $73
    ld [hl], e                                    ; $6A8B: $73
    ld [hl], e                                    ; $6A8C: $73
    ld l, [hl]                                    ; $6A8D: $6E
    daa                                           ; $6A8E: $27
    ld [hl], h                                    ; $6A8F: $74

jr_013_6A90:
    jr nz, jr_013_6AFE                            ; $6A90: $20 $6C

    ld h, l                                       ; $6A92: $65
    ld [hl], h                                    ; $6A93: $74
    cp $68                                        ; $6A94: $FE $68
    ld h, l                                       ; $6A96: $65
    ld [hl], d                                    ; $6A97: $72
    jr nz, @+$64                                  ; $6A98: $20 $62

    ld h, c                                       ; $6A9A: $61
    ld h, d                                       ; $6A9B: $62
    ld l, c                                       ; $6A9C: $69
    ld h, l                                       ; $6A9D: $65
    ld [hl], e                                    ; $6A9E: $73
    ld [hl], e                                    ; $6A9F: $73

jr_013_6AA0:
    ld [hl], e                                    ; $6AA0: $73

jr_013_6AA1:
    daa                                           ; $6AA1: $27
    rst $38                                       ; $6AA2: $FF
    ld h, h                                       ; $6AA3: $64
    ld l, c                                       ; $6AA4: $69
    ld l, [hl]                                    ; $6AA5: $6E
    ld l, [hl]                                    ; $6AA6: $6E
    ld h, l                                       ; $6AA7: $65
    ld [hl], d                                    ; $6AA8: $72
    jr nz, jr_013_6B12                            ; $6AA9: $20 $67

    ld h, l                                       ; $6AAB: $65
    ld [hl], h                                    ; $6AAC: $74
    cp $61                                        ; $6AAD: $FE $61
    ld [hl], a                                    ; $6AAF: $77
    ld h, c                                       ; $6AB0: $61
    ld a, c                                       ; $6AB1: $79

jr_013_6AB2:
    ld l, $2E                                     ; $6AB2: $2E $2E
    ld l, $FE                                     ; $6AB4: $2E $FE
    db $FD                                        ; $6AB6: $FD

jr_013_6AB7:
    sbc e                                         ; $6AB7: $9B
    ld a, b                                       ; $6AB8: $78
    ld [hl], b                                    ; $6AB9: $70
    sbc a                                         ; $6ABA: $9F
    ld c, c                                       ; $6ABB: $49
    jr nz, jr_013_6B24                            ; $6ABC: $20 $66

    ld l, c                                       ; $6ABE: $69
    ld h, a                                       ; $6ABF: $67
    ld [hl], l                                    ; $6AC0: $75
    ld [hl], d                                    ; $6AC1: $72
    ld h, l                                       ; $6AC2: $65
    ld h, h                                       ; $6AC3: $64
    ld l, $FE                                     ; $6AC4: $2E $FE
    db $FD                                        ; $6AC6: $FD
    sbc e                                         ; $6AC7: $9B
    ld c, b                                       ; $6AC8: $48
    ld e, a                                       ; $6AC9: $5F
    sbc a                                         ; $6ACA: $9F
    ld c, b                                       ; $6ACB: $48

jr_013_6ACC:
    ld h, l                                       ; $6ACC: $65
    ld h, l                                       ; $6ACD: $65
    ld l, $2E                                     ; $6ACE: $2E $2E
    ld l, $20                                     ; $6AD0: $2E $20

jr_013_6AD2:
    ld l, b                                       ; $6AD2: $68
    ld h, l                                       ; $6AD3: $65
    ld l, b                                       ; $6AD4: $68
    ld h, l                                       ; $6AD5: $65
    ld l, $2E                                     ; $6AD6: $2E $2E
    ld l, $FE                                     ; $6AD8: $2E $FE
    db $FD                                        ; $6ADA: $FD

jr_013_6ADB:
    sbc d                                         ; $6ADB: $9A
    ld e, b                                       ; $6ADC: $58
    ld [bc], a                                    ; $6ADD: $02
    ld b, d                                       ; $6ADE: $42
    sbc e                                         ; $6ADF: $9B
    ld a, b                                       ; $6AE0: $78
    ld [hl], b                                    ; $6AE1: $70
    sbc a                                         ; $6AE2: $9F
    ld d, h                                       ; $6AE3: $54
    ld l, b                                       ; $6AE4: $68
    ld h, c                                       ; $6AE5: $61
    ld [hl], h                                    ; $6AE6: $74
    daa                                           ; $6AE7: $27
    ld [hl], e                                    ; $6AE8: $73
    jr nz, jr_013_6B58                            ; $6AE9: $20 $6D

    ld a, c                                       ; $6AEB: $79
    jr nz, jr_013_6B51                            ; $6AEC: $20 $63

    ld [hl], l                                    ; $6AEE: $75
    ld h, l                                       ; $6AEF: $65
    rst $38                                       ; $6AF0: $FF
    ld [hl], h                                    ; $6AF1: $74
    ld l, a                                       ; $6AF2: $6F
    jr nz, @+$69                                  ; $6AF3: $20 $67

    ld h, l                                       ; $6AF5: $65
    ld [hl], h                                    ; $6AF6: $74
    jr nz, jr_013_6B68                            ; $6AF7: $20 $6F

    ld [hl], l                                    ; $6AF9: $75
    ld [hl], h                                    ; $6AFA: $74
    jr nz, jr_013_6B6C                            ; $6AFB: $20 $6F

    ld h, [hl]                                    ; $6AFD: $66

jr_013_6AFE:
    cp $68                                        ; $6AFE: $FE $68
    ld h, l                                       ; $6B00: $65
    ld [hl], d                                    ; $6B01: $72
    ld h, l                                       ; $6B02: $65
    ld l, $FE                                     ; $6B03: $2E $FE
    db $FD                                        ; $6B05: $FD
    sbc d                                         ; $6B06: $9A
    ld e, b                                       ; $6B07: $58
    inc b                                         ; $6B08: $04
    ld b, d                                       ; $6B09: $42
    ld e, d                                       ; $6B0A: $5A
    inc de                                        ; $6B0B: $13
    ld b, b                                       ; $6B0C: $40
    ld h, h                                       ; $6B0D: $64
    sbc e                                         ; $6B0E: $9B
    ld a, b                                       ; $6B0F: $78
    ld [hl], b                                    ; $6B10: $70
    sbc a                                         ; $6B11: $9F

jr_013_6B12:
    ld c, c                                       ; $6B12: $49
    jr nz, jr_013_6B77                            ; $6B13: $20 $62

    ld h, l                                       ; $6B15: $65
    ld [hl], h                                    ; $6B16: $74
    ld [hl], h                                    ; $6B17: $74
    ld h, l                                       ; $6B18: $65
    ld [hl], d                                    ; $6B19: $72
    jr nz, jr_013_6B84                            ; $6B1A: $20 $68

    ld [hl], l                                    ; $6B1C: $75
    ld [hl], d                                    ; $6B1D: $72
    ld [hl], d                                    ; $6B1E: $72
    ld a, c                                       ; $6B1F: $79
    rst $38                                       ; $6B20: $FF
    ld l, a                                       ; $6B21: $6F
    ld [hl], l                                    ; $6B22: $75
    ld [hl], h                                    ; $6B23: $74

jr_013_6B24:
    jr nz, jr_013_6B95                            ; $6B24: $20 $6F

    ld h, [hl]                                    ; $6B26: $66
    jr nz, jr_013_6B91                            ; $6B27: $20 $68

    ld h, l                                       ; $6B29: $65
    ld [hl], d                                    ; $6B2A: $72
    ld h, l                                       ; $6B2B: $65
    ld hl, $FDFE                                  ; $6B2C: $21 $FE $FD
    sbc d                                         ; $6B2F: $9A
    ld e, b                                       ; $6B30: $58
    dec b                                         ; $6B31: $05
    ld b, d                                       ; $6B32: $42
    sub e                                         ; $6B33: $93
    ld h, l                                       ; $6B34: $65
    bit 0, a                                      ; $6B35: $CB $47
    ld c, a                                       ; $6B37: $4F
    ld h, [hl]                                    ; $6B38: $66
    ret nz                                        ; $6B39: $C0

    ld e, h                                       ; $6B3A: $5C
    ld hl, $7264                                  ; $6B3B: $21 $64 $72
    ld c, c                                       ; $6B3E: $49
    ld l, c                                       ; $6B3F: $69
    adc e                                         ; $6B40: $8B
    ld c, c                                       ; $6B41: $49
    dec b                                         ; $6B42: $05
    nop                                           ; $6B43: $00
    add c                                         ; $6B44: $81
    ld e, l                                       ; $6B45: $5D
    dec b                                         ; $6B46: $05
    dec b                                         ; $6B47: $05

jr_013_6B48:
    call $00D0                                    ; $6B48: $CD $D0 $00
    jr nz, jr_013_6B48                            ; $6B4B: $20 $FB

    ld d, b                                       ; $6B4D: $50
    ld [hl+], a                                   ; $6B4E: $22
    dec b                                         ; $6B4F: $05
    ld b, b                                       ; $6B50: $40

jr_013_6B51:
    dec b                                         ; $6B51: $05
    ld [bc], a                                    ; $6B52: $02
    dec b                                         ; $6B53: $05
    ld h, h                                       ; $6B54: $64
    ld [de], a                                    ; $6B55: $12
    inc d                                         ; $6B56: $14
    ld [hl-], a                                   ; $6B57: $32

jr_013_6B58:
    db $D3                                        ; $6B58: $D3
    nop                                           ; $6B59: $00
    ld de, $73A4                                  ; $6B5A: $11 $A4 $73
    inc de                                        ; $6B5D: $13
    ld l, b                                       ; $6B5E: $68
    ld l, h                                       ; $6B5F: $6C
    dec b                                         ; $6B60: $05
    inc bc                                        ; $6B61: $03
    ld l, e                                       ; $6B62: $6B
    ld c, d                                       ; $6B63: $4A
    dec e                                         ; $6B64: $1D
    inc d                                         ; $6B65: $14
    dec a                                         ; $6B66: $3D
    db $D3                                        ; $6B67: $D3

jr_013_6B68:
    ld [$7E13], sp                                ; $6B68: $08 $13 $7E
    ld l, h                                       ; $6B6B: $6C

jr_013_6B6C:
    ld [hl+], a                                   ; $6B6C: $22
    dec b                                         ; $6B6D: $05
    ld b, b                                       ; $6B6E: $40
    ld l, e                                       ; $6B6F: $6B
    ld [$600D], sp                                ; $6B70: $08 $0D $60
    ld c, l                                       ; $6B73: $4D
    nop                                           ; $6B74: $00
    add b                                         ; $6B75: $80
    nop                                           ; $6B76: $00

jr_013_6B77:
    ld l, e                                       ; $6B77: $6B
    add hl, hl                                    ; $6B78: $29
    ld a, [bc]                                    ; $6B79: $0A
    ld b, b                                       ; $6B7A: $40
    ld l, a                                       ; $6B7B: $6F
    add b                                         ; $6B7C: $80
    add b                                         ; $6B7D: $80
    nop                                           ; $6B7E: $00
    dec bc                                        ; $6B7F: $0B
    nop                                           ; $6B80: $00
    dec bc                                        ; $6B81: $0B
    ld [bc], a                                    ; $6B82: $02
    ld [hl-], a                                   ; $6B83: $32

jr_013_6B84:
    inc de                                        ; $6B84: $13
    ld a, h                                       ; $6B85: $7C
    ld e, a                                       ; $6B86: $5F
    sbc h                                         ; $6B87: $9C
    ld b, c                                       ; $6B88: $41
    ld sp, $5B13                                  ; $6B89: $31 $13 $5B
    ld l, h                                       ; $6B8C: $6C
    ld [hl+], a                                   ; $6B8D: $22
    adc $40                                       ; $6B8E: $CE $40
    nop                                           ; $6B90: $00

jr_013_6B91:
    add d                                         ; $6B91: $82
    inc h                                         ; $6B92: $24
    ld d, b                                       ; $6B93: $50

jr_013_6B94:
    rra                                           ; $6B94: $1F

jr_013_6B95:
    ld [de], a                                    ; $6B95: $12
    ld c, e                                       ; $6B96: $4B
    ld bc, $A225                                  ; $6B97: $01 $25 $A2
    inc de                                        ; $6B9A: $13
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    ld e, c                                       ; $6B9D: $59
    ld l, h                                       ; $6B9E: $6C
    inc de                                        ; $6B9F: $13
    ld bc, $3500                                  ; $6BA0: $01 $00 $35
    ld l, h                                       ; $6BA3: $6C
    inc de                                        ; $6BA4: $13
    ld [bc], a                                    ; $6BA5: $02
    nop                                           ; $6BA6: $00
    dec c                                         ; $6BA7: $0D
    ld l, h                                       ; $6BA8: $6C
    inc de                                        ; $6BA9: $13
    inc bc                                        ; $6BAA: $03
    nop                                           ; $6BAB: $00
    push hl                                       ; $6BAC: $E5
    ld l, e                                       ; $6BAD: $6B
    inc de                                        ; $6BAE: $13
    inc b                                         ; $6BAF: $04
    nop                                           ; $6BB0: $00
    or h                                          ; $6BB1: $B4
    ld l, e                                       ; $6BB2: $6B
    rst $38                                       ; $6BB3: $FF
    ld a, [hl]                                    ; $6BB4: $7E
    dec de                                        ; $6BB5: $1B
    call nc, $0704                                ; $6BB6: $D4 $04 $07
    ld [hl], b                                    ; $6BB9: $70
    jp nc, $180F                                  ; $6BBA: $D2 $0F $18

    ld a, [hl]                                    ; $6BBD: $7E
    jr jr_013_6B94                                ; $6BBE: $18 $D4

    inc bc                                        ; $6BC0: $03
    rlca                                          ; $6BC1: $07
    ld h, d                                       ; $6BC2: $62
    jp nc, $0A0F                                  ; $6BC3: $D2 $0F $0A

    ld a, [hl]                                    ; $6BC6: $7E
    ld e, $D4                                     ; $6BC7: $1E $D4
    inc bc                                        ; $6BC9: $03
    rlca                                          ; $6BCA: $07
    ld h, l                                       ; $6BCB: $65
    jp nc, $0D0F                                  ; $6BCC: $D2 $0F $0D

    ld a, [hl]                                    ; $6BCF: $7E
    sub c                                         ; $6BD0: $91
    call nc, $0604                                ; $6BD1: $D4 $04 $06
    xor c                                         ; $6BD4: $A9
    db $D3                                        ; $6BD5: $D3
    rla                                           ; $6BD6: $17
    ld de, $907E                                  ; $6BD7: $11 $7E $90
    call nc, $0605                                ; $6BDA: $D4 $05 $06
    ret z                                         ; $6BDD: $C8

    pop de                                        ; $6BDE: $D1
    dec bc                                        ; $6BDF: $0B
    db $10                                        ; $6BE0: $10
    ld b, l                                       ; $6BE1: $45
    inc de                                        ; $6BE2: $13
    ld e, c                                       ; $6BE3: $59
    ld l, h                                       ; $6BE4: $6C
    ld a, [hl]                                    ; $6BE5: $7E
    inc e                                         ; $6BE6: $1C
    call nc, $0703                                ; $6BE7: $D4 $03 $07
    ld [hl], c                                    ; $6BEA: $71
    jp nc, $190F                                  ; $6BEB: $D2 $0F $19

    ld a, [hl]                                    ; $6BEE: $7E
    jr @-$2A                                      ; $6BEF: $18 $D4

    inc bc                                        ; $6BF1: $03
    rlca                                          ; $6BF2: $07
    ld h, d                                       ; $6BF3: $62
    jp nc, $0A0F                                  ; $6BF4: $D2 $0F $0A

    ld a, [hl]                                    ; $6BF7: $7E
    ld hl, $04D4                                  ; $6BF8: $21 $D4 $04
    ld b, $A9                                     ; $6BFB: $06 $A9
    db $D3                                        ; $6BFD: $D3
    rla                                           ; $6BFE: $17
    ld de, $E17E                                  ; $6BFF: $11 $7E $E1
    call nc, $0305                                ; $6C02: $D4 $05 $03
    ret z                                         ; $6C05: $C8

    pop de                                        ; $6C06: $D1
    dec bc                                        ; $6C07: $0B
    db $10                                        ; $6C08: $10
    ld b, l                                       ; $6C09: $45
    inc de                                        ; $6C0A: $13
    ld e, c                                       ; $6C0B: $59
    ld l, h                                       ; $6C0C: $6C
    ld a, [hl]                                    ; $6C0D: $7E
    dec e                                         ; $6C0E: $1D
    call nc, $0702                                ; $6C0F: $D4 $02 $07
    ld [hl], d                                    ; $6C12: $72
    jp nc, $1A0F                                  ; $6C13: $D2 $0F $1A

    ld a, [hl]                                    ; $6C16: $7E
    jr @-$2A                                      ; $6C17: $18 $D4

    ld [bc], a                                    ; $6C19: $02
    rlca                                          ; $6C1A: $07
    ld h, d                                       ; $6C1B: $62
    jp nc, $0A0F                                  ; $6C1C: $D2 $0F $0A

    ld a, [hl]                                    ; $6C1F: $7E
    ld hl, $04D4                                  ; $6C20: $21 $D4 $04
    dec b                                         ; $6C23: $05
    pop de                                        ; $6C24: $D1
    db $D3                                        ; $6C25: $D3
    jr @+$13                                      ; $6C26: $18 $11

    ld a, [hl]                                    ; $6C28: $7E
    dec l                                         ; $6C29: $2D
    pop de                                        ; $6C2A: $D1
    dec b                                         ; $6C2B: $05
    ld [bc], a                                    ; $6C2C: $02
    ret z                                         ; $6C2D: $C8

    pop de                                        ; $6C2E: $D1
    dec bc                                        ; $6C2F: $0B
    db $10                                        ; $6C30: $10
    ld b, l                                       ; $6C31: $45
    inc de                                        ; $6C32: $13
    ld e, c                                       ; $6C33: $59
    ld l, h                                       ; $6C34: $6C
    ld a, [hl]                                    ; $6C35: $7E
    ld e, $D4                                     ; $6C36: $1E $D4
    ld bc, $7307                                  ; $6C38: $01 $07 $73
    jp nc, $1B0F                                  ; $6C3B: $D2 $0F $1B

    ld a, [hl]                                    ; $6C3E: $7E
    jr @-$2A                                      ; $6C3F: $18 $D4

    ld bc, $6207                                  ; $6C41: $01 $07 $62
    jp nc, $0A0F                                  ; $6C44: $D2 $0F $0A

    ld a, [hl]                                    ; $6C47: $7E
    ld hl, $04D4                                  ; $6C48: $21 $D4 $04
    inc b                                         ; $6C4B: $04
    ld sp, hl                                     ; $6C4C: $F9
    db $D3                                        ; $6C4D: $D3
    add hl, de                                    ; $6C4E: $19
    ld de, $097E                                  ; $6C4F: $11 $7E $09
    push de                                       ; $6C52: $D5
    dec b                                         ; $6C53: $05
    ld bc, $D1C8                                  ; $6C54: $01 $C8 $D1

jr_013_6C57:
    dec bc                                        ; $6C57: $0B
    db $10                                        ; $6C58: $10
    sub h                                         ; $6C59: $94
    ld b, d                                       ; $6C5A: $42
    sub e                                         ; $6C5B: $93
    add l                                         ; $6C5C: $85
    rrca                                          ; $6C5D: $0F
    ld l, d                                       ; $6C5E: $6A
    or h                                          ; $6C5F: $B4
    ld l, h                                       ; $6C60: $6C
    ld a, e                                       ; $6C61: $7B
    cp h                                          ; $6C62: $BC
    ld c, [hl]                                    ; $6C63: $4E
    ld a, h                                       ; $6C64: $7C
    ld b, [hl]                                    ; $6C65: $46
    jr c, @+$6D                                   ; $6C66: $38 $6B

    xor h                                         ; $6C68: $AC
    or d                                          ; $6C69: $B2
    and d                                         ; $6C6A: $A2
    ld bc, $1596                                  ; $6C6B: $01 $96 $15
    ld [de], a                                    ; $6C6E: $12
    ld c, b                                       ; $6C6F: $48
    xor h                                         ; $6C70: $AC
    and h                                         ; $6C71: $A4
    and e                                         ; $6C72: $A3
    inc bc                                        ; $6C73: $03
    xor c                                         ; $6C74: $A9
    ld a, [bc]                                    ; $6C75: $0A
    nop                                           ; $6C76: $00
    dec bc                                        ; $6C77: $0B
    inc bc                                        ; $6C78: $03
    ld e, e                                       ; $6C79: $5B
    inc de                                        ; $6C7A: $13
    ld a, a                                       ; $6C7B: $7F
    ld l, c                                       ; $6C7C: $69
    ld b, d                                       ; $6C7D: $42
    inc c                                         ; $6C7E: $0C
    ld [bc], a                                    ; $6C7F: $02
    ld h, d                                       ; $6C80: $62
    ld bc, $135A                                  ; $6C81: $01 $5A $13
    ld d, c                                       ; $6C84: $51
    ld h, h                                       ; $6C85: $64
    ld h, c                                       ; $6C86: $61
    ld bc, $135B                                  ; $6C87: $01 $5B $13
    rst $18                                       ; $6C8A: $DF
    ld l, d                                       ; $6C8B: $6A
    ld h, d                                       ; $6C8C: $62
    inc b                                         ; $6C8D: $04
    dec d                                         ; $6C8E: $15
    rrca                                          ; $6C8F: $0F
    db $E4                                        ; $6C90: $E4
    ld c, l                                       ; $6C91: $4D
    ld d, b                                       ; $6C92: $50
    nop                                           ; $6C93: $00
    add e                                         ; $6C94: $83
    jr nz, jr_013_6C98                            ; $6C95: $20 $01

    nop                                           ; $6C97: $00

jr_013_6C98:
    nop                                           ; $6C98: $00
    rlca                                          ; $6C99: $07
    nop                                           ; $6C9A: $00
    ld l, e                                       ; $6C9B: $6B
    ld c, d                                       ; $6C9C: $4A
    add hl, bc                                    ; $6C9D: $09
    nop                                           ; $6C9E: $00
    inc de                                        ; $6C9F: $13
    cp l                                          ; $6CA0: $BD
    ld l, h                                       ; $6CA1: $6C
    dec d                                         ; $6CA2: $15
    rrca                                          ; $6CA3: $0F
    db $E4                                        ; $6CA4: $E4
    ld c, l                                       ; $6CA5: $4D
    db $10                                        ; $6CA6: $10
    rrca                                          ; $6CA7: $0F
    ld e, b                                       ; $6CA8: $58
    ld c, [hl]                                    ; $6CA9: $4E
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    ld e, e                                       ; $6CAC: $5B
    inc de                                        ; $6CAD: $13
    sbc [hl]                                      ; $6CAE: $9E
    ld l, c                                       ; $6CAF: $69
    ld h, d                                       ; $6CB0: $62
    ld [bc], a                                    ; $6CB1: $02
    dec d                                         ; $6CB2: $15
    rrca                                          ; $6CB3: $0F
    inc h                                         ; $6CB4: $24
    ld c, [hl]                                    ; $6CB5: $4E
    inc c                                         ; $6CB6: $0C
    rrca                                          ; $6CB7: $0F
    ld e, b                                       ; $6CB8: $58
    ld c, [hl]                                    ; $6CB9: $4E
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    ld b, d                                       ; $6CBC: $42
    inc d                                         ; $6CBD: $14
    jr nz, @-$35                                  ; $6CBE: $20 $C9

    ld d, b                                       ; $6CC0: $50
    ld h, d                                       ; $6CC1: $62
    ld [bc], a                                    ; $6CC2: $02
    dec d                                         ; $6CC3: $15
    jr nz, jr_013_6C57                            ; $6CC4: $20 $91

    ld d, b                                       ; $6CC6: $50
    ld [$C920], sp                                ; $6CC7: $08 $20 $C9
    ld d, b                                       ; $6CCA: $50
    nop                                           ; $6CCB: $00
    nop                                           ; $6CCC: $00
    ld sp, $D913                                  ; $6CCD: $31 $13 $D9
    ld l, h                                       ; $6CD0: $6C
    ld [hl+], a                                   ; $6CD1: $22
    adc $40                                       ; $6CD2: $CE $40
    ld b, l                                       ; $6CD4: $45
    inc de                                        ; $6CD5: $13
    ld c, a                                       ; $6CD6: $4F
    ld h, b                                       ; $6CD7: $60
    ld b, d                                       ; $6CD8: $42
    xor c                                         ; $6CD9: $A9
    ld a, [bc]                                    ; $6CDA: $0A
    nop                                           ; $6CDB: $00
    sub e                                         ; $6CDC: $93
    ld h, l                                       ; $6CDD: $65
    bit 0, a                                      ; $6CDE: $CB $47
    ld c, a                                       ; $6CE0: $4F
    ld h, [hl]                                    ; $6CE1: $66
    ret nz                                        ; $6CE2: $C0

    ld e, h                                       ; $6CE3: $5C
    ld hl, $7264                                  ; $6CE4: $21 $64 $72
    ld c, c                                       ; $6CE7: $49
    dec b                                         ; $6CE8: $05
    nop                                           ; $6CE9: $00
    ld l, e                                       ; $6CEA: $6B
    ld c, d                                       ; $6CEB: $4A
    ld [de], a                                    ; $6CEC: $12
    inc d                                         ; $6CED: $14
    ld [hl-], a                                   ; $6CEE: $32
    db $D3                                        ; $6CEF: $D3
    nop                                           ; $6CF0: $00
    inc de                                        ; $6CF1: $13
    ld d, h                                       ; $6CF2: $54
    ld l, l                                       ; $6CF3: $6D
    ld [hl+], a                                   ; $6CF4: $22
    dec b                                         ; $6CF5: $05
    ld b, b                                       ; $6CF6: $40
    dec bc                                        ; $6CF7: $0B
    nop                                           ; $6CF8: $00
    add d                                         ; $6CF9: $82
    rra                                           ; $6CFA: $1F
    ld [de], a                                    ; $6CFB: $12
    ld a, [hl]                                    ; $6CFC: $7E
    daa                                           ; $6CFD: $27
    ret nc                                        ; $6CFE: $D0

    ld bc, $C601                                  ; $6CFF: $01 $01 $C6
    jp nc, $1E11                                  ; $6D02: $D2 $11 $1E

    ld a, [hl]                                    ; $6D05: $7E
    daa                                           ; $6D06: $27
    ret nc                                        ; $6D07: $D0

    ld bc, $FD01                                  ; $6D08: $01 $01 $FD
    ret nc                                        ; $6D0B: $D0

    ld b, $0D                                     ; $6D0C: $06 $0D
    ld a, [hl]                                    ; $6D0E: $7E
    daa                                           ; $6D0F: $27
    ret nc                                        ; $6D10: $D0

    ld bc, $4A01                                  ; $6D11: $01 $01 $4A
    db $D3                                        ; $6D14: $D3
    dec d                                         ; $6D15: $15
    ld [bc], a                                    ; $6D16: $02
    ld a, [hl]                                    ; $6D17: $7E
    daa                                           ; $6D18: $27
    ret nc                                        ; $6D19: $D0

    ld bc, $DA01                                  ; $6D1A: $01 $01 $DA
    call nc, $021F                                ; $6D1D: $D4 $1F $02

jr_013_6D20:
    ld a, [hl]                                    ; $6D20: $7E
    dec de                                        ; $6D21: $1B
    call nc, $0704                                ; $6D22: $D4 $04 $07
    ld [hl], b                                    ; $6D25: $70
    jp nc, $180F                                  ; $6D26: $D2 $0F $18

    ld a, [hl]                                    ; $6D29: $7E
    dec de                                        ; $6D2A: $1B
    call nc, $0704                                ; $6D2B: $D4 $04 $07
    ld h, d                                       ; $6D2E: $62
    jp nc, $0A0F                                  ; $6D2F: $D2 $0F $0A

    ld a, [hl]                                    ; $6D32: $7E
    sub c                                         ; $6D33: $91
    call nc, $0604                                ; $6D34: $D4 $04 $06
    xor c                                         ; $6D37: $A9
    db $D3                                        ; $6D38: $D3
    rla                                           ; $6D39: $17
    ld de, $907E                                  ; $6D3A: $11 $7E $90
    call nc, $0605                                ; $6D3D: $D4 $05 $06
    ret z                                         ; $6D40: $C8

    pop de                                        ; $6D41: $D1
    dec bc                                        ; $6D42: $0B
    db $10                                        ; $6D43: $10
    sub h                                         ; $6D44: $94
    ld e, d                                       ; $6D45: $5A
    inc de                                        ; $6D46: $13
    ld b, b                                       ; $6D47: $40
    ld h, h                                       ; $6D48: $64
    ld e, h                                       ; $6D49: $5C
    nop                                           ; $6D4A: $00
    ld [bc], a                                    ; $6D4B: $02
    ld l, a                                       ; $6D4C: $6F
    rrca                                          ; $6D4D: $0F
    rst $38                                       ; $6D4E: $FF
    ld a, a                                       ; $6D4F: $7F
    halt                                          ; $6D50: $76
    jr nz, jr_013_6D62                            ; $6D51: $20 $0F

    ld b, d                                       ; $6D53: $42
    inc d                                         ; $6D54: $14
    jr nz, jr_013_6D20                            ; $6D55: $20 $C9

    ld d, b                                       ; $6D57: $50
    ld e, e                                       ; $6D58: $5B
    inc de                                        ; $6D59: $13
    ld a, [bc]                                    ; $6D5A: $0A
    ld l, e                                       ; $6D5B: $6B
    ld h, d                                       ; $6D5C: $62
    dec b                                         ; $6D5D: $05
    dec d                                         ; $6D5E: $15
    jr nz, jr_013_6DD8                            ; $6D5F: $20 $77

    ld d, b                                       ; $6D61: $50

jr_013_6D62:
    jr nc, jr_013_6D64                            ; $6D62: $30 $00

jr_013_6D64:
    ld e, h                                       ; $6D64: $5C
    nop                                           ; $6D65: $00
    ld [bc], a                                    ; $6D66: $02
    dec d                                         ; $6D67: $15
    jr nz, jr_013_6DE1                            ; $6D68: $20 $77

    ld d, b                                       ; $6D6A: $50
    jr nc, jr_013_6D6D                            ; $6D6B: $30 $00

jr_013_6D6D:
    ld bc, $0D06                                  ; $6D6D: $01 $06 $0D
    ld b, l                                       ; $6D70: $45
    dec d                                         ; $6D71: $15
    ld [de], a                                    ; $6D72: $12
    ld c, b                                       ; $6D73: $48
    ld [bc], a                                    ; $6D74: $02
    nop                                           ; $6D75: $00
    dec e                                         ; $6D76: $1D
    add hl, hl                                    ; $6D77: $29
    rra                                           ; $6D78: $1F
    ld b, l                                       ; $6D79: $45
    inc de                                        ; $6D7A: $13
    add hl, hl                                    ; $6D7B: $29
    ld h, c                                       ; $6D7C: $61
    ld [bc], a                                    ; $6D7D: $02
    dec b                                         ; $6D7E: $05
    inc b                                         ; $6D7F: $04
    nop                                           ; $6D80: $00
    ld l, $45                                     ; $6D81: $2E $45
    inc de                                        ; $6D83: $13
    sbc c                                         ; $6D84: $99
    ld h, [hl]                                    ; $6D85: $66
    ld bc, $061F                                  ; $6D86: $01 $1F $06
    rlca                                          ; $6D89: $07
    nop                                           ; $6D8A: $00
    ld l, e                                       ; $6D8B: $6B
    ld c, d                                       ; $6D8C: $4A
    ld l, [hl]                                    ; $6D8D: $6E
    rrca                                          ; $6D8E: $0F
    rst $38                                       ; $6D8F: $FF
    ld a, a                                       ; $6D90: $7F
    halt                                          ; $6D91: $76
    ld a, [bc]                                    ; $6D92: $0A
    rrca                                          ; $6D93: $0F
    ld b, l                                       ; $6D94: $45
    inc de                                        ; $6D95: $13
    inc sp                                        ; $6D96: $33
    ld l, e                                       ; $6D97: $6B
    ld b, l                                       ; $6D98: $45
    inc de                                        ; $6D99: $13
    db $EC                                        ; $6D9A: $EC
    ld h, c                                       ; $6D9B: $61
    ld b, l                                       ; $6D9C: $45
    inc de                                        ; $6D9D: $13
    add c                                         ; $6D9E: $81
    ld h, d                                       ; $6D9F: $62
    ld b, l                                       ; $6DA0: $45
    inc de                                        ; $6DA1: $13
    ld d, $63                                     ; $6DA2: $16 $63
    ld b, l                                       ; $6DA4: $45
    inc de                                        ; $6DA5: $13
    xor e                                         ; $6DA6: $AB
    ld h, e                                       ; $6DA7: $63
    and h                                         ; $6DA8: $A4
    add hl, hl                                    ; $6DA9: $29
    and e                                         ; $6DAA: $A3
    stop                                          ; $6DAB: $10 $00
    ld bc, $D284                                  ; $6DAD: $01 $84 $D2
    and h                                         ; $6DB0: $A4
    add hl, hl                                    ; $6DB1: $29
    and e                                         ; $6DB2: $A3
    jr nz, jr_013_6DB5                            ; $6DB3: $20 $00

jr_013_6DB5:
    ld bc, $D1F0                                  ; $6DB5: $01 $F0 $D1
    and h                                         ; $6DB8: $A4
    add hl, hl                                    ; $6DB9: $29
    and e                                         ; $6DBA: $A3
    ld b, b                                       ; $6DBB: $40
    nop                                           ; $6DBC: $00
    ld [bc], a                                    ; $6DBD: $02
    ld a, b                                       ; $6DBE: $78
    jp nc, $29A4                                  ; $6DBF: $D2 $A4 $29

    and e                                         ; $6DC2: $A3
    add b                                         ; $6DC3: $80
    nop                                           ; $6DC4: $00
    dec d                                         ; $6DC5: $15
    ld a, c                                       ; $6DC6: $79
    jp nc, $2AA4                                  ; $6DC7: $D2 $A4 $2A

    and e                                         ; $6DCA: $A3
    ld bc, $1100                                  ; $6DCB: $01 $00 $11
    ld d, e                                       ; $6DCE: $53
    push de                                       ; $6DCF: $D5
    and h                                         ; $6DD0: $A4
    ld a, [hl+]                                   ; $6DD1: $2A
    and e                                         ; $6DD2: $A3
    ld [bc], a                                    ; $6DD3: $02
    nop                                           ; $6DD4: $00
    ld de, $D406                                  ; $6DD5: $11 $06 $D4

jr_013_6DD8:
    sub e                                         ; $6DD8: $93
    add l                                         ; $6DD9: $85
    rrca                                          ; $6DDA: $0F
    ld h, l                                       ; $6DDB: $65
    cp h                                          ; $6DDC: $BC
    ld b, a                                       ; $6DDD: $47
    ld c, a                                       ; $6DDE: $4F
    ld h, [hl]                                    ; $6DDF: $66
    ret nz                                        ; $6DE0: $C0

jr_013_6DE1:
    ld e, h                                       ; $6DE1: $5C
    ld hl, $3C64                                  ; $6DE2: $21 $64 $3C
    ld c, c                                       ; $6DE5: $49
    ld l, c                                       ; $6DE6: $69
    ld e, c                                       ; $6DE7: $59
    ld c, c                                       ; $6DE8: $49
    dec b                                         ; $6DE9: $05
    nop                                           ; $6DEA: $00
    add c                                         ; $6DEB: $81
    ld e, l                                       ; $6DEC: $5D
    dec b                                         ; $6DED: $05
    dec b                                         ; $6DEE: $05

jr_013_6DEF:
    and l                                         ; $6DEF: $A5
    ret nc                                        ; $6DF0: $D0

    nop                                           ; $6DF1: $00
    jr nz, jr_013_6DEF                            ; $6DF2: $20 $FB

    ld d, b                                       ; $6DF4: $50
    ld [hl+], a                                   ; $6DF5: $22
    dec b                                         ; $6DF6: $05
    ld b, b                                       ; $6DF7: $40
    dec bc                                        ; $6DF8: $0B
    nop                                           ; $6DF9: $00
    ld [hl-], a                                   ; $6DFA: $32
    inc de                                        ; $6DFB: $13
    ld a, h                                       ; $6DFC: $7C
    ld e, a                                       ; $6DFD: $5F
    sbc h                                         ; $6DFE: $9C
    ld b, c                                       ; $6DFF: $41
    ld sp, $D813                                  ; $6E00: $31 $13 $D8
    ld l, l                                       ; $6E03: $6D
    ld [hl+], a                                   ; $6E04: $22
    adc $40                                       ; $6E05: $CE $40
    nop                                           ; $6E07: $00
    add d                                         ; $6E08: $82
    ld e, d                                       ; $6E09: $5A
    inc de                                        ; $6E0A: $13
    inc l                                         ; $6E0B: $2C
    ld l, [hl]                                    ; $6E0C: $6E
    inc h                                         ; $6E0D: $24
    ld d, b                                       ; $6E0E: $50
    rra                                           ; $6E0F: $1F
    ld [de], a                                    ; $6E10: $12
    ld c, e                                       ; $6E11: $4B
    ld bc, $A224                                  ; $6E12: $01 $24 $A2
    inc de                                        ; $6E15: $13
    ld bc, $6700                                  ; $6E16: $01 $00 $67
    ld h, e                                       ; $6E19: $63
    inc de                                        ; $6E1A: $13
    ld [bc], a                                    ; $6E1B: $02
    nop                                           ; $6E1C: $00
    jp nc, $1362                                  ; $6E1D: $D2 $62 $13

    inc bc                                        ; $6E20: $03
    nop                                           ; $6E21: $00
    dec a                                         ; $6E22: $3D
    ld h, d                                       ; $6E23: $62
    inc de                                        ; $6E24: $13
    inc b                                         ; $6E25: $04
    nop                                           ; $6E26: $00
    db $FC                                        ; $6E27: $FC
    ld h, e                                       ; $6E28: $63
    rst $38                                       ; $6E29: $FF
    sub h                                         ; $6E2A: $94
    ld b, d                                       ; $6E2B: $42
    ld b, e                                       ; $6E2C: $43
    rrca                                          ; $6E2D: $0F
    inc b                                         ; $6E2E: $04
    dec b                                         ; $6E2F: $05
    ld a, [bc]                                    ; $6E30: $0A
    inc de                                        ; $6E31: $13
    ld b, b                                       ; $6E32: $40
    ld h, h                                       ; $6E33: $64
    ld b, d                                       ; $6E34: $42
    ld bc, $1A0B                                  ; $6E35: $01 $0B $1A
    ld b, l                                       ; $6E38: $45
    cpl                                           ; $6E39: $2F
    ld h, l                                       ; $6E3A: $65
    ld b, c                                       ; $6E3B: $41
    ld [bc], a                                    ; $6E3C: $02
    rrca                                          ; $6E3D: $0F
    nop                                           ; $6E3E: $00
    jr jr_013_6E41                                ; $6E3F: $18 $00

jr_013_6E41:
    ld b, l                                       ; $6E41: $45

jr_013_6E42:
    inc de                                        ; $6E42: $13
    ld l, e                                       ; $6E43: $6B
    ld [hl], c                                    ; $6E44: $71
    ld [bc], a                                    ; $6E45: $02
    add hl, bc                                    ; $6E46: $09
    ld a, [bc]                                    ; $6E47: $0A
    jr jr_013_6E4B                                ; $6E48: $18 $01

    ld b, l                                       ; $6E4A: $45

jr_013_6E4B:
    inc de                                        ; $6E4B: $13
    rra                                           ; $6E4C: $1F
    ld [hl], h                                    ; $6E4D: $74
    ld [bc], a                                    ; $6E4E: $02
    nop                                           ; $6E4F: $00
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    jr nc, jr_013_6E42                            ; $6E53: $30 $ED

    ld d, [hl]                                    ; $6E55: $56
    daa                                           ; $6E56: $27
    ld b, a                                       ; $6E57: $47
    ld [$7113], sp                                ; $6E58: $08 $13 $71
    ld l, [hl]                                    ; $6E5B: $6E
    inc de                                        ; $6E5C: $13
    adc l                                         ; $6E5D: $8D
    ld l, [hl]                                    ; $6E5E: $6E
    inc de                                        ; $6E5F: $13
    xor c                                         ; $6E60: $A9
    ld l, [hl]                                    ; $6E61: $6E
    inc de                                        ; $6E62: $13
    push bc                                       ; $6E63: $C5
    ld l, [hl]                                    ; $6E64: $6E
    inc de                                        ; $6E65: $13
    db $D3                                        ; $6E66: $D3
    ld l, [hl]                                    ; $6E67: $6E
    inc de                                        ; $6E68: $13
    pop hl                                        ; $6E69: $E1
    ld l, [hl]                                    ; $6E6A: $6E
    inc de                                        ; $6E6B: $13
    or $6E                                        ; $6E6C: $F6 $6E
    inc de                                        ; $6E6E: $13
    inc c                                         ; $6E6F: $0C
    ld l, a                                       ; $6E70: $6F
    dec h                                         ; $6E71: $25
    ld b, $6C                                     ; $6E72: $06 $6C
    ld [$234C], sp                                ; $6E74: $08 $4C $23
    ld b, b                                       ; $6E77: $40
    ld l, $09                                     ; $6E78: $2E $09
    ld d, e                                       ; $6E7A: $53
    dec b                                         ; $6E7B: $05
    add hl, bc                                    ; $6E7C: $09
    ld bc, $2E2B                                  ; $6E7D: $01 $2B $2E
    add hl, bc                                    ; $6E80: $09
    ld d, c                                       ; $6E81: $51
    rlca                                          ; $6E82: $07
    ld c, $01                                     ; $6E83: $0E $01
    dec hl                                        ; $6E85: $2B
    ld l, $09                                     ; $6E86: $2E $09
    ld b, $06                                     ; $6E88: $06 $06
    dec bc                                        ; $6E8A: $0B
    ld bc, $2527                                  ; $6E8B: $01 $27 $25
    ld b, $6C                                     ; $6E8E: $06 $6C
    ld [$234C], sp                                ; $6E90: $08 $4C $23
    ld b, b                                       ; $6E93: $40
    ld l, $09                                     ; $6E94: $2E $09
    ld d, c                                       ; $6E96: $51
    ld b, $0C                                     ; $6E97: $06 $0C
    ld bc, $2E2B                                  ; $6E99: $01 $2B $2E
    add hl, bc                                    ; $6E9C: $09
    ld c, a                                       ; $6E9D: $4F
    inc b                                         ; $6E9E: $04
    add hl, bc                                    ; $6E9F: $09
    ld bc, $2E2B                                  ; $6EA0: $01 $2B $2E
    add hl, bc                                    ; $6EA3: $09
    ld b, $06                                     ; $6EA4: $06 $06
    inc c                                         ; $6EA6: $0C
    ld bc, $2527                                  ; $6EA7: $01 $27 $25
    ld b, $6C                                     ; $6EAA: $06 $6C
    rlca                                          ; $6EAC: $07
    ld c, h                                       ; $6EAD: $4C
    inc hl                                        ; $6EAE: $23
    ld b, b                                       ; $6EAF: $40
    ld l, $09                                     ; $6EB0: $2E $09
    jr c, jr_013_6EB9                             ; $6EB2: $38 $05

    ld a, [bc]                                    ; $6EB4: $0A
    ld bc, $2E2B                                  ; $6EB5: $01 $2B $2E
    add hl, bc                                    ; $6EB8: $09

jr_013_6EB9:
    ld d, e                                       ; $6EB9: $53
    dec b                                         ; $6EBA: $05
    add hl, bc                                    ; $6EBB: $09
    ld bc, $2E2B                                  ; $6EBC: $01 $2B $2E
    add hl, bc                                    ; $6EBF: $09
    dec a                                         ; $6EC0: $3D
    dec b                                         ; $6EC1: $05
    add hl, bc                                    ; $6EC2: $09
    ld bc, $2527                                  ; $6EC3: $01 $27 $25
    ld b, $6C                                     ; $6EC6: $06 $6C
    ld [$234C], sp                                ; $6EC8: $08 $4C $23
    ld b, b                                       ; $6ECB: $40
    ld l, $09                                     ; $6ECC: $2E $09
    ld c, a                                       ; $6ECE: $4F
    ld [$0110], sp                                ; $6ECF: $08 $10 $01
    daa                                           ; $6ED2: $27
    dec h                                         ; $6ED3: $25
    ld b, $6C                                     ; $6ED4: $06 $6C
    rlca                                          ; $6ED6: $07
    ld c, h                                       ; $6ED7: $4C
    inc hl                                        ; $6ED8: $23
    ld b, b                                       ; $6ED9: $40
    ld l, $09                                     ; $6EDA: $2E $09
    ld b, $07                                     ; $6EDC: $06 $07
    inc c                                         ; $6EDE: $0C
    ld bc, $2527                                  ; $6EDF: $01 $27 $25
    ld b, $6C                                     ; $6EE2: $06 $6C
    add hl, bc                                    ; $6EE4: $09
    ld c, h                                       ; $6EE5: $4C
    inc hl                                        ; $6EE6: $23
    ld b, b                                       ; $6EE7: $40
    ld l, $09                                     ; $6EE8: $2E $09
    ld d, c                                       ; $6EEA: $51
    ld b, $0C                                     ; $6EEB: $06 $0C
    ld bc, $2E2B                                  ; $6EED: $01 $2B $2E
    add hl, bc                                    ; $6EF0: $09
    ld d, c                                       ; $6EF1: $51
    ld b, $0C                                     ; $6EF2: $06 $0C
    ld bc, $2527                                  ; $6EF4: $01 $27 $25
    ld b, $6C                                     ; $6EF7: $06 $6C
    ld [$234C], sp                                ; $6EF9: $08 $4C $23
    ld b, b                                       ; $6EFC: $40
    ld l, $09                                     ; $6EFD: $2E $09
    ld b, $04                                     ; $6EFF: $06 $04
    ld [$2B01], sp                                ; $6F01: $08 $01 $2B
    dec hl                                        ; $6F04: $2B
    ld l, $09                                     ; $6F05: $2E $09
    ld d, c                                       ; $6F07: $51
    ld b, $0B                                     ; $6F08: $06 $0B
    ld bc, $2527                                  ; $6F0A: $01 $27 $25
    ld b, $6C                                     ; $6F0D: $06 $6C
    add hl, bc                                    ; $6F0F: $09
    ld c, h                                       ; $6F10: $4C

jr_013_6F11:
    inc hl                                        ; $6F11: $23
    ld b, b                                       ; $6F12: $40
    ld l, $09                                     ; $6F13: $2E $09
    ld c, a                                       ; $6F15: $4F
    ld b, $0B                                     ; $6F16: $06 $0B
    ld bc, $2E2B                                  ; $6F18: $01 $2B $2E
    add hl, bc                                    ; $6F1B: $09
    ld b, $06                                     ; $6F1C: $06 $06
    inc c                                         ; $6F1E: $0C
    ld bc, $2427                                  ; $6F1F: $01 $27 $24
    ld e, $93                                     ; $6F22: $1E $93
    ld h, l                                       ; $6F24: $65
    ld a, $4D                                     ; $6F25: $3E $4D
    ld c, a                                       ; $6F27: $4F

jr_013_6F28:
    ld h, [hl]                                    ; $6F28: $66
    ret nz                                        ; $6F29: $C0

    ld e, h                                       ; $6F2A: $5C
    ld hl, $1364                                  ; $6F2B: $21 $64 $13
    ld d, c                                       ; $6F2E: $51
    dec b                                         ; $6F2F: $05
    nop                                           ; $6F30: $00
    add c                                         ; $6F31: $81
    ld e, l                                       ; $6F32: $5D
    dec b                                         ; $6F33: $05
    rlca                                          ; $6F34: $07

jr_013_6F35:
    rst $10                                       ; $6F35: $D7
    ret nc                                        ; $6F36: $D0

    nop                                           ; $6F37: $00
    jr nz, jr_013_6F35                            ; $6F38: $20 $FB

    ld d, b                                       ; $6F3A: $50
    ld [hl+], a                                   ; $6F3B: $22
    dec b                                         ; $6F3C: $05
    ld b, b                                       ; $6F3D: $40
    dec bc                                        ; $6F3E: $0B
    nop                                           ; $6F3F: $00
    dec b                                         ; $6F40: $05
    jr nz, jr_013_6F11                            ; $6F41: $20 $CE

    ld h, e                                       ; $6F43: $63
    ld a, [bc]                                    ; $6F44: $0A
    add hl, bc                                    ; $6F45: $09
    jr @-$2D                                      ; $6F46: $18 $D1

    nop                                           ; $6F48: $00
    ld [hl+], a                                   ; $6F49: $22
    jp c, $1340                                   ; $6F4A: $DA $40 $13

    ld c, [hl]                                    ; $6F4D: $4E
    ld l, [hl]                                    ; $6F4E: $6E
    dec b                                         ; $6F4F: $05
    rra                                           ; $6F50: $1F
    adc $63                                       ; $6F51: $CE $63
    ld a, [bc]                                    ; $6F53: $0A
    add hl, bc                                    ; $6F54: $09
    jr jr_013_6F28                                ; $6F55: $18 $D1

    nop                                           ; $6F57: $00
    ld [hl+], a                                   ; $6F58: $22
    jp c, $1340                                   ; $6F59: $DA $40 $13

    ld c, [hl]                                    ; $6F5C: $4E
    ld l, [hl]                                    ; $6F5D: $6E

jr_013_6F5E:
    dec bc                                        ; $6F5E: $0B
    jr nz, jr_013_6F6C                            ; $6F5F: $20 $0B

    rra                                           ; $6F61: $1F
    ld l, e                                       ; $6F62: $6B
    inc [hl]                                      ; $6F63: $34
    dec c                                         ; $6F64: $0D
    jr nc, @+$6C                                  ; $6F65: $30 $6A

    nop                                           ; $6F67: $00
    add b                                         ; $6F68: $80
    nop                                           ; $6F69: $00
    ld l, e                                       ; $6F6A: $6B
    inc b                                         ; $6F6B: $04

jr_013_6F6C:
    inc h                                         ; $6F6C: $24
    ret nz                                        ; $6F6D: $C0

    ld h, [hl]                                    ; $6F6E: $66
    ld b, b                                       ; $6F6F: $40
    add e                                         ; $6F70: $83
    nop                                           ; $6F71: $00
    ld sp, $2313                                  ; $6F72: $31 $13 $23

jr_013_6F75:
    ld l, a                                       ; $6F75: $6F
    ld [hl+], a                                   ; $6F76: $22
    adc $40                                       ; $6F77: $CE $40
    nop                                           ; $6F79: $00
    add d                                         ; $6F7A: $82
    sub h                                         ; $6F7B: $94
    rra                                           ; $6F7C: $1F
    ld de, $9342                                  ; $6F7D: $11 $42 $93
    ld h, l                                       ; $6F80: $65
    ld a, $4D                                     ; $6F81: $3E $4D
    ld c, a                                       ; $6F83: $4F
    ld h, [hl]                                    ; $6F84: $66
    ret nz                                        ; $6F85: $C0

    ld e, h                                       ; $6F86: $5C
    ld hl, $1364                                  ; $6F87: $21 $64 $13
    ld d, c                                       ; $6F8A: $51
    dec bc                                        ; $6F8B: $0B
    nop                                           ; $6F8C: $00
    dec b                                         ; $6F8D: $05
    jr nz, jr_013_6F5E                            ; $6F8E: $20 $CE

    ld h, e                                       ; $6F90: $63
    ld a, [bc]                                    ; $6F91: $0A
    add hl, bc                                    ; $6F92: $09
    jr @-$2D                                      ; $6F93: $18 $D1

    nop                                           ; $6F95: $00
    ld [hl+], a                                   ; $6F96: $22
    jp c, $1340                                   ; $6F97: $DA $40 $13

    ld c, [hl]                                    ; $6F9A: $4E
    ld l, [hl]                                    ; $6F9B: $6E
    dec b                                         ; $6F9C: $05
    rra                                           ; $6F9D: $1F
    adc $63                                       ; $6F9E: $CE $63
    ld a, [bc]                                    ; $6FA0: $0A
    add hl, bc                                    ; $6FA1: $09
    jr jr_013_6F75                                ; $6FA2: $18 $D1

    nop                                           ; $6FA4: $00
    ld [hl+], a                                   ; $6FA5: $22
    jp c, $1340                                   ; $6FA6: $DA $40 $13

    ld c, [hl]                                    ; $6FA9: $4E
    ld l, [hl]                                    ; $6FAA: $6E
    dec bc                                        ; $6FAB: $0B
    jr nz, jr_013_6FB9                            ; $6FAC: $20 $0B

    rra                                           ; $6FAE: $1F
    ld l, e                                       ; $6FAF: $6B
    inc [hl]                                      ; $6FB0: $34
    dec c                                         ; $6FB1: $0D
    jr nc, jr_013_701E                            ; $6FB2: $30 $6A

    nop                                           ; $6FB4: $00
    add b                                         ; $6FB5: $80
    nop                                           ; $6FB6: $00
    ld l, e                                       ; $6FB7: $6B
    inc b                                         ; $6FB8: $04

jr_013_6FB9:
    inc h                                         ; $6FB9: $24
    ret nz                                        ; $6FBA: $C0

    ld h, [hl]                                    ; $6FBB: $66
    ld b, b                                       ; $6FBC: $40
    add e                                         ; $6FBD: $83
    nop                                           ; $6FBE: $00
    ld sp, $2313                                  ; $6FBF: $31 $13 $23
    ld l, a                                       ; $6FC2: $6F
    ld [hl+], a                                   ; $6FC3: $22
    adc $40                                       ; $6FC4: $CE $40
    nop                                           ; $6FC6: $00
    add d                                         ; $6FC7: $82
    sub h                                         ; $6FC8: $94
    rra                                           ; $6FC9: $1F
    ld de, $0242                                  ; $6FCA: $11 $42 $02
    nop                                           ; $6FCD: $00
    rrca                                          ; $6FCE: $0F
    nop                                           ; $6FCF: $00
    jr jr_013_7017                                ; $6FD0: $18 $45

    inc de                                        ; $6FD2: $13
    inc hl                                        ; $6FD3: $23
    ld l, a                                       ; $6FD4: $6F
    ld [bc], a                                    ; $6FD5: $02
    nop                                           ; $6FD6: $00
    dec e                                         ; $6FD7: $1D
    inc [hl]                                      ; $6FD8: $34
    inc d                                         ; $6FD9: $14
    ld b, l                                       ; $6FDA: $45
    inc de                                        ; $6FDB: $13
    push bc                                       ; $6FDC: $C5
    ld [hl], e                                    ; $6FDD: $73
    ld b, d                                       ; $6FDE: $42
    ld b, l                                       ; $6FDF: $45
    inc de                                        ; $6FE0: $13
    rlca                                          ; $6FE1: $07
    ld [hl], d                                    ; $6FE2: $72
    ld [bc], a                                    ; $6FE3: $02
    nop                                           ; $6FE4: $00
    rrca                                          ; $6FE5: $0F
    nop                                           ; $6FE6: $00
    jr jr_013_702E                                ; $6FE7: $18 $45

    inc de                                        ; $6FE9: $13
    inc hl                                        ; $6FEA: $23
    ld l, a                                       ; $6FEB: $6F
    xor h                                         ; $6FEC: $AC
    inc h                                         ; $6FED: $24
    and d                                         ; $6FEE: $A2
    dec b                                         ; $6FEF: $05
    ld [bc], a                                    ; $6FF0: $02
    nop                                           ; $6FF1: $00
    dec e                                         ; $6FF2: $1D
    inc [hl]                                      ; $6FF3: $34
    inc de                                        ; $6FF4: $13
    ld b, l                                       ; $6FF5: $45
    inc de                                        ; $6FF6: $13
    push bc                                       ; $6FF7: $C5
    ld [hl], e                                    ; $6FF8: $73
    ld b, e                                       ; $6FF9: $43
    ld a, [bc]                                    ; $6FFA: $0A
    nop                                           ; $6FFB: $00
    dec h                                         ; $6FFC: $25
    and c                                         ; $6FFD: $A1
    ld [bc], a                                    ; $6FFE: $02
    inc de                                        ; $6FFF: $13
    rst $38                                       ; $7000: $FF
    ld [hl], d                                    ; $7001: $72
    ld b, d                                       ; $7002: $42
    ld b, e                                       ; $7003: $43
    rrca                                          ; $7004: $0F
    ld bc, $A224                                  ; $7005: $01 $24 $A2
    dec b                                         ; $7008: $05
    nop                                           ; $7009: $00
    inc de                                        ; $700A: $13
    rra                                           ; $700B: $1F
    ld [hl], d                                    ; $700C: $72
    ld b, d                                       ; $700D: $42
    ld b, e                                       ; $700E: $43
    inc de                                        ; $700F: $13
    ld bc, $A224                                  ; $7010: $01 $24 $A2
    dec b                                         ; $7013: $05
    ld [bc], a                                    ; $7014: $02
    inc de                                        ; $7015: $13
    ld d, a                                       ; $7016: $57

jr_013_7017:
    ld [hl], d                                    ; $7017: $72
    ld b, d                                       ; $7018: $42
    ld b, e                                       ; $7019: $43
    inc de                                        ; $701A: $13
    ld bc, $A224                                  ; $701B: $01 $24 $A2

jr_013_701E:
    dec b                                         ; $701E: $05
    inc bc                                        ; $701F: $03
    inc de                                        ; $7020: $13
    adc a                                         ; $7021: $8F
    ld [hl], d                                    ; $7022: $72
    ld b, d                                       ; $7023: $42
    ld b, e                                       ; $7024: $43
    inc de                                        ; $7025: $13
    ld bc, $A224                                  ; $7026: $01 $24 $A2
    dec b                                         ; $7029: $05
    inc b                                         ; $702A: $04
    inc de                                        ; $702B: $13
    rst $00                                       ; $702C: $C7
    ld [hl], d                                    ; $702D: $72

jr_013_702E:
    ld b, d                                       ; $702E: $42
    and h                                         ; $702F: $A4
    ld h, $A3                                     ; $7030: $26 $A3
    ld [bc], a                                    ; $7032: $02
    ld [bc], a                                    ; $7033: $02
    ld a, [bc]                                    ; $7034: $0A
    ld c, e                                       ; $7035: $4B
    db $D3                                        ; $7036: $D3
    ld b, d                                       ; $7037: $42
    and h                                         ; $7038: $A4
    dec [hl]                                      ; $7039: $35
    and e                                         ; $703A: $A3
    jr nz, jr_013_703F                            ; $703B: $20 $02

    ld [bc], a                                    ; $703D: $02
    and c                                         ; $703E: $A1

jr_013_703F:
    pop de                                        ; $703F: $D1
    ld b, d                                       ; $7040: $42
    sbc e                                         ; $7041: $9B
    ld hl, sp+$4A                                 ; $7042: $F8 $4A
    sbc a                                         ; $7044: $9F
    ld b, c                                       ; $7045: $41
    ld [hl], d                                    ; $7046: $72
    ld h, l                                       ; $7047: $65
    jr nz, jr_013_70C3                            ; $7048: $20 $79

    ld l, a                                       ; $704A: $6F
    ld [hl], l                                    ; $704B: $75
    rst $38                                       ; $704C: $FF
    ld [hl], e                                    ; $704D: $73
    ld [hl], l                                    ; $704E: $75
    ld [hl], d                                    ; $704F: $72
    ld h, l                                       ; $7050: $65
    jr nz, jr_013_70CC                            ; $7051: $20 $79

    ld l, a                                       ; $7053: $6F
    ld [hl], l                                    ; $7054: $75
    cp $77                                        ; $7055: $FE $77
    ld h, c                                       ; $7057: $61
    ld l, [hl]                                    ; $7058: $6E
    ld [hl], h                                    ; $7059: $74
    jr nz, jr_013_70D0                            ; $705A: $20 $74

    ld l, a                                       ; $705C: $6F
    jr nz, jr_013_70C6                            ; $705D: $20 $67

    ld l, a                                       ; $705F: $6F
    rst $38                                       ; $7060: $FF
    ld d, h                                       ; $7061: $54
    ld c, b                                       ; $7062: $48
    ld c, c                                       ; $7063: $49
    ld d, e                                       ; $7064: $53
    jr nz, jr_013_70DE                            ; $7065: $20 $77

    ld h, c                                       ; $7067: $61
    ld a, c                                       ; $7068: $79
    ccf                                           ; $7069: $3F
    cp $FD                                        ; $706A: $FE $FD
    sbc d                                         ; $706C: $9A
    ld e, b                                       ; $706D: $58
    ld bc, $9B42                                  ; $706E: $01 $42 $9B
    ld hl, sp+$4A                                 ; $7071: $F8 $4A
    sbc a                                         ; $7073: $9F
    ld e, c                                       ; $7074: $59
    ld l, a                                       ; $7075: $6F
    ld [hl], l                                    ; $7076: $75
    jr nz, jr_013_70F0                            ; $7077: $20 $77

    ld l, a                                       ; $7079: $6F
    ld l, [hl]                                    ; $707A: $6E
    daa                                           ; $707B: $27
    ld [hl], h                                    ; $707C: $74
    rst $38                                       ; $707D: $FF
    ld h, [hl]                                    ; $707E: $66
    ld l, c                                       ; $707F: $69
    ld l, [hl]                                    ; $7080: $6E
    ld h, h                                       ; $7081: $64
    jr nz, jr_013_70F8                            ; $7082: $20 $74

    ld l, b                                       ; $7084: $68
    ld h, l                                       ; $7085: $65
    cp $6E                                        ; $7086: $FE $6E
    ld h, l                                       ; $7088: $65
    ld a, b                                       ; $7089: $78
    ld [hl], h                                    ; $708A: $74
    jr nz, jr_013_70D0                            ; $708B: $20 $43

    ld c, b                                       ; $708D: $48
    ld b, c                                       ; $708E: $41
    ld c, h                                       ; $708F: $4C
    ld c, h                                       ; $7090: $4C
    ld b, l                                       ; $7091: $45
    ld c, [hl]                                    ; $7092: $4E
    ld b, a                                       ; $7093: $47
    ld b, l                                       ; $7094: $45
    rst $38                                       ; $7095: $FF
    ld [hl], e                                    ; $7096: $73
    ld l, a                                       ; $7097: $6F
    jr nz, jr_013_70FF                            ; $7098: $20 $65

    ld h, c                                       ; $709A: $61
    ld [hl], e                                    ; $709B: $73
    ld a, c                                       ; $709C: $79
    ld l, $FE                                     ; $709D: $2E $FE
    db $FD                                        ; $709F: $FD
    sbc d                                         ; $70A0: $9A
    ld e, b                                       ; $70A1: $58
    ld bc, $9B42                                  ; $70A2: $01 $42 $9B
    ld hl, sp+$4A                                 ; $70A5: $F8 $4A
    sbc a                                         ; $70A7: $9F
    ld b, c                                       ; $70A8: $41
    jr nz, jr_013_710D                            ; $70A9: $20 $62

    ld l, a                                       ; $70AB: $6F
    ld a, c                                       ; $70AC: $79
    jr nz, jr_013_7126                            ; $70AD: $20 $77

    ld l, c                                       ; $70AF: $69
    ld [hl], h                                    ; $70B0: $74
    ld l, b                                       ; $70B1: $68
    rst $38                                       ; $70B2: $FF
    ld d, b                                       ; $70B3: $50
    ld b, c                                       ; $70B4: $41
    ld c, [hl]                                    ; $70B5: $4E
    ld d, h                                       ; $70B6: $54
    ld d, e                                       ; $70B7: $53
    jr nz, jr_013_711B                            ; $70B8: $20 $61

    ld [hl], e                                    ; $70BA: $73
    cp $53                                        ; $70BB: $FE $53
    ld b, c                                       ; $70BD: $41
    ld b, a                                       ; $70BE: $47
    ld b, a                                       ; $70BF: $47
    ld e, c                                       ; $70C0: $59
    jr nz, jr_013_7124                            ; $70C1: $20 $61

jr_013_70C3:
    ld [hl], e                                    ; $70C3: $73
    rst $38                                       ; $70C4: $FF
    ld a, c                                       ; $70C5: $79

jr_013_70C6:
    ld l, a                                       ; $70C6: $6F
    ld [hl], l                                    ; $70C7: $75
    ld [hl], d                                    ; $70C8: $72
    ld [hl], e                                    ; $70C9: $73
    jr nz, jr_013_713F                            ; $70CA: $20 $73

jr_013_70CC:
    ld l, b                                       ; $70CC: $68
    ld l, a                                       ; $70CD: $6F
    ld [hl], l                                    ; $70CE: $75
    ld l, h                                       ; $70CF: $6C

jr_013_70D0:
    ld h, h                                       ; $70D0: $64
    cp $63                                        ; $70D1: $FE $63
    ld l, b                                       ; $70D3: $68
    ld h, c                                       ; $70D4: $61
    ld l, [hl]                                    ; $70D5: $6E
    ld h, a                                       ; $70D6: $67
    ld h, l                                       ; $70D7: $65
    jr nz, jr_013_7142                            ; $70D8: $20 $68

    ld l, c                                       ; $70DA: $69
    ld [hl], e                                    ; $70DB: $73
    rst $38                                       ; $70DC: $FF
    ld b, h                                       ; $70DD: $44

jr_013_70DE:
    ld c, c                                       ; $70DE: $49
    ld b, c                                       ; $70DF: $41
    ld d, b                                       ; $70E0: $50
    ld b, l                                       ; $70E1: $45
    ld d, d                                       ; $70E2: $52
    jr nz, jr_013_7152                            ; $70E3: $20 $6D

    ld l, a                                       ; $70E5: $6F
    ld [hl], d                                    ; $70E6: $72
    ld h, l                                       ; $70E7: $65
    cp $6F                                        ; $70E8: $FE $6F
    ld h, [hl]                                    ; $70EA: $66
    ld [hl], h                                    ; $70EB: $74
    ld h, l                                       ; $70EC: $65
    ld l, [hl]                                    ; $70ED: $6E
    ld l, $FE                                     ; $70EE: $2E $FE

jr_013_70F0:
    db $FD                                        ; $70F0: $FD
    sbc d                                         ; $70F1: $9A
    ld e, b                                       ; $70F2: $58
    ld bc, $9B42                                  ; $70F3: $01 $42 $9B
    ld hl, sp+$4A                                 ; $70F6: $F8 $4A

jr_013_70F8:
    sbc a                                         ; $70F8: $9F
    ld c, c                                       ; $70F9: $49
    jr nz, jr_013_7163                            ; $70FA: $20 $67

    ld [hl], l                                    ; $70FC: $75
    ld h, l                                       ; $70FD: $65
    ld [hl], e                                    ; $70FE: $73

jr_013_70FF:
    ld [hl], e                                    ; $70FF: $73
    rst $38                                       ; $7100: $FF
    ld h, l                                       ; $7101: $65
    halt                                          ; $7102: $76
    ld h, l                                       ; $7103: $65
    ld l, [hl]                                    ; $7104: $6E
    jr nz, jr_013_7168                            ; $7105: $20 $61

    jr nz, jr_013_7156                            ; $7107: $20 $4D

    ld c, a                                       ; $7109: $4F
    ld c, [hl]                                    ; $710A: $4E
    ld c, e                                       ; $710B: $4B
    ld b, l                                       ; $710C: $45

jr_013_710D:
    ld e, c                                       ; $710D: $59
    cp $63                                        ; $710E: $FE $63
    ld h, c                                       ; $7110: $61
    ld l, [hl]                                    ; $7111: $6E
    jr nz, jr_013_717B                            ; $7112: $20 $67

    ld h, l                                       ; $7114: $65
    ld [hl], h                                    ; $7115: $74
    rst $38                                       ; $7116: $FF
    ld c, h                                       ; $7117: $4C
    ld d, l                                       ; $7118: $55
    ld b, e                                       ; $7119: $43
    ld c, e                                       ; $711A: $4B

jr_013_711B:
    ld e, c                                       ; $711B: $59
    jr nz, jr_013_7183                            ; $711C: $20 $65

    halt                                          ; $711E: $76
    ld h, l                                       ; $711F: $65
    ld [hl], d                                    ; $7120: $72
    ld a, c                                       ; $7121: $79
    cp $6F                                        ; $7122: $FE $6F

jr_013_7124:
    ld l, [hl]                                    ; $7124: $6E
    ld h, e                                       ; $7125: $63

jr_013_7126:
    ld h, l                                       ; $7126: $65
    jr nz, jr_013_7192                            ; $7127: $20 $69

    ld l, [hl]                                    ; $7129: $6E
    jr nz, jr_013_718D                            ; $712A: $20 $61

    rst $38                                       ; $712C: $FF
    ld [hl], a                                    ; $712D: $77
    ld l, b                                       ; $712E: $68
    ld l, c                                       ; $712F: $69
    ld l, h                                       ; $7130: $6C
    ld h, l                                       ; $7131: $65
    ld l, $FE                                     ; $7132: $2E $FE
    db $FD                                        ; $7134: $FD
    sbc d                                         ; $7135: $9A
    ld e, b                                       ; $7136: $58
    ld bc, $9B42                                  ; $7137: $01 $42 $9B
    ld hl, sp+$4A                                 ; $713A: $F8 $4A
    sbc a                                         ; $713C: $9F
    ld e, c                                       ; $713D: $59
    ld l, a                                       ; $713E: $6F

jr_013_713F:
    ld [hl], l                                    ; $713F: $75
    jr nz, @+$63                                  ; $7140: $20 $61

jr_013_7142:
    ld [hl], d                                    ; $7142: $72
    ld h, l                                       ; $7143: $65
    jr nz, jr_013_71A7                            ; $7144: $20 $61

    ld l, h                                       ; $7146: $6C
    ld l, l                                       ; $7147: $6D
    ld l, a                                       ; $7148: $6F
    ld [hl], e                                    ; $7149: $73
    ld [hl], h                                    ; $714A: $74
    rst $38                                       ; $714B: $FF
    ld h, c                                       ; $714C: $61
    ld [hl], e                                    ; $714D: $73
    jr nz, @+$55                                  ; $714E: $20 $53

    ld c, l                                       ; $7150: $4D
    ld b, c                                       ; $7151: $41

jr_013_7152:
    ld d, d                                       ; $7152: $52
    ld d, h                                       ; $7153: $54
    jr nz, jr_013_71B7                            ; $7154: $20 $61

jr_013_7156:
    ld [hl], e                                    ; $7156: $73
    cp $74                                        ; $7157: $FE $74
    ld l, b                                       ; $7159: $68
    ld h, l                                       ; $715A: $65
    ld [hl], e                                    ; $715B: $73
    ld h, l                                       ; $715C: $65
    jr nz, @+$55                                  ; $715D: $20 $53

    ld c, b                                       ; $715F: $48
    ld d, d                                       ; $7160: $52
    ld d, l                                       ; $7161: $55
    ld b, d                                       ; $7162: $42

jr_013_7163:
    ld d, e                                       ; $7163: $53
    ld hl, $FDFE                                  ; $7164: $21 $FE $FD
    sbc d                                         ; $7167: $9A

jr_013_7168:
    ld e, b                                       ; $7168: $58

jr_013_7169:
    ld bc, $4342                                  ; $7169: $01 $42 $43
    ld [$040F], sp                                ; $716C: $08 $0F $04
    dec b                                         ; $716F: $05
    inc b                                         ; $7170: $04

jr_013_7171:
    db $10                                        ; $7171: $10
    ld bc, $A224                                  ; $7172: $01 $24 $A2
    dec b                                         ; $7175: $05
    dec b                                         ; $7176: $05
    inc de                                        ; $7177: $13
    reti                                          ; $7178: $D9


    ld [hl], c                                    ; $7179: $71
    sub e                                         ; $717A: $93

jr_013_717B:
    ld h, l                                       ; $717B: $65
    ld c, l                                       ; $717C: $4D
    ld c, l                                       ; $717D: $4D
    ld c, a                                       ; $717E: $4F
    ld h, h                                       ; $717F: $64

jr_013_7180:
    jr nz, jr_013_71D3                            ; $7180: $20 $51

    ld l, c                                       ; $7182: $69

jr_013_7183:
    ld h, d                                       ; $7183: $62
    ld d, c                                       ; $7184: $51
    ld h, [hl]                                    ; $7185: $66
    ret nz                                        ; $7186: $C0

    ld e, h                                       ; $7187: $5C
    ld hl, $0005                                  ; $7188: $21 $05 $00
    add c                                         ; $718B: $81
    ld e, l                                       ; $718C: $5D

jr_013_718D:
    dec b                                         ; $718D: $05
    dec b                                         ; $718E: $05

jr_013_718F:
    sbc e                                         ; $718F: $9B
    ret nc                                        ; $7190: $D0

    nop                                           ; $7191: $00

jr_013_7192:
    jr nz, jr_013_718F                            ; $7192: $20 $FB

    ld d, b                                       ; $7194: $50
    ld [hl+], a                                   ; $7195: $22
    dec b                                         ; $7196: $05
    ld b, b                                       ; $7197: $40
    dec b                                         ; $7198: $05
    jr nz, jr_013_7169                            ; $7199: $20 $CE

    ld h, e                                       ; $719B: $63
    ld a, [bc]                                    ; $719C: $0A
    add hl, bc                                    ; $719D: $09
    jr jr_013_7171                                ; $719E: $18 $D1

    nop                                           ; $71A0: $00
    ld [hl+], a                                   ; $71A1: $22
    jp c, $1340                                   ; $71A2: $DA $40 $13

    ld c, [hl]                                    ; $71A5: $4E
    ld l, [hl]                                    ; $71A6: $6E

jr_013_71A7:
    dec b                                         ; $71A7: $05
    rra                                           ; $71A8: $1F
    adc $63                                       ; $71A9: $CE $63
    ld a, [bc]                                    ; $71AB: $0A
    add hl, bc                                    ; $71AC: $09
    jr jr_013_7180                                ; $71AD: $18 $D1

    nop                                           ; $71AF: $00
    ld [hl+], a                                   ; $71B0: $22
    jp c, $1340                                   ; $71B1: $DA $40 $13

    ld c, [hl]                                    ; $71B4: $4E
    ld l, [hl]                                    ; $71B5: $6E
    dec bc                                        ; $71B6: $0B

jr_013_71B7:
    nop                                           ; $71B7: $00
    dec bc                                        ; $71B8: $0B
    jr nz, jr_013_71C6                            ; $71B9: $20 $0B

    rra                                           ; $71BB: $1F
    ld l, e                                       ; $71BC: $6B
    inc [hl]                                      ; $71BD: $34
    dec c                                         ; $71BE: $0D
    jr nc, jr_013_722B                            ; $71BF: $30 $6A

    nop                                           ; $71C1: $00
    add b                                         ; $71C2: $80
    nop                                           ; $71C3: $00
    ld l, e                                       ; $71C4: $6B
    inc b                                         ; $71C5: $04

jr_013_71C6:
    inc h                                         ; $71C6: $24
    ret nz                                        ; $71C7: $C0

    ld h, [hl]                                    ; $71C8: $66
    ld b, b                                       ; $71C9: $40
    add e                                         ; $71CA: $83
    nop                                           ; $71CB: $00
    ld sp, $6B13                                  ; $71CC: $31 $13 $6B
    ld [hl], c                                    ; $71CF: $71
    ld [hl+], a                                   ; $71D0: $22
    adc $40                                       ; $71D1: $CE $40

jr_013_71D3:
    nop                                           ; $71D3: $00
    add d                                         ; $71D4: $82
    rra                                           ; $71D5: $1F
    ld de, $4294                                  ; $71D6: $11 $94 $42
    sub e                                         ; $71D9: $93
    ld h, l                                       ; $71DA: $65
    ld c, l                                       ; $71DB: $4D
    ld c, l                                       ; $71DC: $4D
    ld c, a                                       ; $71DD: $4F
    ld l, c                                       ; $71DE: $69
    ld h, d                                       ; $71DF: $62
    ld d, c                                       ; $71E0: $51
    ld h, h                                       ; $71E1: $64
    ld b, c                                       ; $71E2: $41

jr_013_71E3:
    ld d, c                                       ; $71E3: $51
    ld h, [hl]                                    ; $71E4: $66
    ret nz                                        ; $71E5: $C0

    ld e, h                                       ; $71E6: $5C
    ld hl, $0005                                  ; $71E7: $21 $05 $00
    add c                                         ; $71EA: $81
    ld e, l                                       ; $71EB: $5D
    dec b                                         ; $71EC: $05
    dec b                                         ; $71ED: $05

jr_013_71EE:
    sbc e                                         ; $71EE: $9B
    ret nc                                        ; $71EF: $D0

    nop                                           ; $71F0: $00
    jr nz, jr_013_71EE                            ; $71F1: $20 $FB

    ld d, b                                       ; $71F3: $50
    ld [hl+], a                                   ; $71F4: $22
    dec b                                         ; $71F5: $05
    ld b, b                                       ; $71F6: $40
    dec bc                                        ; $71F7: $0B
    nop                                           ; $71F8: $00
    ld l, e                                       ; $71F9: $6B

jr_013_71FA:
    jr nc, @+$0C                                  ; $71FA: $30 $0A

    ldh a, [$4E]                                  ; $71FC: $F0 $4E
    nop                                           ; $71FE: $00
    add b                                         ; $71FF: $80
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    add d                                         ; $7202: $82
    rra                                           ; $7203: $1F
    ld de, $4294                                  ; $7204: $11 $94 $42
    inc c                                         ; $7207: $0C
    nop                                           ; $7208: $00
    dec b                                         ; $7209: $05
    nop                                           ; $720A: $00
    add c                                         ; $720B: $81
    ld e, l                                       ; $720C: $5D
    rlca                                          ; $720D: $07
    inc de                                        ; $720E: $13
    ld b, c                                       ; $720F: $41
    jp nc, $2000                                  ; $7210: $D2 $00 $20

    xor e                                         ; $7213: $AB
    ld d, b                                       ; $7214: $50
    ld [hl+], a                                   ; $7215: $22
    dec b                                         ; $7216: $05
    ld b, b                                       ; $7217: $40
    ld a, h                                       ; $7218: $7C
    rlca                                          ; $7219: $07
    inc de                                        ; $721A: $13
    ld [bc], a                                    ; $721B: $02
    dec bc                                        ; $721C: $0B
    nop                                           ; $721D: $00
    ld b, d                                       ; $721E: $42
    dec b                                         ; $721F: $05
    ld [bc], a                                    ; $7220: $02
    ld l, e                                       ; $7221: $6B
    ld c, d                                       ; $7222: $4A
    ld [$340A], sp                                ; $7223: $08 $0A $34
    pop de                                        ; $7226: $D1
    nop                                           ; $7227: $00
    ld c, $D9                                     ; $7228: $0E $D9
    ld h, b                                       ; $722A: $60

jr_013_722B:
    ld [hl+], a                                   ; $722B: $22
    dec b                                         ; $722C: $05
    ld b, b                                       ; $722D: $40
    dec bc                                        ; $722E: $0B

jr_013_722F:
    ld [bc], a                                    ; $722F: $02
    rlca                                          ; $7230: $07
    nop                                           ; $7231: $00
    ld l, e                                       ; $7232: $6B
    ld c, d                                       ; $7233: $4A
    add hl, bc                                    ; $7234: $09
    nop                                           ; $7235: $00
    jr nz, jr_013_71E3                            ; $7236: $20 $AB

    ld d, b                                       ; $7238: $50
    ld a, l                                       ; $7239: $7D
    cp a                                          ; $723A: $BF
    pop bc                                        ; $723B: $C1
    inc bc                                        ; $723C: $03
    ld e, e                                       ; $723D: $5B
    inc de                                        ; $723E: $13
    ld b, c                                       ; $723F: $41
    ld [hl], b                                    ; $7240: $70
    ld h, d                                       ; $7241: $62
    ld bc, $897D                                  ; $7242: $01 $7D $89
    pop bc                                        ; $7245: $C1

jr_013_7246:
    inc bc                                        ; $7246: $03
    rlca                                          ; $7247: $07
    nop                                           ; $7248: $00
    add c                                         ; $7249: $81
    ld e, l                                       ; $724A: $5D
    add hl, bc                                    ; $724B: $09
    nop                                           ; $724C: $00
    jr nz, jr_013_71FA                            ; $724D: $20 $AB

    ld d, b                                       ; $724F: $50
    inc c                                         ; $7250: $0C
    ld [bc], a                                    ; $7251: $02
    xor h                                         ; $7252: $AC
    inc h                                         ; $7253: $24
    and d                                         ; $7254: $A2
    ld bc, $0542                                  ; $7255: $01 $42 $05
    ld [bc], a                                    ; $7258: $02
    ld l, e                                       ; $7259: $6B
    ld c, d                                       ; $725A: $4A
    add hl, bc                                    ; $725B: $09
    inc de                                        ; $725C: $13
    ld b, e                                       ; $725D: $43
    jp nc, $0E00                                  ; $725E: $D2 $00 $0E

    db $ED                                        ; $7261: $ED
    ld h, b                                       ; $7262: $60
    ld [hl+], a                                   ; $7263: $22
    dec b                                         ; $7264: $05
    ld b, b                                       ; $7265: $40
    dec bc                                        ; $7266: $0B

jr_013_7267:
    ld [bc], a                                    ; $7267: $02
    rlca                                          ; $7268: $07
    nop                                           ; $7269: $00
    ld l, e                                       ; $726A: $6B
    ld c, d                                       ; $726B: $4A
    add hl, bc                                    ; $726C: $09
    nop                                           ; $726D: $00
    jr nz, jr_013_722F                            ; $726E: $20 $BF

    ld d, b                                       ; $7270: $50
    ld a, l                                       ; $7271: $7D
    cp a                                          ; $7272: $BF
    pop bc                                        ; $7273: $C1
    inc bc                                        ; $7274: $03
    ld e, e                                       ; $7275: $5B
    inc de                                        ; $7276: $13
    ld [hl], b                                    ; $7277: $70
    ld [hl], b                                    ; $7278: $70
    ld h, d                                       ; $7279: $62
    ld bc, $897D                                  ; $727A: $01 $7D $89
    pop bc                                        ; $727D: $C1

jr_013_727E:
    inc bc                                        ; $727E: $03
    rlca                                          ; $727F: $07
    nop                                           ; $7280: $00
    add c                                         ; $7281: $81
    ld e, l                                       ; $7282: $5D
    add hl, bc                                    ; $7283: $09
    nop                                           ; $7284: $00
    jr nz, jr_013_7246                            ; $7285: $20 $BF

    ld d, b                                       ; $7287: $50
    inc c                                         ; $7288: $0C
    ld [bc], a                                    ; $7289: $02
    xor h                                         ; $728A: $AC
    inc h                                         ; $728B: $24
    and d                                         ; $728C: $A2
    ld [bc], a                                    ; $728D: $02
    ld b, d                                       ; $728E: $42
    dec b                                         ; $728F: $05
    ld [bc], a                                    ; $7290: $02
    ld l, e                                       ; $7291: $6B
    ld c, d                                       ; $7292: $4A
    inc bc                                        ; $7293: $03
    dec [hl]                                      ; $7294: $35
    add hl, sp                                    ; $7295: $39
    sub $00                                       ; $7296: $D6 $00
    ld c, $ED                                     ; $7298: $0E $ED
    ld h, b                                       ; $729A: $60
    ld [hl+], a                                   ; $729B: $22
    dec b                                         ; $729C: $05
    ld b, b                                       ; $729D: $40
    dec bc                                        ; $729E: $0B
    ld [bc], a                                    ; $729F: $02
    rlca                                          ; $72A0: $07
    nop                                           ; $72A1: $00
    ld l, e                                       ; $72A2: $6B
    ld c, d                                       ; $72A3: $4A
    add hl, bc                                    ; $72A4: $09
    nop                                           ; $72A5: $00
    jr nz, jr_013_7267                            ; $72A6: $20 $BF

    ld d, b                                       ; $72A8: $50

jr_013_72A9:
    ld a, l                                       ; $72A9: $7D
    cp a                                          ; $72AA: $BF
    pop bc                                        ; $72AB: $C1
    inc bc                                        ; $72AC: $03
    ld e, e                                       ; $72AD: $5B
    inc de                                        ; $72AE: $13
    and h                                         ; $72AF: $A4
    ld [hl], b                                    ; $72B0: $70
    ld h, d                                       ; $72B1: $62
    ld bc, $897D                                  ; $72B2: $01 $7D $89
    pop bc                                        ; $72B5: $C1
    inc bc                                        ; $72B6: $03
    rlca                                          ; $72B7: $07
    nop                                           ; $72B8: $00
    add c                                         ; $72B9: $81
    ld e, l                                       ; $72BA: $5D
    add hl, bc                                    ; $72BB: $09
    nop                                           ; $72BC: $00
    jr nz, jr_013_727E                            ; $72BD: $20 $BF

    ld d, b                                       ; $72BF: $50

jr_013_72C0:
    inc c                                         ; $72C0: $0C
    ld [bc], a                                    ; $72C1: $02
    xor h                                         ; $72C2: $AC
    inc h                                         ; $72C3: $24
    and d                                         ; $72C4: $A2
    inc bc                                        ; $72C5: $03
    ld b, d                                       ; $72C6: $42
    dec b                                         ; $72C7: $05
    ld [bc], a                                    ; $72C8: $02
    ld l, e                                       ; $72C9: $6B
    ld c, d                                       ; $72CA: $4A
    dec bc                                        ; $72CB: $0B
    ld [hl], $5F                                  ; $72CC: $36 $5F
    sub $00                                       ; $72CE: $D6 $00
    ld c, $E3                                     ; $72D0: $0E $E3
    ld h, b                                       ; $72D2: $60
    ld [hl+], a                                   ; $72D3: $22
    dec b                                         ; $72D4: $05
    ld b, b                                       ; $72D5: $40
    dec bc                                        ; $72D6: $0B

jr_013_72D7:
    ld [bc], a                                    ; $72D7: $02
    rlca                                          ; $72D8: $07
    nop                                           ; $72D9: $00
    ld l, e                                       ; $72DA: $6B
    ld c, d                                       ; $72DB: $4A
    add hl, bc                                    ; $72DC: $09
    nop                                           ; $72DD: $00
    jr nz, jr_013_72A9                            ; $72DE: $20 $C9

    ld d, b                                       ; $72E0: $50
    ld a, l                                       ; $72E1: $7D
    cp a                                          ; $72E2: $BF
    pop bc                                        ; $72E3: $C1
    inc bc                                        ; $72E4: $03
    ld e, e                                       ; $72E5: $5B
    inc de                                        ; $72E6: $13
    push af                                       ; $72E7: $F5
    ld [hl], b                                    ; $72E8: $70
    ld h, d                                       ; $72E9: $62
    ld bc, $897D                                  ; $72EA: $01 $7D $89
    pop bc                                        ; $72ED: $C1
    inc bc                                        ; $72EE: $03
    rlca                                          ; $72EF: $07
    nop                                           ; $72F0: $00
    add c                                         ; $72F1: $81

jr_013_72F2:
    ld e, l                                       ; $72F2: $5D
    add hl, bc                                    ; $72F3: $09
    nop                                           ; $72F4: $00
    jr nz, jr_013_72C0                            ; $72F5: $20 $C9

    ld d, b                                       ; $72F7: $50
    inc c                                         ; $72F8: $0C
    ld [bc], a                                    ; $72F9: $02
    xor h                                         ; $72FA: $AC
    inc h                                         ; $72FB: $24
    and d                                         ; $72FC: $A2
    inc b                                         ; $72FD: $04
    ld b, d                                       ; $72FE: $42
    dec b                                         ; $72FF: $05
    ld [bc], a                                    ; $7300: $02
    ld l, e                                       ; $7301: $6B
    ld c, d                                       ; $7302: $4A
    ld [$340A], sp                                ; $7303: $08 $0A $34
    pop de                                        ; $7306: $D1
    nop                                           ; $7307: $00
    ld c, $ED                                     ; $7308: $0E $ED
    ld h, b                                       ; $730A: $60
    ld [hl+], a                                   ; $730B: $22
    dec b                                         ; $730C: $05
    ld b, b                                       ; $730D: $40
    dec bc                                        ; $730E: $0B
    ld [bc], a                                    ; $730F: $02
    rlca                                          ; $7310: $07
    nop                                           ; $7311: $00
    ld l, e                                       ; $7312: $6B
    ld c, d                                       ; $7313: $4A
    add hl, bc                                    ; $7314: $09
    nop                                           ; $7315: $00
    jr nz, jr_013_72D7                            ; $7316: $20 $BF

    ld d, b                                       ; $7318: $50
    ld a, l                                       ; $7319: $7D
    cp a                                          ; $731A: $BF
    pop bc                                        ; $731B: $C1
    inc bc                                        ; $731C: $03
    ld e, e                                       ; $731D: $5B
    inc de                                        ; $731E: $13
    add hl, sp                                    ; $731F: $39
    ld [hl], c                                    ; $7320: $71
    xor a                                         ; $7321: $AF
    dec h                                         ; $7322: $25
    and c                                         ; $7323: $A1
    ld [bc], a                                    ; $7324: $02
    ld h, d                                       ; $7325: $62
    ld bc, $897D                                  ; $7326: $01 $7D $89
    pop bc                                        ; $7329: $C1
    inc bc                                        ; $732A: $03
    rlca                                          ; $732B: $07
    nop                                           ; $732C: $00
    add c                                         ; $732D: $81
    ld e, l                                       ; $732E: $5D
    add hl, bc                                    ; $732F: $09
    nop                                           ; $7330: $00
    jr nz, jr_013_72F2                            ; $7331: $20 $BF

    ld d, b                                       ; $7333: $50
    inc c                                         ; $7334: $0C
    ld [bc], a                                    ; $7335: $02
    ld b, d                                       ; $7336: $42
    ld [bc], a                                    ; $7337: $02
    dec e                                         ; $7338: $1D
    nop                                           ; $7339: $00
    inc d                                         ; $733A: $14
    inc [hl]                                      ; $733B: $34
    ld b, l                                       ; $733C: $45
    inc de                                        ; $733D: $13
    ld l, e                                       ; $733E: $6B
    ld [hl], c                                    ; $733F: $71
    ld [bc], a                                    ; $7340: $02
    nop                                           ; $7341: $00
    inc sp                                        ; $7342: $33
    ld [hl+], a                                   ; $7343: $22
    nop                                           ; $7344: $00
    ld b, l                                       ; $7345: $45
    inc de                                        ; $7346: $13
    add [hl]                                      ; $7347: $86
    ld [hl], a                                    ; $7348: $77
    ld [bc], a                                    ; $7349: $02
    ld a, [bc]                                    ; $734A: $0A
    add hl, bc                                    ; $734B: $09
    nop                                           ; $734C: $00
    rla                                           ; $734D: $17
    ld b, l                                       ; $734E: $45
    inc de                                        ; $734F: $13
    ld a, a                                       ; $7350: $7F
    ld l, a                                       ; $7351: $6F
    rlca                                          ; $7352: $07
    nop                                           ; $7353: $00
    ld l, e                                       ; $7354: $6B
    ld c, d                                       ; $7355: $4A
    add hl, bc                                    ; $7356: $09
    nop                                           ; $7357: $00
    jr nz, @-$31                                  ; $7358: $20 $CD

    ld c, a                                       ; $735A: $4F
    ld [bc], a                                    ; $735B: $02
    dec hl                                        ; $735C: $2B
    inc b                                         ; $735D: $04
    jr jr_013_7364                                ; $735E: $18 $04

    ld l, [hl]                                    ; $7360: $6E
    rrca                                          ; $7361: $0F
    rst $38                                       ; $7362: $FF
    ld a, a                                       ; $7363: $7F

jr_013_7364:
    halt                                          ; $7364: $76
    jr nz, jr_013_7376                            ; $7365: $20 $0F

    ld b, l                                       ; $7367: $45
    dec e                                         ; $7368: $1D
    add hl, de                                    ; $7369: $19
    ld b, b                                       ; $736A: $40
    ld bc, $050F                                  ; $736B: $01 $0F $05
    ld b, l                                       ; $736E: $45
    dec h                                         ; $736F: $25
    db $DD                                        ; $7370: $DD
    ld h, [hl]                                    ; $7371: $66
    and d                                         ; $7372: $A2
    inc [hl]                                      ; $7373: $34
    and e                                         ; $7374: $A3
    inc b                                         ; $7375: $04

jr_013_7376:
    ld [hl+], a                                   ; $7376: $22
    ld e, e                                       ; $7377: $5B
    ld b, b                                       ; $7378: $40
    rst $38                                       ; $7379: $FF
    ld [c], a                                     ; $737A: $E2
    pop de                                        ; $737B: $D1
    ld b, h                                       ; $737C: $44
    call nz, $AC73                                ; $737D: $C4 $73 $AC
    dec h                                         ; $7380: $25
    and d                                         ; $7381: $A2
    ld bc, $789B                                  ; $7382: $01 $9B $78
    ld [hl], b                                    ; $7385: $70
    sbc a                                         ; $7386: $9F
    ld d, h                                       ; $7387: $54
    ld l, b                                       ; $7388: $68
    ld h, c                                       ; $7389: $61
    ld [hl], h                                    ; $738A: $74
    daa                                           ; $738B: $27
    ld [hl], e                                    ; $738C: $73
    jr nz, jr_013_73F5                            ; $738D: $20 $66

    ld [hl], l                                    ; $738F: $75
    ld l, [hl]                                    ; $7390: $6E
    ld l, [hl]                                    ; $7391: $6E
    ld a, c                                       ; $7392: $79
    ld l, $2E                                     ; $7393: $2E $2E
    ld l, $FF                                     ; $7395: $2E $FF
    ld [hl], a                                    ; $7397: $77
    ld l, b                                       ; $7398: $68
    ld h, c                                       ; $7399: $61
    ld [hl], h                                    ; $739A: $74
    jr nz, jr_013_73FE                            ; $739B: $20 $61

    ld [hl], d                                    ; $739D: $72
    ld h, l                                       ; $739E: $65
    jr nz, @+$76                                  ; $739F: $20 $74

    ld l, b                                       ; $73A1: $68
    ld h, l                                       ; $73A2: $65
    ld [hl], e                                    ; $73A3: $73
    ld h, l                                       ; $73A4: $65
    ccf                                           ; $73A5: $3F
    cp $FD                                        ; $73A6: $FE $FD
    sbc d                                         ; $73A8: $9A
    sbc a                                         ; $73A9: $9F
    ld d, h                                       ; $73AA: $54
    ld l, a                                       ; $73AB: $6F
    ld l, [hl]                                    ; $73AC: $6E
    ld a, c                                       ; $73AD: $79
    jr nz, jr_013_7417                            ; $73AE: $20 $67

    ld l, a                                       ; $73B0: $6F
    ld [hl], h                                    ; $73B1: $74
    rst $38                                       ; $73B2: $FF

jr_013_73B3:
    ld b, e                                       ; $73B3: $43
    ld [hl], d                                    ; $73B4: $72
    ld a, c                                       ; $73B5: $79
    ld [hl], e                                    ; $73B6: $73
    ld [hl], h                                    ; $73B7: $74
    ld h, c                                       ; $73B8: $61
    ld l, h                                       ; $73B9: $6C
    jr nz, jr_013_73FE                            ; $73BA: $20 $42

    ld l, h                                       ; $73BC: $6C
    ld h, c                                       ; $73BD: $61
    ld h, h                                       ; $73BE: $64
    ld h, l                                       ; $73BF: $65
    ld [hl], e                                    ; $73C0: $73
    cp $FD                                        ; $73C1: $FE $FD
    sbc d                                         ; $73C3: $9A
    ld b, d                                       ; $73C4: $42
    sub e                                         ; $73C5: $93
    ld h, l                                       ; $73C6: $65
    ld e, h                                       ; $73C7: $5C
    ld c, l                                       ; $73C8: $4D
    ld c, a                                       ; $73C9: $4F

jr_013_73CA:
    ld h, h                                       ; $73CA: $64
    ld l, e                                       ; $73CB: $6B
    ld d, c                                       ; $73CC: $51
    ld h, [hl]                                    ; $73CD: $66
    ret nz                                        ; $73CE: $C0

    ld e, h                                       ; $73CF: $5C
    ld hl, $0005                                  ; $73D0: $21 $05 $00
    add c                                         ; $73D3: $81
    ld e, l                                       ; $73D4: $5D
    dec b                                         ; $73D5: $05
    dec b                                         ; $73D6: $05

jr_013_73D7:
    sbc e                                         ; $73D7: $9B
    ret nc                                        ; $73D8: $D0

    nop                                           ; $73D9: $00
    jr nz, jr_013_73D7                            ; $73DA: $20 $FB

    ld d, b                                       ; $73DC: $50
    ld [hl+], a                                   ; $73DD: $22
    dec b                                         ; $73DE: $05
    ld b, b                                       ; $73DF: $40
    dec bc                                        ; $73E0: $0B
    nop                                           ; $73E1: $00
    dec b                                         ; $73E2: $05
    jr nz, jr_013_73B3                            ; $73E3: $20 $CE

    ld h, e                                       ; $73E5: $63
    ld a, [bc]                                    ; $73E6: $0A
    add hl, bc                                    ; $73E7: $09
    jr @-$2D                                      ; $73E8: $18 $D1

    nop                                           ; $73EA: $00
    ld [hl+], a                                   ; $73EB: $22
    jp c, $1340                                   ; $73EC: $DA $40 $13

    ld c, [hl]                                    ; $73EF: $4E
    ld l, [hl]                                    ; $73F0: $6E
    dec b                                         ; $73F1: $05
    rra                                           ; $73F2: $1F
    adc $63                                       ; $73F3: $CE $63

jr_013_73F5:
    ld a, [bc]                                    ; $73F5: $0A
    add hl, bc                                    ; $73F6: $09
    jr jr_013_73CA                                ; $73F7: $18 $D1

    nop                                           ; $73F9: $00
    ld [hl+], a                                   ; $73FA: $22
    jp c, $1340                                   ; $73FB: $DA $40 $13

jr_013_73FE:
    ld c, [hl]                                    ; $73FE: $4E
    ld l, [hl]                                    ; $73FF: $6E
    dec bc                                        ; $7400: $0B
    jr nz, jr_013_740E                            ; $7401: $20 $0B

    rra                                           ; $7403: $1F
    ld l, e                                       ; $7404: $6B
    inc [hl]                                      ; $7405: $34

jr_013_7406:
    dec c                                         ; $7406: $0D
    jr nc, @+$6C                                  ; $7407: $30 $6A

    nop                                           ; $7409: $00
    add b                                         ; $740A: $80
    nop                                           ; $740B: $00
    ld l, e                                       ; $740C: $6B
    inc b                                         ; $740D: $04

jr_013_740E:
    inc h                                         ; $740E: $24
    ret nz                                        ; $740F: $C0

    ld h, [hl]                                    ; $7410: $66
    ld b, b                                       ; $7411: $40
    add e                                         ; $7412: $83
    nop                                           ; $7413: $00
    ld sp, $C513                                  ; $7414: $31 $13 $C5

jr_013_7417:
    ld [hl], e                                    ; $7417: $73
    ld [hl+], a                                   ; $7418: $22
    adc $40                                       ; $7419: $CE $40
    nop                                           ; $741B: $00
    add d                                         ; $741C: $82
    sub h                                         ; $741D: $94
    ld b, d                                       ; $741E: $42
    sub e                                         ; $741F: $93
    ld h, l                                       ; $7420: $65
    ld e, h                                       ; $7421: $5C
    ld c, l                                       ; $7422: $4D
    ld c, a                                       ; $7423: $4F
    ld h, h                                       ; $7424: $64
    ld l, e                                       ; $7425: $6B
    ld d, c                                       ; $7426: $51
    ld h, [hl]                                    ; $7427: $66
    ret nz                                        ; $7428: $C0

    ld e, h                                       ; $7429: $5C
    ld hl, $000B                                  ; $742A: $21 $0B $00
    dec b                                         ; $742D: $05
    jr nz, jr_013_73FE                            ; $742E: $20 $CE

    ld h, e                                       ; $7430: $63
    ld a, [bc]                                    ; $7431: $0A
    add hl, bc                                    ; $7432: $09
    jr jr_013_7406                                ; $7433: $18 $D1

    nop                                           ; $7435: $00
    ld [hl+], a                                   ; $7436: $22
    jp c, $1340                                   ; $7437: $DA $40 $13

    ld c, [hl]                                    ; $743A: $4E
    ld l, [hl]                                    ; $743B: $6E
    dec b                                         ; $743C: $05
    rra                                           ; $743D: $1F
    adc $63                                       ; $743E: $CE $63
    ld a, [bc]                                    ; $7440: $0A
    add hl, bc                                    ; $7441: $09
    jr @-$2D                                      ; $7442: $18 $D1

    nop                                           ; $7444: $00
    ld [hl+], a                                   ; $7445: $22
    jp c, $1340                                   ; $7446: $DA $40 $13

    ld c, [hl]                                    ; $7449: $4E
    ld l, [hl]                                    ; $744A: $6E
    dec bc                                        ; $744B: $0B
    jr nz, jr_013_7459                            ; $744C: $20 $0B

    rra                                           ; $744E: $1F
    ld l, e                                       ; $744F: $6B
    inc [hl]                                      ; $7450: $34
    dec c                                         ; $7451: $0D
    jr nc, jr_013_74BE                            ; $7452: $30 $6A

    nop                                           ; $7454: $00
    add b                                         ; $7455: $80
    nop                                           ; $7456: $00
    ld l, e                                       ; $7457: $6B
    inc b                                         ; $7458: $04

jr_013_7459:
    inc h                                         ; $7459: $24
    ret nz                                        ; $745A: $C0

    ld h, [hl]                                    ; $745B: $66
    ld b, b                                       ; $745C: $40
    add e                                         ; $745D: $83
    nop                                           ; $745E: $00
    ld sp, $C513                                  ; $745F: $31 $13 $C5
    ld [hl], e                                    ; $7462: $73
    ld [hl+], a                                   ; $7463: $22
    adc $40                                       ; $7464: $CE $40
    nop                                           ; $7466: $00
    add d                                         ; $7467: $82
    sub h                                         ; $7468: $94
    ld b, d                                       ; $7469: $42
    sub e                                         ; $746A: $93
    ld h, l                                       ; $746B: $65
    ld l, e                                       ; $746C: $6B
    ld c, l                                       ; $746D: $4D
    ld c, a                                       ; $746E: $4F
    ld h, [hl]                                    ; $746F: $66
    ret nz                                        ; $7470: $C0

    ld e, h                                       ; $7471: $5C
    ld hl, $7864                                  ; $7472: $21 $64 $78
    ld d, c                                       ; $7475: $51
    ld l, c                                       ; $7476: $69
    add c                                         ; $7477: $81
    ld d, c                                       ; $7478: $51
    dec b                                         ; $7479: $05
    nop                                           ; $747A: $00
    add c                                         ; $747B: $81
    ld e, l                                       ; $747C: $5D
    dec b                                         ; $747D: $05
    dec b                                         ; $747E: $05

jr_013_747F:
    inc de                                        ; $747F: $13
    pop de                                        ; $7480: $D1
    nop                                           ; $7481: $00
    jr nz, jr_013_747F                            ; $7482: $20 $FB

    ld d, b                                       ; $7484: $50
    ld [hl+], a                                   ; $7485: $22
    dec b                                         ; $7486: $05
    ld b, b                                       ; $7487: $40
    dec bc                                        ; $7488: $0B
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    add d                                         ; $748B: $82
    rra                                           ; $748C: $1F
    ld de, $4294                                  ; $748D: $11 $94 $42
    ld bc, $2411                                  ; $7490: $01 $11 $24
    dec b                                         ; $7493: $05
    ld [bc], a                                    ; $7494: $02
    and h                                         ; $7495: $A4
    ld h, l                                       ; $7496: $65
    dec h                                         ; $7497: $25
    ld [$D225], sp                                ; $7498: $08 $25 $D2
    nop                                           ; $749B: $00
    ld de, $7604                                  ; $749C: $11 $04 $76
    cpl                                           ; $749F: $2F
    db $10                                        ; $74A0: $10
    ld b, d                                       ; $74A1: $42
    ld b, l                                       ; $74A2: $45
    cpl                                           ; $74A3: $2F
    ld h, l                                       ; $74A4: $65
    ld b, c                                       ; $74A5: $41
    ld [bc], a                                    ; $74A6: $02
    inc d                                         ; $74A7: $14
    ld [$0B0B], sp                                ; $74A8: $08 $0B $0B
    ld b, l                                       ; $74AB: $45
    inc de                                        ; $74AC: $13
    ld [$9B76], a                                 ; $74AD: $EA $76 $9B
    ld a, b                                       ; $74B0: $78
    ld [hl], b                                    ; $74B1: $70
    ld b, a                                       ; $74B2: $47
    inc bc                                        ; $74B3: $03
    inc de                                        ; $74B4: $13
    cp l                                          ; $74B5: $BD
    ld [hl], h                                    ; $74B6: $74
    inc de                                        ; $74B7: $13
    call $1374                                    ; $74B8: $CD $74 $13
    db $E4                                        ; $74BB: $E4
    ld [hl], h                                    ; $74BC: $74
    sbc a                                         ; $74BD: $9F

jr_013_74BE:
    ld c, b                                       ; $74BE: $48
    ld h, l                                       ; $74BF: $65
    ld l, b                                       ; $74C0: $68
    jr nz, jr_013_752B                            ; $74C1: $20 $68

    ld h, l                                       ; $74C3: $65
    ld l, b                                       ; $74C4: $68
    ld l, $2E                                     ; $74C5: $2E $2E
    ld l, $FE                                     ; $74C7: $2E $FE
    db $FD                                        ; $74C9: $FD
    ld b, [hl]                                    ; $74CA: $46
    rst $38                                       ; $74CB: $FF
    ld [hl], h                                    ; $74CC: $74
    sbc a                                         ; $74CD: $9F
    ld c, c                                       ; $74CE: $49
    jr nz, jr_013_7545                            ; $74CF: $20 $74

    ld l, b                                       ; $74D1: $68
    ld l, c                                       ; $74D2: $69
    ld l, [hl]                                    ; $74D3: $6E
    ld l, e                                       ; $74D4: $6B
    jr nz, jr_013_7520                            ; $74D5: $20 $49

    daa                                           ; $74D7: $27
    ld l, l                                       ; $74D8: $6D
    rst $38                                       ; $74D9: $FF
    ld l, h                                       ; $74DA: $6C
    ld l, a                                       ; $74DB: $6F
    ld [hl], e                                    ; $74DC: $73
    ld [hl], h                                    ; $74DD: $74
    ld hl, $FDFE                                  ; $74DE: $21 $FE $FD
    ld b, [hl]                                    ; $74E1: $46
    rst $38                                       ; $74E2: $FF
    ld [hl], h                                    ; $74E3: $74
    sbc a                                         ; $74E4: $9F
    ld c, b                                       ; $74E5: $48
    ld l, a                                       ; $74E6: $6F
    ld [hl], a                                    ; $74E7: $77
    jr nz, jr_013_754E                            ; $74E8: $20 $64

    ld l, a                                       ; $74EA: $6F
    jr nz, jr_013_7536                            ; $74EB: $20 $49

    jr nz, @+$69                                  ; $74ED: $20 $67

    ld h, l                                       ; $74EF: $65
    ld [hl], h                                    ; $74F0: $74
    rst $38                                       ; $74F1: $FF
    ld l, a                                       ; $74F2: $6F
    ld [hl], l                                    ; $74F3: $75
    ld [hl], h                                    ; $74F4: $74
    ld [hl], h                                    ; $74F5: $74
    ld h, c                                       ; $74F6: $61
    jr nz, jr_013_7561                            ; $74F7: $20 $68

    ld h, l                                       ; $74F9: $65
    ld [hl], d                                    ; $74FA: $72
    ld h, l                                       ; $74FB: $65
    ccf                                           ; $74FC: $3F
    cp $FD                                        ; $74FD: $FE $FD
    sbc d                                         ; $74FF: $9A
    ld b, d                                       ; $7500: $42
    and e                                         ; $7501: $A3
    ld c, h                                       ; $7502: $4C
    and e                                         ; $7503: $A3
    ld [$0422], sp                                ; $7504: $08 $22 $04
    ld b, b                                       ; $7507: $40
    db $EB                                        ; $7508: $EB
    ld a, c                                       ; $7509: $79
    call nc, Call_013_4944                        ; $750A: $D4 $44 $49
    ld [hl], l                                    ; $750D: $75
    sbc e                                         ; $750E: $9B
    ld a, b                                       ; $750F: $78
    ld [hl], b                                    ; $7510: $70
    sbc a                                         ; $7511: $9F
    ld c, c                                       ; $7512: $49
    jr nz, @+$68                                  ; $7513: $20 $66

    ld l, a                                       ; $7515: $6F
    ld [hl], l                                    ; $7516: $75
    ld l, [hl]                                    ; $7517: $6E
    ld h, h                                       ; $7518: $64
    rst $38                                       ; $7519: $FF
    ld [hl], e                                    ; $751A: $73
    ld l, a                                       ; $751B: $6F
    ld l, l                                       ; $751C: $6D
    ld h, l                                       ; $751D: $65
    ld [hl], h                                    ; $751E: $74
    ld l, b                                       ; $751F: $68

jr_013_7520:
    ld l, c                                       ; $7520: $69
    ld l, [hl]                                    ; $7521: $6E
    ld h, a                                       ; $7522: $67
    ld l, $2E                                     ; $7523: $2E $2E
    ld l, $FE                                     ; $7525: $2E $FE
    db $FD                                        ; $7527: $FD
    sbc d                                         ; $7528: $9A
    sbc a                                         ; $7529: $9F
    ld d, h                                       ; $752A: $54

jr_013_752B:
    ld l, a                                       ; $752B: $6F
    ld l, [hl]                                    ; $752C: $6E
    ld a, c                                       ; $752D: $79
    jr nz, @+$69                                  ; $752E: $20 $67

    ld l, a                                       ; $7530: $6F
    ld [hl], h                                    ; $7531: $74
    jr nz, jr_013_7595                            ; $7532: $20 $61

    rst $38                                       ; $7534: $FF
    ld d, a                                       ; $7535: $57

jr_013_7536:
    ld h, c                                       ; $7536: $61
    ld [hl], h                                    ; $7537: $74
    ld h, l                                       ; $7538: $65
    ld [hl], d                                    ; $7539: $72
    jr nz, jr_013_75AB                            ; $753A: $20 $6F

    ld h, [hl]                                    ; $753C: $66
    jr nz, jr_013_758B                            ; $753D: $20 $4C

    ld l, c                                       ; $753F: $69
    ld h, [hl]                                    ; $7540: $66
    ld h, l                                       ; $7541: $65
    cp $FD                                        ; $7542: $FE $FD
    sbc d                                         ; $7544: $9A

jr_013_7545:
    add a                                         ; $7545: $87
    nop                                           ; $7546: $00
    inc hl                                        ; $7547: $23
    ld bc, $9B42                                  ; $7548: $01 $42 $9B
    ld a, b                                       ; $754B: $78
    ld [hl], b                                    ; $754C: $70
    sbc a                                         ; $754D: $9F

jr_013_754E:
    ld d, d                                       ; $754E: $52
    ld h, l                                       ; $754F: $65
    ld l, l                                       ; $7550: $6D
    ld l, c                                       ; $7551: $69
    ld l, [hl]                                    ; $7552: $6E
    ld h, h                                       ; $7553: $64
    ld [hl], e                                    ; $7554: $73
    jr nz, jr_013_75C4                            ; $7555: $20 $6D

    ld h, l                                       ; $7557: $65
    rst $38                                       ; $7558: $FF
    ld l, a                                       ; $7559: $6F
    ld h, [hl]                                    ; $755A: $66
    jr nz, jr_013_75CA                            ; $755B: $20 $6D

    ld a, c                                       ; $755D: $79
    jr nz, jr_013_75C4                            ; $755E: $20 $64

    ld l, a                                       ; $7560: $6F

jr_013_7561:
    ld h, a                                       ; $7561: $67
    ld l, $FE                                     ; $7562: $2E $FE
    db $FD                                        ; $7564: $FD
    sbc d                                         ; $7565: $9A
    ld b, d                                       ; $7566: $42
    sbc e                                         ; $7567: $9B
    ld a, b                                       ; $7568: $78
    ld [hl], b                                    ; $7569: $70
    sbc a                                         ; $756A: $9F
    ld b, e                                       ; $756B: $43
    ld [hl], d                                    ; $756C: $72
    ld h, l                                       ; $756D: $65
    ld h, l                                       ; $756E: $65
    ld [hl], b                                    ; $756F: $70
    ld a, c                                       ; $7570: $79
    ld l, $FE                                     ; $7571: $2E $FE
    ld c, c                                       ; $7573: $49
    jr nz, jr_013_75EA                            ; $7574: $20 $74

    ld l, b                                       ; $7576: $68
    ld l, c                                       ; $7577: $69
    ld l, [hl]                                    ; $7578: $6E
    ld l, e                                       ; $7579: $6B
    jr nz, jr_013_75E5                            ; $757A: $20 $69

    ld [hl], h                                    ; $757C: $74
    daa                                           ; $757D: $27
    ld [hl], e                                    ; $757E: $73
    cp $64                                        ; $757F: $FE $64
    ld l, a                                       ; $7581: $6F
    ld l, c                                       ; $7582: $69
    ld l, [hl]                                    ; $7583: $6E
    ld h, a                                       ; $7584: $67
    jr nz, jr_013_75F0                            ; $7585: $20 $69

    ld [hl], h                                    ; $7587: $74
    ld [hl], e                                    ; $7588: $73
    jr nz, @+$6C                                  ; $7589: $20 $6A

jr_013_758B:
    ld l, a                                       ; $758B: $6F
    ld h, d                                       ; $758C: $62
    cp $61                                        ; $758D: $FE $61
    jr nz, jr_013_75FD                            ; $758F: $20 $6C

    ld l, c                                       ; $7591: $69
    ld [hl], h                                    ; $7592: $74
    ld [hl], h                                    ; $7593: $74
    ld l, h                                       ; $7594: $6C

jr_013_7595:
    ld h, l                                       ; $7595: $65
    jr nz, jr_013_760C                            ; $7596: $20 $74

    ld l, a                                       ; $7598: $6F
    ld l, a                                       ; $7599: $6F
    cp $77                                        ; $759A: $FE $77
    ld h, l                                       ; $759C: $65
    ld l, h                                       ; $759D: $6C
    ld l, h                                       ; $759E: $6C
    ld l, $FE                                     ; $759F: $2E $FE
    db $FD                                        ; $75A1: $FD
    sbc d                                         ; $75A2: $9A
    ld b, d                                       ; $75A3: $42
    ld [bc], a                                    ; $75A4: $02
    ld [$0B14], sp                                ; $75A5: $08 $14 $0B
    dec bc                                        ; $75A8: $0B
    ld b, l                                       ; $75A9: $45
    inc de                                        ; $75AA: $13

jr_013_75AB:
    call nz, $A476                                ; $75AB: $C4 $76 $A4
    inc h                                         ; $75AE: $24
    and e                                         ; $75AF: $A3
    add b                                         ; $75B0: $80
    ld [bc], a                                    ; $75B1: $02
    inc bc                                        ; $75B2: $03
    ld a, d                                       ; $75B3: $7A
    ret nc                                        ; $75B4: $D0

    sbc e                                         ; $75B5: $9B
    ld e, c                                       ; $75B6: $59
    ld d, h                                       ; $75B7: $54
    sbc a                                         ; $75B8: $9F
    ld d, b                                       ; $75B9: $50
    ld d, d                                       ; $75BA: $52
    ld d, d                                       ; $75BB: $52
    ld d, d                                       ; $75BC: $52
    ld d, d                                       ; $75BD: $52
    ld d, d                                       ; $75BE: $52
    ld l, $FE                                     ; $75BF: $2E $FE
    db $FD                                        ; $75C1: $FD
    sbc d                                         ; $75C2: $9A
    ld b, d                                       ; $75C3: $42

jr_013_75C4:
    sbc e                                         ; $75C4: $9B
    jp hl                                         ; $75C5: $E9


    ld d, l                                       ; $75C6: $55
    sbc a                                         ; $75C7: $9F
    ld c, b                                       ; $75C8: $48
    ld h, l                                       ; $75C9: $65

jr_013_75CA:
    ld a, c                                       ; $75CA: $79
    inc l                                         ; $75CB: $2C
    jr nz, jr_013_7647                            ; $75CC: $20 $79

    ld l, a                                       ; $75CE: $6F
    ld [hl], l                                    ; $75CF: $75
    daa                                           ; $75D0: $27
    ld [hl], d                                    ; $75D1: $72
    ld h, l                                       ; $75D2: $65
    jr nz, jr_013_7649                            ; $75D3: $20 $74

    ld l, b                                       ; $75D5: $68
    ld h, l                                       ; $75D6: $65
    rst $38                                       ; $75D7: $FF
    ld h, a                                       ; $75D8: $67
    ld [hl], l                                    ; $75D9: $75
    ld a, c                                       ; $75DA: $79
    jr nz, jr_013_7654                            ; $75DB: $20 $77

    ld l, b                                       ; $75DD: $68
    ld l, a                                       ; $75DE: $6F
    jr nz, jr_013_7647                            ; $75DF: $20 $66

    ld [hl], d                                    ; $75E1: $72
    ld h, l                                       ; $75E2: $65
    ld h, l                                       ; $75E3: $65
    ld h, h                                       ; $75E4: $64

jr_013_75E5:
    cp $6D                                        ; $75E5: $FE $6D
    ld h, l                                       ; $75E7: $65
    jr nz, jr_013_7650                            ; $75E8: $20 $66

jr_013_75EA:
    ld [hl], d                                    ; $75EA: $72
    ld l, a                                       ; $75EB: $6F
    ld l, l                                       ; $75EC: $6D
    jr nz, @+$72                                  ; $75ED: $20 $70

    ld [hl], d                                    ; $75EF: $72

jr_013_75F0:
    ld l, c                                       ; $75F0: $69
    ld [hl], e                                    ; $75F1: $73
    ld l, a                                       ; $75F2: $6F
    ld l, [hl]                                    ; $75F3: $6E
    ld l, $FE                                     ; $75F4: $2E $FE
    ld d, h                                       ; $75F6: $54
    ld l, b                                       ; $75F7: $68
    ld h, c                                       ; $75F8: $61
    ld l, [hl]                                    ; $75F9: $6E
    ld l, e                                       ; $75FA: $6B
    jr nz, @+$7B                                  ; $75FB: $20 $79

jr_013_75FD:
    ld l, a                                       ; $75FD: $6F
    ld [hl], l                                    ; $75FE: $75
    ld hl, $FDFE                                  ; $75FF: $21 $FE $FD
    sbc e                                         ; $7602: $9B
    ld a, b                                       ; $7603: $78
    ld [hl], b                                    ; $7604: $70
    sbc a                                         ; $7605: $9F
    ld e, c                                       ; $7606: $59
    ld l, a                                       ; $7607: $6F
    ld [hl], l                                    ; $7608: $75
    daa                                           ; $7609: $27
    ld [hl], d                                    ; $760A: $72
    ld h, l                                       ; $760B: $65

jr_013_760C:
    jr nz, jr_013_7685                            ; $760C: $20 $77

    ld h, l                                       ; $760E: $65
    ld l, h                                       ; $760F: $6C
    ld h, e                                       ; $7610: $63
    ld l, a                                       ; $7611: $6F
    ld l, l                                       ; $7612: $6D
    ld h, l                                       ; $7613: $65
    ld l, $FE                                     ; $7614: $2E $FE
    db $FD                                        ; $7616: $FD
    sbc e                                         ; $7617: $9B
    jp hl                                         ; $7618: $E9


    ld d, l                                       ; $7619: $55
    sbc a                                         ; $761A: $9F
    ld b, c                                       ; $761B: $41
    ld l, [hl]                                    ; $761C: $6E
    ld h, h                                       ; $761D: $64
    jr nz, jr_013_768D                            ; $761E: $20 $6D

    ld a, c                                       ; $7620: $79
    jr nz, @+$72                                  ; $7621: $20 $70

    ld l, a                                       ; $7623: $6F
    ld l, a                                       ; $7624: $6F
    ld [hl], d                                    ; $7625: $72
    rst $38                                       ; $7626: $FF
    ld [hl], a                                    ; $7627: $77
    ld l, b                                       ; $7628: $68
    ld h, l                                       ; $7629: $65
    ld h, c                                       ; $762A: $61
    ld [hl], h                                    ; $762B: $74
    jr nz, jr_013_7694                            ; $762C: $20 $66

    ld l, c                                       ; $762E: $69
    ld h, l                                       ; $762F: $65
    ld l, h                                       ; $7630: $6C
    ld h, h                                       ; $7631: $64
    inc l                                         ; $7632: $2C
    cp $69                                        ; $7633: $FE $69
    ld [hl], h                                    ; $7635: $74
    daa                                           ; $7636: $27
    ld [hl], e                                    ; $7637: $73
    jr nz, jr_013_769D                            ; $7638: $20 $63

    ld l, a                                       ; $763A: $6F
    ld l, l                                       ; $763B: $6D
    ld [hl], b                                    ; $763C: $70
    ld l, h                                       ; $763D: $6C
    ld h, l                                       ; $763E: $65
    ld [hl], h                                    ; $763F: $74
    ld h, l                                       ; $7640: $65
    ld l, h                                       ; $7641: $6C
    ld a, c                                       ; $7642: $79
    rst $38                                       ; $7643: $FF
    ld l, a                                       ; $7644: $6F
    halt                                          ; $7645: $76
    ld h, l                                       ; $7646: $65

jr_013_7647:
    ld [hl], d                                    ; $7647: $72
    ld h, a                                       ; $7648: $67

jr_013_7649:
    ld [hl], d                                    ; $7649: $72
    ld l, a                                       ; $764A: $6F
    ld [hl], a                                    ; $764B: $77
    ld l, [hl]                                    ; $764C: $6E
    ld l, $20                                     ; $764D: $2E $20
    ld c, a                                       ; $764F: $4F

jr_013_7650:
    ld l, b                                       ; $7650: $68
    inc l                                         ; $7651: $2C
    cp $77                                        ; $7652: $FE $77

jr_013_7654:
    ld h, l                                       ; $7654: $65
    ld l, h                                       ; $7655: $6C
    ld l, h                                       ; $7656: $6C
    ld l, $20                                     ; $7657: $2E $20
    ld c, b                                       ; $7659: $48
    ld h, l                                       ; $765A: $65
    ld [hl], d                                    ; $765B: $72
    ld h, l                                       ; $765C: $65
    inc l                                         ; $765D: $2C
    jr nz, jr_013_76C6                            ; $765E: $20 $66

    ld l, a                                       ; $7660: $6F
    ld [hl], d                                    ; $7661: $72
    rst $38                                       ; $7662: $FF
    ld h, [hl]                                    ; $7663: $66
    ld [hl], d                                    ; $7664: $72
    ld h, l                                       ; $7665: $65
    ld h, l                                       ; $7666: $65
    ld l, c                                       ; $7667: $69
    ld l, [hl]                                    ; $7668: $6E
    ld h, a                                       ; $7669: $67
    jr nz, jr_013_76D9                            ; $766A: $20 $6D

    ld h, l                                       ; $766C: $65
    jr nz, jr_013_76E8                            ; $766D: $20 $79

    ld l, a                                       ; $766F: $6F
    ld [hl], l                                    ; $7670: $75
    cp $63                                        ; $7671: $FE $63
    ld h, c                                       ; $7673: $61
    ld l, [hl]                                    ; $7674: $6E
    jr nz, jr_013_76DF                            ; $7675: $20 $68

    ld h, c                                       ; $7677: $61
    halt                                          ; $7678: $76
    ld h, l                                       ; $7679: $65
    jr nz, jr_013_76F0                            ; $767A: $20 $74

    ld l, b                                       ; $767C: $68
    ld l, c                                       ; $767D: $69
    ld [hl], e                                    ; $767E: $73
    ld l, $FE                                     ; $767F: $2E $FE
    db $FD                                        ; $7681: $FD
    add a                                         ; $7682: $87
    nop                                           ; $7683: $00
    dec d                                         ; $7684: $15

jr_013_7685:
    ld bc, $789B                                  ; $7685: $01 $9B $78
    ld [hl], b                                    ; $7688: $70
    sbc a                                         ; $7689: $9F
    ld d, h                                       ; $768A: $54
    ld l, a                                       ; $768B: $6F
    ld l, [hl]                                    ; $768C: $6E

jr_013_768D:
    ld a, c                                       ; $768D: $79
    jr nz, jr_013_76F7                            ; $768E: $20 $67

    ld l, a                                       ; $7690: $6F
    ld [hl], h                                    ; $7691: $74
    jr nz, jr_013_76F5                            ; $7692: $20 $61

jr_013_7694:
    rst $38                                       ; $7694: $FF
    db $FC                                        ; $7695: $FC
    cp $FD                                        ; $7696: $FE $FD
    sbc d                                         ; $7698: $9A
    ld e, b                                       ; $7699: $58
    ld bc, $9B42                                  ; $769A: $01 $42 $9B

jr_013_769D:
    jp hl                                         ; $769D: $E9


    ld d, l                                       ; $769E: $55
    sbc a                                         ; $769F: $9F
    ld d, h                                       ; $76A0: $54
    ld l, b                                       ; $76A1: $68
    ld h, c                                       ; $76A2: $61
    ld l, [hl]                                    ; $76A3: $6E
    ld l, e                                       ; $76A4: $6B
    ld [hl], e                                    ; $76A5: $73
    jr nz, jr_013_7709                            ; $76A6: $20 $61

    ld h, a                                       ; $76A8: $67
    ld h, c                                       ; $76A9: $61
    ld l, c                                       ; $76AA: $69
    ld l, [hl]                                    ; $76AB: $6E
    rst $38                                       ; $76AC: $FF
    ld h, [hl]                                    ; $76AD: $66
    ld l, a                                       ; $76AE: $6F
    ld [hl], d                                    ; $76AF: $72
    jr nz, jr_013_7718                            ; $76B0: $20 $66

    ld [hl], d                                    ; $76B2: $72
    ld h, l                                       ; $76B3: $65
    ld h, l                                       ; $76B4: $65
    ld l, c                                       ; $76B5: $69
    ld l, [hl]                                    ; $76B6: $6E
    ld h, a                                       ; $76B7: $67
    jr nz, jr_013_7727                            ; $76B8: $20 $6D

    ld h, l                                       ; $76BA: $65
    ld hl, $FDFE                                  ; $76BB: $21 $FE $FD
    sbc d                                         ; $76BE: $9A
    ld e, b                                       ; $76BF: $58
    ld bc, $2442                                  ; $76C0: $01 $42 $24
    ld e, $93                                     ; $76C3: $1E $93
    ld h, l                                       ; $76C5: $65

jr_013_76C6:
    ld a, d                                       ; $76C6: $7A
    ld c, l                                       ; $76C7: $4D
    ld c, a                                       ; $76C8: $4F
    ld h, [hl]                                    ; $76C9: $66
    ret nz                                        ; $76CA: $C0

    ld e, h                                       ; $76CB: $5C
    ld hl, $8664                                  ; $76CC: $21 $64 $86
    ld d, c                                       ; $76CF: $51
    ld l, c                                       ; $76D0: $69
    adc a                                         ; $76D1: $8F
    ld d, c                                       ; $76D2: $51
    dec b                                         ; $76D3: $05
    nop                                           ; $76D4: $00
    add c                                         ; $76D5: $81
    ld e, l                                       ; $76D6: $5D
    dec b                                         ; $76D7: $05
    dec b                                         ; $76D8: $05

jr_013_76D9:
    call $00D0                                    ; $76D9: $CD $D0 $00
    jr nz, jr_013_76D9                            ; $76DC: $20 $FB

    ld d, b                                       ; $76DE: $50

jr_013_76DF:
    ld [hl+], a                                   ; $76DF: $22
    dec b                                         ; $76E0: $05
    ld b, b                                       ; $76E1: $40
    dec bc                                        ; $76E2: $0B
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    add d                                         ; $76E5: $82
    sub h                                         ; $76E6: $94
    rra                                           ; $76E7: $1F

jr_013_76E8:
    ld de, $9342                                  ; $76E8: $11 $42 $93
    ld h, l                                       ; $76EB: $65
    adc c                                         ; $76EC: $89
    ld c, l                                       ; $76ED: $4D
    ld c, a                                       ; $76EE: $4F
    ld h, h                                       ; $76EF: $64

jr_013_76F0:
    and b                                         ; $76F0: $A0
    ld d, c                                       ; $76F1: $51
    ld l, c                                       ; $76F2: $69
    and l                                         ; $76F3: $A5
    ld d, c                                       ; $76F4: $51

jr_013_76F5:
    ld h, [hl]                                    ; $76F5: $66
    ret nz                                        ; $76F6: $C0

jr_013_76F7:
    ld e, h                                       ; $76F7: $5C
    ld hl, $0005                                  ; $76F8: $21 $05 $00
    add c                                         ; $76FB: $81
    ld e, l                                       ; $76FC: $5D
    dec b                                         ; $76FD: $05
    dec b                                         ; $76FE: $05

jr_013_76FF:
    ld d, l                                       ; $76FF: $55
    ret nc                                        ; $7700: $D0

    nop                                           ; $7701: $00
    jr nz, jr_013_76FF                            ; $7702: $20 $FB

    ld d, b                                       ; $7704: $50
    ld [hl+], a                                   ; $7705: $22
    dec b                                         ; $7706: $05
    ld b, b                                       ; $7707: $40
    dec b                                         ; $7708: $05

jr_013_7709:
    ld [bc], a                                    ; $7709: $02
    db $ED                                        ; $770A: $ED
    ld h, e                                       ; $770B: $63
    ld [bc], a                                    ; $770C: $02
    dec b                                         ; $770D: $05
    ld d, d                                       ; $770E: $52
    ret nc                                        ; $770F: $D0

    nop                                           ; $7710: $00
    inc de                                        ; $7711: $13
    ld [hl-], a                                   ; $7712: $32
    ld [hl], a                                    ; $7713: $77
    inc de                                        ; $7714: $13
    ld b, a                                       ; $7715: $47
    ld [hl], a                                    ; $7716: $77
    ld l, e                                       ; $7717: $6B

jr_013_7718:
    dec hl                                        ; $7718: $2B
    dec bc                                        ; $7719: $0B
    add b                                         ; $771A: $80
    ld c, h                                       ; $771B: $4C
    nop                                           ; $771C: $00
    add b                                         ; $771D: $80
    nop                                           ; $771E: $00
    dec bc                                        ; $771F: $0B
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    add d                                         ; $7722: $82
    rra                                           ; $7723: $1F
    ld de, $4394                                  ; $7724: $11 $94 $43

jr_013_7727:
    ld a, [bc]                                    ; $7727: $0A
    nop                                           ; $7728: $00
    and [hl]                                      ; $7729: $A6
    and c                                         ; $772A: $A1
    inc b                                         ; $772B: $04
    ld [hl+], a                                   ; $772C: $22
    inc b                                         ; $772D: $04
    ld b, b                                       ; $772E: $40
    dec bc                                        ; $772F: $0B
    ld [bc], a                                    ; $7730: $02
    ld b, d                                       ; $7731: $42
    dec d                                         ; $7732: $15
    ld de, $4A17                                  ; $7733: $11 $17 $4A
    ld d, b                                       ; $7736: $50
    ld de, $4A3F                                  ; $7737: $11 $3F $4A
    jr nc, jr_013_774D                            ; $773A: $30 $11

    rla                                           ; $773C: $17
    ld c, d                                       ; $773D: $4A
    ld h, b                                       ; $773E: $60
    ld de, $4A49                                  ; $773F: $11 $49 $4A
    jr nc, jr_013_7744                            ; $7742: $30 $00

jr_013_7744:
    ld b, [hl]                                    ; $7744: $46
    ld [hl-], a                                   ; $7745: $32
    ld [hl], a                                    ; $7746: $77
    ld b, e                                       ; $7747: $43
    nop                                           ; $7748: $00
    or b                                          ; $7749: $B0
    and c                                         ; $774A: $A1
    inc b                                         ; $774B: $04
    inc de                                        ; $774C: $13

jr_013_774D:
    ld e, e                                       ; $774D: $5B
    ld [hl], a                                    ; $774E: $77
    xor a                                         ; $774F: $AF
    or b                                          ; $7750: $B0
    and c                                         ; $7751: $A1
    inc b                                         ; $7752: $04
    ld e, e                                       ; $7753: $5B
    inc de                                        ; $7754: $13
    call nz, Call_013_4575                        ; $7755: $C4 $75 $45
    ld de, $4A67                                  ; $7758: $11 $67 $4A
    ld e, e                                       ; $775B: $5B
    inc de                                        ; $775C: $13
    sbc h                                         ; $775D: $9C
    halt                                          ; $775E: $76
    ld b, l                                       ; $775F: $45
    ld de, $4A67                                  ; $7760: $11 $67 $4A
    ld [bc], a                                    ; $7763: $02
    inc sp                                        ; $7764: $33
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    ld [hl+], a                                   ; $7767: $22
    ld b, l                                       ; $7768: $45
    inc de                                        ; $7769: $13
    push bc                                       ; $776A: $C5
    ld [hl], e                                    ; $776B: $73
    ld bc, $1E0A                                  ; $776C: $01 $0A $1E
    ld b, l                                       ; $776F: $45
    cpl                                           ; $7770: $2F
    ld h, l                                       ; $7771: $65
    ld b, c                                       ; $7772: $41
    ld [bc], a                                    ; $7773: $02
    rlca                                          ; $7774: $07
    dec d                                         ; $7775: $15
    inc b                                         ; $7776: $04

jr_013_7777:
    dec e                                         ; $7777: $1D
    ld b, l                                       ; $7778: $45
    inc de                                        ; $7779: $13
    ld [hl], d                                    ; $777A: $72
    ld a, b                                       ; $777B: $78
    and h                                         ; $777C: $A4
    ld h, $A3                                     ; $777D: $26 $A3
    ld bc, $0200                                  ; $777F: $01 $00 $02
    ld c, d                                       ; $7782: $4A
    ret nc                                        ; $7783: $D0

    inc h                                         ; $7784: $24
    ld e, $93                                     ; $7785: $1E $93
    ld h, l                                       ; $7787: $65
    sbc b                                         ; $7788: $98
    ld c, l                                       ; $7789: $4D
    ld c, a                                       ; $778A: $4F
    ld h, [hl]                                    ; $778B: $66
    ret nz                                        ; $778C: $C0

    ld e, h                                       ; $778D: $5C
    ld hl, $BB69                                  ; $778E: $21 $69 $BB
    ld d, c                                       ; $7791: $51
    ld h, h                                       ; $7792: $64
    xor [hl]                                      ; $7793: $AE
    ld d, c                                       ; $7794: $51
    dec b                                         ; $7795: $05
    nop                                           ; $7796: $00
    add c                                         ; $7797: $81
    ld e, l                                       ; $7798: $5D
    dec b                                         ; $7799: $05
    dec b                                         ; $779A: $05

jr_013_779B:
    ld sp, $00D1                                  ; $779B: $31 $D1 $00
    jr nz, jr_013_779B                            ; $779E: $20 $FB

    ld d, b                                       ; $77A0: $50
    ld [hl+], a                                   ; $77A1: $22
    dec b                                         ; $77A2: $05
    ld b, b                                       ; $77A3: $40
    dec bc                                        ; $77A4: $0B
    nop                                           ; $77A5: $00
    dec b                                         ; $77A6: $05
    jr nz, jr_013_7777                            ; $77A7: $20 $CE

    ld h, e                                       ; $77A9: $63
    ld a, [bc]                                    ; $77AA: $0A
    add hl, bc                                    ; $77AB: $09
    ld h, $D2                                     ; $77AC: $26 $D2
    nop                                           ; $77AE: $00
    ld [hl+], a                                   ; $77AF: $22
    jp c, $1340                                   ; $77B0: $DA $40 $13

    ld c, [hl]                                    ; $77B3: $4E
    ld l, [hl]                                    ; $77B4: $6E
    dec b                                         ; $77B5: $05
    rra                                           ; $77B6: $1F
    adc $63                                       ; $77B7: $CE $63
    ld a, [bc]                                    ; $77B9: $0A
    add hl, bc                                    ; $77BA: $09
    ld h, $D2                                     ; $77BB: $26 $D2
    nop                                           ; $77BD: $00
    ld [hl+], a                                   ; $77BE: $22
    jp c, $1340                                   ; $77BF: $DA $40 $13

    ld c, [hl]                                    ; $77C2: $4E
    ld l, [hl]                                    ; $77C3: $6E
    dec bc                                        ; $77C4: $0B
    jr nz, @+$0D                                  ; $77C5: $20 $0B

    rra                                           ; $77C7: $1F
    ld l, e                                       ; $77C8: $6B
    inc [hl]                                      ; $77C9: $34
    dec c                                         ; $77CA: $0D
    jr nc, @+$6C                                  ; $77CB: $30 $6A

    nop                                           ; $77CD: $00
    add b                                         ; $77CE: $80
    nop                                           ; $77CF: $00
    ld sp, $8613                                  ; $77D0: $31 $13 $86
    ld [hl], a                                    ; $77D3: $77
    ld [hl+], a                                   ; $77D4: $22
    adc $40                                       ; $77D5: $CE $40
    nop                                           ; $77D7: $00
    add d                                         ; $77D8: $82
    sub h                                         ; $77D9: $94
    rra                                           ; $77DA: $1F
    ld de, $0242                                  ; $77DB: $11 $42 $02
    dec d                                         ; $77DE: $15
    rlca                                          ; $77DF: $07
    dec e                                         ; $77E0: $1D
    inc b                                         ; $77E1: $04
    ld b, l                                       ; $77E2: $45
    inc de                                        ; $77E3: $13
    add [hl]                                      ; $77E4: $86
    ld [hl], a                                    ; $77E5: $77
    ld b, l                                       ; $77E6: $45
    inc de                                        ; $77E7: $13
    sbc a                                         ; $77E8: $9F
    ld a, b                                       ; $77E9: $78
    ld b, l                                       ; $77EA: $45
    inc de                                        ; $77EB: $13
    or a                                          ; $77EC: $B7
    ld a, b                                       ; $77ED: $78
    ld b, l                                       ; $77EE: $45
    inc de                                        ; $77EF: $13
    rst $08                                       ; $77F0: $CF
    ld a, b                                       ; $77F1: $78
    ld b, l                                       ; $77F2: $45
    inc de                                        ; $77F3: $13
    rst $20                                       ; $77F4: $E7
    ld a, b                                       ; $77F5: $78
    and h                                         ; $77F6: $A4
    dec [hl]                                      ; $77F7: $35
    and e                                         ; $77F8: $A3
    inc b                                         ; $77F9: $04
    ld [bc], a                                    ; $77FA: $02
    rlca                                          ; $77FB: $07
    adc $D1                                       ; $77FC: $CE $D1
    and h                                         ; $77FE: $A4
    dec [hl]                                      ; $77FF: $35
    and e                                         ; $7800: $A3
    ld [$0502], sp                                ; $7801: $08 $02 $05
    ld h, b                                       ; $7804: $60
    pop de                                        ; $7805: $D1
    and h                                         ; $7806: $A4
    dec [hl]                                      ; $7807: $35
    and e                                         ; $7808: $A3
    stop                                          ; $7809: $10 $00
    inc bc                                        ; $780B: $03
    ld h, c                                       ; $780C: $61
    pop de                                        ; $780D: $D1
    ld b, h                                       ; $780E: $44
    add hl, hl                                    ; $780F: $29
    ld a, b                                       ; $7810: $78
    ld b, e                                       ; $7811: $43
    nop                                           ; $7812: $00
    and l                                         ; $7813: $A5
    and c                                         ; $7814: $A1
    ld [$3213], sp                                ; $7815: $08 $13 $32
    ld a, b                                       ; $7818: $78
    sbc a                                         ; $7819: $9F
    ld c, c                                       ; $781A: $49
    ld [hl], h                                    ; $781B: $74
    daa                                           ; $781C: $27
    ld [hl], e                                    ; $781D: $73
    jr nz, jr_013_788C                            ; $781E: $20 $6C

    ld l, a                                       ; $7820: $6F
    ld h, e                                       ; $7821: $63
    ld l, e                                       ; $7822: $6B
    ld h, l                                       ; $7823: $65
    ld h, h                                       ; $7824: $64
    ld l, $FE                                     ; $7825: $2E $FE
    db $FD                                        ; $7827: $FD
    sbc d                                         ; $7828: $9A
    ld b, e                                       ; $7829: $43
    nop                                           ; $782A: $00
    xor e                                         ; $782B: $AB
    and c                                         ; $782C: $A1
    ld bc, $3613                                  ; $782D: $01 $13 $36
    ld a, b                                       ; $7830: $78
    ld b, d                                       ; $7831: $42
    xor a                                         ; $7832: $AF
    xor e                                         ; $7833: $AB
    and c                                         ; $7834: $A1
    ld bc, $607E                                  ; $7835: $01 $7E $60
    call nc, $0201                                ; $7838: $D4 $01 $02
    ret nc                                        ; $783B: $D0

    db $D3                                        ; $783C: $D3
    jr jr_013_784F                                ; $783D: $18 $10

    ld b, d                                       ; $783F: $42
    ld b, h                                       ; $7840: $44
    ld e, e                                       ; $7841: $5B
    ld a, b                                       ; $7842: $78
    ld b, e                                       ; $7843: $43
    nop                                           ; $7844: $00
    and l                                         ; $7845: $A5
    and c                                         ; $7846: $A1
    ld [$6413], sp                                ; $7847: $08 $13 $64
    ld a, b                                       ; $784A: $78
    sbc a                                         ; $784B: $9F
    ld c, c                                       ; $784C: $49
    ld [hl], h                                    ; $784D: $74
    daa                                           ; $784E: $27

jr_013_784F:
    ld [hl], e                                    ; $784F: $73
    jr nz, jr_013_78BE                            ; $7850: $20 $6C

    ld l, a                                       ; $7852: $6F
    ld h, e                                       ; $7853: $63
    ld l, e                                       ; $7854: $6B
    ld h, l                                       ; $7855: $65
    ld h, h                                       ; $7856: $64

jr_013_7857:
    ld l, $FE                                     ; $7857: $2E $FE
    db $FD                                        ; $7859: $FD
    sbc d                                         ; $785A: $9A
    ld b, e                                       ; $785B: $43
    nop                                           ; $785C: $00
    xor e                                         ; $785D: $AB
    and c                                         ; $785E: $A1
    ld [bc], a                                    ; $785F: $02
    inc de                                        ; $7860: $13
    ld l, b                                       ; $7861: $68
    ld a, b                                       ; $7862: $78
    ld b, d                                       ; $7863: $42
    xor a                                         ; $7864: $AF
    xor e                                         ; $7865: $AB
    and c                                         ; $7866: $A1
    ld [bc], a                                    ; $7867: $02
    ld a, [hl]                                    ; $7868: $7E
    ld h, c                                       ; $7869: $61
    call nc, $0201                                ; $786A: $D4 $01 $02
    reti                                          ; $786D: $D9


    db $D3                                        ; $786E: $D3

jr_013_786F:
    jr jr_013_788A                                ; $786F: $18 $19

    ld b, d                                       ; $7871: $42
    sub e                                         ; $7872: $93
    ld h, l                                       ; $7873: $65
    and a                                         ; $7874: $A7
    ld c, l                                       ; $7875: $4D
    ld c, a                                       ; $7876: $4F
    ld h, h                                       ; $7877: $64
    ret nz                                        ; $7878: $C0

    ld d, c                                       ; $7879: $51
    ld l, c                                       ; $787A: $69
    push de                                       ; $787B: $D5

jr_013_787C:
    ld d, c                                       ; $787C: $51
    ld h, [hl]                                    ; $787D: $66
    ret nz                                        ; $787E: $C0

    ld e, h                                       ; $787F: $5C
    ld hl, $0005                                  ; $7880: $21 $05 $00
    add c                                         ; $7883: $81
    ld e, l                                       ; $7884: $5D
    dec b                                         ; $7885: $05
    dec b                                         ; $7886: $05

jr_013_7887:
    call $00D0                                    ; $7887: $CD $D0 $00

jr_013_788A:
    jr nz, jr_013_7887                            ; $788A: $20 $FB

jr_013_788C:
    ld d, b                                       ; $788C: $50
    ld [hl+], a                                   ; $788D: $22
    dec b                                         ; $788E: $05
    ld b, b                                       ; $788F: $40
    dec bc                                        ; $7890: $0B

jr_013_7891:
    nop                                           ; $7891: $00
    ld sp, $7213                                  ; $7892: $31 $13 $72
    ld a, b                                       ; $7895: $78
    ld [hl+], a                                   ; $7896: $22
    adc $40                                       ; $7897: $CE $40
    nop                                           ; $7899: $00
    add d                                         ; $789A: $82
    rra                                           ; $789B: $1F
    ld de, $4294                                  ; $789C: $11 $94 $42
    inc c                                         ; $789F: $0C
    nop                                           ; $78A0: $00

jr_013_78A1:
    dec b                                         ; $78A1: $05
    nop                                           ; $78A2: $00
    add c                                         ; $78A3: $81
    ld e, l                                       ; $78A4: $5D
    db $10                                        ; $78A5: $10
    inc d                                         ; $78A6: $14
    jr nc, jr_013_787C                            ; $78A7: $30 $D3

    nop                                           ; $78A9: $00
    jr nz, jr_013_7857                            ; $78AA: $20 $AB

    ld d, b                                       ; $78AC: $50

jr_013_78AD:
    ld [hl+], a                                   ; $78AD: $22
    dec b                                         ; $78AE: $05
    ld b, b                                       ; $78AF: $40
    ld a, h                                       ; $78B0: $7C
    db $10                                        ; $78B1: $10
    inc d                                         ; $78B2: $14
    ld [bc], a                                    ; $78B3: $02
    dec bc                                        ; $78B4: $0B
    nop                                           ; $78B5: $00
    ld b, d                                       ; $78B6: $42
    inc c                                         ; $78B7: $0C
    nop                                           ; $78B8: $00
    dec b                                         ; $78B9: $05
    nop                                           ; $78BA: $00
    add c                                         ; $78BB: $81
    ld e, l                                       ; $78BC: $5D
    add hl, de                                    ; $78BD: $19

jr_013_78BE:
    inc d                                         ; $78BE: $14
    add hl, sp                                    ; $78BF: $39
    db $D3                                        ; $78C0: $D3
    nop                                           ; $78C1: $00
    jr nz, jr_013_786F                            ; $78C2: $20 $AB

    ld d, b                                       ; $78C4: $50

jr_013_78C5:
    ld [hl+], a                                   ; $78C5: $22
    dec b                                         ; $78C6: $05
    ld b, b                                       ; $78C7: $40
    ld a, h                                       ; $78C8: $7C
    add hl, de                                    ; $78C9: $19
    inc d                                         ; $78CA: $14
    ld [bc], a                                    ; $78CB: $02
    dec bc                                        ; $78CC: $0B
    nop                                           ; $78CD: $00
    ld b, d                                       ; $78CE: $42
    inc c                                         ; $78CF: $0C
    nop                                           ; $78D0: $00
    dec b                                         ; $78D1: $05
    nop                                           ; $78D2: $00
    add c                                         ; $78D3: $81
    ld e, l                                       ; $78D4: $5D
    db $10                                        ; $78D5: $10
    ld a, [de]                                    ; $78D6: $1A
    jr nz, jr_013_78AD                            ; $78D7: $20 $D4

    nop                                           ; $78D9: $00
    jr nz, jr_013_7891                            ; $78DA: $20 $B5

    ld d, b                                       ; $78DC: $50
    ld [hl+], a                                   ; $78DD: $22
    dec b                                         ; $78DE: $05
    ld b, b                                       ; $78DF: $40
    ld a, h                                       ; $78E0: $7C
    db $10                                        ; $78E1: $10
    ld a, [de]                                    ; $78E2: $1A
    ld [bc], a                                    ; $78E3: $02
    dec bc                                        ; $78E4: $0B
    nop                                           ; $78E5: $00
    ld b, d                                       ; $78E6: $42
    inc c                                         ; $78E7: $0C
    nop                                           ; $78E8: $00
    dec b                                         ; $78E9: $05
    nop                                           ; $78EA: $00
    add c                                         ; $78EB: $81
    ld e, l                                       ; $78EC: $5D
    add hl, de                                    ; $78ED: $19
    ld a, [de]                                    ; $78EE: $1A
    add hl, hl                                    ; $78EF: $29
    call nc, $2000                                ; $78F0: $D4 $00 $20
    or l                                          ; $78F3: $B5
    ld d, b                                       ; $78F4: $50
    ld [hl+], a                                   ; $78F5: $22

jr_013_78F6:
    dec b                                         ; $78F6: $05
    ld b, b                                       ; $78F7: $40
    ld a, h                                       ; $78F8: $7C
    add hl, de                                    ; $78F9: $19
    ld a, [de]                                    ; $78FA: $1A
    ld [bc], a                                    ; $78FB: $02
    dec bc                                        ; $78FC: $0B
    nop                                           ; $78FD: $00
    ld b, d                                       ; $78FE: $42
    ld bc, $2011                                  ; $78FF: $01 $11 $20
    ld b, l                                       ; $7902: $45
    cpl                                           ; $7903: $2F
    ld h, l                                       ; $7904: $65
    ld b, c                                       ; $7905: $41
    ld e, d                                       ; $7906: $5A
    inc de                                        ; $7907: $13
    inc l                                         ; $7908: $2C
    ld a, c                                       ; $7909: $79
    rlca                                          ; $790A: $07
    nop                                           ; $790B: $00
    ld l, e                                       ; $790C: $6B
    ld c, d                                       ; $790D: $4A
    add hl, bc                                    ; $790E: $09
    nop                                           ; $790F: $00
    jr nz, jr_013_78C5                            ; $7910: $20 $B3

    ld c, a                                       ; $7912: $4F
    ld l, [hl]                                    ; $7913: $6E
    add a                                         ; $7914: $87
    ld h, e                                       ; $7915: $63
    inc c                                         ; $7916: $0C
    halt                                          ; $7917: $76
    jr nz, jr_013_78A1                            ; $7918: $20 $87

    inc c                                         ; $791A: $0C
    nop                                           ; $791B: $00
    ld l, [hl]                                    ; $791C: $6E
    rrca                                          ; $791D: $0F
    rst $38                                       ; $791E: $FF
    ld a, a                                       ; $791F: $7F
    halt                                          ; $7920: $76
    jr nz, jr_013_7932                            ; $7921: $20 $0F

    ld [bc], a                                    ; $7923: $02
    ld [$050C], sp                                ; $7924: $08 $0C $05
    daa                                           ; $7927: $27
    ld b, l                                       ; $7928: $45
    add hl, de                                    ; $7929: $19
    db $FD                                        ; $792A: $FD
    ld b, b                                       ; $792B: $40
    add e                                         ; $792C: $83
    jr nz, jr_013_792F                            ; $792D: $20 $00

jr_013_792F:
    rst $38                                       ; $792F: $FF
    nop                                           ; $7930: $00
    ld b, d                                       ; $7931: $42

jr_013_7932:
    inc h                                         ; $7932: $24
    ld e, $93                                     ; $7933: $1E $93
    ld h, l                                       ; $7935: $65
    or [hl]                                       ; $7936: $B6
    ld c, l                                       ; $7937: $4D
    ld c, a                                       ; $7938: $4F
    ld h, [hl]                                    ; $7939: $66
    ret nz                                        ; $793A: $C0

    ld e, h                                       ; $793B: $5C
    ld hl, $EA64                                  ; $793C: $21 $64 $EA
    ld d, c                                       ; $793F: $51
    dec b                                         ; $7940: $05
    nop                                           ; $7941: $00
    add c                                         ; $7942: $81
    ld e, l                                       ; $7943: $5D
    dec b                                         ; $7944: $05
    dec b                                         ; $7945: $05
    ld l, c                                       ; $7946: $69
    ret nc                                        ; $7947: $D0

    nop                                           ; $7948: $00
    jr nz, jr_013_78F6                            ; $7949: $20 $AB

    ld d, b                                       ; $794B: $50
    ld [hl+], a                                   ; $794C: $22
    dec b                                         ; $794D: $05
    ld b, b                                       ; $794E: $40
    dec bc                                        ; $794F: $0B
    nop                                           ; $7950: $00
    ld l, a                                       ; $7951: $6F
    rlca                                          ; $7952: $07
    rst $38                                       ; $7953: $FF
    ld a, a                                       ; $7954: $7F
    dec b                                         ; $7955: $05
    jr nz, @-$30                                  ; $7956: $20 $CE

    ld h, e                                       ; $7958: $63
    ld a, [bc]                                    ; $7959: $0A
    add hl, bc                                    ; $795A: $09
    cp [hl]                                       ; $795B: $BE
    ret nc                                        ; $795C: $D0

    nop                                           ; $795D: $00
    ld [hl+], a                                   ; $795E: $22
    jp c, $1340                                   ; $795F: $DA $40 $13

    ld c, [hl]                                    ; $7962: $4E
    ld l, [hl]                                    ; $7963: $6E
    dec b                                         ; $7964: $05
    rra                                           ; $7965: $1F
    adc $63                                       ; $7966: $CE $63
    ld a, [bc]                                    ; $7968: $0A
    add hl, bc                                    ; $7969: $09
    cp [hl]                                       ; $796A: $BE
    ret nc                                        ; $796B: $D0

    nop                                           ; $796C: $00
    ld [hl+], a                                   ; $796D: $22
    jp c, $1340                                   ; $796E: $DA $40 $13

    ld c, [hl]                                    ; $7971: $4E
    ld l, [hl]                                    ; $7972: $6E
    dec bc                                        ; $7973: $0B
    jr nz, @+$0D                                  ; $7974: $20 $0B

    rra                                           ; $7976: $1F
    ld l, e                                       ; $7977: $6B
    inc [hl]                                      ; $7978: $34
    dec c                                         ; $7979: $0D
    jr nc, jr_013_79E6                            ; $797A: $30 $6A

    nop                                           ; $797C: $00

jr_013_797D:
    add b                                         ; $797D: $80
    nop                                           ; $797E: $00
    ld sp, $3E13                                  ; $797F: $31 $13 $3E
    ld a, d                                       ; $7982: $7A
    ld [hl+], a                                   ; $7983: $22
    adc $40                                       ; $7984: $CE $40
    nop                                           ; $7986: $00
    add d                                         ; $7987: $82
    sub h                                         ; $7988: $94
    halt                                          ; $7989: $76
    jr nz, jr_013_7993                            ; $798A: $20 $07

    rra                                           ; $798C: $1F
    ld de, $9342                                  ; $798D: $11 $42 $93
    ld h, l                                       ; $7990: $65
    or [hl]                                       ; $7991: $B6
    ld c, l                                       ; $7992: $4D

jr_013_7993:
    ld c, a                                       ; $7993: $4F
    ld h, [hl]                                    ; $7994: $66
    ret nz                                        ; $7995: $C0

    ld e, h                                       ; $7996: $5C
    ld hl, $EA64                                  ; $7997: $21 $64 $EA
    ld d, c                                       ; $799A: $51
    dec b                                         ; $799B: $05
    nop                                           ; $799C: $00
    ld l, e                                       ; $799D: $6B
    ld c, d                                       ; $799E: $4A
    add hl, bc                                    ; $799F: $09
    ld b, $81                                     ; $79A0: $06 $81
    ret nc                                        ; $79A2: $D0

    nop                                           ; $79A3: $00
    inc de                                        ; $79A4: $13
    di                                            ; $79A5: $F3

jr_013_79A6:
    ld a, c                                       ; $79A6: $79
    ld [hl+], a                                   ; $79A7: $22
    dec b                                         ; $79A8: $05
    ld b, b                                       ; $79A9: $40
    dec bc                                        ; $79AA: $0B
    nop                                           ; $79AB: $00
    dec b                                         ; $79AC: $05
    jr nz, jr_013_797D                            ; $79AD: $20 $CE

    ld h, e                                       ; $79AF: $63
    ld a, [bc]                                    ; $79B0: $0A
    add hl, bc                                    ; $79B1: $09
    cp [hl]                                       ; $79B2: $BE
    ret nc                                        ; $79B3: $D0

    nop                                           ; $79B4: $00
    ld [hl+], a                                   ; $79B5: $22
    jp c, $1340                                   ; $79B6: $DA $40 $13

    ld c, [hl]                                    ; $79B9: $4E
    ld l, [hl]                                    ; $79BA: $6E
    dec b                                         ; $79BB: $05
    rra                                           ; $79BC: $1F
    adc $63                                       ; $79BD: $CE $63
    ld a, [bc]                                    ; $79BF: $0A
    add hl, bc                                    ; $79C0: $09
    cp [hl]                                       ; $79C1: $BE
    ret nc                                        ; $79C2: $D0

jr_013_79C3:
    nop                                           ; $79C3: $00
    ld [hl+], a                                   ; $79C4: $22
    jp c, $1340                                   ; $79C5: $DA $40 $13

    ld c, [hl]                                    ; $79C8: $4E
    ld l, [hl]                                    ; $79C9: $6E
    dec bc                                        ; $79CA: $0B
    jr nz, @+$0D                                  ; $79CB: $20 $0B

    rra                                           ; $79CD: $1F
    ld l, e                                       ; $79CE: $6B
    inc [hl]                                      ; $79CF: $34
    dec c                                         ; $79D0: $0D
    jr nc, jr_013_7A3D                            ; $79D1: $30 $6A

    nop                                           ; $79D3: $00
    add b                                         ; $79D4: $80
    nop                                           ; $79D5: $00
    ld sp, $3E13                                  ; $79D6: $31 $13 $3E
    ld a, d                                       ; $79D9: $7A
    ld [hl+], a                                   ; $79DA: $22
    adc $40                                       ; $79DB: $CE $40
    ld l, a                                       ; $79DD: $6F
    rrca                                          ; $79DE: $0F
    rst $38                                       ; $79DF: $FF
    ld a, a                                       ; $79E0: $7F
    add d                                         ; $79E1: $82
    rra                                           ; $79E2: $1F
    ld de, $7694                                  ; $79E3: $11 $94 $76

jr_013_79E6:
    jr nz, jr_013_79F7                            ; $79E6: $20 $0F

    ld e, l                                       ; $79E8: $5D
    rlca                                          ; $79E9: $07
    nop                                           ; $79EA: $00
    add c                                         ; $79EB: $81
    ld e, l                                       ; $79EC: $5D
    add hl, bc                                    ; $79ED: $09
    nop                                           ; $79EE: $00
    jr nz, jr_013_79A6                            ; $79EF: $20 $B5

    ld d, b                                       ; $79F1: $50
    ld b, d                                       ; $79F2: $42
    dec d                                         ; $79F3: $15
    jr nz, jr_013_79C3                            ; $79F4: $20 $CD

    ld c, a                                       ; $79F6: $4F

jr_013_79F7:
    jr nz, jr_013_7A19                            ; $79F7: $20 $20

    or l                                          ; $79F9: $B5
    ld d, b                                       ; $79FA: $50
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    ld d, e                                       ; $79FD: $53
    ld b, d                                       ; $79FE: $42
    sub e                                         ; $79FF: $93

jr_013_7A00:
    ld h, l                                       ; $7A00: $65
    or [hl]                                       ; $7A01: $B6

jr_013_7A02:
    ld c, l                                       ; $7A02: $4D
    ld c, a                                       ; $7A03: $4F
    ld h, [hl]                                    ; $7A04: $66
    ret nz                                        ; $7A05: $C0

    ld e, h                                       ; $7A06: $5C
    ld hl, $EA64                                  ; $7A07: $21 $64 $EA
    ld d, c                                       ; $7A0A: $51
    dec b                                         ; $7A0B: $05
    nop                                           ; $7A0C: $00
    ld l, e                                       ; $7A0D: $6B
    ld c, d                                       ; $7A0E: $4A
    ld a, [bc]                                    ; $7A0F: $0A
    ld b, $82                                     ; $7A10: $06 $82
    ret nc                                        ; $7A12: $D0

    nop                                           ; $7A13: $00
    inc de                                        ; $7A14: $13
    ld [hl-], a                                   ; $7A15: $32
    ld a, d                                       ; $7A16: $7A
    ld [hl+], a                                   ; $7A17: $22
    dec b                                         ; $7A18: $05

jr_013_7A19:
    ld b, b                                       ; $7A19: $40
    dec bc                                        ; $7A1A: $0B
    nop                                           ; $7A1B: $00
    ld l, a                                       ; $7A1C: $6F
    rrca                                          ; $7A1D: $0F
    rst $38                                       ; $7A1E: $FF
    ld a, a                                       ; $7A1F: $7F
    add d                                         ; $7A20: $82
    rra                                           ; $7A21: $1F
    ld de, $7694                                  ; $7A22: $11 $94 $76
    jr nz, jr_013_7A36                            ; $7A25: $20 $0F

    ld e, l                                       ; $7A27: $5D
    rlca                                          ; $7A28: $07
    nop                                           ; $7A29: $00
    add c                                         ; $7A2A: $81
    ld e, l                                       ; $7A2B: $5D

jr_013_7A2C:
    add hl, bc                                    ; $7A2C: $09
    nop                                           ; $7A2D: $00
    jr nz, @-$49                                  ; $7A2E: $20 $B5

    ld d, b                                       ; $7A30: $50
    ld b, d                                       ; $7A31: $42
    dec d                                         ; $7A32: $15
    jr nz, jr_013_7A02                            ; $7A33: $20 $CD

    ld c, a                                       ; $7A35: $4F

jr_013_7A36:
    jr nz, jr_013_7A58                            ; $7A36: $20 $20

    or l                                          ; $7A38: $B5
    ld d, b                                       ; $7A39: $50
    nop                                           ; $7A3A: $00
    nop                                           ; $7A3B: $00
    ld d, e                                       ; $7A3C: $53

jr_013_7A3D:
    ld b, d                                       ; $7A3D: $42
    sub e                                         ; $7A3E: $93
    ld h, l                                       ; $7A3F: $65
    or [hl]                                       ; $7A40: $B6
    ld c, l                                       ; $7A41: $4D
    ld c, a                                       ; $7A42: $4F
    ld h, [hl]                                    ; $7A43: $66
    ret nz                                        ; $7A44: $C0

    ld e, h                                       ; $7A45: $5C
    ld hl, $EA64                                  ; $7A46: $21 $64 $EA
    ld d, c                                       ; $7A49: $51
    dec b                                         ; $7A4A: $05
    nop                                           ; $7A4B: $00
    add c                                         ; $7A4C: $81
    ld e, l                                       ; $7A4D: $5D
    dec b                                         ; $7A4E: $05
    dec b                                         ; $7A4F: $05
    ld l, c                                       ; $7A50: $69
    ret nc                                        ; $7A51: $D0

    nop                                           ; $7A52: $00
    jr nz, jr_013_7A00                            ; $7A53: $20 $AB

    ld d, b                                       ; $7A55: $50
    ld [hl+], a                                   ; $7A56: $22
    dec b                                         ; $7A57: $05

jr_013_7A58:
    ld b, b                                       ; $7A58: $40
    dec bc                                        ; $7A59: $0B
    nop                                           ; $7A5A: $00
    dec b                                         ; $7A5B: $05
    jr nz, jr_013_7A2C                            ; $7A5C: $20 $CE

    ld h, e                                       ; $7A5E: $63
    ld a, [bc]                                    ; $7A5F: $0A
    add hl, bc                                    ; $7A60: $09
    cp [hl]                                       ; $7A61: $BE
    ret nc                                        ; $7A62: $D0

    nop                                           ; $7A63: $00
    ld [hl+], a                                   ; $7A64: $22
    jp c, $1340                                   ; $7A65: $DA $40 $13

    ld c, [hl]                                    ; $7A68: $4E
    ld l, [hl]                                    ; $7A69: $6E
    dec b                                         ; $7A6A: $05
    rra                                           ; $7A6B: $1F
    adc $63                                       ; $7A6C: $CE $63
    ld a, [bc]                                    ; $7A6E: $0A
    add hl, bc                                    ; $7A6F: $09
    cp [hl]                                       ; $7A70: $BE
    ret nc                                        ; $7A71: $D0

    nop                                           ; $7A72: $00
    ld [hl+], a                                   ; $7A73: $22
    jp c, $1340                                   ; $7A74: $DA $40 $13

    ld c, [hl]                                    ; $7A77: $4E
    ld l, [hl]                                    ; $7A78: $6E
    dec bc                                        ; $7A79: $0B
    jr nz, @+$0D                                  ; $7A7A: $20 $0B

    rra                                           ; $7A7C: $1F
    ld l, e                                       ; $7A7D: $6B
    inc [hl]                                      ; $7A7E: $34
    dec c                                         ; $7A7F: $0D
    jr nc, jr_013_7AEC                            ; $7A80: $30 $6A

    nop                                           ; $7A82: $00
    add b                                         ; $7A83: $80
    nop                                           ; $7A84: $00
    ld sp, $3E13                                  ; $7A85: $31 $13 $3E
    ld a, d                                       ; $7A88: $7A
    ld [hl+], a                                   ; $7A89: $22
    adc $40                                       ; $7A8A: $CE $40
    nop                                           ; $7A8C: $00
    add d                                         ; $7A8D: $82
    rra                                           ; $7A8E: $1F
    ld de, $4294                                  ; $7A8F: $11 $94 $42
    ld bc, $2814                                  ; $7A92: $01 $14 $28
    ld b, l                                       ; $7A95: $45
    cpl                                           ; $7A96: $2F
    ld h, l                                       ; $7A97: $65
    ld b, c                                       ; $7A98: $41
    sub e                                         ; $7A99: $93
    ld h, l                                       ; $7A9A: $65
    xor d                                         ; $7A9B: $AA
    ld c, d                                       ; $7A9C: $4A
    ld c, a                                       ; $7A9D: $4F
    ld h, [hl]                                    ; $7A9E: $66
    ret nz                                        ; $7A9F: $C0

    ld e, h                                       ; $7AA0: $5C
    ld hl, $F364                                  ; $7AA1: $21 $64 $F3
    ld d, c                                       ; $7AA4: $51
    dec b                                         ; $7AA5: $05
    nop                                           ; $7AA6: $00
    add c                                         ; $7AA7: $81
    ld e, l                                       ; $7AA8: $5D
    dec b                                         ; $7AA9: $05
    dec b                                         ; $7AAA: $05

jr_013_7AAB:
    ld l, c                                       ; $7AAB: $69
    ret nc                                        ; $7AAC: $D0

    nop                                           ; $7AAD: $00
    jr nz, jr_013_7AAB                            ; $7AAE: $20 $FB

    ld d, b                                       ; $7AB0: $50
    ld [hl+], a                                   ; $7AB1: $22
    dec b                                         ; $7AB2: $05
    ld b, b                                       ; $7AB3: $40
    dec bc                                        ; $7AB4: $0B
    nop                                           ; $7AB5: $00
    nop                                           ; $7AB6: $00
    add d                                         ; $7AB7: $82
    sub h                                         ; $7AB8: $94
    ld b, d                                       ; $7AB9: $42
    ld b, b                                       ; $7ABA: $40
    dec bc                                        ; $7ABB: $0B
    nop                                           ; $7ABC: $00
    nop                                           ; $7ABD: $00
    add d                                         ; $7ABE: $82
    sub h                                         ; $7ABF: $94
    ld b, d                                       ; $7AC0: $42
    dec bc                                        ; $7AC1: $0B
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    add d                                         ; $7AC4: $82
    sub h                                         ; $7AC5: $94
    ld b, d                                       ; $7AC6: $42
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

jr_013_7AEC:
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
