SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

Jump_04C_4000:
    ld h, [hl]                                    ; $4000: $66
    ret nz                                        ; $4001: $C0

    ld e, h                                       ; $4002: $5C
    ld hl, $0C0B                                  ; $4003: $21 $0B $0C
    dec bc                                        ; $4006: $0B
    dec c                                         ; $4007: $0D
    dec bc                                        ; $4008: $0B
    ld c, $0B                                     ; $4009: $0E $0B
    ld [bc], a                                    ; $400B: $02
    dec bc                                        ; $400C: $0B
    inc bc                                        ; $400D: $03
    dec bc                                        ; $400E: $0B
    inc b                                         ; $400F: $04
    dec bc                                        ; $4010: $0B
    dec b                                         ; $4011: $05
    dec bc                                        ; $4012: $0B
    ld b, $0B                                     ; $4013: $06 $0B
    rlca                                          ; $4015: $07
    dec bc                                        ; $4016: $0B
    ld [$090B], sp                                ; $4017: $08 $0B $09
    dec bc                                        ; $401A: $0B
    ld a, [bc]                                    ; $401B: $0A
    dec bc                                        ; $401C: $0B
    dec bc                                        ; $401D: $0B
    add h                                         ; $401E: $84
    dec b                                         ; $401F: $05
    dec b                                         ; $4020: $05
    sub h                                         ; $4021: $94
    ld b, d                                       ; $4022: $42

    db $66, $C0, $5C, $21, $50, $CD, $C2, $00, $00, $40, $41, $88, $6F, $0B, $0C, $05
    db $0D, $6B, $4A, $05, $05, $37, $D0, $00, $20, $EB, $5E, $22, $05, $40, $05, $0E
    db $6B, $4A, $05, $05, $37, $D0, $00, $22, $04, $40, $22, $05, $40, $05, $02, $04
    db $5F, $05, $05, $37, $D0, $40, $22, $04, $40, $22, $05, $40, $05, $03, $04, $5F
    db $05, $05, $37, $D0, $40, $22, $04, $40, $22, $05, $40, $05, $04, $04, $5F, $05
    db $05, $37, $D0, $40, $22, $04, $40, $22, $05, $40, $05, $05, $04, $5F, $05, $05
    db $37, $D0, $40, $22, $04, $40, $22, $05, $40, $05, $06, $04, $5F, $05, $05, $37
    db $D0, $40, $22, $04, $40, $22, $05, $40, $05, $07, $04, $5F, $05, $05, $37, $D0
    db $40, $22, $04, $40, $22, $05, $40, $05, $08, $04, $5F, $05, $05, $37, $D0, $40
    db $22, $04, $40, $22, $05, $40, $05, $09, $04, $5F, $05, $05, $37, $D0, $40, $22
    db $04, $40, $22, $05, $40, $05, $0A, $04, $5F, $05, $05, $37, $D0, $40, $22, $04
    db $40, $22, $05, $40, $05, $0B, $04, $5F, $05, $05, $37, $D0, $40, $22, $04, $40
    db $22, $05, $40, $08, $0D, $0F, $0F, $04, $05, $36, $D0, $08, $0E, $0F, $08, $04
    db $02, $18, $D0, $08, $02, $0F, $0F, $04, $05, $36, $D0, $08, $03, $0F, $0F, $00
    db $05, $32, $D0, $08, $04, $08, $08, $03, $05, $35, $D0, $08, $05, $08, $08, $06
    db $05, $38, $D0, $08, $06, $0F, $0F, $08, $05, $3A, $D0, $08, $07, $00, $08, $01
    db $02, $15, $D0, $08, $08, $08, $08, $03, $02, $17, $D0, $08, $09, $08, $08, $06
    db $02, $1A, $D0, $08, $0A, $0F, $08, $08, $02, $1C, $D0, $08, $0B, $0F, $08, $04
    db $02, $18, $D0, $0B, $0D, $0B, $0E, $0B, $02, $0B, $03, $0B, $04, $0B, $05, $0B
    db $06, $0B, $07, $0B, $08, $0B, $09, $0B, $0A, $0B, $0B, $84, $05, $05, $6F, $0F
    db $FF, $7F, $94, $76, $20, $87, $76, $20, $07, $42

    sbc a                                         ; $416D: $9F
    ei                                            ; $416E: $FB
    db $FC                                        ; $416F: $FC
    rst $38                                       ; $4170: $FF
    ld l, c                                       ; $4171: $69
    ld [hl], e                                    ; $4172: $73
    jr nz, jr_04C_41DE                            ; $4173: $20 $69

    ld l, l                                       ; $4175: $6D
    ld l, l                                       ; $4176: $6D
    ld [hl], l                                    ; $4177: $75
    ld l, [hl]                                    ; $4178: $6E
    ld h, l                                       ; $4179: $65
    jr nz, jr_04C_41F0                            ; $417A: $20 $74

    ld l, a                                       ; $417C: $6F
    cp $FB                                        ; $417D: $FE $FB
    db $FC                                        ; $417F: $FC
    cp $FD                                        ; $4180: $FE $FD
    sbc d                                         ; $4182: $9A
    ld b, d                                       ; $4183: $42
    sbc a                                         ; $4184: $9F
    ei                                            ; $4185: $FB
    db $FC                                        ; $4186: $FC
    rst $38                                       ; $4187: $FF
    ld h, e                                       ; $4188: $63
    ld h, c                                       ; $4189: $61
    ld l, [hl]                                    ; $418A: $6E
    daa                                           ; $418B: $27
    ld [hl], h                                    ; $418C: $74
    jr nz, jr_04C_41F7                            ; $418D: $20 $68

    ld h, l                                       ; $418F: $65
    ld h, c                                       ; $4190: $61
    ld l, h                                       ; $4191: $6C
    jr nz, jr_04C_41FD                            ; $4192: $20 $69

    ld [hl], h                                    ; $4194: $74
    ld [hl], e                                    ; $4195: $73
    cp $FB                                        ; $4196: $FE $FB
    db $FC                                        ; $4198: $FC
    cp $FD                                        ; $4199: $FE $FD
    sbc d                                         ; $419B: $9A
    ld b, d                                       ; $419C: $42
    sbc a                                         ; $419D: $9F
    ei                                            ; $419E: $FB
    db $FC                                        ; $419F: $FC
    rst $38                                       ; $41A0: $FF
    ld l, b                                       ; $41A1: $68
    ld h, c                                       ; $41A2: $61
    ld [hl], e                                    ; $41A3: $73
    jr nz, jr_04C_4207                            ; $41A4: $20 $61

    ld l, h                                       ; $41A6: $6C
    ld l, h                                       ; $41A7: $6C
    cp $70                                        ; $41A8: $FE $70
    ld l, a                                       ; $41AA: $6F
    ld [hl], e                                    ; $41AB: $73
    ld [hl], e                                    ; $41AC: $73
    ld l, c                                       ; $41AD: $69
    ld h, d                                       ; $41AE: $62
    ld l, h                                       ; $41AF: $6C
    ld h, l                                       ; $41B0: $65
    jr nz, jr_04C_4226                            ; $41B1: $20 $73

    ld [hl], h                                    ; $41B3: $74
    ld h, c                                       ; $41B4: $61
    ld [hl], h                                    ; $41B5: $74
    ld [hl], l                                    ; $41B6: $75
    ld [hl], e                                    ; $41B7: $73
    rst $38                                       ; $41B8: $FF
    ld l, [hl]                                    ; $41B9: $6E
    ld l, a                                       ; $41BA: $6F
    ld [hl], a                                    ; $41BB: $77
    ld l, $FE                                     ; $41BC: $2E $FE
    db $FD                                        ; $41BE: $FD
    sbc d                                         ; $41BF: $9A
    ld b, d                                       ; $41C0: $42
    sbc a                                         ; $41C1: $9F
    ei                                            ; $41C2: $FB
    db $FC                                        ; $41C3: $FC
    rst $38                                       ; $41C4: $FF
    ld l, b                                       ; $41C5: $68

jr_04C_41C6:
    ld h, c                                       ; $41C6: $61
    ld [hl], e                                    ; $41C7: $73
    jr nz, jr_04C_41C6                            ; $41C8: $20 $FC

    cp $6E                                        ; $41CA: $FE $6E
    ld l, a                                       ; $41CC: $6F
    ld [hl], a                                    ; $41CD: $77
    ld l, $FE                                     ; $41CE: $2E $FE
    db $FD                                        ; $41D0: $FD
    sbc d                                         ; $41D1: $9A
    ld b, d                                       ; $41D2: $42
    sbc a                                         ; $41D3: $9F
    db $FC                                        ; $41D4: $FC
    rst $38                                       ; $41D5: $FF
    ld l, c                                       ; $41D6: $69
    ld [hl], e                                    ; $41D7: $73
    jr nz, jr_04C_423D                            ; $41D8: $20 $63

    ld l, a                                       ; $41DA: $6F
    ld l, [hl]                                    ; $41DB: $6E
    ld h, [hl]                                    ; $41DC: $66
    ld [hl], l                                    ; $41DD: $75

jr_04C_41DE:
    ld [hl], e                                    ; $41DE: $73
    ld h, l                                       ; $41DF: $65
    ld h, h                                       ; $41E0: $64
    ld hl, $FDFE                                  ; $41E1: $21 $FE $FD
    sbc d                                         ; $41E4: $9A
    ld b, d                                       ; $41E5: $42
    sbc a                                         ; $41E6: $9F
    ld e, c                                       ; $41E7: $59
    ld l, a                                       ; $41E8: $6F
    ld [hl], l                                    ; $41E9: $75
    jr nz, jr_04C_424F                            ; $41EA: $20 $63

    ld [hl], d                                    ; $41EC: $72
    ld h, c                                       ; $41ED: $61
    ld [hl], e                                    ; $41EE: $73
    ld l, b                                       ; $41EF: $68

jr_04C_41F0:
    ld h, l                                       ; $41F0: $65
    ld h, h                                       ; $41F1: $64
    jr nz, jr_04C_4268                            ; $41F2: $20 $74

    ld l, b                                       ; $41F4: $68
    ld h, l                                       ; $41F5: $65
    rst $38                                       ; $41F6: $FF

jr_04C_41F7:
    ld b, d                                       ; $41F7: $42
    ld h, c                                       ; $41F8: $61
    ld [hl], h                                    ; $41F9: $74
    ld [hl], h                                    ; $41FA: $74
    ld l, h                                       ; $41FB: $6C
    ld h, l                                       ; $41FC: $65

jr_04C_41FD:
    jr nz, jr_04C_4264                            ; $41FD: $20 $65

    ld l, [hl]                                    ; $41FF: $6E
    ld h, a                                       ; $4200: $67
    ld l, c                                       ; $4201: $69
    ld l, [hl]                                    ; $4202: $6E
    ld h, l                                       ; $4203: $65
    ld hl, $43FE                                  ; $4204: $21 $FE $43

jr_04C_4207:
    ld l, a                                       ; $4207: $6F
    ld l, [hl]                                    ; $4208: $6E
    ld [hl], h                                    ; $4209: $74
    ld h, c                                       ; $420A: $61
    ld h, e                                       ; $420B: $63
    ld [hl], h                                    ; $420C: $74
    jr nz, @+$76                                  ; $420D: $20 $74

    ld l, b                                       ; $420F: $68
    ld h, c                                       ; $4210: $61
    ld [hl], h                                    ; $4211: $74
    rst $38                                       ; $4212: $FF
    ld [hl], b                                    ; $4213: $70
    ld l, c                                       ; $4214: $69
    ld [hl], h                                    ; $4215: $74
    ld l, c                                       ; $4216: $69
    ld h, [hl]                                    ; $4217: $66
    ld [hl], l                                    ; $4218: $75
    ld l, h                                       ; $4219: $6C
    jr nz, jr_04C_4261                            ; $421A: $20 $45

    ld a, b                                       ; $421C: $78
    ld l, a                                       ; $421D: $6F
    ld b, d                                       ; $421E: $42
    ld a, c                                       ; $421F: $79
    ld [hl], h                                    ; $4220: $74
    ld h, l                                       ; $4221: $65
    cp $4E                                        ; $4222: $FE $4E
    ld c, a                                       ; $4224: $4F
    ld d, a                                       ; $4225: $57

jr_04C_4226:
    ld hl, $4D20                                  ; $4226: $21 $20 $4D
    ld d, l                                       ; $4229: $55
    ld b, c                                       ; $422A: $41
    ld c, b                                       ; $422B: $48
    ld b, c                                       ; $422C: $41
    ld c, b                                       ; $422D: $48
    ld b, c                                       ; $422E: $41
    ld c, b                                       ; $422F: $48
    ld b, c                                       ; $4230: $41
    cp $FD                                        ; $4231: $FE $FD
    sbc d                                         ; $4233: $9A
    ld b, d                                       ; $4234: $42
    sbc a                                         ; $4235: $9F
    ei                                            ; $4236: $FB
    db $FC                                        ; $4237: $FC
    rst $38                                       ; $4238: $FF
    ld l, c                                       ; $4239: $69
    ld [hl], e                                    ; $423A: $73
    jr nz, jr_04C_42A2                            ; $423B: $20 $65

jr_04C_423D:
    ld l, h                                       ; $423D: $6C
    ld l, c                                       ; $423E: $69
    ld l, l                                       ; $423F: $6D
    ld l, c                                       ; $4240: $69
    ld l, [hl]                                    ; $4241: $6E
    ld h, c                                       ; $4242: $61
    ld [hl], h                                    ; $4243: $74
    ld h, l                                       ; $4244: $65
    ld h, h                                       ; $4245: $64
    ld l, $FE                                     ; $4246: $2E $FE
    db $FD                                        ; $4248: $FD
    sbc d                                         ; $4249: $9A
    ld b, d                                       ; $424A: $42
    sbc a                                         ; $424B: $9F
    db $FC                                        ; $424C: $FC
    rst $38                                       ; $424D: $FF
    ld l, c                                       ; $424E: $69

jr_04C_424F:
    ld [hl], e                                    ; $424F: $73
    jr nz, jr_04C_42B6                            ; $4250: $20 $64

    ld h, l                                       ; $4252: $65
    ld h, [hl]                                    ; $4253: $66
    ld h, l                                       ; $4254: $65
    ld l, [hl]                                    ; $4255: $6E
    ld h, h                                       ; $4256: $64
    ld l, c                                       ; $4257: $69
    ld l, [hl]                                    ; $4258: $6E
    ld h, a                                       ; $4259: $67
    ld l, $FE                                     ; $425A: $2E $FE
    db $FD                                        ; $425C: $FD
    sbc d                                         ; $425D: $9A
    ld b, d                                       ; $425E: $42
    sbc a                                         ; $425F: $9F
    db $FC                                        ; $4260: $FC

jr_04C_4261:
    rst $38                                       ; $4261: $FF
    ld h, h                                       ; $4262: $64
    ld h, l                                       ; $4263: $65

jr_04C_4264:
    ld h, [hl]                                    ; $4264: $66
    ld l, h                                       ; $4265: $6C
    ld h, c                                       ; $4266: $61
    ld [hl], h                                    ; $4267: $74

jr_04C_4268:
    ld h, l                                       ; $4268: $65
    ld [hl], e                                    ; $4269: $73
    cp $69                                        ; $426A: $FE $69
    ld [hl], h                                    ; $426C: $74
    ld [hl], e                                    ; $426D: $73
    ld h, l                                       ; $426E: $65
    ld l, h                                       ; $426F: $6C
    ld h, [hl]                                    ; $4270: $66
    ld l, $FE                                     ; $4271: $2E $FE
    db $FD                                        ; $4273: $FD
    sbc d                                         ; $4274: $9A
    ld b, d                                       ; $4275: $42
    sbc a                                         ; $4276: $9F
    ei                                            ; $4277: $FB
    db $FC                                        ; $4278: $FC
    rst $38                                       ; $4279: $FF
    ld [hl], h                                    ; $427A: $74
    ld [hl], d                                    ; $427B: $72
    ld l, c                                       ; $427C: $69
    ld h, l                                       ; $427D: $65
    ld [hl], e                                    ; $427E: $73
    jr nz, jr_04C_42F5                            ; $427F: $20 $74

    ld l, a                                       ; $4281: $6F
    jr nz, jr_04C_42E8                            ; $4282: $20 $64

    ld l, c                                       ; $4284: $69
    halt                                          ; $4285: $76
    ld h, l                                       ; $4286: $65
    ld [hl], d                                    ; $4287: $72
    ld [hl], h                                    ; $4288: $74
    rst $38                                       ; $4289: $FF
    ld [hl], h                                    ; $428A: $74
    ld l, b                                       ; $428B: $68
    ld h, l                                       ; $428C: $65
    jr nz, jr_04C_42F0                            ; $428D: $20 $61

    ld [hl], h                                    ; $428F: $74
    ld [hl], h                                    ; $4290: $74
    ld h, c                                       ; $4291: $61
    ld h, e                                       ; $4292: $63
    ld l, e                                       ; $4293: $6B
    ld l, $FE                                     ; $4294: $2E $FE
    db $FD                                        ; $4296: $FD
    sbc d                                         ; $4297: $9A
    ld b, d                                       ; $4298: $42
    sbc a                                         ; $4299: $9F
    db $FC                                        ; $429A: $FC
    rst $38                                       ; $429B: $FF
    ld h, h                                       ; $429C: $64
    ld [hl], d                                    ; $429D: $72
    ld h, c                                       ; $429E: $61
    ld l, c                                       ; $429F: $69
    ld l, [hl]                                    ; $42A0: $6E
    ld [hl], e                                    ; $42A1: $73

jr_04C_42A2:
    cp $FC                                        ; $42A2: $FE $FC
    cp $FD                                        ; $42A4: $FE $FD
    sbc d                                         ; $42A6: $9A
    ld b, d                                       ; $42A7: $42
    sbc a                                         ; $42A8: $9F
    ei                                            ; $42A9: $FB
    db $FC                                        ; $42AA: $FC
    rst $38                                       ; $42AB: $FF
    ld [hl], d                                    ; $42AC: $72
    ld h, l                                       ; $42AD: $65
    ld [hl], e                                    ; $42AE: $73
    ld l, c                                       ; $42AF: $69
    ld [hl], e                                    ; $42B0: $73
    ld [hl], h                                    ; $42B1: $74
    ld [hl], e                                    ; $42B2: $73
    jr nz, jr_04C_4329                            ; $42B3: $20 $74

    ld l, b                                       ; $42B5: $68

jr_04C_42B6:
    ld h, l                                       ; $42B6: $65
    cp $61                                        ; $42B7: $FE $61
    ld [hl], h                                    ; $42B9: $74
    ld [hl], h                                    ; $42BA: $74
    ld h, c                                       ; $42BB: $61
    ld h, e                                       ; $42BC: $63
    ld l, e                                       ; $42BD: $6B
    ld l, $FE                                     ; $42BE: $2E $FE
    db $FD                                        ; $42C0: $FD
    sbc d                                         ; $42C1: $9A
    ld b, d                                       ; $42C2: $42
    sbc a                                         ; $42C3: $9F
    ei                                            ; $42C4: $FB
    db $FC                                        ; $42C5: $FC
    rst $38                                       ; $42C6: $FF
    ld l, c                                       ; $42C7: $69
    ld [hl], e                                    ; $42C8: $73
    jr nz, jr_04C_4342                            ; $42C9: $20 $77

    ld h, l                                       ; $42CB: $65
    ld h, c                                       ; $42CC: $61
    ld l, e                                       ; $42CD: $6B
    jr nz, jr_04C_4331                            ; $42CE: $20 $61

    ld h, a                                       ; $42D0: $67
    ld h, c                                       ; $42D1: $61
    ld l, c                                       ; $42D2: $69
    ld l, [hl]                                    ; $42D3: $6E
    ld [hl], e                                    ; $42D4: $73
    ld [hl], h                                    ; $42D5: $74
    rst $38                                       ; $42D6: $FF
    ld [hl], h                                    ; $42D7: $74
    ld l, b                                       ; $42D8: $68
    ld h, l                                       ; $42D9: $65
    jr nz, @+$63                                  ; $42DA: $20 $61

    ld [hl], h                                    ; $42DC: $74
    ld [hl], h                                    ; $42DD: $74
    ld h, c                                       ; $42DE: $61
    ld h, e                                       ; $42DF: $63
    ld l, e                                       ; $42E0: $6B
    ld l, $FE                                     ; $42E1: $2E $FE
    db $FD                                        ; $42E3: $FD
    sbc d                                         ; $42E4: $9A
    ld b, d                                       ; $42E5: $42
    ld b, d                                       ; $42E6: $42
    sbc a                                         ; $42E7: $9F

jr_04C_42E8:
    db $FC                                        ; $42E8: $FC
    rst $38                                       ; $42E9: $FF
    ld h, l                                       ; $42EA: $65
    ld [hl], d                                    ; $42EB: $72
    ld [hl], l                                    ; $42EC: $75
    ld [hl], b                                    ; $42ED: $70
    ld [hl], h                                    ; $42EE: $74
    ld h, l                                       ; $42EF: $65

jr_04C_42F0:
    ld h, h                                       ; $42F0: $64
    ld hl, $4120                                  ; $42F1: $21 $20 $41
    ld l, h                                       ; $42F4: $6C

jr_04C_42F5:
    ld l, h                                       ; $42F5: $6C
    cp $69                                        ; $42F6: $FE $69
    ld [hl], h                                    ; $42F8: $74
    ld [hl], e                                    ; $42F9: $73
    jr nz, jr_04C_435D                            ; $42FA: $20 $61

    ld l, h                                       ; $42FC: $6C
    ld l, h                                       ; $42FD: $6C
    ld l, c                                       ; $42FE: $69
    ld h, l                                       ; $42FF: $65
    ld [hl], e                                    ; $4300: $73
    jr nz, jr_04C_4364                            ; $4301: $20 $61

    ld [hl], d                                    ; $4303: $72
    ld h, l                                       ; $4304: $65
    rst $38                                       ; $4305: $FF
    ld l, b                                       ; $4306: $68
    ld [hl], l                                    ; $4307: $75
    ld [hl], d                                    ; $4308: $72
    ld [hl], h                                    ; $4309: $74
    jr nz, @+$6B                                  ; $430A: $20 $69

    ld l, [hl]                                    ; $430C: $6E
    jr nz, jr_04C_4383                            ; $430D: $20 $74

    ld l, b                                       ; $430F: $68
    ld h, l                                       ; $4310: $65
    cp $65                                        ; $4311: $FE $65
    ld a, b                                       ; $4313: $78
    ld [hl], b                                    ; $4314: $70
    ld l, h                                       ; $4315: $6C
    ld l, a                                       ; $4316: $6F
    ld [hl], e                                    ; $4317: $73
    ld l, c                                       ; $4318: $69
    ld l, a                                       ; $4319: $6F
    ld l, [hl]                                    ; $431A: $6E
    ld hl, $FDFE                                  ; $431B: $21 $FE $FD
    sbc d                                         ; $431E: $9A
    ld b, d                                       ; $431F: $42
    sbc a                                         ; $4320: $9F
    db $FC                                        ; $4321: $FC
    rst $38                                       ; $4322: $FF
    ld l, c                                       ; $4323: $69
    ld [hl], e                                    ; $4324: $73
    jr nz, jr_04C_438C                            ; $4325: $20 $65

    ld [hl], d                                    ; $4327: $72
    ld [hl], l                                    ; $4328: $75

jr_04C_4329:
    ld [hl], b                                    ; $4329: $70
    ld [hl], h                                    ; $432A: $74
    ld l, c                                       ; $432B: $69
    ld l, [hl]                                    ; $432C: $6E
    ld h, a                                       ; $432D: $67
    ld hl, $FDFE                                  ; $432E: $21 $FE $FD

jr_04C_4331:
    sbc d                                         ; $4331: $9A
    ld b, d                                       ; $4332: $42
    sbc e                                         ; $4333: $9B
    sbc b                                         ; $4334: $98
    ld b, c                                       ; $4335: $41
    sbc a                                         ; $4336: $9F
    ei                                            ; $4337: $FB
    db $FC                                        ; $4338: $FC
    rst $38                                       ; $4339: $FF
    ld l, c                                       ; $433A: $69
    ld [hl], e                                    ; $433B: $73
    jr nz, jr_04C_43B1                            ; $433C: $20 $73

    ld h, l                                       ; $433E: $65
    ld l, [hl]                                    ; $433F: $6E
    ld [hl], h                                    ; $4340: $74
    ld h, l                                       ; $4341: $65

jr_04C_4342:
    ld l, [hl]                                    ; $4342: $6E
    ld h, e                                       ; $4343: $63
    ld h, l                                       ; $4344: $65
    ld h, h                                       ; $4345: $64
    ld l, $FE                                     ; $4346: $2E $FE
    db $FD                                        ; $4348: $FD
    sbc d                                         ; $4349: $9A
    ld b, d                                       ; $434A: $42
    sbc a                                         ; $434B: $9F
    db $FC                                        ; $434C: $FC
    rst $38                                       ; $434D: $FF
    ld l, a                                       ; $434E: $6F
    halt                                          ; $434F: $76
    ld h, l                                       ; $4350: $65
    ld [hl], d                                    ; $4351: $72
    dec l                                         ; $4352: $2D
    ld h, l                                       ; $4353: $65
    ld a, b                                       ; $4354: $78
    ld h, l                                       ; $4355: $65
    ld [hl], d                                    ; $4356: $72
    ld [hl], h                                    ; $4357: $74
    ld h, l                                       ; $4358: $65
    ld h, h                                       ; $4359: $64
    cp $69                                        ; $435A: $FE $69
    ld [hl], h                                    ; $435C: $74

jr_04C_435D:
    ld [hl], e                                    ; $435D: $73
    ld h, l                                       ; $435E: $65
    ld l, h                                       ; $435F: $6C
    ld h, [hl]                                    ; $4360: $66
    ld l, $FE                                     ; $4361: $2E $FE
    db $FD                                        ; $4363: $FD

jr_04C_4364:
    sbc d                                         ; $4364: $9A
    ld b, d                                       ; $4365: $42

    db $9F, $FC, $FF, $66, $69, $67, $68, $74, $73, $FE, $FB, $FC, $FE, $FD, $9A, $42

    sbc a                                         ; $4376: $9F
    ei                                            ; $4377: $FB
    db $FC                                        ; $4378: $FC
    rst $38                                       ; $4379: $FF
    ld h, [hl]                                    ; $437A: $66
    ld l, a                                       ; $437B: $6F
    ld h, e                                       ; $437C: $63
    ld [hl], l                                    ; $437D: $75
    ld [hl], e                                    ; $437E: $73
    ld h, l                                       ; $437F: $65
    ld [hl], e                                    ; $4380: $73
    ld l, $FE                                     ; $4381: $2E $FE

jr_04C_4383:
    db $FD                                        ; $4383: $FD
    sbc d                                         ; $4384: $9A
    ld b, d                                       ; $4385: $42
    sbc e                                         ; $4386: $9B
    ld a, b                                       ; $4387: $78
    ld [hl], b                                    ; $4388: $70
    sbc a                                         ; $4389: $9F
    ei                                            ; $438A: $FB
    ei                                            ; $438B: $FB

jr_04C_438C:
    ld d, h                                       ; $438C: $54
    ld l, a                                       ; $438D: $6F
    ld l, [hl]                                    ; $438E: $6E
    ld a, c                                       ; $438F: $79
    jr nz, jr_04C_43F9                            ; $4390: $20 $67

    ld h, c                                       ; $4392: $61
    ld l, c                                       ; $4393: $69
    ld l, [hl]                                    ; $4394: $6E
    ld [hl], e                                    ; $4395: $73
    rst $38                                       ; $4396: $FF
    db $FC                                        ; $4397: $FC
    jr nz, jr_04C_43FF                            ; $4398: $20 $65

    ld l, [hl]                                    ; $439A: $6E
    ld h, l                                       ; $439B: $65
    ld [hl], d                                    ; $439C: $72
    ld h, a                                       ; $439D: $67
    ld a, c                                       ; $439E: $79
    cp $62                                        ; $439F: $FE $62
    ld a, c                                       ; $43A1: $79
    jr nz, jr_04C_440A                            ; $43A2: $20 $66

    ld l, a                                       ; $43A4: $6F
    ld h, e                                       ; $43A5: $63
    ld [hl], l                                    ; $43A6: $75
    ld [hl], e                                    ; $43A7: $73
    ld l, c                                       ; $43A8: $69
    ld l, [hl]                                    ; $43A9: $6E
    ld h, a                                       ; $43AA: $67
    ld l, $FE                                     ; $43AB: $2E $FE
    db $FD                                        ; $43AD: $FD
    sbc d                                         ; $43AE: $9A
    ld b, d                                       ; $43AF: $42
    sbc a                                         ; $43B0: $9F

jr_04C_43B1:
    ei                                            ; $43B1: $FB
    db $FC                                        ; $43B2: $FC
    rst $38                                       ; $43B3: $FF
    ld l, c                                       ; $43B4: $69
    ld [hl], e                                    ; $43B5: $73
    jr nz, jr_04C_441B                            ; $43B6: $20 $63

    ld l, a                                       ; $43B8: $6F
    ld l, l                                       ; $43B9: $6D
    ld [hl], b                                    ; $43BA: $70
    ld l, h                                       ; $43BB: $6C
    ld h, l                                       ; $43BC: $65
    ld [hl], h                                    ; $43BD: $74
    ld h, l                                       ; $43BE: $65
    ld l, h                                       ; $43BF: $6C
    ld a, c                                       ; $43C0: $79
    cp $68                                        ; $43C1: $FE $68
    ld h, l                                       ; $43C3: $65
    ld h, c                                       ; $43C4: $61
    ld l, h                                       ; $43C5: $6C
    ld h, l                                       ; $43C6: $65
    ld h, h                                       ; $43C7: $64
    ld hl, $FDFE                                  ; $43C8: $21 $FE $FD
    sbc d                                         ; $43CB: $9A
    ld b, d                                       ; $43CC: $42
    sbc a                                         ; $43CD: $9F
    ei                                            ; $43CE: $FB
    db $FC                                        ; $43CF: $FC
    jr nz, @+$01                                  ; $43D0: $20 $FF

    ld h, a                                       ; $43D2: $67
    ld l, a                                       ; $43D3: $6F
    ld [hl], h                                    ; $43D4: $74
    jr nz, jr_04C_443F                            ; $43D5: $20 $68

    ld l, c                                       ; $43D7: $69
    ld h, e                                       ; $43D8: $63
    ld h, e                                       ; $43D9: $63
    ld [hl], l                                    ; $43DA: $75
    ld [hl], b                                    ; $43DB: $70
    ld [hl], e                                    ; $43DC: $73
    ld hl, $FDFE                                  ; $43DD: $21 $FE $FD
    sbc d                                         ; $43E0: $9A
    ld b, d                                       ; $43E1: $42
    sbc a                                         ; $43E2: $9F
    ld e, c                                       ; $43E3: $59
    ld l, a                                       ; $43E4: $6F
    ld [hl], l                                    ; $43E5: $75
    jr nz, @+$69                                  ; $43E6: $20 $67

    ld l, a                                       ; $43E8: $6F
    ld [hl], h                                    ; $43E9: $74
    rst $38                                       ; $43EA: $FF
    db $FC                                        ; $43EB: $FC
    jr nz, jr_04C_442F                            ; $43EC: $20 $41

    ld l, [hl]                                    ; $43EE: $6E
    ld l, c                                       ; $43EF: $69
    ld l, l                                       ; $43F0: $6D
    ld l, c                                       ; $43F1: $69
    ld [hl], h                                    ; $43F2: $74
    ld h, l                                       ; $43F3: $65
    ld hl, $FDFE                                  ; $43F4: $21 $FE $FD
    sbc d                                         ; $43F7: $9A
    ld b, d                                       ; $43F8: $42

jr_04C_43F9:
    sbc a                                         ; $43F9: $9F
    db $FC                                        ; $43FA: $FC
    rst $38                                       ; $43FB: $FF
    ld h, [hl]                                    ; $43FC: $66
    ld l, a                                       ; $43FD: $6F
    ld [hl], l                                    ; $43FE: $75

jr_04C_43FF:
    ld l, [hl]                                    ; $43FF: $6E
    ld h, h                                       ; $4400: $64
    ld hl, $FDFE                                  ; $4401: $21 $FE $FD
    sbc d                                         ; $4404: $9A
    ld b, d                                       ; $4405: $42
    sbc a                                         ; $4406: $9F
    db $FC                                        ; $4407: $FC
    rst $38                                       ; $4408: $FF
    ld l, b                                       ; $4409: $68

jr_04C_440A:
    ld h, l                                       ; $440A: $65
    ld h, c                                       ; $440B: $61
    ld l, h                                       ; $440C: $6C
    ld h, l                                       ; $440D: $65
    ld h, h                                       ; $440E: $64
    cp $FC                                        ; $440F: $FE $FC
    rst $38                                       ; $4411: $FF
    ld h, [hl]                                    ; $4412: $66

jr_04C_4413:
    ld l, a                                       ; $4413: $6F
    ld [hl], d                                    ; $4414: $72
    jr nz, jr_04C_4413                            ; $4415: $20 $FC

    ld l, $FE                                     ; $4417: $2E $FE
    db $FD                                        ; $4419: $FD
    sbc d                                         ; $441A: $9A

jr_04C_441B:
    ld b, d                                       ; $441B: $42
    sbc a                                         ; $441C: $9F
    db $FC                                        ; $441D: $FC
    rst $38                                       ; $441E: $FF
    ld l, b                                       ; $441F: $68
    ld l, c                                       ; $4420: $69
    ld h, e                                       ; $4421: $63
    ld h, e                                       ; $4422: $63
    ld [hl], l                                    ; $4423: $75
    ld [hl], b                                    ; $4424: $70
    ld [hl], e                                    ; $4425: $73
    ld hl, $FDFE                                  ; $4426: $21 $FE $FD
    sbc d                                         ; $4429: $9A
    ld b, d                                       ; $442A: $42
SCRIPT_Battle_Text_HiccupsCured::
    sbc a                                         ; $442B: $9F
    db $FC                                        ; $442C: $FC
    rst $38                                       ; $442D: $FF
    ld l, b                                       ; $442E: $68

jr_04C_442F:
    ld h, c                                       ; $442F: $61
    ld h, h                                       ; $4430: $64
    jr nz, jr_04C_449C                            ; $4431: $20 $69

    ld [hl], h                                    ; $4433: $74
    ld [hl], e                                    ; $4434: $73
    jr nz, jr_04C_449F                            ; $4435: $20 $68

    ld l, c                                       ; $4437: $69
    ld h, e                                       ; $4438: $63
    ld h, e                                       ; $4439: $63
    ld [hl], l                                    ; $443A: $75
    ld [hl], b                                    ; $443B: $70
    ld [hl], e                                    ; $443C: $73
    cp $63                                        ; $443D: $FE $63

jr_04C_443F:
    ld [hl], l                                    ; $443F: $75
    ld [hl], d                                    ; $4440: $72
    ld h, l                                       ; $4441: $65
    ld h, h                                       ; $4442: $64
    ld hl, $FDFE                                  ; $4443: $21 $FE $FD
    sbc d                                         ; $4446: $9A
    ld b, d                                       ; $4447: $42
    sbc a                                         ; $4448: $9F
    ei                                            ; $4449: $FB
    db $FC                                        ; $444A: $FC
    rst $38                                       ; $444B: $FF
    ld l, c                                       ; $444C: $69
    ld [hl], e                                    ; $444D: $73
    jr nz, @+$6A                                  ; $444E: $20 $68

    ld l, c                                       ; $4450: $69
    ld h, h                                       ; $4451: $64
    ld h, h                                       ; $4452: $64
    ld h, l                                       ; $4453: $65
    ld l, [hl]                                    ; $4454: $6E
    ld hl, $FDFE                                  ; $4455: $21 $FE $FD
    sbc d                                         ; $4458: $9A
    ld b, d                                       ; $4459: $42
    sbc a                                         ; $445A: $9F
    db $FC                                        ; $445B: $FC
    rst $38                                       ; $445C: $FF
    ld [hl], h                                    ; $445D: $74
    ld h, l                                       ; $445E: $65
    ld [hl], d                                    ; $445F: $72
    ld l, l                                       ; $4460: $6D
    ld l, c                                       ; $4461: $69
    ld l, [hl]                                    ; $4462: $6E
    ld h, c                                       ; $4463: $61
    ld [hl], h                                    ; $4464: $74
    ld h, l                                       ; $4465: $65
    ld [hl], e                                    ; $4466: $73
    cp $FC                                        ; $4467: $FE $FC
    cp $FD                                        ; $4469: $FE $FD
    sbc d                                         ; $446B: $9A
    ld b, d                                       ; $446C: $42

    db $9F, $FC, $FF, $75, $73, $65, $73, $FE, $FC, $FE, $FD, $9A, $42

    sbc e                                         ; $447A: $9B
    sbc b                                         ; $447B: $98
    ld b, c                                       ; $447C: $41
    sbc a                                         ; $447D: $9F
    ei                                            ; $447E: $FB
    db $FC                                        ; $447F: $FC
    rst $38                                       ; $4480: $FF
    ld l, c                                       ; $4481: $69
    ld [hl], e                                    ; $4482: $73
    jr nz, jr_04C_44F2                            ; $4483: $20 $6D

    ld a, c                                       ; $4485: $79
    jr nz, jr_04C_44F2                            ; $4486: $20 $6A

    ld [hl], l                                    ; $4488: $75
    ld h, h                                       ; $4489: $64
    ld h, a                                       ; $448A: $67
    ld h, l                                       ; $448B: $65
    ld l, $FE                                     ; $448C: $2E $FE
    db $FD                                        ; $448E: $FD
    sbc d                                         ; $448F: $9A
    ld b, d                                       ; $4490: $42
    sbc e                                         ; $4491: $9B
    sbc b                                         ; $4492: $98
    ld b, c                                       ; $4493: $41
    sbc a                                         ; $4494: $9F
    ei                                            ; $4495: $FB
    db $FC                                        ; $4496: $FC
    rst $38                                       ; $4497: $FF
    ld l, c                                       ; $4498: $69
    ld [hl], e                                    ; $4499: $73
    jr nz, @+$69                                  ; $449A: $20 $67

jr_04C_449C:
    ld [hl], l                                    ; $449C: $75
    ld l, c                                       ; $449D: $69
    ld l, h                                       ; $449E: $6C

jr_04C_449F:
    ld [hl], h                                    ; $449F: $74
    ld a, c                                       ; $44A0: $79
    ld l, $FE                                     ; $44A1: $2E $FE
    db $FD                                        ; $44A3: $FD
    sbc d                                         ; $44A4: $9A
    ld b, d                                       ; $44A5: $42
    sbc a                                         ; $44A6: $9F
    ei                                            ; $44A7: $FB
    db $FC                                        ; $44A8: $FC
    rst $38                                       ; $44A9: $FF
    ld d, e                                       ; $44AA: $53
    ld l, e                                       ; $44AB: $6B
    ld l, c                                       ; $44AC: $69
    ld l, h                                       ; $44AD: $6C
    ld l, h                                       ; $44AE: $6C
    jr nz, jr_04C_451A                            ; $44AF: $20 $69

    ld [hl], e                                    ; $44B1: $73
    jr nz, jr_04C_4529                            ; $44B2: $20 $75

    ld [hl], b                                    ; $44B4: $70
    cp $FC                                        ; $44B5: $FE $FC
    jr nz, jr_04C_4529                            ; $44B7: $20 $70

    ld h, l                                       ; $44B9: $65
    ld [hl], d                                    ; $44BA: $72
    ld l, l                                       ; $44BB: $6D
    ld h, c                                       ; $44BC: $61
    ld l, [hl]                                    ; $44BD: $6E
    ld h, l                                       ; $44BE: $65
    ld l, [hl]                                    ; $44BF: $6E
    ld [hl], h                                    ; $44C0: $74
    ld l, h                                       ; $44C1: $6C
    ld a, c                                       ; $44C2: $79
    ld hl, $49FE                                  ; $44C3: $21 $FE $49

jr_04C_44C6:
    ld [hl], h                                    ; $44C6: $74
    ld [hl], e                                    ; $44C7: $73
    jr nz, jr_04C_44C6                            ; $44C8: $20 $FC

    cp $69                                        ; $44CA: $FE $69
    ld [hl], e                                    ; $44CC: $73
    jr nz, jr_04C_4533                            ; $44CD: $20 $64

    ld l, a                                       ; $44CF: $6F
    ld [hl], a                                    ; $44D0: $77
    ld l, [hl]                                    ; $44D1: $6E
    jr nz, jr_04C_4505                            ; $44D2: $20 $31

    ld l, $FE                                     ; $44D4: $2E $FE
    db $FD                                        ; $44D6: $FD
    sbc d                                         ; $44D7: $9A
    ld b, d                                       ; $44D8: $42
    sbc a                                         ; $44D9: $9F
    ei                                            ; $44DA: $FB
    db $FC                                        ; $44DB: $FC
    rst $38                                       ; $44DC: $FF
    ld b, h                                       ; $44DD: $44
    ld h, l                                       ; $44DE: $65
    ld h, [hl]                                    ; $44DF: $66
    ld h, l                                       ; $44E0: $65
    ld l, [hl]                                    ; $44E1: $6E
    ld [hl], e                                    ; $44E2: $73
    ld h, l                                       ; $44E3: $65
    jr nz, @+$6B                                  ; $44E4: $20 $69

    ld [hl], e                                    ; $44E6: $73
    jr nz, jr_04C_455E                            ; $44E7: $20 $75

    ld [hl], b                                    ; $44E9: $70
    cp $FC                                        ; $44EA: $FE $FC
    jr nz, jr_04C_455E                            ; $44EC: $20 $70

    ld h, l                                       ; $44EE: $65
    ld [hl], d                                    ; $44EF: $72
    ld l, l                                       ; $44F0: $6D
    ld h, c                                       ; $44F1: $61

jr_04C_44F2:
    ld l, [hl]                                    ; $44F2: $6E
    ld h, l                                       ; $44F3: $65
    ld l, [hl]                                    ; $44F4: $6E
    ld [hl], h                                    ; $44F5: $74
    ld l, h                                       ; $44F6: $6C
    ld a, c                                       ; $44F7: $79
    ld hl, $49FE                                  ; $44F8: $21 $FE $49

jr_04C_44FB:
    ld [hl], h                                    ; $44FB: $74
    ld [hl], e                                    ; $44FC: $73
    jr nz, jr_04C_44FB                            ; $44FD: $20 $FC

    cp $69                                        ; $44FF: $FE $69
    ld [hl], e                                    ; $4501: $73
    jr nz, jr_04C_4568                            ; $4502: $20 $64

    ld l, a                                       ; $4504: $6F

jr_04C_4505:
    ld [hl], a                                    ; $4505: $77
    ld l, [hl]                                    ; $4506: $6E
    jr nz, jr_04C_453A                            ; $4507: $20 $31

    ld l, $FE                                     ; $4509: $2E $FE
    db $FD                                        ; $450B: $FD
    sbc d                                         ; $450C: $9A
    ld b, d                                       ; $450D: $42
    sbc a                                         ; $450E: $9F
    ei                                            ; $450F: $FB
    db $FC                                        ; $4510: $FC
    rst $38                                       ; $4511: $FF
    ld d, d                                       ; $4512: $52
    ld h, l                                       ; $4513: $65
    ld [hl], e                                    ; $4514: $73
    ld l, c                                       ; $4515: $69
    ld [hl], e                                    ; $4516: $73
    ld [hl], h                                    ; $4517: $74
    jr nz, jr_04C_4583                            ; $4518: $20 $69

jr_04C_451A:
    ld [hl], e                                    ; $451A: $73
    jr nz, jr_04C_4592                            ; $451B: $20 $75

    ld [hl], b                                    ; $451D: $70
    cp $FC                                        ; $451E: $FE $FC
    jr nz, jr_04C_4592                            ; $4520: $20 $70

    ld h, l                                       ; $4522: $65
    ld [hl], d                                    ; $4523: $72
    ld l, l                                       ; $4524: $6D
    ld h, c                                       ; $4525: $61
    ld l, [hl]                                    ; $4526: $6E
    ld h, l                                       ; $4527: $65
    ld l, [hl]                                    ; $4528: $6E

jr_04C_4529:
    ld [hl], h                                    ; $4529: $74
    ld l, h                                       ; $452A: $6C
    ld a, c                                       ; $452B: $79
    ld hl, $49FE                                  ; $452C: $21 $FE $49

jr_04C_452F:
    ld [hl], h                                    ; $452F: $74
    ld [hl], e                                    ; $4530: $73
    jr nz, jr_04C_452F                            ; $4531: $20 $FC

jr_04C_4533:
    cp $69                                        ; $4533: $FE $69
    ld [hl], e                                    ; $4535: $73
    jr nz, jr_04C_459C                            ; $4536: $20 $64

    ld l, a                                       ; $4538: $6F
    ld [hl], a                                    ; $4539: $77

jr_04C_453A:
    ld l, [hl]                                    ; $453A: $6E
    jr nz, jr_04C_456E                            ; $453B: $20 $31

    ld l, $FE                                     ; $453D: $2E $FE
    db $FD                                        ; $453F: $FD
    sbc d                                         ; $4540: $9A
    ld b, d                                       ; $4541: $42
    sbc a                                         ; $4542: $9F
    ei                                            ; $4543: $FB
    db $FC                                        ; $4544: $FC
    rst $38                                       ; $4545: $FF
    ld d, e                                       ; $4546: $53
    ld [hl], b                                    ; $4547: $70
    ld h, l                                       ; $4548: $65
    ld h, l                                       ; $4549: $65
    ld h, h                                       ; $454A: $64
    jr nz, jr_04C_45B6                            ; $454B: $20 $69

    ld [hl], e                                    ; $454D: $73
    jr nz, jr_04C_45C5                            ; $454E: $20 $75

    ld [hl], b                                    ; $4550: $70
    cp $FC                                        ; $4551: $FE $FC
    jr nz, jr_04C_45C5                            ; $4553: $20 $70

    ld h, l                                       ; $4555: $65
    ld [hl], d                                    ; $4556: $72
    ld l, l                                       ; $4557: $6D
    ld h, c                                       ; $4558: $61
    ld l, [hl]                                    ; $4559: $6E
    ld h, l                                       ; $455A: $65
    ld l, [hl]                                    ; $455B: $6E
    ld [hl], h                                    ; $455C: $74
    ld l, h                                       ; $455D: $6C

jr_04C_455E:
    ld a, c                                       ; $455E: $79
    ld hl, $49FE                                  ; $455F: $21 $FE $49

jr_04C_4562:
    ld [hl], h                                    ; $4562: $74
    ld [hl], e                                    ; $4563: $73
    jr nz, jr_04C_4562                            ; $4564: $20 $FC

    cp $69                                        ; $4566: $FE $69

jr_04C_4568:
    ld [hl], e                                    ; $4568: $73
    jr nz, jr_04C_45CF                            ; $4569: $20 $64

    ld l, a                                       ; $456B: $6F
    ld [hl], a                                    ; $456C: $77
    ld l, [hl]                                    ; $456D: $6E

jr_04C_456E:
    jr nz, jr_04C_45A1                            ; $456E: $20 $31

    ld l, $FE                                     ; $4570: $2E $FE
    db $FD                                        ; $4572: $FD
    sbc d                                         ; $4573: $9A
    ld b, d                                       ; $4574: $42
    sbc a                                         ; $4575: $9F
    ei                                            ; $4576: $FB
    db $FC                                        ; $4577: $FC
    rst $38                                       ; $4578: $FF
    ld d, e                                       ; $4579: $53
    ld [hl], h                                    ; $457A: $74
    ld [hl], d                                    ; $457B: $72
    ld h, l                                       ; $457C: $65
    ld l, [hl]                                    ; $457D: $6E
    ld h, a                                       ; $457E: $67
    ld [hl], h                                    ; $457F: $74
    ld l, b                                       ; $4580: $68
    jr nz, jr_04C_45EC                            ; $4581: $20 $69

jr_04C_4583:
    ld [hl], e                                    ; $4583: $73
    jr nz, jr_04C_45FB                            ; $4584: $20 $75

    ld [hl], b                                    ; $4586: $70
    cp $FC                                        ; $4587: $FE $FC
    jr nz, jr_04C_45FB                            ; $4589: $20 $70

    ld h, l                                       ; $458B: $65
    ld [hl], d                                    ; $458C: $72
    ld l, l                                       ; $458D: $6D
    ld h, c                                       ; $458E: $61
    ld l, [hl]                                    ; $458F: $6E
    ld h, l                                       ; $4590: $65
    ld l, [hl]                                    ; $4591: $6E

jr_04C_4592:
    ld [hl], h                                    ; $4592: $74
    ld l, h                                       ; $4593: $6C
    ld a, c                                       ; $4594: $79
    ld hl, $49FE                                  ; $4595: $21 $FE $49

jr_04C_4598:
    ld [hl], h                                    ; $4598: $74
    ld [hl], e                                    ; $4599: $73
    jr nz, jr_04C_4598                            ; $459A: $20 $FC

jr_04C_459C:
    cp $69                                        ; $459C: $FE $69
    ld [hl], e                                    ; $459E: $73
    jr nz, jr_04C_4605                            ; $459F: $20 $64

jr_04C_45A1:
    ld l, a                                       ; $45A1: $6F
    ld [hl], a                                    ; $45A2: $77
    ld l, [hl]                                    ; $45A3: $6E
    jr nz, jr_04C_45D7                            ; $45A4: $20 $31

    ld l, $FE                                     ; $45A6: $2E $FE
    db $FD                                        ; $45A8: $FD
    sbc d                                         ; $45A9: $9A
    ld b, d                                       ; $45AA: $42
    sbc a                                         ; $45AB: $9F
    ld d, h                                       ; $45AC: $54
    ld l, a                                       ; $45AD: $6F
    ld l, [hl]                                    ; $45AE: $6E
    ld a, c                                       ; $45AF: $79
    jr nz, jr_04C_4629                            ; $45B0: $20 $77

    ld h, c                                       ; $45B2: $61
    ld [hl], e                                    ; $45B3: $73
    rst $38                                       ; $45B4: $FF
    ld h, h                                       ; $45B5: $64

jr_04C_45B6:
    ld h, l                                       ; $45B6: $65
    ld h, [hl]                                    ; $45B7: $66
    ld h, l                                       ; $45B8: $65
    ld h, c                                       ; $45B9: $61
    ld [hl], h                                    ; $45BA: $74
    ld h, l                                       ; $45BB: $65
    ld h, h                                       ; $45BC: $64
    ld l, $FE                                     ; $45BD: $2E $FE
    db $FD                                        ; $45BF: $FD
    sbc d                                         ; $45C0: $9A
    ld b, d                                       ; $45C1: $42
    sbc a                                         ; $45C2: $9F
    ei                                            ; $45C3: $FB
    db $FC                                        ; $45C4: $FC

jr_04C_45C5:
    rst $38                                       ; $45C5: $FF
    ld b, h                                       ; $45C6: $44
    ld h, l                                       ; $45C7: $65
    ld h, [hl]                                    ; $45C8: $66
    ld h, l                                       ; $45C9: $65
    ld l, [hl]                                    ; $45CA: $6E
    ld [hl], e                                    ; $45CB: $73
    ld h, l                                       ; $45CC: $65
    jr nz, jr_04C_4638                            ; $45CD: $20 $69

jr_04C_45CF:
    ld [hl], e                                    ; $45CF: $73
    cp $64                                        ; $45D0: $FE $64
    ld l, a                                       ; $45D2: $6F

jr_04C_45D3:
    ld [hl], a                                    ; $45D3: $77
    ld l, [hl]                                    ; $45D4: $6E
    jr nz, jr_04C_45D3                            ; $45D5: $20 $FC

jr_04C_45D7:
    ld hl, $FDFE                                  ; $45D7: $21 $FE $FD
    sbc d                                         ; $45DA: $9A
    ld b, d                                       ; $45DB: $42
    sbc a                                         ; $45DC: $9F
    ei                                            ; $45DD: $FB
    db $FC                                        ; $45DE: $FC
    rst $38                                       ; $45DF: $FF
    ld d, d                                       ; $45E0: $52
    ld h, l                                       ; $45E1: $65
    ld [hl], e                                    ; $45E2: $73
    ld l, c                                       ; $45E3: $69
    ld [hl], e                                    ; $45E4: $73
    ld [hl], h                                    ; $45E5: $74
    jr nz, @+$6B                                  ; $45E6: $20 $69

    ld [hl], e                                    ; $45E8: $73
    cp $64                                        ; $45E9: $FE $64
    ld l, a                                       ; $45EB: $6F

jr_04C_45EC:
    ld [hl], a                                    ; $45EC: $77
    ld l, [hl]                                    ; $45ED: $6E
    jr nz, jr_04C_45EC                            ; $45EE: $20 $FC

    ld hl, $FDFE                                  ; $45F0: $21 $FE $FD
    sbc d                                         ; $45F3: $9A
    ld b, d                                       ; $45F4: $42
    sbc a                                         ; $45F5: $9F
    ei                                            ; $45F6: $FB
    db $FC                                        ; $45F7: $FC
    rst $38                                       ; $45F8: $FF
    ld d, e                                       ; $45F9: $53
    ld l, e                                       ; $45FA: $6B

jr_04C_45FB:
    ld l, c                                       ; $45FB: $69
    ld l, h                                       ; $45FC: $6C
    ld l, h                                       ; $45FD: $6C
    jr nz, jr_04C_4669                            ; $45FE: $20 $69

Jump_04C_4600:
    ld [hl], e                                    ; $4600: $73
    cp $64                                        ; $4601: $FE $64
    ld l, a                                       ; $4603: $6F

jr_04C_4604:
    ld [hl], a                                    ; $4604: $77

jr_04C_4605:
    ld l, [hl]                                    ; $4605: $6E
    jr nz, jr_04C_4604                            ; $4606: $20 $FC

    ld hl, $FDFE                                  ; $4608: $21 $FE $FD
    sbc d                                         ; $460B: $9A
    ld b, d                                       ; $460C: $42
    sbc a                                         ; $460D: $9F
    ei                                            ; $460E: $FB
    db $FC                                        ; $460F: $FC
    rst $38                                       ; $4610: $FF
    ld d, e                                       ; $4611: $53
    ld [hl], b                                    ; $4612: $70
    ld h, l                                       ; $4613: $65
    ld h, l                                       ; $4614: $65
    ld h, h                                       ; $4615: $64
    jr nz, @+$6B                                  ; $4616: $20 $69

    ld [hl], e                                    ; $4618: $73
    cp $64                                        ; $4619: $FE $64
    ld l, a                                       ; $461B: $6F

jr_04C_461C:
    ld [hl], a                                    ; $461C: $77
    ld l, [hl]                                    ; $461D: $6E
    jr nz, jr_04C_461C                            ; $461E: $20 $FC

    ld hl, $FDFE                                  ; $4620: $21 $FE $FD
    sbc d                                         ; $4623: $9A
    ld b, d                                       ; $4624: $42
    sbc a                                         ; $4625: $9F
    ei                                            ; $4626: $FB
    db $FC                                        ; $4627: $FC
    rst $38                                       ; $4628: $FF

jr_04C_4629:
    ld d, e                                       ; $4629: $53
    ld [hl], h                                    ; $462A: $74
    ld [hl], d                                    ; $462B: $72
    ld h, l                                       ; $462C: $65
    ld l, [hl]                                    ; $462D: $6E
    ld h, a                                       ; $462E: $67
    ld [hl], h                                    ; $462F: $74
    ld l, b                                       ; $4630: $68
    jr nz, jr_04C_469C                            ; $4631: $20 $69

    ld [hl], e                                    ; $4633: $73
    cp $64                                        ; $4634: $FE $64
    ld l, a                                       ; $4636: $6F

jr_04C_4637:
    ld [hl], a                                    ; $4637: $77

jr_04C_4638:
    ld l, [hl]                                    ; $4638: $6E
    jr nz, jr_04C_4637                            ; $4639: $20 $FC

    ld hl, $FDFE                                  ; $463B: $21 $FE $FD
    sbc d                                         ; $463E: $9A
    ld b, d                                       ; $463F: $42
    sbc a                                         ; $4640: $9F
    ei                                            ; $4641: $FB
    db $FC                                        ; $4642: $FC
    rst $38                                       ; $4643: $FF
    ld c, h                                       ; $4644: $4C
    ld [hl], l                                    ; $4645: $75
    ld h, e                                       ; $4646: $63
    ld l, e                                       ; $4647: $6B
    jr nz, @+$6B                                  ; $4648: $20 $69

    ld [hl], e                                    ; $464A: $73
    jr nz, jr_04C_46B1                            ; $464B: $20 $64

    ld l, a                                       ; $464D: $6F
    ld [hl], a                                    ; $464E: $77
    ld l, [hl]                                    ; $464F: $6E

Jump_04C_4650:
    cp $FC                                        ; $4650: $FE $FC
    jr nz, jr_04C_46C4                            ; $4652: $20 $70

    ld h, l                                       ; $4654: $65
    ld [hl], d                                    ; $4655: $72
    ld l, l                                       ; $4656: $6D
    ld h, c                                       ; $4657: $61
    ld l, [hl]                                    ; $4658: $6E
    ld h, l                                       ; $4659: $65
    ld l, [hl]                                    ; $465A: $6E
    ld [hl], h                                    ; $465B: $74
    ld l, h                                       ; $465C: $6C
    ld a, c                                       ; $465D: $79
    ld hl, $FDFE                                  ; $465E: $21 $FE $FD
    sbc d                                         ; $4661: $9A
    ld b, d                                       ; $4662: $42
    sbc a                                         ; $4663: $9F
    ei                                            ; $4664: $FB
    db $FC                                        ; $4665: $FC
    rst $38                                       ; $4666: $FF
    ld c, h                                       ; $4667: $4C
    ld [hl], l                                    ; $4668: $75

jr_04C_4669:
    ld h, e                                       ; $4669: $63
    ld l, e                                       ; $466A: $6B
    jr nz, jr_04C_46D6                            ; $466B: $20 $69

    ld [hl], e                                    ; $466D: $73
    jr nz, @+$77                                  ; $466E: $20 $75

    ld [hl], b                                    ; $4670: $70
    cp $FC                                        ; $4671: $FE $FC
    jr nz, @+$72                                  ; $4673: $20 $70

    ld h, l                                       ; $4675: $65
    ld [hl], d                                    ; $4676: $72
    ld l, l                                       ; $4677: $6D
    ld h, c                                       ; $4678: $61
    ld l, [hl]                                    ; $4679: $6E
    ld h, l                                       ; $467A: $65
    ld l, [hl]                                    ; $467B: $6E
    ld [hl], h                                    ; $467C: $74
    ld l, h                                       ; $467D: $6C
    ld a, c                                       ; $467E: $79
    ld hl, $FDFE                                  ; $467F: $21 $FE $FD
    sbc d                                         ; $4682: $9A
    ld b, d                                       ; $4683: $42
    sbc a                                         ; $4684: $9F
    db $FC                                        ; $4685: $FC
    rst $38                                       ; $4686: $FF
    ld l, c                                       ; $4687: $69
    ld [hl], e                                    ; $4688: $73
    jr nz, jr_04C_46F9                            ; $4689: $20 $6E

    ld l, a                                       ; $468B: $6F
    ld [hl], a                                    ; $468C: $77
    jr nz, jr_04C_46FB                            ; $468D: $20 $6C

    ld h, l                                       ; $468F: $65
    halt                                          ; $4690: $76

jr_04C_4691:
    ld h, l                                       ; $4691: $65
    ld l, h                                       ; $4692: $6C
    jr nz, jr_04C_4691                            ; $4693: $20 $FC

    cp $45                                        ; $4695: $FE $45
    ld l, [hl]                                    ; $4697: $6E
    ld h, l                                       ; $4698: $65
    ld [hl], d                                    ; $4699: $72
    ld h, a                                       ; $469A: $67
    ld a, c                                       ; $469B: $79

jr_04C_469C:
    jr nz, jr_04C_4707                            ; $469C: $20 $69

    ld [hl], e                                    ; $469E: $73
    jr nz, @-$02                                  ; $469F: $20 $FC

    ld l, $FE                                     ; $46A1: $2E $FE
    ld d, e                                       ; $46A3: $53
    ld [hl], h                                    ; $46A4: $74
    ld [hl], d                                    ; $46A5: $72
    ld h, l                                       ; $46A6: $65
    ld l, [hl]                                    ; $46A7: $6E
    ld h, a                                       ; $46A8: $67
    ld [hl], h                                    ; $46A9: $74
    ld l, b                                       ; $46AA: $68
    rst $38                                       ; $46AB: $FF
    ld l, c                                       ; $46AC: $69
    ld [hl], e                                    ; $46AD: $73
    jr nz, jr_04C_471E                            ; $46AE: $20 $6E

jr_04C_46B0:
    ld l, a                                       ; $46B0: $6F

jr_04C_46B1:
    ld [hl], a                                    ; $46B1: $77
    jr nz, jr_04C_46B0                            ; $46B2: $20 $FC

    ld l, $FE                                     ; $46B4: $2E $FE
    ld d, e                                       ; $46B6: $53
    ld l, e                                       ; $46B7: $6B
    ld l, c                                       ; $46B8: $69
    ld l, h                                       ; $46B9: $6C
    ld l, h                                       ; $46BA: $6C
    rst $38                                       ; $46BB: $FF
    ld l, c                                       ; $46BC: $69
    ld [hl], e                                    ; $46BD: $73
    jr nz, jr_04C_472E                            ; $46BE: $20 $6E

jr_04C_46C0:
    ld l, a                                       ; $46C0: $6F
    ld [hl], a                                    ; $46C1: $77
    jr nz, jr_04C_46C0                            ; $46C2: $20 $FC

jr_04C_46C4:
    ld l, $FE                                     ; $46C4: $2E $FE
    ld d, e                                       ; $46C6: $53
    ld [hl], b                                    ; $46C7: $70
    ld h, l                                       ; $46C8: $65
    ld h, l                                       ; $46C9: $65
    ld h, h                                       ; $46CA: $64
    rst $38                                       ; $46CB: $FF
    ld l, c                                       ; $46CC: $69
    ld [hl], e                                    ; $46CD: $73
    jr nz, jr_04C_473E                            ; $46CE: $20 $6E

jr_04C_46D0:
    ld l, a                                       ; $46D0: $6F
    ld [hl], a                                    ; $46D1: $77
    jr nz, jr_04C_46D0                            ; $46D2: $20 $FC

    ld l, $FE                                     ; $46D4: $2E $FE

jr_04C_46D6:
    ld b, h                                       ; $46D6: $44
    ld h, l                                       ; $46D7: $65
    ld h, [hl]                                    ; $46D8: $66
    ld h, l                                       ; $46D9: $65
    ld l, [hl]                                    ; $46DA: $6E
    ld [hl], e                                    ; $46DB: $73
    ld h, l                                       ; $46DC: $65
    rst $38                                       ; $46DD: $FF
    ld l, c                                       ; $46DE: $69
    ld [hl], e                                    ; $46DF: $73
    jr nz, jr_04C_4750                            ; $46E0: $20 $6E

jr_04C_46E2:
    ld l, a                                       ; $46E2: $6F
    ld [hl], a                                    ; $46E3: $77
    jr nz, jr_04C_46E2                            ; $46E4: $20 $FC

    ld l, $FE                                     ; $46E6: $2E $FE
    ld d, d                                       ; $46E8: $52
    ld h, l                                       ; $46E9: $65
    ld [hl], e                                    ; $46EA: $73
    ld l, c                                       ; $46EB: $69
    ld [hl], e                                    ; $46EC: $73
    ld [hl], h                                    ; $46ED: $74
    rst $38                                       ; $46EE: $FF
    ld l, c                                       ; $46EF: $69
    ld [hl], e                                    ; $46F0: $73
    jr nz, jr_04C_4761                            ; $46F1: $20 $6E

jr_04C_46F3:
    ld l, a                                       ; $46F3: $6F
    ld [hl], a                                    ; $46F4: $77
    jr nz, jr_04C_46F3                            ; $46F5: $20 $FC

    ld l, $FE                                     ; $46F7: $2E $FE

jr_04C_46F9:
    db $FD                                        ; $46F9: $FD
    sbc d                                         ; $46FA: $9A

jr_04C_46FB:
    ld b, d                                       ; $46FB: $42
    sbc a                                         ; $46FC: $9F
    db $FC                                        ; $46FD: $FC
    rst $38                                       ; $46FE: $FF
    ld l, c                                       ; $46FF: $69
    ld [hl], e                                    ; $4700: $73
    jr nz, jr_04C_4771                            ; $4701: $20 $6E

    ld l, a                                       ; $4703: $6F
    ld [hl], a                                    ; $4704: $77
    jr nz, jr_04C_4773                            ; $4705: $20 $6C

jr_04C_4707:
    ld h, l                                       ; $4707: $65
    halt                                          ; $4708: $76

jr_04C_4709:
    ld h, l                                       ; $4709: $65
    ld l, h                                       ; $470A: $6C
    jr nz, jr_04C_4709                            ; $470B: $20 $FC

    cp $45                                        ; $470D: $FE $45
    ld l, [hl]                                    ; $470F: $6E
    ld h, l                                       ; $4710: $65
    ld [hl], d                                    ; $4711: $72
    ld h, a                                       ; $4712: $67
    ld a, c                                       ; $4713: $79
    rst $38                                       ; $4714: $FF

jr_04C_4715:
    ld l, c                                       ; $4715: $69
    ld [hl], e                                    ; $4716: $73
    jr nz, jr_04C_4715                            ; $4717: $20 $FC

    ld l, $FE                                     ; $4719: $2E $FE
    ld d, e                                       ; $471B: $53
    ld [hl], h                                    ; $471C: $74
    ld [hl], d                                    ; $471D: $72

jr_04C_471E:
    ld h, l                                       ; $471E: $65
    ld l, [hl]                                    ; $471F: $6E
    ld h, a                                       ; $4720: $67
    ld [hl], h                                    ; $4721: $74
    ld l, b                                       ; $4722: $68
    rst $38                                       ; $4723: $FF
    ld l, c                                       ; $4724: $69
    ld [hl], e                                    ; $4725: $73
    jr nz, jr_04C_4796                            ; $4726: $20 $6E

jr_04C_4728:
    ld l, a                                       ; $4728: $6F
    ld [hl], a                                    ; $4729: $77
    jr nz, jr_04C_4728                            ; $472A: $20 $FC

    ld l, $FE                                     ; $472C: $2E $FE

jr_04C_472E:
    ld d, e                                       ; $472E: $53
    ld l, e                                       ; $472F: $6B
    ld l, c                                       ; $4730: $69
    ld l, h                                       ; $4731: $6C
    ld l, h                                       ; $4732: $6C
    rst $38                                       ; $4733: $FF
    ld l, c                                       ; $4734: $69
    ld [hl], e                                    ; $4735: $73
    jr nz, @+$70                                  ; $4736: $20 $6E

jr_04C_4738:
    ld l, a                                       ; $4738: $6F
    ld [hl], a                                    ; $4739: $77
    jr nz, jr_04C_4738                            ; $473A: $20 $FC

    ld l, $FE                                     ; $473C: $2E $FE

jr_04C_473E:
    ld d, e                                       ; $473E: $53
    ld [hl], b                                    ; $473F: $70
    ld h, l                                       ; $4740: $65
    ld h, l                                       ; $4741: $65
    ld h, h                                       ; $4742: $64
    rst $38                                       ; $4743: $FF
    ld l, c                                       ; $4744: $69
    ld [hl], e                                    ; $4745: $73
    jr nz, jr_04C_47B6                            ; $4746: $20 $6E

jr_04C_4748:
    ld l, a                                       ; $4748: $6F
    ld [hl], a                                    ; $4749: $77
    jr nz, jr_04C_4748                            ; $474A: $20 $FC

    ld l, $FE                                     ; $474C: $2E $FE
    ld b, h                                       ; $474E: $44
    ld h, l                                       ; $474F: $65

jr_04C_4750:
    ld h, [hl]                                    ; $4750: $66
    ld h, l                                       ; $4751: $65
    ld l, [hl]                                    ; $4752: $6E
    ld [hl], e                                    ; $4753: $73
    ld h, l                                       ; $4754: $65
    rst $38                                       ; $4755: $FF
    ld l, c                                       ; $4756: $69
    ld [hl], e                                    ; $4757: $73
    jr nz, jr_04C_47C8                            ; $4758: $20 $6E

jr_04C_475A:
    ld l, a                                       ; $475A: $6F
    ld [hl], a                                    ; $475B: $77
    jr nz, jr_04C_475A                            ; $475C: $20 $FC

    ld l, $FE                                     ; $475E: $2E $FE
    ld d, d                                       ; $4760: $52

jr_04C_4761:
    ld h, l                                       ; $4761: $65
    ld [hl], e                                    ; $4762: $73
    ld l, c                                       ; $4763: $69
    ld [hl], e                                    ; $4764: $73
    ld [hl], h                                    ; $4765: $74
    rst $38                                       ; $4766: $FF
    ld l, c                                       ; $4767: $69
    ld [hl], e                                    ; $4768: $73
    jr nz, jr_04C_47D9                            ; $4769: $20 $6E

jr_04C_476B:
    ld l, a                                       ; $476B: $6F
    ld [hl], a                                    ; $476C: $77
    jr nz, jr_04C_476B                            ; $476D: $20 $FC

    ld l, $FE                                     ; $476F: $2E $FE

jr_04C_4771:
    db $FD                                        ; $4771: $FD
    sbc a                                         ; $4772: $9F

jr_04C_4773:
    ld b, c                                       ; $4773: $41
    ld h, d                                       ; $4774: $62
    ld l, c                                       ; $4775: $69
    ld l, h                                       ; $4776: $6C
    ld l, c                                       ; $4777: $69

jr_04C_4778:
    ld [hl], h                                    ; $4778: $74
    ld a, c                                       ; $4779: $79
    jr nz, jr_04C_4778                            ; $477A: $20 $FC

    rst $38                                       ; $477C: $FF
    ld [hl], a                                    ; $477D: $77
    ld h, c                                       ; $477E: $61
    ld [hl], e                                    ; $477F: $73
    jr nz, jr_04C_47EE                            ; $4780: $20 $6C

    ld h, l                                       ; $4782: $65
    ld h, c                                       ; $4783: $61
    ld [hl], d                                    ; $4784: $72
    ld l, [hl]                                    ; $4785: $6E
    ld h, l                                       ; $4786: $65
    ld h, h                                       ; $4787: $64
    ld l, $FE                                     ; $4788: $2E $FE
    db $FD                                        ; $478A: $FD
    sbc d                                         ; $478B: $9A
    ld b, d                                       ; $478C: $42
    sbc a                                         ; $478D: $9F
    db $FC                                        ; $478E: $FC
    rst $38                                       ; $478F: $FF
    ld l, c                                       ; $4790: $69
    ld [hl], e                                    ; $4791: $73
    jr nz, @+$70                                  ; $4792: $20 $6E

    ld l, a                                       ; $4794: $6F
    ld [hl], a                                    ; $4795: $77

jr_04C_4796:
    jr nz, @+$6E                                  ; $4796: $20 $6C

    ld h, l                                       ; $4798: $65
    halt                                          ; $4799: $76

jr_04C_479A:
    ld h, l                                       ; $479A: $65
    ld l, h                                       ; $479B: $6C
    jr nz, jr_04C_479A                            ; $479C: $20 $FC

    cp $45                                        ; $479E: $FE $45
    ld l, [hl]                                    ; $47A0: $6E
    ld h, l                                       ; $47A1: $65
    ld [hl], d                                    ; $47A2: $72
    ld h, a                                       ; $47A3: $67
    ld a, c                                       ; $47A4: $79
    jr nz, jr_04C_4810                            ; $47A5: $20 $69

    ld [hl], e                                    ; $47A7: $73
    jr nz, @-$02                                  ; $47A8: $20 $FC

    ld l, $FE                                     ; $47AA: $2E $FE
    db $FD                                        ; $47AC: $FD
    sbc d                                         ; $47AD: $9A
    ld b, d                                       ; $47AE: $42
    sbc a                                         ; $47AF: $9F
    db $FC                                        ; $47B0: $FC
    rst $38                                       ; $47B1: $FF
    ld l, l                                       ; $47B2: $6D
    ld l, c                                       ; $47B3: $69
    ld [hl], d                                    ; $47B4: $72
    ld [hl], d                                    ; $47B5: $72

jr_04C_47B6:
    ld l, a                                       ; $47B6: $6F
    ld [hl], d                                    ; $47B7: $72
    jr nz, jr_04C_4823                            ; $47B8: $20 $69

    ld [hl], e                                    ; $47BA: $73
    jr nz, jr_04C_4824                            ; $47BB: $20 $67

    ld l, a                                       ; $47BD: $6F
    ld l, [hl]                                    ; $47BE: $6E
    ld h, l                                       ; $47BF: $65
    ld hl, $FDFE                                  ; $47C0: $21 $FE $FD
    sbc d                                         ; $47C3: $9A
    ld b, d                                       ; $47C4: $42
    sbc a                                         ; $47C5: $9F
    db $FC                                        ; $47C6: $FC
    rst $38                                       ; $47C7: $FF

jr_04C_47C8:
    ld [hl], d                                    ; $47C8: $72
    ld h, l                                       ; $47C9: $65
    ld h, [hl]                                    ; $47CA: $66
    ld l, h                                       ; $47CB: $6C
    ld h, l                                       ; $47CC: $65
    ld h, e                                       ; $47CD: $63
    ld [hl], h                                    ; $47CE: $74
    ld [hl], e                                    ; $47CF: $73
    jr nz, jr_04C_4846                            ; $47D0: $20 $74

    ld l, b                                       ; $47D2: $68
    ld h, l                                       ; $47D3: $65
    cp $6D                                        ; $47D4: $FE $6D
    ld h, c                                       ; $47D6: $61
    ld l, [hl]                                    ; $47D7: $6E
    ld h, l                                       ; $47D8: $65

jr_04C_47D9:
    ld [hl], l                                    ; $47D9: $75
    halt                                          ; $47DA: $76
    ld h, l                                       ; $47DB: $65
    ld [hl], d                                    ; $47DC: $72
    ld hl, $FDFE                                  ; $47DD: $21 $FE $FD
    sbc d                                         ; $47E0: $9A
    ld b, d                                       ; $47E1: $42
    sbc a                                         ; $47E2: $9F
    db $FC                                        ; $47E3: $FC
    rst $38                                       ; $47E4: $FF
    ld l, l                                       ; $47E5: $6D
    ld l, c                                       ; $47E6: $69
    ld [hl], d                                    ; $47E7: $72
    ld [hl], d                                    ; $47E8: $72
    ld l, a                                       ; $47E9: $6F
    ld [hl], d                                    ; $47EA: $72
    jr nz, jr_04C_4856                            ; $47EB: $20 $69

    ld [hl], e                                    ; $47ED: $73

jr_04C_47EE:
    cp $77                                        ; $47EE: $FE $77
    ld h, l                                       ; $47F0: $65
    ld h, c                                       ; $47F1: $61
    ld l, e                                       ; $47F2: $6B
    ld h, l                                       ; $47F3: $65
    ld l, [hl]                                    ; $47F4: $6E
    ld l, c                                       ; $47F5: $69
    ld l, [hl]                                    ; $47F6: $6E
    ld h, a                                       ; $47F7: $67
    ld hl, $FDFE                                  ; $47F8: $21 $FE $FD
    sbc d                                         ; $47FB: $9A
    ld b, d                                       ; $47FC: $42

    db $9F, $FC, $FF, $6D, $69, $73, $73, $65, $64, $21, $FE, $FD, $9A, $42

    sbc a                                         ; $480B: $9F
    db $FC                                        ; $480C: $FC
    rst $38                                       ; $480D: $FF
    ld l, b                                       ; $480E: $68
    ld l, c                                       ; $480F: $69

jr_04C_4810:
    ld [hl], h                                    ; $4810: $74
    ld [hl], e                                    ; $4811: $73
    jr nz, jr_04C_4810                            ; $4812: $20 $FC

    cp $66                                        ; $4814: $FE $66

jr_04C_4816:
    ld l, a                                       ; $4816: $6F
    ld [hl], d                                    ; $4817: $72
    jr nz, jr_04C_4816                            ; $4818: $20 $FC

    jr nz, @+$66                                  ; $481A: $20 $64

    ld h, c                                       ; $481C: $61
    ld l, l                                       ; $481D: $6D
    ld h, c                                       ; $481E: $61
    ld h, a                                       ; $481F: $67
    ld h, l                                       ; $4820: $65
    ld l, $FE                                     ; $4821: $2E $FE

jr_04C_4823:
    db $FD                                        ; $4823: $FD

jr_04C_4824:
    sbc d                                         ; $4824: $9A
    ld b, d                                       ; $4825: $42
SCRIPT_Battle_Text_PlagueCured::
    sbc a                                         ; $4826: $9F
    db $FC                                        ; $4827: $FC
    rst $38                                       ; $4828: $FF
    ld l, b                                       ; $4829: $68
    ld h, c                                       ; $482A: $61
    ld h, h                                       ; $482B: $64
    jr nz, jr_04C_4897                            ; $482C: $20 $69

    ld [hl], h                                    ; $482E: $74
    ld [hl], e                                    ; $482F: $73
    jr nz, @+$72                                  ; $4830: $20 $70

    ld l, h                                       ; $4832: $6C
    ld h, c                                       ; $4833: $61
    ld h, a                                       ; $4834: $67
    ld [hl], l                                    ; $4835: $75
    ld h, l                                       ; $4836: $65
    cp $63                                        ; $4837: $FE $63
    ld [hl], l                                    ; $4839: $75
    ld [hl], d                                    ; $483A: $72
    ld h, l                                       ; $483B: $65
    ld h, h                                       ; $483C: $64
    ld l, $FE                                     ; $483D: $2E $FE
    db $FD                                        ; $483F: $FD
    sbc d                                         ; $4840: $9A
    ld b, d                                       ; $4841: $42
    sbc a                                         ; $4842: $9F
    db $FC                                        ; $4843: $FC
    rst $38                                       ; $4844: $FF
    ld [hl], a                                    ; $4845: $77

jr_04C_4846:
    ld h, c                                       ; $4846: $61
    ld [hl], e                                    ; $4847: $73
    jr nz, jr_04C_48B2                            ; $4848: $20 $68

    ld [hl], l                                    ; $484A: $75
    ld [hl], d                                    ; $484B: $72
    ld [hl], h                                    ; $484C: $74
    jr nz, jr_04C_48B1                            ; $484D: $20 $62

    ld a, c                                       ; $484F: $79

Jump_04C_4850:
    jr nz, @+$76                                  ; $4850: $20 $74

    ld l, b                                       ; $4852: $68
    ld h, l                                       ; $4853: $65
    cp $70                                        ; $4854: $FE $70

jr_04C_4856:
    ld l, h                                       ; $4856: $6C
    ld h, c                                       ; $4857: $61
    ld h, a                                       ; $4858: $67
    ld [hl], l                                    ; $4859: $75
    ld h, l                                       ; $485A: $65
    ld l, $FE                                     ; $485B: $2E $FE
    db $FD                                        ; $485D: $FD
    sbc d                                         ; $485E: $9A
    ld b, d                                       ; $485F: $42
    sbc a                                         ; $4860: $9F
    db $FC                                        ; $4861: $FC
    rst $38                                       ; $4862: $FF
    ld [hl], a                                    ; $4863: $77
    ld h, c                                       ; $4864: $61
    ld [hl], e                                    ; $4865: $73
    jr nz, jr_04C_48CD                            ; $4866: $20 $65

    ld l, h                                       ; $4868: $6C
    ld l, c                                       ; $4869: $69
    ld l, l                                       ; $486A: $6D
    ld l, c                                       ; $486B: $69
    ld l, [hl]                                    ; $486C: $6E
    ld h, c                                       ; $486D: $61
    ld [hl], h                                    ; $486E: $74
    ld h, l                                       ; $486F: $65
    ld h, h                                       ; $4870: $64
    cp $62                                        ; $4871: $FE $62
    ld a, c                                       ; $4873: $79
    jr nz, jr_04C_48EA                            ; $4874: $20 $74

    ld l, b                                       ; $4876: $68
    ld h, l                                       ; $4877: $65
    jr nz, jr_04C_48EA                            ; $4878: $20 $70

    ld l, h                                       ; $487A: $6C
    ld h, c                                       ; $487B: $61
    ld h, a                                       ; $487C: $67
    ld [hl], l                                    ; $487D: $75
    ld h, l                                       ; $487E: $65
    ld l, $FE                                     ; $487F: $2E $FE
    db $FD                                        ; $4881: $FD
    sbc d                                         ; $4882: $9A
    ld b, d                                       ; $4883: $42
    sbc e                                         ; $4884: $9B
    ld a, b                                       ; $4885: $78
    ld [hl], b                                    ; $4886: $70
    sbc a                                         ; $4887: $9F
    ld d, h                                       ; $4888: $54
    ld l, a                                       ; $4889: $6F
    ld l, [hl]                                    ; $488A: $6E
    ld a, c                                       ; $488B: $79
    jr nz, jr_04C_48F5                            ; $488C: $20 $67

    ld h, c                                       ; $488E: $61

jr_04C_488F:
    ld l, c                                       ; $488F: $69
    ld l, [hl]                                    ; $4890: $6E
    ld [hl], e                                    ; $4891: $73
    jr nz, jr_04C_488F                            ; $4892: $20 $FB

    ei                                            ; $4894: $FB
    db $FC                                        ; $4895: $FC
    rst $38                                       ; $4896: $FF

jr_04C_4897:
    ld h, l                                       ; $4897: $65
    ld l, [hl]                                    ; $4898: $6E
    ld h, l                                       ; $4899: $65
    ld [hl], d                                    ; $489A: $72
    ld h, a                                       ; $489B: $67
    ld a, c                                       ; $489C: $79
    jr nz, @+$68                                  ; $489D: $20 $66

    ld l, a                                       ; $489F: $6F
    ld [hl], d                                    ; $48A0: $72
    jr nz, jr_04C_4917                            ; $48A1: $20 $74

    ld l, b                                       ; $48A3: $68
    ld h, l                                       ; $48A4: $65
    cp $64                                        ; $48A5: $FE $64
    ld h, l                                       ; $48A7: $65
    ld h, [hl]                                    ; $48A8: $66
    ld h, l                                       ; $48A9: $65
    ld h, c                                       ; $48AA: $61
    ld [hl], h                                    ; $48AB: $74
    ld l, $FE                                     ; $48AC: $2E $FE
    db $FD                                        ; $48AE: $FD
    sbc d                                         ; $48AF: $9A
    ld b, d                                       ; $48B0: $42

jr_04C_48B1:
    sbc a                                         ; $48B1: $9F

jr_04C_48B2:
    ei                                            ; $48B2: $FB
    db $FC                                        ; $48B3: $FC
    rst $38                                       ; $48B4: $FF
    ld b, h                                       ; $48B5: $44
    ld h, l                                       ; $48B6: $65
    ld h, [hl]                                    ; $48B7: $66
    ld h, l                                       ; $48B8: $65
    ld l, [hl]                                    ; $48B9: $6E
    ld [hl], e                                    ; $48BA: $73
    ld h, l                                       ; $48BB: $65
    jr nz, @+$6B                                  ; $48BC: $20 $69

    ld [hl], e                                    ; $48BE: $73
    jr nz, @+$77                                  ; $48BF: $20 $75

    ld [hl], b                                    ; $48C1: $70
    cp $FC                                        ; $48C2: $FE $FC
    ld hl, $FDFE                                  ; $48C4: $21 $FE $FD
    sbc d                                         ; $48C7: $9A
    ld b, d                                       ; $48C8: $42
    sbc a                                         ; $48C9: $9F
    ei                                            ; $48CA: $FB
    db $FC                                        ; $48CB: $FC
    rst $38                                       ; $48CC: $FF

jr_04C_48CD:
    ld c, h                                       ; $48CD: $4C
    ld [hl], l                                    ; $48CE: $75
    ld h, e                                       ; $48CF: $63
    ld l, e                                       ; $48D0: $6B
    jr nz, jr_04C_493C                            ; $48D1: $20 $69

    ld [hl], e                                    ; $48D3: $73
    jr nz, jr_04C_494B                            ; $48D4: $20 $75

    ld [hl], b                                    ; $48D6: $70
    cp $FC                                        ; $48D7: $FE $FC
    ld hl, $FDFE                                  ; $48D9: $21 $FE $FD
    sbc d                                         ; $48DC: $9A
    ld b, d                                       ; $48DD: $42
    sbc a                                         ; $48DE: $9F
    ei                                            ; $48DF: $FB
    db $FC                                        ; $48E0: $FC
    rst $38                                       ; $48E1: $FF
    ld d, d                                       ; $48E2: $52
    ld h, l                                       ; $48E3: $65
    ld [hl], e                                    ; $48E4: $73
    ld l, c                                       ; $48E5: $69
    ld [hl], e                                    ; $48E6: $73
    ld [hl], h                                    ; $48E7: $74
    jr nz, jr_04C_4953                            ; $48E8: $20 $69

jr_04C_48EA:
    ld [hl], e                                    ; $48EA: $73
    jr nz, jr_04C_4962                            ; $48EB: $20 $75

    ld [hl], b                                    ; $48ED: $70
    cp $FC                                        ; $48EE: $FE $FC
    ld hl, $FDFE                                  ; $48F0: $21 $FE $FD
    sbc d                                         ; $48F3: $9A
    ld b, d                                       ; $48F4: $42

jr_04C_48F5:
    sbc a                                         ; $48F5: $9F
    ei                                            ; $48F6: $FB
    db $FC                                        ; $48F7: $FC
    rst $38                                       ; $48F8: $FF
    ld d, e                                       ; $48F9: $53
    ld [hl], b                                    ; $48FA: $70
    ld h, l                                       ; $48FB: $65
    ld h, l                                       ; $48FC: $65
    ld h, h                                       ; $48FD: $64
    jr nz, jr_04C_4969                            ; $48FE: $20 $69

    ld [hl], e                                    ; $4900: $73
    jr nz, jr_04C_4978                            ; $4901: $20 $75

    ld [hl], b                                    ; $4903: $70
    cp $FC                                        ; $4904: $FE $FC
    ld hl, $FDFE                                  ; $4906: $21 $FE $FD
    sbc d                                         ; $4909: $9A
    ld b, d                                       ; $490A: $42
    sbc a                                         ; $490B: $9F
    ei                                            ; $490C: $FB
    db $FC                                        ; $490D: $FC
    rst $38                                       ; $490E: $FF
    ld d, e                                       ; $490F: $53
    ld l, e                                       ; $4910: $6B
    ld l, c                                       ; $4911: $69
    ld l, h                                       ; $4912: $6C
    ld l, h                                       ; $4913: $6C
    jr nz, jr_04C_497F                            ; $4914: $20 $69

    ld [hl], e                                    ; $4916: $73

jr_04C_4917:
    jr nz, jr_04C_498E                            ; $4917: $20 $75

    ld [hl], b                                    ; $4919: $70
    cp $FC                                        ; $491A: $FE $FC
    ld hl, $FDFE                                  ; $491C: $21 $FE $FD
    sbc d                                         ; $491F: $9A
    ld b, d                                       ; $4920: $42

    db $9F, $FB, $FC, $FF, $53, $74, $72, $65, $6E, $67, $74, $68, $20, $69, $73, $20
    db $75, $70, $FE, $FC, $21, $FE, $FD, $9A, $42

    sbc a                                         ; $493A: $9F
    ei                                            ; $493B: $FB

jr_04C_493C:
    db $FC                                        ; $493C: $FC
    rst $38                                       ; $493D: $FF
    ld l, b                                       ; $493E: $68
    ld h, c                                       ; $493F: $61
    ld [hl], e                                    ; $4940: $73
    jr nz, jr_04C_49A4                            ; $4941: $20 $61

    ld l, h                                       ; $4943: $6C
    ld l, h                                       ; $4944: $6C
    jr nz, jr_04C_49B0                            ; $4945: $20 $69

    ld [hl], h                                    ; $4947: $74
    ld [hl], e                                    ; $4948: $73
    cp $73                                        ; $4949: $FE $73

jr_04C_494B:
    ld [hl], h                                    ; $494B: $74
    ld h, c                                       ; $494C: $61
    ld [hl], h                                    ; $494D: $74
    ld [hl], e                                    ; $494E: $73
    jr nz, jr_04C_49C3                            ; $494F: $20 $72

    ld h, c                                       ; $4951: $61
    ld l, c                                       ; $4952: $69

jr_04C_4953:
    ld [hl], e                                    ; $4953: $73
    ld h, l                                       ; $4954: $65
    ld h, h                                       ; $4955: $64
    rst $38                                       ; $4956: $FF
    ld [hl], b                                    ; $4957: $70
    ld h, l                                       ; $4958: $65
    ld [hl], d                                    ; $4959: $72
    ld l, l                                       ; $495A: $6D
    ld h, c                                       ; $495B: $61
    ld l, [hl]                                    ; $495C: $6E
    ld h, l                                       ; $495D: $65
    ld l, [hl]                                    ; $495E: $6E
    ld [hl], h                                    ; $495F: $74
    ld l, h                                       ; $4960: $6C
    ld a, c                                       ; $4961: $79

jr_04C_4962:
    ld hl, $FDFE                                  ; $4962: $21 $FE $FD
    sbc d                                         ; $4965: $9A
    ld b, d                                       ; $4966: $42
    sbc a                                         ; $4967: $9F
    ei                                            ; $4968: $FB

jr_04C_4969:
    db $FC                                        ; $4969: $FC
    rst $38                                       ; $496A: $FF
    ld d, e                                       ; $496B: $53
    ld l, e                                       ; $496C: $6B
    ld l, c                                       ; $496D: $69
    ld l, h                                       ; $496E: $6C
    ld l, h                                       ; $496F: $6C
    jr nz, jr_04C_49DB                            ; $4970: $20 $69

    ld [hl], e                                    ; $4972: $73
    jr nz, jr_04C_49EA                            ; $4973: $20 $75

    ld [hl], b                                    ; $4975: $70
    cp $FC                                        ; $4976: $FE $FC

jr_04C_4978:
    jr nz, jr_04C_49EA                            ; $4978: $20 $70

    ld h, l                                       ; $497A: $65
    ld [hl], d                                    ; $497B: $72
    ld l, l                                       ; $497C: $6D
    ld h, c                                       ; $497D: $61
    ld l, [hl]                                    ; $497E: $6E

jr_04C_497F:
    ld h, l                                       ; $497F: $65
    ld l, [hl]                                    ; $4980: $6E
    ld [hl], h                                    ; $4981: $74
    ld l, h                                       ; $4982: $6C
    ld a, c                                       ; $4983: $79
    ld hl, $FDFE                                  ; $4984: $21 $FE $FD
    sbc d                                         ; $4987: $9A
    ld b, d                                       ; $4988: $42
    sbc a                                         ; $4989: $9F
    ei                                            ; $498A: $FB
    db $FC                                        ; $498B: $FC
    rst $38                                       ; $498C: $FF
    ld b, h                                       ; $498D: $44

jr_04C_498E:
    ld h, l                                       ; $498E: $65
    ld h, [hl]                                    ; $498F: $66
    ld h, l                                       ; $4990: $65
    ld l, [hl]                                    ; $4991: $6E
    ld [hl], e                                    ; $4992: $73
    ld h, l                                       ; $4993: $65
    jr nz, @+$6B                                  ; $4994: $20 $69

    ld [hl], e                                    ; $4996: $73
    jr nz, jr_04C_4A0E                            ; $4997: $20 $75

    ld [hl], b                                    ; $4999: $70
    cp $FC                                        ; $499A: $FE $FC
    jr nz, jr_04C_4A0E                            ; $499C: $20 $70

    ld h, l                                       ; $499E: $65
    ld [hl], d                                    ; $499F: $72
    ld l, l                                       ; $49A0: $6D
    ld h, c                                       ; $49A1: $61
    ld l, [hl]                                    ; $49A2: $6E
    ld h, l                                       ; $49A3: $65

jr_04C_49A4:
    ld l, [hl]                                    ; $49A4: $6E
    ld [hl], h                                    ; $49A5: $74
    ld l, h                                       ; $49A6: $6C
    ld a, c                                       ; $49A7: $79
    ld hl, $FDFE                                  ; $49A8: $21 $FE $FD
    sbc d                                         ; $49AB: $9A
    ld b, d                                       ; $49AC: $42
    sbc a                                         ; $49AD: $9F
    ei                                            ; $49AE: $FB
    db $FC                                        ; $49AF: $FC

jr_04C_49B0:
    rst $38                                       ; $49B0: $FF
    ld d, d                                       ; $49B1: $52
    ld h, l                                       ; $49B2: $65
    ld [hl], e                                    ; $49B3: $73
    ld l, c                                       ; $49B4: $69
    ld [hl], e                                    ; $49B5: $73
    ld [hl], h                                    ; $49B6: $74
    jr nz, jr_04C_4A22                            ; $49B7: $20 $69

    ld [hl], e                                    ; $49B9: $73
    jr nz, jr_04C_4A31                            ; $49BA: $20 $75

    ld [hl], b                                    ; $49BC: $70
    cp $FC                                        ; $49BD: $FE $FC
    jr nz, jr_04C_4A31                            ; $49BF: $20 $70

    ld h, l                                       ; $49C1: $65
    ld [hl], d                                    ; $49C2: $72

jr_04C_49C3:
    ld l, l                                       ; $49C3: $6D
    ld h, c                                       ; $49C4: $61
    ld l, [hl]                                    ; $49C5: $6E
    ld h, l                                       ; $49C6: $65
    ld l, [hl]                                    ; $49C7: $6E
    ld [hl], h                                    ; $49C8: $74
    ld l, h                                       ; $49C9: $6C
    ld a, c                                       ; $49CA: $79
    ld hl, $FDFE                                  ; $49CB: $21 $FE $FD
    sbc d                                         ; $49CE: $9A
    ld b, d                                       ; $49CF: $42
    sbc a                                         ; $49D0: $9F
    ei                                            ; $49D1: $FB
    db $FC                                        ; $49D2: $FC
    rst $38                                       ; $49D3: $FF
    ld d, e                                       ; $49D4: $53
    ld [hl], b                                    ; $49D5: $70
    ld h, l                                       ; $49D6: $65
    ld h, l                                       ; $49D7: $65
    ld h, h                                       ; $49D8: $64
    jr nz, jr_04C_4A44                            ; $49D9: $20 $69

jr_04C_49DB:
    ld [hl], e                                    ; $49DB: $73
    jr nz, jr_04C_4A53                            ; $49DC: $20 $75

    ld [hl], b                                    ; $49DE: $70
    cp $FC                                        ; $49DF: $FE $FC
    jr nz, jr_04C_4A53                            ; $49E1: $20 $70

    ld h, l                                       ; $49E3: $65
    ld [hl], d                                    ; $49E4: $72
    ld l, l                                       ; $49E5: $6D
    ld h, c                                       ; $49E6: $61
    ld l, [hl]                                    ; $49E7: $6E
    ld h, l                                       ; $49E8: $65
    ld l, [hl]                                    ; $49E9: $6E

jr_04C_49EA:
    ld [hl], h                                    ; $49EA: $74
    ld l, h                                       ; $49EB: $6C
    ld a, c                                       ; $49EC: $79
    ld hl, $FDFE                                  ; $49ED: $21 $FE $FD
    sbc d                                         ; $49F0: $9A
    ld b, d                                       ; $49F1: $42
    sbc a                                         ; $49F2: $9F
    ei                                            ; $49F3: $FB
    db $FC                                        ; $49F4: $FC
    rst $38                                       ; $49F5: $FF
    ld d, e                                       ; $49F6: $53
    ld [hl], h                                    ; $49F7: $74
    ld [hl], d                                    ; $49F8: $72
    ld h, l                                       ; $49F9: $65
    ld l, [hl]                                    ; $49FA: $6E
    ld h, a                                       ; $49FB: $67
    ld [hl], h                                    ; $49FC: $74
    ld l, b                                       ; $49FD: $68
    jr nz, jr_04C_4A69                            ; $49FE: $20 $69

    ld [hl], e                                    ; $4A00: $73
    jr nz, @+$77                                  ; $4A01: $20 $75

    ld [hl], b                                    ; $4A03: $70
    cp $FC                                        ; $4A04: $FE $FC
    jr nz, @+$72                                  ; $4A06: $20 $70

    ld h, l                                       ; $4A08: $65
    ld [hl], d                                    ; $4A09: $72
    ld l, l                                       ; $4A0A: $6D
    ld h, c                                       ; $4A0B: $61
    ld l, [hl]                                    ; $4A0C: $6E
    ld h, l                                       ; $4A0D: $65

jr_04C_4A0E:
    ld l, [hl]                                    ; $4A0E: $6E
    ld [hl], h                                    ; $4A0F: $74
    ld l, h                                       ; $4A10: $6C
    ld a, c                                       ; $4A11: $79
    ld hl, $FDFE                                  ; $4A12: $21 $FE $FD
    sbc d                                         ; $4A15: $9A
    ld b, d                                       ; $4A16: $42
    sbc a                                         ; $4A17: $9F
    ld d, h                                       ; $4A18: $54
    ld l, a                                       ; $4A19: $6F
    ld l, [hl]                                    ; $4A1A: $6E
    ld a, c                                       ; $4A1B: $79
    jr nz, jr_04C_4A83                            ; $4A1C: $20 $65

    ld [hl], e                                    ; $4A1E: $73
    ld h, e                                       ; $4A1F: $63
    ld h, c                                       ; $4A20: $61
    ld [hl], b                                    ; $4A21: $70

jr_04C_4A22:
    ld h, l                                       ; $4A22: $65
    ld [hl], e                                    ; $4A23: $73
    ld l, $FE                                     ; $4A24: $2E $FE
    db $FD                                        ; $4A26: $FD
    sbc d                                         ; $4A27: $9A
    ld b, d                                       ; $4A28: $42
    sbc a                                         ; $4A29: $9F
    ld d, h                                       ; $4A2A: $54
    ld l, a                                       ; $4A2B: $6F
    ld l, [hl]                                    ; $4A2C: $6E
    ld a, c                                       ; $4A2D: $79
    jr nz, jr_04C_4A93                            ; $4A2E: $20 $63

    ld h, c                                       ; $4A30: $61

jr_04C_4A31:
    ld l, [hl]                                    ; $4A31: $6E
    daa                                           ; $4A32: $27
    ld [hl], h                                    ; $4A33: $74
    rst $38                                       ; $4A34: $FF
    ld h, l                                       ; $4A35: $65
    ld [hl], e                                    ; $4A36: $73
    ld h, e                                       ; $4A37: $63
    ld h, c                                       ; $4A38: $61
    ld [hl], b                                    ; $4A39: $70
    ld h, l                                       ; $4A3A: $65
    ld hl, $FDFE                                  ; $4A3B: $21 $FE $FD
    sbc d                                         ; $4A3E: $9A
    ld b, d                                       ; $4A3F: $42
    sbc a                                         ; $4A40: $9F
    db $FC                                        ; $4A41: $FC
    rst $38                                       ; $4A42: $FF
    ld h, e                                       ; $4A43: $63

jr_04C_4A44:
    ld h, c                                       ; $4A44: $61
    ld [hl], e                                    ; $4A45: $73
    ld [hl], h                                    ; $4A46: $74
    ld [hl], e                                    ; $4A47: $73
    cp $FC                                        ; $4A48: $FE $FC
    cp $FD                                        ; $4A4A: $FE $FD
    sbc d                                         ; $4A4C: $9A
    ld b, d                                       ; $4A4D: $42
    sbc a                                         ; $4A4E: $9F
    ei                                            ; $4A4F: $FB
    db $FC                                        ; $4A50: $FC
    rst $38                                       ; $4A51: $FF
    ld l, b                                       ; $4A52: $68

jr_04C_4A53:
    ld h, c                                       ; $4A53: $61
    ld [hl], e                                    ; $4A54: $73
    jr nz, jr_04C_4AB8                            ; $4A55: $20 $61

    ld l, h                                       ; $4A57: $6C
    ld l, h                                       ; $4A58: $6C
    jr nz, jr_04C_4AC9                            ; $4A59: $20 $6E

    ld l, a                                       ; $4A5B: $6F
    ld l, [hl]                                    ; $4A5C: $6E
    cp $70                                        ; $4A5D: $FE $70
    ld h, l                                       ; $4A5F: $65
    ld [hl], d                                    ; $4A60: $72
    ld l, l                                       ; $4A61: $6D
    ld h, c                                       ; $4A62: $61
    ld l, [hl]                                    ; $4A63: $6E
    ld h, l                                       ; $4A64: $65
    ld l, [hl]                                    ; $4A65: $6E
    ld [hl], h                                    ; $4A66: $74
    jr nz, @+$01                                  ; $4A67: $20 $FF

jr_04C_4A69:
    ld [hl], e                                    ; $4A69: $73
    ld [hl], h                                    ; $4A6A: $74
    ld h, c                                       ; $4A6B: $61
    ld [hl], h                                    ; $4A6C: $74
    ld [hl], l                                    ; $4A6D: $75
    ld [hl], e                                    ; $4A6E: $73
    jr nz, @+$74                                  ; $4A6F: $20 $72

    ld h, l                                       ; $4A71: $65
    ld l, l                                       ; $4A72: $6D
    ld l, a                                       ; $4A73: $6F
    halt                                          ; $4A74: $76
    ld h, l                                       ; $4A75: $65
    ld h, h                                       ; $4A76: $64
    ld l, $FE                                     ; $4A77: $2E $FE
    db $FD                                        ; $4A79: $FD
    sbc d                                         ; $4A7A: $9A
    ld b, d                                       ; $4A7B: $42
    sbc a                                         ; $4A7C: $9F
    ei                                            ; $4A7D: $FB
    db $FC                                        ; $4A7E: $FC
    rst $38                                       ; $4A7F: $FF
    ld l, b                                       ; $4A80: $68

jr_04C_4A81:
    ld h, c                                       ; $4A81: $61
    ld [hl], e                                    ; $4A82: $73

jr_04C_4A83:
    jr nz, jr_04C_4A81                            ; $4A83: $20 $FC

    cp $6E                                        ; $4A85: $FE $6E
    ld l, a                                       ; $4A87: $6F
    jr nz, jr_04C_4AF6                            ; $4A88: $20 $6C

    ld l, a                                       ; $4A8A: $6F
    ld l, [hl]                                    ; $4A8B: $6E
    ld h, a                                       ; $4A8C: $67
    ld h, l                                       ; $4A8D: $65
    ld [hl], d                                    ; $4A8E: $72
    ld l, $FE                                     ; $4A8F: $2E $FE
    db $FD                                        ; $4A91: $FD
    sbc d                                         ; $4A92: $9A

jr_04C_4A93:
    ld b, d                                       ; $4A93: $42
    sbc a                                         ; $4A94: $9F
    ei                                            ; $4A95: $FB
    db $FC                                        ; $4A96: $FC
    rst $38                                       ; $4A97: $FF
    ld l, b                                       ; $4A98: $68
    ld h, c                                       ; $4A99: $61
    ld [hl], e                                    ; $4A9A: $73
    jr nz, @+$6B                                  ; $4A9B: $20 $69

    ld [hl], h                                    ; $4A9D: $74
    ld [hl], e                                    ; $4A9E: $73
    jr nz, @+$75                                  ; $4A9F: $20 $73

    ld [hl], h                                    ; $4AA1: $74
    ld h, c                                       ; $4AA2: $61
    ld [hl], h                                    ; $4AA3: $74
    ld [hl], l                                    ; $4AA4: $75
    ld [hl], e                                    ; $4AA5: $73
    cp $61                                        ; $4AA6: $FE $61
    ld h, [hl]                                    ; $4AA8: $66
    ld h, [hl]                                    ; $4AA9: $66
    ld h, l                                       ; $4AAA: $65
    ld h, e                                       ; $4AAB: $63
    ld [hl], h                                    ; $4AAC: $74
    ld h, l                                       ; $4AAD: $65
    ld h, h                                       ; $4AAE: $64
    rst $38                                       ; $4AAF: $FF
    ld l, l                                       ; $4AB0: $6D
    ld a, c                                       ; $4AB1: $79
    ld [hl], e                                    ; $4AB2: $73
    ld [hl], h                                    ; $4AB3: $74
    ld h, l                                       ; $4AB4: $65
    ld [hl], d                                    ; $4AB5: $72
    ld l, c                                       ; $4AB6: $69
    ld l, a                                       ; $4AB7: $6F

jr_04C_4AB8:
    ld [hl], l                                    ; $4AB8: $75
    ld [hl], e                                    ; $4AB9: $73
    ld l, h                                       ; $4ABA: $6C
    ld a, c                                       ; $4ABB: $79
    ld l, $FE                                     ; $4ABC: $2E $FE
    db $FD                                        ; $4ABE: $FD
    sbc d                                         ; $4ABF: $9A
    ld b, d                                       ; $4AC0: $42
    sbc a                                         ; $4AC1: $9F
    db $FC                                        ; $4AC2: $FC
    rst $38                                       ; $4AC3: $FF
    ld l, c                                       ; $4AC4: $69
    ld [hl], e                                    ; $4AC5: $73
    jr nz, jr_04C_4B3B                            ; $4AC6: $20 $73

    ld [hl], h                                    ; $4AC8: $74

jr_04C_4AC9:
    ld l, a                                       ; $4AC9: $6F
    ld l, [hl]                                    ; $4ACA: $6E
    ld h, l                                       ; $4ACB: $65
    jr nz, @+$63                                  ; $4ACC: $20 $61

    ld l, [hl]                                    ; $4ACE: $6E
    ld h, h                                       ; $4ACF: $64

jr_04C_4AD0:
    jr nz, jr_04C_4AD0                            ; $4AD0: $20 $FE

    ld h, e                                       ; $4AD2: $63
    ld h, c                                       ; $4AD3: $61
    ld l, [hl]                                    ; $4AD4: $6E
    daa                                           ; $4AD5: $27
    ld [hl], h                                    ; $4AD6: $74
    jr nz, @+$63                                  ; $4AD7: $20 $61

    ld h, e                                       ; $4AD9: $63
    ld [hl], h                                    ; $4ADA: $74
    ld hl, $FDFE                                  ; $4ADB: $21 $FE $FD
    sbc d                                         ; $4ADE: $9A
    ld b, d                                       ; $4ADF: $42

    db $9F, $FB, $FC, $FF, $77, $61, $73, $20, $73, $75, $6D, $6D, $6F, $6E, $65, $64
    db $2E, $FE, $FD, $9A, $42

    sbc a                                         ; $4AF5: $9F

jr_04C_4AF6:
    ei                                            ; $4AF6: $FB
    db $FC                                        ; $4AF7: $FC
    rst $38                                       ; $4AF8: $FF
    ld [hl], a                                    ; $4AF9: $77
    ld h, c                                       ; $4AFA: $61
    ld [hl], e                                    ; $4AFB: $73
    jr nz, jr_04C_4B71                            ; $4AFC: $20 $73

    ld [hl], l                                    ; $4AFE: $75
    ld l, l                                       ; $4AFF: $6D
    ld l, l                                       ; $4B00: $6D
    ld l, a                                       ; $4B01: $6F
    ld l, [hl]                                    ; $4B02: $6E
    ld h, l                                       ; $4B03: $65
    ld h, h                                       ; $4B04: $64
    ld l, $FE                                     ; $4B05: $2E $FE
    db $FD                                        ; $4B07: $FD
    sbc d                                         ; $4B08: $9A
    ld b, d                                       ; $4B09: $42

    db $9F, $FB, $FC, $FF, $61, $70, $70, $65, $61, $72, $73, $2E, $FE, $FD, $9A, $42

    sbc a                                         ; $4B1A: $9F
    db $FC                                        ; $4B1B: $FC
    rst $38                                       ; $4B1C: $FF
    ld [hl], l                                    ; $4B1D: $75
    ld [hl], e                                    ; $4B1E: $73

jr_04C_4B1F:
    ld h, l                                       ; $4B1F: $65
    ld [hl], e                                    ; $4B20: $73
    jr nz, jr_04C_4B1F                            ; $4B21: $20 $FC

    cp $6F                                        ; $4B23: $FE $6F
    ld l, [hl]                                    ; $4B25: $6E
    jr nz, jr_04C_4B89                            ; $4B26: $20 $61

    jr nz, jr_04C_4B91                            ; $4B28: $20 $67

    ld [hl], d                                    ; $4B2A: $72
    ld l, a                                       ; $4B2B: $6F
    ld [hl], l                                    ; $4B2C: $75
    ld [hl], b                                    ; $4B2D: $70
    cp $FD                                        ; $4B2E: $FE $FD
    sbc d                                         ; $4B30: $9A
    ld b, d                                       ; $4B31: $42
    sbc a                                         ; $4B32: $9F
    db $FC                                        ; $4B33: $FC
    rst $38                                       ; $4B34: $FF
    ld [hl], l                                    ; $4B35: $75
    ld [hl], e                                    ; $4B36: $73

jr_04C_4B37:
    ld h, l                                       ; $4B37: $65
    ld [hl], e                                    ; $4B38: $73
    jr nz, jr_04C_4B37                            ; $4B39: $20 $FC

jr_04C_4B3B:
    cp $6F                                        ; $4B3B: $FE $6F
    ld l, [hl]                                    ; $4B3D: $6E
    jr nz, @-$02                                  ; $4B3E: $20 $FC

    cp $FD                                        ; $4B40: $FE $FD
    sbc d                                         ; $4B42: $9A
    ld b, d                                       ; $4B43: $42
    sbc a                                         ; $4B44: $9F
    db $FC                                        ; $4B45: $FC
    rst $38                                       ; $4B46: $FF
    ld [hl], l                                    ; $4B47: $75
    ld [hl], e                                    ; $4B48: $73

jr_04C_4B49:
    ld h, l                                       ; $4B49: $65
    ld [hl], e                                    ; $4B4A: $73
    jr nz, jr_04C_4B49                            ; $4B4B: $20 $FC

    cp $6F                                        ; $4B4D: $FE $6F
    ld l, [hl]                                    ; $4B4F: $6E
    jr nz, jr_04C_4BBB                            ; $4B50: $20 $69

    ld [hl], h                                    ; $4B52: $74
    ld [hl], e                                    ; $4B53: $73
    ld h, l                                       ; $4B54: $65
    ld l, h                                       ; $4B55: $6C
    ld h, [hl]                                    ; $4B56: $66
    cp $FD                                        ; $4B57: $FE $FD
    sbc d                                         ; $4B59: $9A
    ld b, d                                       ; $4B5A: $42
    sbc a                                         ; $4B5B: $9F
    ld d, h                                       ; $4B5C: $54
    ld l, a                                       ; $4B5D: $6F
    ld l, [hl]                                    ; $4B5E: $6E
    ld a, c                                       ; $4B5F: $79
    jr nz, @+$79                                  ; $4B60: $20 $77

    ld l, c                                       ; $4B62: $69
    ld l, [hl]                                    ; $4B63: $6E
    ld [hl], e                                    ; $4B64: $73
    ld hl, $FDFE                                  ; $4B65: $21 $FE $FD
    sbc d                                         ; $4B68: $9A
    ld b, d                                       ; $4B69: $42
    jr c, jr_04C_4B79                             ; $4B6A: $38 $0D

    ld h, b                                       ; $4B6C: $60
    add hl, de                                    ; $4B6D: $19
    ld b, l                                       ; $4B6E: $45
    ld c, h                                       ; $4B6F: $4C
    ld a, c                                       ; $4B70: $79

jr_04C_4B71:
    ld c, e                                       ; $4B71: $4B
    ld b, d                                       ; $4B72: $42
    ld b, d                                       ; $4B73: $42
    ld b, d                                       ; $4B74: $42
    ld b, d                                       ; $4B75: $42
    ld b, d                                       ; $4B76: $42
    ld b, d                                       ; $4B77: $42
    ld b, d                                       ; $4B78: $42

jr_04C_4B79:
    ld d, b                                       ; $4B79: $50
    ld d, h                                       ; $4B7A: $54
    jp Jump_04C_4C32                              ; $4B7B: $C3 $32 $4C


    nop                                           ; $4B7E: $00
    ld b, b                                       ; $4B7F: $40
    jp nc, Jump_04C_507D                          ; $4B80: $D2 $7D $50

    ld e, $C3                                     ; $4B83: $1E $C3
    ld h, h                                       ; $4B85: $64
    ld c, h                                       ; $4B86: $4C
    nop                                           ; $4B87: $00
    ld b, b                                       ; $4B88: $40

jr_04C_4B89:
    pop hl                                        ; $4B89: $E1
    ld a, l                                       ; $4B8A: $7D
    ld d, b                                       ; $4B8B: $50
    add hl, sp                                    ; $4B8C: $39
    jp $4C4C                                      ; $4B8D: $C3 $4C $4C


    nop                                           ; $4B90: $00

jr_04C_4B91:
    ld b, b                                       ; $4B91: $40
    ldh a, [$7D]                                  ; $4B92: $F0 $7D
    ld l, e                                       ; $4B94: $6B
    ld c, $41                                     ; $4B95: $0E $41
    ret nc                                        ; $4B97: $D0

    ld c, a                                       ; $4B98: $4F
    nop                                           ; $4B99: $00
    add b                                         ; $4B9A: $80
    nop                                           ; $4B9B: $00
    ld l, a                                       ; $4B9C: $6F
    rrca                                          ; $4B9D: $0F
    rst $38                                       ; $4B9E: $FF
    ld a, a                                       ; $4B9F: $7F
    ld h, [hl]                                    ; $4BA0: $66
    ret nz                                        ; $4BA1: $C0

    ld b, e                                       ; $4BA2: $43
    ld b, b                                       ; $4BA3: $40
    ld a, c                                       ; $4BA4: $79
    rrca                                          ; $4BA5: $0F
    sub h                                         ; $4BA6: $94
    halt                                          ; $4BA7: $76
    jr nz, @+$11                                  ; $4BA8: $20 $0F

    dec de                                        ; $4BAA: $1B
    dec e                                         ; $4BAB: $1D
    ld b, b                                       ; $4BAC: $40
    inc c                                         ; $4BAD: $0C
    ld [hl], b                                    ; $4BAE: $70
    inc c                                         ; $4BAF: $0C
    nop                                           ; $4BB0: $00
    add hl, sp                                    ; $4BB1: $39
    ld bc, $6B3C                                  ; $4BB2: $01 $3C $6B
    dec de                                        ; $4BB5: $1B
    ld b, $0B                                     ; $4BB6: $06 $0B
    ld de, $0F0B                                  ; $4BB8: $11 $0B $0F

jr_04C_4BBB:
    dec bc                                        ; $4BBB: $0B
    db $10                                        ; $4BBC: $10
    dec de                                        ; $4BBD: $1B
    ld b, $3A                                     ; $4BBE: $06 $3A
    ld [hl], b                                    ; $4BC0: $70
    inc c                                         ; $4BC1: $0C
    ld bc, $0C40                                  ; $4BC2: $01 $40 $0C
    inc c                                         ; $4BC5: $0C
    ld de, $0F0C                                  ; $4BC6: $11 $0C $0F
    inc c                                         ; $4BC9: $0C
    db $10                                        ; $4BCA: $10
    ld b, d                                       ; $4BCB: $42
    ld d, b                                       ; $4BCC: $50
    ld e, $C3                                     ; $4BCD: $1E $C3
    nop                                           ; $4BCF: $00
    inc a                                         ; $4BD0: $3C
    nop                                           ; $4BD1: $00
    ld b, b                                       ; $4BD2: $40
    inc l                                         ; $4BD3: $2C
    ld a, [hl]                                    ; $4BD4: $7E
    ld d, b                                       ; $4BD5: $50
    add hl, sp                                    ; $4BD6: $39
    jp Jump_04C_6200                              ; $4BD7: $C3 $00 $62


    nop                                           ; $4BDA: $00
    ld b, b                                       ; $4BDB: $40
    inc l                                         ; $4BDC: $2C
    ld a, [hl]                                    ; $4BDD: $7E
    ld d, b                                       ; $4BDE: $50
    ld d, h                                       ; $4BDF: $54
    jp Jump_04C_5000                              ; $4BE0: $C3 $00 $50


    nop                                           ; $4BE3: $00
    ld b, b                                       ; $4BE4: $40
    inc l                                         ; $4BE5: $2C
    ld a, [hl]                                    ; $4BE6: $7E
    ld d, b                                       ; $4BE7: $50
    ld l, a                                       ; $4BE8: $6F
    jp Jump_04C_6400                              ; $4BE9: $C3 $00 $64


    nop                                           ; $4BEC: $00
    ld b, b                                       ; $4BED: $40
    inc l                                         ; $4BEE: $2C
    ld a, [hl]                                    ; $4BEF: $7E
    ld d, b                                       ; $4BF0: $50
    adc d                                         ; $4BF1: $8A
    jp $2800                                      ; $4BF2: $C3 $00 $28


    nop                                           ; $4BF5: $00
    ld b, b                                       ; $4BF6: $40
    inc l                                         ; $4BF7: $2C
    ld a, [hl]                                    ; $4BF8: $7E
    ld d, b                                       ; $4BF9: $50
    and l                                         ; $4BFA: $A5
    jp Jump_04C_5A00                              ; $4BFB: $C3 $00 $5A


    nop                                           ; $4BFE: $00
    ld b, b                                       ; $4BFF: $40
    inc l                                         ; $4C00: $2C
    ld a, [hl]                                    ; $4C01: $7E
    ld d, b                                       ; $4C02: $50
    ret nz                                        ; $4C03: $C0

    jp Jump_04C_4600                              ; $4C04: $C3 $00 $46


    nop                                           ; $4C07: $00
    ld b, b                                       ; $4C08: $40
    inc l                                         ; $4C09: $2C
    ld a, [hl]                                    ; $4C0A: $7E
    ld l, e                                       ; $4C0B: $6B
    ld d, $4F                                     ; $4C0C: $16 $4F
    ld c, a                                       ; $4C0E: $4F
    ld a, e                                       ; $4C0F: $7B
    nop                                           ; $4C10: $00
    add b                                         ; $4C11: $80
    nop                                           ; $4C12: $00
    ld l, a                                       ; $4C13: $6F
    rrca                                          ; $4C14: $0F
    rst $38                                       ; $4C15: $FF
    ld a, a                                       ; $4C16: $7F
    ld h, [hl]                                    ; $4C17: $66
    ret nz                                        ; $4C18: $C0

    ld b, d                                       ; $4C19: $42
    ld b, b                                       ; $4C1A: $40
    ld a, c                                       ; $4C1B: $79
    rrca                                          ; $4C1C: $0F
    sub h                                         ; $4C1D: $94
    halt                                          ; $4C1E: $76
    jr nz, jr_04C_4C30                            ; $4C1F: $20 $0F

    dec de                                        ; $4C21: $1B
    dec e                                         ; $4C22: $1D
    ld b, b                                       ; $4C23: $40
    inc c                                         ; $4C24: $0C
    ld [hl], b                                    ; $4C25: $70
    inc c                                         ; $4C26: $0C
    nop                                           ; $4C27: $00
    add hl, sp                                    ; $4C28: $39
    ld bc, $6B3C                                  ; $4C29: $01 $3C $6B
    ld e, d                                       ; $4C2C: $5A
    ld c, h                                       ; $4C2D: $4C
    ld c, a                                       ; $4C2E: $4F
    ld c, h                                       ; $4C2F: $4C

jr_04C_4C30:
    dec bc                                        ; $4C30: $0B
    rrca                                          ; $4C31: $0F

Jump_04C_4C32:
    ld b, b                                       ; $4C32: $40
    jr jr_04C_4C50                                ; $4C33: $18 $1B

    ld c, $40                                     ; $4C35: $0E $40
    jr jr_04C_4C44                                ; $4C37: $18 $0B

    db $10                                        ; $4C39: $10
    ld b, b                                       ; $4C3A: $40
    jr jr_04C_4C58                                ; $4C3B: $18 $1B

    ld c, $40                                     ; $4C3D: $0E $40
    jr @+$0D                                      ; $4C3F: $18 $0B

    ld de, $1840                                  ; $4C41: $11 $40 $18

jr_04C_4C44:
    dec de                                        ; $4C44: $1B
    ld c, $40                                     ; $4C45: $0E $40
    jr jr_04C_4C54                                ; $4C47: $18 $0B

    ld [de], a                                    ; $4C49: $12
    ld b, b                                       ; $4C4A: $40
    jr jr_04C_4C68                                ; $4C4B: $18 $1B

    ld c, $42                                     ; $4C4D: $0E $42
    ld b, b                                       ; $4C4F: $40

jr_04C_4C50:
    jr jr_04C_4C8F                                ; $4C50: $18 $3D

    ld [hl], b                                    ; $4C52: $70
    inc a                                         ; $4C53: $3C

jr_04C_4C54:
    ld bc, $703D                                  ; $4C54: $01 $3D $70
    inc a                                         ; $4C57: $3C

jr_04C_4C58:
    ld bc, $703D                                  ; $4C58: $01 $3D $70
    inc a                                         ; $4C5B: $3C
    ld bc, $6F42                                  ; $4C5C: $01 $42 $6F
    rrca                                          ; $4C5F: $0F
    rst $38                                       ; $4C60: $FF
    ld a, a                                       ; $4C61: $7F
    ld a, c                                       ; $4C62: $79
    rrca                                          ; $4C63: $0F
    sub h                                         ; $4C64: $94
    halt                                          ; $4C65: $76
    jr nz, jr_04C_4C6F                            ; $4C66: $20 $07

jr_04C_4C68:
    dec de                                        ; $4C68: $1B
    dec e                                         ; $4C69: $1D
    ld b, b                                       ; $4C6A: $40
    inc c                                         ; $4C6B: $0C
    ld [hl], b                                    ; $4C6C: $70
    inc c                                         ; $4C6D: $0C
    nop                                           ; $4C6E: $00

jr_04C_4C6F:
    ld b, b                                       ; $4C6F: $40
    inc c                                         ; $4C70: $0C
    add hl, sp                                    ; $4C71: $39

Jump_04C_4C72:
    ld bc, $6B3C                                  ; $4C72: $01 $3C $6B
    dec de                                        ; $4C75: $1B
    dec de                                        ; $4C76: $1B
    ld a, [hl-]                                   ; $4C77: $3A
    ld [hl], c                                    ; $4C78: $71
    push bc                                       ; $4C79: $C5
    add hl, hl                                    ; $4C7A: $29
    dec h                                         ; $4C7B: $25
    ld bc, $5042                                  ; $4C7C: $01 $42 $50
    ld e, $C3                                     ; $4C7F: $1E $C3
    ld [hl], h                                    ; $4C81: $74
    ld h, d                                       ; $4C82: $62
    nop                                           ; $4C83: $00
    ld b, b                                       ; $4C84: $40
    ld c, $7B                                     ; $4C85: $0E $7B
    ld l, e                                       ; $4C87: $6B
    inc a                                         ; $4C88: $3C
    ld b, c                                       ; $4C89: $41
    nop                                           ; $4C8A: $00
    ld d, e                                       ; $4C8B: $53
    nop                                           ; $4C8C: $00
    add b                                         ; $4C8D: $80
    nop                                           ; $4C8E: $00

jr_04C_4C8F:
    ld l, a                                       ; $4C8F: $6F
    rrca                                          ; $4C90: $0F
    rst $38                                       ; $4C91: $FF
    ld a, a                                       ; $4C92: $7F
    ld h, [hl]                                    ; $4C93: $66
    ret nz                                        ; $4C94: $C0

    ld b, e                                       ; $4C95: $43
    ld b, b                                       ; $4C96: $40
    ld a, c                                       ; $4C97: $79
    rrca                                          ; $4C98: $0F
    sub h                                         ; $4C99: $94
    halt                                          ; $4C9A: $76
    jr nz, @+$11                                  ; $4C9B: $20 $0F

    dec de                                        ; $4C9D: $1B
    dec e                                         ; $4C9E: $1D
    ld b, b                                       ; $4C9F: $40
    inc c                                         ; $4CA0: $0C
    ld [hl], b                                    ; $4CA1: $70
    inc c                                         ; $4CA2: $0C
    nop                                           ; $4CA3: $00
    add hl, sp                                    ; $4CA4: $39
    ld bc, $6B3C                                  ; $4CA5: $01 $3C $6B
    ld b, b                                       ; $4CA8: $40
    jr jr_04C_4CC6                                ; $4CA9: $18 $1B

    ld c, $0B                                     ; $4CAB: $0E $0B
    rrca                                          ; $4CAD: $0F
    ld a, [hl-]                                   ; $4CAE: $3A
    ld [hl], b                                    ; $4CAF: $70
    inc c                                         ; $4CB0: $0C
    ld bc, $1040                                  ; $4CB1: $01 $40 $10
    ld [hl], b                                    ; $4CB4: $70
    inc c                                         ; $4CB5: $0C
    ld bc, $5042                                  ; $4CB6: $01 $42 $50
    ld e, $C3                                     ; $4CB9: $1E $C3
    ld e, d                                       ; $4CBB: $5A
    ld h, d                                       ; $4CBC: $62
    nop                                           ; $4CBD: $00
    ld b, b                                       ; $4CBE: $40
    ld a, [hl+]                                   ; $4CBF: $2A
    ld a, e                                       ; $4CC0: $7B
    ld d, b                                       ; $4CC1: $50
    add hl, sp                                    ; $4CC2: $39
    jp Jump_04C_623A                              ; $4CC3: $C3 $3A $62


jr_04C_4CC6:
    nop                                           ; $4CC6: $00
    ld b, b                                       ; $4CC7: $40
    ld a, [hl+]                                   ; $4CC8: $2A
    ld a, e                                       ; $4CC9: $7B
    ld d, b                                       ; $4CCA: $50
    ld d, h                                       ; $4CCB: $54
    jp Jump_04C_621A                              ; $4CCC: $C3 $1A $62


    nop                                           ; $4CCF: $00
    ld b, b                                       ; $4CD0: $40
    ld a, [hl+]                                   ; $4CD1: $2A
    ld a, e                                       ; $4CD2: $7B
    ld l, e                                       ; $4CD3: $6B
    inc a                                         ; $4CD4: $3C
    ld b, c                                       ; $4CD5: $41
    nop                                           ; $4CD6: $00
    ld d, e                                       ; $4CD7: $53
    nop                                           ; $4CD8: $00
    add b                                         ; $4CD9: $80
    nop                                           ; $4CDA: $00
    ld l, a                                       ; $4CDB: $6F
    rrca                                          ; $4CDC: $0F
    rst $38                                       ; $4CDD: $FF
    ld a, a                                       ; $4CDE: $7F
    ld h, [hl]                                    ; $4CDF: $66
    ret nz                                        ; $4CE0: $C0

    ld b, e                                       ; $4CE1: $43
    ld b, b                                       ; $4CE2: $40
    ld a, c                                       ; $4CE3: $79
    rrca                                          ; $4CE4: $0F
    sub h                                         ; $4CE5: $94
    halt                                          ; $4CE6: $76
    jr nz, @+$11                                  ; $4CE7: $20 $0F

    dec de                                        ; $4CE9: $1B
    dec e                                         ; $4CEA: $1D
    ld b, b                                       ; $4CEB: $40
    inc c                                         ; $4CEC: $0C
    ld [hl], b                                    ; $4CED: $70
    inc c                                         ; $4CEE: $0C
    nop                                           ; $4CEF: $00
    add hl, sp                                    ; $4CF0: $39
    ld bc, $6B3C                                  ; $4CF1: $01 $3C $6B
    ld b, b                                       ; $4CF4: $40
    jr jr_04C_4D12                                ; $4CF5: $18 $1B

    ld c, $0B                                     ; $4CF7: $0E $0B
    rrca                                          ; $4CF9: $0F
    ld b, b                                       ; $4CFA: $40
    dec bc                                        ; $4CFB: $0B
    dec bc                                        ; $4CFC: $0B
    db $10                                        ; $4CFD: $10
    ld b, b                                       ; $4CFE: $40
    dec bc                                        ; $4CFF: $0B
    dec bc                                        ; $4D00: $0B
    ld de, $703A                                  ; $4D01: $11 $3A $70
    inc c                                         ; $4D04: $0C
    ld bc, $1040                                  ; $4D05: $01 $40 $10
    ld [hl], b                                    ; $4D08: $70
    inc c                                         ; $4D09: $0C
    ld bc, $5042                                  ; $4D0A: $01 $42 $50
    ld d, h                                       ; $4D0D: $54
    jp Jump_04C_6232                              ; $4D0E: $C3 $32 $62


    nop                                           ; $4D11: $00

jr_04C_4D12:
    ld c, h                                       ; $4D12: $4C
    jr nc, jr_04C_4D62                            ; $4D13: $30 $4D

    ld l, a                                       ; $4D15: $6F
    rrca                                          ; $4D16: $0F
    rst $38                                       ; $4D17: $FF
    ld a, a                                       ; $4D18: $7F
    ld a, c                                       ; $4D19: $79
    rrca                                          ; $4D1A: $0F
    sub h                                         ; $4D1B: $94
    halt                                          ; $4D1C: $76
    jr nz, jr_04C_4D26                            ; $4D1D: $20 $07

    dec de                                        ; $4D1F: $1B
    dec e                                         ; $4D20: $1D
    ld b, b                                       ; $4D21: $40
    inc c                                         ; $4D22: $0C
    ld [hl], b                                    ; $4D23: $70
    inc c                                         ; $4D24: $0C
    nop                                           ; $4D25: $00

jr_04C_4D26:
    ld b, b                                       ; $4D26: $40
    inc c                                         ; $4D27: $0C
    dec bc                                        ; $4D28: $0B
    ld de, $0139                                  ; $4D29: $11 $39 $01
    inc a                                         ; $4D2C: $3C

jr_04C_4D2D:
    ld l, e                                       ; $4D2D: $6B
    inc sp                                        ; $4D2E: $33
    ld b, d                                       ; $4D2F: $42
    ld b, b                                       ; $4D30: $40
    ld [$031B], sp                                ; $4D31: $08 $1B $03
    ld b, d                                       ; $4D34: $42
    ld l, a                                       ; $4D35: $6F
    rrca                                          ; $4D36: $0F
    rst $38                                       ; $4D37: $FF
    ld a, a                                       ; $4D38: $7F
    ld a, c                                       ; $4D39: $79
    rrca                                          ; $4D3A: $0F
    sub h                                         ; $4D3B: $94
    halt                                          ; $4D3C: $76
    jr nz, jr_04C_4D46                            ; $4D3D: $20 $07

    dec de                                        ; $4D3F: $1B
    dec e                                         ; $4D40: $1D
    ld b, b                                       ; $4D41: $40
    inc c                                         ; $4D42: $0C
    ld [hl], b                                    ; $4D43: $70
    inc c                                         ; $4D44: $0C
    nop                                           ; $4D45: $00

jr_04C_4D46:
    add hl, sp                                    ; $4D46: $39
    ld bc, $6B3C                                  ; $4D47: $01 $3C $6B
    ld [hl], c                                    ; $4D4A: $71
    jr jr_04C_4D2D                                ; $4D4B: $18 $E0

    inc bc                                        ; $4D4D: $03
    ld bc, $0A1B                                  ; $4D4E: $01 $1B $0A
    ld [hl], c                                    ; $4D51: $71
    ld [$03E0], sp                                ; $4D52: $08 $E0 $03
    ld bc, $0C40                                  ; $4D55: $01 $40 $0C
    halt                                          ; $4D58: $76
    jr nz, jr_04C_4D6A                            ; $4D59: $20 $0F

    ld b, d                                       ; $4D5B: $42
    ld l, a                                       ; $4D5C: $6F
    rrca                                          ; $4D5D: $0F
    rst $38                                       ; $4D5E: $FF
    ld a, a                                       ; $4D5F: $7F
    ld a, c                                       ; $4D60: $79
    rrca                                          ; $4D61: $0F

jr_04C_4D62:
    sub h                                         ; $4D62: $94
    halt                                          ; $4D63: $76
    jr nz, jr_04C_4D6D                            ; $4D64: $20 $07

    dec de                                        ; $4D66: $1B
    dec e                                         ; $4D67: $1D
    ld b, b                                       ; $4D68: $40
    inc c                                         ; $4D69: $0C

jr_04C_4D6A:
    ld [hl], b                                    ; $4D6A: $70
    inc c                                         ; $4D6B: $0C
    nop                                           ; $4D6C: $00

jr_04C_4D6D:
    ld b, b                                       ; $4D6D: $40
    inc c                                         ; $4D6E: $0C
    add hl, sp                                    ; $4D6F: $39
    ld bc, $6B54                                  ; $4D70: $01 $54 $6B
    ld e, d                                       ; $4D73: $5A
    ld c, h                                       ; $4D74: $4C
    add c                                         ; $4D75: $81
    ld c, l                                       ; $4D76: $4D
    dec de                                        ; $4D77: $1B
    dec b                                         ; $4D78: $05
    ld l, a                                       ; $4D79: $6F
    rlca                                          ; $4D7A: $07
    rst $38                                       ; $4D7B: $FF
    ld a, a                                       ; $4D7C: $7F
    halt                                          ; $4D7D: $76
    jr nz, jr_04C_4D8F                            ; $4D7E: $20 $0F

    ld b, d                                       ; $4D80: $42
    ld b, b                                       ; $4D81: $40
    rra                                           ; $4D82: $1F
    ld [hl], b                                    ; $4D83: $70
    inc c                                         ; $4D84: $0C
    ld bc, $5042                                  ; $4D85: $01 $42 $50
    ld e, $C3                                     ; $4D88: $1E $C3
    ld [hl], h                                    ; $4D8A: $74
    ld h, d                                       ; $4D8B: $62
    nop                                           ; $4D8C: $00
    ld [hl+], a                                   ; $4D8D: $22
    inc b                                         ; $4D8E: $04

jr_04C_4D8F:
    ld b, b                                       ; $4D8F: $40
    ld l, e                                       ; $4D90: $6B
    dec b                                         ; $4D91: $05
    ld b, b                                       ; $4D92: $40
    jr nc, jr_04C_4DD6                            ; $4D93: $30 $41

    nop                                           ; $4D95: $00
    add b                                         ; $4D96: $80
    nop                                           ; $4D97: $00
    ld l, a                                       ; $4D98: $6F
    rrca                                          ; $4D99: $0F
    rst $38                                       ; $4D9A: $FF
    ld a, a                                       ; $4D9B: $7F
    ld h, [hl]                                    ; $4D9C: $66
    ret nz                                        ; $4D9D: $C0

    ld b, e                                       ; $4D9E: $43
    ld b, b                                       ; $4D9F: $40
    ld a, c                                       ; $4DA0: $79
    rrca                                          ; $4DA1: $0F
    sub h                                         ; $4DA2: $94
    halt                                          ; $4DA3: $76
    jr nz, @+$11                                  ; $4DA4: $20 $0F

    dec de                                        ; $4DA6: $1B
    dec e                                         ; $4DA7: $1D
    ld b, b                                       ; $4DA8: $40
    inc c                                         ; $4DA9: $0C
    ld [hl], b                                    ; $4DAA: $70
    inc c                                         ; $4DAB: $0C
    nop                                           ; $4DAC: $00
    dec bc                                        ; $4DAD: $0B
    rrca                                          ; $4DAE: $0F
    add hl, sp                                    ; $4DAF: $39
    ld bc, $6B3C                                  ; $4DB0: $01 $3C $6B
    ld b, b                                       ; $4DB3: $40
    jr @+$1D                                      ; $4DB4: $18 $1B

    ld c, $09                                     ; $4DB6: $0E $09
    rrca                                          ; $4DB8: $0F
    ld b, b                                       ; $4DB9: $40
    ld h, d                                       ; $4DBA: $62
    ld [hl], b                                    ; $4DBB: $70
    ld a, [hl-]                                   ; $4DBC: $3A
    ld [hl], b                                    ; $4DBD: $70
    inc c                                         ; $4DBE: $0C
    ld bc, $1040                                  ; $4DBF: $01 $40 $10
    ld [hl], b                                    ; $4DC2: $70
    inc c                                         ; $4DC3: $0C
    ld bc, $5042                                  ; $4DC4: $01 $42 $50
    ld d, h                                       ; $4DC7: $54
    jp Jump_04C_6274                              ; $4DC8: $C3 $74 $62


    nop                                           ; $4DCB: $00
    ld b, b                                       ; $4DCC: $40
    and b                                         ; $4DCD: $A0
    ld [hl], c                                    ; $4DCE: $71
    ld d, b                                       ; $4DCF: $50
    ld e, $C3                                     ; $4DD0: $1E $C3
    add h                                         ; $4DD2: $84
    ld h, d                                       ; $4DD3: $62
    nop                                           ; $4DD4: $00
    ld b, b                                       ; $4DD5: $40

jr_04C_4DD6:
    and b                                         ; $4DD6: $A0
    ld [hl], c                                    ; $4DD7: $71
    ld d, b                                       ; $4DD8: $50
    add hl, sp                                    ; $4DD9: $39
    jp Jump_04C_7474                              ; $4DDA: $C3 $74 $74


    nop                                           ; $4DDD: $00
    ld b, b                                       ; $4DDE: $40
    and b                                         ; $4DDF: $A0
    ld [hl], c                                    ; $4DE0: $71
    ld l, e                                       ; $4DE1: $6B
    dec c                                         ; $4DE2: $0D
    ld c, a                                       ; $4DE3: $4F
    rrca                                          ; $4DE4: $0F
    ld a, [hl]                                    ; $4DE5: $7E
    nop                                           ; $4DE6: $00
    add b                                         ; $4DE7: $80
    nop                                           ; $4DE8: $00
    ld l, a                                       ; $4DE9: $6F
    rrca                                          ; $4DEA: $0F
    rst $38                                       ; $4DEB: $FF
    ld a, a                                       ; $4DEC: $7F
    ld h, [hl]                                    ; $4DED: $66
    ret nz                                        ; $4DEE: $C0

    ld b, e                                       ; $4DEF: $43
    ld b, b                                       ; $4DF0: $40
    ld a, c                                       ; $4DF1: $79
    rrca                                          ; $4DF2: $0F
    sub h                                         ; $4DF3: $94
    halt                                          ; $4DF4: $76
    jr nz, jr_04C_4E06                            ; $4DF5: $20 $0F

    dec de                                        ; $4DF7: $1B
    dec e                                         ; $4DF8: $1D
    ld b, b                                       ; $4DF9: $40
    inc c                                         ; $4DFA: $0C
    ld [hl], b                                    ; $4DFB: $70
    inc c                                         ; $4DFC: $0C
    nop                                           ; $4DFD: $00
    add hl, sp                                    ; $4DFE: $39
    ld bc, $6B3C                                  ; $4DFF: $01 $3C $6B
    ld l, h                                       ; $4E02: $6C
    jr nz, jr_04C_4E05                            ; $4E03: $20 $00

jr_04C_4E05:
    nop                                           ; $4E05: $00

jr_04C_4E06:
    dec a                                         ; $4E06: $3D
    dec de                                        ; $4E07: $1B
    add hl, bc                                    ; $4E08: $09
    dec bc                                        ; $4E09: $0B
    ld de, $0C70                                  ; $4E0A: $11 $70 $0C
    ld bc, $091B                                  ; $4E0D: $01 $1B $09
    dec bc                                        ; $4E10: $0B
    rrca                                          ; $4E11: $0F
    ld [hl], b                                    ; $4E12: $70
    inc c                                         ; $4E13: $0C
    ld bc, $091B                                  ; $4E14: $01 $1B $09
    dec bc                                        ; $4E17: $0B
    db $10                                        ; $4E18: $10
    ld [hl], b                                    ; $4E19: $70
    inc c                                         ; $4E1A: $0C
    ld bc, $1B48                                  ; $4E1B: $01 $48 $1B
    add hl, bc                                    ; $4E1E: $09
    ld d, b                                       ; $4E1F: $50
    ld d, h                                       ; $4E20: $54
    jp Jump_04C_7484                              ; $4E21: $C3 $84 $74


    nop                                           ; $4E24: $00
    ld b, b                                       ; $4E25: $40
    and b                                         ; $4E26: $A0
    ld [hl], c                                    ; $4E27: $71
    ld [hl], b                                    ; $4E28: $70
    inc c                                         ; $4E29: $0C
    ld bc, $091B                                  ; $4E2A: $01 $1B $09
    ld d, b                                       ; $4E2D: $50
    ld e, $C3                                     ; $4E2E: $1E $C3
    ld [hl], h                                    ; $4E30: $74
    ld l, b                                       ; $4E31: $68
    nop                                           ; $4E32: $00
    ld b, b                                       ; $4E33: $40
    and b                                         ; $4E34: $A0
    ld [hl], c                                    ; $4E35: $71
    ld [hl], b                                    ; $4E36: $70
    inc c                                         ; $4E37: $0C
    ld bc, $091B                                  ; $4E38: $01 $1B $09
    ld d, b                                       ; $4E3B: $50
    add hl, sp                                    ; $4E3C: $39
    jp Jump_04C_6868                              ; $4E3D: $C3 $68 $68


    nop                                           ; $4E40: $00
    ld b, b                                       ; $4E41: $40
    and b                                         ; $4E42: $A0
    ld [hl], c                                    ; $4E43: $71
    ld [hl], b                                    ; $4E44: $70
    inc c                                         ; $4E45: $0C
    ld bc, $2076                                  ; $4E46: $01 $76 $20
    rrca                                          ; $4E49: $0F
    ld b, d                                       ; $4E4A: $42
    ld d, b                                       ; $4E4B: $50
    ld d, h                                       ; $4E4C: $54
    jp Jump_04C_6274                              ; $4E4D: $C3 $74 $62


    nop                                           ; $4E50: $00
    ld b, b                                       ; $4E51: $40
    and b                                         ; $4E52: $A0
    ld [hl], c                                    ; $4E53: $71
    ld l, e                                       ; $4E54: $6B
    dec c                                         ; $4E55: $0D
    ld c, a                                       ; $4E56: $4F
    rrca                                          ; $4E57: $0F
    ld a, [hl]                                    ; $4E58: $7E
    nop                                           ; $4E59: $00
    add b                                         ; $4E5A: $80
    nop                                           ; $4E5B: $00
    ld l, a                                       ; $4E5C: $6F
    rrca                                          ; $4E5D: $0F
    rst $38                                       ; $4E5E: $FF
    ld a, a                                       ; $4E5F: $7F
    ld h, [hl]                                    ; $4E60: $66
    ret nz                                        ; $4E61: $C0

    ld b, e                                       ; $4E62: $43
    ld b, b                                       ; $4E63: $40
    ld a, c                                       ; $4E64: $79
    rrca                                          ; $4E65: $0F
    sub h                                         ; $4E66: $94
    halt                                          ; $4E67: $76
    jr nz, jr_04C_4E79                            ; $4E68: $20 $0F

    dec de                                        ; $4E6A: $1B
    dec e                                         ; $4E6B: $1D
    ld b, b                                       ; $4E6C: $40
    inc c                                         ; $4E6D: $0C
    ld [hl], b                                    ; $4E6E: $70
    inc c                                         ; $4E6F: $0C
    nop                                           ; $4E70: $00
    ld b, b                                       ; $4E71: $40
    inc c                                         ; $4E72: $0C
    add hl, sp                                    ; $4E73: $39
    ld bc, $6B3C                                  ; $4E74: $01 $3C $6B
    ld a, [hl-]                                   ; $4E77: $3A
    dec de                                        ; $4E78: $1B

jr_04C_4E79:
    add hl, bc                                    ; $4E79: $09
    dec bc                                        ; $4E7A: $0B
    ld de, $0C70                                  ; $4E7B: $11 $70 $0C
    ld bc, $5042                                  ; $4E7E: $01 $42 $50
    ld e, $C3                                     ; $4E81: $1E $C3
    ld [hl], h                                    ; $4E83: $74
    ld h, d                                       ; $4E84: $62
    nop                                           ; $4E85: $00
    ld b, b                                       ; $4E86: $40
    adc c                                         ; $4E87: $89
    ld [hl], c                                    ; $4E88: $71
    ld d, b                                       ; $4E89: $50
    and l                                         ; $4E8A: $A5
    jp Jump_04C_5084                              ; $4E8B: $C3 $84 $50


    nop                                           ; $4E8E: $00
    ld b, b                                       ; $4E8F: $40
    adc c                                         ; $4E90: $89
    ld [hl], c                                    ; $4E91: $71
    ld d, b                                       ; $4E92: $50
    add hl, sp                                    ; $4E93: $39
    jp Jump_04C_747C                              ; $4E94: $C3 $7C $74


    nop                                           ; $4E97: $00
    ld b, b                                       ; $4E98: $40
    adc c                                         ; $4E99: $89
    ld [hl], c                                    ; $4E9A: $71
    ld l, e                                       ; $4E9B: $6B
    add hl, bc                                    ; $4E9C: $09
    ld b, b                                       ; $4E9D: $40
    nop                                           ; $4E9E: $00
    ld b, b                                       ; $4E9F: $40
    nop                                           ; $4EA0: $00
    add b                                         ; $4EA1: $80
    nop                                           ; $4EA2: $00
    ld l, a                                       ; $4EA3: $6F
    rrca                                          ; $4EA4: $0F
    rst $38                                       ; $4EA5: $FF
    ld a, a                                       ; $4EA6: $7F
    ld h, [hl]                                    ; $4EA7: $66
    ret nz                                        ; $4EA8: $C0

    ld b, e                                       ; $4EA9: $43
    ld b, b                                       ; $4EAA: $40
    ld a, c                                       ; $4EAB: $79
    rrca                                          ; $4EAC: $0F
    sub h                                         ; $4EAD: $94
    halt                                          ; $4EAE: $76
    jr nz, jr_04C_4EC0                            ; $4EAF: $20 $0F

    dec de                                        ; $4EB1: $1B
    dec e                                         ; $4EB2: $1D
    ld b, b                                       ; $4EB3: $40
    inc c                                         ; $4EB4: $0C
    ld [hl], b                                    ; $4EB5: $70
    inc c                                         ; $4EB6: $0C
    nop                                           ; $4EB7: $00
    add hl, sp                                    ; $4EB8: $39
    ld bc, $6B3C                                  ; $4EB9: $01 $3C $6B
    ld l, h                                       ; $4EBC: $6C
    ld c, a                                       ; $4EBD: $4F
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00

jr_04C_4EC0:
    dec de                                        ; $4EC0: $1B
    add hl, bc                                    ; $4EC1: $09
    dec bc                                        ; $4EC2: $0B
    rrca                                          ; $4EC3: $0F
    ld [hl], b                                    ; $4EC4: $70
    inc c                                         ; $4EC5: $0C
    ld bc, $403B                                  ; $4EC6: $01 $3B $40
    db $10                                        ; $4EC9: $10
    dec de                                        ; $4ECA: $1B
    add hl, bc                                    ; $4ECB: $09
    dec bc                                        ; $4ECC: $0B
    inc d                                         ; $4ECD: $14
    ld [hl], b                                    ; $4ECE: $70
    inc c                                         ; $4ECF: $0C
    ld bc, $403B                                  ; $4ED0: $01 $3B $40
    db $10                                        ; $4ED3: $10
    dec de                                        ; $4ED4: $1B
    add hl, bc                                    ; $4ED5: $09
    dec bc                                        ; $4ED6: $0B
    db $10                                        ; $4ED7: $10
    ld [hl], b                                    ; $4ED8: $70
    inc c                                         ; $4ED9: $0C
    ld bc, $403B                                  ; $4EDA: $01 $3B $40
    db $10                                        ; $4EDD: $10
    ld l, l                                       ; $4EDE: $6D
    rrca                                          ; $4EDF: $0F
    ld b, d                                       ; $4EE0: $42
    ld d, b                                       ; $4EE1: $50
    ld d, h                                       ; $4EE2: $54
    jp Jump_04C_6264                              ; $4EE3: $C3 $64 $62


    nop                                           ; $4EE6: $00
    ld b, b                                       ; $4EE7: $40
    pop hl                                        ; $4EE8: $E1
    ld a, [hl]                                    ; $4EE9: $7E
    ld l, e                                       ; $4EEA: $6B
    inc d                                         ; $4EEB: $14
    ld c, a                                       ; $4EEC: $4F
    rrca                                          ; $4EED: $0F
    ld a, b                                       ; $4EEE: $78
    nop                                           ; $4EEF: $00
    add b                                         ; $4EF0: $80
    nop                                           ; $4EF1: $00
    ld l, a                                       ; $4EF2: $6F
    rrca                                          ; $4EF3: $0F
    rst $38                                       ; $4EF4: $FF
    ld a, a                                       ; $4EF5: $7F
    ld h, [hl]                                    ; $4EF6: $66
    ret nz                                        ; $4EF7: $C0

    ld b, e                                       ; $4EF8: $43
    ld b, b                                       ; $4EF9: $40
    ld a, c                                       ; $4EFA: $79
    rrca                                          ; $4EFB: $0F
    sub h                                         ; $4EFC: $94
    halt                                          ; $4EFD: $76
    jr nz, jr_04C_4F0F                            ; $4EFE: $20 $0F

    dec de                                        ; $4F00: $1B
    dec e                                         ; $4F01: $1D
    ld b, b                                       ; $4F02: $40
    inc c                                         ; $4F03: $0C
    ld [hl], b                                    ; $4F04: $70
    inc c                                         ; $4F05: $0C
    nop                                           ; $4F06: $00
    add hl, sp                                    ; $4F07: $39
    ld bc, $6B3C                                  ; $4F08: $01 $3C $6B
    ld l, h                                       ; $4F0B: $6C
    jr nz, jr_04C_4F0E                            ; $4F0C: $20 $00

jr_04C_4F0E:
    nop                                           ; $4F0E: $00

jr_04C_4F0F:
    dec bc                                        ; $4F0F: $0B
    ld de, $703A                                  ; $4F10: $11 $3A $70
    inc c                                         ; $4F13: $0C
    ld bc, $1840                                  ; $4F14: $01 $40 $18
    ld b, d                                       ; $4F17: $42
    ld d, b                                       ; $4F18: $50
    ld e, $C3                                     ; $4F19: $1E $C3
    ld [hl], h                                    ; $4F1B: $74
    ld h, d                                       ; $4F1C: $62
    nop                                           ; $4F1D: $00
    ld b, b                                       ; $4F1E: $40
    ld c, [hl]                                    ; $4F1F: $4E
    ld [hl], b                                    ; $4F20: $70
    ld l, e                                       ; $4F21: $6B
    ld d, $4F                                     ; $4F22: $16 $4F
    xor a                                         ; $4F24: $AF
    ld a, h                                       ; $4F25: $7C
    nop                                           ; $4F26: $00
    add b                                         ; $4F27: $80
    nop                                           ; $4F28: $00
    ld l, e                                       ; $4F29: $6B
    ld c, $4E                                     ; $4F2A: $0E $4E
    xor b                                         ; $4F2C: $A8
    ld l, e                                       ; $4F2D: $6B
    ld h, b                                       ; $4F2E: $60
    add c                                         ; $4F2F: $81
    nop                                           ; $4F30: $00
    ld l, a                                       ; $4F31: $6F
    rrca                                          ; $4F32: $0F
    rst $38                                       ; $4F33: $FF
    ld a, a                                       ; $4F34: $7F
    ld h, [hl]                                    ; $4F35: $66
    ret nz                                        ; $4F36: $C0

    ld b, e                                       ; $4F37: $43
    ld b, b                                       ; $4F38: $40
    ld a, c                                       ; $4F39: $79
    rrca                                          ; $4F3A: $0F
    sub h                                         ; $4F3B: $94
    halt                                          ; $4F3C: $76
    jr nz, jr_04C_4F4E                            ; $4F3D: $20 $0F

    dec de                                        ; $4F3F: $1B
    dec e                                         ; $4F40: $1D
    ld b, b                                       ; $4F41: $40
    inc c                                         ; $4F42: $0C
    ld [hl], b                                    ; $4F43: $70
    inc c                                         ; $4F44: $0C
    nop                                           ; $4F45: $00
    ld b, b                                       ; $4F46: $40
    inc c                                         ; $4F47: $0C
    dec de                                        ; $4F48: $1B
    inc e                                         ; $4F49: $1C
    ld b, b                                       ; $4F4A: $40
    inc b                                         ; $4F4B: $04
    dec bc                                        ; $4F4C: $0B
    rrca                                          ; $4F4D: $0F

jr_04C_4F4E:
    add hl, sp                                    ; $4F4E: $39
    ld bc, $6B3C                                  ; $4F4F: $01 $3C $6B
    dec de                                        ; $4F52: $1B
    inc bc                                        ; $4F53: $03
    ld b, b                                       ; $4F54: $40
    inc b                                         ; $4F55: $04
    ld d, b                                       ; $4F56: $50
    ld e, $C3                                     ; $4F57: $1E $C3
    ld l, b                                       ; $4F59: $68
    ld h, h                                       ; $4F5A: $64
    ld d, $40                                     ; $4F5B: $16 $40
    cp $70                                        ; $4F5D: $FE $70
    dec sp                                        ; $4F5F: $3B
    ld [hl], b                                    ; $4F60: $70
    inc c                                         ; $4F61: $0C
    ld bc, $5042                                  ; $4F62: $01 $42 $50
    ld e, $C3                                     ; $4F65: $1E $C3
    ld d, b                                       ; $4F67: $50
    ld h, h                                       ; $4F68: $64
    nop                                           ; $4F69: $00
    ld b, b                                       ; $4F6A: $40
    ld e, c                                       ; $4F6B: $59
    ld [hl], c                                    ; $4F6C: $71
    ld d, b                                       ; $4F6D: $50
    add hl, sp                                    ; $4F6E: $39
    jp Jump_04C_6450                              ; $4F6F: $C3 $50 $64


    nop                                           ; $4F72: $00
    ld b, b                                       ; $4F73: $40
    ld e, c                                       ; $4F74: $59
    ld [hl], c                                    ; $4F75: $71
    ld d, b                                       ; $4F76: $50
    ld d, h                                       ; $4F77: $54
    jp Jump_04C_6450                              ; $4F78: $C3 $50 $64


    nop                                           ; $4F7B: $00
    ld b, b                                       ; $4F7C: $40
    ld l, [hl]                                    ; $4F7D: $6E
    ld [hl], c                                    ; $4F7E: $71
    ld d, b                                       ; $4F7F: $50
    ld l, a                                       ; $4F80: $6F
    jp Jump_04C_6450                              ; $4F81: $C3 $50 $64


    nop                                           ; $4F84: $00
    ld c, h                                       ; $4F85: $4C
    ret nc                                        ; $4F86: $D0

    ld c, a                                       ; $4F87: $4F
    ld l, e                                       ; $4F88: $6B
    inc b                                         ; $4F89: $04
    ld c, [hl]                                    ; $4F8A: $4E
    adc b                                         ; $4F8B: $88
    ld l, h                                       ; $4F8C: $6C
    nop                                           ; $4F8D: $00
    add b                                         ; $4F8E: $80
    nop                                           ; $4F8F: $00
    ld l, a                                       ; $4F90: $6F
    rrca                                          ; $4F91: $0F
    rst $38                                       ; $4F92: $FF
    ld a, a                                       ; $4F93: $7F
    ld h, [hl]                                    ; $4F94: $66
    ret nz                                        ; $4F95: $C0

    ld b, e                                       ; $4F96: $43
    ld b, b                                       ; $4F97: $40
    ld a, c                                       ; $4F98: $79
    rrca                                          ; $4F99: $0F
    sub h                                         ; $4F9A: $94
    halt                                          ; $4F9B: $76
    jr nz, jr_04C_4FAD                            ; $4F9C: $20 $0F

    dec de                                        ; $4F9E: $1B
    dec e                                         ; $4F9F: $1D
    ld b, b                                       ; $4FA0: $40
    inc c                                         ; $4FA1: $0C
    ld [hl], b                                    ; $4FA2: $70
    inc c                                         ; $4FA3: $0C
    nop                                           ; $4FA4: $00
    ld b, b                                       ; $4FA5: $40
    inc c                                         ; $4FA6: $0C
    dec bc                                        ; $4FA7: $0B
    rrca                                          ; $4FA8: $0F
    dec de                                        ; $4FA9: $1B
    dec d                                         ; $4FAA: $15
    ld b, b                                       ; $4FAB: $40
    inc c                                         ; $4FAC: $0C

jr_04C_4FAD:
    dec de                                        ; $4FAD: $1B
    dec d                                         ; $4FAE: $15
    dec bc                                        ; $4FAF: $0B
    db $10                                        ; $4FB0: $10
    dec bc                                        ; $4FB1: $0B
    ld de, $120B                                  ; $4FB2: $11 $0B $12
    add hl, sp                                    ; $4FB5: $39
    ld bc, $6B3C                                  ; $4FB6: $01 $3C $6B
    ld b, b                                       ; $4FB9: $40
    ld b, $5A                                     ; $4FBA: $06 $5A
    ld c, h                                       ; $4FBC: $4C
    call z, $0C4F                                 ; $4FBD: $CC $4F $0C
    rrca                                          ; $4FC0: $0F
    dec sp                                        ; $4FC1: $3B
    ld b, b                                       ; $4FC2: $40
    ld b, $0C                                     ; $4FC3: $06 $0C
    db $10                                        ; $4FC5: $10
    dec sp                                        ; $4FC6: $3B
    ld b, b                                       ; $4FC7: $40
    ld b, $0C                                     ; $4FC8: $06 $0C
    ld de, $7042                                  ; $4FCA: $11 $42 $70
    dec d                                         ; $4FCD: $15
    ld bc, $4042                                  ; $4FCE: $01 $42 $40
    inc c                                         ; $4FD1: $0C
    dec de                                        ; $4FD2: $1B
    dec d                                         ; $4FD3: $15
    ld b, d                                       ; $4FD4: $42
    ld d, b                                       ; $4FD5: $50
    ld l, a                                       ; $4FD6: $6F
    jp Jump_04C_6470                              ; $4FD7: $C3 $70 $64


    nop                                           ; $4FDA: $00
    ld b, b                                       ; $4FDB: $40
    or e                                          ; $4FDC: $B3
    ld [hl], b                                    ; $4FDD: $70
    ld d, b                                       ; $4FDE: $50
    adc d                                         ; $4FDF: $8A
    jp Jump_04C_6470                              ; $4FE0: $C3 $70 $64


    nop                                           ; $4FE3: $00
    ld b, b                                       ; $4FE4: $40
    or e                                          ; $4FE5: $B3
    ld [hl], b                                    ; $4FE6: $70
    ld d, b                                       ; $4FE7: $50
    and l                                         ; $4FE8: $A5
    jp Jump_04C_6470                              ; $4FE9: $C3 $70 $64


    nop                                           ; $4FEC: $00
    ld b, b                                       ; $4FED: $40
    or e                                          ; $4FEE: $B3
    ld [hl], b                                    ; $4FEF: $70
    ld d, b                                       ; $4FF0: $50
    ld e, $C3                                     ; $4FF1: $1E $C3
    ld [hl], b                                    ; $4FF3: $70
    ld h, h                                       ; $4FF4: $64
    nop                                           ; $4FF5: $00
    ld b, b                                       ; $4FF6: $40
    or e                                          ; $4FF7: $B3
    ld [hl], b                                    ; $4FF8: $70
    ld d, b                                       ; $4FF9: $50
    add hl, sp                                    ; $4FFA: $39
    jp Jump_04C_6470                              ; $4FFB: $C3 $70 $64


    nop                                           ; $4FFE: $00
    ld b, b                                       ; $4FFF: $40

Jump_04C_5000:
    or e                                          ; $5000: $B3
    ld [hl], b                                    ; $5001: $70
    ld d, b                                       ; $5002: $50
    ld d, h                                       ; $5003: $54
    jp Jump_04C_6470                              ; $5004: $C3 $70 $64


    nop                                           ; $5007: $00
    ld b, b                                       ; $5008: $40
    or e                                          ; $5009: $B3
    ld [hl], b                                    ; $500A: $70
    ld l, e                                       ; $500B: $6B
    ld a, [bc]                                    ; $500C: $0A
    ld b, b                                       ; $500D: $40
    sub b                                         ; $500E: $90
    ld b, b                                       ; $500F: $40
    nop                                           ; $5010: $00
    add b                                         ; $5011: $80
    nop                                           ; $5012: $00
    ld l, a                                       ; $5013: $6F
    rrca                                          ; $5014: $0F
    rst $38                                       ; $5015: $FF
    ld a, a                                       ; $5016: $7F
    ld h, [hl]                                    ; $5017: $66
    ret nz                                        ; $5018: $C0

    ld b, e                                       ; $5019: $43
    ld b, b                                       ; $501A: $40
    ld a, c                                       ; $501B: $79
    rrca                                          ; $501C: $0F
    sub h                                         ; $501D: $94

Jump_04C_501E:
    halt                                          ; $501E: $76
    jr nz, jr_04C_5030                            ; $501F: $20 $0F

    dec de                                        ; $5021: $1B
    dec e                                         ; $5022: $1D
    ld b, b                                       ; $5023: $40
    inc c                                         ; $5024: $0C
    ld [hl], b                                    ; $5025: $70
    inc c                                         ; $5026: $0C
    nop                                           ; $5027: $00
    add hl, sp                                    ; $5028: $39
    ld bc, $6B54                                  ; $5029: $01 $54 $6B
    ld l, h                                       ; $502C: $6C
    jr nz, jr_04C_502F                            ; $502D: $20 $00

jr_04C_502F:
    db $10                                        ; $502F: $10

jr_04C_5030:
    ld e, d                                       ; $5030: $5A
    ld c, h                                       ; $5031: $4C
    ld c, l                                       ; $5032: $4D
    ld d, b                                       ; $5033: $50
    dec bc                                        ; $5034: $0B
    ld [de], a                                    ; $5035: $12
    ld b, b                                       ; $5036: $40
    ld [$130B], sp                                ; $5037: $08 $0B $13
    ld b, b                                       ; $503A: $40
    db $10                                        ; $503B: $10
    dec bc                                        ; $503C: $0B
    inc d                                         ; $503D: $14
    ld b, b                                       ; $503E: $40
    jr jr_04C_504C                                ; $503F: $18 $0B

    rrca                                          ; $5041: $0F
    ld b, b                                       ; $5042: $40
    jr nz, jr_04C_5050                            ; $5043: $20 $0B

    db $10                                        ; $5045: $10
    ld b, b                                       ; $5046: $40
    ld b, b                                       ; $5047: $40
    dec bc                                        ; $5048: $0B
    ld de, $4040                                  ; $5049: $11 $40 $40

jr_04C_504C:
    ld b, d                                       ; $504C: $42
    ld [hl], c                                    ; $504D: $71
    ldh [rP1], a                                  ; $504E: $E0 $00

jr_04C_5050:
    jr jr_04C_5053                                ; $5050: $18 $01

    ld b, b                                       ; $5052: $40

jr_04C_5053:
    db $10                                        ; $5053: $10
    ld [hl], c                                    ; $5054: $71
    jp nz, $1000                                  ; $5055: $C2 $00 $10

    ld bc, $5042                                  ; $5058: $01 $42 $50
    ld l, a                                       ; $505B: $6F
    jp $0068                                      ; $505C: $C3 $68 $00


    nop                                           ; $505F: $00
    ld b, b                                       ; $5060: $40
    dec d                                         ; $5061: $15
    ld [hl], c                                    ; $5062: $71
    ld d, b                                       ; $5063: $50
    adc d                                         ; $5064: $8A
    jp $0064                                      ; $5065: $C3 $64 $00


    nop                                           ; $5068: $00
    ld b, b                                       ; $5069: $40
    dec d                                         ; $506A: $15
    ld [hl], c                                    ; $506B: $71
    ld d, b                                       ; $506C: $50
    and l                                         ; $506D: $A5
    jp $0090                                      ; $506E: $C3 $90 $00


    nop                                           ; $5071: $00
    ld b, b                                       ; $5072: $40

Jump_04C_5073:
    dec d                                         ; $5073: $15
    ld [hl], c                                    ; $5074: $71
    ld d, b                                       ; $5075: $50
    ld e, $C3                                     ; $5076: $1E $C3
    ld [hl], h                                    ; $5078: $74
    nop                                           ; $5079: $00
    nop                                           ; $507A: $00
    ld b, b                                       ; $507B: $40
    dec d                                         ; $507C: $15

Jump_04C_507D:
    ld [hl], c                                    ; $507D: $71
    ld d, b                                       ; $507E: $50
    add hl, sp                                    ; $507F: $39
    jp $0084                                      ; $5080: $C3 $84 $00


    nop                                           ; $5083: $00

Jump_04C_5084:
    ld b, b                                       ; $5084: $40
    dec d                                         ; $5085: $15
    ld [hl], c                                    ; $5086: $71
    ld d, b                                       ; $5087: $50
    ld d, h                                       ; $5088: $54
    jp $007B                                      ; $5089: $C3 $7B $00


    nop                                           ; $508C: $00
    ld b, b                                       ; $508D: $40
    dec d                                         ; $508E: $15
    ld [hl], c                                    ; $508F: $71
    ld l, e                                       ; $5090: $6B
    inc d                                         ; $5091: $14
    ld b, b                                       ; $5092: $40
    add b                                         ; $5093: $80
    ld b, c                                       ; $5094: $41
    nop                                           ; $5095: $00
    add b                                         ; $5096: $80
    nop                                           ; $5097: $00
    ld l, a                                       ; $5098: $6F
    rrca                                          ; $5099: $0F
    rst $38                                       ; $509A: $FF
    ld a, a                                       ; $509B: $7F
    ld h, [hl]                                    ; $509C: $66
    ret nz                                        ; $509D: $C0

    ld b, e                                       ; $509E: $43
    ld b, b                                       ; $509F: $40
    ld a, c                                       ; $50A0: $79
    rrca                                          ; $50A1: $0F
    sub h                                         ; $50A2: $94
    halt                                          ; $50A3: $76
    jr nz, @+$11                                  ; $50A4: $20 $0F

    dec de                                        ; $50A6: $1B
    dec e                                         ; $50A7: $1D
    ld b, b                                       ; $50A8: $40
    inc c                                         ; $50A9: $0C
    ld [hl], b                                    ; $50AA: $70
    inc c                                         ; $50AB: $0C
    nop                                           ; $50AC: $00
    add hl, sp                                    ; $50AD: $39
    ld bc, $6B3C                                  ; $50AE: $01 $3C $6B
    dec bc                                        ; $50B1: $0B
    ld [de], a                                    ; $50B2: $12
    ld b, b                                       ; $50B3: $40
    ld [$130B], sp                                ; $50B4: $08 $0B $13
    ld b, b                                       ; $50B7: $40
    ld [$140B], sp                                ; $50B8: $08 $0B $14
    ld b, b                                       ; $50BB: $40
    db $10                                        ; $50BC: $10
    dec bc                                        ; $50BD: $0B
    rrca                                          ; $50BE: $0F
    add hl, bc                                    ; $50BF: $09
    ld [de], a                                    ; $50C0: $12
    ld b, b                                       ; $50C1: $40
    ld b, d                                       ; $50C2: $42
    ld [hl], c                                    ; $50C3: $71
    dec de                                        ; $50C4: $1B
    dec de                                        ; $50C5: $1B
    ld e, d                                       ; $50C6: $5A
    ld c, h                                       ; $50C7: $4C
    ld [bc], a                                    ; $50C8: $02
    ld d, c                                       ; $50C9: $51
    dec sp                                        ; $50CA: $3B
    ld b, b                                       ; $50CB: $40
    ld [$1309], sp                                ; $50CC: $08 $09 $13
    ld b, b                                       ; $50CF: $40
    ld b, d                                       ; $50D0: $42
    ld [hl], c                                    ; $50D1: $71
    dec de                                        ; $50D2: $1B
    dec de                                        ; $50D3: $1B
    dec sp                                        ; $50D4: $3B
    ld b, b                                       ; $50D5: $40
    ld [$1409], sp                                ; $50D6: $08 $09 $14
    ld b, b                                       ; $50D9: $40
    ld b, d                                       ; $50DA: $42
    ld [hl], c                                    ; $50DB: $71
    dec de                                        ; $50DC: $1B
    dec de                                        ; $50DD: $1B
    dec sp                                        ; $50DE: $3B
    dec bc                                        ; $50DF: $0B
    db $10                                        ; $50E0: $10
    ld b, b                                       ; $50E1: $40
    db $10                                        ; $50E2: $10
    add hl, bc                                    ; $50E3: $09
    rrca                                          ; $50E4: $0F
    ld b, b                                       ; $50E5: $40
    ld b, d                                       ; $50E6: $42
    ld [hl], c                                    ; $50E7: $71
    dec de                                        ; $50E8: $1B
    dec de                                        ; $50E9: $1B
    dec sp                                        ; $50EA: $3B
    dec bc                                        ; $50EB: $0B
    ld de, $1040                                  ; $50EC: $11 $40 $10
    add hl, bc                                    ; $50EF: $09
    db $10                                        ; $50F0: $10
    ld b, b                                       ; $50F1: $40
    ld b, d                                       ; $50F2: $42
    ld [hl], c                                    ; $50F3: $71
    dec de                                        ; $50F4: $1B
    dec de                                        ; $50F5: $1B
    dec sp                                        ; $50F6: $3B
    ld b, b                                       ; $50F7: $40
    db $10                                        ; $50F8: $10
    add hl, bc                                    ; $50F9: $09
    ld de, $4240                                  ; $50FA: $11 $40 $42
    ld [hl], c                                    ; $50FD: $71
    dec de                                        ; $50FE: $1B
    db $10                                        ; $50FF: $10
    dec sp                                        ; $5100: $3B
    ld b, d                                       ; $5101: $42
    ld [hl], b                                    ; $5102: $70
    inc a                                         ; $5103: $3C
    ld bc, $1570                                  ; $5104: $01 $70 $15
    ld bc, $5042                                  ; $5107: $01 $42 $50
    ld e, $C3                                     ; $510A: $1E $C3
    add d                                         ; $510C: $82
    ld h, h                                       ; $510D: $64
    nop                                           ; $510E: $00
    ld b, b                                       ; $510F: $40
    jp nc, Jump_04C_5073                          ; $5110: $D2 $73 $50

    add hl, sp                                    ; $5113: $39
    jp Jump_04C_6482                              ; $5114: $C3 $82 $64


    jr nc, jr_04C_5159                            ; $5117: $30 $40

    ld h, [hl]                                    ; $5119: $66
    ld [hl], e                                    ; $511A: $73
    ld d, b                                       ; $511B: $50
    ld d, h                                       ; $511C: $54
    jp Jump_04C_6A88                              ; $511D: $C3 $88 $6A


    nop                                           ; $5120: $00
    ld b, b                                       ; $5121: $40
    inc hl                                        ; $5122: $23
    ld [hl], h                                    ; $5123: $74
    ld d, b                                       ; $5124: $50
    ld l, a                                       ; $5125: $6F
    jp Jump_04C_6482                              ; $5126: $C3 $82 $64


    nop                                           ; $5129: $00
    ld b, b                                       ; $512A: $40
    inc hl                                        ; $512B: $23
    ld [hl], h                                    ; $512C: $74
    ld d, b                                       ; $512D: $50
    adc d                                         ; $512E: $8A
    jp Jump_04C_5E82                              ; $512F: $C3 $82 $5E


    nop                                           ; $5132: $00
    ld b, b                                       ; $5133: $40
    inc hl                                        ; $5134: $23
    ld [hl], h                                    ; $5135: $74
    ld d, b                                       ; $5136: $50
    and l                                         ; $5137: $A5
    jp Jump_04C_6A7C                              ; $5138: $C3 $7C $6A


    nop                                           ; $513B: $00
    ld b, b                                       ; $513C: $40
    inc hl                                        ; $513D: $23
    ld [hl], h                                    ; $513E: $74
    ld d, b                                       ; $513F: $50
    ret nz                                        ; $5140: $C0

    jp Jump_04C_5E88                              ; $5141: $C3 $88 $5E


    nop                                           ; $5144: $00
    ld b, b                                       ; $5145: $40
    inc hl                                        ; $5146: $23
    ld [hl], h                                    ; $5147: $74
    ld d, b                                       ; $5148: $50
    db $DB                                        ; $5149: $DB
    jp Jump_04C_648C                              ; $514A: $C3 $8C $64


    nop                                           ; $514D: $00
    ld b, b                                       ; $514E: $40
    inc hl                                        ; $514F: $23
    ld [hl], h                                    ; $5150: $74
    ld d, b                                       ; $5151: $50
    or $C3                                        ; $5152: $F6 $C3
    add d                                         ; $5154: $82
    ld l, d                                       ; $5155: $6A
    nop                                           ; $5156: $00
    ld b, b                                       ; $5157: $40
    inc hl                                        ; $5158: $23

jr_04C_5159:
    ld [hl], h                                    ; $5159: $74
    ld d, b                                       ; $515A: $50
    ld de, $88C4                                  ; $515B: $11 $C4 $88
    ld h, h                                       ; $515E: $64
    nop                                           ; $515F: $00
    ld b, b                                       ; $5160: $40
    inc hl                                        ; $5161: $23
    ld [hl], h                                    ; $5162: $74
    ld l, e                                       ; $5163: $6B
    jr nc, jr_04C_51B5                            ; $5164: $30 $4F

    sbc a                                         ; $5166: $9F
    ld d, l                                       ; $5167: $55
    nop                                           ; $5168: $00
    add b                                         ; $5169: $80
    nop                                           ; $516A: $00
    ld l, e                                       ; $516B: $6B
    dec l                                         ; $516C: $2D
    ld b, c                                       ; $516D: $41
    ret nz                                        ; $516E: $C0

    ld d, [hl]                                    ; $516F: $56
    nop                                           ; $5170: $00
    add e                                         ; $5171: $83
    nop                                           ; $5172: $00
    ld l, a                                       ; $5173: $6F
    rrca                                          ; $5174: $0F
    rst $38                                       ; $5175: $FF
    ld a, a                                       ; $5176: $7F
    ld h, [hl]                                    ; $5177: $66
    ret nz                                        ; $5178: $C0

    ld b, e                                       ; $5179: $43
    ld b, b                                       ; $517A: $40
    ld a, c                                       ; $517B: $79
    rrca                                          ; $517C: $0F
    sub h                                         ; $517D: $94
    halt                                          ; $517E: $76
    jr nz, jr_04C_5190                            ; $517F: $20 $0F

    dec de                                        ; $5181: $1B
    dec e                                         ; $5182: $1D
    ld b, b                                       ; $5183: $40
    inc c                                         ; $5184: $0C
    ld [hl], b                                    ; $5185: $70
    inc c                                         ; $5186: $0C
    nop                                           ; $5187: $00
    add hl, sp                                    ; $5188: $39
    ld bc, $6B3C                                  ; $5189: $01 $3C $6B
    ld b, b                                       ; $518C: $40
    db $10                                        ; $518D: $10
    dec de                                        ; $518E: $1B
    inc c                                         ; $518F: $0C

jr_04C_5190:
    dec bc                                        ; $5190: $0B
    rrca                                          ; $5191: $0F
    ld b, b                                       ; $5192: $40
    ld [bc], a                                    ; $5193: $02
    ld l, a                                       ; $5194: $6F
    ld b, $FF                                     ; $5195: $06 $FF
    ld a, a                                       ; $5197: $7F
    ld b, b                                       ; $5198: $40
    ld [bc], a                                    ; $5199: $02
    ld a, c                                       ; $519A: $79
    ld b, $1B                                     ; $519B: $06 $1B
    dec bc                                        ; $519D: $0B
    dec bc                                        ; $519E: $0B
    db $10                                        ; $519F: $10
    ld [hl], b                                    ; $51A0: $70
    inc c                                         ; $51A1: $0C
    ld bc, $0140                                  ; $51A2: $01 $40 $01
    dec bc                                        ; $51A5: $0B
    ld de, $0240                                  ; $51A6: $11 $40 $02
    dec de                                        ; $51A9: $1B
    dec bc                                        ; $51AA: $0B
    dec bc                                        ; $51AB: $0B
    ld [de], a                                    ; $51AC: $12
    ld b, b                                       ; $51AD: $40
    inc b                                         ; $51AE: $04
    dec bc                                        ; $51AF: $0B
    inc de                                        ; $51B0: $13
    ld b, b                                       ; $51B1: $40
    ld b, $0B                                     ; $51B2: $06 $0B
    inc d                                         ; $51B4: $14

jr_04C_51B5:
    dec de                                        ; $51B5: $1B
    dec bc                                        ; $51B6: $0B
    ld b, b                                       ; $51B7: $40
    ld [$150B], sp                                ; $51B8: $08 $0B $15
    ld b, b                                       ; $51BB: $40
    ld a, [bc]                                    ; $51BC: $0A
    dec de                                        ; $51BD: $1B
    dec bc                                        ; $51BE: $0B
    dec bc                                        ; $51BF: $0B
    ld d, $40                                     ; $51C0: $16 $40
    db $10                                        ; $51C2: $10
    dec bc                                        ; $51C3: $0B
    rla                                           ; $51C4: $17
    dec de                                        ; $51C5: $1B
    dec bc                                        ; $51C6: $0B
    ld b, b                                       ; $51C7: $40
    jr jr_04C_51D5                                ; $51C8: $18 $0B

    jr jr_04C_51E7                                ; $51CA: $18 $1B

    dec bc                                        ; $51CC: $0B
    ld b, b                                       ; $51CD: $40
    jr nz, jr_04C_5212                            ; $51CE: $20 $42

    ld d, b                                       ; $51D0: $50
    ld e, $C3                                     ; $51D1: $1E $C3
    add d                                         ; $51D3: $82
    ld [hl], h                                    ; $51D4: $74

jr_04C_51D5:
    nop                                           ; $51D5: $00
    ld b, b                                       ; $51D6: $40
    ld c, d                                       ; $51D7: $4A
    ld [hl], e                                    ; $51D8: $73
    ld l, e                                       ; $51D9: $6B
    dec l                                         ; $51DA: $2D
    ld b, c                                       ; $51DB: $41
    ret nz                                        ; $51DC: $C0

    ld d, [hl]                                    ; $51DD: $56
    nop                                           ; $51DE: $00
    add b                                         ; $51DF: $80
    nop                                           ; $51E0: $00
    ld l, a                                       ; $51E1: $6F
    rrca                                          ; $51E2: $0F
    rst $38                                       ; $51E3: $FF
    ld a, a                                       ; $51E4: $7F
    ld h, [hl]                                    ; $51E5: $66
    ret nz                                        ; $51E6: $C0

jr_04C_51E7:
    ld b, e                                       ; $51E7: $43
    ld b, b                                       ; $51E8: $40
    ld a, c                                       ; $51E9: $79
    rrca                                          ; $51EA: $0F
    sub h                                         ; $51EB: $94
    halt                                          ; $51EC: $76
    jr nz, jr_04C_51FE                            ; $51ED: $20 $0F

    dec de                                        ; $51EF: $1B
    dec e                                         ; $51F0: $1D
    ld b, b                                       ; $51F1: $40
    inc c                                         ; $51F2: $0C
    ld [hl], b                                    ; $51F3: $70
    inc c                                         ; $51F4: $0C
    nop                                           ; $51F5: $00
    add hl, sp                                    ; $51F6: $39
    ld bc, $6B3C                                  ; $51F7: $01 $3C $6B
    dec de                                        ; $51FA: $1B
    inc bc                                        ; $51FB: $03
    ld b, b                                       ; $51FC: $40
    inc c                                         ; $51FD: $0C

jr_04C_51FE:
    dec bc                                        ; $51FE: $0B
    rrca                                          ; $51FF: $0F
    ld a, [hl-]                                   ; $5200: $3A
    ld [hl], b                                    ; $5201: $70
    inc c                                         ; $5202: $0C
    ld bc, $6F42                                  ; $5203: $01 $42 $6F
    rrca                                          ; $5206: $0F
    rst $38                                       ; $5207: $FF
    ld a, a                                       ; $5208: $7F
    ld a, c                                       ; $5209: $79
    rrca                                          ; $520A: $0F
    sub h                                         ; $520B: $94
    halt                                          ; $520C: $76
    jr nz, jr_04C_5216                            ; $520D: $20 $07

    dec de                                        ; $520F: $1B
    dec e                                         ; $5210: $1D
    ld b, b                                       ; $5211: $40

jr_04C_5212:
    inc c                                         ; $5212: $0C
    ld [hl], b                                    ; $5213: $70
    inc c                                         ; $5214: $0C
    nop                                           ; $5215: $00

jr_04C_5216:
    add hl, sp                                    ; $5216: $39
    ld bc, $6B54                                  ; $5217: $01 $54 $6B
    dec de                                        ; $521A: $1B
    rlca                                          ; $521B: $07
    ld b, b                                       ; $521C: $40
    ld [$703D], sp                                ; $521D: $08 $3D $70
    inc c                                         ; $5220: $0C
    ld bc, $3240                                  ; $5221: $01 $40 $32
    ld b, d                                       ; $5224: $42

    db $6F, $0F, $FF, $7F, $66, $C0, $43, $40, $79, $0F, $94, $76, $20, $0F

    dec de                                        ; $5233: $1B
    dec e                                         ; $5234: $1D
    ld b, b                                       ; $5235: $40
    inc c                                         ; $5236: $0C
    ld [hl], b                                    ; $5237: $70
    inc c                                         ; $5238: $0C
    nop                                           ; $5239: $00
    add hl, sp                                    ; $523A: $39
    ld bc, $6B3C                                  ; $523B: $01 $3C $6B
    dec de                                        ; $523E: $1B
    add hl, bc                                    ; $523F: $09
    dec sp                                        ; $5240: $3B
    ld [hl], b                                    ; $5241: $70
    inc c                                         ; $5242: $0C
    ld bc, $5042                                  ; $5243: $01 $42 $50
    ld d, h                                       ; $5246: $54
    jp Jump_04C_6264                              ; $5247: $C3 $64 $62


    nop                                           ; $524A: $00
    ld b, b                                       ; $524B: $40
    ld h, [hl]                                    ; $524C: $66
    ld a, l                                       ; $524D: $7D
    ld d, b                                       ; $524E: $50
    ld e, $C3                                     ; $524F: $1E $C3
    nop                                           ; $5251: $00
    ld [hl], h                                    ; $5252: $74
    nop                                           ; $5253: $00
    ld b, b                                       ; $5254: $40
    sub e                                         ; $5255: $93
    ld a, l                                       ; $5256: $7D
    ld d, b                                       ; $5257: $50
    add hl, sp                                    ; $5258: $39
    jp Jump_04C_5000                              ; $5259: $C3 $00 $50


    nop                                           ; $525C: $00
    ld b, b                                       ; $525D: $40
    sub e                                         ; $525E: $93
    ld a, l                                       ; $525F: $7D
    ld d, b                                       ; $5260: $50
    and l                                         ; $5261: $A5
    jp Jump_04C_5000                              ; $5262: $C3 $00 $50


    nop                                           ; $5265: $00
    ld c, h                                       ; $5266: $4C
    xor c                                         ; $5267: $A9
    ld d, d                                       ; $5268: $52
    ld l, e                                       ; $5269: $6B
    jr nz, jr_04C_52BB                            ; $526A: $20 $4F

    ld c, a                                       ; $526C: $4F
    ld a, c                                       ; $526D: $79
    nop                                           ; $526E: $00
    add b                                         ; $526F: $80
    nop                                           ; $5270: $00
    ld l, a                                       ; $5271: $6F
    rrca                                          ; $5272: $0F
    rst $38                                       ; $5273: $FF
    ld a, a                                       ; $5274: $7F
    ld h, [hl]                                    ; $5275: $66
    ret nz                                        ; $5276: $C0

    ld b, e                                       ; $5277: $43
    ld b, b                                       ; $5278: $40
    ld a, c                                       ; $5279: $79
    rrca                                          ; $527A: $0F
    sub h                                         ; $527B: $94
    halt                                          ; $527C: $76
    jr nz, jr_04C_528E                            ; $527D: $20 $0F

    dec de                                        ; $527F: $1B
    dec e                                         ; $5280: $1D
    ld b, b                                       ; $5281: $40
    inc c                                         ; $5282: $0C
    ld [hl], b                                    ; $5283: $70
    inc c                                         ; $5284: $0C
    nop                                           ; $5285: $00
    dec bc                                        ; $5286: $0B
    ld de, $140B                                  ; $5287: $11 $0B $14
    add hl, sp                                    ; $528A: $39
    ld bc, $6B3C                                  ; $528B: $01 $3C $6B

jr_04C_528E:
    dec bc                                        ; $528E: $0B
    rrca                                          ; $528F: $0F
    inc c                                         ; $5290: $0C
    ld de, $1B3A                                  ; $5291: $11 $3A $1B
    ld c, $40                                     ; $5294: $0E $40
    inc c                                         ; $5296: $0C
    dec bc                                        ; $5297: $0B
    db $10                                        ; $5298: $10
    ld [hl], b                                    ; $5299: $70
    inc c                                         ; $529A: $0C
    ld bc, $703B                                  ; $529B: $01 $3B $70
    inc c                                         ; $529E: $0C
    ld bc, $0840                                  ; $529F: $01 $40 $08
    ld b, b                                       ; $52A2: $40
    db $10                                        ; $52A3: $10
    inc c                                         ; $52A4: $0C
    rrca                                          ; $52A5: $0F
    inc c                                         ; $52A6: $0C
    db $10                                        ; $52A7: $10
    ld b, d                                       ; $52A8: $42
    ld b, b                                       ; $52A9: $40
    ld [$091B], sp                                ; $52AA: $08 $1B $09
    ld b, d                                       ; $52AD: $42
    ld d, b                                       ; $52AE: $50
    ld e, $C3                                     ; $52AF: $1E $C3
    ld [hl], h                                    ; $52B1: $74
    ld l, h                                       ; $52B2: $6C
    nop                                           ; $52B3: $00
    ld b, b                                       ; $52B4: $40
    and a                                         ; $52B5: $A7
    ld [hl], h                                    ; $52B6: $74
    ld l, e                                       ; $52B7: $6B
    scf                                           ; $52B8: $37
    ld b, c                                       ; $52B9: $41
    sub b                                         ; $52BA: $90

jr_04C_52BB:
    ld e, c                                       ; $52BB: $59
    nop                                           ; $52BC: $00
    add b                                         ; $52BD: $80
    nop                                           ; $52BE: $00
    ld l, a                                       ; $52BF: $6F
    rrca                                          ; $52C0: $0F
    rst $38                                       ; $52C1: $FF
    ld a, a                                       ; $52C2: $7F
    ld h, [hl]                                    ; $52C3: $66
    ret nz                                        ; $52C4: $C0

    ld b, e                                       ; $52C5: $43
    ld b, b                                       ; $52C6: $40
    ld a, c                                       ; $52C7: $79
    rrca                                          ; $52C8: $0F
    sub h                                         ; $52C9: $94
    halt                                          ; $52CA: $76
    jr nz, jr_04C_52DC                            ; $52CB: $20 $0F

    dec de                                        ; $52CD: $1B
    dec e                                         ; $52CE: $1D
    ld b, b                                       ; $52CF: $40
    inc c                                         ; $52D0: $0C
    ld [hl], b                                    ; $52D1: $70
    inc c                                         ; $52D2: $0C
    nop                                           ; $52D3: $00
    ld b, b                                       ; $52D4: $40
    inc c                                         ; $52D5: $0C
    dec de                                        ; $52D6: $1B
    ld a, [de]                                    ; $52D7: $1A
    ld b, b                                       ; $52D8: $40
    inc c                                         ; $52D9: $0C
    dec bc                                        ; $52DA: $0B
    rrca                                          ; $52DB: $0F

jr_04C_52DC:
    add hl, sp                                    ; $52DC: $39
    ld bc, $6B3C                                  ; $52DD: $01 $3C $6B
    inc c                                         ; $52E0: $0C
    rrca                                          ; $52E1: $0F
    dec de                                        ; $52E2: $1B
    ld c, $3B                                     ; $52E3: $0E $3B
    ld [hl], b                                    ; $52E5: $70
    inc c                                         ; $52E6: $0C
    ld bc, $5042                                  ; $52E7: $01 $42 $50
    ld e, $C3                                     ; $52EA: $1E $C3
    ld l, d                                       ; $52EC: $6A
    ld e, b                                       ; $52ED: $58
    nop                                           ; $52EE: $00
    ld b, b                                       ; $52EF: $40
    rst $38                                       ; $52F0: $FF
    ld [hl], d                                    ; $52F1: $72
    ld l, e                                       ; $52F2: $6B
    add hl, bc                                    ; $52F3: $09
    ld b, c                                       ; $52F4: $41
    ret nz                                        ; $52F5: $C0

    ld h, c                                       ; $52F6: $61
    nop                                           ; $52F7: $00
    add b                                         ; $52F8: $80
    nop                                           ; $52F9: $00
    ld l, a                                       ; $52FA: $6F
    rrca                                          ; $52FB: $0F
    rst $38                                       ; $52FC: $FF
    ld a, a                                       ; $52FD: $7F
    ld h, [hl]                                    ; $52FE: $66
    ret nz                                        ; $52FF: $C0

    ld b, e                                       ; $5300: $43
    ld b, b                                       ; $5301: $40
    ld a, c                                       ; $5302: $79
    rrca                                          ; $5303: $0F
    sub h                                         ; $5304: $94
    halt                                          ; $5305: $76
    jr nz, jr_04C_5317                            ; $5306: $20 $0F

    dec de                                        ; $5308: $1B
    dec e                                         ; $5309: $1D
    ld b, b                                       ; $530A: $40
    inc c                                         ; $530B: $0C
    ld [hl], b                                    ; $530C: $70
    inc c                                         ; $530D: $0C
    nop                                           ; $530E: $00
    dec bc                                        ; $530F: $0B
    rrca                                          ; $5310: $0F
    dec de                                        ; $5311: $1B
    dec b                                         ; $5312: $05
    add hl, sp                                    ; $5313: $39
    ld bc, $6B3C                                  ; $5314: $01 $3C $6B

jr_04C_5317:
    inc c                                         ; $5317: $0C
    rrca                                          ; $5318: $0F
    dec sp                                        ; $5319: $3B
    dec de                                        ; $531A: $1B
    add hl, bc                                    ; $531B: $09
    ld [hl], b                                    ; $531C: $70
    inc c                                         ; $531D: $0C
    ld bc, $5042                                  ; $531E: $01 $42 $50
    ld e, $C3                                     ; $5321: $1E $C3
    ld [hl], h                                    ; $5323: $74
    ld h, d                                       ; $5324: $62
    nop                                           ; $5325: $00
    ld b, b                                       ; $5326: $40
    ld a, b                                       ; $5327: $78
    ld [hl], e                                    ; $5328: $73
    ld d, b                                       ; $5329: $50
    add hl, sp                                    ; $532A: $39
    jp Jump_04C_626C                              ; $532B: $C3 $6C $62


    nop                                           ; $532E: $00
    ld b, b                                       ; $532F: $40
    and l                                         ; $5330: $A5
    ld [hl], e                                    ; $5331: $73
    ld l, e                                       ; $5332: $6B
    jr nz, jr_04C_5384                            ; $5333: $20 $4F

    adc a                                         ; $5335: $8F
    ld h, d                                       ; $5336: $62
    nop                                           ; $5337: $00
    add b                                         ; $5338: $80
    nop                                           ; $5339: $00
    ld l, a                                       ; $533A: $6F
    rrca                                          ; $533B: $0F
    rst $38                                       ; $533C: $FF
    ld a, a                                       ; $533D: $7F
    ld h, [hl]                                    ; $533E: $66
    ret nz                                        ; $533F: $C0

    ld b, e                                       ; $5340: $43
    ld b, b                                       ; $5341: $40
    ld a, c                                       ; $5342: $79
    rrca                                          ; $5343: $0F
    sub h                                         ; $5344: $94
    halt                                          ; $5345: $76
    jr nz, jr_04C_5357                            ; $5346: $20 $0F

    dec de                                        ; $5348: $1B
    dec e                                         ; $5349: $1D
    ld b, b                                       ; $534A: $40
    inc c                                         ; $534B: $0C
    ld [hl], b                                    ; $534C: $70
    inc c                                         ; $534D: $0C
    nop                                           ; $534E: $00
    add hl, sp                                    ; $534F: $39
    ld bc, $6B3C                                  ; $5350: $01 $3C $6B
    dec bc                                        ; $5353: $0B
    rrca                                          ; $5354: $0F
    dec bc                                        ; $5355: $0B
    db $10                                        ; $5356: $10

jr_04C_5357:
    dec de                                        ; $5357: $1B
    ld [$4040], sp                                ; $5358: $08 $40 $40
    inc c                                         ; $535B: $0C
    rrca                                          ; $535C: $0F
    inc c                                         ; $535D: $0C
    db $10                                        ; $535E: $10
    ld b, d                                       ; $535F: $42
    ld d, b                                       ; $5360: $50
    ld e, $C3                                     ; $5361: $1E $C3
    add d                                         ; $5363: $82
    ld h, h                                       ; $5364: $64
    nop                                           ; $5365: $00
    ld b, b                                       ; $5366: $40
    jp nc, Jump_04C_5073                          ; $5367: $D2 $73 $50

    add hl, sp                                    ; $536A: $39
    jp Jump_04C_6482                              ; $536B: $C3 $82 $64


    jr nc, jr_04C_53B0                            ; $536E: $30 $40

    ld h, [hl]                                    ; $5370: $66
    ld [hl], e                                    ; $5371: $73
    ld l, e                                       ; $5372: $6B
    jr nc, jr_04C_53C4                            ; $5373: $30 $4F

    sbc a                                         ; $5375: $9F
    ld d, l                                       ; $5376: $55
    nop                                           ; $5377: $00
    add b                                         ; $5378: $80
    nop                                           ; $5379: $00
    ld l, e                                       ; $537A: $6B
    dec l                                         ; $537B: $2D
    ld b, c                                       ; $537C: $41
    ret nz                                        ; $537D: $C0

    ld d, [hl]                                    ; $537E: $56
    nop                                           ; $537F: $00
    add e                                         ; $5380: $83
    nop                                           ; $5381: $00
    ld l, a                                       ; $5382: $6F
    rrca                                          ; $5383: $0F

jr_04C_5384:
    rst $38                                       ; $5384: $FF
    ld a, a                                       ; $5385: $7F
    ld h, [hl]                                    ; $5386: $66
    ret nz                                        ; $5387: $C0

    ld b, e                                       ; $5388: $43
    ld b, b                                       ; $5389: $40
    ld a, c                                       ; $538A: $79
    rrca                                          ; $538B: $0F
    sub h                                         ; $538C: $94
    halt                                          ; $538D: $76
    jr nz, jr_04C_539F                            ; $538E: $20 $0F

    dec de                                        ; $5390: $1B
    dec e                                         ; $5391: $1D
    ld b, b                                       ; $5392: $40
    inc c                                         ; $5393: $0C
    ld [hl], b                                    ; $5394: $70
    inc c                                         ; $5395: $0C
    nop                                           ; $5396: $00
    add hl, sp                                    ; $5397: $39
    ld bc, $6B3C                                  ; $5398: $01 $3C $6B
    ld b, b                                       ; $539B: $40
    ld a, [bc]                                    ; $539C: $0A
    dec de                                        ; $539D: $1B
    dec b                                         ; $539E: $05

jr_04C_539F:
    ld b, b                                       ; $539F: $40
    ld b, $0B                                     ; $53A0: $06 $0B
    rrca                                          ; $53A2: $0F
    ld b, b                                       ; $53A3: $40
    ld [bc], a                                    ; $53A4: $02
    ld l, a                                       ; $53A5: $6F
    ld b, $FF                                     ; $53A6: $06 $FF
    ld a, a                                       ; $53A8: $7F
    ld b, b                                       ; $53A9: $40
    ld [bc], a                                    ; $53AA: $02
    ld a, c                                       ; $53AB: $79
    ld b, $0B                                     ; $53AC: $06 $0B
    db $10                                        ; $53AE: $10
    ld [hl], b                                    ; $53AF: $70

jr_04C_53B0:
    inc c                                         ; $53B0: $0C
    ld bc, $5042                                  ; $53B1: $01 $42 $50
    ld e, $C3                                     ; $53B4: $1E $C3
    ld [hl], h                                    ; $53B6: $74
    ld l, h                                       ; $53B7: $6C
    nop                                           ; $53B8: $00
    ld b, b                                       ; $53B9: $40
    and a                                         ; $53BA: $A7
    ld [hl], h                                    ; $53BB: $74
    ld l, e                                       ; $53BC: $6B
    scf                                           ; $53BD: $37
    ld b, c                                       ; $53BE: $41
    sub b                                         ; $53BF: $90
    ld e, c                                       ; $53C0: $59
    nop                                           ; $53C1: $00
    add b                                         ; $53C2: $80
    nop                                           ; $53C3: $00

jr_04C_53C4:
    ld l, a                                       ; $53C4: $6F
    rrca                                          ; $53C5: $0F
    rst $38                                       ; $53C6: $FF
    ld a, a                                       ; $53C7: $7F
    ld h, [hl]                                    ; $53C8: $66
    ret nz                                        ; $53C9: $C0

    ld b, e                                       ; $53CA: $43
    ld b, b                                       ; $53CB: $40
    ld a, c                                       ; $53CC: $79
    rrca                                          ; $53CD: $0F
    sub h                                         ; $53CE: $94
    halt                                          ; $53CF: $76
    jr nz, jr_04C_53E1                            ; $53D0: $20 $0F

    dec de                                        ; $53D2: $1B
    dec e                                         ; $53D3: $1D
    ld b, b                                       ; $53D4: $40
    inc c                                         ; $53D5: $0C
    ld [hl], b                                    ; $53D6: $70
    inc c                                         ; $53D7: $0C
    nop                                           ; $53D8: $00
    add hl, sp                                    ; $53D9: $39
    ld bc, $6B3C                                  ; $53DA: $01 $3C $6B
    dec a                                         ; $53DD: $3D
    dec bc                                        ; $53DE: $0B
    rrca                                          ; $53DF: $0F
    dec de                                        ; $53E0: $1B

jr_04C_53E1:
    add hl, bc                                    ; $53E1: $09
    ld [hl], b                                    ; $53E2: $70
    inc c                                         ; $53E3: $0C
    ld bc, $0A40                                  ; $53E4: $01 $40 $0A
    dec de                                        ; $53E7: $1B
    add hl, bc                                    ; $53E8: $09
    ld b, b                                       ; $53E9: $40
    ld d, $1B                                     ; $53EA: $16 $1B
    ld c, $42                                     ; $53EC: $0E $42
    ld d, b                                       ; $53EE: $50
    ld e, $C3                                     ; $53EF: $1E $C3
    ld l, d                                       ; $53F1: $6A
    ld l, h                                       ; $53F2: $6C
    nop                                           ; $53F3: $00
    ld b, b                                       ; $53F4: $40
    add c                                         ; $53F5: $81
    ld [hl], h                                    ; $53F6: $74
    ld l, e                                       ; $53F7: $6B
    scf                                           ; $53F8: $37
    ld b, c                                       ; $53F9: $41
    sub b                                         ; $53FA: $90
    ld e, c                                       ; $53FB: $59
    nop                                           ; $53FC: $00
    add b                                         ; $53FD: $80
    nop                                           ; $53FE: $00
    ld l, a                                       ; $53FF: $6F
    rrca                                          ; $5400: $0F
    rst $38                                       ; $5401: $FF
    ld a, a                                       ; $5402: $7F
    ld h, [hl]                                    ; $5403: $66
    ret nz                                        ; $5404: $C0

    ld b, e                                       ; $5405: $43
    ld b, b                                       ; $5406: $40
    ld a, c                                       ; $5407: $79
    rrca                                          ; $5408: $0F
    sub h                                         ; $5409: $94
    halt                                          ; $540A: $76
    jr nz, jr_04C_541C                            ; $540B: $20 $0F

    dec de                                        ; $540D: $1B
    dec e                                         ; $540E: $1D
    ld b, b                                       ; $540F: $40
    inc c                                         ; $5410: $0C
    ld [hl], b                                    ; $5411: $70
    inc c                                         ; $5412: $0C
    nop                                           ; $5413: $00
    ld b, b                                       ; $5414: $40
    inc c                                         ; $5415: $0C
    dec de                                        ; $5416: $1B
    ld a, [de]                                    ; $5417: $1A
    ld b, b                                       ; $5418: $40
    inc c                                         ; $5419: $0C
    dec bc                                        ; $541A: $0B
    rrca                                          ; $541B: $0F

jr_04C_541C:
    add hl, sp                                    ; $541C: $39
    ld bc, $6B3C                                  ; $541D: $01 $3C $6B
    inc c                                         ; $5420: $0C
    rrca                                          ; $5421: $0F
    dec sp                                        ; $5422: $3B
    dec de                                        ; $5423: $1B
    add hl, bc                                    ; $5424: $09
    ld [hl], b                                    ; $5425: $70
    inc c                                         ; $5426: $0C
    ld bc, $5042                                  ; $5427: $01 $42 $50
    ld d, h                                       ; $542A: $54
    jp Jump_04C_7850                              ; $542B: $C3 $50 $78


    nop                                           ; $542E: $00
    ld b, b                                       ; $542F: $40
    rst $38                                       ; $5430: $FF
    ld [hl], d                                    ; $5431: $72
    ld d, b                                       ; $5432: $50
    ld e, $C3                                     ; $5433: $1E $C3
    ld h, h                                       ; $5435: $64
    ld l, [hl]                                    ; $5436: $6E
    nop                                           ; $5437: $00
    ld b, b                                       ; $5438: $40
    rst $38                                       ; $5439: $FF
    ld [hl], d                                    ; $543A: $72
    ld d, b                                       ; $543B: $50
    add hl, sp                                    ; $543C: $39
    jp Jump_04C_6450                              ; $543D: $C3 $50 $64


    nop                                           ; $5440: $00
    ld b, b                                       ; $5441: $40
    rst $38                                       ; $5442: $FF
    ld [hl], d                                    ; $5443: $72
    ld d, b                                       ; $5444: $50
    ld l, a                                       ; $5445: $6F
    jp $3250                                      ; $5446: $C3 $50 $32


    nop                                           ; $5449: $00
    ld b, b                                       ; $544A: $40
    rst $38                                       ; $544B: $FF
    ld [hl], d                                    ; $544C: $72
    ld d, b                                       ; $544D: $50
    adc d                                         ; $544E: $8A
    jp $3C64                                      ; $544F: $C3 $64 $3C


    nop                                           ; $5452: $00
    ld b, b                                       ; $5453: $40
    rst $38                                       ; $5454: $FF
    ld [hl], d                                    ; $5455: $72
    ld d, b                                       ; $5456: $50
    and l                                         ; $5457: $A5
    jp Jump_04C_4650                              ; $5458: $C3 $50 $46


    nop                                           ; $545B: $00
    ld b, b                                       ; $545C: $40
    rst $38                                       ; $545D: $FF
    ld [hl], d                                    ; $545E: $72
    ld d, b                                       ; $545F: $50
    ret nz                                        ; $5460: $C0

    jp $8750                                      ; $5461: $C3 $50 $87


    nop                                           ; $5464: $00
    ld b, b                                       ; $5465: $40
    rst $38                                       ; $5466: $FF
    ld [hl], d                                    ; $5467: $72
    ld d, b                                       ; $5468: $50
    db $DB                                        ; $5469: $DB
    jp Jump_04C_7D64                              ; $546A: $C3 $64 $7D


    nop                                           ; $546D: $00
    ld b, b                                       ; $546E: $40
    rst $38                                       ; $546F: $FF
    ld [hl], d                                    ; $5470: $72
    ld d, b                                       ; $5471: $50
    or $C3                                        ; $5472: $F6 $C3
    ld d, b                                       ; $5474: $50
    ld [hl], e                                    ; $5475: $73
    nop                                           ; $5476: $00
    ld b, b                                       ; $5477: $40
    rst $38                                       ; $5478: $FF
    ld [hl], d                                    ; $5479: $72
    ld l, e                                       ; $547A: $6B
    add hl, bc                                    ; $547B: $09
    ld b, c                                       ; $547C: $41

Jump_04C_547D:
    ret nz                                        ; $547D: $C0

    ld h, c                                       ; $547E: $61
    nop                                           ; $547F: $00
    add b                                         ; $5480: $80
    nop                                           ; $5481: $00
    ld l, a                                       ; $5482: $6F
    rrca                                          ; $5483: $0F
    rst $38                                       ; $5484: $FF
    ld a, a                                       ; $5485: $7F
    ld a, b                                       ; $5486: $78
    add b                                         ; $5487: $80
    ld b, e                                       ; $5488: $43
    ld b, b                                       ; $5489: $40
    add a                                         ; $548A: $87
    ld a, c                                       ; $548B: $79
    rrca                                          ; $548C: $0F
    sub h                                         ; $548D: $94
    halt                                          ; $548E: $76
    jr nz, @+$11                                  ; $548F: $20 $0F

    dec de                                        ; $5491: $1B
    dec e                                         ; $5492: $1D
    ld b, b                                       ; $5493: $40
    inc c                                         ; $5494: $0C
    ld [hl], b                                    ; $5495: $70
    inc c                                         ; $5496: $0C
    nop                                           ; $5497: $00
    dec bc                                        ; $5498: $0B
    ld de, $0F0B                                  ; $5499: $11 $0B $0F
    dec bc                                        ; $549C: $0B
    db $10                                        ; $549D: $10
    ld b, b                                       ; $549E: $40
    ld [$120B], sp                                ; $549F: $08 $0B $12
    dec bc                                        ; $54A2: $0B
    inc de                                        ; $54A3: $13
    dec bc                                        ; $54A4: $0B
    inc d                                         ; $54A5: $14
    ld b, b                                       ; $54A6: $40
    ld [$150B], sp                                ; $54A7: $08 $0B $15
    dec bc                                        ; $54AA: $0B
    ld d, $0B                                     ; $54AB: $16 $0B
    rla                                           ; $54AD: $17
    add hl, sp                                    ; $54AE: $39
    ld bc, $6B3C                                  ; $54AF: $01 $3C $6B
    dec de                                        ; $54B2: $1B
    ld c, $0C                                     ; $54B3: $0E $0C
    ld de, $0F0C                                  ; $54B5: $11 $0C $0F
    inc c                                         ; $54B8: $0C
    db $10                                        ; $54B9: $10
    ld a, [hl-]                                   ; $54BA: $3A
    ld [hl], b                                    ; $54BB: $70
    inc c                                         ; $54BC: $0C
    ld bc, $6F50                                  ; $54BD: $01 $50 $6F
    jp $0028                                      ; $54C0: $C3 $28 $00


    nop                                           ; $54C3: $00
    ld b, b                                       ; $54C4: $40
    ld sp, $5073                                  ; $54C5: $31 $73 $50
    adc d                                         ; $54C8: $8A
    jp $0A3C                                      ; $54C9: $C3 $3C $0A


    nop                                           ; $54CC: $00
    ld b, b                                       ; $54CD: $40
    ld sp, $5073                                  ; $54CE: $31 $73 $50
    and l                                         ; $54D1: $A5
    jp $1428                                      ; $54D2: $C3 $28 $14


    nop                                           ; $54D5: $00
    ld b, b                                       ; $54D6: $40
    ld sp, $4073                                  ; $54D7: $31 $73 $40
    inc b                                         ; $54DA: $04
    ld d, b                                       ; $54DB: $50
    ret nz                                        ; $54DC: $C0

    jp $0050                                      ; $54DD: $C3 $50 $00


    nop                                           ; $54E0: $00
    ld b, b                                       ; $54E1: $40
    ld sp, $5073                                  ; $54E2: $31 $73 $50
    db $DB                                        ; $54E5: $DB
    jp $0A64                                      ; $54E6: $C3 $64 $0A


    nop                                           ; $54E9: $00
    ld b, b                                       ; $54EA: $40
    ld sp, $5073                                  ; $54EB: $31 $73 $50
    or $C3                                        ; $54EE: $F6 $C3
    ld d, b                                       ; $54F0: $50
    inc d                                         ; $54F1: $14
    nop                                           ; $54F2: $00
    ld b, b                                       ; $54F3: $40
    ld sp, $4073                                  ; $54F4: $31 $73 $40
    ld a, [bc]                                    ; $54F7: $0A
    ld [hl], b                                    ; $54F8: $70
    inc c                                         ; $54F9: $0C
    ld bc, $0E1B                                  ; $54FA: $01 $1B $0E
    ld a, [hl-]                                   ; $54FD: $3A
    ld b, b                                       ; $54FE: $40
    ld a, [bc]                                    ; $54FF: $0A
    ld d, b                                       ; $5500: $50
    ret nz                                        ; $5501: $C0

    jp $0050                     ; $5502: $C3 $50 $00


    nop                                           ; $5505: $00
    ld b, b                                       ; $5506: $40
    ld sp, $5073                                  ; $5507: $31 $73 $50
    db $DB                                        ; $550A: $DB
    jp $0A64                                      ; $550B: $C3 $64 $0A


    nop                                           ; $550E: $00
    ld b, b                                       ; $550F: $40
    ld sp, $5073                                  ; $5510: $31 $73 $50
    or $C3                                        ; $5513: $F6 $C3
    ld d, b                                       ; $5515: $50
    inc d                                         ; $5516: $14
    nop                                           ; $5517: $00
    ld b, b                                       ; $5518: $40
    ld sp, $4073                                  ; $5519: $31 $73 $40
    ld c, $3A                                     ; $551C: $0E $3A
    dec de                                        ; $551E: $1B
    ld c, $70                                     ; $551F: $0E $70
    inc c                                         ; $5521: $0C
    ld bc, $6F50                                  ; $5522: $01 $50 $6F
    jp $0028                                      ; $5525: $C3 $28 $00


    nop                                           ; $5528: $00
    ld b, b                                       ; $5529: $40
    ld sp, $5073                                  ; $552A: $31 $73 $50
    adc d                                         ; $552D: $8A
    jp $0A3C                                      ; $552E: $C3 $3C $0A


    nop                                           ; $5531: $00
    ld b, b                                       ; $5532: $40
    ld sp, $5073                                  ; $5533: $31 $73 $50
    and l                                         ; $5536: $A5
    jp $1428                                      ; $5537: $C3 $28 $14


    nop                                           ; $553A: $00
    ld b, b                                       ; $553B: $40
    ld sp, $4073                                  ; $553C: $31 $73 $40
    jr @+$3C                                      ; $553F: $18 $3A

    dec de                                        ; $5541: $1B
    ld c, $70                                     ; $5542: $0E $70
    inc c                                         ; $5544: $0C
    ld bc, $150C                                  ; $5545: $01 $0C $15
    inc c                                         ; $5548: $0C
    ld d, $0C                                     ; $5549: $16 $0C
    rla                                           ; $554B: $17
    ld b, b                                       ; $554C: $40
    inc d                                         ; $554D: $14
    inc c                                         ; $554E: $0C
    ld [de], a                                    ; $554F: $12
    inc c                                         ; $5550: $0C
    inc de                                        ; $5551: $13
    inc c                                         ; $5552: $0C
    inc d                                         ; $5553: $14
    ld b, d                                       ; $5554: $42
    ld l, e                                       ; $5555: $6B
    inc h                                         ; $5556: $24
    ld b, c                                       ; $5557: $41
    nop                                           ; $5558: $00
    ld e, [hl]                                    ; $5559: $5E
    nop                                           ; $555A: $00
    add b                                         ; $555B: $80
    nop                                           ; $555C: $00
    ld l, a                                       ; $555D: $6F
    rrca                                          ; $555E: $0F
    rst $38                                       ; $555F: $FF
    ld a, a                                       ; $5560: $7F
    ld h, [hl]                                    ; $5561: $66
    ret nz                                        ; $5562: $C0

    ld b, e                                       ; $5563: $43
    ld b, b                                       ; $5564: $40
    ld a, c                                       ; $5565: $79
    rrca                                          ; $5566: $0F
    sub h                                         ; $5567: $94
    halt                                          ; $5568: $76
    jr nz, @+$11                                  ; $5569: $20 $0F

    ld b, b                                       ; $556B: $40
    jr jr_04C_55DE                                ; $556C: $18 $70

    inc c                                         ; $556E: $0C
    nop                                           ; $556F: $00
    dec bc                                        ; $5570: $0B
    rrca                                          ; $5571: $0F
    add hl, sp                                    ; $5572: $39
    ld bc, $6B3C                                  ; $5573: $01 $3C $6B
    dec sp                                        ; $5576: $3B
    ld [hl], b                                    ; $5577: $70
    inc c                                         ; $5578: $0C
    ld bc, $5042                                  ; $5579: $01 $42 $50
    ld e, $C3                                     ; $557C: $1E $C3
    ld e, b                                       ; $557E: $58
    ld h, d                                       ; $557F: $62
    nop                                           ; $5580: $00
    ld b, b                                       ; $5581: $40
    ld l, l                                       ; $5582: $6D
    ld [hl], l                                    ; $5583: $75
    ld l, e                                       ; $5584: $6B
    inc h                                         ; $5585: $24
    ld b, c                                       ; $5586: $41
    nop                                           ; $5587: $00
    ld e, [hl]                                    ; $5588: $5E
    nop                                           ; $5589: $00
    add b                                         ; $558A: $80
    nop                                           ; $558B: $00
    ld l, a                                       ; $558C: $6F
    rrca                                          ; $558D: $0F
    rst $38                                       ; $558E: $FF
    ld a, a                                       ; $558F: $7F
    ld h, [hl]                                    ; $5590: $66
    ret nz                                        ; $5591: $C0

    ld b, e                                       ; $5592: $43
    ld b, b                                       ; $5593: $40
    ld a, c                                       ; $5594: $79
    rrca                                          ; $5595: $0F
    sub h                                         ; $5596: $94
    halt                                          ; $5597: $76
    jr nz, jr_04C_55A9                            ; $5598: $20 $0F

    dec de                                        ; $559A: $1B
    dec e                                         ; $559B: $1D
    ld b, b                                       ; $559C: $40
    inc c                                         ; $559D: $0C
    ld [hl], b                                    ; $559E: $70
    inc c                                         ; $559F: $0C
    nop                                           ; $55A0: $00
    dec bc                                        ; $55A1: $0B
    rrca                                          ; $55A2: $0F
    add hl, sp                                    ; $55A3: $39
    ld bc, $6B3C                                  ; $55A4: $01 $3C $6B
    dec de                                        ; $55A7: $1B
    rra                                           ; $55A8: $1F

jr_04C_55A9:
    ld d, b                                       ; $55A9: $50
    ld e, $C3                                     ; $55AA: $1E $C3
    ld [hl], h                                    ; $55AC: $74
    ld h, d                                       ; $55AD: $62
    nop                                           ; $55AE: $00
    ld b, b                                       ; $55AF: $40
    add hl, bc                                    ; $55B0: $09
    ld [hl], l                                    ; $55B1: $75
    dec de                                        ; $55B2: $1B
    ld c, $40                                     ; $55B3: $0E $40
    jr nz, jr_04C_55C3                            ; $55B5: $20 $0C

    rrca                                          ; $55B7: $0F
    dec sp                                        ; $55B8: $3B
    ld [hl], b                                    ; $55B9: $70
    inc c                                         ; $55BA: $0C
    ld bc, $5042                                  ; $55BB: $01 $42 $50
    ld e, $C3                                     ; $55BE: $1E $C3
    add d                                         ; $55C0: $82
    ld a, b                                       ; $55C1: $78
    nop                                           ; $55C2: $00

jr_04C_55C3:
    ld b, b                                       ; $55C3: $40
    jp nc, Jump_04C_5073                          ; $55C4: $D2 $73 $50

    add hl, sp                                    ; $55C7: $39
    jp Jump_04C_7882                              ; $55C8: $C3 $82 $78


    jr nc, @+$42                                  ; $55CB: $30 $40

    ccf                                           ; $55CD: $3F
    ld [hl], h                                    ; $55CE: $74
    ld l, e                                       ; $55CF: $6B
    jr nc, jr_04C_5621                            ; $55D0: $30 $4F

    sbc a                                         ; $55D2: $9F
    ld d, l                                       ; $55D3: $55
    nop                                           ; $55D4: $00
    add b                                         ; $55D5: $80
    nop                                           ; $55D6: $00
    ld l, e                                       ; $55D7: $6B
    dec l                                         ; $55D8: $2D
    ld c, a                                       ; $55D9: $4F
    rrca                                          ; $55DA: $0F
    ld e, d                                       ; $55DB: $5A
    nop                                           ; $55DC: $00
    add e                                         ; $55DD: $83

jr_04C_55DE:
    nop                                           ; $55DE: $00
    ld l, a                                       ; $55DF: $6F
    rrca                                          ; $55E0: $0F
    rst $38                                       ; $55E1: $FF
    ld a, a                                       ; $55E2: $7F
    ld h, [hl]                                    ; $55E3: $66
    ret nz                                        ; $55E4: $C0

    ld b, e                                       ; $55E5: $43
    ld b, b                                       ; $55E6: $40
    ld a, c                                       ; $55E7: $79
    rrca                                          ; $55E8: $0F
    sub h                                         ; $55E9: $94
    halt                                          ; $55EA: $76
    jr nz, jr_04C_55FC                            ; $55EB: $20 $0F

    dec de                                        ; $55ED: $1B
    dec e                                         ; $55EE: $1D
    ld b, b                                       ; $55EF: $40
    inc c                                         ; $55F0: $0C
    ld [hl], b                                    ; $55F1: $70
    inc c                                         ; $55F2: $0C
    nop                                           ; $55F3: $00
    add hl, sp                                    ; $55F4: $39
    ld bc, $6B3C                                  ; $55F5: $01 $3C $6B
    ld b, b                                       ; $55F8: $40
    ld [bc], a                                    ; $55F9: $02
    dec de                                        ; $55FA: $1B
    ld [de], a                                    ; $55FB: $12

jr_04C_55FC:
    dec bc                                        ; $55FC: $0B
    rrca                                          ; $55FD: $0F
    ld b, b                                       ; $55FE: $40
    inc d                                         ; $55FF: $14
    ld l, a                                       ; $5600: $6F
    ld b, $FF                                     ; $5601: $06 $FF
    ld a, a                                       ; $5603: $7F
    ld b, b                                       ; $5604: $40
    ld [bc], a                                    ; $5605: $02
    ld a, c                                       ; $5606: $79
    ld b, $0B                                     ; $5607: $06 $0B
    db $10                                        ; $5609: $10
    ld [hl], b                                    ; $560A: $70
    inc c                                         ; $560B: $0C
    ld bc, $5042                                  ; $560C: $01 $42 $50
    ld e, $C3                                     ; $560F: $1E $C3
    add d                                         ; $5611: $82
    ld a, b                                       ; $5612: $78
    nop                                           ; $5613: $00
    ld b, b                                       ; $5614: $40
    ccf                                           ; $5615: $3F
    ld [hl], h                                    ; $5616: $74
    ld l, e                                       ; $5617: $6B
    dec l                                         ; $5618: $2D
    ld c, a                                       ; $5619: $4F
    rrca                                          ; $561A: $0F
    ld e, d                                       ; $561B: $5A
    nop                                           ; $561C: $00
    add b                                         ; $561D: $80
    nop                                           ; $561E: $00
    ld l, a                                       ; $561F: $6F
    rrca                                          ; $5620: $0F

jr_04C_5621:
    rst $38                                       ; $5621: $FF
    ld a, a                                       ; $5622: $7F
    ld h, [hl]                                    ; $5623: $66
    ret nz                                        ; $5624: $C0

    ld b, e                                       ; $5625: $43
    ld b, b                                       ; $5626: $40
    sub h                                         ; $5627: $94
    halt                                          ; $5628: $76
    jr nz, jr_04C_563A                            ; $5629: $20 $0F

    dec de                                        ; $562B: $1B
    dec e                                         ; $562C: $1D
    ld b, b                                       ; $562D: $40
    inc c                                         ; $562E: $0C
    ld [hl], b                                    ; $562F: $70
    inc c                                         ; $5630: $0C
    nop                                           ; $5631: $00
    add hl, sp                                    ; $5632: $39
    ld bc, $6B3C                                  ; $5633: $01 $3C $6B
    dec de                                        ; $5636: $1B
    inc bc                                        ; $5637: $03
    ld b, b                                       ; $5638: $40
    inc c                                         ; $5639: $0C

jr_04C_563A:
    dec bc                                        ; $563A: $0B
    rrca                                          ; $563B: $0F
    ld [hl], b                                    ; $563C: $70
    inc c                                         ; $563D: $0C
    ld bc, $5042                                  ; $563E: $01 $42 $50
    ld e, $C3                                     ; $5641: $1E $C3
    ld [hl], d                                    ; $5643: $72
    ld l, h                                       ; $5644: $6C
    nop                                           ; $5645: $00
    ld b, b                                       ; $5646: $40
    or b                                          ; $5647: $B0
    ld [hl], l                                    ; $5648: $75
    ld d, b                                       ; $5649: $50
    add hl, sp                                    ; $564A: $39
    jp $5C72                                      ; $564B: $C3 $72 $5C


    nop                                           ; $564E: $00
    ld b, b                                       ; $564F: $40
    or b                                          ; $5650: $B0
    ld [hl], l                                    ; $5651: $75
    ld d, b                                       ; $5652: $50
    ld d, h                                       ; $5653: $54
    jp Jump_04C_4C72                              ; $5654: $C3 $72 $4C


    nop                                           ; $5657: $00
    ld b, b                                       ; $5658: $40
    or b                                          ; $5659: $B0
    ld [hl], l                                    ; $565A: $75
    ld l, e                                       ; $565B: $6B
    inc de                                        ; $565C: $13
    ld c, [hl]                                    ; $565D: $4E
    ret z                                         ; $565E: $C8

    ld h, c                                       ; $565F: $61
    nop                                           ; $5660: $00
    add b                                         ; $5661: $80
    nop                                           ; $5662: $00
    ld h, [hl]                                    ; $5663: $66
    ret nz                                        ; $5664: $C0

    ld b, e                                       ; $5665: $43
    ld b, b                                       ; $5666: $40
    ld l, a                                       ; $5667: $6F
    rrca                                          ; $5668: $0F
    rst $38                                       ; $5669: $FF
    ld a, a                                       ; $566A: $7F
    sub h                                         ; $566B: $94
    halt                                          ; $566C: $76
    jr nz, jr_04C_567E                            ; $566D: $20 $0F

    dec de                                        ; $566F: $1B
    dec e                                         ; $5670: $1D
    ld b, b                                       ; $5671: $40
    inc c                                         ; $5672: $0C
    ld [hl], b                                    ; $5673: $70
    inc c                                         ; $5674: $0C
    nop                                           ; $5675: $00
    add hl, sp                                    ; $5676: $39
    ld bc, $6B3C                                  ; $5677: $01 $3C $6B
    ld b, b                                       ; $567A: $40
    ld [$181B], sp                                ; $567B: $08 $1B $18

jr_04C_567E:
    dec bc                                        ; $567E: $0B
    rrca                                          ; $567F: $0F
    ld b, b                                       ; $5680: $40
    ld [$100B], sp                                ; $5681: $08 $0B $10
    ld b, b                                       ; $5684: $40
    ld [$181B], sp                                ; $5685: $08 $1B $18
    dec bc                                        ; $5688: $0B
    ld de, $1040                                  ; $5689: $11 $40 $10
    dec de                                        ; $568C: $1B
    jr jr_04C_56CF                                ; $568D: $18 $40

    db $10                                        ; $568F: $10
    dec de                                        ; $5690: $1B
    ld c, $40                                     ; $5691: $0E $40
    inc e                                         ; $5693: $1C
    ld [hl], b                                    ; $5694: $70
    jr jr_04C_5698                                ; $5695: $18 $01

    ld b, d                                       ; $5697: $42

jr_04C_5698:
    ld d, b                                       ; $5698: $50
    ld e, $C3                                     ; $5699: $1E $C3
    ld [hl], d                                    ; $569B: $72
    ld a, h                                       ; $569C: $7C
    nop                                           ; $569D: $00
    ld b, b                                       ; $569E: $40
    dec c                                         ; $569F: $0D
    halt                                          ; $56A0: $76
    ld l, e                                       ; $56A1: $6B
    rra                                           ; $56A2: $1F
    ld c, [hl]                                    ; $56A3: $4E
    ld hl, sp+$62                                 ; $56A4: $F8 $62
    nop                                           ; $56A6: $00
    add b                                         ; $56A7: $80
    nop                                           ; $56A8: $00
    ld h, [hl]                                    ; $56A9: $66
    ret nz                                        ; $56AA: $C0

    ld b, e                                       ; $56AB: $43
    ld b, b                                       ; $56AC: $40
    ld l, a                                       ; $56AD: $6F
    rrca                                          ; $56AE: $0F
    rst $38                                       ; $56AF: $FF
    ld a, a                                       ; $56B0: $7F
    sub h                                         ; $56B1: $94
    halt                                          ; $56B2: $76
    jr nz, jr_04C_56C4                            ; $56B3: $20 $0F

    dec de                                        ; $56B5: $1B
    dec e                                         ; $56B6: $1D
    ld b, b                                       ; $56B7: $40
    inc c                                         ; $56B8: $0C
    ld [hl], b                                    ; $56B9: $70
    inc c                                         ; $56BA: $0C
    nop                                           ; $56BB: $00
    add hl, sp                                    ; $56BC: $39
    ld bc, $6B3C                                  ; $56BD: $01 $3C $6B
    dec de                                        ; $56C0: $1B
    inc b                                         ; $56C1: $04
    ld b, b                                       ; $56C2: $40
    inc c                                         ; $56C3: $0C

jr_04C_56C4:
    dec bc                                        ; $56C4: $0B
    rrca                                          ; $56C5: $0F
    ld b, b                                       ; $56C6: $40
    ld h, $5A                                     ; $56C7: $26 $5A
    ld c, h                                       ; $56C9: $4C
    rst $08                                       ; $56CA: $CF
    ld d, [hl]                                    ; $56CB: $56
    ld b, b                                       ; $56CC: $40
    jr c, jr_04C_5711                             ; $56CD: $38 $42

jr_04C_56CF:
    dec a                                         ; $56CF: $3D
    ld b, b                                       ; $56D0: $40
    ld [$0C70], sp                                ; $56D1: $08 $70 $0C
    ld bc, $5042                                  ; $56D4: $01 $42 $50
    ld e, $C3                                     ; $56D7: $1E $C3
    sub b                                         ; $56D9: $90
    ld c, b                                       ; $56DA: $48
    nop                                           ; $56DB: $00
    ld b, b                                       ; $56DC: $40
    dec a                                         ; $56DD: $3D
    halt                                          ; $56DE: $76
    ld d, b                                       ; $56DF: $50
    add hl, sp                                    ; $56E0: $39
    jp Jump_04C_6880                              ; $56E1: $C3 $80 $68


    nop                                           ; $56E4: $00
    ld b, b                                       ; $56E5: $40
    ld e, [hl]                                    ; $56E6: $5E
    halt                                          ; $56E7: $76
    ld d, b                                       ; $56E8: $50
    ld d, h                                       ; $56E9: $54
    jp Jump_04C_6860                              ; $56EA: $C3 $60 $68


    nop                                           ; $56ED: $00
    ld b, b                                       ; $56EE: $40
    dec a                                         ; $56EF: $3D
    halt                                          ; $56F0: $76
    ld d, b                                       ; $56F1: $50
    ld l, a                                       ; $56F2: $6F
    jp Jump_04C_4850                              ; $56F3: $C3 $50 $48


    nop                                           ; $56F6: $00
    ld b, b                                       ; $56F7: $40
    ld a, a                                       ; $56F8: $7F
    halt                                          ; $56F9: $76
    ld d, b                                       ; $56FA: $50
    adc d                                         ; $56FB: $8A
    jp $3070                                      ; $56FC: $C3 $70 $30


    nop                                           ; $56FF: $00
    ld b, b                                       ; $5700: $40
    and b                                         ; $5701: $A0
    halt                                          ; $5702: $76
    ld l, e                                       ; $5703: $6B
    ld b, b                                       ; $5704: $40
    ld c, [hl]                                    ; $5705: $4E
    add sp, $64                                   ; $5706: $E8 $64
    nop                                           ; $5708: $00
    add b                                         ; $5709: $80
    nop                                           ; $570A: $00
    ld h, [hl]                                    ; $570B: $66
    ret nz                                        ; $570C: $C0

    ld b, e                                       ; $570D: $43
    ld b, b                                       ; $570E: $40
    ld l, a                                       ; $570F: $6F
    rrca                                          ; $5710: $0F

jr_04C_5711:
    rst $38                                       ; $5711: $FF
    ld a, a                                       ; $5712: $7F
    sub h                                         ; $5713: $94
    halt                                          ; $5714: $76
    jr nz, jr_04C_5726                            ; $5715: $20 $0F

    dec de                                        ; $5717: $1B
    dec e                                         ; $5718: $1D
    ld b, b                                       ; $5719: $40
    inc c                                         ; $571A: $0C
    ld [hl], b                                    ; $571B: $70
    inc c                                         ; $571C: $0C
    nop                                           ; $571D: $00
    add hl, sp                                    ; $571E: $39
    ld bc, $6B3C                                  ; $571F: $01 $3C $6B
    ld l, h                                       ; $5722: $6C
    ld c, a                                       ; $5723: $4F
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00

jr_04C_5726:
    ld b, b                                       ; $5726: $40
    db $10                                        ; $5727: $10
    dec de                                        ; $5728: $1B
    ld [$0F0B], sp                                ; $5729: $08 $0B $0F
    ld b, b                                       ; $572C: $40
    db $10                                        ; $572D: $10
    dec de                                        ; $572E: $1B
    ld [$100B], sp                                ; $572F: $08 $0B $10
    ld b, b                                       ; $5732: $40
    db $10                                        ; $5733: $10
    dec de                                        ; $5734: $1B
    ld [$110B], sp                                ; $5735: $08 $0B $11
    ld b, b                                       ; $5738: $40
    db $10                                        ; $5739: $10
    dec de                                        ; $573A: $1B
    ld [$120B], sp                                ; $573B: $08 $0B $12
    ld b, b                                       ; $573E: $40
    db $10                                        ; $573F: $10
    dec de                                        ; $5740: $1B
    ld [$130B], sp                                ; $5741: $08 $0B $13
    ld b, b                                       ; $5744: $40
    ld b, b                                       ; $5745: $40
    dec de                                        ; $5746: $1B
    rlca                                          ; $5747: $07
    add hl, bc                                    ; $5748: $09
    rrca                                          ; $5749: $0F
    ld b, b                                       ; $574A: $40
    ld b, a                                       ; $574B: $47
    halt                                          ; $574C: $76
    add hl, bc                                    ; $574D: $09
    db $10                                        ; $574E: $10
    ld b, b                                       ; $574F: $40
    ld l, b                                       ; $5750: $68
    halt                                          ; $5751: $76
    add hl, bc                                    ; $5752: $09
    ld de, $4740                                  ; $5753: $11 $40 $47
    halt                                          ; $5756: $76
    add hl, bc                                    ; $5757: $09
    ld [de], a                                    ; $5758: $12
    ld b, b                                       ; $5759: $40
    adc c                                         ; $575A: $89
    halt                                          ; $575B: $76
    add hl, bc                                    ; $575C: $09
    inc de                                        ; $575D: $13
    ld b, b                                       ; $575E: $40
    xor d                                         ; $575F: $AA
    halt                                          ; $5760: $76
    dec sp                                        ; $5761: $3B
    ld [hl], b                                    ; $5762: $70
    inc c                                         ; $5763: $0C
    ld bc, $2040                                  ; $5764: $01 $40 $20
    ld l, l                                       ; $5767: $6D
    rrca                                          ; $5768: $0F
    ld b, d                                       ; $5769: $42
    ld d, b                                       ; $576A: $50
    ld e, $C3                                     ; $576B: $1E $C3
    ld [hl], d                                    ; $576D: $72
    ld e, h                                       ; $576E: $5C
    nop                                           ; $576F: $00
    ld b, b                                       ; $5770: $40
    pop bc                                        ; $5771: $C1
    halt                                          ; $5772: $76
    ld d, b                                       ; $5773: $50
    add hl, sp                                    ; $5774: $39
    jp Jump_04C_547D                              ; $5775: $C3 $7D $54


    nop                                           ; $5778: $00
    ld b, b                                       ; $5779: $40
    pop bc                                        ; $577A: $C1
    halt                                          ; $577B: $76
    ld d, b                                       ; $577C: $50
    ld d, h                                       ; $577D: $54
    jp Jump_04C_5883                              ; $577E: $C3 $83 $58


    nop                                           ; $5781: $00
    ld b, b                                       ; $5782: $40
    pop bc                                        ; $5783: $C1
    halt                                          ; $5784: $76
    ld d, b                                       ; $5785: $50
    ld l, a                                       ; $5786: $6F
    jp Jump_04C_5A79                              ; $5787: $C3 $79 $5A


    nop                                           ; $578A: $00
    ld b, b                                       ; $578B: $40
    pop bc                                        ; $578C: $C1
    halt                                          ; $578D: $76
    ld l, e                                       ; $578E: $6B
    inc l                                         ; $578F: $2C
    ld c, [hl]                                    ; $5790: $4E
    add sp, $68                                   ; $5791: $E8 $68
    nop                                           ; $5793: $00
    add b                                         ; $5794: $80
    nop                                           ; $5795: $00
    ld h, [hl]                                    ; $5796: $66
    ret nz                                        ; $5797: $C0

    ld b, e                                       ; $5798: $43
    ld b, b                                       ; $5799: $40
    ld l, a                                       ; $579A: $6F
    rrca                                          ; $579B: $0F
    rst $38                                       ; $579C: $FF
    ld a, a                                       ; $579D: $7F
    sub h                                         ; $579E: $94
    halt                                          ; $579F: $76
    jr nz, jr_04C_57B1                            ; $57A0: $20 $0F

    dec de                                        ; $57A2: $1B
    dec e                                         ; $57A3: $1D
    ld b, b                                       ; $57A4: $40
    inc c                                         ; $57A5: $0C
    ld [hl], b                                    ; $57A6: $70
    inc c                                         ; $57A7: $0C
    nop                                           ; $57A8: $00
    add hl, sp                                    ; $57A9: $39
    ld bc, $6B3C                                  ; $57AA: $01 $3C $6B
    ld e, d                                       ; $57AD: $5A
    ld c, h                                       ; $57AE: $4C
    bit 2, a                                      ; $57AF: $CB $57

jr_04C_57B1:
    ld b, b                                       ; $57B1: $40
    ld [$081B], sp                                ; $57B2: $08 $1B $08
    dec bc                                        ; $57B5: $0B
    rrca                                          ; $57B6: $0F
    ld b, b                                       ; $57B7: $40
    db $10                                        ; $57B8: $10
    dec bc                                        ; $57B9: $0B
    db $10                                        ; $57BA: $10
    ld b, b                                       ; $57BB: $40
    db $10                                        ; $57BC: $10
    dec bc                                        ; $57BD: $0B
    ld de, $1040                                  ; $57BE: $11 $40 $10
    dec bc                                        ; $57C1: $0B
    ld [de], a                                    ; $57C2: $12
    ld b, b                                       ; $57C3: $40
    jr nz, jr_04C_5801                            ; $57C4: $20 $3B

    ld b, b                                       ; $57C6: $40
    ld [$0F6D], sp                                ; $57C7: $08 $6D $0F
    ld b, d                                       ; $57CA: $42
    ld l, h                                       ; $57CB: $6C
    adc a                                         ; $57CC: $8F
    nop                                           ; $57CD: $00
    nop                                           ; $57CE: $00
    ld b, d                                       ; $57CF: $42
    ld d, b                                       ; $57D0: $50
    ld e, $C3                                     ; $57D1: $1E $C3
    ld [hl], d                                    ; $57D3: $72
    ld l, h                                       ; $57D4: $6C
    nop                                           ; $57D5: $00
    ld b, b                                       ; $57D6: $40
    ld b, c                                       ; $57D7: $41
    ld [hl], a                                    ; $57D8: $77
    ld l, e                                       ; $57D9: $6B
    db $10                                        ; $57DA: $10
    ld c, a                                       ; $57DB: $4F
    sbc a                                         ; $57DC: $9F
    ld e, b                                       ; $57DD: $58
    nop                                           ; $57DE: $00
    add b                                         ; $57DF: $80
    nop                                           ; $57E0: $00
    ld h, [hl]                                    ; $57E1: $66
    ret nz                                        ; $57E2: $C0

    ld b, e                                       ; $57E3: $43
    ld b, b                                       ; $57E4: $40
    ld l, a                                       ; $57E5: $6F
    rrca                                          ; $57E6: $0F
    rst $38                                       ; $57E7: $FF
    ld a, a                                       ; $57E8: $7F
    sub h                                         ; $57E9: $94
    halt                                          ; $57EA: $76
    jr nz, jr_04C_57FC                            ; $57EB: $20 $0F

    dec de                                        ; $57ED: $1B
    dec e                                         ; $57EE: $1D
    ld b, b                                       ; $57EF: $40
    inc c                                         ; $57F0: $0C
    ld [hl], b                                    ; $57F1: $70
    inc c                                         ; $57F2: $0C
    nop                                           ; $57F3: $00
    add hl, sp                                    ; $57F4: $39
    ld bc, $6B3C                                  ; $57F5: $01 $3C $6B
    ld b, b                                       ; $57F8: $40
    db $10                                        ; $57F9: $10
    dec bc                                        ; $57FA: $0B
    rrca                                          ; $57FB: $0F

jr_04C_57FC:
    dec de                                        ; $57FC: $1B
    ld c, $40                                     ; $57FD: $0E $40
    inc c                                         ; $57FF: $0C
    dec sp                                        ; $5800: $3B

jr_04C_5801:
    ld [hl], b                                    ; $5801: $70
    inc c                                         ; $5802: $0C
    ld bc, $5042                                  ; $5803: $01 $42 $50
    ld e, $C3                                     ; $5806: $1E $C3
    add b                                         ; $5808: $80
    ld h, b                                       ; $5809: $60
    nop                                           ; $580A: $00
    ld b, b                                       ; $580B: $40
    ld h, d                                       ; $580C: $62
    ld [hl], a                                    ; $580D: $77
    ld l, e                                       ; $580E: $6B
    rlca                                          ; $580F: $07
    ld c, a                                       ; $5810: $4F
    sbc a                                         ; $5811: $9F
    ld e, c                                       ; $5812: $59
    nop                                           ; $5813: $00
    add b                                         ; $5814: $80
    nop                                           ; $5815: $00
    ld h, [hl]                                    ; $5816: $66
    ret nz                                        ; $5817: $C0

    ld b, e                                       ; $5818: $43
    ld b, b                                       ; $5819: $40
    ld l, a                                       ; $581A: $6F
    rrca                                          ; $581B: $0F
    rst $38                                       ; $581C: $FF
    ld a, a                                       ; $581D: $7F
    sub h                                         ; $581E: $94
    halt                                          ; $581F: $76
    jr nz, jr_04C_5831                            ; $5820: $20 $0F

    dec de                                        ; $5822: $1B
    dec e                                         ; $5823: $1D
    ld b, b                                       ; $5824: $40
    inc c                                         ; $5825: $0C
    ld [hl], b                                    ; $5826: $70
    inc c                                         ; $5827: $0C
    nop                                           ; $5828: $00
    add hl, sp                                    ; $5829: $39
    ld bc, $6B3C                                  ; $582A: $01 $3C $6B
    ld b, b                                       ; $582D: $40
    db $10                                        ; $582E: $10
    dec bc                                        ; $582F: $0B
    rrca                                          ; $5830: $0F

jr_04C_5831:
    dec de                                        ; $5831: $1B
    add hl, bc                                    ; $5832: $09
    ld b, b                                       ; $5833: $40
    db $10                                        ; $5834: $10
    dec sp                                        ; $5835: $3B
    ld [hl], b                                    ; $5836: $70
    inc c                                         ; $5837: $0C
    ld bc, $091B                                  ; $5838: $01 $1B $09
    ld b, b                                       ; $583B: $40
    db $10                                        ; $583C: $10
    dec sp                                        ; $583D: $3B
    ld [hl], b                                    ; $583E: $70
    inc c                                         ; $583F: $0C
    ld bc, $0E1B                                  ; $5840: $01 $1B $0E
    ld b, b                                       ; $5843: $40
    ld [de], a                                    ; $5844: $12
    dec sp                                        ; $5845: $3B
    ld [hl], b                                    ; $5846: $70
    inc c                                         ; $5847: $0C
    ld bc, $0E1B                                  ; $5848: $01 $1B $0E
    ld b, b                                       ; $584B: $40
    db $10                                        ; $584C: $10
    dec sp                                        ; $584D: $3B
    ld [hl], b                                    ; $584E: $70
    inc c                                         ; $584F: $0C
    ld bc, $1040                                  ; $5850: $01 $40 $10
    ld b, d                                       ; $5853: $42
    ld d, b                                       ; $5854: $50
    ld e, $C3                                     ; $5855: $1E $C3
    ld l, b                                       ; $5857: $68
    ld h, h                                       ; $5858: $64
    nop                                           ; $5859: $00
    ld b, b                                       ; $585A: $40
    ld h, a                                       ; $585B: $67
    ld a, b                                       ; $585C: $78
    ld l, e                                       ; $585D: $6B
    ld hl, $7F4F                                  ; $585E: $21 $4F $7F
    ld h, b                                       ; $5861: $60
    nop                                           ; $5862: $00
    add b                                         ; $5863: $80
    nop                                           ; $5864: $00
    ld h, [hl]                                    ; $5865: $66
    ret nz                                        ; $5866: $C0

    ld b, e                                       ; $5867: $43
    ld b, b                                       ; $5868: $40
    ld l, a                                       ; $5869: $6F
    rrca                                          ; $586A: $0F
    rst $38                                       ; $586B: $FF
    ld a, a                                       ; $586C: $7F
    sub h                                         ; $586D: $94
    halt                                          ; $586E: $76
    jr nz, jr_04C_5880                            ; $586F: $20 $0F

    dec de                                        ; $5871: $1B
    dec e                                         ; $5872: $1D
    ld b, b                                       ; $5873: $40
    inc c                                         ; $5874: $0C
    ld [hl], b                                    ; $5875: $70
    inc c                                         ; $5876: $0C
    nop                                           ; $5877: $00
    add hl, sp                                    ; $5878: $39
    ld bc, $6B3C                                  ; $5879: $01 $3C $6B
    ld b, b                                       ; $587C: $40
    db $10                                        ; $587D: $10
    dec bc                                        ; $587E: $0B
    rrca                                          ; $587F: $0F

jr_04C_5880:
    dec de                                        ; $5880: $1B
    add hl, bc                                    ; $5881: $09
    dec sp                                        ; $5882: $3B

Jump_04C_5883:
    ld [hl], b                                    ; $5883: $70
    inc c                                         ; $5884: $0C
    ld bc, $1840                                  ; $5885: $01 $40 $18
    ld b, d                                       ; $5888: $42
    ld d, b                                       ; $5889: $50
    ld e, $C3                                     ; $588A: $1E $C3
    ld d, b                                       ; $588C: $50
    ld c, b                                       ; $588D: $48
    nop                                           ; $588E: $00
    ld b, b                                       ; $588F: $40
    add e                                         ; $5890: $83
    ld a, b                                       ; $5891: $78
    ld l, e                                       ; $5892: $6B
    dec [hl]                                      ; $5893: $35
    ld c, a                                       ; $5894: $4F
    adc a                                         ; $5895: $8F
    ld h, h                                       ; $5896: $64
    nop                                           ; $5897: $00
    add b                                         ; $5898: $80
    nop                                           ; $5899: $00
    ld h, [hl]                                    ; $589A: $66
    ret nz                                        ; $589B: $C0

    ld b, e                                       ; $589C: $43
    ld b, b                                       ; $589D: $40
    ld l, a                                       ; $589E: $6F
    rrca                                          ; $589F: $0F
    rst $38                                       ; $58A0: $FF
    ld a, a                                       ; $58A1: $7F
    sub h                                         ; $58A2: $94
    halt                                          ; $58A3: $76
    jr nz, jr_04C_58B5                            ; $58A4: $20 $0F

    dec de                                        ; $58A6: $1B
    dec e                                         ; $58A7: $1D
    ld b, b                                       ; $58A8: $40
    inc c                                         ; $58A9: $0C
    ld [hl], b                                    ; $58AA: $70
    inc c                                         ; $58AB: $0C
    nop                                           ; $58AC: $00
    add hl, sp                                    ; $58AD: $39
    ld bc, $6B3C                                  ; $58AE: $01 $3C $6B
    ld l, h                                       ; $58B1: $6C
    and b                                         ; $58B2: $A0
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00

jr_04C_58B5:
    dec bc                                        ; $58B5: $0B
    rrca                                          ; $58B6: $0F
    dec de                                        ; $58B7: $1B
    ld [$6840], sp                                ; $58B8: $08 $40 $68
    dec de                                        ; $58BB: $1B
    inc de                                        ; $58BC: $13
    ld b, b                                       ; $58BD: $40
    jr jr_04C_58C9                                ; $58BE: $18 $09

    rrca                                          ; $58C0: $0F
    ld b, b                                       ; $58C1: $40
    and e                                         ; $58C2: $A3
    ld a, b                                       ; $58C3: $78
    ld b, b                                       ; $58C4: $40
    jr nz, jr_04C_5902                            ; $58C5: $20 $3B

    ld [hl], b                                    ; $58C7: $70
    inc c                                         ; $58C8: $0C

jr_04C_58C9:
    ld bc, $0F6D                                  ; $58C9: $01 $6D $0F
    ld b, d                                       ; $58CC: $42
    ld d, b                                       ; $58CD: $50
    ld e, $C3                                     ; $58CE: $1E $C3
    ld a, b                                       ; $58D0: $78
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    ld b, b                                       ; $58D3: $40
    inc bc                                        ; $58D4: $03
    ld a, c                                       ; $58D5: $79
    ld l, e                                       ; $58D6: $6B
    ld a, $4F                                     ; $58D7: $3E $4F
    rst $18                                       ; $58D9: $DF
    ld h, a                                       ; $58DA: $67
    nop                                           ; $58DB: $00
    add b                                         ; $58DC: $80
    nop                                           ; $58DD: $00
    ld h, [hl]                                    ; $58DE: $66
    ret nz                                        ; $58DF: $C0

    ld b, e                                       ; $58E0: $43
    ld b, b                                       ; $58E1: $40
    ld l, a                                       ; $58E2: $6F
    rrca                                          ; $58E3: $0F
    rst $38                                       ; $58E4: $FF
    ld a, a                                       ; $58E5: $7F
    sub h                                         ; $58E6: $94
    halt                                          ; $58E7: $76
    jr nz, jr_04C_58F9                            ; $58E8: $20 $0F

    dec de                                        ; $58EA: $1B
    dec e                                         ; $58EB: $1D
    ld b, b                                       ; $58EC: $40
    inc c                                         ; $58ED: $0C
    ld [hl], b                                    ; $58EE: $70
    inc c                                         ; $58EF: $0C
    nop                                           ; $58F0: $00
    add hl, sp                                    ; $58F1: $39
    ld bc, $6B3C                                  ; $58F2: $01 $3C $6B
    ld b, b                                       ; $58F5: $40
    ld b, b                                       ; $58F6: $40
    dec bc                                        ; $58F7: $0B
    rrca                                          ; $58F8: $0F

jr_04C_58F9:
    ld b, b                                       ; $58F9: $40
    inc b                                         ; $58FA: $04
    dec de                                        ; $58FB: $1B
    add hl, de                                    ; $58FC: $19
    ld b, b                                       ; $58FD: $40
    ld c, $3B                                     ; $58FE: $0E $3B
    ld [hl], b                                    ; $5900: $70
    inc c                                         ; $5901: $0C

jr_04C_5902:
    ld bc, $191B                                  ; $5902: $01 $1B $19
    ld b, b                                       ; $5905: $40
    db $10                                        ; $5906: $10
    dec de                                        ; $5907: $1B
    add hl, de                                    ; $5908: $19
    ld b, d                                       ; $5909: $42
    ld b, d                                       ; $590A: $42
    ld d, b                                       ; $590B: $50
    ld e, $C3                                     ; $590C: $1E $C3
    add b                                         ; $590E: $80
    ld h, b                                       ; $590F: $60
    nop                                           ; $5910: $00
    ld b, b                                       ; $5911: $40
    sub c                                         ; $5912: $91
    ld a, c                                       ; $5913: $79
    ld l, e                                       ; $5914: $6B
    dec hl                                        ; $5915: $2B
    ld c, a                                       ; $5916: $4F
    ld l, a                                       ; $5917: $6F
    ld l, h                                       ; $5918: $6C
    nop                                           ; $5919: $00
    add b                                         ; $591A: $80
    nop                                           ; $591B: $00
    ld h, [hl]                                    ; $591C: $66
    ret nz                                        ; $591D: $C0

    ld b, e                                       ; $591E: $43
    ld b, b                                       ; $591F: $40
    ld l, a                                       ; $5920: $6F
    rrca                                          ; $5921: $0F
    rst $38                                       ; $5922: $FF
    ld a, a                                       ; $5923: $7F
    sub h                                         ; $5924: $94
    halt                                          ; $5925: $76
    jr nz, jr_04C_5937                            ; $5926: $20 $0F

    dec de                                        ; $5928: $1B
    dec e                                         ; $5929: $1D
    ld b, b                                       ; $592A: $40
    inc c                                         ; $592B: $0C
    ld [hl], b                                    ; $592C: $70
    inc c                                         ; $592D: $0C
    nop                                           ; $592E: $00
    add hl, sp                                    ; $592F: $39
    ld bc, $6B3C                                  ; $5930: $01 $3C $6B
    ld b, b                                       ; $5933: $40
    db $10                                        ; $5934: $10
    dec bc                                        ; $5935: $0B
    rrca                                          ; $5936: $0F

jr_04C_5937:
    dec de                                        ; $5937: $1B
    ld e, $40                                     ; $5938: $1E $40
    db $10                                        ; $593A: $10
    dec sp                                        ; $593B: $3B
    ld [hl], b                                    ; $593C: $70
    inc c                                         ; $593D: $0C
    ld bc, $0840                                  ; $593E: $01 $40 $08
    add hl, bc                                    ; $5941: $09
    rrca                                          ; $5942: $0F
    ld b, b                                       ; $5943: $40
    xor a                                         ; $5944: $AF
    ld a, c                                       ; $5945: $79
    ld b, b                                       ; $5946: $40
    ld [$0C70], sp                                ; $5947: $08 $70 $0C
    ld bc, $1040                                  ; $594A: $01 $40 $10
    dec sp                                        ; $594D: $3B
    ld [hl], b                                    ; $594E: $70
    inc c                                         ; $594F: $0C
    ld bc, $0840                                  ; $5950: $01 $40 $08
    add hl, bc                                    ; $5953: $09
    rrca                                          ; $5954: $0F
    ld b, b                                       ; $5955: $40
    call $4079                                    ; $5956: $CD $79 $40
    ld [$0C70], sp                                ; $5959: $08 $70 $0C
    ld bc, $0840                                  ; $595C: $01 $40 $08
    dec a                                         ; $595F: $3D
    ld b, b                                       ; $5960: $40
    ld [$0C70], sp                                ; $5961: $08 $70 $0C
    ld bc, $1040                                  ; $5964: $01 $40 $10
    inc sp                                        ; $5967: $33
    ld b, b                                       ; $5968: $40
    ld [$0F0C], sp                                ; $5969: $08 $0C $0F
    ld b, b                                       ; $596C: $40
    ld [$5042], sp                                ; $596D: $08 $42 $50
    ld e, $C3                                     ; $5970: $1E $C3
    ld h, h                                       ; $5972: $64
    ld a, b                                       ; $5973: $78
    nop                                           ; $5974: $00
    ld b, b                                       ; $5975: $40
    db $EB                                        ; $5976: $EB
    ld a, c                                       ; $5977: $79
    ld d, b                                       ; $5978: $50
    add hl, sp                                    ; $5979: $39
    jp Jump_04C_7878                              ; $597A: $C3 $78 $78


    nop                                           ; $597D: $00
    ld b, b                                       ; $597E: $40
    db $EB                                        ; $597F: $EB
    ld a, c                                       ; $5980: $79
    ld d, b                                       ; $5981: $50
    ld d, h                                       ; $5982: $54
    jp Jump_04C_788C                              ; $5983: $C3 $8C $78


    nop                                           ; $5986: $00
    ld b, b                                       ; $5987: $40
    db $EB                                        ; $5988: $EB
    ld a, c                                       ; $5989: $79
    ld l, e                                       ; $598A: $6B
    ld b, b                                       ; $598B: $40
    ld c, a                                       ; $598C: $4F
    rra                                           ; $598D: $1F
    ld l, a                                       ; $598E: $6F
    nop                                           ; $598F: $00
    add b                                         ; $5990: $80
    nop                                           ; $5991: $00
    ld l, a                                       ; $5992: $6F
    rrca                                          ; $5993: $0F
    rst $38                                       ; $5994: $FF
    ld a, a                                       ; $5995: $7F
    ld h, [hl]                                    ; $5996: $66
    ret nz                                        ; $5997: $C0

    ld b, e                                       ; $5998: $43
    ld b, b                                       ; $5999: $40
    sub h                                         ; $599A: $94
    halt                                          ; $599B: $76
    jr nz, jr_04C_59AD                            ; $599C: $20 $0F

    dec de                                        ; $599E: $1B
    dec e                                         ; $599F: $1D
    ld b, b                                       ; $59A0: $40
    inc c                                         ; $59A1: $0C
    ld [hl], b                                    ; $59A2: $70
    inc c                                         ; $59A3: $0C
    nop                                           ; $59A4: $00
    add hl, sp                                    ; $59A5: $39
    ld bc, $6B3C                                  ; $59A6: $01 $3C $6B
    ld l, h                                       ; $59A9: $6C
    ld h, b                                       ; $59AA: $60
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00

jr_04C_59AD:
    dec de                                        ; $59AD: $1B
    dec de                                        ; $59AE: $1B
    ccf                                           ; $59AF: $3F
    ld [hl], c                                    ; $59B0: $71
    ld b, $1F                                     ; $59B1: $06 $1F
    nop                                           ; $59B3: $00
    ld bc, $0670                                  ; $59B4: $01 $70 $06
    ld bc, $0C71                                  ; $59B7: $01 $71 $0C
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    ld bc, $0670                                  ; $59BC: $01 $70 $06
    ld bc, $0F0B                                  ; $59BF: $01 $0B $0F
    dec de                                        ; $59C2: $1B
    add hl, bc                                    ; $59C3: $09
    ld b, b                                       ; $59C4: $40
    inc c                                         ; $59C5: $0C
    dec bc                                        ; $59C6: $0B
    db $10                                        ; $59C7: $10
    ld b, b                                       ; $59C8: $40
    inc c                                         ; $59C9: $0C
    dec bc                                        ; $59CA: $0B
    ld de, $091B                                  ; $59CB: $11 $1B $09
    halt                                          ; $59CE: $76
    jr nz, jr_04C_59E0                            ; $59CF: $20 $0F

    ld b, d                                       ; $59D1: $42
    ld d, b                                       ; $59D2: $50
    ld e, $C3                                     ; $59D3: $1E $C3
    ld l, b                                       ; $59D5: $68
    ld [hl], b                                    ; $59D6: $70
    nop                                           ; $59D7: $00
    ld b, b                                       ; $59D8: $40
    rlca                                          ; $59D9: $07
    ld a, d                                       ; $59DA: $7A
    ld d, b                                       ; $59DB: $50
    add hl, sp                                    ; $59DC: $39
    jp Jump_04C_6462                              ; $59DD: $C3 $62 $64


jr_04C_59E0:
    nop                                           ; $59E0: $00
    ld b, b                                       ; $59E1: $40
    rlca                                          ; $59E2: $07
    ld a, d                                       ; $59E3: $7A
    ld d, b                                       ; $59E4: $50
    ld d, h                                       ; $59E5: $54
    jp Jump_04C_696E                              ; $59E6: $C3 $6E $69


    nop                                           ; $59E9: $00
    ld b, b                                       ; $59EA: $40
    rlca                                          ; $59EB: $07
    ld a, d                                       ; $59EC: $7A
    ld d, b                                       ; $59ED: $50
    ld l, a                                       ; $59EE: $6F
    jp Jump_04C_676B                              ; $59EF: $C3 $6B $67


    nop                                           ; $59F2: $00
    ld b, b                                       ; $59F3: $40
    rlca                                          ; $59F4: $07
    ld a, d                                       ; $59F5: $7A
    ld l, e                                       ; $59F6: $6B
    jr nc, @+$51                                  ; $59F7: $30 $4F

    rrca                                          ; $59F9: $0F
    ld [hl], l                                    ; $59FA: $75
    nop                                           ; $59FB: $00
    add b                                         ; $59FC: $80
    nop                                           ; $59FD: $00
    ld l, a                                       ; $59FE: $6F
    rrca                                          ; $59FF: $0F

Jump_04C_5A00:
    rst $38                                       ; $5A00: $FF
    ld a, a                                       ; $5A01: $7F
    ld h, [hl]                                    ; $5A02: $66
    ret nz                                        ; $5A03: $C0

    ld b, e                                       ; $5A04: $43
    ld b, b                                       ; $5A05: $40
    sub h                                         ; $5A06: $94
    halt                                          ; $5A07: $76
    jr nz, jr_04C_5A19                            ; $5A08: $20 $0F

    dec de                                        ; $5A0A: $1B
    dec e                                         ; $5A0B: $1D
    ld b, b                                       ; $5A0C: $40
    inc c                                         ; $5A0D: $0C
    ld [hl], b                                    ; $5A0E: $70
    inc c                                         ; $5A0F: $0C
    nop                                           ; $5A10: $00
    add hl, sp                                    ; $5A11: $39
    ld bc, $6B3C                                  ; $5A12: $01 $3C $6B
    ld b, b                                       ; $5A15: $40
    ld [$0F1B], sp                                ; $5A16: $08 $1B $0F

jr_04C_5A19:
    dec bc                                        ; $5A19: $0B
    rrca                                          ; $5A1A: $0F
    ld [hl], b                                    ; $5A1B: $70
    inc c                                         ; $5A1C: $0C
    ld bc, $100B                                  ; $5A1D: $01 $0B $10
    ld [hl], b                                    ; $5A20: $70
    inc c                                         ; $5A21: $0C
    ld bc, $110B                                  ; $5A22: $01 $0B $11
    ld [hl], b                                    ; $5A25: $70
    inc c                                         ; $5A26: $0C
    ld bc, $120B                                  ; $5A27: $01 $0B $12
    ld b, b                                       ; $5A2A: $40
    db $10                                        ; $5A2B: $10
    dec de                                        ; $5A2C: $1B
    db $10                                        ; $5A2D: $10
    ld [hl], b                                    ; $5A2E: $70
    inc c                                         ; $5A2F: $0C
    ld bc, $5042                                  ; $5A30: $01 $42 $50
    ld e, $C3                                     ; $5A33: $1E $C3
    ld a, d                                       ; $5A35: $7A
    ld [hl], b                                    ; $5A36: $70
    nop                                           ; $5A37: $00
    ld b, b                                       ; $5A38: $40
    jr z, jr_04C_5AB5                             ; $5A39: $28 $7A

    ld d, b                                       ; $5A3B: $50
    add hl, sp                                    ; $5A3C: $39
    jp Jump_04C_7882                              ; $5A3D: $C3 $82 $78


    nop                                           ; $5A40: $00
    ld b, b                                       ; $5A41: $40
    jr z, jr_04C_5ABE                             ; $5A42: $28 $7A

    ld d, b                                       ; $5A44: $50
    ld d, h                                       ; $5A45: $54
    jp $808A                                      ; $5A46: $C3 $8A $80


    nop                                           ; $5A49: $00
    ld b, b                                       ; $5A4A: $40
    jr z, @+$7C                                   ; $5A4B: $28 $7A

    ld l, e                                       ; $5A4D: $6B
    dec l                                         ; $5A4E: $2D
    ld c, a                                       ; $5A4F: $4F
    rra                                           ; $5A50: $1F
    ld [hl], e                                    ; $5A51: $73
    nop                                           ; $5A52: $00
    add b                                         ; $5A53: $80
    nop                                           ; $5A54: $00
    ld l, a                                       ; $5A55: $6F
    rrca                                          ; $5A56: $0F
    rst $38                                       ; $5A57: $FF
    ld a, a                                       ; $5A58: $7F
    ld h, [hl]                                    ; $5A59: $66
    ret nz                                        ; $5A5A: $C0

    ld b, e                                       ; $5A5B: $43
    ld b, b                                       ; $5A5C: $40
    sub h                                         ; $5A5D: $94
    halt                                          ; $5A5E: $76
    jr nz, jr_04C_5A70                            ; $5A5F: $20 $0F

    dec de                                        ; $5A61: $1B
    dec e                                         ; $5A62: $1D
    ld b, b                                       ; $5A63: $40
    inc c                                         ; $5A64: $0C
    ld [hl], b                                    ; $5A65: $70
    inc c                                         ; $5A66: $0C
    nop                                           ; $5A67: $00
    add hl, sp                                    ; $5A68: $39
    ld bc, $6B3C                                  ; $5A69: $01 $3C $6B
    ld b, b                                       ; $5A6C: $40
    ld [$0F0B], sp                                ; $5A6D: $08 $0B $0F

jr_04C_5A70:
    dec bc                                        ; $5A70: $0B
    db $10                                        ; $5A71: $10
    dec bc                                        ; $5A72: $0B
    ld de, $091B                                  ; $5A73: $11 $1B $09
    ld b, b                                       ; $5A76: $40
    inc c                                         ; $5A77: $0C
    ld a, [hl-]                                   ; $5A78: $3A

Jump_04C_5A79:
    ld [hl], b                                    ; $5A79: $70
    inc c                                         ; $5A7A: $0C
    ld bc, $5042                                  ; $5A7B: $01 $42 $50
    ld e, $C3                                     ; $5A7E: $1E $C3
    ld a, [hl-]                                   ; $5A80: $3A
    ld d, b                                       ; $5A81: $50
    nop                                           ; $5A82: $00
    ld b, b                                       ; $5A83: $40
    call Call_04C_6B7B                            ; $5A84: $CD $7B $6B
    jr c, @+$43                                   ; $5A87: $38 $41

    ld d, b                                       ; $5A89: $50
    ld c, h                                       ; $5A8A: $4C
    nop                                           ; $5A8B: $00
    add b                                         ; $5A8C: $80
    nop                                           ; $5A8D: $00
    ld h, [hl]                                    ; $5A8E: $66
    ret nz                                        ; $5A8F: $C0

    ld b, e                                       ; $5A90: $43
    ld b, b                                       ; $5A91: $40
    ld l, a                                       ; $5A92: $6F
    rrca                                          ; $5A93: $0F
    rst $38                                       ; $5A94: $FF
    ld a, a                                       ; $5A95: $7F
    sub h                                         ; $5A96: $94
    halt                                          ; $5A97: $76
    jr nz, jr_04C_5AA9                            ; $5A98: $20 $0F

    dec de                                        ; $5A9A: $1B
    dec e                                         ; $5A9B: $1D
    ld b, b                                       ; $5A9C: $40
    inc c                                         ; $5A9D: $0C
    ld [hl], b                                    ; $5A9E: $70
    inc c                                         ; $5A9F: $0C
    nop                                           ; $5AA0: $00
    add hl, sp                                    ; $5AA1: $39
    ld bc, $6B3C                                  ; $5AA2: $01 $3C $6B
    ld l, h                                       ; $5AA5: $6C
    ld h, b                                       ; $5AA6: $60
    rst $38                                       ; $5AA7: $FF
    ld a, a                                       ; $5AA8: $7F

jr_04C_5AA9:
    ld b, b                                       ; $5AA9: $40
    ld [$0F0B], sp                                ; $5AAA: $08 $0B $0F
    dec de                                        ; $5AAD: $1B
    ld [$6440], sp                                ; $5AAE: $08 $40 $64
    ld [hl], c                                    ; $5AB1: $71
    rrca                                          ; $5AB2: $0F
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00

jr_04C_5AB5:
    ld bc, $2C40                                  ; $5AB5: $01 $40 $2C
    dec de                                        ; $5AB8: $1B
    add hl, bc                                    ; $5AB9: $09
    ld a, [hl-]                                   ; $5ABA: $3A
    halt                                          ; $5ABB: $76
    jr nz, jr_04C_5ACD                            ; $5ABC: $20 $0F

jr_04C_5ABE:
    ld b, d                                       ; $5ABE: $42
    ld d, b                                       ; $5ABF: $50
    ld e, $C3                                     ; $5AC0: $1E $C3
    ld a, [hl-]                                   ; $5AC2: $3A
    ld d, b                                       ; $5AC3: $50
    nop                                           ; $5AC4: $00
    ld b, b                                       ; $5AC5: $40
    call Call_04C_6B7B                            ; $5AC6: $CD $7B $6B
    jr c, jr_04C_5B0C                             ; $5AC9: $38 $41

    ld d, b                                       ; $5ACB: $50
    ld c, h                                       ; $5ACC: $4C

jr_04C_5ACD:
    nop                                           ; $5ACD: $00
    add b                                         ; $5ACE: $80
    nop                                           ; $5ACF: $00
    ld l, a                                       ; $5AD0: $6F
    rrca                                          ; $5AD1: $0F
    rst $38                                       ; $5AD2: $FF
    ld a, a                                       ; $5AD3: $7F
    ld a, b                                       ; $5AD4: $78
    nop                                           ; $5AD5: $00
    ld b, e                                       ; $5AD6: $43
    ld b, b                                       ; $5AD7: $40
    add a                                         ; $5AD8: $87
    ld a, c                                       ; $5AD9: $79
    rrca                                          ; $5ADA: $0F
    sub h                                         ; $5ADB: $94
    halt                                          ; $5ADC: $76
    jr nz, jr_04C_5AEE                            ; $5ADD: $20 $0F

    dec de                                        ; $5ADF: $1B
    dec e                                         ; $5AE0: $1D
    ld b, b                                       ; $5AE1: $40
    inc c                                         ; $5AE2: $0C
    ld [hl], b                                    ; $5AE3: $70
    inc c                                         ; $5AE4: $0C
    nop                                           ; $5AE5: $00
    add hl, sp                                    ; $5AE6: $39
    ld bc, $6B3C                                  ; $5AE7: $01 $3C $6B
    ld l, h                                       ; $5AEA: $6C
    ld h, b                                       ; $5AEB: $60
    rst $38                                       ; $5AEC: $FF
    ld a, a                                       ; $5AED: $7F

jr_04C_5AEE:
    ld b, b                                       ; $5AEE: $40
    ld [$0F0B], sp                                ; $5AEF: $08 $0B $0F
    dec de                                        ; $5AF2: $1B
    ld [$6440], sp                                ; $5AF3: $08 $40 $64
    ld [hl], c                                    ; $5AF6: $71
    rrca                                          ; $5AF7: $0F
    rst $38                                       ; $5AF8: $FF
    ld a, a                                       ; $5AF9: $7F
    ld bc, $2C40                                  ; $5AFA: $01 $40 $2C
    halt                                          ; $5AFD: $76
    jr nz, jr_04C_5B0F                            ; $5AFE: $20 $0F

    ld b, d                                       ; $5B00: $42
    ld d, b                                       ; $5B01: $50
    ld e, $C3                                     ; $5B02: $1E $C3
    add d                                         ; $5B04: $82
    ld a, b                                       ; $5B05: $78
    nop                                           ; $5B06: $00
    ld b, b                                       ; $5B07: $40
    ld h, l                                       ; $5B08: $65
    ld a, h                                       ; $5B09: $7C
    ld l, e                                       ; $5B0A: $6B
    ld b, b                                       ; $5B0B: $40

jr_04C_5B0C:
    ld b, c                                       ; $5B0C: $41
    nop                                           ; $5B0D: $00
    ld c, b                                       ; $5B0E: $48

jr_04C_5B0F:
    nop                                           ; $5B0F: $00
    add b                                         ; $5B10: $80
    nop                                           ; $5B11: $00
    ld l, a                                       ; $5B12: $6F
    rrca                                          ; $5B13: $0F
    rst $38                                       ; $5B14: $FF
    ld a, a                                       ; $5B15: $7F
    ld h, [hl]                                    ; $5B16: $66
    ret nz                                        ; $5B17: $C0

    ld b, e                                       ; $5B18: $43
    ld b, b                                       ; $5B19: $40
    sub h                                         ; $5B1A: $94
    halt                                          ; $5B1B: $76
    jr nz, jr_04C_5B2D                            ; $5B1C: $20 $0F

    dec de                                        ; $5B1E: $1B
    dec e                                         ; $5B1F: $1D
    ld b, b                                       ; $5B20: $40
    inc c                                         ; $5B21: $0C
    ld [hl], b                                    ; $5B22: $70
    inc c                                         ; $5B23: $0C
    nop                                           ; $5B24: $00
    add hl, sp                                    ; $5B25: $39
    ld bc, $6B3C                                  ; $5B26: $01 $3C $6B
    ld [hl], l                                    ; $5B29: $75
    ld bc, $0840                                  ; $5B2A: $01 $40 $08

jr_04C_5B2D:
    dec bc                                        ; $5B2D: $0B
    rrca                                          ; $5B2E: $0F
    dec de                                        ; $5B2F: $1B
    ld [de], a                                    ; $5B30: $12
    dec a                                         ; $5B31: $3D
    ld b, b                                       ; $5B32: $40
    jr nz, @+$78                                  ; $5B33: $20 $76

    jr nz, jr_04C_5B46                            ; $5B35: $20 $0F

    ld b, d                                       ; $5B37: $42
    ld d, b                                       ; $5B38: $50
    ld e, $C3                                     ; $5B39: $1E $C3
    ld c, d                                       ; $5B3B: $4A
    ld d, b                                       ; $5B3C: $50
    nop                                           ; $5B3D: $00
    ld b, b                                       ; $5B3E: $40
    ccf                                           ; $5B3F: $3F
    ld a, d                                       ; $5B40: $7A
    ld l, e                                       ; $5B41: $6B
    ld b, b                                       ; $5B42: $40
    ld b, c                                       ; $5B43: $41
    nop                                           ; $5B44: $00
    ld b, b                                       ; $5B45: $40

jr_04C_5B46:
    nop                                           ; $5B46: $00
    add b                                         ; $5B47: $80
    nop                                           ; $5B48: $00
    ld l, a                                       ; $5B49: $6F
    rrca                                          ; $5B4A: $0F
    rst $38                                       ; $5B4B: $FF
    ld a, a                                       ; $5B4C: $7F
    ld h, [hl]                                    ; $5B4D: $66
    ret nz                                        ; $5B4E: $C0

    ld b, e                                       ; $5B4F: $43
    ld b, b                                       ; $5B50: $40
    sub h                                         ; $5B51: $94
    halt                                          ; $5B52: $76
    jr nz, jr_04C_5B64                            ; $5B53: $20 $0F

    dec de                                        ; $5B55: $1B
    dec e                                         ; $5B56: $1D
    ld b, b                                       ; $5B57: $40
    inc c                                         ; $5B58: $0C
    ld [hl], b                                    ; $5B59: $70
    inc c                                         ; $5B5A: $0C
    nop                                           ; $5B5B: $00
    add hl, sp                                    ; $5B5C: $39
    ld bc, $6B3C                                  ; $5B5D: $01 $3C $6B
    ld l, h                                       ; $5B60: $6C
    ld h, b                                       ; $5B61: $60
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00

jr_04C_5B64:
    dec bc                                        ; $5B64: $0B
    rrca                                          ; $5B65: $0F
    ld b, b                                       ; $5B66: $40
    jr nc, @+$73                                  ; $5B67: $30 $71

    rrca                                          ; $5B69: $0F
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    ld bc, $0175                                  ; $5B6C: $01 $75 $01
    ld a, [hl-]                                   ; $5B6F: $3A
    ld [hl], b                                    ; $5B70: $70
    jr jr_04C_5B74                                ; $5B71: $18 $01

    halt                                          ; $5B73: $76

jr_04C_5B74:
    jr nz, jr_04C_5B85                            ; $5B74: $20 $0F

    ld b, d                                       ; $5B76: $42
    dec b                                         ; $5B77: $05
    rrca                                          ; $5B78: $0F
    ld l, e                                       ; $5B79: $6B
    ld c, d                                       ; $5B7A: $4A
    ld [hl-], a                                   ; $5B7B: $32
    ld d, b                                       ; $5B7C: $50
    ld [hl-], a                                   ; $5B7D: $32
    jp c, Jump_04C_4000                           ; $5B7E: $DA $00 $40

    add hl, bc                                    ; $5B81: $09
    ld a, [hl]                                    ; $5B82: $7E
    ld [hl+], a                                   ; $5B83: $22
    inc b                                         ; $5B84: $04

jr_04C_5B85:
    ld b, b                                       ; $5B85: $40
    ld l, e                                       ; $5B86: $6B
    dec b                                         ; $5B87: $05
    ld b, c                                       ; $5B88: $41
    nop                                           ; $5B89: $00
    ld c, h                                       ; $5B8A: $4C
    nop                                           ; $5B8B: $00
    add b                                         ; $5B8C: $80
    nop                                           ; $5B8D: $00
    ld l, a                                       ; $5B8E: $6F
    rrca                                          ; $5B8F: $0F
    rst $38                                       ; $5B90: $FF
    ld a, a                                       ; $5B91: $7F
    ld h, [hl]                                    ; $5B92: $66
    ret nz                                        ; $5B93: $C0

    ld b, e                                       ; $5B94: $43
    ld b, b                                       ; $5B95: $40
    sub h                                         ; $5B96: $94
    halt                                          ; $5B97: $76
    jr nz, jr_04C_5BA9                            ; $5B98: $20 $0F

    dec de                                        ; $5B9A: $1B
    ld b, $40                                     ; $5B9B: $06 $40
    inc c                                         ; $5B9D: $0C
    ld [hl], b                                    ; $5B9E: $70
    inc c                                         ; $5B9F: $0C
    nop                                           ; $5BA0: $00
    dec bc                                        ; $5BA1: $0B
    rrca                                          ; $5BA2: $0F
    ld b, b                                       ; $5BA3: $40
    jr c, jr_04C_5BDF                             ; $5BA4: $38 $39

    ld bc, $6B54                                  ; $5BA6: $01 $54 $6B

jr_04C_5BA9:
    ld b, b                                       ; $5BA9: $40
    jr nz, jr_04C_5C06                            ; $5BAA: $20 $5A

    ld c, h                                       ; $5BAC: $4C
    cp [hl]                                       ; $5BAD: $BE
    ld e, e                                       ; $5BAE: $5B
    ld l, h                                       ; $5BAF: $6C
    ld h, b                                       ; $5BB0: $60
    cp a                                          ; $5BB1: $BF
    inc d                                         ; $5BB2: $14
    inc c                                         ; $5BB3: $0C
    rrca                                          ; $5BB4: $0F
    halt                                          ; $5BB5: $76
    jr nz, jr_04C_5BC7                            ; $5BB6: $20 $0F

    inc e                                         ; $5BB8: $1C
    ld b, $70                                     ; $5BB9: $06 $70
    jr jr_04C_5BBE                                ; $5BBB: $18 $01

    ld b, d                                       ; $5BBD: $42

jr_04C_5BBE:
    ld [hl], c                                    ; $5BBE: $71
    rrca                                          ; $5BBF: $0F
    cp a                                          ; $5BC0: $BF
    inc d                                         ; $5BC1: $14
    ld bc, $5042                                  ; $5BC2: $01 $42 $50
    ld e, $C3                                     ; $5BC5: $1E $C3

jr_04C_5BC7:
    ld a, b                                       ; $5BC7: $78
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    ld b, b                                       ; $5BCA: $40
    ld d, c                                       ; $5BCB: $51
    ld a, [hl]                                    ; $5BCC: $7E
    ld d, b                                       ; $5BCD: $50
    ld d, h                                       ; $5BCE: $54
    jp Jump_04C_623A                              ; $5BCF: $C3 $3A $62


    nop                                           ; $5BD2: $00
    ld b, b                                       ; $5BD3: $40
    and [hl]                                      ; $5BD4: $A6
    ld a, [hl]                                    ; $5BD5: $7E
    ld d, b                                       ; $5BD6: $50
    add hl, sp                                    ; $5BD7: $39
    jp Jump_04C_501E                              ; $5BD8: $C3 $1E $50


    nop                                           ; $5BDB: $00
    ld b, b                                       ; $5BDC: $40
    and [hl]                                      ; $5BDD: $A6
    ld a, [hl]                                    ; $5BDE: $7E

jr_04C_5BDF:
    ld d, b                                       ; $5BDF: $50
    and l                                         ; $5BE0: $A5
    jp $3240                                      ; $5BE1: $C3 $40 $32


    nop                                           ; $5BE4: $00
    ld b, b                                       ; $5BE5: $40
    and [hl]                                      ; $5BE6: $A6
    ld a, [hl]                                    ; $5BE7: $7E
    ld d, b                                       ; $5BE8: $50
    adc d                                         ; $5BE9: $8A
    jp $0A64                                      ; $5BEA: $C3 $64 $0A


    nop                                           ; $5BED: $00
    ld b, b                                       ; $5BEE: $40
    ld e, c                                       ; $5BEF: $59
    ld a, [hl]                                    ; $5BF0: $7E
    ld d, b                                       ; $5BF1: $50
    ld l, a                                       ; $5BF2: $6F
    jp $1488                                      ; $5BF3: $C3 $88 $14


    nop                                           ; $5BF6: $00
    ld b, b                                       ; $5BF7: $40
    ld e, c                                       ; $5BF8: $59
    ld a, [hl]                                    ; $5BF9: $7E
    ld l, e                                       ; $5BFA: $6B
    inc c                                         ; $5BFB: $0C
    ld b, c                                       ; $5BFC: $41
    or b                                          ; $5BFD: $B0
    ld d, b                                       ; $5BFE: $50
    nop                                           ; $5BFF: $00
    add b                                         ; $5C00: $80
    nop                                           ; $5C01: $00
    ld h, [hl]                                    ; $5C02: $66
    ret nz                                        ; $5C03: $C0

    ld b, e                                       ; $5C04: $43
    ld b, b                                       ; $5C05: $40

jr_04C_5C06:
    ld l, a                                       ; $5C06: $6F
    rrca                                          ; $5C07: $0F
    rst $38                                       ; $5C08: $FF
    ld a, a                                       ; $5C09: $7F
    sub h                                         ; $5C0A: $94
    halt                                          ; $5C0B: $76
    jr nz, jr_04C_5C1D                            ; $5C0C: $20 $0F

    dec de                                        ; $5C0E: $1B
    dec e                                         ; $5C0F: $1D
    ld b, b                                       ; $5C10: $40
    inc c                                         ; $5C11: $0C
    ld [hl], b                                    ; $5C12: $70
    inc c                                         ; $5C13: $0C
    nop                                           ; $5C14: $00
    add hl, sp                                    ; $5C15: $39
    ld bc, $6B3C                                  ; $5C16: $01 $3C $6B
    dec bc                                        ; $5C19: $0B
    ld de, $1040                                  ; $5C1A: $11 $40 $10

jr_04C_5C1D:
    dec bc                                        ; $5C1D: $0B
    inc d                                         ; $5C1E: $14
    ld b, b                                       ; $5C1F: $40
    db $10                                        ; $5C20: $10
    dec bc                                        ; $5C21: $0B
    db $10                                        ; $5C22: $10
    ld b, b                                       ; $5C23: $40
    db $10                                        ; $5C24: $10
    dec sp                                        ; $5C25: $3B
    dec de                                        ; $5C26: $1B
    add hl, bc                                    ; $5C27: $09
    inc c                                         ; $5C28: $0C
    ld de, $0F0B                                  ; $5C29: $11 $0B $0F
    ld [hl], b                                    ; $5C2C: $70
    db $10                                        ; $5C2D: $10
    ld bc, $130B                                  ; $5C2E: $01 $0B $13
    dec sp                                        ; $5C31: $3B
    inc c                                         ; $5C32: $0C
    db $10                                        ; $5C33: $10
    inc c                                         ; $5C34: $0C
    inc d                                         ; $5C35: $14
    ld [hl], b                                    ; $5C36: $70
    db $10                                        ; $5C37: $10
    ld bc, $091B                                  ; $5C38: $01 $1B $09
    ld b, b                                       ; $5C3B: $40
    inc b                                         ; $5C3C: $04
    dec sp                                        ; $5C3D: $3B
    dec bc                                        ; $5C3E: $0B
    ld [de], a                                    ; $5C3F: $12
    ld [hl], b                                    ; $5C40: $70
    inc c                                         ; $5C41: $0C
    ld bc, $0470                                  ; $5C42: $01 $70 $04
    ld bc, $0E1B                                  ; $5C45: $01 $1B $0E
    dec sp                                        ; $5C48: $3B
    ld d, b                                       ; $5C49: $50
    and l                                         ; $5C4A: $A5
    jp $3250                                      ; $5C4B: $C3 $50 $32


    nop                                           ; $5C4E: $00
    ld b, b                                       ; $5C4F: $40
    and [hl]                                      ; $5C50: $A6
    ld a, [hl]                                    ; $5C51: $7E
    dec bc                                        ; $5C52: $0B
    inc d                                         ; $5C53: $14
    inc c                                         ; $5C54: $0C
    rrca                                          ; $5C55: $0F
    dec sp                                        ; $5C56: $3B
    ld [hl], b                                    ; $5C57: $70
    inc c                                         ; $5C58: $0C
    ld bc, $1240                                  ; $5C59: $01 $40 $12
    dec de                                        ; $5C5C: $1B
    add hl, bc                                    ; $5C5D: $09
    ld b, b                                       ; $5C5E: $40
    ld b, $3B                                     ; $5C5F: $06 $3B
    ld [hl], b                                    ; $5C61: $70
    rrca                                          ; $5C62: $0F
    ld bc, $091B                                  ; $5C63: $01 $1B $09
    ld b, d                                       ; $5C66: $42
    ld d, b                                       ; $5C67: $50
    and l                                         ; $5C68: $A5
    jp Jump_04C_6200                              ; $5C69: $C3 $00 $62


    nop                                           ; $5C6C: $00
    ld b, b                                       ; $5C6D: $40
    cp [hl]                                       ; $5C6E: $BE
    ld [hl], a                                    ; $5C6F: $77
    ld d, b                                       ; $5C70: $50
    ld e, $C3                                     ; $5C71: $1E $C3
    jr nc, jr_04C_5CD7                            ; $5C73: $30 $62

    nop                                           ; $5C75: $00
    ld b, b                                       ; $5C76: $40
    cp [hl]                                       ; $5C77: $BE
    ld [hl], a                                    ; $5C78: $77
    ld d, b                                       ; $5C79: $50
    add hl, sp                                    ; $5C7A: $39
    jp Jump_04C_6210                              ; $5C7B: $C3 $10 $62


    nop                                           ; $5C7E: $00
    ld b, b                                       ; $5C7F: $40
    cp [hl]                                       ; $5C80: $BE
    ld [hl], a                                    ; $5C81: $77
    ld d, b                                       ; $5C82: $50
    ld d, h                                       ; $5C83: $54
    jp Jump_04C_6250                              ; $5C84: $C3 $50 $62


    nop                                           ; $5C87: $00
    ld b, b                                       ; $5C88: $40
    cp [hl]                                       ; $5C89: $BE
    ld [hl], a                                    ; $5C8A: $77
    ld l, e                                       ; $5C8B: $6B
    cpl                                           ; $5C8C: $2F
    ld c, a                                       ; $5C8D: $4F
    adc a                                         ; $5C8E: $8F
    ld e, l                                       ; $5C8F: $5D
    nop                                           ; $5C90: $00
    add b                                         ; $5C91: $80
    nop                                           ; $5C92: $00
    ld l, a                                       ; $5C93: $6F
    rrca                                          ; $5C94: $0F
    rst $38                                       ; $5C95: $FF
    ld a, a                                       ; $5C96: $7F
    ld h, [hl]                                    ; $5C97: $66
    ret nz                                        ; $5C98: $C0

    ld b, e                                       ; $5C99: $43
    ld b, b                                       ; $5C9A: $40
    ld a, c                                       ; $5C9B: $79
    rrca                                          ; $5C9C: $0F
    sub h                                         ; $5C9D: $94
    halt                                          ; $5C9E: $76
    jr nz, jr_04C_5CB0                            ; $5C9F: $20 $0F

    dec de                                        ; $5CA1: $1B
    dec e                                         ; $5CA2: $1D
    ld b, b                                       ; $5CA3: $40
    inc c                                         ; $5CA4: $0C
    ld [hl], b                                    ; $5CA5: $70
    inc c                                         ; $5CA6: $0C
    nop                                           ; $5CA7: $00
    ld b, b                                       ; $5CA8: $40
    jr jr_04C_5CB6                                ; $5CA9: $18 $0B

    inc d                                         ; $5CAB: $14
    ld c, b                                       ; $5CAC: $48
    dec bc                                        ; $5CAD: $0B
    rrca                                          ; $5CAE: $0F
    dec bc                                        ; $5CAF: $0B

jr_04C_5CB0:
    db $10                                        ; $5CB0: $10
    ld c, b                                       ; $5CB1: $48
    dec bc                                        ; $5CB2: $0B
    ld de, $201B                                  ; $5CB3: $11 $1B $20

jr_04C_5CB6:
    add hl, sp                                    ; $5CB6: $39
    ld bc, $6B3C                                  ; $5CB7: $01 $3C $6B
    ld d, b                                       ; $5CBA: $50
    and l                                         ; $5CBB: $A5
    jp Jump_04C_6200                              ; $5CBC: $C3 $00 $62


    nop                                           ; $5CBF: $00
    ld b, b                                       ; $5CC0: $40
    pop de                                        ; $5CC1: $D1
    ld [hl], a                                    ; $5CC2: $77
    ld c, b                                       ; $5CC3: $48
    ld d, b                                       ; $5CC4: $50
    ld e, $C3                                     ; $5CC5: $1E $C3
    jr nc, @+$64                                  ; $5CC7: $30 $62

    nop                                           ; $5CC9: $00
    ld b, b                                       ; $5CCA: $40
    pop de                                        ; $5CCB: $D1
    ld [hl], a                                    ; $5CCC: $77
    ld d, b                                       ; $5CCD: $50
    add hl, sp                                    ; $5CCE: $39
    jp Jump_04C_6210                              ; $5CCF: $C3 $10 $62


    nop                                           ; $5CD2: $00
    ld b, b                                       ; $5CD3: $40
    pop de                                        ; $5CD4: $D1
    ld [hl], a                                    ; $5CD5: $77
    ld c, b                                       ; $5CD6: $48

jr_04C_5CD7:
    ld d, b                                       ; $5CD7: $50
    ld d, h                                       ; $5CD8: $54
    jp Jump_04C_6250                              ; $5CD9: $C3 $50 $62


    nop                                           ; $5CDC: $00
    ld b, b                                       ; $5CDD: $40
    pop de                                        ; $5CDE: $D1
    ld [hl], a                                    ; $5CDF: $77
    ld b, b                                       ; $5CE0: $40
    dec b                                         ; $5CE1: $05
    ld d, b                                       ; $5CE2: $50
    ld e, $C3                                     ; $5CE3: $1E $C3
    ld d, b                                       ; $5CE5: $50
    ld h, d                                       ; $5CE6: $62
    nop                                           ; $5CE7: $00
    ld b, b                                       ; $5CE8: $40
    cp [hl]                                       ; $5CE9: $BE
    ld [hl], a                                    ; $5CEA: $77
    ld d, b                                       ; $5CEB: $50
    add hl, sp                                    ; $5CEC: $39
    jp Jump_04C_6230                              ; $5CED: $C3 $30 $62


    nop                                           ; $5CF0: $00
    ld b, b                                       ; $5CF1: $40
    cp [hl]                                       ; $5CF2: $BE
    ld [hl], a                                    ; $5CF3: $77
    ld c, b                                       ; $5CF4: $48
    ld d, b                                       ; $5CF5: $50
    ld d, h                                       ; $5CF6: $54
    jp Jump_04C_6268                              ; $5CF7: $C3 $68 $62


    nop                                           ; $5CFA: $00
    ld b, b                                       ; $5CFB: $40
    cp [hl]                                       ; $5CFC: $BE
    ld [hl], a                                    ; $5CFD: $77
    ld e, d                                       ; $5CFE: $5A
    ld c, h                                       ; $5CFF: $4C
    add hl, hl                                    ; $5D00: $29
    ld e, l                                       ; $5D01: $5D
    dec de                                        ; $5D02: $1B
    dec e                                         ; $5D03: $1D
    ld c, b                                       ; $5D04: $48
    add hl, bc                                    ; $5D05: $09
    db $10                                        ; $5D06: $10
    ld b, b                                       ; $5D07: $40
    pop de                                        ; $5D08: $D1
    ld [hl], a                                    ; $5D09: $77
    dec sp                                        ; $5D0A: $3B
    ld d, b                                       ; $5D0B: $50
    and l                                         ; $5D0C: $A5
    jp Jump_04C_6668                              ; $5D0D: $C3 $68 $66


    nop                                           ; $5D10: $00
    ld b, b                                       ; $5D11: $40
    db $E4                                        ; $5D12: $E4
    ld [hl], a                                    ; $5D13: $77
    inc c                                         ; $5D14: $0C
    ld de, $0840                                  ; $5D15: $11 $40 $08
    dec sp                                        ; $5D18: $3B
    ld b, b                                       ; $5D19: $40
    rlca                                          ; $5D1A: $07
    inc c                                         ; $5D1B: $0C
    rrca                                          ; $5D1C: $0F
    ld b, b                                       ; $5D1D: $40
    ld bc, $0C3B                                  ; $5D1E: $01 $3B $0C
    db $10                                        ; $5D21: $10
    ld b, b                                       ; $5D22: $40
    inc d                                         ; $5D23: $14
    dec de                                        ; $5D24: $1B
    ld hl, $140C                                  ; $5D25: $21 $0C $14
    ld b, d                                       ; $5D28: $42
    ld [hl], b                                    ; $5D29: $70
    jr nc, jr_04C_5D2D                            ; $5D2A: $30 $01

    ld b, d                                       ; $5D2C: $42

jr_04C_5D2D:
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    nop                                           ; $5D44: $00
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    nop                                           ; $5D4A: $00
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    nop                                           ; $5D4D: $00
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    nop                                           ; $5D58: $00
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    nop                                           ; $5D5B: $00
    nop                                           ; $5D5C: $00
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    nop                                           ; $5D66: $00
    nop                                           ; $5D67: $00
    nop                                           ; $5D68: $00
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    nop                                           ; $5D6B: $00
    nop                                           ; $5D6C: $00
    nop                                           ; $5D6D: $00
    nop                                           ; $5D6E: $00
    nop                                           ; $5D6F: $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    nop                                           ; $5D78: $00
    nop                                           ; $5D79: $00
    nop                                           ; $5D7A: $00
    nop                                           ; $5D7B: $00
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    nop                                           ; $5D84: $00
    nop                                           ; $5D85: $00
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    nop                                           ; $5D8D: $00
    nop                                           ; $5D8E: $00
    nop                                           ; $5D8F: $00
    nop                                           ; $5D90: $00
    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
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
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
    nop                                           ; $5DB0: $00
    nop                                           ; $5DB1: $00
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    nop                                           ; $5DB9: $00
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00
    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    nop                                           ; $5DC8: $00
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    nop                                           ; $5DCE: $00
    nop                                           ; $5DCF: $00
    nop                                           ; $5DD0: $00
    nop                                           ; $5DD1: $00
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    nop                                           ; $5DD4: $00
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    nop                                           ; $5DD8: $00
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    nop                                           ; $5DDB: $00
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
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
    nop                                           ; $5E0A: $00
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    nop                                           ; $5E0D: $00
    nop                                           ; $5E0E: $00
    nop                                           ; $5E0F: $00
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    nop                                           ; $5E26: $00
    nop                                           ; $5E27: $00
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    nop                                           ; $5E60: $00
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    nop                                           ; $5E69: $00
    nop                                           ; $5E6A: $00
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00
    nop                                           ; $5E6D: $00
    nop                                           ; $5E6E: $00
    nop                                           ; $5E6F: $00
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00

Jump_04C_5E82:
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00

Jump_04C_5E88:
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
    nop                                           ; $5E91: $00
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    nop                                           ; $5E98: $00
    nop                                           ; $5E99: $00
    nop                                           ; $5E9A: $00
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    nop                                           ; $5E9F: $00
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    nop                                           ; $5EB1: $00
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    nop                                           ; $5EB4: $00
    nop                                           ; $5EB5: $00
    nop                                           ; $5EB6: $00
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    nop                                           ; $5EBA: $00
    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    nop                                           ; $5ECC: $00
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    nop                                           ; $5ECF: $00
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    nop                                           ; $5ED8: $00
    nop                                           ; $5ED9: $00
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    nop                                           ; $5EE3: $00
    nop                                           ; $5EE4: $00
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00
    nop                                           ; $5EE9: $00
    nop                                           ; $5EEA: $00
    nop                                           ; $5EEB: $00
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
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
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    nop                                           ; $5F0B: $00
    nop                                           ; $5F0C: $00
    nop                                           ; $5F0D: $00
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
    nop                                           ; $5F2F: $00
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
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
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
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604A: $00
    nop                                           ; $604B: $00
    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    nop                                           ; $604E: $00
    nop                                           ; $604F: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    nop                                           ; $60AA: $00
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00
    nop                                           ; $60AD: $00
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    nop                                           ; $60C8: $00
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    nop                                           ; $60CC: $00
    nop                                           ; $60CD: $00
    nop                                           ; $60CE: $00
    nop                                           ; $60CF: $00
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    nop                                           ; $60EC: $00
    nop                                           ; $60ED: $00
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
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
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611A: $00
    nop                                           ; $611B: $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    nop                                           ; $612A: $00
    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    nop                                           ; $614B: $00
    nop                                           ; $614C: $00
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    nop                                           ; $618C: $00
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    nop                                           ; $61A4: $00
    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    nop                                           ; $61AC: $00
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
    nop                                           ; $61AF: $00
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    nop                                           ; $61CB: $00
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    nop                                           ; $61D2: $00
    nop                                           ; $61D3: $00
    nop                                           ; $61D4: $00
    nop                                           ; $61D5: $00
    nop                                           ; $61D6: $00
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00

Jump_04C_6200:
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
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

Jump_04C_6210:
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00

Jump_04C_621A:
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00

Jump_04C_6230:
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00

Jump_04C_6232:
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00

Jump_04C_623A:
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
    nop                                           ; $624B: $00
    nop                                           ; $624C: $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
    nop                                           ; $624F: $00

Jump_04C_6250:
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625A: $00
    nop                                           ; $625B: $00
    nop                                           ; $625C: $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00

Jump_04C_6264:
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00

Jump_04C_6268:
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00

Jump_04C_626C:
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00

Jump_04C_6274:
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    nop                                           ; $62A2: $00
    nop                                           ; $62A3: $00
    nop                                           ; $62A4: $00
    nop                                           ; $62A5: $00
    nop                                           ; $62A6: $00
    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    nop                                           ; $62B1: $00
    nop                                           ; $62B2: $00
    nop                                           ; $62B3: $00
    nop                                           ; $62B4: $00
    nop                                           ; $62B5: $00
    nop                                           ; $62B6: $00
    nop                                           ; $62B7: $00
    nop                                           ; $62B8: $00
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    nop                                           ; $62D0: $00
    nop                                           ; $62D1: $00
    nop                                           ; $62D2: $00
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    nop                                           ; $62D8: $00
    nop                                           ; $62D9: $00
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    nop                                           ; $62F2: $00
    nop                                           ; $62F3: $00
    nop                                           ; $62F4: $00
    nop                                           ; $62F5: $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    nop                                           ; $630C: $00
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632A: $00
    nop                                           ; $632B: $00
    nop                                           ; $632C: $00
    nop                                           ; $632D: $00
    nop                                           ; $632E: $00
    nop                                           ; $632F: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    nop                                           ; $634F: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    nop                                           ; $636C: $00
    nop                                           ; $636D: $00
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
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
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
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
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
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
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
    nop                                           ; $63AF: $00
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
    nop                                           ; $63BE: $00
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
    nop                                           ; $63CE: $00
    nop                                           ; $63CF: $00
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
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
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
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
    nop                                           ; $63EF: $00
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00

Jump_04C_6400:
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640A: $00
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    nop                                           ; $644E: $00
    nop                                           ; $644F: $00

Jump_04C_6450:
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00

Jump_04C_6462:
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646A: $00
    nop                                           ; $646B: $00
    nop                                           ; $646C: $00
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00

Jump_04C_6470:
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00

Jump_04C_6482:
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648A: $00
    nop                                           ; $648B: $00

Jump_04C_648C:
    nop                                           ; $648C: $00
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    nop                                           ; $64A8: $00
    nop                                           ; $64A9: $00
    nop                                           ; $64AA: $00
    nop                                           ; $64AB: $00
    nop                                           ; $64AC: $00
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    nop                                           ; $64B6: $00
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    nop                                           ; $64CA: $00
    nop                                           ; $64CB: $00
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
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
    nop                                           ; $64EE: $00
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    nop                                           ; $64F3: $00
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
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
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652A: $00
    nop                                           ; $652B: $00
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654A: $00
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    nop                                           ; $654F: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
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
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    nop                                           ; $658C: $00
    nop                                           ; $658D: $00
    nop                                           ; $658E: $00
    nop                                           ; $658F: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    nop                                           ; $65A3: $00
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    nop                                           ; $65AE: $00
    nop                                           ; $65AF: $00
    nop                                           ; $65B0: $00
    nop                                           ; $65B1: $00
    nop                                           ; $65B2: $00
    nop                                           ; $65B3: $00
    nop                                           ; $65B4: $00
    nop                                           ; $65B5: $00
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    nop                                           ; $65C7: $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    nop                                           ; $65CA: $00
    nop                                           ; $65CB: $00
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    nop                                           ; $65E8: $00
    nop                                           ; $65E9: $00
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
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
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664A: $00
    nop                                           ; $664B: $00
    nop                                           ; $664C: $00
    nop                                           ; $664D: $00
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00

Jump_04C_6668:
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
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
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    nop                                           ; $66C8: $00
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    nop                                           ; $66D8: $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    nop                                           ; $66DD: $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    nop                                           ; $66E2: $00
    nop                                           ; $66E3: $00
    nop                                           ; $66E4: $00
    nop                                           ; $66E5: $00
    nop                                           ; $66E6: $00
    nop                                           ; $66E7: $00
    nop                                           ; $66E8: $00
    nop                                           ; $66E9: $00
    nop                                           ; $66EA: $00
    nop                                           ; $66EB: $00
    nop                                           ; $66EC: $00
    nop                                           ; $66ED: $00
    nop                                           ; $66EE: $00
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    nop                                           ; $66F6: $00
    nop                                           ; $66F7: $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670A: $00
    nop                                           ; $670B: $00
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    nop                                           ; $670E: $00
    nop                                           ; $670F: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    nop                                           ; $673F: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
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
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00

Jump_04C_676B:
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
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    nop                                           ; $677B: $00
    nop                                           ; $677C: $00
    nop                                           ; $677D: $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    nop                                           ; $67AA: $00
    nop                                           ; $67AB: $00
    nop                                           ; $67AC: $00
    nop                                           ; $67AD: $00
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
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
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00
    nop                                           ; $680C: $00
    nop                                           ; $680D: $00
    nop                                           ; $680E: $00
    nop                                           ; $680F: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
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
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
    nop                                           ; $684D: $00
    nop                                           ; $684E: $00
    nop                                           ; $684F: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00

Jump_04C_6860:
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00

Jump_04C_6868:
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00

Jump_04C_6880:
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    nop                                           ; $688C: $00
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    nop                                           ; $68AA: $00
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    nop                                           ; $68AE: $00
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    nop                                           ; $694C: $00
    nop                                           ; $694D: $00
    nop                                           ; $694E: $00
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696A: $00
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    nop                                           ; $696D: $00

Jump_04C_696E:
    nop                                           ; $696E: $00
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697A: $00
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699A: $00
    nop                                           ; $699B: $00
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    nop                                           ; $69A0: $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    nop                                           ; $69A8: $00
    nop                                           ; $69A9: $00
    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    nop                                           ; $69AC: $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    nop                                           ; $69AF: $00
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    nop                                           ; $69B2: $00
    nop                                           ; $69B3: $00
    nop                                           ; $69B4: $00
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    nop                                           ; $69C0: $00
    nop                                           ; $69C1: $00
    nop                                           ; $69C2: $00
    nop                                           ; $69C3: $00
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    nop                                           ; $69C6: $00
    nop                                           ; $69C7: $00
    nop                                           ; $69C8: $00
    nop                                           ; $69C9: $00
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    nop                                           ; $69D3: $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    nop                                           ; $69DF: $00
    nop                                           ; $69E0: $00
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    nop                                           ; $69E7: $00
    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    nop                                           ; $69F3: $00
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    nop                                           ; $69FD: $00
    nop                                           ; $69FE: $00
    nop                                           ; $69FF: $00
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    nop                                           ; $6A07: $00
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
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
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    nop                                           ; $6A4A: $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    nop                                           ; $6A62: $00
    nop                                           ; $6A63: $00
    nop                                           ; $6A64: $00
    nop                                           ; $6A65: $00
    nop                                           ; $6A66: $00
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    nop                                           ; $6A72: $00
    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00

Jump_04C_6A7C:
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    nop                                           ; $6A80: $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00

Jump_04C_6A88:
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    nop                                           ; $6A8B: $00
    nop                                           ; $6A8C: $00
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    nop                                           ; $6A8F: $00
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
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    nop                                           ; $6AA0: $00
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    nop                                           ; $6AB7: $00
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    nop                                           ; $6ABD: $00
    nop                                           ; $6ABE: $00
    nop                                           ; $6ABF: $00
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    nop                                           ; $6AC3: $00
    nop                                           ; $6AC4: $00
    nop                                           ; $6AC5: $00
    nop                                           ; $6AC6: $00
    nop                                           ; $6AC7: $00
    nop                                           ; $6AC8: $00
    nop                                           ; $6AC9: $00
    nop                                           ; $6ACA: $00
    nop                                           ; $6ACB: $00
    nop                                           ; $6ACC: $00
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    nop                                           ; $6AE6: $00
    nop                                           ; $6AE7: $00
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    nop                                           ; $6AF2: $00
    nop                                           ; $6AF3: $00
    nop                                           ; $6AF4: $00
    nop                                           ; $6AF5: $00
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    nop                                           ; $6AFD: $00
    nop                                           ; $6AFE: $00
    nop                                           ; $6AFF: $00
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    nop                                           ; $6B03: $00
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    nop                                           ; $6B06: $00
    nop                                           ; $6B07: $00
    nop                                           ; $6B08: $00
    nop                                           ; $6B09: $00
    nop                                           ; $6B0A: $00
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
    nop                                           ; $6B0F: $00
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    nop                                           ; $6B13: $00
    nop                                           ; $6B14: $00
    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    nop                                           ; $6B17: $00
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    nop                                           ; $6B24: $00
    nop                                           ; $6B25: $00
    nop                                           ; $6B26: $00
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    nop                                           ; $6B2B: $00
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    nop                                           ; $6B3B: $00
    nop                                           ; $6B3C: $00
    nop                                           ; $6B3D: $00
    nop                                           ; $6B3E: $00
    nop                                           ; $6B3F: $00
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    nop                                           ; $6B42: $00
    nop                                           ; $6B43: $00
    nop                                           ; $6B44: $00
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    nop                                           ; $6B47: $00
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    nop                                           ; $6B4A: $00
    nop                                           ; $6B4B: $00
    nop                                           ; $6B4C: $00
    nop                                           ; $6B4D: $00
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    nop                                           ; $6B56: $00
    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    nop                                           ; $6B5C: $00
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    nop                                           ; $6B6C: $00
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    nop                                           ; $6B72: $00
    nop                                           ; $6B73: $00
    nop                                           ; $6B74: $00
    nop                                           ; $6B75: $00
    nop                                           ; $6B76: $00
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00

Call_04C_6B7B:
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    nop                                           ; $6B83: $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    nop                                           ; $6B8A: $00
    nop                                           ; $6B8B: $00
    nop                                           ; $6B8C: $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    nop                                           ; $6B92: $00
    nop                                           ; $6B93: $00
    nop                                           ; $6B94: $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    nop                                           ; $6BAA: $00
    nop                                           ; $6BAB: $00
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    nop                                           ; $6BB4: $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    nop                                           ; $6BCA: $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    nop                                           ; $6BCE: $00
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    nop                                           ; $6BD7: $00
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    nop                                           ; $6BDD: $00
    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    nop                                           ; $6BF4: $00
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    nop                                           ; $6C16: $00
    nop                                           ; $6C17: $00
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    nop                                           ; $6C24: $00
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    nop                                           ; $6C4A: $00
    nop                                           ; $6C4B: $00
    nop                                           ; $6C4C: $00
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    nop                                           ; $6C52: $00
    nop                                           ; $6C53: $00
    nop                                           ; $6C54: $00
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    nop                                           ; $6C72: $00
    nop                                           ; $6C73: $00
    nop                                           ; $6C74: $00
    nop                                           ; $6C75: $00
    nop                                           ; $6C76: $00
    nop                                           ; $6C77: $00
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    nop                                           ; $6C85: $00
    nop                                           ; $6C86: $00
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    nop                                           ; $6C90: $00
    nop                                           ; $6C91: $00
    nop                                           ; $6C92: $00
    nop                                           ; $6C93: $00
    nop                                           ; $6C94: $00
    nop                                           ; $6C95: $00
    nop                                           ; $6C96: $00
    nop                                           ; $6C97: $00
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    nop                                           ; $6CAF: $00
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    nop                                           ; $6CB2: $00
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    nop                                           ; $6CB5: $00
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    nop                                           ; $6CC2: $00
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    nop                                           ; $6CC5: $00
    nop                                           ; $6CC6: $00
    nop                                           ; $6CC7: $00
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    nop                                           ; $6CCA: $00
    nop                                           ; $6CCB: $00
    nop                                           ; $6CCC: $00
    nop                                           ; $6CCD: $00
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    nop                                           ; $6CD3: $00
    nop                                           ; $6CD4: $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    nop                                           ; $6CDA: $00
    nop                                           ; $6CDB: $00
    nop                                           ; $6CDC: $00
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    nop                                           ; $6CE5: $00
    nop                                           ; $6CE6: $00
    nop                                           ; $6CE7: $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    nop                                           ; $6CF0: $00
    nop                                           ; $6CF1: $00
    nop                                           ; $6CF2: $00
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    nop                                           ; $6CF5: $00
    nop                                           ; $6CF6: $00
    nop                                           ; $6CF7: $00
    nop                                           ; $6CF8: $00
    nop                                           ; $6CF9: $00
    nop                                           ; $6CFA: $00
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    nop                                           ; $6D06: $00
    nop                                           ; $6D07: $00
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    nop                                           ; $6D0A: $00
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    nop                                           ; $6D24: $00
    nop                                           ; $6D25: $00
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    nop                                           ; $6D2A: $00
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    nop                                           ; $6D42: $00
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    nop                                           ; $6D4A: $00
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    nop                                           ; $6D67: $00
    nop                                           ; $6D68: $00
    nop                                           ; $6D69: $00
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    nop                                           ; $6D6D: $00
    nop                                           ; $6D6E: $00
    nop                                           ; $6D6F: $00
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    nop                                           ; $6D7A: $00
    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    nop                                           ; $6D8E: $00
    nop                                           ; $6D8F: $00
    nop                                           ; $6D90: $00
    nop                                           ; $6D91: $00
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    nop                                           ; $6D9E: $00
    nop                                           ; $6D9F: $00
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    nop                                           ; $6DAB: $00
    nop                                           ; $6DAC: $00
    nop                                           ; $6DAD: $00
    nop                                           ; $6DAE: $00
    nop                                           ; $6DAF: $00
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    nop                                           ; $6DB2: $00
    nop                                           ; $6DB3: $00
    nop                                           ; $6DB4: $00
    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    nop                                           ; $6DBF: $00
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    nop                                           ; $6DC4: $00
    nop                                           ; $6DC5: $00
    nop                                           ; $6DC6: $00
    nop                                           ; $6DC7: $00
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    nop                                           ; $6DCA: $00
    nop                                           ; $6DCB: $00
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    nop                                           ; $6DD2: $00
    nop                                           ; $6DD3: $00
    nop                                           ; $6DD4: $00
    nop                                           ; $6DD5: $00
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    nop                                           ; $6DE3: $00
    nop                                           ; $6DE4: $00
    nop                                           ; $6DE5: $00
    nop                                           ; $6DE6: $00
    nop                                           ; $6DE7: $00
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    nop                                           ; $6E10: $00
    nop                                           ; $6E11: $00
    nop                                           ; $6E12: $00
    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    nop                                           ; $6E24: $00
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00
    nop                                           ; $6E29: $00
    nop                                           ; $6E2A: $00
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    nop                                           ; $6E37: $00
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    nop                                           ; $6E3C: $00
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    nop                                           ; $6E4B: $00
    nop                                           ; $6E4C: $00
    nop                                           ; $6E4D: $00
    nop                                           ; $6E4E: $00
    nop                                           ; $6E4F: $00
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    nop                                           ; $6E52: $00
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    nop                                           ; $6E57: $00
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    nop                                           ; $6E5A: $00
    nop                                           ; $6E5B: $00
    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    nop                                           ; $6E66: $00
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    nop                                           ; $6E6C: $00
    nop                                           ; $6E6D: $00
    nop                                           ; $6E6E: $00
    nop                                           ; $6E6F: $00
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    nop                                           ; $6E73: $00
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    nop                                           ; $6E77: $00
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    nop                                           ; $6E8E: $00
    nop                                           ; $6E8F: $00
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    nop                                           ; $6E9A: $00
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    nop                                           ; $6EB2: $00
    nop                                           ; $6EB3: $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    nop                                           ; $6EC6: $00
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    nop                                           ; $6ECC: $00
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    nop                                           ; $6ECF: $00
    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    nop                                           ; $6ED2: $00
    nop                                           ; $6ED3: $00
    nop                                           ; $6ED4: $00
    nop                                           ; $6ED5: $00
    nop                                           ; $6ED6: $00
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    nop                                           ; $6EDA: $00
    nop                                           ; $6EDB: $00
    nop                                           ; $6EDC: $00
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    nop                                           ; $6EDF: $00
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    nop                                           ; $6EEE: $00
    nop                                           ; $6EEF: $00
    nop                                           ; $6EF0: $00
    nop                                           ; $6EF1: $00
    nop                                           ; $6EF2: $00
    nop                                           ; $6EF3: $00
    nop                                           ; $6EF4: $00
    nop                                           ; $6EF5: $00
    nop                                           ; $6EF6: $00
    nop                                           ; $6EF7: $00
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    nop                                           ; $6EFA: $00
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    nop                                           ; $6EFE: $00
    nop                                           ; $6EFF: $00
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    nop                                           ; $6F02: $00
    nop                                           ; $6F03: $00
    nop                                           ; $6F04: $00
    nop                                           ; $6F05: $00
    nop                                           ; $6F06: $00
    nop                                           ; $6F07: $00
    nop                                           ; $6F08: $00
    nop                                           ; $6F09: $00
    nop                                           ; $6F0A: $00
    nop                                           ; $6F0B: $00
    nop                                           ; $6F0C: $00
    nop                                           ; $6F0D: $00
    nop                                           ; $6F0E: $00
    nop                                           ; $6F0F: $00
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    nop                                           ; $6F13: $00
    nop                                           ; $6F14: $00
    nop                                           ; $6F15: $00
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    nop                                           ; $6F27: $00
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    nop                                           ; $6F2A: $00
    nop                                           ; $6F2B: $00
    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
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
    nop                                           ; $6F57: $00
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    nop                                           ; $6F5C: $00
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    nop                                           ; $6F66: $00
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    nop                                           ; $6F72: $00
    nop                                           ; $6F73: $00
    nop                                           ; $6F74: $00
    nop                                           ; $6F75: $00
    nop                                           ; $6F76: $00
    nop                                           ; $6F77: $00
    nop                                           ; $6F78: $00
    nop                                           ; $6F79: $00
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    nop                                           ; $6F87: $00
    nop                                           ; $6F88: $00
    nop                                           ; $6F89: $00
    nop                                           ; $6F8A: $00
    nop                                           ; $6F8B: $00
    nop                                           ; $6F8C: $00
    nop                                           ; $6F8D: $00
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    nop                                           ; $6F93: $00
    nop                                           ; $6F94: $00
    nop                                           ; $6F95: $00
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    nop                                           ; $6FAC: $00
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    nop                                           ; $6FE5: $00
    nop                                           ; $6FE6: $00
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700A: $00
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    nop                                           ; $700D: $00
    nop                                           ; $700E: $00
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702A: $00
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708A: $00
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    nop                                           ; $70A6: $00
    nop                                           ; $70A7: $00
    nop                                           ; $70A8: $00
    nop                                           ; $70A9: $00
    nop                                           ; $70AA: $00
    nop                                           ; $70AB: $00
    nop                                           ; $70AC: $00
    nop                                           ; $70AD: $00
    nop                                           ; $70AE: $00
    nop                                           ; $70AF: $00
    nop                                           ; $70B0: $00
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    nop                                           ; $70BA: $00
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    nop                                           ; $70C0: $00
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    nop                                           ; $70C5: $00
    nop                                           ; $70C6: $00
    nop                                           ; $70C7: $00
    nop                                           ; $70C8: $00
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00
    nop                                           ; $70CC: $00
    nop                                           ; $70CD: $00
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    nop                                           ; $70ED: $00
    nop                                           ; $70EE: $00
    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    nop                                           ; $70F2: $00
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714A: $00
    nop                                           ; $714B: $00
    nop                                           ; $714C: $00
    nop                                           ; $714D: $00
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715A: $00
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716A: $00
    nop                                           ; $716B: $00
    nop                                           ; $716C: $00
    nop                                           ; $716D: $00
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    nop                                           ; $718B: $00
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    nop                                           ; $719C: $00
    nop                                           ; $719D: $00
    nop                                           ; $719E: $00
    nop                                           ; $719F: $00
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    nop                                           ; $71A4: $00
    nop                                           ; $71A5: $00
    nop                                           ; $71A6: $00
    nop                                           ; $71A7: $00
    nop                                           ; $71A8: $00
    nop                                           ; $71A9: $00
    nop                                           ; $71AA: $00
    nop                                           ; $71AB: $00
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    nop                                           ; $71AF: $00
    nop                                           ; $71B0: $00
    nop                                           ; $71B1: $00
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    nop                                           ; $71B4: $00
    nop                                           ; $71B5: $00
    nop                                           ; $71B6: $00
    nop                                           ; $71B7: $00
    nop                                           ; $71B8: $00
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    nop                                           ; $71C6: $00
    nop                                           ; $71C7: $00
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    nop                                           ; $71EA: $00
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722A: $00
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724A: $00
    nop                                           ; $724B: $00
    nop                                           ; $724C: $00
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725A: $00
    nop                                           ; $725B: $00
    nop                                           ; $725C: $00
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    nop                                           ; $725F: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726A: $00
    nop                                           ; $726B: $00
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727A: $00
    nop                                           ; $727B: $00
    nop                                           ; $727C: $00
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728A: $00
    nop                                           ; $728B: $00
    nop                                           ; $728C: $00
    nop                                           ; $728D: $00
    nop                                           ; $728E: $00
    nop                                           ; $728F: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    nop                                           ; $729C: $00
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00
    nop                                           ; $72A8: $00
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    nop                                           ; $72B4: $00
    nop                                           ; $72B5: $00
    nop                                           ; $72B6: $00
    nop                                           ; $72B7: $00
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    nop                                           ; $72CA: $00
    nop                                           ; $72CB: $00
    nop                                           ; $72CC: $00
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00
    nop                                           ; $72E6: $00
    nop                                           ; $72E7: $00
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    nop                                           ; $72EC: $00
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00
    nop                                           ; $72F7: $00
    nop                                           ; $72F8: $00
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    nop                                           ; $732C: $00
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    nop                                           ; $732F: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734A: $00
    nop                                           ; $734B: $00
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736A: $00
    nop                                           ; $736B: $00
    nop                                           ; $736C: $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738A: $00
    nop                                           ; $738B: $00
    nop                                           ; $738C: $00
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739A: $00
    nop                                           ; $739B: $00
    nop                                           ; $739C: $00
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    nop                                           ; $73A2: $00
    nop                                           ; $73A3: $00
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    nop                                           ; $73AB: $00
    nop                                           ; $73AC: $00
    nop                                           ; $73AD: $00
    nop                                           ; $73AE: $00
    nop                                           ; $73AF: $00
    nop                                           ; $73B0: $00
    nop                                           ; $73B1: $00
    nop                                           ; $73B2: $00
    nop                                           ; $73B3: $00
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    nop                                           ; $73B8: $00
    nop                                           ; $73B9: $00
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00
    nop                                           ; $73C9: $00
    nop                                           ; $73CA: $00
    nop                                           ; $73CB: $00
    nop                                           ; $73CC: $00
    nop                                           ; $73CD: $00
    nop                                           ; $73CE: $00
    nop                                           ; $73CF: $00
    nop                                           ; $73D0: $00
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    nop                                           ; $73D5: $00
    nop                                           ; $73D6: $00
    nop                                           ; $73D7: $00
    nop                                           ; $73D8: $00
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    nop                                           ; $73DC: $00
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    nop                                           ; $73E0: $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    nop                                           ; $73EA: $00
    nop                                           ; $73EB: $00
    nop                                           ; $73EC: $00
    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    nop                                           ; $73F0: $00
    nop                                           ; $73F1: $00
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    nop                                           ; $73F7: $00
    nop                                           ; $73F8: $00
    nop                                           ; $73F9: $00
    nop                                           ; $73FA: $00
    nop                                           ; $73FB: $00
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740A: $00
    nop                                           ; $740B: $00
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    nop                                           ; $740E: $00
    nop                                           ; $740F: $00
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    nop                                           ; $741E: $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    nop                                           ; $742C: $00
    nop                                           ; $742D: $00
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743A: $00
    nop                                           ; $743B: $00
    nop                                           ; $743C: $00
    nop                                           ; $743D: $00
    nop                                           ; $743E: $00
    nop                                           ; $743F: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744A: $00
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    nop                                           ; $744E: $00
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745A: $00
    nop                                           ; $745B: $00
    nop                                           ; $745C: $00
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00
    nop                                           ; $745F: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746A: $00
    nop                                           ; $746B: $00
    nop                                           ; $746C: $00
    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00

Jump_04C_7474:
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    nop                                           ; $747B: $00

Jump_04C_747C:
    nop                                           ; $747C: $00
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00

Jump_04C_7484:
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    nop                                           ; $748B: $00
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    nop                                           ; $74A6: $00
    nop                                           ; $74A7: $00
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    nop                                           ; $74AC: $00
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    nop                                           ; $74B3: $00
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    nop                                           ; $74C0: $00
    nop                                           ; $74C1: $00
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    nop                                           ; $74D4: $00
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    nop                                           ; $74E2: $00
    nop                                           ; $74E3: $00
    nop                                           ; $74E4: $00
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    nop                                           ; $74E7: $00
    nop                                           ; $74E8: $00
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    nop                                           ; $74EC: $00
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750A: $00
    nop                                           ; $750B: $00
    nop                                           ; $750C: $00
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00
    nop                                           ; $752C: $00
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753A: $00
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    nop                                           ; $754B: $00
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
    nop                                           ; $754F: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    nop                                           ; $756C: $00
    nop                                           ; $756D: $00
    nop                                           ; $756E: $00
    nop                                           ; $756F: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757A: $00
    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    nop                                           ; $758C: $00
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    nop                                           ; $758F: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759A: $00
    nop                                           ; $759B: $00
    nop                                           ; $759C: $00
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    nop                                           ; $75A4: $00
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    nop                                           ; $75A7: $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    nop                                           ; $75B0: $00
    nop                                           ; $75B1: $00
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
    nop                                           ; $75B4: $00
    nop                                           ; $75B5: $00
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    nop                                           ; $75C0: $00
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    nop                                           ; $75D0: $00
    nop                                           ; $75D1: $00
    nop                                           ; $75D2: $00
    nop                                           ; $75D3: $00
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    nop                                           ; $75E8: $00
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
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
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
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
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
    nop                                           ; $7635: $00
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
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
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

Jump_04C_7850:
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

Jump_04C_7878:
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

Jump_04C_7882:
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

Jump_04C_788C:
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

Jump_04C_7D64:
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
