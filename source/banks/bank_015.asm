SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld bc, $1A1F                                  ; $4000: $01 $1F $1A
    ld b, l                                       ; $4003: $45
    cpl                                           ; $4004: $2F
    ld sp, hl                                     ; $4005: $F9
    ld b, h                                       ; $4006: $44
    ld [bc], a                                    ; $4007: $02
    ld de, $1D03                                  ; $4008: $11 $03 $1D
    nop                                           ; $400B: $00
    ld b, l                                       ; $400C: $45

jr_015_400D:
    dec d                                         ; $400D: $15
    ld c, e                                       ; $400E: $4B
    ld b, a                                       ; $400F: $47
    ld [bc], a                                    ; $4010: $02
    dec d                                         ; $4011: $15
    ld bc, $2700                                  ; $4012: $01 $00 $27
    ld b, l                                       ; $4015: $45
    dec d                                         ; $4016: $15
    jp nc, $0241                                  ; $4017: $D2 $41 $02

    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    nop                                           ; $401C: $00
    nop                                           ; $401D: $00
    jr nc, jr_015_400D                            ; $401E: $30 $ED

    ld d, [hl]                                    ; $4020: $56
    daa                                           ; $4021: $27
    ld b, a                                       ; $4022: $47
    ld [$3C15], sp                                ; $4023: $08 $15 $3C
    ld b, b                                       ; $4026: $40
    dec d                                         ; $4027: $15
    ld e, b                                       ; $4028: $58
    ld b, b                                       ; $4029: $40
    dec d                                         ; $402A: $15
    ld [hl], h                                    ; $402B: $74
    ld b, b                                       ; $402C: $40
    dec d                                         ; $402D: $15
    adc c                                         ; $402E: $89
    ld b, b                                       ; $402F: $40
    dec d                                         ; $4030: $15
    and b                                         ; $4031: $A0
    ld b, b                                       ; $4032: $40
    dec d                                         ; $4033: $15
    xor [hl]                                      ; $4034: $AE
    ld b, b                                       ; $4035: $40
    dec d                                         ; $4036: $15
    bit 0, b                                      ; $4037: $CB $40
    dec d                                         ; $4039: $15
    reti                                          ; $403A: $D9


    ld b, b                                       ; $403B: $40
    dec h                                         ; $403C: $25
    inc bc                                        ; $403D: $03
    ld l, h                                       ; $403E: $6C
    inc c                                         ; $403F: $0C
    ld c, h                                       ; $4040: $4C
    inc hl                                        ; $4041: $23
    ld b, b                                       ; $4042: $40
    ld l, $09                                     ; $4043: $2E $09
    ld c, $0B                                     ; $4045: $0E $0B
    ld d, $01                                     ; $4047: $16 $01
    dec hl                                        ; $4049: $2B
    ld l, $09                                     ; $404A: $2E $09
    ld e, $09                                     ; $404C: $1E $09
    inc d                                         ; $404E: $14
    ld bc, $2E2B                                  ; $404F: $01 $2B $2E
    add hl, bc                                    ; $4052: $09
    ld e, $0B                                     ; $4053: $1E $0B
    ld d, $01                                     ; $4055: $16 $01
    daa                                           ; $4057: $27
    dec h                                         ; $4058: $25
    inc bc                                        ; $4059: $03
    ld l, h                                       ; $405A: $6C
    dec c                                         ; $405B: $0D
    ld c, h                                       ; $405C: $4C
    inc hl                                        ; $405D: $23
    ld b, b                                       ; $405E: $40
    ld l, $09                                     ; $405F: $2E $09
    ld bc, $150A                                  ; $4061: $01 $0A $15
    ld bc, $2E2B                                  ; $4064: $01 $2B $2E
    add hl, bc                                    ; $4067: $09
    ld c, $0B                                     ; $4068: $0E $0B
    ld d, $01                                     ; $406A: $16 $01
    dec hl                                        ; $406C: $2B
    ld l, $09                                     ; $406D: $2E $09
    ld c, $0A                                     ; $406F: $0E $0A
    ld d, $01                                     ; $4071: $16 $01
    daa                                           ; $4073: $27
    dec h                                         ; $4074: $25
    inc bc                                        ; $4075: $03
    ld l, h                                       ; $4076: $6C
    dec bc                                        ; $4077: $0B
    ld c, h                                       ; $4078: $4C
    inc hl                                        ; $4079: $23
    ld b, b                                       ; $407A: $40
    ld l, $09                                     ; $407B: $2E $09
    ld d, d                                       ; $407D: $52
    ld a, [bc]                                    ; $407E: $0A
    inc de                                        ; $407F: $13
    ld bc, $2E2B                                  ; $4080: $01 $2B $2E
    add hl, bc                                    ; $4083: $09
    ld d, d                                       ; $4084: $52
    ld a, [bc]                                    ; $4085: $0A
    inc d                                         ; $4086: $14
    ld bc, $2527                                  ; $4087: $01 $27 $25
    inc bc                                        ; $408A: $03
    ld l, h                                       ; $408B: $6C
    dec c                                         ; $408C: $0D
    ld c, h                                       ; $408D: $4C
    inc hl                                        ; $408E: $23
    ld b, b                                       ; $408F: $40
    ld l, $09                                     ; $4090: $2E $09
    ld [hl], $0C                                  ; $4092: $36 $0C
    jr jr_015_4097                                ; $4094: $18 $01

    dec hl                                        ; $4096: $2B

jr_015_4097:
    dec hl                                        ; $4097: $2B
    dec hl                                        ; $4098: $2B
    ld l, $09                                     ; $4099: $2E $09
    add hl, sp                                    ; $409B: $39
    ld b, $0C                                     ; $409C: $06 $0C
    ld bc, $2527                                  ; $409E: $01 $27 $25
    inc bc                                        ; $40A1: $03
    ld l, h                                       ; $40A2: $6C
    inc c                                         ; $40A3: $0C
    ld c, h                                       ; $40A4: $4C
    inc hl                                        ; $40A5: $23
    ld b, b                                       ; $40A6: $40
    ld l, $09                                     ; $40A7: $2E $09
    ld c, d                                       ; $40A9: $4A
    inc c                                         ; $40AA: $0C
    jr jr_015_40AE                                ; $40AB: $18 $01

    daa                                           ; $40AD: $27

jr_015_40AE:
    dec h                                         ; $40AE: $25
    inc bc                                        ; $40AF: $03
    ld l, h                                       ; $40B0: $6C
    dec c                                         ; $40B1: $0D
    ld c, h                                       ; $40B2: $4C
    inc hl                                        ; $40B3: $23
    ld b, b                                       ; $40B4: $40
    ld l, $09                                     ; $40B5: $2E $09
    ld e, $0D                                     ; $40B7: $1E $0D
    add hl, de                                    ; $40B9: $19
    ld bc, $2B2B                                  ; $40BA: $01 $2B $2B
    ld l, $09                                     ; $40BD: $2E $09
    ld bc, $1309                                  ; $40BF: $01 $09 $13
    ld bc, $2E2B                                  ; $40C2: $01 $2B $2E
    add hl, bc                                    ; $40C5: $09
    ld bc, $1309                                  ; $40C6: $01 $09 $13
    ld bc, $2527                                  ; $40C9: $01 $27 $25
    inc bc                                        ; $40CC: $03
    ld l, h                                       ; $40CD: $6C
    inc c                                         ; $40CE: $0C
    ld c, h                                       ; $40CF: $4C
    inc hl                                        ; $40D0: $23
    ld b, b                                       ; $40D1: $40
    ld l, $09                                     ; $40D2: $2E $09
    ld [hl], $0C                                  ; $40D4: $36 $0C
    rla                                           ; $40D6: $17
    ld bc, $2527                                  ; $40D7: $01 $27 $25
    inc bc                                        ; $40DA: $03
    ld l, h                                       ; $40DB: $6C
    inc c                                         ; $40DC: $0C
    ld c, h                                       ; $40DD: $4C
    inc hl                                        ; $40DE: $23
    ld b, b                                       ; $40DF: $40
    ld l, $09                                     ; $40E0: $2E $09
    ld c, $0B                                     ; $40E2: $0E $0B
    ld d, $01                                     ; $40E4: $16 $01
    dec hl                                        ; $40E6: $2B
    dec hl                                        ; $40E7: $2B
    ld l, $09                                     ; $40E8: $2E $09

jr_015_40EA:
    ld [hl], $0A                                  ; $40EA: $36 $0A
    dec d                                         ; $40EC: $15
    ld bc, $2E2B                                  ; $40ED: $01 $2B $2E
    add hl, bc                                    ; $40F0: $09
    ld e, $0A                                     ; $40F1: $1E $0A
    ld d, $01                                     ; $40F3: $16 $01
    daa                                           ; $40F5: $27
    ld [bc], a                                    ; $40F6: $02
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    jr nc, jr_015_40EA                            ; $40FB: $30 $ED

    ld d, [hl]                                    ; $40FD: $56
    ld [hl+], a                                   ; $40FE: $22
    dec h                                         ; $40FF: $25
    inc bc                                        ; $4100: $03

jr_015_4101:
    ld l, h                                       ; $4101: $6C
    ld h, e                                       ; $4102: $63
    ld c, h                                       ; $4103: $4C
    inc hl                                        ; $4104: $23
    ld b, b                                       ; $4105: $40
    ld l, $09                                     ; $4106: $2E $09
    inc sp                                        ; $4108: $33
    ld h, e                                       ; $4109: $63
    ld a, [$2700]                                 ; $410A: $FA $00 $27
    ld [bc], a                                    ; $410D: $02
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    jr nc, jr_015_4101                            ; $4112: $30 $ED

    ld d, [hl]                                    ; $4114: $56
    daa                                           ; $4115: $27
    ld b, a                                       ; $4116: $47
    inc b                                         ; $4117: $04
    dec d                                         ; $4118: $15
    inc h                                         ; $4119: $24
    ld b, c                                       ; $411A: $41
    dec d                                         ; $411B: $15
    ld [hl-], a                                   ; $411C: $32
    ld b, c                                       ; $411D: $41
    dec d                                         ; $411E: $15
    ld b, b                                       ; $411F: $40
    ld b, c                                       ; $4120: $41
    dec d                                         ; $4121: $15
    ld c, [hl]                                    ; $4122: $4E
    ld b, c                                       ; $4123: $41
    dec h                                         ; $4124: $25
    inc bc                                        ; $4125: $03
    ld l, h                                       ; $4126: $6C
    ld a, [bc]                                    ; $4127: $0A
    ld c, h                                       ; $4128: $4C
    inc hl                                        ; $4129: $23
    ld b, b                                       ; $412A: $40
    ld l, $09                                     ; $412B: $2E $09
    ld c, $0A                                     ; $412D: $0E $0A
    dec d                                         ; $412F: $15
    ld bc, $2527                                  ; $4130: $01 $27 $25
    inc bc                                        ; $4133: $03
    ld l, h                                       ; $4134: $6C
    dec bc                                        ; $4135: $0B
    ld c, h                                       ; $4136: $4C
    inc hl                                        ; $4137: $23
    ld b, b                                       ; $4138: $40
    ld l, $09                                     ; $4139: $2E $09
    ld bc, $170B                                  ; $413B: $01 $0B $17
    ld bc, $2527                                  ; $413E: $01 $27 $25
    inc bc                                        ; $4141: $03
    ld l, h                                       ; $4142: $6C
    inc c                                         ; $4143: $0C
    ld c, h                                       ; $4144: $4C
    inc hl                                        ; $4145: $23
    ld b, b                                       ; $4146: $40
    ld l, $09                                     ; $4147: $2E $09
    dec e                                         ; $4149: $1D
    inc c                                         ; $414A: $0C
    add hl, de                                    ; $414B: $19
    ld bc, $2527                                  ; $414C: $01 $27 $25
    inc bc                                        ; $414F: $03

jr_015_4150:
    ld l, h                                       ; $4150: $6C
    dec c                                         ; $4151: $0D
    ld c, h                                       ; $4152: $4C
    inc hl                                        ; $4153: $23
    ld b, b                                       ; $4154: $40
    ld l, $09                                     ; $4155: $2E $09
    ld [hl], $0D                                  ; $4157: $36 $0D
    dec de                                        ; $4159: $1B
    ld bc, $9327                                  ; $415A: $01 $27 $93
    ld h, l                                       ; $415D: $65
    cp l                                          ; $415E: $BD

jr_015_415F:
    ld b, [hl]                                    ; $415F: $46
    ld c, a                                       ; $4160: $4F
    ld h, h                                       ; $4161: $64
    call Call_015_6647                            ; $4162: $CD $47 $66
    ret nz                                        ; $4165: $C0

    ld e, h                                       ; $4166: $5C
    ld hl, $0005                                  ; $4167: $21 $05 $00
    add c                                         ; $416A: $81
    ld e, l                                       ; $416B: $5D
    nop                                           ; $416C: $00
    dec d                                         ; $416D: $15
    halt                                          ; $416E: $76
    jp nc, $2000                                  ; $416F: $D2 $00 $20

    ei                                            ; $4172: $FB
    ld d, b                                       ; $4173: $50
    ld [hl+], a                                   ; $4174: $22
    dec b                                         ; $4175: $05
    ld b, b                                       ; $4176: $40
    dec b                                         ; $4177: $05
    jr nz, @-$30                                  ; $4178: $20 $CE

    ld h, e                                       ; $417A: $63
    ld a, [bc]                                    ; $417B: $0A
    add hl, bc                                    ; $417C: $09
    jr jr_015_4150                                ; $417D: $18 $D1

    nop                                           ; $417F: $00
    ld [hl+], a                                   ; $4180: $22
    jp c, $1540                                   ; $4181: $DA $40 $15

    add hl, de                                    ; $4184: $19
    ld b, b                                       ; $4185: $40
    dec b                                         ; $4186: $05
    rra                                           ; $4187: $1F
    adc $63                                       ; $4188: $CE $63
    ld a, [bc]                                    ; $418A: $0A
    add hl, bc                                    ; $418B: $09
    jr jr_015_415F                                ; $418C: $18 $D1

    nop                                           ; $418E: $00
    ld [hl+], a                                   ; $418F: $22
    jp c, $1540                                   ; $4190: $DA $40 $15

    add hl, de                                    ; $4193: $19
    ld b, b                                       ; $4194: $40
    dec bc                                        ; $4195: $0B
    jr nz, @+$0D                                  ; $4196: $20 $0B

    rra                                           ; $4198: $1F
    ld l, e                                       ; $4199: $6B
    inc [hl]                                      ; $419A: $34
    dec c                                         ; $419B: $0D
    jr nc, jr_015_4208                            ; $419C: $30 $6A

    nop                                           ; $419E: $00
    add b                                         ; $419F: $80
    nop                                           ; $41A0: $00
    ld sp, $5C15                                  ; $41A1: $31 $15 $5C
    ld b, c                                       ; $41A4: $41
    ld [hl+], a                                   ; $41A5: $22
    adc $40                                       ; $41A6: $CE $40
    dec bc                                        ; $41A8: $0B
    nop                                           ; $41A9: $00
    nop                                           ; $41AA: $00
    add d                                         ; $41AB: $82
    rra                                           ; $41AC: $1F
    ld a, [bc]                                    ; $41AD: $0A
    sub h                                         ; $41AE: $94
    ld b, d                                       ; $41AF: $42
    ld [bc], a                                    ; $41B0: $02
    ld bc, $2715                                  ; $41B1: $01 $15 $27
    nop                                           ; $41B4: $00
    ld b, l                                       ; $41B5: $45
    dec d                                         ; $41B6: $15
    ld e, h                                       ; $41B7: $5C
    ld b, c                                       ; $41B8: $41
    ld [bc], a                                    ; $41B9: $02
    daa                                           ; $41BA: $27
    dec bc                                        ; $41BB: $0B
    daa                                           ; $41BC: $27
    nop                                           ; $41BD: $00
    ld b, l                                       ; $41BE: $45
    dec d                                         ; $41BF: $15
    ld de, $A445                                  ; $41C0: $11 $45 $A4
    jr z, @-$5B                                   ; $41C3: $28 $A3

    ld bc, $0100                                  ; $41C5: $01 $00 $01
    rst $38                                       ; $41C8: $FF
    call nc, $28A4                                ; $41C9: $D4 $A4 $28
    and e                                         ; $41CC: $A3
    ld [bc], a                                    ; $41CD: $02
    nop                                           ; $41CE: $00
    ld [bc], a                                    ; $41CF: $02
    ld b, a                                       ; $41D0: $47
    db $D3                                        ; $41D1: $D3
    sub e                                         ; $41D2: $93
    ld h, l                                       ; $41D3: $65
    call z, Call_015_4F46                         ; $41D4: $CC $46 $4F
    ld h, h                                       ; $41D7: $64
    jp c, Jump_015_6947                           ; $41D8: $DA $47 $69

    rst $20                                       ; $41DB: $E7
    ld b, a                                       ; $41DC: $47
    ld h, [hl]                                    ; $41DD: $66
    ret nz                                        ; $41DE: $C0

    ld e, h                                       ; $41DF: $5C
    ld hl, $0005                                  ; $41E0: $21 $05 $00
    add c                                         ; $41E3: $81
    ld e, l                                       ; $41E4: $5D
    inc b                                         ; $41E5: $04
    ld de, $D356                                  ; $41E6: $11 $56 $D3
    nop                                           ; $41E9: $00
    jr nz, @-$53                                  ; $41EA: $20 $AB

    ld d, b                                       ; $41EC: $50
    ld [hl+], a                                   ; $41ED: $22
    dec b                                         ; $41EE: $05
    ld b, b                                       ; $41EF: $40
    dec b                                         ; $41F0: $05
    jr nz, @-$30                                  ; $41F1: $20 $CE

    ld h, e                                       ; $41F3: $63
    ld a, [bc]                                    ; $41F4: $0A
    add hl, bc                                    ; $41F5: $09
    call z, $00D1                                 ; $41F6: $CC $D1 $00
    ld [hl+], a                                   ; $41F9: $22
    jp c, $1540                                   ; $41FA: $DA $40 $15

    add hl, de                                    ; $41FD: $19
    ld b, b                                       ; $41FE: $40
    dec b                                         ; $41FF: $05
    rra                                           ; $4200: $1F
    adc $63                                       ; $4201: $CE $63
    ld a, [bc]                                    ; $4203: $0A
    add hl, bc                                    ; $4204: $09
    call z, $00D1                                 ; $4205: $CC $D1 $00

jr_015_4208:
    ld [hl+], a                                   ; $4208: $22
    jp c, $1540                                   ; $4209: $DA $40 $15

    add hl, de                                    ; $420C: $19
    ld b, b                                       ; $420D: $40
    dec bc                                        ; $420E: $0B
    nop                                           ; $420F: $00
    dec bc                                        ; $4210: $0B
    jr nz, jr_015_421E                            ; $4211: $20 $0B

    rra                                           ; $4213: $1F
    ld l, e                                       ; $4214: $6B
    inc [hl]                                      ; $4215: $34
    dec c                                         ; $4216: $0D
    jr nc, jr_015_4283                            ; $4217: $30 $6A

    nop                                           ; $4219: $00
    add b                                         ; $421A: $80
    nop                                           ; $421B: $00
    dec b                                         ; $421C: $05
    ld [bc], a                                    ; $421D: $02

jr_015_421E:
    ld l, e                                       ; $421E: $6B
    ld c, d                                       ; $421F: $4A
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    ret nc                                        ; $4223: $D0

jr_015_4224:
    inc [hl]                                      ; $4224: $34
    ld [hl+], a                                   ; $4225: $22
    inc b                                         ; $4226: $04
    ld b, b                                       ; $4227: $40
    ld [hl+], a                                   ; $4228: $22
    inc b                                         ; $4229: $04
    ld b, b                                       ; $422A: $40
    ld l, e                                       ; $422B: $6B
    dec d                                         ; $422C: $15
    inc h                                         ; $422D: $24
    ld b, b                                       ; $422E: $40
    ld d, l                                       ; $422F: $55
    ld b, b                                       ; $4230: $40
    add e                                         ; $4231: $83
    nop                                           ; $4232: $00
    ld sp, $D215                                  ; $4233: $31 $15 $D2
    ld b, c                                       ; $4236: $41
    ld [hl+], a                                   ; $4237: $22
    adc $40                                       ; $4238: $CE $40
    nop                                           ; $423A: $00
    add d                                         ; $423B: $82
    rra                                           ; $423C: $1F
    ld a, [bc]                                    ; $423D: $0A
    sub h                                         ; $423E: $94
    ld b, d                                       ; $423F: $42
    add hl, bc                                    ; $4240: $09
    ld [bc], a                                    ; $4241: $02
    dec d                                         ; $4242: $15
    ld c, b                                       ; $4243: $48
    ld b, d                                       ; $4244: $42
    dec bc                                        ; $4245: $0B
    ld [bc], a                                    ; $4246: $02
    ld b, d                                       ; $4247: $42
    rrca                                          ; $4248: $0F
    nop                                           ; $4249: $00
    inc d                                         ; $424A: $14
    ld de, $7924                                  ; $424B: $11 $24 $79
    dec c                                         ; $424E: $0D
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    db $FD                                        ; $4254: $FD
    ld b, b                                       ; $4255: $40
    ld b, b                                       ; $4256: $40
    add hl, de                                    ; $4257: $19
    ld [bc], a                                    ; $4258: $02
    nop                                           ; $4259: $00
    dec sp                                        ; $425A: $3B
    daa                                           ; $425B: $27
    dec bc                                        ; $425C: $0B
    ld b, l                                       ; $425D: $45
    dec d                                         ; $425E: $15
    ld c, e                                       ; $425F: $4B
    ld b, a                                       ; $4260: $47
    ld [bc], a                                    ; $4261: $02
    dec bc                                        ; $4262: $0B
    daa                                           ; $4263: $27
    nop                                           ; $4264: $00
    daa                                           ; $4265: $27
    ld b, l                                       ; $4266: $45
    dec d                                         ; $4267: $15
    jp nc, $0241                                  ; $4268: $D2 $41 $02

    jr nz, @+$0B                                  ; $426B: $20 $09

    nop                                           ; $426D: $00
    inc de                                        ; $426E: $13
    ld b, l                                       ; $426F: $45
    dec d                                         ; $4270: $15
    inc a                                         ; $4271: $3C
    ld b, [hl]                                    ; $4272: $46
    ld b, l                                       ; $4273: $45
    dec d                                         ; $4274: $15
    ld b, $46                                     ; $4275: $06 $46
    ld bc, $0D07                                  ; $4277: $01 $07 $0D
    ld b, l                                       ; $427A: $45
    dec d                                         ; $427B: $15
    db $10                                        ; $427C: $10
    ld b, h                                       ; $427D: $44
    and h                                         ; $427E: $A4
    jr z, jr_015_4224                             ; $427F: $28 $A3

    inc b                                         ; $4281: $04
    nop                                           ; $4282: $00

jr_015_4283:
    rrca                                          ; $4283: $0F
    cp h                                          ; $4284: $BC
    call nc, Call_015_789B                        ; $4285: $D4 $9B $78
    ld [hl], b                                    ; $4288: $70
    sbc a                                         ; $4289: $9F
    ld d, h                                       ; $428A: $54
    ld l, b                                       ; $428B: $68
    ld h, l                                       ; $428C: $65
    jr nz, jr_015_4306                            ; $428D: $20 $77

    ld h, c                                       ; $428F: $61
    ld l, h                                       ; $4290: $6C
    ld l, h                                       ; $4291: $6C
    jr nz, jr_015_42FD                            ; $4292: $20 $69

    ld [hl], e                                    ; $4294: $73
    rst $38                                       ; $4295: $FF
    ld [hl], e                                    ; $4296: $73
    ld [hl], b                                    ; $4297: $70
    ld l, a                                       ; $4298: $6F
    ld l, [hl]                                    ; $4299: $6E
    ld h, a                                       ; $429A: $67
    ld a, c                                       ; $429B: $79
    jr nz, jr_015_4306                            ; $429C: $20 $68

    ld h, l                                       ; $429E: $65
    ld [hl], d                                    ; $429F: $72
    ld h, l                                       ; $42A0: $65
    ld l, $FE                                     ; $42A1: $2E $FE
    db $FD                                        ; $42A3: $FD
    ld b, e                                       ; $42A4: $43
    rrca                                          ; $42A5: $0F
    ld bc, $A2B3                                  ; $42A6: $01 $B3 $A2
    dec b                                         ; $42A9: $05
    inc b                                         ; $42AA: $04
    dec d                                         ; $42AB: $15
    add d                                         ; $42AC: $82
    ld b, e                                       ; $42AD: $43
    sbc a                                         ; $42AE: $9F
    ld c, b                                       ; $42AF: $48
    ld h, l                                       ; $42B0: $65
    ld a, c                                       ; $42B1: $79
    ld hl, $5320                                  ; $42B2: $21 $20 $53
    ld l, a                                       ; $42B5: $6F
    ld l, l                                       ; $42B6: $6D
    ld h, l                                       ; $42B7: $65
    jr nz, jr_015_4329                            ; $42B8: $20 $6F

    ld h, [hl]                                    ; $42BA: $66
    rst $38                                       ; $42BB: $FF
    ld l, c                                       ; $42BC: $69
    ld [hl], h                                    ; $42BD: $74
    jr nz, jr_015_4329                            ; $42BE: $20 $69

    ld [hl], e                                    ; $42C0: $73
    jr nz, @+$6E                                  ; $42C1: $20 $6C

    ld l, a                                       ; $42C3: $6F
    ld l, a                                       ; $42C4: $6F
    ld [hl], e                                    ; $42C5: $73
    ld h, l                                       ; $42C6: $65
    ld l, $FE                                     ; $42C7: $2E $FE
    db $FD                                        ; $42C9: $FD
    sbc c                                         ; $42CA: $99
    sbc a                                         ; $42CB: $9F
    jr nz, jr_015_4322                            ; $42CC: $20 $54

    ld h, c                                       ; $42CE: $61
    ld l, e                                       ; $42CF: $6B
    ld h, l                                       ; $42D0: $65
    jr nz, jr_015_4339                            ; $42D1: $20 $66

    ld [hl], l                                    ; $42D3: $75
    ld l, [hl]                                    ; $42D4: $6E
    ld h, a                                       ; $42D5: $67
    ld [hl], l                                    ; $42D6: $75
    ld [hl], e                                    ; $42D7: $73
    rst $38                                       ; $42D8: $FF
    jr nz, jr_015_431F                            ; $42D9: $20 $44

    ld l, a                                       ; $42DB: $6F
    ld l, [hl]                                    ; $42DC: $6E
    daa                                           ; $42DD: $27
    ld [hl], h                                    ; $42DE: $74
    jr nz, @+$76                                  ; $42DF: $20 $74

    ld h, c                                       ; $42E1: $61
    ld l, e                                       ; $42E2: $6B
    ld h, l                                       ; $42E3: $65
    db $FD                                        ; $42E4: $FD
    sbc h                                         ; $42E5: $9C
    ld [bc], a                                    ; $42E6: $02
    dec d                                         ; $42E7: $15
    add hl, bc                                    ; $42E8: $09
    ld b, e                                       ; $42E9: $43
    dec d                                         ; $42EA: $15
    db $ED                                        ; $42EB: $ED
    ld b, d                                       ; $42EC: $42
    sbc c                                         ; $42ED: $99
    sbc a                                         ; $42EE: $9F
    ld c, c                                       ; $42EF: $49
    ld [hl], h                                    ; $42F0: $74
    daa                                           ; $42F1: $27
    ld [hl], e                                    ; $42F2: $73
    jr nz, jr_015_4369                            ; $42F3: $20 $74

    ld l, a                                       ; $42F5: $6F
    ld l, a                                       ; $42F6: $6F
    jr nz, @+$69                                  ; $42F7: $20 $67

    ld l, a                                       ; $42F9: $6F
    ld l, a                                       ; $42FA: $6F
    ld h, l                                       ; $42FB: $65
    ld a, c                                       ; $42FC: $79

jr_015_42FD:
    rst $38                                       ; $42FD: $FF
    ld h, c                                       ; $42FE: $61
    ld l, [hl]                                    ; $42FF: $6E
    ld a, c                                       ; $4300: $79
    ld [hl], a                                    ; $4301: $77
    ld h, c                                       ; $4302: $61
    ld a, c                                       ; $4303: $79
    ld l, $FE                                     ; $4304: $2E $FE

jr_015_4306:
    db $FD                                        ; $4306: $FD
    sbc d                                         ; $4307: $9A
    ld b, d                                       ; $4308: $42
    ld b, e                                       ; $4309: $43
    ld de, $CC01                                  ; $430A: $11 $01 $CC
    and e                                         ; $430D: $A3
    dec b                                         ; $430E: $05
    nop                                           ; $430F: $00
    dec d                                         ; $4310: $15
    ld b, d                                       ; $4311: $42
    ld b, e                                       ; $4312: $43
    sbc c                                         ; $4313: $99
    sbc a                                         ; $4314: $9F
    ld c, c                                       ; $4315: $49
    jr nz, @+$65                                  ; $4316: $20 $63

    ld h, c                                       ; $4318: $61
    ld l, [hl]                                    ; $4319: $6E
    daa                                           ; $431A: $27
    ld [hl], h                                    ; $431B: $74
    inc l                                         ; $431C: $2C
    jr nz, @+$4B                                  ; $431D: $20 $49

jr_015_431F:
    rst $38                                       ; $431F: $FF
    ld l, [hl]                                    ; $4320: $6E
    ld h, l                                       ; $4321: $65

jr_015_4322:
    ld h, l                                       ; $4322: $65
    ld h, h                                       ; $4323: $64
    jr nz, jr_015_4399                            ; $4324: $20 $73

    ld l, a                                       ; $4326: $6F
    ld l, l                                       ; $4327: $6D
    ld h, l                                       ; $4328: $65

jr_015_4329:
    ld [hl], h                                    ; $4329: $74
    ld l, b                                       ; $432A: $68
    ld l, c                                       ; $432B: $69
    ld l, [hl]                                    ; $432C: $6E
    ld h, a                                       ; $432D: $67
    cp $74                                        ; $432E: $FE $74
    ld l, a                                       ; $4330: $6F
    jr nz, jr_015_4396                            ; $4331: $20 $63

    ld h, c                                       ; $4333: $61
    ld [hl], d                                    ; $4334: $72
    ld [hl], d                                    ; $4335: $72
    ld a, c                                       ; $4336: $79
    jr nz, @+$6B                                  ; $4337: $20 $69

jr_015_4339:
    ld [hl], h                                    ; $4339: $74
    jr nz, jr_015_43A5                            ; $433A: $20 $69

    ld l, [hl]                                    ; $433C: $6E
    ld l, $FE                                     ; $433D: $2E $FE
    db $FD                                        ; $433F: $FD
    sbc d                                         ; $4340: $9A
    ld b, d                                       ; $4341: $42
    adc b                                         ; $4342: $88
    nop                                           ; $4343: $00
    dec h                                         ; $4344: $25
    ld bc, $0087                                  ; $4345: $01 $87 $00
    ld h, $01                                     ; $4348: $26 $01
    sbc c                                         ; $434A: $99
    sbc a                                         ; $434B: $9F
    ld d, h                                       ; $434C: $54
    ld l, a                                       ; $434D: $6F
    ld l, [hl]                                    ; $434E: $6E
    ld a, c                                       ; $434F: $79
    jr nz, jr_015_43B9                            ; $4350: $20 $67

    ld l, a                                       ; $4352: $6F
    ld [hl], h                                    ; $4353: $74
    jr nz, @+$63                                  ; $4354: $20 $61

    rst $38                                       ; $4356: $FF
    db $FD                                        ; $4357: $FD
    sbc a                                         ; $4358: $9F
    ld b, [hl]                                    ; $4359: $46
    ld [hl], l                                    ; $435A: $75
    ld l, [hl]                                    ; $435B: $6E
    ld h, a                                       ; $435C: $67
    ld [hl], l                                    ; $435D: $75
    ld [hl], e                                    ; $435E: $73
    jr nz, @+$63                                  ; $435F: $20 $61

    ld l, [hl]                                    ; $4361: $6E
    ld h, h                                       ; $4362: $64
    cp $70                                        ; $4363: $FE $70
    ld [hl], l                                    ; $4365: $75
    ld [hl], h                                    ; $4366: $74
    jr nz, jr_015_43D2                            ; $4367: $20 $69

jr_015_4369:
    ld [hl], h                                    ; $4369: $74
    jr nz, jr_015_43D5                            ; $436A: $20 $69

    ld l, [hl]                                    ; $436C: $6E
    jr nz, jr_015_43E3                            ; $436D: $20 $74

    ld l, b                                       ; $436F: $68
    ld h, l                                       ; $4370: $65
    rst $38                                       ; $4371: $FF
    ld d, e                                       ; $4372: $53
    ld [hl], b                                    ; $4373: $70
    ld h, l                                       ; $4374: $65
    ld h, e                                       ; $4375: $63
    ld l, c                                       ; $4376: $69
    ld l, l                                       ; $4377: $6D
    ld h, l                                       ; $4378: $65
    ld l, [hl]                                    ; $4379: $6E
    jr nz, jr_015_43C6                            ; $437A: $20 $4A

    ld h, c                                       ; $437C: $61
    ld [hl], d                                    ; $437D: $72
    cp $FD                                        ; $437E: $FE $FD
    sbc d                                         ; $4380: $9A
    ld b, d                                       ; $4381: $42
    sbc a                                         ; $4382: $9F
    ld d, l                                       ; $4383: $55
    ld [hl], e                                    ; $4384: $73
    ld h, l                                       ; $4385: $65
    jr nz, jr_015_43CE                            ; $4386: $20 $46

    ld [hl], l                                    ; $4388: $75
    ld l, [hl]                                    ; $4389: $6E
    ld h, a                                       ; $438A: $67
    ld l, c                                       ; $438B: $69
    ld h, e                                       ; $438C: $63
    ld l, c                                       ; $438D: $69
    ld h, h                                       ; $438E: $64
    ld h, l                                       ; $438F: $65
    rst $38                                       ; $4390: $FF
    ld l, a                                       ; $4391: $6F
    ld l, [hl]                                    ; $4392: $6E
    jr nz, jr_015_4409                            ; $4393: $20 $74

    ld l, b                                       ; $4395: $68

jr_015_4396:
    ld h, l                                       ; $4396: $65
    jr nz, @+$79                                  ; $4397: $20 $77

jr_015_4399:
    ld h, c                                       ; $4399: $61
    ld l, h                                       ; $439A: $6C
    ld l, h                                       ; $439B: $6C
    ccf                                           ; $439C: $3F
    cp $FD                                        ; $439D: $FE $FD
    sbc c                                         ; $439F: $99
    sbc a                                         ; $43A0: $9F
    jr nz, jr_015_43F8                            ; $43A1: $20 $55

    ld [hl], e                                    ; $43A3: $73
    ld h, l                                       ; $43A4: $65

jr_015_43A5:
    jr nz, jr_015_43ED                            ; $43A5: $20 $46

    ld [hl], l                                    ; $43A7: $75
    ld l, [hl]                                    ; $43A8: $6E
    ld h, a                                       ; $43A9: $67
    ld l, c                                       ; $43AA: $69
    ld h, e                                       ; $43AB: $63
    ld l, c                                       ; $43AC: $69
    ld h, h                                       ; $43AD: $64
    ld h, l                                       ; $43AE: $65
    rst $38                                       ; $43AF: $FF
    jr nz, @+$46                                  ; $43B0: $20 $44

    ld l, a                                       ; $43B2: $6F
    ld l, [hl]                                    ; $43B3: $6E
    daa                                           ; $43B4: $27
    ld [hl], h                                    ; $43B5: $74
    jr nz, jr_015_442D                            ; $43B6: $20 $75

    ld [hl], e                                    ; $43B8: $73

jr_015_43B9:
    ld h, l                                       ; $43B9: $65
    db $FD                                        ; $43BA: $FD
    sbc h                                         ; $43BB: $9C
    ld [bc], a                                    ; $43BC: $02
    dec d                                         ; $43BD: $15
    push bc                                       ; $43BE: $C5
    ld b, e                                       ; $43BF: $43
    dec d                                         ; $43C0: $15
    jp $9A43                                      ; $43C1: $C3 $43 $9A


    ld b, d                                       ; $43C4: $42
    sbc d                                         ; $43C5: $9A

jr_015_43C6:
    ld b, l                                       ; $43C6: $45
    dec d                                         ; $43C7: $15
    or h                                          ; $43C8: $B4
    ld b, l                                       ; $43C9: $45
    ld bc, $0B28                                  ; $43CA: $01 $28 $0B
    ld b, l                                       ; $43CD: $45

jr_015_43CE:
    dec d                                         ; $43CE: $15
    ld de, $9B45                                  ; $43CF: $11 $45 $9B

jr_015_43D2:
    ld a, b                                       ; $43D2: $78
    ld [hl], b                                    ; $43D3: $70
    sbc a                                         ; $43D4: $9F

jr_015_43D5:
    ld c, h                                       ; $43D5: $4C
    ld [hl], l                                    ; $43D6: $75
    ld l, l                                       ; $43D7: $6D
    ld [hl], b                                    ; $43D8: $70
    ld l, c                                       ; $43D9: $69
    ld l, h                                       ; $43DA: $6C
    ld a, c                                       ; $43DB: $79
    cp $73                                        ; $43DC: $FE $73
    ld l, l                                       ; $43DE: $6D
    ld l, a                                       ; $43DF: $6F
    ld l, a                                       ; $43E0: $6F
    ld [hl], e                                    ; $43E1: $73
    ld l, b                                       ; $43E2: $68

jr_015_43E3:
    ld a, c                                       ; $43E3: $79
    ld hl, $FDFE                                  ; $43E4: $21 $FE $FD
    sbc d                                         ; $43E7: $9A
    ld b, d                                       ; $43E8: $42
    sbc e                                         ; $43E9: $9B
    ld a, b                                       ; $43EA: $78
    ld [hl], b                                    ; $43EB: $70
    sbc a                                         ; $43EC: $9F

jr_015_43ED:
    ld d, e                                       ; $43ED: $53
    ld l, l                                       ; $43EE: $6D
    ld l, a                                       ; $43EF: $6F
    ld l, a                                       ; $43F0: $6F
    ld [hl], e                                    ; $43F1: $73
    ld l, b                                       ; $43F2: $68
    ld a, c                                       ; $43F3: $79
    ld hl, $FDFE                                  ; $43F4: $21 $FE $FD
    sbc d                                         ; $43F7: $9A

jr_015_43F8:
    ld b, d                                       ; $43F8: $42
    sbc e                                         ; $43F9: $9B
    ld a, b                                       ; $43FA: $78
    ld [hl], b                                    ; $43FB: $70
    sbc a                                         ; $43FC: $9F
    ld c, l                                       ; $43FD: $4D
    ld [hl], l                                    ; $43FE: $75
    ld [hl], e                                    ; $43FF: $73
    ld l, b                                       ; $4400: $68
    ld a, c                                       ; $4401: $79
    ld hl, $FDFE                                  ; $4402: $21 $FE $FD
    sbc d                                         ; $4405: $9A
    ld b, d                                       ; $4406: $42
    ld [bc], a                                    ; $4407: $02
    add hl, bc                                    ; $4408: $09

jr_015_4409:
    jr nz, jr_015_441E                            ; $4409: $20 $13

    nop                                           ; $440B: $00
    ld b, l                                       ; $440C: $45
    dec d                                         ; $440D: $15
    ld de, $9345                                  ; $440E: $11 $45 $93
    ld h, l                                       ; $4411: $65
    ld [$4F46], a                                 ; $4412: $EA $46 $4F
    ld h, h                                       ; $4415: $64
    ld [de], a                                    ; $4416: $12
    ld c, b                                       ; $4417: $48
    ld l, c                                       ; $4418: $69
    rla                                           ; $4419: $17
    ld c, b                                       ; $441A: $48
    ld h, [hl]                                    ; $441B: $66
    ret nz                                        ; $441C: $C0

    ld e, h                                       ; $441D: $5C

jr_015_441E:
    ld hl, $0005                                  ; $441E: $21 $05 $00
    add c                                         ; $4421: $81
    ld e, l                                       ; $4422: $5D
    dec c                                         ; $4423: $0D
    inc de                                        ; $4424: $13

jr_015_4425:
    dec a                                         ; $4425: $3D
    pop de                                        ; $4426: $D1
    nop                                           ; $4427: $00
    jr nz, jr_015_4425                            ; $4428: $20 $FB

    ld d, b                                       ; $442A: $50
    ld [hl+], a                                   ; $442B: $22
    dec b                                         ; $442C: $05

jr_015_442D:
    ld b, b                                       ; $442D: $40
    dec b                                         ; $442E: $05
    ld [bc], a                                    ; $442F: $02
    db $ED                                        ; $4430: $ED
    ld h, e                                       ; $4431: $63
    ld [bc], a                                    ; $4432: $02
    ld b, $62                                     ; $4433: $06 $62
    ret nc                                        ; $4435: $D0

    nop                                           ; $4436: $00
    dec d                                         ; $4437: $15
    ld e, b                                       ; $4438: $58
    ld b, h                                       ; $4439: $44
    dec d                                         ; $443A: $15
    ld e, l                                       ; $443B: $5D
    ld b, h                                       ; $443C: $44
    ld l, e                                       ; $443D: $6B
    dec hl                                        ; $443E: $2B
    dec bc                                        ; $443F: $0B
    add b                                         ; $4440: $80
    ld c, h                                       ; $4441: $4C
    nop                                           ; $4442: $00
    add b                                         ; $4443: $80
    nop                                           ; $4444: $00
    dec bc                                        ; $4445: $0B
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    add d                                         ; $4448: $82
    rra                                           ; $4449: $1F
    dec d                                         ; $444A: $15
    sub h                                         ; $444B: $94
    ld b, e                                       ; $444C: $43
    ld a, [bc]                                    ; $444D: $0A
    nop                                           ; $444E: $00
    and [hl]                                      ; $444F: $A6
    and c                                         ; $4450: $A1
    db $10                                        ; $4451: $10
    ld [hl+], a                                   ; $4452: $22
    inc b                                         ; $4453: $04
    ld b, b                                       ; $4454: $40
    dec bc                                        ; $4455: $0B
    ld [bc], a                                    ; $4456: $02
    ld b, d                                       ; $4457: $42
    inc d                                         ; $4458: $14
    ld de, $4A35                                  ; $4459: $11 $35 $4A
    ld b, d                                       ; $445C: $42
    ld e, e                                       ; $445D: $5B
    dec d                                         ; $445E: $15
    ld h, l                                       ; $445F: $65
    ld b, h                                       ; $4460: $44
    ld b, l                                       ; $4461: $45
    ld de, $4A67                                  ; $4462: $11 $67 $4A
    ld b, e                                       ; $4465: $43
    nop                                           ; $4466: $00
    or b                                          ; $4467: $B0
    and c                                         ; $4468: $A1
    db $10                                        ; $4469: $10
    dec d                                         ; $446A: $15
    db $ED                                        ; $446B: $ED
    ld b, h                                       ; $446C: $44
    xor a                                         ; $446D: $AF
    or b                                          ; $446E: $B0
    and c                                         ; $446F: $A1
    db $10                                        ; $4470: $10
    sbc e                                         ; $4471: $9B
    jp hl                                         ; $4472: $E9


    ld d, l                                       ; $4473: $55
    sbc a                                         ; $4474: $9F
    ld e, c                                       ; $4475: $59
    ld l, a                                       ; $4476: $6F
    ld [hl], l                                    ; $4477: $75
    daa                                           ; $4478: $27
    ld [hl], d                                    ; $4479: $72
    ld h, l                                       ; $447A: $65
    jr nz, jr_015_44F1                            ; $447B: $20 $74

    ld l, b                                       ; $447D: $68
    ld h, l                                       ; $447E: $65
    jr nz, jr_015_44E8                            ; $447F: $20 $67

    ld [hl], l                                    ; $4481: $75
    ld a, c                                       ; $4482: $79
    rst $38                                       ; $4483: $FF
    ld [hl], a                                    ; $4484: $77
    ld l, b                                       ; $4485: $68
    ld l, a                                       ; $4486: $6F
    jr nz, jr_015_44FB                            ; $4487: $20 $72

    ld h, l                                       ; $4489: $65
    ld [hl], e                                    ; $448A: $73
    ld h, e                                       ; $448B: $63
    ld [hl], l                                    ; $448C: $75
    ld h, l                                       ; $448D: $65
    ld h, h                                       ; $448E: $64
    jr nz, jr_015_44FE                            ; $448F: $20 $6D

    ld h, l                                       ; $4491: $65
    ld hl, $49FE                                  ; $4492: $21 $FE $49
    jr nz, jr_015_44FB                            ; $4495: $20 $64

    ld l, a                                       ; $4497: $6F
    ld l, [hl]                                    ; $4498: $6E
    daa                                           ; $4499: $27
    ld [hl], h                                    ; $449A: $74
    jr nz, jr_015_4511                            ; $449B: $20 $74

    ld l, b                                       ; $449D: $68
    ld l, c                                       ; $449E: $69
    ld l, [hl]                                    ; $449F: $6E
    ld l, e                                       ; $44A0: $6B
    jr nz, jr_015_44EC                            ; $44A1: $20 $49

    rst $38                                       ; $44A3: $FF
    ld c, c                                       ; $44A4: $49
    jr nz, jr_015_451B                            ; $44A5: $20 $74

    ld l, b                                       ; $44A7: $68
    ld h, c                                       ; $44A8: $61
    ld l, [hl]                                    ; $44A9: $6E
    ld l, e                                       ; $44AA: $6B
    ld h, l                                       ; $44AB: $65
    ld h, h                                       ; $44AC: $64
    jr nz, @+$7B                                  ; $44AD: $20 $79

    ld l, a                                       ; $44AF: $6F
    ld [hl], l                                    ; $44B0: $75
    cp $70                                        ; $44B1: $FE $70
    ld [hl], d                                    ; $44B3: $72
    ld l, a                                       ; $44B4: $6F
    ld [hl], b                                    ; $44B5: $70
    ld h, l                                       ; $44B6: $65
    ld [hl], d                                    ; $44B7: $72
    ld l, h                                       ; $44B8: $6C
    ld a, c                                       ; $44B9: $79
    jr nz, jr_015_4522                            ; $44BA: $20 $66

    ld l, a                                       ; $44BC: $6F
    ld [hl], d                                    ; $44BD: $72
    rst $38                                       ; $44BE: $FF
    ld l, c                                       ; $44BF: $69
    ld [hl], h                                    ; $44C0: $74
    ld l, $20                                     ; $44C1: $2E $20
    ld c, b                                       ; $44C3: $48
    ld h, l                                       ; $44C4: $65
    ld [hl], d                                    ; $44C5: $72
    ld h, l                                       ; $44C6: $65
    inc l                                         ; $44C7: $2C
    jr nz, jr_015_453E                            ; $44C8: $20 $74

    ld h, c                                       ; $44CA: $61
    ld l, e                                       ; $44CB: $6B
    ld h, l                                       ; $44CC: $65
    cp $74                                        ; $44CD: $FE $74
    ld l, b                                       ; $44CF: $68
    ld l, c                                       ; $44D0: $69
    ld [hl], e                                    ; $44D1: $73
    ld l, $FE                                     ; $44D2: $2E $FE
    db $FD                                        ; $44D4: $FD
    add a                                         ; $44D5: $87
    nop                                           ; $44D6: $00
    dec d                                         ; $44D7: $15
    ld bc, $789B                                  ; $44D8: $01 $9B $78
    ld [hl], b                                    ; $44DB: $70
    sbc a                                         ; $44DC: $9F
    ld d, h                                       ; $44DD: $54
    ld l, a                                       ; $44DE: $6F
    ld l, [hl]                                    ; $44DF: $6E
    ld a, c                                       ; $44E0: $79
    jr nz, @+$69                                  ; $44E1: $20 $67

    ld l, a                                       ; $44E3: $6F
    ld [hl], h                                    ; $44E4: $74
    jr nz, jr_015_4548                            ; $44E5: $20 $61

    rst $38                                       ; $44E7: $FF

jr_015_44E8:
    db $FC                                        ; $44E8: $FC
    cp $FD                                        ; $44E9: $FE $FD
    sbc d                                         ; $44EB: $9A

jr_015_44EC:
    ld [de], a                                    ; $44EC: $12
    sbc e                                         ; $44ED: $9B
    jp hl                                         ; $44EE: $E9


    ld d, l                                       ; $44EF: $55
    sbc a                                         ; $44F0: $9F

jr_015_44F1:
    ld d, h                                       ; $44F1: $54
    ld l, b                                       ; $44F2: $68
    ld h, c                                       ; $44F3: $61
    ld l, [hl]                                    ; $44F4: $6E
    ld l, e                                       ; $44F5: $6B
    ld [hl], e                                    ; $44F6: $73
    jr nz, jr_015_455A                            ; $44F7: $20 $61

    ld h, a                                       ; $44F9: $67
    ld h, c                                       ; $44FA: $61

jr_015_44FB:
    ld l, c                                       ; $44FB: $69
    ld l, [hl]                                    ; $44FC: $6E
    rst $38                                       ; $44FD: $FF

jr_015_44FE:
    ld h, [hl]                                    ; $44FE: $66
    ld l, a                                       ; $44FF: $6F

jr_015_4500:
    ld [hl], d                                    ; $4500: $72
    jr nz, jr_015_4569                            ; $4501: $20 $66

    ld [hl], d                                    ; $4503: $72
    ld h, l                                       ; $4504: $65
    ld h, l                                       ; $4505: $65
    ld l, c                                       ; $4506: $69
    ld l, [hl]                                    ; $4507: $6E
    ld h, a                                       ; $4508: $67
    jr nz, @+$6F                                  ; $4509: $20 $6D

    ld h, l                                       ; $450B: $65
    ld hl, $FDFE                                  ; $450C: $21 $FE $FD
    sbc d                                         ; $450F: $9A
    ld [de], a                                    ; $4510: $12

jr_015_4511:
    sub e                                         ; $4511: $93
    ld h, l                                       ; $4512: $65
    db $DB                                        ; $4513: $DB
    ld b, [hl]                                    ; $4514: $46
    ld c, a                                       ; $4515: $4F
    ld h, h                                       ; $4516: $64
    ldh a, [rBGP]                                 ; $4517: $F0 $47
    ld l, c                                       ; $4519: $69
    add hl, bc                                    ; $451A: $09

jr_015_451B:
    ld c, b                                       ; $451B: $48
    ld h, [hl]                                    ; $451C: $66
    ret nz                                        ; $451D: $C0

    ld e, h                                       ; $451E: $5C
    ld hl, $0005                                  ; $451F: $21 $05 $00

jr_015_4522:
    add c                                         ; $4522: $81
    ld e, l                                       ; $4523: $5D
    dec b                                         ; $4524: $05
    dec b                                         ; $4525: $05

jr_015_4526:
    ld sp, $00D1                                  ; $4526: $31 $D1 $00
    jr nz, jr_015_4526                            ; $4529: $20 $FB

    ld d, b                                       ; $452B: $50
    ld [hl+], a                                   ; $452C: $22
    dec b                                         ; $452D: $05
    ld b, b                                       ; $452E: $40

jr_015_452F:
    dec b                                         ; $452F: $05
    jr nz, jr_015_4500                            ; $4530: $20 $CE

    ld h, e                                       ; $4532: $63
    ld a, [bc]                                    ; $4533: $0A
    add hl, bc                                    ; $4534: $09
    ld h, $D2                                     ; $4535: $26 $D2
    nop                                           ; $4537: $00
    ld [hl+], a                                   ; $4538: $22
    jp c, $1540                                   ; $4539: $DA $40 $15

    add hl, de                                    ; $453C: $19
    ld b, b                                       ; $453D: $40

jr_015_453E:
    dec b                                         ; $453E: $05
    rra                                           ; $453F: $1F
    adc $63                                       ; $4540: $CE $63
    ld a, [bc]                                    ; $4542: $0A
    add hl, bc                                    ; $4543: $09
    ld h, $D2                                     ; $4544: $26 $D2
    nop                                           ; $4546: $00
    ld [hl+], a                                   ; $4547: $22

jr_015_4548:
    jp c, $1540                                   ; $4548: $DA $40 $15

    add hl, de                                    ; $454B: $19
    ld b, b                                       ; $454C: $40
    dec b                                         ; $454D: $05
    ld [bc], a                                    ; $454E: $02
    ld l, e                                       ; $454F: $6B
    ld c, d                                       ; $4550: $4A
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    ret nc                                        ; $4554: $D0

    inc [hl]                                      ; $4555: $34
    ld [hl+], a                                   ; $4556: $22
    inc b                                         ; $4557: $04
    ld b, b                                       ; $4558: $40
    ld [hl+], a                                   ; $4559: $22

jr_015_455A:
    inc b                                         ; $455A: $04
    ld b, b                                       ; $455B: $40
    ld l, e                                       ; $455C: $6B
    dec d                                         ; $455D: $15
    inc h                                         ; $455E: $24
    ld b, b                                       ; $455F: $40
    ld d, l                                       ; $4560: $55
    ld b, b                                       ; $4561: $40
    add e                                         ; $4562: $83
    nop                                           ; $4563: $00
    dec bc                                        ; $4564: $0B
    nop                                           ; $4565: $00
    dec bc                                        ; $4566: $0B
    jr nz, @+$0D                                  ; $4567: $20 $0B

jr_015_4569:
    rra                                           ; $4569: $1F
    ld l, e                                       ; $456A: $6B

jr_015_456B:
    inc [hl]                                      ; $456B: $34
    dec c                                         ; $456C: $0D
    jr nc, jr_015_45D9                            ; $456D: $30 $6A

    nop                                           ; $456F: $00
    add b                                         ; $4570: $80
    nop                                           ; $4571: $00
    ld sp, $1115                                  ; $4572: $31 $15 $11
    ld b, l                                       ; $4575: $45
    ld [hl+], a                                   ; $4576: $22
    adc $40                                       ; $4577: $CE $40
    nop                                           ; $4579: $00
    add d                                         ; $457A: $82
    rra                                           ; $457B: $1F
    ld a, [bc]                                    ; $457C: $0A
    ld b, e                                       ; $457D: $43
    inc de                                        ; $457E: $13
    ld bc, $A2B3                                  ; $457F: $01 $B3 $A2
    dec b                                         ; $4582: $05
    ld [bc], a                                    ; $4583: $02
    dec d                                         ; $4584: $15
    sub b                                         ; $4585: $90
    ld b, l                                       ; $4586: $45
    ld a, [hl]                                    ; $4587: $7E
    dec [hl]                                      ; $4588: $35
    ret nc                                        ; $4589: $D0

    rlca                                          ; $458A: $07
    ld [de], a                                    ; $458B: $12
    rra                                           ; $458C: $1F
    ret nc                                        ; $458D: $D0

    nop                                           ; $458E: $00
    rra                                           ; $458F: $1F
    ld b, e                                       ; $4590: $43
    ld a, [bc]                                    ; $4591: $0A
    nop                                           ; $4592: $00
    xor b                                         ; $4593: $A8

jr_015_4594:
    and c                                         ; $4594: $A1
    ld [$A215], sp                                ; $4595: $08 $15 $A2
    ld b, l                                       ; $4598: $45
    ld a, [hl]                                    ; $4599: $7E
    ret                                           ; $459A: $C9


    reti                                          ; $459B: $D9


    rlca                                          ; $459C: $07
    add hl, bc                                    ; $459D: $09

jr_015_459E:
    rra                                           ; $459E: $1F
    ret nc                                        ; $459F: $D0

    nop                                           ; $45A0: $00
    rra                                           ; $45A1: $1F
    ld b, e                                       ; $45A2: $43
    ld a, [bc]                                    ; $45A3: $0A
    nop                                           ; $45A4: $00
    xor b                                         ; $45A5: $A8
    and c                                         ; $45A6: $A1
    db $10                                        ; $45A7: $10
    dec d                                         ; $45A8: $15
    or d                                          ; $45A9: $B2
    ld b, l                                       ; $45AA: $45
    add b                                         ; $45AB: $80
    ld a, [bc]                                    ; $45AC: $0A
    jr z, jr_015_452F                             ; $45AD: $28 $80

    jp nc, $E8C4                                  ; $45AF: $D2 $C4 $E8

    sub h                                         ; $45B2: $94
    ld b, d                                       ; $45B3: $42
    xor a                                         ; $45B4: $AF
    xor b                                         ; $45B5: $A8
    and c                                         ; $45B6: $A1
    ld [$0007], sp                                ; $45B7: $08 $07 $00
    ld l, e                                       ; $45BA: $6B
    ld c, d                                       ; $45BB: $4A
    add hl, bc                                    ; $45BC: $09
    nop                                           ; $45BD: $00
    jr nz, jr_015_456B                            ; $45BE: $20 $AB

    ld d, b                                       ; $45C0: $50
    ld b, b                                       ; $45C1: $40
    jr nz, jr_015_461E                            ; $45C2: $20 $5A

    dec d                                         ; $45C4: $15
    db $EB                                        ; $45C5: $EB
    ld b, l                                       ; $45C6: $45
    ld a, [hl]                                    ; $45C7: $7E
    pop de                                        ; $45C8: $D1
    reti                                          ; $45C9: $D9


    rlca                                          ; $45CA: $07
    add hl, bc                                    ; $45CB: $09
    rra                                           ; $45CC: $1F
    ret nc                                        ; $45CD: $D0

    nop                                           ; $45CE: $00
    rra                                           ; $45CF: $1F
    ld b, b                                       ; $45D0: $40
    ld b, b                                       ; $45D1: $40
    ld e, d                                       ; $45D2: $5A
    dec d                                         ; $45D3: $15
    db $EB                                        ; $45D4: $EB
    ld b, l                                       ; $45D5: $45
    ld a, [hl]                                    ; $45D6: $7E
    ret                                           ; $45D7: $C9


    reti                                          ; $45D8: $D9


jr_015_45D9:
    rlca                                          ; $45D9: $07
    add hl, bc                                    ; $45DA: $09
    rra                                           ; $45DB: $1F
    ret nc                                        ; $45DC: $D0

    nop                                           ; $45DD: $00
    rra                                           ; $45DE: $1F
    ld b, b                                       ; $45DF: $40
    ld b, b                                       ; $45E0: $40
    rlca                                          ; $45E1: $07
    nop                                           ; $45E2: $00
    add c                                         ; $45E3: $81
    ld e, l                                       ; $45E4: $5D
    add hl, bc                                    ; $45E5: $09
    nop                                           ; $45E6: $00
    jr nz, jr_015_4594                            ; $45E7: $20 $AB

    ld d, b                                       ; $45E9: $50
    ld b, d                                       ; $45EA: $42
    add e                                         ; $45EB: $83
    inc bc                                        ; $45EC: $03
    rst $38                                       ; $45ED: $FF
    nop                                           ; $45EE: $00
    inc bc                                        ; $45EF: $03
    ld bc, $0300                                  ; $45F0: $01 $00 $03
    nop                                           ; $45F3: $00
    rst $38                                       ; $45F4: $FF
    inc bc                                        ; $45F5: $03
    nop                                           ; $45F6: $00
    ld bc, $FF03                                  ; $45F7: $01 $03 $FF
    nop                                           ; $45FA: $00
    inc bc                                        ; $45FB: $03
    ld bc, $0300                                  ; $45FC: $01 $00 $03
    nop                                           ; $45FF: $00
    rst $38                                       ; $4600: $FF
    inc bc                                        ; $4601: $03
    nop                                           ; $4602: $00
    ld bc, $4200                                  ; $4603: $01 $00 $42
    xor a                                         ; $4606: $AF
    xor b                                         ; $4607: $A8
    and c                                         ; $4608: $A1
    db $10                                        ; $4609: $10
    add hl, bc                                    ; $460A: $09
    ld [bc], a                                    ; $460B: $02
    dec d                                         ; $460C: $15
    ld [de], a                                    ; $460D: $12
    ld b, [hl]                                    ; $460E: $46
    dec bc                                        ; $460F: $0B
    ld [bc], a                                    ; $4610: $02
    ld b, d                                       ; $4611: $42
    rrca                                          ; $4612: $0F
    nop                                           ; $4613: $00
    inc d                                         ; $4614: $14
    ld de, $7924                                  ; $4615: $11 $24 $79
    ld b, b                                       ; $4618: $40
    db $10                                        ; $4619: $10
    add b                                         ; $461A: $80
    ld a, [bc]                                    ; $461B: $0A
    jr z, jr_015_459E                             ; $461C: $28 $80

jr_015_461E:
    jp nc, $E8C4                                  ; $461E: $D2 $C4 $E8

    ld b, b                                       ; $4621: $40
    jr nc, jr_015_463D                            ; $4622: $30 $19

    add hl, bc                                    ; $4624: $09
    ld [bc], a                                    ; $4625: $02
    dec d                                         ; $4626: $15
    inc l                                         ; $4627: $2C
    ld b, [hl]                                    ; $4628: $46
    dec bc                                        ; $4629: $0B
    ld [bc], a                                    ; $462A: $02
    ld b, d                                       ; $462B: $42

jr_015_462C:
    rrca                                          ; $462C: $0F
    nop                                           ; $462D: $00
    inc d                                         ; $462E: $14
    ld de, $7924                                  ; $462F: $11 $24 $79
    dec c                                         ; $4632: $0D
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    db $FD                                        ; $4638: $FD
    ld b, b                                       ; $4639: $40
    ld b, b                                       ; $463A: $40
    add hl, de                                    ; $463B: $19
    sub e                                         ; $463C: $93

jr_015_463D:
    ld h, l                                       ; $463D: $65
    ld sp, hl                                     ; $463E: $F9
    ld b, [hl]                                    ; $463F: $46
    ld c, a                                       ; $4640: $4F
    ld h, h                                       ; $4641: $64
    inc h                                         ; $4642: $24
    ld c, b                                       ; $4643: $48
    ld h, [hl]                                    ; $4644: $66
    ret nz                                        ; $4645: $C0

    ld e, h                                       ; $4646: $5C
    ld hl, $1595                                  ; $4647: $21 $95 $15
    sub h                                         ; $464A: $94
    ld b, [hl]                                    ; $464B: $46
    dec b                                         ; $464C: $05
    nop                                           ; $464D: $00
    add c                                         ; $464E: $81
    ld e, l                                       ; $464F: $5D
    dec b                                         ; $4650: $05
    dec b                                         ; $4651: $05

jr_015_4652:
    ld l, c                                       ; $4652: $69
    ret nc                                        ; $4653: $D0

    nop                                           ; $4654: $00
    jr nz, jr_015_4652                            ; $4655: $20 $FB

    ld d, b                                       ; $4657: $50
    ld [hl+], a                                   ; $4658: $22
    dec b                                         ; $4659: $05
    ld b, b                                       ; $465A: $40
    dec b                                         ; $465B: $05
    jr nz, jr_015_462C                            ; $465C: $20 $CE

    ld h, e                                       ; $465E: $63
    ld a, [bc]                                    ; $465F: $0A
    add hl, bc                                    ; $4660: $09
    cp [hl]                                       ; $4661: $BE
    ret nc                                        ; $4662: $D0

    nop                                           ; $4663: $00
    ld [hl+], a                                   ; $4664: $22
    jp c, $1540                                   ; $4665: $DA $40 $15

    add hl, de                                    ; $4668: $19
    ld b, b                                       ; $4669: $40
    dec b                                         ; $466A: $05
    rra                                           ; $466B: $1F
    adc $63                                       ; $466C: $CE $63
    ld a, [bc]                                    ; $466E: $0A
    add hl, bc                                    ; $466F: $09
    cp [hl]                                       ; $4670: $BE
    ret nc                                        ; $4671: $D0

    nop                                           ; $4672: $00
    ld [hl+], a                                   ; $4673: $22
    jp c, $1540                                   ; $4674: $DA $40 $15

    add hl, de                                    ; $4677: $19
    ld b, b                                       ; $4678: $40
    dec bc                                        ; $4679: $0B
    nop                                           ; $467A: $00
    dec bc                                        ; $467B: $0B
    jr nz, @+$0D                                  ; $467C: $20 $0B

    rra                                           ; $467E: $1F
    ld l, e                                       ; $467F: $6B
    inc [hl]                                      ; $4680: $34
    dec c                                         ; $4681: $0D
    jr nc, jr_015_46EE                            ; $4682: $30 $6A

    nop                                           ; $4684: $00
    add b                                         ; $4685: $80
    nop                                           ; $4686: $00
    ld sp, $3C15                                  ; $4687: $31 $15 $3C
    ld b, [hl]                                    ; $468A: $46
    ld [hl+], a                                   ; $468B: $22
    adc $40                                       ; $468C: $CE $40
    nop                                           ; $468E: $00
    add d                                         ; $468F: $82
    rra                                           ; $4690: $1F
    ld a, [bc]                                    ; $4691: $0A
    sub h                                         ; $4692: $94
    ld b, d                                       ; $4693: $42
    ld b, e                                       ; $4694: $43
    ld [$010F], sp                                ; $4695: $08 $0F $01
    inc h                                         ; $4698: $24
    rst $00                                       ; $4699: $C7
    ld b, $29                                     ; $469A: $06 $29
    nop                                           ; $469C: $00
    rrca                                          ; $469D: $0F

jr_015_469E:
    ld bc, $C725                                  ; $469E: $01 $25 $C7
    ld b, $B0                                     ; $46A1: $06 $B0
    nop                                           ; $46A3: $00
    dec d                                         ; $46A4: $15
    xor b                                         ; $46A5: $A8
    ld b, [hl]                                    ; $46A6: $46
    ld b, d                                       ; $46A7: $42
    sbc e                                         ; $46A8: $9B
    ld a, b                                       ; $46A9: $78
    ld [hl], b                                    ; $46AA: $70

jr_015_46AB:
    sbc a                                         ; $46AB: $9F
    ld d, h                                       ; $46AC: $54
    ld l, a                                       ; $46AD: $6F
    ld l, [hl]                                    ; $46AE: $6E
    ld a, c                                       ; $46AF: $79
    jr nz, @+$64                                  ; $46B0: $20 $62

    ld l, h                                       ; $46B2: $6C
    ld l, a                                       ; $46B3: $6F
    ld [hl], a                                    ; $46B4: $77
    ld [hl], e                                    ; $46B5: $73
    rst $38                                       ; $46B6: $FF
    ld [hl], h                                    ; $46B7: $74
    ld l, b                                       ; $46B8: $68
    ld [hl], d                                    ; $46B9: $72
    ld l, a                                       ; $46BA: $6F
    ld [hl], l                                    ; $46BB: $75
    ld h, a                                       ; $46BC: $67
    ld l, b                                       ; $46BD: $68
    jr nz, @+$71                                  ; $46BE: $20 $6F

    ld l, [hl]                                    ; $46C0: $6E
    ld h, l                                       ; $46C1: $65
    cp $6F                                        ; $46C2: $FE $6F
    ld h, [hl]                                    ; $46C4: $66
    jr nz, @+$76                                  ; $46C5: $20 $74

    ld l, b                                       ; $46C7: $68
    ld h, l                                       ; $46C8: $65
    jr nz, jr_015_473E                            ; $46C9: $20 $73

    ld [hl], h                                    ; $46CB: $74
    ld l, a                                       ; $46CC: $6F
    ld l, a                                       ; $46CD: $6F
    ld l, h                                       ; $46CE: $6C
    daa                                           ; $46CF: $27
    ld [hl], e                                    ; $46D0: $73
    rst $38                                       ; $46D1: $FF
    ld l, b                                       ; $46D2: $68
    ld l, a                                       ; $46D3: $6F
    ld l, h                                       ; $46D4: $6C
    ld l, h                                       ; $46D5: $6C
    ld l, a                                       ; $46D6: $6F
    ld [hl], a                                    ; $46D7: $77
    jr nz, jr_015_4746                            ; $46D8: $20 $6C

    ld h, l                                       ; $46DA: $65
    ld h, a                                       ; $46DB: $67
    ld [hl], e                                    ; $46DC: $73
    ld l, $FE                                     ; $46DD: $2E $FE
    db $FD                                        ; $46DF: $FD
    sbc d                                         ; $46E0: $9A
    rlca                                          ; $46E1: $07
    nop                                           ; $46E2: $00
    ld l, e                                       ; $46E3: $6B
    ld c, d                                       ; $46E4: $4A
    add hl, bc                                    ; $46E5: $09
    nop                                           ; $46E6: $00
    jr nz, jr_015_469E                            ; $46E7: $20 $B5

    ld d, b                                       ; $46E9: $50
    ld b, b                                       ; $46EA: $40
    ld h, h                                       ; $46EB: $64
    ld e, d                                       ; $46EC: $5A
    dec d                                         ; $46ED: $15

jr_015_46EE:
    dec d                                         ; $46EE: $15
    ld b, a                                       ; $46EF: $47
    ld b, b                                       ; $46F0: $40
    ld h, h                                       ; $46F1: $64
    ld e, d                                       ; $46F2: $5A
    dec d                                         ; $46F3: $15
    dec d                                         ; $46F4: $15
    ld b, a                                       ; $46F5: $47
    ld b, b                                       ; $46F6: $40
    ld h, h                                       ; $46F7: $64
    ld e, d                                       ; $46F8: $5A
    dec d                                         ; $46F9: $15
    dec d                                         ; $46FA: $15
    ld b, a                                       ; $46FB: $47
    add hl, bc                                    ; $46FC: $09
    nop                                           ; $46FD: $00
    jr nz, jr_015_46AB                            ; $46FE: $20 $AB

    ld d, b                                       ; $4700: $50
    sbc e                                         ; $4701: $9B
    ld a, b                                       ; $4702: $78
    ld [hl], b                                    ; $4703: $70
    sbc a                                         ; $4704: $9F
    ld d, l                                       ; $4705: $55
    ld l, b                                       ; $4706: $68
    inc l                                         ; $4707: $2C
    jr nz, jr_015_4779                            ; $4708: $20 $6F

    ld l, b                                       ; $470A: $68
    ld l, $FE                                     ; $470B: $2E $FE
    db $FD                                        ; $470D: $FD
    sbc d                                         ; $470E: $9A
    ld b, b                                       ; $470F: $40
    jr nz, @+$47                                  ; $4710: $20 $45

    dec d                                         ; $4712: $15
    or $40                                        ; $4713: $F6 $40
    add e                                         ; $4715: $83
    inc bc                                        ; $4716: $03
    rst $38                                       ; $4717: $FF
    nop                                           ; $4718: $00
    inc bc                                        ; $4719: $03
    ld bc, $0300                                  ; $471A: $01 $00 $03
    nop                                           ; $471D: $00
    rst $38                                       ; $471E: $FF
    inc bc                                        ; $471F: $03
    nop                                           ; $4720: $00
    ld bc, $FF03                                  ; $4721: $01 $03 $FF
    nop                                           ; $4724: $00
    inc bc                                        ; $4725: $03
    ld bc, $0300                                  ; $4726: $01 $00 $03
    nop                                           ; $4729: $00
    rst $38                                       ; $472A: $FF
    inc bc                                        ; $472B: $03
    nop                                           ; $472C: $00
    ld bc, $4200                                  ; $472D: $01 $00 $42
    ld [bc], a                                    ; $4730: $02
    inc bc                                        ; $4731: $03
    ld de, $1D00                                  ; $4732: $11 $00 $1D
    ld b, l                                       ; $4735: $45
    dec d                                         ; $4736: $15
    ld e, h                                       ; $4737: $5C
    ld b, c                                       ; $4738: $41

jr_015_4739:
    ld [bc], a                                    ; $4739: $02
    jr jr_015_473F                                ; $473A: $18 $03

    nop                                           ; $473C: $00
    inc de                                        ; $473D: $13

jr_015_473E:
    ld b, l                                       ; $473E: $45

jr_015_473F:
    dec d                                         ; $473F: $15
    cp [hl]                                       ; $4740: $BE
    ld b, a                                       ; $4741: $47
    ld [bc], a                                    ; $4742: $02
    dec sp                                        ; $4743: $3B
    nop                                           ; $4744: $00
    dec bc                                        ; $4745: $0B

jr_015_4746:
    daa                                           ; $4746: $27
    ld b, l                                       ; $4747: $45
    dec d                                         ; $4748: $15
    ld de, $9345                                  ; $4749: $11 $45 $93
    ld h, l                                       ; $474C: $65
    ld [$4F47], sp                                ; $474D: $08 $47 $4F
    ld h, h                                       ; $4750: $64
    add hl, hl                                    ; $4751: $29
    ld c, b                                       ; $4752: $48
    ld h, [hl]                                    ; $4753: $66
    ret nz                                        ; $4754: $C0

    ld e, h                                       ; $4755: $5C
    ld hl, $0005                                  ; $4756: $21 $05 $00
    add c                                         ; $4759: $81
    ld e, l                                       ; $475A: $5D
    dec b                                         ; $475B: $05
    dec b                                         ; $475C: $05

jr_015_475D:
    ld sp, $00D1                                  ; $475D: $31 $D1 $00
    jr nz, jr_015_475D                            ; $4760: $20 $FB

    ld d, b                                       ; $4762: $50
    ld [hl+], a                                   ; $4763: $22
    dec b                                         ; $4764: $05
    ld b, b                                       ; $4765: $40
    dec bc                                        ; $4766: $0B
    nop                                           ; $4767: $00
    dec b                                         ; $4768: $05
    jr nz, jr_015_4739                            ; $4769: $20 $CE

    ld h, e                                       ; $476B: $63
    ld a, [bc]                                    ; $476C: $0A
    add hl, bc                                    ; $476D: $09
    ld h, $D2                                     ; $476E: $26 $D2
    nop                                           ; $4770: $00
    ld [hl+], a                                   ; $4771: $22
    jp c, $1540                                   ; $4772: $DA $40 $15

    add hl, de                                    ; $4775: $19
    ld b, b                                       ; $4776: $40
    dec b                                         ; $4777: $05
    rra                                           ; $4778: $1F

jr_015_4779:
    adc $63                                       ; $4779: $CE $63
    ld a, [bc]                                    ; $477B: $0A
    add hl, bc                                    ; $477C: $09
    ld h, $D2                                     ; $477D: $26 $D2
    nop                                           ; $477F: $00
    ld [hl+], a                                   ; $4780: $22
    jp c, $1540                                   ; $4781: $DA $40 $15

    add hl, de                                    ; $4784: $19
    ld b, b                                       ; $4785: $40
    dec bc                                        ; $4786: $0B
    jr nz, @+$0D                                  ; $4787: $20 $0B

    rra                                           ; $4789: $1F
    ld l, e                                       ; $478A: $6B
    inc [hl]                                      ; $478B: $34
    dec c                                         ; $478C: $0D
    jr nc, jr_015_47F9                            ; $478D: $30 $6A

    nop                                           ; $478F: $00
    add b                                         ; $4790: $80
    nop                                           ; $4791: $00
    ld sp, $9F15                                  ; $4792: $31 $15 $9F
    ld b, a                                       ; $4795: $47
    ld [hl+], a                                   ; $4796: $22
    adc $40                                       ; $4797: $CE $40
    nop                                           ; $4799: $00
    add d                                         ; $479A: $82
    rra                                           ; $479B: $1F
    ld a, [bc]                                    ; $479C: $0A
    sub h                                         ; $479D: $94
    ld b, d                                       ; $479E: $42
    sub e                                         ; $479F: $93
    ld l, d                                       ; $47A0: $6A
    rst $28                                       ; $47A1: $EF
    ld e, a                                       ; $47A2: $5F
    ld a, h                                       ; $47A3: $7C
    ld a, h                                       ; $47A4: $7C
    ld e, b                                       ; $47A5: $58
    ld a, h                                       ; $47A6: $7C
    ld b, [hl]                                    ; $47A7: $46
    ld d, b                                       ; $47A8: $50
    ld b, a                                       ; $47A9: $47
    ld [bc], a                                    ; $47AA: $02
    inc bc                                        ; $47AB: $03

jr_015_47AC:
    jr jr_015_47C1                                ; $47AC: $18 $13

    nop                                           ; $47AE: $00
    ld b, l                                       ; $47AF: $45
    dec d                                         ; $47B0: $15
    ld c, e                                       ; $47B1: $4B
    ld b, a                                       ; $47B2: $47
    sub [hl]                                      ; $47B3: $96
    dec d                                         ; $47B4: $15
    or e                                          ; $47B5: $B3
    ld b, a                                       ; $47B6: $47
    ld bc, $1621                                  ; $47B7: $01 $21 $16
    ld b, l                                       ; $47BA: $45
    cpl                                           ; $47BB: $2F
    ld sp, hl                                     ; $47BC: $F9
    ld b, h                                       ; $47BD: $44
    sub e                                         ; $47BE: $93
    ld h, l                                       ; $47BF: $65
    rla                                           ; $47C0: $17

jr_015_47C1:
    ld b, a                                       ; $47C1: $47
    ld c, a                                       ; $47C2: $4F
    ld h, h                                       ; $47C3: $64
    ld [hl], $48                                  ; $47C4: $36 $48
    ld h, [hl]                                    ; $47C6: $66
    ret nz                                        ; $47C7: $C0

    ld e, h                                       ; $47C8: $5C
    ld hl, $0005                                  ; $47C9: $21 $05 $00
    add c                                         ; $47CC: $81
    ld e, l                                       ; $47CD: $5D
    dec b                                         ; $47CE: $05
    dec b                                         ; $47CF: $05

jr_015_47D0:
    ld b, c                                       ; $47D0: $41
    ret nc                                        ; $47D1: $D0

    nop                                           ; $47D2: $00
    jr nz, jr_015_47D0                            ; $47D3: $20 $FB

    ld d, b                                       ; $47D5: $50
    ld [hl+], a                                   ; $47D6: $22
    dec b                                         ; $47D7: $05
    ld b, b                                       ; $47D8: $40
    dec bc                                        ; $47D9: $0B
    nop                                           ; $47DA: $00
    dec b                                         ; $47DB: $05
    jr nz, jr_015_47AC                            ; $47DC: $20 $CE

    ld h, e                                       ; $47DE: $63
    ld a, [bc]                                    ; $47DF: $0A
    add hl, bc                                    ; $47E0: $09
    halt                                          ; $47E1: $76
    ret nc                                        ; $47E2: $D0

    nop                                           ; $47E3: $00
    ld [hl+], a                                   ; $47E4: $22
    jp c, $1540                                   ; $47E5: $DA $40 $15

    add hl, de                                    ; $47E8: $19
    ld b, b                                       ; $47E9: $40
    dec b                                         ; $47EA: $05
    rra                                           ; $47EB: $1F
    adc $63                                       ; $47EC: $CE $63
    ld a, [bc]                                    ; $47EE: $0A
    add hl, bc                                    ; $47EF: $09
    halt                                          ; $47F0: $76
    ret nc                                        ; $47F1: $D0

    nop                                           ; $47F2: $00
    ld [hl+], a                                   ; $47F3: $22
    jp c, $1540                                   ; $47F4: $DA $40 $15

    add hl, de                                    ; $47F7: $19
    ld b, b                                       ; $47F8: $40

jr_015_47F9:
    dec bc                                        ; $47F9: $0B
    jr nz, @+$0D                                  ; $47FA: $20 $0B

    rra                                           ; $47FC: $1F
    ld l, e                                       ; $47FD: $6B
    inc [hl]                                      ; $47FE: $34
    dec c                                         ; $47FF: $0D
    jr nc, jr_015_486C                            ; $4800: $30 $6A

    nop                                           ; $4802: $00
    add b                                         ; $4803: $80
    nop                                           ; $4804: $00
    ld sp, $BE15                                  ; $4805: $31 $15 $BE
    ld b, a                                       ; $4808: $47
    ld [hl+], a                                   ; $4809: $22
    adc $40                                       ; $480A: $CE $40
    nop                                           ; $480C: $00
    add d                                         ; $480D: $82
    rra                                           ; $480E: $1F
    ld a, [bc]                                    ; $480F: $0A
    sub h                                         ; $4810: $94
    ld b, d                                       ; $4811: $42
    sub [hl]                                      ; $4812: $96
    dec d                                         ; $4813: $15
    ld [de], a                                    ; $4814: $12
    ld c, b                                       ; $4815: $48
    ld bc, $1521                                  ; $4816: $01 $21 $15
    ld b, l                                       ; $4819: $45
    cpl                                           ; $481A: $2F
    ld sp, hl                                     ; $481B: $F9
    ld b, h                                       ; $481C: $44
    xor h                                         ; $481D: $AC
    or d                                          ; $481E: $B2
    and d                                         ; $481F: $A2
    nop                                           ; $4820: $00
    sub [hl]                                      ; $4821: $96
    dec d                                         ; $4822: $15
    dec e                                         ; $4823: $1D
    ld c, b                                       ; $4824: $48
    ld bc, $310E                                  ; $4825: $01 $0E $31
    ld b, l                                       ; $4828: $45
    inc de                                        ; $4829: $13
    add hl, hl                                    ; $482A: $29
    ld h, c                                       ; $482B: $61
    sbc e                                         ; $482C: $9B
    ld c, c                                       ; $482D: $49
    ld b, [hl]                                    ; $482E: $46
    sbc a                                         ; $482F: $9F
    ld d, a                                       ; $4830: $57
    ld l, a                                       ; $4831: $6F
    ld [hl], a                                    ; $4832: $77
    ld hl, $4920                                  ; $4833: $21 $20 $49
    daa                                           ; $4836: $27
    halt                                          ; $4837: $76
    ld h, l                                       ; $4838: $65
    ld l, $2E                                     ; $4839: $2E $2E
    ld l, $FF                                     ; $483B: $2E $FF
    ld l, [hl]                                    ; $483D: $6E
    ld h, l                                       ; $483E: $65
    halt                                          ; $483F: $76
    ld h, l                                       ; $4840: $65
    ld [hl], d                                    ; $4841: $72
    jr nz, jr_015_48B7                            ; $4842: $20 $73

    ld h, l                                       ; $4844: $65
    ld h, l                                       ; $4845: $65
    ld l, [hl]                                    ; $4846: $6E
    cp $61                                        ; $4847: $FE $61
    ld l, [hl]                                    ; $4849: $6E
    ld a, c                                       ; $484A: $79
    ld [hl], h                                    ; $484B: $74
    ld l, b                                       ; $484C: $68
    ld l, c                                       ; $484D: $69
    ld l, [hl]                                    ; $484E: $6E
    ld h, a                                       ; $484F: $67
    jr nz, jr_015_48BE                            ; $4850: $20 $6C

    ld l, c                                       ; $4852: $69
    ld l, e                                       ; $4853: $6B
    ld h, l                                       ; $4854: $65
    rst $38                                       ; $4855: $FF
    ld [hl], h                                    ; $4856: $74
    ld l, b                                       ; $4857: $68
    ld l, c                                       ; $4858: $69
    ld [hl], e                                    ; $4859: $73
    ld hl, $FDFE                                  ; $485A: $21 $FE $FD
    sbc e                                         ; $485D: $9B
    ld a, b                                       ; $485E: $78
    ld [hl], b                                    ; $485F: $70
    sbc a                                         ; $4860: $9F
    ld b, e                                       ; $4861: $43
    ld h, c                                       ; $4862: $61
    ld [hl], d                                    ; $4863: $72
    ld h, l                                       ; $4864: $65
    ld h, [hl]                                    ; $4865: $66
    ld [hl], l                                    ; $4866: $75
    ld l, h                                       ; $4867: $6C
    inc l                                         ; $4868: $2C
    rst $38                                       ; $4869: $FF
    ld l, c                                       ; $486A: $69
    ld [hl], h                                    ; $486B: $74

jr_015_486C:
    daa                                           ; $486C: $27
    ld [hl], e                                    ; $486D: $73
    ld l, $2E                                     ; $486E: $2E $2E
    ld l, $FE                                     ; $4870: $2E $FE
    db $FD                                        ; $4872: $FD
    sbc e                                         ; $4873: $9B
    jr jr_015_48C4                                ; $4874: $18 $4E

    sbc a                                         ; $4876: $9F
    ld d, e                                       ; $4877: $53
    ld [hl], h                                    ; $4878: $74
    ld h, c                                       ; $4879: $61
    ld l, [hl]                                    ; $487A: $6E
    ld h, h                                       ; $487B: $64
    jr nz, jr_015_48DF                            ; $487C: $20 $61

    ld [hl], e                                    ; $487E: $73
    ld l, c                                       ; $487F: $69
    ld h, h                                       ; $4880: $64
    ld h, l                                       ; $4881: $65
    inc l                                         ; $4882: $2C
    rst $38                                       ; $4883: $FF
    ld [hl], e                                    ; $4884: $73
    ld h, e                                       ; $4885: $63
    ld [hl], d                                    ; $4886: $72
    ld h, c                                       ; $4887: $61
    ld [hl], a                                    ; $4888: $77
    ld l, [hl]                                    ; $4889: $6E
    ld a, c                                       ; $488A: $79
    ld hl, $5420                                  ; $488B: $21 $20 $54
    ld l, b                                       ; $488E: $68
    ld l, c                                       ; $488F: $69
    ld [hl], e                                    ; $4890: $73
    cp $69                                        ; $4891: $FE $69
    ld [hl], e                                    ; $4893: $73
    jr nz, jr_015_48F7                            ; $4894: $20 $61

    jr nz, jr_015_4902                            ; $4896: $20 $6A

    ld l, a                                       ; $4898: $6F
    ld h, d                                       ; $4899: $62
    jr nz, jr_015_4902                            ; $489A: $20 $66

    ld l, a                                       ; $489C: $6F
    ld [hl], d                                    ; $489D: $72
    rst $38                                       ; $489E: $FF
    ld b, a                                       ; $489F: $47
    ld c, a                                       ; $48A0: $4F
    ld b, a                                       ; $48A1: $47
    ld c, a                                       ; $48A2: $4F
    ld d, d                                       ; $48A3: $52
    ld hl, $FE21                                  ; $48A4: $21 $21 $FE
    db $FD                                        ; $48A7: $FD
    sbc d                                         ; $48A8: $9A
    ld e, b                                       ; $48A9: $58
    ld bc, $9B42                                  ; $48AA: $01 $42 $9B
    jr @+$50                                      ; $48AD: $18 $4E

    sbc a                                         ; $48AF: $9F
    ld c, b                                       ; $48B0: $48
    ld l, l                                       ; $48B1: $6D
    ld l, l                                       ; $48B2: $6D
    ld l, $2E                                     ; $48B3: $2E $2E
    ld l, $20                                     ; $48B5: $2E $20

jr_015_48B7:
    ld l, [hl]                                    ; $48B7: $6E
    ld l, a                                       ; $48B8: $6F
    ld [hl], a                                    ; $48B9: $77
    rst $38                                       ; $48BA: $FF
    ld l, h                                       ; $48BB: $6C
    ld h, l                                       ; $48BC: $65
    ld [hl], h                                    ; $48BD: $74

jr_015_48BE:
    jr nz, jr_015_492D                            ; $48BE: $20 $6D

    ld h, l                                       ; $48C0: $65
    jr nz, jr_015_4936                            ; $48C1: $20 $73

    ld h, l                                       ; $48C3: $65

jr_015_48C4:
    ld h, l                                       ; $48C4: $65
    ld l, $2E                                     ; $48C5: $2E $2E
    ld l, $FE                                     ; $48C7: $2E $FE
    ld b, c                                       ; $48C9: $41
    ld l, b                                       ; $48CA: $68
    jr nz, jr_015_4935                            ; $48CB: $20 $68

    ld h, c                                       ; $48CD: $61
    ld hl, $FE21                                  ; $48CE: $21 $21 $FE
    db $FD                                        ; $48D1: $FD
    sbc d                                         ; $48D2: $9A
    ld e, b                                       ; $48D3: $58
    ld a, [bc]                                    ; $48D4: $0A
    ld b, d                                       ; $48D5: $42
    sbc e                                         ; $48D6: $9B
    add hl, de                                    ; $48D7: $19
    ld c, [hl]                                    ; $48D8: $4E
    sbc a                                         ; $48D9: $9F
    ld d, a                                       ; $48DA: $57
    ld l, b                                       ; $48DB: $68
    ld h, l                                       ; $48DC: $65
    ld [hl], d                                    ; $48DD: $72
    ld h, l                                       ; $48DE: $65

jr_015_48DF:
    daa                                           ; $48DF: $27
    ld [hl], e                                    ; $48E0: $73
    jr nz, jr_015_492A                            ; $48E1: $20 $47

    ld l, a                                       ; $48E3: $6F
    ld h, a                                       ; $48E4: $67
    ld l, a                                       ; $48E5: $6F
    ld [hl], d                                    ; $48E6: $72
    rst $38                                       ; $48E7: $FF
    ld h, a                                       ; $48E8: $67
    ld l, a                                       ; $48E9: $6F
    ld l, c                                       ; $48EA: $69
    ld l, [hl]                                    ; $48EB: $6E
    ld h, a                                       ; $48EC: $67
    ccf                                           ; $48ED: $3F
    cp $FD                                        ; $48EE: $FE $FD
    sbc e                                         ; $48F0: $9B
    ret c                                         ; $48F1: $D8

    ld a, c                                       ; $48F2: $79
    sbc a                                         ; $48F3: $9F
    ld b, d                                       ; $48F4: $42
    ld h, l                                       ; $48F5: $65
    ld h, c                                       ; $48F6: $61

jr_015_48F7:
    ld [hl], h                                    ; $48F7: $74
    ld [hl], e                                    ; $48F8: $73
    jr nz, @+$6F                                  ; $48F9: $20 $6D

    ld h, l                                       ; $48FB: $65
    ld l, $2E                                     ; $48FC: $2E $2E
    ld l, $FE                                     ; $48FE: $2E $FE
    db $FD                                        ; $4900: $FD
    sbc d                                         ; $4901: $9A

jr_015_4902:
    ld e, b                                       ; $4902: $58
    dec bc                                        ; $4903: $0B
    ld b, d                                       ; $4904: $42
    sbc e                                         ; $4905: $9B
    jr jr_015_4956                                ; $4906: $18 $4E

    sbc a                                         ; $4908: $9F
    ld c, c                                       ; $4909: $49
    daa                                           ; $490A: $27
    ld l, h                                       ; $490B: $6C
    ld l, h                                       ; $490C: $6C
    jr nz, @+$75                                  ; $490D: $20 $73

    ld h, l                                       ; $490F: $65
    ld h, c                                       ; $4910: $61
    ld l, h                                       ; $4911: $6C
    jr nz, jr_015_497D                            ; $4912: $20 $69

    ld [hl], h                                    ; $4914: $74
    rst $38                                       ; $4915: $FF
    ld [hl], a                                    ; $4916: $77
    ld l, c                                       ; $4917: $69
    ld [hl], h                                    ; $4918: $74
    ld l, b                                       ; $4919: $68
    jr nz, jr_015_4990                            ; $491A: $20 $74

    ld l, b                                       ; $491C: $68
    ld l, c                                       ; $491D: $69
    ld [hl], e                                    ; $491E: $73
    jr nz, jr_015_4993                            ; $491F: $20 $72

    ld l, a                                       ; $4921: $6F
    ld h, e                                       ; $4922: $63
    ld l, e                                       ; $4923: $6B
    ld hl, $FDFE                                  ; $4924: $21 $FE $FD
    ld d, [hl]                                    ; $4927: $56
    add hl, bc                                    ; $4928: $09
    ld e, b                                       ; $4929: $58

jr_015_492A:
    ld [bc], a                                    ; $492A: $02
    sbc e                                         ; $492B: $9B
    ld a, b                                       ; $492C: $78

jr_015_492D:
    ld [hl], b                                    ; $492D: $70
    sbc a                                         ; $492E: $9F
    ld c, [hl]                                    ; $492F: $4E
    ld l, a                                       ; $4930: $6F
    inc l                                         ; $4931: $2C
    jr nz, jr_015_49AB                            ; $4932: $20 $77

    ld h, c                                       ; $4934: $61

jr_015_4935:
    ld l, c                                       ; $4935: $69

jr_015_4936:
    ld [hl], h                                    ; $4936: $74
    ld hl, $4920                                  ; $4937: $21 $20 $49
    ld [hl], h                                    ; $493A: $74
    rst $38                                       ; $493B: $FF
    ld [hl], a                                    ; $493C: $77
    ld l, a                                       ; $493D: $6F
    ld l, [hl]                                    ; $493E: $6E
    daa                                           ; $493F: $27
    ld [hl], h                                    ; $4940: $74
    jr nz, @+$79                                  ; $4941: $20 $77

    ld l, a                                       ; $4943: $6F
    ld [hl], d                                    ; $4944: $72
    ld l, e                                       ; $4945: $6B
    ld hl, $5920                                  ; $4946: $21 $20 $59
    ld l, a                                       ; $4949: $6F
    ld [hl], l                                    ; $494A: $75
    rst $38                                       ; $494B: $FF
    ld h, e                                       ; $494C: $63
    ld h, c                                       ; $494D: $61
    ld l, [hl]                                    ; $494E: $6E
    daa                                           ; $494F: $27
    ld [hl], h                                    ; $4950: $74
    dec l                                         ; $4951: $2D
    rst $38                                       ; $4952: $FF
    db $FD                                        ; $4953: $FD
    sbc d                                         ; $4954: $9A
    ld b, d                                       ; $4955: $42

jr_015_4956:
    sbc e                                         ; $4956: $9B
    jr jr_015_49A7                                ; $4957: $18 $4E

    sbc a                                         ; $4959: $9F
    ld l, $2E                                     ; $495A: $2E $2E
    ld l, $2E                                     ; $495C: $2E $2E
    ld l, $2E                                     ; $495E: $2E $2E
    ld l, $2E                                     ; $4960: $2E $2E
    ld l, $FE                                     ; $4962: $2E $FE
    db $FD                                        ; $4964: $FD
    sbc d                                         ; $4965: $9A
    add e                                         ; $4966: $83
    jr nc, jr_015_4969                            ; $4967: $30 $00

jr_015_4969:
    ld [bc], a                                    ; $4969: $02
    nop                                           ; $496A: $00
    sbc e                                         ; $496B: $9B
    ld a, b                                       ; $496C: $78
    ld [hl], b                                    ; $496D: $70
    sbc a                                         ; $496E: $9F
    ld b, c                                       ; $496F: $41
    ld [hl], e                                    ; $4970: $73
    jr nz, jr_015_49BC                            ; $4971: $20 $49

    jr nz, jr_015_49EC                            ; $4973: $20 $77

    ld h, c                                       ; $4975: $61
    ld [hl], e                                    ; $4976: $73
    jr nz, jr_015_49ED                            ; $4977: $20 $74

    ld [hl], d                                    ; $4979: $72
    ld a, c                                       ; $497A: $79
    ld l, c                                       ; $497B: $69
    ld l, [hl]                                    ; $497C: $6E

jr_015_497D:
    ld h, a                                       ; $497D: $67
    rst $38                                       ; $497E: $FF
    ld [hl], h                                    ; $497F: $74
    ld l, a                                       ; $4980: $6F
    jr nz, @+$75                                  ; $4981: $20 $73

    ld h, c                                       ; $4983: $61
    ld a, c                                       ; $4984: $79
    inc l                                         ; $4985: $2C
    jr nz, @+$7B                                  ; $4986: $20 $79

    ld l, a                                       ; $4988: $6F
    ld [hl], l                                    ; $4989: $75
    cp $63                                        ; $498A: $FE $63
    ld h, c                                       ; $498C: $61
    ld l, [hl]                                    ; $498D: $6E
    daa                                           ; $498E: $27
    ld [hl], h                                    ; $498F: $74

jr_015_4990:
    jr nz, jr_015_4A05                            ; $4990: $20 $73

    ld h, l                                       ; $4992: $65

jr_015_4993:
    ld h, c                                       ; $4993: $61
    ld l, h                                       ; $4994: $6C
    jr nz, jr_015_4A00                            ; $4995: $20 $69

    ld [hl], h                                    ; $4997: $74
    rst $38                                       ; $4998: $FF
    ld [hl], h                                    ; $4999: $74
    ld l, b                                       ; $499A: $68
    ld h, c                                       ; $499B: $61
    ld [hl], h                                    ; $499C: $74
    jr nz, jr_015_4A16                            ; $499D: $20 $77

    ld h, c                                       ; $499F: $61
    ld a, c                                       ; $49A0: $79
    ld l, $20                                     ; $49A1: $2E $20
    ld c, c                                       ; $49A3: $49
    ld [hl], h                                    ; $49A4: $74
    cp $68                                        ; $49A5: $FE $68

jr_015_49A7:
    ld [hl], l                                    ; $49A7: $75
    ld [hl], d                                    ; $49A8: $72
    ld [hl], h                                    ; $49A9: $74
    ld [hl], e                                    ; $49AA: $73

jr_015_49AB:
    jr nz, jr_015_4A24                            ; $49AB: $20 $77

    ld l, b                                       ; $49AD: $68
    ld l, a                                       ; $49AE: $6F
    ld h, l                                       ; $49AF: $65
    halt                                          ; $49B0: $76
    ld h, l                                       ; $49B1: $65
    ld [hl], d                                    ; $49B2: $72
    rst $38                                       ; $49B3: $FF
    ld [hl], h                                    ; $49B4: $74
    ld [hl], d                                    ; $49B5: $72
    ld l, c                                       ; $49B6: $69
    ld h, l                                       ; $49B7: $65
    ld [hl], e                                    ; $49B8: $73
    jr nz, jr_015_4A2F                            ; $49B9: $20 $74

    ld l, a                                       ; $49BB: $6F

jr_015_49BC:
    jr nz, jr_015_4A32                            ; $49BC: $20 $74

    ld l, a                                       ; $49BE: $6F
    ld [hl], l                                    ; $49BF: $75
    ld h, e                                       ; $49C0: $63
    ld l, b                                       ; $49C1: $68
    cp $69                                        ; $49C2: $FE $69
    ld [hl], h                                    ; $49C4: $74
    ld l, $FE                                     ; $49C5: $2E $FE
    db $FD                                        ; $49C7: $FD
    dec bc                                        ; $49C8: $0B
    ld [$189B], sp                                ; $49C9: $08 $9B $18
    ld c, [hl]                                    ; $49CC: $4E
    sbc a                                         ; $49CD: $9F
    ld d, a                                       ; $49CE: $57
    ld l, a                                       ; $49CF: $6F
    ld l, a                                       ; $49D0: $6F
    ld l, b                                       ; $49D1: $68
    inc l                                         ; $49D2: $2C
    jr nz, @+$76                                  ; $49D3: $20 $74

    ld l, b                                       ; $49D5: $68
    ld h, l                                       ; $49D6: $65
    jr nz, jr_015_4A50                            ; $49D7: $20 $77

    ld l, a                                       ; $49D9: $6F
    ld [hl], d                                    ; $49DA: $72
    ld l, h                                       ; $49DB: $6C
    ld h, h                                       ; $49DC: $64
    rst $38                                       ; $49DD: $FF
    ld l, c                                       ; $49DE: $69
    ld [hl], e                                    ; $49DF: $73
    jr nz, @+$75                                  ; $49E0: $20 $73

    ld [hl], b                                    ; $49E2: $70
    ld l, c                                       ; $49E3: $69
    ld l, [hl]                                    ; $49E4: $6E
    ld l, [hl]                                    ; $49E5: $6E
    ld l, c                                       ; $49E6: $69
    ld l, [hl]                                    ; $49E7: $6E
    ld h, a                                       ; $49E8: $67
    ld hl, $57FE                                  ; $49E9: $21 $FE $57

jr_015_49EC:
    ld l, b                                       ; $49EC: $68

jr_015_49ED:
    ld h, l                                       ; $49ED: $65
    ld h, l                                       ; $49EE: $65
    ld h, l                                       ; $49EF: $65
    ld h, l                                       ; $49F0: $65
    ld hl, $2D2D                                  ; $49F1: $21 $2D $2D
    dec l                                         ; $49F4: $2D
    cp $FD                                        ; $49F5: $FE $FD
    sbc e                                         ; $49F7: $9B
    ld c, c                                       ; $49F8: $49
    ld b, [hl]                                    ; $49F9: $46
    sbc a                                         ; $49FA: $9F
    ld b, h                                       ; $49FB: $44
    ld l, a                                       ; $49FC: $6F
    ld l, [hl]                                    ; $49FD: $6E
    daa                                           ; $49FE: $27
    ld [hl], h                                    ; $49FF: $74

jr_015_4A00:
    jr nz, jr_015_4A79                            ; $4A00: $20 $77

    ld l, a                                       ; $4A02: $6F
    ld [hl], d                                    ; $4A03: $72
    ld [hl], d                                    ; $4A04: $72

jr_015_4A05:
    ld a, c                                       ; $4A05: $79
    rst $38                                       ; $4A06: $FF
    ld h, c                                       ; $4A07: $61
    ld h, d                                       ; $4A08: $62
    ld l, a                                       ; $4A09: $6F
    ld [hl], l                                    ; $4A0A: $75
    ld [hl], h                                    ; $4A0B: $74
    jr nz, jr_015_4A76                            ; $4A0C: $20 $68

    ld l, c                                       ; $4A0E: $69
    ld l, l                                       ; $4A0F: $6D
    ld l, $20                                     ; $4A10: $2E $20
    ld d, h                                       ; $4A12: $54
    ld l, b                                       ; $4A13: $68
    ld l, c                                       ; $4A14: $69
    ld [hl], e                                    ; $4A15: $73

jr_015_4A16:
    cp $68                                        ; $4A16: $FE $68
    ld h, c                                       ; $4A18: $61
    ld [hl], b                                    ; $4A19: $70
    ld [hl], b                                    ; $4A1A: $70
    ld h, l                                       ; $4A1B: $65
    ld l, [hl]                                    ; $4A1C: $6E
    ld [hl], e                                    ; $4A1D: $73
    jr nz, jr_015_4A8D                            ; $4A1E: $20 $6D

    ld l, a                                       ; $4A20: $6F
    ld [hl], d                                    ; $4A21: $72
    ld h, l                                       ; $4A22: $65
    rst $38                                       ; $4A23: $FF

jr_015_4A24:
    ld [hl], h                                    ; $4A24: $74
    ld l, b                                       ; $4A25: $68
    ld h, c                                       ; $4A26: $61
    ld l, [hl]                                    ; $4A27: $6E
    jr nz, jr_015_4AA3                            ; $4A28: $20 $79

    ld l, a                                       ; $4A2A: $6F
    ld [hl], l                                    ; $4A2B: $75
    jr nz, jr_015_4AA5                            ; $4A2C: $20 $77

    ld l, a                                       ; $4A2E: $6F

jr_015_4A2F:
    ld [hl], l                                    ; $4A2F: $75
    ld l, h                                       ; $4A30: $6C
    ld h, h                                       ; $4A31: $64

jr_015_4A32:
    cp $74                                        ; $4A32: $FE $74
    ld l, b                                       ; $4A34: $68
    ld l, c                                       ; $4A35: $69
    ld l, [hl]                                    ; $4A36: $6E
    ld l, e                                       ; $4A37: $6B
    ld l, $20                                     ; $4A38: $2E $20
    ld b, c                                       ; $4A3A: $41
    ld l, [hl]                                    ; $4A3B: $6E
    ld a, c                                       ; $4A3C: $79
    ld [hl], a                                    ; $4A3D: $77
    ld h, c                                       ; $4A3E: $61
    ld a, c                                       ; $4A3F: $79
    inc l                                         ; $4A40: $2C
    rst $38                                       ; $4A41: $FF
    ld l, b                                       ; $4A42: $68
    ld l, a                                       ; $4A43: $6F
    ld [hl], a                                    ; $4A44: $77
    jr nz, jr_015_4AAB                            ; $4A45: $20 $64

    ld l, a                                       ; $4A47: $6F
    jr nz, jr_015_4AC1                            ; $4A48: $20 $77

    ld h, l                                       ; $4A4A: $65
    jr nz, jr_015_4AC0                            ; $4A4B: $20 $73

    ld [hl], h                                    ; $4A4D: $74
    ld l, a                                       ; $4A4E: $6F
    ld [hl], b                                    ; $4A4F: $70

jr_015_4A50:
    cp $69                                        ; $4A50: $FE $69
    ld [hl], h                                    ; $4A52: $74
    inc l                                         ; $4A53: $2C
    jr nz, @+$76                                  ; $4A54: $20 $74

    ld l, b                                       ; $4A56: $68
    ld h, l                                       ; $4A57: $65
    ld l, [hl]                                    ; $4A58: $6E
    ccf                                           ; $4A59: $3F
    cp $FD                                        ; $4A5A: $FE $FD
    sbc e                                         ; $4A5C: $9B
    ld a, b                                       ; $4A5D: $78
    ld [hl], b                                    ; $4A5E: $70
    sbc a                                         ; $4A5F: $9F
    ld c, a                                       ; $4A60: $4F
    ld l, [hl]                                    ; $4A61: $6E
    ld l, h                                       ; $4A62: $6C
    ld a, c                                       ; $4A63: $79
    jr nz, jr_015_4AAF                            ; $4A64: $20 $49

    jr nz, jr_015_4ACB                            ; $4A66: $20 $63

    ld h, c                                       ; $4A68: $61
    ld l, [hl]                                    ; $4A69: $6E
    rst $38                                       ; $4A6A: $FF
    ld h, a                                       ; $4A6B: $67
    ld l, a                                       ; $4A6C: $6F
    jr nz, @+$6B                                  ; $4A6D: $20 $69

    ld l, [hl]                                    ; $4A6F: $6E
    inc l                                         ; $4A70: $2C
    jr nz, jr_015_4AD5                            ; $4A71: $20 $62

    ld h, l                                       ; $4A73: $65
    ld h, e                                       ; $4A74: $63
    ld h, c                                       ; $4A75: $61

jr_015_4A76:
    ld [hl], l                                    ; $4A76: $75
    ld [hl], e                                    ; $4A77: $73
    ld h, l                                       ; $4A78: $65

jr_015_4A79:
    cp $49                                        ; $4A79: $FE $49
    jr nz, jr_015_4AE5                            ; $4A7B: $20 $68

    ld h, c                                       ; $4A7D: $61
    halt                                          ; $4A7E: $76
    ld h, l                                       ; $4A7F: $65
    jr nz, jr_015_4AF6                            ; $4A80: $20 $74

    ld l, b                                       ; $4A82: $68
    ld l, c                                       ; $4A83: $69
    ld [hl], e                                    ; $4A84: $73
    rst $38                                       ; $4A85: $FF
    ld b, a                                       ; $4A86: $47
    ld l, h                                       ; $4A87: $6C
    ld a, c                                       ; $4A88: $79
    ld [hl], b                                    ; $4A89: $70
    ld l, b                                       ; $4A8A: $68
    jr nz, @+$76                                  ; $4A8B: $20 $74

jr_015_4A8D:
    ld l, b                                       ; $4A8D: $68
    ld l, c                                       ; $4A8E: $69
    ld l, [hl]                                    ; $4A8F: $6E
    ld h, a                                       ; $4A90: $67
    ld l, $FE                                     ; $4A91: $2E $FE
    db $FD                                        ; $4A93: $FD
    sbc d                                         ; $4A94: $9A
    ld e, b                                       ; $4A95: $58
    ld [bc], a                                    ; $4A96: $02
    ld b, d                                       ; $4A97: $42
    sbc e                                         ; $4A98: $9B
    ld c, c                                       ; $4A99: $49
    ld b, [hl]                                    ; $4A9A: $46
    sbc a                                         ; $4A9B: $9F
    ld d, h                                       ; $4A9C: $54
    ld l, b                                       ; $4A9D: $68
    ld h, c                                       ; $4A9E: $61
    ld [hl], h                                    ; $4A9F: $74
    jr nz, jr_015_4B0B                            ; $4AA0: $20 $69

    ld [hl], e                                    ; $4AA2: $73

jr_015_4AA3:
    jr nz, jr_015_4B19                            ; $4AA3: $20 $74

jr_015_4AA5:
    ld l, b                                       ; $4AA5: $68
    ld h, l                                       ; $4AA6: $65
    rst $38                                       ; $4AA7: $FF
    ld b, e                                       ; $4AA8: $43
    ld l, a                                       ; $4AA9: $6F
    ld [hl], d                                    ; $4AAA: $72

jr_015_4AAB:
    ld h, l                                       ; $4AAB: $65
    jr nz, jr_015_4AF5                            ; $4AAC: $20 $47

    ld l, h                                       ; $4AAE: $6C

jr_015_4AAF:
    ld a, c                                       ; $4AAF: $79
    ld [hl], b                                    ; $4AB0: $70
    ld l, b                                       ; $4AB1: $68
    ld hl, $54FE                                  ; $4AB2: $21 $FE $54
    ld l, b                                       ; $4AB5: $68
    ld h, l                                       ; $4AB6: $65
    ld l, [hl]                                    ; $4AB7: $6E
    ld l, $2E                                     ; $4AB8: $2E $2E
    ld l, $20                                     ; $4ABA: $2E $20
    ld a, c                                       ; $4ABC: $79
    ld l, a                                       ; $4ABD: $6F
    ld [hl], l                                    ; $4ABE: $75
    rst $38                                       ; $4ABF: $FF

jr_015_4AC0:
    ld l, l                                       ; $4AC0: $6D

jr_015_4AC1:
    ld [hl], l                                    ; $4AC1: $75
    ld [hl], e                                    ; $4AC2: $73
    ld [hl], h                                    ; $4AC3: $74
    jr nz, jr_015_4B28                            ; $4AC4: $20 $62

    ld h, l                                       ; $4AC6: $65
    ld l, $2E                                     ; $4AC7: $2E $2E
    ld l, $2E                                     ; $4AC9: $2E $2E

jr_015_4ACB:
    cp $4F                                        ; $4ACB: $FE $4F
    ld l, b                                       ; $4ACD: $68
    jr nz, jr_015_4B3D                            ; $4ACE: $20 $6D

    ld a, c                                       ; $4AD0: $79
    inc l                                         ; $4AD1: $2C
    jr nz, jr_015_4B48                            ; $4AD2: $20 $74

    ld l, b                                       ; $4AD4: $68

jr_015_4AD5:
    ld l, c                                       ; $4AD5: $69
    ld [hl], e                                    ; $4AD6: $73
    jr nz, jr_015_4B42                            ; $4AD7: $20 $69

    ld [hl], e                                    ; $4AD9: $73
    rst $38                                       ; $4ADA: $FF
    ld l, [hl]                                    ; $4ADB: $6E
    ld l, a                                       ; $4ADC: $6F
    ld [hl], h                                    ; $4ADD: $74
    jr nz, jr_015_4B47                            ; $4ADE: $20 $67

    ld l, a                                       ; $4AE0: $6F
    ld l, a                                       ; $4AE1: $6F
    ld h, h                                       ; $4AE2: $64
    ld l, $FE                                     ; $4AE3: $2E $FE

jr_015_4AE5:
    db $FD                                        ; $4AE5: $FD
    sbc e                                         ; $4AE6: $9B
    ld a, b                                       ; $4AE7: $78
    ld [hl], b                                    ; $4AE8: $70
    sbc a                                         ; $4AE9: $9F
    ld b, h                                       ; $4AEA: $44
    ld l, a                                       ; $4AEB: $6F
    ld l, [hl]                                    ; $4AEC: $6E
    daa                                           ; $4AED: $27
    ld [hl], h                                    ; $4AEE: $74
    jr nz, jr_015_4B68                            ; $4AEF: $20 $77

    ld l, a                                       ; $4AF1: $6F
    ld [hl], d                                    ; $4AF2: $72
    ld [hl], d                                    ; $4AF3: $72
    ld a, c                                       ; $4AF4: $79

jr_015_4AF5:
    inc l                                         ; $4AF5: $2C

jr_015_4AF6:
    rst $38                                       ; $4AF6: $FF
    ld c, c                                       ; $4AF7: $49
    daa                                           ; $4AF8: $27
    ld l, h                                       ; $4AF9: $6C
    ld l, h                                       ; $4AFA: $6C
    jr nz, jr_015_4B71                            ; $4AFB: $20 $74

    ld h, c                                       ; $4AFD: $61
    ld l, e                                       ; $4AFE: $6B
    ld h, l                                       ; $4AFF: $65
    jr nz, @+$65                                  ; $4B00: $20 $63

    ld h, c                                       ; $4B02: $61
    ld [hl], d                                    ; $4B03: $72
    ld h, l                                       ; $4B04: $65
    cp $6F                                        ; $4B05: $FE $6F
    ld h, [hl]                                    ; $4B07: $66
    jr nz, jr_015_4B7E                            ; $4B08: $20 $74

    ld l, b                                       ; $4B0A: $68

jr_015_4B0B:
    ld l, c                                       ; $4B0B: $69
    ld [hl], e                                    ; $4B0C: $73
    jr nz, jr_015_4B76                            ; $4B0D: $20 $67

    ld h, l                                       ; $4B0F: $65
    ld a, c                                       ; $4B10: $79
    ld [hl], e                                    ; $4B11: $73
    ld h, l                                       ; $4B12: $65
    ld [hl], d                                    ; $4B13: $72
    ld l, $FE                                     ; $4B14: $2E $FE
    db $FD                                        ; $4B16: $FD
    sbc d                                         ; $4B17: $9A
    ld b, b                                       ; $4B18: $40

jr_015_4B19:
    ld h, b                                       ; $4B19: $60
    sbc e                                         ; $4B1A: $9B
    ld c, c                                       ; $4B1B: $49
    ld b, [hl]                                    ; $4B1C: $46
    sbc a                                         ; $4B1D: $9F
    ld c, h                                       ; $4B1E: $4C
    ld h, l                                       ; $4B1F: $65
    ld h, c                                       ; $4B20: $61
    halt                                          ; $4B21: $76
    ld h, l                                       ; $4B22: $65
    jr nz, jr_015_4B99                            ; $4B23: $20 $74

    ld l, b                                       ; $4B25: $68
    ld h, l                                       ; $4B26: $65
    rst $38                                       ; $4B27: $FF

jr_015_4B28:
    ld d, l                                       ; $4B28: $55
    ld l, [hl]                                    ; $4B29: $6E
    ld h, h                                       ; $4B2A: $64
    ld h, l                                       ; $4B2B: $65
    ld [hl], d                                    ; $4B2C: $72
    ld l, [hl]                                    ; $4B2D: $6E
    ld h, l                                       ; $4B2E: $65
    ld h, c                                       ; $4B2F: $61
    ld [hl], h                                    ; $4B30: $74
    ld l, b                                       ; $4B31: $68
    jr nz, @+$63                                  ; $4B32: $20 $61

    ld [hl], e                                    ; $4B34: $73
    cp $73                                        ; $4B35: $FE $73
    ld l, a                                       ; $4B37: $6F
    ld l, a                                       ; $4B38: $6F
    ld l, [hl]                                    ; $4B39: $6E
    jr nz, jr_015_4B9D                            ; $4B3A: $20 $61

    ld [hl], e                                    ; $4B3C: $73

jr_015_4B3D:
    jr nz, @+$7B                                  ; $4B3D: $20 $79

    ld l, a                                       ; $4B3F: $6F
    ld [hl], l                                    ; $4B40: $75
    rst $38                                       ; $4B41: $FF

jr_015_4B42:
    ld h, c                                       ; $4B42: $61
    ld [hl], d                                    ; $4B43: $72
    ld h, l                                       ; $4B44: $65
    jr nz, jr_015_4BA8                            ; $4B45: $20 $61

jr_015_4B47:
    ld h, d                                       ; $4B47: $62

jr_015_4B48:
    ld l, h                                       ; $4B48: $6C
    ld h, l                                       ; $4B49: $65
    inc l                                         ; $4B4A: $2C
    cp $4B                                        ; $4B4B: $FE $4B
    ld a, c                                       ; $4B4D: $79
    ld [hl], d                                    ; $4B4E: $72
    ld l, a                                       ; $4B4F: $6F
    ld [hl], e                                    ; $4B50: $73
    ld l, $FF                                     ; $4B51: $2E $FF
    ld b, [hl]                                    ; $4B53: $46
    ld l, a                                       ; $4B54: $6F
    ld [hl], d                                    ; $4B55: $72
    jr nz, @+$63                                  ; $4B56: $20 $61

    ld l, h                                       ; $4B58: $6C
    ld l, h                                       ; $4B59: $6C
    jr nz, jr_015_4BCB                            ; $4B5A: $20 $6F

    ld [hl], l                                    ; $4B5C: $75
    ld [hl], d                                    ; $4B5D: $72
    cp $73                                        ; $4B5E: $FE $73
    ld h, c                                       ; $4B60: $61
    ld l, e                                       ; $4B61: $6B
    ld h, l                                       ; $4B62: $65
    ld [hl], e                                    ; $4B63: $73
    ld l, $FE                                     ; $4B64: $2E $FE
    db $FD                                        ; $4B66: $FD
    sbc d                                         ; $4B67: $9A

jr_015_4B68:
    sbc e                                         ; $4B68: $9B
    ret c                                         ; $4B69: $D8

    ld a, c                                       ; $4B6A: $79
    ld e, b                                       ; $4B6B: $58
    ld d, d                                       ; $4B6C: $52
    sbc a                                         ; $4B6D: $9F
    ld c, e                                       ; $4B6E: $4B
    ld a, c                                       ; $4B6F: $79
    ld [hl], d                                    ; $4B70: $72

jr_015_4B71:
    ld l, a                                       ; $4B71: $6F
    ld [hl], e                                    ; $4B72: $73
    ccf                                           ; $4B73: $3F
    jr nz, jr_015_4BCA                            ; $4B74: $20 $54

jr_015_4B76:
    ld l, b                                       ; $4B76: $68
    ld l, c                                       ; $4B77: $69
    ld [hl], e                                    ; $4B78: $73
    jr nz, jr_015_4BE4                            ; $4B79: $20 $69

    ld [hl], e                                    ; $4B7B: $73
    rst $38                                       ; $4B7C: $FF
    ld [hl], h                                    ; $4B7D: $74

jr_015_4B7E:
    ld l, b                                       ; $4B7E: $68
    ld h, l                                       ; $4B7F: $65
    jr nz, jr_015_4BC9                            ; $4B80: $20 $47

    ld [hl], d                                    ; $4B82: $72
    ld h, l                                       ; $4B83: $65
    ld h, c                                       ; $4B84: $61
    ld [hl], h                                    ; $4B85: $74
    jr nz, jr_015_4BD5                            ; $4B86: $20 $4D

    ld h, c                                       ; $4B88: $61
    ld h, a                                       ; $4B89: $67
    ld [hl], l                                    ; $4B8A: $75
    ld [hl], e                                    ; $4B8B: $73
    cp $4B                                        ; $4B8C: $FE $4B
    ld a, c                                       ; $4B8E: $79
    ld [hl], d                                    ; $4B8F: $72
    ld l, a                                       ; $4B90: $6F
    ld [hl], e                                    ; $4B91: $73
    ccf                                           ; $4B92: $3F
    ld hl, $FDFE                                  ; $4B93: $21 $FE $FD
    sbc d                                         ; $4B96: $9A
    sbc e                                         ; $4B97: $9B
    ld c, c                                       ; $4B98: $49

jr_015_4B99:
    ld b, [hl]                                    ; $4B99: $46
    sbc a                                         ; $4B9A: $9F
    ld c, h                                       ; $4B9B: $4C
    ld h, l                                       ; $4B9C: $65

jr_015_4B9D:
    ld [hl], h                                    ; $4B9D: $74
    daa                                           ; $4B9E: $27
    ld [hl], e                                    ; $4B9F: $73
    jr nz, jr_015_4C09                            ; $4BA0: $20 $67

    ld l, a                                       ; $4BA2: $6F
    inc l                                         ; $4BA3: $2C
    rst $38                                       ; $4BA4: $FF
    ld h, l                                       ; $4BA5: $65
    halt                                          ; $4BA6: $76
    ld h, l                                       ; $4BA7: $65

jr_015_4BA8:
    ld [hl], d                                    ; $4BA8: $72
    ld a, c                                       ; $4BA9: $79
    ld l, a                                       ; $4BAA: $6F
    ld l, [hl]                                    ; $4BAB: $6E
    ld h, l                                       ; $4BAC: $65
    ld hl, $FDFE                                  ; $4BAD: $21 $FE $FD
    sbc d                                         ; $4BB0: $9A
    ld e, b                                       ; $4BB1: $58
    inc bc                                        ; $4BB2: $03
    ld b, d                                       ; $4BB3: $42
    xor h                                         ; $4BB4: $AC
    or d                                          ; $4BB5: $B2
    and d                                         ; $4BB6: $A2
    ld bc, $044B                                  ; $4BB7: $01 $4B $04
    dec d                                         ; $4BBA: $15
    rlca                                          ; $4BBB: $07
    nop                                           ; $4BBC: $00
    jp z, $154B                                   ; $4BBD: $CA $4B $15

    ld [$1000], sp                                ; $4BC0: $08 $00 $10
    ld c, h                                       ; $4BC3: $4C
    dec d                                         ; $4BC4: $15
    add hl, bc                                    ; $4BC5: $09
    nop                                           ; $4BC6: $00
    db $ED                                        ; $4BC7: $ED
    ld c, e                                       ; $4BC8: $4B

jr_015_4BC9:
    rst $38                                       ; $4BC9: $FF

jr_015_4BCA:
    sub e                                         ; $4BCA: $93

jr_015_4BCB:
    ld h, l                                       ; $4BCB: $65
    ld h, $47                                     ; $4BCC: $26 $47
    ld c, a                                       ; $4BCE: $4F
    ld h, h                                       ; $4BCF: $64
    ccf                                           ; $4BD0: $3F
    ld c, b                                       ; $4BD1: $48
    ld h, [hl]                                    ; $4BD2: $66
    ret nz                                        ; $4BD3: $C0

    ld e, h                                       ; $4BD4: $5C

jr_015_4BD5:
    ld hl, $0005                                  ; $4BD5: $21 $05 $00
    add c                                         ; $4BD8: $81
    ld e, l                                       ; $4BD9: $5D
    dec bc                                        ; $4BDA: $0B
    rla                                           ; $4BDB: $17

jr_015_4BDC:
    ld [hl], $D1                                  ; $4BDC: $36 $D1
    nop                                           ; $4BDE: $00
    jr nz, jr_015_4BDC                            ; $4BDF: $20 $FB

    ld d, b                                       ; $4BE1: $50
    ld [hl+], a                                   ; $4BE2: $22
    dec b                                         ; $4BE3: $05

jr_015_4BE4:
    ld b, b                                       ; $4BE4: $40
    dec bc                                        ; $4BE5: $0B
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    add d                                         ; $4BE8: $82
    rra                                           ; $4BE9: $1F
    ld a, [bc]                                    ; $4BEA: $0A
    sub h                                         ; $4BEB: $94
    ld b, d                                       ; $4BEC: $42
    sub e                                         ; $4BED: $93
    ld h, l                                       ; $4BEE: $65
    ld h, $47                                     ; $4BEF: $26 $47
    ld c, a                                       ; $4BF1: $4F
    ld h, h                                       ; $4BF2: $64
    ccf                                           ; $4BF3: $3F
    ld c, b                                       ; $4BF4: $48

jr_015_4BF5:
    ld h, [hl]                                    ; $4BF5: $66
    ret nz                                        ; $4BF6: $C0

    ld e, h                                       ; $4BF7: $5C
    ld hl, $0005                                  ; $4BF8: $21 $05 $00
    add c                                         ; $4BFB: $81
    ld e, l                                       ; $4BFC: $5D
    ld b, $0E                                     ; $4BFD: $06 $0E
    cp h                                          ; $4BFF: $BC
    ret nc                                        ; $4C00: $D0

    nop                                           ; $4C01: $00
    jr nz, @-$49                                  ; $4C02: $20 $B5

    ld d, b                                       ; $4C04: $50
    ld [hl+], a                                   ; $4C05: $22
    dec b                                         ; $4C06: $05
    ld b, b                                       ; $4C07: $40
    dec bc                                        ; $4C08: $0B

jr_015_4C09:
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    add d                                         ; $4C0B: $82
    rra                                           ; $4C0C: $1F
    ld a, [bc]                                    ; $4C0D: $0A
    sub h                                         ; $4C0E: $94
    ld b, d                                       ; $4C0F: $42
    sub e                                         ; $4C10: $93
    ld h, l                                       ; $4C11: $65
    ld h, $47                                     ; $4C12: $26 $47
    ld c, a                                       ; $4C14: $4F
    ld h, h                                       ; $4C15: $64
    ccf                                           ; $4C16: $3F
    ld c, b                                       ; $4C17: $48
    ld h, [hl]                                    ; $4C18: $66
    ret nz                                        ; $4C19: $C0

    ld e, h                                       ; $4C1A: $5C
    ld hl, $0005                                  ; $4C1B: $21 $05 $00
    ld l, e                                       ; $4C1E: $6B
    ld c, d                                       ; $4C1F: $4A
    dec b                                         ; $4C20: $05
    rla                                           ; $4C21: $17
    jr nc, jr_015_4BF5                            ; $4C22: $30 $D1

    nop                                           ; $4C24: $00
    dec d                                         ; $4C25: $15
    rst $18                                       ; $4C26: $DF
    ld c, h                                       ; $4C27: $4C
    ld [hl+], a                                   ; $4C28: $22
    dec b                                         ; $4C29: $05
    ld b, b                                       ; $4C2A: $40
    dec b                                         ; $4C2B: $05
    inc bc                                        ; $4C2C: $03
    ld l, e                                       ; $4C2D: $6B
    ld c, d                                       ; $4C2E: $4A
    dec b                                         ; $4C2F: $05
    jr jr_015_4C6F                                ; $4C30: $18 $3D

    pop de                                        ; $4C32: $D1
    nop                                           ; $4C33: $00
    dec d                                         ; $4C34: $15
    ld a, $4D                                     ; $4C35: $3E $4D
    ld [hl+], a                                   ; $4C37: $22
    dec b                                         ; $4C38: $05
    ld b, b                                       ; $4C39: $40
    dec b                                         ; $4C3A: $05
    inc b                                         ; $4C3B: $04
    ld l, e                                       ; $4C3C: $6B
    ld c, d                                       ; $4C3D: $4A
    rlca                                          ; $4C3E: $07
    jr jr_015_4C80                                ; $4C3F: $18 $3F

    pop de                                        ; $4C41: $D1
    ld [hl], $15                                  ; $4C42: $36 $15
    add hl, sp                                    ; $4C44: $39
    ld c, [hl]                                    ; $4C45: $4E
    ld [hl+], a                                   ; $4C46: $22
    dec b                                         ; $4C47: $05
    ld b, b                                       ; $4C48: $40
    dec b                                         ; $4C49: $05
    dec b                                         ; $4C4A: $05
    ld l, e                                       ; $4C4B: $6B
    ld c, d                                       ; $4C4C: $4A
    ld b, $18                                     ; $4C4D: $06 $18
    ld a, $D1                                     ; $4C4F: $3E $D1
    ld e, e                                       ; $4C51: $5B
    dec d                                         ; $4C52: $15
    ld h, c                                       ; $4C53: $61
    ld c, [hl]                                    ; $4C54: $4E
    ld [hl+], a                                   ; $4C55: $22
    dec b                                         ; $4C56: $05
    ld b, b                                       ; $4C57: $40
    dec b                                         ; $4C58: $05
    ld b, $6B                                     ; $4C59: $06 $6B
    ld c, d                                       ; $4C5B: $4A
    ld [$4018], sp                                ; $4C5C: $08 $18 $40
    pop de                                        ; $4C5F: $D1
    add [hl]                                      ; $4C60: $86
    dec d                                         ; $4C61: $15
    and l                                         ; $4C62: $A5
    ld c, [hl]                                    ; $4C63: $4E
    ld [hl+], a                                   ; $4C64: $22
    dec b                                         ; $4C65: $05
    ld b, b                                       ; $4C66: $40
    dec b                                         ; $4C67: $05
    rlca                                          ; $4C68: $07
    ld l, e                                       ; $4C69: $6B
    ld c, d                                       ; $4C6A: $4A
    dec b                                         ; $4C6B: $05
    add hl, de                                    ; $4C6C: $19
    ld c, d                                       ; $4C6D: $4A
    pop de                                        ; $4C6E: $D1

jr_015_4C6F:
    ld hl, sp+$15                                 ; $4C6F: $F8 $15
    db $E3                                        ; $4C71: $E3
    ld c, [hl]                                    ; $4C72: $4E
    ld [hl+], a                                   ; $4C73: $22
    dec b                                         ; $4C74: $05
    ld b, b                                       ; $4C75: $40
    dec b                                         ; $4C76: $05
    ld [$4A6B], sp                                ; $4C77: $08 $6B $4A
    dec b                                         ; $4C7A: $05
    ld c, $BB                                     ; $4C7B: $0E $BB
    ret nc                                        ; $4C7D: $D0

    nop                                           ; $4C7E: $00
    dec d                                         ; $4C7F: $15

jr_015_4C80:
    db $DB                                        ; $4C80: $DB
    ld c, l                                       ; $4C81: $4D
    ld [hl+], a                                   ; $4C82: $22

jr_015_4C83:
    dec b                                         ; $4C83: $05
    ld b, b                                       ; $4C84: $40
    ld l, e                                       ; $4C85: $6B
    ld [hl], $0A                                  ; $4C86: $36 $0A

jr_015_4C88:
    db $10                                        ; $4C88: $10
    ld d, c                                       ; $4C89: $51
    nop                                           ; $4C8A: $00
    add b                                         ; $4C8B: $80
    nop                                           ; $4C8C: $00
    ld l, e                                       ; $4C8D: $6B
    dec h                                         ; $4C8E: $25
    inc c                                         ; $4C8F: $0C
    and b                                         ; $4C90: $A0

jr_015_4C91:
    ld h, a                                       ; $4C91: $67
    ld h, b                                       ; $4C92: $60
    add e                                         ; $4C93: $83
    nop                                           ; $4C94: $00

jr_015_4C95:
    ld l, e                                       ; $4C95: $6B
    dec hl                                        ; $4C96: $2B
    dec bc                                        ; $4C97: $0B
    jr nc, jr_015_4CE9                            ; $4C98: $30 $4F

    or b                                          ; $4C9A: $B0
    add l                                         ; $4C9B: $85
    nop                                           ; $4C9C: $00
    ld l, e                                       ; $4C9D: $6B
    dec h                                         ; $4C9E: $25
    dec bc                                        ; $4C9F: $0B
    ld d, b                                       ; $4CA0: $50
    ld [hl], d                                    ; $4CA1: $72
    ld h, b                                       ; $4CA2: $60
    adc b                                         ; $4CA3: $88
    nop                                           ; $4CA4: $00
    ld l, e                                       ; $4CA5: $6B
    inc c                                         ; $4CA6: $0C
    inc c                                         ; $4CA7: $0C
    ldh a, [$71]                                  ; $4CA8: $F0 $71
    add b                                         ; $4CAA: $80
    adc a                                         ; $4CAB: $8F
    nop                                           ; $4CAC: $00
    add h                                         ; $4CAD: $84
    ld b, $0A                                     ; $4CAE: $06 $0A
    rra                                           ; $4CB0: $1F
    ld a, [bc]                                    ; $4CB1: $0A
    sub h                                         ; $4CB2: $94
    dec bc                                        ; $4CB3: $0B
    rlca                                          ; $4CB4: $07

jr_015_4CB5:
    ld b, b                                       ; $4CB5: $40
    jr nz, jr_015_4D12                            ; $4CB6: $20 $5A

    inc hl                                        ; $4CB8: $23
    or b                                          ; $4CB9: $B0
    ld a, l                                       ; $4CBA: $7D

jr_015_4CBB:
    ld b, b                                       ; $4CBB: $40
    add b                                         ; $4CBC: $80
    ld b, b                                       ; $4CBD: $40
    add b                                         ; $4CBE: $80
    dec bc                                        ; $4CBF: $0B
    nop                                           ; $4CC0: $00
    dec bc                                        ; $4CC1: $0B
    inc bc                                        ; $4CC2: $03
    dec bc                                        ; $4CC3: $0B
    inc b                                         ; $4CC4: $04
    ld b, b                                       ; $4CC5: $40
    ld b, b                                       ; $4CC6: $40
    ld e, d                                       ; $4CC7: $5A
    dec hl                                        ; $4CC8: $2B
    ld h, b                                       ; $4CC9: $60
    ld h, c                                       ; $4CCA: $61
    xor c                                         ; $4CCB: $A9
    add hl, bc                                    ; $4CCC: $09

jr_015_4CCD:
    nop                                           ; $4CCD: $00
    ld h, b                                       ; $4CCE: $60
    inc hl                                        ; $4CCF: $23
    add e                                         ; $4CD0: $83
    ld b, b                                       ; $4CD1: $40
    nop                                           ; $4CD2: $00
    rst $38                                       ; $4CD3: $FF
    nop                                           ; $4CD4: $00
    rlca                                          ; $4CD5: $07
    nop                                           ; $4CD6: $00
    add c                                         ; $4CD7: $81
    ld e, l                                       ; $4CD8: $5D
    add hl, bc                                    ; $4CD9: $09
    nop                                           ; $4CDA: $00
    jr nz, jr_015_4C88                            ; $4CDB: $20 $AB

jr_015_4CDD:
    ld d, b                                       ; $4CDD: $50
    ld b, d                                       ; $4CDE: $42
    dec d                                         ; $4CDF: $15
    jr nz, jr_015_4C95                            ; $4CE0: $20 $B3

    ld c, a                                       ; $4CE2: $4F
    ld c, b                                       ; $4CE3: $48
    jr nz, jr_015_4C91                            ; $4CE4: $20 $AB

    ld d, b                                       ; $4CE6: $50
    jr nz, @+$22                                  ; $4CE7: $20 $20

jr_015_4CE9:
    ret                                           ; $4CE9: $C9


    ld d, b                                       ; $4CEA: $50
    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00

jr_015_4CED:
    ld e, e                                       ; $4CED: $5B
    dec d                                         ; $4CEE: $15
    inc l                                         ; $4CEF: $2C
    ld c, b                                       ; $4CF0: $48
    ld h, b                                       ; $4CF1: $60
    rlca                                          ; $4CF2: $07
    dec d                                         ; $4CF3: $15
    jr nz, jr_015_4CB5                            ; $4CF4: $20 $BF

    ld d, b                                       ; $4CF6: $50
    nop                                           ; $4CF7: $00
    jr nz, jr_015_4D37                            ; $4CF8: $20 $3D

    ld d, b                                       ; $4CFA: $50
    db $10                                        ; $4CFB: $10
    jr nz, jr_015_4C83                            ; $4CFC: $20 $85

    ld d, h                                       ; $4CFE: $54
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    ld h, b                                       ; $4D01: $60
    add hl, bc                                    ; $4D02: $09
    dec d                                         ; $4D03: $15
    jr nz, jr_015_4CBB                            ; $4D04: $20 $B5

    ld d, b                                       ; $4D06: $50
    ld d, b                                       ; $4D07: $50
    jr nz, jr_015_4CDD                            ; $4D08: $20 $D3

    ld d, b                                       ; $4D0A: $50
    db $10                                        ; $4D0B: $10
    jr nz, jr_015_4CCD                            ; $4D0C: $20 $BF

    ld d, b                                       ; $4D0E: $50
    ld [$E720], sp                                ; $4D0F: $08 $20 $E7

jr_015_4D12:
    ld d, b                                       ; $4D12: $50
    ld [$AB20], sp                                ; $4D13: $08 $20 $AB
    ld d, b                                       ; $4D16: $50
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    ld h, b                                       ; $4D19: $60
    ld [bc], a                                    ; $4D1A: $02
    ld e, e                                       ; $4D1B: $5B
    dec d                                         ; $4D1C: $15
    ld d, [hl]                                    ; $4D1D: $56
    ld c, c                                       ; $4D1E: $49
    ld b, b                                       ; $4D1F: $40
    ld b, b                                       ; $4D20: $40
    inc d                                         ; $4D21: $14
    jr nz, jr_015_4CED                            ; $4D22: $20 $C9

    ld d, b                                       ; $4D24: $50
    ld h, d                                       ; $4D25: $62
    ld [bc], a                                    ; $4D26: $02
    ld d, [hl]                                    ; $4D27: $56
    ld [bc], a                                    ; $4D28: $02
    ld e, e                                       ; $4D29: $5B
    dec d                                         ; $4D2A: $15
    sbc b                                         ; $4D2B: $98
    ld c, d                                       ; $4D2C: $4A
    ld h, d                                       ; $4D2D: $62
    ld sp, $2015                                  ; $4D2E: $31 $15 $20
    or l                                          ; $4D31: $B5
    ld d, b                                       ; $4D32: $50
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    ld h, d                                       ; $4D35: $62
    inc bc                                        ; $4D36: $03

jr_015_4D37:
    ld d, [hl]                                    ; $4D37: $56
    ld [hl-], a                                   ; $4D38: $32
    ld b, b                                       ; $4D39: $40
    jr nc, @+$58                                  ; $4D3A: $30 $56

    inc hl                                        ; $4D3C: $23
    ld b, d                                       ; $4D3D: $42
    dec d                                         ; $4D3E: $15
    ld c, $50                                     ; $4D3F: $0E $50
    ld h, e                                       ; $4D41: $63
    ld b, b                                       ; $4D42: $40
    ld c, $D0                                     ; $4D43: $0E $D0
    ld h, e                                       ; $4D45: $63
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    ld h, d                                       ; $4D48: $62
    ld bc, $0E15                                  ; $4D49: $01 $15 $0E
    sub b                                         ; $4D4C: $90
    ld h, e                                       ; $4D4D: $63
    ld [$B00E], sp                                ; $4D4E: $08 $0E $B0
    ld h, e                                       ; $4D51: $63
    ld [$900E], sp                                ; $4D52: $08 $0E $90
    ld h, e                                       ; $4D55: $63
    inc b                                         ; $4D56: $04
    ld c, $C0                                     ; $4D57: $0E $C0
    ld h, e                                       ; $4D59: $63
    inc b                                         ; $4D5A: $04
    nop                                           ; $4D5B: $00
    ld d, [hl]                                    ; $4D5C: $56
    rlca                                          ; $4D5D: $07
    dec d                                         ; $4D5E: $15
    ld c, $C0                                     ; $4D5F: $0E $C0
    ld h, e                                       ; $4D61: $63
    ld [$B00E], sp                                ; $4D62: $08 $0E $B0
    ld h, e                                       ; $4D65: $63
    inc b                                         ; $4D66: $04
    ld c, $D0                                     ; $4D67: $0E $D0
    ld h, e                                       ; $4D69: $63
    nop                                           ; $4D6A: $00
    nop                                           ; $4D6B: $00
    ld e, e                                       ; $4D6C: $5B
    dec d                                         ; $4D6D: $15
    xor h                                         ; $4D6E: $AC
    ld c, b                                       ; $4D6F: $48
    dec d                                         ; $4D70: $15
    ld c, $E4                                     ; $4D71: $0E $E4
    ld h, e                                       ; $4D73: $63
    db $10                                        ; $4D74: $10
    ld c, $D0                                     ; $4D75: $0E $D0
    ld h, e                                       ; $4D77: $63
    ld [$EE0E], sp                                ; $4D78: $08 $0E $EE
    ld h, e                                       ; $4D7B: $63
    db $10                                        ; $4D7C: $10
    ld c, $D0                                     ; $4D7D: $0E $D0
    ld h, e                                       ; $4D7F: $63
    db $10                                        ; $4D80: $10
    ld c, $E4                                     ; $4D81: $0E $E4
    ld h, e                                       ; $4D83: $63
    ld [$DA0E], sp                                ; $4D84: $08 $0E $DA
    ld h, e                                       ; $4D87: $63
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    ld h, d                                       ; $4D8A: $62
    ld a, [bc]                                    ; $4D8B: $0A
    dec d                                         ; $4D8C: $15
    ld c, $A0                                     ; $4D8D: $0E $A0
    ld h, e                                       ; $4D8F: $63
    ld b, b                                       ; $4D90: $40
    ld c, $D0                                     ; $4D91: $0E $D0
    ld h, e                                       ; $4D93: $63
    nop                                           ; $4D94: $00
    nop                                           ; $4D95: $00
    ld h, d                                       ; $4D96: $62
    dec bc                                        ; $4D97: $0B
    ld e, e                                       ; $4D98: $5B
    dec d                                         ; $4D99: $15
    dec b                                         ; $4D9A: $05
    ld c, c                                       ; $4D9B: $49
    ld h, d                                       ; $4D9C: $62
    ld [bc], a                                    ; $4D9D: $02
    dec d                                         ; $4D9E: $15
    ld c, $F8                                     ; $4D9F: $0E $F8
    ld h, e                                       ; $4DA1: $63
    ld [$020E], sp                                ; $4DA2: $08 $0E $02
    ld h, h                                       ; $4DA5: $64
    ld [$A00E], sp                                ; $4DA6: $08 $0E $A0
    ld h, e                                       ; $4DA9: $63
    inc b                                         ; $4DAA: $04
    ld c, $D0                                     ; $4DAB: $0E $D0
    ld h, e                                       ; $4DAD: $63
    jr jr_015_4DBE                                ; $4DAE: $18 $0E

    and b                                         ; $4DB0: $A0
    ld h, e                                       ; $4DB1: $63
    inc b                                         ; $4DB2: $04
    ld c, $D0                                     ; $4DB3: $0E $D0
    ld h, e                                       ; $4DB5: $63
    jr @+$10                                      ; $4DB6: $18 $0E

    sub b                                         ; $4DB8: $90
    ld h, e                                       ; $4DB9: $63
    ld a, [bc]                                    ; $4DBA: $0A
    nop                                           ; $4DBB: $00
    ld e, b                                       ; $4DBC: $58
    ld c, h                                       ; $4DBD: $4C

jr_015_4DBE:
    ld d, $0E                                     ; $4DBE: $16 $0E
    sub b                                         ; $4DC0: $90
    ld h, e                                       ; $4DC1: $63
    ld b, b                                       ; $4DC2: $40
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    ld c, $90                                     ; $4DC5: $0E $90
    ld h, e                                       ; $4DC7: $63
    jr z, jr_015_4DCA                             ; $4DC8: $28 $00

jr_015_4DCA:
    cp $0E                                        ; $4DCA: $FE $0E
    ret nc                                        ; $4DCC: $D0

    ld h, e                                       ; $4DCD: $63
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    nop                                           ; $4DD1: $00
    ld l, a                                       ; $4DD2: $6F
    rrca                                          ; $4DD3: $0F
    rra                                           ; $4DD4: $1F
    nop                                           ; $4DD5: $00
    halt                                          ; $4DD6: $76
    jr nz, jr_015_4DE8                            ; $4DD7: $20 $0F

    add hl, de                                    ; $4DD9: $19
    ld b, d                                       ; $4DDA: $42
    ld d, [hl]                                    ; $4DDB: $56
    add hl, de                                    ; $4DDC: $19
    dec d                                         ; $4DDD: $15
    ld c, $DA                                     ; $4DDE: $0E $DA
    ld h, e                                       ; $4DE0: $63
    add hl, bc                                    ; $4DE1: $09
    ld c, $A0                                     ; $4DE2: $0E $A0
    ld h, e                                       ; $4DE4: $63
    db $10                                        ; $4DE5: $10
    ld c, $20                                     ; $4DE6: $0E $20

jr_015_4DE8:
    ld h, h                                       ; $4DE8: $64
    ld [$2A0E], sp                                ; $4DE9: $08 $0E $2A
    ld h, h                                       ; $4DEC: $64
    ld [$3E0E], sp                                ; $4DED: $08 $0E $3E
    ld h, h                                       ; $4DF0: $64
    ld [$340E], sp                                ; $4DF1: $08 $0E $34
    ld h, h                                       ; $4DF4: $64
    ld [$A00E], sp                                ; $4DF5: $08 $0E $A0
    ld h, e                                       ; $4DF8: $63
    db $10                                        ; $4DF9: $10
    ld c, $20                                     ; $4DFA: $0E $20
    ld h, h                                       ; $4DFC: $64
    ld [$2A0E], sp                                ; $4DFD: $08 $0E $2A
    ld h, h                                       ; $4E00: $64
    ld [$3E0E], sp                                ; $4E01: $08 $0E $3E
    ld h, h                                       ; $4E04: $64
    ld [$340E], sp                                ; $4E05: $08 $0E $34
    ld h, h                                       ; $4E08: $64
    ld [$A00E], sp                                ; $4E09: $08 $0E $A0
    ld h, e                                       ; $4E0C: $63
    db $10                                        ; $4E0D: $10
    ld c, $20                                     ; $4E0E: $0E $20
    ld h, h                                       ; $4E10: $64
    ld [$2A0E], sp                                ; $4E11: $08 $0E $2A
    ld h, h                                       ; $4E14: $64
    ld [$3E0E], sp                                ; $4E15: $08 $0E $3E
    ld h, h                                       ; $4E18: $64
    ld [$340E], sp                                ; $4E19: $08 $0E $34
    ld h, h                                       ; $4E1C: $64
    ld [$A00E], sp                                ; $4E1D: $08 $0E $A0
    ld h, e                                       ; $4E20: $63
    db $10                                        ; $4E21: $10
    ld c, $20                                     ; $4E22: $0E $20
    ld h, h                                       ; $4E24: $64
    ld [$2A0E], sp                                ; $4E25: $08 $0E $2A
    ld h, h                                       ; $4E28: $64
    ld [$3E0E], sp                                ; $4E29: $08 $0E $3E
    ld h, h                                       ; $4E2C: $64
    ld [$340E], sp                                ; $4E2D: $08 $0E $34
    ld h, h                                       ; $4E30: $64
    ld [$A00E], sp                                ; $4E31: $08 $0E $A0
    ld h, e                                       ; $4E34: $63
    stop                                          ; $4E35: $10 $00
    add hl, de                                    ; $4E37: $19
    ld b, d                                       ; $4E38: $42
    dec d                                         ; $4E39: $15
    db $10                                        ; $4E3A: $10
    ld [hl-], a                                   ; $4E3B: $32
    ld a, [hl]                                    ; $4E3C: $7E
    jr nc, jr_015_4E3F                            ; $4E3D: $30 $00

jr_015_4E3F:
    dec bc                                        ; $4E3F: $0B
    dec b                                         ; $4E40: $05
    dec bc                                        ; $4E41: $0B
    ld b, $15                                     ; $4E42: $06 $15
    db $10                                        ; $4E44: $10
    ld [hl-], a                                   ; $4E45: $32
    ld a, [hl]                                    ; $4E46: $7E
    jr z, jr_015_4E59                             ; $4E47: $28 $10

    or d                                          ; $4E49: $B2
    ld a, [hl]                                    ; $4E4A: $7E
    jr nz, jr_015_4E5D                            ; $4E4B: $20 $10

    add $7E                                       ; $4E4D: $C6 $7E
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    ld h, d                                       ; $4E51: $62
    ld sp, $1014                                  ; $4E52: $31 $14 $10
    cp h                                          ; $4E55: $BC
    ld a, [hl]                                    ; $4E56: $7E
    ld h, b                                       ; $4E57: $60
    ld [hl-], a                                   ; $4E58: $32

jr_015_4E59:
    dec d                                         ; $4E59: $15
    db $10                                        ; $4E5A: $10
    ld b, d                                       ; $4E5B: $42
    ld a, [hl]                                    ; $4E5C: $7E

jr_015_4E5D:
    ld h, b                                       ; $4E5D: $60
    nop                                           ; $4E5E: $00
    add hl, de                                    ; $4E5F: $19
    ld b, d                                       ; $4E60: $42
    dec d                                         ; $4E61: $15
    ld de, $4C22                                  ; $4E62: $11 $22 $4C
    inc l                                         ; $4E65: $2C
    nop                                           ; $4E66: $00
    ld d, $11                                     ; $4E67: $16 $11
    ld [hl+], a                                   ; $4E69: $22
    ld c, h                                       ; $4E6A: $4C
    ld [$FF00], sp                                ; $4E6B: $08 $00 $FF
    ld de, $4CA2                                  ; $4E6E: $11 $A2 $4C
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    ld h, d                                       ; $4E75: $62
    ld a, [bc]                                    ; $4E76: $0A
    inc d                                         ; $4E77: $14
    ld de, $4CC0                                  ; $4E78: $11 $C0 $4C
    ld e, e                                       ; $4E7B: $5B
    dec d                                         ; $4E7C: $15
    sub $48                                       ; $4E7D: $D6 $48
    ld h, d                                       ; $4E7F: $62
    dec bc                                        ; $4E80: $0B
    dec d                                         ; $4E81: $15
    ld de, $4CAC                                  ; $4E82: $11 $AC $4C
    add b                                         ; $4E85: $80
    ld de, $4CB6                                  ; $4E86: $11 $B6 $4C
    ld [$A211], sp                                ; $4E89: $08 $11 $A2
    ld c, h                                       ; $4E8C: $4C
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    ld h, d                                       ; $4E8F: $62
    ld d, d                                       ; $4E90: $52
    dec d                                         ; $4E91: $15
    ld de, $4CC0                                  ; $4E92: $11 $C0 $4C
    jr c, jr_015_4EA8                             ; $4E95: $38 $11

    and d                                         ; $4E97: $A2
    ld c, h                                       ; $4E98: $4C
    nop                                           ; $4E99: $00
    nop                                           ; $4E9A: $00
    ld h, b                                       ; $4E9B: $60
    ld [hl-], a                                   ; $4E9C: $32
    dec d                                         ; $4E9D: $15
    ld de, $4C32                                  ; $4E9E: $11 $32 $4C
    ld h, b                                       ; $4EA1: $60
    nop                                           ; $4EA2: $00
    add hl, de                                    ; $4EA3: $19
    ld b, d                                       ; $4EA4: $42
    dec d                                         ; $4EA5: $15
    db $10                                        ; $4EA6: $10
    ld l, a                                       ; $4EA7: $6F

jr_015_4EA8:
    ld e, a                                       ; $4EA8: $5F
    inc [hl]                                      ; $4EA9: $34
    db $10                                        ; $4EAA: $10
    rst $28                                       ; $4EAB: $EF
    ld e, a                                       ; $4EAC: $5F
    nop                                           ; $4EAD: $00
    nop                                           ; $4EAE: $00
    ld h, d                                       ; $4EAF: $62
    ld a, [bc]                                    ; $4EB0: $0A
    inc d                                         ; $4EB1: $14
    db $10                                        ; $4EB2: $10
    inc bc                                        ; $4EB3: $03
    ld h, b                                       ; $4EB4: $60
    ld h, d                                       ; $4EB5: $62
    dec bc                                        ; $4EB6: $0B
    dec d                                         ; $4EB7: $15
    db $10                                        ; $4EB8: $10
    ld sp, hl                                     ; $4EB9: $F9
    ld e, a                                       ; $4EBA: $5F
    add b                                         ; $4EBB: $80
    db $10                                        ; $4EBC: $10
    inc bc                                        ; $4EBD: $03
    ld h, b                                       ; $4EBE: $60
    ld [$EF10], sp                                ; $4EBF: $08 $10 $EF
    ld e, a                                       ; $4EC2: $5F
    nop                                           ; $4EC3: $00
    nop                                           ; $4EC4: $00
    ld h, d                                       ; $4EC5: $62
    ld d, d                                       ; $4EC6: $52
    dec d                                         ; $4EC7: $15
    db $10                                        ; $4EC8: $10
    inc bc                                        ; $4EC9: $03
    ld h, b                                       ; $4ECA: $60
    jr nz, jr_015_4ECD                            ; $4ECB: $20 $00

jr_015_4ECD:
    ld e, b                                       ; $4ECD: $58
    ld sp, $1015                                  ; $4ECE: $31 $15 $10
    inc bc                                        ; $4ED1: $03
    ld h, b                                       ; $4ED2: $60
    jr nz, jr_015_4EE5                            ; $4ED3: $20 $10

    rst $28                                       ; $4ED5: $EF
    ld e, a                                       ; $4ED6: $5F
    nop                                           ; $4ED7: $00
    nop                                           ; $4ED8: $00
    ld h, b                                       ; $4ED9: $60
    ld [hl-], a                                   ; $4EDA: $32
    dec d                                         ; $4EDB: $15
    db $10                                        ; $4EDC: $10
    ld a, a                                       ; $4EDD: $7F
    ld e, a                                       ; $4EDE: $5F
    ld h, b                                       ; $4EDF: $60
    nop                                           ; $4EE0: $00
    add hl, de                                    ; $4EE1: $19
    ld b, d                                       ; $4EE2: $42
    inc d                                         ; $4EE3: $14
    db $10                                        ; $4EE4: $10

jr_015_4EE5:
    rlca                                          ; $4EE5: $07
    ld e, l                                       ; $4EE6: $5D
    ld h, d                                       ; $4EE7: $62
    ld c, h                                       ; $4EE8: $4C
    dec d                                         ; $4EE9: $15
    db $10                                        ; $4EEA: $10
    rra                                           ; $4EEB: $1F
    ld e, l                                       ; $4EEC: $5D
    ld [hl], d                                    ; $4EED: $72
    db $10                                        ; $4EEE: $10
    rlca                                          ; $4EEF: $07
    ld e, l                                       ; $4EF0: $5D
    ld b, $10                                     ; $4EF1: $06 $10
    add hl, hl                                    ; $4EF3: $29
    ld e, l                                       ; $4EF4: $5D
    db $10                                        ; $4EF5: $10
    db $10                                        ; $4EF6: $10
    ld de, $045D                                  ; $4EF7: $11 $5D $04
    db $10                                        ; $4EFA: $10
    rlca                                          ; $4EFB: $07
    ld e, l                                       ; $4EFC: $5D
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    ld d, [hl]                                    ; $4EFF: $56
    ld [bc], a                                    ; $4F00: $02
    ld h, b                                       ; $4F01: $60
    add hl, de                                    ; $4F02: $19
    dec d                                         ; $4F03: $15
    db $10                                        ; $4F04: $10
    rra                                           ; $4F05: $1F
    ld e, l                                       ; $4F06: $5D
    ld [$2910], sp                                ; $4F07: $08 $10 $29
    ld e, l                                       ; $4F0A: $5D
    db $10                                        ; $4F0B: $10
    db $10                                        ; $4F0C: $10
    rlca                                          ; $4F0D: $07
    ld e, l                                       ; $4F0E: $5D
    jr nz, jr_015_4F21                            ; $4F0F: $20 $10

    add hl, hl                                    ; $4F11: $29
    ld e, l                                       ; $4F12: $5D
    db $10                                        ; $4F13: $10
    db $10                                        ; $4F14: $10
    rlca                                          ; $4F15: $07
    ld e, l                                       ; $4F16: $5D
    jr nz, jr_015_4F29                            ; $4F17: $20 $10

    add hl, hl                                    ; $4F19: $29
    ld e, l                                       ; $4F1A: $5D
    db $10                                        ; $4F1B: $10
    db $10                                        ; $4F1C: $10
    rlca                                          ; $4F1D: $07
    ld e, l                                       ; $4F1E: $5D
    jr nz, jr_015_4F31                            ; $4F1F: $20 $10

jr_015_4F21:
    add hl, hl                                    ; $4F21: $29
    ld e, l                                       ; $4F22: $5D
    db $10                                        ; $4F23: $10
    db $10                                        ; $4F24: $10
    rlca                                          ; $4F25: $07
    ld e, l                                       ; $4F26: $5D
    jr nz, jr_015_4F39                            ; $4F27: $20 $10

jr_015_4F29:
    add hl, hl                                    ; $4F29: $29
    ld e, l                                       ; $4F2A: $5D
    stop                                          ; $4F2B: $10 $00
    add hl, de                                    ; $4F2D: $19
    ld bc, $0611                                  ; $4F2E: $01 $11 $06

jr_015_4F31:
    ld b, l                                       ; $4F31: $45
    cpl                                           ; $4F32: $2F
    ld sp, hl                                     ; $4F33: $F9
    ld b, h                                       ; $4F34: $44
    ld [bc], a                                    ; $4F35: $02
    inc c                                         ; $4F36: $0C
    inc bc                                        ; $4F37: $03
    dec c                                         ; $4F38: $0D

jr_015_4F39:
    ld c, $45                                     ; $4F39: $0E $45
    dec d                                         ; $4F3B: $15
    ld [de], a                                    ; $4F3C: $12
    ld d, [hl]                                    ; $4F3D: $56
    sub e                                         ; $4F3E: $93
    ld h, l                                       ; $4F3F: $65
    dec [hl]                                      ; $4F40: $35
    ld b, a                                       ; $4F41: $47
    ld c, a                                       ; $4F42: $4F
    ld h, h                                       ; $4F43: $64
    ld d, h                                       ; $4F44: $54
    ld c, b                                       ; $4F45: $48

Call_015_4F46:
    ld h, [hl]                                    ; $4F46: $66
    ret nz                                        ; $4F47: $C0

    ld e, h                                       ; $4F48: $5C
    ld hl, $0005                                  ; $4F49: $21 $05 $00
    add c                                         ; $4F4C: $81
    ld e, l                                       ; $4F4D: $5D
    dec b                                         ; $4F4E: $05
    dec b                                         ; $4F4F: $05

jr_015_4F50:
    add d                                         ; $4F50: $82
    ret nc                                        ; $4F51: $D0

    nop                                           ; $4F52: $00
    jr nz, jr_015_4F50                            ; $4F53: $20 $FB

    ld d, b                                       ; $4F55: $50
    ld [hl+], a                                   ; $4F56: $22
    dec b                                         ; $4F57: $05
    ld b, b                                       ; $4F58: $40
    dec bc                                        ; $4F59: $0B
    nop                                           ; $4F5A: $00
    dec b                                         ; $4F5B: $05
    jr nz, @-$30                                  ; $4F5C: $20 $CE

    ld h, e                                       ; $4F5E: $63
    ld a, [bc]                                    ; $4F5F: $0A
    add hl, bc                                    ; $4F60: $09
    db $EB                                        ; $4F61: $EB
    ret nc                                        ; $4F62: $D0

    nop                                           ; $4F63: $00
    ld [hl+], a                                   ; $4F64: $22
    jp c, $1540                                   ; $4F65: $DA $40 $15

    dec c                                         ; $4F68: $0D
    ld b, c                                       ; $4F69: $41
    dec b                                         ; $4F6A: $05
    rra                                           ; $4F6B: $1F
    adc $63                                       ; $4F6C: $CE $63
    ld a, [bc]                                    ; $4F6E: $0A
    add hl, bc                                    ; $4F6F: $09
    db $EB                                        ; $4F70: $EB
    ret nc                                        ; $4F71: $D0

    nop                                           ; $4F72: $00
    ld [hl+], a                                   ; $4F73: $22
    jp c, $1540                                   ; $4F74: $DA $40 $15

    dec c                                         ; $4F77: $0D
    ld b, c                                       ; $4F78: $41
    dec bc                                        ; $4F79: $0B
    jr nz, @+$0D                                  ; $4F7A: $20 $0B

    rra                                           ; $4F7C: $1F
    ld l, e                                       ; $4F7D: $6B
    inc [hl]                                      ; $4F7E: $34
    dec c                                         ; $4F7F: $0D
    jr nc, jr_015_4FEC                            ; $4F80: $30 $6A

    nop                                           ; $4F82: $00
    add b                                         ; $4F83: $80
    nop                                           ; $4F84: $00
    ld sp, $3E15                                  ; $4F85: $31 $15 $3E
    ld c, a                                       ; $4F88: $4F
    ld [hl+], a                                   ; $4F89: $22
    adc $40                                       ; $4F8A: $CE $40
    nop                                           ; $4F8C: $00
    add d                                         ; $4F8D: $82
    rra                                           ; $4F8E: $1F
    ld a, [bc]                                    ; $4F8F: $0A
    sub h                                         ; $4F90: $94
    ld b, d                                       ; $4F91: $42
    ld [bc], a                                    ; $4F92: $02
    inc bc                                        ; $4F93: $03
    inc c                                         ; $4F94: $0C
    ld c, $0D                                     ; $4F95: $0E $0D
    ld b, l                                       ; $4F97: $45
    dec d                                         ; $4F98: $15
    ld a, $4F                                     ; $4F99: $3E $4F
    ld b, l                                       ; $4F9B: $45
    dec d                                         ; $4F9C: $15
    ld sp, hl                                     ; $4F9D: $F9
    ld d, a                                       ; $4F9E: $57
    sbc e                                         ; $4F9F: $9B
    ld a, b                                       ; $4FA0: $78
    ld [hl], b                                    ; $4FA1: $70
    sbc a                                         ; $4FA2: $9F
    ld d, b                                       ; $4FA3: $50
    ld l, a                                       ; $4FA4: $6F
    ld [hl], e                                    ; $4FA5: $73
    ld [hl], e                                    ; $4FA6: $73
    ld l, c                                       ; $4FA7: $69
    ld h, d                                       ; $4FA8: $62
    ld l, h                                       ; $4FA9: $6C
    ld a, c                                       ; $4FAA: $79
    jr nz, jr_015_500E                            ; $4FAB: $20 $61

    rst $38                                       ; $4FAD: $FF
    ld h, e                                       ; $4FAE: $63
    ld l, a                                       ; $4FAF: $6F
    ld l, l                                       ; $4FB0: $6D
    ld [hl], b                                    ; $4FB1: $70
    ld l, h                                       ; $4FB2: $6C
    ld h, l                                       ; $4FB3: $65
    ld a, b                                       ; $4FB4: $78
    cp $69                                        ; $4FB5: $FE $69
    ld l, [hl]                                    ; $4FB7: $6E
    ld [hl], e                                    ; $4FB8: $73
    ld [hl], h                                    ; $4FB9: $74
    ld [hl], d                                    ; $4FBA: $72
    ld [hl], l                                    ; $4FBB: $75
    ld l, l                                       ; $4FBC: $6D
    ld h, l                                       ; $4FBD: $65
    ld l, [hl]                                    ; $4FBE: $6E
    ld [hl], h                                    ; $4FBF: $74
    rst $38                                       ; $4FC0: $FF
    ld h, [hl]                                    ; $4FC1: $66
    ld l, a                                       ; $4FC2: $6F
    ld [hl], d                                    ; $4FC3: $72
    jr nz, @+$6F                                  ; $4FC4: $20 $6D

    ld l, c                                       ; $4FC6: $69
    ld l, [hl]                                    ; $4FC7: $6E
    ld l, c                                       ; $4FC8: $69
    ld l, [hl]                                    ; $4FC9: $6E
    ld h, a                                       ; $4FCA: $67
    ld l, $FE                                     ; $4FCB: $2E $FE
    ld c, a                                       ; $4FCD: $4F
    ld [hl], d                                    ; $4FCE: $72
    jr nz, jr_015_5032                            ; $4FCF: $20 $61

    jr nz, jr_015_5035                            ; $4FD1: $20 $62

    ld h, l                                       ; $4FD3: $65
    ld h, h                                       ; $4FD4: $64
    ld l, $FE                                     ; $4FD5: $2E $FE
    db $FD                                        ; $4FD7: $FD
    sbc d                                         ; $4FD8: $9A
    ld b, d                                       ; $4FD9: $42
    sbc e                                         ; $4FDA: $9B
    ld a, b                                       ; $4FDB: $78
    ld [hl], b                                    ; $4FDC: $70
    sbc a                                         ; $4FDD: $9F
    ld b, c                                       ; $4FDE: $41
    jr nz, jr_015_5053                            ; $4FDF: $20 $72

    ld h, l                                       ; $4FE1: $65
    ld h, c                                       ; $4FE2: $61
    ld l, h                                       ; $4FE3: $6C
    jr nz, jr_015_5053                            ; $4FE4: $20 $6D

    ld l, c                                       ; $4FE6: $69
    ld l, [hl]                                    ; $4FE7: $6E
    ld h, l                                       ; $4FE8: $65
    ld [hl], d                                    ; $4FE9: $72
    daa                                           ; $4FEA: $27
    ld [hl], e                                    ; $4FEB: $73

jr_015_4FEC:
    rst $38                                       ; $4FEC: $FF
    ld h, d                                       ; $4FED: $62
    ld h, l                                       ; $4FEE: $65
    ld h, h                                       ; $4FEF: $64
    ld l, $FE                                     ; $4FF0: $2E $FE
    ld d, e                                       ; $4FF2: $53
    ld l, a                                       ; $4FF3: $6F
    ld h, [hl]                                    ; $4FF4: $66
    ld [hl], h                                    ; $4FF5: $74
    jr nz, jr_015_5059                            ; $4FF6: $20 $61

    ld [hl], e                                    ; $4FF8: $73
    jr nz, jr_015_505C                            ; $4FF9: $20 $61

    jr nz, jr_015_505F                            ; $4FFB: $20 $62

    ld l, c                                       ; $4FFD: $69
    ld h, a                                       ; $4FFE: $67
    rst $38                                       ; $4FFF: $FF
    ld l, a                                       ; $5000: $6F
    ld l, h                                       ; $5001: $6C
    daa                                           ; $5002: $27
    jr nz, jr_015_5078                            ; $5003: $20 $73

    ld l, h                                       ; $5005: $6C
    ld h, c                                       ; $5006: $61
    ld h, d                                       ; $5007: $62
    jr nz, jr_015_5079                            ; $5008: $20 $6F

    ld h, [hl]                                    ; $500A: $66
    cp $73                                        ; $500B: $FE $73
    ld [hl], h                                    ; $500D: $74

jr_015_500E:
    ld l, a                                       ; $500E: $6F
    ld l, [hl]                                    ; $500F: $6E
    ld h, l                                       ; $5010: $65
    ld hl, $FDFE                                  ; $5011: $21 $FE $FD
    sbc d                                         ; $5014: $9A
    ld b, d                                       ; $5015: $42
    sbc e                                         ; $5016: $9B
    ld a, b                                       ; $5017: $78
    ld [hl], b                                    ; $5018: $70
    sbc a                                         ; $5019: $9F
    ld d, h                                       ; $501A: $54
    ld l, b                                       ; $501B: $68
    ld l, c                                       ; $501C: $69
    ld [hl], e                                    ; $501D: $73
    jr nz, @+$65                                  ; $501E: $20 $63

    ld l, b                                       ; $5020: $68
    ld h, c                                       ; $5021: $61
    ld l, c                                       ; $5022: $69
    ld [hl], d                                    ; $5023: $72
    rst $38                                       ; $5024: $FF
    ld l, b                                       ; $5025: $68
    ld h, c                                       ; $5026: $61
    ld [hl], e                                    ; $5027: $73
    jr nz, jr_015_509D                            ; $5028: $20 $73

    ld h, e                                       ; $502A: $63
    ld [hl], d                                    ; $502B: $72
    ld h, c                                       ; $502C: $61
    ld [hl], h                                    ; $502D: $74
    ld h, e                                       ; $502E: $63
    ld l, b                                       ; $502F: $68
    ld h, l                                       ; $5030: $65
    ld [hl], e                                    ; $5031: $73

jr_015_5032:
    cp $6F                                        ; $5032: $FE $6F
    ld l, [hl]                                    ; $5034: $6E

jr_015_5035:
    jr nz, jr_015_50A0                            ; $5035: $20 $69

    ld [hl], h                                    ; $5037: $74
    ld l, $FE                                     ; $5038: $2E $FE
    db $FD                                        ; $503A: $FD
    sbc d                                         ; $503B: $9A
    ld b, d                                       ; $503C: $42
    sbc e                                         ; $503D: $9B
    ld a, b                                       ; $503E: $78
    ld [hl], b                                    ; $503F: $70
    sbc a                                         ; $5040: $9F
    ld d, h                                       ; $5041: $54
    ld l, b                                       ; $5042: $68
    ld l, c                                       ; $5043: $69
    ld [hl], e                                    ; $5044: $73
    jr nz, jr_015_50AA                            ; $5045: $20 $63

    ld l, b                                       ; $5047: $68
    ld h, c                                       ; $5048: $61
    ld l, c                                       ; $5049: $69
    ld [hl], d                                    ; $504A: $72
    rst $38                                       ; $504B: $FF
    ld l, b                                       ; $504C: $68
    ld h, c                                       ; $504D: $61
    ld [hl], e                                    ; $504E: $73
    jr nz, jr_015_50C4                            ; $504F: $20 $73

    ld h, e                                       ; $5051: $63
    ld [hl], d                                    ; $5052: $72

jr_015_5053:
    ld h, c                                       ; $5053: $61
    ld [hl], h                                    ; $5054: $74
    ld h, e                                       ; $5055: $63
    ld l, b                                       ; $5056: $68
    ld h, l                                       ; $5057: $65
    ld [hl], e                                    ; $5058: $73

jr_015_5059:
    cp $41                                        ; $5059: $FE $41
    ld c, [hl]                                    ; $505B: $4E

jr_015_505C:
    ld b, h                                       ; $505C: $44
    jr nz, jr_015_50C1                            ; $505D: $20 $62

jr_015_505F:
    ld l, c                                       ; $505F: $69
    ld [hl], h                                    ; $5060: $74
    ld h, l                                       ; $5061: $65
    jr nz, jr_015_50D1                            ; $5062: $20 $6D

    ld h, c                                       ; $5064: $61
    ld [hl], d                                    ; $5065: $72
    ld l, e                                       ; $5066: $6B
    ld [hl], e                                    ; $5067: $73
    ld l, $FE                                     ; $5068: $2E $FE
    ld d, e                                       ; $506A: $53
    ld h, e                                       ; $506B: $63
    ld h, c                                       ; $506C: $61
    ld [hl], d                                    ; $506D: $72
    ld a, c                                       ; $506E: $79
    ld l, $FE                                     ; $506F: $2E $FE
    db $FD                                        ; $5071: $FD
    sbc d                                         ; $5072: $9A
    ld b, d                                       ; $5073: $42
    sbc e                                         ; $5074: $9B
    ld a, b                                       ; $5075: $78
    ld [hl], b                                    ; $5076: $70
    sbc a                                         ; $5077: $9F

jr_015_5078:
    ld c, h                                       ; $5078: $4C

jr_015_5079:
    ld l, a                                       ; $5079: $6F
    ld l, a                                       ; $507A: $6F
    ld l, e                                       ; $507B: $6B
    ld [hl], e                                    ; $507C: $73
    jr nz, jr_015_50EB                            ; $507D: $20 $6C

    ld l, c                                       ; $507F: $69
    ld l, e                                       ; $5080: $6B
    ld h, l                                       ; $5081: $65
    jr nz, jr_015_50F8                            ; $5082: $20 $74

    ld l, b                                       ; $5084: $68
    ld l, c                                       ; $5085: $69
    ld [hl], e                                    ; $5086: $73
    rst $38                                       ; $5087: $FF
    ld [hl], h                                    ; $5088: $74
    ld l, b                                       ; $5089: $68
    ld l, c                                       ; $508A: $69
    ld [hl], e                                    ; $508B: $73
    jr nz, jr_015_5102                            ; $508C: $20 $74

    ld l, b                                       ; $508E: $68
    ld l, c                                       ; $508F: $69
    ld l, [hl]                                    ; $5090: $6E
    ld h, a                                       ; $5091: $67
    jr nz, jr_015_50FC                            ; $5092: $20 $68

    ld h, c                                       ; $5094: $61
    ld [hl], e                                    ; $5095: $73
    cp $73                                        ; $5096: $FE $73
    ld h, l                                       ; $5098: $65
    ld [hl], d                                    ; $5099: $72
    halt                                          ; $509A: $76
    ld h, l                                       ; $509B: $65
    ld h, h                                       ; $509C: $64

jr_015_509D:
    jr nz, jr_015_5100                            ; $509D: $20 $61

    ld [hl], e                                    ; $509F: $73

jr_015_50A0:
    jr nz, jr_015_5103                            ; $50A0: $20 $61

    rst $38                                       ; $50A2: $FF
    ld [hl], e                                    ; $50A3: $73
    ld h, e                                       ; $50A4: $63
    ld [hl], d                                    ; $50A5: $72
    ld h, c                                       ; $50A6: $61
    ld [hl], h                                    ; $50A7: $74
    ld h, e                                       ; $50A8: $63
    ld l, b                                       ; $50A9: $68

jr_015_50AA:
    ld l, c                                       ; $50AA: $69
    ld l, [hl]                                    ; $50AB: $6E
    ld h, a                                       ; $50AC: $67
    jr nz, jr_015_511F                            ; $50AD: $20 $70

    ld l, a                                       ; $50AF: $6F
    ld [hl], e                                    ; $50B0: $73
    ld [hl], h                                    ; $50B1: $74
    cp $66                                        ; $50B2: $FE $66
    ld l, a                                       ; $50B4: $6F
    ld [hl], d                                    ; $50B5: $72
    jr nz, jr_015_5129                            ; $50B6: $20 $71

    ld [hl], l                                    ; $50B8: $75
    ld l, c                                       ; $50B9: $69
    ld [hl], h                                    ; $50BA: $74
    ld h, l                                       ; $50BB: $65
    jr nz, jr_015_511F                            ; $50BC: $20 $61

    rst $38                                       ; $50BE: $FF
    ld [hl], a                                    ; $50BF: $77
    ld l, b                                       ; $50C0: $68

jr_015_50C1:
    ld l, c                                       ; $50C1: $69
    ld l, h                                       ; $50C2: $6C
    ld h, l                                       ; $50C3: $65

jr_015_50C4:
    ld l, $FE                                     ; $50C4: $2E $FE
    db $FD                                        ; $50C6: $FD
    sbc d                                         ; $50C7: $9A
    ld b, d                                       ; $50C8: $42
    sbc e                                         ; $50C9: $9B
    ld [$9F59], sp                                ; $50CA: $08 $59 $9F
    ld c, b                                       ; $50CD: $48
    ld l, c                                       ; $50CE: $69
    ld l, $20                                     ; $50CF: $2E $20

jr_015_50D1:
    jr nz, jr_015_5126                            ; $50D1: $20 $53

    ld c, [hl]                                    ; $50D3: $4E
    ld c, c                                       ; $50D4: $49
    ld c, e                                       ; $50D5: $4B
    ld d, h                                       ; $50D6: $54
    rst $38                                       ; $50D7: $FF
    ld d, e                                       ; $50D8: $53
    ld c, [hl]                                    ; $50D9: $4E
    ld c, c                                       ; $50DA: $49
    ld c, e                                       ; $50DB: $4B
    ld d, h                                       ; $50DC: $54
    ld hl, $FDFE                                  ; $50DD: $21 $FE $FD
    sbc e                                         ; $50E0: $9B
    ld a, b                                       ; $50E1: $78
    ld [hl], b                                    ; $50E2: $70
    sbc a                                         ; $50E3: $9F
    ld d, l                                       ; $50E4: $55
    ld l, b                                       ; $50E5: $68
    ld l, $2E                                     ; $50E6: $2E $2E
    ld l, $20                                     ; $50E8: $2E $20
    ld l, b                                       ; $50EA: $68

jr_015_50EB:
    ld l, c                                       ; $50EB: $69
    ld l, $FE                                     ; $50EC: $2E $FE
    db $FD                                        ; $50EE: $FD
    sbc e                                         ; $50EF: $9B
    ld [$9F59], sp                                ; $50F0: $08 $59 $9F
    ld d, a                                       ; $50F3: $57
    ld h, l                                       ; $50F4: $65
    ld l, h                                       ; $50F5: $6C
    ld h, e                                       ; $50F6: $63
    ld l, a                                       ; $50F7: $6F

jr_015_50F8:
    ld l, l                                       ; $50F8: $6D
    ld h, l                                       ; $50F9: $65
    jr nz, jr_015_5170                            ; $50FA: $20 $74

jr_015_50FC:
    ld l, a                                       ; $50FC: $6F
    jr nz, jr_015_5173                            ; $50FD: $20 $74

    ld l, b                                       ; $50FF: $68

jr_015_5100:
    ld h, l                                       ; $5100: $65
    rst $38                                       ; $5101: $FF

jr_015_5102:
    ld d, b                                       ; $5102: $50

jr_015_5103:
    ld [hl], d                                    ; $5103: $72
    ld l, a                                       ; $5104: $6F
    ld [hl], e                                    ; $5105: $73
    ld [hl], b                                    ; $5106: $70
    ld h, l                                       ; $5107: $65
    ld h, e                                       ; $5108: $63
    ld [hl], h                                    ; $5109: $74
    ld l, a                                       ; $510A: $6F
    ld [hl], d                                    ; $510B: $72
    cp $47                                        ; $510C: $FE $47
    ld h, c                                       ; $510E: $61
    ld [hl], d                                    ; $510F: $72
    ld h, c                                       ; $5110: $61
    ld h, a                                       ; $5111: $67
    ld h, l                                       ; $5112: $65
    ld hl, $FDFE                                  ; $5113: $21 $FE $FD
    sbc e                                         ; $5116: $9B
    ld a, b                                       ; $5117: $78
    ld [hl], b                                    ; $5118: $70
    sbc a                                         ; $5119: $9F
    ld b, d                                       ; $511A: $42
    ld h, l                                       ; $511B: $65
    ld [hl], d                                    ; $511C: $72
    ld [hl], e                                    ; $511D: $73
    ld h, l                                       ; $511E: $65

jr_015_511F:
    ld [hl], d                                    ; $511F: $72
    ld l, e                                       ; $5120: $6B
    ld h, l                                       ; $5121: $65
    ld [hl], d                                    ; $5122: $72
    jr nz, jr_015_519C                            ; $5123: $20 $77

    ld l, b                                       ; $5125: $68

jr_015_5126:
    ld h, c                                       ; $5126: $61
    ld [hl], h                                    ; $5127: $74
    ccf                                           ; $5128: $3F

jr_015_5129:
    cp $FD                                        ; $5129: $FE $FD
    sbc e                                         ; $512B: $9B
    ld [$9F59], sp                                ; $512C: $08 $59 $9F
    ld d, b                                       ; $512F: $50
    ld [hl], d                                    ; $5130: $72
    ld l, a                                       ; $5131: $6F
    ld [hl], e                                    ; $5132: $73
    ld [hl], b                                    ; $5133: $70
    ld h, l                                       ; $5134: $65
    ld h, e                                       ; $5135: $63
    ld [hl], h                                    ; $5136: $74
    ld l, a                                       ; $5137: $6F
    ld [hl], d                                    ; $5138: $72
    rst $38                                       ; $5139: $FF
    ld b, a                                       ; $513A: $47
    ld h, c                                       ; $513B: $61
    ld [hl], d                                    ; $513C: $72
    ld h, c                                       ; $513D: $61
    ld h, a                                       ; $513E: $67
    ld h, l                                       ; $513F: $65
    ld hl, $5420                                  ; $5140: $21 $20 $54
    ld l, b                                       ; $5143: $68
    ld l, c                                       ; $5144: $69
    ld [hl], e                                    ; $5145: $73
    jr nz, jr_015_51B1                            ; $5146: $20 $69

    ld [hl], e                                    ; $5148: $73
    cp $74                                        ; $5149: $FE $74
    ld l, b                                       ; $514B: $68
    ld h, l                                       ; $514C: $65
    jr nz, jr_015_51BC                            ; $514D: $20 $6D

    ld l, c                                       ; $514F: $69
    ld l, [hl]                                    ; $5150: $6E
    ld l, c                                       ; $5151: $69
    ld l, [hl]                                    ; $5152: $6E
    ld h, a                                       ; $5153: $67
    rst $38                                       ; $5154: $FF
    ld l, b                                       ; $5155: $68
    ld h, l                                       ; $5156: $65
    ld h, c                                       ; $5157: $61
    ld h, h                                       ; $5158: $64
    ld [hl], c                                    ; $5159: $71
    ld [hl], l                                    ; $515A: $75
    ld h, c                                       ; $515B: $61
    ld [hl], d                                    ; $515C: $72
    ld [hl], h                                    ; $515D: $74
    ld h, l                                       ; $515E: $65
    ld [hl], d                                    ; $515F: $72
    ld [hl], e                                    ; $5160: $73
    cp $68                                        ; $5161: $FE $68
    ld h, l                                       ; $5163: $65
    ld [hl], d                                    ; $5164: $72
    ld h, l                                       ; $5165: $65
    jr nz, jr_015_51D1                            ; $5166: $20 $69

    ld l, [hl]                                    ; $5168: $6E
    rst $38                                       ; $5169: $FF
    ld [hl], h                                    ; $516A: $74
    ld l, b                                       ; $516B: $68
    ld h, l                                       ; $516C: $65
    jr nz, jr_015_51C4                            ; $516D: $20 $55

    ld l, [hl]                                    ; $516F: $6E

jr_015_5170:
    ld h, h                                       ; $5170: $64
    ld h, l                                       ; $5171: $65
    ld [hl], d                                    ; $5172: $72

jr_015_5173:
    ld l, [hl]                                    ; $5173: $6E
    ld h, l                                       ; $5174: $65
    ld h, c                                       ; $5175: $61
    ld [hl], h                                    ; $5176: $74
    ld l, b                                       ; $5177: $68
    ld l, $FE                                     ; $5178: $2E $FE
    ld c, l                                       ; $517A: $4D
    ld l, c                                       ; $517B: $69
    ld l, [hl]                                    ; $517C: $6E
    ld h, l                                       ; $517D: $65
    ld [hl], d                                    ; $517E: $72
    ld [hl], e                                    ; $517F: $73
    jr nz, jr_015_51E5                            ; $5180: $20 $63

    ld l, a                                       ; $5182: $6F
    ld l, l                                       ; $5183: $6D
    ld h, l                                       ; $5184: $65
    rst $38                                       ; $5185: $FF
    ld l, b                                       ; $5186: $68
    ld h, l                                       ; $5187: $65
    ld [hl], d                                    ; $5188: $72
    ld h, l                                       ; $5189: $65
    jr nz, jr_015_5200                            ; $518A: $20 $74

    ld l, a                                       ; $518C: $6F
    jr nz, jr_015_51F7                            ; $518D: $20 $68

    ld h, c                                       ; $518F: $61
    ld l, [hl]                                    ; $5190: $6E
    ld h, a                                       ; $5191: $67
    cp $6F                                        ; $5192: $FE $6F
    ld [hl], l                                    ; $5194: $75
    ld [hl], h                                    ; $5195: $74
    inc l                                         ; $5196: $2C
    jr nz, jr_015_5201                            ; $5197: $20 $68

    ld h, c                                       ; $5199: $61
    halt                                          ; $519A: $76
    ld h, l                                       ; $519B: $65

jr_015_519C:
    jr nz, jr_015_5211                            ; $519C: $20 $73

jr_015_519E:
    ld l, a                                       ; $519E: $6F
    ld l, l                                       ; $519F: $6D
    ld h, l                                       ; $51A0: $65
    rst $38                                       ; $51A1: $FF
    ld l, l                                       ; $51A2: $6D
    ld l, c                                       ; $51A3: $69
    ld l, h                                       ; $51A4: $6C
    ld l, e                                       ; $51A5: $6B
    inc l                                         ; $51A6: $2C
    jr nz, @+$63                                  ; $51A7: $20 $61

    ld l, [hl]                                    ; $51A9: $6E
    ld h, h                                       ; $51AA: $64
    jr nz, jr_015_520F                            ; $51AB: $20 $62

    ld [hl], l                                    ; $51AD: $75
    ld a, c                                       ; $51AE: $79
    cp $6D                                        ; $51AF: $FE $6D

jr_015_51B1:
    ld l, c                                       ; $51B1: $69
    ld l, [hl]                                    ; $51B2: $6E
    ld l, c                                       ; $51B3: $69
    ld l, [hl]                                    ; $51B4: $6E
    ld h, a                                       ; $51B5: $67
    rst $38                                       ; $51B6: $FF
    ld h, l                                       ; $51B7: $65
    ld [hl], c                                    ; $51B8: $71
    ld [hl], l                                    ; $51B9: $75
    ld l, c                                       ; $51BA: $69
    ld [hl], b                                    ; $51BB: $70

jr_015_51BC:
    ld l, l                                       ; $51BC: $6D
    ld h, l                                       ; $51BD: $65
    ld l, [hl]                                    ; $51BE: $6E
    ld [hl], h                                    ; $51BF: $74
    ld l, $FE                                     ; $51C0: $2E $FE
    db $FD                                        ; $51C2: $FD
    sbc d                                         ; $51C3: $9A

jr_015_51C4:
    ld e, b                                       ; $51C4: $58
    ld bc, $0942                                  ; $51C5: $01 $42 $09
    nop                                           ; $51C8: $00
    jr nz, jr_015_519E                            ; $51C9: $20 $D3

    ld d, b                                       ; $51CB: $50
    sbc e                                         ; $51CC: $9B
    ld a, b                                       ; $51CD: $78
    ld [hl], b                                    ; $51CE: $70
    sbc a                                         ; $51CF: $9F
    ld d, a                                       ; $51D0: $57

jr_015_51D1:
    ld l, b                                       ; $51D1: $68
    ld h, c                                       ; $51D2: $61
    ld [hl], h                                    ; $51D3: $74
    jr nz, jr_015_523F                            ; $51D4: $20 $69

    ld [hl], e                                    ; $51D6: $73
    jr nz, jr_015_524D                            ; $51D7: $20 $74

    ld l, b                                       ; $51D9: $68
    ld h, c                                       ; $51DA: $61
    ld [hl], h                                    ; $51DB: $74
    ccf                                           ; $51DC: $3F
    cp $FD                                        ; $51DD: $FE $FD
    sbc e                                         ; $51DF: $9B
    adc c                                         ; $51E0: $89
    ld c, h                                       ; $51E1: $4C
    sbc a                                         ; $51E2: $9F
    ld b, a                                       ; $51E3: $47
    ld d, d                                       ; $51E4: $52

jr_015_51E5:
    ld d, d                                       ; $51E5: $52
    ld d, d                                       ; $51E6: $52
    ld d, d                                       ; $51E7: $52
    ld d, d                                       ; $51E8: $52
    ld d, d                                       ; $51E9: $52
    ld hl, $FDFE                                  ; $51EA: $21 $FE $FD
    sbc e                                         ; $51ED: $9B
    ld [$9F59], sp                                ; $51EE: $08 $59 $9F
    ld d, h                                       ; $51F1: $54
    ld l, b                                       ; $51F2: $68
    ld h, c                                       ; $51F3: $61
    ld [hl], h                                    ; $51F4: $74
    daa                                           ; $51F5: $27
    ld [hl], e                                    ; $51F6: $73

jr_015_51F7:
    jr nz, jr_015_5266                            ; $51F7: $20 $6D

    ld a, c                                       ; $51F9: $79
    rst $38                                       ; $51FA: $FF
    ld l, h                                       ; $51FB: $6C
    ld l, c                                       ; $51FC: $69
    ld [hl], h                                    ; $51FD: $74
    ld [hl], h                                    ; $51FE: $74
    ld l, h                                       ; $51FF: $6C

jr_015_5200:
    ld h, l                                       ; $5200: $65

jr_015_5201:
    jr nz, jr_015_5265                            ; $5201: $20 $62

    ld l, c                                       ; $5203: $69
    ld [hl], e                                    ; $5204: $73
    ld l, c                                       ; $5205: $69
    ld [hl], a                                    ; $5206: $77
    ld l, a                                       ; $5207: $6F
    ld h, a                                       ; $5208: $67
    cp $57                                        ; $5209: $FE $57
    ld l, a                                       ; $520B: $6F
    ld [hl], d                                    ; $520C: $72
    halt                                          ; $520D: $76
    ld h, l                                       ; $520E: $65

jr_015_520F:
    ld l, h                                       ; $520F: $6C
    ld l, c                                       ; $5210: $69

jr_015_5211:
    ld l, [hl]                                    ; $5211: $6E
    ld h, l                                       ; $5212: $65
    ld hl, $5320                                  ; $5213: $21 $20 $53
    ld h, c                                       ; $5216: $61
    ld a, c                                       ; $5217: $79
    rst $38                                       ; $5218: $FF
    ld l, b                                       ; $5219: $68
    ld l, c                                       ; $521A: $69
    inc l                                         ; $521B: $2C
    jr nz, @+$59                                  ; $521C: $20 $57

    ld l, a                                       ; $521E: $6F
    ld [hl], d                                    ; $521F: $72
    halt                                          ; $5220: $76
    ld l, c                                       ; $5221: $69
    ld h, l                                       ; $5222: $65
    ld hl, $FDFE                                  ; $5223: $21 $FE $FD
    sbc d                                         ; $5226: $9A
    ld e, b                                       ; $5227: $58
    ld [bc], a                                    ; $5228: $02
    ld b, d                                       ; $5229: $42
    sbc e                                         ; $522A: $9B
    ld a, b                                       ; $522B: $78
    ld [hl], b                                    ; $522C: $70
    sbc a                                         ; $522D: $9F
    ld b, c                                       ; $522E: $41
    ld b, c                                       ; $522F: $41
    ld b, c                                       ; $5230: $41
    ld b, c                                       ; $5231: $41
    ld b, c                                       ; $5232: $41
    ld b, c                                       ; $5233: $41
    ld b, c                                       ; $5234: $41
    ld d, l                                       ; $5235: $55
    ld b, a                                       ; $5236: $47
    ld c, b                                       ; $5237: $48
    ld hl, $FF21                                  ; $5238: $21 $21 $FF
    db $FD                                        ; $523B: $FD
    ld b, b                                       ; $523C: $40
    ld b, b                                       ; $523D: $40
    sbc d                                         ; $523E: $9A

jr_015_523F:
    ld e, b                                       ; $523F: $58
    inc bc                                        ; $5240: $03
    ld b, d                                       ; $5241: $42
    sbc e                                         ; $5242: $9B
    ld [$9F59], sp                                ; $5243: $08 $59 $9F
    ld c, b                                       ; $5246: $48
    ld h, c                                       ; $5247: $61
    ld l, b                                       ; $5248: $68
    ld h, c                                       ; $5249: $61
    jr nz, @+$6A                                  ; $524A: $20 $68

    ld h, c                                       ; $524C: $61

jr_015_524D:
    ld l, b                                       ; $524D: $68
    ld h, c                                       ; $524E: $61
    ld l, b                                       ; $524F: $68
    ld h, c                                       ; $5250: $61
    ld hl, $FF21                                  ; $5251: $21 $21 $FF
    ld c, b                                       ; $5254: $48
    ld h, l                                       ; $5255: $65
    jr nz, jr_015_52C4                            ; $5256: $20 $6C

    ld l, c                                       ; $5258: $69
    ld l, e                                       ; $5259: $6B
    ld h, l                                       ; $525A: $65
    ld [hl], e                                    ; $525B: $73
    jr nz, jr_015_52D7                            ; $525C: $20 $79

    ld l, a                                       ; $525E: $6F
    ld [hl], l                                    ; $525F: $75
    ld hl, $FDFE                                  ; $5260: $21 $FE $FD
    sbc e                                         ; $5263: $9B
    ld a, b                                       ; $5264: $78

jr_015_5265:
    ld [hl], b                                    ; $5265: $70

jr_015_5266:
    sbc a                                         ; $5266: $9F
    ld e, c                                       ; $5267: $59
    ld h, l                                       ; $5268: $65
    ld h, c                                       ; $5269: $61
    ld l, b                                       ; $526A: $68
    inc l                                         ; $526B: $2C
    jr nz, jr_015_52D5                            ; $526C: $20 $67

    ld [hl], d                                    ; $526E: $72
    ld h, l                                       ; $526F: $65
    ld h, c                                       ; $5270: $61
    ld [hl], h                                    ; $5271: $74
    ld l, $2E                                     ; $5272: $2E $2E
    ld l, $FE                                     ; $5274: $2E $FE
    db $FD                                        ; $5276: $FD
    sbc e                                         ; $5277: $9B
    ld [$9F59], sp                                ; $5278: $08 $59 $9F
    ld c, a                                       ; $527B: $4F
    ld l, b                                       ; $527C: $68
    inc l                                         ; $527D: $2C
    jr nz, jr_015_52E2                            ; $527E: $20 $62

    ld a, c                                       ; $5280: $79
    jr nz, jr_015_52F7                            ; $5281: $20 $74

    ld l, b                                       ; $5283: $68
    ld h, l                                       ; $5284: $65
    jr nz, @+$79                                  ; $5285: $20 $77

    ld h, c                                       ; $5287: $61
    ld a, c                                       ; $5288: $79
    inc l                                         ; $5289: $2C
    rst $38                                       ; $528A: $FF
    ld c, c                                       ; $528B: $49
    daa                                           ; $528C: $27
    ld l, l                                       ; $528D: $6D
    jr nz, jr_015_5304                            ; $528E: $20 $74

    ld l, b                                       ; $5290: $68
    ld h, l                                       ; $5291: $65
    jr nz, jr_015_52FB                            ; $5292: $20 $67

    ld [hl], l                                    ; $5294: $75
    ld a, c                                       ; $5295: $79
    cp $77                                        ; $5296: $FE $77
    ld l, b                                       ; $5298: $68
    ld l, a                                       ; $5299: $6F
    jr nz, @+$75                                  ; $529A: $20 $73

    ld h, l                                       ; $529C: $65
    ld l, h                                       ; $529D: $6C
    ld l, h                                       ; $529E: $6C
    ld [hl], e                                    ; $529F: $73
    rst $38                                       ; $52A0: $FF
    ld [hl], e                                    ; $52A1: $73
    ld [hl], h                                    ; $52A2: $74
    ld [hl], l                                    ; $52A3: $75
    ld h, [hl]                                    ; $52A4: $66
    ld h, [hl]                                    ; $52A5: $66
    ld l, $FE                                     ; $52A6: $2E $FE
    ld d, e                                       ; $52A8: $53
    ld c, [hl]                                    ; $52A9: $4E
    ld c, c                                       ; $52AA: $49
    ld c, e                                       ; $52AB: $4B
    ld d, h                                       ; $52AC: $54
    jr nz, jr_015_5302                            ; $52AD: $20 $53

    ld c, [hl]                                    ; $52AF: $4E
    ld c, c                                       ; $52B0: $49
    ld c, e                                       ; $52B1: $4B
    ld d, h                                       ; $52B2: $54
    ld hl, $FDFE                                  ; $52B3: $21 $FE $FD
    sbc d                                         ; $52B6: $9A
    ld e, b                                       ; $52B7: $58
    inc b                                         ; $52B8: $04
    ld b, d                                       ; $52B9: $42
    sbc e                                         ; $52BA: $9B
    ld a, b                                       ; $52BB: $78
    ld [hl], b                                    ; $52BC: $70
    sbc a                                         ; $52BD: $9F
    ld b, a                                       ; $52BE: $47
    ld h, l                                       ; $52BF: $65
    ld [hl], h                                    ; $52C0: $74
    jr nz, jr_015_5330                            ; $52C1: $20 $6D

    ld h, l                                       ; $52C3: $65

jr_015_52C4:
    jr nz, jr_015_5327                            ; $52C4: $20 $61

    ld [hl], a                                    ; $52C6: $77
    ld h, c                                       ; $52C7: $61
    ld a, c                                       ; $52C8: $79
    rst $38                                       ; $52C9: $FF
    ld h, [hl]                                    ; $52CA: $66
    ld [hl], d                                    ; $52CB: $72
    ld l, a                                       ; $52CC: $6F
    ld l, l                                       ; $52CD: $6D
    jr nz, jr_015_5344                            ; $52CE: $20 $74

    ld l, b                                       ; $52D0: $68
    ld h, c                                       ; $52D1: $61
    ld [hl], h                                    ; $52D2: $74
    cp $74                                        ; $52D3: $FE $74

jr_015_52D5:
    ld l, b                                       ; $52D5: $68
    ld l, c                                       ; $52D6: $69

jr_015_52D7:
    ld l, [hl]                                    ; $52D7: $6E
    ld h, a                                       ; $52D8: $67
    ld l, $2E                                     ; $52D9: $2E $2E
    ld l, $FE                                     ; $52DB: $2E $FE
    db $FD                                        ; $52DD: $FD
    sbc d                                         ; $52DE: $9A
    ld e, b                                       ; $52DF: $58
    dec b                                         ; $52E0: $05
    ld b, d                                       ; $52E1: $42

jr_015_52E2:
    sbc e                                         ; $52E2: $9B
    ld [$9F59], sp                                ; $52E3: $08 $59 $9F
    ld c, [hl]                                    ; $52E6: $4E
    ld h, l                                       ; $52E7: $65
    ld h, l                                       ; $52E8: $65
    ld h, h                                       ; $52E9: $64
    jr nz, jr_015_535F                            ; $52EA: $20 $73

    ld l, a                                       ; $52EC: $6F
    ld l, l                                       ; $52ED: $6D
    ld h, l                                       ; $52EE: $65
    ld [hl], h                                    ; $52EF: $74
    ld l, b                                       ; $52F0: $68
    ld l, c                                       ; $52F1: $69
    ld l, [hl]                                    ; $52F2: $6E
    daa                                           ; $52F3: $27
    inc l                                         ; $52F4: $2C
    rst $38                                       ; $52F5: $FF
    ld [hl], d                                    ; $52F6: $72

jr_015_52F7:
    ld l, a                                       ; $52F7: $6F
    ld l, a                                       ; $52F8: $6F
    ld l, e                                       ; $52F9: $6B
    ld l, c                                       ; $52FA: $69

jr_015_52FB:
    ld h, l                                       ; $52FB: $65
    ccf                                           ; $52FC: $3F
    cp $FD                                        ; $52FD: $FE $FD
    sbc d                                         ; $52FF: $9A
    ld b, l                                       ; $5300: $45
    dec d                                         ; $5301: $15

jr_015_5302:
    scf                                           ; $5302: $37
    ld d, e                                       ; $5303: $53

jr_015_5304:
    sbc e                                         ; $5304: $9B
    adc c                                         ; $5305: $89
    ld c, h                                       ; $5306: $4C
    sbc a                                         ; $5307: $9F
    ld b, a                                       ; $5308: $47
    ld d, d                                       ; $5309: $52
    ld d, d                                       ; $530A: $52
    ld d, d                                       ; $530B: $52
    ld d, d                                       ; $530C: $52
    ld hl, $FE21                                  ; $530D: $21 $21 $FE
    db $FD                                        ; $5310: $FD
    sbc d                                         ; $5311: $9A
    ld e, b                                       ; $5312: $58
    rlca                                          ; $5313: $07
    ld b, d                                       ; $5314: $42
    sbc e                                         ; $5315: $9B
    ld [$9F59], sp                                ; $5316: $08 $59 $9F
    ld c, [hl]                                    ; $5319: $4E
    ld h, l                                       ; $531A: $65
    ld h, l                                       ; $531B: $65
    ld h, h                                       ; $531C: $64
    jr nz, jr_015_5392                            ; $531D: $20 $73

    ld l, a                                       ; $531F: $6F
    ld l, l                                       ; $5320: $6D
    ld h, l                                       ; $5321: $65
    ld [hl], h                                    ; $5322: $74
    ld l, b                                       ; $5323: $68
    ld l, c                                       ; $5324: $69
    ld l, [hl]                                    ; $5325: $6E
    daa                                           ; $5326: $27

jr_015_5327:
    inc l                                         ; $5327: $2C
    rst $38                                       ; $5328: $FF
    ld [hl], d                                    ; $5329: $72
    ld l, a                                       ; $532A: $6F
    ld l, a                                       ; $532B: $6F
    ld l, e                                       ; $532C: $6B
    ld l, c                                       ; $532D: $69
    ld h, l                                       ; $532E: $65
    ccf                                           ; $532F: $3F

jr_015_5330:
    cp $FD                                        ; $5330: $FE $FD
    sbc d                                         ; $5332: $9A
    ld b, l                                       ; $5333: $45
    dec d                                         ; $5334: $15
    scf                                           ; $5335: $37
    ld d, e                                       ; $5336: $53
    sub b                                         ; $5337: $90
    dec d                                         ; $5338: $15
    ld c, h                                       ; $5339: $4C
    ld d, e                                       ; $533A: $53
    dec c                                         ; $533B: $0D
    nop                                           ; $533C: $00
    inc b                                         ; $533D: $04
    ld [bc], a                                    ; $533E: $02
    inc hl                                        ; $533F: $23

jr_015_5340:
    nop                                           ; $5340: $00
    inc bc                                        ; $5341: $03
    inc a                                         ; $5342: $3C
    nop                                           ; $5343: $00

jr_015_5344:
    dec c                                         ; $5344: $0D
    inc d                                         ; $5345: $14
    nop                                           ; $5346: $00
    ld a, [bc]                                    ; $5347: $0A
    dec b                                         ; $5348: $05
    nop                                           ; $5349: $00
    ld e, b                                       ; $534A: $58
    ld bc, $089B                                  ; $534B: $01 $9B $08
    ld e, c                                       ; $534E: $59
    sbc a                                         ; $534F: $9F
    ld b, h                                       ; $5350: $44
    ld l, a                                       ; $5351: $6F
    ld l, [hl]                                    ; $5352: $6E
    daa                                           ; $5353: $27
    ld [hl], h                                    ; $5354: $74
    jr nz, jr_015_53B9                            ; $5355: $20 $62

    ld h, l                                       ; $5357: $65
    rst $38                                       ; $5358: $FF
    ld h, c                                       ; $5359: $61
    jr nz, jr_015_53CF                            ; $535A: $20 $73

    ld [hl], h                                    ; $535C: $74
    ld [hl], d                                    ; $535D: $72
    ld h, c                                       ; $535E: $61

jr_015_535F:
    ld l, [hl]                                    ; $535F: $6E
    ld h, a                                       ; $5360: $67
    ld h, l                                       ; $5361: $65
    ld [hl], d                                    ; $5362: $72
    inc l                                         ; $5363: $2C
    cp $62                                        ; $5364: $FE $62
    ld [hl], l                                    ; $5366: $75
    ld h, d                                       ; $5367: $62
    ld hl, $FDFE                                  ; $5368: $21 $FE $FD
    sbc d                                         ; $536B: $9A
    ld e, b                                       ; $536C: $58
    ld bc, $0742                                  ; $536D: $01 $42 $07
    nop                                           ; $5370: $00
    ld l, e                                       ; $5371: $6B
    ld c, d                                       ; $5372: $4A
    add hl, bc                                    ; $5373: $09
    nop                                           ; $5374: $00
    jr nz, jr_015_5340                            ; $5375: $20 $C9

    ld d, b                                       ; $5377: $50
    sbc e                                         ; $5378: $9B
    ld l, b                                       ; $5379: $68
    ld c, c                                       ; $537A: $49
    sbc a                                         ; $537B: $9F
    ld c, b                                       ; $537C: $48
    ld h, l                                       ; $537D: $65
    ld l, h                                       ; $537E: $6C
    ld l, h                                       ; $537F: $6C
    ld l, a                                       ; $5380: $6F
    ld l, $FE                                     ; $5381: $2E $FE
    ld c, [hl]                                    ; $5383: $4E
    ld l, c                                       ; $5384: $69
    ld h, e                                       ; $5385: $63
    ld h, l                                       ; $5386: $65
    jr nz, @+$66                                  ; $5387: $20 $64

    ld h, c                                       ; $5389: $61
    ld a, c                                       ; $538A: $79
    inc l                                         ; $538B: $2C
    rst $38                                       ; $538C: $FF
    ld l, c                                       ; $538D: $69
    ld [hl], e                                    ; $538E: $73
    ld l, [hl]                                    ; $538F: $6E
    daa                                           ; $5390: $27
    ld [hl], h                                    ; $5391: $74

jr_015_5392:
    jr nz, jr_015_53FD                            ; $5392: $20 $69

    ld [hl], h                                    ; $5394: $74
    ccf                                           ; $5395: $3F
    cp $FD                                        ; $5396: $FE $FD
    sbc c                                         ; $5398: $99
    sbc e                                         ; $5399: $9B
    ld a, b                                       ; $539A: $78
    ld [hl], b                                    ; $539B: $70
    sbc a                                         ; $539C: $9F
    jr nz, jr_015_53E5                            ; $539D: $20 $46

    ld l, a                                       ; $539F: $6F
    ld [hl], d                                    ; $53A0: $72
    ld h, a                                       ; $53A1: $67
    ld h, l                                       ; $53A2: $65
    jr nz, jr_015_53C5                            ; $53A3: $20 $20

    ld b, l                                       ; $53A5: $45
    ld [hl], c                                    ; $53A6: $71
    ld [hl], l                                    ; $53A7: $75
    ld l, c                                       ; $53A8: $69
    ld [hl], b                                    ; $53A9: $70
    rst $38                                       ; $53AA: $FF
    jr nz, jr_015_53FD                            ; $53AB: $20 $50

    ld l, a                                       ; $53AD: $6F
    ld [hl], a                                    ; $53AE: $77
    ld h, l                                       ; $53AF: $65
    ld [hl], d                                    ; $53B0: $72
    jr nz, @+$22                                  ; $53B1: $20 $20

    ld b, h                                       ; $53B3: $44
    ld l, a                                       ; $53B4: $6F
    ld l, [hl]                                    ; $53B5: $6E
    ld h, l                                       ; $53B6: $65
    db $FD                                        ; $53B7: $FD
    sbc h                                         ; $53B8: $9C

jr_015_53B9:
    inc b                                         ; $53B9: $04
    dec d                                         ; $53BA: $15
    db $E4                                        ; $53BB: $E4
    ld d, e                                       ; $53BC: $53
    dec d                                         ; $53BD: $15
    add $53                                       ; $53BE: $C6 $53
    dec d                                         ; $53C0: $15
    sbc $53                                       ; $53C1: $DE $53
    dec d                                         ; $53C3: $15
    rra                                           ; $53C4: $1F

jr_015_53C5:
    ld d, l                                       ; $53C5: $55
    sbc d                                         ; $53C6: $9A
    adc a                                         ; $53C7: $8F
    stop                                          ; $53C8: $10 $00
    rrca                                          ; $53CA: $0F
    ld hl, $0B39                                  ; $53CB: $21 $39 $0B
    dec e                                         ; $53CE: $1D

jr_015_53CF:
    ld bc, $0E52                                  ; $53CF: $01 $52 $0E
    ld e, $07                                     ; $53D2: $1E $07
    ld [hl], $4A                                  ; $53D4: $36 $4A
    ld d, b                                       ; $53D6: $50
    jr nc, jr_015_5406                            ; $53D7: $30 $2D

    inc sp                                        ; $53D9: $33
    ld b, l                                       ; $53DA: $45
    dec d                                         ; $53DB: $15
    sbc b                                         ; $53DC: $98
    ld d, e                                       ; $53DD: $53
    sbc d                                         ; $53DE: $9A
    adc l                                         ; $53DF: $8D
    ld b, l                                       ; $53E0: $45
    dec d                                         ; $53E1: $15
    sbc b                                         ; $53E2: $98
    ld d, e                                       ; $53E3: $53
    sbc e                                         ; $53E4: $9B

jr_015_53E5:
    ld l, b                                       ; $53E5: $68
    ld c, c                                       ; $53E6: $49
    sbc a                                         ; $53E7: $9F
    ld d, a                                       ; $53E8: $57
    ld l, b                                       ; $53E9: $68
    ld h, c                                       ; $53EA: $61
    ld [hl], h                                    ; $53EB: $74
    jr nz, @+$6D                                  ; $53EC: $20 $6B

    ld l, c                                       ; $53EE: $69
    ld l, [hl]                                    ; $53EF: $6E
    ld h, h                                       ; $53F0: $64
    jr nz, jr_015_5462                            ; $53F1: $20 $6F

    ld h, [hl]                                    ; $53F3: $66
    rst $38                                       ; $53F4: $FF
    ld [hl], d                                    ; $53F5: $72
    ld l, c                                       ; $53F6: $69
    ld l, [hl]                                    ; $53F7: $6E
    ld h, a                                       ; $53F8: $67
    jr nz, jr_015_5472                            ; $53F9: $20 $77

    ld l, a                                       ; $53FB: $6F
    ld [hl], l                                    ; $53FC: $75

jr_015_53FD:
    ld l, h                                       ; $53FD: $6C
    ld h, h                                       ; $53FE: $64
    cp $79                                        ; $53FF: $FE $79
    ld l, a                                       ; $5401: $6F
    ld [hl], l                                    ; $5402: $75
    jr nz, jr_015_5471                            ; $5403: $20 $6C

    ld l, c                                       ; $5405: $69

jr_015_5406:
    ld l, e                                       ; $5406: $6B
    ld h, l                                       ; $5407: $65
    ccf                                           ; $5408: $3F
    cp $FD                                        ; $5409: $FE $FD
    sbc d                                         ; $540B: $9A
    adc [hl]                                      ; $540C: $8E
    dec d                                         ; $540D: $15
    rst $38                                       ; $540E: $FF
    ld d, h                                       ; $540F: $54
    dec d                                         ; $5410: $15
    sbc b                                         ; $5411: $98
    ld d, e                                       ; $5412: $53
    ld a, c                                       ; $5413: $79
    nop                                           ; $5414: $00
    rrca                                          ; $5415: $0F
    ld hl, $0121                                  ; $5416: $21 $21 $01
    rst $38                                       ; $5419: $FF
    nop                                           ; $541A: $00
    ld [hl-], a                                   ; $541B: $32
    nop                                           ; $541C: $00
    ld a, [bc]                                    ; $541D: $0A
    add hl, sp                                    ; $541E: $39
    add hl, sp                                    ; $541F: $39
    ld [bc], a                                    ; $5420: $02
    ld hl, $3201                                  ; $5421: $21 $01 $32
    nop                                           ; $5424: $00
    ld a, [bc]                                    ; $5425: $0A
    dec bc                                        ; $5426: $0B
    dec bc                                        ; $5427: $0B
    ld [bc], a                                    ; $5428: $02
    rst $38                                       ; $5429: $FF
    nop                                           ; $542A: $00
    ld [hl-], a                                   ; $542B: $32
    nop                                           ; $542C: $00
    ld a, [bc]                                    ; $542D: $0A
    dec e                                         ; $542E: $1D
    dec e                                         ; $542F: $1D
    inc bc                                        ; $5430: $03
    ld [hl], $01                                  ; $5431: $36 $01
    ld b, [hl]                                    ; $5433: $46
    nop                                           ; $5434: $00
    ld a, [bc]                                    ; $5435: $0A
    ld bc, $0201                                  ; $5436: $01 $01 $02
    rst $38                                       ; $5439: $FF
    nop                                           ; $543A: $00
    ld b, [hl]                                    ; $543B: $46
    nop                                           ; $543C: $00
    dec c                                         ; $543D: $0D
    ld d, d                                       ; $543E: $52
    ld d, d                                       ; $543F: $52
    ld [bc], a                                    ; $5440: $02
    ld d, e                                       ; $5441: $53
    ld bc, $0046                                  ; $5442: $01 $46 $00
    dec c                                         ; $5445: $0D
    ld c, $0E                                     ; $5446: $0E $0E
    inc bc                                        ; $5448: $03
    rst $38                                       ; $5449: $FF
    nop                                           ; $544A: $00
    ld h, h                                       ; $544B: $64
    nop                                           ; $544C: $00
    dec c                                         ; $544D: $0D
    ld e, $1E                                     ; $544E: $1E $1E
    ld [bc], a                                    ; $5450: $02
    ld d, e                                       ; $5451: $53
    ld bc, $0064                                  ; $5452: $01 $64 $00
    rrca                                          ; $5455: $0F
    rlca                                          ; $5456: $07
    rlca                                          ; $5457: $07
    ld bc, $00FF                                  ; $5458: $01 $FF $00
    ld h, h                                       ; $545B: $64
    nop                                           ; $545C: $00
    rrca                                          ; $545D: $0F
    ld [hl], $36                                  ; $545E: $36 $36
    ld [bc], a                                    ; $5460: $02
    rst $38                                       ; $5461: $FF

jr_015_5462:
    nop                                           ; $5462: $00
    ld h, h                                       ; $5463: $64
    nop                                           ; $5464: $00
    rrca                                          ; $5465: $0F
    ld c, d                                       ; $5466: $4A
    ld c, d                                       ; $5467: $4A
    ld [bc], a                                    ; $5468: $02
    ld [hl], $01                                  ; $5469: $36 $01
    ld a, b                                       ; $546B: $78
    nop                                           ; $546C: $00
    rrca                                          ; $546D: $0F
    ld d, b                                       ; $546E: $50
    ld d, b                                       ; $546F: $50
    inc bc                                        ; $5470: $03

jr_015_5471:
    rst $38                                       ; $5471: $FF

jr_015_5472:
    nop                                           ; $5472: $00
    ld a, b                                       ; $5473: $78
    nop                                           ; $5474: $00
    rrca                                          ; $5475: $0F
    jr nc, jr_015_54A8                            ; $5476: $30 $30

    inc bc                                        ; $5478: $03
    ld d, e                                       ; $5479: $53
    ld bc, $00C8                                  ; $547A: $01 $C8 $00
    ld [hl-], a                                   ; $547D: $32
    dec c                                         ; $547E: $0D
    dec c                                         ; $547F: $0D
    inc b                                         ; $5480: $04
    rst $38                                       ; $5481: $FF
    nop                                           ; $5482: $00
    inc l                                         ; $5483: $2C
    ld bc, $3332                                  ; $5484: $01 $32 $33
    inc sp                                        ; $5487: $33
    ld bc, $0153                                  ; $5488: $01 $53 $01
    sub b                                         ; $548B: $90
    ld bc, $093C                                  ; $548C: $01 $3C $09
    inc b                                         ; $548F: $04
    dec d                                         ; $5490: $15
    inc bc                                        ; $5491: $03
    ld e, b                                       ; $5492: $58
    ld e, l                                       ; $5493: $5D
    sbc e                                         ; $5494: $9B
    ld l, b                                       ; $5495: $68
    ld c, c                                       ; $5496: $49
    sbc a                                         ; $5497: $9F
    ld c, b                                       ; $5498: $48
    ld h, l                                       ; $5499: $65
    ld [hl], d                                    ; $549A: $72
    ld h, l                                       ; $549B: $65
    jr nz, jr_015_5507                            ; $549C: $20 $69

    ld [hl], e                                    ; $549E: $73
    jr nz, @+$7B                                  ; $549F: $20 $79

    ld l, a                                       ; $54A1: $6F
    ld [hl], l                                    ; $54A2: $75
    ld [hl], d                                    ; $54A3: $72
    rst $38                                       ; $54A4: $FF
    db $FC                                        ; $54A5: $FC
    cp $49                                        ; $54A6: $FE $49

jr_015_54A8:
    ld h, [hl]                                    ; $54A8: $66
    jr nz, jr_015_5524                            ; $54A9: $20 $79

    ld l, a                                       ; $54AB: $6F
    ld [hl], l                                    ; $54AC: $75
    jr nz, jr_015_5510                            ; $54AD: $20 $61

    ld [hl], d                                    ; $54AF: $72
    ld h, l                                       ; $54B0: $65
    rst $38                                       ; $54B1: $FF
    ld [hl], h                                    ; $54B2: $74
    ld [hl], d                                    ; $54B3: $72
    ld a, c                                       ; $54B4: $79
    ld l, c                                       ; $54B5: $69
    ld l, [hl]                                    ; $54B6: $6E
    ld h, a                                       ; $54B7: $67
    jr nz, jr_015_552E                            ; $54B8: $20 $74

    ld l, a                                       ; $54BA: $6F
    jr nz, jr_015_5531                            ; $54BB: $20 $74

    ld [hl], d                                    ; $54BD: $72
    ld h, c                                       ; $54BE: $61
    ld l, c                                       ; $54BF: $69
    ld l, [hl]                                    ; $54C0: $6E
    cp $79                                        ; $54C1: $FE $79
    ld l, a                                       ; $54C3: $6F
    ld [hl], l                                    ; $54C4: $75
    ld [hl], d                                    ; $54C5: $72
    jr nz, @+$70                                  ; $54C6: $20 $6E

    ld h, l                                       ; $54C8: $65
    ld [hl], a                                    ; $54C9: $77
    rst $38                                       ; $54CA: $FF
    ld h, e                                       ; $54CB: $63
    ld [hl], d                                    ; $54CC: $72
    ld h, l                                       ; $54CD: $65
    ld h, c                                       ; $54CE: $61
    ld [hl], h                                    ; $54CF: $74
    ld [hl], l                                    ; $54D0: $75
    ld [hl], d                                    ; $54D1: $72
    ld h, l                                       ; $54D2: $65
    inc l                                         ; $54D3: $2C
    jr nz, jr_015_554A                            ; $54D4: $20 $74

    ld l, b                                       ; $54D6: $68
    ld h, l                                       ; $54D7: $65
    cp $61                                        ; $54D8: $FE $61
    ld [hl], d                                    ; $54DA: $72
    ld h, l                                       ; $54DB: $65
    ld h, c                                       ; $54DC: $61
    jr nz, jr_015_554E                            ; $54DD: $20 $6F

    ld [hl], l                                    ; $54DF: $75
    ld [hl], h                                    ; $54E0: $74
    ld [hl], e                                    ; $54E1: $73
    ld l, c                                       ; $54E2: $69
    ld h, h                                       ; $54E3: $64
    ld h, l                                       ; $54E4: $65
    rst $38                                       ; $54E5: $FF
    ld [hl], h                                    ; $54E6: $74
    ld l, b                                       ; $54E7: $68
    ld h, l                                       ; $54E8: $65
    jr nz, jr_015_5552                            ; $54E9: $20 $67

    ld h, c                                       ; $54EB: $61
    ld [hl], d                                    ; $54EC: $72
    ld h, c                                       ; $54ED: $61
    ld h, a                                       ; $54EE: $67
    ld h, l                                       ; $54EF: $65
    jr nz, jr_015_555B                            ; $54F0: $20 $69

    ld [hl], e                                    ; $54F2: $73
    cp $67                                        ; $54F3: $FE $67
    ld [hl], d                                    ; $54F5: $72
    ld h, l                                       ; $54F6: $65
    ld h, c                                       ; $54F7: $61
    ld [hl], h                                    ; $54F8: $74
    ld hl, $FDFE                                  ; $54F9: $21 $FE $FD
    ld b, [hl]                                    ; $54FC: $46
    sbc b                                         ; $54FD: $98
    ld d, e                                       ; $54FE: $53
    sbc e                                         ; $54FF: $9B
    ld l, b                                       ; $5500: $68
    ld c, c                                       ; $5501: $49
    sbc a                                         ; $5502: $9F
    ld e, c                                       ; $5503: $59
    ld l, a                                       ; $5504: $6F
    ld [hl], l                                    ; $5505: $75
    ld [hl], d                                    ; $5506: $72

jr_015_5507:
    jr nz, jr_015_555B                            ; $5507: $20 $52

    ld l, c                                       ; $5509: $69
    ld l, [hl]                                    ; $550A: $6E
    ld h, a                                       ; $550B: $67
    jr nz, jr_015_5550                            ; $550C: $20 $42

    ld h, c                                       ; $550E: $61
    ld l, [hl]                                    ; $550F: $6E

jr_015_5510:
    ld l, e                                       ; $5510: $6B
    rst $38                                       ; $5511: $FF
    ld l, c                                       ; $5512: $69
    ld [hl], e                                    ; $5513: $73
    jr nz, @+$68                                  ; $5514: $20 $66

    ld [hl], l                                    ; $5516: $75
    ld l, h                                       ; $5517: $6C
    ld l, h                                       ; $5518: $6C
    ld l, $FE                                     ; $5519: $2E $FE
    db $FD                                        ; $551B: $FD
    ld b, [hl]                                    ; $551C: $46
    sbc b                                         ; $551D: $98
    ld d, e                                       ; $551E: $53
    sbc e                                         ; $551F: $9B
    ld l, b                                       ; $5520: $68
    ld c, c                                       ; $5521: $49
    sbc a                                         ; $5522: $9F
    ld b, e                                       ; $5523: $43

jr_015_5524:
    ld l, a                                       ; $5524: $6F
    ld l, l                                       ; $5525: $6D
    ld h, l                                       ; $5526: $65
    jr nz, @+$64                                  ; $5527: $20 $62

    ld h, c                                       ; $5529: $61
    ld h, e                                       ; $552A: $63
    ld l, e                                       ; $552B: $6B
    rst $38                                       ; $552C: $FF
    ld h, c                                       ; $552D: $61

jr_015_552E:
    ld l, [hl]                                    ; $552E: $6E
    ld a, c                                       ; $552F: $79
    ld [hl], h                                    ; $5530: $74

jr_015_5531:
    ld l, c                                       ; $5531: $69
    ld l, l                                       ; $5532: $6D
    ld h, l                                       ; $5533: $65
    ld hl, $46FE                                  ; $5534: $21 $FE $46
    ld l, a                                       ; $5537: $6F
    ld [hl], e                                    ; $5538: $73
    ld [hl], e                                    ; $5539: $73
    ld l, c                                       ; $553A: $69
    ld l, e                                       ; $553B: $6B
    daa                                           ; $553C: $27
    ld [hl], e                                    ; $553D: $73
    jr nz, jr_015_5592                            ; $553E: $20 $52

    ld l, c                                       ; $5540: $69
    ld l, [hl]                                    ; $5541: $6E
    ld h, a                                       ; $5542: $67
    rst $38                                       ; $5543: $FF
    ld d, e                                       ; $5544: $53
    ld l, b                                       ; $5545: $68
    ld l, a                                       ; $5546: $6F
    ld [hl], b                                    ; $5547: $70
    jr nz, jr_015_55B3                            ; $5548: $20 $69

jr_015_554A:
    ld [hl], e                                    ; $554A: $73
    jr nz, jr_015_55AE                            ; $554B: $20 $61

    ld l, h                                       ; $554D: $6C

jr_015_554E:
    ld [hl], a                                    ; $554E: $77
    ld h, c                                       ; $554F: $61

jr_015_5550:
    ld a, c                                       ; $5550: $79
    ld [hl], e                                    ; $5551: $73

jr_015_5552:
    cp $6F                                        ; $5552: $FE $6F
    ld [hl], b                                    ; $5554: $70
    ld h, l                                       ; $5555: $65
    ld l, [hl]                                    ; $5556: $6E
    ld hl, $FDFE                                  ; $5557: $21 $FE $FD
    sbc d                                         ; $555A: $9A

jr_015_555B:
    add e                                         ; $555B: $83

jr_015_555C:
    jr jr_015_555C                                ; $555C: $18 $FE

    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    rlca                                          ; $5560: $07
    nop                                           ; $5561: $00
    add c                                         ; $5562: $81
    ld e, l                                       ; $5563: $5D
    ld b, d                                       ; $5564: $42
    sbc e                                         ; $5565: $9B
    ld l, b                                       ; $5566: $68
    ld h, d                                       ; $5567: $62
    sbc a                                         ; $5568: $9F
    ld c, l                                       ; $5569: $4D
    ld l, a                                       ; $556A: $6F
    ld [hl], d                                    ; $556B: $72
    ld h, c                                       ; $556C: $61
    ld h, a                                       ; $556D: $67
    jr nz, @+$66                                  ; $556E: $20 $64

    ld h, l                                       ; $5570: $65
    ld [hl], e                                    ; $5571: $73
    ld [hl], h                                    ; $5572: $74
    ld [hl], d                                    ; $5573: $72
    ld l, a                                       ; $5574: $6F
    ld a, c                                       ; $5575: $79
    ld h, l                                       ; $5576: $65
    ld h, h                                       ; $5577: $64
    rst $38                                       ; $5578: $FF
    ld l, l                                       ; $5579: $6D
    ld a, c                                       ; $557A: $79
    jr nz, jr_015_55E6                            ; $557B: $20 $69

    ld l, [hl]                                    ; $557D: $6E
    ld l, [hl]                                    ; $557E: $6E
    inc l                                         ; $557F: $2C
    jr nz, @+$64                                  ; $5580: $20 $62

    ld [hl], l                                    ; $5582: $75
    ld [hl], h                                    ; $5583: $74
    jr nz, jr_015_55CF                            ; $5584: $20 $49

    cp $63                                        ; $5586: $FE $63
    ld h, c                                       ; $5588: $61
    ld l, [hl]                                    ; $5589: $6E
    jr nz, jr_015_55FF                            ; $558A: $20 $73

    ld [hl], h                                    ; $558C: $74
    ld l, c                                       ; $558D: $69
    ld l, h                                       ; $558E: $6C
    ld l, h                                       ; $558F: $6C
    rst $38                                       ; $5590: $FF
    ld [hl], d                                    ; $5591: $72

jr_015_5592:
    ld h, l                                       ; $5592: $65
    ld h, e                                       ; $5593: $63
    ld l, a                                       ; $5594: $6F
    ld [hl], d                                    ; $5595: $72
    ld h, h                                       ; $5596: $64
    jr nz, @+$7B                                  ; $5597: $20 $79

    ld l, a                                       ; $5599: $6F
    ld [hl], l                                    ; $559A: $75
    ld [hl], d                                    ; $559B: $72
    cp $6A                                        ; $559C: $FE $6A
    ld l, a                                       ; $559E: $6F
    ld [hl], l                                    ; $559F: $75
    ld [hl], d                                    ; $55A0: $72
    ld l, [hl]                                    ; $55A1: $6E
    ld h, l                                       ; $55A2: $65
    ld a, c                                       ; $55A3: $79
    ld l, $20                                     ; $55A4: $2E $20
    ld d, a                                       ; $55A6: $57
    ld l, a                                       ; $55A7: $6F
    ld [hl], l                                    ; $55A8: $75
    ld l, h                                       ; $55A9: $6C
    ld h, h                                       ; $55AA: $64
    rst $38                                       ; $55AB: $FF
    ld a, c                                       ; $55AC: $79
    ld l, a                                       ; $55AD: $6F

jr_015_55AE:
    ld [hl], l                                    ; $55AE: $75
    jr nz, jr_015_561D                            ; $55AF: $20 $6C

    ld l, c                                       ; $55B1: $69
    ld l, e                                       ; $55B2: $6B

jr_015_55B3:
    ld h, l                                       ; $55B3: $65
    jr nz, jr_015_562A                            ; $55B4: $20 $74

    ld l, a                                       ; $55B6: $6F
    cp $72                                        ; $55B7: $FE $72
    ld h, l                                       ; $55B9: $65
    ld [hl], e                                    ; $55BA: $73
    ld [hl], h                                    ; $55BB: $74
    ccf                                           ; $55BC: $3F
    cp $FD                                        ; $55BD: $FE $FD
    sbc e                                         ; $55BF: $9B
    ld a, b                                       ; $55C0: $78
    ld [hl], b                                    ; $55C1: $70
    sbc a                                         ; $55C2: $9F
    jr nz, jr_015_561E                            ; $55C3: $20 $59

    ld h, l                                       ; $55C5: $65
    ld [hl], e                                    ; $55C6: $73
    rst $38                                       ; $55C7: $FF
    jr nz, jr_015_5618                            ; $55C8: $20 $4E

    ld l, a                                       ; $55CA: $6F
    db $FD                                        ; $55CB: $FD
    sbc h                                         ; $55CC: $9C
    ld [bc], a                                    ; $55CD: $02
    dec d                                         ; $55CE: $15

jr_015_55CF:
    call nc, $1555                                ; $55CF: $D4 $55 $15
    ld a, [$9955]                                 ; $55D2: $FA $55 $99
    sbc e                                         ; $55D5: $9B
    ld l, b                                       ; $55D6: $68
    ld h, d                                       ; $55D7: $62
    sbc a                                         ; $55D8: $9F
    ld b, a                                       ; $55D9: $47
    ld l, a                                       ; $55DA: $6F
    ld l, a                                       ; $55DB: $6F
    ld h, h                                       ; $55DC: $64
    jr nz, jr_015_564D                            ; $55DD: $20 $6E

    ld l, c                                       ; $55DF: $69
    ld h, a                                       ; $55E0: $67
    ld l, b                                       ; $55E1: $68
    ld [hl], h                                    ; $55E2: $74
    ld hl, $FDFE                                  ; $55E3: $21 $FE $FD

jr_015_55E6:
    sbc d                                         ; $55E6: $9A
    sub [hl]                                      ; $55E7: $96
    dec d                                         ; $55E8: $15
    rrca                                          ; $55E9: $0F
    ld d, [hl]                                    ; $55EA: $56
    ld l, [hl]                                    ; $55EB: $6E
    rrca                                          ; $55EC: $0F
    rst $38                                       ; $55ED: $FF
    ld a, a                                       ; $55EE: $7F
    halt                                          ; $55EF: $76
    jr nz, jr_015_5601                            ; $55F0: $20 $0F

    sub d                                         ; $55F2: $92
    ld bc, $4040                                  ; $55F3: $01 $40 $40
    ld b, l                                       ; $55F6: $45
    dec d                                         ; $55F7: $15
    and d                                         ; $55F8: $A2
    ld e, b                                       ; $55F9: $58
    sbc c                                         ; $55FA: $99
    sbc e                                         ; $55FB: $9B
    ld l, b                                       ; $55FC: $68
    ld h, d                                       ; $55FD: $62
    sbc a                                         ; $55FE: $9F

jr_015_55FF:
    ld d, h                                       ; $55FF: $54
    ld h, c                                       ; $5600: $61

jr_015_5601:
    ld l, e                                       ; $5601: $6B
    ld h, l                                       ; $5602: $65
    jr nz, jr_015_5668                            ; $5603: $20 $63

    ld h, c                                       ; $5605: $61
    ld [hl], d                                    ; $5606: $72
    ld h, l                                       ; $5607: $65
    ld hl, $FDFE                                  ; $5608: $21 $FE $FD
    sbc d                                         ; $560B: $9A
    ld e, b                                       ; $560C: $58
    ld bc, $0142                                  ; $560D: $01 $42 $01
    ld de, $AC0C                                  ; $5610: $11 $0C $AC
    or d                                          ; $5613: $B2
    and d                                         ; $5614: $A2
    ld bc, $0043                                  ; $5615: $01 $43 $00

jr_015_5618:
    and l                                         ; $5618: $A5
    and c                                         ; $5619: $A1
    ld bc, $0F15                                  ; $561A: $01 $15 $0F

jr_015_561D:
    ld e, b                                       ; $561D: $58

jr_015_561E:
    sub e                                         ; $561E: $93
    ld h, l                                       ; $561F: $65
    ld b, h                                       ; $5620: $44
    ld b, a                                       ; $5621: $47
    ld c, a                                       ; $5622: $4F
    ld h, h                                       ; $5623: $64
    ld e, l                                       ; $5624: $5D
    ld c, b                                       ; $5625: $48
    ld l, c                                       ; $5626: $69
    ld h, d                                       ; $5627: $62
    ld c, b                                       ; $5628: $48
    ld h, [hl]                                    ; $5629: $66

jr_015_562A:
    ret nz                                        ; $562A: $C0

    ld e, h                                       ; $562B: $5C
    ld hl, $0005                                  ; $562C: $21 $05 $00
    add c                                         ; $562F: $81
    ld e, l                                       ; $5630: $5D
    dec c                                         ; $5631: $0D
    inc de                                        ; $5632: $13

jr_015_5633:
    adc c                                         ; $5633: $89
    pop de                                        ; $5634: $D1
    nop                                           ; $5635: $00
    jr nz, jr_015_5633                            ; $5636: $20 $FB

    ld d, b                                       ; $5638: $50
    ld [hl+], a                                   ; $5639: $22
    dec b                                         ; $563A: $05
    ld b, b                                       ; $563B: $40
    dec b                                         ; $563C: $05
    ld [bc], a                                    ; $563D: $02
    db $ED                                        ; $563E: $ED
    ld h, e                                       ; $563F: $63
    ld [bc], a                                    ; $5640: $02
    inc b                                         ; $5641: $04
    ld d, d                                       ; $5642: $52
    ret nc                                        ; $5643: $D0

    nop                                           ; $5644: $00
    ld c, $DB                                     ; $5645: $0E $DB
    ld a, c                                       ; $5647: $79
    dec d                                         ; $5648: $15
    ld [hl-], a                                   ; $5649: $32
    ld d, a                                       ; $564A: $57
    dec b                                         ; $564B: $05
    inc bc                                        ; $564C: $03

jr_015_564D:
    db $ED                                        ; $564D: $ED
    ld h, e                                       ; $564E: $63
    ld [bc], a                                    ; $564F: $02
    ld b, $7A                                     ; $5650: $06 $7A
    ret nc                                        ; $5652: $D0

    jr nc, jr_015_566A                            ; $5653: $30 $15

    or c                                          ; $5655: $B1
    ld d, [hl]                                    ; $5656: $56
    dec d                                         ; $5657: $15
    db $E3                                        ; $5658: $E3
    ld d, a                                       ; $5659: $57
    dec b                                         ; $565A: $05
    inc b                                         ; $565B: $04
    db $ED                                        ; $565C: $ED
    ld h, e                                       ; $565D: $63
    ld c, $04                                     ; $565E: $0E $04
    ld e, [hl]                                    ; $5660: $5E
    ret nc                                        ; $5661: $D0

    ld a, [bc]                                    ; $5662: $0A
    ld c, $A8                                     ; $5663: $0E $A8
    ld e, [hl]                                    ; $5665: $5E
    dec d                                         ; $5666: $15
    ld sp, hl                                     ; $5667: $F9

jr_015_5668:
    ld d, a                                       ; $5668: $57
    dec b                                         ; $5669: $05

jr_015_566A:
    dec b                                         ; $566A: $05
    db $ED                                        ; $566B: $ED
    ld h, e                                       ; $566C: $63
    dec bc                                        ; $566D: $0B
    dec bc                                        ; $566E: $0B
    rst $20                                       ; $566F: $E7
    ret nc                                        ; $5670: $D0

    ld a, b                                       ; $5671: $78
    db $10                                        ; $5672: $10
    and $79                                       ; $5673: $E6 $79
    dec d                                         ; $5675: $15
    ld d, b                                       ; $5676: $50
    ld e, c                                       ; $5677: $59
    ld l, e                                       ; $5678: $6B
    jr z, jr_015_5687                             ; $5679: $28 $0C

    add b                                         ; $567B: $80
    ld h, d                                       ; $567C: $62
    add b                                         ; $567D: $80
    add a                                         ; $567E: $87
    nop                                           ; $567F: $00
    ld l, e                                       ; $5680: $6B
    jr nc, jr_015_568D                            ; $5681: $30 $0A

    or b                                          ; $5683: $B0
    ld h, [hl]                                    ; $5684: $66
    nop                                           ; $5685: $00
    add b                                         ; $5686: $80

jr_015_5687:
    nop                                           ; $5687: $00
    ld l, e                                       ; $5688: $6B
    ld a, [bc]                                    ; $5689: $0A
    ld a, [bc]                                    ; $568A: $0A
    jr nz, @+$77                                  ; $568B: $20 $75

jr_015_568D:
    nop                                           ; $568D: $00
    add e                                         ; $568E: $83
    nop                                           ; $568F: $00
    ld l, e                                       ; $5690: $6B
    ccf                                           ; $5691: $3F
    inc c                                         ; $5692: $0C
    and b                                         ; $5693: $A0
    ld [hl], e                                    ; $5694: $73
    and b                                         ; $5695: $A0
    add e                                         ; $5696: $83
    nop                                           ; $5697: $00
    dec bc                                        ; $5698: $0B
    nop                                           ; $5699: $00
    dec bc                                        ; $569A: $0B
    ld [bc], a                                    ; $569B: $02
    dec bc                                        ; $569C: $0B
    inc bc                                        ; $569D: $03
    dec bc                                        ; $569E: $0B
    inc b                                         ; $569F: $04
    nop                                           ; $56A0: $00
    add d                                         ; $56A1: $82
    rra                                           ; $56A2: $1F
    dec d                                         ; $56A3: $15
    sub h                                         ; $56A4: $94
    ld b, e                                       ; $56A5: $43
    ld de, $0504                                  ; $56A6: $11 $04 $05
    ld a, [bc]                                    ; $56A9: $0A
    dec d                                         ; $56AA: $15
    xor [hl]                                      ; $56AB: $AE
    ld d, [hl]                                    ; $56AC: $56
    ld b, d                                       ; $56AD: $42
    dec bc                                        ; $56AE: $0B
    dec b                                         ; $56AF: $05
    ld b, d                                       ; $56B0: $42
    inc d                                         ; $56B1: $14
    db $10                                        ; $56B2: $10
    ret nc                                        ; $56B3: $D0

    ld h, b                                       ; $56B4: $60
    ld h, b                                       ; $56B5: $60
    ld bc, $1015                                  ; $56B6: $01 $15 $10
    and $60                                       ; $56B9: $E6 $60
    ld b, b                                       ; $56BB: $40
    db $10                                        ; $56BC: $10
    ret nc                                        ; $56BD: $D0

    ld h, b                                       ; $56BE: $60
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    ld d, [hl]                                    ; $56C1: $56
    ld [bc], a                                    ; $56C2: $02
    ld h, b                                       ; $56C3: $60
    inc bc                                        ; $56C4: $03
    dec d                                         ; $56C5: $15
    db $10                                        ; $56C6: $10
    cp $60                                        ; $56C7: $FE $60
    inc c                                         ; $56C9: $0C
    db $10                                        ; $56CA: $10
    ld a, [c]                                     ; $56CB: $F2
    ld h, b                                       ; $56CC: $60
    ld [$0A10], sp                                ; $56CD: $08 $10 $0A
    ld h, c                                       ; $56D0: $61
    db $10                                        ; $56D1: $10
    db $10                                        ; $56D2: $10
    ret nc                                        ; $56D3: $D0

    ld h, b                                       ; $56D4: $60
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    ld d, [hl]                                    ; $56D7: $56
    inc b                                         ; $56D8: $04
    dec d                                         ; $56D9: $15
    db $10                                        ; $56DA: $10
    ld a, [hl+]                                   ; $56DB: $2A
    ld h, c                                       ; $56DC: $61
    jr nz, @+$12                                  ; $56DD: $20 $10

    cp $60                                        ; $56DF: $FE $60
    add hl, de                                    ; $56E1: $19
    db $10                                        ; $56E2: $10
    ld a, [de]                                    ; $56E3: $1A
    ld h, c                                       ; $56E4: $61
    db $10                                        ; $56E5: $10
    db $10                                        ; $56E6: $10
    cp $60                                        ; $56E7: $FE $60
    ld [$F210], sp                                ; $56E9: $08 $10 $F2
    ld h, b                                       ; $56EC: $60
    ld [$FE10], sp                                ; $56ED: $08 $10 $FE
    ld h, b                                       ; $56F0: $60
    ld [$F210], sp                                ; $56F1: $08 $10 $F2
    ld h, b                                       ; $56F4: $60
    ld [$FE10], sp                                ; $56F5: $08 $10 $FE
    ld h, b                                       ; $56F8: $60
    ld [$F210], sp                                ; $56F9: $08 $10 $F2
    ld h, b                                       ; $56FC: $60
    ld [$FE10], sp                                ; $56FD: $08 $10 $FE
    ld h, b                                       ; $5700: $60
    ld [$F210], sp                                ; $5701: $08 $10 $F2
    ld h, b                                       ; $5704: $60
    ld [$FE10], sp                                ; $5705: $08 $10 $FE
    ld h, b                                       ; $5708: $60
    ld [$F210], sp                                ; $5709: $08 $10 $F2
    ld h, b                                       ; $570C: $60
    ld [$FE10], sp                                ; $570D: $08 $10 $FE
    ld h, b                                       ; $5710: $60
    ld [$F210], sp                                ; $5711: $08 $10 $F2
    ld h, b                                       ; $5714: $60
    ld [$C610], sp                                ; $5715: $08 $10 $C6
    ld h, b                                       ; $5718: $60
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    ld h, b                                       ; $571B: $60
    add hl, bc                                    ; $571C: $09
    dec d                                         ; $571D: $15
    db $10                                        ; $571E: $10
    ld c, b                                       ; $571F: $48

jr_015_5720:
    ld h, c                                       ; $5720: $61
    add hl, bc                                    ; $5721: $09
    db $10                                        ; $5722: $10
    ld a, [bc]                                    ; $5723: $0A

jr_015_5724:
    ld h, c                                       ; $5724: $61
    nop                                           ; $5725: $00
    db $10                                        ; $5726: $10
    ld a, [c]                                     ; $5727: $F2
    ld h, b                                       ; $5728: $60
    ld e, $10                                     ; $5729: $1E $10
    ret nc                                        ; $572B: $D0

    ld h, b                                       ; $572C: $60
    nop                                           ; $572D: $00

jr_015_572E:
    nop                                           ; $572E: $00
    ld d, [hl]                                    ; $572F: $56
    dec b                                         ; $5730: $05
    ld b, d                                       ; $5731: $42
    inc d                                         ; $5732: $14
    ld c, $DB                                     ; $5733: $0E $DB
    ld a, c                                       ; $5735: $79
    ld b, e                                       ; $5736: $43
    nop                                           ; $5737: $00
    and l                                         ; $5738: $A5
    and c                                         ; $5739: $A1
    ld bc, $7415                                  ; $573A: $01 $15 $74
    ld d, a                                       ; $573D: $57
    xor a                                         ; $573E: $AF
    and l                                         ; $573F: $A5

jr_015_5740:
    and c                                         ; $5740: $A1
    ld bc, $155B                                  ; $5741: $01 $5B $15
    ret                                           ; $5744: $C9


    ld d, b                                       ; $5745: $50
    ld h, d                                       ; $5746: $62
    ld bc, $0156                                  ; $5747: $01 $56 $01
    ld h, b                                       ; $574A: $60
    ld [bc], a                                    ; $574B: $02
    ld e, e                                       ; $574C: $5B
    dec d                                         ; $574D: $15
    rst $00                                       ; $574E: $C7
    ld d, c                                       ; $574F: $51
    ld h, d                                       ; $5750: $62
    ld [bc], a                                    ; $5751: $02
    rlca                                          ; $5752: $07
    nop                                           ; $5753: $00
    ld l, e                                       ; $5754: $6B
    ld c, d                                       ; $5755: $4A
    add hl, bc                                    ; $5756: $09
    nop                                           ; $5757: $00
    dec d                                         ; $5758: $15
    ld a, [hl]                                    ; $5759: $7E

jr_015_575A:
    ld d, a                                       ; $575A: $57
    ld h, b                                       ; $575B: $60
    dec b                                         ; $575C: $05
    ld e, e                                       ; $575D: $5B
    dec d                                         ; $575E: $15
    ld b, d                                       ; $575F: $42
    ld d, d                                       ; $5760: $52
    ld h, d                                       ; $5761: $62
    inc b                                         ; $5762: $04
    ld d, [hl]                                    ; $5763: $56
    ld b, $60                                     ; $5764: $06 $60
    rlca                                          ; $5766: $07
    rlca                                          ; $5767: $07
    nop                                           ; $5768: $00
    add c                                         ; $5769: $81
    ld e, l                                       ; $576A: $5D
    add hl, bc                                    ; $576B: $09
    nop                                           ; $576C: $00
    jr nz, jr_015_5724                            ; $576D: $20 $B5

    ld d, b                                       ; $576F: $50
    ld b, l                                       ; $5770: $45
    dec d                                         ; $5771: $15
    ld a, h                                       ; $5772: $7C
    ld d, a                                       ; $5773: $57
    ld e, e                                       ; $5774: $5B
    dec d                                         ; $5775: $15
    ld [c], a                                     ; $5776: $E2
    ld d, d                                       ; $5777: $52
    ld b, l                                       ; $5778: $45
    ld c, $0D                                     ; $5779: $0E $0D
    ld a, d                                       ; $577B: $7A
    ld [de], a                                    ; $577C: $12
    ld b, d                                       ; $577D: $42
    inc d                                         ; $577E: $14
    jr nz, jr_015_5740                            ; $577F: $20 $BF

    ld d, b                                       ; $5781: $50
    ld d, [hl]                                    ; $5782: $56
    inc bc                                        ; $5783: $03
    inc d                                         ; $5784: $14
    jr nz, jr_015_575A                            ; $5785: $20 $D3

    ld d, b                                       ; $5787: $50
    ld h, b                                       ; $5788: $60
    inc b                                         ; $5789: $04
    ld b, b                                       ; $578A: $40
    jr nz, jr_015_57A1                            ; $578B: $20 $14

    jr nz, jr_015_5720                            ; $578D: $20 $91

    ld d, b                                       ; $578F: $50
    ld e, e                                       ; $5790: $5B
    dec d                                         ; $5791: $15
    ld a, [hl+]                                   ; $5792: $2A
    ld d, d                                       ; $5793: $52
    ld b, b                                       ; $5794: $40
    add hl, de                                    ; $5795: $19
    dec d                                         ; $5796: $15
    jr nz, jr_015_57F6                            ; $5797: $20 $5D

    ld d, b                                       ; $5799: $50
    db $10                                        ; $579A: $10
    jr nz, jr_015_572E                            ; $579B: $20 $91

    ld d, b                                       ; $579D: $50
    ld [$7720], sp                                ; $579E: $08 $20 $77

jr_015_57A1:
    ld d, b                                       ; $57A1: $50
    ld [$9120], sp                                ; $57A2: $08 $20 $91
    ld d, b                                       ; $57A5: $50
    ld [$7720], sp                                ; $57A6: $08 $20 $77
    ld d, b                                       ; $57A9: $50
    ld [$9120], sp                                ; $57AA: $08 $20 $91
    ld d, b                                       ; $57AD: $50
    ld [$7720], sp                                ; $57AE: $08 $20 $77
    ld d, b                                       ; $57B1: $50
    ld [$9120], sp                                ; $57B2: $08 $20 $91
    ld d, b                                       ; $57B5: $50
    ld [$7720], sp                                ; $57B6: $08 $20 $77
    ld d, b                                       ; $57B9: $50
    ld [$9120], sp                                ; $57BA: $08 $20 $91
    ld d, b                                       ; $57BD: $50
    ld [$7720], sp                                ; $57BE: $08 $20 $77
    ld d, b                                       ; $57C1: $50
    ld [$9120], sp                                ; $57C2: $08 $20 $91
    ld d, b                                       ; $57C5: $50
    ld [$7720], sp                                ; $57C6: $08 $20 $77
    ld d, b                                       ; $57C9: $50
    ld [$BF20], sp                                ; $57CA: $08 $20 $BF
    ld d, b                                       ; $57CD: $50
    nop                                           ; $57CE: $00
    nop                                           ; $57CF: $00
    ld h, d                                       ; $57D0: $62
    inc bc                                        ; $57D1: $03
    ld d, [hl]                                    ; $57D2: $56
    add hl, bc                                    ; $57D3: $09
    ld h, b                                       ; $57D4: $60
    ld b, $14                                     ; $57D5: $06 $14
    jr nz, @-$49                                  ; $57D7: $20 $B5

    ld d, b                                       ; $57D9: $50
    ld e, e                                       ; $57DA: $5B
    dec d                                         ; $57DB: $15
    cp d                                          ; $57DC: $BA
    ld d, d                                       ; $57DD: $52
    ld h, d                                       ; $57DE: $62
    dec b                                         ; $57DF: $05
    ld d, [hl]                                    ; $57E0: $56
    rlca                                          ; $57E1: $07
    ld b, d                                       ; $57E2: $42
    ld e, e                                       ; $57E3: $5B
    dec d                                         ; $57E4: $15
    inc b                                         ; $57E5: $04
    ld d, e                                       ; $57E6: $53
    dec d                                         ; $57E7: $15
    db $10                                        ; $57E8: $10
    and $60                                       ; $57E9: $E6 $60
    jr nz, jr_015_57FD                            ; $57EB: $20 $10

    and $60                                       ; $57ED: $E6 $60
    jr nz, jr_015_5801                            ; $57EF: $20 $10

    ret nc                                        ; $57F1: $D0

    ld h, b                                       ; $57F2: $60
    nop                                           ; $57F3: $00
    nop                                           ; $57F4: $00
    ld h, d                                       ; $57F5: $62

jr_015_57F6:
    rlca                                          ; $57F6: $07
    ld [de], a                                    ; $57F7: $12
    ld b, d                                       ; $57F8: $42
    add e                                         ; $57F9: $83
    jr jr_015_57FE                                ; $57FA: $18 $02

    nop                                           ; $57FC: $00

jr_015_57FD:
    nop                                           ; $57FD: $00

jr_015_57FE:
    ld e, e                                       ; $57FE: $5B
    dec d                                         ; $57FF: $15
    ld l, a                                       ; $5800: $6F

jr_015_5801:
    ld d, e                                       ; $5801: $53
    ld b, d                                       ; $5802: $42
    dec d                                         ; $5803: $15
    ld c, $19                                     ; $5804: $0E $19
    ld e, [hl]                                    ; $5806: $5E
    rst $38                                       ; $5807: $FF
    nop                                           ; $5808: $00
    inc d                                         ; $5809: $14
    ld c, $A8                                     ; $580A: $0E $A8
    ld e, [hl]                                    ; $580C: $5E
    ld d, e                                       ; $580D: $53
    ld b, d                                       ; $580E: $42
    sub e                                         ; $580F: $93
    ld h, l                                       ; $5810: $65
    ld b, h                                       ; $5811: $44
    ld b, a                                       ; $5812: $47
    ld c, a                                       ; $5813: $4F
    ld h, h                                       ; $5814: $64
    ld e, l                                       ; $5815: $5D
    ld c, b                                       ; $5816: $48
    ld l, c                                       ; $5817: $69
    ld h, d                                       ; $5818: $62
    ld c, b                                       ; $5819: $48
    ld h, [hl]                                    ; $581A: $66
    ret nz                                        ; $581B: $C0

    ld e, h                                       ; $581C: $5C
    ld hl, $0005                                  ; $581D: $21 $05 $00
    add c                                         ; $5820: $81
    ld e, l                                       ; $5821: $5D
    dec c                                         ; $5822: $0D
    inc de                                        ; $5823: $13

jr_015_5824:
    adc c                                         ; $5824: $89
    pop de                                        ; $5825: $D1
    nop                                           ; $5826: $00
    jr nz, jr_015_5824                            ; $5827: $20 $FB

    ld d, b                                       ; $5829: $50
    ld [hl+], a                                   ; $582A: $22
    dec b                                         ; $582B: $05
    ld b, b                                       ; $582C: $40
    dec b                                         ; $582D: $05
    ld [bc], a                                    ; $582E: $02
    db $ED                                        ; $582F: $ED
    ld h, e                                       ; $5830: $63
    ld [bc], a                                    ; $5831: $02
    inc b                                         ; $5832: $04
    ld d, d                                       ; $5833: $52
    ret nc                                        ; $5834: $D0

    nop                                           ; $5835: $00
    ld c, $DB                                     ; $5836: $0E $DB
    ld a, c                                       ; $5838: $79
    dec d                                         ; $5839: $15
    ld [hl-], a                                   ; $583A: $32
    ld d, a                                       ; $583B: $57
    dec b                                         ; $583C: $05
    inc bc                                        ; $583D: $03
    db $ED                                        ; $583E: $ED
    ld h, e                                       ; $583F: $63
    ld [bc], a                                    ; $5840: $02
    ld b, $7A                                     ; $5841: $06 $7A
    ret nc                                        ; $5843: $D0

    jr nc, jr_015_585B                            ; $5844: $30 $15

    or c                                          ; $5846: $B1
    ld d, [hl]                                    ; $5847: $56
    dec d                                         ; $5848: $15
    db $E3                                        ; $5849: $E3
    ld d, a                                       ; $584A: $57
    dec b                                         ; $584B: $05
    inc b                                         ; $584C: $04
    db $ED                                        ; $584D: $ED
    ld h, e                                       ; $584E: $63
    ld c, $04                                     ; $584F: $0E $04
    ld e, [hl]                                    ; $5851: $5E
    ret nc                                        ; $5852: $D0

    ld a, [bc]                                    ; $5853: $0A
    ld c, $A8                                     ; $5854: $0E $A8
    ld e, [hl]                                    ; $5856: $5E
    dec d                                         ; $5857: $15
    ld sp, hl                                     ; $5858: $F9
    ld d, a                                       ; $5859: $57
    dec b                                         ; $585A: $05

jr_015_585B:
    dec b                                         ; $585B: $05
    db $ED                                        ; $585C: $ED
    ld h, e                                       ; $585D: $63
    dec bc                                        ; $585E: $0B
    dec bc                                        ; $585F: $0B
    rst $20                                       ; $5860: $E7
    ret nc                                        ; $5861: $D0

    ld a, b                                       ; $5862: $78
    db $10                                        ; $5863: $10
    and $79                                       ; $5864: $E6 $79
    dec d                                         ; $5866: $15
    ld d, b                                       ; $5867: $50
    ld e, c                                       ; $5868: $59
    ld l, e                                       ; $5869: $6B
    jr z, jr_015_5878                             ; $586A: $28 $0C

    add b                                         ; $586C: $80
    ld h, d                                       ; $586D: $62
    add b                                         ; $586E: $80
    add a                                         ; $586F: $87
    nop                                           ; $5870: $00
    ld l, e                                       ; $5871: $6B
    jr nc, jr_015_587E                            ; $5872: $30 $0A

    or b                                          ; $5874: $B0
    ld h, [hl]                                    ; $5875: $66
    nop                                           ; $5876: $00
    add b                                         ; $5877: $80

jr_015_5878:
    nop                                           ; $5878: $00
    ld l, e                                       ; $5879: $6B
    ld a, [bc]                                    ; $587A: $0A
    ld a, [bc]                                    ; $587B: $0A
    jr nz, jr_015_58F3                            ; $587C: $20 $75

jr_015_587E:
    nop                                           ; $587E: $00
    add e                                         ; $587F: $83
    nop                                           ; $5880: $00
    ld l, e                                       ; $5881: $6B
    ccf                                           ; $5882: $3F
    inc c                                         ; $5883: $0C
    and b                                         ; $5884: $A0
    ld [hl], e                                    ; $5885: $73
    and b                                         ; $5886: $A0
    add e                                         ; $5887: $83
    nop                                           ; $5888: $00
    dec bc                                        ; $5889: $0B
    nop                                           ; $588A: $00
    dec bc                                        ; $588B: $0B
    ld [bc], a                                    ; $588C: $02
    dec bc                                        ; $588D: $0B
    inc bc                                        ; $588E: $03
    dec bc                                        ; $588F: $0B
    inc b                                         ; $5890: $04
    nop                                           ; $5891: $00
    add d                                         ; $5892: $82
    rra                                           ; $5893: $1F
    dec d                                         ; $5894: $15
    sub h                                         ; $5895: $94
    ld b, e                                       ; $5896: $43
    ld de, $0504                                  ; $5897: $11 $04 $05
    ld a, [bc]                                    ; $589A: $0A
    dec d                                         ; $589B: $15
    sbc a                                         ; $589C: $9F
    ld e, b                                       ; $589D: $58
    ld b, d                                       ; $589E: $42
    dec bc                                        ; $589F: $0B
    dec b                                         ; $58A0: $05
    ld b, d                                       ; $58A1: $42
    sub e                                         ; $58A2: $93
    ld h, l                                       ; $58A3: $65
    ld b, h                                       ; $58A4: $44
    ld b, a                                       ; $58A5: $47
    ld c, a                                       ; $58A6: $4F
    ld h, h                                       ; $58A7: $64
    ld e, l                                       ; $58A8: $5D
    ld c, b                                       ; $58A9: $48
    ld l, c                                       ; $58AA: $69
    ld h, d                                       ; $58AB: $62
    ld c, b                                       ; $58AC: $48
    ld h, [hl]                                    ; $58AD: $66
    ret nz                                        ; $58AE: $C0

    ld e, h                                       ; $58AF: $5C
    ld hl, $0F6F                                  ; $58B0: $21 $6F $0F
    rst $38                                       ; $58B3: $FF
    ld a, a                                       ; $58B4: $7F
    dec b                                         ; $58B5: $05
    nop                                           ; $58B6: $00
    ld l, e                                       ; $58B7: $6B
    ld c, d                                       ; $58B8: $4A
    ld c, $0C                                     ; $58B9: $0E $0C
    cp $D0                                        ; $58BB: $FE $D0
    nop                                           ; $58BD: $00
    dec d                                         ; $58BE: $15
    ld a, $59                                     ; $58BF: $3E $59
    ld [hl+], a                                   ; $58C1: $22
    dec b                                         ; $58C2: $05
    ld b, b                                       ; $58C3: $40
    dec b                                         ; $58C4: $05
    ld [bc], a                                    ; $58C5: $02
    db $ED                                        ; $58C6: $ED
    ld h, e                                       ; $58C7: $63
    ld [bc], a                                    ; $58C8: $02
    inc b                                         ; $58C9: $04
    ld d, d                                       ; $58CA: $52
    ret nc                                        ; $58CB: $D0

    nop                                           ; $58CC: $00
    ld c, $DB                                     ; $58CD: $0E $DB
    ld a, c                                       ; $58CF: $79
    dec d                                         ; $58D0: $15
    ld [hl-], a                                   ; $58D1: $32
    ld d, a                                       ; $58D2: $57
    dec b                                         ; $58D3: $05
    inc bc                                        ; $58D4: $03
    db $ED                                        ; $58D5: $ED
    ld h, e                                       ; $58D6: $63
    ld [bc], a                                    ; $58D7: $02
    ld b, $7A                                     ; $58D8: $06 $7A
    ret nc                                        ; $58DA: $D0

    jr nc, jr_015_58F2                            ; $58DB: $30 $15

    or c                                          ; $58DD: $B1
    ld d, [hl]                                    ; $58DE: $56
    dec d                                         ; $58DF: $15
    db $E3                                        ; $58E0: $E3
    ld d, a                                       ; $58E1: $57
    dec b                                         ; $58E2: $05
    inc b                                         ; $58E3: $04
    db $ED                                        ; $58E4: $ED
    ld h, e                                       ; $58E5: $63
    ld c, $04                                     ; $58E6: $0E $04
    ld e, [hl]                                    ; $58E8: $5E
    ret nc                                        ; $58E9: $D0

    ld a, [bc]                                    ; $58EA: $0A
    ld c, $A8                                     ; $58EB: $0E $A8
    ld e, [hl]                                    ; $58ED: $5E
    dec d                                         ; $58EE: $15
    ld sp, hl                                     ; $58EF: $F9
    ld d, a                                       ; $58F0: $57
    dec b                                         ; $58F1: $05

jr_015_58F2:
    dec b                                         ; $58F2: $05

jr_015_58F3:
    db $ED                                        ; $58F3: $ED
    ld h, e                                       ; $58F4: $63
    dec bc                                        ; $58F5: $0B
    dec bc                                        ; $58F6: $0B
    rst $20                                       ; $58F7: $E7
    ret nc                                        ; $58F8: $D0

    ld a, b                                       ; $58F9: $78
    db $10                                        ; $58FA: $10
    and $79                                       ; $58FB: $E6 $79
    dec d                                         ; $58FD: $15
    ld d, b                                       ; $58FE: $50
    ld e, c                                       ; $58FF: $59
    ld l, e                                       ; $5900: $6B
    jr z, jr_015_590F                             ; $5901: $28 $0C

    add b                                         ; $5903: $80
    ld h, d                                       ; $5904: $62

jr_015_5905:
    add b                                         ; $5905: $80
    add a                                         ; $5906: $87
    nop                                           ; $5907: $00
    ld l, e                                       ; $5908: $6B
    jr nc, jr_015_5915                            ; $5909: $30 $0A

    or b                                          ; $590B: $B0
    ld h, [hl]                                    ; $590C: $66
    nop                                           ; $590D: $00
    add b                                         ; $590E: $80

jr_015_590F:
    nop                                           ; $590F: $00
    ld l, e                                       ; $5910: $6B
    ld a, [bc]                                    ; $5911: $0A
    ld a, [bc]                                    ; $5912: $0A
    jr nz, jr_015_598A                            ; $5913: $20 $75

jr_015_5915:
    nop                                           ; $5915: $00
    add e                                         ; $5916: $83
    nop                                           ; $5917: $00
    ld l, e                                       ; $5918: $6B
    ccf                                           ; $5919: $3F

jr_015_591A:
    inc c                                         ; $591A: $0C
    and b                                         ; $591B: $A0
    ld [hl], e                                    ; $591C: $73
    and b                                         ; $591D: $A0
    add e                                         ; $591E: $83
    nop                                           ; $591F: $00
    dec bc                                        ; $5920: $0B
    nop                                           ; $5921: $00
    dec bc                                        ; $5922: $0B
    ld [bc], a                                    ; $5923: $02
    dec bc                                        ; $5924: $0B
    inc bc                                        ; $5925: $03
    dec bc                                        ; $5926: $0B
    inc b                                         ; $5927: $04

jr_015_5928:
    dec bc                                        ; $5928: $0B
    dec b                                         ; $5929: $05
    add d                                         ; $592A: $82
    rra                                           ; $592B: $1F
    dec d                                         ; $592C: $15
    sub h                                         ; $592D: $94
    halt                                          ; $592E: $76
    jr nz, @+$11                                  ; $592F: $20 $0F

    ld e, h                                       ; $5931: $5C
    nop                                           ; $5932: $00
    ld [bc], a                                    ; $5933: $02
    rlca                                          ; $5934: $07
    nop                                           ; $5935: $00
    add c                                         ; $5936: $81
    ld e, l                                       ; $5937: $5D
    add hl, bc                                    ; $5938: $09
    nop                                           ; $5939: $00
    jr nz, jr_015_5905                            ; $593A: $20 $C9

    ld d, b                                       ; $593C: $50
    ld b, d                                       ; $593D: $42
    dec d                                         ; $593E: $15
    jr nz, jr_015_591A                            ; $593F: $20 $D9

    ld e, d                                       ; $5941: $5A
    ld b, b                                       ; $5942: $40
    jr nz, jr_015_5928                            ; $5943: $20 $E3

    ld e, d                                       ; $5945: $5A
    jr nz, jr_015_5968                            ; $5946: $20 $20

    dec bc                                        ; $5948: $0B
    ld e, e                                       ; $5949: $5B
    stop                                          ; $594A: $10 $00
    ld e, h                                       ; $594C: $5C
    nop                                           ; $594D: $00
    ld [bc], a                                    ; $594E: $02
    ld b, d                                       ; $594F: $42
    inc d                                         ; $5950: $14
    db $10                                        ; $5951: $10
    and $79                                       ; $5952: $E6 $79
    ld e, e                                       ; $5954: $5B
    dec d                                         ; $5955: $15
    ld h, l                                       ; $5956: $65
    ld d, l                                       ; $5957: $55
    ld b, l                                       ; $5958: $45
    db $10                                        ; $5959: $10
    inc l                                         ; $595A: $2C
    ld a, d                                       ; $595B: $7A
    sub [hl]                                      ; $595C: $96
    dec d                                         ; $595D: $15
    ld e, h                                       ; $595E: $5C
    ld e, c                                       ; $595F: $59
    ld bc, $1521                                  ; $5960: $01 $21 $15
    ld b, l                                       ; $5963: $45
    cpl                                           ; $5964: $2F
    ld sp, hl                                     ; $5965: $F9
    ld b, h                                       ; $5966: $44
    ld [bc], a                                    ; $5967: $02

jr_015_5968:
    dec bc                                        ; $5968: $0B
    add hl, bc                                    ; $5969: $09
    add hl, bc                                    ; $596A: $09
    inc de                                        ; $596B: $13
    ld b, l                                       ; $596C: $45
    dec d                                         ; $596D: $15
    ld sp, hl                                     ; $596E: $F9
    ld e, h                                       ; $596F: $5C
    ld b, d                                       ; $5970: $42
    sub e                                         ; $5971: $93
    xor h                                         ; $5972: $AC
    or d                                          ; $5973: $B2
    and d                                         ; $5974: $A2
    ld bc, $9065                                  ; $5975: $01 $65 $90
    ld b, [hl]                                    ; $5978: $46
    ld c, a                                       ; $5979: $4F
    ld h, h                                       ; $597A: $64
    sub b                                         ; $597B: $90
    ld b, a                                       ; $597C: $47
    ld h, [hl]                                    ; $597D: $66
    ret nz                                        ; $597E: $C0

    ld e, h                                       ; $597F: $5C
    ld hl, $0005                                  ; $5980: $21 $05 $00
    add c                                         ; $5983: $81
    ld e, l                                       ; $5984: $5D
    dec b                                         ; $5985: $05
    dec b                                         ; $5986: $05
    add d                                         ; $5987: $82
    ret nc                                        ; $5988: $D0

    nop                                           ; $5989: $00

jr_015_598A:
    jr nz, @-$3F                                  ; $598A: $20 $BF

    ld d, b                                       ; $598C: $50
    ld [hl+], a                                   ; $598D: $22
    dec b                                         ; $598E: $05
    ld b, b                                       ; $598F: $40
    dec bc                                        ; $5990: $0B
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    add d                                         ; $5993: $82
    rra                                           ; $5994: $1F
    ld a, [bc]                                    ; $5995: $0A
    sub h                                         ; $5996: $94
    ld b, d                                       ; $5997: $42
    ld bc, $0A0C                                  ; $5998: $01 $0C $0A
    ld b, l                                       ; $599B: $45
    dec d                                         ; $599C: $15
    ld [hl], c                                    ; $599D: $71
    ld e, c                                       ; $599E: $59
    ld bc, $1803                                  ; $599F: $01 $03 $18
    ld b, l                                       ; $59A2: $45
    dec d                                         ; $59A3: $15
    ret z                                         ; $59A4: $C8

    ld e, [hl]                                    ; $59A5: $5E
    sbc e                                         ; $59A6: $9B
    ld a, b                                       ; $59A7: $78
    ld [hl], b                                    ; $59A8: $70
    sbc a                                         ; $59A9: $9F
    ld b, [hl]                                    ; $59AA: $46
    ld l, c                                       ; $59AB: $69
    ld l, h                                       ; $59AC: $6C
    ld l, h                                       ; $59AD: $6C
    ld h, l                                       ; $59AE: $65
    ld h, h                                       ; $59AF: $64
    jr nz, jr_015_5A29                            ; $59B0: $20 $77

    ld l, c                                       ; $59B2: $69
    ld [hl], h                                    ; $59B3: $74
    ld l, b                                       ; $59B4: $68
    rst $38                                       ; $59B5: $FF
    ld h, d                                       ; $59B6: $62
    ld l, a                                       ; $59B7: $6F
    ld l, a                                       ; $59B8: $6F
    ld l, e                                       ; $59B9: $6B
    ld [hl], e                                    ; $59BA: $73
    jr nz, jr_015_5A2C                            ; $59BB: $20 $6F

    ld l, [hl]                                    ; $59BD: $6E
    jr nz, jr_015_5A28                            ; $59BE: $20 $68

    ld l, a                                       ; $59C0: $6F
    ld [hl], a                                    ; $59C1: $77
    cp $74                                        ; $59C2: $FE $74
    ld l, a                                       ; $59C4: $6F
    jr nz, jr_015_5A2D                            ; $59C5: $20 $66

    ld l, c                                       ; $59C7: $69
    ld h, a                                       ; $59C8: $67
    ld l, b                                       ; $59C9: $68
    ld [hl], h                                    ; $59CA: $74
    jr nz, jr_015_5A41                            ; $59CB: $20 $74

    ld l, b                                       ; $59CD: $68
    ld h, l                                       ; $59CE: $65
    rst $38                                       ; $59CF: $FF
    ld l, l                                       ; $59D0: $6D
    ld l, a                                       ; $59D1: $6F
    ld [hl], d                                    ; $59D2: $72
    ld [hl], h                                    ; $59D3: $74
    ld h, c                                       ; $59D4: $61
    ld l, h                                       ; $59D5: $6C
    jr nz, @+$67                                  ; $59D6: $20 $65

    ld l, [hl]                                    ; $59D8: $6E
    ld h, l                                       ; $59D9: $65
    ld l, l                                       ; $59DA: $6D
    ld a, c                                       ; $59DB: $79
    jr nz, jr_015_5A4D                            ; $59DC: $20 $6F

    ld h, [hl]                                    ; $59DE: $66
    cp $70                                        ; $59DF: $FE $70
    ld [hl], d                                    ; $59E1: $72
    ld l, a                                       ; $59E2: $6F
    ld h, h                                       ; $59E3: $64
    ld [hl], l                                    ; $59E4: $75
    ld h, e                                       ; $59E5: $63
    ld [hl], h                                    ; $59E6: $74
    ld l, c                                       ; $59E7: $69
    halt                                          ; $59E8: $76
    ld l, c                                       ; $59E9: $69
    ld [hl], h                                    ; $59EA: $74
    ld a, c                                       ; $59EB: $79
    ld a, [hl-]                                   ; $59EC: $3A
    rst $38                                       ; $59ED: $FF
    ld [hl], e                                    ; $59EE: $73
    ld l, h                                       ; $59EF: $6C
    ld h, l                                       ; $59F0: $65
    ld h, l                                       ; $59F1: $65
    ld [hl], b                                    ; $59F2: $70
    ld l, $FE                                     ; $59F3: $2E $FE
    db $FD                                        ; $59F5: $FD
    sbc d                                         ; $59F6: $9A
    ld b, d                                       ; $59F7: $42
    sbc e                                         ; $59F8: $9B
    ld a, b                                       ; $59F9: $78
    ld [hl], b                                    ; $59FA: $70
    sbc a                                         ; $59FB: $9F
    ld d, e                                       ; $59FC: $53
    ld l, b                                       ; $59FD: $68
    ld h, l                                       ; $59FE: $65
    jr nz, jr_015_5A74                            ; $59FF: $20 $73

    ld l, b                                       ; $5A01: $68
    ld l, a                                       ; $5A02: $6F
    ld [hl], l                                    ; $5A03: $75
    ld l, h                                       ; $5A04: $6C
    ld h, h                                       ; $5A05: $64
    rst $38                                       ; $5A06: $FF
    ld h, e                                       ; $5A07: $63
    ld l, h                                       ; $5A08: $6C
    ld h, l                                       ; $5A09: $65
    ld h, c                                       ; $5A0A: $61
    ld l, [hl]                                    ; $5A0B: $6E
    jr nz, jr_015_5A7B                            ; $5A0C: $20 $6D

    ld l, a                                       ; $5A0E: $6F
    ld [hl], d                                    ; $5A0F: $72
    ld h, l                                       ; $5A10: $65
    cp $6F                                        ; $5A11: $FE $6F
    ld h, [hl]                                    ; $5A13: $66
    ld [hl], h                                    ; $5A14: $74
    ld h, l                                       ; $5A15: $65
    ld l, [hl]                                    ; $5A16: $6E
    ld l, $FE                                     ; $5A17: $2E $FE
    db $FD                                        ; $5A19: $FD
    sbc d                                         ; $5A1A: $9A
    ld b, d                                       ; $5A1B: $42
    sbc e                                         ; $5A1C: $9B
    ld a, b                                       ; $5A1D: $78
    ld [hl], b                                    ; $5A1E: $70
    sbc a                                         ; $5A1F: $9F
    ld b, c                                       ; $5A20: $41
    jr nz, jr_015_5A93                            ; $5A21: $20 $70

    ld h, l                                       ; $5A23: $65
    ld [hl], d                                    ; $5A24: $72
    ld h, [hl]                                    ; $5A25: $66
    ld h, l                                       ; $5A26: $65
    ld h, e                                       ; $5A27: $63

jr_015_5A28:
    ld [hl], h                                    ; $5A28: $74

jr_015_5A29:
    jr nz, jr_015_5A8E                            ; $5A29: $20 $63

    ld l, b                                       ; $5A2B: $68

jr_015_5A2C:
    ld h, c                                       ; $5A2C: $61

jr_015_5A2D:
    ld l, c                                       ; $5A2D: $69
    ld [hl], d                                    ; $5A2E: $72
    rst $38                                       ; $5A2F: $FF
    ld h, [hl]                                    ; $5A30: $66
    ld l, a                                       ; $5A31: $6F
    ld [hl], d                                    ; $5A32: $72
    jr nz, jr_015_5AAC                            ; $5A33: $20 $77

    ld h, c                                       ; $5A35: $61
    ld [hl], h                                    ; $5A36: $74
    ld h, e                                       ; $5A37: $63
    ld l, b                                       ; $5A38: $68
    ld l, c                                       ; $5A39: $69
    ld l, [hl]                                    ; $5A3A: $6E
    ld h, a                                       ; $5A3B: $67
    jr nz, jr_015_5A92                            ; $5A3C: $20 $54

    ld d, [hl]                                    ; $5A3E: $56
    cp $69                                        ; $5A3F: $FE $69

jr_015_5A41:
    ld l, [hl]                                    ; $5A41: $6E
    ld l, $FE                                     ; $5A42: $2E $FE
    ld c, [hl]                                    ; $5A44: $4E
    ld l, a                                       ; $5A45: $6F
    ld [hl], a                                    ; $5A46: $77
    jr nz, jr_015_5AB2                            ; $5A47: $20 $69

    ld h, [hl]                                    ; $5A49: $66
    jr nz, jr_015_5ABB                            ; $5A4A: $20 $6F

    ld l, [hl]                                    ; $5A4C: $6E

jr_015_5A4D:
    ld l, h                                       ; $5A4D: $6C
    ld a, c                                       ; $5A4E: $79
    rst $38                                       ; $5A4F: $FF
    ld [hl], h                                    ; $5A50: $74
    ld l, b                                       ; $5A51: $68
    ld h, l                                       ; $5A52: $65
    ld [hl], d                                    ; $5A53: $72
    ld h, l                                       ; $5A54: $65
    jr nz, jr_015_5ACE                            ; $5A55: $20 $77

    ld h, l                                       ; $5A57: $65
    ld [hl], d                                    ; $5A58: $72
    ld h, l                                       ; $5A59: $65
    jr nz, @+$63                                  ; $5A5A: $20 $61

    cp $54                                        ; $5A5C: $FE $54
    ld d, [hl]                                    ; $5A5E: $56

jr_015_5A5F:
    ld l, $FE                                     ; $5A5F: $2E $FE
    db $FD                                        ; $5A61: $FD
    sbc d                                         ; $5A62: $9A
    ld b, d                                       ; $5A63: $42
    sbc e                                         ; $5A64: $9B
    ld a, b                                       ; $5A65: $78
    ld [hl], b                                    ; $5A66: $70
    sbc a                                         ; $5A67: $9F
    ld c, c                                       ; $5A68: $49
    jr nz, jr_015_5AE2                            ; $5A69: $20 $77

    ld l, a                                       ; $5A6B: $6F
    ld l, [hl]                                    ; $5A6C: $6E
    ld h, h                                       ; $5A6D: $64
    ld h, l                                       ; $5A6E: $65
    ld [hl], d                                    ; $5A6F: $72
    jr nz, @+$6B                                  ; $5A70: $20 $69

    ld h, [hl]                                    ; $5A72: $66
    rst $38                                       ; $5A73: $FF

jr_015_5A74:
    ld [hl], e                                    ; $5A74: $73
    ld l, b                                       ; $5A75: $68
    ld h, l                                       ; $5A76: $65
    jr nz, jr_015_5AE0                            ; $5A77: $20 $67

jr_015_5A79:
    ld [hl], d                                    ; $5A79: $72
    ld h, l                                       ; $5A7A: $65

jr_015_5A7B:
    ld [hl], a                                    ; $5A7B: $77
    jr nz, jr_015_5AF2                            ; $5A7C: $20 $74

    ld l, b                                       ; $5A7E: $68
    ld l, c                                       ; $5A7F: $69
    ld [hl], e                                    ; $5A80: $73
    inc l                                         ; $5A81: $2C
    cp $74                                        ; $5A82: $FE $74
    ld l, a                                       ; $5A84: $6F
    ld l, a                                       ; $5A85: $6F
    ld l, $FE                                     ; $5A86: $2E $FE
    db $FD                                        ; $5A88: $FD
    sbc d                                         ; $5A89: $9A
    ld b, d                                       ; $5A8A: $42

jr_015_5A8B:
    rlca                                          ; $5A8B: $07
    nop                                           ; $5A8C: $00
    ld l, e                                       ; $5A8D: $6B

jr_015_5A8E:
    ld c, d                                       ; $5A8E: $4A
    ld c, e                                       ; $5A8F: $4B
    inc bc                                        ; $5A90: $03
    dec d                                         ; $5A91: $15

jr_015_5A92:
    nop                                           ; $5A92: $00

jr_015_5A93:
    nop                                           ; $5A93: $00
    and [hl]                                      ; $5A94: $A6
    ld e, d                                       ; $5A95: $5A
    dec d                                         ; $5A96: $15
    inc bc                                        ; $5A97: $03
    nop                                           ; $5A98: $00
    xor [hl]                                      ; $5A99: $AE
    ld e, d                                       ; $5A9A: $5A
    dec d                                         ; $5A9B: $15
    ld [bc], a                                    ; $5A9C: $02
    nop                                           ; $5A9D: $00
    or [hl]                                       ; $5A9E: $B6
    ld e, d                                       ; $5A9F: $5A
    dec d                                         ; $5AA0: $15
    ld bc, $BE00                                  ; $5AA1: $01 $00 $BE
    ld e, d                                       ; $5AA4: $5A
    rst $38                                       ; $5AA5: $FF
    add hl, bc                                    ; $5AA6: $09
    nop                                           ; $5AA7: $00
    jr nz, jr_015_5A5F                            ; $5AA8: $20 $B5

    ld d, b                                       ; $5AAA: $50
    ld b, [hl]                                    ; $5AAB: $46

jr_015_5AAC:
    jp $095A                                      ; $5AAC: $C3 $5A $09


    nop                                           ; $5AAF: $00
    jr nz, @-$53                                  ; $5AB0: $20 $AB

jr_015_5AB2:
    ld d, b                                       ; $5AB2: $50
    ld b, [hl]                                    ; $5AB3: $46
    jp $095A                                      ; $5AB4: $C3 $5A $09


    nop                                           ; $5AB7: $00
    jr nz, jr_015_5A79                            ; $5AB8: $20 $BF

    ld d, b                                       ; $5ABA: $50

jr_015_5ABB:
    ld b, [hl]                                    ; $5ABB: $46
    jp $095A                                      ; $5ABC: $C3 $5A $09


    nop                                           ; $5ABF: $00
    jr nz, jr_015_5A8B                            ; $5AC0: $20 $C9

    ld d, b                                       ; $5AC2: $50
    sbc e                                         ; $5AC3: $9B
    xor b                                         ; $5AC4: $A8
    ld c, a                                       ; $5AC5: $4F
    sbc a                                         ; $5AC6: $9F
    dec l                                         ; $5AC7: $2D
    ld a, c                                       ; $5AC8: $79
    ld h, c                                       ; $5AC9: $61
    ld h, c                                       ; $5ACA: $61
    ld h, c                                       ; $5ACB: $61
    ld h, c                                       ; $5ACC: $61
    ld [hl], a                                    ; $5ACD: $77

jr_015_5ACE:
    ld l, [hl]                                    ; $5ACE: $6E
    dec l                                         ; $5ACF: $2D
    rst $38                                       ; $5AD0: $FF
    ld b, l                                       ; $5AD1: $45
    ld a, b                                       ; $5AD2: $78
    ld h, e                                       ; $5AD3: $63
    ld [hl], l                                    ; $5AD4: $75
    ld [hl], e                                    ; $5AD5: $73
    ld h, l                                       ; $5AD6: $65
    jr nz, jr_015_5B46                            ; $5AD7: $20 $6D

    ld h, l                                       ; $5AD9: $65
    ld l, $2E                                     ; $5ADA: $2E $2E
    ld l, $FE                                     ; $5ADC: $2E $FE
    ld [hl], a                                    ; $5ADE: $77
    ld h, l                                       ; $5ADF: $65

jr_015_5AE0:
    ld l, h                                       ; $5AE0: $6C
    ld h, e                                       ; $5AE1: $63

jr_015_5AE2:
    ld l, a                                       ; $5AE2: $6F
    ld l, l                                       ; $5AE3: $6D
    ld h, l                                       ; $5AE4: $65
    jr nz, jr_015_5B5B                            ; $5AE5: $20 $74

    ld l, a                                       ; $5AE7: $6F
    rst $38                                       ; $5AE8: $FF
    ld b, a                                       ; $5AE9: $47
    ld [hl], d                                    ; $5AEA: $72
    ld [hl], l                                    ; $5AEB: $75
    ld l, e                                       ; $5AEC: $6B
    daa                                           ; $5AED: $27
    ld [hl], e                                    ; $5AEE: $73
    jr nz, jr_015_5B3E                            ; $5AEF: $20 $4D

    ld [hl], l                                    ; $5AF1: $75

jr_015_5AF2:
    ld [hl], e                                    ; $5AF2: $73
    ld l, b                                       ; $5AF3: $68
    ld [hl], d                                    ; $5AF4: $72
    ld l, a                                       ; $5AF5: $6F
    ld l, a                                       ; $5AF6: $6F
    ld l, l                                       ; $5AF7: $6D
    cp $46                                        ; $5AF8: $FE $46
    ld h, c                                       ; $5AFA: $61
    ld [hl], d                                    ; $5AFB: $72
    ld l, l                                       ; $5AFC: $6D
    ld hl, $4320                                  ; $5AFD: $21 $20 $43
    ld h, c                                       ; $5B00: $61
    ld l, [hl]                                    ; $5B01: $6E
    jr nz, @+$4B                                  ; $5B02: $20 $49

    rst $38                                       ; $5B04: $FF
    ld l, b                                       ; $5B05: $68
    ld h, l                                       ; $5B06: $65
    ld l, h                                       ; $5B07: $6C
    ld [hl], b                                    ; $5B08: $70
    jr nz, jr_015_5B84                            ; $5B09: $20 $79

    ld l, a                                       ; $5B0B: $6F
    ld [hl], l                                    ; $5B0C: $75
    ccf                                           ; $5B0D: $3F
    cp $FD                                        ; $5B0E: $FE $FD
    sbc d                                         ; $5B10: $9A
    sub b                                         ; $5B11: $90
    dec d                                         ; $5B12: $15
    inc h                                         ; $5B13: $24
    ld e, e                                       ; $5B14: $5B
    dec c                                         ; $5B15: $0D
    nop                                           ; $5B16: $00
    inc b                                         ; $5B17: $04
    ld bc, $000A                                  ; $5B18: $01 $0A $00
    ld [bc], a                                    ; $5B1B: $02
    ld e, $00                                     ; $5B1C: $1E $00
    dec c                                         ; $5B1E: $0D
    inc d                                         ; $5B1F: $14
    nop                                           ; $5B20: $00
    add hl, bc                                    ; $5B21: $09
    dec b                                         ; $5B22: $05
    nop                                           ; $5B23: $00
    sbc e                                         ; $5B24: $9B
    xor b                                         ; $5B25: $A8
    ld c, a                                       ; $5B26: $4F
    sbc a                                         ; $5B27: $9F
    dec l                                         ; $5B28: $2D
    ld a, c                                       ; $5B29: $79
    ld h, c                                       ; $5B2A: $61
    ld [hl], a                                    ; $5B2B: $77
    ld l, [hl]                                    ; $5B2C: $6E
    dec l                                         ; $5B2D: $2D
    cp $54                                        ; $5B2E: $FE $54
    ld l, b                                       ; $5B30: $68
    ld h, c                                       ; $5B31: $61
    ld l, [hl]                                    ; $5B32: $6E
    ld l, e                                       ; $5B33: $6B
    jr nz, jr_015_5BAF                            ; $5B34: $20 $79

    ld l, a                                       ; $5B36: $6F
    ld [hl], l                                    ; $5B37: $75
    ld l, $FE                                     ; $5B38: $2E $FE
    db $FD                                        ; $5B3A: $FD
    sbc e                                         ; $5B3B: $9B
    ld a, b                                       ; $5B3C: $78
    ld [hl], b                                    ; $5B3D: $70

jr_015_5B3E:
    sbc a                                         ; $5B3E: $9F
    ld c, l                                       ; $5B3F: $4D
    ld h, c                                       ; $5B40: $61
    ld a, c                                       ; $5B41: $79
    jr nz, jr_015_5B8D                            ; $5B42: $20 $49

    jr nz, jr_015_5BA7                            ; $5B44: $20 $61

jr_015_5B46:
    ld [hl], e                                    ; $5B46: $73
    ld l, e                                       ; $5B47: $6B
    rst $38                                       ; $5B48: $FF
    ld [hl], a                                    ; $5B49: $77
    ld l, b                                       ; $5B4A: $68
    ld a, c                                       ; $5B4B: $79
    jr nz, jr_015_5BC7                            ; $5B4C: $20 $79

    ld l, a                                       ; $5B4E: $6F
    ld [hl], l                                    ; $5B4F: $75
    jr nz, jr_015_5BB3                            ; $5B50: $20 $61

    ld [hl], d                                    ; $5B52: $72
    ld h, l                                       ; $5B53: $65
    cp $73                                        ; $5B54: $FE $73
    ld l, a                                       ; $5B56: $6F
    jr nz, jr_015_5BCD                            ; $5B57: $20 $74

    ld l, c                                       ; $5B59: $69
    ld [hl], d                                    ; $5B5A: $72

jr_015_5B5B:
    ld h, l                                       ; $5B5B: $65
    ld h, h                                       ; $5B5C: $64
    ccf                                           ; $5B5D: $3F
    cp $FD                                        ; $5B5E: $FE $FD
    sbc e                                         ; $5B60: $9B
    xor b                                         ; $5B61: $A8
    ld c, a                                       ; $5B62: $4F
    sbc a                                         ; $5B63: $9F
    ld d, a                                       ; $5B64: $57
    ld l, b                                       ; $5B65: $68
    ld h, c                                       ; $5B66: $61
    ld [hl], h                                    ; $5B67: $74
    ccf                                           ; $5B68: $3F
    jr nz, jr_015_5BBA                            ; $5B69: $20 $4F

    ld l, b                                       ; $5B6B: $68
    inc l                                         ; $5B6C: $2C
    jr nz, jr_015_5BD8                            ; $5B6D: $20 $69

    ld [hl], h                                    ; $5B6F: $74
    daa                                           ; $5B70: $27
    ld [hl], e                                    ; $5B71: $73
    rst $38                                       ; $5B72: $FF
    ld l, [hl]                                    ; $5B73: $6E
    ld l, a                                       ; $5B74: $6F
    ld [hl], h                                    ; $5B75: $74
    ld l, b                                       ; $5B76: $68
    ld l, c                                       ; $5B77: $69
    ld l, [hl]                                    ; $5B78: $6E
    ld h, a                                       ; $5B79: $67
    ld l, $20                                     ; $5B7A: $2E $20
    ld c, c                                       ; $5B7C: $49
    jr nz, jr_015_5BE9                            ; $5B7D: $20 $6A

    ld [hl], l                                    ; $5B7F: $75
    ld [hl], e                                    ; $5B80: $73
    ld [hl], h                                    ; $5B81: $74
    cp $63                                        ; $5B82: $FE $63

jr_015_5B84:
    ld h, c                                       ; $5B84: $61
    ld l, [hl]                                    ; $5B85: $6E
    daa                                           ; $5B86: $27
    ld [hl], h                                    ; $5B87: $74
    jr nz, jr_015_5BFD                            ; $5B88: $20 $73

    ld l, h                                       ; $5B8A: $6C
    ld h, l                                       ; $5B8B: $65
    ld h, l                                       ; $5B8C: $65

jr_015_5B8D:
    ld [hl], b                                    ; $5B8D: $70
    jr nz, jr_015_5BF1                            ; $5B8E: $20 $61

    ld [hl], h                                    ; $5B90: $74
    rst $38                                       ; $5B91: $FF
    ld l, [hl]                                    ; $5B92: $6E
    ld l, c                                       ; $5B93: $69
    ld h, a                                       ; $5B94: $67
    ld l, b                                       ; $5B95: $68
    ld [hl], h                                    ; $5B96: $74
    jr nz, jr_015_5BFB                            ; $5B97: $20 $62

    ld h, l                                       ; $5B99: $65
    ld h, e                                       ; $5B9A: $63
    ld h, c                                       ; $5B9B: $61
    ld [hl], l                                    ; $5B9C: $75
    ld [hl], e                                    ; $5B9D: $73
    ld h, l                                       ; $5B9E: $65
    cp $6F                                        ; $5B9F: $FE $6F
    ld h, [hl]                                    ; $5BA1: $66
    jr nz, jr_015_5C18                            ; $5BA2: $20 $74

    ld l, b                                       ; $5BA4: $68
    ld l, a                                       ; $5BA5: $6F
    ld [hl], e                                    ; $5BA6: $73

jr_015_5BA7:
    ld h, l                                       ; $5BA7: $65
    jr nz, jr_015_5C0E                            ; $5BA8: $20 $64

    ld h, c                                       ; $5BAA: $61
    ld [hl], d                                    ; $5BAB: $72
    ld l, [hl]                                    ; $5BAC: $6E
    rst $38                                       ; $5BAD: $FF
    ld l, [hl]                                    ; $5BAE: $6E

jr_015_5BAF:
    ld l, a                                       ; $5BAF: $6F
    ld l, c                                       ; $5BB0: $69
    ld [hl], e                                    ; $5BB1: $73
    ld h, l                                       ; $5BB2: $65

jr_015_5BB3:
    ld [hl], e                                    ; $5BB3: $73
    jr nz, @+$6B                                  ; $5BB4: $20 $69

    ld l, [hl]                                    ; $5BB6: $6E
    jr nz, jr_015_5C2D                            ; $5BB7: $20 $74

    ld l, b                                       ; $5BB9: $68

jr_015_5BBA:
    ld h, l                                       ; $5BBA: $65
    cp $62                                        ; $5BBB: $FE $62
    ld h, c                                       ; $5BBD: $61
    ld [hl], e                                    ; $5BBE: $73
    ld h, l                                       ; $5BBF: $65
    ld l, l                                       ; $5BC0: $6D
    ld h, l                                       ; $5BC1: $65
    ld l, [hl]                                    ; $5BC2: $6E
    ld [hl], h                                    ; $5BC3: $74
    ld l, $20                                     ; $5BC4: $2E $20
    ld c, c                                       ; $5BC6: $49

jr_015_5BC7:
    rst $38                                       ; $5BC7: $FF
    ld [hl], a                                    ; $5BC8: $77
    ld l, a                                       ; $5BC9: $6F
    ld [hl], l                                    ; $5BCA: $75
    ld l, h                                       ; $5BCB: $6C
    ld h, h                                       ; $5BCC: $64

jr_015_5BCD:
    jr nz, jr_015_5C32                            ; $5BCD: $20 $63

    ld l, b                                       ; $5BCF: $68
    ld h, l                                       ; $5BD0: $65
    ld h, e                                       ; $5BD1: $63
    ld l, e                                       ; $5BD2: $6B
    cp $74                                        ; $5BD3: $FE $74
    ld l, b                                       ; $5BD5: $68
    ld h, l                                       ; $5BD6: $65
    ld l, l                                       ; $5BD7: $6D

jr_015_5BD8:
    jr nz, jr_015_5C49                            ; $5BD8: $20 $6F

    ld [hl], l                                    ; $5BDA: $75
    ld [hl], h                                    ; $5BDB: $74
    jr nz, jr_015_5C4B                            ; $5BDC: $20 $6D

    ld a, c                                       ; $5BDE: $79
    ld [hl], e                                    ; $5BDF: $73
    ld h, l                                       ; $5BE0: $65
    ld l, h                                       ; $5BE1: $6C
    ld h, [hl]                                    ; $5BE2: $66
    rst $38                                       ; $5BE3: $FF
    ld h, d                                       ; $5BE4: $62
    ld [hl], l                                    ; $5BE5: $75
    ld [hl], h                                    ; $5BE6: $74
    jr nz, jr_015_5C32                            ; $5BE7: $20 $49

jr_015_5BE9:
    daa                                           ; $5BE9: $27
    ld l, l                                       ; $5BEA: $6D
    jr nz, @+$63                                  ; $5BEB: $20 $61

    ld h, [hl]                                    ; $5BED: $66
    ld [hl], d                                    ; $5BEE: $72
    ld h, c                                       ; $5BEF: $61
    ld l, c                                       ; $5BF0: $69

jr_015_5BF1:
    ld h, h                                       ; $5BF1: $64
    cp $74                                        ; $5BF2: $FE $74
    ld l, a                                       ; $5BF4: $6F
    jr nz, jr_015_5C5E                            ; $5BF5: $20 $67

    ld l, a                                       ; $5BF7: $6F
    jr nz, jr_015_5C5E                            ; $5BF8: $20 $64

    ld l, a                                       ; $5BFA: $6F

jr_015_5BFB:
    ld [hl], a                                    ; $5BFB: $77
    ld l, [hl]                                    ; $5BFC: $6E

jr_015_5BFD:
    rst $38                                       ; $5BFD: $FF
    ld [hl], h                                    ; $5BFE: $74
    ld l, b                                       ; $5BFF: $68
    ld h, l                                       ; $5C00: $65
    ld [hl], d                                    ; $5C01: $72
    ld h, l                                       ; $5C02: $65
    ld l, $2E                                     ; $5C03: $2E $2E
    ld l, $FE                                     ; $5C05: $2E $FE
    db $FD                                        ; $5C07: $FD
    sbc d                                         ; $5C08: $9A
    xor a                                         ; $5C09: $AF
    dec h                                         ; $5C0A: $25
    and c                                         ; $5C0B: $A1
    inc b                                         ; $5C0C: $04
    rlca                                          ; $5C0D: $07

jr_015_5C0E:
    nop                                           ; $5C0E: $00
    add c                                         ; $5C0F: $81
    ld e, l                                       ; $5C10: $5D
    ld e, b                                       ; $5C11: $58
    ld bc, $9B42                                  ; $5C12: $01 $42 $9B
    add sp, $55                                   ; $5C15: $E8 $55
    sbc a                                         ; $5C17: $9F

jr_015_5C18:
    ld e, c                                       ; $5C18: $59
    ld l, a                                       ; $5C19: $6F
    ld [hl], l                                    ; $5C1A: $75
    daa                                           ; $5C1B: $27
    ld [hl], d                                    ; $5C1C: $72
    ld h, l                                       ; $5C1D: $65
    jr nz, jr_015_5C83                            ; $5C1E: $20 $63

    ld l, a                                       ; $5C20: $6F
    ld l, l                                       ; $5C21: $6D
    ld l, c                                       ; $5C22: $69
    ld l, [hl]                                    ; $5C23: $6E
    ld h, a                                       ; $5C24: $67
    rst $38                                       ; $5C25: $FF
    ld [hl], a                                    ; $5C26: $77
    ld l, c                                       ; $5C27: $69
    ld [hl], h                                    ; $5C28: $74
    ld l, b                                       ; $5C29: $68
    jr nz, jr_015_5CA1                            ; $5C2A: $20 $75

    ld [hl], e                                    ; $5C2C: $73

jr_015_5C2D:
    ld l, $FE                                     ; $5C2D: $2E $FE
    db $FD                                        ; $5C2F: $FD
    sbc e                                         ; $5C30: $9B
    xor b                                         ; $5C31: $A8

jr_015_5C32:
    ld c, a                                       ; $5C32: $4F
    sbc a                                         ; $5C33: $9F
    ld e, c                                       ; $5C34: $59
    ld l, a                                       ; $5C35: $6F
    ld [hl], l                                    ; $5C36: $75
    jr nz, jr_015_5CAD                            ; $5C37: $20 $74

    ld [hl], a                                    ; $5C39: $77
    ld l, a                                       ; $5C3A: $6F
    jr nz, jr_015_5CB0                            ; $5C3B: $20 $73

    ld l, l                                       ; $5C3D: $6D
    ld h, l                                       ; $5C3E: $65
    ld l, h                                       ; $5C3F: $6C
    ld l, h                                       ; $5C40: $6C
    ld hl, $57FE                                  ; $5C41: $21 $FE $57
    ld l, b                                       ; $5C44: $68
    ld a, c                                       ; $5C45: $79
    jr nz, jr_015_5CBB                            ; $5C46: $20 $73

    ld l, b                                       ; $5C48: $68

jr_015_5C49:
    ld l, a                                       ; $5C49: $6F
    ld [hl], l                                    ; $5C4A: $75

jr_015_5C4B:
    ld l, h                                       ; $5C4B: $6C
    ld h, h                                       ; $5C4C: $64
    jr nz, jr_015_5C98                            ; $5C4D: $20 $49

    rst $38                                       ; $5C4F: $FF
    ld h, a                                       ; $5C50: $67
    ld l, a                                       ; $5C51: $6F
    jr nz, @+$79                                  ; $5C52: $20 $77

    ld l, c                                       ; $5C54: $69
    ld [hl], h                                    ; $5C55: $74
    ld l, b                                       ; $5C56: $68
    jr nz, @+$7B                                  ; $5C57: $20 $79

    ld l, a                                       ; $5C59: $6F
    ld [hl], l                                    ; $5C5A: $75
    ccf                                           ; $5C5B: $3F
    cp $FD                                        ; $5C5C: $FE $FD

jr_015_5C5E:
    sbc e                                         ; $5C5E: $9B
    add sp, $55                                   ; $5C5F: $E8 $55
    sbc a                                         ; $5C61: $9F
    ld b, d                                       ; $5C62: $42
    ld h, l                                       ; $5C63: $65
    ld h, e                                       ; $5C64: $63
    ld h, c                                       ; $5C65: $61
    ld [hl], l                                    ; $5C66: $75
    ld [hl], e                                    ; $5C67: $73
    ld h, l                                       ; $5C68: $65
    jr nz, jr_015_5CB4                            ; $5C69: $20 $49

    rst $38                                       ; $5C6B: $FF
    ld [hl], e                                    ; $5C6C: $73
    ld h, c                                       ; $5C6D: $61
    ld l, c                                       ; $5C6E: $69
    ld h, h                                       ; $5C6F: $64
    jr nz, jr_015_5CE5                            ; $5C70: $20 $73

    ld l, a                                       ; $5C72: $6F
    ld hl, $FDFE                                  ; $5C73: $21 $FE $FD
    sbc e                                         ; $5C76: $9B
    xor b                                         ; $5C77: $A8
    ld c, a                                       ; $5C78: $4F
    sbc a                                         ; $5C79: $9F
    ld c, b                                       ; $5C7A: $48
    ld h, l                                       ; $5C7B: $65
    ld l, b                                       ; $5C7C: $68
    ld h, l                                       ; $5C7D: $65
    inc l                                         ; $5C7E: $2C
    jr nz, jr_015_5CF5                            ; $5C7F: $20 $74

    ld l, b                                       ; $5C81: $68
    ld h, c                                       ; $5C82: $61

jr_015_5C83:
    ld [hl], h                                    ; $5C83: $74
    daa                                           ; $5C84: $27
    ld [hl], e                                    ; $5C85: $73
    rst $38                                       ; $5C86: $FF
    ld h, [hl]                                    ; $5C87: $66
    ld [hl], l                                    ; $5C88: $75
    ld l, [hl]                                    ; $5C89: $6E
    ld l, [hl]                                    ; $5C8A: $6E
    ld a, c                                       ; $5C8B: $79
    ld l, $2E                                     ; $5C8C: $2E $2E
    ld l, $FE                                     ; $5C8E: $2E $FE
    db $FD                                        ; $5C90: $FD
    sbc d                                         ; $5C91: $9A
    ld e, h                                       ; $5C92: $5C
    nop                                           ; $5C93: $00
    inc b                                         ; $5C94: $04
    sbc e                                         ; $5C95: $9B
    xor b                                         ; $5C96: $A8
    ld c, a                                       ; $5C97: $4F

jr_015_5C98:
    sbc a                                         ; $5C98: $9F
    ld c, b                                       ; $5C99: $48
    ld h, l                                       ; $5C9A: $65
    ld a, c                                       ; $5C9B: $79
    inc l                                         ; $5C9C: $2C
    jr nz, jr_015_5D16                            ; $5C9D: $20 $77

    ld l, b                                       ; $5C9F: $68
    ld h, c                                       ; $5CA0: $61

jr_015_5CA1:
    ld [hl], h                                    ; $5CA1: $74
    jr nz, @+$63                                  ; $5CA2: $20 $61

    ld [hl], d                                    ; $5CA4: $72
    ld h, l                                       ; $5CA5: $65
    rst $38                                       ; $5CA6: $FF
    ld a, c                                       ; $5CA7: $79
    ld l, a                                       ; $5CA8: $6F
    ld [hl], l                                    ; $5CA9: $75
    jr nz, @+$66                                  ; $5CAA: $20 $64

jr_015_5CAC:
    ld l, a                                       ; $5CAC: $6F

jr_015_5CAD:
    ld l, c                                       ; $5CAD: $69
    ld l, [hl]                                    ; $5CAE: $6E
    ld h, a                                       ; $5CAF: $67

jr_015_5CB0:
    ccf                                           ; $5CB0: $3F
    ld hl, $48FE                                  ; $5CB1: $21 $FE $48

jr_015_5CB4:
    ld b, l                                       ; $5CB4: $45
    ld e, c                                       ; $5CB5: $59
    ld hl, $5320                                  ; $5CB6: $21 $20 $53
    ld d, h                                       ; $5CB9: $54
    ld c, a                                       ; $5CBA: $4F

jr_015_5CBB:
    ld d, b                                       ; $5CBB: $50
    ld hl, $FF21                                  ; $5CBC: $21 $21 $FF
    ld b, c                                       ; $5CBF: $41
    ld b, c                                       ; $5CC0: $41
    ld b, c                                       ; $5CC1: $41
    ld b, c                                       ; $5CC2: $41
    ld b, c                                       ; $5CC3: $41
    ld b, c                                       ; $5CC4: $41
    ld b, c                                       ; $5CC5: $41
    ld b, c                                       ; $5CC6: $41
    ld c, b                                       ; $5CC7: $48
    ld c, b                                       ; $5CC8: $48
    ld hl, $2121                                  ; $5CC9: $21 $21 $21
    cp $FD                                        ; $5CCC: $FE $FD
    sbc d                                         ; $5CCE: $9A
    ld e, h                                       ; $5CCF: $5C
    ld bc, $6B02                                  ; $5CD0: $01 $02 $6B
    db $10                                        ; $5CD3: $10
    ld d, a                                       ; $5CD4: $57
    nop                                           ; $5CD5: $00
    ld [hl], b                                    ; $5CD6: $70
    nop                                           ; $5CD7: $00
    adc b                                         ; $5CD8: $88
    nop                                           ; $5CD9: $00
    add e                                         ; $5CDA: $83
    ld b, b                                       ; $5CDB: $40
    nop                                           ; $5CDC: $00
    rst $38                                       ; $5CDD: $FF
    nop                                           ; $5CDE: $00
    dec bc                                        ; $5CDF: $0B
    nop                                           ; $5CE0: $00
    ld h, b                                       ; $5CE1: $60
    ld bc, $789B                                  ; $5CE2: $01 $9B $78

jr_015_5CE5:
    ld [hl], b                                    ; $5CE5: $70
    sbc a                                         ; $5CE6: $9F
    ld b, a                                       ; $5CE7: $47
    ld [hl], d                                    ; $5CE8: $72
    ld [hl], l                                    ; $5CE9: $75
    ld l, e                                       ; $5CEA: $6B
    ccf                                           ; $5CEB: $3F
    cp $FD                                        ; $5CEC: $FE $FD
    sbc d                                         ; $5CEE: $9A
    rlca                                          ; $5CEF: $07
    nop                                           ; $5CF0: $00
    add c                                         ; $5CF1: $81
    ld e, l                                       ; $5CF2: $5D
    add hl, bc                                    ; $5CF3: $09
    nop                                           ; $5CF4: $00

jr_015_5CF5:
    jr nz, jr_015_5CAC                            ; $5CF5: $20 $B5

    ld d, b                                       ; $5CF7: $50
    ld b, d                                       ; $5CF8: $42
    ld b, e                                       ; $5CF9: $43
    ld [$040F], sp                                ; $5CFA: $08 $0F $04
    dec b                                         ; $5CFD: $05
    rlca                                          ; $5CFE: $07
    rrca                                          ; $5CFF: $0F
    ld bc, $A224                                  ; $5D00: $01 $24 $A2
    dec b                                         ; $5D03: $05
    ld bc, $8815                                  ; $5D04: $01 $15 $88
    ld e, l                                       ; $5D07: $5D
    ld b, e                                       ; $5D08: $43
    ld [$040F], sp                                ; $5D09: $08 $0F $04
    dec b                                         ; $5D0C: $05
    rlca                                          ; $5D0D: $07
    inc de                                        ; $5D0E: $13
    ld bc, $A224                                  ; $5D0F: $01 $24 $A2
    dec b                                         ; $5D12: $05
    ld bc, $3D15                                  ; $5D13: $01 $15 $3D

jr_015_5D16:
    ld e, l                                       ; $5D16: $5D
    sub e                                         ; $5D17: $93
    ld h, l                                       ; $5D18: $65
    sbc a                                         ; $5D19: $9F
    ld b, [hl]                                    ; $5D1A: $46
    ld c, a                                       ; $5D1B: $4F
    ld h, h                                       ; $5D1C: $64
    sbc c                                         ; $5D1D: $99
    ld b, a                                       ; $5D1E: $47
    ld l, c                                       ; $5D1F: $69
    and d                                         ; $5D20: $A2
    ld b, a                                       ; $5D21: $47
    ld h, [hl]                                    ; $5D22: $66
    ret nz                                        ; $5D23: $C0

    ld e, h                                       ; $5D24: $5C
    ld hl, $0005                                  ; $5D25: $21 $05 $00
    add c                                         ; $5D28: $81
    ld e, l                                       ; $5D29: $5D
    ld a, [bc]                                    ; $5D2A: $0A
    ld de, $D15E                                  ; $5D2B: $11 $5E $D1
    nop                                           ; $5D2E: $00
    jr nz, @-$03                                  ; $5D2F: $20 $FB

    ld d, b                                       ; $5D31: $50
    ld [hl+], a                                   ; $5D32: $22
    dec b                                         ; $5D33: $05
    ld b, b                                       ; $5D34: $40
    dec bc                                        ; $5D35: $0B
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    add d                                         ; $5D38: $82
    rra                                           ; $5D39: $1F
    dec d                                         ; $5D3A: $15
    sub h                                         ; $5D3B: $94
    ld b, d                                       ; $5D3C: $42
    sub e                                         ; $5D3D: $93
    ld h, l                                       ; $5D3E: $65
    sbc a                                         ; $5D3F: $9F
    ld b, [hl]                                    ; $5D40: $46
    ld c, a                                       ; $5D41: $4F
    ld h, h                                       ; $5D42: $64
    sbc c                                         ; $5D43: $99
    ld b, a                                       ; $5D44: $47
    ld l, c                                       ; $5D45: $69
    and d                                         ; $5D46: $A2
    ld b, a                                       ; $5D47: $47
    ld h, [hl]                                    ; $5D48: $66
    ret nz                                        ; $5D49: $C0

    ld e, h                                       ; $5D4A: $5C
    ld hl, $0005                                  ; $5D4B: $21 $05 $00
    add c                                         ; $5D4E: $81
    ld e, l                                       ; $5D4F: $5D
    ld a, [bc]                                    ; $5D50: $0A
    ld de, $D15E                                  ; $5D51: $11 $5E $D1
    nop                                           ; $5D54: $00
    jr nz, @-$03                                  ; $5D55: $20 $FB

    ld d, b                                       ; $5D57: $50
    ld [hl+], a                                   ; $5D58: $22
    dec b                                         ; $5D59: $05
    ld b, b                                       ; $5D5A: $40
    dec bc                                        ; $5D5B: $0B
    nop                                           ; $5D5C: $00
    dec b                                         ; $5D5D: $05
    ld [bc], a                                    ; $5D5E: $02
    db $ED                                        ; $5D5F: $ED
    ld h, e                                       ; $5D60: $63
    dec bc                                        ; $5D61: $0B
    ld a, [bc]                                    ; $5D62: $0A
    db $D3                                        ; $5D63: $D3
    ret nc                                        ; $5D64: $D0

    nop                                           ; $5D65: $00
    ld c, $6D                                     ; $5D66: $0E $6D
    ld h, [hl]                                    ; $5D68: $66
    dec d                                         ; $5D69: $15
    ld a, h                                       ; $5D6A: $7C
    ld e, l                                       ; $5D6B: $5D
    dec bc                                        ; $5D6C: $0B
    ld [bc], a                                    ; $5D6D: $02
    ld l, e                                       ; $5D6E: $6B
    jr nc, jr_015_5D7B                            ; $5D6F: $30 $0A

    ld [hl], b                                    ; $5D71: $70
    ld d, h                                       ; $5D72: $54
    nop                                           ; $5D73: $00
    add b                                         ; $5D74: $80
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    add d                                         ; $5D77: $82
    rra                                           ; $5D78: $1F
    dec d                                         ; $5D79: $15
    sub h                                         ; $5D7A: $94

jr_015_5D7B:
    ld b, d                                       ; $5D7B: $42
    inc d                                         ; $5D7C: $14
    ld c, $6D                                     ; $5D7D: $0E $6D
    ld h, [hl]                                    ; $5D7F: $66
    ld e, e                                       ; $5D80: $5B
    dec d                                         ; $5D81: $15
    adc e                                         ; $5D82: $8B
    ld e, d                                       ; $5D83: $5A
    ld b, l                                       ; $5D84: $45
    ld c, $B3                                     ; $5D85: $0E $B3
    ld h, [hl]                                    ; $5D87: $66
    ld l, [hl]                                    ; $5D88: $6E
    rrca                                          ; $5D89: $0F
    rst $38                                       ; $5D8A: $FF
    ld a, a                                       ; $5D8B: $7F
    halt                                          ; $5D8C: $76
    jr nz, jr_015_5D9E                            ; $5D8D: $20 $0F

    xor h                                         ; $5D8F: $AC
    inc h                                         ; $5D90: $24
    and d                                         ; $5D91: $A2
    ld [bc], a                                    ; $5D92: $02
    sub e                                         ; $5D93: $93
    ld h, l                                       ; $5D94: $65
    sbc a                                         ; $5D95: $9F
    ld b, [hl]                                    ; $5D96: $46
    ld c, a                                       ; $5D97: $4F
    ld h, h                                       ; $5D98: $64
    sbc c                                         ; $5D99: $99
    ld b, a                                       ; $5D9A: $47
    ld l, c                                       ; $5D9B: $69
    and d                                         ; $5D9C: $A2
    ld b, a                                       ; $5D9D: $47

jr_015_5D9E:
    ld h, [hl]                                    ; $5D9E: $66
    ret nz                                        ; $5D9F: $C0

    ld e, h                                       ; $5DA0: $5C
    ld hl, $0005                                  ; $5DA1: $21 $05 $00
    ld l, e                                       ; $5DA4: $6B
    ld c, d                                       ; $5DA5: $4A
    dec c                                         ; $5DA6: $0D
    ld b, $85                                     ; $5DA7: $06 $85
    ret nc                                        ; $5DA9: $D0

    nop                                           ; $5DAA: $00
    dec d                                         ; $5DAB: $15
    inc bc                                        ; $5DAC: $03
    ld e, [hl]                                    ; $5DAD: $5E
    ld [hl+], a                                   ; $5DAE: $22
    dec b                                         ; $5DAF: $05
    ld b, b                                       ; $5DB0: $40
    dec b                                         ; $5DB1: $05
    ld [bc], a                                    ; $5DB2: $02
    ld l, e                                       ; $5DB3: $6B
    ld c, d                                       ; $5DB4: $4A
    add hl, bc                                    ; $5DB5: $09
    inc c                                         ; $5DB6: $0C
    ld sp, hl                                     ; $5DB7: $F9
    ret nc                                        ; $5DB8: $D0

    nop                                           ; $5DB9: $00
    dec d                                         ; $5DBA: $15
    jr nz, jr_015_5E1B                            ; $5DBB: $20 $5E

    ld [hl+], a                                   ; $5DBD: $22
    dec b                                         ; $5DBE: $05
    ld b, b                                       ; $5DBF: $40
    dec b                                         ; $5DC0: $05
    inc bc                                        ; $5DC1: $03
    ld l, e                                       ; $5DC2: $6B
    ld c, d                                       ; $5DC3: $4A
    ld [$F80C], sp                                ; $5DC4: $08 $0C $F8

jr_015_5DC7:
    ret nc                                        ; $5DC7: $D0

    jr nc, jr_015_5DDF                            ; $5DC8: $30 $15

    ld d, [hl]                                    ; $5DCA: $56
    ld e, [hl]                                    ; $5DCB: $5E
    ld [hl+], a                                   ; $5DCC: $22

jr_015_5DCD:
    dec b                                         ; $5DCD: $05
    ld b, b                                       ; $5DCE: $40
    dec b                                         ; $5DCF: $05
    inc b                                         ; $5DD0: $04
    ld l, e                                       ; $5DD1: $6B
    ld c, d                                       ; $5DD2: $4A
    ld a, [bc]                                    ; $5DD3: $0A
    inc c                                         ; $5DD4: $0C

jr_015_5DD5:
    ld a, [$5AD0]                                 ; $5DD5: $FA $D0 $5A
    dec d                                         ; $5DD8: $15
    ld [hl], e                                    ; $5DD9: $73
    ld e, [hl]                                    ; $5DDA: $5E
    ld [hl+], a                                   ; $5DDB: $22
    dec b                                         ; $5DDC: $05
    ld b, b                                       ; $5DDD: $40
    ld l, e                                       ; $5DDE: $6B

jr_015_5DDF:
    jr nc, jr_015_5DEB                            ; $5DDF: $30 $0A

    ld [hl], b                                    ; $5DE1: $70
    ld d, h                                       ; $5DE2: $54
    nop                                           ; $5DE3: $00
    add b                                         ; $5DE4: $80
    nop                                           ; $5DE5: $00
    ld l, e                                       ; $5DE6: $6B
    ld a, [hl+]                                   ; $5DE7: $2A
    ld a, [bc]                                    ; $5DE8: $0A
    ldh a, [$5E]                                  ; $5DE9: $F0 $5E

jr_015_5DEB:
    nop                                           ; $5DEB: $00
    add e                                         ; $5DEC: $83

jr_015_5DED:
    nop                                           ; $5DED: $00
    ld l, e                                       ; $5DEE: $6B
    jr nc, jr_015_5DFC                            ; $5DEF: $30 $0B

    ld d, b                                       ; $5DF1: $50
    ld a, d                                       ; $5DF2: $7A
    and b                                         ; $5DF3: $A0
    add l                                         ; $5DF4: $85
    nop                                           ; $5DF5: $00
    dec bc                                        ; $5DF6: $0B
    ld [bc], a                                    ; $5DF7: $02
    dec bc                                        ; $5DF8: $0B
    inc bc                                        ; $5DF9: $03
    dec bc                                        ; $5DFA: $0B
    inc b                                         ; $5DFB: $04

jr_015_5DFC:
    add h                                         ; $5DFC: $84
    add hl, bc                                    ; $5DFD: $09
    inc c                                         ; $5DFE: $0C
    rra                                           ; $5DFF: $1F
    ld e, $94                                     ; $5E00: $1E $94
    ld b, d                                       ; $5E02: $42
    dec d                                         ; $5E03: $15
    jr nz, jr_015_5E7D                            ; $5E04: $20 $77

    ld d, b                                       ; $5E06: $50
    ld [$B520], sp                                ; $5E07: $08 $20 $B5
    ld d, b                                       ; $5E0A: $50
    db $10                                        ; $5E0B: $10
    jr nz, jr_015_5DCD                            ; $5E0C: $20 $BF

    ld d, b                                       ; $5E0E: $50
    db $10                                        ; $5E0F: $10
    jr nz, jr_015_5DC7                            ; $5E10: $20 $B5

    ld d, b                                       ; $5E12: $50
    db $10                                        ; $5E13: $10
    jr nz, jr_015_5DD5                            ; $5E14: $20 $BF

    ld d, b                                       ; $5E16: $50
    db $10                                        ; $5E17: $10
    jr nz, jr_015_5DED                            ; $5E18: $20 $D3

    ld d, b                                       ; $5E1A: $50

jr_015_5E1B:
    stop                                          ; $5E1B: $10 $00
    ld d, [hl]                                    ; $5E1D: $56
    ld bc, $1542                                  ; $5E1E: $01 $42 $15
    ld c, $6D                                     ; $5E21: $0E $6D
    ld h, [hl]                                    ; $5E23: $66
    inc b                                         ; $5E24: $04
    nop                                           ; $5E25: $00
    ld e, e                                       ; $5E26: $5B
    dec d                                         ; $5E27: $15
    inc d                                         ; $5E28: $14
    ld e, h                                       ; $5E29: $5C
    dec d                                         ; $5E2A: $15
    ld c, $81                                     ; $5E2B: $0E $81
    ld h, [hl]                                    ; $5E2D: $66
    db $10                                        ; $5E2E: $10
    ld c, $77                                     ; $5E2F: $0E $77
    ld h, [hl]                                    ; $5E31: $66
    db $10                                        ; $5E32: $10
    ld c, $81                                     ; $5E33: $0E $81
    ld h, [hl]                                    ; $5E35: $66
    db $10                                        ; $5E36: $10
    ld c, $81                                     ; $5E37: $0E $81
    ld h, [hl]                                    ; $5E39: $66
    db $10                                        ; $5E3A: $10
    ld c, $77                                     ; $5E3B: $0E $77
    ld h, [hl]                                    ; $5E3D: $66
    db $10                                        ; $5E3E: $10
    ld c, $77                                     ; $5E3F: $0E $77
    ld h, [hl]                                    ; $5E41: $66
    stop                                          ; $5E42: $10 $00
    ld e, h                                       ; $5E44: $5C
    nop                                           ; $5E45: $00
    inc b                                         ; $5E46: $04
    ld b, b                                       ; $5E47: $40
    jr nz, jr_015_5E5F                            ; $5E48: $20 $15

    ld c, $F3                                     ; $5E4A: $0E $F3
    ld h, l                                       ; $5E4C: $65
    ld b, b                                       ; $5E4D: $40
    nop                                           ; $5E4E: $00
    inc h                                         ; $5E4F: $24
    ld d, b                                       ; $5E50: $50
    ld e, h                                       ; $5E51: $5C
    ld bc, $1902                                  ; $5E52: $01 $02 $19
    ld b, d                                       ; $5E55: $42
    dec d                                         ; $5E56: $15
    ld c, $4D                                     ; $5E57: $0E $4D
    ld [hl], d                                    ; $5E59: $72
    inc b                                         ; $5E5A: $04
    nop                                           ; $5E5B: $00
    inc d                                         ; $5E5C: $14
    ld c, $61                                     ; $5E5D: $0E $61

jr_015_5E5F:
    ld [hl], d                                    ; $5E5F: $72
    ld e, h                                       ; $5E60: $5C
    nop                                           ; $5E61: $00
    inc b                                         ; $5E62: $04
    dec d                                         ; $5E63: $15
    ld c, $C3                                     ; $5E64: $0E $C3
    ld [hl], c                                    ; $5E66: $71
    db $10                                        ; $5E67: $10
    ld c, $F3                                     ; $5E68: $0E $F3
    ld [hl], c                                    ; $5E6A: $71
    db $10                                        ; $5E6B: $10
    ld c, $D3                                     ; $5E6C: $0E $D3
    ld [hl], c                                    ; $5E6E: $71
    ld b, b                                       ; $5E6F: $40
    nop                                           ; $5E70: $00
    add hl, de                                    ; $5E71: $19
    ld b, d                                       ; $5E72: $42
    dec d                                         ; $5E73: $15
    ld c, $8C                                     ; $5E74: $0E $8C
    ld a, [hl]                                    ; $5E76: $7E
    inc b                                         ; $5E77: $04
    nop                                           ; $5E78: $00
    inc d                                         ; $5E79: $14
    ld c, $96                                     ; $5E7A: $0E $96
    ld a, [hl]                                    ; $5E7C: $7E

jr_015_5E7D:
    ld e, h                                       ; $5E7D: $5C
    nop                                           ; $5E7E: $00
    inc b                                         ; $5E7F: $04
    dec d                                         ; $5E80: $15
    ld c, $12                                     ; $5E81: $0E $12
    ld a, [hl]                                    ; $5E83: $7E
    db $10                                        ; $5E84: $10
    ld c, $22                                     ; $5E85: $0E $22
    ld a, [hl]                                    ; $5E87: $7E
    db $10                                        ; $5E88: $10
    ld c, $12                                     ; $5E89: $0E $12
    ld a, [hl]                                    ; $5E8B: $7E
    ld b, b                                       ; $5E8C: $40
    nop                                           ; $5E8D: $00
    add hl, de                                    ; $5E8E: $19
    ld b, d                                       ; $5E8F: $42
    ld bc, $060C                                  ; $5E90: $01 $0C $06
    ld b, l                                       ; $5E93: $45
    dec d                                         ; $5E94: $15
    ld sp, hl                                     ; $5E95: $F9
    ld e, h                                       ; $5E96: $5C
    ld b, l                                       ; $5E97: $45
    dec d                                         ; $5E98: $15
    ld b, $5F                                     ; $5E99: $06 $5F
    ld [bc], a                                    ; $5E9B: $02
    ld b, $02                                     ; $5E9C: $06 $02
    rla                                           ; $5E9E: $17
    dec e                                         ; $5E9F: $1D
    ld b, l                                       ; $5EA0: $45
    dec h                                         ; $5EA1: $25
    sub e                                         ; $5EA2: $93
    ld h, d                                       ; $5EA3: $62
    ld b, d                                       ; $5EA4: $42
    sbc a                                         ; $5EA5: $9F
    ld c, c                                       ; $5EA6: $49
    ld [hl], h                                    ; $5EA7: $74
    daa                                           ; $5EA8: $27
    ld [hl], e                                    ; $5EA9: $73
    jr nz, jr_015_5F1E                            ; $5EAA: $20 $72

    ld [hl], l                                    ; $5EAC: $75
    ld [hl], e                                    ; $5EAD: $73
    ld [hl], h                                    ; $5EAE: $74
    ld h, l                                       ; $5EAF: $65
    ld h, h                                       ; $5EB0: $64
    rst $38                                       ; $5EB1: $FF
    ld [hl], e                                    ; $5EB2: $73
    ld l, b                                       ; $5EB3: $68
    ld [hl], l                                    ; $5EB4: $75
    ld [hl], h                                    ; $5EB5: $74
    ld l, $FE                                     ; $5EB6: $2E $FE
    db $FD                                        ; $5EB8: $FD
    sbc d                                         ; $5EB9: $9A
    ld b, d                                       ; $5EBA: $42
    ld e, e                                       ; $5EBB: $5B
    ld [hl+], a                                   ; $5EBC: $22
    ld e, e                                       ; $5EBD: $5B
    ld b, b                                       ; $5EBE: $40
    ld b, d                                       ; $5EBF: $42
    and h                                         ; $5EC0: $A4
    ld b, [hl]                                    ; $5EC1: $46
    and e                                         ; $5EC2: $A3
    ld b, b                                       ; $5EC3: $40
    ld [bc], a                                    ; $5EC4: $02
    inc d                                         ; $5EC5: $14
    ld c, c                                       ; $5EC6: $49
    ret nc                                        ; $5EC7: $D0

    sub e                                         ; $5EC8: $93
    ld h, l                                       ; $5EC9: $65
    xor [hl]                                      ; $5ECA: $AE
    ld b, [hl]                                    ; $5ECB: $46
    ld c, a                                       ; $5ECC: $4F
    ld h, h                                       ; $5ECD: $64
    or e                                          ; $5ECE: $B3
    ld b, a                                       ; $5ECF: $47
    ld l, c                                       ; $5ED0: $69
    ret nz                                        ; $5ED1: $C0

    ld b, a                                       ; $5ED2: $47
    ld h, [hl]                                    ; $5ED3: $66
    ret nz                                        ; $5ED4: $C0

    ld e, h                                       ; $5ED5: $5C
    ld hl, $0005                                  ; $5ED6: $21 $05 $00
    add c                                         ; $5ED9: $81
    ld e, l                                       ; $5EDA: $5D
    ld a, [bc]                                    ; $5EDB: $0A
    ld de, $D0B4                                  ; $5EDC: $11 $B4 $D0
    nop                                           ; $5EDF: $00
    jr nz, @-$03                                  ; $5EE0: $20 $FB

    ld d, b                                       ; $5EE2: $50
    ld [hl+], a                                   ; $5EE3: $22
    dec b                                         ; $5EE4: $05
    ld b, b                                       ; $5EE5: $40
    dec bc                                        ; $5EE6: $0B
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00

jr_015_5EE9:
    add d                                         ; $5EE9: $82
    rra                                           ; $5EEA: $1F
    inc d                                         ; $5EEB: $14

jr_015_5EEC:
    ld b, e                                       ; $5EEC: $43
    add hl, bc                                    ; $5EED: $09
    nop                                           ; $5EEE: $00
    xor b                                         ; $5EEF: $A8
    and c                                         ; $5EF0: $A1
    ld bc, $0411                                  ; $5EF1: $01 $11 $04
    dec b                                         ; $5EF4: $05
    rlca                                          ; $5EF5: $07
    dec d                                         ; $5EF6: $15
    ei                                            ; $5EF7: $FB
    ld e, [hl]                                    ; $5EF8: $5E
    sub h                                         ; $5EF9: $94
    ld b, d                                       ; $5EFA: $42
    ld a, [hl]                                    ; $5EFB: $7E
    ld a, b                                       ; $5EFC: $78
    ret nc                                        ; $5EFD: $D0

    ld [bc], a                                    ; $5EFE: $02
    ld [bc], a                                    ; $5EFF: $02
    db $E3                                        ; $5F00: $E3
    ret nc                                        ; $5F01: $D0

    ld d, $07                                     ; $5F02: $16 $07
    sub h                                         ; $5F04: $94
    ld b, d                                       ; $5F05: $42
    ld b, e                                       ; $5F06: $43
    add hl, bc                                    ; $5F07: $09
    ld de, $0504                                  ; $5F08: $11 $04 $05
    rlca                                          ; $5F0B: $07
    ld de, $2401                                  ; $5F0C: $11 $01 $24
    and d                                         ; $5F0F: $A2
    dec b                                         ; $5F10: $05

jr_015_5F11:
    nop                                           ; $5F11: $00
    ld [hl+], a                                   ; $5F12: $22
    inc b                                         ; $5F13: $04
    ld b, b                                       ; $5F14: $40
    ld b, e                                       ; $5F15: $43
    ld a, [bc]                                    ; $5F16: $0A
    nop                                           ; $5F17: $00
    dec h                                         ; $5F18: $25
    and c                                         ; $5F19: $A1
    inc b                                         ; $5F1A: $04
    ld [hl+], a                                   ; $5F1B: $22
    inc b                                         ; $5F1C: $04
    ld b, b                                       ; $5F1D: $40

jr_015_5F1E:
    xor h                                         ; $5F1E: $AC
    inc h                                         ; $5F1F: $24
    and d                                         ; $5F20: $A2
    ld bc, $1B21                                  ; $5F21: $01 $21 $1B
    inc bc                                        ; $5F24: $03
    rlca                                          ; $5F25: $07
    nop                                           ; $5F26: $00
    ld l, e                                       ; $5F27: $6B
    ld c, d                                       ; $5F28: $4A
    add hl, bc                                    ; $5F29: $09
    nop                                           ; $5F2A: $00
    jr nz, jr_015_5EEC                            ; $5F2B: $20 $BF

    ld d, b                                       ; $5F2D: $50
    ld a, [hl]                                    ; $5F2E: $7E
    ld a, b                                       ; $5F2F: $78
    ret nc                                        ; $5F30: $D0

    ld [bc], a                                    ; $5F31: $02
    ld [bc], a                                    ; $5F32: $02
    db $E3                                        ; $5F33: $E3
    ret nc                                        ; $5F34: $D0

    ld d, $07                                     ; $5F35: $16 $07
    ld b, b                                       ; $5F37: $40
    jr nz, jr_015_5EE9                            ; $5F38: $20 $AF

    xor b                                         ; $5F3A: $A8
    and c                                         ; $5F3B: $A1
    ld bc, $2040                                  ; $5F3C: $01 $40 $20
    sbc e                                         ; $5F3F: $9B
    ld a, b                                       ; $5F40: $78
    ld [hl], b                                    ; $5F41: $70
    sbc a                                         ; $5F42: $9F
    ld d, a                                       ; $5F43: $57
    ld l, b                                       ; $5F44: $68
    ld h, c                                       ; $5F45: $61
    ld [hl], h                                    ; $5F46: $74
    jr nz, jr_015_5FC0                            ; $5F47: $20 $77

    ld h, c                                       ; $5F49: $61
    ld [hl], e                                    ; $5F4A: $73
    jr nz, jr_015_5FC1                            ; $5F4B: $20 $74

    ld l, b                                       ; $5F4D: $68
    ld h, c                                       ; $5F4E: $61
    ld [hl], h                                    ; $5F4F: $74
    ccf                                           ; $5F50: $3F
    cp $FD                                        ; $5F51: $FE $FD
    sbc d                                         ; $5F53: $9A
    add e                                         ; $5F54: $83
    ld d, b                                       ; $5F55: $50
    nop                                           ; $5F56: $00
    ld [bc], a                                    ; $5F57: $02
    nop                                           ; $5F58: $00
    ld b, l                                       ; $5F59: $45
    dec d                                         ; $5F5A: $15
    adc b                                         ; $5F5B: $88
    ld e, l                                       ; $5F5C: $5D
    ld b, d                                       ; $5F5D: $42
    rlca                                          ; $5F5E: $07
    nop                                           ; $5F5F: $00
    ld l, e                                       ; $5F60: $6B
    ld c, d                                       ; $5F61: $4A
    add hl, bc                                    ; $5F62: $09
    nop                                           ; $5F63: $00
    jr nz, jr_015_5F11                            ; $5F64: $20 $AB

    ld d, b                                       ; $5F66: $50
    ld c, e                                       ; $5F67: $4B
    ld bc, $A225                                  ; $5F68: $01 $25 $A2
    dec d                                         ; $5F6B: $15
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    ld a, e                                       ; $5F6E: $7B
    ld e, a                                       ; $5F6F: $5F
    dec d                                         ; $5F70: $15
    ld bc, $D600                                  ; $5F71: $01 $00 $D6
    ld e, a                                       ; $5F74: $5F
    dec d                                         ; $5F75: $15
    ld [bc], a                                    ; $5F76: $02
    nop                                           ; $5F77: $00
    ld c, $60                                     ; $5F78: $0E $60
    rst $38                                       ; $5F7A: $FF
    sbc e                                         ; $5F7B: $9B

jr_015_5F7C:
    ld a, b                                       ; $5F7C: $78
    ld [hl], b                                    ; $5F7D: $70
    sbc a                                         ; $5F7E: $9F

jr_015_5F7F:
    ld d, h                                       ; $5F7F: $54
    ld l, b                                       ; $5F80: $68
    ld h, c                                       ; $5F81: $61
    ld [hl], h                                    ; $5F82: $74
    jr nz, jr_015_5FF1                            ; $5F83: $20 $6C

    ld l, c                                       ; $5F85: $69
    ld h, a                                       ; $5F86: $67
    ld l, b                                       ; $5F87: $68
    ld [hl], h                                    ; $5F88: $74
    jr nz, jr_015_5FFA                            ; $5F89: $20 $6F

    halt                                          ; $5F8B: $76
    ld h, l                                       ; $5F8C: $65
    ld [hl], d                                    ; $5F8D: $72
    rst $38                                       ; $5F8E: $FF
    ld [hl], h                                    ; $5F8F: $74
    ld l, b                                       ; $5F90: $68
    ld h, l                                       ; $5F91: $65
    ld [hl], d                                    ; $5F92: $72
    ld h, l                                       ; $5F93: $65
    jr nz, jr_015_5FFF                            ; $5F94: $20 $69

    ld [hl], e                                    ; $5F96: $73
    cp $70                                        ; $5F97: $FE $70
    ld [hl], d                                    ; $5F99: $72
    ld l, a                                       ; $5F9A: $6F
    ld h, d                                       ; $5F9B: $62
    ld h, c                                       ; $5F9C: $61
    ld h, d                                       ; $5F9D: $62
    ld l, h                                       ; $5F9E: $6C
    ld a, c                                       ; $5F9F: $79
    jr nz, jr_015_6019                            ; $5FA0: $20 $77

    ld l, b                                       ; $5FA2: $68
    ld h, c                                       ; $5FA3: $61
    ld [hl], h                                    ; $5FA4: $74
    rst $38                                       ; $5FA5: $FF
    ld c, d                                       ; $5FA6: $4A
    ld h, c                                       ; $5FA7: $61
    ld h, l                                       ; $5FA8: $65
    ld l, h                                       ; $5FA9: $6C
    ld h, c                                       ; $5FAA: $61
    jr nz, jr_015_6024                            ; $5FAB: $20 $77

    ld h, c                                       ; $5FAD: $61
    ld [hl], e                                    ; $5FAE: $73
    cp $74                                        ; $5FAF: $FE $74
    ld h, c                                       ; $5FB1: $61
    ld l, h                                       ; $5FB2: $6C
    ld l, e                                       ; $5FB3: $6B

jr_015_5FB4:
    ld l, c                                       ; $5FB4: $69
    ld l, [hl]                                    ; $5FB5: $6E
    ld h, a                                       ; $5FB6: $67

jr_015_5FB7:
    jr nz, @+$63                                  ; $5FB7: $20 $61

    ld h, d                                       ; $5FB9: $62
    ld l, a                                       ; $5FBA: $6F
    ld [hl], l                                    ; $5FBB: $75
    ld [hl], h                                    ; $5FBC: $74
    ld l, $FE                                     ; $5FBD: $2E $FE
    db $FD                                        ; $5FBF: $FD

jr_015_5FC0:
    sbc d                                         ; $5FC0: $9A

jr_015_5FC1:
    xor h                                         ; $5FC1: $AC
    dec h                                         ; $5FC2: $25
    and d                                         ; $5FC3: $A2
    ld bc, $0009                                  ; $5FC4: $01 $09 $00
    jr nz, jr_015_5F7C                            ; $5FC7: $20 $B3

    ld c, a                                       ; $5FC9: $4F
    ld b, b                                       ; $5FCA: $40
    jr nz, jr_015_5FD4                            ; $5FCB: $20 $07

    nop                                           ; $5FCD: $00
    add c                                         ; $5FCE: $81
    ld e, l                                       ; $5FCF: $5D
    add hl, bc                                    ; $5FD0: $09
    nop                                           ; $5FD1: $00
    jr nz, jr_015_5F7F                            ; $5FD2: $20 $AB

jr_015_5FD4:
    ld d, b                                       ; $5FD4: $50
    ld b, d                                       ; $5FD5: $42
    sbc e                                         ; $5FD6: $9B
    ld a, b                                       ; $5FD7: $78
    ld [hl], b                                    ; $5FD8: $70
    sbc a                                         ; $5FD9: $9F
    ld c, l                                       ; $5FDA: $4D
    ld h, c                                       ; $5FDB: $61
    ld a, c                                       ; $5FDC: $79
    ld h, d                                       ; $5FDD: $62
    ld h, l                                       ; $5FDE: $65
    ld l, $2E                                     ; $5FDF: $2E $2E
    ld l, $FE                                     ; $5FE1: $2E $FE
    ld l, $2E                                     ; $5FE3: $2E $2E
    ld l, $2E                                     ; $5FE5: $2E $2E
    ld l, $2E                                     ; $5FE7: $2E $2E
    ld l, $2E                                     ; $5FE9: $2E $2E
    ld l, $FE                                     ; $5FEB: $2E $FE
    ld l, $2E                                     ; $5FED: $2E $2E
    ld l, $6E                                     ; $5FEF: $2E $6E

jr_015_5FF1:
    ld h, c                                       ; $5FF1: $61
    ld l, b                                       ; $5FF2: $68
    ld l, $2E                                     ; $5FF3: $2E $2E
    ld l, $FE                                     ; $5FF5: $2E $FE
    db $FD                                        ; $5FF7: $FD
    sbc d                                         ; $5FF8: $9A
    xor h                                         ; $5FF9: $AC

jr_015_5FFA:
    dec h                                         ; $5FFA: $25
    and d                                         ; $5FFB: $A2
    ld [bc], a                                    ; $5FFC: $02
    add hl, bc                                    ; $5FFD: $09
    nop                                           ; $5FFE: $00

jr_015_5FFF:
    jr nz, jr_015_5FB4                            ; $5FFF: $20 $B3

    ld c, a                                       ; $6001: $4F
    ld b, b                                       ; $6002: $40
    jr nz, jr_015_600C                            ; $6003: $20 $07

    nop                                           ; $6005: $00
    add c                                         ; $6006: $81
    ld e, l                                       ; $6007: $5D
    add hl, bc                                    ; $6008: $09
    nop                                           ; $6009: $00
    jr nz, jr_015_5FB7                            ; $600A: $20 $AB

jr_015_600C:
    ld d, b                                       ; $600C: $50
    ld b, d                                       ; $600D: $42
    sbc e                                         ; $600E: $9B
    ld a, b                                       ; $600F: $78
    ld [hl], b                                    ; $6010: $70
    sbc a                                         ; $6011: $9F
    ld d, b                                       ; $6012: $50
    ld h, l                                       ; $6013: $65
    ld [hl], d                                    ; $6014: $72
    ld l, b                                       ; $6015: $68
    ld h, c                                       ; $6016: $61
    ld [hl], b                                    ; $6017: $70
    ld [hl], e                                    ; $6018: $73

jr_015_6019:
    jr nz, jr_015_6064                            ; $6019: $20 $49

    rst $38                                       ; $601B: $FF
    ld h, h                                       ; $601C: $64
    ld l, a                                       ; $601D: $6F
    ld l, [hl]                                    ; $601E: $6E
    daa                                           ; $601F: $27
    ld [hl], h                                    ; $6020: $74
    jr nz, jr_015_608B                            ; $6021: $20 $68

    ld h, c                                       ; $6023: $61

jr_015_6024:
    halt                                          ; $6024: $76
    ld h, l                                       ; $6025: $65
    cp $74                                        ; $6026: $FE $74
    ld l, a                                       ; $6028: $6F
    jr nz, jr_015_6092                            ; $6029: $20 $67

    ld l, a                                       ; $602B: $6F
    jr nz, jr_015_6090                            ; $602C: $20 $62

    ld h, c                                       ; $602E: $61
    ld h, e                                       ; $602F: $63
    ld l, e                                       ; $6030: $6B
    rst $38                                       ; $6031: $FF
    ld [hl], d                                    ; $6032: $72
    ld l, c                                       ; $6033: $69
    ld h, a                                       ; $6034: $67
    ld l, b                                       ; $6035: $68
    ld [hl], h                                    ; $6036: $74
    jr nz, jr_015_609A                            ; $6037: $20 $61

    ld [hl], a                                    ; $6039: $77
    ld h, c                                       ; $603A: $61
    ld a, c                                       ; $603B: $79
    ld l, $2E                                     ; $603C: $2E $2E
    ld l, $FE                                     ; $603E: $2E $FE
    db $FD                                        ; $6040: $FD
    sbc d                                         ; $6041: $9A
    ld b, e                                       ; $6042: $43

jr_015_6043:
    nop                                           ; $6043: $00
    and l                                         ; $6044: $A5
    and c                                         ; $6045: $A1
    ld [bc], a                                    ; $6046: $02
    dec d                                         ; $6047: $15
    ld e, b                                       ; $6048: $58
    ld h, b                                       ; $6049: $60
    xor c                                         ; $604A: $A9
    ld a, [de]                                    ; $604B: $1A
    nop                                           ; $604C: $00
    ld l, [hl]                                    ; $604D: $6E
    rrca                                          ; $604E: $0F
    rst $38                                       ; $604F: $FF
    ld a, a                                       ; $6050: $7F
    halt                                          ; $6051: $76
    ld h, b                                       ; $6052: $60
    rrca                                          ; $6053: $0F
    ld b, l                                       ; $6054: $45
    inc d                                         ; $6055: $14
    or [hl]                                       ; $6056: $B6
    ld d, b                                       ; $6057: $50
    xor c                                         ; $6058: $A9
    add hl, de                                    ; $6059: $19
    nop                                           ; $605A: $00
    ld l, [hl]                                    ; $605B: $6E
    rrca                                          ; $605C: $0F
    rst $38                                       ; $605D: $FF
    ld a, a                                       ; $605E: $7F
    halt                                          ; $605F: $76
    ld h, b                                       ; $6060: $60
    rrca                                          ; $6061: $0F
    ld b, l                                       ; $6062: $45

Jump_015_6063:
    inc d                                         ; $6063: $14

jr_015_6064:
    or [hl]                                       ; $6064: $B6
    ld d, b                                       ; $6065: $50
    sbc a                                         ; $6066: $9F
    ld d, h                                       ; $6067: $54
    ld l, b                                       ; $6068: $68
    ld h, l                                       ; $6069: $65
    jr nz, @+$45                                  ; $606A: $20 $43

    ld l, a                                       ; $606C: $6F
    ld [hl], d                                    ; $606D: $72
    ld h, l                                       ; $606E: $65
    rst $38                                       ; $606F: $FF
    ld b, a                                       ; $6070: $47
    ld l, h                                       ; $6071: $6C
    ld a, c                                       ; $6072: $79
    ld [hl], b                                    ; $6073: $70
    ld l, b                                       ; $6074: $68
    jr nz, @+$6B                                  ; $6075: $20 $69

    ld [hl], e                                    ; $6077: $73
    cp $67                                        ; $6078: $FE $67
    ld l, h                                       ; $607A: $6C
    ld l, a                                       ; $607B: $6F
    ld [hl], a                                    ; $607C: $77
    ld l, c                                       ; $607D: $69
    ld l, [hl]                                    ; $607E: $6E
    ld h, a                                       ; $607F: $67
    ld l, $2E                                     ; $6080: $2E $2E
    ld l, $FE                                     ; $6082: $2E $FE
    db $FD                                        ; $6084: $FD
    sbc d                                         ; $6085: $9A
    rlca                                          ; $6086: $07
    nop                                           ; $6087: $00
    ld l, e                                       ; $6088: $6B
    ld c, d                                       ; $6089: $4A
    add hl, bc                                    ; $608A: $09

jr_015_608B:
    nop                                           ; $608B: $00
    jr nz, jr_015_6043                            ; $608C: $20 $B5

    ld d, b                                       ; $608E: $50
    ld l, [hl]                                    ; $608F: $6E

jr_015_6090:
    add a                                         ; $6090: $87
    rst $38                                       ; $6091: $FF

jr_015_6092:
    ld a, a                                       ; $6092: $7F
    halt                                          ; $6093: $76
    ldh [$87], a                                  ; $6094: $E0 $87
    ld b, b                                       ; $6096: $40
    jr nz, jr_015_6107                            ; $6097: $20 $6E

    rrca                                          ; $6099: $0F

jr_015_609A:
    rst $38                                       ; $609A: $FF
    ld a, a                                       ; $609B: $7F
    halt                                          ; $609C: $76
    ldh [rIF], a                                  ; $609D: $E0 $0F
    ld b, l                                       ; $609F: $45
    rra                                           ; $60A0: $1F
    sbc d                                         ; $60A1: $9A
    ld d, a                                       ; $60A2: $57
    ld b, d                                       ; $60A3: $42
    sbc e                                         ; $60A4: $9B
    sbc b                                         ; $60A5: $98
    ld b, c                                       ; $60A6: $41
    sbc a                                         ; $60A7: $9F
    ld e, c                                       ; $60A8: $59
    ld l, a                                       ; $60A9: $6F
    ld [hl], l                                    ; $60AA: $75
    daa                                           ; $60AB: $27
    halt                                          ; $60AC: $76
    ld h, l                                       ; $60AD: $65
    jr nz, @+$65                                  ; $60AE: $20 $63

    ld l, a                                       ; $60B0: $6F
    ld l, l                                       ; $60B1: $6D
    ld h, l                                       ; $60B2: $65
    ld l, $FE                                     ; $60B3: $2E $FE
    db $FD                                        ; $60B5: $FD
    sbc d                                         ; $60B6: $9A
    ld e, b                                       ; $60B7: $58
    ld bc, $9B42                                  ; $60B8: $01 $42 $9B
    sbc b                                         ; $60BB: $98
    ld b, c                                       ; $60BC: $41
    sbc a                                         ; $60BD: $9F
    ld e, c                                       ; $60BE: $59
    ld l, a                                       ; $60BF: $6F
    ld [hl], l                                    ; $60C0: $75
    jr nz, @+$63                                  ; $60C1: $20 $61

    ld [hl], d                                    ; $60C3: $72
    ld h, l                                       ; $60C4: $65
    jr nz, jr_015_6135                            ; $60C5: $20 $6E

    ld l, a                                       ; $60C7: $6F
    ld [hl], h                                    ; $60C8: $74
    rst $38                                       ; $60C9: $FF
    ld h, c                                       ; $60CA: $61
    jr nz, jr_015_6130                            ; $60CB: $20 $63

    ld l, b                                       ; $60CD: $68
    ld l, c                                       ; $60CE: $69
    ld l, h                                       ; $60CF: $6C
    ld h, h                                       ; $60D0: $64
    jr nz, jr_015_6142                            ; $60D1: $20 $6F

    ld h, [hl]                                    ; $60D3: $66
    cp $41                                        ; $60D4: $FE $41
    ld h, a                                       ; $60D6: $67
    ld h, c                                       ; $60D7: $61
    ld h, h                                       ; $60D8: $64
    ld l, a                                       ; $60D9: $6F
    ld l, [hl]                                    ; $60DA: $6E
    ld l, $FE                                     ; $60DB: $2E $FE
    ld d, e                                       ; $60DD: $53
    ld l, a                                       ; $60DE: $6F
    jr nz, jr_015_612A                            ; $60DF: $20 $49

    jr nz, jr_015_6144                            ; $60E1: $20 $61

    ld [hl], e                                    ; $60E3: $73
    ld l, e                                       ; $60E4: $6B
    rst $38                                       ; $60E5: $FF
    ld a, c                                       ; $60E6: $79
    ld l, a                                       ; $60E7: $6F
    ld [hl], l                                    ; $60E8: $75
    ld l, $2E                                     ; $60E9: $2E $2E
    ld l, $FE                                     ; $60EB: $2E $FE
    ld d, a                                       ; $60ED: $57
    ld l, b                                       ; $60EE: $68
    ld a, c                                       ; $60EF: $79
    jr nz, @+$66                                  ; $60F0: $20 $64

    ld l, a                                       ; $60F2: $6F
    jr nz, jr_015_616E                            ; $60F3: $20 $79

    ld l, a                                       ; $60F5: $6F
    ld [hl], l                                    ; $60F6: $75
    rst $38                                       ; $60F7: $FF
    ld [hl], e                                    ; $60F8: $73
    ld [hl], h                                    ; $60F9: $74
    ld h, c                                       ; $60FA: $61
    ld l, [hl]                                    ; $60FB: $6E
    ld h, h                                       ; $60FC: $64
    jr nz, @+$6B                                  ; $60FD: $20 $69

    ld l, [hl]                                    ; $60FF: $6E
    jr nz, jr_015_616F                            ; $6100: $20 $6D

    ld a, c                                       ; $6102: $79
    cp $77                                        ; $6103: $FE $77
    ld h, c                                       ; $6105: $61
    ld a, c                                       ; $6106: $79

jr_015_6107:
    ccf                                           ; $6107: $3F
    cp $FD                                        ; $6108: $FE $FD
    sbc e                                         ; $610A: $9B
    ld a, b                                       ; $610B: $78
    ld [hl], b                                    ; $610C: $70
    sbc a                                         ; $610D: $9F
    jr nz, @+$48                                  ; $610E: $20 $46

    ld l, a                                       ; $6110: $6F
    ld [hl], d                                    ; $6111: $72
    jr nz, jr_015_617E                            ; $6112: $20 $6A

    ld [hl], l                                    ; $6114: $75
    ld [hl], e                                    ; $6115: $73
    ld [hl], h                                    ; $6116: $74
    ld l, c                                       ; $6117: $69
    ld h, e                                       ; $6118: $63
    ld h, l                                       ; $6119: $65
    ld l, $FF                                     ; $611A: $2E $FF
    jr nz, jr_015_6172                            ; $611C: $20 $54

    ld l, a                                       ; $611E: $6F
    jr nz, jr_015_6188                            ; $611F: $20 $67

    ld h, l                                       ; $6121: $65
    ld [hl], h                                    ; $6122: $74
    jr nz, jr_015_618D                            ; $6123: $20 $68

    ld l, a                                       ; $6125: $6F
    ld l, l                                       ; $6126: $6D
    ld h, l                                       ; $6127: $65
    ld l, $FD                                     ; $6128: $2E $FD

jr_015_612A:
    sbc h                                         ; $612A: $9C
    ld [bc], a                                    ; $612B: $02
    dec d                                         ; $612C: $15
    push af                                       ; $612D: $F5
    ld h, d                                       ; $612E: $62
    dec d                                         ; $612F: $15

jr_015_6130:
    ld [hl-], a                                   ; $6130: $32
    ld h, c                                       ; $6131: $61
    sbc e                                         ; $6132: $9B
    sbc b                                         ; $6133: $98
    ld b, c                                       ; $6134: $41

jr_015_6135:
    sbc a                                         ; $6135: $9F
    ld e, c                                       ; $6136: $59
    ld l, a                                       ; $6137: $6F
    ld [hl], l                                    ; $6138: $75
    jr nz, jr_015_61B2                            ; $6139: $20 $77

    ld l, c                                       ; $613B: $69
    ld [hl], e                                    ; $613C: $73
    ld l, b                                       ; $613D: $68
    jr nz, jr_015_61B4                            ; $613E: $20 $74

    ld l, a                                       ; $6140: $6F
    rst $38                                       ; $6141: $FF

jr_015_6142:
    ld [hl], d                                    ; $6142: $72
    ld h, l                                       ; $6143: $65

jr_015_6144:
    ld [hl], h                                    ; $6144: $74
    ld [hl], l                                    ; $6145: $75
    ld [hl], d                                    ; $6146: $72
    ld l, [hl]                                    ; $6147: $6E
    jr nz, @+$76                                  ; $6148: $20 $74

    ld l, a                                       ; $614A: $6F
    jr nz, jr_015_61C6                            ; $614B: $20 $79

    ld l, a                                       ; $614D: $6F
    ld [hl], l                                    ; $614E: $75
    ld [hl], d                                    ; $614F: $72
    cp $68                                        ; $6150: $FE $68
    ld l, a                                       ; $6152: $6F
    ld l, l                                       ; $6153: $6D
    ld h, l                                       ; $6154: $65
    jr nz, jr_015_61CE                            ; $6155: $20 $77

    ld l, a                                       ; $6157: $6F
    ld [hl], d                                    ; $6158: $72
    ld l, h                                       ; $6159: $6C
    ld h, h                                       ; $615A: $64
    ccf                                           ; $615B: $3F
    rst $38                                       ; $615C: $FF
    ld c, c                                       ; $615D: $49
    ld h, [hl]                                    ; $615E: $66
    jr nz, @+$63                                  ; $615F: $20 $61

    ld l, h                                       ; $6161: $6C
    ld l, h                                       ; $6162: $6C
    jr nz, jr_015_61DE                            ; $6163: $20 $79

    ld l, a                                       ; $6165: $6F
    ld [hl], l                                    ; $6166: $75
    jr nz, jr_015_61E0                            ; $6167: $20 $77

    ld l, c                                       ; $6169: $69
    ld [hl], e                                    ; $616A: $73
    ld l, b                                       ; $616B: $68
    cp $74                                        ; $616C: $FE $74

jr_015_616E:
    ld l, a                                       ; $616E: $6F

jr_015_616F:
    jr nz, @+$66                                  ; $616F: $20 $64

    ld l, a                                       ; $6171: $6F

jr_015_6172:
    jr nz, @+$6B                                  ; $6172: $20 $69

    ld [hl], e                                    ; $6174: $73
    jr nz, jr_015_61DE                            ; $6175: $20 $67

    ld h, l                                       ; $6177: $65
    ld [hl], h                                    ; $6178: $74
    rst $38                                       ; $6179: $FF
    ld l, b                                       ; $617A: $68
    ld l, a                                       ; $617B: $6F
    ld l, l                                       ; $617C: $6D
    ld h, l                                       ; $617D: $65

jr_015_617E:
    inc l                                         ; $617E: $2C
    jr nz, jr_015_61CA                            ; $617F: $20 $49

    jr nz, jr_015_61E6                            ; $6181: $20 $63

    ld h, c                                       ; $6183: $61
    ld l, [hl]                                    ; $6184: $6E
    cp $67                                        ; $6185: $FE $67
    ld [hl], d                                    ; $6187: $72

jr_015_6188:
    ld h, c                                       ; $6188: $61
    ld l, [hl]                                    ; $6189: $6E
    ld [hl], h                                    ; $618A: $74
    jr nz, jr_015_6201                            ; $618B: $20 $74

jr_015_618D:
    ld l, b                                       ; $618D: $68
    ld l, c                                       ; $618E: $69
    ld [hl], e                                    ; $618F: $73
    jr nz, jr_015_61F8                            ; $6190: $20 $66

    ld l, a                                       ; $6192: $6F
    ld [hl], d                                    ; $6193: $72
    rst $38                                       ; $6194: $FF
    ld a, c                                       ; $6195: $79
    ld l, a                                       ; $6196: $6F
    ld [hl], l                                    ; $6197: $75
    ld l, $20                                     ; $6198: $2E $20
    ld c, c                                       ; $619A: $49
    jr nz, jr_015_61FE                            ; $619B: $20 $61

    ld l, l                                       ; $619D: $6D
    jr nz, jr_015_6201                            ; $619E: $20 $61

    ld l, [hl]                                    ; $61A0: $6E
    cp $41                                        ; $61A1: $FE $41
    ld l, [hl]                                    ; $61A3: $6E
    ld h, e                                       ; $61A4: $63
    ld l, c                                       ; $61A5: $69
    ld h, l                                       ; $61A6: $65
    ld l, [hl]                                    ; $61A7: $6E
    ld [hl], h                                    ; $61A8: $74
    inc l                                         ; $61A9: $2C
    jr nz, jr_015_620D                            ; $61AA: $20 $61

    ld h, [hl]                                    ; $61AC: $66
    ld [hl], h                                    ; $61AD: $74
    ld h, l                                       ; $61AE: $65
    ld [hl], d                                    ; $61AF: $72
    rst $38                                       ; $61B0: $FF
    ld h, c                                       ; $61B1: $61

jr_015_61B2:
    ld l, h                                       ; $61B2: $6C
    ld l, h                                       ; $61B3: $6C

jr_015_61B4:
    ld l, $FE                                     ; $61B4: $2E $FE
    db $FD                                        ; $61B6: $FD
    sbc e                                         ; $61B7: $9B
    ld a, b                                       ; $61B8: $78
    ld [hl], b                                    ; $61B9: $70
    sbc a                                         ; $61BA: $9F
    ld l, $2E                                     ; $61BB: $2E $2E
    ld l, $2E                                     ; $61BD: $2E $2E
    ld l, $2E                                     ; $61BF: $2E $2E
    ld l, $2E                                     ; $61C1: $2E $2E
    ld l, $FE                                     ; $61C3: $2E $FE
    db $FD                                        ; $61C5: $FD

jr_015_61C6:
    sbc e                                         ; $61C6: $9B
    ld a, b                                       ; $61C7: $78
    ld [hl], b                                    ; $61C8: $70
    sbc a                                         ; $61C9: $9F

jr_015_61CA:
    jr nz, jr_015_6215                            ; $61CA: $20 $49

    jr nz, jr_015_6240                            ; $61CC: $20 $72

jr_015_61CE:
    ld h, l                                       ; $61CE: $65
    ld h, [hl]                                    ; $61CF: $66
    ld [hl], l                                    ; $61D0: $75
    ld [hl], e                                    ; $61D1: $73
    ld h, l                                       ; $61D2: $65
    ld hl, $20FF                                  ; $61D3: $21 $FF $20
    ld b, h                                       ; $61D6: $44
    ld l, a                                       ; $61D7: $6F
    jr nz, jr_015_6243                            ; $61D8: $20 $69

    ld [hl], h                                    ; $61DA: $74
    inc l                                         ; $61DB: $2C
    jr nz, jr_015_6252                            ; $61DC: $20 $74

jr_015_61DE:
    ld l, b                                       ; $61DE: $68
    ld h, l                                       ; $61DF: $65

jr_015_61E0:
    ld l, [hl]                                    ; $61E0: $6E
    ld l, $FD                                     ; $61E1: $2E $FD
    sbc h                                         ; $61E3: $9C
    ld [bc], a                                    ; $61E4: $02
    dec d                                         ; $61E5: $15

jr_015_61E6:
    db $EB                                        ; $61E6: $EB
    ld h, c                                       ; $61E7: $61
    dec d                                         ; $61E8: $15
    dec e                                         ; $61E9: $1D
    ld l, c                                       ; $61EA: $69
    sbc e                                         ; $61EB: $9B
    sbc b                                         ; $61EC: $98
    ld b, c                                       ; $61ED: $41
    sbc a                                         ; $61EE: $9F
    ld d, a                                       ; $61EF: $57
    ld l, b                                       ; $61F0: $68
    ld h, c                                       ; $61F1: $61
    ld [hl], h                                    ; $61F2: $74
    ccf                                           ; $61F3: $3F
    jr nz, jr_015_624F                            ; $61F4: $20 $59

    ld l, a                                       ; $61F6: $6F
    ld [hl], l                                    ; $61F7: $75

jr_015_61F8:
    rst $38                                       ; $61F8: $FF
    ld [hl], d                                    ; $61F9: $72
    ld h, l                                       ; $61FA: $65
    ld h, [hl]                                    ; $61FB: $66
    ld [hl], l                                    ; $61FC: $75
    ld [hl], e                                    ; $61FD: $73

jr_015_61FE:
    ld h, l                                       ; $61FE: $65
    jr nz, jr_015_626E                            ; $61FF: $20 $6D

jr_015_6201:
    ld a, c                                       ; $6201: $79
    jr nz, jr_015_626B                            ; $6202: $20 $67

    ld l, c                                       ; $6204: $69
    ld h, [hl]                                    ; $6205: $66
    ld [hl], h                                    ; $6206: $74
    ccf                                           ; $6207: $3F
    cp $FD                                        ; $6208: $FE $FD
    sbc e                                         ; $620A: $9B
    ld a, b                                       ; $620B: $78
    ld [hl], b                                    ; $620C: $70

jr_015_620D:
    sbc a                                         ; $620D: $9F
    ld e, c                                       ; $620E: $59
    ld l, a                                       ; $620F: $6F
    ld [hl], l                                    ; $6210: $75
    jr nz, jr_015_627D                            ; $6211: $20 $6A

    ld [hl], l                                    ; $6213: $75
    ld [hl], e                                    ; $6214: $73

jr_015_6215:
    ld [hl], h                                    ; $6215: $74
    jr nz, jr_015_628F                            ; $6216: $20 $77

    ld h, c                                       ; $6218: $61
    ld l, [hl]                                    ; $6219: $6E
    ld [hl], h                                    ; $621A: $74
    rst $38                                       ; $621B: $FF
    ld [hl], h                                    ; $621C: $74
    ld l, a                                       ; $621D: $6F
    jr nz, jr_015_6287                            ; $621E: $20 $67

    ld h, l                                       ; $6220: $65
    ld [hl], h                                    ; $6221: $74
    jr nz, jr_015_6296                            ; $6222: $20 $72

    ld l, c                                       ; $6224: $69
    ld h, h                                       ; $6225: $64
    jr nz, jr_015_6297                            ; $6226: $20 $6F

    ld h, [hl]                                    ; $6228: $66
    cp $6D                                        ; $6229: $FE $6D
    ld h, l                                       ; $622B: $65
    jr nz, jr_015_62A1                            ; $622C: $20 $73

    ld l, a                                       ; $622E: $6F
    jr nz, jr_015_62AA                            ; $622F: $20 $79

    ld l, a                                       ; $6231: $6F
    ld [hl], l                                    ; $6232: $75
    jr nz, jr_015_6298                            ; $6233: $20 $63

    ld h, c                                       ; $6235: $61
    ld l, [hl]                                    ; $6236: $6E
    rst $38                                       ; $6237: $FF
    ld [hl], d                                    ; $6238: $72
    ld [hl], l                                    ; $6239: $75
    ld l, c                                       ; $623A: $69
    ld l, [hl]                                    ; $623B: $6E
    jr nz, jr_015_62B2                            ; $623C: $20 $74

    ld l, b                                       ; $623E: $68
    ld l, c                                       ; $623F: $69

jr_015_6240:
    ld [hl], e                                    ; $6240: $73
    cp $77                                        ; $6241: $FE $77

jr_015_6243:
    ld l, a                                       ; $6243: $6F
    ld [hl], d                                    ; $6244: $72
    ld l, h                                       ; $6245: $6C
    ld h, h                                       ; $6246: $64
    ld l, $20                                     ; $6247: $2E $20
    ld c, c                                       ; $6249: $49
    jr nz, jr_015_62C3                            ; $624A: $20 $77

    ld l, a                                       ; $624C: $6F
    ld l, [hl]                                    ; $624D: $6E
    daa                                           ; $624E: $27

jr_015_624F:
    ld [hl], h                                    ; $624F: $74
    rst $38                                       ; $6250: $FF
    ld l, b                                       ; $6251: $68

jr_015_6252:
    ld h, c                                       ; $6252: $61
    halt                                          ; $6253: $76
    ld h, l                                       ; $6254: $65
    jr nz, jr_015_62B8                            ; $6255: $20 $61

    ld l, [hl]                                    ; $6257: $6E
    ld a, c                                       ; $6258: $79
    jr nz, @+$71                                  ; $6259: $20 $6F

    ld h, [hl]                                    ; $625B: $66
    cp $74                                        ; $625C: $FE $74
    ld l, b                                       ; $625E: $68
    ld h, c                                       ; $625F: $61
    ld [hl], h                                    ; $6260: $74
    inc l                                         ; $6261: $2C
    jr nz, jr_015_62D2                            ; $6262: $20 $6E

    ld l, a                                       ; $6264: $6F
    ld [hl], h                                    ; $6265: $74
    jr nz, jr_015_62C9                            ; $6266: $20 $61

    ld h, [hl]                                    ; $6268: $66
    ld [hl], h                                    ; $6269: $74
    ld h, l                                       ; $626A: $65

jr_015_626B:
    ld [hl], d                                    ; $626B: $72
    rst $38                                       ; $626C: $FF
    ld [hl], a                                    ; $626D: $77

jr_015_626E:
    ld l, b                                       ; $626E: $68
    ld h, c                                       ; $626F: $61
    ld [hl], h                                    ; $6270: $74
    jr nz, jr_015_62D8                            ; $6271: $20 $65

    halt                                          ; $6273: $76
    ld h, l                                       ; $6274: $65
    ld [hl], d                                    ; $6275: $72
    ld a, c                                       ; $6276: $79
    ld l, a                                       ; $6277: $6F
    ld l, [hl]                                    ; $6278: $6E
    ld h, l                                       ; $6279: $65
    cp $68                                        ; $627A: $FE $68
    ld h, l                                       ; $627C: $65

jr_015_627D:
    ld [hl], d                                    ; $627D: $72
    ld h, l                                       ; $627E: $65
    jr nz, jr_015_62E9                            ; $627F: $20 $68

    ld h, c                                       ; $6281: $61
    ld [hl], e                                    ; $6282: $73
    jr nz, jr_015_62E9                            ; $6283: $20 $64

    ld l, a                                       ; $6285: $6F
    ld l, [hl]                                    ; $6286: $6E

jr_015_6287:
    ld h, l                                       ; $6287: $65
    rst $38                                       ; $6288: $FF
    ld h, [hl]                                    ; $6289: $66
    ld l, a                                       ; $628A: $6F
    ld [hl], d                                    ; $628B: $72
    jr nz, jr_015_62FB                            ; $628C: $20 $6D

    ld h, l                                       ; $628E: $65

jr_015_628F:
    ld l, $FE                                     ; $628F: $2E $FE
    db $FD                                        ; $6291: $FD
    sbc d                                         ; $6292: $9A
    ld e, b                                       ; $6293: $58
    ld [bc], a                                    ; $6294: $02
    sbc e                                         ; $6295: $9B

jr_015_6296:
    sbc b                                         ; $6296: $98

jr_015_6297:
    ld b, c                                       ; $6297: $41

jr_015_6298:
    sbc a                                         ; $6298: $9F
    ld c, b                                       ; $6299: $48
    ld l, l                                       ; $629A: $6D
    ld l, $20                                     ; $629B: $2E $20
    ld d, [hl]                                    ; $629D: $56
    ld h, l                                       ; $629E: $65
    ld [hl], d                                    ; $629F: $72
    ld a, c                                       ; $62A0: $79

jr_015_62A1:
    jr nz, @+$79                                  ; $62A1: $20 $77

    ld h, l                                       ; $62A3: $65
    ld l, h                                       ; $62A4: $6C
    ld l, h                                       ; $62A5: $6C
    ld l, $FF                                     ; $62A6: $2E $FF
    ld c, c                                       ; $62A8: $49
    ld [hl], h                                    ; $62A9: $74

jr_015_62AA:
    jr nz, jr_015_6315                            ; $62AA: $20 $69

    ld [hl], e                                    ; $62AC: $73
    jr nz, jr_015_6323                            ; $62AD: $20 $74

    ld [hl], d                                    ; $62AF: $72
    ld [hl], l                                    ; $62B0: $75
    ld h, l                                       ; $62B1: $65

jr_015_62B2:
    jr nz, @+$4B                                  ; $62B2: $20 $49

    cp $77                                        ; $62B4: $FE $77
    ld l, c                                       ; $62B6: $69
    ld [hl], e                                    ; $62B7: $73

jr_015_62B8:
    ld l, b                                       ; $62B8: $68
    ld h, l                                       ; $62B9: $65
    ld h, h                                       ; $62BA: $64
    jr nz, jr_015_6331                            ; $62BB: $20 $74

    ld l, a                                       ; $62BD: $6F
    jr nz, jr_015_6332                            ; $62BE: $20 $72

    ld l, c                                       ; $62C0: $69
    ld h, h                                       ; $62C1: $64
    rst $38                                       ; $62C2: $FF

jr_015_62C3:
    ld l, l                                       ; $62C3: $6D
    ld a, c                                       ; $62C4: $79
    ld [hl], e                                    ; $62C5: $73
    ld h, l                                       ; $62C6: $65
    ld l, h                                       ; $62C7: $6C
    ld h, [hl]                                    ; $62C8: $66

jr_015_62C9:
    jr nz, jr_015_633A                            ; $62C9: $20 $6F

    ld h, [hl]                                    ; $62CB: $66
    jr nz, jr_015_6347                            ; $62CC: $20 $79

    ld l, a                                       ; $62CE: $6F
    ld [hl], l                                    ; $62CF: $75
    cp $70                                        ; $62D0: $FE $70

jr_015_62D2:
    ld h, l                                       ; $62D2: $65
    ld h, c                                       ; $62D3: $61
    ld h, e                                       ; $62D4: $63
    ld h, l                                       ; $62D5: $65
    ld h, [hl]                                    ; $62D6: $66
    ld [hl], l                                    ; $62D7: $75

jr_015_62D8:
    ld l, h                                       ; $62D8: $6C
    ld l, h                                       ; $62D9: $6C
    ld a, c                                       ; $62DA: $79
    ld l, $20                                     ; $62DB: $2E $20
    ld c, c                                       ; $62DD: $49
    rst $38                                       ; $62DE: $FF
    ld h, c                                       ; $62DF: $61
    ld l, l                                       ; $62E0: $6D
    jr nz, @+$70                                  ; $62E1: $20 $6E

    ld l, a                                       ; $62E3: $6F
    ld [hl], h                                    ; $62E4: $74
    jr nz, @+$63                                  ; $62E5: $20 $61

    jr nz, @+$76                                  ; $62E7: $20 $74

jr_015_62E9:
    ld a, c                                       ; $62E9: $79
    ld [hl], d                                    ; $62EA: $72
    ld h, c                                       ; $62EB: $61
    ld l, [hl]                                    ; $62EC: $6E
    ld [hl], h                                    ; $62ED: $74
    ld l, $FE                                     ; $62EE: $2E $FE
    db $FD                                        ; $62F0: $FD
    ld b, l                                       ; $62F1: $45
    dec d                                         ; $62F2: $15
    ld a, h                                       ; $62F3: $7C
    ld h, e                                       ; $62F4: $63
    sbc e                                         ; $62F5: $9B
    sbc b                                         ; $62F6: $98
    ld b, c                                       ; $62F7: $41
    sbc a                                         ; $62F8: $9F
    ld e, c                                       ; $62F9: $59
    ld l, a                                       ; $62FA: $6F

jr_015_62FB:
    ld [hl], l                                    ; $62FB: $75
    jr nz, jr_015_6371                            ; $62FC: $20 $73

    ld [hl], b                                    ; $62FE: $70
    ld h, l                                       ; $62FF: $65
    ld h, c                                       ; $6300: $61
    ld l, e                                       ; $6301: $6B
    jr nz, jr_015_6373                            ; $6302: $20 $6F

    ld h, [hl]                                    ; $6304: $66
    rst $38                                       ; $6305: $FF
    ld l, d                                       ; $6306: $6A
    ld [hl], l                                    ; $6307: $75
    ld [hl], e                                    ; $6308: $73
    ld [hl], h                                    ; $6309: $74
    ld l, c                                       ; $630A: $69
    ld h, e                                       ; $630B: $63
    ld h, l                                       ; $630C: $65
    inc l                                         ; $630D: $2C
    jr nz, jr_015_6372                            ; $630E: $20 $62

    ld [hl], l                                    ; $6310: $75
    ld [hl], h                                    ; $6311: $74
    cp $64                                        ; $6312: $FE $64
    ld l, a                                       ; $6314: $6F

jr_015_6315:
    jr nz, jr_015_6390                            ; $6315: $20 $79

    ld l, a                                       ; $6317: $6F
    ld [hl], l                                    ; $6318: $75
    jr nz, @+$74                                  ; $6319: $20 $72

    ld h, l                                       ; $631B: $65
    ld h, c                                       ; $631C: $61
    ld l, h                                       ; $631D: $6C
    ld l, h                                       ; $631E: $6C
    ld a, c                                       ; $631F: $79
    rst $38                                       ; $6320: $FF
    ld l, e                                       ; $6321: $6B
    ld l, [hl]                                    ; $6322: $6E

jr_015_6323:
    ld l, a                                       ; $6323: $6F
    ld [hl], a                                    ; $6324: $77
    jr nz, jr_015_639E                            ; $6325: $20 $77

    ld l, b                                       ; $6327: $68
    ld h, c                                       ; $6328: $61
    ld [hl], h                                    ; $6329: $74
    jr nz, jr_015_63A5                            ; $632A: $20 $79

    ld l, a                                       ; $632C: $6F
    ld [hl], l                                    ; $632D: $75
    cp $61                                        ; $632E: $FE $61
    ld [hl], d                                    ; $6330: $72

jr_015_6331:
    ld h, l                                       ; $6331: $65

jr_015_6332:
    jr nz, jr_015_63A7                            ; $6332: $20 $73

    ld [hl], b                                    ; $6334: $70
    ld h, l                                       ; $6335: $65
    ld h, c                                       ; $6336: $61
    ld l, e                                       ; $6337: $6B
    ld l, c                                       ; $6338: $69
    ld l, [hl]                                    ; $6339: $6E

jr_015_633A:
    ld h, a                                       ; $633A: $67
    rst $38                                       ; $633B: $FF
    ld l, a                                       ; $633C: $6F
    ld h, [hl]                                    ; $633D: $66
    ccf                                           ; $633E: $3F
    cp $52                                        ; $633F: $FE $52
    ld h, l                                       ; $6341: $65
    ld h, c                                       ; $6342: $61
    ld l, h                                       ; $6343: $6C
    ld l, h                                       ; $6344: $6C
    ld a, c                                       ; $6345: $79
    inc l                                         ; $6346: $2C

jr_015_6347:
    jr nz, jr_015_6392                            ; $6347: $20 $49

    jr nz, @+$63                                  ; $6349: $20 $61

    ld l, l                                       ; $634B: $6D
    rst $38                                       ; $634C: $FF
    ld l, [hl]                                    ; $634D: $6E
    ld l, a                                       ; $634E: $6F
    ld [hl], h                                    ; $634F: $74
    jr nz, jr_015_63B3                            ; $6350: $20 $61

    jr nz, jr_015_63C8                            ; $6352: $20 $74

    ld a, c                                       ; $6354: $79
    ld [hl], d                                    ; $6355: $72
    ld h, c                                       ; $6356: $61
    ld l, [hl]                                    ; $6357: $6E
    ld [hl], h                                    ; $6358: $74
    ld l, $FE                                     ; $6359: $2E $FE
    ld c, c                                       ; $635B: $49
    jr nz, @+$66                                  ; $635C: $20 $64

    ld l, a                                       ; $635E: $6F
    jr nz, jr_015_63D8                            ; $635F: $20 $77

    ld l, c                                       ; $6361: $69
    ld [hl], e                                    ; $6362: $73
    ld l, b                                       ; $6363: $68
    jr nz, jr_015_63DF                            ; $6364: $20 $79

    ld l, a                                       ; $6366: $6F
    ld [hl], l                                    ; $6367: $75
    daa                                           ; $6368: $27
    ld h, h                                       ; $6369: $64
    rst $38                                       ; $636A: $FF
    ld [hl], e                                    ; $636B: $73
    ld h, l                                       ; $636C: $65
    ld h, l                                       ; $636D: $65
    jr nz, jr_015_63E4                            ; $636E: $20 $74

    ld l, b                                       ; $6370: $68

jr_015_6371:
    ld h, c                                       ; $6371: $61

jr_015_6372:
    ld [hl], h                                    ; $6372: $74

jr_015_6373:
    ld l, $FE                                     ; $6373: $2E $FE
    db $FD                                        ; $6375: $FD
    ld e, b                                       ; $6376: $58
    ld [bc], a                                    ; $6377: $02
    ld b, l                                       ; $6378: $45
    dec d                                         ; $6379: $15
    ld a, h                                       ; $637A: $7C
    ld h, e                                       ; $637B: $63
    sbc a                                         ; $637C: $9F
    ld c, h                                       ; $637D: $4C
    ld l, a                                       ; $637E: $6F
    ld l, [hl]                                    ; $637F: $6E
    ld h, a                                       ; $6380: $67
    jr nz, jr_015_63E4                            ; $6381: $20 $61

    ld h, a                                       ; $6383: $67
    ld l, a                                       ; $6384: $6F
    jr nz, jr_015_63D0                            ; $6385: $20 $49

    rst $38                                       ; $6387: $FF
    ld h, a                                       ; $6388: $67
    ld h, c                                       ; $6389: $61
    halt                                          ; $638A: $76
    ld h, l                                       ; $638B: $65
    jr nz, jr_015_63DB                            ; $638C: $20 $4D

    ld l, a                                       ; $638E: $6F
    ld [hl], d                                    ; $638F: $72

jr_015_6390:
    ld h, c                                       ; $6390: $61
    ld h, a                                       ; $6391: $67

jr_015_6392:
    jr nz, jr_015_6408                            ; $6392: $20 $74

    ld l, b                                       ; $6394: $68
    ld h, l                                       ; $6395: $65
    cp $70                                        ; $6396: $FE $70
    ld l, a                                       ; $6398: $6F
    ld [hl], a                                    ; $6399: $77
    ld h, l                                       ; $639A: $65
    ld [hl], d                                    ; $639B: $72
    jr nz, @+$63                                  ; $639C: $20 $61

jr_015_639E:
    ld [hl], e                                    ; $639E: $73
    jr nz, jr_015_640E                            ; $639F: $20 $6D

    ld a, c                                       ; $63A1: $79
    rst $38                                       ; $63A2: $FF
    ld h, h                                       ; $63A3: $64
    ld l, c                                       ; $63A4: $69

jr_015_63A5:
    ld [hl], e                                    ; $63A5: $73
    ld h, e                                       ; $63A6: $63

jr_015_63A7:
    ld l, c                                       ; $63A7: $69
    ld [hl], b                                    ; $63A8: $70
    ld l, h                                       ; $63A9: $6C
    ld h, l                                       ; $63AA: $65
    jr nz, jr_015_6421                            ; $63AB: $20 $74

    ld l, a                                       ; $63AD: $6F
    cp $65                                        ; $63AE: $FE $65
    ld a, b                                       ; $63B0: $78
    ld [hl], h                                    ; $63B1: $74
    ld h, l                                       ; $63B2: $65

jr_015_63B3:
    ld [hl], d                                    ; $63B3: $72
    ld l, l                                       ; $63B4: $6D
    ld l, c                                       ; $63B5: $69
    ld l, [hl]                                    ; $63B6: $6E
    ld h, c                                       ; $63B7: $61
    ld [hl], h                                    ; $63B8: $74
    ld h, l                                       ; $63B9: $65
    jr nz, jr_015_641D                            ; $63BA: $20 $61

    ld l, h                                       ; $63BC: $6C
    ld l, h                                       ; $63BD: $6C
    rst $38                                       ; $63BE: $FF
    ld l, a                                       ; $63BF: $6F
    ld h, [hl]                                    ; $63C0: $66
    jr nz, jr_015_6404                            ; $63C1: $20 $41

    ld h, a                                       ; $63C3: $67
    ld h, c                                       ; $63C4: $61
    ld h, h                                       ; $63C5: $64
    ld l, a                                       ; $63C6: $6F
    ld l, [hl]                                    ; $63C7: $6E

jr_015_63C8:
    daa                                           ; $63C8: $27
    ld [hl], e                                    ; $63C9: $73
    cp $74                                        ; $63CA: $FE $74
    ld [hl], d                                    ; $63CC: $72
    ld l, c                                       ; $63CD: $69
    ld h, d                                       ; $63CE: $62
    ld h, l                                       ; $63CF: $65

jr_015_63D0:
    ld l, $FE                                     ; $63D0: $2E $FE
    ld c, c                                       ; $63D2: $49
    jr nz, @+$71                                  ; $63D3: $20 $6F

    ld l, [hl]                                    ; $63D5: $6E
    ld l, h                                       ; $63D6: $6C
    ld a, c                                       ; $63D7: $79

jr_015_63D8:
    jr nz, @+$79                                  ; $63D8: $20 $77

    ld l, c                                       ; $63DA: $69

jr_015_63DB:
    ld [hl], e                                    ; $63DB: $73
    ld l, b                                       ; $63DC: $68
    ld h, l                                       ; $63DD: $65
    ld h, h                                       ; $63DE: $64

jr_015_63DF:
    rst $38                                       ; $63DF: $FF
    ld [hl], h                                    ; $63E0: $74
    ld l, a                                       ; $63E1: $6F
    jr nz, jr_015_6456                            ; $63E2: $20 $72

jr_015_63E4:
    ld h, l                                       ; $63E4: $65
    ld l, l                                       ; $63E5: $6D
    ld l, a                                       ; $63E6: $6F
    halt                                          ; $63E7: $76
    ld h, l                                       ; $63E8: $65
    jr nz, jr_015_645F                            ; $63E9: $20 $74

    ld l, b                                       ; $63EB: $68
    ld h, l                                       ; $63EC: $65
    cp $6B                                        ; $63ED: $FE $6B
    ld l, [hl]                                    ; $63EF: $6E
    ld l, a                                       ; $63F0: $6F
    ld [hl], a                                    ; $63F1: $77
    ld l, h                                       ; $63F2: $6C
    ld h, l                                       ; $63F3: $65
    ld h, h                                       ; $63F4: $64
    ld h, a                                       ; $63F5: $67
    ld h, l                                       ; $63F6: $65
    jr nz, jr_015_6468                            ; $63F7: $20 $6F

    ld h, [hl]                                    ; $63F9: $66
    rst $38                                       ; $63FA: $FF
    ld [hl], h                                    ; $63FB: $74
    ld l, b                                       ; $63FC: $68
    ld h, l                                       ; $63FD: $65
    jr nz, jr_015_6441                            ; $63FE: $20 $41

    ld l, [hl]                                    ; $6400: $6E
    ld h, e                                       ; $6401: $63
    ld l, c                                       ; $6402: $69
    ld h, l                                       ; $6403: $65

jr_015_6404:
    ld l, [hl]                                    ; $6404: $6E
    ld [hl], h                                    ; $6405: $74
    ld [hl], e                                    ; $6406: $73
    daa                                           ; $6407: $27

jr_015_6408:
    cp $73                                        ; $6408: $FE $73
    ld h, l                                       ; $640A: $65
    ld h, e                                       ; $640B: $63
    ld [hl], d                                    ; $640C: $72
    ld h, l                                       ; $640D: $65

jr_015_640E:
    ld [hl], h                                    ; $640E: $74
    ld [hl], e                                    ; $640F: $73
    jr nz, jr_015_6478                            ; $6410: $20 $66

    ld [hl], d                                    ; $6412: $72
    ld l, a                                       ; $6413: $6F
    ld l, l                                       ; $6414: $6D
    rst $38                                       ; $6415: $FF
    ld [hl], h                                    ; $6416: $74
    ld l, b                                       ; $6417: $68
    ld l, c                                       ; $6418: $69
    ld [hl], e                                    ; $6419: $73
    jr nz, jr_015_6488                            ; $641A: $20 $6C

    ld h, c                                       ; $641C: $61

jr_015_641D:
    ld l, [hl]                                    ; $641D: $6E
    ld h, h                                       ; $641E: $64
    ld l, $FE                                     ; $641F: $2E $FE

jr_015_6421:
    ld c, c                                       ; $6421: $49
    jr nz, jr_015_6497                            ; $6422: $20 $73

    ld [hl], l                                    ; $6424: $75
    ld h, e                                       ; $6425: $63
    ld h, e                                       ; $6426: $63
    ld h, l                                       ; $6427: $65
    ld h, l                                       ; $6428: $65
    ld h, h                                       ; $6429: $64
    ld h, l                                       ; $642A: $65
    ld h, h                                       ; $642B: $64
    rst $38                                       ; $642C: $FF
    ld l, c                                       ; $642D: $69
    ld l, [hl]                                    ; $642E: $6E
    jr nz, jr_015_649C                            ; $642F: $20 $6B

    ld l, c                                       ; $6431: $69
    ld l, h                                       ; $6432: $6C
    ld l, h                                       ; $6433: $6C
    ld l, c                                       ; $6434: $69
    ld l, [hl]                                    ; $6435: $6E
    ld h, a                                       ; $6436: $67
    cp $41                                        ; $6437: $FE $41
    ld h, a                                       ; $6439: $67
    ld h, c                                       ; $643A: $61
    ld h, h                                       ; $643B: $64
    ld l, a                                       ; $643C: $6F
    ld l, [hl]                                    ; $643D: $6E
    inc l                                         ; $643E: $2C
    jr nz, jr_015_64A3                            ; $643F: $20 $62

jr_015_6441:
    ld [hl], l                                    ; $6441: $75
    ld [hl], h                                    ; $6442: $74
    jr nz, jr_015_64B2                            ; $6443: $20 $6D

    ld a, c                                       ; $6445: $79
    rst $38                                       ; $6446: $FF
    ld h, [hl]                                    ; $6447: $66
    ld l, a                                       ; $6448: $6F
    ld l, h                                       ; $6449: $6C
    ld l, h                                       ; $644A: $6C
    ld l, a                                       ; $644B: $6F
    ld [hl], a                                    ; $644C: $77
    ld h, l                                       ; $644D: $65
    ld [hl], d                                    ; $644E: $72
    ld [hl], e                                    ; $644F: $73
    jr nz, jr_015_64B3                            ; $6450: $20 $61

    ld l, [hl]                                    ; $6452: $6E
    ld h, h                                       ; $6453: $64
    cp $49                                        ; $6454: $FE $49

jr_015_6456:
    jr nz, jr_015_64CF                            ; $6456: $20 $77

    ld h, l                                       ; $6458: $65
    ld [hl], d                                    ; $6459: $72
    ld h, l                                       ; $645A: $65
    rst $38                                       ; $645B: $FF
    ld h, l                                       ; $645C: $65
    halt                                          ; $645D: $76
    ld h, l                                       ; $645E: $65

jr_015_645F:
    ld l, [hl]                                    ; $645F: $6E
    ld [hl], h                                    ; $6460: $74
    ld [hl], l                                    ; $6461: $75
    ld h, c                                       ; $6462: $61
    ld l, h                                       ; $6463: $6C
    ld l, h                                       ; $6464: $6C
    ld a, c                                       ; $6465: $79
    cp $69                                        ; $6466: $FE $69

jr_015_6468:
    ld l, l                                       ; $6468: $6D
    ld [hl], b                                    ; $6469: $70
    ld [hl], d                                    ; $646A: $72
    ld l, c                                       ; $646B: $69
    ld [hl], e                                    ; $646C: $73
    ld l, a                                       ; $646D: $6F
    ld l, [hl]                                    ; $646E: $6E
    ld h, l                                       ; $646F: $65
    ld h, h                                       ; $6470: $64
    jr nz, jr_015_64DC                            ; $6471: $20 $69

    ld l, [hl]                                    ; $6473: $6E
    rst $38                                       ; $6474: $FF
    ld [hl], h                                    ; $6475: $74
    ld l, b                                       ; $6476: $68
    ld h, l                                       ; $6477: $65

jr_015_6478:
    jr nz, jr_015_64D1                            ; $6478: $20 $57

    ld h, c                                       ; $647A: $61
    ld [hl], e                                    ; $647B: $73
    ld [hl], h                                    ; $647C: $74
    ld h, l                                       ; $647D: $65
    ld l, h                                       ; $647E: $6C
    ld h, c                                       ; $647F: $61
    ld l, [hl]                                    ; $6480: $6E
    ld h, h                                       ; $6481: $64
    ld [hl], e                                    ; $6482: $73
    cp $62                                        ; $6483: $FE $62
    ld a, c                                       ; $6485: $79
    jr nz, jr_015_64FC                            ; $6486: $20 $74

jr_015_6488:
    ld l, b                                       ; $6488: $68
    ld h, l                                       ; $6489: $65
    jr nz, jr_015_64FB                            ; $648A: $20 $6F

    ld [hl], h                                    ; $648C: $74
    ld l, b                                       ; $648D: $68
    ld h, l                                       ; $648E: $65
    ld [hl], d                                    ; $648F: $72
    rst $38                                       ; $6490: $FF
    ld b, c                                       ; $6491: $41
    ld l, [hl]                                    ; $6492: $6E
    ld h, e                                       ; $6493: $63
    ld l, c                                       ; $6494: $69
    ld h, l                                       ; $6495: $65
    ld l, [hl]                                    ; $6496: $6E

jr_015_6497:
    ld [hl], h                                    ; $6497: $74
    ld [hl], e                                    ; $6498: $73
    ld l, $FE                                     ; $6499: $2E $FE
    db $FD                                        ; $649B: $FD

jr_015_649C:
    sbc d                                         ; $649C: $9A
    ld e, b                                       ; $649D: $58
    inc bc                                        ; $649E: $03
    ld b, d                                       ; $649F: $42
    sbc e                                         ; $64A0: $9B
    sbc b                                         ; $64A1: $98
    ld b, c                                       ; $64A2: $41

jr_015_64A3:
    sbc a                                         ; $64A3: $9F
    ld c, c                                       ; $64A4: $49
    ld [hl], h                                    ; $64A5: $74
    jr nz, jr_015_651F                            ; $64A6: $20 $77

    ld h, c                                       ; $64A8: $61
    ld [hl], e                                    ; $64A9: $73
    rst $38                                       ; $64AA: $FF
    ld [hl], h                                    ; $64AB: $74
    ld l, b                                       ; $64AC: $68
    ld l, a                                       ; $64AD: $6F
    ld [hl], l                                    ; $64AE: $75
    ld [hl], e                                    ; $64AF: $73
    ld h, c                                       ; $64B0: $61
    ld l, [hl]                                    ; $64B1: $6E

jr_015_64B2:
    ld h, h                                       ; $64B2: $64

jr_015_64B3:
    ld [hl], e                                    ; $64B3: $73
    jr nz, jr_015_6525                            ; $64B4: $20 $6F

    ld h, [hl]                                    ; $64B6: $66
    cp $79                                        ; $64B7: $FE $79
    ld h, l                                       ; $64B9: $65
    ld h, c                                       ; $64BA: $61
    ld [hl], d                                    ; $64BB: $72
    ld [hl], e                                    ; $64BC: $73
    jr nz, jr_015_6521                            ; $64BD: $20 $62

    ld h, l                                       ; $64BF: $65
    ld h, [hl]                                    ; $64C0: $66
    ld l, a                                       ; $64C1: $6F
    ld [hl], d                                    ; $64C2: $72
    ld h, l                                       ; $64C3: $65
    rst $38                                       ; $64C4: $FF
    ld a, c                                       ; $64C5: $79
    ld l, a                                       ; $64C6: $6F
    ld [hl], l                                    ; $64C7: $75
    jr nz, jr_015_653D                            ; $64C8: $20 $73

    ld h, l                                       ; $64CA: $65
    ld [hl], h                                    ; $64CB: $74
    jr nz, jr_015_653B                            ; $64CC: $20 $6D

    ld h, l                                       ; $64CE: $65

jr_015_64CF:
    cp $66                                        ; $64CF: $FE $66

jr_015_64D1:
    ld [hl], d                                    ; $64D1: $72
    ld h, l                                       ; $64D2: $65
    ld h, l                                       ; $64D3: $65
    ld l, $FE                                     ; $64D4: $2E $FE
    ld c, c                                       ; $64D6: $49
    jr nz, jr_015_6546                            ; $64D7: $20 $6D

    ld [hl], l                                    ; $64D9: $75
    ld [hl], e                                    ; $64DA: $73
    ld [hl], h                                    ; $64DB: $74

jr_015_64DC:
    jr nz, jr_015_654C                            ; $64DC: $20 $6E

    ld l, a                                       ; $64DE: $6F
    ld [hl], a                                    ; $64DF: $77
    rst $38                                       ; $64E0: $FF
    ld h, [hl]                                    ; $64E1: $66
    ld l, c                                       ; $64E2: $69
    ld l, [hl]                                    ; $64E3: $6E
    ld l, c                                       ; $64E4: $69
    ld [hl], e                                    ; $64E5: $73
    ld l, b                                       ; $64E6: $68
    jr nz, jr_015_6560                            ; $64E7: $20 $77

    ld l, b                                       ; $64E9: $68
    ld h, c                                       ; $64EA: $61
    ld [hl], h                                    ; $64EB: $74
    jr nz, jr_015_6537                            ; $64EC: $20 $49

    cp $73                                        ; $64EE: $FE $73
    ld [hl], h                                    ; $64F0: $74
    ld h, c                                       ; $64F1: $61
    ld [hl], d                                    ; $64F2: $72
    ld [hl], h                                    ; $64F3: $74
    ld h, l                                       ; $64F4: $65
    ld h, h                                       ; $64F5: $64
    ld l, $FE                                     ; $64F6: $2E $FE
    ld c, c                                       ; $64F8: $49
    ld [hl], h                                    ; $64F9: $74
    daa                                           ; $64FA: $27

jr_015_64FB:
    ld [hl], e                                    ; $64FB: $73

jr_015_64FC:
    jr nz, jr_015_655F                            ; $64FC: $20 $61

    jr nz, @+$75                                  ; $64FE: $20 $73

    ld l, b                                       ; $6500: $68
    ld h, c                                       ; $6501: $61
    ld l, l                                       ; $6502: $6D
    ld h, l                                       ; $6503: $65
    ld l, $2E                                     ; $6504: $2E $2E
    ld l, $FF                                     ; $6506: $2E $FF
    ld d, a                                       ; $6508: $57
    ld l, b                                       ; $6509: $68
    ld h, c                                       ; $650A: $61
    ld [hl], h                                    ; $650B: $74
    jr nz, jr_015_657D                            ; $650C: $20 $6F

    ld l, [hl]                                    ; $650E: $6E
    ld h, e                                       ; $650F: $63
    ld h, l                                       ; $6510: $65
    jr nz, jr_015_658A                            ; $6511: $20 $77

    ld l, a                                       ; $6513: $6F
    ld [hl], l                                    ; $6514: $75
    ld l, h                                       ; $6515: $6C
    ld h, h                                       ; $6516: $64
    cp $68                                        ; $6517: $FE $68
    ld h, c                                       ; $6519: $61
    halt                                          ; $651A: $76
    ld h, l                                       ; $651B: $65
    jr nz, jr_015_658D                            ; $651C: $20 $6F

    ld l, [hl]                                    ; $651E: $6E

jr_015_651F:
    ld l, h                                       ; $651F: $6C
    ld a, c                                       ; $6520: $79

jr_015_6521:
    jr nz, jr_015_6585                            ; $6521: $20 $62

    ld h, l                                       ; $6523: $65
    ld h, l                                       ; $6524: $65

jr_015_6525:
    ld l, [hl]                                    ; $6525: $6E
    rst $38                                       ; $6526: $FF
    ld h, c                                       ; $6527: $61
    jr nz, jr_015_659D                            ; $6528: $20 $73

    ld l, l                                       ; $652A: $6D
    ld h, c                                       ; $652B: $61
    ld l, h                                       ; $652C: $6C
    ld l, h                                       ; $652D: $6C
    jr nz, jr_015_6597                            ; $652E: $20 $67

    ld [hl], d                                    ; $6530: $72
    ld l, a                                       ; $6531: $6F
    ld [hl], l                                    ; $6532: $75
    ld [hl], b                                    ; $6533: $70
    cp $6F                                        ; $6534: $FE $6F
    ld h, [hl]                                    ; $6536: $66

jr_015_6537:
    jr nz, jr_015_65A9                            ; $6537: $20 $70

    ld h, l                                       ; $6539: $65
    ld l, a                                       ; $653A: $6F

jr_015_653B:
    ld [hl], b                                    ; $653B: $70
    ld l, h                                       ; $653C: $6C

jr_015_653D:
    ld h, l                                       ; $653D: $65
    rst $38                                       ; $653E: $FF
    ld [hl], e                                    ; $653F: $73
    ld [hl], l                                    ; $6540: $75
    ld h, [hl]                                    ; $6541: $66
    ld h, [hl]                                    ; $6542: $66
    ld h, l                                       ; $6543: $65
    ld [hl], d                                    ; $6544: $72
    ld l, c                                       ; $6545: $69

jr_015_6546:
    ld l, [hl]                                    ; $6546: $6E
    ld h, a                                       ; $6547: $67
    jr nz, @+$6A                                  ; $6548: $20 $68

    ld h, c                                       ; $654A: $61
    ld [hl], e                                    ; $654B: $73

jr_015_654C:
    cp $67                                        ; $654C: $FE $67
    ld [hl], d                                    ; $654E: $72
    ld l, a                                       ; $654F: $6F
    ld [hl], a                                    ; $6550: $77
    ld l, [hl]                                    ; $6551: $6E
    jr nz, @+$6B                                  ; $6552: $20 $69

    ld l, [hl]                                    ; $6554: $6E
    ld [hl], h                                    ; $6555: $74
    ld l, a                                       ; $6556: $6F
    jr nz, jr_015_65BA                            ; $6557: $20 $61

    ld l, [hl]                                    ; $6559: $6E
    rst $38                                       ; $655A: $FF
    ld h, l                                       ; $655B: $65
    ld l, [hl]                                    ; $655C: $6E
    ld [hl], h                                    ; $655D: $74
    ld l, c                                       ; $655E: $69

jr_015_655F:
    ld [hl], d                                    ; $655F: $72

jr_015_6560:
    ld h, l                                       ; $6560: $65
    jr nz, jr_015_65D1                            ; $6561: $20 $6E

    ld h, c                                       ; $6563: $61
    ld [hl], h                                    ; $6564: $74
    ld l, c                                       ; $6565: $69
    ld l, a                                       ; $6566: $6F
    ld l, [hl]                                    ; $6567: $6E
    ld l, $FE                                     ; $6568: $2E $FE
    ld d, h                                       ; $656A: $54
    ld l, b                                       ; $656B: $68
    ld h, l                                       ; $656C: $65
    ld a, c                                       ; $656D: $79
    jr nz, jr_015_65D1                            ; $656E: $20 $61

    ld l, h                                       ; $6570: $6C
    ld l, h                                       ; $6571: $6C
    jr nz, @+$6F                                  ; $6572: $20 $6D

    ld [hl], l                                    ; $6574: $75
    ld [hl], e                                    ; $6575: $73
    ld [hl], h                                    ; $6576: $74
    rst $38                                       ; $6577: $FF
    ld h, d                                       ; $6578: $62
    ld h, l                                       ; $6579: $65
    jr nz, jr_015_65EE                            ; $657A: $20 $72

    ld h, l                                       ; $657C: $65

jr_015_657D:
    ld l, l                                       ; $657D: $6D
    ld l, a                                       ; $657E: $6F
    halt                                          ; $657F: $76
    ld h, l                                       ; $6580: $65
    ld h, h                                       ; $6581: $64
    jr nz, jr_015_65EA                            ; $6582: $20 $66

    ld l, a                                       ; $6584: $6F

jr_015_6585:
    ld [hl], d                                    ; $6585: $72
    cp $6B                                        ; $6586: $FE $6B
    ld l, [hl]                                    ; $6588: $6E
    ld l, a                                       ; $6589: $6F

jr_015_658A:
    ld [hl], a                                    ; $658A: $77
    ld l, c                                       ; $658B: $69
    ld l, [hl]                                    ; $658C: $6E

jr_015_658D:
    ld h, a                                       ; $658D: $67
    jr nz, jr_015_6604                            ; $658E: $20 $74

    ld l, b                                       ; $6590: $68
    ld h, l                                       ; $6591: $65
    rst $38                                       ; $6592: $FF
    ld [hl], e                                    ; $6593: $73
    ld h, l                                       ; $6594: $65
    ld h, e                                       ; $6595: $63
    ld [hl], d                                    ; $6596: $72

jr_015_6597:
    ld h, l                                       ; $6597: $65
    ld [hl], h                                    ; $6598: $74
    ld [hl], e                                    ; $6599: $73
    jr nz, jr_015_660B                            ; $659A: $20 $6F

    ld h, [hl]                                    ; $659C: $66

jr_015_659D:
    jr nz, jr_015_6613                            ; $659D: $20 $74

    ld l, b                                       ; $659F: $68
    ld h, l                                       ; $65A0: $65
    cp $41                                        ; $65A1: $FE $41
    ld l, [hl]                                    ; $65A3: $6E
    ld h, e                                       ; $65A4: $63
    ld l, c                                       ; $65A5: $69
    ld h, l                                       ; $65A6: $65
    ld l, [hl]                                    ; $65A7: $6E
    ld [hl], h                                    ; $65A8: $74

jr_015_65A9:
    ld [hl], e                                    ; $65A9: $73
    ld l, $FE                                     ; $65AA: $2E $FE
    ld c, c                                       ; $65AC: $49
    ld [hl], h                                    ; $65AD: $74
    jr nz, jr_015_6619                            ; $65AE: $20 $69

    ld [hl], e                                    ; $65B0: $73
    jr nz, jr_015_6627                            ; $65B1: $20 $74

    ld l, b                                       ; $65B3: $68
    ld h, l                                       ; $65B4: $65
    ld l, c                                       ; $65B5: $69
    ld [hl], d                                    ; $65B6: $72
    rst $38                                       ; $65B7: $FF
    ld h, [hl]                                    ; $65B8: $66
    ld h, c                                       ; $65B9: $61

jr_015_65BA:
    ld [hl], h                                    ; $65BA: $74
    ld h, l                                       ; $65BB: $65
    ld l, $FE                                     ; $65BC: $2E $FE
    db $FD                                        ; $65BE: $FD
    sbc e                                         ; $65BF: $9B
    ld a, b                                       ; $65C0: $78
    ld [hl], b                                    ; $65C1: $70
    sbc a                                         ; $65C2: $9F
    ld d, h                                       ; $65C3: $54
    ld l, b                                       ; $65C4: $68
    ld h, c                                       ; $65C5: $61
    ld [hl], h                                    ; $65C6: $74
    daa                                           ; $65C7: $27
    ld [hl], e                                    ; $65C8: $73
    jr nz, jr_015_6631                            ; $65C9: $20 $66

    ld h, c                                       ; $65CB: $61
    ld [hl], d                                    ; $65CC: $72
    jr nz, jr_015_6643                            ; $65CD: $20 $74

    ld l, a                                       ; $65CF: $6F
    ld l, a                                       ; $65D0: $6F

jr_015_65D1:
    rst $38                                       ; $65D1: $FF
    ld l, l                                       ; $65D2: $6D
    ld [hl], l                                    ; $65D3: $75
    ld h, e                                       ; $65D4: $63
    ld l, b                                       ; $65D5: $68
    jr nz, jr_015_664B                            ; $65D6: $20 $73

    ld [hl], l                                    ; $65D8: $75
    ld h, [hl]                                    ; $65D9: $66
    ld h, [hl]                                    ; $65DA: $66
    ld h, l                                       ; $65DB: $65
    ld [hl], d                                    ; $65DC: $72
    ld l, c                                       ; $65DD: $69
    ld l, [hl]                                    ; $65DE: $6E
    ld h, a                                       ; $65DF: $67
    ld hl, $59FE                                  ; $65E0: $21 $FE $59
    ld l, a                                       ; $65E3: $6F
    ld [hl], l                                    ; $65E4: $75
    jr nz, jr_015_6654                            ; $65E5: $20 $6D

    ld [hl], l                                    ; $65E7: $75
    ld [hl], e                                    ; $65E8: $73
    ld [hl], h                                    ; $65E9: $74

jr_015_65EA:
    ld l, [hl]                                    ; $65EA: $6E
    daa                                           ; $65EB: $27
    ld [hl], h                                    ; $65EC: $74
    rst $38                                       ; $65ED: $FF

jr_015_65EE:
    ld l, b                                       ; $65EE: $68
    ld h, c                                       ; $65EF: $61
    ld [hl], d                                    ; $65F0: $72
    ld l, l                                       ; $65F1: $6D
    jr nz, jr_015_6668                            ; $65F2: $20 $74

    ld l, b                                       ; $65F4: $68
    ld h, l                                       ; $65F5: $65
    ld [hl], e                                    ; $65F6: $73
    ld h, l                                       ; $65F7: $65

jr_015_65F8:
    jr nz, jr_015_65F8                            ; $65F8: $20 $FE

    ld [hl], b                                    ; $65FA: $70
    ld h, l                                       ; $65FB: $65
    ld l, a                                       ; $65FC: $6F
    ld [hl], b                                    ; $65FD: $70
    ld l, h                                       ; $65FE: $6C
    ld h, l                                       ; $65FF: $65
    inc l                                         ; $6600: $2C
    jr nz, jr_015_666C                            ; $6601: $20 $69

    ld [hl], h                                    ; $6603: $74

jr_015_6604:
    daa                                           ; $6604: $27
    ld [hl], e                                    ; $6605: $73
    rst $38                                       ; $6606: $FF
    ld [hl], l                                    ; $6607: $75
    ld l, [hl]                                    ; $6608: $6E
    ld h, [hl]                                    ; $6609: $66
    ld l, a                                       ; $660A: $6F

jr_015_660B:
    ld [hl], d                                    ; $660B: $72
    ld h, a                                       ; $660C: $67
    ld l, c                                       ; $660D: $69
    halt                                          ; $660E: $76
    ld h, c                                       ; $660F: $61
    ld h, d                                       ; $6610: $62
    ld l, h                                       ; $6611: $6C
    ld h, l                                       ; $6612: $65

jr_015_6613:
    ld hl, $FDFE                                  ; $6613: $21 $FE $FD
    sbc e                                         ; $6616: $9B
    sbc b                                         ; $6617: $98
    ld b, c                                       ; $6618: $41

jr_015_6619:
    sbc a                                         ; $6619: $9F
    ld c, b                                       ; $661A: $48
    ld h, c                                       ; $661B: $61
    halt                                          ; $661C: $76
    ld h, l                                       ; $661D: $65
    ld l, [hl]                                    ; $661E: $6E
    daa                                           ; $661F: $27
    ld [hl], h                                    ; $6620: $74
    jr nz, jr_015_669C                            ; $6621: $20 $79

    ld l, a                                       ; $6623: $6F
    ld [hl], l                                    ; $6624: $75
    rst $38                                       ; $6625: $FF
    ld [hl], d                                    ; $6626: $72

jr_015_6627:
    ld h, l                                       ; $6627: $65
    ld h, c                                       ; $6628: $61
    ld l, h                                       ; $6629: $6C
    ld l, c                                       ; $662A: $69
    ld a, d                                       ; $662B: $7A
    ld h, l                                       ; $662C: $65
    ld h, h                                       ; $662D: $64
    ccf                                           ; $662E: $3F
    cp $54                                        ; $662F: $FE $54

jr_015_6631:
    ld l, b                                       ; $6631: $68
    ld h, l                                       ; $6632: $65
    jr nz, jr_015_6697                            ; $6633: $20 $62

    ld l, h                                       ; $6635: $6C
    ld l, a                                       ; $6636: $6F
    ld l, a                                       ; $6637: $6F
    ld h, h                                       ; $6638: $64
    jr nz, jr_015_66AA                            ; $6639: $20 $6F

    ld h, [hl]                                    ; $663B: $66
    rst $38                                       ; $663C: $FF
    ld h, c                                       ; $663D: $61
    ld l, [hl]                                    ; $663E: $6E
    jr nz, jr_015_6682                            ; $663F: $20 $41

    ld l, [hl]                                    ; $6641: $6E
    ld h, e                                       ; $6642: $63

jr_015_6643:
    ld l, c                                       ; $6643: $69
    ld h, l                                       ; $6644: $65
    ld l, [hl]                                    ; $6645: $6E
    ld [hl], h                                    ; $6646: $74

Call_015_6647:
    cp $6D                                        ; $6647: $FE $6D
    ld h, c                                       ; $6649: $61
    ld h, h                                       ; $664A: $64

jr_015_664B:
    ld h, l                                       ; $664B: $65
    jr nz, jr_015_66C7                            ; $664C: $20 $79

    ld l, a                                       ; $664E: $6F
    ld [hl], l                                    ; $664F: $75
    jr nz, jr_015_66C9                            ; $6650: $20 $77

    ld l, b                                       ; $6652: $68
    ld h, c                                       ; $6653: $61

jr_015_6654:
    ld [hl], h                                    ; $6654: $74
    rst $38                                       ; $6655: $FF
    ld a, c                                       ; $6656: $79
    ld l, a                                       ; $6657: $6F
    ld [hl], l                                    ; $6658: $75
    jr nz, jr_015_66BC                            ; $6659: $20 $61

    ld [hl], d                                    ; $665B: $72
    ld h, l                                       ; $665C: $65
    ld l, $FE                                     ; $665D: $2E $FE
    ld e, c                                       ; $665F: $59
    ld l, a                                       ; $6660: $6F
    ld [hl], l                                    ; $6661: $75
    ld [hl], d                                    ; $6662: $72
    jr nz, jr_015_66C6                            ; $6663: $20 $61

    ld l, h                                       ; $6665: $6C
    ld l, h                                       ; $6666: $6C
    ld h, l                                       ; $6667: $65

jr_015_6668:
    ld h, a                                       ; $6668: $67
    ld l, c                                       ; $6669: $69
    ld h, c                                       ; $666A: $61
    ld l, [hl]                                    ; $666B: $6E

jr_015_666C:
    ld h, e                                       ; $666C: $63
    ld h, l                                       ; $666D: $65
    rst $38                                       ; $666E: $FF
    ld [hl], e                                    ; $666F: $73
    ld l, b                                       ; $6670: $68
    ld l, a                                       ; $6671: $6F
    ld [hl], l                                    ; $6672: $75
    ld l, h                                       ; $6673: $6C
    ld h, h                                       ; $6674: $64
    jr nz, jr_015_66D9                            ; $6675: $20 $62

    ld h, l                                       ; $6677: $65
    jr nz, @+$76                                  ; $6678: $20 $74

    ld l, a                                       ; $667A: $6F
    cp $74                                        ; $667B: $FE $74
    ld l, b                                       ; $667D: $68
    ld h, l                                       ; $667E: $65
    jr nz, jr_015_66C2                            ; $667F: $20 $41

    ld l, [hl]                                    ; $6681: $6E

jr_015_6682:
    ld h, e                                       ; $6682: $63
    ld l, c                                       ; $6683: $69
    ld h, l                                       ; $6684: $65
    ld l, [hl]                                    ; $6685: $6E
    ld [hl], h                                    ; $6686: $74
    ld [hl], e                                    ; $6687: $73
    inc l                                         ; $6688: $2C
    rst $38                                       ; $6689: $FF
    ld l, [hl]                                    ; $668A: $6E
    ld l, a                                       ; $668B: $6F
    ld [hl], h                                    ; $668C: $74
    jr nz, jr_015_6703                            ; $668D: $20 $74

    ld l, a                                       ; $668F: $6F
    jr nz, jr_015_6706                            ; $6690: $20 $74

    ld l, b                                       ; $6692: $68
    ld h, l                                       ; $6693: $65
    cp $66                                        ; $6694: $FE $66
    ld l, c                                       ; $6696: $69

jr_015_6697:
    ld l, h                                       ; $6697: $6C
    ld [hl], h                                    ; $6698: $74
    ld l, b                                       ; $6699: $68
    jr nz, jr_015_6710                            ; $669A: $20 $74

jr_015_669C:
    ld l, b                                       ; $669C: $68
    ld h, c                                       ; $669D: $61
    ld [hl], h                                    ; $669E: $74
    rst $38                                       ; $669F: $FF
    ld [hl], b                                    ; $66A0: $70
    ld l, a                                       ; $66A1: $6F
    ld l, h                                       ; $66A2: $6C
    ld l, h                                       ; $66A3: $6C
    ld [hl], l                                    ; $66A4: $75
    ld [hl], h                                    ; $66A5: $74
    ld h, l                                       ; $66A6: $65
    ld [hl], e                                    ; $66A7: $73
    jr nz, jr_015_671E                            ; $66A8: $20 $74

jr_015_66AA:
    ld l, b                                       ; $66AA: $68
    ld l, c                                       ; $66AB: $69
    ld [hl], e                                    ; $66AC: $73
    cp $6C                                        ; $66AD: $FE $6C
    ld h, c                                       ; $66AF: $61
    ld l, [hl]                                    ; $66B0: $6E
    ld h, h                                       ; $66B1: $64
    ld l, $FE                                     ; $66B2: $2E $FE
    db $FD                                        ; $66B4: $FD
    sbc d                                         ; $66B5: $9A
    ld e, b                                       ; $66B6: $58
    inc b                                         ; $66B7: $04
    ld b, d                                       ; $66B8: $42
    sbc e                                         ; $66B9: $9B
    ld a, b                                       ; $66BA: $78
    ld [hl], b                                    ; $66BB: $70

jr_015_66BC:
    sbc a                                         ; $66BC: $9F
    ld d, a                                       ; $66BD: $57
    ld [hl], d                                    ; $66BE: $72
    ld l, a                                       ; $66BF: $6F
    ld l, [hl]                                    ; $66C0: $6E
    ld h, a                                       ; $66C1: $67

jr_015_66C2:
    ld hl, $49FE                                  ; $66C2: $21 $FE $49
    daa                                           ; $66C5: $27

jr_015_66C6:
    ld l, l                                       ; $66C6: $6D

jr_015_66C7:
    jr nz, jr_015_6730                            ; $66C7: $20 $67

jr_015_66C9:
    ld l, a                                       ; $66C9: $6F
    ld l, c                                       ; $66CA: $69
    ld l, [hl]                                    ; $66CB: $6E
    ld h, a                                       ; $66CC: $67
    jr nz, jr_015_6743                            ; $66CD: $20 $74

    ld l, a                                       ; $66CF: $6F
    rst $38                                       ; $66D0: $FF
    ld [hl], b                                    ; $66D1: $70
    ld [hl], l                                    ; $66D2: $75
    ld [hl], h                                    ; $66D3: $74
    jr nz, jr_015_6737                            ; $66D4: $20 $61

    ld l, [hl]                                    ; $66D6: $6E
    jr nz, @+$67                                  ; $66D7: $20 $65

jr_015_66D9:
    ld l, [hl]                                    ; $66D9: $6E
    ld h, h                                       ; $66DA: $64
    jr nz, jr_015_6751                            ; $66DB: $20 $74

    ld l, a                                       ; $66DD: $6F
    cp $74                                        ; $66DE: $FE $74
    ld l, b                                       ; $66E0: $68
    ld l, c                                       ; $66E1: $69
    ld [hl], e                                    ; $66E2: $73
    jr nz, jr_015_6757                            ; $66E3: $20 $72

    ld l, c                                       ; $66E5: $69
    ld h, a                                       ; $66E6: $67
    ld l, b                                       ; $66E7: $68
    ld [hl], h                                    ; $66E8: $74
    jr nz, @+$70                                  ; $66E9: $20 $6E

    ld l, a                                       ; $66EB: $6F
    ld [hl], a                                    ; $66EC: $77
    ld l, $FE                                     ; $66ED: $2E $FE
    ld c, c                                       ; $66EF: $49
    daa                                           ; $66F0: $27
    ld l, l                                       ; $66F1: $6D
    jr nz, jr_015_6767                            ; $66F2: $20 $73

    ld h, l                                       ; $66F4: $65
    ld l, [hl]                                    ; $66F5: $6E
    ld h, h                                       ; $66F6: $64
    ld l, c                                       ; $66F7: $69
    ld l, [hl]                                    ; $66F8: $6E
    ld h, a                                       ; $66F9: $67
    rst $38                                       ; $66FA: $FF
    ld a, c                                       ; $66FB: $79
    ld l, a                                       ; $66FC: $6F
    ld [hl], l                                    ; $66FD: $75
    jr nz, jr_015_6762                            ; $66FE: $20 $62

    ld h, c                                       ; $6700: $61
    ld h, e                                       ; $6701: $63
    ld l, e                                       ; $6702: $6B

jr_015_6703:
    jr nz, jr_015_6779                            ; $6703: $20 $74

    ld l, a                                       ; $6705: $6F

jr_015_6706:
    jr nz, jr_015_677C                            ; $6706: $20 $74

    ld l, b                                       ; $6708: $68
    ld h, l                                       ; $6709: $65
    cp $57                                        ; $670A: $FE $57
    ld h, c                                       ; $670C: $61
    ld [hl], e                                    ; $670D: $73
    ld [hl], h                                    ; $670E: $74
    ld h, l                                       ; $670F: $65

jr_015_6710:
    ld l, h                                       ; $6710: $6C
    ld h, c                                       ; $6711: $61
    ld l, [hl]                                    ; $6712: $6E
    ld h, h                                       ; $6713: $64
    ld [hl], e                                    ; $6714: $73
    ld l, $FE                                     ; $6715: $2E $FE
    ld d, h                                       ; $6717: $54
    ld h, l                                       ; $6718: $65
    ld l, h                                       ; $6719: $6C
    ld l, h                                       ; $671A: $6C
    jr nz, jr_015_6796                            ; $671B: $20 $79

    ld l, a                                       ; $671D: $6F

jr_015_671E:
    ld [hl], l                                    ; $671E: $75
    ld [hl], d                                    ; $671F: $72
    rst $38                                       ; $6720: $FF
    ld l, l                                       ; $6721: $6D
    ld l, c                                       ; $6722: $69
    ld [hl], e                                    ; $6723: $73
    ld h, a                                       ; $6724: $67
    ld [hl], l                                    ; $6725: $75
    ld l, c                                       ; $6726: $69
    ld h, h                                       ; $6727: $64
    ld h, l                                       ; $6728: $65
    ld h, h                                       ; $6729: $64
    cp $66                                        ; $672A: $FE $66
    ld l, a                                       ; $672C: $6F
    ld l, h                                       ; $672D: $6C
    ld l, h                                       ; $672E: $6C
    ld l, a                                       ; $672F: $6F

jr_015_6730:
    ld [hl], a                                    ; $6730: $77
    ld h, l                                       ; $6731: $65
    ld [hl], d                                    ; $6732: $72
    ld [hl], e                                    ; $6733: $73
    jr nz, jr_015_67AA                            ; $6734: $20 $74

    ld l, a                                       ; $6736: $6F

jr_015_6737:
    rst $38                                       ; $6737: $FF
    ld h, e                                       ; $6738: $63
    ld l, b                                       ; $6739: $68
    ld l, a                                       ; $673A: $6F
    ld l, e                                       ; $673B: $6B
    ld h, l                                       ; $673C: $65
    jr nz, jr_015_67AE                            ; $673D: $20 $6F

    ld l, [hl]                                    ; $673F: $6E
    jr nz, jr_015_67B6                            ; $6740: $20 $74

    ld l, b                                       ; $6742: $68

jr_015_6743:
    ld h, l                                       ; $6743: $65
    ld l, c                                       ; $6744: $69
    ld [hl], d                                    ; $6745: $72
    cp $73                                        ; $6746: $FE $73
    ld l, a                                       ; $6748: $6F
    dec l                                         ; $6749: $2D
    ld h, e                                       ; $674A: $63
    ld h, c                                       ; $674B: $61
    ld l, h                                       ; $674C: $6C
    ld l, h                                       ; $674D: $6C
    ld h, l                                       ; $674E: $65
    ld h, h                                       ; $674F: $64
    rst $38                                       ; $6750: $FF

jr_015_6751:
    ld l, d                                       ; $6751: $6A
    ld [hl], l                                    ; $6752: $75
    ld [hl], e                                    ; $6753: $73
    ld [hl], h                                    ; $6754: $74
    ld l, c                                       ; $6755: $69
    ld h, e                                       ; $6756: $63

jr_015_6757:
    ld h, l                                       ; $6757: $65
    ld l, $FE                                     ; $6758: $2E $FE
    db $FD                                        ; $675A: $FD
    sbc e                                         ; $675B: $9B
    sbc b                                         ; $675C: $98
    ld b, c                                       ; $675D: $41
    sbc a                                         ; $675E: $9F
    ld c, b                                       ; $675F: $48
    ld h, c                                       ; $6760: $61
    ld l, b                                       ; $6761: $68

jr_015_6762:
    ld hl, $59FE                                  ; $6762: $21 $FE $59
    ld l, a                                       ; $6765: $6F
    ld [hl], l                                    ; $6766: $75

jr_015_6767:
    jr nz, jr_015_67CF                            ; $6767: $20 $66

    ld l, a                                       ; $6769: $6F
    ld l, a                                       ; $676A: $6F
    ld l, h                                       ; $676B: $6C
    ld hl, $41FE                                  ; $676C: $21 $FE $41
    ld h, [hl]                                    ; $676F: $66
    ld [hl], h                                    ; $6770: $74
    ld h, l                                       ; $6771: $65
    ld [hl], d                                    ; $6772: $72
    rst $38                                       ; $6773: $FF
    ld h, a                                       ; $6774: $67
    ld h, l                                       ; $6775: $65
    ld l, [hl]                                    ; $6776: $6E
    ld h, l                                       ; $6777: $65
    ld [hl], d                                    ; $6778: $72

jr_015_6779:
    ld h, c                                       ; $6779: $61
    ld [hl], h                                    ; $677A: $74
    ld l, c                                       ; $677B: $69

jr_015_677C:
    ld l, a                                       ; $677C: $6F
    ld l, [hl]                                    ; $677D: $6E
    ld [hl], e                                    ; $677E: $73
    jr nz, jr_015_67F0                            ; $677F: $20 $6F

    ld h, [hl]                                    ; $6781: $66
    cp $67                                        ; $6782: $FE $67
    ld h, c                                       ; $6784: $61
    ld [hl], d                                    ; $6785: $72
    ld h, d                                       ; $6786: $62
    ld h, c                                       ; $6787: $61
    ld h, a                                       ; $6788: $67
    ld h, l                                       ; $6789: $65
    inc l                                         ; $678A: $2C
    jr nz, @+$7B                                  ; $678B: $20 $79

    ld l, a                                       ; $678D: $6F
    ld [hl], l                                    ; $678E: $75
    rst $38                                       ; $678F: $FF
    ld h, c                                       ; $6790: $61
    ld [hl], d                                    ; $6791: $72
    ld h, l                                       ; $6792: $65
    jr nz, jr_015_67F7                            ; $6793: $20 $62

    ld [hl], l                                    ; $6795: $75

jr_015_6796:
    ld [hl], h                                    ; $6796: $74
    jr nz, jr_015_67FA                            ; $6797: $20 $61

    cp $73                                        ; $6799: $FE $73
    ld l, b                                       ; $679B: $68
    ld h, c                                       ; $679C: $61
    ld h, h                                       ; $679D: $64
    ld l, a                                       ; $679E: $6F
    ld [hl], a                                    ; $679F: $77
    jr nz, jr_015_6811                            ; $67A0: $20 $6F

    ld h, [hl]                                    ; $67A2: $66
    jr nz, jr_015_681E                            ; $67A3: $20 $79

    ld l, a                                       ; $67A5: $6F
    ld [hl], l                                    ; $67A6: $75
    ld [hl], d                                    ; $67A7: $72
    rst $38                                       ; $67A8: $FF
    ld h, [hl]                                    ; $67A9: $66

jr_015_67AA:
    ld l, a                                       ; $67AA: $6F
    ld [hl], d                                    ; $67AB: $72
    ld l, l                                       ; $67AC: $6D
    ld h, l                                       ; $67AD: $65

jr_015_67AE:
    ld [hl], d                                    ; $67AE: $72
    jr nz, jr_015_6824                            ; $67AF: $20 $73

    ld h, l                                       ; $67B1: $65
    ld l, h                                       ; $67B2: $6C
    ld h, [hl]                                    ; $67B3: $66
    ld l, $FE                                     ; $67B4: $2E $FE

jr_015_67B6:
    ld c, c                                       ; $67B6: $49
    jr nz, jr_015_6830                            ; $67B7: $20 $77

    ld l, c                                       ; $67B9: $69
    ld l, h                                       ; $67BA: $6C
    ld l, h                                       ; $67BB: $6C
    jr nz, jr_015_6822                            ; $67BC: $20 $64

    ld l, c                                       ; $67BE: $69
    ld [hl], e                                    ; $67BF: $73
    ld [hl], e                                    ; $67C0: $73
    ld l, a                                       ; $67C1: $6F
    ld l, h                                       ; $67C2: $6C
    halt                                          ; $67C3: $76
    ld h, l                                       ; $67C4: $65
    rst $38                                       ; $67C5: $FF
    ld [hl], h                                    ; $67C6: $74
    ld l, b                                       ; $67C7: $68
    ld l, c                                       ; $67C8: $69
    ld [hl], e                                    ; $67C9: $73
    jr nz, jr_015_6843                            ; $67CA: $20 $77

    ld h, l                                       ; $67CC: $65
    ld h, c                                       ; $67CD: $61
    ld l, e                                       ; $67CE: $6B

jr_015_67CF:
    cp $76                                        ; $67CF: $FE $76
    ld h, l                                       ; $67D1: $65
    ld [hl], e                                    ; $67D2: $73
    ld [hl], e                                    ; $67D3: $73
    ld h, l                                       ; $67D4: $65
    ld l, h                                       ; $67D5: $6C
    jr nz, jr_015_683B                            ; $67D6: $20 $63

    ld h, c                                       ; $67D8: $61
    ld l, h                                       ; $67D9: $6C
    ld l, h                                       ; $67DA: $6C
    ld h, l                                       ; $67DB: $65
    ld h, h                                       ; $67DC: $64
    rst $38                                       ; $67DD: $FF
    daa                                           ; $67DE: $27
    ld d, h                                       ; $67DF: $54
    ld l, a                                       ; $67E0: $6F
    ld l, [hl]                                    ; $67E1: $6E
    ld a, c                                       ; $67E2: $79
    jr nz, jr_015_682F                            ; $67E3: $20 $4A

    ld l, a                                       ; $67E5: $6F
    ld l, [hl]                                    ; $67E6: $6E
    ld h, l                                       ; $67E7: $65
    ld [hl], e                                    ; $67E8: $73
    daa                                           ; $67E9: $27
    cp $61                                        ; $67EA: $FE $61
    ld l, [hl]                                    ; $67EC: $6E
    ld h, h                                       ; $67ED: $64
    jr nz, jr_015_6852                            ; $67EE: $20 $62

jr_015_67F0:
    ld [hl], d                                    ; $67F0: $72
    ld l, c                                       ; $67F1: $69
    ld l, [hl]                                    ; $67F2: $6E
    ld h, a                                       ; $67F3: $67
    jr nz, jr_015_686F                            ; $67F4: $20 $79

    ld l, a                                       ; $67F6: $6F

jr_015_67F7:
    ld [hl], l                                    ; $67F7: $75
    rst $38                                       ; $67F8: $FF
    ld [hl], h                                    ; $67F9: $74

jr_015_67FA:
    ld l, a                                       ; $67FA: $6F
    jr nz, jr_015_6871                            ; $67FB: $20 $74

    ld l, b                                       ; $67FD: $68
    ld h, l                                       ; $67FE: $65
    jr nz, jr_015_6869                            ; $67FF: $20 $68

    ld h, l                                       ; $6801: $65
    ld h, c                                       ; $6802: $61
    ld [hl], d                                    ; $6803: $72
    ld [hl], h                                    ; $6804: $74
    cp $6F                                        ; $6805: $FE $6F
    ld h, [hl]                                    ; $6807: $66
    jr nz, jr_015_6877                            ; $6808: $20 $6D

    ld a, c                                       ; $680A: $79
    jr nz, jr_015_6858                            ; $680B: $20 $4B

    ld h, l                                       ; $680D: $65
    ld h, l                                       ; $680E: $65
    ld [hl], b                                    ; $680F: $70
    rst $38                                       ; $6810: $FF

jr_015_6811:
    ld l, c                                       ; $6811: $69
    ld l, [hl]                                    ; $6812: $6E
    jr nz, jr_015_6889                            ; $6813: $20 $74

    ld l, b                                       ; $6815: $68
    ld h, l                                       ; $6816: $65
    cp $57                                        ; $6817: $FE $57
    ld h, c                                       ; $6819: $61
    ld [hl], e                                    ; $681A: $73
    ld [hl], h                                    ; $681B: $74
    ld h, l                                       ; $681C: $65
    ld l, h                                       ; $681D: $6C

jr_015_681E:
    ld h, c                                       ; $681E: $61
    ld l, [hl]                                    ; $681F: $6E
    ld h, h                                       ; $6820: $64
    ld [hl], e                                    ; $6821: $73

jr_015_6822:
    rst $38                                       ; $6822: $FF
    ld h, [hl]                                    ; $6823: $66

jr_015_6824:
    ld l, a                                       ; $6824: $6F
    ld [hl], d                                    ; $6825: $72
    jr nz, jr_015_6889                            ; $6826: $20 $61

    ld l, [hl]                                    ; $6828: $6E
    jr nz, @+$67                                  ; $6829: $20 $65

    ld [hl], h                                    ; $682B: $74
    ld h, l                                       ; $682C: $65
    ld [hl], d                                    ; $682D: $72
    ld l, [hl]                                    ; $682E: $6E

jr_015_682F:
    ld l, c                                       ; $682F: $69

jr_015_6830:
    ld [hl], h                                    ; $6830: $74
    ld a, c                                       ; $6831: $79
    cp $6F                                        ; $6832: $FE $6F
    ld h, [hl]                                    ; $6834: $66
    jr nz, jr_015_68AB                            ; $6835: $20 $74

    ld l, a                                       ; $6837: $6F
    ld [hl], d                                    ; $6838: $72
    ld [hl], h                                    ; $6839: $74
    ld [hl], l                                    ; $683A: $75

jr_015_683B:
    ld [hl], d                                    ; $683B: $72
    ld h, l                                       ; $683C: $65
    ld l, $FE                                     ; $683D: $2E $FE
    ld b, c                                       ; $683F: $41
    ld [hl], h                                    ; $6840: $74
    jr nz, jr_015_68AF                            ; $6841: $20 $6C

jr_015_6843:
    ld h, c                                       ; $6843: $61
    ld [hl], e                                    ; $6844: $73
    ld [hl], h                                    ; $6845: $74
    jr nz, jr_015_6891                            ; $6846: $20 $49

    rst $38                                       ; $6848: $FF
    ld [hl], e                                    ; $6849: $73
    ld l, b                                       ; $684A: $68
    ld h, c                                       ; $684B: $61
    ld l, h                                       ; $684C: $6C
    ld l, h                                       ; $684D: $6C
    jr nz, jr_015_68B8                            ; $684E: $20 $68

    ld h, c                                       ; $6850: $61
    halt                                          ; $6851: $76

jr_015_6852:
    ld h, l                                       ; $6852: $65
    jr nz, @+$6F                                  ; $6853: $20 $6D

    ld a, c                                       ; $6855: $79
    cp $72                                        ; $6856: $FE $72

jr_015_6858:
    ld h, l                                       ; $6858: $65
    halt                                          ; $6859: $76
    ld h, l                                       ; $685A: $65
    ld l, [hl]                                    ; $685B: $6E
    ld h, a                                       ; $685C: $67
    ld h, l                                       ; $685D: $65
    inc l                                         ; $685E: $2C
    jr nz, jr_015_68AC                            ; $685F: $20 $4B

    ld a, c                                       ; $6861: $79
    ld [hl], d                                    ; $6862: $72
    ld l, a                                       ; $6863: $6F
    ld [hl], e                                    ; $6864: $73
    ld hl, $FDFE                                  ; $6865: $21 $FE $FD
    sbc e                                         ; $6868: $9B

jr_015_6869:
    ld a, b                                       ; $6869: $78
    ld [hl], b                                    ; $686A: $70
    sbc a                                         ; $686B: $9F
    ld d, h                                       ; $686C: $54
    ld l, b                                       ; $686D: $68
    ld a, c                                       ; $686E: $79

jr_015_686F:
    jr nz, jr_015_68D9                            ; $686F: $20 $68

jr_015_6871:
    ld l, a                                       ; $6871: $6F
    ld [hl], l                                    ; $6872: $75
    ld [hl], d                                    ; $6873: $72
    jr nz, jr_015_68E5                            ; $6874: $20 $6F

    ld h, [hl]                                    ; $6876: $66

jr_015_6877:
    rst $38                                       ; $6877: $FF
    ld [hl], d                                    ; $6878: $72
    ld h, l                                       ; $6879: $65
    ld h, e                                       ; $687A: $63
    ld l, e                                       ; $687B: $6B
    ld l, a                                       ; $687C: $6F
    ld l, [hl]                                    ; $687D: $6E
    ld l, c                                       ; $687E: $69
    ld l, [hl]                                    ; $687F: $6E
    ld h, a                                       ; $6880: $67
    jr nz, jr_015_68EC                            ; $6881: $20 $69

    ld [hl], e                                    ; $6883: $73
    cp $75                                        ; $6884: $FE $75
    ld [hl], b                                    ; $6886: $70
    ld l, a                                       ; $6887: $6F
    ld l, [hl]                                    ; $6888: $6E

jr_015_6889:
    jr nz, jr_015_68FF                            ; $6889: $20 $74

    ld l, b                                       ; $688B: $68
    ld h, l                                       ; $688C: $65
    ld h, l                                       ; $688D: $65
    inc l                                         ; $688E: $2C
    cp $41                                        ; $688F: $FE $41

jr_015_6891:
    ld h, a                                       ; $6891: $67
    ld [hl], d                                    ; $6892: $72
    ld h, c                                       ; $6893: $61
    ld l, l                                       ; $6894: $6D
    ld hl, $FDFE                                  ; $6895: $21 $FE $FD
    sbc e                                         ; $6898: $9B
    sbc b                                         ; $6899: $98
    ld b, c                                       ; $689A: $41
    sbc a                                         ; $689B: $9F
    ld d, e                                       ; $689C: $53
    ld l, a                                       ; $689D: $6F
    jr nz, jr_015_6902                            ; $689E: $20 $62

    ld h, l                                       ; $68A0: $65
    jr nz, jr_015_690C                            ; $68A1: $20 $69

    ld [hl], h                                    ; $68A3: $74
    ld l, $FE                                     ; $68A4: $2E $FE
    db $FD                                        ; $68A6: $FD
    sbc d                                         ; $68A7: $9A
    ld e, b                                       ; $68A8: $58
    dec b                                         ; $68A9: $05
    ld b, d                                       ; $68AA: $42

jr_015_68AB:
    sbc e                                         ; $68AB: $9B

jr_015_68AC:
    sbc b                                         ; $68AC: $98
    ld b, c                                       ; $68AD: $41
    sbc a                                         ; $68AE: $9F

jr_015_68AF:
    ld c, [hl]                                    ; $68AF: $4E
    ld c, a                                       ; $68B0: $4F
    ld c, a                                       ; $68B1: $4F
    ld c, a                                       ; $68B2: $4F
    ld c, a                                       ; $68B3: $4F
    ld c, a                                       ; $68B4: $4F
    ld c, a                                       ; $68B5: $4F
    ld c, a                                       ; $68B6: $4F
    ld c, a                                       ; $68B7: $4F

jr_015_68B8:
    ld c, a                                       ; $68B8: $4F
    ld hl, $2121                                  ; $68B9: $21 $21 $21
    ld hl, $FE21                                  ; $68BC: $21 $21 $FE
    ld c, [hl]                                    ; $68BF: $4E
    ld c, a                                       ; $68C0: $4F
    jr nz, @+$4F                                  ; $68C1: $20 $4D

    ld c, a                                       ; $68C3: $4F
    ld d, d                                       ; $68C4: $52
    ld d, h                                       ; $68C5: $54
    ld b, c                                       ; $68C6: $41
    ld c, h                                       ; $68C7: $4C
    jr nz, jr_015_690D                            ; $68C8: $20 $43

    ld b, c                                       ; $68CA: $41
    ld c, [hl]                                    ; $68CB: $4E
    rst $38                                       ; $68CC: $FF
    ld b, h                                       ; $68CD: $44
    ld b, l                                       ; $68CE: $45
    ld d, e                                       ; $68CF: $53
    ld d, h                                       ; $68D0: $54
    ld d, d                                       ; $68D1: $52
    ld c, a                                       ; $68D2: $4F
    ld e, c                                       ; $68D3: $59
    jr nz, jr_015_6917                            ; $68D4: $20 $41

    ld c, [hl]                                    ; $68D6: $4E
    cp $41                                        ; $68D7: $FE $41

jr_015_68D9:
    ld c, [hl]                                    ; $68D9: $4E
    ld b, e                                       ; $68DA: $43
    ld c, c                                       ; $68DB: $49
    ld b, l                                       ; $68DC: $45
    ld c, [hl]                                    ; $68DD: $4E
    ld d, h                                       ; $68DE: $54
    ld hl, $2121                                  ; $68DF: $21 $21 $21
    cp $49                                        ; $68E2: $FE $49
    ld d, h                                       ; $68E4: $54

jr_015_68E5:
    daa                                           ; $68E5: $27
    ld d, e                                       ; $68E6: $53
    rst $38                                       ; $68E7: $FF
    ld d, l                                       ; $68E8: $55
    ld c, [hl]                                    ; $68E9: $4E
    ld b, [hl]                                    ; $68EA: $46
    ld b, c                                       ; $68EB: $41

jr_015_68EC:
    ld d, h                                       ; $68EC: $54
    ld c, b                                       ; $68ED: $48
    ld c, a                                       ; $68EE: $4F
    ld c, l                                       ; $68EF: $4D
    ld b, c                                       ; $68F0: $41
    ld b, d                                       ; $68F1: $42
    ld c, h                                       ; $68F2: $4C
    ld b, l                                       ; $68F3: $45
    ld hl, $2121                                  ; $68F4: $21 $21 $21
    cp $49                                        ; $68F7: $FE $49
    ld c, [hl]                                    ; $68F9: $4E
    ld b, e                                       ; $68FA: $43
    ld c, a                                       ; $68FB: $4F
    ld c, [hl]                                    ; $68FC: $4E
    ld b, e                                       ; $68FD: $43
    ld b, l                                       ; $68FE: $45

jr_015_68FF:
    ld c, c                                       ; $68FF: $49
    ld d, [hl]                                    ; $6900: $56
    ld b, c                                       ; $6901: $41

jr_015_6902:
    ld b, d                                       ; $6902: $42
    ld c, h                                       ; $6903: $4C
    ld b, l                                       ; $6904: $45
    ld hl, $FE21                                  ; $6905: $21 $21 $FE
    ld c, [hl]                                    ; $6908: $4E
    ld c, a                                       ; $6909: $4F
    ld c, a                                       ; $690A: $4F
    ld c, a                                       ; $690B: $4F

jr_015_690C:
    ld c, a                                       ; $690C: $4F

jr_015_690D:
    ld c, a                                       ; $690D: $4F
    ld c, a                                       ; $690E: $4F
    ld hl, $2121                                  ; $690F: $21 $21 $21
    cp $FD                                        ; $6912: $FE $FD
    sbc d                                         ; $6914: $9A
    ld e, b                                       ; $6915: $58
    add hl, bc                                    ; $6916: $09

jr_015_6917:
    ld b, d                                       ; $6917: $42
    ld e, c                                       ; $6918: $59
    dec d                                         ; $6919: $15
    db $E4                                        ; $691A: $E4
    ld l, e                                       ; $691B: $6B
    ld b, d                                       ; $691C: $42
    sbc d                                         ; $691D: $9A
    ld e, c                                       ; $691E: $59
    dec d                                         ; $691F: $15
    ld c, [hl]                                    ; $6920: $4E
    ld l, e                                       ; $6921: $6B
    ld b, d                                       ; $6922: $42
    ld [bc], a                                    ; $6923: $02
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    jr nc, jr_015_6917                            ; $6928: $30 $ED

    ld d, [hl]                                    ; $692A: $56
    jr z, jr_015_6952                             ; $692B: $28 $25

    dec b                                         ; $692D: $05
    ld h, b                                       ; $692E: $60
    inc a                                         ; $692F: $3C
    ld c, h                                       ; $6930: $4C
    inc hl                                        ; $6931: $23
    ld b, b                                       ; $6932: $40
    dec hl                                        ; $6933: $2B
    xor d                                         ; $6934: $AA
    dec a                                         ; $6935: $3D
    db $D3                                        ; $6936: $D3
    rlca                                          ; $6937: $07
    inc bc                                        ; $6938: $03
    xor d                                         ; $6939: $AA
    ld a, $D3                                     ; $693A: $3E $D3
    rlca                                          ; $693C: $07
    add h                                         ; $693D: $84
    sbc e                                         ; $693E: $9B
    sbc b                                         ; $693F: $98
    ld b, c                                       ; $6940: $41
    sbc a                                         ; $6941: $9F
    ld b, [hl]                                    ; $6942: $46
    ld l, c                                       ; $6943: $69
    ld l, [hl]                                    ; $6944: $6E
    ld l, c                                       ; $6945: $69
    ld [hl], e                                    ; $6946: $73

Jump_015_6947:
    ld l, b                                       ; $6947: $68
    ld l, c                                       ; $6948: $69
    ld l, [hl]                                    ; $6949: $6E
    ld h, a                                       ; $694A: $67
    jr nz, jr_015_69C6                            ; $694B: $20 $79

    ld l, a                                       ; $694D: $6F
    ld [hl], l                                    ; $694E: $75
    rst $38                                       ; $694F: $FF
    ld l, a                                       ; $6950: $6F
    ld h, [hl]                                    ; $6951: $66

jr_015_6952:
    ld h, [hl]                                    ; $6952: $66
    jr nz, @+$79                                  ; $6953: $20 $77

    ld l, c                                       ; $6955: $69
    ld l, h                                       ; $6956: $6C
    ld l, h                                       ; $6957: $6C
    jr nz, jr_015_69BF                            ; $6958: $20 $65

    ld l, [hl]                                    ; $695A: $6E
    ld [hl], e                                    ; $695B: $73
    ld [hl], l                                    ; $695C: $75
    ld [hl], d                                    ; $695D: $72
    ld h, l                                       ; $695E: $65
    cp $74                                        ; $695F: $FE $74
    ld l, b                                       ; $6961: $68
    ld h, l                                       ; $6962: $65
    jr nz, jr_015_69C8                            ; $6963: $20 $63

    ld l, a                                       ; $6965: $6F
    ld l, l                                       ; $6966: $6D
    ld [hl], b                                    ; $6967: $70
    ld l, h                                       ; $6968: $6C
    ld h, l                                       ; $6969: $65
    ld [hl], h                                    ; $696A: $74
    ld l, c                                       ; $696B: $69
    ld l, a                                       ; $696C: $6F
    ld l, [hl]                                    ; $696D: $6E
    rst $38                                       ; $696E: $FF
    ld l, a                                       ; $696F: $6F
    ld h, [hl]                                    ; $6970: $66
    jr nz, jr_015_69E0                            ; $6971: $20 $6D

    ld a, c                                       ; $6973: $79
    jr nz, jr_015_69E6                            ; $6974: $20 $70

    ld l, h                                       ; $6976: $6C
    ld h, c                                       ; $6977: $61
    ld l, [hl]                                    ; $6978: $6E
    ld l, $FE                                     ; $6979: $2E $FE
    db $FD                                        ; $697B: $FD
    sbc d                                         ; $697C: $9A
    ld e, d                                       ; $697D: $5A
    dec d                                         ; $697E: $15
    jp nz, $5E69                                  ; $697F: $C2 $69 $5E

    dec hl                                        ; $6982: $2B
    ld e, d                                       ; $6983: $5A
    dec d                                         ; $6984: $15
    jp nz, $5E69                                  ; $6985: $C2 $69 $5E

    dec hl                                        ; $6988: $2B
    ld e, d                                       ; $6989: $5A
    dec d                                         ; $698A: $15
    jp nz, $5E69                                  ; $698B: $C2 $69 $5E

    ld e, d                                       ; $698E: $5A
    dec d                                         ; $698F: $15
    jp nz, $5E69                                  ; $6990: $C2 $69 $5E

    dec hl                                        ; $6993: $2B
    sbc e                                         ; $6994: $9B
    sbc b                                         ; $6995: $98
    ld b, c                                       ; $6996: $41
    sbc a                                         ; $6997: $9F
    ld d, a                                       ; $6998: $57
    ld l, b                                       ; $6999: $68
    ld a, c                                       ; $699A: $79
    jr nz, jr_015_6A0A                            ; $699B: $20 $6D

    ld [hl], l                                    ; $699D: $75
    ld [hl], e                                    ; $699E: $73
    ld [hl], h                                    ; $699F: $74
    jr nz, jr_015_6A1B                            ; $69A0: $20 $79

    ld l, a                                       ; $69A2: $6F
    ld [hl], l                                    ; $69A3: $75
    rst $38                                       ; $69A4: $FF
    ld h, h                                       ; $69A5: $64
    ld h, l                                       ; $69A6: $65
    ld h, [hl]                                    ; $69A7: $66
    ld h, l                                       ; $69A8: $65
    ld l, [hl]                                    ; $69A9: $6E
    ld h, h                                       ; $69AA: $64
    jr nz, jr_015_69EE                            ; $69AB: $20 $41

    ld h, a                                       ; $69AD: $67
    ld h, c                                       ; $69AE: $61
    ld h, h                                       ; $69AF: $64
    ld l, a                                       ; $69B0: $6F
    ld l, [hl]                                    ; $69B1: $6E
    daa                                           ; $69B2: $27
    ld [hl], e                                    ; $69B3: $73
    cp $74                                        ; $69B4: $FE $74
    ld [hl], d                                    ; $69B6: $72
    ld l, c                                       ; $69B7: $69
    ld h, d                                       ; $69B8: $62
    ld h, l                                       ; $69B9: $65
    ccf                                           ; $69BA: $3F
    rst $38                                       ; $69BB: $FF
    db $FD                                        ; $69BC: $FD
    sbc d                                         ; $69BD: $9A
    ld b, l                                       ; $69BE: $45

jr_015_69BF:
    dec d                                         ; $69BF: $15
    ldh a, [rBCPD]                                ; $69C0: $F0 $69
    ld b, a                                       ; $69C2: $47
    inc b                                         ; $69C3: $04
    dec d                                         ; $69C4: $15
    ret nc                                        ; $69C5: $D0

jr_015_69C6:
    ld l, c                                       ; $69C6: $69
    dec d                                         ; $69C7: $15

jr_015_69C8:
    ret c                                         ; $69C8: $D8

    ld l, c                                       ; $69C9: $69
    dec d                                         ; $69CA: $15
    ldh [rBCPD], a                                ; $69CB: $E0 $69
    dec d                                         ; $69CD: $15
    add sp, $69                                   ; $69CE: $E8 $69
    ld l, $09                                     ; $69D0: $2E $09
    jr jr_015_6A03                                ; $69D2: $18 $2F

    add d                                         ; $69D4: $82
    nop                                           ; $69D5: $00
    ld d, h                                       ; $69D6: $54
    ld b, d                                       ; $69D7: $42
    ld l, $09                                     ; $69D8: $2E $09
    ld [de], a                                    ; $69DA: $12
    ld b, c                                       ; $69DB: $41
    sub [hl]                                      ; $69DC: $96
    nop                                           ; $69DD: $00
    ld d, h                                       ; $69DE: $54
    ld b, d                                       ; $69DF: $42

jr_015_69E0:
    ld l, $09                                     ; $69E0: $2E $09
    inc d                                         ; $69E2: $14
    cpl                                           ; $69E3: $2F
    add d                                         ; $69E4: $82
    nop                                           ; $69E5: $00

jr_015_69E6:
    ld d, h                                       ; $69E6: $54
    ld b, d                                       ; $69E7: $42
    ld l, $09                                     ; $69E8: $2E $09
    ld de, $7D2D                                  ; $69EA: $11 $2D $7D
    nop                                           ; $69ED: $00

jr_015_69EE:
    ld d, h                                       ; $69EE: $54
    ld b, d                                       ; $69EF: $42
    jr z, jr_015_69FB                             ; $69F0: $28 $09

    di                                            ; $69F2: $F3
    ld [hl], c                                    ; $69F3: $71
    ld [de], a                                    ; $69F4: $12
    dec hl                                        ; $69F5: $2B
    jr z, jr_015_6A01                             ; $69F6: $28 $09

    dec d                                         ; $69F8: $15
    ld [hl], d                                    ; $69F9: $72

jr_015_69FA:
    ld [de], a                                    ; $69FA: $12

jr_015_69FB:
    dec hl                                        ; $69FB: $2B
    jr z, jr_015_6A07                             ; $69FC: $28 $09

    scf                                           ; $69FE: $37
    ld [hl], d                                    ; $69FF: $72
    ld [de], a                                    ; $6A00: $12

jr_015_6A01:
    dec hl                                        ; $6A01: $2B
    ld b, l                                       ; $6A02: $45

jr_015_6A03:
    dec d                                         ; $6A03: $15
    ld a, l                                       ; $6A04: $7D
    ld l, c                                       ; $6A05: $69
    ld [bc], a                                    ; $6A06: $02

jr_015_6A07:
    nop                                           ; $6A07: $00
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00

jr_015_6A0A:
    nop                                           ; $6A0A: $00
    jr nc, jr_015_69FA                            ; $6A0B: $30 $ED

    ld d, [hl]                                    ; $6A0D: $56
    jr nz, @+$49                                  ; $6A0E: $20 $47

    rlca                                          ; $6A10: $07
    dec d                                         ; $6A11: $15
    ld h, $6A                                     ; $6A12: $26 $6A
    dec d                                         ; $6A14: $15
    ld c, c                                       ; $6A15: $49
    ld l, d                                       ; $6A16: $6A
    dec d                                         ; $6A17: $15
    ld e, [hl]                                    ; $6A18: $5E
    ld l, d                                       ; $6A19: $6A
    dec d                                         ; $6A1A: $15

jr_015_6A1B:
    ld l, h                                       ; $6A1B: $6C
    ld l, d                                       ; $6A1C: $6A
    dec d                                         ; $6A1D: $15
    add c                                         ; $6A1E: $81
    ld l, d                                       ; $6A1F: $6A
    dec d                                         ; $6A20: $15
    sbc l                                         ; $6A21: $9D
    ld l, d                                       ; $6A22: $6A
    dec d                                         ; $6A23: $15
    cp c                                          ; $6A24: $B9
    ld l, d                                       ; $6A25: $6A
    dec h                                         ; $6A26: $25
    dec b                                         ; $6A27: $05
    ld l, h                                       ; $6A28: $6C
    inc a                                         ; $6A29: $3C
    ld c, h                                       ; $6A2A: $4C
    inc hl                                        ; $6A2B: $23
    ld b, b                                       ; $6A2C: $40
    ld l, $09                                     ; $6A2D: $2E $09
    inc de                                        ; $6A2F: $13
    jr c, jr_015_6AA2                             ; $6A30: $38 $70

    ld bc, $2E2B                                  ; $6A32: $01 $2B $2E
    add hl, bc                                    ; $6A35: $09
    inc d                                         ; $6A36: $14
    jr c, @+$73                                   ; $6A37: $38 $71

    ld bc, $2E2B                                  ; $6A39: $01 $2B $2E
    add hl, bc                                    ; $6A3C: $09
    ld [$753A], sp                                ; $6A3D: $08 $3A $75
    ld bc, $2E2B                                  ; $6A40: $01 $2B $2E
    add hl, bc                                    ; $6A43: $09
    ld b, h                                       ; $6A44: $44
    ld a, [hl-]                                   ; $6A45: $3A
    ld [hl], l                                    ; $6A46: $75
    ld bc, $2527                                  ; $6A47: $01 $27 $25
    dec b                                         ; $6A4A: $05
    ld l, h                                       ; $6A4B: $6C
    ld a, [hl-]                                   ; $6A4C: $3A
    ld c, h                                       ; $6A4D: $4C
    inc hl                                        ; $6A4E: $23
    ld b, b                                       ; $6A4F: $40
    ld l, $09                                     ; $6A50: $2E $09
    ld d, l                                       ; $6A52: $55
    jr c, jr_015_6AC9                             ; $6A53: $38 $74

    ld bc, $2E2B                                  ; $6A55: $01 $2B $2E
    add hl, bc                                    ; $6A58: $09
    ld b, c                                       ; $6A59: $41
    inc a                                         ; $6A5A: $3C
    ld [hl], a                                    ; $6A5B: $77
    ld bc, $2527                                  ; $6A5C: $01 $27 $25
    dec b                                         ; $6A5F: $05
    ld l, h                                       ; $6A60: $6C
    ccf                                           ; $6A61: $3F
    ld c, h                                       ; $6A62: $4C
    inc hl                                        ; $6A63: $23
    ld b, b                                       ; $6A64: $40
    ld l, $09                                     ; $6A65: $2E $09
    ld [de], a                                    ; $6A67: $12
    ccf                                           ; $6A68: $3F
    ld a, [hl]                                    ; $6A69: $7E
    ld bc, $2527                                  ; $6A6A: $01 $27 $25
    dec b                                         ; $6A6D: $05
    ld l, h                                       ; $6A6E: $6C
    ld a, $4C                                     ; $6A6F: $3E $4C
    inc hl                                        ; $6A71: $23
    ld b, b                                       ; $6A72: $40
    ld l, $09                                     ; $6A73: $2E $09
    ld b, d                                       ; $6A75: $42
    ld a, [hl-]                                   ; $6A76: $3A
    ld [hl], b                                    ; $6A77: $70
    ld bc, $2E2B                                  ; $6A78: $01 $2B $2E
    add hl, bc                                    ; $6A7B: $09
    jr z, @+$3C                                   ; $6A7C: $28 $3A

    ld [hl], h                                    ; $6A7E: $74
    ld bc, $2527                                  ; $6A7F: $01 $27 $25
    dec b                                         ; $6A82: $05
    ld l, h                                       ; $6A83: $6C
    ccf                                           ; $6A84: $3F
    ld c, h                                       ; $6A85: $4C
    inc hl                                        ; $6A86: $23
    ld b, b                                       ; $6A87: $40
    ld l, $09                                     ; $6A88: $2E $09
    ld [hl+], a                                   ; $6A8A: $22
    inc a                                         ; $6A8B: $3C
    halt                                          ; $6A8C: $76
    ld bc, $2E2B                                  ; $6A8D: $01 $2B $2E
    add hl, bc                                    ; $6A90: $09
    jr nz, @+$40                                  ; $6A91: $20 $3E

    ld a, l                                       ; $6A93: $7D
    ld bc, $2E2B                                  ; $6A94: $01 $2B $2E
    add hl, bc                                    ; $6A97: $09
    dec h                                         ; $6A98: $25
    ld a, $7D                                     ; $6A99: $3E $7D
    ld bc, $2527                                  ; $6A9B: $01 $27 $25
    dec b                                         ; $6A9E: $05
    ld l, h                                       ; $6A9F: $6C
    ld a, [hl-]                                   ; $6AA0: $3A
    ld c, h                                       ; $6AA1: $4C

jr_015_6AA2:
    inc hl                                        ; $6AA2: $23
    ld b, b                                       ; $6AA3: $40
    ld l, $09                                     ; $6AA4: $2E $09
    daa                                           ; $6AA6: $27
    ld a, [hl-]                                   ; $6AA7: $3A
    ld [hl], h                                    ; $6AA8: $74

jr_015_6AA9:
    ld bc, $2E2B                                  ; $6AA9: $01 $2B $2E
    add hl, bc                                    ; $6AAC: $09
    ccf                                           ; $6AAD: $3F
    dec sp                                        ; $6AAE: $3B
    ld a, b                                       ; $6AAF: $78
    ld bc, $2E2B                                  ; $6AB0: $01 $2B $2E
    add hl, bc                                    ; $6AB3: $09
    ld b, [hl]                                    ; $6AB4: $46
    inc a                                         ; $6AB5: $3C
    ld a, d                                       ; $6AB6: $7A
    ld bc, $2527                                  ; $6AB7: $01 $27 $25
    dec b                                         ; $6ABA: $05
    ld l, h                                       ; $6ABB: $6C
    inc a                                         ; $6ABC: $3C
    ld c, h                                       ; $6ABD: $4C
    inc hl                                        ; $6ABE: $23
    ld b, b                                       ; $6ABF: $40
    ld l, $09                                     ; $6AC0: $2E $09
    ld c, [hl]                                    ; $6AC2: $4E
    dec sp                                        ; $6AC3: $3B
    halt                                          ; $6AC4: $76
    ld bc, $2E2B                                  ; $6AC5: $01 $2B $2E
    add hl, bc                                    ; $6AC8: $09

jr_015_6AC9:
    ld a, [bc]                                    ; $6AC9: $0A
    inc a                                         ; $6ACA: $3C
    ld a, d                                       ; $6ACB: $7A
    ld bc, $2E2B                                  ; $6ACC: $01 $2B $2E
    add hl, bc                                    ; $6ACF: $09
    jr jr_015_6B0D                                ; $6AD0: $18 $3B

    ld a, b                                       ; $6AD2: $78
    ld bc, $2527                                  ; $6AD3: $01 $27 $25
    dec b                                         ; $6AD6: $05
    ld l, h                                       ; $6AD7: $6C
    ccf                                           ; $6AD8: $3F
    ld c, h                                       ; $6AD9: $4C
    inc hl                                        ; $6ADA: $23
    ld b, b                                       ; $6ADB: $40
    ld l, $09                                     ; $6ADC: $2E $09
    ld [de], a                                    ; $6ADE: $12
    ccf                                           ; $6ADF: $3F
    ld a, [hl]                                    ; $6AE0: $7E
    ld bc, $AC27                                  ; $6AE1: $01 $27 $AC
    or d                                          ; $6AE4: $B2
    and d                                         ; $6AE5: $A2
    ld bc, $6593                                  ; $6AE6: $01 $93 $65
    ld sp, $4F4B                                  ; $6AE9: $31 $4B $4F
    ld h, [hl]                                    ; $6AEC: $66
    ret nz                                        ; $6AED: $C0

    ld e, h                                       ; $6AEE: $5C
    ld hl, $9C64                                  ; $6AEF: $21 $64 $9C
    ld c, c                                       ; $6AF2: $49
    dec b                                         ; $6AF3: $05
    nop                                           ; $6AF4: $00
    add c                                         ; $6AF5: $81
    ld e, l                                       ; $6AF6: $5D
    add hl, bc                                    ; $6AF7: $09
    ld c, $13                                     ; $6AF8: $0E $13
    pop de                                        ; $6AFA: $D1
    nop                                           ; $6AFB: $00
    jr nz, jr_015_6AA9                            ; $6AFC: $20 $AB

    ld d, b                                       ; $6AFE: $50
    ld [hl+], a                                   ; $6AFF: $22
    dec b                                         ; $6B00: $05
    ld b, b                                       ; $6B01: $40
    dec bc                                        ; $6B02: $0B
    nop                                           ; $6B03: $00
    add d                                         ; $6B04: $82
    nop                                           ; $6B05: $00
    ld l, a                                       ; $6B06: $6F

jr_015_6B07:
    rrca                                          ; $6B07: $0F
    rst $38                                       ; $6B08: $FF
    ld a, a                                       ; $6B09: $7F
    sub h                                         ; $6B0A: $94
    halt                                          ; $6B0B: $76
    ld h, b                                       ; $6B0C: $60

jr_015_6B0D:
    rrca                                          ; $6B0D: $0F
    ld b, d                                       ; $6B0E: $42
    xor h                                         ; $6B0F: $AC
    or d                                          ; $6B10: $B2
    and d                                         ; $6B11: $A2
    ld bc, $6593                                  ; $6B12: $01 $93 $65
    ld sp, $4F4B                                  ; $6B15: $31 $4B $4F
    ld h, [hl]                                    ; $6B18: $66
    ret nz                                        ; $6B19: $C0

    ld e, h                                       ; $6B1A: $5C
    ld hl, $9C64                                  ; $6B1B: $21 $64 $9C
    ld c, c                                       ; $6B1E: $49
    dec b                                         ; $6B1F: $05
    nop                                           ; $6B20: $00
    ld l, e                                       ; $6B21: $6B
    ld c, d                                       ; $6B22: $4A
    add hl, bc                                    ; $6B23: $09
    ld c, $13                                     ; $6B24: $0E $13
    pop de                                        ; $6B26: $D1
    nop                                           ; $6B27: $00
    dec d                                         ; $6B28: $15
    ld e, c                                       ; $6B29: $59
    ld l, e                                       ; $6B2A: $6B
    ld [hl+], a                                   ; $6B2B: $22
    dec b                                         ; $6B2C: $05
    ld b, b                                       ; $6B2D: $40
    dec b                                         ; $6B2E: $05
    ld [bc], a                                    ; $6B2F: $02
    ld l, e                                       ; $6B30: $6B
    ld c, d                                       ; $6B31: $4A
    add hl, bc                                    ; $6B32: $09
    add hl, bc                                    ; $6B33: $09
    or h                                          ; $6B34: $B4
    ret nc                                        ; $6B35: $D0

    nop                                           ; $6B36: $00
    dec d                                         ; $6B37: $15
    adc h                                         ; $6B38: $8C
    ld l, e                                       ; $6B39: $6B
    ld [hl+], a                                   ; $6B3A: $22
    dec b                                         ; $6B3B: $05
    ld b, b                                       ; $6B3C: $40
    ld l, e                                       ; $6B3D: $6B
    ld b, a                                       ; $6B3E: $47
    ld a, [bc]                                    ; $6B3F: $0A
    nop                                           ; $6B40: $00
    ld b, b                                       ; $6B41: $40
    nop                                           ; $6B42: $00
    add b                                         ; $6B43: $80
    nop                                           ; $6B44: $00
    dec bc                                        ; $6B45: $0B
    nop                                           ; $6B46: $00
    dec bc                                        ; $6B47: $0B
    ld [bc], a                                    ; $6B48: $02
    add d                                         ; $6B49: $82
    rra                                           ; $6B4A: $1F
    inc de                                        ; $6B4B: $13
    sub h                                         ; $6B4C: $94
    ld b, d                                       ; $6B4D: $42
    ld l, [hl]                                    ; $6B4E: $6E
    rrca                                          ; $6B4F: $0F
    rst $38                                       ; $6B50: $FF
    ld a, a                                       ; $6B51: $7F
    halt                                          ; $6B52: $76
    ld h, b                                       ; $6B53: $60
    rrca                                          ; $6B54: $0F
    ld b, l                                       ; $6B55: $45
    rra                                           ; $6B56: $1F
    ld e, e                                       ; $6B57: $5B
    ld d, [hl]                                    ; $6B58: $56
    dec d                                         ; $6B59: $15
    jr nz, jr_015_6B07                            ; $6B5A: $20 $AB

    ld d, b                                       ; $6B5C: $50
    jr nz, jr_015_6B7F                            ; $6B5D: $20 $20

    ld c, l                                       ; $6B5F: $4D
    ld d, b                                       ; $6B60: $50
    jr jr_015_6B83                                ; $6B61: $18 $20

    xor e                                         ; $6B63: $AB
    ld d, b                                       ; $6B64: $50
    stop                                          ; $6B65: $10 $00
    add e                                         ; $6B67: $83
    jr nz, jr_015_6B6A                            ; $6B68: $20 $00

jr_015_6B6A:
    cp $00                                        ; $6B6A: $FE $00
    ld e, e                                       ; $6B6C: $5B
    dec d                                         ; $6B6D: $15
    and h                                         ; $6B6E: $A4
    ld h, b                                       ; $6B6F: $60
    ld h, d                                       ; $6B70: $62
    ld bc, $0156                                  ; $6B71: $01 $56 $01
    ld e, e                                       ; $6B74: $5B
    dec d                                         ; $6B75: $15
    cp d                                          ; $6B76: $BA
    ld h, b                                       ; $6B77: $60
    ld h, d                                       ; $6B78: $62
    inc b                                         ; $6B79: $04
    ld e, e                                       ; $6B7A: $5B
    dec d                                         ; $6B7B: $15
    cp c                                          ; $6B7C: $B9
    ld h, [hl]                                    ; $6B7D: $66
    ld h, d                                       ; $6B7E: $62

jr_015_6B7F:
    dec b                                         ; $6B7F: $05
    ld sp, $A715                                  ; $6B80: $31 $15 $A7

jr_015_6B83:
    ld l, e                                       ; $6B83: $6B
    ld [hl+], a                                   ; $6B84: $22
    adc $40                                       ; $6B85: $CE $40
    ld b, l                                       ; $6B87: $45
    dec d                                         ; $6B88: $15
    inc hl                                        ; $6B89: $23
    ld l, c                                       ; $6B8A: $69
    ld b, d                                       ; $6B8B: $42
    inc d                                         ; $6B8C: $14
    ld c, $B3                                     ; $6B8D: $0E $B3
    ld b, a                                       ; $6B8F: $47
    ld h, b                                       ; $6B90: $60
    ld bc, $0E14                                  ; $6B91: $01 $14 $0E
    add c                                         ; $6B94: $81
    ld b, a                                       ; $6B95: $47
    ld h, d                                       ; $6B96: $62
    ld [bc], a                                    ; $6B97: $02
    inc d                                         ; $6B98: $14
    ld c, $A9                                     ; $6B99: $0E $A9
    ld b, a                                       ; $6B9B: $47
    ld h, d                                       ; $6B9C: $62

jr_015_6B9D:
    inc bc                                        ; $6B9D: $03
    inc d                                         ; $6B9E: $14
    ld c, $81                                     ; $6B9F: $0E $81
    ld b, a                                       ; $6BA1: $47
    ld e, e                                       ; $6BA2: $5B
    dec d                                         ; $6BA3: $15
    and b                                         ; $6BA4: $A0
    ld h, h                                       ; $6BA5: $64
    ld b, d                                       ; $6BA6: $42
    inc h                                         ; $6BA7: $24
    ld d, b                                       ; $6BA8: $50
    sub e                                         ; $6BA9: $93
    ld h, l                                       ; $6BAA: $65
    ld sp, $4F4B                                  ; $6BAB: $31 $4B $4F
    ld h, [hl]                                    ; $6BAE: $66
    ret nz                                        ; $6BAF: $C0

    ld e, h                                       ; $6BB0: $5C
    ld hl, $9C64                                  ; $6BB1: $21 $64 $9C
    ld c, c                                       ; $6BB4: $49
    dec b                                         ; $6BB5: $05
    nop                                           ; $6BB6: $00
    ld l, e                                       ; $6BB7: $6B
    ld c, d                                       ; $6BB8: $4A
    add hl, bc                                    ; $6BB9: $09
    dec bc                                        ; $6BBA: $0B
    jp c, $00D0                                   ; $6BBB: $DA $D0 $00

    dec d                                         ; $6BBE: $15
    rst $28                                       ; $6BBF: $EF
    ld l, e                                       ; $6BC0: $6B
    ld [hl+], a                                   ; $6BC1: $22
    dec b                                         ; $6BC2: $05
    ld b, b                                       ; $6BC3: $40
    dec b                                         ; $6BC4: $05
    ld [bc], a                                    ; $6BC5: $02
    ld l, e                                       ; $6BC6: $6B
    ld c, d                                       ; $6BC7: $4A
    add hl, bc                                    ; $6BC8: $09

jr_015_6BC9:
    add hl, bc                                    ; $6BC9: $09
    or h                                          ; $6BCA: $B4
    ret nc                                        ; $6BCB: $D0

    nop                                           ; $6BCC: $00
    dec d                                         ; $6BCD: $15
    db $F4                                        ; $6BCE: $F4
    ld l, e                                       ; $6BCF: $6B
    ld [hl+], a                                   ; $6BD0: $22
    dec b                                         ; $6BD1: $05
    ld b, b                                       ; $6BD2: $40
    ld l, e                                       ; $6BD3: $6B
    jr nc, jr_015_6BFA                            ; $6BD4: $30 $24

    jr nc, jr_015_6C18                            ; $6BD6: $30 $40

    nop                                           ; $6BD8: $00
    add b                                         ; $6BD9: $80
    nop                                           ; $6BDA: $00
    dec bc                                        ; $6BDB: $0B
    nop                                           ; $6BDC: $00
    dec bc                                        ; $6BDD: $0B
    ld [bc], a                                    ; $6BDE: $02
    add d                                         ; $6BDF: $82
    sub h                                         ; $6BE0: $94
    rra                                           ; $6BE1: $1F
    dec c                                         ; $6BE2: $0D
    ld b, d                                       ; $6BE3: $42
    ld l, [hl]                                    ; $6BE4: $6E
    rrca                                          ; $6BE5: $0F
    rst $38                                       ; $6BE6: $FF
    ld a, a                                       ; $6BE7: $7F
    halt                                          ; $6BE8: $76
    ld h, b                                       ; $6BE9: $60
    rrca                                          ; $6BEA: $0F
    ld b, l                                       ; $6BEB: $45
    dec d                                         ; $6BEC: $15
    ld c, l                                       ; $6BED: $4D
    ld l, [hl]                                    ; $6BEE: $6E
    inc d                                         ; $6BEF: $14

jr_015_6BF0:
    jr nz, jr_015_6B9D                            ; $6BF0: $20 $AB

    ld d, b                                       ; $6BF2: $50
    ld b, d                                       ; $6BF3: $42
    inc d                                         ; $6BF4: $14
    ld c, $7E                                     ; $6BF5: $0E $7E
    ld c, b                                       ; $6BF7: $48
    ld e, e                                       ; $6BF8: $5B
    dec d                                         ; $6BF9: $15

jr_015_6BFA:
    xor e                                         ; $6BFA: $AB
    ld l, b                                       ; $6BFB: $68
    ld h, d                                       ; $6BFC: $62
    add hl, bc                                    ; $6BFD: $09
    inc d                                         ; $6BFE: $14
    ld c, $94                                     ; $6BFF: $0E $94
    ld c, b                                       ; $6C01: $48
    ld b, b                                       ; $6C02: $40
    add b                                         ; $6C03: $80
    ld e, e                                       ; $6C04: $5B
    dec d                                         ; $6C05: $15
    jr jr_015_6C71                                ; $6C06: $18 $69

    ld b, d                                       ; $6C08: $42
    ld bc, $0606                                  ; $6C09: $01 $06 $06
    rlca                                          ; $6C0C: $07
    nop                                           ; $6C0D: $00
    ld l, e                                       ; $6C0E: $6B
    ld c, d                                       ; $6C0F: $4A
    add hl, bc                                    ; $6C10: $09
    nop                                           ; $6C11: $00
    jr nz, jr_015_6BC9                            ; $6C12: $20 $B5

    ld d, b                                       ; $6C14: $50
    ld l, [hl]                                    ; $6C15: $6E
    rrca                                          ; $6C16: $0F
    rst $38                                       ; $6C17: $FF

jr_015_6C18:
    ld a, a                                       ; $6C18: $7F
    halt                                          ; $6C19: $76
    jr nz, jr_015_6C2B                            ; $6C1A: $20 $0F

    dec b                                         ; $6C1C: $05

jr_015_6C1D:
    nop                                           ; $6C1D: $00
    add c                                         ; $6C1E: $81
    ld e, l                                       ; $6C1F: $5D
    dec b                                         ; $6C20: $05
    dec b                                         ; $6C21: $05
    sbc e                                         ; $6C22: $9B
    ret nc                                        ; $6C23: $D0

    nop                                           ; $6C24: $00
    jr nz, jr_015_6BF0                            ; $6C25: $20 $C9

    ld d, b                                       ; $6C27: $50
    ld [hl+], a                                   ; $6C28: $22
    dec b                                         ; $6C29: $05
    ld b, b                                       ; $6C2A: $40

jr_015_6C2B:
    ld b, l                                       ; $6C2B: $45
    ld h, $86                                     ; $6C2C: $26 $86
    ld [hl], e                                    ; $6C2E: $73
    ld bc, $1C04                                  ; $6C2F: $01 $04 $1C
    ld b, l                                       ; $6C32: $45
    dec d                                         ; $6C33: $15
    adc a                                         ; $6C34: $8F
    ld l, h                                       ; $6C35: $6C
    xor h                                         ; $6C36: $AC
    or d                                          ; $6C37: $B2
    and d                                         ; $6C38: $A2
    ld bc, $1F93                                  ; $6C39: $01 $93 $1F
    dec c                                         ; $6C3C: $0D
    ld h, l                                       ; $6C3D: $65
    ld b, b                                       ; $6C3E: $40
    ld c, e                                       ; $6C3F: $4B
    ld c, a                                       ; $6C40: $4F
    ld h, h                                       ; $6C41: $64
    and l                                         ; $6C42: $A5
    ld c, c                                       ; $6C43: $49
    ld b, e                                       ; $6C44: $43
    db $10                                        ; $6C45: $10
    inc b                                         ; $6C46: $04
    dec b                                         ; $6C47: $05
    jr jr_015_6C5F                                ; $6C48: $18 $15

    ld a, l                                       ; $6C4A: $7D
    ld l, h                                       ; $6C4B: $6C
    dec b                                         ; $6C4C: $05
    jr nz, jr_015_6C1D                            ; $6C4D: $20 $CE

    ld h, e                                       ; $6C4F: $63
    ld a, [bc]                                    ; $6C50: $0A
    add hl, bc                                    ; $6C51: $09
    adc b                                         ; $6C52: $88
    ret nc                                        ; $6C53: $D0

    nop                                           ; $6C54: $00
    ld [hl+], a                                   ; $6C55: $22
    jp c, $1540                                   ; $6C56: $DA $40 $15

    ld b, $6A                                     ; $6C59: $06 $6A
    dec b                                         ; $6C5B: $05
    rra                                           ; $6C5C: $1F
    adc $63                                       ; $6C5D: $CE $63

jr_015_6C5F:
    ld a, [bc]                                    ; $6C5F: $0A
    add hl, bc                                    ; $6C60: $09
    adc b                                         ; $6C61: $88
    ret nc                                        ; $6C62: $D0

    nop                                           ; $6C63: $00
    ld [hl+], a                                   ; $6C64: $22
    jp c, $1540                                   ; $6C65: $DA $40 $15

    ld b, $6A                                     ; $6C68: $06 $6A
    dec bc                                        ; $6C6A: $0B
    jr nz, @+$0D                                  ; $6C6B: $20 $0B

    rra                                           ; $6C6D: $1F
    ld l, e                                       ; $6C6E: $6B
    inc [hl]                                      ; $6C6F: $34
    dec c                                         ; $6C70: $0D

jr_015_6C71:
    jr nc, jr_015_6CDD                            ; $6C71: $30 $6A

    nop                                           ; $6C73: $00

jr_015_6C74:
    add b                                         ; $6C74: $80
    nop                                           ; $6C75: $00
    ld sp, $3615                                  ; $6C76: $31 $15 $36
    ld l, h                                       ; $6C79: $6C
    ld [hl+], a                                   ; $6C7A: $22
    adc $40                                       ; $6C7B: $CE $40
    ld b, l                                       ; $6C7D: $45
    ld [hl+], a                                   ; $6C7E: $22
    sub d                                         ; $6C7F: $92
    ld b, c                                       ; $6C80: $41
    ld bc, $0406                                  ; $6C81: $01 $06 $04
    ld b, l                                       ; $6C84: $45
    dec d                                         ; $6C85: $15
    ld [hl], $6C                                  ; $6C86: $36 $6C
    ld bc, $0F08                                  ; $6C88: $01 $08 $0F
    ld b, l                                       ; $6C8B: $45
    dec d                                         ; $6C8C: $15
    and $6C                                       ; $6C8D: $E6 $6C
    xor h                                         ; $6C8F: $AC
    or d                                          ; $6C90: $B2
    and d                                         ; $6C91: $A2
    ld bc, $6593                                  ; $6C92: $01 $93 $65
    ld c, a                                       ; $6C95: $4F
    ld c, e                                       ; $6C96: $4B
    ld c, a                                       ; $6C97: $4F
    ld h, h                                       ; $6C98: $64
    xor [hl]                                      ; $6C99: $AE
    ld c, c                                       ; $6C9A: $49
    ld b, e                                       ; $6C9B: $43
    db $10                                        ; $6C9C: $10
    inc b                                         ; $6C9D: $04
    dec b                                         ; $6C9E: $05
    jr jr_015_6CB6                                ; $6C9F: $18 $15

    call nc, $056C                                ; $6CA1: $D4 $6C $05
    jr nz, jr_015_6C74                            ; $6CA4: $20 $CE

    ld h, e                                       ; $6CA6: $63
    ld a, [bc]                                    ; $6CA7: $0A
    add hl, bc                                    ; $6CA8: $09
    ld c, [hl]                                    ; $6CA9: $4E
    pop de                                        ; $6CAA: $D1
    nop                                           ; $6CAB: $00
    ld [hl+], a                                   ; $6CAC: $22
    jp c, $1540                                   ; $6CAD: $DA $40 $15

    ld b, $6A                                     ; $6CB0: $06 $6A
    dec b                                         ; $6CB2: $05
    rra                                           ; $6CB3: $1F
    adc $63                                       ; $6CB4: $CE $63

jr_015_6CB6:
    ld a, [bc]                                    ; $6CB6: $0A
    add hl, bc                                    ; $6CB7: $09
    ld c, [hl]                                    ; $6CB8: $4E
    pop de                                        ; $6CB9: $D1
    nop                                           ; $6CBA: $00
    ld [hl+], a                                   ; $6CBB: $22
    jp c, $1540                                   ; $6CBC: $DA $40 $15

    ld b, $6A                                     ; $6CBF: $06 $6A
    dec bc                                        ; $6CC1: $0B
    jr nz, @+$0D                                  ; $6CC2: $20 $0B

    rra                                           ; $6CC4: $1F
    ld l, e                                       ; $6CC5: $6B
    inc [hl]                                      ; $6CC6: $34
    dec c                                         ; $6CC7: $0D
    jr nc, jr_015_6D34                            ; $6CC8: $30 $6A

    nop                                           ; $6CCA: $00

jr_015_6CCB:
    add b                                         ; $6CCB: $80
    nop                                           ; $6CCC: $00
    ld sp, $8F15                                  ; $6CCD: $31 $15 $8F
    ld l, h                                       ; $6CD0: $6C
    ld [hl+], a                                   ; $6CD1: $22
    adc $40                                       ; $6CD2: $CE $40
    ld b, l                                       ; $6CD4: $45
    ld [hl+], a                                   ; $6CD5: $22
    sub d                                         ; $6CD6: $92
    ld b, c                                       ; $6CD7: $41
    ld bc, $051D                                  ; $6CD8: $01 $1D $05
    ld b, l                                       ; $6CDB: $45
    dec d                                         ; $6CDC: $15

jr_015_6CDD:
    adc a                                         ; $6CDD: $8F
    ld l, h                                       ; $6CDE: $6C
    ld bc, $3E04                                  ; $6CDF: $01 $04 $3E
    ld b, l                                       ; $6CE2: $45
    dec d                                         ; $6CE3: $15
    ld bc, $AC6E                                  ; $6CE4: $01 $6E $AC
    or d                                          ; $6CE7: $B2
    and d                                         ; $6CE8: $A2
    ld bc, $6593                                  ; $6CE9: $01 $93 $65
    ld e, [hl]                                    ; $6CEC: $5E
    ld c, e                                       ; $6CED: $4B
    ld c, a                                       ; $6CEE: $4F
    ld h, h                                       ; $6CEF: $64
    or a                                          ; $6CF0: $B7
    ld c, c                                       ; $6CF1: $49
    ld b, e                                       ; $6CF2: $43
    db $10                                        ; $6CF3: $10
    inc b                                         ; $6CF4: $04
    dec b                                         ; $6CF5: $05
    jr jr_015_6D0D                                ; $6CF6: $18 $15

    dec hl                                        ; $6CF8: $2B
    ld l, l                                       ; $6CF9: $6D
    dec b                                         ; $6CFA: $05
    jr nz, jr_015_6CCB                            ; $6CFB: $20 $CE

    ld h, e                                       ; $6CFD: $63
    ld a, [bc]                                    ; $6CFE: $0A
    add hl, bc                                    ; $6CFF: $09
    xor h                                         ; $6D00: $AC
    ret nc                                        ; $6D01: $D0

    nop                                           ; $6D02: $00
    ld [hl+], a                                   ; $6D03: $22
    jp c, $1540                                   ; $6D04: $DA $40 $15

    ld b, $6A                                     ; $6D07: $06 $6A
    dec b                                         ; $6D09: $05
    rra                                           ; $6D0A: $1F
    adc $63                                       ; $6D0B: $CE $63

jr_015_6D0D:
    ld a, [bc]                                    ; $6D0D: $0A
    add hl, bc                                    ; $6D0E: $09
    xor h                                         ; $6D0F: $AC
    ret nc                                        ; $6D10: $D0

    nop                                           ; $6D11: $00
    ld [hl+], a                                   ; $6D12: $22
    jp c, $1540                                   ; $6D13: $DA $40 $15

    ld b, $6A                                     ; $6D16: $06 $6A
    dec bc                                        ; $6D18: $0B
    jr nz, @+$0D                                  ; $6D19: $20 $0B

    rra                                           ; $6D1B: $1F
    ld l, e                                       ; $6D1C: $6B
    inc [hl]                                      ; $6D1D: $34
    dec c                                         ; $6D1E: $0D
    jr nc, jr_015_6D8B                            ; $6D1F: $30 $6A

    nop                                           ; $6D21: $00
    add b                                         ; $6D22: $80
    nop                                           ; $6D23: $00
    ld sp, $E615                                  ; $6D24: $31 $15 $E6
    ld l, h                                       ; $6D27: $6C
    ld [hl+], a                                   ; $6D28: $22
    adc $40                                       ; $6D29: $CE $40
    ld b, l                                       ; $6D2B: $45
    ld [hl+], a                                   ; $6D2C: $22
    sub d                                         ; $6D2D: $92
    ld b, c                                       ; $6D2E: $41
    ld bc, $0404                                  ; $6D2F: $01 $04 $04
    ld b, l                                       ; $6D32: $45
    dec d                                         ; $6D33: $15

jr_015_6D34:
    and $6C                                       ; $6D34: $E6 $6C
    ld bc, $0F08                                  ; $6D36: $01 $08 $0F
    ld b, l                                       ; $6D39: $45
    dec d                                         ; $6D3A: $15
    ld a, c                                       ; $6D3B: $79
    ld [hl], e                                    ; $6D3C: $73
    ld b, a                                       ; $6D3D: $47
    inc b                                         ; $6D3E: $04
    dec d                                         ; $6D3F: $15
    ld c, e                                       ; $6D40: $4B
    ld l, l                                       ; $6D41: $6D
    dec d                                         ; $6D42: $15
    ld [hl], d                                    ; $6D43: $72
    ld l, l                                       ; $6D44: $6D
    dec d                                         ; $6D45: $15
    sub h                                         ; $6D46: $94
    ld l, l                                       ; $6D47: $6D
    dec d                                         ; $6D48: $15
    ret z                                         ; $6D49: $C8

    ld l, l                                       ; $6D4A: $6D
    sbc e                                         ; $6D4B: $9B
    ld a, b                                       ; $6D4C: $78
    ld [hl], b                                    ; $6D4D: $70
    sbc a                                         ; $6D4E: $9F
    ld d, a                                       ; $6D4F: $57
    ld l, b                                       ; $6D50: $68
    ld h, c                                       ; $6D51: $61
    ld [hl], h                                    ; $6D52: $74
    jr nz, @+$63                                  ; $6D53: $20 $61

    jr nz, jr_015_6DCA                            ; $6D55: $20 $73

    ld [hl], h                                    ; $6D57: $74
    ld [hl], d                                    ; $6D58: $72
    ld h, c                                       ; $6D59: $61
    ld l, [hl]                                    ; $6D5A: $6E
    ld h, a                                       ; $6D5B: $67
    ld h, l                                       ; $6D5C: $65
    dec l                                         ; $6D5D: $2D
    rst $38                                       ; $6D5E: $FF
    ld l, h                                       ; $6D5F: $6C
    ld l, a                                       ; $6D60: $6F
    ld l, a                                       ; $6D61: $6F
    ld l, e                                       ; $6D62: $6B
    ld l, c                                       ; $6D63: $69
    ld l, [hl]                                    ; $6D64: $6E
    ld h, a                                       ; $6D65: $67
    jr nz, jr_015_6DDB                            ; $6D66: $20 $73

    ld [hl], h                                    ; $6D68: $74
    ld h, c                                       ; $6D69: $61
    ld [hl], h                                    ; $6D6A: $74
    ld [hl], l                                    ; $6D6B: $75
    ld h, l                                       ; $6D6C: $65
    ld l, $FE                                     ; $6D6D: $2E $FE
    db $FD                                        ; $6D6F: $FD
    sbc d                                         ; $6D70: $9A
    ld b, d                                       ; $6D71: $42
    sbc e                                         ; $6D72: $9B
    ld a, b                                       ; $6D73: $78
    ld [hl], b                                    ; $6D74: $70
    sbc a                                         ; $6D75: $9F
    ld d, e                                       ; $6D76: $53
    ld [hl], h                                    ; $6D77: $74
    ld l, a                                       ; $6D78: $6F
    ld l, [hl]                                    ; $6D79: $6E
    ld h, l                                       ; $6D7A: $65
    ld l, $20                                     ; $6D7B: $2E $20
    ld c, c                                       ; $6D7D: $49
    ld [hl], h                                    ; $6D7E: $74
    daa                                           ; $6D7F: $27
    ld [hl], e                                    ; $6D80: $73
    rst $38                                       ; $6D81: $FF
    ld l, l                                       ; $6D82: $6D
    ld h, c                                       ; $6D83: $61
    ld h, h                                       ; $6D84: $64
    ld h, l                                       ; $6D85: $65
    jr nz, jr_015_6DF7                            ; $6D86: $20 $6F

    ld h, [hl]                                    ; $6D88: $66
    jr nz, jr_015_6DFE                            ; $6D89: $20 $73

jr_015_6D8B:
    ld [hl], h                                    ; $6D8B: $74
    ld l, a                                       ; $6D8C: $6F
    ld l, [hl]                                    ; $6D8D: $6E
    ld h, l                                       ; $6D8E: $65
    ld l, $FE                                     ; $6D8F: $2E $FE
    db $FD                                        ; $6D91: $FD
    sbc d                                         ; $6D92: $9A
    ld b, d                                       ; $6D93: $42
    sbc e                                         ; $6D94: $9B
    ld a, b                                       ; $6D95: $78
    ld [hl], b                                    ; $6D96: $70
    sbc a                                         ; $6D97: $9F
    ld d, h                                       ; $6D98: $54
    ld l, b                                       ; $6D99: $68
    ld h, l                                       ; $6D9A: $65
    ld [hl], d                                    ; $6D9B: $72
    ld h, l                                       ; $6D9C: $65
    jr nz, jr_015_6E12                            ; $6D9D: $20 $73

    ld [hl], l                                    ; $6D9F: $75
    ld [hl], d                                    ; $6DA0: $72
    ld h, l                                       ; $6DA1: $65
    jr nz, @+$63                                  ; $6DA2: $20 $61

    ld [hl], d                                    ; $6DA4: $72
    ld h, l                                       ; $6DA5: $65
    rst $38                                       ; $6DA6: $FF
    ld h, c                                       ; $6DA7: $61
    jr nz, jr_015_6E16                            ; $6DA8: $20 $6C

    ld l, a                                       ; $6DAA: $6F
    ld [hl], h                                    ; $6DAB: $74
    jr nz, jr_015_6E1D                            ; $6DAC: $20 $6F

    ld h, [hl]                                    ; $6DAE: $66
    jr nz, jr_015_6E25                            ; $6DAF: $20 $74

    ld l, b                                       ; $6DB1: $68
    ld h, l                                       ; $6DB2: $65
    ld [hl], e                                    ; $6DB3: $73
    ld h, l                                       ; $6DB4: $65
    cp $61                                        ; $6DB5: $FE $61
    ld [hl], d                                    ; $6DB7: $72
    ld l, a                                       ; $6DB8: $6F
    ld [hl], l                                    ; $6DB9: $75
    ld l, [hl]                                    ; $6DBA: $6E
    ld h, h                                       ; $6DBB: $64
    jr nz, @+$6A                                  ; $6DBC: $20 $68

    ld h, l                                       ; $6DBE: $65
    ld [hl], d                                    ; $6DBF: $72
    ld h, l                                       ; $6DC0: $65
    ld l, $2E                                     ; $6DC1: $2E $2E
    ld l, $FE                                     ; $6DC3: $2E $FE
    db $FD                                        ; $6DC5: $FD
    sbc d                                         ; $6DC6: $9A
    ld b, d                                       ; $6DC7: $42
    sbc e                                         ; $6DC8: $9B
    ld a, b                                       ; $6DC9: $78

jr_015_6DCA:
    ld [hl], b                                    ; $6DCA: $70
    sbc a                                         ; $6DCB: $9F
    ld c, b                                       ; $6DCC: $48
    ld l, l                                       ; $6DCD: $6D
    ld l, l                                       ; $6DCE: $6D
    ld l, l                                       ; $6DCF: $6D
    ld l, l                                       ; $6DD0: $6D
    ld l, $2E                                     ; $6DD1: $2E $2E
    ld l, $FE                                     ; $6DD3: $2E $FE
    db $FD                                        ; $6DD5: $FD
    sbc d                                         ; $6DD6: $9A
    sbc a                                         ; $6DD7: $9F
    dec l                                         ; $6DD8: $2D
    ld b, e                                       ; $6DD9: $43
    ld d, d                                       ; $6DDA: $52

jr_015_6DDB:
    ld b, c                                       ; $6DDB: $41
    ld c, e                                       ; $6DDC: $4B
    ld c, e                                       ; $6DDD: $4B
    dec l                                         ; $6DDE: $2D
    cp $FD                                        ; $6DDF: $FE $FD
    sbc e                                         ; $6DE1: $9B
    ld a, b                                       ; $6DE2: $78
    ld [hl], b                                    ; $6DE3: $70
    sbc a                                         ; $6DE4: $9F
    ld c, a                                       ; $6DE5: $4F
    ld l, a                                       ; $6DE6: $6F
    ld [hl], b                                    ; $6DE7: $70
    ld [hl], e                                    ; $6DE8: $73

jr_015_6DE9:
    ld l, $20                                     ; $6DE9: $2E $20
    ld b, d                                       ; $6DEB: $42
    ld h, l                                       ; $6DEC: $65
    ld [hl], h                                    ; $6DED: $74
    ld [hl], h                                    ; $6DEE: $74
    ld h, l                                       ; $6DEF: $65
    ld [hl], d                                    ; $6DF0: $72
    rst $38                                       ; $6DF1: $FF
    ld h, d                                       ; $6DF2: $62
    ld h, l                                       ; $6DF3: $65
    jr nz, jr_015_6E59                            ; $6DF4: $20 $63

    ld h, c                                       ; $6DF6: $61

jr_015_6DF7:
    ld [hl], d                                    ; $6DF7: $72
    ld h, l                                       ; $6DF8: $65
    ld h, [hl]                                    ; $6DF9: $66
    ld [hl], l                                    ; $6DFA: $75
    ld l, h                                       ; $6DFB: $6C
    ld l, $FE                                     ; $6DFC: $2E $FE

jr_015_6DFE:
    db $FD                                        ; $6DFE: $FD
    sbc d                                         ; $6DFF: $9A
    ld b, d                                       ; $6E00: $42
    xor h                                         ; $6E01: $AC
    or d                                          ; $6E02: $B2
    and d                                         ; $6E03: $A2
    ld bc, $6593                                  ; $6E04: $01 $93 $65
    ld l, l                                       ; $6E07: $6D
    ld c, e                                       ; $6E08: $4B
    ld c, a                                       ; $6E09: $4F
    ld l, c                                       ; $6E0A: $69
    ret                                           ; $6E0B: $C9


    ld c, c                                       ; $6E0C: $49
    ld h, h                                       ; $6E0D: $64
    ret nz                                        ; $6E0E: $C0

    ld c, c                                       ; $6E0F: $49
    ld b, e                                       ; $6E10: $43
    db $10                                        ; $6E11: $10

jr_015_6E12:
    inc b                                         ; $6E12: $04
    dec b                                         ; $6E13: $05
    jr jr_015_6E2B                                ; $6E14: $18 $15

jr_015_6E16:
    ld c, c                                       ; $6E16: $49
    ld l, [hl]                                    ; $6E17: $6E
    dec b                                         ; $6E18: $05
    jr nz, jr_015_6DE9                            ; $6E19: $20 $CE

    ld h, e                                       ; $6E1B: $63
    ld a, [bc]                                    ; $6E1C: $0A

jr_015_6E1D:
    add hl, bc                                    ; $6E1D: $09
    ld c, d                                       ; $6E1E: $4A
    jp nc, $2200                                  ; $6E1F: $D2 $00 $22

    jp c, $1540                                   ; $6E22: $DA $40 $15

jr_015_6E25:
    ld b, $6A                                     ; $6E25: $06 $6A
    dec b                                         ; $6E27: $05
    rra                                           ; $6E28: $1F
    adc $63                                       ; $6E29: $CE $63

jr_015_6E2B:
    ld a, [bc]                                    ; $6E2B: $0A
    add hl, bc                                    ; $6E2C: $09
    ld c, d                                       ; $6E2D: $4A
    jp nc, $2200                                  ; $6E2E: $D2 $00 $22

    jp c, $1540                                   ; $6E31: $DA $40 $15

    ld b, $6A                                     ; $6E34: $06 $6A
    dec bc                                        ; $6E36: $0B
    jr nz, @+$0D                                  ; $6E37: $20 $0B

    rra                                           ; $6E39: $1F
    ld l, e                                       ; $6E3A: $6B
    inc [hl]                                      ; $6E3B: $34
    dec c                                         ; $6E3C: $0D
    jr nc, jr_015_6EA9                            ; $6E3D: $30 $6A

    nop                                           ; $6E3F: $00
    add b                                         ; $6E40: $80
    nop                                           ; $6E41: $00
    ld sp, $0115                                  ; $6E42: $31 $15 $01
    ld l, [hl]                                    ; $6E45: $6E
    ld [hl+], a                                   ; $6E46: $22
    adc $40                                       ; $6E47: $CE $40
    ld b, l                                       ; $6E49: $45
    ld [hl+], a                                   ; $6E4A: $22
    sub d                                         ; $6E4B: $92
    ld b, c                                       ; $6E4C: $41
    sub e                                         ; $6E4D: $93
    ld h, l                                       ; $6E4E: $65
    ld l, l                                       ; $6E4F: $6D
    ld c, e                                       ; $6E50: $4B
    ld c, a                                       ; $6E51: $4F
    add h                                         ; $6E52: $84
    inc sp                                        ; $6E53: $33
    ld [hl+], a                                   ; $6E54: $22
    ld l, a                                       ; $6E55: $6F
    rlca                                          ; $6E56: $07
    rst $38                                       ; $6E57: $FF
    ld a, a                                       ; $6E58: $7F

jr_015_6E59:
    sub h                                         ; $6E59: $94
    halt                                          ; $6E5A: $76
    ld h, b                                       ; $6E5B: $60
    rlca                                          ; $6E5C: $07
    ld a, b                                       ; $6E5D: $78
    inc a                                         ; $6E5E: $3C
    ld c, [hl]                                    ; $6E5F: $4E
    ld a, h                                       ; $6E60: $7C
    rlca                                          ; $6E61: $07
    ld b, b                                       ; $6E62: $40
    ld b, b                                       ; $6E63: $40
    halt                                          ; $6E64: $76
    ldh [rTAC], a                                 ; $6E65: $E0 $07
    ld b, l                                       ; $6E67: $45
    dec d                                         ; $6E68: $15
    ld l, e                                       ; $6E69: $6B
    ld l, [hl]                                    ; $6E6A: $6E
    sub e                                         ; $6E6B: $93
    ld h, l                                       ; $6E6C: $65
    ld l, l                                       ; $6E6D: $6D
    ld c, e                                       ; $6E6E: $4B
    ld c, a                                       ; $6E6F: $4F
    add h                                         ; $6E70: $84
    dec bc                                        ; $6E71: $0B
    ld c, $94                                     ; $6E72: $0E $94
    ld a, b                                       ; $6E74: $78
    inc a                                         ; $6E75: $3C
    ld c, [hl]                                    ; $6E76: $4E
    ld a, h                                       ; $6E77: $7C
    rlca                                          ; $6E78: $07
    ld b, b                                       ; $6E79: $40
    ld b, b                                       ; $6E7A: $40
    halt                                          ; $6E7B: $76
    ldh [rTAC], a                                 ; $6E7C: $E0 $07
    ld b, l                                       ; $6E7E: $45
    dec d                                         ; $6E7F: $15
    add d                                         ; $6E80: $82
    ld l, [hl]                                    ; $6E81: $6E
    sub e                                         ; $6E82: $93
    ld h, l                                       ; $6E83: $65
    ld l, l                                       ; $6E84: $6D
    ld c, e                                       ; $6E85: $4B
    ld c, a                                       ; $6E86: $4F
    add h                                         ; $6E87: $84
    inc l                                         ; $6E88: $2C
    dec c                                         ; $6E89: $0D
    sub h                                         ; $6E8A: $94
    ld a, b                                       ; $6E8B: $78
    inc a                                         ; $6E8C: $3C
    ld c, [hl]                                    ; $6E8D: $4E
    ld a, h                                       ; $6E8E: $7C
    rlca                                          ; $6E8F: $07
    ld b, b                                       ; $6E90: $40
    ld b, b                                       ; $6E91: $40
    halt                                          ; $6E92: $76
    ldh [rTAC], a                                 ; $6E93: $E0 $07
    ld b, l                                       ; $6E95: $45
    dec d                                         ; $6E96: $15
    adc l                                         ; $6E97: $8D
    ld [hl], h                                    ; $6E98: $74
    ld bc, $0539                                  ; $6E99: $01 $39 $05
    ld b, l                                       ; $6E9C: $45
    dec d                                         ; $6E9D: $15
    ld bc, $016E                                  ; $6E9E: $01 $6E $01
    add hl, bc                                    ; $6EA1: $09
    ld de, $1545                                  ; $6EA2: $11 $45 $15
    rrca                                          ; $6EA5: $0F
    ld l, e                                       ; $6EA6: $6B
    sbc e                                         ; $6EA7: $9B
    ld l, b                                       ; $6EA8: $68

jr_015_6EA9:
    ld a, e                                       ; $6EA9: $7B
    sbc a                                         ; $6EAA: $9F
    ld hl, $2121                                  ; $6EAB: $21 $21 $21
    cp $FD                                        ; $6EAE: $FE $FD
    sbc d                                         ; $6EB0: $9A
    ld e, b                                       ; $6EB1: $58
    ld bc, $9B42                                  ; $6EB2: $01 $42 $9B
    jr z, jr_015_6F2C                             ; $6EB5: $28 $75

    sbc a                                         ; $6EB7: $9F
    ld d, h                                       ; $6EB8: $54
    ld l, a                                       ; $6EB9: $6F
    ld l, [hl]                                    ; $6EBA: $6E
    ld a, c                                       ; $6EBB: $79
    inc l                                         ; $6EBC: $2C
    jr nz, @+$79                                  ; $6EBD: $20 $77

    ld l, b                                       ; $6EBF: $68
    ld h, c                                       ; $6EC0: $61
    ld [hl], h                                    ; $6EC1: $74
    rst $38                                       ; $6EC2: $FF
    ld l, b                                       ; $6EC3: $68
    ld h, c                                       ; $6EC4: $61
    ld [hl], b                                    ; $6EC5: $70
    ld [hl], b                                    ; $6EC6: $70
    ld h, l                                       ; $6EC7: $65
    ld l, [hl]                                    ; $6EC8: $6E
    ld h, l                                       ; $6EC9: $65
    ld h, h                                       ; $6ECA: $64
    ccf                                           ; $6ECB: $3F
    cp $57                                        ; $6ECC: $FE $57
    ld l, b                                       ; $6ECE: $68
    ld h, l                                       ; $6ECF: $65
    ld [hl], d                                    ; $6ED0: $72
    ld h, l                                       ; $6ED1: $65
    jr nz, jr_015_6F35                            ; $6ED2: $20 $61

    ld [hl], d                                    ; $6ED4: $72
    ld h, l                                       ; $6ED5: $65
    jr nz, jr_015_6F4F                            ; $6ED6: $20 $77

    ld h, l                                       ; $6ED8: $65
    ccf                                           ; $6ED9: $3F
    cp $FD                                        ; $6EDA: $FE $FD
    sbc e                                         ; $6EDC: $9B
    ld a, b                                       ; $6EDD: $78
    ld [hl], b                                    ; $6EDE: $70
    sbc a                                         ; $6EDF: $9F
    ld d, h                                       ; $6EE0: $54
    ld l, b                                       ; $6EE1: $68
    ld l, c                                       ; $6EE2: $69
    ld [hl], e                                    ; $6EE3: $73
    jr nz, jr_015_6F4F                            ; $6EE4: $20 $69

    ld [hl], e                                    ; $6EE6: $73
    jr nz, jr_015_6F5D                            ; $6EE7: $20 $74

    ld l, b                                       ; $6EE9: $68
    ld h, l                                       ; $6EEA: $65
    rst $38                                       ; $6EEB: $FF
    ld b, e                                       ; $6EEC: $43
    ld l, a                                       ; $6EED: $6F
    ld [hl], d                                    ; $6EEE: $72
    ld h, l                                       ; $6EEF: $65
    ld l, $FE                                     ; $6EF0: $2E $FE
    db $FD                                        ; $6EF2: $FD
    sbc e                                         ; $6EF3: $9B
    jr z, jr_015_6F6B                             ; $6EF4: $28 $75

    sbc a                                         ; $6EF6: $9F
    ld d, h                                       ; $6EF7: $54
    ld l, b                                       ; $6EF8: $68
    ld h, l                                       ; $6EF9: $65
    ld l, $2E                                     ; $6EFA: $2E $2E
    ld l, $20                                     ; $6EFC: $2E $20
    ld b, e                                       ; $6EFE: $43
    ld l, a                                       ; $6EFF: $6F
    ld [hl], d                                    ; $6F00: $72
    ld h, l                                       ; $6F01: $65
    ccf                                           ; $6F02: $3F
    cp $54                                        ; $6F03: $FE $54
    ld l, b                                       ; $6F05: $68
    ld h, l                                       ; $6F06: $65
    jr nz, jr_015_6F75                            ; $6F07: $20 $6C

    ld h, c                                       ; $6F09: $61
    ld [hl], e                                    ; $6F0A: $73
    ld [hl], h                                    ; $6F0B: $74
    jr nz, jr_015_6F82                            ; $6F0C: $20 $74

    ld l, b                                       ; $6F0E: $68
    ld l, c                                       ; $6F0F: $69
    ld l, [hl]                                    ; $6F10: $6E
    ld h, a                                       ; $6F11: $67
    rst $38                                       ; $6F12: $FF
    ld c, c                                       ; $6F13: $49
    jr nz, jr_015_6F88                            ; $6F14: $20 $72

    ld h, l                                       ; $6F16: $65
    ld l, l                                       ; $6F17: $6D
    ld h, l                                       ; $6F18: $65
    ld l, l                                       ; $6F19: $6D
    ld h, d                                       ; $6F1A: $62
    ld h, l                                       ; $6F1B: $65
    ld [hl], d                                    ; $6F1C: $72
    jr nz, jr_015_6F88                            ; $6F1D: $20 $69

    ld [hl], e                                    ; $6F1F: $73
    cp $61                                        ; $6F20: $FE $61
    ld [hl], h                                    ; $6F22: $74
    jr nz, jr_015_6F99                            ; $6F23: $20 $74

    ld l, b                                       ; $6F25: $68
    ld h, l                                       ; $6F26: $65
    jr nz, jr_015_6F99                            ; $6F27: $20 $70

    ld h, c                                       ; $6F29: $61
    ld [hl], d                                    ; $6F2A: $72
    ld [hl], h                                    ; $6F2B: $74

jr_015_6F2C:
    ld a, c                                       ; $6F2C: $79
    ld l, $2E                                     ; $6F2D: $2E $2E
    ld l, $FF                                     ; $6F2F: $2E $FF
    ld [hl], h                                    ; $6F31: $74
    ld l, b                                       ; $6F32: $68
    ld h, c                                       ; $6F33: $61
    ld [hl], h                                    ; $6F34: $74

jr_015_6F35:
    jr nz, jr_015_6F9D                            ; $6F35: $20 $66

    ld l, h                                       ; $6F37: $6C
    ld l, a                                       ; $6F38: $6F
    ld h, c                                       ; $6F39: $61
    ld [hl], h                                    ; $6F3A: $74
    ld l, c                                       ; $6F3B: $69
    ld l, [hl]                                    ; $6F3C: $6E
    ld h, a                                       ; $6F3D: $67
    cp $67                                        ; $6F3E: $FE $67
    ld [hl], l                                    ; $6F40: $75
    ld a, c                                       ; $6F41: $79
    jr nz, jr_015_6FB4                            ; $6F42: $20 $70

    ld l, a                                       ; $6F44: $6F
    ld l, c                                       ; $6F45: $69
    ld l, [hl]                                    ; $6F46: $6E
    ld [hl], h                                    ; $6F47: $74
    ld h, l                                       ; $6F48: $65
    ld h, h                                       ; $6F49: $64
    jr nz, jr_015_6FAD                            ; $6F4A: $20 $61

    ld [hl], h                                    ; $6F4C: $74
    rst $38                                       ; $6F4D: $FF
    ld l, l                                       ; $6F4E: $6D

jr_015_6F4F:
    ld h, l                                       ; $6F4F: $65
    jr nz, jr_015_6FB3                            ; $6F50: $20 $61

    ld l, [hl]                                    ; $6F52: $6E
    ld h, h                                       ; $6F53: $64
    ld l, $2E                                     ; $6F54: $2E $2E
    ld l, $FE                                     ; $6F56: $2E $FE
    ld [hl], h                                    ; $6F58: $74
    ld l, b                                       ; $6F59: $68
    ld h, c                                       ; $6F5A: $61
    ld [hl], h                                    ; $6F5B: $74
    daa                                           ; $6F5C: $27

jr_015_6F5D:
    ld [hl], e                                    ; $6F5D: $73
    jr nz, jr_015_6FC1                            ; $6F5E: $20 $61

    ld l, h                                       ; $6F60: $6C
    ld l, h                                       ; $6F61: $6C
    jr nz, jr_015_6FAD                            ; $6F62: $20 $49

    rst $38                                       ; $6F64: $FF
    ld [hl], d                                    ; $6F65: $72
    ld h, l                                       ; $6F66: $65
    ld l, l                                       ; $6F67: $6D
    ld h, l                                       ; $6F68: $65
    ld l, l                                       ; $6F69: $6D
    ld h, d                                       ; $6F6A: $62

jr_015_6F6B:
    ld h, l                                       ; $6F6B: $65
    ld [hl], d                                    ; $6F6C: $72
    ld l, $FE                                     ; $6F6D: $2E $FE
    db $FD                                        ; $6F6F: $FD
    sbc e                                         ; $6F70: $9B
    ld a, b                                       ; $6F71: $78
    ld [hl], b                                    ; $6F72: $70
    sbc a                                         ; $6F73: $9F
    ld c, c                                       ; $6F74: $49

jr_015_6F75:
    jr nz, @+$77                                  ; $6F75: $20 $75

    ld l, [hl]                                    ; $6F77: $6E
    ld h, h                                       ; $6F78: $64
    ld h, l                                       ; $6F79: $65
    ld [hl], d                                    ; $6F7A: $72
    ld [hl], e                                    ; $6F7B: $73
    ld [hl], h                                    ; $6F7C: $74
    ld h, c                                       ; $6F7D: $61
    ld l, [hl]                                    ; $6F7E: $6E
    ld h, h                                       ; $6F7F: $64
    rst $38                                       ; $6F80: $FF
    ld l, [hl]                                    ; $6F81: $6E

jr_015_6F82:
    ld l, a                                       ; $6F82: $6F
    ld [hl], a                                    ; $6F83: $77
    ld l, $2E                                     ; $6F84: $2E $2E
    ld l, $FE                                     ; $6F86: $2E $FE

jr_015_6F88:
    ld c, l                                       ; $6F88: $4D
    ld l, a                                       ; $6F89: $6F
    ld [hl], d                                    ; $6F8A: $72
    ld h, c                                       ; $6F8B: $61
    ld h, a                                       ; $6F8C: $67
    jr nz, jr_015_6FFF                            ; $6F8D: $20 $70

    ld [hl], d                                    ; $6F8F: $72
    ld l, a                                       ; $6F90: $6F
    ld h, d                                       ; $6F91: $62
    ld h, c                                       ; $6F92: $61
    ld h, d                                       ; $6F93: $62
    ld l, h                                       ; $6F94: $6C
    ld a, c                                       ; $6F95: $79
    rst $38                                       ; $6F96: $FF
    ld [hl], e                                    ; $6F97: $73
    ld h, l                                       ; $6F98: $65

jr_015_6F99:
    ld l, [hl]                                    ; $6F99: $6E
    ld [hl], h                                    ; $6F9A: $74
    jr nz, jr_015_7016                            ; $6F9B: $20 $79

jr_015_6F9D:
    ld l, a                                       ; $6F9D: $6F
    ld [hl], l                                    ; $6F9E: $75
    jr nz, jr_015_7009                            ; $6F9F: $20 $68

    ld h, l                                       ; $6FA1: $65
    ld [hl], d                                    ; $6FA2: $72
    ld h, l                                       ; $6FA3: $65
    inc l                                         ; $6FA4: $2C
    cp $61                                        ; $6FA5: $FE $61
    ld l, [hl]                                    ; $6FA7: $6E
    ld h, h                                       ; $6FA8: $64
    jr nz, @+$43                                  ; $6FA9: $20 $41

    ld h, a                                       ; $6FAB: $67
    ld [hl], d                                    ; $6FAC: $72

jr_015_6FAD:
    ld h, c                                       ; $6FAD: $61
    ld l, l                                       ; $6FAE: $6D
    rst $38                                       ; $6FAF: $FF
    ld [hl], h                                    ; $6FB0: $74
    ld [hl], l                                    ; $6FB1: $75
    ld [hl], d                                    ; $6FB2: $72

jr_015_6FB3:
    ld l, [hl]                                    ; $6FB3: $6E

jr_015_6FB4:
    ld h, l                                       ; $6FB4: $65
    ld h, h                                       ; $6FB5: $64
    jr nz, jr_015_7031                            ; $6FB6: $20 $79

    ld l, a                                       ; $6FB8: $6F
    ld [hl], l                                    ; $6FB9: $75
    jr nz, jr_015_7030                            ; $6FBA: $20 $74

    ld l, a                                       ; $6FBC: $6F
    cp $73                                        ; $6FBD: $FE $73
    ld [hl], h                                    ; $6FBF: $74
    ld l, a                                       ; $6FC0: $6F

jr_015_6FC1:
    ld l, [hl]                                    ; $6FC1: $6E
    ld h, l                                       ; $6FC2: $65
    ld l, $FE                                     ; $6FC3: $2E $FE
    db $FD                                        ; $6FC5: $FD
    sbc d                                         ; $6FC6: $9A
    ld e, b                                       ; $6FC7: $58
    ld [bc], a                                    ; $6FC8: $02
    ld b, d                                       ; $6FC9: $42
    sbc e                                         ; $6FCA: $9B
    jr z, jr_015_7042                             ; $6FCB: $28 $75

    sbc a                                         ; $6FCD: $9F
    ld c, l                                       ; $6FCE: $4D
    ld l, a                                       ; $6FCF: $6F
    ld [hl], d                                    ; $6FD0: $72
    ld h, c                                       ; $6FD1: $61
    ld h, a                                       ; $6FD2: $67
    ccf                                           ; $6FD3: $3F
    jr nz, jr_015_7017                            ; $6FD4: $20 $41

    ld h, a                                       ; $6FD6: $67
    ld [hl], d                                    ; $6FD7: $72
    ld h, c                                       ; $6FD8: $61
    ld l, l                                       ; $6FD9: $6D
    ccf                                           ; $6FDA: $3F
    cp $FD                                        ; $6FDB: $FE $FD
    sbc e                                         ; $6FDD: $9B
    ld a, b                                       ; $6FDE: $78
    ld [hl], b                                    ; $6FDF: $70
    sbc a                                         ; $6FE0: $9F
    ld c, [hl]                                    ; $6FE1: $4E
    ld h, l                                       ; $6FE2: $65
    halt                                          ; $6FE3: $76
    ld h, l                                       ; $6FE4: $65
    ld [hl], d                                    ; $6FE5: $72
    jr nz, jr_015_7055                            ; $6FE6: $20 $6D

    ld l, c                                       ; $6FE8: $69
    ld l, [hl]                                    ; $6FE9: $6E
    ld h, h                                       ; $6FEA: $64
    ld l, $FE                                     ; $6FEB: $2E $FE
    ld e, c                                       ; $6FED: $59
    ld l, a                                       ; $6FEE: $6F
    ld [hl], l                                    ; $6FEF: $75
    daa                                           ; $6FF0: $27
    ld [hl], d                                    ; $6FF1: $72
    ld h, l                                       ; $6FF2: $65
    jr nz, jr_015_7064                            ; $6FF3: $20 $6F

    ld l, e                                       ; $6FF5: $6B
    ld h, c                                       ; $6FF6: $61
    ld a, c                                       ; $6FF7: $79
    jr nz, jr_015_7068                            ; $6FF8: $20 $6E

    ld l, a                                       ; $6FFA: $6F
    ld [hl], a                                    ; $6FFB: $77
    rst $38                                       ; $6FFC: $FF
    ld [hl], h                                    ; $6FFD: $74
    ld l, b                                       ; $6FFE: $68

jr_015_6FFF:
    ld h, c                                       ; $6FFF: $61
    ld [hl], h                                    ; $7000: $74
    jr nz, jr_015_7077                            ; $7001: $20 $74

    ld l, b                                       ; $7003: $68
    ld h, l                                       ; $7004: $65
    jr nz, @+$76                                  ; $7005: $20 $74

    ld l, b                                       ; $7007: $68
    ld [hl], d                                    ; $7008: $72

jr_015_7009:
    ld h, l                                       ; $7009: $65
    ld h, c                                       ; $700A: $61
    ld [hl], h                                    ; $700B: $74
    cp $74                                        ; $700C: $FE $74
    ld l, a                                       ; $700E: $6F
    jr nz, @+$76                                  ; $700F: $20 $74

    ld l, b                                       ; $7011: $68
    ld h, l                                       ; $7012: $65
    jr nz, jr_015_708C                            ; $7013: $20 $77

    ld l, a                                       ; $7015: $6F

jr_015_7016:
    ld [hl], d                                    ; $7016: $72

jr_015_7017:
    ld l, h                                       ; $7017: $6C
    ld h, h                                       ; $7018: $64
    jr nz, jr_015_7084                            ; $7019: $20 $69

    ld [hl], e                                    ; $701B: $73
    rst $38                                       ; $701C: $FF
    ld h, a                                       ; $701D: $67
    ld l, a                                       ; $701E: $6F
    ld l, [hl]                                    ; $701F: $6E
    ld h, l                                       ; $7020: $65
    ld l, $FE                                     ; $7021: $2E $FE
    db $FD                                        ; $7023: $FD
    sbc d                                         ; $7024: $9A
    ld e, b                                       ; $7025: $58
    inc bc                                        ; $7026: $03
    ld b, d                                       ; $7027: $42
    sbc e                                         ; $7028: $9B
    jr z, jr_015_70A0                             ; $7029: $28 $75

    sbc a                                         ; $702B: $9F
    ld d, h                                       ; $702C: $54
    ld l, b                                       ; $702D: $68
    ld [hl], d                                    ; $702E: $72
    ld h, l                                       ; $702F: $65

jr_015_7030:
    ld h, c                                       ; $7030: $61

jr_015_7031:
    ld [hl], h                                    ; $7031: $74
    ld l, $2E                                     ; $7032: $2E $2E
    ld l, $20                                     ; $7034: $2E $20
    ld [hl], h                                    ; $7036: $74
    ld l, a                                       ; $7037: $6F
    rst $38                                       ; $7038: $FF
    ld [hl], h                                    ; $7039: $74
    ld l, b                                       ; $703A: $68
    ld h, l                                       ; $703B: $65
    jr nz, jr_015_70B5                            ; $703C: $20 $77

    ld l, a                                       ; $703E: $6F
    ld [hl], d                                    ; $703F: $72
    ld l, h                                       ; $7040: $6C
    ld h, h                                       ; $7041: $64

jr_015_7042:
    ccf                                           ; $7042: $3F
    cp $FD                                        ; $7043: $FE $FD
    sbc e                                         ; $7045: $9B
    ld a, b                                       ; $7046: $78
    ld [hl], b                                    ; $7047: $70
    sbc a                                         ; $7048: $9F
    ld e, c                                       ; $7049: $59
    ld h, l                                       ; $704A: $65
    ld h, c                                       ; $704B: $61
    ld l, b                                       ; $704C: $68
    ld l, $FE                                     ; $704D: $2E $FE
    db $FD                                        ; $704F: $FD
    sbc e                                         ; $7050: $9B
    jr z, jr_015_70C8                             ; $7051: $28 $75

    sbc a                                         ; $7053: $9F
    ld d, a                                       ; $7054: $57

jr_015_7055:
    ld l, a                                       ; $7055: $6F
    ld [hl], a                                    ; $7056: $77
    ld l, $FE                                     ; $7057: $2E $FE
    ld c, c                                       ; $7059: $49
    jr nz, jr_015_70C0                            ; $705A: $20 $64

    ld l, a                                       ; $705C: $6F
    ld l, [hl]                                    ; $705D: $6E
    daa                                           ; $705E: $27
    ld [hl], h                                    ; $705F: $74
    jr nz, jr_015_70C7                            ; $7060: $20 $65

    halt                                          ; $7062: $76
    ld h, l                                       ; $7063: $65

jr_015_7064:
    ld l, [hl]                                    ; $7064: $6E
    rst $38                                       ; $7065: $FF
    ld [hl], a                                    ; $7066: $77
    ld h, c                                       ; $7067: $61

jr_015_7068:
    ld l, [hl]                                    ; $7068: $6E
    ld [hl], h                                    ; $7069: $74
    jr nz, jr_015_70E0                            ; $706A: $20 $74

    ld l, a                                       ; $706C: $6F
    jr nz, jr_015_70DA                            ; $706D: $20 $6B

    ld l, [hl]                                    ; $706F: $6E
    ld l, a                                       ; $7070: $6F
    ld [hl], a                                    ; $7071: $77
    ld l, $FE                                     ; $7072: $2E $FE
    db $FD                                        ; $7074: $FD
    sbc d                                         ; $7075: $9A
    ld e, b                                       ; $7076: $58

jr_015_7077:
    inc b                                         ; $7077: $04
    ld b, d                                       ; $7078: $42
    sbc e                                         ; $7079: $9B
    jr z, jr_015_70F1                             ; $707A: $28 $75

    sbc a                                         ; $707C: $9F
    ld c, c                                       ; $707D: $49
    ld [hl], e                                    ; $707E: $73
    jr nz, jr_015_70F5                            ; $707F: $20 $74

    ld l, b                                       ; $7081: $68
    ld h, c                                       ; $7082: $61
    ld [hl], h                                    ; $7083: $74

jr_015_7084:
    jr nz, jr_015_70FA                            ; $7084: $20 $74

    ld l, b                                       ; $7086: $68
    ld h, l                                       ; $7087: $65
    jr nz, @+$79                                  ; $7088: $20 $77

    ld h, c                                       ; $708A: $61
    ld a, c                                       ; $708B: $79

jr_015_708C:
    rst $38                                       ; $708C: $FF
    ld l, a                                       ; $708D: $6F
    ld [hl], l                                    ; $708E: $75
    ld [hl], h                                    ; $708F: $74
    jr nz, @+$71                                  ; $7090: $20 $6F

    ld h, [hl]                                    ; $7092: $66
    jr nz, jr_015_70FD                            ; $7093: $20 $68

    ld h, l                                       ; $7095: $65
    ld [hl], d                                    ; $7096: $72
    ld h, l                                       ; $7097: $65
    ccf                                           ; $7098: $3F
    cp $FD                                        ; $7099: $FE $FD
    ld e, b                                       ; $709B: $58
    ld [hl-], a                                   ; $709C: $32
    sbc e                                         ; $709D: $9B
    ld a, b                                       ; $709E: $78
    ld [hl], b                                    ; $709F: $70

jr_015_70A0:
    sbc a                                         ; $70A0: $9F
    ld d, l                                       ; $70A1: $55
    ld c, b                                       ; $70A2: $48
    ld c, b                                       ; $70A3: $48
    ld c, b                                       ; $70A4: $48
    ld l, $2E                                     ; $70A5: $2E $2E
    ld l, $20                                     ; $70A7: $2E $20
    ld c, [hl]                                    ; $70A9: $4E
    ld c, a                                       ; $70AA: $4F
    ld hl, $FE21                                  ; $70AB: $21 $21 $FE
    ld c, [hl]                                    ; $70AE: $4E
    ld c, a                                       ; $70AF: $4F
    inc l                                         ; $70B0: $2C
    jr nz, jr_015_7121                            ; $70B1: $20 $6E

    ld l, a                                       ; $70B3: $6F
    inc l                                         ; $70B4: $2C

jr_015_70B5:
    jr nz, jr_015_7125                            ; $70B5: $20 $6E

    ld l, a                                       ; $70B7: $6F
    ld l, $FE                                     ; $70B8: $2E $FE
    ld d, h                                       ; $70BA: $54
    ld l, b                                       ; $70BB: $68
    ld h, l                                       ; $70BC: $65
    jr nz, jr_015_7136                            ; $70BD: $20 $77

    ld h, c                                       ; $70BF: $61

jr_015_70C0:
    ld a, c                                       ; $70C0: $79
    jr nz, jr_015_7132                            ; $70C1: $20 $6F

    ld [hl], l                                    ; $70C3: $75
    ld [hl], h                                    ; $70C4: $74
    jr nz, jr_015_7130                            ; $70C5: $20 $69

jr_015_70C7:
    ld [hl], e                                    ; $70C7: $73

jr_015_70C8:
    rst $38                                       ; $70C8: $FF
    ld d, h                                       ; $70C9: $54
    ld c, b                                       ; $70CA: $48
    ld b, c                                       ; $70CB: $41
    ld d, h                                       ; $70CC: $54
    jr nz, jr_015_7146                            ; $70CD: $20 $77

    ld h, c                                       ; $70CF: $61
    ld a, c                                       ; $70D0: $79
    ld l, $FE                                     ; $70D1: $2E $FE
    db $FD                                        ; $70D3: $FD
    sbc e                                         ; $70D4: $9B
    jr z, jr_015_714C                             ; $70D5: $28 $75

    sbc a                                         ; $70D7: $9F
    ld c, a                                       ; $70D8: $4F
    ld l, b                                       ; $70D9: $68

jr_015_70DA:
    ld l, $20                                     ; $70DA: $2E $20
    ld d, h                                       ; $70DC: $54
    ld l, b                                       ; $70DD: $68
    ld h, c                                       ; $70DE: $61
    ld l, [hl]                                    ; $70DF: $6E

jr_015_70E0:
    ld l, e                                       ; $70E0: $6B
    ld [hl], e                                    ; $70E1: $73
    ld l, $FE                                     ; $70E2: $2E $FE
    ld d, e                                       ; $70E4: $53
    ld h, l                                       ; $70E5: $65
    ld h, l                                       ; $70E6: $65
    jr nz, jr_015_7162                            ; $70E7: $20 $79

    ld l, a                                       ; $70E9: $6F
    ld [hl], l                                    ; $70EA: $75
    jr nz, jr_015_7159                            ; $70EB: $20 $6C

    ld h, c                                       ; $70ED: $61
    ld [hl], h                                    ; $70EE: $74
    ld h, l                                       ; $70EF: $65
    ld [hl], d                                    ; $70F0: $72

jr_015_70F1:
    ld l, $FE                                     ; $70F1: $2E $FE
    db $FD                                        ; $70F3: $FD
    sbc d                                         ; $70F4: $9A

jr_015_70F5:
    ld e, b                                       ; $70F5: $58
    dec b                                         ; $70F6: $05
    ld b, d                                       ; $70F7: $42
    sbc e                                         ; $70F8: $9B
    ld l, b                                       ; $70F9: $68

jr_015_70FA:
    ld a, e                                       ; $70FA: $7B
    sbc a                                         ; $70FB: $9F
    ld d, h                                       ; $70FC: $54

jr_015_70FD:
    ld l, b                                       ; $70FD: $68
    ld h, c                                       ; $70FE: $61
    ld [hl], h                                    ; $70FF: $74
    jr nz, jr_015_7179                            ; $7100: $20 $77

    ld h, c                                       ; $7102: $61
    ld [hl], e                                    ; $7103: $73
    jr nz, jr_015_7169                            ; $7104: $20 $63

    ld l, h                                       ; $7106: $6C
    ld l, a                                       ; $7107: $6F
    ld [hl], e                                    ; $7108: $73
    ld h, l                                       ; $7109: $65
    ld l, $FE                                     ; $710A: $2E $FE
    ld d, h                                       ; $710C: $54
    ld l, b                                       ; $710D: $68
    ld h, c                                       ; $710E: $61
    ld l, [hl]                                    ; $710F: $6E
    ld l, e                                       ; $7110: $6B
    jr nz, jr_015_718C                            ; $7111: $20 $79

    ld l, a                                       ; $7113: $6F
    ld [hl], l                                    ; $7114: $75
    inc l                                         ; $7115: $2C
    rst $38                                       ; $7116: $FF
    ld c, e                                       ; $7117: $4B
    ld a, c                                       ; $7118: $79
    ld [hl], d                                    ; $7119: $72
    ld l, a                                       ; $711A: $6F
    ld [hl], e                                    ; $711B: $73
    ld l, $FE                                     ; $711C: $2E $FE
    db $FD                                        ; $711E: $FD
    sbc e                                         ; $711F: $9B
    ld a, b                                       ; $7120: $78

jr_015_7121:
    ld [hl], b                                    ; $7121: $70
    sbc a                                         ; $7122: $9F
    ld c, c                                       ; $7123: $49
    ld [hl], h                                    ; $7124: $74

jr_015_7125:
    daa                                           ; $7125: $27
    ld [hl], e                                    ; $7126: $73
    jr nz, jr_015_719D                            ; $7127: $20 $74

    ld l, b                                       ; $7129: $68
    ld h, l                                       ; $712A: $65
    jr nz, jr_015_7199                            ; $712B: $20 $6C

    ld h, l                                       ; $712D: $65
    ld h, c                                       ; $712E: $61
    ld [hl], e                                    ; $712F: $73

jr_015_7130:
    ld [hl], h                                    ; $7130: $74
    rst $38                                       ; $7131: $FF

jr_015_7132:
    ld c, c                                       ; $7132: $49
    jr nz, @+$65                                  ; $7133: $20 $63

    ld h, c                                       ; $7135: $61

jr_015_7136:
    ld l, [hl]                                    ; $7136: $6E
    jr nz, jr_015_719D                            ; $7137: $20 $64

    ld l, a                                       ; $7139: $6F
    ld l, $FE                                     ; $713A: $2E $FE
    db $FD                                        ; $713C: $FD
    sbc e                                         ; $713D: $9B
    ld l, b                                       ; $713E: $68
    ld a, e                                       ; $713F: $7B
    sbc a                                         ; $7140: $9F
    ld c, c                                       ; $7141: $49
    daa                                           ; $7142: $27
    ld l, l                                       ; $7143: $6D
    jr nz, jr_015_71AD                            ; $7144: $20 $67

jr_015_7146:
    ld l, h                                       ; $7146: $6C
    ld h, c                                       ; $7147: $61
    ld h, h                                       ; $7148: $64
    jr nz, jr_015_71C4                            ; $7149: $20 $79

    ld l, a                                       ; $714B: $6F

jr_015_714C:
    ld [hl], l                                    ; $714C: $75
    rst $38                                       ; $714D: $FF
    ld [hl], a                                    ; $714E: $77
    ld l, c                                       ; $714F: $69
    ld l, h                                       ; $7150: $6C
    ld l, h                                       ; $7151: $6C
    jr nz, jr_015_71C6                            ; $7152: $20 $72

    ld h, l                                       ; $7154: $65
    ld [hl], e                                    ; $7155: $73
    ld [hl], b                                    ; $7156: $70
    ld h, l                                       ; $7157: $65
    ld h, e                                       ; $7158: $63

jr_015_7159:
    ld [hl], h                                    ; $7159: $74
    cp $6F                                        ; $715A: $FE $6F
    ld [hl], l                                    ; $715C: $75
    ld [hl], d                                    ; $715D: $72
    jr nz, jr_015_71D7                            ; $715E: $20 $77

    ld l, c                                       ; $7160: $69
    ld [hl], e                                    ; $7161: $73

jr_015_7162:
    ld l, b                                       ; $7162: $68
    jr nz, jr_015_71D9                            ; $7163: $20 $74

    ld l, a                                       ; $7165: $6F
    rst $38                                       ; $7166: $FF
    ld [hl], d                                    ; $7167: $72
    ld h, l                                       ; $7168: $65

jr_015_7169:
    ld l, l                                       ; $7169: $6D
    ld h, c                                       ; $716A: $61
    ld l, c                                       ; $716B: $69
    ld l, [hl]                                    ; $716C: $6E
    jr nz, jr_015_71D7                            ; $716D: $20 $68

    ld l, c                                       ; $716F: $69
    ld h, h                                       ; $7170: $64
    ld h, h                                       ; $7171: $64
    ld h, l                                       ; $7172: $65
    ld l, [hl]                                    ; $7173: $6E
    ld l, $FE                                     ; $7174: $2E $FE
    db $FD                                        ; $7176: $FD
    sbc e                                         ; $7177: $9B
    ld a, b                                       ; $7178: $78

jr_015_7179:
    ld [hl], b                                    ; $7179: $70
    sbc a                                         ; $717A: $9F
    ld e, c                                       ; $717B: $59
    ld l, a                                       ; $717C: $6F
    ld [hl], l                                    ; $717D: $75
    ld [hl], d                                    ; $717E: $72
    jr nz, @+$75                                  ; $717F: $20 $73

    ld h, l                                       ; $7181: $65
    ld h, e                                       ; $7182: $63
    ld [hl], d                                    ; $7183: $72
    ld h, l                                       ; $7184: $65
    ld [hl], h                                    ; $7185: $74
    rst $38                                       ; $7186: $FF
    ld l, c                                       ; $7187: $69
    ld [hl], e                                    ; $7188: $73
    jr nz, jr_015_71FE                            ; $7189: $20 $73

    ld h, c                                       ; $718B: $61

jr_015_718C:
    ld h, [hl]                                    ; $718C: $66
    ld h, l                                       ; $718D: $65
    jr nz, jr_015_7207                            ; $718E: $20 $77

    ld l, c                                       ; $7190: $69
    ld [hl], h                                    ; $7191: $74
    ld l, b                                       ; $7192: $68
    cp $6D                                        ; $7193: $FE $6D
    ld h, l                                       ; $7195: $65
    inc l                                         ; $7196: $2C
    jr nz, jr_015_71E6                            ; $7197: $20 $4D

jr_015_7199:
    ld h, c                                       ; $7199: $61
    ld l, d                                       ; $719A: $6A
    ld h, l                                       ; $719B: $65
    ld [hl], e                                    ; $719C: $73

jr_015_719D:
    ld [hl], h                                    ; $719D: $74
    ld a, c                                       ; $719E: $79
    ld l, $FE                                     ; $719F: $2E $FE
    db $FD                                        ; $71A1: $FD
    sbc e                                         ; $71A2: $9B
    ld l, b                                       ; $71A3: $68
    ld a, e                                       ; $71A4: $7B
    sbc a                                         ; $71A5: $9F
    ld c, c                                       ; $71A6: $49
    jr nz, jr_015_720A                            ; $71A7: $20 $61

    ld l, l                                       ; $71A9: $6D
    jr nz, @+$6B                                  ; $71AA: $20 $69

    ld l, [hl]                                    ; $71AC: $6E

jr_015_71AD:
    ld h, h                                       ; $71AD: $64
    ld h, l                                       ; $71AE: $65
    ld h, d                                       ; $71AF: $62
    ld [hl], h                                    ; $71B0: $74
    ld h, l                                       ; $71B1: $65
    ld h, h                                       ; $71B2: $64
    rst $38                                       ; $71B3: $FF
    ld [hl], h                                    ; $71B4: $74
    ld l, a                                       ; $71B5: $6F
    jr nz, @+$7B                                  ; $71B6: $20 $79

    ld l, a                                       ; $71B8: $6F
    ld [hl], l                                    ; $71B9: $75
    ld l, $FE                                     ; $71BA: $2E $FE
    db $FD                                        ; $71BC: $FD
    sbc d                                         ; $71BD: $9A
    ld e, b                                       ; $71BE: $58
    ld b, $42                                     ; $71BF: $06 $42
    sbc e                                         ; $71C1: $9B
    ld l, b                                       ; $71C2: $68
    ld a, e                                       ; $71C3: $7B

jr_015_71C4:
    sbc a                                         ; $71C4: $9F
    ld d, a                                       ; $71C5: $57

jr_015_71C6:
    ld h, l                                       ; $71C6: $65
    ld l, h                                       ; $71C7: $6C
    ld l, h                                       ; $71C8: $6C
    inc l                                         ; $71C9: $2C
    jr nz, jr_015_7240                            ; $71CA: $20 $74

    ld l, b                                       ; $71CC: $68
    ld h, l                                       ; $71CD: $65
    rst $38                                       ; $71CE: $FF
    ld [hl], b                                    ; $71CF: $70
    ld [hl], d                                    ; $71D0: $72
    ld l, a                                       ; $71D1: $6F
    ld [hl], b                                    ; $71D2: $70
    ld l, b                                       ; $71D3: $68
    ld h, l                                       ; $71D4: $65
    ld h, e                                       ; $71D5: $63
    ld a, c                                       ; $71D6: $79

jr_015_71D7:
    jr nz, jr_015_7241                            ; $71D7: $20 $68

jr_015_71D9:
    ld h, c                                       ; $71D9: $61
    ld [hl], e                                    ; $71DA: $73
    cp $6E                                        ; $71DB: $FE $6E
    ld l, a                                       ; $71DD: $6F
    ld [hl], a                                    ; $71DE: $77
    jr nz, jr_015_7243                            ; $71DF: $20 $62

    ld h, l                                       ; $71E1: $65
    ld h, l                                       ; $71E2: $65
    ld l, [hl]                                    ; $71E3: $6E
    rst $38                                       ; $71E4: $FF
    ld h, [hl]                                    ; $71E5: $66

jr_015_71E6:
    ld [hl], l                                    ; $71E6: $75
    ld l, h                                       ; $71E7: $6C
    ld h, [hl]                                    ; $71E8: $66
    ld l, c                                       ; $71E9: $69
    ld l, h                                       ; $71EA: $6C
    ld l, h                                       ; $71EB: $6C
    ld h, l                                       ; $71EC: $65
    ld h, h                                       ; $71ED: $64
    ld l, $FE                                     ; $71EE: $2E $FE
    ld c, [hl]                                    ; $71F0: $4E
    ld l, a                                       ; $71F1: $6F
    ld [hl], a                                    ; $71F2: $77
    jr nz, @+$76                                  ; $71F3: $20 $74

    ld l, b                                       ; $71F5: $68
    ld h, l                                       ; $71F6: $65
    ld [hl], d                                    ; $71F7: $72
    ld h, l                                       ; $71F8: $65
    jr nz, @+$6B                                  ; $71F9: $20 $69

    ld [hl], e                                    ; $71FB: $73
    rst $38                                       ; $71FC: $FF
    ld h, d                                       ; $71FD: $62

jr_015_71FE:
    ld [hl], l                                    ; $71FE: $75
    ld [hl], h                                    ; $71FF: $74
    jr nz, jr_015_7271                            ; $7200: $20 $6F

    ld l, [hl]                                    ; $7202: $6E
    ld h, l                                       ; $7203: $65
    jr nz, jr_015_727A                            ; $7204: $20 $74

    ld l, b                                       ; $7206: $68

jr_015_7207:
    ld l, c                                       ; $7207: $69
    ld l, [hl]                                    ; $7208: $6E
    ld h, a                                       ; $7209: $67

jr_015_720A:
    cp $72                                        ; $720A: $FE $72
    ld h, l                                       ; $720C: $65
    ld l, l                                       ; $720D: $6D
    ld h, c                                       ; $720E: $61
    ld l, c                                       ; $720F: $69
    ld l, [hl]                                    ; $7210: $6E
    ld l, c                                       ; $7211: $69
    ld l, [hl]                                    ; $7212: $6E
    ld h, a                                       ; $7213: $67
    ld l, $FE                                     ; $7214: $2E $FE
    db $FD                                        ; $7216: $FD
    sbc e                                         ; $7217: $9B
    ld a, b                                       ; $7218: $78
    ld [hl], b                                    ; $7219: $70
    sbc a                                         ; $721A: $9F
    ld d, a                                       ; $721B: $57
    ld l, b                                       ; $721C: $68
    ld h, c                                       ; $721D: $61
    ld [hl], h                                    ; $721E: $74
    daa                                           ; $721F: $27
    ld [hl], e                                    ; $7220: $73
    jr nz, jr_015_7297                            ; $7221: $20 $74

    ld l, b                                       ; $7223: $68
    ld h, c                                       ; $7224: $61
    ld [hl], h                                    ; $7225: $74
    ccf                                           ; $7226: $3F
    cp $FD                                        ; $7227: $FE $FD
    sbc e                                         ; $7229: $9B
    ld l, b                                       ; $722A: $68
    ld a, e                                       ; $722B: $7B
    sbc a                                         ; $722C: $9F
    ld b, [hl]                                    ; $722D: $46
    ld l, a                                       ; $722E: $6F
    ld [hl], d                                    ; $722F: $72
    jr nz, jr_015_72AB                            ; $7230: $20 $79

    ld l, a                                       ; $7232: $6F
    ld [hl], l                                    ; $7233: $75
    jr nz, @+$76                                  ; $7234: $20 $74

    ld l, a                                       ; $7236: $6F
    rst $38                                       ; $7237: $FF
    ld [hl], d                                    ; $7238: $72
    ld h, l                                       ; $7239: $65
    ld [hl], h                                    ; $723A: $74
    ld [hl], l                                    ; $723B: $75
    ld [hl], d                                    ; $723C: $72
    ld l, [hl]                                    ; $723D: $6E
    jr nz, jr_015_72A8                            ; $723E: $20 $68

jr_015_7240:
    ld l, a                                       ; $7240: $6F

jr_015_7241:
    ld l, l                                       ; $7241: $6D
    ld h, l                                       ; $7242: $65

jr_015_7243:
    ld hl, $54FE                                  ; $7243: $21 $FE $54
    ld l, b                                       ; $7246: $68
    ld h, l                                       ; $7247: $65
    jr nz, @+$72                                  ; $7248: $20 $70

    ld h, c                                       ; $724A: $61
    ld [hl], h                                    ; $724B: $74
    ld l, b                                       ; $724C: $68
    jr nz, jr_015_72B8                            ; $724D: $20 $69

    ld [hl], e                                    ; $724F: $73
    rst $38                                       ; $7250: $FF
    ld [hl], d                                    ; $7251: $72
    ld l, c                                       ; $7252: $69
    ld h, a                                       ; $7253: $67
    ld l, b                                       ; $7254: $68
    ld [hl], h                                    ; $7255: $74
    jr nz, jr_015_72CC                            ; $7256: $20 $74

    ld l, b                                       ; $7258: $68
    ld [hl], d                                    ; $7259: $72
    ld l, a                                       ; $725A: $6F
    ld [hl], l                                    ; $725B: $75
    ld h, a                                       ; $725C: $67
    ld l, b                                       ; $725D: $68
    cp $74                                        ; $725E: $FE $74
    ld l, b                                       ; $7260: $68
    ld l, c                                       ; $7261: $69
    ld [hl], e                                    ; $7262: $73
    jr nz, @+$66                                  ; $7263: $20 $64

    ld l, a                                       ; $7265: $6F
    ld l, a                                       ; $7266: $6F
    ld [hl], d                                    ; $7267: $72
    ld l, $FE                                     ; $7268: $2E $FE
    ld d, d                                       ; $726A: $52
    ld h, c                                       ; $726B: $61
    ld l, c                                       ; $726C: $69
    ld [hl], e                                    ; $726D: $73
    ld h, l                                       ; $726E: $65
    jr nz, jr_015_72E5                            ; $726F: $20 $74

jr_015_7271:
    ld l, b                                       ; $7271: $68
    ld h, l                                       ; $7272: $65
    jr nz, jr_015_72B8                            ; $7273: $20 $43

    ld l, a                                       ; $7275: $6F
    ld [hl], d                                    ; $7276: $72
    ld h, l                                       ; $7277: $65
    rst $38                                       ; $7278: $FF
    ld b, a                                       ; $7279: $47

jr_015_727A:
    ld l, h                                       ; $727A: $6C
    ld a, c                                       ; $727B: $79
    ld [hl], b                                    ; $727C: $70
    ld l, b                                       ; $727D: $68
    jr nz, jr_015_72F4                            ; $727E: $20 $74

    ld l, a                                       ; $7280: $6F
    jr nz, jr_015_72F7                            ; $7281: $20 $74

    ld l, b                                       ; $7283: $68
    ld h, l                                       ; $7284: $65
    cp $6C                                        ; $7285: $FE $6C
    ld l, c                                       ; $7287: $69
    ld h, a                                       ; $7288: $67
    ld l, b                                       ; $7289: $68
    ld [hl], h                                    ; $728A: $74
    jr nz, @+$63                                  ; $728B: $20 $61

    ld l, [hl]                                    ; $728D: $6E
    ld h, h                                       ; $728E: $64
    jr nz, jr_015_730A                            ; $728F: $20 $79

    ld l, a                                       ; $7291: $6F
    ld [hl], l                                    ; $7292: $75
    rst $38                                       ; $7293: $FF
    ld [hl], a                                    ; $7294: $77
    ld l, c                                       ; $7295: $69
    ld l, h                                       ; $7296: $6C

jr_015_7297:
    ld l, h                                       ; $7297: $6C
    jr nz, jr_015_72FC                            ; $7298: $20 $62

    ld h, l                                       ; $729A: $65
    jr nz, @+$76                                  ; $729B: $20 $74

    ld h, c                                       ; $729D: $61
    ld l, e                                       ; $729E: $6B
    ld h, l                                       ; $729F: $65
    ld l, [hl]                                    ; $72A0: $6E
    cp $62                                        ; $72A1: $FE $62
    ld h, c                                       ; $72A3: $61
    ld h, e                                       ; $72A4: $63
    ld l, e                                       ; $72A5: $6B
    jr nz, jr_015_731C                            ; $72A6: $20 $74

jr_015_72A8:
    ld l, a                                       ; $72A8: $6F
    jr nz, jr_015_7324                            ; $72A9: $20 $79

jr_015_72AB:
    ld l, a                                       ; $72AB: $6F
    ld [hl], l                                    ; $72AC: $75
    ld [hl], d                                    ; $72AD: $72
    rst $38                                       ; $72AE: $FF
    ld l, b                                       ; $72AF: $68
    ld l, a                                       ; $72B0: $6F
    ld l, l                                       ; $72B1: $6D
    ld h, l                                       ; $72B2: $65
    jr nz, jr_015_732C                            ; $72B3: $20 $77

    ld l, a                                       ; $72B5: $6F
    ld [hl], d                                    ; $72B6: $72
    ld l, h                                       ; $72B7: $6C

jr_015_72B8:
    ld h, h                                       ; $72B8: $64
    ld l, $FE                                     ; $72B9: $2E $FE
    db $FD                                        ; $72BB: $FD
    sbc e                                         ; $72BC: $9B
    ld a, b                                       ; $72BD: $78
    ld [hl], b                                    ; $72BE: $70
    sbc a                                         ; $72BF: $9F
    ld b, c                                       ; $72C0: $41
    ld l, [hl]                                    ; $72C1: $6E
    ld h, h                                       ; $72C2: $64
    jr nz, jr_015_733C                            ; $72C3: $20 $77

    ld l, b                                       ; $72C5: $68
    ld h, c                                       ; $72C6: $61
    ld [hl], h                                    ; $72C7: $74
    jr nz, jr_015_732B                            ; $72C8: $20 $61

    ld h, d                                       ; $72CA: $62
    ld l, a                                       ; $72CB: $6F

jr_015_72CC:
    ld [hl], l                                    ; $72CC: $75
    ld [hl], h                                    ; $72CD: $74
    rst $38                                       ; $72CE: $FF
    ld a, c                                       ; $72CF: $79
    ld l, a                                       ; $72D0: $6F
    ld [hl], l                                    ; $72D1: $75
    ccf                                           ; $72D2: $3F
    cp $FD                                        ; $72D3: $FE $FD
    sbc e                                         ; $72D5: $9B
    ld l, b                                       ; $72D6: $68
    ld a, e                                       ; $72D7: $7B
    sbc a                                         ; $72D8: $9F
    ld c, c                                       ; $72D9: $49
    jr nz, jr_015_7353                            ; $72DA: $20 $77

    ld l, c                                       ; $72DC: $69
    ld l, h                                       ; $72DD: $6C
    ld l, h                                       ; $72DE: $6C
    jr nz, jr_015_7353                            ; $72DF: $20 $72

    ld h, l                                       ; $72E1: $65
    ld [hl], h                                    ; $72E2: $74
    ld [hl], l                                    ; $72E3: $75
    ld [hl], d                                    ; $72E4: $72

jr_015_72E5:
    ld l, [hl]                                    ; $72E5: $6E
    rst $38                                       ; $72E6: $FF
    ld [hl], h                                    ; $72E7: $74
    ld l, a                                       ; $72E8: $6F
    jr nz, @+$76                                  ; $72E9: $20 $74

    ld l, b                                       ; $72EB: $68
    ld h, l                                       ; $72EC: $65
    jr nz, @+$72                                  ; $72ED: $20 $70

    ld h, c                                       ; $72EF: $61
    ld l, h                                       ; $72F0: $6C
    ld h, c                                       ; $72F1: $61
    ld h, e                                       ; $72F2: $63
    ld h, l                                       ; $72F3: $65

jr_015_72F4:
    inc l                                         ; $72F4: $2C
    cp $6F                                        ; $72F5: $FE $6F

jr_015_72F7:
    ld h, [hl]                                    ; $72F7: $66
    jr nz, jr_015_735D                            ; $72F8: $20 $63

    ld l, a                                       ; $72FA: $6F
    ld [hl], l                                    ; $72FB: $75

jr_015_72FC:
    ld [hl], d                                    ; $72FC: $72
    ld [hl], e                                    ; $72FD: $73
    ld h, l                                       ; $72FE: $65
    ld l, $FE                                     ; $72FF: $2E $FE
    ld c, c                                       ; $7301: $49
    jr nz, jr_015_7371                            ; $7302: $20 $6D

    ld [hl], l                                    ; $7304: $75
    ld [hl], e                                    ; $7305: $73
    ld [hl], h                                    ; $7306: $74
    jr nz, @+$77                                  ; $7307: $20 $75

    ld l, [hl]                                    ; $7309: $6E

jr_015_730A:
    ld h, h                                       ; $730A: $64
    ld l, a                                       ; $730B: $6F
    rst $38                                       ; $730C: $FF
    ld [hl], h                                    ; $730D: $74
    ld l, b                                       ; $730E: $68
    ld h, l                                       ; $730F: $65
    jr nz, jr_015_7376                            ; $7310: $20 $64

    ld h, l                                       ; $7312: $65
    ld [hl], e                                    ; $7313: $73
    ld [hl], h                                    ; $7314: $74
    ld [hl], d                                    ; $7315: $72
    ld [hl], l                                    ; $7316: $75
    ld h, e                                       ; $7317: $63
    ld [hl], h                                    ; $7318: $74
    ld l, c                                       ; $7319: $69
    ld l, a                                       ; $731A: $6F
    ld l, [hl]                                    ; $731B: $6E

jr_015_731C:
    cp $74                                        ; $731C: $FE $74
    ld l, b                                       ; $731E: $68
    ld h, c                                       ; $731F: $61
    ld [hl], h                                    ; $7320: $74
    jr nz, jr_015_7370                            ; $7321: $20 $4D

    ld l, a                                       ; $7323: $6F

jr_015_7324:
    ld [hl], d                                    ; $7324: $72
    ld h, c                                       ; $7325: $61
    ld h, a                                       ; $7326: $67
    jr nz, jr_015_738A                            ; $7327: $20 $61

    ld l, [hl]                                    ; $7329: $6E
    ld h, h                                       ; $732A: $64

jr_015_732B:
    rst $38                                       ; $732B: $FF

jr_015_732C:
    ld b, c                                       ; $732C: $41
    ld h, a                                       ; $732D: $67
    ld [hl], d                                    ; $732E: $72
    ld h, c                                       ; $732F: $61
    ld l, l                                       ; $7330: $6D
    jr nz, jr_015_7397                            ; $7331: $20 $64

    ld h, l                                       ; $7333: $65
    ld h, c                                       ; $7334: $61
    ld l, h                                       ; $7335: $6C
    ld [hl], h                                    ; $7336: $74
    jr nz, jr_015_73AD                            ; $7337: $20 $74

    ld l, a                                       ; $7339: $6F
    cp $6D                                        ; $733A: $FE $6D

jr_015_733C:
    ld a, c                                       ; $733C: $79
    jr nz, jr_015_73AA                            ; $733D: $20 $6B

jr_015_733F:
    ld l, c                                       ; $733F: $69
    ld l, [hl]                                    ; $7340: $6E
    ld h, a                                       ; $7341: $67
    ld h, h                                       ; $7342: $64
    ld l, a                                       ; $7343: $6F
    ld l, l                                       ; $7344: $6D
    ld l, $FE                                     ; $7345: $2E $FE
    db $FD                                        ; $7347: $FD
    sbc d                                         ; $7348: $9A
    ld e, b                                       ; $7349: $58
    rlca                                          ; $734A: $07
    ld b, d                                       ; $734B: $42
    sbc e                                         ; $734C: $9B
    ld l, b                                       ; $734D: $68
    ld a, e                                       ; $734E: $7B
    sbc a                                         ; $734F: $9F
    ld b, [hl]                                    ; $7350: $46
    ld h, c                                       ; $7351: $61
    ld [hl], d                                    ; $7352: $72

jr_015_7353:
    ld h, l                                       ; $7353: $65
    ld [hl], a                                    ; $7354: $77
    ld h, l                                       ; $7355: $65
    ld l, h                                       ; $7356: $6C
    ld l, h                                       ; $7357: $6C
    ld hl, $48FE                                  ; $7358: $21 $FE $48
    ld h, c                                       ; $735B: $61
    halt                                          ; $735C: $76

jr_015_735D:
    ld h, l                                       ; $735D: $65
    jr nz, @+$63                                  ; $735E: $20 $61

    jr nz, jr_015_73D5                            ; $7360: $20 $73

    ld h, c                                       ; $7362: $61
    ld h, [hl]                                    ; $7363: $66
    ld h, l                                       ; $7364: $65
    rst $38                                       ; $7365: $FF
    ld l, d                                       ; $7366: $6A
    ld l, a                                       ; $7367: $6F
    ld [hl], l                                    ; $7368: $75
    ld [hl], d                                    ; $7369: $72
    ld l, [hl]                                    ; $736A: $6E
    ld h, l                                       ; $736B: $65
    ld a, c                                       ; $736C: $79
    jr nz, jr_015_73D7                            ; $736D: $20 $68

    ld l, a                                       ; $736F: $6F

jr_015_7370:
    ld l, l                                       ; $7370: $6D

jr_015_7371:
    ld h, l                                       ; $7371: $65
    ld l, $FE                                     ; $7372: $2E $FE
    db $FD                                        ; $7374: $FD
    sbc d                                         ; $7375: $9A

jr_015_7376:
    ld e, b                                       ; $7376: $58
    ld [$AC42], sp                                ; $7377: $08 $42 $AC
    or d                                          ; $737A: $B2
    and d                                         ; $737B: $A2
    ld bc, $6593                                  ; $737C: $01 $93 $65
    ld a, h                                       ; $737F: $7C
    ld c, e                                       ; $7380: $4B
    ld c, a                                       ; $7381: $4F
    ld h, [hl]                                    ; $7382: $66
    sub b                                         ; $7383: $90
    ld [hl], h                                    ; $7384: $74
    dec c                                         ; $7385: $0D
    ld h, h                                       ; $7386: $64
    adc $49                                       ; $7387: $CE $49
    dec b                                         ; $7389: $05

jr_015_738A:
    nop                                           ; $738A: $00
    add c                                         ; $738B: $81
    ld e, l                                       ; $738C: $5D
    nop                                           ; $738D: $00
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    ret nc                                        ; $7390: $D0

    nop                                           ; $7391: $00
    jr nz, jr_015_733F                            ; $7392: $20 $AB

    ld d, b                                       ; $7394: $50
    ld [hl+], a                                   ; $7395: $22
    dec b                                         ; $7396: $05

jr_015_7397:
    ld b, b                                       ; $7397: $40
    dec b                                         ; $7398: $05
    ld [bc], a                                    ; $7399: $02
    db $ED                                        ; $739A: $ED
    ld h, e                                       ; $739B: $63
    dec c                                         ; $739C: $0D
    ld [$D09D], sp                                ; $739D: $08 $9D $D0
    nop                                           ; $73A0: $00
    ld de, $7964                                  ; $73A1: $11 $64 $79
    dec d                                         ; $73A4: $15
    rra                                           ; $73A5: $1F
    ld [hl], h                                    ; $73A6: $74
    dec b                                         ; $73A7: $05
    inc bc                                        ; $73A8: $03
    db $ED                                        ; $73A9: $ED

jr_015_73AA:
    ld h, e                                       ; $73AA: $63
    rlca                                          ; $73AB: $07
    rlca                                          ; $73AC: $07

jr_015_73AD:
    add l                                         ; $73AD: $85
    ret nc                                        ; $73AE: $D0

    inc b                                         ; $73AF: $04
    ld de, $7950                                  ; $73B0: $11 $50 $79
    dec d                                         ; $73B3: $15
    ld a, [hl+]                                   ; $73B4: $2A
    ld [hl], h                                    ; $73B5: $74
    dec b                                         ; $73B6: $05
    inc b                                         ; $73B7: $04
    db $ED                                        ; $73B8: $ED
    ld h, e                                       ; $73B9: $63
    ld a, [bc]                                    ; $73BA: $0A
    ld a, [bc]                                    ; $73BB: $0A
    cp [hl]                                       ; $73BC: $BE
    ret nc                                        ; $73BD: $D0

    add hl, bc                                    ; $73BE: $09
    ld de, $7946                                  ; $73BF: $11 $46 $79
    dec d                                         ; $73C2: $15
    dec [hl]                                      ; $73C3: $35
    ld [hl], h                                    ; $73C4: $74
    dec b                                         ; $73C5: $05
    dec b                                         ; $73C6: $05
    db $ED                                        ; $73C7: $ED
    ld h, e                                       ; $73C8: $63
    add hl, bc                                    ; $73C9: $09
    rlca                                          ; $73CA: $07
    add a                                         ; $73CB: $87
    ret nc                                        ; $73CC: $D0

    dec c                                         ; $73CD: $0D
    ld de, $795A                                  ; $73CE: $11 $5A $79
    dec d                                         ; $73D1: $15
    ld b, b                                       ; $73D2: $40
    ld [hl], h                                    ; $73D3: $74
    dec b                                         ; $73D4: $05

jr_015_73D5:
    ld b, $ED                                     ; $73D5: $06 $ED

jr_015_73D7:
    ld h, e                                       ; $73D7: $63
    dec bc                                        ; $73D8: $0B
    rlca                                          ; $73D9: $07
    adc c                                         ; $73DA: $89
    ret nc                                        ; $73DB: $D0

    dec c                                         ; $73DC: $0D
    ld de, $795A                                  ; $73DD: $11 $5A $79
    dec d                                         ; $73E0: $15
    ld c, e                                       ; $73E1: $4B
    ld [hl], h                                    ; $73E2: $74
    ld b, e                                       ; $73E3: $43
    db $10                                        ; $73E4: $10
    ld bc, $A2A4                                  ; $73E5: $01 $A4 $A2
    dec b                                         ; $73E8: $05
    dec b                                         ; $73E9: $05
    dec d                                         ; $73EA: $15
    pop af                                        ; $73EB: $F1
    ld [hl], e                                    ; $73EC: $73
    dec bc                                        ; $73ED: $0B
    dec b                                         ; $73EE: $05
    dec bc                                        ; $73EF: $0B
    ld b, $0B                                     ; $73F0: $06 $0B
    nop                                           ; $73F2: $00
    dec bc                                        ; $73F3: $0B
    ld [bc], a                                    ; $73F4: $02
    dec bc                                        ; $73F5: $0B
    inc bc                                        ; $73F6: $03
    dec bc                                        ; $73F7: $0B
    inc b                                         ; $73F8: $04
    ld l, e                                       ; $73F9: $6B
    inc b                                         ; $73FA: $04
    dec c                                         ; $73FB: $0D
    add b                                         ; $73FC: $80
    ld [hl], e                                    ; $73FD: $73
    nop                                           ; $73FE: $00
    add b                                         ; $73FF: $80
    nop                                           ; $7400: $00
    ld l, e                                       ; $7401: $6B
    dec b                                         ; $7402: $05
    dec c                                         ; $7403: $0D
    ret nz                                        ; $7404: $C0

    ld [hl], e                                    ; $7405: $73
    ld b, b                                       ; $7406: $40
    add b                                         ; $7407: $80
    nop                                           ; $7408: $00
    ld l, e                                       ; $7409: $6B
    inc b                                         ; $740A: $04
    dec c                                         ; $740B: $0D
    db $10                                        ; $740C: $10
    ld [hl], h                                    ; $740D: $74
    sub b                                         ; $740E: $90
    add b                                         ; $740F: $80
    nop                                           ; $7410: $00
    ld l, e                                       ; $7411: $6B
    inc b                                         ; $7412: $04
    dec c                                         ; $7413: $0D
    ld d, b                                       ; $7414: $50
    ld [hl], h                                    ; $7415: $74
    ret nc                                        ; $7416: $D0

    add b                                         ; $7417: $80
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    add d                                         ; $741A: $82
    rra                                           ; $741B: $1F
    dec c                                         ; $741C: $0D
    sub h                                         ; $741D: $94
    ld b, d                                       ; $741E: $42
    inc d                                         ; $741F: $14
    ld de, $7964                                  ; $7420: $11 $64 $79
    ld e, e                                       ; $7423: $5B
    dec d                                         ; $7424: $15
    ld d, [hl]                                    ; $7425: $56
    ld [hl], h                                    ; $7426: $74
    ld h, d                                       ; $7427: $62
    ld bc, $1412                                  ; $7428: $01 $12 $14
    ld de, $7950                                  ; $742B: $11 $50 $79
    ld e, e                                       ; $742E: $5B
    dec d                                         ; $742F: $15
    ld h, c                                       ; $7430: $61
    ld [hl], h                                    ; $7431: $74
    ld h, d                                       ; $7432: $62
    ld bc, $1412                                  ; $7433: $01 $12 $14
    ld de, $7946                                  ; $7436: $11 $46 $79
    ld e, e                                       ; $7439: $5B
    dec d                                         ; $743A: $15
    ld l, h                                       ; $743B: $6C
    ld [hl], h                                    ; $743C: $74
    ld h, d                                       ; $743D: $62
    ld bc, $1412                                  ; $743E: $01 $12 $14
    ld de, $795A                                  ; $7441: $11 $5A $79
    ld e, e                                       ; $7444: $5B
    dec d                                         ; $7445: $15
    ld [hl], a                                    ; $7446: $77
    ld [hl], h                                    ; $7447: $74
    ld h, d                                       ; $7448: $62
    ld bc, $1412                                  ; $7449: $01 $12 $14
    ld de, $795A                                  ; $744C: $11 $5A $79
    ld e, e                                       ; $744F: $5B
    dec d                                         ; $7450: $15
    add d                                         ; $7451: $82
    ld [hl], h                                    ; $7452: $74
    ld h, d                                       ; $7453: $62
    ld bc, $9B12                                  ; $7454: $01 $12 $9B
    ld l, b                                       ; $7457: $68
    ld a, e                                       ; $7458: $7B
    sbc a                                         ; $7459: $9F

jr_015_745A:
    jr nz, jr_015_745A                            ; $745A: $20 $FE

    db $FD                                        ; $745C: $FD
    sbc d                                         ; $745D: $9A
    ld e, b                                       ; $745E: $58
    ld bc, $9B42                                  ; $745F: $01 $42 $9B
    jr z, jr_015_74D9                             ; $7462: $28 $75

    sbc a                                         ; $7464: $9F

jr_015_7465:
    jr nz, jr_015_7465                            ; $7465: $20 $FE

    db $FD                                        ; $7467: $FD
    sbc d                                         ; $7468: $9A
    ld e, b                                       ; $7469: $58
    ld bc, $9B42                                  ; $746A: $01 $42 $9B
    jr jr_015_74BD                                ; $746D: $18 $4E

    sbc a                                         ; $746F: $9F

jr_015_7470:
    jr nz, jr_015_7470                            ; $7470: $20 $FE

    db $FD                                        ; $7472: $FD
    sbc d                                         ; $7473: $9A
    ld e, b                                       ; $7474: $58
    ld bc, $9B42                                  ; $7475: $01 $42 $9B
    ld l, c                                       ; $7478: $69
    ld c, c                                       ; $7479: $49
    sbc a                                         ; $747A: $9F

jr_015_747B:
    jr nz, jr_015_747B                            ; $747B: $20 $FE

    db $FD                                        ; $747D: $FD
    sbc d                                         ; $747E: $9A
    ld e, b                                       ; $747F: $58
    ld bc, $9B42                                  ; $7480: $01 $42 $9B
    ld sp, hl                                     ; $7483: $F9
    ld c, d                                       ; $7484: $4A
    sbc a                                         ; $7485: $9F

jr_015_7486:
    jr nz, jr_015_7486                            ; $7486: $20 $FE

    db $FD                                        ; $7488: $FD
    sbc d                                         ; $7489: $9A
    ld e, b                                       ; $748A: $58
    ld bc, $9342                                  ; $748B: $01 $42 $93
    ld h, l                                       ; $748E: $65
    ld a, h                                       ; $748F: $7C
    ld c, e                                       ; $7490: $4B
    ld c, a                                       ; $7491: $4F
    ld h, [hl]                                    ; $7492: $66
    ret nc                                        ; $7493: $D0

    ld [hl], h                                    ; $7494: $74
    dec c                                         ; $7495: $0D
    dec b                                         ; $7496: $05
    nop                                           ; $7497: $00
    ld l, e                                       ; $7498: $6B
    ld c, d                                       ; $7499: $4A
    inc c                                         ; $749A: $0C
    inc b                                         ; $749B: $04
    ld d, h                                       ; $749C: $54
    ret nc                                        ; $749D: $D0

    nop                                           ; $749E: $00
    dec d                                         ; $749F: $15
    ld c, [hl]                                    ; $74A0: $4E
    ld [hl], l                                    ; $74A1: $75
    ld [hl+], a                                   ; $74A2: $22
    dec b                                         ; $74A3: $05
    ld b, b                                       ; $74A4: $40

jr_015_74A5:
    dec b                                         ; $74A5: $05
    ld [bc], a                                    ; $74A6: $02
    ld l, e                                       ; $74A7: $6B
    ld c, d                                       ; $74A8: $4A
    dec c                                         ; $74A9: $0D
    ld [$D09D], sp                                ; $74AA: $08 $9D $D0
    nop                                           ; $74AD: $00
    dec d                                         ; $74AE: $15
    or h                                          ; $74AF: $B4
    ld [hl], l                                    ; $74B0: $75
    ld [hl+], a                                   ; $74B1: $22
    dec b                                         ; $74B2: $05
    ld b, b                                       ; $74B3: $40
    dec b                                         ; $74B4: $05
    inc bc                                        ; $74B5: $03
    ld l, e                                       ; $74B6: $6B
    ld c, d                                       ; $74B7: $4A
    rlca                                          ; $74B8: $07
    rlca                                          ; $74B9: $07
    add l                                         ; $74BA: $85
    ret nc                                        ; $74BB: $D0

    ld [hl-], a                                   ; $74BC: $32

jr_015_74BD:
    dec d                                         ; $74BD: $15
    ld e, b                                       ; $74BE: $58
    halt                                          ; $74BF: $76
    ld [hl+], a                                   ; $74C0: $22
    dec b                                         ; $74C1: $05
    ld b, b                                       ; $74C2: $40
    dec b                                         ; $74C3: $05
    inc b                                         ; $74C4: $04
    ld l, e                                       ; $74C5: $6B
    ld c, d                                       ; $74C6: $4A
    ld a, [bc]                                    ; $74C7: $0A
    ld a, [bc]                                    ; $74C8: $0A
    cp [hl]                                       ; $74C9: $BE
    ret nc                                        ; $74CA: $D0

    ld e, l                                       ; $74CB: $5D
    dec d                                         ; $74CC: $15
    rrca                                          ; $74CD: $0F
    ld [hl], a                                    ; $74CE: $77
    ld [hl+], a                                   ; $74CF: $22
    dec b                                         ; $74D0: $05
    ld b, b                                       ; $74D1: $40
    dec b                                         ; $74D2: $05
    dec b                                         ; $74D3: $05
    ld l, e                                       ; $74D4: $6B
    ld c, d                                       ; $74D5: $4A
    add hl, bc                                    ; $74D6: $09
    rlca                                          ; $74D7: $07
    add a                                         ; $74D8: $87

jr_015_74D9:
    ret nc                                        ; $74D9: $D0

    sub l                                         ; $74DA: $95
    dec d                                         ; $74DB: $15
    sub d                                         ; $74DC: $92
    ld [hl], a                                    ; $74DD: $77
    ld [hl+], a                                   ; $74DE: $22
    dec b                                         ; $74DF: $05
    ld b, b                                       ; $74E0: $40
    dec b                                         ; $74E1: $05
    ld b, $6B                                     ; $74E2: $06 $6B
    ld c, d                                       ; $74E4: $4A
    dec bc                                        ; $74E5: $0B
    rlca                                          ; $74E6: $07
    adc c                                         ; $74E7: $89
    ret nc                                        ; $74E8: $D0

    sub l                                         ; $74E9: $95
    dec d                                         ; $74EA: $15
    jp c, $2277                                   ; $74EB: $DA $77 $22

    dec b                                         ; $74EE: $05
    ld b, b                                       ; $74EF: $40
    dec b                                         ; $74F0: $05
    rlca                                          ; $74F1: $07
    ld l, e                                       ; $74F2: $6B
    ld c, d                                       ; $74F3: $4A
    inc c                                         ; $74F4: $0C
    inc b                                         ; $74F5: $04
    ld d, h                                       ; $74F6: $54
    ret nc                                        ; $74F7: $D0

    nop                                           ; $74F8: $00
    dec d                                         ; $74F9: $15
    rst $30                                       ; $74FA: $F7
    ld [hl], l                                    ; $74FB: $75
    ld [hl+], a                                   ; $74FC: $22
    dec b                                         ; $74FD: $05
    ld b, b                                       ; $74FE: $40
    ld b, e                                       ; $74FF: $43

jr_015_7500:
    db $10                                        ; $7500: $10
    ld bc, $A2A4                                  ; $7501: $01 $A4 $A2
    dec b                                         ; $7504: $05
    dec b                                         ; $7505: $05
    dec d                                         ; $7506: $15
    dec c                                         ; $7507: $0D
    ld [hl], l                                    ; $7508: $75
    dec bc                                        ; $7509: $0B
    dec b                                         ; $750A: $05
    dec bc                                        ; $750B: $0B

jr_015_750C:
    ld b, $0B                                     ; $750C: $06 $0B
    ld [bc], a                                    ; $750E: $02
    dec bc                                        ; $750F: $0B
    inc bc                                        ; $7510: $03
    dec bc                                        ; $7511: $0B
    inc b                                         ; $7512: $04
    ld l, e                                       ; $7513: $6B
    ld [hl-], a                                   ; $7514: $32
    dec bc                                        ; $7515: $0B
    and b                                         ; $7516: $A0
    ld [hl], h                                    ; $7517: $74
    nop                                           ; $7518: $00
    add b                                         ; $7519: $80

jr_015_751A:
    nop                                           ; $751A: $00
    ld l, e                                       ; $751B: $6B

jr_015_751C:
    dec hl                                        ; $751C: $2B
    dec bc                                        ; $751D: $0B
    db $10                                        ; $751E: $10
    ld l, d                                       ; $751F: $6A
    jr nz, jr_015_74A5                            ; $7520: $20 $83

jr_015_7522:
    nop                                           ; $7522: $00
    ld l, e                                       ; $7523: $6B
    jr c, jr_015_7530                             ; $7524: $38 $0A

    db $10                                        ; $7526: $10
    ld d, c                                       ; $7527: $51

jr_015_7528:
    ret nc                                        ; $7528: $D0

    add l                                         ; $7529: $85
    nop                                           ; $752A: $00
    ld l, e                                       ; $752B: $6B
    jr nc, jr_015_753A                            ; $752C: $30 $0C

    or b                                          ; $752E: $B0
    ld d, a                                       ; $752F: $57

jr_015_7530:
    ld d, b                                       ; $7530: $50
    adc c                                         ; $7531: $89
    nop                                           ; $7532: $00
    add h                                         ; $7533: $84

jr_015_7534:
    ld a, [bc]                                    ; $7534: $0A
    ld [$081F], sp                                ; $7535: $08 $1F $08
    sub h                                         ; $7538: $94
    ld a, b                                       ; $7539: $78

jr_015_753A:
    ret nz                                        ; $753A: $C0

    ld e, h                                       ; $753B: $5C
    ld hl, $6087                                  ; $753C: $21 $87 $60
    ld bc, $0F6E                                  ; $753F: $01 $6E $0F
    rst $38                                       ; $7542: $FF
    ld a, a                                       ; $7543: $7F
    halt                                          ; $7544: $76
    ld h, b                                       ; $7545: $60
    rrca                                          ; $7546: $0F
    ld bc, $0C09                                  ; $7547: $01 $09 $0C
    ld b, l                                       ; $754A: $45
    dec d                                         ; $754B: $15
    db $E3                                        ; $754C: $E3
    ld l, d                                       ; $754D: $6A
    dec d                                         ; $754E: $15

jr_015_754F:
    jr nz, @+$1F                                  ; $754F: $20 $1D

    ld d, b                                       ; $7551: $50
    db $10                                        ; $7552: $10
    jr nz, jr_015_7500                            ; $7553: $20 $AB

    ld d, b                                       ; $7555: $50

jr_015_7556:
    ld h, b                                       ; $7556: $60
    jr nz, @-$17                                  ; $7557: $20 $E7

jr_015_7559:
    ld d, b                                       ; $7559: $50
    inc b                                         ; $755A: $04
    jr nz, jr_015_751C                            ; $755B: $20 $BF

jr_015_755D:
    ld d, b                                       ; $755D: $50
    inc b                                         ; $755E: $04

jr_015_755F:
    jr nz, jr_015_7534                            ; $755F: $20 $D3

    ld d, b                                       ; $7561: $50
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    ld e, h                                       ; $7564: $5C
    ld [bc], a                                    ; $7565: $02
    inc bc                                        ; $7566: $03
    ld h, d                                       ; $7567: $62
    ld [hl-], a                                   ; $7568: $32
    ld e, h                                       ; $7569: $5C
    inc bc                                        ; $756A: $03
    ld [bc], a                                    ; $756B: $02

jr_015_756C:
    dec d                                         ; $756C: $15
    jr nz, jr_015_751A                            ; $756D: $20 $AB

    ld d, b                                       ; $756F: $50
    db $10                                        ; $7570: $10
    jr nz, jr_015_7528                            ; $7571: $20 $B5

    ld d, b                                       ; $7573: $50
    db $10                                        ; $7574: $10
    jr nz, jr_015_7522                            ; $7575: $20 $AB

    ld d, b                                       ; $7577: $50
    db $10                                        ; $7578: $10
    jr nz, jr_015_750C                            ; $7579: $20 $91

    ld d, b                                       ; $757B: $50
    ld [$B520], sp                                ; $757C: $08 $20 $B5
    ld d, b                                       ; $757F: $50
    db $10                                        ; $7580: $10
    jr nz, jr_015_7556                            ; $7581: $20 $D3

    ld d, b                                       ; $7583: $50
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    ld e, h                                       ; $7586: $5C
    inc b                                         ; $7587: $04
    ld [bc], a                                    ; $7588: $02
    dec d                                         ; $7589: $15
    jr nz, jr_015_7559                            ; $758A: $20 $CD

    ld c, a                                       ; $758C: $4F
    db $10                                        ; $758D: $10
    jr nz, jr_015_754F                            ; $758E: $20 $BF

    ld d, b                                       ; $7590: $50
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    ld e, h                                       ; $7593: $5C
    dec b                                         ; $7594: $05
    ld [bc], a                                    ; $7595: $02
    inc d                                         ; $7596: $14
    jr nz, jr_015_756C                            ; $7597: $20 $D3

    ld d, b                                       ; $7599: $50
    ld e, h                                       ; $759A: $5C
    ld b, $02                                     ; $759B: $06 $02
    dec d                                         ; $759D: $15
    jr nz, jr_015_755F                            ; $759E: $20 $BF

    ld d, b                                       ; $75A0: $50
    ld [$E720], sp                                ; $75A1: $08 $20 $E7
    ld d, b                                       ; $75A4: $50
    ld [$B320], sp                                ; $75A5: $08 $20 $B3
    ld c, a                                       ; $75A8: $4F
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    ld d, [hl]                                    ; $75AB: $56
    ld bc, $2040                                  ; $75AC: $01 $40 $20
    inc d                                         ; $75AF: $14
    jr nz, jr_015_755D                            ; $75B0: $20 $AB

    ld d, b                                       ; $75B2: $50
    ld b, d                                       ; $75B3: $42
    inc d                                         ; $75B4: $14
    rrca                                          ; $75B5: $0F
    adc $76                                       ; $75B6: $CE $76
    ld b, b                                       ; $75B8: $40
    ld b, b                                       ; $75B9: $40
    halt                                          ; $75BA: $76
    ldh [$A5], a                                  ; $75BB: $E0 $A5
    ld e, h                                       ; $75BD: $5C
    nop                                           ; $75BE: $00
    ld [bc], a                                    ; $75BF: $02
    dec d                                         ; $75C0: $15
    rrca                                          ; $75C1: $0F
    adc $76                                       ; $75C2: $CE $76
    db $10                                        ; $75C4: $10
    rrca                                          ; $75C5: $0F
    dec d                                         ; $75C6: $15
    ld [hl], a                                    ; $75C7: $77
    stop                                          ; $75C8: $10 $00
    ld e, e                                       ; $75CA: $5B
    dec d                                         ; $75CB: $15
    and a                                         ; $75CC: $A7
    ld l, [hl]                                    ; $75CD: $6E
    dec d                                         ; $75CE: $15
    rrca                                          ; $75CF: $0F
    dec bc                                        ; $75D0: $0B
    ld [hl], a                                    ; $75D1: $77
    jr nz, jr_015_75D4                            ; $75D2: $20 $00

jr_015_75D4:
    ld h, d                                       ; $75D4: $62
    ld bc, $0F15                                  ; $75D5: $01 $15 $0F
    db $ED                                        ; $75D8: $ED
    halt                                          ; $75D9: $76
    inc c                                         ; $75DA: $0C
    rrca                                          ; $75DB: $0F
    db $E3                                        ; $75DC: $E3
    halt                                          ; $75DD: $76
    inc c                                         ; $75DE: $0C
    rrca                                          ; $75DF: $0F
    db $ED                                        ; $75E0: $ED
    halt                                          ; $75E1: $76
    inc c                                         ; $75E2: $0C
    rrca                                          ; $75E3: $0F
    db $E3                                        ; $75E4: $E3
    halt                                          ; $75E5: $76
    inc c                                         ; $75E6: $0C
    nop                                           ; $75E7: $00
    ld e, h                                       ; $75E8: $5C
    ld bc, $1503                                  ; $75E9: $01 $03 $15
    rrca                                          ; $75EC: $0F
    call nz, $1076                                ; $75ED: $C4 $76 $10
    rrca                                          ; $75F0: $0F
    add h                                         ; $75F1: $84
    halt                                          ; $75F2: $76
    jr nz, jr_015_75F5                            ; $75F3: $20 $00

jr_015_75F5:
    add hl, de                                    ; $75F5: $19
    ld b, d                                       ; $75F6: $42
    dec d                                         ; $75F7: $15
    rrca                                          ; $75F8: $0F
    ld d, h                                       ; $75F9: $54
    halt                                          ; $75FA: $76
    jr nz, jr_015_760C                            ; $75FB: $20 $0F

    db $ED                                        ; $75FD: $ED
    halt                                          ; $75FE: $76
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    ld e, h                                       ; $7601: $5C
    inc b                                         ; $7602: $04
    ld [bc], a                                    ; $7603: $02
    ld e, e                                       ; $7604: $5B
    dec d                                         ; $7605: $15
    ld hl, sp+$70                                 ; $7606: $F8 $70
    ld h, d                                       ; $7608: $62
    ld b, $15                                     ; $7609: $06 $15
    rrca                                          ; $760B: $0F

jr_015_760C:
    adc $76                                       ; $760C: $CE $76
    ld b, b                                       ; $760E: $40
    rrca                                          ; $760F: $0F
    dec d                                         ; $7610: $15
    ld [hl], a                                    ; $7611: $77
    ld [$ED0F], sp                                ; $7612: $08 $0F $ED
    halt                                          ; $7615: $76
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    ld e, e                                       ; $7618: $5B
    dec d                                         ; $7619: $15
    pop bc                                        ; $761A: $C1
    ld [hl], c                                    ; $761B: $71
    ld h, d                                       ; $761C: $62
    rlca                                          ; $761D: $07
    ld d, $0F                                     ; $761E: $16 $0F
    ld d, h                                       ; $7620: $54
    halt                                          ; $7621: $76
    jr nz, jr_015_7624                            ; $7622: $20 $00

jr_015_7624:
    ld bc, $640F                                  ; $7624: $01 $0F $64
    halt                                          ; $7627: $76
    jr nz, jr_015_762A                            ; $7628: $20 $00

jr_015_762A:
    nop                                           ; $762A: $00
    rrca                                          ; $762B: $0F
    db $E3                                        ; $762C: $E3
    halt                                          ; $762D: $76
    ld b, b                                       ; $762E: $40
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    rrca                                          ; $7631: $0F
    ld bc, $0077                                  ; $7632: $01 $77 $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    ld e, e                                       ; $7638: $5B
    dec d                                         ; $7639: $15
    ld c, h                                       ; $763A: $4C
    ld [hl], e                                    ; $763B: $73
    ld h, d                                       ; $763C: $62
    ld [$055C], sp                                ; $763D: $08 $5C $05
    ld [bc], a                                    ; $7640: $02
    dec d                                         ; $7641: $15
    rrca                                          ; $7642: $0F
    rst $30                                       ; $7643: $F7
    halt                                          ; $7644: $76
    ld [$0B0F], sp                                ; $7645: $08 $0F $0B
    ld [hl], a                                    ; $7648: $77
    ld [$540F], sp                                ; $7649: $08 $0F $54
    halt                                          ; $764C: $76
    ld d, b                                       ; $764D: $50
    rrca                                          ; $764E: $0F
    adc $76                                       ; $764F: $CE $76
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    ld e, h                                       ; $7653: $5C
    ld b, $02                                     ; $7654: $06 $02
    add hl, de                                    ; $7656: $19
    ld b, d                                       ; $7657: $42
    inc d                                         ; $7658: $14
    rrca                                          ; $7659: $0F
    ld a, [de]                                    ; $765A: $1A
    ld l, l                                       ; $765B: $6D
    ld e, h                                       ; $765C: $5C
    ld bc, $7603                                  ; $765D: $01 $03 $76
    ldh [$81], a                                  ; $7660: $E0 $81
    ld d, [hl]                                    ; $7662: $56
    ld [bc], a                                    ; $7663: $02
    dec d                                         ; $7664: $15
    rrca                                          ; $7665: $0F
    ld c, h                                       ; $7666: $4C
    ld l, l                                       ; $7667: $6D
    ld [$560F], sp                                ; $7668: $08 $0F $56
    ld l, l                                       ; $766B: $6D
    ld [$4C0F], sp                                ; $766C: $08 $0F $4C
    ld l, l                                       ; $766F: $6D
    ld [$560F], sp                                ; $7670: $08 $0F $56
    ld l, l                                       ; $7673: $6D
    ld [$4C0F], sp                                ; $7674: $08 $0F $4C
    ld l, l                                       ; $7677: $6D
    ld [$560F], sp                                ; $7678: $08 $0F $56
    ld l, l                                       ; $767B: $6D
    ld [$4C0F], sp                                ; $767C: $08 $0F $4C
    ld l, l                                       ; $767F: $6D
    ld [$560F], sp                                ; $7680: $08 $0F $56
    ld l, l                                       ; $7683: $6D
    ld [$4C0F], sp                                ; $7684: $08 $0F $4C
    ld l, l                                       ; $7687: $6D
    ld [$380F], sp                                ; $7688: $08 $0F $38
    ld l, l                                       ; $768B: $6D
    ld [$100F], sp                                ; $768C: $08 $0F $10
    ld l, l                                       ; $768F: $6D
    ld [$420F], sp                                ; $7690: $08 $0F $42
    ld l, l                                       ; $7693: $6D
    ld [$2E0F], sp                                ; $7694: $08 $0F $2E
    ld l, l                                       ; $7697: $6D
    ld [$560F], sp                                ; $7698: $08 $0F $56
    ld l, l                                       ; $769B: $6D
    db $10                                        ; $769C: $10
    rrca                                          ; $769D: $0F
    ld a, [de]                                    ; $769E: $1A
    ld l, l                                       ; $769F: $6D
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    ld e, h                                       ; $76A2: $5C
    ld [bc], a                                    ; $76A3: $02
    inc bc                                        ; $76A4: $03
    dec d                                         ; $76A5: $15
    rrca                                          ; $76A6: $0F
    ld l, $6D                                     ; $76A7: $2E $6D
    jr nc, jr_015_76BA                            ; $76A9: $30 $0F

    ret nc                                        ; $76AB: $D0

    ld l, h                                       ; $76AC: $6C
    ld [$000F], sp                                ; $76AD: $08 $0F $00
    ld l, l                                       ; $76B0: $6D
    jr nz, jr_015_76C2                            ; $76B1: $20 $0F

    ld b, d                                       ; $76B3: $42
    ld l, l                                       ; $76B4: $6D
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    ld e, e                                       ; $76B7: $5B
    dec d                                         ; $76B8: $15
    or h                                          ; $76B9: $B4

jr_015_76BA:
    ld l, [hl]                                    ; $76BA: $6E
    ld h, d                                       ; $76BB: $62
    inc bc                                        ; $76BC: $03
    add hl, bc                                    ; $76BD: $09
    dec b                                         ; $76BE: $05
    dec d                                         ; $76BF: $15
    inc l                                         ; $76C0: $2C
    ld a, b                                       ; $76C1: $78

jr_015_76C2:
    add hl, bc                                    ; $76C2: $09
    ld b, $15                                     ; $76C3: $06 $15
    dec sp                                        ; $76C5: $3B
    ld a, b                                       ; $76C6: $78
    ld e, e                                       ; $76C7: $5B
    dec d                                         ; $76C8: $15
    jr z, @+$72                                   ; $76C9: $28 $70

    add e                                         ; $76CB: $83
    jr nz, jr_015_76CE                            ; $76CC: $20 $00

jr_015_76CE:
    rst $38                                       ; $76CE: $FF
    nop                                           ; $76CF: $00
    ld h, d                                       ; $76D0: $62
    inc b                                         ; $76D1: $04
    dec d                                         ; $76D2: $15
    rrca                                          ; $76D3: $0F
    db $10                                        ; $76D4: $10
    ld l, l                                       ; $76D5: $6D
    jr nz, jr_015_76E7                            ; $76D6: $20 $0F

    ret nz                                        ; $76D8: $C0

    ld l, h                                       ; $76D9: $6C
    jr nz, jr_015_76EB                            ; $76DA: $20 $0F

    db $10                                        ; $76DC: $10
    ld l, l                                       ; $76DD: $6D
    nop                                           ; $76DE: $00
    nop                                           ; $76DF: $00
    ld e, e                                       ; $76E0: $5B
    dec d                                         ; $76E1: $15
    ld a, c                                       ; $76E2: $79
    ld [hl], b                                    ; $76E3: $70
    ld e, h                                       ; $76E4: $5C
    inc bc                                        ; $76E5: $03
    ld [bc], a                                    ; $76E6: $02

jr_015_76E7:
    ld b, b                                       ; $76E7: $40
    ld h, b                                       ; $76E8: $60
    dec d                                         ; $76E9: $15
    rrca                                          ; $76EA: $0F

jr_015_76EB:
    jr c, @+$6F                                   ; $76EB: $38 $6D

    ld [$240F], sp                                ; $76ED: $08 $0F $24
    ld l, l                                       ; $76F0: $6D
    ld [$4C0F], sp                                ; $76F1: $08 $0F $4C
    ld l, l                                       ; $76F4: $6D
    nop                                           ; $76F5: $00
    nop                                           ; $76F6: $00
    ld h, d                                       ; $76F7: $62
    dec b                                         ; $76F8: $05
    dec d                                         ; $76F9: $15
    rrca                                          ; $76FA: $0F
    and b                                         ; $76FB: $A0
    ld l, h                                       ; $76FC: $6C
    ld b, b                                       ; $76FD: $40
    rrca                                          ; $76FE: $0F
    or b                                          ; $76FF: $B0
    ld l, h                                       ; $7700: $6C
    ld d, b                                       ; $7701: $50
    rrca                                          ; $7702: $0F
    and b                                         ; $7703: $A0
    ld l, h                                       ; $7704: $6C
    ld b, b                                       ; $7705: $40
    rrca                                          ; $7706: $0F
    ld a, [de]                                    ; $7707: $1A
    ld l, l                                       ; $7708: $6D
    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    dec bc                                        ; $770B: $0B
    rlca                                          ; $770C: $07
    add hl, de                                    ; $770D: $19
    ld b, d                                       ; $770E: $42
    inc d                                         ; $770F: $14
    ld c, $DA                                     ; $7710: $0E $DA
    ld h, e                                       ; $7712: $63
    ld e, h                                       ; $7713: $5C
    nop                                           ; $7714: $00
    ld [bc], a                                    ; $7715: $02
    dec d                                         ; $7716: $15
    ld c, $DA                                     ; $7717: $0E $DA
    ld h, e                                       ; $7719: $63
    ld b, b                                       ; $771A: $40
    ld c, $A0                                     ; $771B: $0E $A0
    ld h, e                                       ; $771D: $63
    ld [$DA0E], sp                                ; $771E: $08 $0E $DA
    ld h, e                                       ; $7721: $63
    jr nz, jr_015_7732                            ; $7722: $20 $0E

    inc c                                         ; $7724: $0C
    ld h, h                                       ; $7725: $64
    ld [$160E], sp                                ; $7726: $08 $0E $16
    ld h, h                                       ; $7729: $64
    ld [$0C0E], sp                                ; $772A: $08 $0E $0C
    ld h, h                                       ; $772D: $64
    ld [$160E], sp                                ; $772E: $08 $0E $16
    ld h, h                                       ; $7731: $64

jr_015_7732:
    ld [$0C0E], sp                                ; $7732: $08 $0E $0C
    ld h, h                                       ; $7735: $64
    ld [$160E], sp                                ; $7736: $08 $0E $16
    ld h, h                                       ; $7739: $64
    ld [$0C0E], sp                                ; $773A: $08 $0E $0C
    ld h, h                                       ; $773D: $64
    ld [$DA0E], sp                                ; $773E: $08 $0E $DA
    ld h, e                                       ; $7741: $63
    jr nz, jr_015_7744                            ; $7742: $20 $00

jr_015_7744:
    ld e, h                                       ; $7744: $5C
    ld bc, $1503                                  ; $7745: $01 $03 $15
    ld c, $0C                                     ; $7748: $0E $0C
    ld h, h                                       ; $774A: $64
    db $10                                        ; $774B: $10
    ld c, $E4                                     ; $774C: $0E $E4
    ld h, e                                       ; $774E: $63
    db $10                                        ; $774F: $10
    ld c, $70                                     ; $7750: $0E $70
    ld h, e                                       ; $7752: $63
    db $10                                        ; $7753: $10
    ld c, $50                                     ; $7754: $0E $50
    ld h, e                                       ; $7756: $63
    jr nc, @+$10                                  ; $7757: $30 $0E

    ld hl, sp+$63                                 ; $7759: $F8 $63
    nop                                           ; $775B: $00
    nop                                           ; $775C: $00
    dec bc                                        ; $775D: $0B
    nop                                           ; $775E: $00
    ld e, h                                       ; $775F: $5C
    ld [bc], a                                    ; $7760: $02
    inc bc                                        ; $7761: $03
    dec d                                         ; $7762: $15
    ld c, $E4                                     ; $7763: $0E $E4
    ld h, e                                       ; $7765: $63
    jr nz, jr_015_7776                            ; $7766: $20 $0E

    xor $63                                       ; $7768: $EE $63
    jr nz, @+$10                                  ; $776A: $20 $0E

    jp c, Jump_015_6063                           ; $776C: $DA $63 $60

    ld c, $34                                     ; $776F: $0E $34
    ld h, h                                       ; $7771: $64
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    ld h, d                                       ; $7774: $62
    ld [bc], a                                    ; $7775: $02

jr_015_7776:
    ld e, e                                       ; $7776: $5B
    dec d                                         ; $7777: $15
    jp z, $156F                                   ; $7778: $CA $6F $15

    ld c, $60                                     ; $777B: $0E $60
    ld h, e                                       ; $777D: $63
    db $10                                        ; $777E: $10
    ld c, $DA                                     ; $777F: $0E $DA
    ld h, e                                       ; $7781: $63
    db $10                                        ; $7782: $10
    ld c, $E4                                     ; $7783: $0E $E4
    ld h, e                                       ; $7785: $63
    db $10                                        ; $7786: $10
    ld c, $A0                                     ; $7787: $0E $A0
    ld h, e                                       ; $7789: $63
    jr z, jr_015_779A                             ; $778A: $28 $0E

    jp c, $0063                                   ; $778C: $DA $63 $00

    nop                                           ; $778F: $00
    add hl, de                                    ; $7790: $19
    ld b, d                                       ; $7791: $42
    inc d                                         ; $7792: $14
    db $10                                        ; $7793: $10
    rra                                           ; $7794: $1F
    ld [hl], b                                    ; $7795: $70
    ld h, b                                       ; $7796: $60
    ld [bc], a                                    ; $7797: $02
    ld d, [hl]                                    ; $7798: $56
    inc bc                                        ; $7799: $03

jr_015_779A:
    dec d                                         ; $779A: $15
    db $10                                        ; $779B: $10
    ld e, e                                       ; $779C: $5B
    ld [hl], b                                    ; $779D: $70
    jr jr_015_77B0                                ; $779E: $18 $10

    rra                                           ; $77A0: $1F
    ld [hl], b                                    ; $77A1: $70
    db $10                                        ; $77A2: $10
    db $10                                        ; $77A3: $10
    ld d, c                                       ; $77A4: $51
    ld [hl], b                                    ; $77A5: $70
    db $10                                        ; $77A6: $10
    db $10                                        ; $77A7: $10
    add hl, hl                                    ; $77A8: $29
    ld [hl], b                                    ; $77A9: $70
    ld h, b                                       ; $77AA: $60
    db $10                                        ; $77AB: $10
    rra                                           ; $77AC: $1F
    ld [hl], b                                    ; $77AD: $70
    db $10                                        ; $77AE: $10
    db $10                                        ; $77AF: $10

jr_015_77B0:
    inc sp                                        ; $77B0: $33
    ld [hl], b                                    ; $77B1: $70
    jr nz, jr_015_77B4                            ; $77B2: $20 $00

jr_015_77B4:
    dec d                                         ; $77B4: $15
    db $10                                        ; $77B5: $10
    ld e, e                                       ; $77B6: $5B
    ld [hl], b                                    ; $77B7: $70
    ld [$3310], sp                                ; $77B8: $08 $10 $33
    ld [hl], b                                    ; $77BB: $70
    ld [$4710], sp                                ; $77BC: $08 $10 $47
    ld [hl], b                                    ; $77BF: $70
    ld [$3310], sp                                ; $77C0: $08 $10 $33
    ld [hl], b                                    ; $77C3: $70
    ld [$5B10], sp                                ; $77C4: $08 $10 $5B
    ld [hl], b                                    ; $77C7: $70
    ld [$3310], sp                                ; $77C8: $08 $10 $33
    ld [hl], b                                    ; $77CB: $70
    ld [$4710], sp                                ; $77CC: $08 $10 $47
    ld [hl], b                                    ; $77CF: $70
    ld [$3310], sp                                ; $77D0: $08 $10 $33
    ld [hl], b                                    ; $77D3: $70
    ld b, b                                       ; $77D4: $40
    nop                                           ; $77D5: $00
    ld b, l                                       ; $77D6: $45
    dec d                                         ; $77D7: $15
    or h                                          ; $77D8: $B4
    ld [hl], a                                    ; $77D9: $77
    inc d                                         ; $77DA: $14
    db $10                                        ; $77DB: $10
    rra                                           ; $77DC: $1F
    ld [hl], b                                    ; $77DD: $70
    ld h, b                                       ; $77DE: $60
    inc bc                                        ; $77DF: $03
    dec d                                         ; $77E0: $15
    db $10                                        ; $77E1: $10
    ld d, c                                       ; $77E2: $51
    ld [hl], b                                    ; $77E3: $70
    db $10                                        ; $77E4: $10
    db $10                                        ; $77E5: $10
    rra                                           ; $77E6: $1F
    ld [hl], b                                    ; $77E7: $70
    jr nz, @+$12                                  ; $77E8: $20 $10

    ld d, c                                       ; $77EA: $51
    ld [hl], b                                    ; $77EB: $70
    db $10                                        ; $77EC: $10
    db $10                                        ; $77ED: $10
    add hl, hl                                    ; $77EE: $29
    ld [hl], b                                    ; $77EF: $70
    ld [$B510], sp                                ; $77F0: $08 $10 $B5
    ld l, a                                       ; $77F3: $6F
    db $10                                        ; $77F4: $10
    db $10                                        ; $77F5: $10
    ld d, c                                       ; $77F6: $51
    ld [hl], b                                    ; $77F7: $70
    ld [$1F10], sp                                ; $77F8: $08 $10 $1F
    ld [hl], b                                    ; $77FB: $70
    jr nz, jr_015_780E                            ; $77FC: $20 $10

    ld d, c                                       ; $77FE: $51
    ld [hl], b                                    ; $77FF: $70
    ld [$2910], sp                                ; $7800: $08 $10 $29
    ld [hl], b                                    ; $7803: $70
    ld b, b                                       ; $7804: $40
    nop                                           ; $7805: $00
    dec d                                         ; $7806: $15
    db $10                                        ; $7807: $10
    add hl, hl                                    ; $7808: $29
    ld [hl], b                                    ; $7809: $70
    ld b, b                                       ; $780A: $40
    db $10                                        ; $780B: $10
    ld d, c                                       ; $780C: $51
    ld [hl], b                                    ; $780D: $70

jr_015_780E:
    ld [$2910], sp                                ; $780E: $08 $10 $29
    ld [hl], b                                    ; $7811: $70
    ld [$3D10], sp                                ; $7812: $08 $10 $3D
    ld [hl], b                                    ; $7815: $70
    ld [$2910], sp                                ; $7816: $08 $10 $29
    ld [hl], b                                    ; $7819: $70
    ld [$5110], sp                                ; $781A: $08 $10 $51
    ld [hl], b                                    ; $781D: $70
    ld [$2910], sp                                ; $781E: $08 $10 $29
    ld [hl], b                                    ; $7821: $70
    ld [$3D10], sp                                ; $7822: $08 $10 $3D
    ld [hl], b                                    ; $7825: $70
    ld [$4500], sp                                ; $7826: $08 $00 $45
    dec d                                         ; $7829: $15
    ld b, $78                                     ; $782A: $06 $78
    dec d                                         ; $782C: $15
    db $10                                        ; $782D: $10
    rra                                           ; $782E: $1F
    ld [hl], b                                    ; $782F: $70
    ld b, b                                       ; $7830: $40
    db $10                                        ; $7831: $10
    push hl                                       ; $7832: $E5
    ld l, a                                       ; $7833: $6F
    ld b, b                                       ; $7834: $40
    db $10                                        ; $7835: $10
    rra                                           ; $7836: $1F
    ld [hl], b                                    ; $7837: $70
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    add hl, de                                    ; $783A: $19
    dec d                                         ; $783B: $15
    db $10                                        ; $783C: $10
    add hl, hl                                    ; $783D: $29
    ld [hl], b                                    ; $783E: $70
    jr nz, jr_015_7851                            ; $783F: $20 $10

    rra                                           ; $7841: $1F
    ld [hl], b                                    ; $7842: $70
    jr z, jr_015_7855                             ; $7843: $28 $10

    push af                                       ; $7845: $F5
    ld l, a                                       ; $7846: $6F
    db $10                                        ; $7847: $10
    db $10                                        ; $7848: $10
    push hl                                       ; $7849: $E5
    ld l, a                                       ; $784A: $6F
    ld b, b                                       ; $784B: $40
    db $10                                        ; $784C: $10
    rra                                           ; $784D: $1F
    ld [hl], b                                    ; $784E: $70
    nop                                           ; $784F: $00
    nop                                           ; $7850: $00

jr_015_7851:
    add hl, de                                    ; $7851: $19
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00

jr_015_7855:
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

Call_015_789B:
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
