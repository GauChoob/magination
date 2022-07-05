SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld [bc], a                                    ; $4000: $02
    nop                                           ; $4001: $00
    rra                                           ; $4002: $1F
    ld a, [de]                                    ; $4003: $1A
    rrca                                          ; $4004: $0F
    ld b, l                                       ; $4005: $45
    db $18, $F4                                   ; $4006: $18 $F4
    ld c, b                                       ; $4008: $48
    ld [bc], a                                    ; $4009: $02
    dec d                                         ; $400A: $15
    dec b                                         ; $400B: $05
    nop                                           ; $400C: $00
    rra                                           ; $400D: $1F
    ld b, l                                       ; $400E: $45
    jr jr_018_4068                                ; $400F: $18 $57

    ld b, h                                       ; $4011: $44
    ld [bc], a                                    ; $4012: $02
    cpl                                           ; $4013: $2F
    nop                                           ; $4014: $00
    ld a, [de]                                    ; $4015: $1A
    rrca                                          ; $4016: $0F
    ld b, l                                       ; $4017: $45
    db $18, $97                                   ; $4018: $18 $97
    ld b, h                                       ; $401A: $44
    ld [bc], a                                    ; $401B: $02
    ld d, $06                                     ; $401C: $16 $06
    cpl                                           ; $401E: $2F
    nop                                           ; $401F: $00
    ld b, l                                       ; $4020: $45
    db $18, $D7                                   ; $4021: $18 $D7
    ld b, h                                       ; $4023: $44
    ld [bc], a                                    ; $4024: $02
    rlca                                          ; $4025: $07
    inc b                                         ; $4026: $04
    cpl                                           ; $4027: $2F
    nop                                           ; $4028: $00
    ld b, l                                       ; $4029: $45
    jr jr_018_4082                                ; $402A: $18 $56

    ld c, d                                       ; $402C: $4A
    ld [bc], a                                    ; $402D: $02
    jr z, jr_018_4031                             ; $402E: $28 $01

    cpl                                           ; $4030: $2F

jr_018_4031:
    nop                                           ; $4031: $00
    ld b, l                                       ; $4032: $45
    db $18, $98                                   ; $4033: $18 $98
    ld c, d                                       ; $4035: $4A
    and d                                         ; $4036: $A2
    ld h, $A1                                     ; $4037: $26 $A1
    ld bc, $0422                                  ; $4039: $01 $22 $04
    ld b, b                                       ; $403C: $40
    rst $28                                       ; $403D: $EF
    ld d, $D3                                     ; $403E: $16 $D3
    ld l, b                                       ; $4040: $68
    ld c, e                                       ; $4041: $4B
    ld b, b                                       ; $4042: $40
    ld a, h                                       ; $4043: $7C
    or $45                                        ; $4044: $F6 $45
    ld a, h                                       ; $4046: $7C
    ld a, a                                       ; $4047: $7F
    ld b, l                                       ; $4048: $45
    db $D3                                        ; $4049: $D3
    ld b, $02                                     ; $404A: $06 $02
    ld b, l                                       ; $404C: $45
    db $D3                                        ; $404D: $D3
    ld de, $4215                                  ; $404E: $11 $15 $42
    and d                                         ; $4051: $A2
    ld h, $A1                                     ; $4052: $26 $A1
    ld [bc], a                                    ; $4054: $02
    ld [hl+], a                                   ; $4055: $22
    inc b                                         ; $4056: $04
    ld b, b                                       ; $4057: $40
    rst $28                                       ; $4058: $EF
    ld [hl], d                                    ; $4059: $72
    call nc, Call_018_4B68                        ; $405A: $D4 $68 $4B
    ld b, b                                       ; $405D: $40
    ld a, h                                       ; $405E: $7C
    or $45                                        ; $405F: $F6 $45
    ld a, h                                       ; $4061: $7C
    ld a, a                                       ; $4062: $7F
    ld de, $01D4                                  ; $4063: $11 $D4 $01
    ld b, $11                                     ; $4066: $06 $11

jr_018_4068:
    call nc, $2115                                ; $4068: $D4 $15 $21
    ld b, d                                       ; $406B: $42
    and d                                         ; $406C: $A2
    ld h, $A1                                     ; $406D: $26 $A1
    inc b                                         ; $406F: $04
    ld [hl+], a                                   ; $4070: $22
    inc b                                         ; $4071: $04
    ld b, b                                       ; $4072: $40
    rst $28                                       ; $4073: $EF
    add hl, de                                    ; $4074: $19
    sub $68                                       ; $4075: $D6 $68
    ld c, e                                       ; $4077: $4B
    ld b, b                                       ; $4078: $40
    ld a, h                                       ; $4079: $7C
    or $45                                        ; $407A: $F6 $45
    ld a, h                                       ; $407C: $7C
    ld a, a                                       ; $407D: $7F
    or [hl]                                       ; $407E: $B6
    push de                                       ; $407F: $D5
    dec b                                         ; $4080: $05

jr_018_4081:
    ld [bc], a                                    ; $4081: $02

jr_018_4082:
    or [hl]                                       ; $4082: $B6
    push de                                       ; $4083: $D5
    ld e, $16                                     ; $4084: $1E $16
    ld b, d                                       ; $4086: $42
    and h                                         ; $4087: $A4
    ld b, d                                       ; $4088: $42
    and e                                         ; $4089: $A3
    inc b                                         ; $408A: $04

jr_018_408B:
    nop                                           ; $408B: $00
    ld [de], a                                    ; $408C: $12
    cp h                                          ; $408D: $BC
    jp nc, Jump_018_42A4                          ; $408E: $D2 $A4 $42

    and e                                         ; $4091: $A3
    ld [$1500], sp                                ; $4092: $08 $00 $15
    cp [hl]                                       ; $4095: $BE
    jp nc, $0002                                  ; $4096: $D2 $02 $00

jr_018_4099:
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    jr nc, jr_018_408B                            ; $409C: $30 $ED

    ld d, [hl]                                    ; $409E: $56
    jr nz, @+$49                                  ; $409F: $20 $47

    rlca                                          ; $40A1: $07
    jr @-$47                                      ; $40A2: $18 $B7

    ld b, b                                       ; $40A4: $40
    jr jr_018_4081                                ; $40A5: $18 $DA

    ld b, b                                       ; $40A7: $40
    jr jr_018_4099                                ; $40A8: $18 $EF

jr_018_40AA:
    ld b, b                                       ; $40AA: $40
    jr jr_018_40AA                                ; $40AB: $18 $FD

    ld b, b                                       ; $40AD: $40
    jr @+$14                                      ; $40AE: $18 $12

    ld b, c                                       ; $40B0: $41
    jr @+$29                                      ; $40B1: $18 $27

    ld b, c                                       ; $40B3: $41
    jr jr_018_40F9                                ; $40B4: $18 $43

    ld b, c                                       ; $40B6: $41
    dec h                                         ; $40B7: $25
    ld [$296C], sp                                ; $40B8: $08 $6C $29
    ld c, h                                       ; $40BB: $4C
    inc hl                                        ; $40BC: $23
    ld b, b                                       ; $40BD: $40
    ld l, $09                                     ; $40BE: $2E $09
    ld d, l                                       ; $40C0: $55
    jr z, jr_018_4113                             ; $40C1: $28 $50

    ld bc, $2E2B                                  ; $40C3: $01 $2B $2E
    add hl, bc                                    ; $40C6: $09
    ld b, c                                       ; $40C7: $41
    ld h, $4C                                     ; $40C8: $26 $4C
    ld bc, $2E2B                                  ; $40CA: $01 $2B $2E
    add hl, bc                                    ; $40CD: $09
    ld d, l                                       ; $40CE: $55
    ld h, $4D                                     ; $40CF: $26 $4D
    ld bc, $2E2B                                  ; $40D1: $01 $2B $2E
    add hl, bc                                    ; $40D4: $09
    jr @+$27                                      ; $40D5: $18 $25

    ld c, e                                       ; $40D7: $4B
    ld bc, $2527                                  ; $40D8: $01 $27 $25
    ld [$2A6C], sp                                ; $40DB: $08 $6C $2A
    ld c, h                                       ; $40DE: $4C
    inc hl                                        ; $40DF: $23
    ld b, b                                       ; $40E0: $40
    ld l, $09                                     ; $40E1: $2E $09
    jr @+$2C                                      ; $40E3: $18 $2A

    ld d, l                                       ; $40E5: $55
    ld bc, $2E2B                                  ; $40E6: $01 $2B $2E
    add hl, bc                                    ; $40E9: $09
    jr nz, @+$2A                                  ; $40EA: $20 $28

    ld d, b                                       ; $40EC: $50
    ld bc, $2527                                  ; $40ED: $01 $27 $25
    ld [$2A6C], sp                                ; $40F0: $08 $6C $2A
    ld c, h                                       ; $40F3: $4C
    inc hl                                        ; $40F4: $23
    ld b, b                                       ; $40F5: $40
    ld l, $09                                     ; $40F6: $2E $09
    ld b, c                                       ; $40F8: $41

jr_018_40F9:
    ld a, [hl+]                                   ; $40F9: $2A
    ld d, e                                       ; $40FA: $53
    ld bc, $2527                                  ; $40FB: $01 $27 $25
    ld [$276C], sp                                ; $40FE: $08 $6C $27
    ld c, h                                       ; $4101: $4C
    inc hl                                        ; $4102: $23
    ld b, b                                       ; $4103: $40
    ld l, $09                                     ; $4104: $2E $09
    ld b, c                                       ; $4106: $41

jr_018_4107:
    ld h, $4D                                     ; $4107: $26 $4D
    ld bc, $2E2B                                  ; $4109: $01 $2B $2E
    add hl, bc                                    ; $410C: $09
    ld d, l                                       ; $410D: $55
    ld h, $4C                                     ; $410E: $26 $4C
    ld bc, $2527                                  ; $4110: $01 $27 $25

jr_018_4113:
    ld [$286C], sp                                ; $4113: $08 $6C $28
    ld c, h                                       ; $4116: $4C
    inc hl                                        ; $4117: $23
    ld b, b                                       ; $4118: $40
    ld l, $09                                     ; $4119: $2E $09
    ld b, c                                       ; $411B: $41
    ld h, $4C                                     ; $411C: $26 $4C
    ld bc, $2E2B                                  ; $411E: $01 $2B $2E
    add hl, bc                                    ; $4121: $09
    ld b, c                                       ; $4122: $41
    dec h                                         ; $4123: $25
    ld c, e                                       ; $4124: $4B
    ld bc, $2527                                  ; $4125: $01 $27 $25
    ld [$296C], sp                                ; $4128: $08 $6C $29
    ld c, h                                       ; $412B: $4C
    inc hl                                        ; $412C: $23

jr_018_412D:
    ld b, b                                       ; $412D: $40
    ld l, $09                                     ; $412E: $2E $09
    ld b, c                                       ; $4130: $41
    ld a, [hl+]                                   ; $4131: $2A
    ld d, h                                       ; $4132: $54
    ld bc, $2E2B                                  ; $4133: $01 $2B $2E
    add hl, bc                                    ; $4136: $09
    ld d, l                                       ; $4137: $55
    jr z, jr_018_418A                             ; $4138: $28 $50

    ld bc, $2E2B                                  ; $413A: $01 $2B $2E
    add hl, bc                                    ; $413D: $09
    jr nz, @+$28                                  ; $413E: $20 $26

    ld c, l                                       ; $4140: $4D
    ld bc, $2527                                  ; $4141: $01 $27 $25
    ld [$286C], sp                                ; $4144: $08 $6C $28
    ld c, h                                       ; $4147: $4C
    inc hl                                        ; $4148: $23
    ld b, b                                       ; $4149: $40
    ld l, $09                                     ; $414A: $2E $09
    ld b, c                                       ; $414C: $41
    add hl, hl                                    ; $414D: $29
    ld d, d                                       ; $414E: $52
    ld bc, $2E2B                                  ; $414F: $01 $2B $2E
    add hl, bc                                    ; $4152: $09
    ld d, l                                       ; $4153: $55
    jr z, @+$52                                   ; $4154: $28 $50

jr_018_4156:
    ld bc, $2527                                  ; $4156: $01 $27 $25
    ld [$286C], sp                                ; $4159: $08 $6C $28
    ld c, h                                       ; $415C: $4C
    inc hl                                        ; $415D: $23
    ld b, b                                       ; $415E: $40
    ld l, $09                                     ; $415F: $2E $09

jr_018_4161:
    ld b, c                                       ; $4161: $41
    jr z, jr_018_41B3                             ; $4162: $28 $4F

    ld bc, $2E2B                                  ; $4164: $01 $2B $2E
    add hl, bc                                    ; $4167: $09
    ld d, l                                       ; $4168: $55
    daa                                           ; $4169: $27
    ld c, h                                       ; $416A: $4C
    ld bc, $0227                                  ; $416B: $01 $27 $02

jr_018_416E:
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    jr nc, jr_018_4161                            ; $4172: $30 $ED

    ld d, [hl]                                    ; $4174: $56
    jr nz, @+$49                                  ; $4175: $20 $47

    rlca                                          ; $4177: $07
    jr jr_018_4107                                ; $4178: $18 $8D

    ld b, c                                       ; $417A: $41
    jr jr_018_412D                                ; $417B: $18 $B0

    ld b, c                                       ; $417D: $41
    jr @-$39                                      ; $417E: $18 $C5

    ld b, c                                       ; $4180: $41
    jr jr_018_4156                                ; $4181: $18 $D3

    ld b, c                                       ; $4183: $41
    jr jr_018_416E                                ; $4184: $18 $E8

jr_018_4186:
    ld b, c                                       ; $4186: $41
    jr jr_018_4186                                ; $4187: $18 $FD

    ld b, c                                       ; $4189: $41

jr_018_418A:
    jr jr_018_41A5                                ; $418A: $18 $19

    ld b, d                                       ; $418C: $42
    dec h                                         ; $418D: $25
    add hl, bc                                    ; $418E: $09
    ld l, h                                       ; $418F: $6C
    add hl, hl                                    ; $4190: $29
    ld c, h                                       ; $4191: $4C
    inc hl                                        ; $4192: $23
    ld b, b                                       ; $4193: $40
    ld l, $09                                     ; $4194: $2E $09
    ld d, l                                       ; $4196: $55
    jr z, jr_018_41E9                             ; $4197: $28 $50

    ld bc, $2E2B                                  ; $4199: $01 $2B $2E
    add hl, bc                                    ; $419C: $09
    ld b, c                                       ; $419D: $41
    ld h, $4C                                     ; $419E: $26 $4C
    ld bc, $2E2B                                  ; $41A0: $01 $2B $2E
    add hl, bc                                    ; $41A3: $09
    ld d, l                                       ; $41A4: $55

jr_018_41A5:
    ld h, $4D                                     ; $41A5: $26 $4D
    ld bc, $2E2B                                  ; $41A7: $01 $2B $2E
    add hl, bc                                    ; $41AA: $09
    jr @+$27                                      ; $41AB: $18 $25

    ld c, e                                       ; $41AD: $4B
    ld bc, $2527                                  ; $41AE: $01 $27 $25
    add hl, bc                                    ; $41B1: $09
    ld l, h                                       ; $41B2: $6C

jr_018_41B3:
    ld a, [hl+]                                   ; $41B3: $2A
    ld c, h                                       ; $41B4: $4C
    inc hl                                        ; $41B5: $23
    ld b, b                                       ; $41B6: $40
    ld l, $09                                     ; $41B7: $2E $09
    jr @+$2C                                      ; $41B9: $18 $2A

    ld d, l                                       ; $41BB: $55
    ld bc, $2E2B                                  ; $41BC: $01 $2B $2E
    add hl, bc                                    ; $41BF: $09
    jr nz, jr_018_41EA                            ; $41C0: $20 $28

    ld d, b                                       ; $41C2: $50
    ld bc, $2527                                  ; $41C3: $01 $27 $25
    add hl, bc                                    ; $41C6: $09
    ld l, h                                       ; $41C7: $6C
    ld a, [hl+]                                   ; $41C8: $2A
    ld c, h                                       ; $41C9: $4C
    inc hl                                        ; $41CA: $23
    ld b, b                                       ; $41CB: $40
    ld l, $09                                     ; $41CC: $2E $09
    ld b, c                                       ; $41CE: $41
    ld a, [hl+]                                   ; $41CF: $2A
    ld d, e                                       ; $41D0: $53
    ld bc, $2527                                  ; $41D1: $01 $27 $25
    add hl, bc                                    ; $41D4: $09
    ld l, h                                       ; $41D5: $6C
    daa                                           ; $41D6: $27
    ld c, h                                       ; $41D7: $4C
    inc hl                                        ; $41D8: $23
    ld b, b                                       ; $41D9: $40
    ld l, $09                                     ; $41DA: $2E $09
    ld b, c                                       ; $41DC: $41
    ld h, $4D                                     ; $41DD: $26 $4D
    ld bc, $2E2B                                  ; $41DF: $01 $2B $2E
    add hl, bc                                    ; $41E2: $09
    ld d, l                                       ; $41E3: $55
    ld h, $4C                                     ; $41E4: $26 $4C
    ld bc, $2527                                  ; $41E6: $01 $27 $25

jr_018_41E9:
    add hl, bc                                    ; $41E9: $09

jr_018_41EA:
    ld l, h                                       ; $41EA: $6C
    jr z, @+$4E                                   ; $41EB: $28 $4C

    inc hl                                        ; $41ED: $23
    ld b, b                                       ; $41EE: $40
    ld l, $09                                     ; $41EF: $2E $09
    ld b, c                                       ; $41F1: $41
    ld h, $4C                                     ; $41F2: $26 $4C
    ld bc, $2E2B                                  ; $41F4: $01 $2B $2E
    add hl, bc                                    ; $41F7: $09
    ld b, c                                       ; $41F8: $41
    dec h                                         ; $41F9: $25
    ld c, e                                       ; $41FA: $4B
    ld bc, $2527                                  ; $41FB: $01 $27 $25
    add hl, bc                                    ; $41FE: $09
    ld l, h                                       ; $41FF: $6C
    add hl, hl                                    ; $4200: $29
    ld c, h                                       ; $4201: $4C
    inc hl                                        ; $4202: $23
    ld b, b                                       ; $4203: $40
    ld l, $09                                     ; $4204: $2E $09
    ld b, c                                       ; $4206: $41
    ld a, [hl+]                                   ; $4207: $2A
    ld d, h                                       ; $4208: $54
    ld bc, $2E2B                                  ; $4209: $01 $2B $2E
    add hl, bc                                    ; $420C: $09
    ld d, l                                       ; $420D: $55
    jr z, jr_018_4260                             ; $420E: $28 $50

    ld bc, $2E2B                                  ; $4210: $01 $2B $2E
    add hl, bc                                    ; $4213: $09
    jr nz, @+$28                                  ; $4214: $20 $26

    ld c, l                                       ; $4216: $4D
    ld bc, $2527                                  ; $4217: $01 $27 $25
    add hl, bc                                    ; $421A: $09
    ld l, h                                       ; $421B: $6C
    jr z, jr_018_426A                             ; $421C: $28 $4C

    inc hl                                        ; $421E: $23
    ld b, b                                       ; $421F: $40
    ld l, $09                                     ; $4220: $2E $09
    ld b, c                                       ; $4222: $41
    add hl, hl                                    ; $4223: $29
    ld d, d                                       ; $4224: $52
    ld bc, $2E2B                                  ; $4225: $01 $2B $2E
    add hl, bc                                    ; $4228: $09
    ld d, l                                       ; $4229: $55
    jr z, jr_018_427C                             ; $422A: $28 $50

    ld bc, $2527                                  ; $422C: $01 $27 $25
    add hl, bc                                    ; $422F: $09
    ld l, h                                       ; $4230: $6C
    jr z, jr_018_427F                             ; $4231: $28 $4C

    inc hl                                        ; $4233: $23
    ld b, b                                       ; $4234: $40
    ld l, $09                                     ; $4235: $2E $09

jr_018_4237:
    ld b, c                                       ; $4237: $41
    jr z, jr_018_4289                             ; $4238: $28 $4F

    ld bc, $2E2B                                  ; $423A: $01 $2B $2E
    add hl, bc                                    ; $423D: $09
    ld d, l                                       ; $423E: $55
    daa                                           ; $423F: $27
    ld c, h                                       ; $4240: $4C
    ld bc, $0227                                  ; $4241: $01 $27 $02
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    jr nc, jr_018_4237                            ; $4248: $30 $ED

    ld d, [hl]                                    ; $424A: $56
    ld [hl+], a                                   ; $424B: $22
    dec h                                         ; $424C: $25
    add hl, bc                                    ; $424D: $09
    ld e, h                                       ; $424E: $5C
    ld a, [hl+]                                   ; $424F: $2A
    ld c, h                                       ; $4250: $4C
    inc hl                                        ; $4251: $23
    ld b, b                                       ; $4252: $40
    dec hl                                        ; $4253: $2B
    xor d                                         ; $4254: $AA
    dec a                                         ; $4255: $3D
    db $D3                                        ; $4256: $D3
    rlca                                          ; $4257: $07
    ld [bc], a                                    ; $4258: $02
    xor d                                         ; $4259: $AA
    ld a, $D3                                     ; $425A: $3E $D3
    rlca                                          ; $425C: $07
    adc d                                         ; $425D: $8A
    sbc e                                         ; $425E: $9B
    cp b                                          ; $425F: $B8

jr_018_4260:
    halt                                          ; $4260: $76
    sbc a                                         ; $4261: $9F
    ld c, b                                       ; $4262: $48

jr_018_4263:
    ld l, a                                       ; $4263: $6F
    ld [hl], a                                    ; $4264: $77
    jr nz, jr_018_42D7                            ; $4265: $20 $70

jr_018_4267:
    ld l, c                                       ; $4267: $69
    ld [hl], h                                    ; $4268: $74

jr_018_4269:
    ld l, c                                       ; $4269: $69

jr_018_426A:
    ld h, [hl]                                    ; $426A: $66
    ld [hl], l                                    ; $426B: $75
    ld l, h                                       ; $426C: $6C
    ld l, $FE                                     ; $426D: $2E $FE

jr_018_426F:
    db $FD                                        ; $426F: $FD
    sbc d                                         ; $4270: $9A
    ld l, $09                                     ; $4271: $2E $09
    ld b, h                                       ; $4273: $44
    inc hl                                        ; $4274: $23
    ld e, d                                       ; $4275: $5A
    nop                                           ; $4276: $00

jr_018_4277:
    dec hl                                        ; $4277: $2B
    ld e, d                                       ; $4278: $5A
    jr jr_018_4263                                ; $4279: $18 $E8

    ld b, d                                       ; $427B: $42

jr_018_427C:
    ld e, [hl]                                    ; $427C: $5E
    dec hl                                        ; $427D: $2B
    ld e, d                                       ; $427E: $5A

jr_018_427F:
    jr jr_018_4269                                ; $427F: $18 $E8

    ld b, d                                       ; $4281: $42
    ld e, [hl]                                    ; $4282: $5E
    dec hl                                        ; $4283: $2B
    ld e, d                                       ; $4284: $5A
    jr jr_018_4277                                ; $4285: $18 $F0

    ld b, d                                       ; $4287: $42
    ld e, [hl]                                    ; $4288: $5E

jr_018_4289:
    dec hl                                        ; $4289: $2B
    ld l, $09                                     ; $428A: $2E $09
    ccf                                           ; $428C: $3F
    ld a, [hl+]                                   ; $428D: $2A
    add d                                         ; $428E: $82
    nop                                           ; $428F: $00
    ld b, e                                       ; $4290: $43
    ld d, $07                                     ; $4291: $16 $07
    rrca                                          ; $4293: $0F
    ld bc, $D0AF                                  ; $4294: $01 $AF $D0
    dec b                                         ; $4297: $05
    nop                                           ; $4298: $00
    jr jr_018_426F                                ; $4299: $18 $D4

    ld b, d                                       ; $429B: $42
    sbc e                                         ; $429C: $9B
    cp b                                          ; $429D: $B8
    halt                                          ; $429E: $76
    sbc a                                         ; $429F: $9F
    ld b, c                                       ; $42A0: $41
    ld l, b                                       ; $42A1: $68
    ld l, b                                       ; $42A2: $68
    inc l                                         ; $42A3: $2C

Jump_018_42A4:
    jr nz, jr_018_42F9                            ; $42A4: $20 $53

    ld h, c                                       ; $42A6: $61
    ld [hl], d                                    ; $42A7: $72
    ld h, d                                       ; $42A8: $62
    ld l, c                                       ; $42A9: $69
    ld l, h                                       ; $42AA: $6C
    inc l                                         ; $42AB: $2C
    cp $70                                        ; $42AC: $FE $70
    ld l, h                                       ; $42AE: $6C
    ld h, l                                       ; $42AF: $65
    ld h, c                                       ; $42B0: $61

jr_018_42B1:
    ld [hl], e                                    ; $42B1: $73
    ld h, l                                       ; $42B2: $65
    jr nz, jr_018_4328                            ; $42B3: $20 $73

    ld l, b                                       ; $42B5: $68
    ld l, a                                       ; $42B6: $6F
    ld [hl], a                                    ; $42B7: $77
    jr nz, jr_018_4329                            ; $42B8: $20 $6F

    ld [hl], l                                    ; $42BA: $75
    ld [hl], d                                    ; $42BB: $72
    cp $67                                        ; $42BC: $FE $67
    ld [hl], l                                    ; $42BE: $75
    ld h, l                                       ; $42BF: $65
    ld [hl], e                                    ; $42C0: $73
    ld [hl], h                                    ; $42C1: $74
    jr nz, jr_018_4338                            ; $42C2: $20 $74

    ld l, b                                       ; $42C4: $68

jr_018_42C5:
    ld h, l                                       ; $42C5: $65
    jr nz, jr_018_432C                            ; $42C6: $20 $64

    ld l, a                                       ; $42C8: $6F
    ld l, a                                       ; $42C9: $6F
    ld [hl], d                                    ; $42CA: $72
    ld l, $FE                                     ; $42CB: $2E $FE
    db $FD                                        ; $42CD: $FD
    sbc d                                         ; $42CE: $9A
    dec hl                                        ; $42CF: $2B
    ld b, l                                       ; $42D0: $45
    jr jr_018_42B1                                ; $42D1: $18 $DE

    ld b, d                                       ; $42D3: $42
    cpl                                           ; $42D4: $2F
    add hl, bc                                    ; $42D5: $09
    ld h, l                                       ; $42D6: $65

jr_018_42D7:
    ld e, [hl]                                    ; $42D7: $5E
    ld a, [bc]                                    ; $42D8: $0A
    dec hl                                        ; $42D9: $2B
    ld b, l                                       ; $42DA: $45
    jr jr_018_4267                                ; $42DB: $18 $8A

    ld b, d                                       ; $42DD: $42
    ld e, d                                       ; $42DE: $5A
    jr jr_018_42E5                                ; $42DF: $18 $04

    ld b, e                                       ; $42E1: $43
    ld e, [hl]                                    ; $42E2: $5E
    dec hl                                        ; $42E3: $2B
    ld b, l                                       ; $42E4: $45

jr_018_42E5:
    jr jr_018_42C5                                ; $42E5: $18 $DE

    ld b, d                                       ; $42E7: $42
    ld b, a                                       ; $42E8: $47
    ld [bc], a                                    ; $42E9: $02
    jr @+$23                                      ; $42EA: $18 $21

    ld b, e                                       ; $42EC: $43
    jr jr_018_4318                                ; $42ED: $18 $29

    ld b, e                                       ; $42EF: $43
    ld b, a                                       ; $42F0: $47
    ld b, $18                                     ; $42F1: $06 $18
    ld hl, $1843                                  ; $42F3: $21 $43 $18
    ld hl, $1843                                  ; $42F6: $21 $43 $18

jr_018_42F9:
    add hl, hl                                    ; $42F9: $29
    ld b, e                                       ; $42FA: $43
    jr jr_018_4326                                ; $42FB: $18 $29

    ld b, e                                       ; $42FD: $43
    jr jr_018_4331                                ; $42FE: $18 $31

    ld b, e                                       ; $4300: $43
    jr jr_018_433B                                ; $4301: $18 $38

    ld b, e                                       ; $4303: $43
    ld b, a                                       ; $4304: $47
    add hl, bc                                    ; $4305: $09
    jr jr_018_4329                                ; $4306: $18 $21

    ld b, e                                       ; $4308: $43
    jr jr_018_432C                                ; $4309: $18 $21

    ld b, e                                       ; $430B: $43
    jr jr_018_4337                                ; $430C: $18 $29

    ld b, e                                       ; $430E: $43
    jr jr_018_433A                                ; $430F: $18 $29

    ld b, e                                       ; $4311: $43
    jr jr_018_4345                                ; $4312: $18 $31

    ld b, e                                       ; $4314: $43
    jr @+$3A                                      ; $4315: $18 $38

    ld b, e                                       ; $4317: $43

jr_018_4318:
    jr jr_018_4352                                ; $4318: $18 $38

    ld b, e                                       ; $431A: $43
    jr jr_018_435C                                ; $431B: $18 $3F

    ld b, e                                       ; $431D: $43
    jr @+$41                                      ; $431E: $18 $3F

    ld b, e                                       ; $4320: $43
    ld l, $09                                     ; $4321: $2E $09
    daa                                           ; $4323: $27
    jr z, jr_018_4380                             ; $4324: $28 $5A

jr_018_4326:
    nop                                           ; $4326: $00
    ld d, h                                       ; $4327: $54

jr_018_4328:
    ld b, d                                       ; $4328: $42

jr_018_4329:
    ld l, $09                                     ; $4329: $2E $09
    ld b, [hl]                                    ; $432B: $46

jr_018_432C:
    jr z, @+$66                                   ; $432C: $28 $64

    nop                                           ; $432E: $00
    ld d, h                                       ; $432F: $54
    ld b, d                                       ; $4330: $42

jr_018_4331:
    cpl                                           ; $4331: $2F
    add hl, bc                                    ; $4332: $09
    ld h, l                                       ; $4333: $65
    ld e, [hl]                                    ; $4334: $5E
    nop                                           ; $4335: $00
    ld d, h                                       ; $4336: $54

jr_018_4337:
    ld b, d                                       ; $4337: $42

jr_018_4338:
    jr z, jr_018_4343                             ; $4338: $28 $09

jr_018_433A:
    ld e, c                                       ; $433A: $59

jr_018_433B:
    ld [hl], d                                    ; $433B: $72
    ld c, $54                                     ; $433C: $0E $54
    ld b, d                                       ; $433E: $42
    ld l, $09                                     ; $433F: $2E $09
    ccf                                           ; $4341: $3F
    ld a, [hl+]                                   ; $4342: $2A

jr_018_4343:
    ld h, h                                       ; $4343: $64
    nop                                           ; $4344: $00

jr_018_4345:
    ld d, h                                       ; $4345: $54
    ld b, d                                       ; $4346: $42
    sub e                                         ; $4347: $93
    ld h, l                                       ; $4348: $65
    dec l                                         ; $4349: $2D
    ld c, a                                       ; $434A: $4F
    ld c, a                                       ; $434B: $4F
    ld h, h                                       ; $434C: $64
    call c, Call_018_6953                         ; $434D: $DC $53 $69
    push af                                       ; $4350: $F5
    ld d, e                                       ; $4351: $53

jr_018_4352:
    ld h, [hl]                                    ; $4352: $66
    ret nz                                        ; $4353: $C0

    ld e, h                                       ; $4354: $5C
    ld hl, $000B                                  ; $4355: $21 $0B $00
    ld [hl-], a                                   ; $4358: $32
    jr @-$67                                      ; $4359: $18 $97

    ld b, b                                       ; $435B: $40

jr_018_435C:
    adc l                                         ; $435C: $8D
    ld b, c                                       ; $435D: $41
    ld sp, $4718                                  ; $435E: $31 $18 $47
    ld b, e                                       ; $4361: $43
    ld [hl+], a                                   ; $4362: $22
    adc $40                                       ; $4363: $CE $40
    ld c, e                                       ; $4365: $4B
    ld bc, $A224                                  ; $4366: $01 $24 $A2
    jr jr_018_436B                                ; $4369: $18 $00

jr_018_436B:
    nop                                           ; $436B: $00
    dec bc                                        ; $436C: $0B
    ld b, h                                       ; $436D: $44
    jr jr_018_4371                                ; $436E: $18 $01

    nop                                           ; $4370: $00

jr_018_4371:
    adc l                                         ; $4371: $8D
    ld b, e                                       ; $4372: $43
    jr jr_018_4377                                ; $4373: $18 $02

    nop                                           ; $4375: $00
    and d                                         ; $4376: $A2

jr_018_4377:
    ld b, e                                       ; $4377: $43
    jr jr_018_437D                                ; $4378: $18 $03

    nop                                           ; $437A: $00
    or a                                          ; $437B: $B7
    ld b, e                                       ; $437C: $43

jr_018_437D:
    jr jr_018_4383                                ; $437D: $18 $04

    nop                                           ; $437F: $00

jr_018_4380:
    call z, $1843                                 ; $4380: $CC $43 $18

jr_018_4383:
    dec b                                         ; $4383: $05
    nop                                           ; $4384: $00
    pop hl                                        ; $4385: $E1
    ld b, e                                       ; $4386: $43
    jr jr_018_438F                                ; $4387: $18 $06

    nop                                           ; $4389: $00
    or $43                                        ; $438A: $F6 $43
    rst $38                                       ; $438C: $FF
    dec b                                         ; $438D: $05
    nop                                           ; $438E: $00

jr_018_438F:
    ld l, e                                       ; $438F: $6B
    ld c, d                                       ; $4390: $4A
    jr jr_018_43A5                                ; $4391: $18 $12

    ld a, b                                       ; $4393: $78
    db $D3                                        ; $4394: $D3
    nop                                           ; $4395: $00
    jr jr_018_43BC                                ; $4396: $18 $24

    ld b, h                                       ; $4398: $44
    ld [hl+], a                                   ; $4399: $22
    dec b                                         ; $439A: $05
    ld b, b                                       ; $439B: $40
    add h                                         ; $439C: $84
    jr jr_018_43B5                                ; $439D: $18 $16

    ld b, [hl]                                    ; $439F: $46
    inc e                                         ; $43A0: $1C
    ld b, h                                       ; $43A1: $44
    dec b                                         ; $43A2: $05
    nop                                           ; $43A3: $00
    ld l, e                                       ; $43A4: $6B

jr_018_43A5:
    ld c, d                                       ; $43A5: $4A
    inc e                                         ; $43A6: $1C
    rra                                           ; $43A7: $1F
    db $EC                                        ; $43A8: $EC
    push de                                       ; $43A9: $D5
    nop                                           ; $43AA: $00
    jr jr_018_43D1                                ; $43AB: $18 $24

    ld b, h                                       ; $43AD: $44
    ld [hl+], a                                   ; $43AE: $22
    dec b                                         ; $43AF: $05
    ld b, b                                       ; $43B0: $40
    add h                                         ; $43B1: $84
    inc e                                         ; $43B2: $1C
    inc hl                                        ; $43B3: $23
    ld b, [hl]                                    ; $43B4: $46

jr_018_43B5:
    inc e                                         ; $43B5: $1C
    ld b, h                                       ; $43B6: $44
    dec b                                         ; $43B7: $05
    nop                                           ; $43B8: $00
    ld l, e                                       ; $43B9: $6B

jr_018_43BA:
    ld c, d                                       ; $43BA: $4A
    ld [de], a                                    ; $43BB: $12

jr_018_43BC:
    dec de                                        ; $43BC: $1B
    ld [hl+], a                                   ; $43BD: $22
    push de                                       ; $43BE: $D5
    nop                                           ; $43BF: $00
    jr jr_018_43E6                                ; $43C0: $18 $24

    ld b, h                                       ; $43C2: $44
    ld [hl+], a                                   ; $43C3: $22
    dec b                                         ; $43C4: $05
    ld b, b                                       ; $43C5: $40
    add h                                         ; $43C6: $84
    ld [de], a                                    ; $43C7: $12
    rra                                           ; $43C8: $1F
    ld b, [hl]                                    ; $43C9: $46
    inc e                                         ; $43CA: $1C
    ld b, h                                       ; $43CB: $44
    dec b                                         ; $43CC: $05
    nop                                           ; $43CD: $00
    ld l, e                                       ; $43CE: $6B
    ld c, d                                       ; $43CF: $4A
    ld [de], a                                    ; $43D0: $12

jr_018_43D1:
    inc b                                         ; $43D1: $04
    jp nc, $00D0                                  ; $43D2: $D2 $D0 $00

jr_018_43D5:
    jr @+$26                                      ; $43D5: $18 $24

    ld b, h                                       ; $43D7: $44
    ld [hl+], a                                   ; $43D8: $22
    dec b                                         ; $43D9: $05
    ld b, b                                       ; $43DA: $40
    add h                                         ; $43DB: $84
    ld [de], a                                    ; $43DC: $12
    ld [$1C46], sp                                ; $43DD: $08 $46 $1C
    ld b, h                                       ; $43E0: $44
    dec b                                         ; $43E1: $05
    nop                                           ; $43E2: $00
    ld l, e                                       ; $43E3: $6B
    ld c, d                                       ; $43E4: $4A
    dec e                                         ; $43E5: $1D

jr_018_43E6:
    dec bc                                        ; $43E6: $0B
    dec l                                         ; $43E7: $2D
    jp nc, $1800                                  ; $43E8: $D2 $00 $18

    inc h                                         ; $43EB: $24
    ld b, h                                       ; $43EC: $44
    ld [hl+], a                                   ; $43ED: $22
    dec b                                         ; $43EE: $05
    ld b, b                                       ; $43EF: $40
    add h                                         ; $43F0: $84
    dec e                                         ; $43F1: $1D
    rrca                                          ; $43F2: $0F
    ld b, [hl]                                    ; $43F3: $46
    inc e                                         ; $43F4: $1C
    ld b, h                                       ; $43F5: $44
    dec b                                         ; $43F6: $05
    nop                                           ; $43F7: $00
    ld l, e                                       ; $43F8: $6B
    ld c, d                                       ; $43F9: $4A

jr_018_43FA:
    ld h, $0C                                     ; $43FA: $26 $0C
    ld h, [hl]                                    ; $43FC: $66
    jp nc, $1800                                  ; $43FD: $D2 $00 $18

    inc h                                         ; $4400: $24
    ld b, h                                       ; $4401: $44
    ld [hl+], a                                   ; $4402: $22
    dec b                                         ; $4403: $05
    ld b, b                                       ; $4404: $40
    add h                                         ; $4405: $84
    ld h, $12                                     ; $4406: $26 $12
    ld b, [hl]                                    ; $4408: $46
    inc e                                         ; $4409: $1C
    ld b, h                                       ; $440A: $44
    dec b                                         ; $440B: $05
    nop                                           ; $440C: $00
    add c                                         ; $440D: $81

jr_018_440E:
    ld e, l                                       ; $440E: $5D
    nop                                           ; $440F: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    ret nc                                        ; $4412: $D0

    nop                                           ; $4413: $00
    jr nz, jr_018_43D5                            ; $4414: $20 $BF

    ld d, b                                       ; $4416: $50
    ld [hl+], a                                   ; $4417: $22
    dec b                                         ; $4418: $05
    ld b, b                                       ; $4419: $40
    nop                                           ; $441A: $00
    add d                                         ; $441B: $82
    xor h                                         ; $441C: $AC
    inc h                                         ; $441D: $24
    and d                                         ; $441E: $A2
    nop                                           ; $441F: $00
    sub h                                         ; $4420: $94
    rra                                           ; $4421: $1F
    ld [de], a                                    ; $4422: $12
    ld b, d                                       ; $4423: $42
    dec d                                         ; $4424: $15

jr_018_4425:
    jr nz, jr_018_4442                            ; $4425: $20 $1B

    ld d, l                                       ; $4427: $55
    stop                                          ; $4428: $10 $00
    ld d, $20                                     ; $442A: $16 $20
    dec de                                        ; $442C: $1B

jr_018_442D:
    ld d, l                                       ; $442D: $55
    stop                                          ; $442E: $10 $00
    inc bc                                        ; $4430: $03
    nop                                           ; $4431: $00
    dec d                                         ; $4432: $15
    jr nz, jr_018_43BA                            ; $4433: $20 $85

    ld d, h                                       ; $4435: $54
    jr nz, jr_018_4438                            ; $4436: $20 $00

jr_018_4438:
    ld e, d                                       ; $4438: $5A
    jr jr_018_4478                                ; $4439: $18 $3D

    ld b, h                                       ; $443B: $44
    ld b, d                                       ; $443C: $42
    rlca                                          ; $443D: $07
    nop                                           ; $443E: $00
    add c                                         ; $443F: $81
    ld e, l                                       ; $4440: $5D
    add hl, bc                                    ; $4441: $09

jr_018_4442:
    nop                                           ; $4442: $00
    jr nz, jr_018_43FA                            ; $4443: $20 $B5

    ld d, b                                       ; $4445: $50
    ld b, d                                       ; $4446: $42
    ld [bc], a                                    ; $4447: $02
    dec b                                         ; $4448: $05
    dec d                                         ; $4449: $15
    rra                                           ; $444A: $1F
    nop                                           ; $444B: $00
    ld b, l                                       ; $444C: $45
    jr jr_018_4496                                ; $444D: $18 $47

    ld b, e                                       ; $444F: $43
    ld bc, $0225                                  ; $4450: $01 $25 $02
    ld b, l                                       ; $4453: $45
    jr jr_018_4425                                ; $4454: $18 $CF

    ld c, h                                       ; $4456: $4C
    sub e                                         ; $4457: $93
    ld h, l                                       ; $4458: $65
    inc a                                         ; $4459: $3C
    ld c, a                                       ; $445A: $4F
    ld c, a                                       ; $445B: $4F
    ld h, h                                       ; $445C: $64
    ld a, [bc]                                    ; $445D: $0A
    ld d, h                                       ; $445E: $54
    ld h, [hl]                                    ; $445F: $66
    ret nz                                        ; $4460: $C0

    ld e, h                                       ; $4461: $5C
    ld hl, $0005                                  ; $4462: $21 $05 $00

jr_018_4465:
    add c                                         ; $4465: $81
    ld e, l                                       ; $4466: $5D
    dec b                                         ; $4467: $05
    dec b                                         ; $4468: $05
    rst $38                                       ; $4469: $FF
    ret nc                                        ; $446A: $D0

    nop                                           ; $446B: $00
    jr nz, jr_018_442D                            ; $446C: $20 $BF

    ld d, b                                       ; $446E: $50
    ld [hl+], a                                   ; $446F: $22
    dec b                                         ; $4470: $05
    ld b, b                                       ; $4471: $40
    dec bc                                        ; $4472: $0B
    nop                                           ; $4473: $00
    ld [hl-], a                                   ; $4474: $32
    jr jr_018_440E                                ; $4475: $18 $97

    ld b, b                                       ; $4477: $40

jr_018_4478:
    adc l                                         ; $4478: $8D
    ld b, c                                       ; $4479: $41
    ld sp, $5718                                  ; $447A: $31 $18 $57
    ld b, h                                       ; $447D: $44
    ld [hl+], a                                   ; $447E: $22
    adc $40                                       ; $447F: $CE $40
    nop                                           ; $4481: $00
    add d                                         ; $4482: $82
    sub h                                         ; $4483: $94
    rra                                           ; $4484: $1F
    ld [de], a                                    ; $4485: $12
    ld b, d                                       ; $4486: $42
    ld [bc], a                                    ; $4487: $02
    nop                                           ; $4488: $00
    cpl                                           ; $4489: $2F
    rrca                                          ; $448A: $0F
    ld a, [de]                                    ; $448B: $1A
    ld b, l                                       ; $448C: $45
    jr jr_018_44D6                                ; $448D: $18 $47

    ld b, e                                       ; $448F: $43
    ld bc, $2638                                  ; $4490: $01 $38 $26
    ld b, l                                       ; $4493: $45
    jr jr_018_4465                                ; $4494: $18 $CF

jr_018_4496:
    ld c, h                                       ; $4496: $4C
    sub e                                         ; $4497: $93
    ld h, l                                       ; $4498: $65
    ld c, e                                       ; $4499: $4B
    ld c, a                                       ; $449A: $4F
    ld c, a                                       ; $449B: $4F
    ld h, h                                       ; $449C: $64
    inc de                                        ; $449D: $13
    ld d, h                                       ; $449E: $54
    ld h, [hl]                                    ; $449F: $66
    ret nz                                        ; $44A0: $C0

    ld e, h                                       ; $44A1: $5C
    ld hl, $0005                                  ; $44A2: $21 $05 $00

jr_018_44A5:
    add c                                         ; $44A5: $81
    ld e, l                                       ; $44A6: $5D
    dec b                                         ; $44A7: $05
    dec b                                         ; $44A8: $05
    rst $38                                       ; $44A9: $FF
    ret nc                                        ; $44AA: $D0

    nop                                           ; $44AB: $00
    jr nz, @-$3F                                  ; $44AC: $20 $BF

    ld d, b                                       ; $44AE: $50
    ld [hl+], a                                   ; $44AF: $22
    dec b                                         ; $44B0: $05
    ld b, b                                       ; $44B1: $40
    dec bc                                        ; $44B2: $0B
    nop                                           ; $44B3: $00
    ld [hl-], a                                   ; $44B4: $32
    jr @-$67                                      ; $44B5: $18 $97

    ld b, b                                       ; $44B7: $40
    adc l                                         ; $44B8: $8D
    ld b, c                                       ; $44B9: $41
    ld sp, $9718                                  ; $44BA: $31 $18 $97
    ld b, h                                       ; $44BD: $44
    ld [hl+], a                                   ; $44BE: $22
    adc $40                                       ; $44BF: $CE $40
    nop                                           ; $44C1: $00
    add d                                         ; $44C2: $82
    sub h                                         ; $44C3: $94
    rra                                           ; $44C4: $1F
    ld [de], a                                    ; $44C5: $12
    ld b, d                                       ; $44C6: $42
    ld [bc], a                                    ; $44C7: $02
    ld b, $16                                     ; $44C8: $06 $16
    nop                                           ; $44CA: $00
    cpl                                           ; $44CB: $2F
    ld b, l                                       ; $44CC: $45
    jr jr_018_4516                                ; $44CD: $18 $47

    ld b, e                                       ; $44CF: $43
    ld bc, $3C19                                  ; $44D0: $01 $19 $3C
    ld b, l                                       ; $44D3: $45
    jr jr_018_44A5                                ; $44D4: $18 $CF

jr_018_44D6:
    ld c, h                                       ; $44D6: $4C
    sub e                                         ; $44D7: $93
    ld h, l                                       ; $44D8: $65
    ld e, d                                       ; $44D9: $5A
    ld c, a                                       ; $44DA: $4F
    ld c, a                                       ; $44DB: $4F
    ld h, h                                       ; $44DC: $64
    inc e                                         ; $44DD: $1C
    ld d, h                                       ; $44DE: $54
    ld h, [hl]                                    ; $44DF: $66
    ret nz                                        ; $44E0: $C0

    ld e, h                                       ; $44E1: $5C
    ld hl, $0005                                  ; $44E2: $21 $05 $00

jr_018_44E5:
    add c                                         ; $44E5: $81
    ld e, l                                       ; $44E6: $5D
    dec b                                         ; $44E7: $05
    dec b                                         ; $44E8: $05
    rst $38                                       ; $44E9: $FF
    ret nc                                        ; $44EA: $D0

    nop                                           ; $44EB: $00
    jr nz, @-$3F                                  ; $44EC: $20 $BF

    ld d, b                                       ; $44EE: $50
    ld [hl+], a                                   ; $44EF: $22
    dec b                                         ; $44F0: $05
    ld b, b                                       ; $44F1: $40
    dec bc                                        ; $44F2: $0B
    nop                                           ; $44F3: $00
    ld [hl-], a                                   ; $44F4: $32
    jr @-$67                                      ; $44F5: $18 $97

    ld b, b                                       ; $44F7: $40
    adc l                                         ; $44F8: $8D
    ld b, c                                       ; $44F9: $41
    ld sp, $D718                                  ; $44FA: $31 $18 $D7
    ld b, h                                       ; $44FD: $44
    ld [hl+], a                                   ; $44FE: $22
    adc $40                                       ; $44FF: $CE $40
    nop                                           ; $4501: $00
    add d                                         ; $4502: $82
    sub h                                         ; $4503: $94
    rra                                           ; $4504: $1F
    ld [de], a                                    ; $4505: $12
    ld b, d                                       ; $4506: $42
    ld [bc], a                                    ; $4507: $02
    rra                                           ; $4508: $1F
    nop                                           ; $4509: $00
    rrca                                          ; $450A: $0F
    ld a, [de]                                    ; $450B: $1A
    ld b, l                                       ; $450C: $45
    jr jr_018_4556                                ; $450D: $18 $47

    ld b, e                                       ; $450F: $43
    ld bc, $1A03                                  ; $4510: $01 $03 $1A
    ld b, l                                       ; $4513: $45
    jr jr_018_44E5                                ; $4514: $18 $CF

jr_018_4516:
    ld c, h                                       ; $4516: $4C
    ld b, e                                       ; $4517: $43
    nop                                           ; $4518: $00
    dec h                                         ; $4519: $25
    and c                                         ; $451A: $A1
    ld bc, $2718                                  ; $451B: $01 $18 $27
    ld b, l                                       ; $451E: $45
    xor a                                         ; $451F: $AF
    dec h                                         ; $4520: $25
    and c                                         ; $4521: $A1
    ld bc, $1845                                  ; $4522: $01 $45 $18
    dec sp                                        ; $4525: $3B
    ld c, c                                       ; $4526: $49
    ld b, d                                       ; $4527: $42
    sbc e                                         ; $4528: $9B
    cp b                                          ; $4529: $B8
    halt                                          ; $452A: $76
    sbc a                                         ; $452B: $9F
    ld c, b                                       ; $452C: $48
    ld l, c                                       ; $452D: $69
    ld l, c                                       ; $452E: $69
    ld l, c                                       ; $452F: $69
    jr nz, jr_018_45A6                            ; $4530: $20 $74

    ld l, b                                       ; $4532: $68
    ld h, l                                       ; $4533: $65
    ld [hl], d                                    ; $4534: $72
    ld h, l                                       ; $4535: $65
    ld hl, $FDFE                                  ; $4536: $21 $FE $FD
    sbc d                                         ; $4539: $9A
    ld e, b                                       ; $453A: $58
    ld bc, $9B42                                  ; $453B: $01 $42 $9B
    cp b                                          ; $453E: $B8
    halt                                          ; $453F: $76
    sbc a                                         ; $4540: $9F
    ld d, a                                       ; $4541: $57
    ld l, b                                       ; $4542: $68
    ld h, c                                       ; $4543: $61
    ld [hl], h                                    ; $4544: $74
    daa                                           ; $4545: $27
    ld [hl], e                                    ; $4546: $73
    jr nz, jr_018_45BD                            ; $4547: $20 $74

    ld l, b                                       ; $4549: $68
    ld h, l                                       ; $454A: $65
    rst $38                                       ; $454B: $FF
    ld l, l                                       ; $454C: $6D
    ld h, c                                       ; $454D: $61
    ld [hl], h                                    ; $454E: $74
    ld [hl], h                                    ; $454F: $74
    ld h, l                                       ; $4550: $65
    ld [hl], d                                    ; $4551: $72
    inc l                                         ; $4552: $2C
    jr nz, jr_018_45B7                            ; $4553: $20 $62

    ld l, a                                       ; $4555: $6F

jr_018_4556:
    ld a, c                                       ; $4556: $79
    ccf                                           ; $4557: $3F
    cp $49                                        ; $4558: $FE $49
    jr nz, jr_018_45D0                            ; $455A: $20 $74

    ld l, a                                       ; $455C: $6F
    ld l, h                                       ; $455D: $6C
    ld h, h                                       ; $455E: $64
    jr nz, jr_018_45DA                            ; $455F: $20 $79

    ld l, a                                       ; $4561: $6F
    ld [hl], l                                    ; $4562: $75
    rst $38                                       ; $4563: $FF
    ld [hl], a                                    ; $4564: $77
    ld h, l                                       ; $4565: $65
    daa                                           ; $4566: $27
    ld h, h                                       ; $4567: $64
    jr nz, jr_018_45D7                            ; $4568: $20 $6D

    ld h, l                                       ; $456A: $65
    ld h, l                                       ; $456B: $65
    ld [hl], h                                    ; $456C: $74
    cp $61                                        ; $456D: $FE $61
    ld h, a                                       ; $456F: $67
    ld h, c                                       ; $4570: $61
    ld l, c                                       ; $4571: $69
    ld l, [hl]                                    ; $4572: $6E
    ld l, $FE                                     ; $4573: $2E $FE
    ld e, c                                       ; $4575: $59
    ld l, a                                       ; $4576: $6F
    ld [hl], l                                    ; $4577: $75
    jr nz, jr_018_45ED                            ; $4578: $20 $73

    ld l, b                                       ; $457A: $68
    ld l, a                                       ; $457B: $6F
    ld [hl], l                                    ; $457C: $75
    ld l, h                                       ; $457D: $6C
    ld h, h                                       ; $457E: $64
    jr nz, @+$64                                  ; $457F: $20 $62

    ld h, l                                       ; $4581: $65
    rst $38                                       ; $4582: $FF
    ld l, b                                       ; $4583: $68
    ld h, c                                       ; $4584: $61
    ld [hl], b                                    ; $4585: $70
    ld [hl], b                                    ; $4586: $70
    ld a, c                                       ; $4587: $79
    ld hl, $FDFE                                  ; $4588: $21 $FE $FD
    sbc e                                         ; $458B: $9B
    ld a, b                                       ; $458C: $78
    ld [hl], b                                    ; $458D: $70
    sbc a                                         ; $458E: $9F
    ld d, a                                       ; $458F: $57
    ld l, b                                       ; $4590: $68
    ld a, c                                       ; $4591: $79
    ccf                                           ; $4592: $3F
    cp $FD                                        ; $4593: $FE $FD
    sbc e                                         ; $4595: $9B
    cp b                                          ; $4596: $B8
    halt                                          ; $4597: $76
    sbc a                                         ; $4598: $9F
    ld c, b                                       ; $4599: $48
    ld l, a                                       ; $459A: $6F
    jr nz, jr_018_4605                            ; $459B: $20 $68

    ld l, a                                       ; $459D: $6F
    ld hl, $4220                                  ; $459E: $21 $20 $42
    ld h, l                                       ; $45A1: $65
    ld h, e                                       ; $45A2: $63
    ld h, c                                       ; $45A3: $61
    ld [hl], l                                    ; $45A4: $75
    ld [hl], e                                    ; $45A5: $73

jr_018_45A6:
    ld h, l                                       ; $45A6: $65
    rst $38                                       ; $45A7: $FF
    ld c, c                                       ; $45A8: $49
    daa                                           ; $45A9: $27
    ld l, l                                       ; $45AA: $6D
    jr nz, jr_018_4614                            ; $45AB: $20 $67

    ld l, a                                       ; $45AD: $6F
    ld l, c                                       ; $45AE: $69
    ld l, [hl]                                    ; $45AF: $6E
    ld h, a                                       ; $45B0: $67
    jr nz, jr_018_4627                            ; $45B1: $20 $74

    ld l, a                                       ; $45B3: $6F
    cp $6D                                        ; $45B4: $FE $6D
    ld h, c                                       ; $45B6: $61

jr_018_45B7:
    ld l, e                                       ; $45B7: $6B
    ld h, l                                       ; $45B8: $65
    jr nz, jr_018_4634                            ; $45B9: $20 $79

    ld l, a                                       ; $45BB: $6F
    ld [hl], l                                    ; $45BC: $75

jr_018_45BD:
    jr nz, jr_018_4620                            ; $45BD: $20 $61

    ld l, [hl]                                    ; $45BF: $6E
    rst $38                                       ; $45C0: $FF
    ld l, a                                       ; $45C1: $6F
    ld h, [hl]                                    ; $45C2: $66
    ld h, [hl]                                    ; $45C3: $66
    ld h, l                                       ; $45C4: $65
    ld [hl], d                                    ; $45C5: $72
    jr nz, jr_018_4641                            ; $45C6: $20 $79

    ld l, a                                       ; $45C8: $6F
    ld [hl], l                                    ; $45C9: $75
    jr nz, jr_018_462F                            ; $45CA: $20 $63

    ld h, c                                       ; $45CC: $61
    ld l, [hl]                                    ; $45CD: $6E
    daa                                           ; $45CE: $27
    ld [hl], h                                    ; $45CF: $74

jr_018_45D0:
    cp $72                                        ; $45D0: $FE $72
    ld h, l                                       ; $45D2: $65
    ld h, [hl]                                    ; $45D3: $66
    ld [hl], l                                    ; $45D4: $75
    ld [hl], e                                    ; $45D5: $73
    ld h, l                                       ; $45D6: $65

jr_018_45D7:
    ld l, $FE                                     ; $45D7: $2E $FE
    db $FD                                        ; $45D9: $FD

jr_018_45DA:
    sbc e                                         ; $45DA: $9B
    ld a, b                                       ; $45DB: $78
    ld [hl], b                                    ; $45DC: $70
    sbc a                                         ; $45DD: $9F
    ld l, $2E                                     ; $45DE: $2E $2E
    ld l, $2E                                     ; $45E0: $2E $2E
    ld l, $2E                                     ; $45E2: $2E $2E
    ld l, $2E                                     ; $45E4: $2E $2E
    ld l, $FE                                     ; $45E6: $2E $FE
    db $FD                                        ; $45E8: $FD
    sbc e                                         ; $45E9: $9B
    cp b                                          ; $45EA: $B8
    halt                                          ; $45EB: $76
    sbc a                                         ; $45EC: $9F

jr_018_45ED:
    ld d, [hl]                                    ; $45ED: $56
    ld h, l                                       ; $45EE: $65
    ld [hl], d                                    ; $45EF: $72
    ld a, c                                       ; $45F0: $79
    jr nz, jr_018_466A                            ; $45F1: $20 $77

    ld h, l                                       ; $45F3: $65
    ld l, h                                       ; $45F4: $6C
    ld l, h                                       ; $45F5: $6C
    inc l                                         ; $45F6: $2C
    rst $38                                       ; $45F7: $FF
    ld c, c                                       ; $45F8: $49
    daa                                           ; $45F9: $27
    ld l, h                                       ; $45FA: $6C
    ld l, h                                       ; $45FB: $6C
    jr nz, jr_018_4668                            ; $45FC: $20 $6A

    ld [hl], l                                    ; $45FE: $75
    ld [hl], e                                    ; $45FF: $73
    ld [hl], h                                    ; $4600: $74
    cp $61                                        ; $4601: $FE $61
    ld [hl], e                                    ; $4603: $73
    ld [hl], e                                    ; $4604: $73

jr_018_4605:
    ld [hl], l                                    ; $4605: $75
    ld l, l                                       ; $4606: $6D
    ld h, l                                       ; $4607: $65
    jr nz, @+$7B                                  ; $4608: $20 $79

    ld l, a                                       ; $460A: $6F
    ld [hl], l                                    ; $460B: $75
    daa                                           ; $460C: $27
    ld [hl], d                                    ; $460D: $72
    ld h, l                                       ; $460E: $65
    rst $38                                       ; $460F: $FF
    ld l, c                                       ; $4610: $69
    ld l, [hl]                                    ; $4611: $6E
    ld [hl], h                                    ; $4612: $74
    ld h, l                                       ; $4613: $65

jr_018_4614:
    ld [hl], d                                    ; $4614: $72
    ld h, l                                       ; $4615: $65
    ld [hl], e                                    ; $4616: $73
    ld [hl], h                                    ; $4617: $74
    ld h, l                                       ; $4618: $65
    ld h, h                                       ; $4619: $64
    ld l, $FE                                     ; $461A: $2E $FE
    db $FD                                        ; $461C: $FD
    sbc d                                         ; $461D: $9A
    ld e, b                                       ; $461E: $58
    ld [bc], a                                    ; $461F: $02

jr_018_4620:
    ld b, d                                       ; $4620: $42
    sbc e                                         ; $4621: $9B
    cp b                                          ; $4622: $B8
    halt                                          ; $4623: $76
    sbc a                                         ; $4624: $9F
    ld c, b                                       ; $4625: $48
    ld h, l                                       ; $4626: $65

jr_018_4627:
    ld [hl], d                                    ; $4627: $72
    ld h, l                                       ; $4628: $65
    jr nz, @+$6B                                  ; $4629: $20 $69

    ld [hl], e                                    ; $462B: $73
    jr nz, @+$6F                                  ; $462C: $20 $6D

    ld a, c                                       ; $462E: $79

jr_018_462F:
    rst $38                                       ; $462F: $FF
    ld l, a                                       ; $4630: $6F
    ld h, [hl]                                    ; $4631: $66
    ld h, [hl]                                    ; $4632: $66
    ld h, l                                       ; $4633: $65

jr_018_4634:
    ld [hl], d                                    ; $4634: $72
    ld a, [hl-]                                   ; $4635: $3A
    cp $77                                        ; $4636: $FE $77
    ld h, l                                       ; $4638: $65
    jr nz, jr_018_469F                            ; $4639: $20 $64

    ld l, a                                       ; $463B: $6F
    ld l, [hl]                                    ; $463C: $6E
    daa                                           ; $463D: $27
    ld [hl], h                                    ; $463E: $74
    jr nz, jr_018_46A9                            ; $463F: $20 $68

jr_018_4641:
    ld h, c                                       ; $4641: $61
    halt                                          ; $4642: $76
    ld h, l                                       ; $4643: $65
    rst $38                                       ; $4644: $FF
    ld [hl], h                                    ; $4645: $74
    ld l, a                                       ; $4646: $6F
    jr nz, jr_018_46AF                            ; $4647: $20 $66

    ld l, c                                       ; $4649: $69
    ld h, a                                       ; $464A: $67
    ld l, b                                       ; $464B: $68
    ld [hl], h                                    ; $464C: $74
    ld l, $FE                                     ; $464D: $2E $FE
    ld c, c                                       ; $464F: $49
    jr nz, jr_018_46B3                            ; $4650: $20 $61

    ld l, l                                       ; $4652: $6D
    jr nz, @+$79                                  ; $4653: $20 $77

    ld l, c                                       ; $4655: $69
    ld l, h                                       ; $4656: $6C
    ld l, h                                       ; $4657: $6C
    ld l, c                                       ; $4658: $69
    ld l, [hl]                                    ; $4659: $6E
    ld h, a                                       ; $465A: $67
    rst $38                                       ; $465B: $FF
    ld [hl], h                                    ; $465C: $74
    ld l, a                                       ; $465D: $6F
    jr nz, @+$75                                  ; $465E: $20 $73

    ld l, c                                       ; $4660: $69
    ld l, l                                       ; $4661: $6D
    ld [hl], b                                    ; $4662: $70
    ld l, h                                       ; $4663: $6C
    ld a, c                                       ; $4664: $79
    cp $67                                        ; $4665: $FE $67
    ld l, c                                       ; $4667: $69

jr_018_4668:
    halt                                          ; $4668: $76
    ld h, l                                       ; $4669: $65

jr_018_466A:
    jr nz, jr_018_46E5                            ; $466A: $20 $79

    ld l, a                                       ; $466C: $6F
    ld [hl], l                                    ; $466D: $75
    jr nz, jr_018_46E4                            ; $466E: $20 $74

    ld l, b                                       ; $4670: $68
    ld h, l                                       ; $4671: $65
    rst $38                                       ; $4672: $FF
    ld b, e                                       ; $4673: $43
    ld l, a                                       ; $4674: $6F
    ld [hl], d                                    ; $4675: $72
    ld h, l                                       ; $4676: $65
    jr nz, @+$55                                  ; $4677: $20 $53

    ld [hl], h                                    ; $4679: $74
    ld l, a                                       ; $467A: $6F
    ld l, [hl]                                    ; $467B: $6E
    ld h, l                                       ; $467C: $65
    inc l                                         ; $467D: $2C
    cp $61                                        ; $467E: $FE $61
    ld l, [hl]                                    ; $4680: $6E
    ld h, h                                       ; $4681: $64
    jr nz, jr_018_46CD                            ; $4682: $20 $49

    jr nz, jr_018_46FD                            ; $4684: $20 $77

    ld l, c                                       ; $4686: $69
    ld l, h                                       ; $4687: $6C
    ld l, h                                       ; $4688: $6C
    rst $38                                       ; $4689: $FF
    ld h, c                                       ; $468A: $61
    ld l, h                                       ; $468B: $6C
    ld l, h                                       ; $468C: $6C
    ld l, a                                       ; $468D: $6F
    ld [hl], a                                    ; $468E: $77
    jr nz, jr_018_470A                            ; $468F: $20 $79

    ld l, a                                       ; $4691: $6F
    ld [hl], l                                    ; $4692: $75
    jr nz, jr_018_4709                            ; $4693: $20 $74

    ld l, a                                       ; $4695: $6F
    cp $75                                        ; $4696: $FE $75
    ld [hl], e                                    ; $4698: $73
    ld h, l                                       ; $4699: $65
    jr nz, jr_018_4705                            ; $469A: $20 $69

    ld [hl], h                                    ; $469C: $74
    jr nz, jr_018_4713                            ; $469D: $20 $74

jr_018_469F:
    ld l, a                                       ; $469F: $6F
    jr nz, jr_018_4709                            ; $46A0: $20 $67

    ld h, l                                       ; $46A2: $65
    ld [hl], h                                    ; $46A3: $74
    rst $38                                       ; $46A4: $FF
    ld l, b                                       ; $46A5: $68
    ld l, a                                       ; $46A6: $6F
    ld l, l                                       ; $46A7: $6D
    ld h, l                                       ; $46A8: $65

jr_018_46A9:
    ld l, $FE                                     ; $46A9: $2E $FE
    db $FD                                        ; $46AB: $FD
    sbc d                                         ; $46AC: $9A
    sbc e                                         ; $46AD: $9B
    cp b                                          ; $46AE: $B8

jr_018_46AF:
    halt                                          ; $46AF: $76
    sbc a                                         ; $46B0: $9F
    ld b, c                                       ; $46B1: $41
    ld l, h                                       ; $46B2: $6C

jr_018_46B3:
    ld l, h                                       ; $46B3: $6C
    jr nz, jr_018_472F                            ; $46B4: $20 $79

    ld l, a                                       ; $46B6: $6F
    ld [hl], l                                    ; $46B7: $75
    jr nz, jr_018_4722                            ; $46B8: $20 $68

    ld h, c                                       ; $46BA: $61
    halt                                          ; $46BB: $76
    ld h, l                                       ; $46BC: $65
    rst $38                                       ; $46BD: $FF
    ld [hl], h                                    ; $46BE: $74
    ld l, a                                       ; $46BF: $6F
    jr nz, jr_018_4726                            ; $46C0: $20 $64

    ld l, a                                       ; $46C2: $6F
    jr nz, jr_018_472E                            ; $46C3: $20 $69

    ld [hl], e                                    ; $46C5: $73
    jr nz, jr_018_473B                            ; $46C6: $20 $73

    ld [hl], h                                    ; $46C8: $74
    ld h, c                                       ; $46C9: $61
    ld a, c                                       ; $46CA: $79
    cp $6F                                        ; $46CB: $FE $6F

jr_018_46CD:
    ld [hl], l                                    ; $46CD: $75
    ld [hl], h                                    ; $46CE: $74
    jr nz, jr_018_4740                            ; $46CF: $20 $6F

    ld h, [hl]                                    ; $46D1: $66
    jr nz, @+$71                                  ; $46D2: $20 $6F

    ld [hl], l                                    ; $46D4: $75
    ld [hl], d                                    ; $46D5: $72
    jr nz, jr_018_474F                            ; $46D6: $20 $77

    ld h, c                                       ; $46D8: $61
    ld a, c                                       ; $46D9: $79
    ld l, $FE                                     ; $46DA: $2E $FE
    db $FD                                        ; $46DC: $FD
    sbc d                                         ; $46DD: $9A
    ld e, b                                       ; $46DE: $58
    inc bc                                        ; $46DF: $03
    ld b, d                                       ; $46E0: $42
    sbc e                                         ; $46E1: $9B
    cp b                                          ; $46E2: $B8
    halt                                          ; $46E3: $76

jr_018_46E4:
    sbc a                                         ; $46E4: $9F

jr_018_46E5:
    ld d, a                                       ; $46E5: $57
    ld h, l                                       ; $46E6: $65
    ld l, h                                       ; $46E7: $6C
    ld l, h                                       ; $46E8: $6C
    ccf                                           ; $46E9: $3F
    rst $38                                       ; $46EA: $FF
    ld d, a                                       ; $46EB: $57
    ld l, b                                       ; $46EC: $68
    ld h, c                                       ; $46ED: $61
    ld [hl], h                                    ; $46EE: $74
    jr nz, jr_018_4755                            ; $46EF: $20 $64

    ld l, a                                       ; $46F1: $6F
    jr nz, @+$7B                                  ; $46F2: $20 $79

    ld l, a                                       ; $46F4: $6F
    ld [hl], l                                    ; $46F5: $75
    cp $73                                        ; $46F6: $FE $73
    ld h, c                                       ; $46F8: $61
    ld a, c                                       ; $46F9: $79
    ccf                                           ; $46FA: $3F
    jr nz, @+$5B                                  ; $46FB: $20 $59

jr_018_46FD:
    ld l, a                                       ; $46FD: $6F
    ld [hl], l                                    ; $46FE: $75
    jr nz, jr_018_4765                            ; $46FF: $20 $64

    ld l, a                                       ; $4701: $6F
    ld l, [hl]                                    ; $4702: $6E
    daa                                           ; $4703: $27
    ld [hl], h                                    ; $4704: $74

jr_018_4705:
    rst $38                                       ; $4705: $FF
    ld h, e                                       ; $4706: $63
    ld h, c                                       ; $4707: $61
    ld [hl], d                                    ; $4708: $72

jr_018_4709:
    ld h, l                                       ; $4709: $65

jr_018_470A:
    jr nz, @+$63                                  ; $470A: $20 $61

    ld [hl], h                                    ; $470C: $74
    jr nz, jr_018_4770                            ; $470D: $20 $61

    ld l, h                                       ; $470F: $6C
    ld l, h                                       ; $4710: $6C
    cp $61                                        ; $4711: $FE $61

jr_018_4713:
    ld h, d                                       ; $4713: $62
    ld l, a                                       ; $4714: $6F
    ld [hl], l                                    ; $4715: $75
    ld [hl], h                                    ; $4716: $74
    jr nz, jr_018_478D                            ; $4717: $20 $74

    ld l, b                                       ; $4719: $68
    ld h, l                                       ; $471A: $65
    ld [hl], e                                    ; $471B: $73
    ld h, l                                       ; $471C: $65
    rst $38                                       ; $471D: $FF
    ld h, [hl]                                    ; $471E: $66
    ld l, a                                       ; $471F: $6F
    ld l, a                                       ; $4720: $6F
    ld l, h                                       ; $4721: $6C

jr_018_4722:
    ld [hl], e                                    ; $4722: $73
    ld l, $20                                     ; $4723: $2E $20
    ld d, h                                       ; $4725: $54

jr_018_4726:
    ld l, b                                       ; $4726: $68
    ld h, l                                       ; $4727: $65
    ld a, c                                       ; $4728: $79
    daa                                           ; $4729: $27
    ld [hl], d                                    ; $472A: $72
    ld h, l                                       ; $472B: $65
    cp $6E                                        ; $472C: $FE $6E

jr_018_472E:
    ld l, a                                       ; $472E: $6F

jr_018_472F:
    ld [hl], h                                    ; $472F: $74
    jr nz, jr_018_47A1                            ; $4730: $20 $6F

    ld h, [hl]                                    ; $4732: $66
    jr nz, jr_018_47AE                            ; $4733: $20 $79

    ld l, a                                       ; $4735: $6F
    ld [hl], l                                    ; $4736: $75
    ld [hl], d                                    ; $4737: $72
    cp $6B                                        ; $4738: $FE $6B
    ld l, c                                       ; $473A: $69

jr_018_473B:
    ld l, [hl]                                    ; $473B: $6E
    ld h, h                                       ; $473C: $64
    inc l                                         ; $473D: $2C
    jr nz, jr_018_47AE                            ; $473E: $20 $6E

jr_018_4740:
    ld l, a                                       ; $4740: $6F
    ld [hl], h                                    ; $4741: $74
    jr nz, jr_018_47B3                            ; $4742: $20 $6F

    ld h, [hl]                                    ; $4744: $66
    rst $38                                       ; $4745: $FF
    ld a, c                                       ; $4746: $79
    ld l, a                                       ; $4747: $6F
    ld [hl], l                                    ; $4748: $75
    ld [hl], d                                    ; $4749: $72
    jr nz, jr_018_47C3                            ; $474A: $20 $77

    ld l, a                                       ; $474C: $6F
    ld [hl], d                                    ; $474D: $72
    ld l, h                                       ; $474E: $6C

jr_018_474F:
    ld h, h                                       ; $474F: $64
    ld l, $FE                                     ; $4750: $2E $FE
    ld e, c                                       ; $4752: $59
    ld l, a                                       ; $4753: $6F
    ld [hl], l                                    ; $4754: $75

jr_018_4755:
    jr nz, jr_018_47BA                            ; $4755: $20 $63

    ld l, a                                       ; $4757: $6F
    ld [hl], l                                    ; $4758: $75
    ld l, h                                       ; $4759: $6C
    ld h, h                                       ; $475A: $64
    jr nz, jr_018_47BF                            ; $475B: $20 $62

    ld h, l                                       ; $475D: $65
    rst $38                                       ; $475E: $FF
    ld h, c                                       ; $475F: $61
    ld [hl], h                                    ; $4760: $74
    jr nz, jr_018_47CB                            ; $4761: $20 $68

    ld l, a                                       ; $4763: $6F
    ld l, l                                       ; $4764: $6D

jr_018_4765:
    ld h, l                                       ; $4765: $65
    jr nz, @+$74                                  ; $4766: $20 $72

    ld l, c                                       ; $4768: $69
    ld h, a                                       ; $4769: $67
    ld l, b                                       ; $476A: $68
    ld [hl], h                                    ; $476B: $74
    cp $6E                                        ; $476C: $FE $6E
    ld l, a                                       ; $476E: $6F
    ld [hl], a                                    ; $476F: $77

jr_018_4770:
    inc l                                         ; $4770: $2C
    jr nz, jr_018_47EA                            ; $4771: $20 $77

    ld l, c                                       ; $4773: $69
    ld [hl], h                                    ; $4774: $74
    ld l, b                                       ; $4775: $68
    jr nz, jr_018_47F1                            ; $4776: $20 $79

    ld l, a                                       ; $4778: $6F
    ld [hl], l                                    ; $4779: $75
    ld [hl], d                                    ; $477A: $72
    rst $38                                       ; $477B: $FF
    ld h, [hl]                                    ; $477C: $66
    ld [hl], d                                    ; $477D: $72
    ld l, c                                       ; $477E: $69
    ld h, l                                       ; $477F: $65
    ld l, [hl]                                    ; $4780: $6E
    ld h, h                                       ; $4781: $64
    ld [hl], e                                    ; $4782: $73
    ld l, $2E                                     ; $4783: $2E $2E
    ld l, $20                                     ; $4785: $2E $20
    ld a, c                                       ; $4787: $79
    ld l, a                                       ; $4788: $6F
    ld [hl], l                                    ; $4789: $75
    ld [hl], d                                    ; $478A: $72
    cp $66                                        ; $478B: $FE $66

jr_018_478D:
    ld h, c                                       ; $478D: $61
    ld l, l                                       ; $478E: $6D
    ld l, c                                       ; $478F: $69
    ld l, h                                       ; $4790: $6C
    ld a, c                                       ; $4791: $79
    ld l, $2E                                     ; $4792: $2E $2E
    ld l, $20                                     ; $4794: $2E $20
    ld c, c                                       ; $4796: $49
    daa                                           ; $4797: $27
    ld l, l                                       ; $4798: $6D
    rst $38                                       ; $4799: $FF
    ld [hl], e                                    ; $479A: $73
    ld [hl], l                                    ; $479B: $75
    ld [hl], d                                    ; $479C: $72
    ld h, l                                       ; $479D: $65
    jr nz, jr_018_4814                            ; $479E: $20 $74

    ld l, b                                       ; $47A0: $68

jr_018_47A1:
    ld h, l                                       ; $47A1: $65
    ld a, c                                       ; $47A2: $79
    daa                                           ; $47A3: $27
    ld [hl], d                                    ; $47A4: $72
    ld h, l                                       ; $47A5: $65
    cp $61                                        ; $47A6: $FE $61
    ld l, h                                       ; $47A8: $6C
    ld l, h                                       ; $47A9: $6C
    jr nz, @+$79                                  ; $47AA: $20 $77

    ld l, a                                       ; $47AC: $6F
    ld [hl], d                                    ; $47AD: $72

jr_018_47AE:
    ld [hl], d                                    ; $47AE: $72
    ld l, c                                       ; $47AF: $69
    ld h, l                                       ; $47B0: $65
    ld h, h                                       ; $47B1: $64
    rst $38                                       ; $47B2: $FF

jr_018_47B3:
    ld h, c                                       ; $47B3: $61
    ld h, d                                       ; $47B4: $62
    ld l, a                                       ; $47B5: $6F
    ld [hl], l                                    ; $47B6: $75
    ld [hl], h                                    ; $47B7: $74
    jr nz, jr_018_4833                            ; $47B8: $20 $79

jr_018_47BA:
    ld l, a                                       ; $47BA: $6F
    ld [hl], l                                    ; $47BB: $75
    ld hl, $FDFE                                  ; $47BC: $21 $FE $FD

jr_018_47BF:
    sbc d                                         ; $47BF: $9A
    ld e, b                                       ; $47C0: $58
    inc b                                         ; $47C1: $04
    ld b, d                                       ; $47C2: $42

jr_018_47C3:
    sbc e                                         ; $47C3: $9B
    ld a, b                                       ; $47C4: $78
    ld [hl], b                                    ; $47C5: $70
    sbc a                                         ; $47C6: $9F
    ld l, $2E                                     ; $47C7: $2E $2E
    ld l, $20                                     ; $47C9: $2E $20

jr_018_47CB:
    ld c, c                                       ; $47CB: $49
    ld l, $2E                                     ; $47CC: $2E $2E
    ld l, $FE                                     ; $47CE: $2E $FE
    db $FD                                        ; $47D0: $FD
    sbc e                                         ; $47D1: $9B
    cp b                                          ; $47D2: $B8
    halt                                          ; $47D3: $76
    sbc a                                         ; $47D4: $9F
    ld e, c                                       ; $47D5: $59
    ld h, l                                       ; $47D6: $65
    ld [hl], e                                    ; $47D7: $73
    ccf                                           ; $47D8: $3F
    cp $FD                                        ; $47D9: $FE $FD
    sbc d                                         ; $47DB: $9A
    ld b, b                                       ; $47DC: $40
    ld h, b                                       ; $47DD: $60
    sbc e                                         ; $47DE: $9B
    ld a, b                                       ; $47DF: $78
    ld [hl], b                                    ; $47E0: $70
    sbc a                                         ; $47E1: $9F
    ld l, $2E                                     ; $47E2: $2E $2E
    ld l, $20                                     ; $47E4: $2E $20
    ld c, c                                       ; $47E6: $49
    jr nz, @+$66                                  ; $47E7: $20 $64

    ld l, a                                       ; $47E9: $6F

jr_018_47EA:
    ld l, [hl]                                    ; $47EA: $6E
    daa                                           ; $47EB: $27
    ld [hl], h                                    ; $47EC: $74
    ld l, $2E                                     ; $47ED: $2E $2E
    ld l, $FE                                     ; $47EF: $2E $FE

jr_018_47F1:
    db $FD                                        ; $47F1: $FD
    sbc d                                         ; $47F2: $9A
    ld b, b                                       ; $47F3: $40
    add b                                         ; $47F4: $80
    ld e, b                                       ; $47F5: $58
    ld [hl-], a                                   ; $47F6: $32
    sbc e                                         ; $47F7: $9B
    cp b                                          ; $47F8: $B8
    halt                                          ; $47F9: $76
    sbc a                                         ; $47FA: $9F
    ld c, a                                       ; $47FB: $4F
    ld l, a                                       ; $47FC: $6F
    ld l, b                                       ; $47FD: $68
    inc l                                         ; $47FE: $2C
    jr nz, jr_018_4858                            ; $47FF: $20 $57

    ld c, b                                       ; $4801: $48
    ld b, c                                       ; $4802: $41
    ld d, h                                       ; $4803: $54
    ld b, l                                       ; $4804: $45
    ld d, [hl]                                    ; $4805: $56
    ld b, l                                       ; $4806: $45
    ld d, d                                       ; $4807: $52
    ld hl, $FDFE                                  ; $4808: $21 $FE $FD
    sbc d                                         ; $480B: $9A
    ld e, b                                       ; $480C: $58
    dec b                                         ; $480D: $05
    ld b, d                                       ; $480E: $42
    sbc e                                         ; $480F: $9B
    cp b                                          ; $4810: $B8
    halt                                          ; $4811: $76
    sbc a                                         ; $4812: $9F
    ld c, c                                       ; $4813: $49

jr_018_4814:
    jr nz, jr_018_488D                            ; $4814: $20 $77

    ld l, c                                       ; $4816: $69
    ld l, h                                       ; $4817: $6C
    ld l, h                                       ; $4818: $6C
    jr nz, jr_018_4892                            ; $4819: $20 $77

    ld h, c                                       ; $481B: $61
    ld l, c                                       ; $481C: $69
    ld [hl], h                                    ; $481D: $74
    rst $38                                       ; $481E: $FF
    ld h, [hl]                                    ; $481F: $66
    ld l, a                                       ; $4820: $6F
    ld [hl], d                                    ; $4821: $72
    jr nz, jr_018_489D                            ; $4822: $20 $79

    ld l, a                                       ; $4824: $6F
    ld [hl], l                                    ; $4825: $75
    jr nz, jr_018_489F                            ; $4826: $20 $77

    ld l, b                                       ; $4828: $68
    ld h, l                                       ; $4829: $65
    ld [hl], d                                    ; $482A: $72
    ld h, l                                       ; $482B: $65
    cp $74                                        ; $482C: $FE $74
    ld l, b                                       ; $482E: $68
    ld h, l                                       ; $482F: $65
    jr nz, jr_018_48A2                            ; $4830: $20 $70

    ld h, c                                       ; $4832: $61

jr_018_4833:
    ld [hl], h                                    ; $4833: $74
    ld l, b                                       ; $4834: $68
    jr nz, jr_018_489F                            ; $4835: $20 $68

    ld h, l                                       ; $4837: $65
    ld [hl], d                                    ; $4838: $72
    ld h, l                                       ; $4839: $65
    rst $38                                       ; $483A: $FF
    ld h, l                                       ; $483B: $65
    ld l, [hl]                                    ; $483C: $6E
    ld h, h                                       ; $483D: $64
    ld [hl], e                                    ; $483E: $73
    ld l, $20                                     ; $483F: $2E $20
    ld e, c                                       ; $4841: $59
    ld l, a                                       ; $4842: $6F
    ld [hl], l                                    ; $4843: $75
    daa                                           ; $4844: $27
    ld l, h                                       ; $4845: $6C
    ld l, h                                       ; $4846: $6C
    cp $68                                        ; $4847: $FE $68
    ld h, c                                       ; $4849: $61
    halt                                          ; $484A: $76
    ld h, l                                       ; $484B: $65
    jr nz, jr_018_48BE                            ; $484C: $20 $70

    ld l, h                                       ; $484E: $6C
    ld h, l                                       ; $484F: $65
    ld l, [hl]                                    ; $4850: $6E
    ld [hl], h                                    ; $4851: $74
    ld a, c                                       ; $4852: $79
    jr nz, jr_018_48C4                            ; $4853: $20 $6F

    ld h, [hl]                                    ; $4855: $66
    rst $38                                       ; $4856: $FF
    ld [hl], h                                    ; $4857: $74

jr_018_4858:
    ld l, c                                       ; $4858: $69
    ld l, l                                       ; $4859: $6D
    ld h, l                                       ; $485A: $65
    jr nz, jr_018_48D1                            ; $485B: $20 $74

    ld l, a                                       ; $485D: $6F
    jr nz, jr_018_48CD                            ; $485E: $20 $6D

    ld h, c                                       ; $4860: $61
    ld l, e                                       ; $4861: $6B
    ld h, l                                       ; $4862: $65
    cp $79                                        ; $4863: $FE $79
    ld l, a                                       ; $4865: $6F
    ld [hl], l                                    ; $4866: $75
    ld [hl], d                                    ; $4867: $72
    jr nz, jr_018_48CD                            ; $4868: $20 $63

    ld l, b                                       ; $486A: $68
    ld l, a                                       ; $486B: $6F
    ld l, c                                       ; $486C: $69
    ld h, e                                       ; $486D: $63
    ld h, l                                       ; $486E: $65
    inc l                                         ; $486F: $2C
    rst $38                                       ; $4870: $FF
    ld [hl], e                                    ; $4871: $73
    ld l, c                                       ; $4872: $69
    ld l, [hl]                                    ; $4873: $6E
    ld h, e                                       ; $4874: $63
    ld h, l                                       ; $4875: $65
    jr nz, jr_018_48F1                            ; $4876: $20 $79

    ld l, a                                       ; $4878: $6F
    ld [hl], l                                    ; $4879: $75
    jr nz, jr_018_48F3                            ; $487A: $20 $77

    ld l, c                                       ; $487C: $69
    ld l, h                                       ; $487D: $6C
    ld l, h                                       ; $487E: $6C
    cp $62                                        ; $487F: $FE $62
    ld h, l                                       ; $4881: $65
    jr nz, jr_018_48F8                            ; $4882: $20 $74

    ld h, c                                       ; $4884: $61
    ld l, e                                       ; $4885: $6B
    ld l, c                                       ; $4886: $69
    ld l, [hl]                                    ; $4887: $6E
    ld h, a                                       ; $4888: $67
    jr nz, jr_018_48FF                            ; $4889: $20 $74

    ld l, b                                       ; $488B: $68
    ld h, l                                       ; $488C: $65

jr_018_488D:
    rst $38                                       ; $488D: $FF
    ld l, h                                       ; $488E: $6C
    ld l, a                                       ; $488F: $6F
    ld l, [hl]                                    ; $4890: $6E
    ld h, a                                       ; $4891: $67

jr_018_4892:
    jr nz, jr_018_490B                            ; $4892: $20 $77

    ld h, c                                       ; $4894: $61
    ld a, c                                       ; $4895: $79
    ld l, $FE                                     ; $4896: $2E $FE
    ld b, e                                       ; $4898: $43
    ld l, a                                       ; $4899: $6F
    ld l, [hl]                                    ; $489A: $6E
    ld [hl], e                                    ; $489B: $73
    ld l, c                                       ; $489C: $69

jr_018_489D:
    ld h, h                                       ; $489D: $64
    ld h, l                                       ; $489E: $65

jr_018_489F:
    ld [hl], d                                    ; $489F: $72
    jr nz, jr_018_4916                            ; $48A0: $20 $74

jr_018_48A2:
    ld l, b                                       ; $48A2: $68
    ld h, l                                       ; $48A3: $65
    rst $38                                       ; $48A4: $FF
    ld h, h                                       ; $48A5: $64
    ld l, c                                       ; $48A6: $69
    ld h, [hl]                                    ; $48A7: $66
    ld h, [hl]                                    ; $48A8: $66
    ld l, c                                       ; $48A9: $69
    ld h, e                                       ; $48AA: $63
    ld [hl], l                                    ; $48AB: $75
    ld l, h                                       ; $48AC: $6C
    ld [hl], h                                    ; $48AD: $74
    jr nz, jr_018_4920                            ; $48AE: $20 $70

    ld h, c                                       ; $48B0: $61
    ld [hl], h                                    ; $48B1: $74
    ld l, b                                       ; $48B2: $68
    cp $61                                        ; $48B3: $FE $61
    ld [hl], e                                    ; $48B5: $73
    jr nz, @+$72                                  ; $48B6: $20 $70

    ld [hl], l                                    ; $48B8: $75
    ld l, [hl]                                    ; $48B9: $6E

jr_018_48BA:
    ld l, c                                       ; $48BA: $69
    ld [hl], e                                    ; $48BB: $73
    ld l, b                                       ; $48BC: $68
    ld l, l                                       ; $48BD: $6D

jr_018_48BE:
    ld h, l                                       ; $48BE: $65
    ld l, [hl]                                    ; $48BF: $6E
    ld [hl], h                                    ; $48C0: $74
    rst $38                                       ; $48C1: $FF
    ld h, [hl]                                    ; $48C2: $66
    ld l, a                                       ; $48C3: $6F

jr_018_48C4:
    ld [hl], d                                    ; $48C4: $72
    jr nz, jr_018_4940                            ; $48C5: $20 $79

    ld l, a                                       ; $48C7: $6F
    ld [hl], l                                    ; $48C8: $75
    ld [hl], d                                    ; $48C9: $72

jr_018_48CA:
    cp $69                                        ; $48CA: $FE $69
    ld l, [hl]                                    ; $48CC: $6E

jr_018_48CD:
    ld h, h                                       ; $48CD: $64
    ld h, l                                       ; $48CE: $65
    ld h, e                                       ; $48CF: $63
    ld l, c                                       ; $48D0: $69

jr_018_48D1:
    ld [hl], e                                    ; $48D1: $73
    ld l, c                                       ; $48D2: $69
    ld l, a                                       ; $48D3: $6F
    ld l, [hl]                                    ; $48D4: $6E
    ld l, $FE                                     ; $48D5: $2E $FE
    db $FD                                        ; $48D7: $FD
    sbc d                                         ; $48D8: $9A
    ld e, b                                       ; $48D9: $58
    ld b, $42                                     ; $48DA: $06 $42
    sbc e                                         ; $48DC: $9B
    cp b                                          ; $48DD: $B8
    halt                                          ; $48DE: $76
    sbc a                                         ; $48DF: $9F
    ld d, l                                       ; $48E0: $55
    ld l, [hl]                                    ; $48E1: $6E
    ld [hl], h                                    ; $48E2: $74
    ld l, c                                       ; $48E3: $69
    ld l, h                                       ; $48E4: $6C
    jr nz, @+$6E                                  ; $48E5: $20 $6C

    ld h, c                                       ; $48E7: $61
    ld [hl], h                                    ; $48E8: $74
    ld h, l                                       ; $48E9: $65
    ld [hl], d                                    ; $48EA: $72

jr_018_48EB:
    ld l, $2E                                     ; $48EB: $2E $2E
    ld l, $FE                                     ; $48ED: $2E $FE
    db $FD                                        ; $48EF: $FD
    sbc d                                         ; $48F0: $9A

jr_018_48F1:
    ld e, b                                       ; $48F1: $58
    rlca                                          ; $48F2: $07

jr_018_48F3:
    ld b, d                                       ; $48F3: $42
    sub e                                         ; $48F4: $93
    ld h, l                                       ; $48F5: $65
    ld l, c                                       ; $48F6: $69
    ld c, a                                       ; $48F7: $4F

jr_018_48F8:
    ld c, a                                       ; $48F8: $4F
    ld h, h                                       ; $48F9: $64
    dec h                                         ; $48FA: $25
    ld d, h                                       ; $48FB: $54
    ld h, [hl]                                    ; $48FC: $66
    ret nz                                        ; $48FD: $C0

    ld e, h                                       ; $48FE: $5C

jr_018_48FF:
    ld hl, $0005                                  ; $48FF: $21 $05 $00
    add c                                         ; $4902: $81
    ld e, l                                       ; $4903: $5D
    dec b                                         ; $4904: $05
    dec b                                         ; $4905: $05
    rst $38                                       ; $4906: $FF
    ret nc                                        ; $4907: $D0

    nop                                           ; $4908: $00
    jr nz, jr_018_48CA                            ; $4909: $20 $BF

jr_018_490B:
    ld d, b                                       ; $490B: $50
    ld [hl+], a                                   ; $490C: $22
    dec b                                         ; $490D: $05
    ld b, b                                       ; $490E: $40
    dec b                                         ; $490F: $05
    ld [bc], a                                    ; $4910: $02
    ld l, e                                       ; $4911: $6B
    ld c, d                                       ; $4912: $4A
    ld [bc], a                                    ; $4913: $02
    rlca                                          ; $4914: $07
    ld h, b                                       ; $4915: $60

jr_018_4916:
    pop de                                        ; $4916: $D1
    nop                                           ; $4917: $00
    jr jr_018_48EB                                ; $4918: $18 $D1

    ld c, c                                       ; $491A: $49
    ld [hl+], a                                   ; $491B: $22
    dec b                                         ; $491C: $05
    ld b, b                                       ; $491D: $40
    dec bc                                        ; $491E: $0B
    nop                                           ; $491F: $00

jr_018_4920:
    ld [hl-], a                                   ; $4920: $32
    jr jr_018_48BA                                ; $4921: $18 $97

    ld b, b                                       ; $4923: $40
    adc l                                         ; $4924: $8D
    ld b, c                                       ; $4925: $41
    ld sp, $F418                                  ; $4926: $31 $18 $F4
    ld c, b                                       ; $4929: $48
    ld [hl+], a                                   ; $492A: $22
    adc $40                                       ; $492B: $CE $40
    ld l, e                                       ; $492D: $6B
    jr nc, jr_018_493B                            ; $492E: $30 $0B

    ret nz                                        ; $4930: $C0

    ld l, h                                       ; $4931: $6C
    nop                                           ; $4932: $00
    add b                                         ; $4933: $80
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    add d                                         ; $4936: $82
    sub h                                         ; $4937: $94
    rra                                           ; $4938: $1F
    ld [de], a                                    ; $4939: $12
    ld b, d                                       ; $493A: $42

jr_018_493B:
    inc h                                         ; $493B: $24
    db $10                                        ; $493C: $10
    rlca                                          ; $493D: $07
    nop                                           ; $493E: $00

jr_018_493F:
    ld l, e                                       ; $493F: $6B

jr_018_4940:
    ld c, d                                       ; $4940: $4A
    add hl, bc                                    ; $4941: $09
    nop                                           ; $4942: $00
    jr jr_018_49BC                                ; $4943: $18 $77

    ld c, c                                       ; $4945: $49
    ld l, a                                       ; $4946: $6F
    ldh a, [$80]                                  ; $4947: $F0 $80
    inc d                                         ; $4949: $14
    ld b, b                                       ; $494A: $40
    jr nc, jr_018_4958                            ; $494B: $30 $0B

    ld [bc], a                                    ; $494D: $02
    halt                                          ; $494E: $76
    ld h, b                                       ; $494F: $60
    ldh a, [$1F]                                  ; $4950: $F0 $1F
    ld c, $60                                     ; $4952: $0E $60
    ld bc, $F06E                                  ; $4954: $01 $6E $F0
    add b                                         ; $4957: $80

jr_018_4958:
    inc d                                         ; $4958: $14
    halt                                          ; $4959: $76
    ld h, b                                       ; $495A: $60
    ldh a, [rLCDC]                                ; $495B: $F0 $40
    jr nz, jr_018_4983                            ; $495D: $20 $24

    db $10                                        ; $495F: $10
    add e                                         ; $4960: $83
    jr nc, jr_018_4964                            ; $4961: $30 $01

    nop                                           ; $4963: $00

jr_018_4964:
    nop                                           ; $4964: $00
    ld e, e                                       ; $4965: $5B
    jr @-$22                                      ; $4966: $18 $DC

    ld c, b                                       ; $4968: $48
    ld h, d                                       ; $4969: $62
    rlca                                          ; $496A: $07
    rra                                           ; $496B: $1F
    ld [de], a                                    ; $496C: $12
    rlca                                          ; $496D: $07
    nop                                           ; $496E: $00
    add c                                         ; $496F: $81

jr_018_4970:
    ld e, l                                       ; $4970: $5D
    add hl, bc                                    ; $4971: $09
    nop                                           ; $4972: $00
    jr nz, jr_018_4970                            ; $4973: $20 $FB

    ld d, b                                       ; $4975: $50
    ld b, d                                       ; $4976: $42

jr_018_4977:
    ld d, $20                                     ; $4977: $16 $20
    db $DD                                        ; $4979: $DD
    ld c, a                                       ; $497A: $4F
    jr nc, @+$01                                  ; $497B: $30 $FF

    nop                                           ; $497D: $00
    jr nz, jr_018_493F                            ; $497E: $20 $BF

    ld d, b                                       ; $4980: $50
    db $10                                        ; $4981: $10
    rst $38                                       ; $4982: $FF

jr_018_4983:
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    ld e, h                                       ; $4985: $5C
    nop                                           ; $4986: $00
    ld [bc], a                                    ; $4987: $02
    ld d, $20                                     ; $4988: $16 $20
    cp a                                          ; $498A: $BF

jr_018_498B:
    ld d, b                                       ; $498B: $50
    inc h                                         ; $498C: $24

jr_018_498D:
    nop                                           ; $498D: $00

jr_018_498E:
    nop                                           ; $498E: $00
    jr nz, @+$3F                                  ; $498F: $20 $3D

    ld d, b                                       ; $4991: $50
    stop                                          ; $4992: $10 $00
    nop                                           ; $4994: $00
    jr nz, @-$3F                                  ; $4995: $20 $BF

    ld d, b                                       ; $4997: $50
    jr nz, jr_018_499A                            ; $4998: $20 $00

jr_018_499A:
    nop                                           ; $499A: $00
    jr nz, jr_018_49DA                            ; $499B: $20 $3D

    ld d, b                                       ; $499D: $50
    db $10                                        ; $499E: $10
    ld bc, $2000                                  ; $499F: $01 $00 $20
    cp a                                          ; $49A2: $BF
    ld d, b                                       ; $49A3: $50
    jr nz, jr_018_49A6                            ; $49A4: $20 $00

jr_018_49A6:
    nop                                           ; $49A6: $00
    jr nz, jr_018_49E6                            ; $49A7: $20 $3D

    ld d, b                                       ; $49A9: $50
    db $10                                        ; $49AA: $10
    ld bc, $2000                                  ; $49AB: $01 $00 $20
    cp a                                          ; $49AE: $BF
    ld d, b                                       ; $49AF: $50
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    ld e, h                                       ; $49B4: $5C
    ld bc, $1402                                  ; $49B5: $01 $02 $14
    jr nz, jr_018_498D                            ; $49B8: $20 $D3

    ld d, b                                       ; $49BA: $50
    ld h, d                                       ; $49BB: $62

jr_018_49BC:
    inc b                                         ; $49BC: $04
    ld b, b                                       ; $49BD: $40
    ld b, b                                       ; $49BE: $40
    inc d                                         ; $49BF: $14
    jr nz, jr_018_4977                            ; $49C0: $20 $B5

    ld d, b                                       ; $49C2: $50
    ld b, b                                       ; $49C3: $40
    ld b, b                                       ; $49C4: $40
    ld e, e                                       ; $49C5: $5B
    jr jr_018_498B                                ; $49C6: $18 $C3

    ld b, a                                       ; $49C8: $47
    ld e, h                                       ; $49C9: $5C
    ld [bc], a                                    ; $49CA: $02
    ld [bc], a                                    ; $49CB: $02
    inc d                                         ; $49CC: $14
    jr nz, jr_018_498E                            ; $49CD: $20 $BF

    ld d, b                                       ; $49CF: $50
    ld b, d                                       ; $49D0: $42
    dec d                                         ; $49D1: $15
    rrca                                          ; $49D2: $0F
    and b                                         ; $49D3: $A0
    ld [hl], b                                    ; $49D4: $70
    ld c, b                                       ; $49D5: $48
    nop                                           ; $49D6: $00
    ld e, e                                       ; $49D7: $5B
    jr @+$2A                                      ; $49D8: $18 $28

jr_018_49DA:
    ld b, l                                       ; $49DA: $45
    ld h, d                                       ; $49DB: $62
    ld bc, $005C                                  ; $49DC: $01 $5C $00
    ld [bc], a                                    ; $49DF: $02
    dec d                                         ; $49E0: $15
    rrca                                          ; $49E1: $0F
    ld [hl-], a                                   ; $49E2: $32
    ld [hl], b                                    ; $49E3: $70
    jr nz, jr_018_49F5                            ; $49E4: $20 $0F

jr_018_49E6:
    and b                                         ; $49E6: $A0
    ld [hl], b                                    ; $49E7: $70
    jr nz, jr_018_49F9                            ; $49E8: $20 $0F

    ld [hl-], a                                   ; $49EA: $32
    ld [hl], b                                    ; $49EB: $70
    db $10                                        ; $49EC: $10

jr_018_49ED:
    rrca                                          ; $49ED: $0F
    and b                                         ; $49EE: $A0
    ld [hl], b                                    ; $49EF: $70
    jr nz, jr_018_4A01                            ; $49F0: $20 $0F

    ld [hl-], a                                   ; $49F2: $32
    ld [hl], b                                    ; $49F3: $70
    db $10                                        ; $49F4: $10

jr_018_49F5:
    rrca                                          ; $49F5: $0F
    and b                                         ; $49F6: $A0
    ld [hl], b                                    ; $49F7: $70
    nop                                           ; $49F8: $00

jr_018_49F9:
    nop                                           ; $49F9: $00
    ld e, e                                       ; $49FA: $5B
    jr jr_018_4A3A                                ; $49FB: $18 $3D

    ld b, l                                       ; $49FD: $45

jr_018_49FE:
    ld h, d                                       ; $49FE: $62
    ld [bc], a                                    ; $49FF: $02
    ld e, e                                       ; $4A00: $5B

jr_018_4A01:
    jr jr_018_4A24                                ; $4A01: $18 $21

    ld b, [hl]                                    ; $4A03: $46
    ld h, d                                       ; $4A04: $62
    inc bc                                        ; $4A05: $03
    ld e, h                                       ; $4A06: $5C
    ld bc, $5B02                                  ; $4A07: $01 $02 $5B
    jr jr_018_49ED                                ; $4A0A: $18 $E1

    ld b, [hl]                                    ; $4A0C: $46

jr_018_4A0D:
    ld h, d                                       ; $4A0D: $62
    ld [hl-], a                                   ; $4A0E: $32
    inc d                                         ; $4A0F: $14
    rrca                                          ; $4A10: $0F
    sub [hl]                                      ; $4A11: $96
    ld [hl], b                                    ; $4A12: $70
    ld h, d                                       ; $4A13: $62
    dec b                                         ; $4A14: $05
    ld e, h                                       ; $4A15: $5C
    ld [bc], a                                    ; $4A16: $02
    ld [bc], a                                    ; $4A17: $02
    ld d, $0F                                     ; $4A18: $16 $0F
    ld [hl+], a                                   ; $4A1A: $22
    ld [hl], b                                    ; $4A1B: $70
    db $10                                        ; $4A1C: $10
    rst $38                                       ; $4A1D: $FF
    nop                                           ; $4A1E: $00
    rrca                                          ; $4A1F: $0F
    sub [hl]                                      ; $4A20: $96
    ld [hl], b                                    ; $4A21: $70
    stop                                          ; $4A22: $10 $00

jr_018_4A24:
    nop                                           ; $4A24: $00
    rrca                                          ; $4A25: $0F
    xor d                                         ; $4A26: $AA
    ld [hl], b                                    ; $4A27: $70
    nop                                           ; $4A28: $00
    nop                                           ; $4A29: $00
    nop                                           ; $4A2A: $00
    nop                                           ; $4A2B: $00

jr_018_4A2C:
    ld e, e                                       ; $4A2C: $5B
    jr jr_018_4A3E                                ; $4A2D: $18 $0F

    ld c, b                                       ; $4A2F: $48
    ld h, d                                       ; $4A30: $62
    ld b, $56                                     ; $4A31: $06 $56
    ld bc, $0F16                                  ; $4A33: $01 $16 $0F
    ld [hl+], a                                   ; $4A36: $22
    ld [hl], b                                    ; $4A37: $70
    jr nc, @+$01                                  ; $4A38: $30 $FF

jr_018_4A3A:
    nop                                           ; $4A3A: $00
    rrca                                          ; $4A3B: $0F
    and b                                         ; $4A3C: $A0
    ld [hl], b                                    ; $4A3D: $70

jr_018_4A3E:
    ld b, b                                       ; $4A3E: $40
    nop                                           ; $4A3F: $00
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    add hl, de                                    ; $4A42: $19
    ld b, d                                       ; $4A43: $42
    ld [bc], a                                    ; $4A44: $02
    inc b                                         ; $4A45: $04
    rlca                                          ; $4A46: $07
    nop                                           ; $4A47: $00
    cpl                                           ; $4A48: $2F
    ld b, l                                       ; $4A49: $45
    jr @+$49                                      ; $4A4A: $18 $47

    ld b, e                                       ; $4A4C: $43
    ld [bc], a                                    ; $4A4D: $02
    nop                                           ; $4A4E: $00

jr_018_4A4F:
    inc de                                        ; $4A4F: $13
    ld [$4509], sp                                ; $4A50: $08 $09 $45
    jr jr_018_49FE                                ; $4A53: $18 $A9

    ld c, e                                       ; $4A55: $4B
    sub e                                         ; $4A56: $93
    ld h, l                                       ; $4A57: $65
    ld a, b                                       ; $4A58: $78
    ld c, a                                       ; $4A59: $4F
    ld c, a                                       ; $4A5A: $4F
    ld h, h                                       ; $4A5B: $64
    ld [hl-], a                                   ; $4A5C: $32
    ld d, h                                       ; $4A5D: $54
    ld h, [hl]                                    ; $4A5E: $66
    ret nz                                        ; $4A5F: $C0

    ld e, h                                       ; $4A60: $5C
    ld hl, $0005                                  ; $4A61: $21 $05 $00
    add c                                         ; $4A64: $81
    ld e, l                                       ; $4A65: $5D
    dec b                                         ; $4A66: $05
    dec b                                         ; $4A67: $05

jr_018_4A68:
    rst $38                                       ; $4A68: $FF
    ret nc                                        ; $4A69: $D0

    nop                                           ; $4A6A: $00
    jr nz, jr_018_4A2C                            ; $4A6B: $20 $BF

    ld d, b                                       ; $4A6D: $50

jr_018_4A6E:
    ld [hl+], a                                   ; $4A6E: $22
    dec b                                         ; $4A6F: $05
    ld b, b                                       ; $4A70: $40
    dec bc                                        ; $4A71: $0B
    nop                                           ; $4A72: $00
    ld [hl-], a                                   ; $4A73: $32
    jr jr_018_4A0D                                ; $4A74: $18 $97

    ld b, b                                       ; $4A76: $40
    adc l                                         ; $4A77: $8D
    ld b, c                                       ; $4A78: $41
    ld sp, $5618                                  ; $4A79: $31 $18 $56
    ld c, d                                       ; $4A7C: $4A
    ld [hl+], a                                   ; $4A7D: $22
    adc $40                                       ; $4A7E: $CE $40
    nop                                           ; $4A80: $00
    add d                                         ; $4A81: $82
    sub h                                         ; $4A82: $94
    rra                                           ; $4A83: $1F
    ld [de], a                                    ; $4A84: $12
    ld b, d                                       ; $4A85: $42
    ld [bc], a                                    ; $4A86: $02
    ld bc, $0028                                  ; $4A87: $01 $28 $00
    cpl                                           ; $4A8A: $2F
    ld b, l                                       ; $4A8B: $45
    jr jr_018_4AD5                                ; $4A8C: $18 $47

    ld b, e                                       ; $4A8E: $43
    ld [bc], a                                    ; $4A8F: $02
    add hl, bc                                    ; $4A90: $09
    nop                                           ; $4A91: $00
    ld [$450E], sp                                ; $4A92: $08 $0E $45
    jr @-$0D                                      ; $4A95: $18 $F1

    ld c, d                                       ; $4A97: $4A
    sub e                                         ; $4A98: $93
    ld h, l                                       ; $4A99: $65
    add a                                         ; $4A9A: $87
    ld c, a                                       ; $4A9B: $4F

jr_018_4A9C:
    ld c, a                                       ; $4A9C: $4F
    ld h, h                                       ; $4A9D: $64
    dec sp                                        ; $4A9E: $3B
    ld d, h                                       ; $4A9F: $54
    ld h, [hl]                                    ; $4AA0: $66
    ret nz                                        ; $4AA1: $C0

    ld e, h                                       ; $4AA2: $5C
    ld hl, $0005                                  ; $4AA3: $21 $05 $00
    add c                                         ; $4AA6: $81
    ld e, l                                       ; $4AA7: $5D
    dec b                                         ; $4AA8: $05
    dec b                                         ; $4AA9: $05
    rst $38                                       ; $4AAA: $FF
    ret nc                                        ; $4AAB: $D0

    nop                                           ; $4AAC: $00
    jr nz, jr_018_4A6E                            ; $4AAD: $20 $BF

    ld d, b                                       ; $4AAF: $50
    ld [hl+], a                                   ; $4AB0: $22
    dec b                                         ; $4AB1: $05
    ld b, b                                       ; $4AB2: $40
    dec bc                                        ; $4AB3: $0B
    nop                                           ; $4AB4: $00
    ld [hl-], a                                   ; $4AB5: $32
    jr jr_018_4A4F                                ; $4AB6: $18 $97

    ld b, b                                       ; $4AB8: $40
    adc l                                         ; $4AB9: $8D
    ld b, c                                       ; $4ABA: $41
    ld sp, $9818                                  ; $4ABB: $31 $18 $98
    ld c, d                                       ; $4ABE: $4A
    ld [hl+], a                                   ; $4ABF: $22
    adc $40                                       ; $4AC0: $CE $40
    nop                                           ; $4AC2: $00
    add d                                         ; $4AC3: $82
    sub h                                         ; $4AC4: $94
    rra                                           ; $4AC5: $1F
    ld [de], a                                    ; $4AC6: $12
    ld b, d                                       ; $4AC7: $42
    ld [bc], a                                    ; $4AC8: $02
    nop                                           ; $4AC9: $00
    add hl, bc                                    ; $4ACA: $09
    ld c, $07                                     ; $4ACB: $0E $07
    ld b, l                                       ; $4ACD: $45
    jr jr_018_4A68                                ; $4ACE: $18 $98

    ld c, d                                       ; $4AD0: $4A
    and h                                         ; $4AD1: $A4
    ld a, [hl-]                                   ; $4AD2: $3A
    and e                                         ; $4AD3: $A3
    ld [bc], a                                    ; $4AD4: $02

jr_018_4AD5:
    nop                                           ; $4AD5: $00
    inc bc                                        ; $4AD6: $03
    xor e                                         ; $4AD7: $AB
    ret nc                                        ; $4AD8: $D0

    and h                                         ; $4AD9: $A4
    ld a, [hl-]                                   ; $4ADA: $3A
    and e                                         ; $4ADB: $A3
    inc b                                         ; $4ADC: $04
    nop                                           ; $4ADD: $00
    ld [de], a                                    ; $4ADE: $12
    ld h, b                                       ; $4ADF: $60
    ret nc                                        ; $4AE0: $D0

    and h                                         ; $4AE1: $A4
    ld a, [hl-]                                   ; $4AE2: $3A
    and e                                         ; $4AE3: $A3
    ld [$1800], sp                                ; $4AE4: $08 $00 $18
    ld h, c                                       ; $4AE7: $61
    ret nc                                        ; $4AE8: $D0

    and h                                         ; $4AE9: $A4
    ld a, [hl-]                                   ; $4AEA: $3A
    and e                                         ; $4AEB: $A3
    stop                                          ; $4AEC: $10 $00
    ld bc, $D062                                  ; $4AEE: $01 $62 $D0
    sub e                                         ; $4AF1: $93
    ld h, l                                       ; $4AF2: $65
    sub [hl]                                      ; $4AF3: $96
    ld c, a                                       ; $4AF4: $4F
    ld c, a                                       ; $4AF5: $4F
    ld h, h                                       ; $4AF6: $64
    ld b, h                                       ; $4AF7: $44
    ld d, h                                       ; $4AF8: $54
    ld l, c                                       ; $4AF9: $69
    ld c, c                                       ; $4AFA: $49
    ld d, h                                       ; $4AFB: $54
    ld h, [hl]                                    ; $4AFC: $66
    ret nz                                        ; $4AFD: $C0

    ld e, h                                       ; $4AFE: $5C
    ld hl, $000B                                  ; $4AFF: $21 $0B $00
    ld [hl-], a                                   ; $4B02: $32
    jr jr_018_4A9C                                ; $4B03: $18 $97

    ld b, b                                       ; $4B05: $40
    adc l                                         ; $4B06: $8D
    ld b, c                                       ; $4B07: $41
    ld sp, $F118                                  ; $4B08: $31 $18 $F1
    ld c, d                                       ; $4B0B: $4A
    ld [hl+], a                                   ; $4B0C: $22
    adc $40                                       ; $4B0D: $CE $40
    ld c, e                                       ; $4B0F: $4B
    ld bc, $A225                                  ; $4B10: $01 $25 $A2
    jr jr_018_4B15                                ; $4B13: $18 $00

jr_018_4B15:
    nop                                           ; $4B15: $00
    ld c, l                                       ; $4B16: $4D

jr_018_4B17:
    ld c, e                                       ; $4B17: $4B
    jr jr_018_4B1B                                ; $4B18: $18 $01

    nop                                           ; $4B1A: $00

jr_018_4B1B:
    inc hl                                        ; $4B1B: $23
    ld c, e                                       ; $4B1C: $4B
    jr @+$04                                      ; $4B1D: $18 $02

    nop                                           ; $4B1F: $00
    jr c, jr_018_4B6D                             ; $4B20: $38 $4B

    rst $38                                       ; $4B22: $FF
    dec b                                         ; $4B23: $05
    nop                                           ; $4B24: $00
    ld l, e                                       ; $4B25: $6B
    ld c, d                                       ; $4B26: $4A
    ld de, $2501                                  ; $4B27: $11 $01 $25
    ret nc                                        ; $4B2A: $D0

    nop                                           ; $4B2B: $00
    jr jr_018_4B52                                ; $4B2C: $18 $24

    ld b, h                                       ; $4B2E: $44
    ld [hl+], a                                   ; $4B2F: $22
    dec b                                         ; $4B30: $05
    ld b, b                                       ; $4B31: $40
    add h                                         ; $4B32: $84
    ld de, $4605                                  ; $4B33: $11 $05 $46
    ld e, [hl]                                    ; $4B36: $5E
    ld c, e                                       ; $4B37: $4B
    dec b                                         ; $4B38: $05
    nop                                           ; $4B39: $00
    ld l, e                                       ; $4B3A: $6B
    ld c, d                                       ; $4B3B: $4A
    inc e                                         ; $4B3C: $1C
    rra                                           ; $4B3D: $1F
    adc b                                         ; $4B3E: $88
    jp nc, $1800                                  ; $4B3F: $D2 $00 $18

    inc h                                         ; $4B42: $24
    ld b, h                                       ; $4B43: $44
    ld [hl+], a                                   ; $4B44: $22
    dec b                                         ; $4B45: $05
    ld b, b                                       ; $4B46: $40
    add h                                         ; $4B47: $84
    inc e                                         ; $4B48: $1C
    inc hl                                        ; $4B49: $23
    ld b, [hl]                                    ; $4B4A: $46
    ld e, [hl]                                    ; $4B4B: $5E
    ld c, e                                       ; $4B4C: $4B
    dec b                                         ; $4B4D: $05
    nop                                           ; $4B4E: $00
    add c                                         ; $4B4F: $81
    ld e, l                                       ; $4B50: $5D
    nop                                           ; $4B51: $00

jr_018_4B52:
    nop                                           ; $4B52: $00
    nop                                           ; $4B53: $00

jr_018_4B54:
    ret nc                                        ; $4B54: $D0

    nop                                           ; $4B55: $00
    jr nz, jr_018_4B17                            ; $4B56: $20 $BF

    ld d, b                                       ; $4B58: $50
    ld [hl+], a                                   ; $4B59: $22
    dec b                                         ; $4B5A: $05
    ld b, b                                       ; $4B5B: $40
    nop                                           ; $4B5C: $00
    add d                                         ; $4B5D: $82
    xor h                                         ; $4B5E: $AC
    dec h                                         ; $4B5F: $25
    and d                                         ; $4B60: $A2
    nop                                           ; $4B61: $00
    sub h                                         ; $4B62: $94
    rra                                           ; $4B63: $1F
    ld [de], a                                    ; $4B64: $12
    ld b, d                                       ; $4B65: $42
    ld [bc], a                                    ; $4B66: $02
    inc de                                        ; $4B67: $13

Call_018_4B68:
    nop                                           ; $4B68: $00
    add hl, bc                                    ; $4B69: $09
    ld [$1845], sp                                ; $4B6A: $08 $45 $18

jr_018_4B6D:
    ld d, [hl]                                    ; $4B6D: $56
    ld c, d                                       ; $4B6E: $4A
    ld b, e                                       ; $4B6F: $43
    nop                                           ; $4B70: $00
    dec h                                         ; $4B71: $25
    and c                                         ; $4B72: $A1
    ld [bc], a                                    ; $4B73: $02
    jr @+$81                                      ; $4B74: $18 $7F

    ld c, e                                       ; $4B76: $4B
    xor a                                         ; $4B77: $AF
    dec h                                         ; $4B78: $25
    and c                                         ; $4B79: $A1
    ld [bc], a                                    ; $4B7A: $02
    ld b, l                                       ; $4B7B: $45
    jr @-$3C                                      ; $4B7C: $18 $C2

    ld d, d                                       ; $4B7E: $52
    ld bc, $080A                                  ; $4B7F: $01 $0A $08
    ld b, l                                       ; $4B82: $45
    jr @+$5D                                      ; $4B83: $18 $5B

    ld d, d                                       ; $4B85: $52
    and d                                         ; $4B86: $A2
    ld h, $A1                                     ; $4B87: $26 $A1
    ld [$0422], sp                                ; $4B89: $08 $22 $04
    ld b, b                                       ; $4B8C: $40
    rst $28                                       ; $4B8D: $EF
    pop bc                                        ; $4B8E: $C1
    ret nc                                        ; $4B8F: $D0

    ld l, b                                       ; $4B90: $68
    ld a, [de]                                    ; $4B91: $1A
    ld l, l                                       ; $4B92: $6D
    ld a, h                                       ; $4B93: $7C
    add l                                         ; $4B94: $85
    ld l, l                                       ; $4B95: $6D
    ld a, h                                       ; $4B96: $7C
    ld a, a                                       ; $4B97: $7F
    rlca                                          ; $4B98: $07
    pop de                                        ; $4B99: $D1
    dec b                                         ; $4B9A: $05
    ld [bc], a                                    ; $4B9B: $02
    rlca                                          ; $4B9C: $07
    pop de                                        ; $4B9D: $D1
    dec c                                         ; $4B9E: $0D
    inc bc                                        ; $4B9F: $03
    ld b, d                                       ; $4BA0: $42
    and h                                         ; $4BA1: $A4
    ld a, [hl-]                                   ; $4BA2: $3A
    and e                                         ; $4BA3: $A3
    jr nz, jr_018_4BA6                            ; $4BA4: $20 $00

jr_018_4BA6:
    inc bc                                        ; $4BA6: $03
    adc a                                         ; $4BA7: $8F
    ret nc                                        ; $4BA8: $D0

    sub e                                         ; $4BA9: $93
    ld h, l                                       ; $4BAA: $65
    and l                                         ; $4BAB: $A5
    ld c, a                                       ; $4BAC: $4F
    ld c, a                                       ; $4BAD: $4F
    ld h, h                                       ; $4BAE: $64
    ld e, d                                       ; $4BAF: $5A
    ld d, h                                       ; $4BB0: $54
    ld l, c                                       ; $4BB1: $69
    ld h, e                                       ; $4BB2: $63
    ld d, h                                       ; $4BB3: $54
    ld h, [hl]                                    ; $4BB4: $66

jr_018_4BB5:
    ret nz                                        ; $4BB5: $C0

    ld e, h                                       ; $4BB6: $5C
    ld hl, $000B                                  ; $4BB7: $21 $0B $00
    ld [hl-], a                                   ; $4BBA: $32

jr_018_4BBB:
    jr jr_018_4B54                                ; $4BBB: $18 $97

    ld b, b                                       ; $4BBD: $40
    adc l                                         ; $4BBE: $8D
    ld b, c                                       ; $4BBF: $41
    ld sp, $A918                                  ; $4BC0: $31 $18 $A9
    ld c, e                                       ; $4BC3: $4B
    ld [hl+], a                                   ; $4BC4: $22
    adc $40                                       ; $4BC5: $CE $40
    ld c, e                                       ; $4BC7: $4B
    ld bc, $A226                                  ; $4BC8: $01 $26 $A2
    jr jr_018_4BCD                                ; $4BCB: $18 $00

jr_018_4BCD:
    nop                                           ; $4BCD: $00
    db $EB                                        ; $4BCE: $EB
    ld c, e                                       ; $4BCF: $4B
    jr jr_018_4BD3                                ; $4BD0: $18 $01

    nop                                           ; $4BD2: $00

jr_018_4BD3:
    sub $4B                                       ; $4BD3: $D6 $4B
    rst $38                                       ; $4BD5: $FF
    dec b                                         ; $4BD6: $05
    nop                                           ; $4BD7: $00
    ld l, e                                       ; $4BD8: $6B
    ld c, d                                       ; $4BD9: $4A
    ld c, $01                                     ; $4BDA: $0E $01
    ld [hl+], a                                   ; $4BDC: $22
    ret nc                                        ; $4BDD: $D0

    nop                                           ; $4BDE: $00
    jr jr_018_4C05                                ; $4BDF: $18 $24

    ld b, h                                       ; $4BE1: $44
    ld [hl+], a                                   ; $4BE2: $22
    dec b                                         ; $4BE3: $05
    ld b, b                                       ; $4BE4: $40
    add h                                         ; $4BE5: $84
    ld c, $05                                     ; $4BE6: $0E $05
    ld b, [hl]                                    ; $4BE8: $46
    db $FC                                        ; $4BE9: $FC
    ld c, e                                       ; $4BEA: $4B
    dec b                                         ; $4BEB: $05
    nop                                           ; $4BEC: $00
    add c                                         ; $4BED: $81
    ld e, l                                       ; $4BEE: $5D
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    ret nc                                        ; $4BF2: $D0

    nop                                           ; $4BF3: $00
    jr nz, jr_018_4BB5                            ; $4BF4: $20 $BF

    ld d, b                                       ; $4BF6: $50
    ld [hl+], a                                   ; $4BF7: $22
    dec b                                         ; $4BF8: $05
    ld b, b                                       ; $4BF9: $40
    nop                                           ; $4BFA: $00
    add d                                         ; $4BFB: $82
    xor h                                         ; $4BFC: $AC
    ld h, $A2                                     ; $4BFD: $26 $A2
    nop                                           ; $4BFF: $00
    sub h                                         ; $4C00: $94
    rra                                           ; $4C01: $1F

jr_018_4C02:
    ld [de], a                                    ; $4C02: $12
    ld b, d                                       ; $4C03: $42
    inc c                                         ; $4C04: $0C

jr_018_4C05:
    nop                                           ; $4C05: $00
    ld b, b                                       ; $4C06: $40
    ld [hl], b                                    ; $4C07: $70
    xor h                                         ; $4C08: $AC
    inc h                                         ; $4C09: $24

jr_018_4C0A:
    and d                                         ; $4C0A: $A2
    ld bc, $1845                                  ; $4C0B: $01 $45 $18
    ld b, a                                       ; $4C0E: $47
    ld b, e                                       ; $4C0F: $43
    ld bc, $1B11                                  ; $4C10: $01 $11 $1B
    ld b, l                                       ; $4C13: $45
    jr jr_018_4C0A                                ; $4C14: $18 $F4

    ld c, b                                       ; $4C16: $48
    ld bc, $0606                                  ; $4C17: $01 $06 $06
    ld b, l                                       ; $4C1A: $45
    jr jr_018_4C74                                ; $4C1B: $18 $57

    ld b, h                                       ; $4C1D: $44
    ld bc, $0819                                  ; $4C1E: $01 $19 $08
    ld b, l                                       ; $4C21: $45
    jr jr_018_4BBB                                ; $4C22: $18 $97

    ld b, h                                       ; $4C24: $44
    ld bc, $1C06                                  ; $4C25: $01 $06 $1C
    ld b, l                                       ; $4C28: $45
    jr jr_018_4C02                                ; $4C29: $18 $D7

    ld b, h                                       ; $4C2B: $44
    inc c                                         ; $4C2C: $0C
    nop                                           ; $4C2D: $00
    ld b, b                                       ; $4C2E: $40
    ld [hl], b                                    ; $4C2F: $70
    xor h                                         ; $4C30: $AC
    inc h                                         ; $4C31: $24
    and d                                         ; $4C32: $A2
    inc b                                         ; $4C33: $04
    ld b, l                                       ; $4C34: $45
    jr jr_018_4C7E                                ; $4C35: $18 $47

    ld b, e                                       ; $4C37: $43
    inc c                                         ; $4C38: $0C
    nop                                           ; $4C39: $00
    ld b, b                                       ; $4C3A: $40
    ld [hl], b                                    ; $4C3B: $70
    xor h                                         ; $4C3C: $AC

jr_018_4C3D:
    inc h                                         ; $4C3D: $24
    and d                                         ; $4C3E: $A2
    dec b                                         ; $4C3F: $05
    ld b, l                                       ; $4C40: $45
    jr jr_018_4C8A                                ; $4C41: $18 $47

    ld b, e                                       ; $4C43: $43
    inc c                                         ; $4C44: $0C
    nop                                           ; $4C45: $00
    ld b, b                                       ; $4C46: $40
    ld [hl], b                                    ; $4C47: $70
    xor h                                         ; $4C48: $AC
    inc h                                         ; $4C49: $24
    and d                                         ; $4C4A: $A2
    ld b, $45                                     ; $4C4B: $06 $45
    jr jr_018_4C96                                ; $4C4D: $18 $47

    ld b, e                                       ; $4C4F: $43
    inc c                                         ; $4C50: $0C
    nop                                           ; $4C51: $00
    ld b, b                                       ; $4C52: $40
    ld [hl], b                                    ; $4C53: $70
    xor h                                         ; $4C54: $AC
    dec h                                         ; $4C55: $25
    and d                                         ; $4C56: $A2
    ld bc, $1845                                  ; $4C57: $01 $45 $18
    pop af                                        ; $4C5A: $F1
    ld c, d                                       ; $4C5B: $4A
    inc c                                         ; $4C5C: $0C
    nop                                           ; $4C5D: $00
    ld b, b                                       ; $4C5E: $40
    ld [hl], b                                    ; $4C5F: $70
    xor h                                         ; $4C60: $AC
    inc h                                         ; $4C61: $24
    and d                                         ; $4C62: $A2
    ld [bc], a                                    ; $4C63: $02
    ld b, l                                       ; $4C64: $45
    jr jr_018_4CAE                                ; $4C65: $18 $47

    ld b, e                                       ; $4C67: $43
    inc c                                         ; $4C68: $0C
    nop                                           ; $4C69: $00
    ld b, b                                       ; $4C6A: $40
    ld [hl], b                                    ; $4C6B: $70
    xor h                                         ; $4C6C: $AC
    inc h                                         ; $4C6D: $24
    and d                                         ; $4C6E: $A2
    inc bc                                        ; $4C6F: $03
    ld b, l                                       ; $4C70: $45
    jr jr_018_4CBA                                ; $4C71: $18 $47

    ld b, e                                       ; $4C73: $43

jr_018_4C74:
    inc c                                         ; $4C74: $0C
    nop                                           ; $4C75: $00
    ld b, b                                       ; $4C76: $40
    ld [hl], b                                    ; $4C77: $70
    xor h                                         ; $4C78: $AC
    ld h, $A2                                     ; $4C79: $26 $A2
    ld bc, $1845                                  ; $4C7B: $01 $45 $18

jr_018_4C7E:
    xor c                                         ; $4C7E: $A9
    ld c, e                                       ; $4C7F: $4B
    ld bc, $0100                                  ; $4C80: $01 $00 $01
    ld b, l                                       ; $4C83: $45
    jr jr_018_4C3D                                ; $4C84: $18 $B7

    ld c, [hl]                                    ; $4C86: $4E
    and h                                         ; $4C87: $A4
    add hl, sp                                    ; $4C88: $39
    and e                                         ; $4C89: $A3

jr_018_4C8A:
    ld bc, $0100                                  ; $4C8A: $01 $00 $01
    rst $30                                       ; $4C8D: $F7
    jp c, $39A4                                   ; $4C8E: $DA $A4 $39

    and e                                         ; $4C91: $A3
    ld [bc], a                                    ; $4C92: $02
    nop                                           ; $4C93: $00
    ld [bc], a                                    ; $4C94: $02
    ld sp, hl                                     ; $4C95: $F9

jr_018_4C96:
    jp c, $39A4                                   ; $4C96: $DA $A4 $39

    and e                                         ; $4C99: $A3
    inc b                                         ; $4C9A: $04
    nop                                           ; $4C9B: $00
    ld [de], a                                    ; $4C9C: $12
    sub a                                         ; $4C9D: $97
    db $DD                                        ; $4C9E: $DD
    and h                                         ; $4C9F: $A4
    add hl, sp                                    ; $4CA0: $39
    and e                                         ; $4CA1: $A3
    ld [$0903], sp                                ; $4CA2: $08 $03 $09
    ld b, d                                       ; $4CA5: $42
    reti                                          ; $4CA6: $D9


    and h                                         ; $4CA7: $A4

jr_018_4CA8:
    add hl, sp                                    ; $4CA8: $39
    and e                                         ; $4CA9: $A3
    stop                                          ; $4CAA: $10 $00
    dec d                                         ; $4CAC: $15
    ld e, c                                       ; $4CAD: $59

jr_018_4CAE:
    sub $A4                                       ; $4CAE: $D6 $A4
    add hl, sp                                    ; $4CB0: $39
    and e                                         ; $4CB1: $A3
    jr nz, jr_018_4CB4                            ; $4CB2: $20 $00

jr_018_4CB4:
    inc bc                                        ; $4CB4: $03
    ld e, d                                       ; $4CB5: $5A
    sub $A4                                       ; $4CB6: $D6 $A4
    add hl, sp                                    ; $4CB8: $39
    and e                                         ; $4CB9: $A3

jr_018_4CBA:
    ld b, b                                       ; $4CBA: $40
    nop                                           ; $4CBB: $00
    ld [bc], a                                    ; $4CBC: $02
    rst $28                                       ; $4CBD: $EF
    sub $A4                                       ; $4CBE: $D6 $A4
    add hl, sp                                    ; $4CC0: $39
    and e                                         ; $4CC1: $A3
    add b                                         ; $4CC2: $80
    nop                                           ; $4CC3: $00
    ld bc, $D72F                                  ; $4CC4: $01 $2F $D7
    and h                                         ; $4CC7: $A4
    ld a, [hl-]                                   ; $4CC8: $3A
    and e                                         ; $4CC9: $A3
    ld bc, $1200                                  ; $4CCA: $01 $00 $12
    ld a, e                                       ; $4CCD: $7B
    jp nc, Jump_018_6593                          ; $4CCE: $D2 $93 $65

    or h                                          ; $4CD1: $B4
    ld c, a                                       ; $4CD2: $4F
    ld c, a                                       ; $4CD3: $4F
    ld h, h                                       ; $4CD4: $64
    ld l, h                                       ; $4CD5: $6C
    ld d, h                                       ; $4CD6: $54
    ld l, c                                       ; $4CD7: $69
    and c                                         ; $4CD8: $A1
    ld d, h                                       ; $4CD9: $54
    ld h, [hl]                                    ; $4CDA: $66
    ret nz                                        ; $4CDB: $C0

    ld e, h                                       ; $4CDC: $5C
    ld hl, $0005                                  ; $4CDD: $21 $05 $00
    add c                                         ; $4CE0: $81
    ld e, l                                       ; $4CE1: $5D
    dec b                                         ; $4CE2: $05
    dec b                                         ; $4CE3: $05
    rst $38                                       ; $4CE4: $FF
    ret nc                                        ; $4CE5: $D0

    nop                                           ; $4CE6: $00
    jr nz, jr_018_4CA8                            ; $4CE7: $20 $BF

    ld d, b                                       ; $4CE9: $50
    ld [hl+], a                                   ; $4CEA: $22
    dec b                                         ; $4CEB: $05
    ld b, b                                       ; $4CEC: $40
    dec b                                         ; $4CED: $05
    ld [bc], a                                    ; $4CEE: $02
    ld l, e                                       ; $4CEF: $6B
    ld c, d                                       ; $4CF0: $4A
    inc d                                         ; $4CF1: $14
    rrca                                          ; $4CF2: $0F
    ld [bc], a                                    ; $4CF3: $02
    db $D3                                        ; $4CF4: $D3
    nop                                           ; $4CF5: $00

jr_018_4CF6:
    ld de, $7A1F                                  ; $4CF6: $11 $1F $7A
    ld [hl+], a                                   ; $4CF9: $22
    dec b                                         ; $4CFA: $05
    ld b, b                                       ; $4CFB: $40
    dec b                                         ; $4CFC: $05
    inc bc                                        ; $4CFD: $03
    ld l, e                                       ; $4CFE: $6B
    ld c, d                                       ; $4CFF: $4A
    ld h, $18                                     ; $4D00: $26 $18
    sub $D4                                       ; $4D02: $D6 $D4
    nop                                           ; $4D04: $00
    ld de, $7A1F                                  ; $4D05: $11 $1F $7A
    ld [hl+], a                                   ; $4D08: $22
    dec b                                         ; $4D09: $05
    ld b, b                                       ; $4D0A: $40
    dec b                                         ; $4D0B: $05
    inc b                                         ; $4D0C: $04
    ld l, e                                       ; $4D0D: $6B
    ld c, d                                       ; $4D0E: $4A
    inc [hl]                                      ; $4D0F: $34
    rla                                           ; $4D10: $17
    or d                                          ; $4D11: $B2
    call nc, $1100                                ; $4D12: $D4 $00 $11
    rra                                           ; $4D15: $1F
    ld a, d                                       ; $4D16: $7A
    ld [hl+], a                                   ; $4D17: $22
    dec b                                         ; $4D18: $05
    ld b, b                                       ; $4D19: $40
    dec b                                         ; $4D1A: $05
    dec b                                         ; $4D1B: $05
    ld l, e                                       ; $4D1C: $6B
    ld c, d                                       ; $4D1D: $4A
    jr nz, jr_018_4D40                            ; $4D1E: $20 $20

    ld h, b                                       ; $4D20: $60
    sub $00                                       ; $4D21: $D6 $00
    ld de, $7A1F                                  ; $4D23: $11 $1F $7A
    ld [hl+], a                                   ; $4D26: $22

jr_018_4D27:
    dec b                                         ; $4D27: $05
    ld b, b                                       ; $4D28: $40
    dec b                                         ; $4D29: $05
    ld b, $6B                                     ; $4D2A: $06 $6B
    ld c, d                                       ; $4D2C: $4A
    dec c                                         ; $4D2D: $0D
    inc [hl]                                      ; $4D2E: $34
    dec [hl]                                      ; $4D2F: $35
    jp c, $1100                                   ; $4D30: $DA $00 $11

    rra                                           ; $4D33: $1F
    ld a, d                                       ; $4D34: $7A
    ld [hl+], a                                   ; $4D35: $22
    dec b                                         ; $4D36: $05
    ld b, b                                       ; $4D37: $40
    dec b                                         ; $4D38: $05
    rlca                                          ; $4D39: $07
    ld l, e                                       ; $4D3A: $6B
    ld c, d                                       ; $4D3B: $4A
    ld a, [bc]                                    ; $4D3C: $0A
    ld a, [hl-]                                   ; $4D3D: $3A
    ld e, [hl]                                    ; $4D3E: $5E
    db $DB                                        ; $4D3F: $DB

jr_018_4D40:
    nop                                           ; $4D40: $00
    ld de, $7A1F                                  ; $4D41: $11 $1F $7A
    ld [hl+], a                                   ; $4D44: $22
    dec b                                         ; $4D45: $05
    ld b, b                                       ; $4D46: $40
    dec b                                         ; $4D47: $05
    ld [$4A6B], sp                                ; $4D48: $08 $6B $4A
    ld h, $33                                     ; $4D4B: $26 $33
    inc e                                         ; $4D4D: $1C
    jp c, $1100                                   ; $4D4E: $DA $00 $11

    rra                                           ; $4D51: $1F
    ld a, d                                       ; $4D52: $7A
    ld [hl+], a                                   ; $4D53: $22
    dec b                                         ; $4D54: $05
    ld b, b                                       ; $4D55: $40
    dec b                                         ; $4D56: $05
    add hl, bc                                    ; $4D57: $09
    ld l, e                                       ; $4D58: $6B
    ld c, d                                       ; $4D59: $4A
    add hl, sp                                    ; $4D5A: $39
    jr nc, jr_018_4CF6                            ; $4D5B: $30 $99

    reti                                          ; $4D5D: $D9


    nop                                           ; $4D5E: $00
    ld de, $7A1F                                  ; $4D5F: $11 $1F $7A
    ld [hl+], a                                   ; $4D62: $22
    dec b                                         ; $4D63: $05
    ld b, b                                       ; $4D64: $40
    ld l, e                                       ; $4D65: $6B
    ld b, b                                       ; $4D66: $40
    daa                                           ; $4D67: $27
    nop                                           ; $4D68: $00
    ld b, d                                       ; $4D69: $42
    nop                                           ; $4D6A: $00
    add b                                         ; $4D6B: $80
    nop                                           ; $4D6C: $00
    dec bc                                        ; $4D6D: $0B
    nop                                           ; $4D6E: $00
    dec bc                                        ; $4D6F: $0B
    ld [bc], a                                    ; $4D70: $02
    dec bc                                        ; $4D71: $0B
    inc bc                                        ; $4D72: $03
    dec bc                                        ; $4D73: $0B
    inc b                                         ; $4D74: $04
    dec bc                                        ; $4D75: $0B
    dec b                                         ; $4D76: $05
    dec bc                                        ; $4D77: $0B
    ld b, $0B                                     ; $4D78: $06 $0B
    rlca                                          ; $4D7A: $07
    dec bc                                        ; $4D7B: $0B
    ld [$090B], sp                                ; $4D7C: $08 $0B $09
    ld [hl-], a                                   ; $4D7F: $32
    jr jr_018_4DEF                                ; $4D80: $18 $6D

    ld b, c                                       ; $4D82: $41
    adc l                                         ; $4D83: $8D
    ld b, c                                       ; $4D84: $41
    ld sp, $CF18                                  ; $4D85: $31 $18 $CF
    ld c, h                                       ; $4D88: $4C
    ld [hl+], a                                   ; $4D89: $22
    adc $40                                       ; $4D8A: $CE $40
    nop                                           ; $4D8C: $00
    add d                                         ; $4D8D: $82
    sub h                                         ; $4D8E: $94
    rra                                           ; $4D8F: $1F
    ld [de], a                                    ; $4D90: $12
    ld b, d                                       ; $4D91: $42
    sub [hl]                                      ; $4D92: $96
    jr jr_018_4D27                                ; $4D93: $18 $92

    ld c, l                                       ; $4D95: $4D
    dec b                                         ; $4D96: $05
    inc b                                         ; $4D97: $04
    rst $20                                       ; $4D98: $E7
    ld h, b                                       ; $4D99: $60
    db $10                                        ; $4D9A: $10
    rlca                                          ; $4D9B: $07
    rst $30                                       ; $4D9C: $F7
    ret nc                                        ; $4D9D: $D0

    db $10                                        ; $4D9E: $10
    ld de, $780A                                  ; $4D9F: $11 $0A $78
    ld [hl+], a                                   ; $4DA2: $22
    jp nz, $0140                                  ; $4DA3: $C2 $40 $01

    db $10                                        ; $4DA6: $10
    rlca                                          ; $4DA7: $07
    ld b, l                                       ; $4DA8: $45
    cpl                                           ; $4DA9: $2F
    ret nz                                        ; $4DAA: $C0

    ld b, [hl]                                    ; $4DAB: $46
    ld bc, $3D3F                                  ; $4DAC: $01 $3F $3D
    ld b, l                                       ; $4DAF: $45
    jr @-$2F                                      ; $4DB0: $18 $CF

    ld c, h                                       ; $4DB2: $4C
    sbc e                                         ; $4DB3: $9B
    ld a, b                                       ; $4DB4: $78
    ld [hl], b                                    ; $4DB5: $70
    ld b, e                                       ; $4DB6: $43
    ld de, $2401                                  ; $4DB7: $11 $01 $24
    and d                                         ; $4DBA: $A2
    dec b                                         ; $4DBB: $05
    ld bc, $2418                                  ; $4DBC: $01 $18 $24
    ld c, [hl]                                    ; $4DBF: $4E
    xor h                                         ; $4DC0: $AC
    inc h                                         ; $4DC1: $24
    and d                                         ; $4DC2: $A2
    ld [bc], a                                    ; $4DC3: $02
    sbc a                                         ; $4DC4: $9F
    ld c, a                                       ; $4DC5: $4F
    ld [hl], l                                    ; $4DC6: $75
    ld h, e                                       ; $4DC7: $63
    ld l, b                                       ; $4DC8: $68
    ld hl, $49FF                                  ; $4DC9: $21 $FF $49
    jr nz, jr_018_4E31                            ; $4DCC: $20 $63

    ld h, c                                       ; $4DCE: $61
    ld l, [hl]                                    ; $4DCF: $6E
    daa                                           ; $4DD0: $27
    ld [hl], h                                    ; $4DD1: $74
    jr nz, jr_018_4E3B                            ; $4DD2: $20 $67

    ld h, l                                       ; $4DD4: $65
    ld [hl], h                                    ; $4DD5: $74
    cp $74                                        ; $4DD6: $FE $74
    ld l, b                                       ; $4DD8: $68
    ld [hl], d                                    ; $4DD9: $72
    ld l, a                                       ; $4DDA: $6F
    ld [hl], l                                    ; $4DDB: $75
    ld h, a                                       ; $4DDC: $67
    ld l, b                                       ; $4DDD: $68
    jr nz, jr_018_4E54                            ; $4DDE: $20 $74

    ld l, b                                       ; $4DE0: $68
    ld l, c                                       ; $4DE1: $69
    ld [hl], e                                    ; $4DE2: $73
    ld l, $FE                                     ; $4DE3: $2E $FE
    ld c, l                                       ; $4DE5: $4D
    ld h, c                                       ; $4DE6: $61
    ld a, c                                       ; $4DE7: $79
    ld h, d                                       ; $4DE8: $62
    ld h, l                                       ; $4DE9: $65
    jr nz, jr_018_4E60                            ; $4DEA: $20 $74

    ld l, b                                       ; $4DEC: $68
    ld h, c                                       ; $4DED: $61
    ld [hl], h                                    ; $4DEE: $74

jr_018_4DEF:
    cp $48                                        ; $4DEF: $FE $48
    ld l, c                                       ; $4DF1: $69
    ld [hl], e                                    ; $4DF2: $73
    ld [hl], h                                    ; $4DF3: $74
    ld l, a                                       ; $4DF4: $6F
    ld [hl], d                                    ; $4DF5: $72
    ld l, c                                       ; $4DF6: $69
    ld h, c                                       ; $4DF7: $61
    ld l, [hl]                                    ; $4DF8: $6E
    jr nz, jr_018_4E64                            ; $4DF9: $20 $69

    ld l, [hl]                                    ; $4DFB: $6E
    cp $4F                                        ; $4DFC: $FE $4F
    ld [hl], e                                    ; $4DFE: $73
    ld h, e                                       ; $4DFF: $63
    ld h, l                                       ; $4E00: $65
    ld l, [hl]                                    ; $4E01: $6E
    ld [hl], h                                    ; $4E02: $74
    jr nz, jr_018_4E52                            ; $4E03: $20 $4D

    ld h, c                                       ; $4E05: $61
    ld [hl], d                                    ; $4E06: $72
    cp $6B                                        ; $4E07: $FE $6B
    ld l, [hl]                                    ; $4E09: $6E
    ld l, a                                       ; $4E0A: $6F
    ld [hl], a                                    ; $4E0B: $77
    ld [hl], e                                    ; $4E0C: $73
    jr nz, jr_018_4E70                            ; $4E0D: $20 $61

    ld h, d                                       ; $4E0F: $62
    ld l, a                                       ; $4E10: $6F
    ld [hl], l                                    ; $4E11: $75
    ld [hl], h                                    ; $4E12: $74
    cp $66                                        ; $4E13: $FE $66
    ld l, a                                       ; $4E15: $6F
    ld [hl], d                                    ; $4E16: $72
    ld h, e                                       ; $4E17: $63
    ld h, l                                       ; $4E18: $65
    ld h, [hl]                                    ; $4E19: $66
    ld l, c                                       ; $4E1A: $69
    ld h, l                                       ; $4E1B: $65
    ld l, h                                       ; $4E1C: $6C
    ld h, h                                       ; $4E1D: $64
    ld [hl], e                                    ; $4E1E: $73
    ld l, $FE                                     ; $4E1F: $2E $FE
    db $FD                                        ; $4E21: $FD
    sbc d                                         ; $4E22: $9A
    ld b, d                                       ; $4E23: $42
    sbc a                                         ; $4E24: $9F
    ld c, a                                       ; $4E25: $4F
    ld d, l                                       ; $4E26: $55
    ld b, e                                       ; $4E27: $43
    ld c, b                                       ; $4E28: $48
    ld hl, $54FF                                  ; $4E29: $21 $FF $54
    ld l, b                                       ; $4E2C: $68
    ld h, c                                       ; $4E2D: $61
    ld [hl], h                                    ; $4E2E: $74
    jr nz, jr_018_4EA3                            ; $4E2F: $20 $72

jr_018_4E31:
    ld h, l                                       ; $4E31: $65
    ld h, c                                       ; $4E32: $61
    ld l, h                                       ; $4E33: $6C
    ld l, h                                       ; $4E34: $6C
    ld a, c                                       ; $4E35: $79
    cp $73                                        ; $4E36: $FE $73
    ld [hl], h                                    ; $4E38: $74
    ld l, c                                       ; $4E39: $69
    ld l, [hl]                                    ; $4E3A: $6E

jr_018_4E3B:
    ld h, a                                       ; $4E3B: $67
    ld [hl], e                                    ; $4E3C: $73
    ld hl, $FDFE                                  ; $4E3D: $21 $FE $FD
    sbc d                                         ; $4E40: $9A
    ld b, d                                       ; $4E41: $42
    sbc e                                         ; $4E42: $9B
    ld a, b                                       ; $4E43: $78
    ld [hl], b                                    ; $4E44: $70
    sbc a                                         ; $4E45: $9F
    ld d, a                                       ; $4E46: $57
    ld h, l                                       ; $4E47: $65
    ld l, h                                       ; $4E48: $6C
    ld l, h                                       ; $4E49: $6C
    inc l                                         ; $4E4A: $2C
    jr nz, jr_018_4EC1                            ; $4E4B: $20 $74

    ld l, b                                       ; $4E4D: $68
    ld h, l                                       ; $4E4E: $65
    jr nz, jr_018_4EC0                            ; $4E4F: $20 $6F

    ld l, h                                       ; $4E51: $6C

jr_018_4E52:
    ld h, h                                       ; $4E52: $64
    rst $38                                       ; $4E53: $FF

jr_018_4E54:
    ld h, a                                       ; $4E54: $67
    ld [hl], l                                    ; $4E55: $75
    ld a, c                                       ; $4E56: $79
    jr nz, jr_018_4ECC                            ; $4E57: $20 $73

    ld h, c                                       ; $4E59: $61
    ld l, c                                       ; $4E5A: $69
    ld h, h                                       ; $4E5B: $64
    jr nz, jr_018_4ED2                            ; $4E5C: $20 $74

    ld l, b                                       ; $4E5E: $68
    ld h, c                                       ; $4E5F: $61

jr_018_4E60:
    ld [hl], h                                    ; $4E60: $74
    cp $44                                        ; $4E61: $FE $44
    ld l, c                                       ; $4E63: $69

jr_018_4E64:
    ld [hl], e                                    ; $4E64: $73
    ld [hl], b                                    ; $4E65: $70
    ld h, l                                       ; $4E66: $65
    ld l, h                                       ; $4E67: $6C
    jr nz, jr_018_4EC2                            ; $4E68: $20 $58

    jr nz, jr_018_4ECF                            ; $4E6A: $20 $63

    ld h, c                                       ; $4E6C: $61
    ld l, [hl]                                    ; $4E6D: $6E
    cp $62                                        ; $4E6E: $FE $62

jr_018_4E70:
    ld [hl], d                                    ; $4E70: $72
    ld h, l                                       ; $4E71: $65
    ld h, c                                       ; $4E72: $61
    ld l, e                                       ; $4E73: $6B
    jr nz, jr_018_4EE9                            ; $4E74: $20 $73

    ld [hl], b                                    ; $4E76: $70
    ld h, l                                       ; $4E77: $65
    ld l, h                                       ; $4E78: $6C
    ld l, h                                       ; $4E79: $6C
    ld [hl], e                                    ; $4E7A: $73
    ld l, $2E                                     ; $4E7B: $2E $2E
    ld l, $FE                                     ; $4E7D: $2E $FE
    ld d, h                                       ; $4E7F: $54
    ld l, c                                       ; $4E80: $69
    ld l, l                                       ; $4E81: $6D
    ld h, l                                       ; $4E82: $65
    jr nz, jr_018_4EF9                            ; $4E83: $20 $74

    ld l, a                                       ; $4E85: $6F
    jr nz, jr_018_4EFB                            ; $4E86: $20 $73

    ld h, l                                       ; $4E88: $65
    ld h, l                                       ; $4E89: $65
    jr nz, jr_018_4EF5                            ; $4E8A: $20 $69

    ld h, [hl]                                    ; $4E8C: $66
    cp $68                                        ; $4E8D: $FE $68
    ld h, l                                       ; $4E8F: $65
    daa                                           ; $4E90: $27
    ld [hl], e                                    ; $4E91: $73
    jr nz, jr_018_4F06                            ; $4E92: $20 $72

    ld l, c                                       ; $4E94: $69
    ld h, a                                       ; $4E95: $67
    ld l, b                                       ; $4E96: $68
    ld [hl], h                                    ; $4E97: $74
    ld l, $FE                                     ; $4E98: $2E $FE
    db $FD                                        ; $4E9A: $FD
    sbc d                                         ; $4E9B: $9A
    sbc e                                         ; $4E9C: $9B
    ld a, b                                       ; $4E9D: $78
    ld [hl], b                                    ; $4E9E: $70
    sbc a                                         ; $4E9F: $9F
    ld b, d                                       ; $4EA0: $42
    ld b, l                                       ; $4EA1: $45
    ld c, b                                       ; $4EA2: $48

jr_018_4EA3:
    ld c, a                                       ; $4EA3: $4F
    ld c, h                                       ; $4EA4: $4C
    ld b, h                                       ; $4EA5: $44
    ld hl, $44FF                                  ; $4EA6: $21 $FF $44
    ld c, c                                       ; $4EA9: $49
    ld d, e                                       ; $4EAA: $53
    ld d, b                                       ; $4EAB: $50
    ld b, l                                       ; $4EAC: $45
    ld c, h                                       ; $4EAD: $4C
    jr nz, jr_018_4F08                            ; $4EAE: $20 $58

    ld hl, $FDFE                                  ; $4EB0: $21 $FE $FD
    sbc d                                         ; $4EB3: $9A
    ld e, b                                       ; $4EB4: $58
    ld bc, $9342                                  ; $4EB5: $01 $42 $93
    rra                                           ; $4EB8: $1F
    ld [de], a                                    ; $4EB9: $12
    ld h, l                                       ; $4EBA: $65
    jp $4F4F                                      ; $4EBB: $C3 $4F $4F


    ld l, c                                       ; $4EBE: $69
    rst $08                                       ; $4EBF: $CF

jr_018_4EC0:
    ld d, h                                       ; $4EC0: $54

jr_018_4EC1:
    ld h, h                                       ; $4EC1: $64

jr_018_4EC2:
    add $54                                       ; $4EC2: $C6 $54
    ld h, [hl]                                    ; $4EC4: $66
    ret nz                                        ; $4EC5: $C0

    ld e, h                                       ; $4EC6: $5C
    ld hl, $0205                                  ; $4EC7: $21 $05 $02
    ld l, e                                       ; $4ECA: $6B
    ld c, d                                       ; $4ECB: $4A

jr_018_4ECC:
    ld [$A82A], sp                                ; $4ECC: $08 $2A $A8

jr_018_4ECF:
    jp nc, $1100                                  ; $4ECF: $D2 $00 $11

jr_018_4ED2:
    ret z                                         ; $4ED2: $C8

    ld [hl], l                                    ; $4ED3: $75
    ld [hl+], a                                   ; $4ED4: $22
    dec b                                         ; $4ED5: $05
    ld b, b                                       ; $4ED6: $40
    ld l, e                                       ; $4ED7: $6B
    jr nz, jr_018_4EE7                            ; $4ED8: $20 $0D

    ld b, b                                       ; $4EDA: $40
    ld d, e                                       ; $4EDB: $53
    nop                                           ; $4EDC: $00
    add b                                         ; $4EDD: $80
    nop                                           ; $4EDE: $00
    ld b, e                                       ; $4EDF: $43
    ld [$040F], sp                                ; $4EE0: $08 $0F $04
    dec b                                         ; $4EE3: $05
    inc de                                        ; $4EE4: $13
    ld a, [bc]                                    ; $4EE5: $0A
    nop                                           ; $4EE6: $00

jr_018_4EE7:
    xor c                                         ; $4EE7: $A9
    and c                                         ; $4EE8: $A1

jr_018_4EE9:
    inc b                                         ; $4EE9: $04
    jr jr_018_4F09                                ; $4EEA: $18 $1D

    ld c, a                                       ; $4EEC: $4F

jr_018_4EED:
    dec b                                         ; $4EED: $05
    nop                                           ; $4EEE: $00
    add c                                         ; $4EEF: $81
    ld e, l                                       ; $4EF0: $5D
    dec b                                         ; $4EF1: $05
    dec b                                         ; $4EF2: $05
    ld d, l                                       ; $4EF3: $55
    ret nc                                        ; $4EF4: $D0

jr_018_4EF5:
    nop                                           ; $4EF5: $00
    jr nz, @-$3F                                  ; $4EF6: $20 $BF

    ld d, b                                       ; $4EF8: $50

jr_018_4EF9:
    ld [hl+], a                                   ; $4EF9: $22
    dec b                                         ; $4EFA: $05

jr_018_4EFB:
    ld b, b                                       ; $4EFB: $40
    dec bc                                        ; $4EFC: $0B
    nop                                           ; $4EFD: $00
    dec bc                                        ; $4EFE: $0B
    ld [bc], a                                    ; $4EFF: $02
    nop                                           ; $4F00: $00
    add d                                         ; $4F01: $82
    sub h                                         ; $4F02: $94
    ld b, e                                       ; $4F03: $43
    ld a, [bc]                                    ; $4F04: $0A
    nop                                           ; $4F05: $00

jr_018_4F06:
    xor c                                         ; $4F06: $A9
    and c                                         ; $4F07: $A1

jr_018_4F08:
    inc b                                         ; $4F08: $04

jr_018_4F09:
    ld [hl+], a                                   ; $4F09: $22
    inc b                                         ; $4F0A: $04
    ld b, b                                       ; $4F0B: $40
    inc c                                         ; $4F0C: $0C
    ld [bc], a                                    ; $4F0D: $02
    add b                                         ; $4F0E: $80

jr_018_4F0F:
    ld a, [hl+]                                   ; $4F0F: $2A
    ld [$D2A8], sp                                ; $4F10: $08 $A8 $D2
    ld bc, $8000                                  ; $4F13: $01 $00 $80
    ld a, [hl+]                                   ; $4F16: $2A
    add hl, bc                                    ; $4F17: $09
    xor c                                         ; $4F18: $A9
    jp nc, $0001                                  ; $4F19: $D2 $01 $00

    ld b, d                                       ; $4F1C: $42
    dec b                                         ; $4F1D: $05
    nop                                           ; $4F1E: $00
    ld l, e                                       ; $4F1F: $6B
    ld c, d                                       ; $4F20: $4A
    ld [$F82F], sp                                ; $4F21: $08 $2F $F8
    jp nc, $1800                                  ; $4F24: $D2 $00 $18

    scf                                           ; $4F27: $37
    ld c, a                                       ; $4F28: $4F
    ld [hl+], a                                   ; $4F29: $22
    dec b                                         ; $4F2A: $05
    ld b, b                                       ; $4F2B: $40
    dec bc                                        ; $4F2C: $0B
    nop                                           ; $4F2D: $00
    dec bc                                        ; $4F2E: $0B
    ld [bc], a                                    ; $4F2F: $02
    add d                                         ; $4F30: $82
    sub h                                         ; $4F31: $94
    xor a                                         ; $4F32: $AF
    xor c                                         ; $4F33: $A9
    and c                                         ; $4F34: $A1
    inc b                                         ; $4F35: $04
    ld b, d                                       ; $4F36: $42
    dec d                                         ; $4F37: $15
    jr nz, jr_018_4EED                            ; $4F38: $20 $B3

    ld c, a                                       ; $4F3A: $4F
    jr z, jr_018_4F5D                             ; $4F3B: $28 $20

    xor e                                         ; $4F3D: $AB
    ld d, b                                       ; $4F3E: $50
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    ld e, e                                       ; $4F41: $5B
    jr @+$44                                      ; $4F42: $18 $42

    ld c, [hl]                                    ; $4F44: $4E
    ld h, d                                       ; $4F45: $62
    ld bc, $020C                                  ; $4F46: $01 $0C $02
    add b                                         ; $4F49: $80
    ld a, [hl+]                                   ; $4F4A: $2A
    ld [$D2A8], sp                                ; $4F4B: $08 $A8 $D2
    ld bc, $8000                                  ; $4F4E: $01 $00 $80
    ld a, [hl+]                                   ; $4F51: $2A
    add hl, bc                                    ; $4F52: $09
    xor c                                         ; $4F53: $A9
    jp nc, $0001                                  ; $4F54: $D2 $01 $00

    ld e, d                                       ; $4F57: $5A
    jr jr_018_4FB6                                ; $4F58: $18 $5C

    ld c, a                                       ; $4F5A: $4F
    ld b, d                                       ; $4F5B: $42
    rlca                                          ; $4F5C: $07

jr_018_4F5D:
    nop                                           ; $4F5D: $00
    add c                                         ; $4F5E: $81
    ld e, l                                       ; $4F5F: $5D
    add hl, bc                                    ; $4F60: $09
    nop                                           ; $4F61: $00
    jr nz, jr_018_4F0F                            ; $4F62: $20 $AB

    ld d, b                                       ; $4F64: $50
    ld b, d                                       ; $4F65: $42
    ld bc, $1207                                  ; $4F66: $01 $07 $12
    ld b, l                                       ; $4F69: $45
    jr @-$55                                      ; $4F6A: $18 $A9

    ld c, e                                       ; $4F6C: $4B
    sbc e                                         ; $4F6D: $9B
    cp b                                          ; $4F6E: $B8
    halt                                          ; $4F6F: $76
    sbc a                                         ; $4F70: $9F
    ld d, h                                       ; $4F71: $54
    ld l, b                                       ; $4F72: $68
    ld h, l                                       ; $4F73: $65
    ld [hl], d                                    ; $4F74: $72
    ld h, l                                       ; $4F75: $65
    jr nz, @+$7B                                  ; $4F76: $20 $79

    ld l, a                                       ; $4F78: $6F
    ld [hl], l                                    ; $4F79: $75
    jr nz, jr_018_4FDD                            ; $4F7A: $20 $61

    ld [hl], d                                    ; $4F7C: $72
    ld h, l                                       ; $4F7D: $65
    ld l, $FE                                     ; $4F7E: $2E $FE
    ld c, c                                       ; $4F80: $49
    jr nz, jr_018_4FFA                            ; $4F81: $20 $77

    ld h, c                                       ; $4F83: $61
    ld [hl], e                                    ; $4F84: $73
    jr nz, jr_018_4FEE                            ; $4F85: $20 $67

    ld h, l                                       ; $4F87: $65
    ld [hl], h                                    ; $4F88: $74
    ld [hl], h                                    ; $4F89: $74
    ld l, c                                       ; $4F8A: $69
    ld l, [hl]                                    ; $4F8B: $6E
    ld h, a                                       ; $4F8C: $67
    rst $38                                       ; $4F8D: $FF
    ld l, c                                       ; $4F8E: $69
    ld l, l                                       ; $4F8F: $6D
    ld [hl], b                                    ; $4F90: $70
    ld h, c                                       ; $4F91: $61
    ld [hl], h                                    ; $4F92: $74
    ld l, c                                       ; $4F93: $69
    ld h, l                                       ; $4F94: $65
    ld l, [hl]                                    ; $4F95: $6E
    ld [hl], h                                    ; $4F96: $74
    ld l, $FE                                     ; $4F97: $2E $FE
    db $FD                                        ; $4F99: $FD
    sbc d                                         ; $4F9A: $9A
    ld e, b                                       ; $4F9B: $58
    ld bc, $9B42                                  ; $4F9C: $01 $42 $9B
    cp b                                          ; $4F9F: $B8
    halt                                          ; $4FA0: $76
    sbc a                                         ; $4FA1: $9F
    ld d, e                                       ; $4FA2: $53
    ld l, a                                       ; $4FA3: $6F
    jr nz, jr_018_500E                            ; $4FA4: $20 $68

    ld h, c                                       ; $4FA6: $61
    halt                                          ; $4FA7: $76
    ld h, l                                       ; $4FA8: $65
    jr nz, jr_018_5024                            ; $4FA9: $20 $79

    ld l, a                                       ; $4FAB: $6F
    ld [hl], l                                    ; $4FAC: $75
    rst $38                                       ; $4FAD: $FF
    ld l, l                                       ; $4FAE: $6D
    ld h, c                                       ; $4FAF: $61
    ld h, h                                       ; $4FB0: $64
    ld h, l                                       ; $4FB1: $65
    jr nz, jr_018_502D                            ; $4FB2: $20 $79

    ld l, a                                       ; $4FB4: $6F
    ld [hl], l                                    ; $4FB5: $75

jr_018_4FB6:
    ld [hl], d                                    ; $4FB6: $72
    cp $64                                        ; $4FB7: $FE $64
    ld h, l                                       ; $4FB9: $65
    ld h, e                                       ; $4FBA: $63
    ld l, c                                       ; $4FBB: $69
    ld [hl], e                                    ; $4FBC: $73
    ld l, c                                       ; $4FBD: $69
    ld l, a                                       ; $4FBE: $6F
    ld l, [hl]                                    ; $4FBF: $6E
    ccf                                           ; $4FC0: $3F
    jr nz, jr_018_500C                            ; $4FC1: $20 $49

    rst $38                                       ; $4FC3: $FF
    ld l, b                                       ; $4FC4: $68
    ld h, c                                       ; $4FC5: $61
    halt                                          ; $4FC6: $76
    ld h, l                                       ; $4FC7: $65
    jr nz, jr_018_503E                            ; $4FC8: $20 $74

    ld l, b                                       ; $4FCA: $68
    ld h, l                                       ; $4FCB: $65
    jr nz, @+$45                                  ; $4FCC: $20 $43

    ld l, a                                       ; $4FCE: $6F
    ld [hl], d                                    ; $4FCF: $72
    ld h, l                                       ; $4FD0: $65
    cp $53                                        ; $4FD1: $FE $53
    ld [hl], h                                    ; $4FD3: $74
    ld l, a                                       ; $4FD4: $6F
    ld l, [hl]                                    ; $4FD5: $6E
    ld h, l                                       ; $4FD6: $65
    jr nz, jr_018_504B                            ; $4FD7: $20 $72

    ld l, c                                       ; $4FD9: $69
    ld h, a                                       ; $4FDA: $67
    ld l, b                                       ; $4FDB: $68
    ld [hl], h                                    ; $4FDC: $74

jr_018_4FDD:
    rst $38                                       ; $4FDD: $FF
    ld l, a                                       ; $4FDE: $6F
    halt                                          ; $4FDF: $76
    ld h, l                                       ; $4FE0: $65
    ld [hl], d                                    ; $4FE1: $72
    jr nz, jr_018_5058                            ; $4FE2: $20 $74

    ld l, b                                       ; $4FE4: $68
    ld h, l                                       ; $4FE5: $65
    ld [hl], d                                    ; $4FE6: $72
    ld h, l                                       ; $4FE7: $65
    ld l, $FE                                     ; $4FE8: $2E $FE
    ld c, c                                       ; $4FEA: $49
    ld h, [hl]                                    ; $4FEB: $66
    jr nz, jr_018_5067                            ; $4FEC: $20 $79

jr_018_4FEE:
    ld l, a                                       ; $4FEE: $6F
    ld [hl], l                                    ; $4FEF: $75
    jr nz, @+$79                                  ; $4FF0: $20 $77

    ld l, c                                       ; $4FF2: $69
    ld l, h                                       ; $4FF3: $6C
    ld l, h                                       ; $4FF4: $6C
    rst $38                                       ; $4FF5: $FF
    ld [hl], e                                    ; $4FF6: $73
    ld l, c                                       ; $4FF7: $69
    ld l, l                                       ; $4FF8: $6D
    ld [hl], b                                    ; $4FF9: $70

jr_018_4FFA:
    ld l, h                                       ; $4FFA: $6C
    ld a, c                                       ; $4FFB: $79
    jr nz, @+$76                                  ; $4FFC: $20 $74

    ld h, c                                       ; $4FFE: $61
    ld l, e                                       ; $4FFF: $6B
    ld h, l                                       ; $5000: $65
    jr nz, jr_018_506C                            ; $5001: $20 $69

    ld [hl], h                                    ; $5003: $74
    inc l                                         ; $5004: $2C
    cp $61                                        ; $5005: $FE $61
    ld l, [hl]                                    ; $5007: $6E
    ld h, h                                       ; $5008: $64
    jr nz, jr_018_507D                            ; $5009: $20 $72

    ld h, l                                       ; $500B: $65

jr_018_500C:
    ld [hl], h                                    ; $500C: $74
    ld [hl], l                                    ; $500D: $75

jr_018_500E:
    ld [hl], d                                    ; $500E: $72
    ld l, [hl]                                    ; $500F: $6E
    jr nz, jr_018_5086                            ; $5010: $20 $74

    ld l, a                                       ; $5012: $6F
    rst $38                                       ; $5013: $FF
    ld a, c                                       ; $5014: $79
    ld l, a                                       ; $5015: $6F
    ld [hl], l                                    ; $5016: $75
    ld [hl], d                                    ; $5017: $72
    jr nz, @+$79                                  ; $5018: $20 $77

    ld l, a                                       ; $501A: $6F
    ld [hl], d                                    ; $501B: $72
    ld l, h                                       ; $501C: $6C
    ld h, h                                       ; $501D: $64

jr_018_501E:
    cp $49                                        ; $501E: $FE $49
    jr nz, jr_018_5099                            ; $5020: $20 $77

    ld l, c                                       ; $5022: $69
    ld l, h                                       ; $5023: $6C

jr_018_5024:
    ld l, h                                       ; $5024: $6C
    jr nz, jr_018_5088                            ; $5025: $20 $61

    ld l, h                                       ; $5027: $6C
    ld l, h                                       ; $5028: $6C
    ld l, a                                       ; $5029: $6F
    ld [hl], a                                    ; $502A: $77
    rst $38                                       ; $502B: $FF
    ld l, c                                       ; $502C: $69

jr_018_502D:
    ld [hl], h                                    ; $502D: $74
    ld l, $FE                                     ; $502E: $2E $FE
    db $FD                                        ; $5030: $FD
    sbc d                                         ; $5031: $9A
    ld b, b                                       ; $5032: $40
    ld b, b                                       ; $5033: $40
    sbc e                                         ; $5034: $9B
    cp b                                          ; $5035: $B8
    halt                                          ; $5036: $76
    sbc a                                         ; $5037: $9F
    ld b, d                                       ; $5038: $42
    ld [hl], l                                    ; $5039: $75
    ld [hl], h                                    ; $503A: $74
    jr nz, jr_018_50A6                            ; $503B: $20 $69

    ld h, [hl]                                    ; $503D: $66

jr_018_503E:
    jr nz, jr_018_50B9                            ; $503E: $20 $79

    ld l, a                                       ; $5040: $6F
    ld [hl], l                                    ; $5041: $75
    rst $38                                       ; $5042: $FF
    ld [hl], d                                    ; $5043: $72
    ld h, l                                       ; $5044: $65
    ld h, [hl]                                    ; $5045: $66
    ld [hl], l                                    ; $5046: $75
    ld [hl], e                                    ; $5047: $73
    ld h, l                                       ; $5048: $65
    ld l, $2E                                     ; $5049: $2E $2E

jr_018_504B:
    ld l, $FE                                     ; $504B: $2E $FE
    db $FD                                        ; $504D: $FD
    sbc d                                         ; $504E: $9A
    ld e, b                                       ; $504F: $58
    ld [bc], a                                    ; $5050: $02
    ld b, d                                       ; $5051: $42
    sbc a                                         ; $5052: $9F
    jr nz, jr_018_50A7                            ; $5053: $20 $52

    ld h, l                                       ; $5055: $65
    ld h, [hl]                                    ; $5056: $66
    ld [hl], l                                    ; $5057: $75

jr_018_5058:
    ld [hl], e                                    ; $5058: $73
    ld h, l                                       ; $5059: $65
    jr nz, jr_018_50CB                            ; $505A: $20 $6F

    ld h, [hl]                                    ; $505C: $66
    ld h, [hl]                                    ; $505D: $66
    ld h, l                                       ; $505E: $65
    ld [hl], d                                    ; $505F: $72
    rst $38                                       ; $5060: $FF
    jr nz, jr_018_50A4                            ; $5061: $20 $41

    ld h, e                                       ; $5063: $63
    ld h, e                                       ; $5064: $63
    ld h, l                                       ; $5065: $65
    ld [hl], b                                    ; $5066: $70

jr_018_5067:
    ld [hl], h                                    ; $5067: $74
    jr nz, jr_018_50D9                            ; $5068: $20 $6F

    ld h, [hl]                                    ; $506A: $66
    ld h, [hl]                                    ; $506B: $66

jr_018_506C:
    ld h, l                                       ; $506C: $65
    ld [hl], d                                    ; $506D: $72
    db $FD                                        ; $506E: $FD
    sbc h                                         ; $506F: $9C
    ld [bc], a                                    ; $5070: $02
    jr jr_018_50EA                                ; $5071: $18 $77

    ld d, b                                       ; $5073: $50
    jr jr_018_501E                                ; $5074: $18 $A8

    ld d, b                                       ; $5076: $50
    xor [hl]                                      ; $5077: $AE
    xor d                                         ; $5078: $AA
    and c                                         ; $5079: $A1
    ei                                            ; $507A: $FB
    sbc e                                         ; $507B: $9B
    cp b                                          ; $507C: $B8

jr_018_507D:
    halt                                          ; $507D: $76
    sbc a                                         ; $507E: $9F
    ld d, [hl]                                    ; $507F: $56
    ld h, l                                       ; $5080: $65
    ld [hl], d                                    ; $5081: $72
    ld a, c                                       ; $5082: $79
    jr nz, jr_018_50FC                            ; $5083: $20 $77

    ld h, l                                       ; $5085: $65

jr_018_5086:
    ld l, h                                       ; $5086: $6C
    ld l, h                                       ; $5087: $6C

jr_018_5088:
    ld l, $FE                                     ; $5088: $2E $FE
    ld d, e                                       ; $508A: $53
    ld l, a                                       ; $508B: $6F
    jr nz, jr_018_5107                            ; $508C: $20 $79

    ld l, a                                       ; $508E: $6F
    ld [hl], l                                    ; $508F: $75
    jr nz, jr_018_5105                            ; $5090: $20 $73

    ld [hl], h                                    ; $5092: $74
    ld h, c                                       ; $5093: $61
    ld l, [hl]                                    ; $5094: $6E
    ld h, h                                       ; $5095: $64
    rst $38                                       ; $5096: $FF
    ld h, c                                       ; $5097: $61
    ld h, a                                       ; $5098: $67

jr_018_5099:
    ld h, c                                       ; $5099: $61
    ld l, c                                       ; $509A: $69
    ld l, [hl]                                    ; $509B: $6E
    ld [hl], e                                    ; $509C: $73
    ld [hl], h                                    ; $509D: $74
    jr nz, jr_018_5115                            ; $509E: $20 $75

    ld [hl], e                                    ; $50A0: $73
    ld l, $FE                                     ; $50A1: $2E $FE
    db $FD                                        ; $50A3: $FD

jr_018_50A4:
    sbc d                                         ; $50A4: $9A
    ld e, b                                       ; $50A5: $58

jr_018_50A6:
    inc bc                                        ; $50A6: $03

jr_018_50A7:
    ld b, d                                       ; $50A7: $42
    xor a                                         ; $50A8: $AF
    xor d                                         ; $50A9: $AA
    and c                                         ; $50AA: $A1
    inc b                                         ; $50AB: $04
    sbc e                                         ; $50AC: $9B
    cp b                                          ; $50AD: $B8
    halt                                          ; $50AE: $76
    sbc a                                         ; $50AF: $9F
    ld b, a                                       ; $50B0: $47
    ld l, a                                       ; $50B1: $6F
    ld l, a                                       ; $50B2: $6F
    ld h, h                                       ; $50B3: $64
    ld l, $20                                     ; $50B4: $2E $20
    ld c, c                                       ; $50B6: $49
    jr nz, jr_018_5124                            ; $50B7: $20 $6B

jr_018_50B9:
    ld l, [hl]                                    ; $50B9: $6E
    ld h, l                                       ; $50BA: $65
    ld [hl], a                                    ; $50BB: $77
    rst $38                                       ; $50BC: $FF
    ld a, c                                       ; $50BD: $79
    ld l, a                                       ; $50BE: $6F
    ld [hl], l                                    ; $50BF: $75
    daa                                           ; $50C0: $27
    ld h, h                                       ; $50C1: $64
    jr nz, jr_018_5137                            ; $50C2: $20 $73

    ld h, l                                       ; $50C4: $65
    ld h, l                                       ; $50C5: $65
    jr nz, jr_018_5131                            ; $50C6: $20 $69

    ld [hl], h                                    ; $50C8: $74
    cp $6D                                        ; $50C9: $FE $6D

jr_018_50CB:
    ld a, c                                       ; $50CB: $79
    jr nz, jr_018_5145                            ; $50CC: $20 $77

    ld h, c                                       ; $50CE: $61
    ld a, c                                       ; $50CF: $79
    ld l, $FE                                     ; $50D0: $2E $FE
    db $FD                                        ; $50D2: $FD
    sbc d                                         ; $50D3: $9A
    ld e, b                                       ; $50D4: $58
    inc bc                                        ; $50D5: $03
    ld b, d                                       ; $50D6: $42
    sbc e                                         ; $50D7: $9B
    cp b                                          ; $50D8: $B8

jr_018_50D9:
    halt                                          ; $50D9: $76
    sbc a                                         ; $50DA: $9F
    ld e, c                                       ; $50DB: $59
    ld l, a                                       ; $50DC: $6F
    ld [hl], l                                    ; $50DD: $75
    jr nz, @+$66                                  ; $50DE: $20 $64

    ld l, c                                       ; $50E0: $69
    ld [hl], e                                    ; $50E1: $73
    ld h, c                                       ; $50E2: $61
    ld [hl], b                                    ; $50E3: $70
    ld [hl], b                                    ; $50E4: $70
    ld l, a                                       ; $50E5: $6F
    ld l, c                                       ; $50E6: $69
    ld l, [hl]                                    ; $50E7: $6E
    ld [hl], h                                    ; $50E8: $74
    rst $38                                       ; $50E9: $FF

jr_018_50EA:
    ld l, l                                       ; $50EA: $6D
    ld h, l                                       ; $50EB: $65
    inc l                                         ; $50EC: $2C
    jr nz, jr_018_5151                            ; $50ED: $20 $62

    ld l, a                                       ; $50EF: $6F
    ld a, c                                       ; $50F0: $79
    ld l, $20                                     ; $50F1: $2E $20
    ld e, c                                       ; $50F3: $59
    ld l, a                                       ; $50F4: $6F
    ld [hl], l                                    ; $50F5: $75
    daa                                           ; $50F6: $27
    ld [hl], d                                    ; $50F7: $72
    ld h, l                                       ; $50F8: $65
    cp $6E                                        ; $50F9: $FE $6E
    ld l, a                                       ; $50FB: $6F

jr_018_50FC:
    jr nz, jr_018_5160                            ; $50FC: $20 $62

    ld h, l                                       ; $50FE: $65
    ld [hl], h                                    ; $50FF: $74
    ld [hl], h                                    ; $5100: $74
    ld h, l                                       ; $5101: $65
    ld [hl], d                                    ; $5102: $72
    jr nz, jr_018_5179                            ; $5103: $20 $74

jr_018_5105:
    ld l, b                                       ; $5105: $68
    ld h, c                                       ; $5106: $61

jr_018_5107:
    ld l, [hl]                                    ; $5107: $6E
    rst $38                                       ; $5108: $FF
    ld [hl], h                                    ; $5109: $74
    ld l, b                                       ; $510A: $68
    ld l, a                                       ; $510B: $6F
    ld [hl], e                                    ; $510C: $73
    ld h, l                                       ; $510D: $65
    jr nz, @+$65                                  ; $510E: $20 $63

    ld l, b                                       ; $5110: $68
    ld l, c                                       ; $5111: $69
    ld l, h                                       ; $5112: $6C
    ld h, h                                       ; $5113: $64
    ld [hl], d                                    ; $5114: $72

jr_018_5115:
    ld h, l                                       ; $5115: $65
    ld l, [hl]                                    ; $5116: $6E
    cp $6F                                        ; $5117: $FE $6F
    ld h, [hl]                                    ; $5119: $66
    jr nz, @+$43                                  ; $511A: $20 $41

    ld h, a                                       ; $511C: $67
    ld h, c                                       ; $511D: $61
    ld h, h                                       ; $511E: $64
    ld l, a                                       ; $511F: $6F
    ld l, [hl]                                    ; $5120: $6E
    ld l, $FE                                     ; $5121: $2E $FE
    db $FD                                        ; $5123: $FD

jr_018_5124:
    sbc d                                         ; $5124: $9A
    ld b, b                                       ; $5125: $40
    ld b, b                                       ; $5126: $40
    sbc e                                         ; $5127: $9B
    cp b                                          ; $5128: $B8
    halt                                          ; $5129: $76
    sbc a                                         ; $512A: $9F
    ld c, c                                       ; $512B: $49
    jr nz, jr_018_5192                            ; $512C: $20 $64

    ld l, c                                       ; $512E: $69
    ld h, h                                       ; $512F: $64
    ld l, [hl]                                    ; $5130: $6E

jr_018_5131:
    daa                                           ; $5131: $27
    ld [hl], h                                    ; $5132: $74
    jr nz, jr_018_51AC                            ; $5133: $20 $77

    ld h, c                                       ; $5135: $61
    ld l, [hl]                                    ; $5136: $6E

jr_018_5137:
    ld [hl], h                                    ; $5137: $74
    rst $38                                       ; $5138: $FF
    ld [hl], h                                    ; $5139: $74
    ld l, a                                       ; $513A: $6F
    jr nz, jr_018_51A5                            ; $513B: $20 $68

    ld h, c                                       ; $513D: $61
    halt                                          ; $513E: $76
    ld h, l                                       ; $513F: $65
    jr nz, jr_018_51B6                            ; $5140: $20 $74

    ld l, a                                       ; $5142: $6F
    jr nz, jr_018_51A9                            ; $5143: $20 $64

jr_018_5145:
    ld l, a                                       ; $5145: $6F
    cp $74                                        ; $5146: $FE $74
    ld l, b                                       ; $5148: $68
    ld l, c                                       ; $5149: $69
    ld [hl], e                                    ; $514A: $73
    ld l, $2E                                     ; $514B: $2E $2E
    ld l, $20                                     ; $514D: $2E $20
    ld c, c                                       ; $514F: $49
    rst $38                                       ; $5150: $FF

jr_018_5151:
    ld [hl], h                                    ; $5151: $74
    ld l, b                                       ; $5152: $68
    ld l, a                                       ; $5153: $6F
    ld [hl], l                                    ; $5154: $75
    ld h, a                                       ; $5155: $67
    ld l, b                                       ; $5156: $68
    ld [hl], h                                    ; $5157: $74
    jr nz, jr_018_51D3                            ; $5158: $20 $79

    ld l, a                                       ; $515A: $6F
    ld [hl], l                                    ; $515B: $75
    cp $77                                        ; $515C: $FE $77
    ld l, a                                       ; $515E: $6F
    ld [hl], l                                    ; $515F: $75

jr_018_5160:
    ld l, h                                       ; $5160: $6C
    ld h, h                                       ; $5161: $64
    jr nz, jr_018_51C8                            ; $5162: $20 $64

    ld l, a                                       ; $5164: $6F
    jr nz, jr_018_51DB                            ; $5165: $20 $74

    ld l, b                                       ; $5167: $68
    ld h, l                                       ; $5168: $65
    rst $38                                       ; $5169: $FF
    ld [hl], e                                    ; $516A: $73
    ld h, l                                       ; $516B: $65
    ld l, [hl]                                    ; $516C: $6E
    ld [hl], e                                    ; $516D: $73
    ld l, c                                       ; $516E: $69
    ld h, d                                       ; $516F: $62
    ld l, h                                       ; $5170: $6C
    ld h, l                                       ; $5171: $65
    cp $74                                        ; $5172: $FE $74
    ld l, b                                       ; $5174: $68
    ld l, c                                       ; $5175: $69
    ld l, [hl]                                    ; $5176: $6E
    ld h, a                                       ; $5177: $67
    inc l                                         ; $5178: $2C

jr_018_5179:
    jr nz, jr_018_51DD                            ; $5179: $20 $62

    ld [hl], l                                    ; $517B: $75
    ld [hl], h                                    ; $517C: $74
    ld l, $2E                                     ; $517D: $2E $2E
    ld l, $FE                                     ; $517F: $2E $FE
    db $FD                                        ; $5181: $FD
    sbc d                                         ; $5182: $9A
    ld e, b                                       ; $5183: $58
    inc b                                         ; $5184: $04
    ld b, d                                       ; $5185: $42
    sbc e                                         ; $5186: $9B
    cp b                                          ; $5187: $B8
    halt                                          ; $5188: $76
    sbc a                                         ; $5189: $9F
    ld c, c                                       ; $518A: $49
    daa                                           ; $518B: $27
    ld l, l                                       ; $518C: $6D
    jr nz, jr_018_5202                            ; $518D: $20 $73

    ld h, l                                       ; $518F: $65
    ld l, [hl]                                    ; $5190: $6E
    ld h, h                                       ; $5191: $64

jr_018_5192:
    ld l, c                                       ; $5192: $69
    ld l, [hl]                                    ; $5193: $6E
    ld h, a                                       ; $5194: $67
    rst $38                                       ; $5195: $FF
    ld a, c                                       ; $5196: $79
    ld l, a                                       ; $5197: $6F
    ld [hl], l                                    ; $5198: $75
    jr nz, jr_018_520F                            ; $5199: $20 $74

    ld l, a                                       ; $519B: $6F
    jr nz, jr_018_5212                            ; $519C: $20 $74

    ld l, b                                       ; $519E: $68
    ld h, l                                       ; $519F: $65
    cp $41                                        ; $51A0: $FE $41
    ld h, d                                       ; $51A2: $62
    ld a, c                                       ; $51A3: $79
    ld [hl], e                                    ; $51A4: $73

jr_018_51A5:
    ld [hl], e                                    ; $51A5: $73
    ld hl, $5420                                  ; $51A6: $21 $20 $54

jr_018_51A9:
    ld l, b                                       ; $51A9: $68
    ld l, c                                       ; $51AA: $69
    ld [hl], e                                    ; $51AB: $73

jr_018_51AC:
    jr nz, jr_018_5217                            ; $51AC: $20 $69

    ld [hl], e                                    ; $51AE: $73
    rst $38                                       ; $51AF: $FF
    ld [hl], h                                    ; $51B0: $74
    ld l, b                                       ; $51B1: $68
    ld h, l                                       ; $51B2: $65
    jr nz, jr_018_521A                            ; $51B3: $20 $65

    ld l, [hl]                                    ; $51B5: $6E

jr_018_51B6:
    ld h, h                                       ; $51B6: $64
    inc l                                         ; $51B7: $2C
    jr nz, jr_018_521C                            ; $51B8: $20 $62

    ld l, a                                       ; $51BA: $6F
    ld a, c                                       ; $51BB: $79
    ld hl, $FDFE                                  ; $51BC: $21 $FE $FD
    sbc d                                         ; $51BF: $9A
    ld e, b                                       ; $51C0: $58
    dec b                                         ; $51C1: $05
    ld b, d                                       ; $51C2: $42
    sbc e                                         ; $51C3: $9B
    cp b                                          ; $51C4: $B8
    halt                                          ; $51C5: $76
    sbc a                                         ; $51C6: $9F
    ld c, b                                       ; $51C7: $48

jr_018_51C8:
    ld h, l                                       ; $51C8: $65
    ld [hl], d                                    ; $51C9: $72
    ld h, l                                       ; $51CA: $65
    ld l, $FE                                     ; $51CB: $2E $FE
    ld e, c                                       ; $51CD: $59
    ld l, a                                       ; $51CE: $6F
    ld [hl], l                                    ; $51CF: $75
    jr nz, jr_018_523F                            ; $51D0: $20 $6D

    ld h, c                                       ; $51D2: $61

jr_018_51D3:
    ld a, c                                       ; $51D3: $79
    jr nz, @+$6E                                  ; $51D4: $20 $6C

    ld h, l                                       ; $51D6: $65
    ld h, c                                       ; $51D7: $61
    halt                                          ; $51D8: $76
    ld h, l                                       ; $51D9: $65
    rst $38                                       ; $51DA: $FF

jr_018_51DB:
    ld l, l                                       ; $51DB: $6D
    ld a, c                                       ; $51DC: $79

jr_018_51DD:
    jr nz, jr_018_5243                            ; $51DD: $20 $64

    ld l, a                                       ; $51DF: $6F
    ld l, l                                       ; $51E0: $6D
    ld h, c                                       ; $51E1: $61
    ld l, c                                       ; $51E2: $69
    ld l, [hl]                                    ; $51E3: $6E
    jr nz, jr_018_5254                            ; $51E4: $20 $6E

    ld l, a                                       ; $51E6: $6F
    ld [hl], a                                    ; $51E7: $77
    ld l, $FE                                     ; $51E8: $2E $FE
    ld b, h                                       ; $51EA: $44
    ld l, a                                       ; $51EB: $6F
    jr nz, jr_018_525C                            ; $51EC: $20 $6E

    ld l, a                                       ; $51EE: $6F
    ld [hl], h                                    ; $51EF: $74
    jr nz, jr_018_5269                            ; $51F0: $20 $77

    ld h, c                                       ; $51F2: $61
    ld [hl], e                                    ; $51F3: $73
    ld [hl], h                                    ; $51F4: $74
    ld h, l                                       ; $51F5: $65
    rst $38                                       ; $51F6: $FF
    ld h, c                                       ; $51F7: $61
    ld l, [hl]                                    ; $51F8: $6E
    ld a, c                                       ; $51F9: $79
    jr nz, jr_018_5269                            ; $51FA: $20 $6D

    ld l, a                                       ; $51FC: $6F
    ld [hl], d                                    ; $51FD: $72
    ld h, l                                       ; $51FE: $65
    jr nz, jr_018_5275                            ; $51FF: $20 $74

    ld l, c                                       ; $5201: $69

jr_018_5202:
    ld l, l                                       ; $5202: $6D
    ld h, l                                       ; $5203: $65
    cp $69                                        ; $5204: $FE $69
    ld l, [hl]                                    ; $5206: $6E
    jr nz, jr_018_527D                            ; $5207: $20 $74

    ld l, b                                       ; $5209: $68
    ld l, c                                       ; $520A: $69
    ld [hl], e                                    ; $520B: $73
    jr nz, @+$79                                  ; $520C: $20 $77

    ld l, a                                       ; $520E: $6F

jr_018_520F:
    ld [hl], d                                    ; $520F: $72
    ld l, h                                       ; $5210: $6C
    ld h, h                                       ; $5211: $64

jr_018_5212:
    ld l, $FE                                     ; $5212: $2E $FE
    db $FD                                        ; $5214: $FD
    sbc e                                         ; $5215: $9B
    ld a, b                                       ; $5216: $78

jr_018_5217:
    ld [hl], b                                    ; $5217: $70
    sbc a                                         ; $5218: $9F
    ld d, h                                       ; $5219: $54

jr_018_521A:
    ld l, b                                       ; $521A: $68
    ld h, c                                       ; $521B: $61

jr_018_521C:
    ld l, [hl]                                    ; $521C: $6E
    ld l, e                                       ; $521D: $6B
    jr nz, @+$7B                                  ; $521E: $20 $79

    ld l, a                                       ; $5220: $6F
    ld [hl], l                                    ; $5221: $75
    ld l, $2E                                     ; $5222: $2E $2E
    ld l, $FE                                     ; $5224: $2E $FE
    db $FD                                        ; $5226: $FD
    sbc e                                         ; $5227: $9B
    cp b                                          ; $5228: $B8
    halt                                          ; $5229: $76
    sbc a                                         ; $522A: $9F

jr_018_522B:
    ld c, d                                       ; $522B: $4A
    ld [hl], l                                    ; $522C: $75
    ld [hl], e                                    ; $522D: $73
    ld [hl], h                                    ; $522E: $74

jr_018_522F:
    jr nz, @+$6E                                  ; $522F: $20 $6C

    ld h, l                                       ; $5231: $65
    ld h, c                                       ; $5232: $61
    halt                                          ; $5233: $76
    ld h, l                                       ; $5234: $65
    inc l                                         ; $5235: $2C
    rst $38                                       ; $5236: $FF
    ld h, d                                       ; $5237: $62

jr_018_5238:
    ld l, a                                       ; $5238: $6F
    ld a, c                                       ; $5239: $79
    ld hl, $4420                                  ; $523A: $21 $20 $44
    ld l, a                                       ; $523D: $6F
    ld l, [hl]                                    ; $523E: $6E

jr_018_523F:
    daa                                           ; $523F: $27
    ld [hl], h                                    ; $5240: $74
    cp $66                                        ; $5241: $FE $66

jr_018_5243:
    ld l, a                                       ; $5243: $6F
    ld [hl], d                                    ; $5244: $72
    ld h, a                                       ; $5245: $67
    ld h, l                                       ; $5246: $65
    ld [hl], h                                    ; $5247: $74
    jr nz, jr_018_52B9                            ; $5248: $20 $6F

    ld [hl], l                                    ; $524A: $75
    ld [hl], d                                    ; $524B: $72
    rst $38                                       ; $524C: $FF
    ld h, d                                       ; $524D: $62
    ld h, c                                       ; $524E: $61
    ld [hl], d                                    ; $524F: $72
    ld h, a                                       ; $5250: $67
    ld h, c                                       ; $5251: $61
    ld l, c                                       ; $5252: $69

jr_018_5253:
    ld l, [hl]                                    ; $5253: $6E

jr_018_5254:
    ld l, $FE                                     ; $5254: $2E $FE
    db $FD                                        ; $5256: $FD
    sbc d                                         ; $5257: $9A
    ld e, b                                       ; $5258: $58
    inc b                                         ; $5259: $04
    ld b, d                                       ; $525A: $42
    xor h                                         ; $525B: $AC

jr_018_525C:
    or d                                          ; $525C: $B2
    and d                                         ; $525D: $A2
    nop                                           ; $525E: $00
    sub [hl]                                      ; $525F: $96
    jr jr_018_52BD                                ; $5260: $18 $5B

    ld d, d                                       ; $5262: $52
    sub e                                         ; $5263: $93
    ld h, l                                       ; $5264: $65
    jp nc, $4F4F                                  ; $5265: $D2 $4F $4F

    ld h, h                                       ; $5268: $64

jr_018_5269:
    call nc, Call_018_6654                        ; $5269: $D4 $54 $66
    ret nz                                        ; $526C: $C0

    ld e, h                                       ; $526D: $5C
    ld hl, $0005                                  ; $526E: $21 $05 $00
    add c                                         ; $5271: $81
    ld e, l                                       ; $5272: $5D
    dec b                                         ; $5273: $05
    dec b                                         ; $5274: $05

jr_018_5275:
    ld l, c                                       ; $5275: $69
    ret nc                                        ; $5276: $D0

    nop                                           ; $5277: $00
    jr nz, jr_018_522F                            ; $5278: $20 $B5

    ld d, b                                       ; $527A: $50
    ld [hl+], a                                   ; $527B: $22
    dec b                                         ; $527C: $05

jr_018_527D:
    ld b, b                                       ; $527D: $40
    dec b                                         ; $527E: $05
    ld [bc], a                                    ; $527F: $02
    dec b                                         ; $5280: $05
    ld h, h                                       ; $5281: $64
    ld a, [bc]                                    ; $5282: $0A
    rrca                                          ; $5283: $0F
    ld [hl], $D1                                  ; $5284: $36 $D1
    nop                                           ; $5286: $00
    ld de, $73A4                                  ; $5287: $11 $A4 $73
    jr jr_018_5238                                ; $528A: $18 $AC

    ld d, d                                       ; $528C: $52
    dec bc                                        ; $528D: $0B
    nop                                           ; $528E: $00
    dec bc                                        ; $528F: $0B
    ld [bc], a                                    ; $5290: $02
    ld [hl-], a                                   ; $5291: $32
    jr jr_018_522B                                ; $5292: $18 $97

    ld b, b                                       ; $5294: $40
    adc l                                         ; $5295: $8D
    ld b, c                                       ; $5296: $41
    ld sp, $5B18                                  ; $5297: $31 $18 $5B
    ld d, d                                       ; $529A: $52
    ld [hl+], a                                   ; $529B: $22
    adc $40                                       ; $529C: $CE $40
    ld l, e                                       ; $529E: $6B
    ld [$600D], sp                                ; $529F: $08 $0D $60
    ld c, l                                       ; $52A2: $4D
    nop                                           ; $52A3: $00
    add b                                         ; $52A4: $80
    nop                                           ; $52A5: $00
    nop                                           ; $52A6: $00
    add d                                         ; $52A7: $82
    sub h                                         ; $52A8: $94
    rra                                           ; $52A9: $1F
    ld [de], a                                    ; $52AA: $12
    ld b, d                                       ; $52AB: $42
    ld e, d                                       ; $52AC: $5A
    ld a, [de]                                    ; $52AD: $1A
    ld a, [hl-]                                   ; $52AE: $3A
    ld h, a                                       ; $52AF: $67
    xor h                                         ; $52B0: $AC
    and h                                         ; $52B1: $A4
    and e                                         ; $52B2: $A3
    dec b                                         ; $52B3: $05
    xor c                                         ; $52B4: $A9
    inc d                                         ; $52B5: $14
    nop                                           ; $52B6: $00
    ld l, [hl]                                    ; $52B7: $6E
    rrca                                          ; $52B8: $0F

jr_018_52B9:
    rst $38                                       ; $52B9: $FF
    ld a, a                                       ; $52BA: $7F
    halt                                          ; $52BB: $76
    ld h, b                                       ; $52BC: $60

jr_018_52BD:
    rrca                                          ; $52BD: $0F
    ld b, l                                       ; $52BE: $45
    jr jr_018_5253                                ; $52BF: $18 $92

    ld c, l                                       ; $52C1: $4D
    sub e                                         ; $52C2: $93
    ld h, l                                       ; $52C3: $65
    jp nc, $4F4F                                  ; $52C4: $D2 $4F $4F

    ld h, h                                       ; $52C7: $64
    call nc, Call_018_6654                        ; $52C8: $D4 $54 $66
    ret nz                                        ; $52CB: $C0

    ld e, h                                       ; $52CC: $5C
    ld hl, $0005                                  ; $52CD: $21 $05 $00
    ld l, e                                       ; $52D0: $6B
    ld c, d                                       ; $52D1: $4A
    ld a, [bc]                                    ; $52D2: $0A
    ld [$D0AA], sp                                ; $52D3: $08 $AA $D0
    nop                                           ; $52D6: $00
    jr jr_018_52FC                                ; $52D7: $18 $23

    ld d, e                                       ; $52D9: $53
    ld [hl+], a                                   ; $52DA: $22
    dec b                                         ; $52DB: $05
    ld b, b                                       ; $52DC: $40
    dec b                                         ; $52DD: $05
    ld [bc], a                                    ; $52DE: $02
    ld l, e                                       ; $52DF: $6B
    ld c, d                                       ; $52E0: $4A
    ld a, [bc]                                    ; $52E1: $0A
    rrca                                          ; $52E2: $0F
    ld [hl], $D1                                  ; $52E3: $36 $D1
    nop                                           ; $52E5: $00
    ld de, $73A4                                  ; $52E6: $11 $A4 $73
    ld [hl+], a                                   ; $52E9: $22
    dec b                                         ; $52EA: $05
    ld b, b                                       ; $52EB: $40
    dec b                                         ; $52EC: $05
    inc bc                                        ; $52ED: $03
    ld l, e                                       ; $52EE: $6B
    ld c, d                                       ; $52EF: $4A
    ld a, [bc]                                    ; $52F0: $0A
    dec c                                         ; $52F1: $0D
    ld c, $D1                                     ; $52F2: $0E $D1
    ld [$3218], sp                                ; $52F4: $08 $18 $32
    ld d, e                                       ; $52F7: $53
    ld [hl+], a                                   ; $52F8: $22

jr_018_52F9:
    dec b                                         ; $52F9: $05
    ld b, b                                       ; $52FA: $40
    dec bc                                        ; $52FB: $0B

jr_018_52FC:
    nop                                           ; $52FC: $00
    dec bc                                        ; $52FD: $0B
    ld [bc], a                                    ; $52FE: $02
    dec bc                                        ; $52FF: $0B
    inc bc                                        ; $5300: $03
    ld l, e                                       ; $5301: $6B
    ld [$600D], sp                                ; $5302: $08 $0D $60
    ld c, l                                       ; $5305: $4D
    nop                                           ; $5306: $00
    add b                                         ; $5307: $80
    nop                                           ; $5308: $00
    ld l, e                                       ; $5309: $6B
    jr nc, @+$0D                                  ; $530A: $30 $0B

    ret nz                                        ; $530C: $C0

    ld l, h                                       ; $530D: $6C
    add b                                         ; $530E: $80
    add b                                         ; $530F: $80

jr_018_5310:
    nop                                           ; $5310: $00
    add d                                         ; $5311: $82
    sub h                                         ; $5312: $94
    rra                                           ; $5313: $1F
    ld c, $60                                     ; $5314: $0E $60
    ld bc, $1831                                  ; $5316: $01 $31 $18
    ld e, e                                       ; $5319: $5B
    ld d, d                                       ; $531A: $52
    ld [hl+], a                                   ; $531B: $22
    adc $40                                       ; $531C: $CE $40
    ld b, l                                       ; $531E: $45
    jr jr_018_5364                                ; $531F: $18 $43

    ld b, d                                       ; $5321: $42
    ld b, d                                       ; $5322: $42
    ld d, $20                                     ; $5323: $16 $20

jr_018_5325:
    call $304F                                    ; $5325: $CD $4F $30
    nop                                           ; $5328: $00
    ld bc, $B520                                  ; $5329: $01 $20 $B5
    ld d, b                                       ; $532C: $50
    stop                                          ; $532D: $10 $00
    ld bc, $4200                                  ; $532F: $01 $00 $42
    dec d                                         ; $5332: $15
    rrca                                          ; $5333: $0F
    adc h                                         ; $5334: $8C
    ld [hl], b                                    ; $5335: $70
    ld [$C80F], sp                                ; $5336: $08 $0F $C8
    ld [hl], b                                    ; $5339: $70
    ld [$A00F], sp                                ; $533A: $08 $0F $A0
    ld [hl], b                                    ; $533D: $70
    ld [$B40F], sp                                ; $533E: $08 $0F $B4
    ld [hl], b                                    ; $5341: $70
    ld [$820F], sp                                ; $5342: $08 $0F $82
    ld [hl], b                                    ; $5345: $70
    jr nz, jr_018_5348                            ; $5346: $20 $00

jr_018_5348:
    ld e, e                                       ; $5348: $5B
    jr jr_018_53B8                                ; $5349: $18 $6D

    ld c, a                                       ; $534B: $4F
    ld h, d                                       ; $534C: $62
    ld bc, $0F15                                  ; $534D: $01 $15 $0F
    ld [bc], a                                    ; $5350: $02
    ld [hl], b                                    ; $5351: $70
    db $10                                        ; $5352: $10
    rrca                                          ; $5353: $0F
    add d                                         ; $5354: $82
    ld [hl], b                                    ; $5355: $70
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    ld e, e                                       ; $5358: $5B
    jr jr_018_52F9                                ; $5359: $18 $9E

    ld c, a                                       ; $535B: $4F
    ld h, d                                       ; $535C: $62
    ld [bc], a                                    ; $535D: $02
    ld e, e                                       ; $535E: $5B
    jr jr_018_53B3                                ; $535F: $18 $52

    ld d, b                                       ; $5361: $50
    ld h, d                                       ; $5362: $62
    inc bc                                        ; $5363: $03

jr_018_5364:
    ld b, e                                       ; $5364: $43
    nop                                           ; $5365: $00
    xor d                                         ; $5366: $AA
    and c                                         ; $5367: $A1
    inc b                                         ; $5368: $04
    jr jr_018_5310                                ; $5369: $18 $A5

    ld d, e                                       ; $536B: $53
    dec d                                         ; $536C: $15
    rrca                                          ; $536D: $0F
    add d                                         ; $536E: $82
    ld [hl], b                                    ; $536F: $70
    jr nz, jr_018_5381                            ; $5370: $20 $0F

    xor d                                         ; $5372: $AA
    ld [hl], b                                    ; $5373: $70
    ld [$960F], sp                                ; $5374: $08 $0F $96
    ld [hl], b                                    ; $5377: $70
    ld [$BE0F], sp                                ; $5378: $08 $0F $BE
    ld [hl], b                                    ; $537B: $70
    ld [$120F], sp                                ; $537C: $08 $0F $12
    ld [hl], b                                    ; $537F: $70
    db $10                                        ; $5380: $10

jr_018_5381:
    rrca                                          ; $5381: $0F

jr_018_5382:
    adc h                                         ; $5382: $8C
    ld [hl], b                                    ; $5383: $70
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    ld e, e                                       ; $5386: $5B
    jr @-$27                                      ; $5387: $18 $D7

    ld d, b                                       ; $5389: $50
    ld h, d                                       ; $538A: $62
    inc b                                         ; $538B: $04
    ld b, b                                       ; $538C: $40
    jr nz, @+$17                                  ; $538D: $20 $15

    rrca                                          ; $538F: $0F
    and b                                         ; $5390: $A0
    ld [hl], b                                    ; $5391: $70
    ld [$020F], sp                                ; $5392: $08 $0F $02
    ld [hl], b                                    ; $5395: $70
    db $10                                        ; $5396: $10
    rrca                                          ; $5397: $0F
    add d                                         ; $5398: $82
    ld [hl], b                                    ; $5399: $70
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    ld e, e                                       ; $539C: $5B
    jr jr_018_5325                                ; $539D: $18 $86

    ld d, c                                       ; $539F: $51
    ld h, d                                       ; $53A0: $62
    dec b                                         ; $53A1: $05
    ld d, [hl]                                    ; $53A2: $56
    ld bc, $AC42                                  ; $53A3: $01 $42 $AC
    and h                                         ; $53A6: $A4
    and e                                         ; $53A7: $A3
    dec b                                         ; $53A8: $05
    ld d, $0F                                     ; $53A9: $16 $0F

jr_018_53AB:
    ld [de], a                                    ; $53AB: $12
    ld [hl], b                                    ; $53AC: $70
    jr nz, jr_018_53AF                            ; $53AD: $20 $00

jr_018_53AF:
    ld bc, $8C0F                                  ; $53AF: $01 $0F $8C
    ld [hl], b                                    ; $53B2: $70

jr_018_53B3:
    ld [rRAMG], sp                                ; $53B3: $08 $00 $00
    nop                                           ; $53B6: $00
    inc c                                         ; $53B7: $0C

jr_018_53B8:
    ld [bc], a                                    ; $53B8: $02
    ld d, $0F                                     ; $53B9: $16 $0F
    adc h                                         ; $53BB: $8C
    ld [hl], b                                    ; $53BC: $70
    ld [rRAMG], sp                                ; $53BD: $08 $00 $00
    rrca                                          ; $53C0: $0F
    ld [bc], a                                    ; $53C1: $02
    ld [hl], b                                    ; $53C2: $70
    jr nz, jr_018_53C5                            ; $53C3: $20 $00

jr_018_53C5:
    rst $38                                       ; $53C5: $FF
    rrca                                          ; $53C6: $0F
    add d                                         ; $53C7: $82
    ld [hl], b                                    ; $53C8: $70
    nop                                           ; $53C9: $00
    nop                                           ; $53CA: $00
    nop                                           ; $53CB: $00
    nop                                           ; $53CC: $00
    ld e, e                                       ; $53CD: $5B
    jr @-$3B                                      ; $53CE: $18 $C3

    ld d, c                                       ; $53D0: $51
    ld h, d                                       ; $53D1: $62
    inc b                                         ; $53D2: $04
    ld e, c                                       ; $53D3: $59
    jr jr_018_5382                                ; $53D4: $18 $AC

    ld d, d                                       ; $53D6: $52
    ld b, d                                       ; $53D7: $42
    ld bc, $230B                                  ; $53D8: $01 $0B $23
    ld b, l                                       ; $53DB: $45
    dec h                                         ; $53DC: $25
    sub h                                         ; $53DD: $94
    ld [hl], b                                    ; $53DE: $70
    ld e, e                                       ; $53DF: $5B
    jr jr_018_5457                                ; $53E0: $18 $75

    ld d, l                                       ; $53E2: $55
    ld b, d                                       ; $53E3: $42
    rlca                                          ; $53E4: $07
    nop                                           ; $53E5: $00
    ld l, e                                       ; $53E6: $6B
    ld c, d                                       ; $53E7: $4A
    add hl, bc                                    ; $53E8: $09
    nop                                           ; $53E9: $00
    jr nz, jr_018_53AB                            ; $53EA: $20 $BF

    ld d, b                                       ; $53EC: $50
    ld e, e                                       ; $53ED: $5B
    jr @-$5A                                      ; $53EE: $18 $A4

    ld d, h                                       ; $53F0: $54
    ld h, d                                       ; $53F1: $62
    ld bc, $0007                                  ; $53F2: $01 $07 $00
    add c                                         ; $53F5: $81
    ld e, l                                       ; $53F6: $5D
    ld b, d                                       ; $53F7: $42
    sbc e                                         ; $53F8: $9B
    ld a, b                                       ; $53F9: $78
    ld [hl], b                                    ; $53FA: $70
    sbc a                                         ; $53FB: $9F
    ld d, e                                       ; $53FC: $53
    ld l, l                                       ; $53FD: $6D
    ld h, l                                       ; $53FE: $65
    ld l, h                                       ; $53FF: $6C
    ld l, h                                       ; $5400: $6C
    ld [hl], e                                    ; $5401: $73
    jr nz, jr_018_5470                            ; $5402: $20 $6C

    ld l, c                                       ; $5404: $69
    ld l, e                                       ; $5405: $6B
    ld h, l                                       ; $5406: $65
    ld l, $2E                                     ; $5407: $2E $2E
    ld l, $FE                                     ; $5409: $2E $FE
    ld l, h                                       ; $540B: $6C
    ld l, c                                       ; $540C: $69
    ld l, e                                       ; $540D: $6B
    ld h, l                                       ; $540E: $65
    ld l, $2E                                     ; $540F: $2E $2E
    ld l, $FE                                     ; $5411: $2E $FE
    ld l, b                                       ; $5413: $68
    ld h, c                                       ; $5414: $61
    ld l, h                                       ; $5415: $6C
    ld l, c                                       ; $5416: $69
    ld h, d                                       ; $5417: $62
    ld [hl], l                                    ; $5418: $75
    ld [hl], h                                    ; $5419: $74
    ld hl, $FE3F                                  ; $541A: $21 $3F $FE
    db $FD                                        ; $541D: $FD
    sbc d                                         ; $541E: $9A
    ld b, d                                       ; $541F: $42
    sbc e                                         ; $5420: $9B
    ld a, b                                       ; $5421: $78
    ld [hl], b                                    ; $5422: $70
    sbc a                                         ; $5423: $9F
    ld b, c                                       ; $5424: $41
    jr nz, @+$79                                  ; $5425: $20 $77

    ld h, c                                       ; $5427: $61
    ld [hl], h                                    ; $5428: $74
    ld h, l                                       ; $5429: $65
    ld [hl], d                                    ; $542A: $72
    jr nz, @+$64                                  ; $542B: $20 $62

    ld h, l                                       ; $542D: $65
    ld h, h                                       ; $542E: $64
    ld l, $FE                                     ; $542F: $2E $FE
    ld b, a                                       ; $5431: $47
    ld l, a                                       ; $5432: $6F
    jr nz, jr_018_549B                            ; $5433: $20 $66

    ld l, c                                       ; $5435: $69
    ld h, a                                       ; $5436: $67
    ld [hl], l                                    ; $5437: $75
    ld [hl], d                                    ; $5438: $72
    ld h, l                                       ; $5439: $65
    ld l, $FE                                     ; $543A: $2E $FE
    db $FD                                        ; $543C: $FD
    sbc d                                         ; $543D: $9A
    ld b, d                                       ; $543E: $42
    sbc e                                         ; $543F: $9B
    ld a, b                                       ; $5440: $78
    ld [hl], b                                    ; $5441: $70
    sbc a                                         ; $5442: $9F
    ld d, h                                       ; $5443: $54
    ld l, b                                       ; $5444: $68
    ld l, c                                       ; $5445: $69
    ld [hl], e                                    ; $5446: $73
    jr nz, jr_018_54AB                            ; $5447: $20 $62

    ld h, l                                       ; $5449: $65
    ld h, h                                       ; $544A: $64
    rst $38                                       ; $544B: $FF
    ld [hl], d                                    ; $544C: $72
    ld l, c                                       ; $544D: $69
    ld [hl], b                                    ; $544E: $70
    ld [hl], b                                    ; $544F: $70
    ld l, h                                       ; $5450: $6C
    ld h, l                                       ; $5451: $65
    ld [hl], e                                    ; $5452: $73
    jr nz, jr_018_54C1                            ; $5453: $20 $6C

    ld l, c                                       ; $5455: $69
    ld l, e                                       ; $5456: $6B

jr_018_5457:
    ld h, l                                       ; $5457: $65
    cp $74                                        ; $5458: $FE $74
    ld l, b                                       ; $545A: $68
    ld h, l                                       ; $545B: $65
    jr nz, jr_018_54D2                            ; $545C: $20 $74

    ld l, c                                       ; $545E: $69
    ld h, h                                       ; $545F: $64
    ld h, l                                       ; $5460: $65
    ld l, $FE                                     ; $5461: $2E $FE
    db $FD                                        ; $5463: $FD
    sbc d                                         ; $5464: $9A
    ld b, d                                       ; $5465: $42
    sbc e                                         ; $5466: $9B
    ld a, b                                       ; $5467: $78
    ld [hl], b                                    ; $5468: $70
    sbc a                                         ; $5469: $9F
    ld b, a                                       ; $546A: $47
    ld [hl], l                                    ; $546B: $75
    ld l, b                                       ; $546C: $68
    ld hl, $53FF                                  ; $546D: $21 $FF $53

jr_018_5470:
    ld h, l                                       ; $5470: $65
    ld h, c                                       ; $5471: $61
    jr nz, jr_018_54E9                            ; $5472: $20 $75

    ld [hl], d                                    ; $5474: $72
    ld h, e                                       ; $5475: $63
    ld l, b                                       ; $5476: $68
    ld l, c                                       ; $5477: $69
    ld l, [hl]                                    ; $5478: $6E
    ld hl, $FDFE                                  ; $5479: $21 $FE $FD
    sbc d                                         ; $547C: $9A
    ld b, d                                       ; $547D: $42
    sbc e                                         ; $547E: $9B
    ld a, b                                       ; $547F: $78
    ld [hl], b                                    ; $5480: $70
    sbc a                                         ; $5481: $9F
    ld b, d                                       ; $5482: $42
    ld h, c                                       ; $5483: $61
    ld l, [hl]                                    ; $5484: $6E
    ld h, h                                       ; $5485: $64
    ld h, c                                       ; $5486: $61
    ld h, a                                       ; $5487: $67
    ld h, l                                       ; $5488: $65
    ld [hl], e                                    ; $5489: $73
    rst $38                                       ; $548A: $FF
    ld h, c                                       ; $548B: $61
    ld l, [hl]                                    ; $548C: $6E
    ld h, h                                       ; $548D: $64
    jr nz, @+$79                                  ; $548E: $20 $77

    ld [hl], d                                    ; $5490: $72
    ld h, c                                       ; $5491: $61
    ld [hl], b                                    ; $5492: $70
    ld [hl], b                                    ; $5493: $70
    ld l, c                                       ; $5494: $69
    ld l, [hl]                                    ; $5495: $6E
    ld h, a                                       ; $5496: $67
    ld [hl], e                                    ; $5497: $73
    ld l, $FE                                     ; $5498: $2E $FE
    ld c, b                                       ; $549A: $48

jr_018_549B:
    ld l, l                                       ; $549B: $6D
    ld l, l                                       ; $549C: $6D
    ld l, $2E                                     ; $549D: $2E $2E
    ld l, $FE                                     ; $549F: $2E $FE
    db $FD                                        ; $54A1: $FD
    sbc d                                         ; $54A2: $9A
    ld b, d                                       ; $54A3: $42
    sbc e                                         ; $54A4: $9B
    ld l, b                                       ; $54A5: $68
    ld h, d                                       ; $54A6: $62
    sbc a                                         ; $54A7: $9F
    ld d, a                                       ; $54A8: $57
    ld h, l                                       ; $54A9: $65
    ld l, h                                       ; $54AA: $6C

jr_018_54AB:
    ld h, e                                       ; $54AB: $63
    ld l, a                                       ; $54AC: $6F
    ld l, l                                       ; $54AD: $6D
    ld h, l                                       ; $54AE: $65
    jr nz, jr_018_5525                            ; $54AF: $20 $74

    ld l, a                                       ; $54B1: $6F
    rst $38                                       ; $54B2: $FF
    ld [hl], h                                    ; $54B3: $74
    ld l, b                                       ; $54B4: $68
    ld h, l                                       ; $54B5: $65
    jr nz, @+$51                                  ; $54B6: $20 $4F

    ld [hl], e                                    ; $54B8: $73
    ld h, e                                       ; $54B9: $63
    ld h, l                                       ; $54BA: $65
    ld l, [hl]                                    ; $54BB: $6E
    ld [hl], h                                    ; $54BC: $74
    cp $4D                                        ; $54BD: $FE $4D
    ld h, c                                       ; $54BF: $61
    ld [hl], d                                    ; $54C0: $72

jr_018_54C1:
    jr nz, @+$4B                                  ; $54C1: $20 $49

    ld l, [hl]                                    ; $54C3: $6E
    ld l, [hl]                                    ; $54C4: $6E
    ld l, $FF                                     ; $54C5: $2E $FF
    ld d, a                                       ; $54C7: $57
    ld l, a                                       ; $54C8: $6F
    ld [hl], l                                    ; $54C9: $75
    ld l, h                                       ; $54CA: $6C
    ld h, h                                       ; $54CB: $64
    jr nz, @+$7B                                  ; $54CC: $20 $79

    ld l, a                                       ; $54CE: $6F
    ld [hl], l                                    ; $54CF: $75
    jr nz, jr_018_553E                            ; $54D0: $20 $6C

jr_018_54D2:
    ld l, c                                       ; $54D2: $69
    ld l, e                                       ; $54D3: $6B
    ld h, l                                       ; $54D4: $65
    cp $74                                        ; $54D5: $FE $74
    ld l, a                                       ; $54D7: $6F
    jr nz, jr_018_554C                            ; $54D8: $20 $72

    ld h, l                                       ; $54DA: $65
    ld h, e                                       ; $54DB: $63
    ld l, a                                       ; $54DC: $6F
    ld [hl], d                                    ; $54DD: $72
    ld h, h                                       ; $54DE: $64
    rst $38                                       ; $54DF: $FF
    ld a, c                                       ; $54E0: $79
    ld l, a                                       ; $54E1: $6F
    ld [hl], l                                    ; $54E2: $75
    ld [hl], d                                    ; $54E3: $72
    jr nz, jr_018_5550                            ; $54E4: $20 $6A

    ld l, a                                       ; $54E6: $6F
    ld [hl], l                                    ; $54E7: $75
    ld [hl], d                                    ; $54E8: $72

jr_018_54E9:
    ld l, [hl]                                    ; $54E9: $6E
    ld h, l                                       ; $54EA: $65
    ld a, c                                       ; $54EB: $79
    cp $61                                        ; $54EC: $FE $61
    ld l, [hl]                                    ; $54EE: $6E
    ld h, h                                       ; $54EF: $64
    jr nz, jr_018_5565                            ; $54F0: $20 $73

    ld [hl], h                                    ; $54F2: $74
    ld h, c                                       ; $54F3: $61
    ld a, c                                       ; $54F4: $79
    jr nz, @+$76                                  ; $54F5: $20 $74

    ld l, b                                       ; $54F7: $68
    ld h, l                                       ; $54F8: $65
    rst $38                                       ; $54F9: $FF
    ld l, [hl]                                    ; $54FA: $6E
    ld l, c                                       ; $54FB: $69
    ld h, a                                       ; $54FC: $67
    ld l, b                                       ; $54FD: $68
    ld [hl], h                                    ; $54FE: $74
    ccf                                           ; $54FF: $3F
    cp $FD                                        ; $5500: $FE $FD
    sbc e                                         ; $5502: $9B
    ld a, b                                       ; $5503: $78
    ld [hl], b                                    ; $5504: $70
    sbc a                                         ; $5505: $9F
    jr nz, jr_018_5561                            ; $5506: $20 $59

    ld h, l                                       ; $5508: $65
    ld [hl], e                                    ; $5509: $73
    rst $38                                       ; $550A: $FF
    jr nz, jr_018_555B                            ; $550B: $20 $4E

    ld l, a                                       ; $550D: $6F
    db $FD                                        ; $550E: $FD
    sbc h                                         ; $550F: $9C
    ld [bc], a                                    ; $5510: $02
    jr jr_018_552A                                ; $5511: $18 $17

    ld d, l                                       ; $5513: $55
    jr jr_018_5562                                ; $5514: $18 $4C

    ld d, l                                       ; $5516: $55
    sbc c                                         ; $5517: $99
    sbc e                                         ; $5518: $9B
    ld l, b                                       ; $5519: $68
    ld h, d                                       ; $551A: $62
    sbc a                                         ; $551B: $9F

jr_018_551C:
    ld e, c                                       ; $551C: $59
    ld l, a                                       ; $551D: $6F
    ld [hl], l                                    ; $551E: $75
    jr nz, jr_018_5582                            ; $551F: $20 $61

    ld [hl], d                                    ; $5521: $72
    ld h, l                                       ; $5522: $65
    jr nz, jr_018_558C                            ; $5523: $20 $67

jr_018_5525:
    ld h, l                                       ; $5525: $65
    ld [hl], h                                    ; $5526: $74
    ld [hl], h                                    ; $5527: $74
    ld l, c                                       ; $5528: $69
    ld l, [hl]                                    ; $5529: $6E

jr_018_552A:
    ld h, a                                       ; $552A: $67
    rst $38                                       ; $552B: $FF
    ld [hl], e                                    ; $552C: $73
    ld l, h                                       ; $552D: $6C
    ld h, l                                       ; $552E: $65
    ld h, l                                       ; $552F: $65
    ld [hl], b                                    ; $5530: $70
    ld a, c                                       ; $5531: $79
    ld l, $2E                                     ; $5532: $2E $2E
    ld l, $2E                                     ; $5534: $2E $2E
    cp $FD                                        ; $5536: $FE $FD
    sbc d                                         ; $5538: $9A
    sub [hl]                                      ; $5539: $96
    jr jr_018_551C                                ; $553A: $18 $E0

    ld d, l                                       ; $553C: $55
    ld l, [hl]                                    ; $553D: $6E

jr_018_553E:
    rrca                                          ; $553E: $0F
    rst $38                                       ; $553F: $FF
    ld a, a                                       ; $5540: $7F
    halt                                          ; $5541: $76
    jr nz, jr_018_5553                            ; $5542: $20 $0F

    sub d                                         ; $5544: $92
    ld bc, $4040                                  ; $5545: $01 $40 $40
    ld b, l                                       ; $5548: $45
    jr @+$58                                      ; $5549: $18 $56

    ld d, [hl]                                    ; $554B: $56

jr_018_554C:
    sbc c                                         ; $554C: $99
    sbc e                                         ; $554D: $9B
    ld l, b                                       ; $554E: $68
    ld h, d                                       ; $554F: $62

jr_018_5550:
    sbc a                                         ; $5550: $9F
    ld b, l                                       ; $5551: $45
    ld l, [hl]                                    ; $5552: $6E

jr_018_5553:
    ld l, d                                       ; $5553: $6A
    ld l, a                                       ; $5554: $6F
    ld a, c                                       ; $5555: $79
    jr nz, jr_018_55D1                            ; $5556: $20 $79

    ld l, a                                       ; $5558: $6F
    ld [hl], l                                    ; $5559: $75
    ld [hl], d                                    ; $555A: $72

jr_018_555B:
    jr nz, jr_018_55D0                            ; $555B: $20 $73

    ld [hl], h                                    ; $555D: $74
    ld h, c                                       ; $555E: $61
    ld a, c                                       ; $555F: $79
    rst $38                                       ; $5560: $FF

jr_018_5561:
    ld l, c                                       ; $5561: $69

jr_018_5562:
    ld l, [hl]                                    ; $5562: $6E
    jr nz, jr_018_55B4                            ; $5563: $20 $4F

jr_018_5565:
    ld [hl], e                                    ; $5565: $73
    ld h, e                                       ; $5566: $63

jr_018_5567:
    ld h, l                                       ; $5567: $65
    ld l, [hl]                                    ; $5568: $6E
    ld [hl], h                                    ; $5569: $74
    jr nz, jr_018_55B9                            ; $556A: $20 $4D

    ld h, c                                       ; $556C: $61
    ld [hl], d                                    ; $556D: $72
    ld hl, $FDFE                                  ; $556E: $21 $FE $FD
    sbc d                                         ; $5571: $9A
    ld e, b                                       ; $5572: $58
    ld bc, $0742                                  ; $5573: $01 $42 $07
    nop                                           ; $5576: $00
    ld l, e                                       ; $5577: $6B
    ld c, d                                       ; $5578: $4A
    add hl, bc                                    ; $5579: $09
    nop                                           ; $557A: $00
    jr nz, @-$35                                  ; $557B: $20 $C9

    ld d, b                                       ; $557D: $50
    sbc e                                         ; $557E: $9B
    adc b                                         ; $557F: $88
    ld c, h                                       ; $5580: $4C
    sbc a                                         ; $5581: $9F

jr_018_5582:
    ld d, a                                       ; $5582: $57
    ld h, l                                       ; $5583: $65
    ld l, h                                       ; $5584: $6C
    ld h, e                                       ; $5585: $63
    ld l, a                                       ; $5586: $6F
    ld l, l                                       ; $5587: $6D
    ld h, l                                       ; $5588: $65
    jr nz, jr_018_55FF                            ; $5589: $20 $74

    ld l, a                                       ; $558B: $6F

jr_018_558C:
    jr nz, jr_018_5602                            ; $558C: $20 $74

    ld l, b                                       ; $558E: $68
    ld h, l                                       ; $558F: $65
    rst $38                                       ; $5590: $FF
    ld c, a                                       ; $5591: $4F
    ld [hl], e                                    ; $5592: $73
    ld h, e                                       ; $5593: $63
    ld h, l                                       ; $5594: $65
    ld l, [hl]                                    ; $5595: $6E
    ld [hl], h                                    ; $5596: $74
    jr nz, jr_018_55E6                            ; $5597: $20 $4D

    ld h, c                                       ; $5599: $61
    ld [hl], d                                    ; $559A: $72
    cp $73                                        ; $559B: $FE $73
    ld l, b                                       ; $559D: $68
    ld l, a                                       ; $559E: $6F
    ld [hl], b                                    ; $559F: $70
    ld hl, $FDFE                                  ; $55A0: $21 $FE $FD
    sbc d                                         ; $55A3: $9A
    sub b                                         ; $55A4: $90
    jr jr_018_5567                                ; $55A5: $18 $C0

    ld d, l                                       ; $55A7: $55
    ld d, $00                                     ; $55A8: $16 $00
    rlca                                          ; $55AA: $07
    ld [bc], a                                    ; $55AB: $02
    inc hl                                        ; $55AC: $23
    nop                                           ; $55AD: $00
    inc bc                                        ; $55AE: $03
    inc a                                         ; $55AF: $3C
    nop                                           ; $55B0: $00
    dec c                                         ; $55B1: $0D
    inc d                                         ; $55B2: $14
    nop                                           ; $55B3: $00

jr_018_55B4:
    ld a, [bc]                                    ; $55B4: $0A
    dec b                                         ; $55B5: $05
    nop                                           ; $55B6: $00
    ld c, $23                                     ; $55B7: $0E $23

jr_018_55B9:
    nop                                           ; $55B9: $00
    rrca                                          ; $55BA: $0F
    inc hl                                        ; $55BB: $23
    nop                                           ; $55BC: $00
    dec h                                         ; $55BD: $25
    rst $38                                       ; $55BE: $FF
    ld bc, $889B                                  ; $55BF: $01 $9B $88
    ld c, h                                       ; $55C2: $4C
    sbc a                                         ; $55C3: $9F
    ld c, b                                       ; $55C4: $48
    ld h, c                                       ; $55C5: $61
    halt                                          ; $55C6: $76
    ld h, l                                       ; $55C7: $65
    jr nz, jr_018_562B                            ; $55C8: $20 $61

    jr nz, jr_018_563C                            ; $55CA: $20 $70

    ld l, h                                       ; $55CC: $6C
    ld h, l                                       ; $55CD: $65
    ld h, c                                       ; $55CE: $61
    ld [hl], e                                    ; $55CF: $73

jr_018_55D0:
    ld h, c                                       ; $55D0: $61

jr_018_55D1:
    ld l, [hl]                                    ; $55D1: $6E
    ld [hl], h                                    ; $55D2: $74
    rst $38                                       ; $55D3: $FF
    ld h, h                                       ; $55D4: $64
    ld h, c                                       ; $55D5: $61
    ld a, c                                       ; $55D6: $79
    ld hl, $FDFE                                  ; $55D7: $21 $FE $FD
    sbc d                                         ; $55DA: $9A
    rlca                                          ; $55DB: $07
    nop                                           ; $55DC: $00
    add c                                         ; $55DD: $81
    ld e, l                                       ; $55DE: $5D
    ld b, d                                       ; $55DF: $42
    dec b                                         ; $55E0: $05
    nop                                           ; $55E1: $00
    add c                                         ; $55E2: $81
    ld e, l                                       ; $55E3: $5D
    dec b                                         ; $55E4: $05
    dec b                                         ; $55E5: $05

jr_018_55E6:
    ld l, c                                       ; $55E6: $69
    ret nc                                        ; $55E7: $D0

    nop                                           ; $55E8: $00
    jr nz, jr_018_55E6                            ; $55E9: $20 $FB

    ld d, b                                       ; $55EB: $50
    ld [hl+], a                                   ; $55EC: $22
    dec b                                         ; $55ED: $05
    ld b, b                                       ; $55EE: $40
    ld bc, $0E06                                  ; $55EF: $01 $06 $0E
    xor h                                         ; $55F2: $AC
    or d                                          ; $55F3: $B2
    and d                                         ; $55F4: $A2

jr_018_55F5:
    ld bc, $6593                                  ; $55F5: $01 $93 $65
    ld a, [c]                                     ; $55F8: $F2
    ld c, l                                       ; $55F9: $4D
    ld c, a                                       ; $55FA: $4F
    ld h, h                                       ; $55FB: $64
    ld e, $52                                     ; $55FC: $1E $52
    ld l, c                                       ; $55FE: $69

jr_018_55FF:
    inc hl                                        ; $55FF: $23
    ld d, d                                       ; $5600: $52
    ld h, [hl]                                    ; $5601: $66

jr_018_5602:
    ret nz                                        ; $5602: $C0

    ld e, h                                       ; $5603: $5C
    ld hl, $0005                                  ; $5604: $21 $05 $00
    add c                                         ; $5607: $81
    ld e, l                                       ; $5608: $5D
    dec b                                         ; $5609: $05
    dec b                                         ; $560A: $05

jr_018_560B:
    ld l, c                                       ; $560B: $69
    ret nc                                        ; $560C: $D0

    nop                                           ; $560D: $00
    jr nz, jr_018_560B                            ; $560E: $20 $FB

    ld d, b                                       ; $5610: $50
    ld [hl+], a                                   ; $5611: $22
    dec b                                         ; $5612: $05
    ld b, b                                       ; $5613: $40
    dec b                                         ; $5614: $05
    ld [bc], a                                    ; $5615: $02
    db $ED                                        ; $5616: $ED
    ld h, e                                       ; $5617: $63
    inc bc                                        ; $5618: $03
    ld c, $1B                                     ; $5619: $0E $1B
    pop de                                        ; $561B: $D1
    nop                                           ; $561C: $00
    db $10                                        ; $561D: $10
    ret nc                                        ; $561E: $D0

    ld a, [hl]                                    ; $561F: $7E
    jr jr_018_5670                                ; $5620: $18 $4E

    ld d, [hl]                                    ; $5622: $56
    dec b                                         ; $5623: $05
    inc bc                                        ; $5624: $03
    ld l, e                                       ; $5625: $6B
    ld c, d                                       ; $5626: $4A
    db $10                                        ; $5627: $10
    ld c, $28                                     ; $5628: $0E $28
    pop de                                        ; $562A: $D1

jr_018_562B:
    dec h                                         ; $562B: $25
    db $10                                        ; $562C: $10

jr_018_562D:
    ld [de], a                                    ; $562D: $12
    ld [hl], l                                    ; $562E: $75
    ld [hl+], a                                   ; $562F: $22
    dec b                                         ; $5630: $05
    ld b, b                                       ; $5631: $40
    dec bc                                        ; $5632: $0B
    nop                                           ; $5633: $00
    dec bc                                        ; $5634: $0B
    ld [bc], a                                    ; $5635: $02
    dec bc                                        ; $5636: $0B
    inc bc                                        ; $5637: $03
    ld l, e                                       ; $5638: $6B
    dec h                                         ; $5639: $25
    inc c                                         ; $563A: $0C
    and b                                         ; $563B: $A0

jr_018_563C:
    ld h, a                                       ; $563C: $67
    nop                                           ; $563D: $00
    add b                                         ; $563E: $80
    nop                                           ; $563F: $00
    ld l, e                                       ; $5640: $6B
    jr z, jr_018_564F                             ; $5641: $28 $0C

    jr nc, jr_018_56A2                            ; $5643: $30 $5D

    ld d, b                                       ; $5645: $50
    add d                                         ; $5646: $82
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    add d                                         ; $5649: $82
    rra                                           ; $564A: $1F
    dec de                                        ; $564B: $1B
    sub h                                         ; $564C: $94
    ld b, d                                       ; $564D: $42
    ld e, e                                       ; $564E: $5B

jr_018_564F:
    jr jr_018_55F5                                ; $564F: $18 $A4

    ld d, h                                       ; $5651: $54
    ld b, l                                       ; $5652: $45
    db $10                                        ; $5653: $10
    ld [bc], a                                    ; $5654: $02
    ld a, a                                       ; $5655: $7F
    xor h                                         ; $5656: $AC
    or d                                          ; $5657: $B2
    and d                                         ; $5658: $A2
    ld bc, $6593                                  ; $5659: $01 $93 $65
    ld a, [c]                                     ; $565C: $F2
    ld c, l                                       ; $565D: $4D
    ld c, a                                       ; $565E: $4F
    ld h, h                                       ; $565F: $64
    ld e, $52                                     ; $5660: $1E $52
    ld l, c                                       ; $5662: $69
    inc hl                                        ; $5663: $23
    ld d, d                                       ; $5664: $52
    ld h, [hl]                                    ; $5665: $66
    ret nz                                        ; $5666: $C0

    ld e, h                                       ; $5667: $5C
    ld hl, $0F6F                                  ; $5668: $21 $6F $0F
    rst $38                                       ; $566B: $FF
    ld a, a                                       ; $566C: $7F
    dec b                                         ; $566D: $05
    nop                                           ; $566E: $00
    ld l, e                                       ; $566F: $6B

jr_018_5670:
    ld c, d                                       ; $5670: $4A
    dec b                                         ; $5671: $05
    inc b                                         ; $5672: $04
    ld d, l                                       ; $5673: $55
    ret nc                                        ; $5674: $D0

    nop                                           ; $5675: $00
    jr jr_018_562D                                ; $5676: $18 $B5

    ld d, [hl]                                    ; $5678: $56
    ld [hl+], a                                   ; $5679: $22
    dec b                                         ; $567A: $05
    ld b, b                                       ; $567B: $40
    dec b                                         ; $567C: $05
    ld [bc], a                                    ; $567D: $02
    db $ED                                        ; $567E: $ED
    ld h, e                                       ; $567F: $63
    inc bc                                        ; $5680: $03
    ld c, $1B                                     ; $5681: $0E $1B
    pop de                                        ; $5683: $D1
    nop                                           ; $5684: $00
    db $10                                        ; $5685: $10

jr_018_5686:
    ret nc                                        ; $5686: $D0

    ld a, [hl]                                    ; $5687: $7E
    jr jr_018_56D8                                ; $5688: $18 $4E

    ld d, [hl]                                    ; $568A: $56
    dec b                                         ; $568B: $05

jr_018_568C:
    inc bc                                        ; $568C: $03
    ld l, e                                       ; $568D: $6B
    ld c, d                                       ; $568E: $4A
    db $10                                        ; $568F: $10
    ld c, $28                                     ; $5690: $0E $28
    pop de                                        ; $5692: $D1
    dec h                                         ; $5693: $25
    db $10                                        ; $5694: $10
    ld [de], a                                    ; $5695: $12
    ld [hl], l                                    ; $5696: $75
    ld [hl+], a                                   ; $5697: $22
    dec b                                         ; $5698: $05
    ld b, b                                       ; $5699: $40
    dec bc                                        ; $569A: $0B
    nop                                           ; $569B: $00
    dec bc                                        ; $569C: $0B
    ld [bc], a                                    ; $569D: $02
    dec bc                                        ; $569E: $0B

jr_018_569F:
    inc bc                                        ; $569F: $03
    ld l, e                                       ; $56A0: $6B

jr_018_56A1:
    dec h                                         ; $56A1: $25

jr_018_56A2:
    inc c                                         ; $56A2: $0C
    and b                                         ; $56A3: $A0
    ld h, a                                       ; $56A4: $67
    nop                                           ; $56A5: $00
    add b                                         ; $56A6: $80
    nop                                           ; $56A7: $00
    ld l, e                                       ; $56A8: $6B
    jr z, @+$0E                                   ; $56A9: $28 $0C

    jr nc, jr_018_570A                            ; $56AB: $30 $5D

    ld d, b                                       ; $56AD: $50
    add d                                         ; $56AE: $82
    nop                                           ; $56AF: $00
    add d                                         ; $56B0: $82
    rra                                           ; $56B1: $1F
    dec de                                        ; $56B2: $1B
    sub h                                         ; $56B3: $94
    ld b, d                                       ; $56B4: $42
    dec d                                         ; $56B5: $15
    jr nz, jr_018_5705                            ; $56B6: $20 $4D

    ld d, b                                       ; $56B8: $50

jr_018_56B9:
    inc b                                         ; $56B9: $04
    jr nz, jr_018_569F                            ; $56BA: $20 $E3

    ld e, d                                       ; $56BC: $5A
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00

jr_018_56BF:
    ld e, d                                       ; $56BF: $5A
    jr jr_018_5686                                ; $56C0: $18 $C4

    ld d, [hl]                                    ; $56C2: $56
    ld b, d                                       ; $56C3: $42
    add hl, bc                                    ; $56C4: $09
    nop                                           ; $56C5: $00
    jr jr_018_56A1                                ; $56C6: $18 $D9

    ld d, [hl]                                    ; $56C8: $56
    halt                                          ; $56C9: $76
    jr nz, @+$11                                  ; $56CA: $20 $0F

    ld e, h                                       ; $56CC: $5C
    nop                                           ; $56CD: $00
    ld [bc], a                                    ; $56CE: $02
    rlca                                          ; $56CF: $07
    nop                                           ; $56D0: $00
    add c                                         ; $56D1: $81
    ld e, l                                       ; $56D2: $5D
    add hl, bc                                    ; $56D3: $09
    nop                                           ; $56D4: $00
    jr nz, jr_018_568C                            ; $56D5: $20 $B5

    ld d, b                                       ; $56D7: $50

jr_018_56D8:
    ld b, d                                       ; $56D8: $42
    dec d                                         ; $56D9: $15
    jr nz, jr_018_56BF                            ; $56DA: $20 $E3

    ld e, d                                       ; $56DC: $5A
    ld b, b                                       ; $56DD: $40
    jr nz, jr_018_56B9                            ; $56DE: $20 $D9

    ld e, d                                       ; $56E0: $5A
    jr nz, jr_018_5703                            ; $56E1: $20 $20

    db $ED                                        ; $56E3: $ED
    ld e, d                                       ; $56E4: $5A
    db $10                                        ; $56E5: $10
    jr nz, jr_018_5745                            ; $56E6: $20 $5D

    ld d, b                                       ; $56E8: $50
    ld [$B520], sp                                ; $56E9: $08 $20 $B5
    ld d, b                                       ; $56EC: $50
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    ld e, h                                       ; $56EF: $5C
    nop                                           ; $56F0: $00
    ld [bc], a                                    ; $56F1: $02
    ld b, d                                       ; $56F2: $42
    ld bc, $1825                                  ; $56F3: $01 $25 $18
    ld b, l                                       ; $56F6: $45
    dec h                                         ; $56F7: $25
    sub h                                         ; $56F8: $94
    ld [hl], b                                    ; $56F9: $70
    ld c, e                                       ; $56FA: $4B
    ld bc, $A224                                  ; $56FB: $01 $24 $A2
    jr jr_018_5701                                ; $56FE: $18 $01

    nop                                           ; $5700: $00

jr_018_5701:
    pop bc                                        ; $5701: $C1
    ld d, a                                       ; $5702: $57

jr_018_5703:
    jr @+$04                                      ; $5703: $18 $02

jr_018_5705:
    nop                                           ; $5705: $00
    ld c, $57                                     ; $5706: $0E $57
    jr jr_018_570D                                ; $5708: $18 $03

jr_018_570A:
    nop                                           ; $570A: $00
    ld l, [hl]                                    ; $570B: $6E
    ld d, a                                       ; $570C: $57

jr_018_570D:
    rst $38                                       ; $570D: $FF
    sbc e                                         ; $570E: $9B
    jr z, @+$5E                                   ; $570F: $28 $5C

    sbc a                                         ; $5711: $9F
    ld d, a                                       ; $5712: $57
    ld h, l                                       ; $5713: $65
    daa                                           ; $5714: $27
    ld l, h                                       ; $5715: $6C
    ld l, h                                       ; $5716: $6C
    jr nz, jr_018_577B                            ; $5717: $20 $62

    ld h, l                                       ; $5719: $65
    jr nz, jr_018_5789                            ; $571A: $20 $6D

    ld l, a                                       ; $571C: $6F
    halt                                          ; $571D: $76
    ld l, c                                       ; $571E: $69
    ld l, [hl]                                    ; $571F: $6E
    ld h, a                                       ; $5720: $67
    rst $38                                       ; $5721: $FF
    ld [hl], h                                    ; $5722: $74
    ld l, b                                       ; $5723: $68
    ld h, l                                       ; $5724: $65
    jr nz, jr_018_578A                            ; $5725: $20 $63

    ld l, c                                       ; $5727: $69
    ld [hl], h                                    ; $5728: $74
    ld a, c                                       ; $5729: $79
    jr nz, jr_018_579F                            ; $572A: $20 $73

    ld l, a                                       ; $572C: $6F
    ld l, a                                       ; $572D: $6F
    ld l, [hl]                                    ; $572E: $6E
    inc l                                         ; $572F: $2C
    cp $73                                        ; $5730: $FE $73
    ld l, a                                       ; $5732: $6F
    jr nz, jr_018_577E                            ; $5733: $20 $49

    daa                                           ; $5735: $27
    ld h, h                                       ; $5736: $64
    jr nz, jr_018_57AC                            ; $5737: $20 $73

    ld [hl], l                                    ; $5739: $75
    ld h, a                                       ; $573A: $67
    ld h, a                                       ; $573B: $67
    ld h, l                                       ; $573C: $65
    ld [hl], e                                    ; $573D: $73
    ld [hl], h                                    ; $573E: $74
    rst $38                                       ; $573F: $FF
    ld a, c                                       ; $5740: $79
    ld l, a                                       ; $5741: $6F
    ld [hl], l                                    ; $5742: $75
    jr nz, jr_018_57B9                            ; $5743: $20 $74

jr_018_5745:
    ld h, c                                       ; $5745: $61
    ld l, e                                       ; $5746: $6B
    ld h, l                                       ; $5747: $65
    jr nz, jr_018_57AD                            ; $5748: $20 $63

    ld h, c                                       ; $574A: $61
    ld [hl], d                                    ; $574B: $72
    ld h, l                                       ; $574C: $65
    cp $6F                                        ; $574D: $FE $6F
    ld h, [hl]                                    ; $574F: $66
    jr nz, @+$63                                  ; $5750: $20 $61

    ld l, h                                       ; $5752: $6C
    ld l, h                                       ; $5753: $6C
    jr nz, jr_018_57CF                            ; $5754: $20 $79

    ld l, a                                       ; $5756: $6F
    ld [hl], l                                    ; $5757: $75
    ld [hl], d                                    ; $5758: $72
    rst $38                                       ; $5759: $FF
    ld h, d                                       ; $575A: $62
    ld [hl], l                                    ; $575B: $75
    ld [hl], e                                    ; $575C: $73
    ld l, c                                       ; $575D: $69
    ld l, [hl]                                    ; $575E: $6E
    ld h, l                                       ; $575F: $65
    ld [hl], e                                    ; $5760: $73
    ld [hl], e                                    ; $5761: $73
    jr nz, jr_018_57CC                            ; $5762: $20 $68

    ld h, l                                       ; $5764: $65
    ld [hl], d                                    ; $5765: $72
    ld h, l                                       ; $5766: $65
    ld l, $FE                                     ; $5767: $2E $FE
    db $FD                                        ; $5769: $FD
    sbc d                                         ; $576A: $9A
    ld e, b                                       ; $576B: $58
    ld bc, $9B42                                  ; $576C: $01 $42 $9B
    jr z, jr_018_57CD                             ; $576F: $28 $5C

    sbc a                                         ; $5771: $9F
    ld b, c                                       ; $5772: $41
    ld l, [hl]                                    ; $5773: $6E
    ld a, c                                       ; $5774: $79
    jr nz, jr_018_57E3                            ; $5775: $20 $6C

    ld [hl], l                                    ; $5777: $75
    ld h, e                                       ; $5778: $63
    ld l, e                                       ; $5779: $6B
    inc l                                         ; $577A: $2C

jr_018_577B:
    jr nz, jr_018_57D1                            ; $577B: $20 $54

    ld l, a                                       ; $577D: $6F

jr_018_577E:
    ld l, [hl]                                    ; $577E: $6E
    ld a, c                                       ; $577F: $79
    ccf                                           ; $5780: $3F
    cp $FD                                        ; $5781: $FE $FD
    sbc e                                         ; $5783: $9B
    ld a, b                                       ; $5784: $78
    ld [hl], b                                    ; $5785: $70
    sbc a                                         ; $5786: $9F
    ld c, [hl]                                    ; $5787: $4E
    ld l, a                                       ; $5788: $6F

jr_018_5789:
    inc l                                         ; $5789: $2C

jr_018_578A:
    jr nz, jr_018_57EE                            ; $578A: $20 $62

    ld [hl], l                                    ; $578C: $75
    ld [hl], h                                    ; $578D: $74
    jr nz, jr_018_5809                            ; $578E: $20 $79

    ld l, a                                       ; $5790: $6F
    ld [hl], l                                    ; $5791: $75
    ld [hl], d                                    ; $5792: $72
    rst $38                                       ; $5793: $FF
    ld c, b                                       ; $5794: $48
    ld l, c                                       ; $5795: $69
    ld [hl], e                                    ; $5796: $73
    ld [hl], h                                    ; $5797: $74
    ld l, a                                       ; $5798: $6F
    ld [hl], d                                    ; $5799: $72
    ld l, c                                       ; $579A: $69
    ld h, c                                       ; $579B: $61
    ld l, [hl]                                    ; $579C: $6E
    jr nz, jr_018_5816                            ; $579D: $20 $77

jr_018_579F:
    ld h, c                                       ; $579F: $61
    ld [hl], e                                    ; $57A0: $73
    cp $68                                        ; $57A1: $FE $68
    ld h, l                                       ; $57A3: $65
    ld l, h                                       ; $57A4: $6C
    ld [hl], b                                    ; $57A5: $70
    ld h, [hl]                                    ; $57A6: $66
    ld [hl], l                                    ; $57A7: $75
    ld l, h                                       ; $57A8: $6C
    ld l, $FE                                     ; $57A9: $2E $FE
    db $FD                                        ; $57AB: $FD

jr_018_57AC:
    sbc e                                         ; $57AC: $9B

jr_018_57AD:
    jr z, @+$5E                                   ; $57AD: $28 $5C

    sbc a                                         ; $57AF: $9F
    ld c, c                                       ; $57B0: $49
    ld [hl], e                                    ; $57B1: $73
    jr nz, jr_018_5828                            ; $57B2: $20 $74

    ld l, b                                       ; $57B4: $68
    ld h, c                                       ; $57B5: $61
    ld [hl], h                                    ; $57B6: $74
    jr nz, jr_018_582C                            ; $57B7: $20 $73

jr_018_57B9:
    ld l, a                                       ; $57B9: $6F
    ld l, $FE                                     ; $57BA: $2E $FE
    db $FD                                        ; $57BC: $FD
    sbc d                                         ; $57BD: $9A
    ld e, b                                       ; $57BE: $58
    ld bc, $9B42                                  ; $57BF: $01 $42 $9B
    jr z, @+$5E                                   ; $57C2: $28 $5C

    sbc a                                         ; $57C4: $9F
    ld b, d                                       ; $57C5: $42
    ld h, l                                       ; $57C6: $65
    jr nz, jr_018_582C                            ; $57C7: $20 $63

    ld h, c                                       ; $57C9: $61
    ld [hl], d                                    ; $57CA: $72
    ld h, l                                       ; $57CB: $65

jr_018_57CC:
    ld h, [hl]                                    ; $57CC: $66

jr_018_57CD:
    ld [hl], l                                    ; $57CD: $75
    ld l, h                                       ; $57CE: $6C

jr_018_57CF:
    rst $38                                       ; $57CF: $FF
    ld d, h                                       ; $57D0: $54

jr_018_57D1:
    ld l, a                                       ; $57D1: $6F
    ld l, [hl]                                    ; $57D2: $6E
    ld a, c                                       ; $57D3: $79
    inc l                                         ; $57D4: $2C
    jr nz, jr_018_5840                            ; $57D5: $20 $69

    ld [hl], h                                    ; $57D7: $74
    daa                                           ; $57D8: $27
    ld [hl], e                                    ; $57D9: $73
    cp $64                                        ; $57DA: $FE $64
    ld h, c                                       ; $57DC: $61
    ld l, [hl]                                    ; $57DD: $6E
    ld h, a                                       ; $57DE: $67
    ld h, l                                       ; $57DF: $65
    ld [hl], d                                    ; $57E0: $72
    ld l, a                                       ; $57E1: $6F
    ld [hl], l                                    ; $57E2: $75

jr_018_57E3:
    ld [hl], e                                    ; $57E3: $73
    jr nz, jr_018_5855                            ; $57E4: $20 $6F

    ld [hl], l                                    ; $57E6: $75
    ld [hl], h                                    ; $57E7: $74
    rst $38                                       ; $57E8: $FF
    ld [hl], h                                    ; $57E9: $74
    ld l, b                                       ; $57EA: $68
    ld h, l                                       ; $57EB: $65
    ld [hl], d                                    ; $57EC: $72
    ld h, l                                       ; $57ED: $65

jr_018_57EE:
    ld l, $FE                                     ; $57EE: $2E $FE
    db $FD                                        ; $57F0: $FD
    sbc d                                         ; $57F1: $9A
    ld e, b                                       ; $57F2: $58
    ld bc, $9B42                                  ; $57F3: $01 $42 $9B
    jr z, jr_018_5854                             ; $57F6: $28 $5C

    sbc a                                         ; $57F8: $9F
    ld c, c                                       ; $57F9: $49
    daa                                           ; $57FA: $27
    ld l, l                                       ; $57FB: $6D
    jr nz, jr_018_5871                            ; $57FC: $20 $73

    ld l, a                                       ; $57FE: $6F
    ld [hl], d                                    ; $57FF: $72
    ld [hl], d                                    ; $5800: $72
    ld a, c                                       ; $5801: $79
    jr nz, @+$44                                  ; $5802: $20 $42

    ld l, h                                       ; $5804: $6C
    ld [hl], l                                    ; $5805: $75
    ld l, $FE                                     ; $5806: $2E $FE
    db $FD                                        ; $5808: $FD

jr_018_5809:
    sbc e                                         ; $5809: $9B
    jr z, jr_018_584F                             ; $580A: $28 $43

    sbc a                                         ; $580C: $9F
    ld l, $2E                                     ; $580D: $2E $2E
    ld l, $62                                     ; $580F: $2E $62
    ld [hl], l                                    ; $5811: $75
    ld [hl], h                                    ; $5812: $74
    jr nz, jr_018_588C                            ; $5813: $20 $77

    ld h, l                                       ; $5815: $65

jr_018_5816:
    jr nz, jr_018_587B                            ; $5816: $20 $63

    ld h, c                                       ; $5818: $61
    ld l, [hl]                                    ; $5819: $6E
    rst $38                                       ; $581A: $FF
    ld [hl], e                                    ; $581B: $73
    ld [hl], h                                    ; $581C: $74
    ld l, a                                       ; $581D: $6F
    ld [hl], b                                    ; $581E: $70
    jr nz, jr_018_588A                            ; $581F: $20 $69

    ld [hl], h                                    ; $5821: $74
    ld hl, $FDFE                                  ; $5822: $21 $FE $FD
    sbc e                                         ; $5825: $9B
    jr z, jr_018_5884                             ; $5826: $28 $5C

jr_018_5828:
    sbc a                                         ; $5828: $9F
    ld c, c                                       ; $5829: $49
    jr nz, jr_018_5894                            ; $582A: $20 $68

jr_018_582C:
    ld h, l                                       ; $582C: $65
    ld h, c                                       ; $582D: $61
    ld [hl], d                                    ; $582E: $72
    ld h, h                                       ; $582F: $64
    jr nz, jr_018_58AB                            ; $5830: $20 $79

    ld l, a                                       ; $5832: $6F
    ld [hl], l                                    ; $5833: $75
    rst $38                                       ; $5834: $FF
    ld h, d                                       ; $5835: $62
    ld h, l                                       ; $5836: $65
    ld h, [hl]                                    ; $5837: $66
    ld l, a                                       ; $5838: $6F
    ld [hl], d                                    ; $5839: $72
    ld h, l                                       ; $583A: $65
    inc l                                         ; $583B: $2C
    jr nz, jr_018_5880                            ; $583C: $20 $42

    ld l, h                                       ; $583E: $6C
    ld [hl], l                                    ; $583F: $75

jr_018_5840:
    inc l                                         ; $5840: $2C
    cp $62                                        ; $5841: $FE $62
    ld [hl], l                                    ; $5843: $75
    ld [hl], h                                    ; $5844: $74
    jr nz, jr_018_58B4                            ; $5845: $20 $6D

    ld a, c                                       ; $5847: $79
    jr nz, jr_018_58B7                            ; $5848: $20 $6D

    ld l, c                                       ; $584A: $69
    ld l, [hl]                                    ; $584B: $6E
    ld h, h                                       ; $584C: $64
    rst $38                                       ; $584D: $FF
    ld l, c                                       ; $584E: $69

jr_018_584F:
    ld [hl], e                                    ; $584F: $73
    jr nz, @+$6F                                  ; $5850: $20 $6D

    ld h, c                                       ; $5852: $61
    ld h, h                                       ; $5853: $64

jr_018_5854:
    ld h, l                                       ; $5854: $65

jr_018_5855:
    jr nz, jr_018_58CC                            ; $5855: $20 $75

    ld [hl], b                                    ; $5857: $70
    ld l, $FE                                     ; $5858: $2E $FE
    db $FD                                        ; $585A: $FD
    sbc d                                         ; $585B: $9A
    ld e, b                                       ; $585C: $58
    ld bc, $9B42                                  ; $585D: $01 $42 $9B
    jr z, jr_018_58A5                             ; $5860: $28 $43

    sbc a                                         ; $5862: $9F
    ld d, h                                       ; $5863: $54
    ld l, a                                       ; $5864: $6F
    ld l, [hl]                                    ; $5865: $6E
    ld h, l                                       ; $5866: $65
    ld a, c                                       ; $5867: $79
    ld hl, $4720                                  ; $5868: $21 $20 $47
    ld l, a                                       ; $586B: $6F
    ld l, a                                       ; $586C: $6F
    ld h, h                                       ; $586D: $64
    rst $38                                       ; $586E: $FF
    ld [hl], h                                    ; $586F: $74
    ld l, c                                       ; $5870: $69

jr_018_5871:
    ld l, l                                       ; $5871: $6D
    ld l, c                                       ; $5872: $69
    ld l, [hl]                                    ; $5873: $6E
    ld h, a                                       ; $5874: $67
    inc l                                         ; $5875: $2C
    jr nz, @+$6F                                  ; $5876: $20 $6D

    ld h, c                                       ; $5878: $61
    ld [hl], h                                    ; $5879: $74
    ld h, l                                       ; $587A: $65

jr_018_587B:
    ld a, c                                       ; $587B: $79
    ld l, $FE                                     ; $587C: $2E $FE
    ld c, b                                       ; $587E: $48
    ld h, c                                       ; $587F: $61

jr_018_5880:
    ld [hl], l                                    ; $5880: $75
    ld l, h                                       ; $5881: $6C
    jr nz, jr_018_58FD                            ; $5882: $20 $79

jr_018_5884:
    ld h, l                                       ; $5884: $65
    ld [hl], d                                    ; $5885: $72
    ld [hl], e                                    ; $5886: $73
    ld h, l                                       ; $5887: $65
    ld l, h                                       ; $5888: $6C
    ld h, [hl]                                    ; $5889: $66

jr_018_588A:
    rst $38                                       ; $588A: $FF
    ld l, a                                       ; $588B: $6F

jr_018_588C:
    halt                                          ; $588C: $76
    ld h, l                                       ; $588D: $65
    ld [hl], d                                    ; $588E: $72
    jr nz, jr_018_58F9                            ; $588F: $20 $68

    ld h, l                                       ; $5891: $65
    ld [hl], d                                    ; $5892: $72
    ld h, l                                       ; $5893: $65

jr_018_5894:
    jr nz, jr_018_58F7                            ; $5894: $20 $61

    ld l, [hl]                                    ; $5896: $6E
    ld h, h                                       ; $5897: $64
    cp $6A                                        ; $5898: $FE $6A
    ld l, a                                       ; $589A: $6F
    ld l, c                                       ; $589B: $69
    ld l, [hl]                                    ; $589C: $6E
    jr nz, jr_018_5914                            ; $589D: $20 $75

    ld [hl], e                                    ; $589F: $73
    ld l, $FE                                     ; $58A0: $2E $FE
    db $FD                                        ; $58A2: $FD
    sbc d                                         ; $58A3: $9A
    ld e, b                                       ; $58A4: $58

jr_018_58A5:
    ld [bc], a                                    ; $58A5: $02
    ld b, d                                       ; $58A6: $42
    sbc e                                         ; $58A7: $9B
    jr z, jr_018_5906                             ; $58A8: $28 $5C

    sbc a                                         ; $58AA: $9F

jr_018_58AB:
    ld d, h                                       ; $58AB: $54
    ld l, b                                       ; $58AC: $68
    ld l, c                                       ; $58AD: $69
    ld [hl], e                                    ; $58AE: $73
    jr nz, jr_018_591A                            ; $58AF: $20 $69

    ld [hl], e                                    ; $58B1: $73
    jr nz, jr_018_5928                            ; $58B2: $20 $74

jr_018_58B4:
    ld l, b                                       ; $58B4: $68
    ld h, l                                       ; $58B5: $65
    rst $38                                       ; $58B6: $FF

jr_018_58B7:
    ld h, d                                       ; $58B7: $62
    ld l, a                                       ; $58B8: $6F
    ld a, c                                       ; $58B9: $79
    ccf                                           ; $58BA: $3F
    cp $FD                                        ; $58BB: $FE $FD
    sbc e                                         ; $58BD: $9B
    jr z, jr_018_5903                             ; $58BE: $28 $43

    sbc a                                         ; $58C0: $9F
    ld b, c                                       ; $58C1: $41
    ld a, c                                       ; $58C2: $79
    ld h, l                                       ; $58C3: $65
    ld l, $FE                                     ; $58C4: $2E $FE
    db $FD                                        ; $58C6: $FD
    sbc e                                         ; $58C7: $9B
    jr z, jr_018_5926                             ; $58C8: $28 $5C

    sbc a                                         ; $58CA: $9F
    ld d, b                                       ; $58CB: $50

jr_018_58CC:
    ld l, h                                       ; $58CC: $6C
    ld h, l                                       ; $58CD: $65
    ld h, c                                       ; $58CE: $61
    ld [hl], e                                    ; $58CF: $73
    ld h, l                                       ; $58D0: $65
    ld h, h                                       ; $58D1: $64
    jr nz, jr_018_5948                            ; $58D2: $20 $74

    ld l, a                                       ; $58D4: $6F
    jr nz, jr_018_5944                            ; $58D5: $20 $6D

    ld h, l                                       ; $58D7: $65
    ld h, l                                       ; $58D8: $65
    ld [hl], h                                    ; $58D9: $74
    rst $38                                       ; $58DA: $FF
    ld a, c                                       ; $58DB: $79
    ld l, a                                       ; $58DC: $6F
    ld [hl], l                                    ; $58DD: $75
    inc l                                         ; $58DE: $2C
    jr nz, jr_018_5935                            ; $58DF: $20 $54

    ld l, a                                       ; $58E1: $6F
    ld l, [hl]                                    ; $58E2: $6E
    ld a, c                                       ; $58E3: $79
    ld l, $20                                     ; $58E4: $2E $20
    ld c, l                                       ; $58E6: $4D
    ld a, c                                       ; $58E7: $79
    cp $6E                                        ; $58E8: $FE $6E
    ld h, c                                       ; $58EA: $61
    ld l, l                                       ; $58EB: $6D
    ld h, l                                       ; $58EC: $65
    jr nz, @+$6B                                  ; $58ED: $20 $69

    ld [hl], e                                    ; $58EF: $73
    jr nz, jr_018_593F                            ; $58F0: $20 $4D

    ld l, a                                       ; $58F2: $6F
    ld h, d                                       ; $58F3: $62
    ld l, c                                       ; $58F4: $69
    ld [hl], e                                    ; $58F5: $73
    inc l                                         ; $58F6: $2C

jr_018_58F7:
    rst $38                                       ; $58F7: $FF
    ld h, c                                       ; $58F8: $61

jr_018_58F9:
    ld l, [hl]                                    ; $58F9: $6E
    ld h, h                                       ; $58FA: $64
    jr nz, jr_018_5946                            ; $58FB: $20 $49

jr_018_58FD:
    jr nz, jr_018_5960                            ; $58FD: $20 $61

    ld l, l                                       ; $58FF: $6D
    jr nz, jr_018_5976                            ; $5900: $20 $74

    ld l, b                                       ; $5902: $68

jr_018_5903:
    ld h, l                                       ; $5903: $65
    cp $65                                        ; $5904: $FE $65

jr_018_5906:
    ld l, h                                       ; $5906: $6C
    ld h, h                                       ; $5907: $64
    ld h, l                                       ; $5908: $65
    ld [hl], d                                    ; $5909: $72
    jr nz, jr_018_597B                            ; $590A: $20 $6F

    ld h, [hl]                                    ; $590C: $66
    jr nz, jr_018_595E                            ; $590D: $20 $4F

    ld [hl], e                                    ; $590F: $73
    ld h, e                                       ; $5910: $63
    ld h, l                                       ; $5911: $65
    ld l, [hl]                                    ; $5912: $6E
    ld [hl], h                                    ; $5913: $74

jr_018_5914:
    rst $38                                       ; $5914: $FF
    ld c, l                                       ; $5915: $4D
    ld h, c                                       ; $5916: $61
    ld [hl], d                                    ; $5917: $72
    ld l, $FE                                     ; $5918: $2E $FE

jr_018_591A:
    db $FD                                        ; $591A: $FD
    sbc e                                         ; $591B: $9B
    ld a, b                                       ; $591C: $78
    ld [hl], b                                    ; $591D: $70
    sbc a                                         ; $591E: $9F
    ld c, [hl]                                    ; $591F: $4E
    ld l, c                                       ; $5920: $69
    ld h, e                                       ; $5921: $63
    ld h, l                                       ; $5922: $65
    jr nz, jr_018_5999                            ; $5923: $20 $74

    ld l, a                                       ; $5925: $6F

jr_018_5926:
    jr nz, jr_018_5995                            ; $5926: $20 $6D

jr_018_5928:
    ld h, l                                       ; $5928: $65
    ld h, l                                       ; $5929: $65
    ld [hl], h                                    ; $592A: $74
    rst $38                                       ; $592B: $FF
    ld a, c                                       ; $592C: $79
    ld l, a                                       ; $592D: $6F
    ld [hl], l                                    ; $592E: $75
    jr nz, jr_018_59A5                            ; $592F: $20 $74

    ld l, a                                       ; $5931: $6F
    ld l, a                                       ; $5932: $6F
    ld l, $FE                                     ; $5933: $2E $FE

jr_018_5935:
    db $FD                                        ; $5935: $FD
    sbc e                                         ; $5936: $9B
    jr z, jr_018_5995                             ; $5937: $28 $5C

    sbc a                                         ; $5939: $9F
    ld c, [hl]                                    ; $593A: $4E
    ld l, a                                       ; $593B: $6F
    ld [hl], d                                    ; $593C: $72
    ld l, l                                       ; $593D: $6D
    ld h, c                                       ; $593E: $61

jr_018_593F:
    ld l, h                                       ; $593F: $6C
    ld l, h                                       ; $5940: $6C
    ld a, c                                       ; $5941: $79
    jr nz, jr_018_598D                            ; $5942: $20 $49

jr_018_5944:
    rst $38                                       ; $5944: $FF
    ld [hl], a                                    ; $5945: $77

jr_018_5946:
    ld l, a                                       ; $5946: $6F
    ld [hl], l                                    ; $5947: $75

jr_018_5948:
    ld l, h                                       ; $5948: $6C
    ld h, h                                       ; $5949: $64
    jr nz, jr_018_59AE                            ; $594A: $20 $62

    ld h, l                                       ; $594C: $65
    cp $77                                        ; $594D: $FE $77
    ld h, l                                       ; $594F: $65
    ld l, h                                       ; $5950: $6C
    ld h, e                                       ; $5951: $63
    ld l, a                                       ; $5952: $6F
    ld l, l                                       ; $5953: $6D
    ld l, c                                       ; $5954: $69
    ld l, [hl]                                    ; $5955: $6E
    ld h, a                                       ; $5956: $67
    jr nz, jr_018_59D2                            ; $5957: $20 $79

    ld l, a                                       ; $5959: $6F
    ld [hl], l                                    ; $595A: $75
    rst $38                                       ; $595B: $FF
    ld [hl], h                                    ; $595C: $74
    ld l, a                                       ; $595D: $6F

jr_018_595E:
    jr nz, jr_018_59CF                            ; $595E: $20 $6F

jr_018_5960:
    ld [hl], l                                    ; $5960: $75
    ld [hl], d                                    ; $5961: $72
    jr nz, jr_018_59C7                            ; $5962: $20 $63

    ld l, c                                       ; $5964: $69
    ld [hl], h                                    ; $5965: $74
    ld a, c                                       ; $5966: $79
    inc l                                         ; $5967: $2C
    cp $62                                        ; $5968: $FE $62
    ld [hl], l                                    ; $596A: $75
    ld [hl], h                                    ; $596B: $74
    jr nz, jr_018_59B7                            ; $596C: $20 $49

    daa                                           ; $596E: $27
    ld l, l                                       ; $596F: $6D
    jr nz, jr_018_59D3                            ; $5970: $20 $61

    ld h, [hl]                                    ; $5972: $66
    ld [hl], d                                    ; $5973: $72
    ld h, c                                       ; $5974: $61
    ld l, c                                       ; $5975: $69

jr_018_5976:
    ld h, h                                       ; $5976: $64
    rst $38                                       ; $5977: $FF
    ld c, c                                       ; $5978: $49
    jr nz, jr_018_59DE                            ; $5979: $20 $63

jr_018_597B:
    ld h, c                                       ; $597B: $61
    ld l, [hl]                                    ; $597C: $6E
    daa                                           ; $597D: $27
    ld [hl], h                                    ; $597E: $74
    jr nz, jr_018_59E5                            ; $597F: $20 $64

    ld l, a                                       ; $5981: $6F
    jr nz, jr_018_59F8                            ; $5982: $20 $74

    ld l, b                                       ; $5984: $68
    ld h, c                                       ; $5985: $61
    ld [hl], h                                    ; $5986: $74
    cp $6E                                        ; $5987: $FE $6E
    ld l, a                                       ; $5989: $6F
    ld [hl], a                                    ; $598A: $77
    ld l, $FE                                     ; $598B: $2E $FE

jr_018_598D:
    ld e, c                                       ; $598D: $59
    ld l, a                                       ; $598E: $6F
    ld [hl], l                                    ; $598F: $75
    jr nz, jr_018_5A05                            ; $5990: $20 $73

    ld h, l                                       ; $5992: $65
    ld h, l                                       ; $5993: $65
    inc l                                         ; $5994: $2C

jr_018_5995:
    jr nz, jr_018_5A09                            ; $5995: $20 $72

    ld h, l                                       ; $5997: $65
    ld h, e                                       ; $5998: $63

jr_018_5999:
    ld h, l                                       ; $5999: $65
    ld l, [hl]                                    ; $599A: $6E
    ld [hl], h                                    ; $599B: $74
    rst $38                                       ; $599C: $FF
    ld h, l                                       ; $599D: $65
    halt                                          ; $599E: $76
    ld h, l                                       ; $599F: $65
    ld l, [hl]                                    ; $59A0: $6E
    ld [hl], h                                    ; $59A1: $74
    ld [hl], e                                    ; $59A2: $73
    jr nz, @+$6A                                  ; $59A3: $20 $68

jr_018_59A5:
    ld h, c                                       ; $59A5: $61
    halt                                          ; $59A6: $76
    ld h, l                                       ; $59A7: $65
    cp $70                                        ; $59A8: $FE $70
    ld l, h                                       ; $59AA: $6C
    ld h, c                                       ; $59AB: $61
    ld h, e                                       ; $59AC: $63
    ld h, l                                       ; $59AD: $65

jr_018_59AE:
    ld h, h                                       ; $59AE: $64
    jr nz, jr_018_5A26                            ; $59AF: $20 $75

    ld [hl], e                                    ; $59B1: $73
    jr nz, jr_018_5A1D                            ; $59B2: $20 $69

    ld l, [hl]                                    ; $59B4: $6E
    rst $38                                       ; $59B5: $FF
    ld [hl], b                                    ; $59B6: $70

jr_018_59B7:
    ld h, l                                       ; $59B7: $65
    ld [hl], d                                    ; $59B8: $72
    ld l, c                                       ; $59B9: $69
    ld l, h                                       ; $59BA: $6C
    ld l, $2E                                     ; $59BB: $2E $2E
    cp $49                                        ; $59BD: $FE $49
    jr nz, jr_018_5A29                            ; $59BF: $20 $68

    ld h, c                                       ; $59C1: $61
    halt                                          ; $59C2: $76
    ld h, l                                       ; $59C3: $65
    cp $64                                        ; $59C4: $FE $64
    ld h, l                                       ; $59C6: $65

jr_018_59C7:
    ld h, e                                       ; $59C7: $63
    ld l, c                                       ; $59C8: $69
    ld h, h                                       ; $59C9: $64
    ld h, l                                       ; $59CA: $65
    ld h, h                                       ; $59CB: $64
    jr nz, jr_018_5A42                            ; $59CC: $20 $74

    ld l, b                                       ; $59CE: $68

jr_018_59CF:
    ld h, c                                       ; $59CF: $61
    ld [hl], h                                    ; $59D0: $74
    rst $38                                       ; $59D1: $FF

jr_018_59D2:
    ld [hl], h                                    ; $59D2: $74

jr_018_59D3:
    ld l, b                                       ; $59D3: $68
    ld h, l                                       ; $59D4: $65
    jr nz, jr_018_5A3A                            ; $59D5: $20 $63

    ld l, c                                       ; $59D7: $69
    ld [hl], h                                    ; $59D8: $74
    ld a, c                                       ; $59D9: $79
    jr nz, jr_018_5A49                            ; $59DA: $20 $6D

    ld [hl], l                                    ; $59DC: $75
    ld [hl], e                                    ; $59DD: $73

jr_018_59DE:
    ld [hl], h                                    ; $59DE: $74
    cp $62                                        ; $59DF: $FE $62
    ld h, l                                       ; $59E1: $65
    jr nz, jr_018_5A51                            ; $59E2: $20 $6D

    ld l, a                                       ; $59E4: $6F

jr_018_59E5:
    halt                                          ; $59E5: $76
    ld h, l                                       ; $59E6: $65
    ld h, h                                       ; $59E7: $64
    ld l, $FF                                     ; $59E8: $2E $FF
    db $FD                                        ; $59EA: $FD
    sbc e                                         ; $59EB: $9B
    ld a, b                                       ; $59EC: $78
    ld [hl], b                                    ; $59ED: $70
    sbc a                                         ; $59EE: $9F
    ld c, b                                       ; $59EF: $48
    ld l, a                                       ; $59F0: $6F
    ld [hl], a                                    ; $59F1: $77
    jr nz, jr_018_5A58                            ; $59F2: $20 $64

    ld l, a                                       ; $59F4: $6F
    jr nz, @+$7B                                  ; $59F5: $20 $79

    ld l, a                                       ; $59F7: $6F

jr_018_59F8:
    ld [hl], l                                    ; $59F8: $75
    jr nz, jr_018_5A68                            ; $59F9: $20 $6D

    ld l, a                                       ; $59FB: $6F
    halt                                          ; $59FC: $76
    ld h, l                                       ; $59FD: $65
    rst $38                                       ; $59FE: $FF
    ld h, c                                       ; $59FF: $61
    jr nz, jr_018_5A79                            ; $5A00: $20 $77

    ld l, b                                       ; $5A02: $68
    ld l, a                                       ; $5A03: $6F
    ld l, h                                       ; $5A04: $6C

jr_018_5A05:
    ld h, l                                       ; $5A05: $65
    jr nz, jr_018_5A6B                            ; $5A06: $20 $63

    ld l, c                                       ; $5A08: $69

jr_018_5A09:
    ld [hl], h                                    ; $5A09: $74
    ld a, c                                       ; $5A0A: $79
    ccf                                           ; $5A0B: $3F
    cp $FD                                        ; $5A0C: $FE $FD
    sbc e                                         ; $5A0E: $9B
    jr z, jr_018_5A6D                             ; $5A0F: $28 $5C

    sbc a                                         ; $5A11: $9F
    ld d, a                                       ; $5A12: $57
    ld l, b                                       ; $5A13: $68
    ld a, c                                       ; $5A14: $79
    inc l                                         ; $5A15: $2C
    jr nz, jr_018_5A8C                            ; $5A16: $20 $74

    ld l, b                                       ; $5A18: $68
    ld h, l                                       ; $5A19: $65
    jr nz, jr_018_5A63                            ; $5A1A: $20 $47

    ld l, c                                       ; $5A1C: $69

jr_018_5A1D:
    ld h, c                                       ; $5A1D: $61
    ld l, [hl]                                    ; $5A1E: $6E
    ld [hl], h                                    ; $5A1F: $74
    rst $38                                       ; $5A20: $FF
    ld d, b                                       ; $5A21: $50
    ld h, c                                       ; $5A22: $61
    ld [hl], d                                    ; $5A23: $72
    ld h, c                                       ; $5A24: $61
    ld [hl], h                                    ; $5A25: $74

jr_018_5A26:
    ld l, b                                       ; $5A26: $68
    ld l, c                                       ; $5A27: $69
    ld l, [hl]                                    ; $5A28: $6E

jr_018_5A29:
    ld [hl], e                                    ; $5A29: $73
    cp $6F                                        ; $5A2A: $FE $6F
    ld l, [hl]                                    ; $5A2C: $6E
    jr nz, jr_018_5AA6                            ; $5A2D: $20 $77

    ld l, b                                       ; $5A2F: $68
    ld l, c                                       ; $5A30: $69
    ld h, e                                       ; $5A31: $63
    ld l, b                                       ; $5A32: $68
    jr nz, jr_018_5AA4                            ; $5A33: $20 $6F

    ld [hl], l                                    ; $5A35: $75
    ld [hl], d                                    ; $5A36: $72
    rst $38                                       ; $5A37: $FF
    ld h, e                                       ; $5A38: $63
    ld l, c                                       ; $5A39: $69

jr_018_5A3A:
    ld [hl], h                                    ; $5A3A: $74
    ld a, c                                       ; $5A3B: $79
    jr nz, jr_018_5AB0                            ; $5A3C: $20 $72

    ld h, l                                       ; $5A3E: $65
    ld [hl], e                                    ; $5A3F: $73
    ld [hl], h                                    ; $5A40: $74
    ld [hl], e                                    ; $5A41: $73

jr_018_5A42:
    jr nz, jr_018_5ABB                            ; $5A42: $20 $77

    ld l, c                                       ; $5A44: $69
    ld l, h                                       ; $5A45: $6C
    ld l, h                                       ; $5A46: $6C
    cp $73                                        ; $5A47: $FE $73

jr_018_5A49:
    ld l, c                                       ; $5A49: $69
    ld l, l                                       ; $5A4A: $6D
    ld [hl], b                                    ; $5A4B: $70
    ld l, h                                       ; $5A4C: $6C
    ld a, c                                       ; $5A4D: $79
    jr nz, jr_018_5AC3                            ; $5A4E: $20 $73

    ld [hl], a                                    ; $5A50: $77

jr_018_5A51:
    ld l, c                                       ; $5A51: $69
    ld l, l                                       ; $5A52: $6D
    jr nz, jr_018_5AC9                            ; $5A53: $20 $74

    ld l, a                                       ; $5A55: $6F
    rst $38                                       ; $5A56: $FF
    ld h, c                                       ; $5A57: $61

jr_018_5A58:
    jr nz, jr_018_5AC8                            ; $5A58: $20 $6E

    ld h, l                                       ; $5A5A: $65
    ld [hl], a                                    ; $5A5B: $77
    jr nz, jr_018_5ACA                            ; $5A5C: $20 $6C

    ld l, a                                       ; $5A5E: $6F
    ld h, e                                       ; $5A5F: $63
    ld h, c                                       ; $5A60: $61
    ld [hl], h                                    ; $5A61: $74
    ld l, c                                       ; $5A62: $69

jr_018_5A63:
    ld l, a                                       ; $5A63: $6F
    ld l, [hl]                                    ; $5A64: $6E
    ld l, $FE                                     ; $5A65: $2E $FE
    ld c, c                                       ; $5A67: $49

jr_018_5A68:
    ld l, [hl]                                    ; $5A68: $6E
    jr nz, jr_018_5AD1                            ; $5A69: $20 $66

jr_018_5A6B:
    ld h, c                                       ; $5A6B: $61
    ld h, e                                       ; $5A6C: $63

jr_018_5A6D:
    ld [hl], h                                    ; $5A6D: $74
    inc l                                         ; $5A6E: $2C
    jr nz, jr_018_5ADE                            ; $5A6F: $20 $6D

    ld h, c                                       ; $5A71: $61
    ld l, [hl]                                    ; $5A72: $6E
    ld a, c                                       ; $5A73: $79
    rst $38                                       ; $5A74: $FF
    ld l, a                                       ; $5A75: $6F
    ld h, [hl]                                    ; $5A76: $66
    jr nz, jr_018_5AE8                            ; $5A77: $20 $6F

jr_018_5A79:
    ld [hl], l                                    ; $5A79: $75
    ld [hl], d                                    ; $5A7A: $72
    jr nz, jr_018_5AF1                            ; $5A7B: $20 $74

    ld [hl], d                                    ; $5A7D: $72
    ld l, a                                       ; $5A7E: $6F
    ld l, a                                       ; $5A7F: $6F
    ld [hl], b                                    ; $5A80: $70
    ld [hl], e                                    ; $5A81: $73
    cp $68                                        ; $5A82: $FE $68
    ld h, c                                       ; $5A84: $61
    halt                                          ; $5A85: $76
    ld h, l                                       ; $5A86: $65
    jr nz, jr_018_5AEA                            ; $5A87: $20 $61

    ld l, h                                       ; $5A89: $6C
    ld [hl], d                                    ; $5A8A: $72
    ld h, l                                       ; $5A8B: $65

jr_018_5A8C:
    ld h, c                                       ; $5A8C: $61
    ld h, h                                       ; $5A8D: $64
    ld a, c                                       ; $5A8E: $79
    rst $38                                       ; $5A8F: $FF
    ld l, h                                       ; $5A90: $6C
    ld h, l                                       ; $5A91: $65
    ld h, [hl]                                    ; $5A92: $66
    ld [hl], h                                    ; $5A93: $74
    jr nz, jr_018_5AFC                            ; $5A94: $20 $66

    ld l, a                                       ; $5A96: $6F
    ld [hl], d                                    ; $5A97: $72
    cp $63                                        ; $5A98: $FE $63
    ld h, c                                       ; $5A9A: $61
    ld l, h                                       ; $5A9B: $6C
    ld l, l                                       ; $5A9C: $6D
    ld h, l                                       ; $5A9D: $65
    ld [hl], d                                    ; $5A9E: $72
    jr nz, jr_018_5B18                            ; $5A9F: $20 $77

    ld h, c                                       ; $5AA1: $61
    ld [hl], h                                    ; $5AA2: $74
    ld h, l                                       ; $5AA3: $65

jr_018_5AA4:
    ld [hl], d                                    ; $5AA4: $72
    ld [hl], e                                    ; $5AA5: $73

jr_018_5AA6:
    ld l, $FE                                     ; $5AA6: $2E $FE
    db $FD                                        ; $5AA8: $FD
    sbc e                                         ; $5AA9: $9B
    jr z, @+$45                                   ; $5AAA: $28 $43

    sbc a                                         ; $5AAC: $9F
    ld c, l                                       ; $5AAD: $4D
    ld l, a                                       ; $5AAE: $6F
    ld h, d                                       ; $5AAF: $62

jr_018_5AB0:
    ld l, c                                       ; $5AB0: $69
    ld [hl], e                                    ; $5AB1: $73
    inc l                                         ; $5AB2: $2C
    jr nz, jr_018_5AFE                            ; $5AB3: $20 $49

    daa                                           ; $5AB5: $27
    ld l, l                                       ; $5AB6: $6D
    rst $38                                       ; $5AB7: $FF
    ld [hl], h                                    ; $5AB8: $74
    ld h, l                                       ; $5AB9: $65
    ld l, h                                       ; $5ABA: $6C

jr_018_5ABB:
    ld l, h                                       ; $5ABB: $6C
    ld l, c                                       ; $5ABC: $69
    ld l, [hl]                                    ; $5ABD: $6E
    daa                                           ; $5ABE: $27
    jr nz, jr_018_5B3A                            ; $5ABF: $20 $79

    ld h, c                                       ; $5AC1: $61
    inc l                                         ; $5AC2: $2C

jr_018_5AC3:
    cp $74                                        ; $5AC3: $FE $74
    ld l, b                                       ; $5AC5: $68
    ld h, l                                       ; $5AC6: $65
    ld [hl], d                                    ; $5AC7: $72

jr_018_5AC8:
    ld h, l                                       ; $5AC8: $65

jr_018_5AC9:
    daa                                           ; $5AC9: $27

jr_018_5ACA:
    ld [hl], e                                    ; $5ACA: $73
    jr nz, jr_018_5B3B                            ; $5ACB: $20 $6E

    ld l, a                                       ; $5ACD: $6F
    rst $38                                       ; $5ACE: $FF
    ld l, [hl]                                    ; $5ACF: $6E
    ld h, l                                       ; $5AD0: $65

jr_018_5AD1:
    ld h, l                                       ; $5AD1: $65
    ld h, h                                       ; $5AD2: $64
    jr nz, @+$76                                  ; $5AD3: $20 $74

    ld l, a                                       ; $5AD5: $6F
    jr nz, jr_018_5B3F                            ; $5AD6: $20 $67

    ld l, a                                       ; $5AD8: $6F
    ld hl, $54FE                                  ; $5AD9: $21 $FE $54
    ld l, a                                       ; $5ADC: $6F
    ld l, [hl]                                    ; $5ADD: $6E

jr_018_5ADE:
    ld h, l                                       ; $5ADE: $65
    ld a, c                                       ; $5ADF: $79
    jr nz, jr_018_5B4A                            ; $5AE0: $20 $68

    ld h, l                                       ; $5AE2: $65
    ld [hl], d                                    ; $5AE3: $72
    ld h, l                                       ; $5AE4: $65
    jr nz, jr_018_5B4A                            ; $5AE5: $20 $63

    ld h, c                                       ; $5AE7: $61

jr_018_5AE8:
    ld l, [hl]                                    ; $5AE8: $6E
    rst $38                                       ; $5AE9: $FF

jr_018_5AEA:
    ld [hl], e                                    ; $5AEA: $73
    ld [hl], h                                    ; $5AEB: $74
    ld l, a                                       ; $5AEC: $6F
    ld [hl], b                                    ; $5AED: $70
    jr nz, jr_018_5B64                            ; $5AEE: $20 $74

    ld l, b                                       ; $5AF0: $68

jr_018_5AF1:
    ld h, l                                       ; $5AF1: $65
    cp $42                                        ; $5AF2: $FE $42
    ld l, h                                       ; $5AF4: $6C
    ld h, c                                       ; $5AF5: $61
    ld h, e                                       ; $5AF6: $63
    ld l, e                                       ; $5AF7: $6B
    jr nz, jr_018_5B4E                            ; $5AF8: $20 $54

    ld l, b                                       ; $5AFA: $68
    ld l, c                                       ; $5AFB: $69

jr_018_5AFC:
    ld l, [hl]                                    ; $5AFC: $6E
    ld h, a                                       ; $5AFD: $67

jr_018_5AFE:
    ld a, c                                       ; $5AFE: $79
    ld hl, $FDFE                                  ; $5AFF: $21 $FE $FD
    sbc e                                         ; $5B02: $9B
    jr z, jr_018_5B61                             ; $5B03: $28 $5C

    sbc a                                         ; $5B05: $9F
    ld b, d                                       ; $5B06: $42
    ld l, h                                       ; $5B07: $6C
    ld [hl], l                                    ; $5B08: $75
    inc l                                         ; $5B09: $2C
    jr nz, jr_018_5B85                            ; $5B0A: $20 $79

    ld l, a                                       ; $5B0C: $6F
    ld [hl], l                                    ; $5B0D: $75
    jr nz, jr_018_5B7B                            ; $5B0E: $20 $6B

    ld l, [hl]                                    ; $5B10: $6E
    ld l, a                                       ; $5B11: $6F
    ld [hl], a                                    ; $5B12: $77
    rst $38                                       ; $5B13: $FF
    ld [hl], h                                    ; $5B14: $74
    ld l, b                                       ; $5B15: $68
    ld h, c                                       ; $5B16: $61
    ld [hl], h                                    ; $5B17: $74

jr_018_5B18:
    jr nz, jr_018_5B8E                            ; $5B18: $20 $74

    ld l, b                                       ; $5B1A: $68
    ld h, l                                       ; $5B1B: $65
    jr nz, jr_018_5B92                            ; $5B1C: $20 $74

    ld [hl], d                                    ; $5B1E: $72
    ld l, a                                       ; $5B1F: $6F
    ld l, a                                       ; $5B20: $6F
    ld [hl], b                                    ; $5B21: $70
    ld [hl], e                                    ; $5B22: $73
    cp $49                                        ; $5B23: $FE $49
    jr nz, jr_018_5B9A                            ; $5B25: $20 $73

    ld h, l                                       ; $5B27: $65
    ld l, [hl]                                    ; $5B28: $6E
    ld [hl], h                                    ; $5B29: $74
    jr nz, jr_018_5BA0                            ; $5B2A: $20 $74

    ld l, a                                       ; $5B2C: $6F
    jr nz, jr_018_5BA3                            ; $5B2D: $20 $74

    ld l, b                                       ; $5B2F: $68
    ld h, l                                       ; $5B30: $65
    rst $38                                       ; $5B31: $FF
    ld h, a                                       ; $5B32: $67
    ld h, l                                       ; $5B33: $65
    ld a, c                                       ; $5B34: $79
    ld [hl], e                                    ; $5B35: $73
    ld h, l                                       ; $5B36: $65
    ld [hl], d                                    ; $5B37: $72
    jr nz, jr_018_5BA2                            ; $5B38: $20 $68

jr_018_5B3A:
    ld h, c                                       ; $5B3A: $61

jr_018_5B3B:
    halt                                          ; $5B3B: $76
    ld h, l                                       ; $5B3C: $65
    jr nz, jr_018_5BA0                            ; $5B3D: $20 $61

jr_018_5B3F:
    ld l, h                                       ; $5B3F: $6C
    ld l, h                                       ; $5B40: $6C
    cp $66                                        ; $5B41: $FE $66
    ld h, c                                       ; $5B43: $61
    ld l, h                                       ; $5B44: $6C
    ld l, h                                       ; $5B45: $6C
    ld h, l                                       ; $5B46: $65
    ld l, [hl]                                    ; $5B47: $6E
    jr nz, jr_018_5BB1                            ; $5B48: $20 $67

jr_018_5B4A:
    ld [hl], d                                    ; $5B4A: $72
    ld h, c                                       ; $5B4B: $61
    halt                                          ; $5B4C: $76
    ld h, l                                       ; $5B4D: $65

jr_018_5B4E:
    ld l, h                                       ; $5B4E: $6C
    ld a, c                                       ; $5B4F: $79
    rst $38                                       ; $5B50: $FF
    ld l, c                                       ; $5B51: $69
    ld l, h                                       ; $5B52: $6C
    ld l, h                                       ; $5B53: $6C
    ld hl, $2020                                  ; $5B54: $21 $20 $20

jr_018_5B57:
    ld c, l                                       ; $5B57: $4D
    ld l, a                                       ; $5B58: $6F
    ld [hl], e                                    ; $5B59: $73
    ld [hl], h                                    ; $5B5A: $74
    jr nz, jr_018_5BBE                            ; $5B5B: $20 $61

    ld [hl], d                                    ; $5B5D: $72
    ld h, l                                       ; $5B5E: $65
    cp $70                                        ; $5B5F: $FE $70

jr_018_5B61:
    ld h, l                                       ; $5B61: $65
    ld [hl], h                                    ; $5B62: $74
    ld [hl], d                                    ; $5B63: $72

jr_018_5B64:
    ld l, c                                       ; $5B64: $69
    ld h, [hl]                                    ; $5B65: $66
    ld l, c                                       ; $5B66: $69
    ld h, l                                       ; $5B67: $65
    ld h, h                                       ; $5B68: $64
    inc l                                         ; $5B69: $2C
    jr nz, @+$63                                  ; $5B6A: $20 $61

    ld l, [hl]                                    ; $5B6C: $6E
    ld h, h                                       ; $5B6D: $64
    rst $38                                       ; $5B6E: $FF
    ld [hl], h                                    ; $5B6F: $74
    ld l, b                                       ; $5B70: $68
    ld h, l                                       ; $5B71: $65
    jr nz, jr_018_5BE3                            ; $5B72: $20 $6F

    ld [hl], h                                    ; $5B74: $74
    ld l, b                                       ; $5B75: $68
    ld h, l                                       ; $5B76: $65
    ld [hl], d                                    ; $5B77: $72
    ld [hl], e                                    ; $5B78: $73
    cp $68                                        ; $5B79: $FE $68

jr_018_5B7B:
    ld h, c                                       ; $5B7B: $61
    halt                                          ; $5B7C: $76
    ld h, l                                       ; $5B7D: $65
    jr nz, jr_018_5BF4                            ; $5B7E: $20 $74

    ld [hl], l                                    ; $5B80: $75
    ld [hl], d                                    ; $5B81: $72
    ld l, [hl]                                    ; $5B82: $6E
    ld h, l                                       ; $5B83: $65
    ld h, h                                       ; $5B84: $64

jr_018_5B85:
    rst $38                                       ; $5B85: $FF
    ld l, c                                       ; $5B86: $69
    ld l, [hl]                                    ; $5B87: $6E
    ld [hl], h                                    ; $5B88: $74
    ld l, a                                       ; $5B89: $6F
    jr nz, jr_018_5BF9                            ; $5B8A: $20 $6D

    ld [hl], l                                    ; $5B8C: $75
    ld [hl], e                                    ; $5B8D: $73

jr_018_5B8E:
    ld l, b                                       ; $5B8E: $68
    ld hl, $FDFE                                  ; $5B8F: $21 $FE $FD

jr_018_5B92:
    sbc e                                         ; $5B92: $9B
    jr z, jr_018_5BD8                             ; $5B93: $28 $43

    ld e, b                                       ; $5B95: $58
    rra                                           ; $5B96: $1F
    sbc a                                         ; $5B97: $9F

jr_018_5B98:
    ld b, c                                       ; $5B98: $41
    ld [hl], d                                    ; $5B99: $72

jr_018_5B9A:
    ld [hl], d                                    ; $5B9A: $72
    inc l                                         ; $5B9B: $2C
    jr nz, jr_018_5BE7                            ; $5B9C: $20 $49

    jr nz, jr_018_5C17                            ; $5B9E: $20 $77

jr_018_5BA0:
    ld h, c                                       ; $5BA0: $61
    ld [hl], e                                    ; $5BA1: $73

jr_018_5BA2:
    rst $38                                       ; $5BA2: $FF

jr_018_5BA3:
    ld h, a                                       ; $5BA3: $67
    ld h, l                                       ; $5BA4: $65
    ld [hl], h                                    ; $5BA5: $74
    ld [hl], h                                    ; $5BA6: $74
    ld l, c                                       ; $5BA7: $69
    ld l, [hl]                                    ; $5BA8: $6E
    daa                                           ; $5BA9: $27
    jr nz, jr_018_5C20                            ; $5BAA: $20 $74

    ld h, l                                       ; $5BAC: $65
    cp $74                                        ; $5BAD: $FE $74
    ld l, b                                       ; $5BAF: $68
    ld h, c                                       ; $5BB0: $61

jr_018_5BB1:
    ld [hl], h                                    ; $5BB1: $74
    ld hl, $FDFE                                  ; $5BB2: $21 $FE $FD
    ld b, b                                       ; $5BB5: $40
    jr jr_018_5B57                                ; $5BB6: $18 $9F

    ld d, h                                       ; $5BB8: $54
    ld l, a                                       ; $5BB9: $6F
    ld l, [hl]                                    ; $5BBA: $6E
    ld h, l                                       ; $5BBB: $65
    ld a, c                                       ; $5BBC: $79
    inc l                                         ; $5BBD: $2C

jr_018_5BBE:
    rst $38                                       ; $5BBE: $FF
    ld [hl], e                                    ; $5BBF: $73
    ld l, b                                       ; $5BC0: $68
    ld l, a                                       ; $5BC1: $6F
    ld [hl], a                                    ; $5BC2: $77
    jr nz, @+$6A                                  ; $5BC3: $20 $68

    ld l, c                                       ; $5BC5: $69
    ld l, l                                       ; $5BC6: $6D
    jr nz, jr_018_5C3D                            ; $5BC7: $20 $74

    ld l, b                                       ; $5BC9: $68
    ld h, c                                       ; $5BCA: $61
    ld [hl], h                                    ; $5BCB: $74
    cp $74                                        ; $5BCC: $FE $74
    ld l, b                                       ; $5BCE: $68
    ld l, c                                       ; $5BCF: $69
    ld l, [hl]                                    ; $5BD0: $6E
    ld h, a                                       ; $5BD1: $67
    jr nz, jr_018_5C4D                            ; $5BD2: $20 $79

    ld h, l                                       ; $5BD4: $65
    jr nz, jr_018_5C4A                            ; $5BD5: $20 $73

    ld l, b                                       ; $5BD7: $68

jr_018_5BD8:
    ld l, a                                       ; $5BD8: $6F
    ld [hl], a                                    ; $5BD9: $77
    ld h, l                                       ; $5BDA: $65
    ld h, h                                       ; $5BDB: $64
    rst $38                                       ; $5BDC: $FF
    ld l, l                                       ; $5BDD: $6D
    ld h, l                                       ; $5BDE: $65
    ld l, $FE                                     ; $5BDF: $2E $FE
    db $FD                                        ; $5BE1: $FD
    sbc e                                         ; $5BE2: $9B

jr_018_5BE3:
    ld a, b                                       ; $5BE3: $78
    ld [hl], b                                    ; $5BE4: $70
    sbc a                                         ; $5BE5: $9F
    ld d, h                                       ; $5BE6: $54

jr_018_5BE7:
    ld l, b                                       ; $5BE7: $68
    ld l, c                                       ; $5BE8: $69
    ld [hl], e                                    ; $5BE9: $73
    ccf                                           ; $5BEA: $3F
    cp $FD                                        ; $5BEB: $FE $FD
    sbc d                                         ; $5BED: $9A
    ld e, b                                       ; $5BEE: $58
    inc bc                                        ; $5BEF: $03
    ld b, d                                       ; $5BF0: $42
    sbc e                                         ; $5BF1: $9B
    jr z, jr_018_5C50                             ; $5BF2: $28 $5C

jr_018_5BF4:
    sbc a                                         ; $5BF4: $9F
    ld hl, $FE21                                  ; $5BF5: $21 $21 $FE
    db $FD                                        ; $5BF8: $FD

jr_018_5BF9:
    sbc d                                         ; $5BF9: $9A
    ld b, b                                       ; $5BFA: $40
    jr nz, jr_018_5B98                            ; $5BFB: $20 $9B

    jr z, jr_018_5C5B                             ; $5BFD: $28 $5C

    sbc a                                         ; $5BFF: $9F
    ld d, h                                       ; $5C00: $54
    ld l, b                                       ; $5C01: $68
    ld h, c                                       ; $5C02: $61
    ld [hl], h                                    ; $5C03: $74
    daa                                           ; $5C04: $27
    ld [hl], e                                    ; $5C05: $73
    jr nz, jr_018_5C69                            ; $5C06: $20 $61

    rst $38                                       ; $5C08: $FF
    ld b, e                                       ; $5C09: $43
    ld l, a                                       ; $5C0A: $6F
    ld [hl], d                                    ; $5C0B: $72
    ld h, l                                       ; $5C0C: $65
    jr nz, jr_018_5C56                            ; $5C0D: $20 $47

    ld l, h                                       ; $5C0F: $6C
    ld a, c                                       ; $5C10: $79
    ld [hl], b                                    ; $5C11: $70
    ld l, b                                       ; $5C12: $68
    ld l, $FE                                     ; $5C13: $2E $FE
    ld d, a                                       ; $5C15: $57
    ld l, b                                       ; $5C16: $68

jr_018_5C17:
    ld h, l                                       ; $5C17: $65
    ld [hl], d                                    ; $5C18: $72
    ld h, l                                       ; $5C19: $65
    jr nz, jr_018_5C80                            ; $5C1A: $20 $64

    ld l, c                                       ; $5C1C: $69
    ld h, h                                       ; $5C1D: $64
    jr nz, jr_018_5C99                            ; $5C1E: $20 $79

jr_018_5C20:
    ld l, a                                       ; $5C20: $6F
    ld [hl], l                                    ; $5C21: $75
    rst $38                                       ; $5C22: $FF
    ld h, a                                       ; $5C23: $67
    ld h, l                                       ; $5C24: $65
    ld [hl], h                                    ; $5C25: $74
    jr nz, jr_018_5C9C                            ; $5C26: $20 $74

    ld l, b                                       ; $5C28: $68
    ld h, c                                       ; $5C29: $61
    ld [hl], h                                    ; $5C2A: $74
    ccf                                           ; $5C2B: $3F
    cp $FD                                        ; $5C2C: $FE $FD
    sbc e                                         ; $5C2E: $9B
    ld a, b                                       ; $5C2F: $78
    ld [hl], b                                    ; $5C30: $70
    sbc a                                         ; $5C31: $9F
    ld d, h                                       ; $5C32: $54
    ld l, b                                       ; $5C33: $68
    ld h, c                                       ; $5C34: $61
    ld [hl], h                                    ; $5C35: $74
    daa                                           ; $5C36: $27
    ld [hl], e                                    ; $5C37: $73
    jr nz, jr_018_5CA8                            ; $5C38: $20 $6E

    ld l, a                                       ; $5C3A: $6F
    ld [hl], h                                    ; $5C3B: $74
    rst $38                                       ; $5C3C: $FF

jr_018_5C3D:
    ld l, c                                       ; $5C3D: $69
    ld l, l                                       ; $5C3E: $6D
    ld [hl], b                                    ; $5C3F: $70
    ld l, a                                       ; $5C40: $6F
    ld [hl], d                                    ; $5C41: $72
    ld [hl], h                                    ; $5C42: $74
    ld h, c                                       ; $5C43: $61
    ld l, [hl]                                    ; $5C44: $6E
    ld [hl], h                                    ; $5C45: $74
    jr nz, @+$70                                  ; $5C46: $20 $6E

    ld l, a                                       ; $5C48: $6F
    ld [hl], a                                    ; $5C49: $77

jr_018_5C4A:
    ld l, $FE                                     ; $5C4A: $2E $FE
    ld b, c                                       ; $5C4C: $41

jr_018_5C4D:
    ld [hl], e                                    ; $5C4D: $73
    jr nz, jr_018_5CBC                            ; $5C4E: $20 $6C

jr_018_5C50:
    ld l, a                                       ; $5C50: $6F
    ld l, [hl]                                    ; $5C51: $6E
    ld h, a                                       ; $5C52: $67
    jr nz, @+$63                                  ; $5C53: $20 $61

    ld [hl], e                                    ; $5C55: $73

jr_018_5C56:
    jr nz, @+$4B                                  ; $5C56: $20 $49

    rst $38                                       ; $5C58: $FF
    ld l, b                                       ; $5C59: $68
    ld h, c                                       ; $5C5A: $61

jr_018_5C5B:
    halt                                          ; $5C5B: $76
    ld h, l                                       ; $5C5C: $65
    jr nz, jr_018_5CD3                            ; $5C5D: $20 $74

    ld l, b                                       ; $5C5F: $68
    ld l, c                                       ; $5C60: $69
    ld [hl], e                                    ; $5C61: $73
    inc l                                         ; $5C62: $2C
    jr nz, jr_018_5CAE                            ; $5C63: $20 $49

    cp $63                                        ; $5C65: $FE $63
    ld h, c                                       ; $5C67: $61
    ld l, [hl]                                    ; $5C68: $6E

jr_018_5C69:
    jr nz, jr_018_5CD0                            ; $5C69: $20 $65

    ld l, [hl]                                    ; $5C6B: $6E
    ld [hl], h                                    ; $5C6C: $74
    ld h, l                                       ; $5C6D: $65
    ld [hl], d                                    ; $5C6E: $72
    jr nz, jr_018_5CE5                            ; $5C6F: $20 $74

    ld l, b                                       ; $5C71: $68
    ld h, l                                       ; $5C72: $65
    rst $38                                       ; $5C73: $FF
    ld h, a                                       ; $5C74: $67
    ld h, l                                       ; $5C75: $65
    ld a, c                                       ; $5C76: $79
    ld [hl], e                                    ; $5C77: $73
    ld h, l                                       ; $5C78: $65
    ld [hl], d                                    ; $5C79: $72
    ld l, $FE                                     ; $5C7A: $2E $FE
    ld c, c                                       ; $5C7C: $49
    jr nz, @+$6C                                  ; $5C7D: $20 $6A

    ld [hl], l                                    ; $5C7F: $75

jr_018_5C80:
    ld [hl], e                                    ; $5C80: $73
    ld [hl], h                                    ; $5C81: $74
    jr nz, @+$70                                  ; $5C82: $20 $6E

    ld h, l                                       ; $5C84: $65
    ld h, l                                       ; $5C85: $65
    ld h, h                                       ; $5C86: $64
    jr nz, jr_018_5CEA                            ; $5C87: $20 $61

    rst $38                                       ; $5C89: $FF
    ld [hl], a                                    ; $5C8A: $77
    ld h, c                                       ; $5C8B: $61
    ld a, c                                       ; $5C8C: $79
    jr nz, @+$76                                  ; $5C8D: $20 $74

    ld l, a                                       ; $5C8F: $6F
    jr nz, jr_018_5CF9                            ; $5C90: $20 $67

    ld h, l                                       ; $5C92: $65
    ld [hl], h                                    ; $5C93: $74
    cp $74                                        ; $5C94: $FE $74
    ld l, b                                       ; $5C96: $68
    ld h, l                                       ; $5C97: $65
    ld [hl], d                                    ; $5C98: $72

jr_018_5C99:
    ld h, l                                       ; $5C99: $65
    ld l, $FE                                     ; $5C9A: $2E $FE

jr_018_5C9C:
    db $FD                                        ; $5C9C: $FD
    ld e, b                                       ; $5C9D: $58
    add hl, hl                                    ; $5C9E: $29
    sbc e                                         ; $5C9F: $9B
    jr z, jr_018_5CFE                             ; $5CA0: $28 $5C

    sbc a                                         ; $5CA2: $9F
    ld l, $2E                                     ; $5CA3: $2E $2E
    ld l, $20                                     ; $5CA5: $2E $20
    ld c, c                                       ; $5CA7: $49

jr_018_5CA8:
    jr nz, jr_018_5D1D                            ; $5CA8: $20 $73

    ld h, l                                       ; $5CAA: $65
    ld h, l                                       ; $5CAB: $65
    ld l, $FE                                     ; $5CAC: $2E $FE

jr_018_5CAE:
    ld e, c                                       ; $5CAE: $59
    ld l, a                                       ; $5CAF: $6F
    ld [hl], l                                    ; $5CB0: $75
    jr nz, jr_018_5D14                            ; $5CB1: $20 $61

    ld [hl], d                                    ; $5CB3: $72
    ld h, l                                       ; $5CB4: $65
    jr nz, jr_018_5D25                            ; $5CB5: $20 $6E

    ld l, a                                       ; $5CB7: $6F
    ld [hl], h                                    ; $5CB8: $74
    jr nz, @+$63                                  ; $5CB9: $20 $61

    rst $38                                       ; $5CBB: $FF

jr_018_5CBC:
    ld h, e                                       ; $5CBC: $63
    ld l, b                                       ; $5CBD: $68
    ld l, c                                       ; $5CBE: $69
    ld l, h                                       ; $5CBF: $6C
    ld h, h                                       ; $5CC0: $64
    jr nz, @+$71                                  ; $5CC1: $20 $6F

    ld h, [hl]                                    ; $5CC3: $66
    cp $41                                        ; $5CC4: $FE $41
    ld h, a                                       ; $5CC6: $67
    ld h, c                                       ; $5CC7: $61
    ld h, h                                       ; $5CC8: $64
    ld l, a                                       ; $5CC9: $6F
    ld l, [hl]                                    ; $5CCA: $6E
    ld l, $FE                                     ; $5CCB: $2E $FE
    ld c, c                                       ; $5CCD: $49
    jr nz, jr_018_5D47                            ; $5CCE: $20 $77

jr_018_5CD0:
    ld l, c                                       ; $5CD0: $69
    ld l, h                                       ; $5CD1: $6C
    ld l, h                                       ; $5CD2: $6C

jr_018_5CD3:
    jr nz, @+$6E                                  ; $5CD3: $20 $6C

    ld h, l                                       ; $5CD5: $65
    ld h, c                                       ; $5CD6: $61
    halt                                          ; $5CD7: $76
    ld h, l                                       ; $5CD8: $65
    rst $38                                       ; $5CD9: $FF
    ld h, d                                       ; $5CDA: $62
    ld h, l                                       ; $5CDB: $65
    ld l, b                                       ; $5CDC: $68
    ld l, c                                       ; $5CDD: $69
    ld l, [hl]                                    ; $5CDE: $6E
    ld h, h                                       ; $5CDF: $64
    jr nz, jr_018_5D43                            ; $5CE0: $20 $61

    jr nz, jr_018_5D2B                            ; $5CE2: $20 $47

    ld l, c                                       ; $5CE4: $69

jr_018_5CE5:
    ld h, c                                       ; $5CE5: $61
    ld l, [hl]                                    ; $5CE6: $6E
    ld [hl], h                                    ; $5CE7: $74
    cp $50                                        ; $5CE8: $FE $50

jr_018_5CEA:
    ld h, c                                       ; $5CEA: $61
    ld [hl], d                                    ; $5CEB: $72
    ld h, c                                       ; $5CEC: $61
    ld [hl], h                                    ; $5CED: $74
    ld l, b                                       ; $5CEE: $68
    ld l, c                                       ; $5CEF: $69
    ld l, [hl]                                    ; $5CF0: $6E
    jr nz, jr_018_5D59                            ; $5CF1: $20 $66

    ld l, a                                       ; $5CF3: $6F
    ld [hl], d                                    ; $5CF4: $72
    rst $38                                       ; $5CF5: $FF
    ld a, c                                       ; $5CF6: $79
    ld l, a                                       ; $5CF7: $6F
    ld [hl], l                                    ; $5CF8: $75

jr_018_5CF9:
    inc l                                         ; $5CF9: $2C
    jr nz, jr_018_5D5E                            ; $5CFA: $20 $62

    ld [hl], l                                    ; $5CFC: $75
    ld [hl], h                                    ; $5CFD: $74

jr_018_5CFE:
    jr nz, jr_018_5D79                            ; $5CFE: $20 $79

    ld l, a                                       ; $5D00: $6F
    ld [hl], l                                    ; $5D01: $75
    cp $6D                                        ; $5D02: $FE $6D
    ld [hl], l                                    ; $5D04: $75
    ld [hl], e                                    ; $5D05: $73
    ld [hl], h                                    ; $5D06: $74
    jr nz, jr_018_5D79                            ; $5D07: $20 $70

    ld [hl], d                                    ; $5D09: $72
    ld l, a                                       ; $5D0A: $6F
    ld l, l                                       ; $5D0B: $6D
    ld l, c                                       ; $5D0C: $69
    ld [hl], e                                    ; $5D0D: $73
    ld h, l                                       ; $5D0E: $65
    rst $38                                       ; $5D0F: $FF
    ld l, l                                       ; $5D10: $6D
    ld h, l                                       ; $5D11: $65
    jr nz, jr_018_5D88                            ; $5D12: $20 $74

jr_018_5D14:
    ld l, b                                       ; $5D14: $68
    ld h, c                                       ; $5D15: $61
    ld [hl], h                                    ; $5D16: $74
    jr nz, jr_018_5D92                            ; $5D17: $20 $79

    ld l, a                                       ; $5D19: $6F
    ld [hl], l                                    ; $5D1A: $75
    cp $77                                        ; $5D1B: $FE $77

jr_018_5D1D:
    ld l, c                                       ; $5D1D: $69
    ld l, h                                       ; $5D1E: $6C
    ld l, h                                       ; $5D1F: $6C
    jr nz, jr_018_5D85                            ; $5D20: $20 $63

    ld l, h                                       ; $5D22: $6C
    ld l, a                                       ; $5D23: $6F
    ld [hl], e                                    ; $5D24: $73

jr_018_5D25:
    ld h, l                                       ; $5D25: $65
    jr nz, jr_018_5D9C                            ; $5D26: $20 $74

    ld l, b                                       ; $5D28: $68
    ld h, l                                       ; $5D29: $65
    rst $38                                       ; $5D2A: $FF

jr_018_5D2B:
    ld h, a                                       ; $5D2B: $67
    ld h, l                                       ; $5D2C: $65
    ld a, c                                       ; $5D2D: $79
    ld [hl], e                                    ; $5D2E: $73
    ld h, l                                       ; $5D2F: $65
    ld [hl], d                                    ; $5D30: $72
    jr nz, jr_018_5D94                            ; $5D31: $20 $61

    ld l, [hl]                                    ; $5D33: $6E
    ld h, h                                       ; $5D34: $64
    jr nz, jr_018_5DAB                            ; $5D35: $20 $74

    ld l, b                                       ; $5D37: $68
    ld h, l                                       ; $5D38: $65
    ld l, [hl]                                    ; $5D39: $6E
    cp $6C                                        ; $5D3A: $FE $6C
    ld h, l                                       ; $5D3C: $65
    ld h, c                                       ; $5D3D: $61
    halt                                          ; $5D3E: $76
    ld h, l                                       ; $5D3F: $65
    jr nz, jr_018_5DB1                            ; $5D40: $20 $6F

    ld [hl], l                                    ; $5D42: $75

jr_018_5D43:
    ld [hl], d                                    ; $5D43: $72
    jr nz, jr_018_5DBD                            ; $5D44: $20 $77

    ld l, a                                       ; $5D46: $6F

jr_018_5D47:
    ld [hl], d                                    ; $5D47: $72
    ld l, h                                       ; $5D48: $6C
    ld h, h                                       ; $5D49: $64
    rst $38                                       ; $5D4A: $FF
    ld h, c                                       ; $5D4B: $61
    ld [hl], e                                    ; $5D4C: $73
    jr nz, jr_018_5DC2                            ; $5D4D: $20 $73

    ld l, a                                       ; $5D4F: $6F
    ld l, a                                       ; $5D50: $6F
    ld l, [hl]                                    ; $5D51: $6E
    jr nz, jr_018_5DB5                            ; $5D52: $20 $61

    ld [hl], e                                    ; $5D54: $73
    cp $70                                        ; $5D55: $FE $70
    ld l, a                                       ; $5D57: $6F
    ld [hl], e                                    ; $5D58: $73

jr_018_5D59:
    ld [hl], e                                    ; $5D59: $73
    ld l, c                                       ; $5D5A: $69
    ld h, d                                       ; $5D5B: $62
    ld l, h                                       ; $5D5C: $6C
    ld h, l                                       ; $5D5D: $65

jr_018_5D5E:
    ld l, $FE                                     ; $5D5E: $2E $FE
    db $FD                                        ; $5D60: $FD
    sbc e                                         ; $5D61: $9B
    jr z, jr_018_5DA7                             ; $5D62: $28 $43

    sbc a                                         ; $5D64: $9F
    ld l, $2E                                     ; $5D65: $2E $2E
    ld l, $77                                     ; $5D67: $2E $77
    ld h, l                                       ; $5D69: $65
    ld l, h                                       ; $5D6A: $6C
    ld l, h                                       ; $5D6B: $6C
    inc l                                         ; $5D6C: $2C
    jr nz, jr_018_5DB8                            ; $5D6D: $20 $49

    rst $38                                       ; $5D6F: $FF
    ld h, a                                       ; $5D70: $67
    ld [hl], l                                    ; $5D71: $75
    ld h, l                                       ; $5D72: $65
    ld [hl], e                                    ; $5D73: $73
    ld [hl], e                                    ; $5D74: $73
    jr nz, jr_018_5DEB                            ; $5D75: $20 $74

    ld l, b                                       ; $5D77: $68
    ld h, c                                       ; $5D78: $61

jr_018_5D79:
    ld [hl], d                                    ; $5D79: $72
    daa                                           ; $5D7A: $27
    ld [hl], e                                    ; $5D7B: $73
    jr nz, jr_018_5DEC                            ; $5D7C: $20 $6E

    ld l, a                                       ; $5D7E: $6F
    cp $70                                        ; $5D7F: $FE $70
    ld l, a                                       ; $5D81: $6F
    ld l, c                                       ; $5D82: $69
    ld l, [hl]                                    ; $5D83: $6E
    ld [hl], h                                    ; $5D84: $74

jr_018_5D85:
    jr nz, @+$63                                  ; $5D85: $20 $61

    ld [hl], d                                    ; $5D87: $72

jr_018_5D88:
    ld h, a                                       ; $5D88: $67
    ld [hl], l                                    ; $5D89: $75
    ld l, c                                       ; $5D8A: $69
    ld l, [hl]                                    ; $5D8B: $6E
    daa                                           ; $5D8C: $27
    rst $38                                       ; $5D8D: $FF
    ld [hl], a                                    ; $5D8E: $77
    ld l, c                                       ; $5D8F: $69
    ld [hl], h                                    ; $5D90: $74
    ld l, b                                       ; $5D91: $68

jr_018_5D92:
    jr nz, jr_018_5E0D                            ; $5D92: $20 $79

jr_018_5D94:
    ld h, c                                       ; $5D94: $61
    cp $61                                        ; $5D95: $FE $61
    ld l, [hl]                                    ; $5D97: $6E
    ld a, c                                       ; $5D98: $79
    ld l, l                                       ; $5D99: $6D
    ld l, a                                       ; $5D9A: $6F
    ld [hl], d                                    ; $5D9B: $72

jr_018_5D9C:
    ld h, l                                       ; $5D9C: $65
    ld l, $2E                                     ; $5D9D: $2E $2E
    ld l, $20                                     ; $5D9F: $2E $20
    ld h, d                                       ; $5DA1: $62
    ld [hl], l                                    ; $5DA2: $75
    ld [hl], h                                    ; $5DA3: $74
    rst $38                                       ; $5DA4: $FF
    ld h, c                                       ; $5DA5: $61
    ld [hl], h                                    ; $5DA6: $74

jr_018_5DA7:
    jr nz, jr_018_5E15                            ; $5DA7: $20 $6C

    ld h, l                                       ; $5DA9: $65
    ld h, c                                       ; $5DAA: $61

jr_018_5DAB:
    ld [hl], e                                    ; $5DAB: $73
    ld [hl], h                                    ; $5DAC: $74
    jr nz, jr_018_5E1B                            ; $5DAD: $20 $6C

    ld h, l                                       ; $5DAF: $65
    ld [hl], h                                    ; $5DB0: $74

jr_018_5DB1:
    cp $73                                        ; $5DB1: $FE $73
    ld l, a                                       ; $5DB3: $6F
    ld l, l                                       ; $5DB4: $6D

jr_018_5DB5:
    ld h, l                                       ; $5DB5: $65
    ld l, a                                       ; $5DB6: $6F
    ld l, [hl]                                    ; $5DB7: $6E

jr_018_5DB8:
    ld h, l                                       ; $5DB8: $65
    jr nz, jr_018_5E2E                            ; $5DB9: $20 $73

    ld [hl], h                                    ; $5DBB: $74
    ld h, c                                       ; $5DBC: $61

jr_018_5DBD:
    ld a, c                                       ; $5DBD: $79
    rst $38                                       ; $5DBE: $FF
    ld h, d                                       ; $5DBF: $62
    ld h, l                                       ; $5DC0: $65
    ld l, b                                       ; $5DC1: $68

jr_018_5DC2:
    ld l, c                                       ; $5DC2: $69
    ld l, [hl]                                    ; $5DC3: $6E
    ld h, h                                       ; $5DC4: $64
    jr nz, jr_018_5E3B                            ; $5DC5: $20 $74

    ld h, c                                       ; $5DC7: $61
    jr nz, jr_018_5E32                            ; $5DC8: $20 $68

    ld h, l                                       ; $5DCA: $65
    ld l, h                                       ; $5DCB: $6C
    ld [hl], b                                    ; $5DCC: $70
    cp $54                                        ; $5DCD: $FE $54
    ld l, a                                       ; $5DCF: $6F
    ld l, [hl]                                    ; $5DD0: $6E
    ld h, l                                       ; $5DD1: $65
    ld a, c                                       ; $5DD2: $79
    jr nz, jr_018_5E44                            ; $5DD3: $20 $6F

    ld [hl], l                                    ; $5DD5: $75
    ld [hl], h                                    ; $5DD6: $74
    ld hl, $FDFE                                  ; $5DD7: $21 $FE $FD
    sbc e                                         ; $5DDA: $9B
    jr z, jr_018_5E39                             ; $5DDB: $28 $5C

    sbc a                                         ; $5DDD: $9F
    ld d, [hl]                                    ; $5DDE: $56
    ld h, l                                       ; $5DDF: $65
    ld [hl], d                                    ; $5DE0: $72
    ld a, c                                       ; $5DE1: $79
    jr nz, jr_018_5E5B                            ; $5DE2: $20 $77

    ld h, l                                       ; $5DE4: $65
    ld l, h                                       ; $5DE5: $6C
    ld l, h                                       ; $5DE6: $6C
    ld l, $FE                                     ; $5DE7: $2E $FE
    db $FD                                        ; $5DE9: $FD
    ld e, b                                       ; $5DEA: $58

jr_018_5DEB:
    ld a, [hl+]                                   ; $5DEB: $2A

jr_018_5DEC:
    sbc e                                         ; $5DEC: $9B
    jr z, jr_018_5E32                             ; $5DED: $28 $43

    sbc a                                         ; $5DEF: $9F
    ld c, h                                       ; $5DF0: $4C
    ld l, c                                       ; $5DF1: $69
    ld l, e                                       ; $5DF2: $6B
    ld h, l                                       ; $5DF3: $65
    jr nz, jr_018_5E63                            ; $5DF4: $20 $6D

    ld h, l                                       ; $5DF6: $65
    ld hl, $4920                                  ; $5DF7: $21 $20 $49
    jr nz, @+$79                                  ; $5DFA: $20 $77

    ld h, c                                       ; $5DFC: $61
    ld l, [hl]                                    ; $5DFD: $6E
    ld [hl], h                                    ; $5DFE: $74
    rst $38                                       ; $5DFF: $FF
    ld [hl], h                                    ; $5E00: $74
    ld l, a                                       ; $5E01: $6F
    jr nz, jr_018_5E6C                            ; $5E02: $20 $68

    ld h, l                                       ; $5E04: $65
    ld l, h                                       ; $5E05: $6C
    ld [hl], b                                    ; $5E06: $70
    ld hl, $FDFE                                  ; $5E07: $21 $FE $FD
    sbc e                                         ; $5E0A: $9B
    jr z, jr_018_5E69                             ; $5E0B: $28 $5C

jr_018_5E0D:
    sbc a                                         ; $5E0D: $9F
    ld c, [hl]                                    ; $5E0E: $4E
    ld l, a                                       ; $5E0F: $6F
    inc l                                         ; $5E10: $2C
    jr nz, jr_018_5E55                            ; $5E11: $20 $42

    ld l, h                                       ; $5E13: $6C
    ld [hl], l                                    ; $5E14: $75

jr_018_5E15:
    ld l, $FF                                     ; $5E15: $2E $FF
    ld e, c                                       ; $5E17: $59
    ld l, a                                       ; $5E18: $6F
    ld [hl], l                                    ; $5E19: $75
    ld [hl], d                                    ; $5E1A: $72

jr_018_5E1B:
    jr nz, jr_018_5E8B                            ; $5E1B: $20 $6E

    ld h, l                                       ; $5E1D: $65
    ld [hl], a                                    ; $5E1E: $77
    jr nz, @+$66                                  ; $5E1F: $20 $64

    ld [hl], l                                    ; $5E21: $75
    ld [hl], h                                    ; $5E22: $74
    ld a, c                                       ; $5E23: $79
    cp $61                                        ; $5E24: $FE $61
    ld [hl], e                                    ; $5E26: $73
    jr nz, jr_018_5E80                            ; $5E27: $20 $57

    ld h, l                                       ; $5E29: $65
    ld l, h                                       ; $5E2A: $6C
    ld l, h                                       ; $5E2B: $6C
    ld l, c                                       ; $5E2C: $69
    ld [hl], e                                    ; $5E2D: $73

jr_018_5E2E:
    ld l, e                                       ; $5E2E: $6B
    rst $38                                       ; $5E2F: $FF
    ld d, h                                       ; $5E30: $54
    ld [hl], d                                    ; $5E31: $72

jr_018_5E32:
    ld h, c                                       ; $5E32: $61
    ld l, c                                       ; $5E33: $69
    ld l, [hl]                                    ; $5E34: $6E
    ld h, l                                       ; $5E35: $65
    ld [hl], d                                    ; $5E36: $72
    jr nz, jr_018_5EB0                            ; $5E37: $20 $77

jr_018_5E39:
    ld l, c                                       ; $5E39: $69
    ld l, h                                       ; $5E3A: $6C

jr_018_5E3B:
    ld l, h                                       ; $5E3B: $6C
    cp $70                                        ; $5E3C: $FE $70
    ld [hl], d                                    ; $5E3E: $72
    ld h, l                                       ; $5E3F: $65
    halt                                          ; $5E40: $76
    ld h, l                                       ; $5E41: $65
    ld l, [hl]                                    ; $5E42: $6E
    ld [hl], h                                    ; $5E43: $74

jr_018_5E44:
    jr nz, jr_018_5EBF                            ; $5E44: $20 $79

    ld l, a                                       ; $5E46: $6F
    ld [hl], l                                    ; $5E47: $75
    rst $38                                       ; $5E48: $FF
    ld h, [hl]                                    ; $5E49: $66
    ld [hl], d                                    ; $5E4A: $72
    ld l, a                                       ; $5E4B: $6F
    ld l, l                                       ; $5E4C: $6D
    jr nz, @+$75                                  ; $5E4D: $20 $73

    ld [hl], h                                    ; $5E4F: $74
    ld h, c                                       ; $5E50: $61
    ld a, c                                       ; $5E51: $79
    ld l, c                                       ; $5E52: $69
    ld l, [hl]                                    ; $5E53: $6E
    ld h, a                                       ; $5E54: $67

jr_018_5E55:
    ld l, $FE                                     ; $5E55: $2E $FE
    db $FD                                        ; $5E57: $FD
    sbc e                                         ; $5E58: $9B
    jr z, jr_018_5E9E                             ; $5E59: $28 $43

jr_018_5E5B:
    sbc a                                         ; $5E5B: $9F
    ld b, c                                       ; $5E5C: $41
    ld [hl], d                                    ; $5E5D: $72
    ld [hl], d                                    ; $5E5E: $72
    ld l, $2E                                     ; $5E5F: $2E $2E
    ld l, $20                                     ; $5E61: $2E $20

jr_018_5E63:
    ld h, h                                       ; $5E63: $64
    ld h, c                                       ; $5E64: $61
    ld l, [hl]                                    ; $5E65: $6E
    ld h, a                                       ; $5E66: $67
    jr nz, jr_018_5ED2                            ; $5E67: $20 $69

jr_018_5E69:
    ld [hl], h                                    ; $5E69: $74
    ld l, $FE                                     ; $5E6A: $2E $FE

jr_018_5E6C:
    db $FD                                        ; $5E6C: $FD
    sbc d                                         ; $5E6D: $9A
    ld e, b                                       ; $5E6E: $58
    inc b                                         ; $5E6F: $04
    ld b, d                                       ; $5E70: $42
    sbc e                                         ; $5E71: $9B
    ld hl, sp+$63                                 ; $5E72: $F8 $63
    sbc a                                         ; $5E74: $9F
    ld c, b                                       ; $5E75: $48
    ld l, a                                       ; $5E76: $6F
    ld [hl], a                                    ; $5E77: $77
    ld h, h                                       ; $5E78: $64
    ld a, c                                       ; $5E79: $79
    jr nz, jr_018_5EE1                            ; $5E7A: $20 $65

    halt                                          ; $5E7C: $76
    ld h, l                                       ; $5E7D: $65
    ld [hl], d                                    ; $5E7E: $72
    ld a, c                                       ; $5E7F: $79

jr_018_5E80:
    ld l, a                                       ; $5E80: $6F
    ld l, [hl]                                    ; $5E81: $6E
    ld h, l                                       ; $5E82: $65
    ld hl, $FDFE                                  ; $5E83: $21 $FE $FD
    ld b, b                                       ; $5E86: $40
    db $10                                        ; $5E87: $10
    ld e, b                                       ; $5E88: $58
    inc sp                                        ; $5E89: $33
    ld b, b                                       ; $5E8A: $40

jr_018_5E8B:
    jr nz, @-$63                                  ; $5E8B: $20 $9B

    jr z, @+$5E                                   ; $5E8D: $28 $5C

    sbc a                                         ; $5E8F: $9F
    ld c, a                                       ; $5E90: $4F
    ld [hl], d                                    ; $5E91: $72
    ld l, h                                       ; $5E92: $6C
    ld l, a                                       ; $5E93: $6F
    ld l, [hl]                                    ; $5E94: $6E
    ld hl, $FE21                                  ; $5E95: $21 $21 $FE
    ld h, l                                       ; $5E98: $65
    ld [hl], d                                    ; $5E99: $72
    ld l, $2E                                     ; $5E9A: $2E $2E
    ld l, $FE                                     ; $5E9C: $2E $FE

jr_018_5E9E:
    ld c, b                                       ; $5E9E: $48
    ld l, a                                       ; $5E9F: $6F
    ld [hl], a                                    ; $5EA0: $77
    rst $38                                       ; $5EA1: $FF
    ld h, [hl]                                    ; $5EA2: $66
    ld l, a                                       ; $5EA3: $6F
    ld [hl], d                                    ; $5EA4: $72
    ld [hl], h                                    ; $5EA5: $74
    ld [hl], l                                    ; $5EA6: $75
    ld l, c                                       ; $5EA7: $69
    ld [hl], h                                    ; $5EA8: $74
    ld l, a                                       ; $5EA9: $6F
    ld [hl], l                                    ; $5EAA: $75
    ld [hl], e                                    ; $5EAB: $73
    ld hl, $FDFE                                  ; $5EAC: $21 $FE $FD
    sbc e                                         ; $5EAF: $9B

jr_018_5EB0:
    ld hl, sp+$63                                 ; $5EB0: $F8 $63
    sbc a                                         ; $5EB2: $9F
    ld d, l                                       ; $5EB3: $55
    ld [hl], b                                    ; $5EB4: $70
    jr nz, jr_018_5F2B                            ; $5EB5: $20 $74

    ld l, a                                       ; $5EB7: $6F
    jr nz, jr_018_5F33                            ; $5EB8: $20 $79

    ld l, a                                       ; $5EBA: $6F
    ld [hl], l                                    ; $5EBB: $75
    ld [hl], d                                    ; $5EBC: $72
    rst $38                                       ; $5EBD: $FF
    ld l, a                                       ; $5EBE: $6F

jr_018_5EBF:
    ld l, h                                       ; $5EBF: $6C
    ld h, h                                       ; $5EC0: $64
    jr nz, jr_018_5F26                            ; $5EC1: $20 $63

    ld l, h                                       ; $5EC3: $6C
    ld l, a                                       ; $5EC4: $6F
    ld h, c                                       ; $5EC5: $61
    ld l, e                                       ; $5EC6: $6B
    jr nz, jr_018_5F2A                            ; $5EC7: $20 $61

    ld l, [hl]                                    ; $5EC9: $6E
    ld h, h                                       ; $5ECA: $64
    cp $64                                        ; $5ECB: $FE $64
    ld h, c                                       ; $5ECD: $61
    ld h, a                                       ; $5ECE: $67
    ld h, a                                       ; $5ECF: $67
    ld h, l                                       ; $5ED0: $65
    ld [hl], d                                    ; $5ED1: $72

jr_018_5ED2:
    ld l, c                                       ; $5ED2: $69
    ld l, [hl]                                    ; $5ED3: $6E
    ld h, a                                       ; $5ED4: $67
    inc l                                         ; $5ED5: $2C
    jr nz, jr_018_5F3D                            ; $5ED6: $20 $65

    ld l, b                                       ; $5ED8: $68
    rst $38                                       ; $5ED9: $FF
    ld c, l                                       ; $5EDA: $4D
    ld l, a                                       ; $5EDB: $6F
    ld h, d                                       ; $5EDC: $62
    ld a, c                                       ; $5EDD: $79
    ccf                                           ; $5EDE: $3F
    jr nz, jr_018_5F29                            ; $5EDF: $20 $48

jr_018_5EE1:
    ld h, l                                       ; $5EE1: $65
    ld l, b                                       ; $5EE2: $68
    ld h, l                                       ; $5EE3: $65
    ld l, $2E                                     ; $5EE4: $2E $2E
    ld l, $FE                                     ; $5EE6: $2E $FE
    db $FD                                        ; $5EE8: $FD
    sbc e                                         ; $5EE9: $9B
    jr z, jr_018_5F48                             ; $5EEA: $28 $5C

    sbc a                                         ; $5EEC: $9F
    ld d, a                                       ; $5EED: $57
    ld h, l                                       ; $5EEE: $65
    ld l, $2E                                     ; $5EEF: $2E $2E
    ld l, $20                                     ; $5EF1: $2E $20
    ld [hl], a                                    ; $5EF3: $77
    ld h, l                                       ; $5EF4: $65
    jr nz, jr_018_5F6E                            ; $5EF5: $20 $77

    ld h, l                                       ; $5EF7: $65
    ld [hl], d                                    ; $5EF8: $72
    ld h, l                                       ; $5EF9: $65
    rst $38                                       ; $5EFA: $FF
    ld l, d                                       ; $5EFB: $6A
    ld [hl], l                                    ; $5EFC: $75
    ld [hl], e                                    ; $5EFD: $73
    ld [hl], h                                    ; $5EFE: $74
    jr nz, jr_018_5F6D                            ; $5EFF: $20 $6C

    ld h, l                                       ; $5F01: $65
    ld h, c                                       ; $5F02: $61
    halt                                          ; $5F03: $76
    ld l, c                                       ; $5F04: $69
    ld l, [hl]                                    ; $5F05: $6E
    ld h, a                                       ; $5F06: $67
    cp $74                                        ; $5F07: $FE $74
    ld l, b                                       ; $5F09: $68
    ld h, l                                       ; $5F0A: $65
    ld [hl], e                                    ; $5F0B: $73
    ld h, l                                       ; $5F0C: $65
    jr nz, jr_018_5F86                            ; $5F0D: $20 $77

    ld h, c                                       ; $5F0F: $61
    ld [hl], h                                    ; $5F10: $74
    ld h, l                                       ; $5F11: $65
    ld [hl], d                                    ; $5F12: $72
    ld [hl], e                                    ; $5F13: $73
    ld hl, $FDFE                                  ; $5F14: $21 $FE $FD
    sbc e                                         ; $5F17: $9B
    ld hl, sp+$63                                 ; $5F18: $F8 $63
    sbc a                                         ; $5F1A: $9F
    ld d, h                                       ; $5F1B: $54
    ld l, b                                       ; $5F1C: $68
    ld h, c                                       ; $5F1D: $61
    ld [hl], h                                    ; $5F1E: $74
    daa                                           ; $5F1F: $27
    ld [hl], e                                    ; $5F20: $73
    rst $38                                       ; $5F21: $FF
    ld l, c                                       ; $5F22: $69
    ld l, [hl]                                    ; $5F23: $6E
    ld [hl], h                                    ; $5F24: $74
    ld h, l                                       ; $5F25: $65

jr_018_5F26:
    ld [hl], d                                    ; $5F26: $72
    ld h, l                                       ; $5F27: $65
    ld [hl], e                                    ; $5F28: $73

jr_018_5F29:
    ld [hl], h                                    ; $5F29: $74

jr_018_5F2A:
    ld l, c                                       ; $5F2A: $69

jr_018_5F2B:
    ld l, [hl]                                    ; $5F2B: $6E
    ld h, a                                       ; $5F2C: $67
    ld l, $FE                                     ; $5F2D: $2E $FE
    db $FD                                        ; $5F2F: $FD
    sbc e                                         ; $5F30: $9B
    jr z, jr_018_5F8F                             ; $5F31: $28 $5C

jr_018_5F33:
    sbc a                                         ; $5F33: $9F
    ld c, c                                       ; $5F34: $49
    jr nz, jr_018_5FA5                            ; $5F35: $20 $6E

    ld h, l                                       ; $5F37: $65
    ld h, l                                       ; $5F38: $65
    ld h, h                                       ; $5F39: $64
    jr nz, jr_018_5FB5                            ; $5F3A: $20 $79

    ld l, a                                       ; $5F3C: $6F

jr_018_5F3D:
    ld [hl], l                                    ; $5F3D: $75
    ld [hl], d                                    ; $5F3E: $72
    rst $38                                       ; $5F3F: $FF
    ld l, b                                       ; $5F40: $68
    ld h, l                                       ; $5F41: $65
    ld l, h                                       ; $5F42: $6C
    ld [hl], b                                    ; $5F43: $70
    ld l, $FE                                     ; $5F44: $2E $FE
    db $FD                                        ; $5F46: $FD
    sbc e                                         ; $5F47: $9B

jr_018_5F48:
    ld hl, sp+$63                                 ; $5F48: $F8 $63
    sbc a                                         ; $5F4A: $9F
    ld c, b                                       ; $5F4B: $48
    ld h, l                                       ; $5F4C: $65
    ld l, h                                       ; $5F4D: $6C
    ld [hl], b                                    ; $5F4E: $70
    ccf                                           ; $5F4F: $3F
    jr nz, @+$5B                                  ; $5F50: $20 $59

    ld l, a                                       ; $5F52: $6F
    ld [hl], l                                    ; $5F53: $75
    ccf                                           ; $5F54: $3F
    cp $FD                                        ; $5F55: $FE $FD
    sbc e                                         ; $5F57: $9B
    jr z, jr_018_5FB6                             ; $5F58: $28 $5C

    sbc a                                         ; $5F5A: $9F
    ld d, h                                       ; $5F5B: $54
    ld l, b                                       ; $5F5C: $68
    ld l, c                                       ; $5F5D: $69
    ld [hl], e                                    ; $5F5E: $73
    jr nz, @+$6B                                  ; $5F5F: $20 $69

    ld [hl], e                                    ; $5F61: $73
    jr nz, jr_018_5FB8                            ; $5F62: $20 $54

    ld l, a                                       ; $5F64: $6F
    ld l, [hl]                                    ; $5F65: $6E
    ld a, c                                       ; $5F66: $79
    ld l, $FF                                     ; $5F67: $2E $FF
    ld c, b                                       ; $5F69: $48
    ld h, l                                       ; $5F6A: $65
    jr nz, jr_018_5FE4                            ; $5F6B: $20 $77

jr_018_5F6D:
    ld l, c                                       ; $5F6D: $69

jr_018_5F6E:
    ld [hl], e                                    ; $5F6E: $73
    ld l, b                                       ; $5F6F: $68
    ld h, l                                       ; $5F70: $65
    ld [hl], e                                    ; $5F71: $73
    jr nz, jr_018_5FE8                            ; $5F72: $20 $74

    ld l, a                                       ; $5F74: $6F
    cp $63                                        ; $5F75: $FE $63
    ld l, h                                       ; $5F77: $6C
    ld l, a                                       ; $5F78: $6F
    ld [hl], e                                    ; $5F79: $73
    ld h, l                                       ; $5F7A: $65
    jr nz, jr_018_5FF1                            ; $5F7B: $20 $74

    ld l, b                                       ; $5F7D: $68
    ld h, l                                       ; $5F7E: $65
    rst $38                                       ; $5F7F: $FF
    ld d, e                                       ; $5F80: $53
    ld l, b                                       ; $5F81: $68
    ld h, c                                       ; $5F82: $61
    ld h, h                                       ; $5F83: $64
    ld l, a                                       ; $5F84: $6F
    ld [hl], a                                    ; $5F85: $77

jr_018_5F86:
    jr nz, jr_018_5FCF                            ; $5F86: $20 $47

    ld h, l                                       ; $5F88: $65
    ld a, c                                       ; $5F89: $79
    ld [hl], e                                    ; $5F8A: $73
    ld h, l                                       ; $5F8B: $65
    ld [hl], d                                    ; $5F8C: $72
    ld l, $FE                                     ; $5F8D: $2E $FE

jr_018_5F8F:
    db $FD                                        ; $5F8F: $FD
    sbc e                                         ; $5F90: $9B
    ld hl, sp+$63                                 ; $5F91: $F8 $63
    sbc a                                         ; $5F93: $9F
    ld c, c                                       ; $5F94: $49
    jr nz, jr_018_6002                            ; $5F95: $20 $6B

    ld l, [hl]                                    ; $5F97: $6E
    ld l, a                                       ; $5F98: $6F
    ld [hl], a                                    ; $5F99: $77
    ld l, $FE                                     ; $5F9A: $2E $FE
    db $FD                                        ; $5F9C: $FD
    sbc e                                         ; $5F9D: $9B
    jr z, jr_018_5FFC                             ; $5F9E: $28 $5C

    sbc a                                         ; $5FA0: $9F
    ld l, $2E                                     ; $5FA1: $2E $2E
    ld l, $FE                                     ; $5FA3: $2E $FE

jr_018_5FA5:
    ld d, a                                       ; $5FA5: $57
    ld l, a                                       ; $5FA6: $6F
    ld [hl], l                                    ; $5FA7: $75
    ld l, h                                       ; $5FA8: $6C
    ld h, h                                       ; $5FA9: $64
    jr nz, @+$7B                                  ; $5FAA: $20 $79

    ld l, a                                       ; $5FAC: $6F
    ld [hl], l                                    ; $5FAD: $75
    jr nz, jr_018_601F                            ; $5FAE: $20 $6F

    ld h, [hl]                                    ; $5FB0: $66
    ld h, [hl]                                    ; $5FB1: $66
    ld h, l                                       ; $5FB2: $65
    ld [hl], d                                    ; $5FB3: $72
    rst $38                                       ; $5FB4: $FF

jr_018_5FB5:
    ld l, b                                       ; $5FB5: $68

jr_018_5FB6:
    ld l, c                                       ; $5FB6: $69
    ld l, l                                       ; $5FB7: $6D

jr_018_5FB8:
    jr nz, jr_018_6033                            ; $5FB8: $20 $79

    ld l, a                                       ; $5FBA: $6F
    ld [hl], l                                    ; $5FBB: $75
    ld [hl], d                                    ; $5FBC: $72
    jr nz, jr_018_6032                            ; $5FBD: $20 $73

    ld l, e                                       ; $5FBF: $6B
    ld l, c                                       ; $5FC0: $69
    ld l, h                                       ; $5FC1: $6C
    ld l, h                                       ; $5FC2: $6C
    ld [hl], e                                    ; $5FC3: $73
    cp $61                                        ; $5FC4: $FE $61
    ld [hl], e                                    ; $5FC6: $73
    jr nz, jr_018_602A                            ; $5FC7: $20 $61

    jr nz, jr_018_601D                            ; $5FC9: $20 $52

    ld l, c                                       ; $5FCB: $69
    ld l, [hl]                                    ; $5FCC: $6E
    ld h, a                                       ; $5FCD: $67
    ld [hl], e                                    ; $5FCE: $73

jr_018_5FCF:
    ld l, l                                       ; $5FCF: $6D
    ld l, c                                       ; $5FD0: $69
    ld [hl], h                                    ; $5FD1: $74
    ld l, b                                       ; $5FD2: $68
    ccf                                           ; $5FD3: $3F
    cp $FD                                        ; $5FD4: $FE $FD
    sbc e                                         ; $5FD6: $9B
    ld hl, sp+$63                                 ; $5FD7: $F8 $63
    sbc a                                         ; $5FD9: $9F
    ld b, c                                       ; $5FDA: $41
    ld [hl], e                                    ; $5FDB: $73
    jr nz, @+$7B                                  ; $5FDC: $20 $79

    ld l, a                                       ; $5FDE: $6F
    ld [hl], l                                    ; $5FDF: $75
    jr nz, jr_018_6043                            ; $5FE0: $20 $61

    ld [hl], d                                    ; $5FE2: $72
    ld h, l                                       ; $5FE3: $65

jr_018_5FE4:
    rst $38                                       ; $5FE4: $FF
    ld h, h                                       ; $5FE5: $64
    ld h, l                                       ; $5FE6: $65
    ld [hl], b                                    ; $5FE7: $70

jr_018_5FE8:
    ld h, c                                       ; $5FE8: $61
    ld [hl], d                                    ; $5FE9: $72
    ld [hl], h                                    ; $5FEA: $74
    ld l, c                                       ; $5FEB: $69
    ld l, [hl]                                    ; $5FEC: $6E
    ld h, a                                       ; $5FED: $67
    inc l                                         ; $5FEE: $2C
    jr nz, jr_018_605A                            ; $5FEF: $20 $69

jr_018_5FF1:
    ld [hl], h                                    ; $5FF1: $74
    cp $77                                        ; $5FF2: $FE $77
    ld l, a                                       ; $5FF4: $6F
    ld [hl], l                                    ; $5FF5: $75
    ld l, h                                       ; $5FF6: $6C
    ld h, h                                       ; $5FF7: $64
    jr nz, jr_018_606D                            ; $5FF8: $20 $73

    ld h, l                                       ; $5FFA: $65
    ld h, l                                       ; $5FFB: $65

jr_018_5FFC:
    ld l, l                                       ; $5FFC: $6D
    rst $38                                       ; $5FFD: $FF
    ld [hl], h                                    ; $5FFE: $74
    ld l, b                                       ; $5FFF: $68
    ld h, c                                       ; $6000: $61
    ld [hl], h                                    ; $6001: $74

jr_018_6002:
    jr nz, jr_018_604D                            ; $6002: $20 $49

    jr nz, jr_018_6073                            ; $6004: $20 $6D

    ld [hl], l                                    ; $6006: $75
    ld [hl], e                                    ; $6007: $73
    ld [hl], h                                    ; $6008: $74
    ld l, $FE                                     ; $6009: $2E $FE
    db $FD                                        ; $600B: $FD
    ld b, b                                       ; $600C: $40
    jr nz, jr_018_6067                            ; $600D: $20 $58

    inc [hl]                                      ; $600F: $34
    sbc a                                         ; $6010: $9F
    ld d, e                                       ; $6011: $53
    ld h, l                                       ; $6012: $65
    ld h, l                                       ; $6013: $65
    jr nz, jr_018_608F                            ; $6014: $20 $79

    ld l, a                                       ; $6016: $6F
    ld [hl], l                                    ; $6017: $75
    jr nz, jr_018_608D                            ; $6018: $20 $73

    ld l, a                                       ; $601A: $6F
    ld l, a                                       ; $601B: $6F
    ld l, [hl]                                    ; $601C: $6E

jr_018_601D:
    inc l                                         ; $601D: $2C
    rst $38                                       ; $601E: $FF

jr_018_601F:
    ld h, d                                       ; $601F: $62
    ld [hl], l                                    ; $6020: $75
    ld h, h                                       ; $6021: $64
    ld h, h                                       ; $6022: $64
    ld a, c                                       ; $6023: $79
    ld l, $FE                                     ; $6024: $2E $FE
    db $FD                                        ; $6026: $FD
    sbc d                                         ; $6027: $9A
    ld e, b                                       ; $6028: $58
    dec b                                         ; $6029: $05

jr_018_602A:
    ld b, d                                       ; $602A: $42
    sbc e                                         ; $602B: $9B
    ld a, b                                       ; $602C: $78
    ld [hl], b                                    ; $602D: $70
    sbc a                                         ; $602E: $9F
    ld c, b                                       ; $602F: $48
    ld l, c                                       ; $6030: $69
    ld l, l                                       ; $6031: $6D

jr_018_6032:
    ccf                                           ; $6032: $3F

jr_018_6033:
    cp $FD                                        ; $6033: $FE $FD
    sbc e                                         ; $6035: $9B
    jr z, jr_018_607B                             ; $6036: $28 $43

    sbc a                                         ; $6038: $9F
    ld b, e                                       ; $6039: $43
    ld h, c                                       ; $603A: $61
    ld l, [hl]                                    ; $603B: $6E
    daa                                           ; $603C: $27
    ld [hl], h                                    ; $603D: $74
    jr nz, jr_018_60B9                            ; $603E: $20 $79

    ld h, l                                       ; $6040: $65
    jr nz, jr_018_60A7                            ; $6041: $20 $64

jr_018_6043:
    ld l, a                                       ; $6043: $6F
    rst $38                                       ; $6044: $FF
    ld h, d                                       ; $6045: $62
    ld h, l                                       ; $6046: $65
    ld [hl], h                                    ; $6047: $74
    ld [hl], h                                    ; $6048: $74
    ld h, l                                       ; $6049: $65
    ld [hl], d                                    ; $604A: $72
    jr nz, @+$76                                  ; $604B: $20 $74

jr_018_604D:
    ld l, b                                       ; $604D: $68
    ld h, c                                       ; $604E: $61
    ld l, [hl]                                    ; $604F: $6E
    cp $74                                        ; $6050: $FE $74
    ld l, b                                       ; $6052: $68
    ld h, c                                       ; $6053: $61
    ld [hl], h                                    ; $6054: $74
    inc l                                         ; $6055: $2C
    jr nz, jr_018_60A5                            ; $6056: $20 $4D

    ld l, a                                       ; $6058: $6F
    ld h, d                                       ; $6059: $62

jr_018_605A:
    ld l, c                                       ; $605A: $69
    ld [hl], e                                    ; $605B: $73
    ccf                                           ; $605C: $3F
    cp $FD                                        ; $605D: $FE $FD
    sbc e                                         ; $605F: $9B
    jr z, jr_018_60BE                             ; $6060: $28 $5C

    sbc a                                         ; $6062: $9F
    ld c, b                                       ; $6063: $48
    ld h, l                                       ; $6064: $65
    daa                                           ; $6065: $27
    ld l, h                                       ; $6066: $6C

jr_018_6067:
    ld l, h                                       ; $6067: $6C
    jr nz, jr_018_60D2                            ; $6068: $20 $68

    ld h, c                                       ; $606A: $61
    halt                                          ; $606B: $76
    ld h, l                                       ; $606C: $65

jr_018_606D:
    jr nz, jr_018_60E3                            ; $606D: $20 $74

    ld l, a                                       ; $606F: $6F
    rst $38                                       ; $6070: $FF
    ld h, h                                       ; $6071: $64
    ld l, a                                       ; $6072: $6F

jr_018_6073:
    ld l, $FE                                     ; $6073: $2E $FE
    ld c, [hl]                                    ; $6075: $4E
    ld l, a                                       ; $6076: $6F
    ld [hl], a                                    ; $6077: $77
    inc l                                         ; $6078: $2C
    jr nz, jr_018_60E4                            ; $6079: $20 $69

jr_018_607B:
    ld h, [hl]                                    ; $607B: $66
    rst $38                                       ; $607C: $FF
    ld a, c                                       ; $607D: $79
    ld l, a                                       ; $607E: $6F
    ld [hl], l                                    ; $607F: $75
    daa                                           ; $6080: $27
    ld l, h                                       ; $6081: $6C
    ld l, h                                       ; $6082: $6C
    jr nz, jr_018_60EA                            ; $6083: $20 $65

    ld a, b                                       ; $6085: $78
    ld h, e                                       ; $6086: $63
    ld [hl], l                                    ; $6087: $75
    ld [hl], e                                    ; $6088: $73
    ld h, l                                       ; $6089: $65
    inc l                                         ; $608A: $2C
    cp $6D                                        ; $608B: $FE $6D

jr_018_608D:
    ld h, l                                       ; $608D: $65
    inc l                                         ; $608E: $2C

jr_018_608F:
    jr nz, @+$4B                                  ; $608F: $20 $49

    jr nz, jr_018_6100                            ; $6091: $20 $6D

    ld [hl], l                                    ; $6093: $75
    ld [hl], e                                    ; $6094: $73
    ld [hl], h                                    ; $6095: $74
    rst $38                                       ; $6096: $FF
    ld h, e                                       ; $6097: $63
    ld l, a                                       ; $6098: $6F
    ld l, [hl]                                    ; $6099: $6E
    ld [hl], h                                    ; $609A: $74
    ld l, c                                       ; $609B: $69
    ld l, [hl]                                    ; $609C: $6E
    ld [hl], l                                    ; $609D: $75
    ld h, l                                       ; $609E: $65
    jr nz, @+$76                                  ; $609F: $20 $74

    ld l, b                                       ; $60A1: $68
    ld h, l                                       ; $60A2: $65
    cp $70                                        ; $60A3: $FE $70

jr_018_60A5:
    ld [hl], d                                    ; $60A5: $72
    ld h, l                                       ; $60A6: $65

jr_018_60A7:
    ld [hl], b                                    ; $60A7: $70
    ld h, c                                       ; $60A8: $61
    ld [hl], d                                    ; $60A9: $72
    ld h, c                                       ; $60AA: $61
    ld [hl], h                                    ; $60AB: $74
    ld l, c                                       ; $60AC: $69
    ld l, a                                       ; $60AD: $6F
    ld l, [hl]                                    ; $60AE: $6E
    ld [hl], e                                    ; $60AF: $73
    ld l, $FE                                     ; $60B0: $2E $FE
    db $FD                                        ; $60B2: $FD
    sbc e                                         ; $60B3: $9B
    ld a, b                                       ; $60B4: $78
    ld [hl], b                                    ; $60B5: $70
    sbc a                                         ; $60B6: $9F
    ld d, h                                       ; $60B7: $54
    ld l, b                                       ; $60B8: $68

jr_018_60B9:
    ld h, c                                       ; $60B9: $61
    ld l, [hl]                                    ; $60BA: $6E
    ld l, e                                       ; $60BB: $6B
    jr nz, jr_018_6137                            ; $60BC: $20 $79

jr_018_60BE:
    ld l, a                                       ; $60BE: $6F
    ld [hl], l                                    ; $60BF: $75
    ld l, $FE                                     ; $60C0: $2E $FE
    db $FD                                        ; $60C2: $FD
    ld e, b                                       ; $60C3: $58
    dec a                                         ; $60C4: $3D
    sbc e                                         ; $60C5: $9B
    jr z, @+$45                                   ; $60C6: $28 $43

    sbc a                                         ; $60C8: $9F
    ld b, a                                       ; $60C9: $47
    ld l, a                                       ; $60CA: $6F
    ld l, a                                       ; $60CB: $6F
    ld h, h                                       ; $60CC: $64
    jr nz, jr_018_613B                            ; $60CD: $20 $6C

    ld [hl], l                                    ; $60CF: $75
    ld h, e                                       ; $60D0: $63
    ld l, e                                       ; $60D1: $6B

jr_018_60D2:
    jr nz, @+$76                                  ; $60D2: $20 $74

    ld l, a                                       ; $60D4: $6F
    rst $38                                       ; $60D5: $FF
    ld a, c                                       ; $60D6: $79
    ld h, l                                       ; $60D7: $65
    inc l                                         ; $60D8: $2C
    jr nz, jr_018_612F                            ; $60D9: $20 $54

jr_018_60DB:
    ld l, a                                       ; $60DB: $6F
    ld l, [hl]                                    ; $60DC: $6E
    ld h, l                                       ; $60DD: $65
    ld a, c                                       ; $60DE: $79
    ld l, $FE                                     ; $60DF: $2E $FE
    db $FD                                        ; $60E1: $FD
    sbc d                                         ; $60E2: $9A

jr_018_60E3:
    ld e, b                                       ; $60E3: $58

jr_018_60E4:
    ld b, $42                                     ; $60E4: $06 $42
    sbc e                                         ; $60E6: $9B
    jr z, jr_018_612C                             ; $60E7: $28 $43

    sbc a                                         ; $60E9: $9F

jr_018_60EA:
    ld b, a                                       ; $60EA: $47
    ld l, a                                       ; $60EB: $6F
    ld l, a                                       ; $60EC: $6F
    ld h, h                                       ; $60ED: $64
    jr nz, jr_018_615C                            ; $60EE: $20 $6C

    ld [hl], l                                    ; $60F0: $75
    ld h, e                                       ; $60F1: $63
    ld l, e                                       ; $60F2: $6B
    jr nz, jr_018_6169                            ; $60F3: $20 $74

    ld l, a                                       ; $60F5: $6F
    rst $38                                       ; $60F6: $FF
    ld a, c                                       ; $60F7: $79
    ld h, l                                       ; $60F8: $65
    inc l                                         ; $60F9: $2C
    jr nz, jr_018_6150                            ; $60FA: $20 $54

    ld l, a                                       ; $60FC: $6F
    ld l, [hl]                                    ; $60FD: $6E
    ld h, l                                       ; $60FE: $65
    ld a, c                                       ; $60FF: $79

jr_018_6100:
    ld l, $FE                                     ; $6100: $2E $FE
    db $FD                                        ; $6102: $FD
    sbc d                                         ; $6103: $9A
    ld e, b                                       ; $6104: $58
    ld bc, $4342                                  ; $6105: $01 $42 $43
    rrca                                          ; $6108: $0F
    ld bc, $A224                                  ; $6109: $01 $24 $A2
    dec b                                         ; $610C: $05
    nop                                           ; $610D: $00
    jr jr_018_6186                                ; $610E: $18 $76

    ld h, c                                       ; $6110: $61
    sub e                                         ; $6111: $93
    ld h, l                                       ; $6112: $65
    ld bc, $4F4E                                  ; $6113: $01 $4E $4F
    ld h, h                                       ; $6116: $64
    ld b, b                                       ; $6117: $40
    ld d, d                                       ; $6118: $52
    ld h, [hl]                                    ; $6119: $66
    ret nz                                        ; $611A: $C0

    ld e, h                                       ; $611B: $5C
    ld hl, $0005                                  ; $611C: $21 $05 $00
    add c                                         ; $611F: $81
    ld e, l                                       ; $6120: $5D
    dec b                                         ; $6121: $05
    dec b                                         ; $6122: $05

jr_018_6123:
    ld l, c                                       ; $6123: $69
    ret nc                                        ; $6124: $D0

    nop                                           ; $6125: $00
    jr nz, jr_018_6123                            ; $6126: $20 $FB

    ld d, b                                       ; $6128: $50
    ld [hl+], a                                   ; $6129: $22
    dec b                                         ; $612A: $05
    ld b, b                                       ; $612B: $40

jr_018_612C:
    dec b                                         ; $612C: $05
    ld [bc], a                                    ; $612D: $02
    db $ED                                        ; $612E: $ED

jr_018_612F:
    ld h, e                                       ; $612F: $63
    add hl, bc                                    ; $6130: $09
    dec b                                         ; $6131: $05
    ld l, l                                       ; $6132: $6D
    ret nc                                        ; $6133: $D0

    nop                                           ; $6134: $00
    rrca                                          ; $6135: $0F
    db $10                                        ; $6136: $10

jr_018_6137:
    ld b, d                                       ; $6137: $42
    jr jr_018_61A0                                ; $6138: $18 $66

    ld h, c                                       ; $613A: $61

jr_018_613B:
    dec b                                         ; $613B: $05
    inc bc                                        ; $613C: $03
    db $ED                                        ; $613D: $ED
    ld h, e                                       ; $613E: $63
    dec b                                         ; $613F: $05
    ld [$D0A5], sp                                ; $6140: $08 $A5 $D0
    ld [hl+], a                                   ; $6143: $22
    ld c, $8F                                     ; $6144: $0E $8F
    ld c, e                                       ; $6146: $4B
    jr jr_018_61B7                                ; $6147: $18 $6E

    ld h, c                                       ; $6149: $61
    ld l, e                                       ; $614A: $6B
    ld [hl+], a                                   ; $614B: $22
    ld a, [bc]                                    ; $614C: $0A
    ld d, b                                       ; $614D: $50
    ld l, c                                       ; $614E: $69
    nop                                           ; $614F: $00

jr_018_6150:
    add b                                         ; $6150: $80
    nop                                           ; $6151: $00
    ld l, e                                       ; $6152: $6B
    jr nc, jr_018_615F                            ; $6153: $30 $0A

    ld [hl], b                                    ; $6155: $70
    ld b, h                                       ; $6156: $44

jr_018_6157:
    jr nz, jr_018_60DB                            ; $6157: $20 $82

    nop                                           ; $6159: $00

jr_018_615A:
    dec bc                                        ; $615A: $0B
    nop                                           ; $615B: $00

jr_018_615C:
    dec bc                                        ; $615C: $0B
    ld [bc], a                                    ; $615D: $02
    dec bc                                        ; $615E: $0B

jr_018_615F:
    inc bc                                        ; $615F: $03
    nop                                           ; $6160: $00
    add d                                         ; $6161: $82
    rra                                           ; $6162: $1F

jr_018_6163:
    inc hl                                        ; $6163: $23
    sub h                                         ; $6164: $94
    ld b, d                                       ; $6165: $42
    ld e, e                                       ; $6166: $5B
    jr jr_018_6163                                ; $6167: $18 $FA

jr_018_6169:
    ld d, [hl]                                    ; $6169: $56
    ld b, l                                       ; $616A: $45
    rrca                                          ; $616B: $0F
    ld h, b                                       ; $616C: $60
    ld b, d                                       ; $616D: $42
    ld e, e                                       ; $616E: $5B
    jr jr_018_6157                                ; $616F: $18 $E6

    ld h, b                                       ; $6171: $60

jr_018_6172:
    ld b, l                                       ; $6172: $45
    ld c, $D5                                     ; $6173: $0E $D5
    ld c, e                                       ; $6175: $4B
    sub e                                         ; $6176: $93
    ld h, l                                       ; $6177: $65
    ld bc, $4F4E                                  ; $6178: $01 $4E $4F
    ld h, h                                       ; $617B: $64
    ld b, b                                       ; $617C: $40
    ld d, d                                       ; $617D: $52
    ld h, [hl]                                    ; $617E: $66
    ret nz                                        ; $617F: $C0

    ld e, h                                       ; $6180: $5C
    ld hl, $0005                                  ; $6181: $21 $05 $00
    ld l, e                                       ; $6184: $6B
    ld c, d                                       ; $6185: $4A

jr_018_6186:
    add hl, bc                                    ; $6186: $09
    jr jr_018_6172                                ; $6187: $18 $E9

jr_018_6189:
    pop de                                        ; $6189: $D1
    nop                                           ; $618A: $00
    jr jr_018_6189                                ; $618B: $18 $FC

    ld h, c                                       ; $618D: $61
    ld [hl+], a                                   ; $618E: $22
    dec b                                         ; $618F: $05
    ld b, b                                       ; $6190: $40
    dec b                                         ; $6191: $05
    ld [bc], a                                    ; $6192: $02
    ld l, e                                       ; $6193: $6B
    ld c, d                                       ; $6194: $4A
    ld b, $0D                                     ; $6195: $06 $0D
    ld a, [bc]                                    ; $6197: $0A
    pop de                                        ; $6198: $D1
    nop                                           ; $6199: $00
    jr jr_018_6219                                ; $619A: $18 $7D

    ld h, d                                       ; $619C: $62
    ld [hl+], a                                   ; $619D: $22
    dec b                                         ; $619E: $05
    ld b, b                                       ; $619F: $40

jr_018_61A0:
    dec b                                         ; $61A0: $05
    inc bc                                        ; $61A1: $03
    db $ED                                        ; $61A2: $ED
    ld h, e                                       ; $61A3: $63
    add hl, bc                                    ; $61A4: $09
    dec b                                         ; $61A5: $05
    ld l, l                                       ; $61A6: $6D
    ret nc                                        ; $61A7: $D0

    ld a, [hl+]                                   ; $61A8: $2A
    jr jr_018_615A                                ; $61A9: $18 $AF

    ld h, d                                       ; $61AB: $62
    jr jr_018_6214                                ; $61AC: $18 $66

    ld h, c                                       ; $61AE: $61
    dec b                                         ; $61AF: $05
    inc b                                         ; $61B0: $04
    db $ED                                        ; $61B1: $ED

jr_018_61B2:
    ld h, e                                       ; $61B2: $63
    dec b                                         ; $61B3: $05

jr_018_61B4:
    ld [$D0A5], sp                                ; $61B4: $08 $A5 $D0

jr_018_61B7:
    ld c, h                                       ; $61B7: $4C
    jr jr_018_61B4                                ; $61B8: $18 $FA

    ld h, d                                       ; $61BA: $62
    jr jr_018_622B                                ; $61BB: $18 $6E

    ld h, c                                       ; $61BD: $61
    dec b                                         ; $61BE: $05
    dec b                                         ; $61BF: $05
    ld l, e                                       ; $61C0: $6B
    ld c, d                                       ; $61C1: $4A
    ld b, $08                                     ; $61C2: $06 $08
    and [hl]                                      ; $61C4: $A6
    ret nc                                        ; $61C5: $D0

    ld a, h                                       ; $61C6: $7C
    ld de, $76A3                                  ; $61C7: $11 $A3 $76

jr_018_61CA:
    ld [hl+], a                                   ; $61CA: $22
    dec b                                         ; $61CB: $05
    ld b, b                                       ; $61CC: $40
    ld l, e                                       ; $61CD: $6B
    ld a, [hl+]                                   ; $61CE: $2A
    dec c                                         ; $61CF: $0D
    jr nc, @+$64                                  ; $61D0: $30 $62

    nop                                           ; $61D2: $00
    add b                                         ; $61D3: $80
    nop                                           ; $61D4: $00
    ld l, e                                       ; $61D5: $6B
    ld [hl+], a                                   ; $61D6: $22
    ld a, [bc]                                    ; $61D7: $0A
    ld d, b                                       ; $61D8: $50
    ld l, c                                       ; $61D9: $69
    and b                                         ; $61DA: $A0
    add d                                         ; $61DB: $82
    nop                                           ; $61DC: $00
    ld l, e                                       ; $61DD: $6B
    jr nc, jr_018_61EA                            ; $61DE: $30 $0A

jr_018_61E0:
    ld [hl], b                                    ; $61E0: $70
    ld b, h                                       ; $61E1: $44
    ret nz                                        ; $61E2: $C0

    add h                                         ; $61E3: $84
    nop                                           ; $61E4: $00
    ld l, e                                       ; $61E5: $6B
    inc b                                         ; $61E6: $04
    dec c                                         ; $61E7: $0D
    ldh [$58], a                                  ; $61E8: $E0 $58

jr_018_61EA:
    ret nz                                        ; $61EA: $C0

    add a                                         ; $61EB: $87
    nop                                           ; $61EC: $00
    dec bc                                        ; $61ED: $0B
    inc bc                                        ; $61EE: $03
    dec bc                                        ; $61EF: $0B
    inc b                                         ; $61F0: $04
    add h                                         ; $61F1: $84

jr_018_61F2:
    rlca                                          ; $61F2: $07
    ld [$231F], sp                                ; $61F3: $08 $1F $23
    sub h                                         ; $61F6: $94
    xor h                                         ; $61F7: $AC
    inc h                                         ; $61F8: $24
    and d                                         ; $61F9: $A2
    ld bc, $4042                                  ; $61FA: $01 $42 $40
    ld b, b                                       ; $61FD: $40
    ld d, $20                                     ; $61FE: $16 $20
    or e                                          ; $6200: $B3
    ld c, a                                       ; $6201: $4F

jr_018_6202:
    sub b                                         ; $6202: $90
    nop                                           ; $6203: $00

jr_018_6204:
    rst $38                                       ; $6204: $FF
    jr nz, jr_018_61B2                            ; $6205: $20 $AB

    ld d, b                                       ; $6207: $50
    stop                                          ; $6208: $10 $00
    rst $38                                       ; $620A: $FF
    nop                                           ; $620B: $00
    ld h, d                                       ; $620C: $62
    ld [bc], a                                    ; $620D: $02
    ld d, $20                                     ; $620E: $16 $20
    db $DD                                        ; $6210: $DD
    ld c, a                                       ; $6211: $4F
    jr nc, @+$01                                  ; $6212: $30 $FF

jr_018_6214:
    nop                                           ; $6214: $00
    jr nz, jr_018_61CA                            ; $6215: $20 $B3

    ld c, a                                       ; $6217: $4F

jr_018_6218:
    ld h, b                                       ; $6218: $60

jr_018_6219:
    nop                                           ; $6219: $00
    rst $38                                       ; $621A: $FF
    nop                                           ; $621B: $00
    inc d                                         ; $621C: $14
    jr nz, jr_018_61CA                            ; $621D: $20 $AB

    ld d, b                                       ; $621F: $50
    ld a, h                                       ; $6220: $7C
    rlca                                          ; $6221: $07
    ld [$1401], sp                                ; $6222: $08 $01 $14
    jr nz, jr_018_6218                            ; $6225: $20 $F1

    ld d, b                                       ; $6227: $50
    ld h, d                                       ; $6228: $62
    rra                                           ; $6229: $1F
    ld b, b                                       ; $622A: $40

jr_018_622B:
    ld h, b                                       ; $622B: $60
    inc d                                         ; $622C: $14
    jr nz, @-$17                                  ; $622D: $20 $E7

    ld d, b                                       ; $622F: $50
    ld h, d                                       ; $6230: $62
    inc bc                                        ; $6231: $03

jr_018_6232:
    inc d                                         ; $6232: $14
    jr nz, jr_018_61E0                            ; $6233: $20 $AB

    ld d, b                                       ; $6235: $50

jr_018_6236:
    ld h, d                                       ; $6236: $62
    add hl, hl                                    ; $6237: $29
    ld b, b                                       ; $6238: $40
    db $10                                        ; $6239: $10
    inc c                                         ; $623A: $0C
    dec b                                         ; $623B: $05
    ld b, b                                       ; $623C: $40
    jr nz, jr_018_6253                            ; $623D: $20 $14

    jr nz, jr_018_6232                            ; $623F: $20 $F1

    ld d, b                                       ; $6241: $50
    ld h, d                                       ; $6242: $62
    ld a, [hl+]                                   ; $6243: $2A

jr_018_6244:
    inc d                                         ; $6244: $14
    jr nz, jr_018_61F2                            ; $6245: $20 $AB

    ld d, b                                       ; $6247: $50
    ld h, d                                       ; $6248: $62
    inc sp                                        ; $6249: $33
    dec d                                         ; $624A: $15
    jr nz, jr_018_6202                            ; $624B: $20 $B5

    ld d, b                                       ; $624D: $50
    ld b, b                                       ; $624E: $40
    jr nz, jr_018_6204                            ; $624F: $20 $B3

    ld c, a                                       ; $6251: $4F
    db $10                                        ; $6252: $10

jr_018_6253:
    jr nz, jr_018_6232                            ; $6253: $20 $DD

    ld c, a                                       ; $6255: $4F
    db $10                                        ; $6256: $10
    jr nz, jr_018_6236                            ; $6257: $20 $DD

    ld d, b                                       ; $6259: $50
    jr nc, jr_018_627C                            ; $625A: $30 $20

    pop af                                        ; $625C: $F1
    ld d, b                                       ; $625D: $50
    nop                                           ; $625E: $00
    nop                                           ; $625F: $00

jr_018_6260:
    ld h, d                                       ; $6260: $62
    inc [hl]                                      ; $6261: $34
    ld b, b                                       ; $6262: $40
    jr jr_018_6279                                ; $6263: $18 $14

    jr nz, jr_018_6244                            ; $6265: $20 $DD

    ld d, b                                       ; $6267: $50
    ld h, d                                       ; $6268: $62
    dec b                                         ; $6269: $05
    ld b, b                                       ; $626A: $40
    ld b, b                                       ; $626B: $40
    inc d                                         ; $626C: $14

jr_018_626D:
    jr nz, jr_018_6260                            ; $626D: $20 $F1

    ld d, b                                       ; $626F: $50
    ld e, e                                       ; $6270: $5B
    jr jr_018_629E                                ; $6271: $18 $2B

    ld h, b                                       ; $6273: $60
    ld h, d                                       ; $6274: $62
    dec a                                         ; $6275: $3D
    ld b, b                                       ; $6276: $40
    jr jr_018_628D                                ; $6277: $18 $14

jr_018_6279:
    jr nz, @-$53                                  ; $6279: $20 $AB

    ld d, b                                       ; $627B: $50

jr_018_627C:
    ld b, d                                       ; $627C: $42
    dec d                                         ; $627D: $15
    rrca                                          ; $627E: $0F
    ld c, [hl]                                    ; $627F: $4E
    ld d, d                                       ; $6280: $52
    jr nc, jr_018_6292                            ; $6281: $30 $0F

    adc $52                                       ; $6283: $CE $52
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    ld e, e                                       ; $6287: $5B
    jr jr_018_62FB                                ; $6288: $18 $71

    ld e, [hl]                                    ; $628A: $5E
    ld h, d                                       ; $628B: $62
    inc sp                                        ; $628C: $33

jr_018_628D:
    ld b, b                                       ; $628D: $40
    ld d, b                                       ; $628E: $50
    dec d                                         ; $628F: $15
    rrca                                          ; $6290: $0F
    ld c, [hl]                                    ; $6291: $4E

jr_018_6292:
    ld d, d                                       ; $6292: $52
    db $10                                        ; $6293: $10
    rrca                                          ; $6294: $0F
    adc $52                                       ; $6295: $CE $52
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    ld b, b                                       ; $6299: $40
    jr nc, jr_018_62B0                            ; $629A: $30 $14

    rrca                                          ; $629C: $0F
    nop                                           ; $629D: $00

jr_018_629E:
    ld d, e                                       ; $629E: $53
    ld h, d                                       ; $629F: $62
    inc [hl]                                      ; $62A0: $34
    inc d                                         ; $62A1: $14
    rrca                                          ; $62A2: $0F
    or $52                                        ; $62A3: $F6 $52
    ld h, d                                       ; $62A5: $62
    dec b                                         ; $62A6: $05
    dec d                                         ; $62A7: $15
    rrca                                          ; $62A8: $0F
    ld e, [hl]                                    ; $62A9: $5E
    ld d, d                                       ; $62AA: $52
    ld h, b                                       ; $62AB: $60
    nop                                           ; $62AC: $00
    add hl, de                                    ; $62AD: $19
    ld b, d                                       ; $62AE: $42
    inc d                                         ; $62AF: $14

jr_018_62B0:
    rrca                                          ; $62B0: $0F
    db $10                                        ; $62B1: $10
    ld b, d                                       ; $62B2: $42
    ld h, d                                       ; $62B3: $62
    ld bc, $3040                                  ; $62B4: $01 $40 $30
    inc d                                         ; $62B7: $14
    rrca                                          ; $62B8: $0F
    ld a, [de]                                    ; $62B9: $1A
    ld b, d                                       ; $62BA: $42
    ld h, d                                       ; $62BB: $62
    ld [bc], a                                    ; $62BC: $02
    ld b, b                                       ; $62BD: $40
    add d                                         ; $62BE: $82
    inc d                                         ; $62BF: $14
    rrca                                          ; $62C0: $0F
    ld c, h                                       ; $62C1: $4C
    ld b, d                                       ; $62C2: $42
    ld e, e                                       ; $62C3: $5B
    jr jr_018_626D                                ; $62C4: $18 $A7

    ld e, b                                       ; $62C6: $58
    ld h, d                                       ; $62C7: $62
    inc bc                                        ; $62C8: $03

jr_018_62C9:
    ld b, b                                       ; $62C9: $40
    db $10                                        ; $62CA: $10
    dec d                                         ; $62CB: $15
    rrca                                          ; $62CC: $0F
    ldh a, [rSTAT]                                ; $62CD: $F0 $41
    jr @+$11                                      ; $62CF: $18 $0F

    ld a, [de]                                    ; $62D1: $1A
    ld b, d                                       ; $62D2: $42
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    ld e, e                                       ; $62D5: $5B
    jr jr_018_62C9                                ; $62D6: $18 $F1

    ld e, e                                       ; $62D8: $5B
    ld h, d                                       ; $62D9: $62
    add hl, hl                                    ; $62DA: $29
    dec d                                         ; $62DB: $15
    rrca                                          ; $62DC: $0F
    ret nz                                        ; $62DD: $C0

    ld b, c                                       ; $62DE: $41
    jr nc, jr_018_62F0                            ; $62DF: $30 $0F

    ld c, h                                       ; $62E1: $4C
    ld b, d                                       ; $62E2: $42
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    ld h, d                                       ; $62E5: $62
    ld a, [hl+]                                   ; $62E6: $2A
    ld b, b                                       ; $62E7: $40
    db $10                                        ; $62E8: $10
    inc d                                         ; $62E9: $14
    rrca                                          ; $62EA: $0F
    inc h                                         ; $62EB: $24
    ld b, d                                       ; $62EC: $42
    ld h, d                                       ; $62ED: $62
    inc sp                                        ; $62EE: $33
    inc d                                         ; $62EF: $14

jr_018_62F0:
    rrca                                          ; $62F0: $0F
    ld c, h                                       ; $62F1: $4C
    ld b, d                                       ; $62F2: $42
    ld h, d                                       ; $62F3: $62
    dec a                                         ; $62F4: $3D
    inc d                                         ; $62F5: $14

jr_018_62F6:
    rrca                                          ; $62F6: $0F
    db $10                                        ; $62F7: $10
    ld b, d                                       ; $62F8: $42
    ld b, d                                       ; $62F9: $42
    inc d                                         ; $62FA: $14

jr_018_62FB:
    ld c, $B7                                     ; $62FB: $0E $B7
    ld c, e                                       ; $62FD: $4B
    ld e, e                                       ; $62FE: $5B
    jr jr_018_62F6                                ; $62FF: $18 $F5

    ld d, a                                       ; $6301: $57
    ld h, d                                       ; $6302: $62
    ld bc, $000B                                  ; $6303: $01 $0B $00
    ld a, l                                       ; $6306: $7D
    adc c                                         ; $6307: $89
    pop bc                                        ; $6308: $C1
    inc bc                                        ; $6309: $03
    inc d                                         ; $630A: $14
    ld c, $8F                                     ; $630B: $0E $8F
    ld c, e                                       ; $630D: $4B
    ld e, e                                       ; $630E: $5B
    jr jr_018_6370                                ; $630F: $18 $5F

jr_018_6311:
    ld e, b                                       ; $6311: $58
    ld h, d                                       ; $6312: $62
    ld [bc], a                                    ; $6313: $02
    ld b, b                                       ; $6314: $40
    and h                                         ; $6315: $A4
    inc d                                         ; $6316: $14
    ld c, $B7                                     ; $6317: $0E $B7
    ld c, e                                       ; $6319: $4B
    ld h, d                                       ; $631A: $62
    rra                                           ; $631B: $1F
    ld b, b                                       ; $631C: $40
    ld b, b                                       ; $631D: $40
    inc d                                         ; $631E: $14
    ld c, $CB                                     ; $631F: $0E $CB
    ld c, e                                       ; $6321: $4B
    ld h, d                                       ; $6322: $62
    inc bc                                        ; $6323: $03
    ld b, b                                       ; $6324: $40
    ld [$050B], sp                                ; $6325: $08 $0B $05
    dec d                                         ; $6328: $15
    ld c, $A3                                     ; $6329: $0E $A3
    ld c, e                                       ; $632B: $4B
    jr nc, jr_018_633C                            ; $632C: $30 $0E

    add l                                         ; $632E: $85
    ld c, e                                       ; $632F: $4B
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ld h, d                                       ; $6332: $62
    add hl, hl                                    ; $6333: $29
    ld b, b                                       ; $6334: $40
    jr nz, jr_018_634B                            ; $6335: $20 $14

    ld c, $B7                                     ; $6337: $0E $B7
    ld c, e                                       ; $6339: $4B
    ld h, d                                       ; $633A: $62
    ld a, [hl+]                                   ; $633B: $2A

jr_018_633C:
    dec d                                         ; $633C: $15
    ld c, $45                                     ; $633D: $0E $45
    ld c, e                                       ; $633F: $4B
    db $10                                        ; $6340: $10
    ld c, $A3                                     ; $6341: $0E $A3
    ld c, e                                       ; $6343: $4B
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    ld h, d                                       ; $6346: $62
    inc b                                         ; $6347: $04
    dec bc                                        ; $6348: $0B
    ld [bc], a                                    ; $6349: $02
    ld h, d                                       ; $634A: $62

jr_018_634B:
    inc sp                                        ; $634B: $33
    dec d                                         ; $634C: $15
    ld c, $8F                                     ; $634D: $0E $8F
    ld c, e                                       ; $634F: $4B
    ld h, b                                       ; $6350: $60
    ld c, $A3                                     ; $6351: $0E $A3
    ld c, e                                       ; $6353: $4B
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    ld h, d                                       ; $6356: $62
    dec a                                         ; $6357: $3D
    inc d                                         ; $6358: $14
    ld c, $8F                                     ; $6359: $0E $8F
    ld c, e                                       ; $635B: $4B
    ld h, d                                       ; $635C: $62
    ld b, $07                                     ; $635D: $06 $07
    nop                                           ; $635F: $00
    add c                                         ; $6360: $81
    ld e, l                                       ; $6361: $5D
    add hl, bc                                    ; $6362: $09
    nop                                           ; $6363: $00
    jr nz, jr_018_6311                            ; $6364: $20 $AB

    ld d, b                                       ; $6366: $50
    ld b, d                                       ; $6367: $42
    ld bc, $2441                                  ; $6368: $01 $41 $24
    ld b, l                                       ; $636B: $45
    dec h                                         ; $636C: $25
    sub h                                         ; $636D: $94
    ld [hl], b                                    ; $636E: $70
    ld b, e                                       ; $636F: $43

jr_018_6370:
    ld [$040F], sp                                ; $6370: $08 $0F $04
    dec b                                         ; $6373: $05
    ld [de], a                                    ; $6374: $12
    rrca                                          ; $6375: $0F
    ld bc, $A224                                  ; $6376: $01 $24 $A2
    dec b                                         ; $6379: $05
    inc b                                         ; $637A: $04
    jr jr_018_63E2                                ; $637B: $18 $65

    ld [hl], d                                    ; $637D: $72
    ld b, d                                       ; $637E: $42
    sbc a                                         ; $637F: $9F
    ld d, h                                       ; $6380: $54
    ld l, b                                       ; $6381: $68
    ld h, l                                       ; $6382: $65
    jr nz, jr_018_63CD                            ; $6383: $20 $48

    ld h, c                                       ; $6385: $61
    ld l, l                                       ; $6386: $6D
    ld l, l                                       ; $6387: $6D
    ld h, l                                       ; $6388: $65
    ld [hl], d                                    ; $6389: $72
    jr nz, jr_018_63FB                            ; $638A: $20 $6F

    ld h, [hl]                                    ; $638C: $66
    rst $38                                       ; $638D: $FF
    ld [hl], h                                    ; $638E: $74
    ld l, b                                       ; $638F: $68
    ld h, l                                       ; $6390: $65
    jr nz, jr_018_63E0                            ; $6391: $20 $4D

    ld h, c                                       ; $6393: $61
    ld [hl], e                                    ; $6394: $73
    ld [hl], h                                    ; $6395: $74
    ld h, l                                       ; $6396: $65
    ld [hl], d                                    ; $6397: $72
    ld [hl], e                                    ; $6398: $73
    cp $FD                                        ; $6399: $FE $FD
    sbc d                                         ; $639B: $9A
    ld b, d                                       ; $639C: $42
    sbc a                                         ; $639D: $9F
    ld c, b                                       ; $639E: $48
    ld l, c                                       ; $639F: $69
    ld h, h                                       ; $63A0: $64
    ld h, h                                       ; $63A1: $64
    ld h, l                                       ; $63A2: $65
    ld l, [hl]                                    ; $63A3: $6E
    rst $38                                       ; $63A4: $FF
    ld d, b                                       ; $63A5: $50
    ld h, c                                       ; $63A6: $61
    ld [hl], d                                    ; $63A7: $72
    ld h, c                                       ; $63A8: $61
    ld [hl], e                                    ; $63A9: $73
    ld l, c                                       ; $63AA: $69
    ld [hl], h                                    ; $63AB: $74
    ld h, l                                       ; $63AC: $65
    ld [hl], e                                    ; $63AD: $73
    cp $6F                                        ; $63AE: $FE $6F
    ld h, [hl]                                    ; $63B0: $66
    jr nz, jr_018_6402                            ; $63B1: $20 $4F

    ld [hl], d                                    ; $63B3: $72
    ld l, a                                       ; $63B4: $6F
    ld [hl], h                                    ; $63B5: $74
    ld l, b                                       ; $63B6: $68
    ld h, l                                       ; $63B7: $65
    cp $FD                                        ; $63B8: $FE $FD
    sbc d                                         ; $63BA: $9A
    ld b, d                                       ; $63BB: $42
    sbc a                                         ; $63BC: $9F
    ld d, h                                       ; $63BD: $54
    ld l, b                                       ; $63BE: $68
    ld h, l                                       ; $63BF: $65
    jr nz, jr_018_6403                            ; $63C0: $20 $41

    ld [hl], d                                    ; $63C2: $72
    ld [hl], h                                    ; $63C3: $74
    jr nz, jr_018_6435                            ; $63C4: $20 $6F

    ld h, [hl]                                    ; $63C6: $66
    rst $38                                       ; $63C7: $FF
    ld d, a                                       ; $63C8: $57
    ld h, c                                       ; $63C9: $61
    ld [hl], d                                    ; $63CA: $72
    ld l, h                                       ; $63CB: $6C
    ld l, a                                       ; $63CC: $6F

jr_018_63CD:
    ld [hl], d                                    ; $63CD: $72
    ld h, h                                       ; $63CE: $64
    ld [hl], e                                    ; $63CF: $73
    cp $FD                                        ; $63D0: $FE $FD
    sbc d                                         ; $63D2: $9A
    ld b, d                                       ; $63D3: $42
    sbc a                                         ; $63D4: $9F
    ld d, h                                       ; $63D5: $54
    ld l, a                                       ; $63D6: $6F
    ld l, l                                       ; $63D7: $6D
    ld h, l                                       ; $63D8: $65
    jr nz, jr_018_644A                            ; $63D9: $20 $6F

    ld h, [hl]                                    ; $63DB: $66
    rst $38                                       ; $63DC: $FF
    ld d, h                                       ; $63DD: $54
    ld [hl], d                                    ; $63DE: $72
    ld h, l                                       ; $63DF: $65

jr_018_63E0:
    ld l, l                                       ; $63E0: $6D
    ld l, a                                       ; $63E1: $6F

jr_018_63E2:
    ld [hl], d                                    ; $63E2: $72
    ld [hl], e                                    ; $63E3: $73
    cp $FD                                        ; $63E4: $FE $FD
    sbc d                                         ; $63E6: $9A
    ld b, d                                       ; $63E7: $42
    sbc a                                         ; $63E8: $9F
    ld b, l                                       ; $63E9: $45
    ld l, l                                       ; $63EA: $6D
    ld h, d                                       ; $63EB: $62
    ld h, l                                       ; $63EC: $65
    ld [hl], d                                    ; $63ED: $72
    ld [hl], e                                    ; $63EE: $73
    jr nz, jr_018_6460                            ; $63EF: $20 $6F

    ld h, [hl]                                    ; $63F1: $66
    rst $38                                       ; $63F2: $FF
    ld b, h                                       ; $63F3: $44
    ld h, l                                       ; $63F4: $65
    ld [hl], e                                    ; $63F5: $73
    ld [hl], h                                    ; $63F6: $74
    ld [hl], d                                    ; $63F7: $72
    ld [hl], l                                    ; $63F8: $75
    ld h, e                                       ; $63F9: $63
    ld [hl], h                                    ; $63FA: $74

jr_018_63FB:
    ld l, c                                       ; $63FB: $69
    ld l, a                                       ; $63FC: $6F
    ld l, [hl]                                    ; $63FD: $6E
    cp $FD                                        ; $63FE: $FE $FD
    sbc d                                         ; $6400: $9A
    ld b, d                                       ; $6401: $42

jr_018_6402:
    sbc e                                         ; $6402: $9B

jr_018_6403:
    ld a, b                                       ; $6403: $78
    ld [hl], b                                    ; $6404: $70
    sbc a                                         ; $6405: $9F
    ld b, c                                       ; $6406: $41
    jr nz, jr_018_647C                            ; $6407: $20 $73

    ld h, l                                       ; $6409: $65
    ld [hl], h                                    ; $640A: $74
    jr nz, jr_018_647C                            ; $640B: $20 $6F

    ld h, [hl]                                    ; $640D: $66
    jr nz, jr_018_6472                            ; $640E: $20 $62

    ld l, a                                       ; $6410: $6F
    ld l, a                                       ; $6411: $6F
    ld l, e                                       ; $6412: $6B
    ld [hl], e                                    ; $6413: $73
    rst $38                                       ; $6414: $FF
    ld h, e                                       ; $6415: $63
    ld l, b                                       ; $6416: $68
    ld [hl], d                                    ; $6417: $72
    ld l, a                                       ; $6418: $6F
    ld l, [hl]                                    ; $6419: $6E
    ld l, c                                       ; $641A: $69
    ld h, e                                       ; $641B: $63
    ld l, h                                       ; $641C: $6C
    ld l, c                                       ; $641D: $69
    ld l, [hl]                                    ; $641E: $6E
    ld h, a                                       ; $641F: $67
    jr nz, jr_018_6496                            ; $6420: $20 $74

    ld l, b                                       ; $6422: $68
    ld h, l                                       ; $6423: $65
    cp $64                                        ; $6424: $FE $64
    ld l, c                                       ; $6426: $69
    ld h, [hl]                                    ; $6427: $66
    ld h, [hl]                                    ; $6428: $66
    ld h, l                                       ; $6429: $65
    ld [hl], d                                    ; $642A: $72
    ld h, l                                       ; $642B: $65
    ld l, [hl]                                    ; $642C: $6E
    ld [hl], h                                    ; $642D: $74
    jr nz, jr_018_6474                            ; $642E: $20 $44

    ld [hl], d                                    ; $6430: $72
    ld h, l                                       ; $6431: $65
    ld h, c                                       ; $6432: $61
    ld l, l                                       ; $6433: $6D
    rst $38                                       ; $6434: $FF

jr_018_6435:
    ld b, e                                       ; $6435: $43
    ld [hl], d                                    ; $6436: $72
    ld h, l                                       ; $6437: $65
    ld h, c                                       ; $6438: $61
    ld [hl], h                                    ; $6439: $74
    ld [hl], l                                    ; $643A: $75
    ld [hl], d                                    ; $643B: $72
    ld h, l                                       ; $643C: $65
    ld [hl], e                                    ; $643D: $73
    jr nz, jr_018_64AF                            ; $643E: $20 $6F

    ld h, [hl]                                    ; $6440: $66
    cp $74                                        ; $6441: $FE $74
    ld l, b                                       ; $6443: $68
    ld h, l                                       ; $6444: $65
    jr nz, jr_018_6494                            ; $6445: $20 $4D

    ld l, a                                       ; $6447: $6F
    ld l, a                                       ; $6448: $6F
    ld l, [hl]                                    ; $6449: $6E

jr_018_644A:
    ld l, h                                       ; $644A: $6C
    ld h, c                                       ; $644B: $61
    ld l, [hl]                                    ; $644C: $6E
    ld h, h                                       ; $644D: $64
    ld [hl], e                                    ; $644E: $73
    ld l, $FE                                     ; $644F: $2E $FE
    db $FD                                        ; $6451: $FD
    sbc d                                         ; $6452: $9A
    ld b, d                                       ; $6453: $42
    sbc a                                         ; $6454: $9F
    ld c, b                                       ; $6455: $48
    ld l, a                                       ; $6456: $6F
    ld [hl], a                                    ; $6457: $77
    jr nz, jr_018_64CE                            ; $6458: $20 $74

    ld l, a                                       ; $645A: $6F
    jr nz, jr_018_649F                            ; $645B: $20 $42

    ld d, d                                       ; $645D: $52
    ld b, l                                       ; $645E: $45
    ld b, c                                       ; $645F: $41

jr_018_6460:
    ld c, e                                       ; $6460: $4B
    rst $38                                       ; $6461: $FF
    ld d, e                                       ; $6462: $53
    ld [hl], h                                    ; $6463: $74
    ld [hl], l                                    ; $6464: $75
    ld h, [hl]                                    ; $6465: $66
    ld h, [hl]                                    ; $6466: $66
    ld hl, $62FE                                  ; $6467: $21 $FE $62
    ld a, c                                       ; $646A: $79
    jr nz, @+$47                                  ; $646B: $20 $45

    ld h, d                                       ; $646D: $62
    ld a, c                                       ; $646E: $79
    ld l, h                                       ; $646F: $6C
    ld l, a                                       ; $6470: $6F
    ld l, [hl]                                    ; $6471: $6E

jr_018_6472:
    cp $FD                                        ; $6472: $FE $FD

jr_018_6474:
    sbc d                                         ; $6474: $9A
    ld b, d                                       ; $6475: $42
    sbc a                                         ; $6476: $9F
    ld b, c                                       ; $6477: $41
    ld l, [hl]                                    ; $6478: $6E
    ld h, e                                       ; $6479: $63
    ld l, c                                       ; $647A: $69
    ld h, l                                       ; $647B: $65

jr_018_647C:
    ld l, [hl]                                    ; $647C: $6E
    ld [hl], h                                    ; $647D: $74
    rst $38                                       ; $647E: $FF
    ld d, h                                       ; $647F: $54
    ld [hl], d                                    ; $6480: $72
    ld h, l                                       ; $6481: $65
    ld h, c                                       ; $6482: $61
    ld [hl], e                                    ; $6483: $73
    ld [hl], l                                    ; $6484: $75
    ld [hl], d                                    ; $6485: $72
    ld h, l                                       ; $6486: $65
    ld [hl], e                                    ; $6487: $73
    cp $FD                                        ; $6488: $FE $FD
    sbc d                                         ; $648A: $9A
    ld b, d                                       ; $648B: $42
    sbc a                                         ; $648C: $9F
    ld d, h                                       ; $648D: $54
    ld l, b                                       ; $648E: $68
    ld h, l                                       ; $648F: $65
    jr nz, jr_018_64DC                            ; $6490: $20 $4A

    ld l, a                                       ; $6492: $6F
    ld [hl], l                                    ; $6493: $75

jr_018_6494:
    ld [hl], d                                    ; $6494: $72
    ld l, [hl]                                    ; $6495: $6E

jr_018_6496:
    ld h, l                                       ; $6496: $65
    ld a, c                                       ; $6497: $79
    ld [hl], e                                    ; $6498: $73
    rst $38                                       ; $6499: $FF
    ld l, a                                       ; $649A: $6F
    ld h, [hl]                                    ; $649B: $66
    jr nz, @+$51                                  ; $649C: $20 $4F

    ld [hl], d                                    ; $649E: $72

jr_018_649F:
    ld [hl], a                                    ; $649F: $77
    ld l, c                                       ; $64A0: $69
    ld l, [hl]                                    ; $64A1: $6E
    cp $FD                                        ; $64A2: $FE $FD
    sbc d                                         ; $64A4: $9A
    ld b, d                                       ; $64A5: $42
    sbc a                                         ; $64A6: $9F
    ld d, h                                       ; $64A7: $54
    ld l, b                                       ; $64A8: $68
    ld h, l                                       ; $64A9: $65
    jr nz, jr_018_6500                            ; $64AA: $20 $54

    ld [hl], d                                    ; $64AC: $72
    ld h, l                                       ; $64AD: $65
    ld h, c                                       ; $64AE: $61

jr_018_64AF:
    ld [hl], h                                    ; $64AF: $74
    ld a, c                                       ; $64B0: $79
    jr nz, jr_018_6522                            ; $64B1: $20 $6F

    ld h, [hl]                                    ; $64B3: $66
    rst $38                                       ; $64B4: $FF
    ld [hl], h                                    ; $64B5: $74
    ld l, b                                       ; $64B6: $68
    ld h, l                                       ; $64B7: $65
    jr nz, jr_018_650D                            ; $64B8: $20 $53

    ld h, l                                       ; $64BA: $65
    ld h, c                                       ; $64BB: $61
    cp $FD                                        ; $64BC: $FE $FD
    sbc d                                         ; $64BE: $9A
    ld b, d                                       ; $64BF: $42
    sbc a                                         ; $64C0: $9F
    ld b, a                                       ; $64C1: $47
    ld [hl], d                                    ; $64C2: $72
    ld h, l                                       ; $64C3: $65
    ld h, c                                       ; $64C4: $61
    ld [hl], h                                    ; $64C5: $74
    jr nz, jr_018_651C                            ; $64C6: $20 $54

    ld h, c                                       ; $64C8: $61
    ld h, e                                       ; $64C9: $63
    ld [hl], h                                    ; $64CA: $74
    ld l, c                                       ; $64CB: $69
    ld h, e                                       ; $64CC: $63
    ld h, c                                       ; $64CD: $61

jr_018_64CE:
    ld l, h                                       ; $64CE: $6C
    rst $38                                       ; $64CF: $FF
    ld d, [hl]                                    ; $64D0: $56
    ld l, c                                       ; $64D1: $69
    ld h, e                                       ; $64D2: $63
    ld [hl], h                                    ; $64D3: $74
    ld l, a                                       ; $64D4: $6F
    ld [hl], d                                    ; $64D5: $72
    ld l, c                                       ; $64D6: $69
    ld h, l                                       ; $64D7: $65
    ld [hl], e                                    ; $64D8: $73
    cp $54                                        ; $64D9: $FE $54
    ld l, b                                       ; $64DB: $68

jr_018_64DC:
    ld [hl], d                                    ; $64DC: $72
    ld l, a                                       ; $64DD: $6F
    ld [hl], l                                    ; $64DE: $75
    ld h, a                                       ; $64DF: $67
    ld l, b                                       ; $64E0: $68
    ld l, a                                       ; $64E1: $6F
    ld [hl], l                                    ; $64E2: $75
    ld [hl], h                                    ; $64E3: $74
    rst $38                                       ; $64E4: $FF
    ld c, b                                       ; $64E5: $48
    ld l, c                                       ; $64E6: $69
    ld [hl], e                                    ; $64E7: $73
    ld [hl], h                                    ; $64E8: $74
    ld l, a                                       ; $64E9: $6F
    ld [hl], d                                    ; $64EA: $72
    ld a, c                                       ; $64EB: $79
    cp $FD                                        ; $64EC: $FE $FD
    sbc d                                         ; $64EE: $9A
    ld b, d                                       ; $64EF: $42
    sbc a                                         ; $64F0: $9F
    ld c, d                                       ; $64F1: $4A
    ld l, a                                       ; $64F2: $6F
    ld [hl], l                                    ; $64F3: $75
    ld [hl], d                                    ; $64F4: $72
    ld l, [hl]                                    ; $64F5: $6E
    ld h, l                                       ; $64F6: $65
    ld a, c                                       ; $64F7: $79
    jr nz, @+$76                                  ; $64F8: $20 $74

    ld l, a                                       ; $64FA: $6F
    rst $38                                       ; $64FB: $FF
    ld c, c                                       ; $64FC: $49
    ld l, l                                       ; $64FD: $6D
    ld l, l                                       ; $64FE: $6D
    ld l, a                                       ; $64FF: $6F

jr_018_6500:
    ld [hl], d                                    ; $6500: $72
    ld [hl], h                                    ; $6501: $74
    ld h, c                                       ; $6502: $61
    ld l, h                                       ; $6503: $6C
    ld l, c                                       ; $6504: $69
    ld [hl], h                                    ; $6505: $74
    ld a, c                                       ; $6506: $79
    cp $FD                                        ; $6507: $FE $FD
    sbc d                                         ; $6509: $9A
    ld b, d                                       ; $650A: $42
    sbc a                                         ; $650B: $9F
    ld d, h                                       ; $650C: $54

jr_018_650D:
    ld l, b                                       ; $650D: $68
    ld h, l                                       ; $650E: $65
    jr nz, jr_018_6561                            ; $650F: $20 $50

    ld h, c                                       ; $6511: $61
    ld [hl], h                                    ; $6512: $74
    ld l, b                                       ; $6513: $68
    jr nz, @+$71                                  ; $6514: $20 $6F

    ld h, [hl]                                    ; $6516: $66
    rst $38                                       ; $6517: $FF
    ld c, a                                       ; $6518: $4F
    daa                                           ; $6519: $27
    ld d, c                                       ; $651A: $51
    ld [hl], l                                    ; $651B: $75

jr_018_651C:
    ld h, c                                       ; $651C: $61
    cp $FD                                        ; $651D: $FE $FD
    sbc d                                         ; $651F: $9A
    ld b, d                                       ; $6520: $42
    sbc a                                         ; $6521: $9F

jr_018_6522:
    ld d, h                                       ; $6522: $54
    ld l, b                                       ; $6523: $68
    ld h, l                                       ; $6524: $65
    jr nz, jr_018_6573                            ; $6525: $20 $4C

    ld h, l                                       ; $6527: $65
    ld h, a                                       ; $6528: $67
    ld h, l                                       ; $6529: $65
    ld l, [hl]                                    ; $652A: $6E
    ld h, h                                       ; $652B: $64
    jr nz, @+$71                                  ; $652C: $20 $6F

    ld h, [hl]                                    ; $652E: $66
    rst $38                                       ; $652F: $FF
    ld b, c                                       ; $6530: $41
    ld h, a                                       ; $6531: $67
    ld [hl], d                                    ; $6532: $72
    ld h, c                                       ; $6533: $61
    ld l, l                                       ; $6534: $6D
    cp $FD                                        ; $6535: $FE $FD
    sbc d                                         ; $6537: $9A
    ld b, d                                       ; $6538: $42
    sbc a                                         ; $6539: $9F
    ld d, h                                       ; $653A: $54
    ld l, b                                       ; $653B: $68
    ld [hl], l                                    ; $653C: $75
    ld l, [hl]                                    ; $653D: $6E
    ld h, h                                       ; $653E: $64
    ld h, l                                       ; $653F: $65
    ld [hl], d                                    ; $6540: $72
    ld [hl], e                                    ; $6541: $73
    jr nz, jr_018_65B3                            ; $6542: $20 $6F

    ld h, [hl]                                    ; $6544: $66
    rst $38                                       ; $6545: $FF
    ld c, l                                       ; $6546: $4D
    ld a, c                                       ; $6547: $79
    ld [hl], e                                    ; $6548: $73
    ld [hl], h                                    ; $6549: $74
    ld h, l                                       ; $654A: $65
    ld [hl], d                                    ; $654B: $72
    ld a, c                                       ; $654C: $79
    cp $FD                                        ; $654D: $FE $FD
    sbc d                                         ; $654F: $9A
    ld b, d                                       ; $6550: $42
    sbc a                                         ; $6551: $9F
    ld b, c                                       ; $6552: $41
    jr nz, @+$55                                  ; $6553: $20 $53

    ld [hl], h                                    ; $6555: $74
    ld [hl], l                                    ; $6556: $75
    ld h, h                                       ; $6557: $64
    ld a, c                                       ; $6558: $79
    jr nz, jr_018_65C4                            ; $6559: $20 $69

    ld l, [hl]                                    ; $655B: $6E
    rst $38                                       ; $655C: $FF
    ld d, b                                       ; $655D: $50
    ld l, b                                       ; $655E: $68
    ld a, c                                       ; $655F: $79
    ld [hl], e                                    ; $6560: $73

jr_018_6561:
    ld l, c                                       ; $6561: $69
    ld h, e                                       ; $6562: $63
    ld [hl], e                                    ; $6563: $73
    cp $62                                        ; $6564: $FE $62
    ld a, c                                       ; $6566: $79
    jr nz, jr_018_65B8                            ; $6567: $20 $4F

    ld [hl], d                                    ; $6569: $72
    ld l, h                                       ; $656A: $6C
    ld l, a                                       ; $656B: $6F
    ld l, [hl]                                    ; $656C: $6E
    cp $FD                                        ; $656D: $FE $FD
    sbc d                                         ; $656F: $9A
    ld b, d                                       ; $6570: $42
    sbc a                                         ; $6571: $9F
    ld d, h                                       ; $6572: $54

jr_018_6573:
    ld l, b                                       ; $6573: $68
    ld h, l                                       ; $6574: $65
    jr nz, jr_018_65C7                            ; $6575: $20 $50

    ld l, a                                       ; $6577: $6F
    ld [hl], a                                    ; $6578: $77
    ld h, l                                       ; $6579: $65
    ld [hl], d                                    ; $657A: $72
    rst $38                                       ; $657B: $FF
    ld l, a                                       ; $657C: $6F
    ld h, [hl]                                    ; $657D: $66
    jr nz, jr_018_65CD                            ; $657E: $20 $4D

    ld h, l                                       ; $6580: $65
    cp $62                                        ; $6581: $FE $62
    ld a, c                                       ; $6583: $79
    jr nz, jr_018_65CD                            ; $6584: $20 $47

    ld l, a                                       ; $6586: $6F
    ld h, a                                       ; $6587: $67
    ld l, a                                       ; $6588: $6F
    ld [hl], d                                    ; $6589: $72
    cp $FD                                        ; $658A: $FE $FD
    sbc d                                         ; $658C: $9A
    ld b, d                                       ; $658D: $42
    sbc a                                         ; $658E: $9F
    ld b, c                                       ; $658F: $41
    jr nz, @+$70                                  ; $6590: $20 $6E

    ld l, a                                       ; $6592: $6F

Jump_018_6593:
    ld [hl], h                                    ; $6593: $74
    ld h, l                                       ; $6594: $65
    ld a, [hl-]                                   ; $6595: $3A
    cp $49                                        ; $6596: $FE $49
    ld c, a                                       ; $6598: $4F
    ld d, l                                       ; $6599: $55
    jr nz, jr_018_65D0                            ; $659A: $20 $34

    jr nz, @+$4C                                  ; $659C: $20 $4A

    ld l, a                                       ; $659E: $6F
    ld l, e                                       ; $659F: $6B
    ld h, l                                       ; $65A0: $65
    rst $38                                       ; $65A1: $FF
    ld b, d                                       ; $65A2: $42
    ld l, a                                       ; $65A3: $6F
    ld l, a                                       ; $65A4: $6F
    ld l, e                                       ; $65A5: $6B
    ld [hl], e                                    ; $65A6: $73
    cp $20                                        ; $65A7: $FE $20
    jr nz, @+$22                                  ; $65A9: $20 $20

    jr nz, jr_018_65DA                            ; $65AB: $20 $2D

    dec l                                         ; $65AD: $2D
    ld c, a                                       ; $65AE: $4F
    ld [hl], d                                    ; $65AF: $72
    ld l, h                                       ; $65B0: $6C
    ld l, a                                       ; $65B1: $6F
    ld l, [hl]                                    ; $65B2: $6E

jr_018_65B3:
    cp $FD                                        ; $65B3: $FE $FD
    sbc d                                         ; $65B5: $9A
    ld b, d                                       ; $65B6: $42
    sbc e                                         ; $65B7: $9B

jr_018_65B8:
    ld a, b                                       ; $65B8: $78
    ld [hl], b                                    ; $65B9: $70
    sbc a                                         ; $65BA: $9F
    ld c, c                                       ; $65BB: $49
    ld [hl], h                                    ; $65BC: $74
    daa                                           ; $65BD: $27
    ld [hl], e                                    ; $65BE: $73
    jr nz, jr_018_6624                            ; $65BF: $20 $63

    ld l, a                                       ; $65C1: $6F
    halt                                          ; $65C2: $76
    ld h, l                                       ; $65C3: $65

jr_018_65C4:
    ld [hl], d                                    ; $65C4: $72
    ld h, l                                       ; $65C5: $65
    ld h, h                                       ; $65C6: $64

jr_018_65C7:
    rst $38                                       ; $65C7: $FF
    ld l, c                                       ; $65C8: $69
    ld l, [hl]                                    ; $65C9: $6E
    jr nz, @+$64                                  ; $65CA: $20 $62

    ld h, l                                       ; $65CC: $65

jr_018_65CD:
    ld h, c                                       ; $65CD: $61
    ld [hl], h                                    ; $65CE: $74
    ld h, l                                       ; $65CF: $65

jr_018_65D0:
    ld l, [hl]                                    ; $65D0: $6E
    jr nz, @+$77                                  ; $65D1: $20 $75

    ld [hl], b                                    ; $65D3: $70
    cp $62                                        ; $65D4: $FE $62
    ld l, a                                       ; $65D6: $6F
    ld l, a                                       ; $65D7: $6F
    ld l, e                                       ; $65D8: $6B
    ld [hl], e                                    ; $65D9: $73

jr_018_65DA:
    jr nz, jr_018_663D                            ; $65DA: $20 $61

    ld l, [hl]                                    ; $65DC: $6E
    ld h, h                                       ; $65DD: $64
    jr nz, jr_018_6654                            ; $65DE: $20 $74

    ld l, a                                       ; $65E0: $6F
    ld [hl], d                                    ; $65E1: $72
    ld l, [hl]                                    ; $65E2: $6E
    rst $38                                       ; $65E3: $FF
    ld l, a                                       ; $65E4: $6F
    ld [hl], l                                    ; $65E5: $75
    ld [hl], h                                    ; $65E6: $74
    jr nz, @+$72                                  ; $65E7: $20 $70

    ld h, c                                       ; $65E9: $61
    ld h, a                                       ; $65EA: $67
    ld h, l                                       ; $65EB: $65
    ld [hl], e                                    ; $65EC: $73
    ld l, $FE                                     ; $65ED: $2E $FE
    db $FD                                        ; $65EF: $FD
    sbc d                                         ; $65F0: $9A
    ld b, d                                       ; $65F1: $42
    sbc e                                         ; $65F2: $9B
    ld a, b                                       ; $65F3: $78
    ld [hl], b                                    ; $65F4: $70
    sbc a                                         ; $65F5: $9F
    ld d, h                                       ; $65F6: $54
    ld l, b                                       ; $65F7: $68
    ld h, l                                       ; $65F8: $65
    ld [hl], d                                    ; $65F9: $72
    ld h, l                                       ; $65FA: $65
    daa                                           ; $65FB: $27
    ld [hl], e                                    ; $65FC: $73
    jr nz, jr_018_6660                            ; $65FD: $20 $61

    jr nz, jr_018_6663                            ; $65FF: $20 $62

    ld l, a                                       ; $6601: $6F
    ld l, a                                       ; $6602: $6F
    ld l, e                                       ; $6603: $6B
    rst $38                                       ; $6604: $FF
    ld l, h                                       ; $6605: $6C
    ld h, l                                       ; $6606: $65
    halt                                          ; $6607: $76
    ld h, l                                       ; $6608: $65
    ld l, h                                       ; $6609: $6C
    ld l, c                                       ; $660A: $69
    ld l, [hl]                                    ; $660B: $6E
    ld h, a                                       ; $660C: $67
    jr nz, jr_018_6683                            ; $660D: $20 $74

    ld l, b                                       ; $660F: $68
    ld l, c                                       ; $6610: $69
    ld [hl], e                                    ; $6611: $73
    cp $74                                        ; $6612: $FE $74
    ld h, c                                       ; $6614: $61
    ld h, d                                       ; $6615: $62
    ld l, h                                       ; $6616: $6C
    ld h, l                                       ; $6617: $65
    ld l, $FE                                     ; $6618: $2E $FE
    ld c, c                                       ; $661A: $49
    jr nz, jr_018_6680                            ; $661B: $20 $63

    ld h, c                                       ; $661D: $61
    ld l, [hl]                                    ; $661E: $6E
    jr nz, @+$6C                                  ; $661F: $20 $6A

    ld [hl], l                                    ; $6621: $75
    ld [hl], e                                    ; $6622: $73
    ld [hl], h                                    ; $6623: $74

jr_018_6624:
    rst $38                                       ; $6624: $FF
    ld l, l                                       ; $6625: $6D
    ld h, c                                       ; $6626: $61
    ld l, e                                       ; $6627: $6B
    ld h, l                                       ; $6628: $65
    jr nz, @+$71                                  ; $6629: $20 $6F

    ld [hl], l                                    ; $662B: $75
    ld [hl], h                                    ; $662C: $74
    jr nz, jr_018_66A3                            ; $662D: $20 $74

    ld l, b                                       ; $662F: $68
    ld h, l                                       ; $6630: $65
    cp $74                                        ; $6631: $FE $74
    ld l, c                                       ; $6633: $69
    ld [hl], h                                    ; $6634: $74
    ld l, h                                       ; $6635: $6C
    ld h, l                                       ; $6636: $65
    ld a, [hl-]                                   ; $6637: $3A
    cp $45                                        ; $6638: $FE $45
    halt                                          ; $663A: $76
    ld [hl], l                                    ; $663B: $75
    daa                                           ; $663C: $27

jr_018_663D:
    ld [hl], e                                    ; $663D: $73
    ld l, $2E                                     ; $663E: $2E $2E
    ld l, $FE                                     ; $6640: $2E $FE
    ld b, h                                       ; $6642: $44
    ld h, c                                       ; $6643: $61
    ld a, c                                       ; $6644: $79
    ld l, $2E                                     ; $6645: $2E $2E
    ld l, $FE                                     ; $6647: $2E $FE
    ld h, c                                       ; $6649: $61
    ld [hl], h                                    ; $664A: $74
    ld l, $2E                                     ; $664B: $2E $2E
    ld l, $FE                                     ; $664D: $2E $FE
    ld c, d                                       ; $664F: $4A
    ld h, l                                       ; $6650: $65
    ld l, h                                       ; $6651: $6C
    ld l, h                                       ; $6652: $6C
    ld a, c                                       ; $6653: $79

Call_018_6654:
jr_018_6654:
    ld h, d                                       ; $6654: $62
    ld h, l                                       ; $6655: $65
    ld h, c                                       ; $6656: $61
    ld l, [hl]                                    ; $6657: $6E
    ld l, $2E                                     ; $6658: $2E $2E
    ld l, $FE                                     ; $665A: $2E $FE
    ld b, d                                       ; $665C: $42
    ld h, l                                       ; $665D: $65
    ld h, c                                       ; $665E: $61
    ld h, e                                       ; $665F: $63

jr_018_6660:
    ld l, b                                       ; $6660: $68
    ld l, $FE                                     ; $6661: $2E $FE

jr_018_6663:
    ld l, $2E                                     ; $6663: $2E $2E
    ld l, $FE                                     ; $6665: $2E $FE
    ld c, a                                       ; $6667: $4F
    ld l, b                                       ; $6668: $68
    jr nz, @+$64                                  ; $6669: $20 $62

    ld l, a                                       ; $666B: $6F
    ld a, c                                       ; $666C: $79
    ld l, $FE                                     ; $666D: $2E $FE
    db $FD                                        ; $666F: $FD
    sbc d                                         ; $6670: $9A
    ld b, d                                       ; $6671: $42
    ld c, e                                       ; $6672: $4B
    ld bc, $A224                                  ; $6673: $01 $24 $A2
    jr jr_018_6678                                ; $6676: $18 $00

jr_018_6678:
    nop                                           ; $6678: $00
    sub b                                         ; $6679: $90
    ld h, [hl]                                    ; $667A: $66
    jr jr_018_667E                                ; $667B: $18 $01

    nop                                           ; $667D: $00

jr_018_667E:
    ldh a, [$66]                                  ; $667E: $F0 $66

jr_018_6680:
    jr jr_018_6684                                ; $6680: $18 $02

    nop                                           ; $6682: $00

jr_018_6683:
    inc hl                                        ; $6683: $23

jr_018_6684:
    ld h, a                                       ; $6684: $67
    jr jr_018_668A                                ; $6685: $18 $03

    nop                                           ; $6687: $00
    jp hl                                         ; $6688: $E9


    ld l, d                                       ; $6689: $6A

jr_018_668A:
    jr jr_018_6690                                ; $668A: $18 $04

    nop                                           ; $668C: $00
    rra                                           ; $668D: $1F
    ld l, e                                       ; $668E: $6B
    rst $38                                       ; $668F: $FF

jr_018_6690:
    sbc e                                         ; $6690: $9B
    ret c                                         ; $6691: $D8

    ld h, b                                       ; $6692: $60
    sbc a                                         ; $6693: $9F
    ld c, b                                       ; $6694: $48
    ld l, a                                       ; $6695: $6F
    ld [hl], a                                    ; $6696: $77
    daa                                           ; $6697: $27
    ld [hl], e                                    ; $6698: $73
    jr nz, jr_018_670F                            ; $6699: $20 $74

    ld l, b                                       ; $669B: $68
    ld h, l                                       ; $669C: $65
    rst $38                                       ; $669D: $FF
    ld [hl], a                                    ; $669E: $77
    ld h, c                                       ; $669F: $61
    ld [hl], h                                    ; $66A0: $74
    ld h, l                                       ; $66A1: $65
    ld [hl], d                                    ; $66A2: $72

jr_018_66A3:
    ccf                                           ; $66A3: $3F
    cp $FD                                        ; $66A4: $FE $FD
    sbc e                                         ; $66A6: $9B
    ld a, b                                       ; $66A7: $78
    ld [hl], b                                    ; $66A8: $70
    sbc a                                         ; $66A9: $9F
    ld b, e                                       ; $66AA: $43
    ld l, a                                       ; $66AB: $6F
    ld l, h                                       ; $66AC: $6C
    ld h, h                                       ; $66AD: $64
    ld l, $FE                                     ; $66AE: $2E $FE
    db $FD                                        ; $66B0: $FD
    sbc e                                         ; $66B1: $9B
    ret c                                         ; $66B2: $D8

    ld h, b                                       ; $66B3: $60
    sbc a                                         ; $66B4: $9F
    ld c, c                                       ; $66B5: $49
    jr nz, jr_018_672F                            ; $66B6: $20 $77

    ld l, c                                       ; $66B8: $69
    ld [hl], e                                    ; $66B9: $73
    ld l, b                                       ; $66BA: $68
    jr nz, jr_018_6731                            ; $66BB: $20 $74

    ld l, b                                       ; $66BD: $68
    ld h, l                                       ; $66BE: $65
    ld a, c                                       ; $66BF: $79
    daa                                           ; $66C0: $27
    ld h, h                                       ; $66C1: $64
    rst $38                                       ; $66C2: $FF
    ld l, h                                       ; $66C3: $6C
    ld h, l                                       ; $66C4: $65
    ld [hl], h                                    ; $66C5: $74
    jr nz, @+$6F                                  ; $66C6: $20 $6D

    ld h, l                                       ; $66C8: $65
    jr nz, jr_018_6732                            ; $66C9: $20 $67

    ld l, a                                       ; $66CB: $6F
    jr nz, jr_018_673D                            ; $66CC: $20 $6F

    ld [hl], l                                    ; $66CE: $75
    ld [hl], h                                    ; $66CF: $74
    cp $66                                        ; $66D0: $FE $66
    ld l, a                                       ; $66D2: $6F
    ld [hl], d                                    ; $66D3: $72
    jr nz, jr_018_6737                            ; $66D4: $20 $61

    jr nz, jr_018_674B                            ; $66D6: $20 $73

    ld [hl], a                                    ; $66D8: $77
    ld l, c                                       ; $66D9: $69
    ld l, l                                       ; $66DA: $6D
    rst $38                                       ; $66DB: $FF
    ld l, a                                       ; $66DC: $6F
    ld l, [hl]                                    ; $66DD: $6E
    ld h, e                                       ; $66DE: $63
    ld h, l                                       ; $66DF: $65
    jr nz, jr_018_674B                            ; $66E0: $20 $69

    ld l, [hl]                                    ; $66E2: $6E
    jr nz, jr_018_6746                            ; $66E3: $20 $61

    cp $77                                        ; $66E5: $FE $77
    ld l, b                                       ; $66E7: $68
    ld l, c                                       ; $66E8: $69
    ld l, h                                       ; $66E9: $6C
    ld h, l                                       ; $66EA: $65
    ld l, $FE                                     ; $66EB: $2E $FE
    db $FD                                        ; $66ED: $FD
    sbc d                                         ; $66EE: $9A
    ld [de], a                                    ; $66EF: $12
    sbc e                                         ; $66F0: $9B
    ret c                                         ; $66F1: $D8

    ld h, b                                       ; $66F2: $60
    sbc a                                         ; $66F3: $9F
    ld c, c                                       ; $66F4: $49
    ld h, [hl]                                    ; $66F5: $66
    jr nz, jr_018_6771                            ; $66F6: $20 $79

    ld l, a                                       ; $66F8: $6F
    ld [hl], l                                    ; $66F9: $75
    daa                                           ; $66FA: $27
    ld [hl], d                                    ; $66FB: $72
    ld h, l                                       ; $66FC: $65
    jr nz, @+$73                                  ; $66FD: $20 $71

    ld [hl], l                                    ; $66FF: $75
    ld l, c                                       ; $6700: $69
    ld h, l                                       ; $6701: $65
    ld [hl], h                                    ; $6702: $74
    rst $38                                       ; $6703: $FF
    ld a, c                                       ; $6704: $79
    ld l, a                                       ; $6705: $6F
    ld [hl], l                                    ; $6706: $75
    jr nz, jr_018_676C                            ; $6707: $20 $63

    ld h, c                                       ; $6709: $61
    ld l, [hl]                                    ; $670A: $6E
    jr nz, jr_018_676E                            ; $670B: $20 $61

    ld [hl], e                                    ; $670D: $73
    ld l, e                                       ; $670E: $6B

jr_018_670F:
    jr nz, jr_018_677E                            ; $670F: $20 $6D

    ld h, l                                       ; $6711: $65
    cp $61                                        ; $6712: $FE $61
    ld l, [hl]                                    ; $6714: $6E
    ld a, c                                       ; $6715: $79
    ld [hl], h                                    ; $6716: $74
    ld l, b                                       ; $6717: $68
    ld l, c                                       ; $6718: $69
    ld l, [hl]                                    ; $6719: $6E
    ld h, a                                       ; $671A: $67
    ld l, $FE                                     ; $671B: $2E $FE
    db $FD                                        ; $671D: $FD
    sbc d                                         ; $671E: $9A
    ld b, l                                       ; $671F: $45
    ld l, $A3                                     ; $6720: $2E $A3
    ld b, b                                       ; $6722: $40
    xor h                                         ; $6723: $AC
    inc h                                         ; $6724: $24
    and d                                         ; $6725: $A2
    inc bc                                        ; $6726: $03
    sbc e                                         ; $6727: $9B
    ret c                                         ; $6728: $D8

    ld h, b                                       ; $6729: $60
    sbc a                                         ; $672A: $9F
    ld c, c                                       ; $672B: $49
    ld h, [hl]                                    ; $672C: $66
    jr nz, jr_018_67A8                            ; $672D: $20 $79

jr_018_672F:
    ld l, a                                       ; $672F: $6F
    ld [hl], l                                    ; $6730: $75

jr_018_6731:
    daa                                           ; $6731: $27

jr_018_6732:
    ld [hl], d                                    ; $6732: $72
    ld h, l                                       ; $6733: $65
    jr nz, jr_018_67A7                            ; $6734: $20 $71

    ld [hl], l                                    ; $6736: $75

jr_018_6737:
    ld l, c                                       ; $6737: $69
    ld h, l                                       ; $6738: $65
    ld [hl], h                                    ; $6739: $74
    rst $38                                       ; $673A: $FF
    ld a, c                                       ; $673B: $79
    ld l, a                                       ; $673C: $6F

jr_018_673D:
    ld [hl], l                                    ; $673D: $75
    jr nz, @+$65                                  ; $673E: $20 $63

    ld h, c                                       ; $6740: $61
    ld l, [hl]                                    ; $6741: $6E
    jr nz, jr_018_67A5                            ; $6742: $20 $61

    ld [hl], e                                    ; $6744: $73
    ld l, e                                       ; $6745: $6B

jr_018_6746:
    jr nz, jr_018_67B5                            ; $6746: $20 $6D

    ld h, l                                       ; $6748: $65
    cp $61                                        ; $6749: $FE $61

jr_018_674B:
    ld l, [hl]                                    ; $674B: $6E
    ld a, c                                       ; $674C: $79
    ld [hl], h                                    ; $674D: $74
    ld l, b                                       ; $674E: $68
    ld l, c                                       ; $674F: $69
    ld l, [hl]                                    ; $6750: $6E
    ld h, a                                       ; $6751: $67
    ld l, $FE                                     ; $6752: $2E $FE
    db $FD                                        ; $6754: $FD
    sbc e                                         ; $6755: $9B
    ld a, b                                       ; $6756: $78
    ld [hl], b                                    ; $6757: $70
    sbc a                                         ; $6758: $9F
    ld d, a                                       ; $6759: $57
    ld l, b                                       ; $675A: $68
    ld h, c                                       ; $675B: $61
    ld [hl], h                                    ; $675C: $74
    jr nz, jr_018_67C3                            ; $675D: $20 $64

    ld l, a                                       ; $675F: $6F
    jr nz, jr_018_67DB                            ; $6760: $20 $79

    ld l, a                                       ; $6762: $6F
    ld [hl], l                                    ; $6763: $75
    rst $38                                       ; $6764: $FF
    ld l, e                                       ; $6765: $6B
    ld l, [hl]                                    ; $6766: $6E
    ld l, a                                       ; $6767: $6F
    ld [hl], a                                    ; $6768: $77
    jr nz, jr_018_67CC                            ; $6769: $20 $61

    ld h, d                                       ; $676B: $62

jr_018_676C:
    ld l, a                                       ; $676C: $6F
    ld [hl], l                                    ; $676D: $75

jr_018_676E:
    ld [hl], h                                    ; $676E: $74
    cp $62                                        ; $676F: $FE $62

jr_018_6771:
    ld h, c                                       ; $6771: $61
    ld [hl], d                                    ; $6772: $72
    ld [hl], d                                    ; $6773: $72
    ld l, c                                       ; $6774: $69
    ld h, l                                       ; $6775: $65
    ld [hl], d                                    ; $6776: $72
    ld [hl], e                                    ; $6777: $73
    ccf                                           ; $6778: $3F
    cp $FD                                        ; $6779: $FE $FD
    sbc e                                         ; $677B: $9B
    ret c                                         ; $677C: $D8

    ld h, b                                       ; $677D: $60

jr_018_677E:
    sbc a                                         ; $677E: $9F
    ld b, d                                       ; $677F: $42
    ld h, c                                       ; $6780: $61
    ld [hl], d                                    ; $6781: $72
    ld [hl], d                                    ; $6782: $72
    ld l, c                                       ; $6783: $69
    ld h, l                                       ; $6784: $65
    ld [hl], d                                    ; $6785: $72
    ld [hl], e                                    ; $6786: $73
    ccf                                           ; $6787: $3F
    cp $FD                                        ; $6788: $FE $FD
    sbc e                                         ; $678A: $9B
    ld a, b                                       ; $678B: $78
    ld [hl], b                                    ; $678C: $70
    sbc a                                         ; $678D: $9F
    ld d, h                                       ; $678E: $54
    ld l, b                                       ; $678F: $68
    ld h, l                                       ; $6790: $65
    ld [hl], d                                    ; $6791: $72
    ld h, l                                       ; $6792: $65
    daa                                           ; $6793: $27
    ld [hl], e                                    ; $6794: $73
    jr nz, jr_018_680A                            ; $6795: $20 $73

    ld l, a                                       ; $6797: $6F
    ld l, l                                       ; $6798: $6D
    ld h, l                                       ; $6799: $65
    rst $38                                       ; $679A: $FF
    ld l, e                                       ; $679B: $6B
    ld l, c                                       ; $679C: $69
    ld l, [hl]                                    ; $679D: $6E
    ld h, h                                       ; $679E: $64
    jr nz, jr_018_6810                            ; $679F: $20 $6F

    ld h, [hl]                                    ; $67A1: $66
    cp $65                                        ; $67A2: $FE $65
    ld l, h                                       ; $67A4: $6C

jr_018_67A5:
    ld h, l                                       ; $67A5: $65
    ld h, e                                       ; $67A6: $63

jr_018_67A7:
    ld [hl], h                                    ; $67A7: $74

jr_018_67A8:
    ld [hl], d                                    ; $67A8: $72
    ld l, c                                       ; $67A9: $69
    ld h, e                                       ; $67AA: $63
    jr nz, jr_018_6813                            ; $67AB: $20 $66

    ld l, c                                       ; $67AD: $69
    ld h, l                                       ; $67AE: $65
    ld l, h                                       ; $67AF: $6C
    ld h, h                                       ; $67B0: $64
    rst $38                                       ; $67B1: $FF
    ld h, d                                       ; $67B2: $62
    ld l, h                                       ; $67B3: $6C
    ld l, a                                       ; $67B4: $6F

jr_018_67B5:
    ld h, e                                       ; $67B5: $63
    ld l, e                                       ; $67B6: $6B
    ld l, c                                       ; $67B7: $69
    ld l, [hl]                                    ; $67B8: $6E
    ld h, a                                       ; $67B9: $67
    jr nz, jr_018_6829                            ; $67BA: $20 $6D

    ld a, c                                       ; $67BC: $79
    cp $70                                        ; $67BD: $FE $70
    ld [hl], d                                    ; $67BF: $72
    ld l, a                                       ; $67C0: $6F
    ld h, a                                       ; $67C1: $67
    ld [hl], d                                    ; $67C2: $72

jr_018_67C3:
    ld h, l                                       ; $67C3: $65
    ld [hl], e                                    ; $67C4: $73
    ld [hl], e                                    ; $67C5: $73
    jr nz, @+$6B                                  ; $67C6: $20 $69

    ld l, [hl]                                    ; $67C8: $6E
    rst $38                                       ; $67C9: $FF
    ld [hl], h                                    ; $67CA: $74
    ld l, b                                       ; $67CB: $68

jr_018_67CC:
    ld h, l                                       ; $67CC: $65
    jr nz, jr_018_6836                            ; $67CD: $20 $67

    ld h, l                                       ; $67CF: $65
    ld a, c                                       ; $67D0: $79
    ld [hl], e                                    ; $67D1: $73
    ld h, l                                       ; $67D2: $65
    ld [hl], d                                    ; $67D3: $72
    ld l, $FE                                     ; $67D4: $2E $FE
    db $FD                                        ; $67D6: $FD
    sbc e                                         ; $67D7: $9B
    ret c                                         ; $67D8: $D8

    ld h, b                                       ; $67D9: $60
    sbc a                                         ; $67DA: $9F

jr_018_67DB:
    ld b, l                                       ; $67DB: $45
    ld [hl], h                                    ; $67DC: $74
    daa                                           ; $67DD: $27
    ld h, e                                       ; $67DE: $63
    ld l, h                                       ; $67DF: $6C
    ld h, l                                       ; $67E0: $65
    ld [hl], d                                    ; $67E1: $72
    ld l, c                                       ; $67E2: $69
    ld h, e                                       ; $67E3: $63
    inc l                                         ; $67E4: $2C
    jr nz, jr_018_6860                            ; $67E5: $20 $79

    ld l, a                                       ; $67E7: $6F
    ld [hl], l                                    ; $67E8: $75
    rst $38                                       ; $67E9: $FF
    ld [hl], e                                    ; $67EA: $73
    ld h, c                                       ; $67EB: $61
    ld a, c                                       ; $67EC: $79
    ccf                                           ; $67ED: $3F
    cp $FD                                        ; $67EE: $FE $FD
    sbc e                                         ; $67F0: $9B
    ld a, b                                       ; $67F1: $78
    ld [hl], b                                    ; $67F2: $70
    sbc a                                         ; $67F3: $9F
    ld b, l                                       ; $67F4: $45
    ld [hl], d                                    ; $67F5: $72
    ld l, $2E                                     ; $67F6: $2E $2E
    ld l, $FE                                     ; $67F8: $2E $FE
    ld c, h                                       ; $67FA: $4C
    ld l, c                                       ; $67FB: $69
    ld l, e                                       ; $67FC: $6B
    ld h, l                                       ; $67FD: $65
    jr nz, jr_018_686C                            ; $67FE: $20 $6C

    ld l, c                                       ; $6800: $69
    ld h, a                                       ; $6801: $67
    ld l, b                                       ; $6802: $68
    ld [hl], h                                    ; $6803: $74
    ld l, [hl]                                    ; $6804: $6E
    ld l, c                                       ; $6805: $69
    ld l, [hl]                                    ; $6806: $6E
    ld h, a                                       ; $6807: $67
    ld l, $FE                                     ; $6808: $2E $FE

jr_018_680A:
    ld b, c                                       ; $680A: $41
    jr nz, jr_018_6884                            ; $680B: $20 $77

    ld h, c                                       ; $680D: $61
    ld l, h                                       ; $680E: $6C
    ld l, h                                       ; $680F: $6C

jr_018_6810:
    jr nz, jr_018_687F                            ; $6810: $20 $6D

    ld h, c                                       ; $6812: $61

jr_018_6813:
    ld h, h                                       ; $6813: $64
    ld h, l                                       ; $6814: $65
    jr nz, @+$71                                  ; $6815: $20 $6F

    ld [hl], l                                    ; $6817: $75
    ld [hl], h                                    ; $6818: $74
    rst $38                                       ; $6819: $FF
    ld l, a                                       ; $681A: $6F
    ld h, [hl]                                    ; $681B: $66
    jr nz, jr_018_688A                            ; $681C: $20 $6C

    ld l, c                                       ; $681E: $69
    ld h, a                                       ; $681F: $67
    ld l, b                                       ; $6820: $68
    ld [hl], h                                    ; $6821: $74
    ld l, [hl]                                    ; $6822: $6E
    ld l, c                                       ; $6823: $69
    ld l, [hl]                                    ; $6824: $6E
    ld h, a                                       ; $6825: $67
    ld l, $FE                                     ; $6826: $2E $FE
    db $FD                                        ; $6828: $FD

jr_018_6829:
    sbc e                                         ; $6829: $9B
    ret c                                         ; $682A: $D8

    ld h, b                                       ; $682B: $60
    sbc a                                         ; $682C: $9F
    ld b, c                                       ; $682D: $41
    ld l, b                                       ; $682E: $68
    ld hl, $2020                                  ; $682F: $21 $20 $20
    ld b, c                                       ; $6832: $41
    ld l, [hl]                                    ; $6833: $6E
    rst $38                                       ; $6834: $FF
    db $FD                                        ; $6835: $FD

jr_018_6836:
    sbc a                                         ; $6836: $9F
    ld h, l                                       ; $6837: $65
    ld l, [hl]                                    ; $6838: $6E
    ld h, e                                       ; $6839: $63
    ld l, b                                       ; $683A: $68
    ld h, c                                       ; $683B: $61
    ld l, [hl]                                    ; $683C: $6E
    ld [hl], h                                    ; $683D: $74
    ld l, l                                       ; $683E: $6D
    ld h, l                                       ; $683F: $65
    ld l, [hl]                                    ; $6840: $6E
    ld [hl], h                                    ; $6841: $74
    ld hl, $49FE                                  ; $6842: $21 $FE $49
    ld [hl], e                                    ; $6845: $73
    jr nz, jr_018_68B1                            ; $6846: $20 $69

    ld [hl], h                                    ; $6848: $74
    jr nz, @+$72                                  ; $6849: $20 $70

    ld l, a                                       ; $684B: $6F
    ld [hl], a                                    ; $684C: $77
    ld h, l                                       ; $684D: $65
    ld [hl], d                                    ; $684E: $72
    ld h, [hl]                                    ; $684F: $66
    ld [hl], l                                    ; $6850: $75
    ld l, h                                       ; $6851: $6C
    ccf                                           ; $6852: $3F
    cp $FD                                        ; $6853: $FE $FD
    sbc e                                         ; $6855: $9B
    ld a, b                                       ; $6856: $78
    ld [hl], b                                    ; $6857: $70
    sbc a                                         ; $6858: $9F
    ld c, c                                       ; $6859: $49
    jr nz, jr_018_68CF                            ; $685A: $20 $73

    ld [hl], l                                    ; $685C: $75
    ld [hl], b                                    ; $685D: $70
    ld [hl], b                                    ; $685E: $70
    ld l, a                                       ; $685F: $6F

jr_018_6860:
    ld [hl], e                                    ; $6860: $73
    ld h, l                                       ; $6861: $65
    ld l, $FE                                     ; $6862: $2E $FE
    db $FD                                        ; $6864: $FD
    sbc e                                         ; $6865: $9B
    ret c                                         ; $6866: $D8

    ld h, b                                       ; $6867: $60
    sbc a                                         ; $6868: $9F
    ld c, b                                       ; $6869: $48
    ld l, l                                       ; $686A: $6D
    ld l, l                                       ; $686B: $6D

jr_018_686C:
    ld l, l                                       ; $686C: $6D
    ld l, l                                       ; $686D: $6D
    ld l, $2E                                     ; $686E: $2E $2E
    ld l, $FE                                     ; $6870: $2E $FE
    ld l, $2E                                     ; $6872: $2E $2E
    ld l, $FE                                     ; $6874: $2E $FE
    ld c, c                                       ; $6876: $49
    daa                                           ; $6877: $27
    ld l, h                                       ; $6878: $6C
    ld l, h                                       ; $6879: $6C
    jr nz, jr_018_68F0                            ; $687A: $20 $74

    ld h, l                                       ; $687C: $65
    ld l, h                                       ; $687D: $6C
    ld l, h                                       ; $687E: $6C

jr_018_687F:
    jr nz, jr_018_68FA                            ; $687F: $20 $79

    ld l, a                                       ; $6881: $6F
    ld [hl], l                                    ; $6882: $75
    rst $38                                       ; $6883: $FF

jr_018_6884:
    ld h, c                                       ; $6884: $61
    jr nz, jr_018_68FA                            ; $6885: $20 $73

    ld h, l                                       ; $6887: $65
    ld h, e                                       ; $6888: $63
    ld [hl], d                                    ; $6889: $72

jr_018_688A:
    ld h, l                                       ; $688A: $65
    ld [hl], h                                    ; $688B: $74
    ld l, $FE                                     ; $688C: $2E $FE
    db $FD                                        ; $688E: $FD
    sbc e                                         ; $688F: $9B
    ld a, b                                       ; $6890: $78
    ld [hl], b                                    ; $6891: $70
    sbc a                                         ; $6892: $9F
    ld b, a                                       ; $6893: $47
    ld [hl], d                                    ; $6894: $72
    ld h, l                                       ; $6895: $65
    ld h, c                                       ; $6896: $61
    ld [hl], h                                    ; $6897: $74
    ld hl, $FDFE                                  ; $6898: $21 $FE $FD
    sbc e                                         ; $689B: $9B
    ret c                                         ; $689C: $D8

    ld h, b                                       ; $689D: $60
    sbc a                                         ; $689E: $9F
    ld c, c                                       ; $689F: $49
    jr nz, jr_018_6919                            ; $68A0: $20 $77

    ld h, c                                       ; $68A2: $61
    ld [hl], e                                    ; $68A3: $73
    jr nz, jr_018_6908                            ; $68A4: $20 $62

    ld [hl], d                                    ; $68A6: $72
    ld l, a                                       ; $68A7: $6F
    ld [hl], l                                    ; $68A8: $75
    ld h, a                                       ; $68A9: $67
    ld l, b                                       ; $68AA: $68
    ld [hl], h                                    ; $68AB: $74
    rst $38                                       ; $68AC: $FF
    ld l, b                                       ; $68AD: $68
    ld h, l                                       ; $68AE: $65
    ld [hl], d                                    ; $68AF: $72
    ld h, l                                       ; $68B0: $65

jr_018_68B1:
    jr nz, jr_018_6915                            ; $68B1: $20 $62

    ld a, c                                       ; $68B3: $79
    jr nz, jr_018_6903                            ; $68B4: $20 $4D

    ld l, a                                       ; $68B6: $6F
    ld h, d                                       ; $68B7: $62
    ld l, c                                       ; $68B8: $69
    ld [hl], e                                    ; $68B9: $73
    cp $74                                        ; $68BA: $FE $74
    ld l, a                                       ; $68BC: $6F
    jr nz, jr_018_6932                            ; $68BD: $20 $73

    ld [hl], h                                    ; $68BF: $74
    ld [hl], l                                    ; $68C0: $75
    ld h, h                                       ; $68C1: $64
    ld a, c                                       ; $68C2: $79
    jr nz, @+$63                                  ; $68C3: $20 $61

    ld l, h                                       ; $68C5: $6C
    ld l, h                                       ; $68C6: $6C
    rst $38                                       ; $68C7: $FF
    ld [hl], e                                    ; $68C8: $73
    ld l, a                                       ; $68C9: $6F
    ld [hl], d                                    ; $68CA: $72
    ld [hl], h                                    ; $68CB: $74
    ld [hl], e                                    ; $68CC: $73
    jr nz, jr_018_693E                            ; $68CD: $20 $6F

jr_018_68CF:
    ld h, [hl]                                    ; $68CF: $66
    jr nz, jr_018_6944                            ; $68D0: $20 $72

    ld h, l                                       ; $68D2: $65
    ld l, h                                       ; $68D3: $6C
    ld l, c                                       ; $68D4: $69
    ld h, e                                       ; $68D5: $63
    ld [hl], e                                    ; $68D6: $73
    cp $66                                        ; $68D7: $FE $66
    ld [hl], d                                    ; $68D9: $72
    ld l, a                                       ; $68DA: $6F
    ld l, l                                       ; $68DB: $6D
    jr nz, jr_018_6952                            ; $68DC: $20 $74

    ld l, b                                       ; $68DE: $68
    ld h, l                                       ; $68DF: $65
    jr nz, jr_018_6950                            ; $68E0: $20 $6E

    ld h, l                                       ; $68E2: $65
    ld h, c                                       ; $68E3: $61
    ld [hl], d                                    ; $68E4: $72
    ld h, d                                       ; $68E5: $62
    ld a, c                                       ; $68E6: $79
    rst $38                                       ; $68E7: $FF
    ld [hl], d                                    ; $68E8: $72
    ld [hl], l                                    ; $68E9: $75
    ld l, c                                       ; $68EA: $69
    ld l, [hl]                                    ; $68EB: $6E
    ld [hl], e                                    ; $68EC: $73
    ld l, $FE                                     ; $68ED: $2E $FE
    ld d, h                                       ; $68EF: $54

jr_018_68F0:
    ld l, b                                       ; $68F0: $68
    ld h, l                                       ; $68F1: $65
    jr nz, jr_018_6967                            ; $68F2: $20 $73

    ld l, a                                       ; $68F4: $6F
    ld l, h                                       ; $68F5: $6C
    ld h, h                                       ; $68F6: $64
    ld l, c                                       ; $68F7: $69
    ld h, l                                       ; $68F8: $65
    ld [hl], d                                    ; $68F9: $72

jr_018_68FA:
    ld [hl], e                                    ; $68FA: $73
    rst $38                                       ; $68FB: $FF
    ld l, b                                       ; $68FC: $68
    ld h, c                                       ; $68FD: $61
    halt                                          ; $68FE: $76
    ld h, l                                       ; $68FF: $65
    ld l, [hl]                                    ; $6900: $6E
    daa                                           ; $6901: $27
    ld [hl], h                                    ; $6902: $74

jr_018_6903:
    jr nz, @+$63                                  ; $6903: $20 $61

    ld l, h                                       ; $6905: $6C
    ld l, h                                       ; $6906: $6C
    ld l, a                                       ; $6907: $6F

jr_018_6908:
    ld [hl], a                                    ; $6908: $77
    ld h, l                                       ; $6909: $65
    ld h, h                                       ; $690A: $64
    cp $6D                                        ; $690B: $FE $6D
    ld h, l                                       ; $690D: $65
    jr nz, jr_018_6984                            ; $690E: $20 $74

    ld l, a                                       ; $6910: $6F
    jr nz, jr_018_6989                            ; $6911: $20 $76

    ld l, c                                       ; $6913: $69
    ld [hl], e                                    ; $6914: $73

jr_018_6915:
    ld l, c                                       ; $6915: $69
    ld [hl], h                                    ; $6916: $74
    rst $38                                       ; $6917: $FF
    ld [hl], h                                    ; $6918: $74

jr_018_6919:
    ld l, b                                       ; $6919: $68
    ld h, l                                       ; $691A: $65
    ld l, l                                       ; $691B: $6D
    inc l                                         ; $691C: $2C
    jr nz, jr_018_6993                            ; $691D: $20 $74

    ld l, b                                       ; $691F: $68
    ld l, a                                       ; $6920: $6F
    ld [hl], l                                    ; $6921: $75
    ld h, a                                       ; $6922: $67
    ld l, b                                       ; $6923: $68
    ld hl, $54FE                                  ; $6924: $21 $FE $54
    ld l, b                                       ; $6927: $68
    ld h, l                                       ; $6928: $65
    ld a, c                                       ; $6929: $79
    jr nz, jr_018_699F                            ; $692A: $20 $73

    ld h, c                                       ; $692C: $61
    ld a, c                                       ; $692D: $79
    jr nz, jr_018_6999                            ; $692E: $20 $69

    ld [hl], h                                    ; $6930: $74
    daa                                           ; $6931: $27

jr_018_6932:
    ld [hl], e                                    ; $6932: $73
    rst $38                                       ; $6933: $FF
    ld [hl], h                                    ; $6934: $74
    ld l, a                                       ; $6935: $6F
    ld l, a                                       ; $6936: $6F
    jr nz, @+$66                                  ; $6937: $20 $64

    ld h, c                                       ; $6939: $61
    ld l, [hl]                                    ; $693A: $6E
    ld h, a                                       ; $693B: $67
    ld h, l                                       ; $693C: $65
    ld [hl], d                                    ; $693D: $72

jr_018_693E:
    ld l, a                                       ; $693E: $6F
    ld [hl], l                                    ; $693F: $75
    ld [hl], e                                    ; $6940: $73
    inc l                                         ; $6941: $2C
    cp $73                                        ; $6942: $FE $73

jr_018_6944:
    ld l, a                                       ; $6944: $6F
    jr nz, @+$4B                                  ; $6945: $20 $49

    jr nz, @+$63                                  ; $6947: $20 $61

    ld l, l                                       ; $6949: $6D
    jr nz, jr_018_69AD                            ; $694A: $20 $61

    rst $38                                       ; $694C: $FF
    ld [hl], b                                    ; $694D: $70
    ld [hl], d                                    ; $694E: $72
    ld l, c                                       ; $694F: $69

jr_018_6950:
    ld [hl], e                                    ; $6950: $73
    ld l, a                                       ; $6951: $6F

jr_018_6952:
    ld l, [hl]                                    ; $6952: $6E

Call_018_6953:
    ld h, l                                       ; $6953: $65
    ld [hl], d                                    ; $6954: $72
    jr nz, jr_018_69CC                            ; $6955: $20 $75

    ld l, [hl]                                    ; $6957: $6E
    ld [hl], h                                    ; $6958: $74
    ld l, c                                       ; $6959: $69
    ld l, h                                       ; $695A: $6C
    cp $77                                        ; $695B: $FE $77
    ld h, l                                       ; $695D: $65
    jr nz, jr_018_69D2                            ; $695E: $20 $72

    ld h, l                                       ; $6960: $65
    ld [hl], h                                    ; $6961: $74
    ld [hl], l                                    ; $6962: $75
    ld [hl], d                                    ; $6963: $72
    ld l, [hl]                                    ; $6964: $6E
    jr nz, jr_018_69DB                            ; $6965: $20 $74

jr_018_6967:
    ld l, a                                       ; $6967: $6F
    rst $38                                       ; $6968: $FF
    ld [hl], h                                    ; $6969: $74
    ld l, b                                       ; $696A: $68
    ld h, l                                       ; $696B: $65
    jr nz, @+$45                                  ; $696C: $20 $43

    ld h, c                                       ; $696E: $61
    ld [hl], b                                    ; $696F: $70
    ld l, c                                       ; $6970: $69
    ld [hl], h                                    ; $6971: $74
    ld l, a                                       ; $6972: $6F
    ld l, h                                       ; $6973: $6C
    ld l, $FE                                     ; $6974: $2E $FE
    db $FD                                        ; $6976: $FD
    sbc e                                         ; $6977: $9B
    ld a, b                                       ; $6978: $78
    ld [hl], b                                    ; $6979: $70
    sbc a                                         ; $697A: $9F
    ld d, e                                       ; $697B: $53
    ld l, a                                       ; $697C: $6F
    jr nz, jr_018_69E7                            ; $697D: $20 $68

    ld h, c                                       ; $697F: $61
    ld [hl], e                                    ; $6980: $73
    jr nz, jr_018_69EC                            ; $6981: $20 $69

    ld [hl], h                                    ; $6983: $74

jr_018_6984:
    jr nz, jr_018_69E8                            ; $6984: $20 $62

    ld h, l                                       ; $6986: $65
    ld h, l                                       ; $6987: $65
    ld l, [hl]                                    ; $6988: $6E

jr_018_6989:
    rst $38                                       ; $6989: $FF
    ld [hl], a                                    ; $698A: $77
    ld l, a                                       ; $698B: $6F
    ld [hl], d                                    ; $698C: $72
    ld [hl], h                                    ; $698D: $74
    ld l, b                                       ; $698E: $68
    jr nz, jr_018_6A05                            ; $698F: $20 $74

    ld l, b                                       ; $6991: $68
    ld h, l                                       ; $6992: $65

jr_018_6993:
    cp $74                                        ; $6993: $FE $74
    ld [hl], d                                    ; $6995: $72
    ld l, a                                       ; $6996: $6F
    ld [hl], l                                    ; $6997: $75
    ld h, d                                       ; $6998: $62

jr_018_6999:
    ld l, h                                       ; $6999: $6C
    ld h, l                                       ; $699A: $65
    ccf                                           ; $699B: $3F
    cp $FD                                        ; $699C: $FE $FD
    sbc e                                         ; $699E: $9B

jr_018_699F:
    ret c                                         ; $699F: $D8

    ld h, b                                       ; $69A0: $60
    sbc a                                         ; $69A1: $9F
    ld c, a                                       ; $69A2: $4F
    ld l, b                                       ; $69A3: $68
    jr nz, jr_018_6A1F                            ; $69A4: $20 $79

    ld h, l                                       ; $69A6: $65
    ld [hl], e                                    ; $69A7: $73
    ld hl, $49FE                                  ; $69A8: $21 $FE $49
    jr nz, jr_018_6A15                            ; $69AB: $20 $68

jr_018_69AD:
    ld h, c                                       ; $69AD: $61
    halt                                          ; $69AE: $76
    ld h, l                                       ; $69AF: $65
    jr nz, jr_018_6A25                            ; $69B0: $20 $73

    ld h, l                                       ; $69B2: $65
    ld h, l                                       ; $69B3: $65
    ld l, [hl]                                    ; $69B4: $6E
    jr nz, jr_018_6A18                            ; $69B5: $20 $61

    rst $38                                       ; $69B7: $FF
    ld l, [hl]                                    ; $69B8: $6E
    ld [hl], l                                    ; $69B9: $75
    ld l, l                                       ; $69BA: $6D
    ld h, d                                       ; $69BB: $62
    ld h, l                                       ; $69BC: $65
    ld [hl], d                                    ; $69BD: $72
    jr nz, jr_018_6A2F                            ; $69BE: $20 $6F

    ld h, [hl]                                    ; $69C0: $66
    cp $69                                        ; $69C1: $FE $69
    ld l, [hl]                                    ; $69C3: $6E
    ld h, e                                       ; $69C4: $63
    ld [hl], d                                    ; $69C5: $72
    ld h, l                                       ; $69C6: $65
    ld h, h                                       ; $69C7: $64
    ld l, c                                       ; $69C8: $69
    ld h, d                                       ; $69C9: $62
    ld l, h                                       ; $69CA: $6C
    ld h, l                                       ; $69CB: $65

jr_018_69CC:
    rst $38                                       ; $69CC: $FF
    ld h, c                                       ; $69CD: $61
    ld [hl], d                                    ; $69CE: $72
    ld [hl], h                                    ; $69CF: $74
    ld l, c                                       ; $69D0: $69
    ld h, [hl]                                    ; $69D1: $66

jr_018_69D2:
    ld h, c                                       ; $69D2: $61
    ld h, e                                       ; $69D3: $63
    ld [hl], h                                    ; $69D4: $74
    ld [hl], e                                    ; $69D5: $73
    ld hl, $FDFE                                  ; $69D6: $21 $FE $FD
    sbc e                                         ; $69D9: $9B
    ld a, b                                       ; $69DA: $78

jr_018_69DB:
    ld [hl], b                                    ; $69DB: $70
    sbc a                                         ; $69DC: $9F
    ld d, d                                       ; $69DD: $52
    ld h, l                                       ; $69DE: $65
    ld h, c                                       ; $69DF: $61
    ld l, h                                       ; $69E0: $6C
    ld l, h                                       ; $69E1: $6C
    ld a, c                                       ; $69E2: $79
    ccf                                           ; $69E3: $3F
    cp $FD                                        ; $69E4: $FE $FD
    sbc e                                         ; $69E6: $9B

jr_018_69E7:
    ret c                                         ; $69E7: $D8

jr_018_69E8:
    ld h, b                                       ; $69E8: $60
    sbc a                                         ; $69E9: $9F
    ld e, c                                       ; $69EA: $59
    ld h, l                                       ; $69EB: $65

jr_018_69EC:
    ld [hl], e                                    ; $69EC: $73
    ld hl, $55FE                                  ; $69ED: $21 $FE $55
    ld l, [hl]                                    ; $69F0: $6E
    ld h, [hl]                                    ; $69F1: $66
    ld l, a                                       ; $69F2: $6F
    ld [hl], d                                    ; $69F3: $72
    ld [hl], h                                    ; $69F4: $74
    ld [hl], l                                    ; $69F5: $75
    ld l, [hl]                                    ; $69F6: $6E
    ld h, c                                       ; $69F7: $61
    ld [hl], h                                    ; $69F8: $74
    ld h, l                                       ; $69F9: $65
    ld l, h                                       ; $69FA: $6C
    ld a, c                                       ; $69FB: $79
    inc l                                         ; $69FC: $2C
    rst $38                                       ; $69FD: $FF
    ld c, l                                       ; $69FE: $4D
    ld l, a                                       ; $69FF: $6F
    ld h, d                                       ; $6A00: $62
    ld l, c                                       ; $6A01: $69
    ld [hl], e                                    ; $6A02: $73
    jr nz, jr_018_6A7C                            ; $6A03: $20 $77

jr_018_6A05:
    ld l, c                                       ; $6A05: $69
    ld [hl], e                                    ; $6A06: $73
    ld l, b                                       ; $6A07: $68
    ld h, l                                       ; $6A08: $65
    ld [hl], e                                    ; $6A09: $73
    cp $74                                        ; $6A0A: $FE $74
    ld l, a                                       ; $6A0C: $6F
    jr nz, jr_018_6A81                            ; $6A0D: $20 $72

    ld h, l                                       ; $6A0F: $65
    ld [hl], h                                    ; $6A10: $74
    ld [hl], l                                    ; $6A11: $75
    ld [hl], d                                    ; $6A12: $72
    ld l, [hl]                                    ; $6A13: $6E
    rst $38                                       ; $6A14: $FF

jr_018_6A15:
    ld h, l                                       ; $6A15: $65
    ld h, c                                       ; $6A16: $61
    ld [hl], d                                    ; $6A17: $72

jr_018_6A18:
    ld l, h                                       ; $6A18: $6C
    ld a, c                                       ; $6A19: $79
    inc l                                         ; $6A1A: $2C
    jr nz, jr_018_6A7F                            ; $6A1B: $20 $62

    ld [hl], l                                    ; $6A1D: $75
    ld [hl], h                                    ; $6A1E: $74

jr_018_6A1F:
    jr nz, jr_018_6A6A                            ; $6A1F: $20 $49

    cp $74                                        ; $6A21: $FE $74
    ld l, b                                       ; $6A23: $68
    ld l, c                                       ; $6A24: $69

jr_018_6A25:
    ld l, [hl]                                    ; $6A25: $6E
    ld l, e                                       ; $6A26: $6B
    jr nz, jr_018_6A9D                            ; $6A27: $20 $74

    ld l, b                                       ; $6A29: $68
    ld h, l                                       ; $6A2A: $65
    ld [hl], d                                    ; $6A2B: $72
    ld h, l                                       ; $6A2C: $65
    daa                                           ; $6A2D: $27
    ld [hl], e                                    ; $6A2E: $73

jr_018_6A2F:
    rst $38                                       ; $6A2F: $FF
    ld h, c                                       ; $6A30: $61
    jr nz, jr_018_6A9A                            ; $6A31: $20 $67

    ld l, a                                       ; $6A33: $6F
    ld l, a                                       ; $6A34: $6F
    ld h, h                                       ; $6A35: $64
    jr nz, jr_018_6A9B                            ; $6A36: $20 $63

    ld l, b                                       ; $6A38: $68
    ld h, c                                       ; $6A39: $61
    ld l, [hl]                                    ; $6A3A: $6E
    ld h, e                                       ; $6A3B: $63
    ld h, l                                       ; $6A3C: $65
    cp $74                                        ; $6A3D: $FE $74
    ld l, b                                       ; $6A3F: $68
    ld h, c                                       ; $6A40: $61
    ld [hl], h                                    ; $6A41: $74
    jr nz, jr_018_6ABD                            ; $6A42: $20 $79

    ld l, a                                       ; $6A44: $6F
    ld [hl], l                                    ; $6A45: $75
    jr nz, @+$65                                  ; $6A46: $20 $63

    ld l, a                                       ; $6A48: $6F
    ld [hl], l                                    ; $6A49: $75
    ld l, h                                       ; $6A4A: $6C
    ld h, h                                       ; $6A4B: $64
    rst $38                                       ; $6A4C: $FF
    ld h, [hl]                                    ; $6A4D: $66
    ld l, c                                       ; $6A4E: $69
    ld l, [hl]                                    ; $6A4F: $6E
    ld h, h                                       ; $6A50: $64
    jr nz, jr_018_6AC6                            ; $6A51: $20 $73

    ld l, a                                       ; $6A53: $6F
    ld l, l                                       ; $6A54: $6D
    ld h, l                                       ; $6A55: $65
    ld [hl], h                                    ; $6A56: $74
    ld l, b                                       ; $6A57: $68
    ld l, c                                       ; $6A58: $69
    ld l, [hl]                                    ; $6A59: $6E
    ld h, a                                       ; $6A5A: $67
    cp $75                                        ; $6A5B: $FE $75
    ld [hl], e                                    ; $6A5D: $73
    ld h, l                                       ; $6A5E: $65
    ld h, [hl]                                    ; $6A5F: $66
    ld [hl], l                                    ; $6A60: $75
    ld l, h                                       ; $6A61: $6C
    jr nz, jr_018_6ACD                            ; $6A62: $20 $69

    ld l, [hl]                                    ; $6A64: $6E
    jr nz, jr_018_6ADB                            ; $6A65: $20 $74

    ld l, b                                       ; $6A67: $68
    ld h, l                                       ; $6A68: $65
    rst $38                                       ; $6A69: $FF

jr_018_6A6A:
    ld [hl], d                                    ; $6A6A: $72
    ld [hl], l                                    ; $6A6B: $75
    ld l, c                                       ; $6A6C: $69
    ld l, [hl]                                    ; $6A6D: $6E
    ld [hl], e                                    ; $6A6E: $73
    ld l, $FE                                     ; $6A6F: $2E $FE
    db $FD                                        ; $6A71: $FD
    ld b, e                                       ; $6A72: $43
    ld bc, $A3C9                                  ; $6A73: $01 $C9 $A3
    jr jr_018_6AAC                                ; $6A76: $18 $34

    ld l, e                                       ; $6A78: $6B
    sbc e                                         ; $6A79: $9B
    ld a, b                                       ; $6A7A: $78
    ld [hl], b                                    ; $6A7B: $70

jr_018_6A7C:
    sbc a                                         ; $6A7C: $9F
    ld c, c                                       ; $6A7D: $49
    daa                                           ; $6A7E: $27

jr_018_6A7F:
    ld l, h                                       ; $6A7F: $6C
    ld l, h                                       ; $6A80: $6C

jr_018_6A81:
    jr nz, @+$65                                  ; $6A81: $20 $63

    ld l, b                                       ; $6A83: $68
    ld h, l                                       ; $6A84: $65
    ld h, e                                       ; $6A85: $63
    ld l, e                                       ; $6A86: $6B
    jr nz, jr_018_6AF2                            ; $6A87: $20 $69

    ld [hl], h                                    ; $6A89: $74
    rst $38                                       ; $6A8A: $FF
    ld l, a                                       ; $6A8B: $6F
    ld [hl], l                                    ; $6A8C: $75
    ld [hl], h                                    ; $6A8D: $74
    ld l, $FE                                     ; $6A8E: $2E $FE
    db $FD                                        ; $6A90: $FD
    sbc e                                         ; $6A91: $9B
    ret c                                         ; $6A92: $D8

    ld h, b                                       ; $6A93: $60
    sbc a                                         ; $6A94: $9F
    ld c, c                                       ; $6A95: $49
    ld h, [hl]                                    ; $6A96: $66
    jr nz, jr_018_6B12                            ; $6A97: $20 $79

    ld l, a                                       ; $6A99: $6F

jr_018_6A9A:
    ld [hl], l                                    ; $6A9A: $75

jr_018_6A9B:
    jr nz, jr_018_6B03                            ; $6A9B: $20 $66

jr_018_6A9D:
    ld l, c                                       ; $6A9D: $69
    ld l, [hl]                                    ; $6A9E: $6E
    ld h, h                                       ; $6A9F: $64
    rst $38                                       ; $6AA0: $FF
    ld h, c                                       ; $6AA1: $61
    ld l, [hl]                                    ; $6AA2: $6E
    ld a, c                                       ; $6AA3: $79
    ld [hl], h                                    ; $6AA4: $74
    ld l, b                                       ; $6AA5: $68
    ld l, c                                       ; $6AA6: $69
    ld l, [hl]                                    ; $6AA7: $6E
    ld h, a                                       ; $6AA8: $67
    inc l                                         ; $6AA9: $2C
    jr nz, jr_018_6B16                            ; $6AAA: $20 $6A

jr_018_6AAC:
    ld [hl], l                                    ; $6AAC: $75
    ld [hl], e                                    ; $6AAD: $73
    ld [hl], h                                    ; $6AAE: $74
    cp $62                                        ; $6AAF: $FE $62
    ld [hl], d                                    ; $6AB1: $72
    ld l, c                                       ; $6AB2: $69
    ld l, [hl]                                    ; $6AB3: $6E
    ld h, a                                       ; $6AB4: $67
    jr nz, jr_018_6B20                            ; $6AB5: $20 $69

    ld [hl], h                                    ; $6AB7: $74
    jr nz, jr_018_6B22                            ; $6AB8: $20 $68

    ld h, l                                       ; $6ABA: $65
    ld [hl], d                                    ; $6ABB: $72
    ld h, l                                       ; $6ABC: $65

jr_018_6ABD:
    ld l, $FE                                     ; $6ABD: $2E $FE
    ld c, c                                       ; $6ABF: $49
    daa                                           ; $6AC0: $27
    ld l, h                                       ; $6AC1: $6C
    ld l, h                                       ; $6AC2: $6C
    jr nz, jr_018_6B26                            ; $6AC3: $20 $61

    ld [hl], b                                    ; $6AC5: $70

jr_018_6AC6:
    ld [hl], b                                    ; $6AC6: $70
    ld [hl], d                                    ; $6AC7: $72
    ld h, c                                       ; $6AC8: $61
    ld l, c                                       ; $6AC9: $69
    ld [hl], e                                    ; $6ACA: $73
    ld h, l                                       ; $6ACB: $65
    rst $38                                       ; $6ACC: $FF

jr_018_6ACD:
    ld l, c                                       ; $6ACD: $69
    ld [hl], h                                    ; $6ACE: $74
    jr nz, jr_018_6B37                            ; $6ACF: $20 $66

    ld l, a                                       ; $6AD1: $6F
    ld [hl], d                                    ; $6AD2: $72
    jr nz, jr_018_6B4E                            ; $6AD3: $20 $79

    ld l, a                                       ; $6AD5: $6F
    ld [hl], l                                    ; $6AD6: $75
    ld l, $FE                                     ; $6AD7: $2E $FE
    db $FD                                        ; $6AD9: $FD
    sbc e                                         ; $6ADA: $9B

jr_018_6ADB:
    ld a, b                                       ; $6ADB: $78
    ld [hl], b                                    ; $6ADC: $70
    sbc a                                         ; $6ADD: $9F
    ld d, h                                       ; $6ADE: $54
    ld l, b                                       ; $6ADF: $68
    ld h, c                                       ; $6AE0: $61
    ld l, [hl]                                    ; $6AE1: $6E
    ld l, e                                       ; $6AE2: $6B
    ld [hl], e                                    ; $6AE3: $73
    ld hl, $FDFE                                  ; $6AE4: $21 $FE $FD
    sbc d                                         ; $6AE7: $9A
    ld [de], a                                    ; $6AE8: $12
    sbc e                                         ; $6AE9: $9B
    ret c                                         ; $6AEA: $D8

    ld h, b                                       ; $6AEB: $60
    sbc a                                         ; $6AEC: $9F
    ld b, h                                       ; $6AED: $44
    ld l, a                                       ; $6AEE: $6F
    jr nz, @+$7B                                  ; $6AEF: $20 $79

    ld l, a                                       ; $6AF1: $6F

jr_018_6AF2:
    ld [hl], l                                    ; $6AF2: $75
    jr nz, jr_018_6B5D                            ; $6AF3: $20 $68

    ld h, c                                       ; $6AF5: $61
    halt                                          ; $6AF6: $76
    ld h, l                                       ; $6AF7: $65
    rst $38                                       ; $6AF8: $FF
    ld h, c                                       ; $6AF9: $61
    ld l, [hl]                                    ; $6AFA: $6E
    ld a, c                                       ; $6AFB: $79
    ld [hl], h                                    ; $6AFC: $74
    ld l, b                                       ; $6AFD: $68
    ld l, c                                       ; $6AFE: $69
    ld l, [hl]                                    ; $6AFF: $6E
    ld h, a                                       ; $6B00: $67
    jr nz, @+$68                                  ; $6B01: $20 $66

jr_018_6B03:
    ld l, a                                       ; $6B03: $6F
    ld [hl], d                                    ; $6B04: $72
    cp $66                                        ; $6B05: $FE $66
    ld l, a                                       ; $6B07: $6F
    ld [hl], d                                    ; $6B08: $72
    jr nz, jr_018_6B78                            ; $6B09: $20 $6D

    ld h, l                                       ; $6B0B: $65
    jr nz, @+$76                                  ; $6B0C: $20 $74

    ld l, a                                       ; $6B0E: $6F
    rst $38                                       ; $6B0F: $FF
    ld l, h                                       ; $6B10: $6C
    ld l, a                                       ; $6B11: $6F

jr_018_6B12:
    ld l, a                                       ; $6B12: $6F
    ld l, e                                       ; $6B13: $6B
    jr nz, jr_018_6B77                            ; $6B14: $20 $61

jr_018_6B16:
    ld [hl], h                                    ; $6B16: $74
    ccf                                           ; $6B17: $3F
    cp $FD                                        ; $6B18: $FE $FD
    sbc d                                         ; $6B1A: $9A
    ld b, l                                       ; $6B1B: $45
    ld l, $A3                                     ; $6B1C: $2E $A3
    ld b, b                                       ; $6B1E: $40
    sbc e                                         ; $6B1F: $9B

jr_018_6B20:
    ret c                                         ; $6B20: $D8

    ld h, b                                       ; $6B21: $60

jr_018_6B22:
    sbc a                                         ; $6B22: $9F
    ld d, b                                       ; $6B23: $50
    ld l, h                                       ; $6B24: $6C
    ld h, l                                       ; $6B25: $65

jr_018_6B26:
    ld h, c                                       ; $6B26: $61
    ld [hl], e                                    ; $6B27: $73
    ld h, l                                       ; $6B28: $65
    rst $38                                       ; $6B29: $FF
    ld l, h                                       ; $6B2A: $6C
    ld h, l                                       ; $6B2B: $65
    ld h, c                                       ; $6B2C: $61
    halt                                          ; $6B2D: $76
    ld h, l                                       ; $6B2E: $65
    ld hl, $FDFE                                  ; $6B2F: $21 $FE $FD
    sbc d                                         ; $6B32: $9A
    ld [de], a                                    ; $6B33: $12
    sbc e                                         ; $6B34: $9B
    ld a, b                                       ; $6B35: $78
    ld [hl], b                                    ; $6B36: $70

jr_018_6B37:
    sbc a                                         ; $6B37: $9F
    ld b, c                                       ; $6B38: $41
    ld h, e                                       ; $6B39: $63
    ld [hl], h                                    ; $6B3A: $74
    ld [hl], l                                    ; $6B3B: $75
    ld h, c                                       ; $6B3C: $61
    ld l, h                                       ; $6B3D: $6C
    ld l, h                                       ; $6B3E: $6C
    ld a, c                                       ; $6B3F: $79
    ld l, $2E                                     ; $6B40: $2E $2E
    ld l, $FE                                     ; $6B42: $2E $FE
    ld c, c                                       ; $6B44: $49
    daa                                           ; $6B45: $27
    halt                                          ; $6B46: $76
    ld h, l                                       ; $6B47: $65
    jr nz, @+$63                                  ; $6B48: $20 $61

    ld l, h                                       ; $6B4A: $6C
    ld [hl], d                                    ; $6B4B: $72
    ld h, l                                       ; $6B4C: $65
    ld h, c                                       ; $6B4D: $61

jr_018_6B4E:
    ld h, h                                       ; $6B4E: $64
    ld a, c                                       ; $6B4F: $79
    cp $62                                        ; $6B50: $FE $62
    ld h, l                                       ; $6B52: $65
    ld h, l                                       ; $6B53: $65
    ld l, [hl]                                    ; $6B54: $6E
    jr nz, @+$76                                  ; $6B55: $20 $74

    ld l, b                                       ; $6B57: $68
    ld h, l                                       ; $6B58: $65
    ld [hl], d                                    ; $6B59: $72
    ld h, l                                       ; $6B5A: $65
    ld l, $FE                                     ; $6B5B: $2E $FE

jr_018_6B5D:
    db $FD                                        ; $6B5D: $FD
    ld b, [hl]                                    ; $6B5E: $46
    jp hl                                         ; $6B5F: $E9


    ld l, d                                       ; $6B60: $6A
    adc b                                         ; $6B61: $88
    nop                                           ; $6B62: $00
    ld [hl+], a                                   ; $6B63: $22
    ld bc, $0387                                  ; $6B64: $01 $87 $03
    ld a, [bc]                                    ; $6B67: $0A
    ld bc, $24AC                                  ; $6B68: $01 $AC $24
    and d                                         ; $6B6B: $A2
    inc b                                         ; $6B6C: $04
    sbc a                                         ; $6B6D: $9F
    ld c, b                                       ; $6B6E: $48
    ld l, l                                       ; $6B6F: $6D
    ld l, l                                       ; $6B70: $6D
    ld l, $2E                                     ; $6B71: $2E $2E
    ld l, $20                                     ; $6B73: $2E $20
    ld [hl], a                                    ; $6B75: $77
    ld l, b                                       ; $6B76: $68

jr_018_6B77:
    ld h, c                                       ; $6B77: $61

jr_018_6B78:
    ld [hl], h                                    ; $6B78: $74
    daa                                           ; $6B79: $27
    ld [hl], e                                    ; $6B7A: $73
    rst $38                                       ; $6B7B: $FF
    ld [hl], h                                    ; $6B7C: $74
    ld l, b                                       ; $6B7D: $68
    ld l, c                                       ; $6B7E: $69
    ld [hl], e                                    ; $6B7F: $73
    ccf                                           ; $6B80: $3F
    cp $54                                        ; $6B81: $FE $54
    ld l, b                                       ; $6B83: $68
    ld h, c                                       ; $6B84: $61
    ld [hl], h                                    ; $6B85: $74
    daa                                           ; $6B86: $27
    ld [hl], e                                    ; $6B87: $73
    jr nz, jr_018_6BF9                            ; $6B88: $20 $6F

    ld h, h                                       ; $6B8A: $64
    ld h, h                                       ; $6B8B: $64
    ld l, $FE                                     ; $6B8C: $2E $FE
    ld d, h                                       ; $6B8E: $54
    ld l, b                                       ; $6B8F: $68
    ld h, l                                       ; $6B90: $65
    jr nz, jr_018_6BFC                            ; $6B91: $20 $69

    ld l, [hl]                                    ; $6B93: $6E
    ld l, e                                       ; $6B94: $6B
    jr nz, jr_018_6C00                            ; $6B95: $20 $69

    ld [hl], e                                    ; $6B97: $73
    jr nz, @+$70                                  ; $6B98: $20 $6E

    ld l, a                                       ; $6B9A: $6F
    ld [hl], h                                    ; $6B9B: $74
    rst $38                                       ; $6B9C: $FF
    ld [hl], a                                    ; $6B9D: $77
    ld h, c                                       ; $6B9E: $61
    ld [hl], h                                    ; $6B9F: $74
    ld h, l                                       ; $6BA0: $65
    ld [hl], d                                    ; $6BA1: $72
    ld [hl], b                                    ; $6BA2: $70
    ld [hl], d                                    ; $6BA3: $72
    ld l, a                                       ; $6BA4: $6F
    ld l, a                                       ; $6BA5: $6F
    ld h, [hl]                                    ; $6BA6: $66
    ld l, $FE                                     ; $6BA7: $2E $FE
    ld c, c                                       ; $6BA9: $49
    jr nz, jr_018_6C0F                            ; $6BAA: $20 $63

    ld h, c                                       ; $6BAC: $61
    ld l, [hl]                                    ; $6BAD: $6E
    jr nz, jr_018_6C1A                            ; $6BAE: $20 $6A

    ld [hl], l                                    ; $6BB0: $75
    ld [hl], e                                    ; $6BB1: $73
    ld [hl], h                                    ; $6BB2: $74
    rst $38                                       ; $6BB3: $FF
    ld l, l                                       ; $6BB4: $6D
    ld h, c                                       ; $6BB5: $61
    ld l, e                                       ; $6BB6: $6B
    ld h, l                                       ; $6BB7: $65
    jr nz, @+$71                                  ; $6BB8: $20 $6F

    ld [hl], l                                    ; $6BBA: $75
    ld [hl], h                                    ; $6BBB: $74
    jr nz, jr_018_6C32                            ; $6BBC: $20 $74

    ld l, b                                       ; $6BBE: $68
    ld h, l                                       ; $6BBF: $65
    cp $6C                                        ; $6BC0: $FE $6C
    ld h, l                                       ; $6BC2: $65
    ld [hl], h                                    ; $6BC3: $74
    ld [hl], h                                    ; $6BC4: $74
    ld h, l                                       ; $6BC5: $65
    ld [hl], d                                    ; $6BC6: $72
    ld [hl], e                                    ; $6BC7: $73
    ld l, $2E                                     ; $6BC8: $2E $2E
    ld l, $FE                                     ; $6BCA: $2E $FE
    ld c, h                                       ; $6BCC: $4C
    ld l, a                                       ; $6BCD: $6F
    ld l, a                                       ; $6BCE: $6F
    ld l, e                                       ; $6BCF: $6B
    jr nz, jr_018_6C33                            ; $6BD0: $20 $61

    ld [hl], h                                    ; $6BD2: $74
    jr nz, jr_018_6C49                            ; $6BD3: $20 $74

    ld l, b                                       ; $6BD5: $68
    ld l, c                                       ; $6BD6: $69
    ld [hl], e                                    ; $6BD7: $73
    ld hl, $41FE                                  ; $6BD8: $21 $FE $41
    ld [hl], e                                    ; $6BDB: $73
    jr nz, jr_018_6C52                            ; $6BDC: $20 $74

    ld l, b                                       ; $6BDE: $68
    ld h, l                                       ; $6BDF: $65
    jr nz, jr_018_6C55                            ; $6BE0: $20 $73

    ld h, e                                       ; $6BE2: $63
    ld [hl], d                                    ; $6BE3: $72
    ld l, a                                       ; $6BE4: $6F
    ld l, h                                       ; $6BE5: $6C
    ld l, h                                       ; $6BE6: $6C
    rst $38                                       ; $6BE7: $FF
    ld h, h                                       ; $6BE8: $64
    ld [hl], d                                    ; $6BE9: $72
    ld l, c                                       ; $6BEA: $69
    ld h, l                                       ; $6BEB: $65
    ld [hl], e                                    ; $6BEC: $73
    inc l                                         ; $6BED: $2C
    jr nz, @+$76                                  ; $6BEE: $20 $74

    ld l, b                                       ; $6BF0: $68
    ld h, l                                       ; $6BF1: $65
    jr nz, jr_018_6C5D                            ; $6BF2: $20 $69

    ld l, [hl]                                    ; $6BF4: $6E
    ld l, e                                       ; $6BF5: $6B
    cp $72                                        ; $6BF6: $FE $72
    ld h, l                                       ; $6BF8: $65

jr_018_6BF9:
    dec l                                         ; $6BF9: $2D
    ld [hl], e                                    ; $6BFA: $73
    ld l, b                                       ; $6BFB: $68

jr_018_6BFC:
    ld h, c                                       ; $6BFC: $61
    ld [hl], b                                    ; $6BFD: $70
    ld h, l                                       ; $6BFE: $65
    ld [hl], e                                    ; $6BFF: $73

jr_018_6C00:
    rst $38                                       ; $6C00: $FF
    ld l, c                                       ; $6C01: $69
    ld [hl], h                                    ; $6C02: $74
    ld [hl], e                                    ; $6C03: $73
    ld h, l                                       ; $6C04: $65
    ld l, h                                       ; $6C05: $6C
    ld h, [hl]                                    ; $6C06: $66
    ld hl, $53FE                                  ; $6C07: $21 $FE $53
    ld h, l                                       ; $6C0A: $65
    ld h, l                                       ; $6C0B: $65
    jr nz, jr_018_6C76                            ; $6C0C: $20 $68

    ld l, a                                       ; $6C0E: $6F

jr_018_6C0F:
    ld [hl], a                                    ; $6C0F: $77
    jr nz, jr_018_6C7B                            ; $6C10: $20 $69

    ld [hl], h                                    ; $6C12: $74
    rst $38                                       ; $6C13: $FF
    ld [hl], e                                    ; $6C14: $73
    ld l, b                                       ; $6C15: $68
    ld l, c                                       ; $6C16: $69
    ld l, l                                       ; $6C17: $6D
    ld l, l                                       ; $6C18: $6D
    ld h, l                                       ; $6C19: $65

jr_018_6C1A:
    ld [hl], d                                    ; $6C1A: $72
    ld [hl], e                                    ; $6C1B: $73
    ccf                                           ; $6C1C: $3F
    cp $FD                                        ; $6C1D: $FE $FD
    sbc d                                         ; $6C1F: $9A
    sbc e                                         ; $6C20: $9B
    ret c                                         ; $6C21: $D8

    ld h, b                                       ; $6C22: $60
    sbc a                                         ; $6C23: $9F
    ld c, c                                       ; $6C24: $49
    ld [hl], h                                    ; $6C25: $74
    daa                                           ; $6C26: $27
    ld [hl], e                                    ; $6C27: $73
    jr nz, jr_018_6C8B                            ; $6C28: $20 $61

    jr nz, jr_018_6C9F                            ; $6C2A: $20 $73

    ld [hl], b                                    ; $6C2C: $70
    ld h, l                                       ; $6C2D: $65
    ld l, h                                       ; $6C2E: $6C
    ld l, h                                       ; $6C2F: $6C
    jr nz, jr_018_6CA1                            ; $6C30: $20 $6F

jr_018_6C32:
    ld h, [hl]                                    ; $6C32: $66

jr_018_6C33:
    rst $38                                       ; $6C33: $FF
    ld [hl], e                                    ; $6C34: $73
    ld l, a                                       ; $6C35: $6F
    ld l, l                                       ; $6C36: $6D
    ld h, l                                       ; $6C37: $65
    jr nz, jr_018_6CAD                            ; $6C38: $20 $73

    ld l, a                                       ; $6C3A: $6F
    ld [hl], d                                    ; $6C3B: $72
    ld [hl], h                                    ; $6C3C: $74
    ld l, $FE                                     ; $6C3D: $2E $FE
    ld c, c                                       ; $6C3F: $49
    ld l, [hl]                                    ; $6C40: $6E
    jr nz, jr_018_6CA4                            ; $6C41: $20 $61

    ld l, [hl]                                    ; $6C43: $6E
    jr nz, jr_018_6CA7                            ; $6C44: $20 $61

    ld l, [hl]                                    ; $6C46: $6E
    ld h, e                                       ; $6C47: $63
    ld l, c                                       ; $6C48: $69

jr_018_6C49:
    ld h, l                                       ; $6C49: $65
    ld l, [hl]                                    ; $6C4A: $6E
    ld [hl], h                                    ; $6C4B: $74
    rst $38                                       ; $6C4C: $FF
    ld l, h                                       ; $6C4D: $6C
    ld h, c                                       ; $6C4E: $61
    ld l, [hl]                                    ; $6C4F: $6E
    ld h, a                                       ; $6C50: $67
    ld [hl], l                                    ; $6C51: $75

jr_018_6C52:
    ld h, c                                       ; $6C52: $61
    ld h, a                                       ; $6C53: $67
    ld h, l                                       ; $6C54: $65

jr_018_6C55:
    ld l, $FE                                     ; $6C55: $2E $FE
    ld d, [hl]                                    ; $6C57: $56
    ld h, l                                       ; $6C58: $65
    ld [hl], d                                    ; $6C59: $72
    ld a, c                                       ; $6C5A: $79
    jr nz, jr_018_6CBE                            ; $6C5B: $20 $61

jr_018_6C5D:
    ld l, [hl]                                    ; $6C5D: $6E
    ld h, e                                       ; $6C5E: $63
    ld l, c                                       ; $6C5F: $69
    ld h, l                                       ; $6C60: $65
    ld l, [hl]                                    ; $6C61: $6E
    ld [hl], h                                    ; $6C62: $74
    ld hl, $2EFE                                  ; $6C63: $21 $FE $2E
    ld l, $2E                                     ; $6C66: $2E $2E
    cp $FD                                        ; $6C68: $FE $FD
    sbc e                                         ; $6C6A: $9B
    ld a, b                                       ; $6C6B: $78
    ld [hl], b                                    ; $6C6C: $70
    sbc a                                         ; $6C6D: $9F
    ld d, a                                       ; $6C6E: $57
    ld l, b                                       ; $6C6F: $68
    ld h, c                                       ; $6C70: $61
    ld [hl], h                                    ; $6C71: $74
    ccf                                           ; $6C72: $3F
    cp $57                                        ; $6C73: $FE $57
    ld l, b                                       ; $6C75: $68

jr_018_6C76:
    ld h, c                                       ; $6C76: $61
    ld [hl], h                                    ; $6C77: $74
    jr nz, jr_018_6CE3                            ; $6C78: $20 $69

    ld [hl], e                                    ; $6C7A: $73

jr_018_6C7B:
    jr nz, jr_018_6CE6                            ; $6C7B: $20 $69

    ld [hl], h                                    ; $6C7D: $74
    ccf                                           ; $6C7E: $3F
    cp $FD                                        ; $6C7F: $FE $FD
    sbc e                                         ; $6C81: $9B
    ret c                                         ; $6C82: $D8

    ld h, b                                       ; $6C83: $60
    sbc a                                         ; $6C84: $9F
    ld l, $2E                                     ; $6C85: $2E $2E
    ld l, $2E                                     ; $6C87: $2E $2E
    ld l, $FE                                     ; $6C89: $2E $FE

jr_018_6C8B:
    ld l, $2E                                     ; $6C8B: $2E $2E
    ld l, $2E                                     ; $6C8D: $2E $2E
    ld l, $FE                                     ; $6C8F: $2E $FE
    ld b, a                                       ; $6C91: $47
    ld [hl], d                                    ; $6C92: $72
    ld h, l                                       ; $6C93: $65
    ld h, c                                       ; $6C94: $61
    ld [hl], h                                    ; $6C95: $74
    jr nz, jr_018_6CE3                            ; $6C96: $20 $4B

    ld [hl], d                                    ; $6C98: $72
    ld h, c                                       ; $6C99: $61
    ld l, e                                       ; $6C9A: $6B
    ld h, l                                       ; $6C9B: $65
    ld l, [hl]                                    ; $6C9C: $6E
    ld [hl], e                                    ; $6C9D: $73
    rst $38                                       ; $6C9E: $FF

jr_018_6C9F:
    ld h, c                                       ; $6C9F: $61
    ld h, d                                       ; $6CA0: $62

jr_018_6CA1:
    ld l, a                                       ; $6CA1: $6F
    halt                                          ; $6CA2: $76
    ld h, l                                       ; $6CA3: $65

jr_018_6CA4:
    ld hl, $FDFE                                  ; $6CA4: $21 $FE $FD

jr_018_6CA7:
    sbc e                                         ; $6CA7: $9B
    ld a, b                                       ; $6CA8: $78
    ld [hl], b                                    ; $6CA9: $70
    sbc a                                         ; $6CAA: $9F
    ld d, a                                       ; $6CAB: $57
    ld c, b                                       ; $6CAC: $48

jr_018_6CAD:
    ld b, c                                       ; $6CAD: $41
    ld d, h                                       ; $6CAE: $54
    ld hl, $FE3F                                  ; $6CAF: $21 $3F $FE
    db $FD                                        ; $6CB2: $FD
    sbc e                                         ; $6CB3: $9B
    ret c                                         ; $6CB4: $D8

    ld h, b                                       ; $6CB5: $60
    sbc a                                         ; $6CB6: $9F
    ld d, h                                       ; $6CB7: $54
    ld l, b                                       ; $6CB8: $68
    ld l, c                                       ; $6CB9: $69
    ld [hl], e                                    ; $6CBA: $73
    jr nz, jr_018_6D26                            ; $6CBB: $20 $69

    ld [hl], e                                    ; $6CBD: $73

jr_018_6CBE:
    rst $38                                       ; $6CBE: $FF
    ld b, h                                       ; $6CBF: $44
    ld l, c                                       ; $6CC0: $69
    ld [hl], e                                    ; $6CC1: $73
    ld [hl], b                                    ; $6CC2: $70
    ld h, l                                       ; $6CC3: $65
    ld l, h                                       ; $6CC4: $6C
    jr nz, jr_018_6D1F                            ; $6CC5: $20 $58

    ld hl, $49FE                                  ; $6CC7: $21 $FE $49
    jr nz, jr_018_6D3A                            ; $6CCA: $20 $6E

    ld h, l                                       ; $6CCC: $65
    halt                                          ; $6CCD: $76
    ld h, l                                       ; $6CCE: $65
    ld [hl], d                                    ; $6CCF: $72
    rst $38                                       ; $6CD0: $FF
    ld [hl], h                                    ; $6CD1: $74
    ld l, b                                       ; $6CD2: $68
    ld l, a                                       ; $6CD3: $6F
    ld [hl], l                                    ; $6CD4: $75
    ld h, a                                       ; $6CD5: $67
    ld l, b                                       ; $6CD6: $68
    ld [hl], h                                    ; $6CD7: $74
    jr nz, jr_018_6D23                            ; $6CD8: $20 $49

    cp $77                                        ; $6CDA: $FE $77
    ld l, a                                       ; $6CDC: $6F
    ld [hl], l                                    ; $6CDD: $75
    ld l, h                                       ; $6CDE: $6C
    ld h, h                                       ; $6CDF: $64
    jr nz, jr_018_6D55                            ; $6CE0: $20 $73

    ld h, l                                       ; $6CE2: $65

jr_018_6CE3:
    ld h, l                                       ; $6CE3: $65
    jr nz, jr_018_6D59                            ; $6CE4: $20 $73

jr_018_6CE6:
    ld [hl], l                                    ; $6CE6: $75
    ld h, e                                       ; $6CE7: $63
    ld l, b                                       ; $6CE8: $68
    rst $38                                       ; $6CE9: $FF
    ld h, c                                       ; $6CEA: $61
    jr nz, @+$76                                  ; $6CEB: $20 $74

    ld l, b                                       ; $6CED: $68
    ld l, c                                       ; $6CEE: $69
    ld l, [hl]                                    ; $6CEF: $6E
    ld h, a                                       ; $6CF0: $67
    jr nz, jr_018_6D5C                            ; $6CF1: $20 $69

    ld l, [hl]                                    ; $6CF3: $6E
    jr nz, jr_018_6D63                            ; $6CF4: $20 $6D

    ld a, c                                       ; $6CF6: $79
    cp $6C                                        ; $6CF7: $FE $6C
    ld l, c                                       ; $6CF9: $69
    ld h, [hl]                                    ; $6CFA: $66
    ld h, l                                       ; $6CFB: $65
    ld [hl], h                                    ; $6CFC: $74
    ld l, c                                       ; $6CFD: $69
    ld l, l                                       ; $6CFE: $6D
    ld h, l                                       ; $6CFF: $65
    ld hl, $54FE                                  ; $6D00: $21 $FE $54
    ld l, b                                       ; $6D03: $68
    ld l, c                                       ; $6D04: $69
    ld [hl], e                                    ; $6D05: $73
    jr nz, jr_018_6D71                            ; $6D06: $20 $69

    ld [hl], e                                    ; $6D08: $73
    jr nz, @+$63                                  ; $6D09: $20 $61

    rst $38                                       ; $6D0B: $FF

jr_018_6D0C:
    ld [hl], e                                    ; $6D0C: $73
    ld [hl], b                                    ; $6D0D: $70
    ld h, l                                       ; $6D0E: $65
    ld l, h                                       ; $6D0F: $6C
    ld l, h                                       ; $6D10: $6C
    jr nz, jr_018_6D86                            ; $6D11: $20 $73

    ld l, a                                       ; $6D13: $6F
    cp $70                                        ; $6D14: $FE $70
    ld l, a                                       ; $6D16: $6F
    ld [hl], a                                    ; $6D17: $77
    ld h, l                                       ; $6D18: $65
    ld [hl], d                                    ; $6D19: $72
    ld h, [hl]                                    ; $6D1A: $66
    ld [hl], l                                    ; $6D1B: $75
    ld l, h                                       ; $6D1C: $6C
    ld l, $2E                                     ; $6D1D: $2E $2E

jr_018_6D1F:
    ld l, $FE                                     ; $6D1F: $2E $FE
    ld c, c                                       ; $6D21: $49
    ld [hl], h                                    ; $6D22: $74

jr_018_6D23:
    jr nz, @+$65                                  ; $6D23: $20 $63

    ld h, c                                       ; $6D25: $61

jr_018_6D26:
    ld l, [hl]                                    ; $6D26: $6E
    rst $38                                       ; $6D27: $FF
    ld h, h                                       ; $6D28: $64
    ld l, c                                       ; $6D29: $69
    ld [hl], e                                    ; $6D2A: $73
    ld [hl], e                                    ; $6D2B: $73
    ld l, a                                       ; $6D2C: $6F
    ld l, h                                       ; $6D2D: $6C
    halt                                          ; $6D2E: $76
    ld h, l                                       ; $6D2F: $65
    jr nz, jr_018_6D93                            ; $6D30: $20 $61

    ld l, h                                       ; $6D32: $6C
    ld l, l                                       ; $6D33: $6D
    ld l, a                                       ; $6D34: $6F
    ld [hl], e                                    ; $6D35: $73
    ld [hl], h                                    ; $6D36: $74
    cp $61                                        ; $6D37: $FE $61
    ld l, [hl]                                    ; $6D39: $6E

jr_018_6D3A:
    ld a, c                                       ; $6D3A: $79
    jr nz, @+$6F                                  ; $6D3B: $20 $6D

    ld h, c                                       ; $6D3D: $61
    ld h, a                                       ; $6D3E: $67
    ld l, c                                       ; $6D3F: $69
    ld h, e                                       ; $6D40: $63
    ld h, c                                       ; $6D41: $61
    ld l, h                                       ; $6D42: $6C
    rst $38                                       ; $6D43: $FF
    ld h, d                                       ; $6D44: $62
    ld l, c                                       ; $6D45: $69
    ld l, [hl]                                    ; $6D46: $6E
    ld h, h                                       ; $6D47: $64
    ld l, c                                       ; $6D48: $69
    ld l, [hl]                                    ; $6D49: $6E
    ld h, a                                       ; $6D4A: $67
    ld hl, $42FE                                  ; $6D4B: $21 $FE $42
    ld [hl], l                                    ; $6D4E: $75
    ld [hl], h                                    ; $6D4F: $74
    jr nz, jr_018_6DC6                            ; $6D50: $20 $74

    ld l, b                                       ; $6D52: $68
    ld l, c                                       ; $6D53: $69
    ld [hl], e                                    ; $6D54: $73

jr_018_6D55:
    jr nz, jr_018_6DBA                            ; $6D55: $20 $63

    ld l, a                                       ; $6D57: $6F
    ld [hl], l                                    ; $6D58: $75

jr_018_6D59:
    ld l, h                                       ; $6D59: $6C
    ld h, h                                       ; $6D5A: $64
    rst $38                                       ; $6D5B: $FF

jr_018_6D5C:
    ld l, a                                       ; $6D5C: $6F
    ld l, [hl]                                    ; $6D5D: $6E
    ld l, h                                       ; $6D5E: $6C
    ld a, c                                       ; $6D5F: $79
    jr nz, jr_018_6DCF                            ; $6D60: $20 $6D

    ld h, l                                       ; $6D62: $65

jr_018_6D63:
    ld h, c                                       ; $6D63: $61
    ld l, [hl]                                    ; $6D64: $6E
    ld l, $2E                                     ; $6D65: $2E $2E
    ld l, $FE                                     ; $6D67: $2E $FE
    db $FD                                        ; $6D69: $FD
    ld b, b                                       ; $6D6A: $40
    jr nz, jr_018_6D0C                            ; $6D6B: $20 $9F

    ld c, a                                       ; $6D6D: $4F
    ld c, b                                       ; $6D6E: $48
    jr nz, jr_018_6DBF                            ; $6D6F: $20 $4E

jr_018_6D71:
    ld c, a                                       ; $6D71: $4F
    ld hl, $59FE                                  ; $6D72: $21 $FE $59
    ld l, a                                       ; $6D75: $6F
    ld [hl], l                                    ; $6D76: $75
    jr nz, @+$6F                                  ; $6D77: $20 $6D

    ld [hl], l                                    ; $6D79: $75
    ld [hl], e                                    ; $6D7A: $73
    ld [hl], h                                    ; $6D7B: $74
    jr nz, jr_018_6DEA                            ; $6D7C: $20 $6C

    ld h, l                                       ; $6D7E: $65
    ld h, c                                       ; $6D7F: $61
    halt                                          ; $6D80: $76
    ld h, l                                       ; $6D81: $65
    rst $38                                       ; $6D82: $FF
    ld [hl], h                                    ; $6D83: $74
    ld l, b                                       ; $6D84: $68
    ld l, c                                       ; $6D85: $69

jr_018_6D86:
    ld [hl], e                                    ; $6D86: $73
    jr nz, jr_018_6DF9                            ; $6D87: $20 $70

    ld l, h                                       ; $6D89: $6C
    ld h, c                                       ; $6D8A: $61
    ld h, e                                       ; $6D8B: $63
    ld h, l                                       ; $6D8C: $65
    jr nz, jr_018_6DF0                            ; $6D8D: $20 $61

    ld [hl], h                                    ; $6D8F: $74
    cp $6F                                        ; $6D90: $FE $6F
    ld l, [hl]                                    ; $6D92: $6E

jr_018_6D93:
    ld h, e                                       ; $6D93: $63
    ld h, l                                       ; $6D94: $65
    ld l, $FE                                     ; $6D95: $2E $FE
    db $FD                                        ; $6D97: $FD
    sbc e                                         ; $6D98: $9B
    ld a, b                                       ; $6D99: $78
    ld [hl], b                                    ; $6D9A: $70
    sbc a                                         ; $6D9B: $9F
    ld d, a                                       ; $6D9C: $57
    ld l, b                                       ; $6D9D: $68
    ld h, c                                       ; $6D9E: $61
    ld [hl], h                                    ; $6D9F: $74
    daa                                           ; $6DA0: $27
    ld [hl], e                                    ; $6DA1: $73
    jr nz, jr_018_6E1B                            ; $6DA2: $20 $77

    ld [hl], d                                    ; $6DA4: $72
    ld l, a                                       ; $6DA5: $6F
    ld l, [hl]                                    ; $6DA6: $6E
    ld h, a                                       ; $6DA7: $67
    ccf                                           ; $6DA8: $3F
    cp $FD                                        ; $6DA9: $FE $FD
    sbc e                                         ; $6DAB: $9B
    ret c                                         ; $6DAC: $D8

    ld h, b                                       ; $6DAD: $60
    sbc a                                         ; $6DAE: $9F
    ld c, d                                       ; $6DAF: $4A
    ld [hl], l                                    ; $6DB0: $75
    ld [hl], e                                    ; $6DB1: $73
    ld [hl], h                                    ; $6DB2: $74
    jr nz, jr_018_6E29                            ; $6DB3: $20 $74

    ld [hl], d                                    ; $6DB5: $72
    ld [hl], l                                    ; $6DB6: $75
    ld [hl], e                                    ; $6DB7: $73
    ld [hl], h                                    ; $6DB8: $74
    rst $38                                       ; $6DB9: $FF

jr_018_6DBA:
    ld l, l                                       ; $6DBA: $6D
    ld h, l                                       ; $6DBB: $65
    ld hl, $2020                                  ; $6DBC: $21 $20 $20

jr_018_6DBF:
    ld c, b                                       ; $6DBF: $48
    ld l, c                                       ; $6DC0: $69
    ld h, h                                       ; $6DC1: $64
    ld h, l                                       ; $6DC2: $65
    jr nz, jr_018_6E39                            ; $6DC3: $20 $74

    ld l, b                                       ; $6DC5: $68

jr_018_6DC6:
    ld h, l                                       ; $6DC6: $65
    cp $73                                        ; $6DC7: $FE $73
    ld [hl], b                                    ; $6DC9: $70
    ld h, l                                       ; $6DCA: $65
    ld l, h                                       ; $6DCB: $6C
    ld l, h                                       ; $6DCC: $6C
    jr nz, jr_018_6E30                            ; $6DCD: $20 $61

jr_018_6DCF:
    ld l, [hl]                                    ; $6DCF: $6E
    ld h, h                                       ; $6DD0: $64
    jr nz, jr_018_6E3F                            ; $6DD1: $20 $6C

    ld h, l                                       ; $6DD3: $65
    ld h, c                                       ; $6DD4: $61
    halt                                          ; $6DD5: $76
    ld h, l                                       ; $6DD6: $65
    rst $38                                       ; $6DD7: $FF
    ld [hl], a                                    ; $6DD8: $77
    ld l, b                                       ; $6DD9: $68
    ld l, c                                       ; $6DDA: $69
    ld l, h                                       ; $6DDB: $6C
    ld h, l                                       ; $6DDC: $65
    jr nz, jr_018_6E58                            ; $6DDD: $20 $79

    ld l, a                                       ; $6DDF: $6F
    ld [hl], l                                    ; $6DE0: $75
    jr nz, jr_018_6E46                            ; $6DE1: $20 $63

    ld h, c                                       ; $6DE3: $61
    ld l, [hl]                                    ; $6DE4: $6E
    ld l, $FE                                     ; $6DE5: $2E $FE
    ld b, d                                       ; $6DE7: $42
    ld l, a                                       ; $6DE8: $6F
    ld [hl], h                                    ; $6DE9: $74

jr_018_6DEA:
    ld l, b                                       ; $6DEA: $68
    jr nz, @+$71                                  ; $6DEB: $20 $6F

    ld h, [hl]                                    ; $6DED: $66
    jr nz, jr_018_6E5F                            ; $6DEE: $20 $6F

jr_018_6DF0:
    ld [hl], l                                    ; $6DF0: $75
    ld [hl], d                                    ; $6DF1: $72
    rst $38                                       ; $6DF2: $FF
    ld h, [hl]                                    ; $6DF3: $66
    ld [hl], l                                    ; $6DF4: $75
    ld [hl], h                                    ; $6DF5: $74
    ld [hl], l                                    ; $6DF6: $75
    ld [hl], d                                    ; $6DF7: $72
    ld h, l                                       ; $6DF8: $65

jr_018_6DF9:
    ld [hl], e                                    ; $6DF9: $73
    jr nz, @+$63                                  ; $6DFA: $20 $61

    ld [hl], d                                    ; $6DFC: $72
    ld h, l                                       ; $6DFD: $65
    cp $69                                        ; $6DFE: $FE $69
    ld l, [hl]                                    ; $6E00: $6E
    jr nz, jr_018_6E6D                            ; $6E01: $20 $6A

    ld h, l                                       ; $6E03: $65
    ld l, a                                       ; $6E04: $6F
    ld [hl], b                                    ; $6E05: $70
    ld h, c                                       ; $6E06: $61
    ld [hl], d                                    ; $6E07: $72
    ld h, h                                       ; $6E08: $64
    ld a, c                                       ; $6E09: $79
    ld hl, $FDFE                                  ; $6E0A: $21 $FE $FD
    sbc e                                         ; $6E0D: $9B
    ld a, b                                       ; $6E0E: $78
    ld [hl], b                                    ; $6E0F: $70
    sbc a                                         ; $6E10: $9F
    ld c, a                                       ; $6E11: $4F
    ld l, e                                       ; $6E12: $6B
    ld h, c                                       ; $6E13: $61
    ld a, c                                       ; $6E14: $79
    ld l, $2E                                     ; $6E15: $2E $2E
    ld l, $20                                     ; $6E17: $2E $20
    ld l, c                                       ; $6E19: $69
    ld h, [hl]                                    ; $6E1A: $66

jr_018_6E1B:
    jr nz, @+$7B                                  ; $6E1B: $20 $79

    ld l, a                                       ; $6E1D: $6F
    ld [hl], l                                    ; $6E1E: $75
    rst $38                                       ; $6E1F: $FF
    ld [hl], e                                    ; $6E20: $73
    ld h, c                                       ; $6E21: $61
    ld a, c                                       ; $6E22: $79
    jr nz, jr_018_6E98                            ; $6E23: $20 $73

    ld l, a                                       ; $6E25: $6F
    ld l, $FE                                     ; $6E26: $2E $FE
    db $FD                                        ; $6E28: $FD

jr_018_6E29:
    sbc d                                         ; $6E29: $9A
    ld [de], a                                    ; $6E2A: $12
    sbc e                                         ; $6E2B: $9B
    ld a, b                                       ; $6E2C: $78
    ld [hl], b                                    ; $6E2D: $70
    sbc a                                         ; $6E2E: $9F
    ld c, b                                       ; $6E2F: $48

jr_018_6E30:
    ld h, l                                       ; $6E30: $65
    ld a, c                                       ; $6E31: $79
    jr nz, jr_018_6E83                            ; $6E32: $20 $4F

    ld [hl], d                                    ; $6E34: $72
    ld l, h                                       ; $6E35: $6C
    ld l, a                                       ; $6E36: $6F
    ld l, [hl]                                    ; $6E37: $6E
    inc l                                         ; $6E38: $2C

jr_018_6E39:
    rst $38                                       ; $6E39: $FF
    ld h, e                                       ; $6E3A: $63
    ld h, c                                       ; $6E3B: $61
    ld l, [hl]                                    ; $6E3C: $6E
    jr nz, jr_018_6EB8                            ; $6E3D: $20 $79

jr_018_6E3F:
    ld l, a                                       ; $6E3F: $6F
    ld [hl], l                                    ; $6E40: $75
    jr nz, jr_018_6EB0                            ; $6E41: $20 $6D

    ld h, c                                       ; $6E43: $61
    ld l, e                                       ; $6E44: $6B
    ld h, l                                       ; $6E45: $65

jr_018_6E46:
    cp $6D                                        ; $6E46: $FE $6D
    ld h, l                                       ; $6E48: $65
    jr nz, @+$63                                  ; $6E49: $20 $61

    jr nz, jr_018_6EBF                            ; $6E4B: $20 $72

    ld l, c                                       ; $6E4D: $69
    ld l, [hl]                                    ; $6E4E: $6E
    ld h, a                                       ; $6E4F: $67
    ccf                                           ; $6E50: $3F
    cp $FD                                        ; $6E51: $FE $FD
    sbc e                                         ; $6E53: $9B
    ld hl, sp+$63                                 ; $6E54: $F8 $63
    sbc a                                         ; $6E56: $9F
    ld d, b                                       ; $6E57: $50

jr_018_6E58:
    ld c, a                                       ; $6E58: $4F
    ld c, a                                       ; $6E59: $4F
    ld b, [hl]                                    ; $6E5A: $46
    ld hl, $5920                                  ; $6E5B: $21 $20 $59
    ld l, a                                       ; $6E5E: $6F

jr_018_6E5F:
    ld [hl], l                                    ; $6E5F: $75
    daa                                           ; $6E60: $27
    ld [hl], d                                    ; $6E61: $72
    ld h, l                                       ; $6E62: $65
    rst $38                                       ; $6E63: $FF
    ld h, c                                       ; $6E64: $61
    jr nz, @+$74                                  ; $6E65: $20 $72

    ld l, c                                       ; $6E67: $69
    ld l, [hl]                                    ; $6E68: $6E
    ld h, a                                       ; $6E69: $67
    ld hl, $FDFE                                  ; $6E6A: $21 $FE $FD

jr_018_6E6D:
    sbc e                                         ; $6E6D: $9B
    ld a, b                                       ; $6E6E: $78
    ld [hl], b                                    ; $6E6F: $70
    sbc a                                         ; $6E70: $9F
    ld l, $2E                                     ; $6E71: $2E $2E
    ld l, $2E                                     ; $6E73: $2E $2E
    ld l, $2E                                     ; $6E75: $2E $2E
    ld l, $2E                                     ; $6E77: $2E $2E
    ld l, $FE                                     ; $6E79: $2E $FE
    db $FD                                        ; $6E7B: $FD
    sbc e                                         ; $6E7C: $9B
    ld hl, sp+$63                                 ; $6E7D: $F8 $63
    sbc a                                         ; $6E7F: $9F
    ld c, e                                       ; $6E80: $4B
    ld l, c                                       ; $6E81: $69
    ld h, h                                       ; $6E82: $64

jr_018_6E83:
    ld h, h                                       ; $6E83: $64
    ld l, c                                       ; $6E84: $69
    ld l, [hl]                                    ; $6E85: $6E
    ld h, a                                       ; $6E86: $67
    ld hl, $4FFF                                  ; $6E87: $21 $FF $4F
    ld l, [hl]                                    ; $6E8A: $6E
    ld l, h                                       ; $6E8B: $6C
    ld a, c                                       ; $6E8C: $79
    jr nz, jr_018_6EFA                            ; $6E8D: $20 $6B

    ld l, c                                       ; $6E8F: $69
    ld h, h                                       ; $6E90: $64
    ld h, h                                       ; $6E91: $64
    ld l, c                                       ; $6E92: $69
    ld l, [hl]                                    ; $6E93: $6E
    ld h, a                                       ; $6E94: $67
    ld hl, $53FE                                  ; $6E95: $21 $FE $53

jr_018_6E98:
    ld l, a                                       ; $6E98: $6F
    jr nz, jr_018_6F12                            ; $6E99: $20 $77

    ld l, b                                       ; $6E9B: $68
    ld h, c                                       ; $6E9C: $61

jr_018_6E9D:
    ld [hl], h                                    ; $6E9D: $74
    jr nz, jr_018_6F04                            ; $6E9E: $20 $64

    ld l, a                                       ; $6EA0: $6F
    rst $38                                       ; $6EA1: $FF
    ld a, c                                       ; $6EA2: $79

jr_018_6EA3:
    ld l, a                                       ; $6EA3: $6F
    ld [hl], l                                    ; $6EA4: $75
    jr nz, jr_018_6F1E                            ; $6EA5: $20 $77

    ld h, c                                       ; $6EA7: $61
    ld l, [hl]                                    ; $6EA8: $6E
    ld [hl], h                                    ; $6EA9: $74
    ccf                                           ; $6EAA: $3F
    cp $FD                                        ; $6EAB: $FE $FD
    sbc c                                         ; $6EAD: $99
    sbc e                                         ; $6EAE: $9B

jr_018_6EAF:
    ld a, b                                       ; $6EAF: $78

jr_018_6EB0:
    ld [hl], b                                    ; $6EB0: $70
    sbc a                                         ; $6EB1: $9F
    jr nz, jr_018_6EFA                            ; $6EB2: $20 $46

    ld l, a                                       ; $6EB4: $6F
    ld [hl], d                                    ; $6EB5: $72
    ld h, a                                       ; $6EB6: $67
    ld h, l                                       ; $6EB7: $65

jr_018_6EB8:
    jr nz, jr_018_6EDA                            ; $6EB8: $20 $20

    ld b, l                                       ; $6EBA: $45
    ld [hl], c                                    ; $6EBB: $71
    ld [hl], l                                    ; $6EBC: $75
    ld l, c                                       ; $6EBD: $69
    ld [hl], b                                    ; $6EBE: $70

jr_018_6EBF:
    rst $38                                       ; $6EBF: $FF
    jr nz, jr_018_6F12                            ; $6EC0: $20 $50

    ld l, a                                       ; $6EC2: $6F
    ld [hl], a                                    ; $6EC3: $77
    ld h, l                                       ; $6EC4: $65
    ld [hl], d                                    ; $6EC5: $72
    jr nz, jr_018_6EE8                            ; $6EC6: $20 $20

jr_018_6EC8:
    ld b, h                                       ; $6EC8: $44
    ld l, a                                       ; $6EC9: $6F
    ld l, [hl]                                    ; $6ECA: $6E
    ld h, l                                       ; $6ECB: $65
    db $FD                                        ; $6ECC: $FD
    sbc h                                         ; $6ECD: $9C
    inc b                                         ; $6ECE: $04
    jr jr_018_6EC8                                ; $6ECF: $18 $F7

    ld l, [hl]                                    ; $6ED1: $6E
    jr jr_018_6EAF                                ; $6ED2: $18 $DB

    ld l, [hl]                                    ; $6ED4: $6E
    jr jr_018_6EC8                                ; $6ED5: $18 $F1

    ld l, [hl]                                    ; $6ED7: $6E
    jr @-$66                                      ; $6ED8: $18 $98

jr_018_6EDA:
    ld [hl], b                                    ; $6EDA: $70
    sbc d                                         ; $6EDB: $9A
    adc a                                         ; $6EDC: $8F
    ld c, $00                                     ; $6EDD: $0E $00
    dec c                                         ; $6EDF: $0D
    ld b, e                                       ; $6EE0: $43
    inc [hl]                                      ; $6EE1: $34
    dec [hl]                                      ; $6EE2: $35
    nop                                           ; $6EE3: $00
    inc c                                         ; $6EE4: $0C
    scf                                           ; $6EE5: $37
    ld b, l                                       ; $6EE6: $45
    ld b, b                                       ; $6EE7: $40

jr_018_6EE8:
    inc h                                         ; $6EE8: $24
    ld h, $10                                     ; $6EE9: $26 $10
    dec d                                         ; $6EEB: $15
    cpl                                           ; $6EEC: $2F
    ld b, l                                       ; $6EED: $45
    jr jr_018_6E9D                                ; $6EEE: $18 $AD

    ld l, [hl]                                    ; $6EF0: $6E
    sbc d                                         ; $6EF1: $9A
    adc l                                         ; $6EF2: $8D
    ld b, l                                       ; $6EF3: $45
    jr jr_018_6EA3                                ; $6EF4: $18 $AD

    ld l, [hl]                                    ; $6EF6: $6E
    sbc e                                         ; $6EF7: $9B
    ld hl, sp+$63                                 ; $6EF8: $F8 $63

jr_018_6EFA:
    ld b, a                                       ; $6EFA: $47
    inc bc                                        ; $6EFB: $03
    jr @+$07                                      ; $6EFC: $18 $05

    ld l, a                                       ; $6EFE: $6F
    jr jr_018_6F47                                ; $6EFF: $18 $46

    ld l, a                                       ; $6F01: $6F
    jr @-$63                                      ; $6F02: $18 $9B

jr_018_6F04:
    ld l, a                                       ; $6F04: $6F
    sbc a                                         ; $6F05: $9F
    ld b, h                                       ; $6F06: $44
    ld l, a                                       ; $6F07: $6F
    ld h, l                                       ; $6F08: $65
    ld [hl], e                                    ; $6F09: $73
    jr nz, jr_018_6F85                            ; $6F0A: $20 $79

    ld l, a                                       ; $6F0C: $6F
    ld [hl], l                                    ; $6F0D: $75
    ld [hl], d                                    ; $6F0E: $72
    jr nz, jr_018_6F77                            ; $6F0F: $20 $66

    ld h, c                                       ; $6F11: $61

jr_018_6F12:
    ld h, e                                       ; $6F12: $63
    ld h, l                                       ; $6F13: $65
    rst $38                                       ; $6F14: $FF
    ld l, b                                       ; $6F15: $68
    ld [hl], l                                    ; $6F16: $75
    ld [hl], d                                    ; $6F17: $72
    ld [hl], h                                    ; $6F18: $74
    ccf                                           ; $6F19: $3F
    cp $27                                        ; $6F1A: $FE $27
    ld b, e                                       ; $6F1C: $43
    ld h, c                                       ; $6F1D: $61

jr_018_6F1E:
    ld [hl], l                                    ; $6F1E: $75
    ld [hl], e                                    ; $6F1F: $73
    ld h, l                                       ; $6F20: $65
    jr nz, @+$6B                                  ; $6F21: $20 $69

    ld [hl], h                                    ; $6F23: $74
    daa                                           ; $6F24: $27
    ld [hl], e                                    ; $6F25: $73
    rst $38                                       ; $6F26: $FF
    ld c, e                                       ; $6F27: $4B
    ld c, c                                       ; $6F28: $49
    ld c, h                                       ; $6F29: $4C
    ld c, h                                       ; $6F2A: $4C
    ld c, c                                       ; $6F2B: $49
    ld c, [hl]                                    ; $6F2C: $4E
    daa                                           ; $6F2D: $27
    jr nz, jr_018_6F9D                            ; $6F2E: $20 $6D

    ld h, l                                       ; $6F30: $65
    ld hl, $41FE                                  ; $6F31: $21 $FE $41
    ld c, b                                       ; $6F34: $48
    ld c, b                                       ; $6F35: $48
    jr nz, jr_018_6F80                            ; $6F36: $20 $48

    ld b, c                                       ; $6F38: $41
    jr nz, jr_018_6F83                            ; $6F39: $20 $48

    ld b, c                                       ; $6F3B: $41
    jr nz, jr_018_6F86                            ; $6F3C: $20 $48

    ld b, c                                       ; $6F3E: $41
    ld hl, $FE21                                  ; $6F3F: $21 $21 $FE
    db $FD                                        ; $6F42: $FD
    ld b, [hl]                                    ; $6F43: $46
    ret nc                                        ; $6F44: $D0

    ld l, a                                       ; $6F45: $6F
    sbc a                                         ; $6F46: $9F

jr_018_6F47:
    ld b, l                                       ; $6F47: $45
    halt                                          ; $6F48: $76
    ld h, l                                       ; $6F49: $65
    ld [hl], d                                    ; $6F4A: $72
    ld a, c                                       ; $6F4B: $79
    jr nz, @+$6D                                  ; $6F4C: $20 $6B

    ld l, c                                       ; $6F4E: $69
    ld h, h                                       ; $6F4F: $64
    jr nz, jr_018_6FBA                            ; $6F50: $20 $68

    ld h, c                                       ; $6F52: $61
    ld [hl], e                                    ; $6F53: $73
    rst $38                                       ; $6F54: $FF
    ld [hl], h                                    ; $6F55: $74
    ld l, b                                       ; $6F56: $68
    ld h, l                                       ; $6F57: $65
    jr nz, jr_018_6FCC                            ; $6F58: $20 $72

    ld l, c                                       ; $6F5A: $69
    ld h, a                                       ; $6F5B: $67
    ld l, b                                       ; $6F5C: $68
    ld [hl], h                                    ; $6F5D: $74
    jr nz, jr_018_6FD4                            ; $6F5E: $20 $74

    ld l, a                                       ; $6F60: $6F
    cp $62                                        ; $6F61: $FE $62
    ld h, l                                       ; $6F63: $65
    jr nz, jr_018_6FDB                            ; $6F64: $20 $75

    ld h, a                                       ; $6F66: $67
    ld l, h                                       ; $6F67: $6C
    ld a, c                                       ; $6F68: $79
    inc l                                         ; $6F69: $2C
    jr nz, @+$64                                  ; $6F6A: $20 $62

    ld [hl], l                                    ; $6F6C: $75
    ld [hl], h                                    ; $6F6D: $74
    rst $38                                       ; $6F6E: $FF
    ld a, c                                       ; $6F6F: $79
    ld l, a                                       ; $6F70: $6F
    ld [hl], l                                    ; $6F71: $75
    jr nz, jr_018_6FD5                            ; $6F72: $20 $61

    ld h, d                                       ; $6F74: $62
    ld [hl], l                                    ; $6F75: $75
    ld [hl], e                                    ; $6F76: $73

jr_018_6F77:
    ld h, l                                       ; $6F77: $65
    ld h, h                                       ; $6F78: $64
    cp $74                                        ; $6F79: $FE $74
    ld l, b                                       ; $6F7B: $68
    ld h, l                                       ; $6F7C: $65
    jr nz, @+$72                                  ; $6F7D: $20 $70

    ld [hl], d                                    ; $6F7F: $72

jr_018_6F80:
    ld l, c                                       ; $6F80: $69
    halt                                          ; $6F81: $76
    ld l, c                                       ; $6F82: $69

jr_018_6F83:
    ld l, h                                       ; $6F83: $6C

jr_018_6F84:
    ld h, l                                       ; $6F84: $65

jr_018_6F85:
    ld h, a                                       ; $6F85: $67

jr_018_6F86:
    ld h, l                                       ; $6F86: $65
    ld hl, $48FE                                  ; $6F87: $21 $FE $48
    ld b, c                                       ; $6F8A: $41
    jr nz, jr_018_6FD5                            ; $6F8B: $20 $48

    ld b, c                                       ; $6F8D: $41
    ld b, c                                       ; $6F8E: $41
    jr nz, jr_018_6FD9                            ; $6F8F: $20 $48

    ld b, c                                       ; $6F91: $41
    ld b, c                                       ; $6F92: $41
    ld b, c                                       ; $6F93: $41
    ld hl, $FE21                                  ; $6F94: $21 $21 $FE
    db $FD                                        ; $6F97: $FD
    ld b, [hl]                                    ; $6F98: $46
    ret nc                                        ; $6F99: $D0

    ld l, a                                       ; $6F9A: $6F
    sbc a                                         ; $6F9B: $9F
    ld e, c                                       ; $6F9C: $59

jr_018_6F9D:
    ld l, a                                       ; $6F9D: $6F
    ld [hl], l                                    ; $6F9E: $75
    ld [hl], d                                    ; $6F9F: $72
    jr nz, jr_018_700F                            ; $6FA0: $20 $6D

    ld l, a                                       ; $6FA2: $6F
    ld [hl], h                                    ; $6FA3: $74
    ld l, b                                       ; $6FA4: $68
    ld h, l                                       ; $6FA5: $65
    ld [hl], d                                    ; $6FA6: $72
    inc l                                         ; $6FA7: $2C
    rst $38                                       ; $6FA8: $FF
    ld h, h                                       ; $6FA9: $64
    ld l, a                                       ; $6FAA: $6F
    ld h, l                                       ; $6FAB: $65
    ld [hl], e                                    ; $6FAC: $73
    jr nz, jr_018_7022                            ; $6FAD: $20 $73

    ld l, b                                       ; $6FAF: $68
    ld h, l                                       ; $6FB0: $65
    jr nz, @+$6A                                  ; $6FB1: $20 $68

    ld h, c                                       ; $6FB3: $61
    halt                                          ; $6FB4: $76
    ld h, l                                       ; $6FB5: $65
    cp $61                                        ; $6FB6: $FE $61
    jr nz, jr_018_7026                            ; $6FB8: $20 $6C

jr_018_6FBA:
    ld l, a                                       ; $6FBA: $6F
    ld [hl], l                                    ; $6FBB: $75
    ld h, h                                       ; $6FBC: $64
    jr nz, @+$64                                  ; $6FBD: $20 $62

    ld h, c                                       ; $6FBF: $61
    ld [hl], d                                    ; $6FC0: $72
    ld l, e                                       ; $6FC1: $6B
    ccf                                           ; $6FC2: $3F
    cp $42                                        ; $6FC3: $FE $42
    ld d, a                                       ; $6FC5: $57
    ld b, c                                       ; $6FC6: $41
    ld c, b                                       ; $6FC7: $48
    jr nz, jr_018_7012                            ; $6FC8: $20 $48

    ld b, c                                       ; $6FCA: $41
    ld c, b                                       ; $6FCB: $48

jr_018_6FCC:
    ld hl, $FE21                                  ; $6FCC: $21 $21 $FE
    db $FD                                        ; $6FCF: $FD
    sbc d                                         ; $6FD0: $9A
    adc [hl]                                      ; $6FD1: $8E
    jr jr_018_7045                                ; $6FD2: $18 $71

jr_018_6FD4:
    ld [hl], b                                    ; $6FD4: $70

jr_018_6FD5:
    jr jr_018_6F84                                ; $6FD5: $18 $AD

    ld l, [hl]                                    ; $6FD7: $6E
    ld h, c                                       ; $6FD8: $61

jr_018_6FD9:
    nop                                           ; $6FD9: $00
    inc c                                         ; $6FDA: $0C

jr_018_6FDB:
    ld b, e                                       ; $6FDB: $43
    ld b, e                                       ; $6FDC: $43
    ld [bc], a                                    ; $6FDD: $02
    rst $38                                       ; $6FDE: $FF
    nop                                           ; $6FDF: $00
    ld h, h                                       ; $6FE0: $64
    nop                                           ; $6FE1: $00
    inc hl                                        ; $6FE2: $23
    inc [hl]                                      ; $6FE3: $34
    inc [hl]                                      ; $6FE4: $34
    ld [bc], a                                    ; $6FE5: $02
    ld bc, $6401                                  ; $6FE6: $01 $01 $64
    nop                                           ; $6FE9: $00
    inc hl                                        ; $6FEA: $23
    dec [hl]                                      ; $6FEB: $35
    dec [hl]                                      ; $6FEC: $35
    inc bc                                        ; $6FED: $03
    ld [hl], $01                                  ; $6FEE: $36 $01
    ld h, h                                       ; $6FF0: $64
    nop                                           ; $6FF1: $00
    inc hl                                        ; $6FF2: $23
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    inc b                                         ; $6FF5: $04
    ld d, b                                       ; $6FF6: $50
    ld bc, $0064                                  ; $6FF7: $01 $64 $00
    ld h, $0C                                     ; $6FFA: $26 $0C
    inc c                                         ; $6FFC: $0C
    ld [bc], a                                    ; $6FFD: $02
    dec bc                                        ; $6FFE: $0B
    ld bc, $0064                                  ; $6FFF: $01 $64 $00
    inc hl                                        ; $7002: $23
    scf                                           ; $7003: $37
    scf                                           ; $7004: $37
    inc b                                         ; $7005: $04
    rst $38                                       ; $7006: $FF
    nop                                           ; $7007: $00
    sub [hl]                                      ; $7008: $96
    nop                                           ; $7009: $00
    ld h, $45                                     ; $700A: $26 $45
    ld b, l                                       ; $700C: $45
    inc bc                                        ; $700D: $03
    ld b, e                                       ; $700E: $43

jr_018_700F:
    ld bc, $0096                                  ; $700F: $01 $96 $00

jr_018_7012:
    ld h, $40                                     ; $7012: $26 $40
    ld b, b                                       ; $7014: $40
    ld [bc], a                                    ; $7015: $02
    ld a, $01                                     ; $7016: $3E $01
    sub [hl]                                      ; $7018: $96
    nop                                           ; $7019: $00
    ld h, $24                                     ; $701A: $26 $24
    inc h                                         ; $701C: $24

jr_018_701D:
    ld [bc], a                                    ; $701D: $02
    dec [hl]                                      ; $701E: $35
    ld bc, $0096                                  ; $701F: $01 $96 $00

jr_018_7022:
    ld h, $10                                     ; $7022: $26 $10
    db $10                                        ; $7024: $10
    inc bc                                        ; $7025: $03

jr_018_7026:
    dec [hl]                                      ; $7026: $35
    ld bc, $01F4                                  ; $7027: $01 $F4 $01
    ld [hl-], a                                   ; $702A: $32
    dec d                                         ; $702B: $15
    dec d                                         ; $702C: $15
    dec b                                         ; $702D: $05
    inc [hl]                                      ; $702E: $34
    ld bc, $0258                                  ; $702F: $01 $58 $02
    ld [hl-], a                                   ; $7032: $32
    cpl                                           ; $7033: $2F
    cpl                                           ; $7034: $2F
    dec b                                         ; $7035: $05
    ld sp, $8A01                                  ; $7036: $31 $01 $8A
    ld [bc], a                                    ; $7039: $02
    ld [hl-], a                                   ; $703A: $32
    sbc e                                         ; $703B: $9B
    ld hl, sp+$63                                 ; $703C: $F8 $63
    sbc a                                         ; $703E: $9F
    ld c, b                                       ; $703F: $48
    ld h, l                                       ; $7040: $65
    ld [hl], d                                    ; $7041: $72
    ld h, l                                       ; $7042: $65
    jr nz, jr_018_70AC                            ; $7043: $20 $67

jr_018_7045:
    ld l, a                                       ; $7045: $6F
    ld h, l                                       ; $7046: $65
    ld [hl], e                                    ; $7047: $73
    ld hl, $FDFE                                  ; $7048: $21 $FE $FD
    sbc d                                         ; $704B: $9A
    add hl, bc                                    ; $704C: $09
    inc bc                                        ; $704D: $03
    dec de                                        ; $704E: $1B
    rst $10                                       ; $704F: $D7
    ld c, [hl]                                    ; $7050: $4E
    ld e, l                                       ; $7051: $5D
    sbc e                                         ; $7052: $9B
    ld hl, sp+$63                                 ; $7053: $F8 $63
    sbc a                                         ; $7055: $9F
    ld c, b                                       ; $7056: $48
    ld h, l                                       ; $7057: $65
    ld [hl], d                                    ; $7058: $72
    ld h, l                                       ; $7059: $65
    daa                                           ; $705A: $27
    ld [hl], e                                    ; $705B: $73
    jr nz, jr_018_70D7                            ; $705C: $20 $79

    ld l, a                                       ; $705E: $6F
    ld [hl], l                                    ; $705F: $75
    ld [hl], d                                    ; $7060: $72
    rst $38                                       ; $7061: $FF
    db $FC                                        ; $7062: $FC
    cp $66                                        ; $7063: $FE $66
    ld [hl], d                                    ; $7065: $72
    ld h, l                                       ; $7066: $65
    ld h, c                                       ; $7067: $61
    ld l, e                                       ; $7068: $6B
    ld a, c                                       ; $7069: $79
    ld hl, $FDFE                                  ; $706A: $21 $FE $FD
    ld b, l                                       ; $706D: $45
    jr jr_018_701D                                ; $706E: $18 $AD

    ld l, [hl]                                    ; $7070: $6E
    sbc e                                         ; $7071: $9B
    ld hl, sp+$63                                 ; $7072: $F8 $63
    sbc a                                         ; $7074: $9F
    ld d, e                                       ; $7075: $53
    ld l, a                                       ; $7076: $6F
    ld [hl], d                                    ; $7077: $72
    ld [hl], d                                    ; $7078: $72
    ld a, c                                       ; $7079: $79
    ld hl, $59FE                                  ; $707A: $21 $FE $59
    ld l, a                                       ; $707D: $6F
    ld [hl], l                                    ; $707E: $75
    ld [hl], d                                    ; $707F: $72
    jr nz, jr_018_70D4                            ; $7080: $20 $52

    ld l, c                                       ; $7082: $69
    ld l, [hl]                                    ; $7083: $6E
    ld h, a                                       ; $7084: $67
    jr nz, jr_018_70C9                            ; $7085: $20 $42

    ld h, c                                       ; $7087: $61
    ld l, [hl]                                    ; $7088: $6E
    ld l, e                                       ; $7089: $6B
    rst $38                                       ; $708A: $FF
    ld l, c                                       ; $708B: $69
    ld [hl], e                                    ; $708C: $73
    jr nz, @+$68                                  ; $708D: $20 $66

    ld [hl], l                                    ; $708F: $75
    ld l, h                                       ; $7090: $6C
    ld l, h                                       ; $7091: $6C
    ld l, $FE                                     ; $7092: $2E $FE
    db $FD                                        ; $7094: $FD
    ld b, [hl]                                    ; $7095: $46
    xor l                                         ; $7096: $AD
    ld l, [hl]                                    ; $7097: $6E
    sbc e                                         ; $7098: $9B
    ld hl, sp+$63                                 ; $7099: $F8 $63
    sbc a                                         ; $709B: $9F
    ld b, d                                       ; $709C: $42
    ld h, l                                       ; $709D: $65
    jr nz, @+$65                                  ; $709E: $20 $63

    ld h, c                                       ; $70A0: $61
    ld [hl], d                                    ; $70A1: $72
    ld h, l                                       ; $70A2: $65
    ld h, [hl]                                    ; $70A3: $66
    ld [hl], l                                    ; $70A4: $75
    ld l, h                                       ; $70A5: $6C
    ld l, $FF                                     ; $70A6: $2E $FF
    ld b, c                                       ; $70A8: $41
    ld l, [hl]                                    ; $70A9: $6E
    ld l, c                                       ; $70AA: $69
    ld l, l                                       ; $70AB: $6D

jr_018_70AC:
    ld l, c                                       ; $70AC: $69
    ld [hl], h                                    ; $70AD: $74
    ld h, l                                       ; $70AE: $65
    jr nz, jr_018_7114                            ; $70AF: $20 $63

    ld h, c                                       ; $70B1: $61
    ld [hl], l                                    ; $70B2: $75
    ld [hl], e                                    ; $70B3: $73
    ld h, l                                       ; $70B4: $65
    ld [hl], e                                    ; $70B5: $73
    cp $73                                        ; $70B6: $FE $73
    ld h, l                                       ; $70B8: $65
    halt                                          ; $70B9: $76
    ld h, l                                       ; $70BA: $65
    ld [hl], d                                    ; $70BB: $72
    ld h, l                                       ; $70BC: $65
    jr nz, @+$6A                                  ; $70BD: $20 $68

    ld h, l                                       ; $70BF: $65
    ld h, c                                       ; $70C0: $61
    ld h, h                                       ; $70C1: $64
    rst $38                                       ; $70C2: $FF
    ld [hl], e                                    ; $70C3: $73
    ld [hl], a                                    ; $70C4: $77
    ld h, l                                       ; $70C5: $65
    ld l, h                                       ; $70C6: $6C
    ld l, h                                       ; $70C7: $6C
    ld l, c                                       ; $70C8: $69

jr_018_70C9:
    ld l, [hl]                                    ; $70C9: $6E
    ld h, a                                       ; $70CA: $67
    ld l, $FE                                     ; $70CB: $2E $FE
    db $FD                                        ; $70CD: $FD
    sbc e                                         ; $70CE: $9B
    ld a, b                                       ; $70CF: $78
    ld [hl], b                                    ; $70D0: $70
    sbc a                                         ; $70D1: $9F
    ld c, c                                       ; $70D2: $49
    ld [hl], h                                    ; $70D3: $74

jr_018_70D4:
    jr nz, jr_018_713A                            ; $70D4: $20 $64

    ld l, a                                       ; $70D6: $6F

jr_018_70D7:
    ld h, l                                       ; $70D7: $65
    ld [hl], e                                    ; $70D8: $73
    ccf                                           ; $70D9: $3F
    ld hl, $FDFE                                  ; $70DA: $21 $FE $FD
    sbc e                                         ; $70DD: $9B
    ld hl, sp+$63                                 ; $70DE: $F8 $63
    sbc a                                         ; $70E0: $9F
    ld d, e                                       ; $70E1: $53
    ld [hl], l                                    ; $70E2: $75
    ld [hl], d                                    ; $70E3: $72
    ld h, l                                       ; $70E4: $65
    ld hl, $FDFE                                  ; $70E5: $21 $FE $FD
    sbc e                                         ; $70E8: $9B
    ld a, b                                       ; $70E9: $78
    ld [hl], b                                    ; $70EA: $70
    sbc a                                         ; $70EB: $9F
    ld l, $2E                                     ; $70EC: $2E $2E
    ld l, $2E                                     ; $70EE: $2E $2E
    ld l, $2E                                     ; $70F0: $2E $2E
    ld l, $2E                                     ; $70F2: $2E $2E
    ld l, $FE                                     ; $70F4: $2E $FE
    db $FD                                        ; $70F6: $FD
    sbc d                                         ; $70F7: $9A
    ld e, b                                       ; $70F8: $58
    ld bc, $9B42                                  ; $70F9: $01 $42 $9B
    ld a, b                                       ; $70FC: $78
    ld [hl], b                                    ; $70FD: $70
    sbc a                                         ; $70FE: $9F
    ccf                                           ; $70FF: $3F
    ccf                                           ; $7100: $3F
    ccf                                           ; $7101: $3F
    cp $FD                                        ; $7102: $FE $FD
    sbc d                                         ; $7104: $9A
    ld e, h                                       ; $7105: $5C
    nop                                           ; $7106: $00
    inc bc                                        ; $7107: $03
    ld b, d                                       ; $7108: $42
    sbc e                                         ; $7109: $9B
    ld hl, sp+$63                                 ; $710A: $F8 $63
    sbc a                                         ; $710C: $9F
    ld c, b                                       ; $710D: $48
    ld h, l                                       ; $710E: $65
    ld a, c                                       ; $710F: $79
    inc l                                         ; $7110: $2C
    jr nz, jr_018_7155                            ; $7111: $20 $42

    ld l, h                                       ; $7113: $6C

jr_018_7114:
    ld [hl], l                                    ; $7114: $75
    inc l                                         ; $7115: $2C
    jr nz, jr_018_7180                            ; $7116: $20 $68

    ld l, a                                       ; $7118: $6F
    ld [hl], a                                    ; $7119: $77
    daa                                           ; $711A: $27
    ld [hl], e                                    ; $711B: $73
    rst $38                                       ; $711C: $FF
    ld l, c                                       ; $711D: $69
    ld [hl], h                                    ; $711E: $74
    jr nz, jr_018_7188                            ; $711F: $20 $67

    ld l, a                                       ; $7121: $6F
    ld l, c                                       ; $7122: $69
    ld l, [hl]                                    ; $7123: $6E
    ld h, a                                       ; $7124: $67
    ccf                                           ; $7125: $3F
    cp $FD                                        ; $7126: $FE $FD
    sbc d                                         ; $7128: $9A
    sbc e                                         ; $7129: $9B
    jr z, @+$45                                   ; $712A: $28 $43

    sbc a                                         ; $712C: $9F
    ld b, c                                       ; $712D: $41
    ld [hl], d                                    ; $712E: $72
    ld [hl], d                                    ; $712F: $72
    inc l                                         ; $7130: $2C
    jr nz, jr_018_719A                            ; $7131: $20 $67

    ld l, a                                       ; $7133: $6F
    ld l, a                                       ; $7134: $6F
    ld h, h                                       ; $7135: $64
    ld l, $20                                     ; $7136: $2E $20
    ld c, c                                       ; $7138: $49
    rst $38                                       ; $7139: $FF

jr_018_713A:
    ld l, d                                       ; $713A: $6A
    ld [hl], l                                    ; $713B: $75
    ld [hl], e                                    ; $713C: $73
    ld [hl], h                                    ; $713D: $74
    jr nz, jr_018_71A3                            ; $713E: $20 $63

    ld h, c                                       ; $7140: $61
    ld l, l                                       ; $7141: $6D
    ld h, l                                       ; $7142: $65
    jr nz, jr_018_71AE                            ; $7143: $20 $69

    ld l, [hl]                                    ; $7145: $6E
    cp $74                                        ; $7146: $FE $74
    ld l, a                                       ; $7148: $6F
    jr nz, jr_018_71BF                            ; $7149: $20 $74

    ld h, l                                       ; $714B: $65
    ld l, h                                       ; $714C: $6C
    ld l, h                                       ; $714D: $6C
    rst $38                                       ; $714E: $FF
    ld h, l                                       ; $714F: $65
    halt                                          ; $7150: $76
    ld h, l                                       ; $7151: $65
    ld [hl], d                                    ; $7152: $72
    ld a, c                                       ; $7153: $79
    ld l, a                                       ; $7154: $6F

jr_018_7155:
    ld l, [hl]                                    ; $7155: $6E
    ld h, l                                       ; $7156: $65
    jr nz, jr_018_71CD                            ; $7157: $20 $74

    ld l, b                                       ; $7159: $68
    ld h, c                                       ; $715A: $61
    ld [hl], h                                    ; $715B: $74
    cp $74                                        ; $715C: $FE $74
    ld l, b                                       ; $715E: $68
    ld h, l                                       ; $715F: $65
    jr nz, jr_018_71C5                            ; $7160: $20 $63

    ld l, c                                       ; $7162: $69
    ld [hl], h                                    ; $7163: $74
    ld a, c                                       ; $7164: $79
    jr nz, jr_018_71D0                            ; $7165: $20 $69

    ld [hl], e                                    ; $7167: $73
    rst $38                                       ; $7168: $FF
    ld h, c                                       ; $7169: $61
    ld h, d                                       ; $716A: $62
    ld l, a                                       ; $716B: $6F
    ld [hl], l                                    ; $716C: $75
    ld [hl], h                                    ; $716D: $74
    jr nz, @+$76                                  ; $716E: $20 $74

    ld l, a                                       ; $7170: $6F
    jr nz, jr_018_71DF                            ; $7171: $20 $6C

    ld h, l                                       ; $7173: $65
    ld h, c                                       ; $7174: $61
    halt                                          ; $7175: $76
    ld h, l                                       ; $7176: $65
    ld l, $FE                                     ; $7177: $2E $FE
    db $FD                                        ; $7179: $FD
    sbc e                                         ; $717A: $9B
    ld a, b                                       ; $717B: $78
    ld [hl], b                                    ; $717C: $70
    sbc a                                         ; $717D: $9F
    ld l, $2E                                     ; $717E: $2E $2E

jr_018_7180:
    ld l, $2E                                     ; $7180: $2E $2E
    ld l, $FE                                     ; $7182: $2E $FE
    db $FD                                        ; $7184: $FD
    sbc e                                         ; $7185: $9B
    ld hl, sp+$63                                 ; $7186: $F8 $63

jr_018_7188:
    sbc a                                         ; $7188: $9F
    ld c, c                                       ; $7189: $49
    ld l, [hl]                                    ; $718A: $6E
    jr nz, jr_018_7201                            ; $718B: $20 $74

    ld l, b                                       ; $718D: $68
    ld h, c                                       ; $718E: $61
    ld [hl], h                                    ; $718F: $74
    jr nz, jr_018_71F5                            ; $7190: $20 $63

    ld h, c                                       ; $7192: $61
    ld [hl], e                                    ; $7193: $73
    ld h, l                                       ; $7194: $65
    inc l                                         ; $7195: $2C
    rst $38                                       ; $7196: $FF
    ld c, c                                       ; $7197: $49
    daa                                           ; $7198: $27
    ld l, h                                       ; $7199: $6C

jr_018_719A:
    ld l, h                                       ; $719A: $6C
    jr nz, jr_018_7210                            ; $719B: $20 $73

    ld h, l                                       ; $719D: $65
    ld h, l                                       ; $719E: $65
    jr nz, @+$7B                                  ; $719F: $20 $79

    ld l, a                                       ; $71A1: $6F
    ld [hl], l                                    ; $71A2: $75

jr_018_71A3:
    cp $67                                        ; $71A3: $FE $67
    ld [hl], l                                    ; $71A5: $75
    ld a, c                                       ; $71A6: $79
    ld [hl], e                                    ; $71A7: $73
    jr nz, jr_018_7216                            ; $71A8: $20 $6C

    ld h, c                                       ; $71AA: $61
    ld [hl], h                                    ; $71AB: $74
    ld h, l                                       ; $71AC: $65
    ld [hl], d                                    ; $71AD: $72

jr_018_71AE:
    ld l, $FE                                     ; $71AE: $2E $FE
    db $FD                                        ; $71B0: $FD
    sbc d                                         ; $71B1: $9A
    ld e, h                                       ; $71B2: $5C
    ld bc, $4202                                  ; $71B3: $01 $02 $42
    sbc e                                         ; $71B6: $9B
    jr z, jr_018_71FC                             ; $71B7: $28 $43

    sbc a                                         ; $71B9: $9F
    ld c, h                                       ; $71BA: $4C
    ld h, l                                       ; $71BB: $65
    ld [hl], h                                    ; $71BC: $74
    daa                                           ; $71BD: $27
    ld [hl], e                                    ; $71BE: $73

jr_018_71BF:
    jr nz, jr_018_7228                            ; $71BF: $20 $67

    ld l, a                                       ; $71C1: $6F
    jr nz, jr_018_722A                            ; $71C2: $20 $66

    ld l, a                                       ; $71C4: $6F

jr_018_71C5:
    ld [hl], d                                    ; $71C5: $72
    rst $38                                       ; $71C6: $FF
    ld h, c                                       ; $71C7: $61
    jr nz, jr_018_723D                            ; $71C8: $20 $73

    ld [hl], a                                    ; $71CA: $77
    ld l, c                                       ; $71CB: $69
    ld l, l                                       ; $71CC: $6D

jr_018_71CD:
    ld l, $FE                                     ; $71CD: $2E $FE
    db $FD                                        ; $71CF: $FD

jr_018_71D0:
    sbc d                                         ; $71D0: $9A
    ld e, b                                       ; $71D1: $58
    ld bc, $9342                                  ; $71D2: $01 $42 $93
    ld h, l                                       ; $71D5: $65
    db $10                                        ; $71D6: $10
    ld c, [hl]                                    ; $71D7: $4E
    ld c, a                                       ; $71D8: $4F
    ld h, h                                       ; $71D9: $64
    ld b, l                                       ; $71DA: $45
    ld d, d                                       ; $71DB: $52
    ld l, c                                       ; $71DC: $69
    ld c, [hl]                                    ; $71DD: $4E
    ld d, d                                       ; $71DE: $52

jr_018_71DF:
    ld h, [hl]                                    ; $71DF: $66
    ret nz                                        ; $71E0: $C0

    ld e, h                                       ; $71E1: $5C
    ld hl, $0005                                  ; $71E2: $21 $05 $00
    add c                                         ; $71E5: $81
    ld e, l                                       ; $71E6: $5D
    dec b                                         ; $71E7: $05
    dec b                                         ; $71E8: $05

jr_018_71E9:
    ld l, c                                       ; $71E9: $69
    ret nc                                        ; $71EA: $D0

    nop                                           ; $71EB: $00
    jr nz, jr_018_71E9                            ; $71EC: $20 $FB

    ld d, b                                       ; $71EE: $50
    ld [hl+], a                                   ; $71EF: $22
    dec b                                         ; $71F0: $05
    ld b, b                                       ; $71F1: $40
    dec b                                         ; $71F2: $05
    ld [bc], a                                    ; $71F3: $02
    db $ED                                        ; $71F4: $ED

jr_018_71F5:
    ld h, e                                       ; $71F5: $63
    ld b, $04                                     ; $71F6: $06 $04
    ld d, [hl]                                    ; $71F8: $56
    ret nc                                        ; $71F9: $D0

    ld h, b                                       ; $71FA: $60
    dec h                                         ; $71FB: $25

jr_018_71FC:
    ld h, h                                       ; $71FC: $64

jr_018_71FD:
    ld d, [hl]                                    ; $71FD: $56
    jr jr_018_7255                                ; $71FE: $18 $55

    ld [hl], d                                    ; $7200: $72

jr_018_7201:
    dec b                                         ; $7201: $05
    inc bc                                        ; $7202: $03
    db $ED                                        ; $7203: $ED
    ld h, e                                       ; $7204: $63
    db $10                                        ; $7205: $10
    inc c                                         ; $7206: $0C
    nop                                           ; $7207: $00
    pop de                                        ; $7208: $D1
    nop                                           ; $7209: $00
    rrca                                          ; $720A: $0F
    ld a, [bc]                                    ; $720B: $0A
    ld d, e                                       ; $720C: $53
    jr @+$5F                                      ; $720D: $18 $5D

    ld [hl], d                                    ; $720F: $72

jr_018_7210:
    dec b                                         ; $7210: $05
    inc b                                         ; $7211: $04
    ld l, e                                       ; $7212: $6B
    ld c, d                                       ; $7213: $4A
    ld c, $13                                     ; $7214: $0E $13

jr_018_7216:
    adc d                                         ; $7216: $8A
    pop de                                        ; $7217: $D1
    add b                                         ; $7218: $80
    jr jr_018_71FD                                ; $7219: $18 $E2

    ld [hl], d                                    ; $721B: $72
    ld [hl+], a                                   ; $721C: $22
    dec b                                         ; $721D: $05
    ld b, b                                       ; $721E: $40
    ld l, e                                       ; $721F: $6B
    jr nz, jr_018_722E                            ; $7220: $20 $0C

    ldh a, [$6F]                                  ; $7222: $F0 $6F
    nop                                           ; $7224: $00
    add [hl]                                      ; $7225: $86
    nop                                           ; $7226: $00
    ld l, e                                       ; $7227: $6B

jr_018_7228:
    jr nc, jr_018_7237                            ; $7228: $30 $0D

jr_018_722A:
    jr nc, @+$64                                  ; $722A: $30 $62

    nop                                           ; $722C: $00
    add b                                         ; $722D: $80

jr_018_722E:
    nop                                           ; $722E: $00
    ld l, e                                       ; $722F: $6B
    jr z, jr_018_723E                             ; $7230: $28 $0C

    or b                                          ; $7232: $B0
    ld a, d                                       ; $7233: $7A
    nop                                           ; $7234: $00
    add e                                         ; $7235: $83

jr_018_7236:
    nop                                           ; $7236: $00

jr_018_7237:
    ld l, e                                       ; $7237: $6B
    jr nc, jr_018_7244                            ; $7238: $30 $0A

    ld [hl], b                                    ; $723A: $70
    ld b, h                                       ; $723B: $44
    nop                                           ; $723C: $00

jr_018_723D:
    adc b                                         ; $723D: $88

jr_018_723E:
    nop                                           ; $723E: $00
    dec bc                                        ; $723F: $0B
    nop                                           ; $7240: $00
    dec bc                                        ; $7241: $0B

jr_018_7242:
    ld [bc], a                                    ; $7242: $02
    ld b, e                                       ; $7243: $43

jr_018_7244:
    inc de                                        ; $7244: $13
    ld bc, $A224                                  ; $7245: $01 $24 $A2
    dec b                                         ; $7248: $05
    ld bc, $4F18                                  ; $7249: $01 $18 $4F
    ld [hl], d                                    ; $724C: $72
    dec bc                                        ; $724D: $0B
    inc bc                                        ; $724E: $03
    nop                                           ; $724F: $00
    rra                                           ; $7250: $1F
    ld c, $82                                     ; $7251: $0E $82
    sub h                                         ; $7253: $94
    ld b, d                                       ; $7254: $42

jr_018_7255:
    ld e, e                                       ; $7255: $5B
    jr @+$74                                      ; $7256: $18 $72

    ld h, [hl]                                    ; $7258: $66
    ld b, l                                       ; $7259: $45
    dec h                                         ; $725A: $25
    or h                                          ; $725B: $B4

jr_018_725C:
    ld d, [hl]                                    ; $725C: $56
    ld e, e                                       ; $725D: $5B

jr_018_725E:
    jr jr_018_728B                                ; $725E: $18 $2B

    ld l, [hl]                                    ; $7260: $6E
    ld b, l                                       ; $7261: $45
    rrca                                          ; $7262: $0F
    db $ED                                        ; $7263: $ED

jr_018_7264:
    ld d, e                                       ; $7264: $53
    rlca                                          ; $7265: $07
    nop                                           ; $7266: $00
    ld l, e                                       ; $7267: $6B
    ld c, d                                       ; $7268: $4A
    add hl, bc                                    ; $7269: $09
    nop                                           ; $726A: $00
    jr jr_018_72E3                                ; $726B: $18 $76

    ld [hl], d                                    ; $726D: $72
    add hl, bc                                    ; $726E: $09
    inc bc                                        ; $726F: $03
    jr jr_018_7236                                ; $7270: $18 $C4

    ld [hl], d                                    ; $7272: $72
    dec bc                                        ; $7273: $0B
    inc b                                         ; $7274: $04
    ld b, d                                       ; $7275: $42
    inc d                                         ; $7276: $14
    jr nz, jr_018_722E                            ; $7277: $20 $B5

    ld d, b                                       ; $7279: $50

jr_018_727A:
    ld b, b                                       ; $727A: $40
    db $10                                        ; $727B: $10
    ld e, e                                       ; $727C: $5B
    jr jr_018_727A                                ; $727D: $18 $FB

    ld [hl], b                                    ; $727F: $70
    ld d, $20                                     ; $7280: $16 $20
    ld c, l                                       ; $7282: $4D

jr_018_7283:
    ld d, b                                       ; $7283: $50
    stop                                          ; $7284: $10 $00
    cp $20                                        ; $7286: $FE $20
    ret                                           ; $7288: $C9


    ld d, b                                       ; $7289: $50
    ld b, b                                       ; $728A: $40

jr_018_728B:
    nop                                           ; $728B: $00
    nop                                           ; $728C: $00
    jr nz, jr_018_7242                            ; $728D: $20 $B3

    ld c, a                                       ; $728F: $4F
    jr jr_018_7292                                ; $7290: $18 $00

jr_018_7292:
    nop                                           ; $7292: $00
    jr nz, jr_018_725E                            ; $7293: $20 $C9

    ld d, b                                       ; $7295: $50
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    ld e, h                                       ; $729A: $5C
    nop                                           ; $729B: $00
    inc bc                                        ; $729C: $03
    ld e, e                                       ; $729D: $5B
    jr jr_018_72A9                                ; $729E: $18 $09

    ld [hl], c                                    ; $72A0: $71
    ld e, h                                       ; $72A1: $5C
    ld [bc], a                                    ; $72A2: $02
    inc bc                                        ; $72A3: $03
    inc d                                         ; $72A4: $14
    jr nz, jr_018_725C                            ; $72A5: $20 $B5

    ld d, b                                       ; $72A7: $50
    ld e, h                                       ; $72A8: $5C

jr_018_72A9:
    inc bc                                        ; $72A9: $03
    ld [bc], a                                    ; $72AA: $02
    ld e, e                                       ; $72AB: $5B
    jr jr_018_7264                                ; $72AC: $18 $B6

    ld [hl], c                                    ; $72AE: $71
    ld h, d                                       ; $72AF: $62
    ld bc, $5040                                  ; $72B0: $01 $40 $50
    dec d                                         ; $72B3: $15
    jr nz, jr_018_7283                            ; $72B4: $20 $CD

    ld c, a                                       ; $72B6: $4F
    ld b, b                                       ; $72B7: $40
    nop                                           ; $72B8: $00
    ld l, [hl]                                    ; $72B9: $6E
    rlca                                          ; $72BA: $07
    rst $38                                       ; $72BB: $FF
    ld a, a                                       ; $72BC: $7F
    halt                                          ; $72BD: $76
    jr nz, jr_018_72C7                            ; $72BE: $20 $07

    ld b, l                                       ; $72C0: $45
    dec h                                         ; $72C1: $25
    and b                                         ; $72C2: $A0
    ld [hl], h                                    ; $72C3: $74
    inc d                                         ; $72C4: $14
    rrca                                          ; $72C5: $0F

jr_018_72C6:
    ld a, [bc]                                    ; $72C6: $0A

jr_018_72C7:
    ld d, e                                       ; $72C7: $53
    ld e, h                                       ; $72C8: $5C
    ld bc, $1502                                  ; $72C9: $01 $02 $15
    rrca                                          ; $72CC: $0F
    ld e, [hl]                                    ; $72CD: $5E
    ld d, d                                       ; $72CE: $52
    jr nz, jr_018_72D1                            ; $72CF: $20 $00

jr_018_72D1:
    ld e, h                                       ; $72D1: $5C
    ld [bc], a                                    ; $72D2: $02
    inc bc                                        ; $72D3: $03
    dec d                                         ; $72D4: $15
    rrca                                          ; $72D5: $0F
    ld l, [hl]                                    ; $72D6: $6E
    ld d, d                                       ; $72D7: $52
    jr nz, jr_018_72E9                            ; $72D8: $20 $0F

    ld e, [hl]                                    ; $72DA: $5E

jr_018_72DB:
    ld d, d                                       ; $72DB: $52
    jr nz, jr_018_72DE                            ; $72DC: $20 $00

jr_018_72DE:
    ld e, h                                       ; $72DE: $5C
    inc bc                                        ; $72DF: $03
    ld [bc], a                                    ; $72E0: $02
    ld b, d                                       ; $72E1: $42
    dec d                                         ; $72E2: $15

jr_018_72E3:
    ld c, $05                                     ; $72E3: $0E $05
    ld c, e                                       ; $72E5: $4B
    ld b, b                                       ; $72E6: $40
    ld c, $35                                     ; $72E7: $0E $35

jr_018_72E9:
    ld c, e                                       ; $72E9: $4B
    db $10                                        ; $72EA: $10
    ld c, $05                                     ; $72EB: $0E $05
    ld c, e                                       ; $72ED: $4B
    jr jr_018_72FE                                ; $72EE: $18 $0E

    add l                                         ; $72F0: $85
    ld c, e                                       ; $72F1: $4B
    nop                                           ; $72F2: $00
    nop                                           ; $72F3: $00
    ld e, h                                       ; $72F4: $5C
    nop                                           ; $72F5: $00
    inc bc                                        ; $72F6: $03
    ld e, h                                       ; $72F7: $5C
    ld [bc], a                                    ; $72F8: $02
    inc bc                                        ; $72F9: $03
    inc d                                         ; $72FA: $14
    ld c, $C1                                     ; $72FB: $0E $C1
    ld c, e                                       ; $72FD: $4B

jr_018_72FE:
    ld h, d                                       ; $72FE: $62
    ld bc, $0E15                                  ; $72FF: $01 $15 $0E
    dec d                                         ; $7302: $15
    ld c, e                                       ; $7303: $4B
    jr jr_018_7314                                ; $7304: $18 $0E

    dec h                                         ; $7306: $25
    ld c, e                                       ; $7307: $4B
    db $10                                        ; $7308: $10
    ld c, $15                                     ; $7309: $0E $15
    ld c, e                                       ; $730B: $4B
    ld b, b                                       ; $730C: $40
    nop                                           ; $730D: $00
    add hl, de                                    ; $730E: $19
    ld b, d                                       ; $730F: $42
    dec b                                         ; $7310: $05
    inc b                                         ; $7311: $04
    dec b                                         ; $7312: $05
    ld h, h                                       ; $7313: $64

jr_018_7314:
    rrca                                          ; $7314: $0F
    rrca                                          ; $7315: $0F
    cp $D1                                        ; $7316: $FE $D1
    db $10                                        ; $7318: $10
    ld [hl+], a                                   ; $7319: $22
    cp d                                          ; $731A: $BA

jr_018_731B:
    ld b, b                                       ; $731B: $40
    ld [hl+], a                                   ; $731C: $22
    jp nz, $0140                                  ; $731D: $C2 $40 $01

    dec c                                         ; $7320: $0D
    rrca                                          ; $7321: $0F
    ld b, l                                       ; $7322: $45
    cpl                                           ; $7323: $2F
    and h                                         ; $7324: $A4
    ld b, [hl]                                    ; $7325: $46
    ld [bc], a                                    ; $7326: $02
    nop                                           ; $7327: $00
    ld sp, $2708                                  ; $7328: $31 $08 $27
    ld b, l                                       ; $732B: $45

jr_018_732C:
    jr jr_018_72C6                                ; $732C: $18 $98

    ld [hl], h                                    ; $732E: $74
    ld [bc], a                                    ; $732F: $02
    nop                                           ; $7330: $00
    ld sp, $1123                                  ; $7331: $31 $23 $11

jr_018_7334:
    ld b, l                                       ; $7334: $45
    jr jr_018_733A                                ; $7335: $18 $03

    ld [hl], l                                    ; $7337: $75
    ld [bc], a                                    ; $7338: $02
    nop                                           ; $7339: $00

jr_018_733A:
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    jr nc, jr_018_732C                            ; $733D: $30 $ED

    ld d, [hl]                                    ; $733F: $56
    inc c                                         ; $7340: $0C
    ld b, a                                       ; $7341: $47
    ld [$5B18], sp                                ; $7342: $08 $18 $5B
    ld [hl], e                                    ; $7345: $73
    jr jr_018_73B1                                ; $7346: $18 $69

    ld [hl], e                                    ; $7348: $73
    jr jr_018_73CA                                ; $7349: $18 $7F

    ld [hl], e                                    ; $734B: $73
    jr jr_018_72DB                                ; $734C: $18 $8D

    ld [hl], e                                    ; $734E: $73
    jr @-$4E                                      ; $734F: $18 $B0

    ld [hl], e                                    ; $7351: $73
    jr jr_018_731B                                ; $7352: $18 $C7

    ld [hl], e                                    ; $7354: $73
    jr jr_018_7334                                ; $7355: $18 $DD

    ld [hl], e                                    ; $7357: $73
    jr @-$0B                                      ; $7358: $18 $F3

    ld [hl], e                                    ; $735A: $73
    dec h                                         ; $735B: $25
    ld a, [bc]                                    ; $735C: $0A
    ld l, h                                       ; $735D: $6C
    add hl, de                                    ; $735E: $19
    ld c, h                                       ; $735F: $4C
    inc hl                                        ; $7360: $23
    ld b, b                                       ; $7361: $40
    ld l, $09                                     ; $7362: $2E $09
    ld b, b                                       ; $7364: $40
    inc a                                         ; $7365: $3C
    ld d, l                                       ; $7366: $55
    nop                                           ; $7367: $00
    daa                                           ; $7368: $27
    dec h                                         ; $7369: $25
    ld a, [bc]                                    ; $736A: $0A
    ld l, h                                       ; $736B: $6C
    add hl, de                                    ; $736C: $19
    ld c, h                                       ; $736D: $4C
    inc hl                                        ; $736E: $23
    ld b, b                                       ; $736F: $40
    ld l, $09                                     ; $7370: $2E $09
    inc h                                         ; $7372: $24
    add hl, sp                                    ; $7373: $39
    ld c, [hl]                                    ; $7374: $4E
    nop                                           ; $7375: $00
    dec hl                                        ; $7376: $2B
    dec hl                                        ; $7377: $2B
    ld l, $09                                     ; $7378: $2E $09
    dec [hl]                                      ; $737A: $35
    dec hl                                        ; $737B: $2B
    ld b, c                                       ; $737C: $41
    ld bc, $2527                                  ; $737D: $01 $27 $25
    ld a, [bc]                                    ; $7380: $0A
    ld l, h                                       ; $7381: $6C
    add hl, de                                    ; $7382: $19
    ld c, h                                       ; $7383: $4C
    inc hl                                        ; $7384: $23
    ld b, b                                       ; $7385: $40
    ld l, $09                                     ; $7386: $2E $09
    inc [hl]                                      ; $7388: $34
    jr c, jr_018_73DD                             ; $7389: $38 $52

    nop                                           ; $738B: $00
    daa                                           ; $738C: $27
    dec h                                         ; $738D: $25
    ld a, [bc]                                    ; $738E: $0A
    ld l, h                                       ; $738F: $6C
    add hl, de                                    ; $7390: $19
    ld c, h                                       ; $7391: $4C
    inc hl                                        ; $7392: $23
    ld b, b                                       ; $7393: $40
    ld l, $09                                     ; $7394: $2E $09
    dec [hl]                                      ; $7396: $35
    dec hl                                        ; $7397: $2B
    ld b, c                                       ; $7398: $41
    nop                                           ; $7399: $00
    dec hl                                        ; $739A: $2B
    ld l, $09                                     ; $739B: $2E $09
    inc [hl]                                      ; $739D: $34
    jr c, @+$54                                   ; $739E: $38 $52

    ld bc, $2E2B                                  ; $73A0: $01 $2B $2E
    add hl, bc                                    ; $73A3: $09
    inc h                                         ; $73A4: $24
    add hl, sp                                    ; $73A5: $39
    ld c, [hl]                                    ; $73A6: $4E
    ld bc, $2E2B                                  ; $73A7: $01 $2B $2E
    add hl, bc                                    ; $73AA: $09
    ld b, b                                       ; $73AB: $40
    inc a                                         ; $73AC: $3C
    ld d, l                                       ; $73AD: $55
    ld bc, $2527                                  ; $73AE: $01 $27 $25

jr_018_73B1:
    ld a, [bc]                                    ; $73B1: $0A
    ld l, h                                       ; $73B2: $6C
    add hl, de                                    ; $73B3: $19
    ld c, h                                       ; $73B4: $4C
    inc hl                                        ; $73B5: $23
    ld b, b                                       ; $73B6: $40
    ld l, $09                                     ; $73B7: $2E $09
    inc h                                         ; $73B9: $24
    add hl, sp                                    ; $73BA: $39
    ld c, [hl]                                    ; $73BB: $4E
    nop                                           ; $73BC: $00
    dec hl                                        ; $73BD: $2B
    dec hl                                        ; $73BE: $2B
    dec hl                                        ; $73BF: $2B
    ld l, $09                                     ; $73C0: $2E $09
    ld b, b                                       ; $73C2: $40
    inc a                                         ; $73C3: $3C
    ld d, l                                       ; $73C4: $55
    ld bc, $2527                                  ; $73C5: $01 $27 $25
    ld a, [bc]                                    ; $73C8: $0A
    ld l, h                                       ; $73C9: $6C

jr_018_73CA:
    add hl, de                                    ; $73CA: $19
    ld c, h                                       ; $73CB: $4C
    inc hl                                        ; $73CC: $23
    ld b, b                                       ; $73CD: $40
    ld l, $09                                     ; $73CE: $2E $09
    inc [hl]                                      ; $73D0: $34
    jr c, @+$54                                   ; $73D1: $38 $52

    nop                                           ; $73D3: $00
    dec hl                                        ; $73D4: $2B
    ld l, $09                                     ; $73D5: $2E $09
    dec [hl]                                      ; $73D7: $35
    dec hl                                        ; $73D8: $2B
    ld b, c                                       ; $73D9: $41
    ld bc, $272B                                  ; $73DA: $01 $2B $27

jr_018_73DD:
    dec h                                         ; $73DD: $25
    ld a, [bc]                                    ; $73DE: $0A
    ld l, h                                       ; $73DF: $6C
    add hl, de                                    ; $73E0: $19
    ld c, h                                       ; $73E1: $4C
    inc hl                                        ; $73E2: $23
    ld b, b                                       ; $73E3: $40
    ld l, $09                                     ; $73E4: $2E $09
    ld b, b                                       ; $73E6: $40
    inc a                                         ; $73E7: $3C
    ld d, l                                       ; $73E8: $55
    nop                                           ; $73E9: $00
    dec hl                                        ; $73EA: $2B
    dec hl                                        ; $73EB: $2B
    ld l, $09                                     ; $73EC: $2E $09
    ld b, b                                       ; $73EE: $40
    dec hl                                        ; $73EF: $2B
    ld b, c                                       ; $73F0: $41
    ld bc, $2527                                  ; $73F1: $01 $27 $25
    ld a, [bc]                                    ; $73F4: $0A
    ld l, h                                       ; $73F5: $6C
    add hl, de                                    ; $73F6: $19
    ld c, h                                       ; $73F7: $4C
    inc hl                                        ; $73F8: $23
    ld b, b                                       ; $73F9: $40
    ld l, $09                                     ; $73FA: $2E $09
    dec [hl]                                      ; $73FC: $35

jr_018_73FD:
    dec hl                                        ; $73FD: $2B
    ld b, c                                       ; $73FE: $41
    nop                                           ; $73FF: $00
    dec hl                                        ; $7400: $2B
    ld l, $09                                     ; $7401: $2E $09
    inc [hl]                                      ; $7403: $34
    jr c, @+$54                                   ; $7404: $38 $52

    ld bc, $2E2B                                  ; $7406: $01 $2B $2E
    add hl, bc                                    ; $7409: $09
    inc h                                         ; $740A: $24
    add hl, sp                                    ; $740B: $39
    ld c, [hl]                                    ; $740C: $4E
    ld bc, $9327                                  ; $740D: $01 $27 $93
    ld h, l                                       ; $7410: $65
    pop hl                                        ; $7411: $E1
    ld c, a                                       ; $7412: $4F
    ld c, a                                       ; $7413: $4F
    ld h, h                                       ; $7414: $64
    reti                                          ; $7415: $D9


    ld d, h                                       ; $7416: $54
    ld h, [hl]                                    ; $7417: $66
    ret nz                                        ; $7418: $C0

    ld e, h                                       ; $7419: $5C
    ld hl, $0005                                  ; $741A: $21 $05 $00
    ld b, c                                       ; $741D: $41
    ld e, e                                       ; $741E: $5B
    dec b                                         ; $741F: $05
    dec b                                         ; $7420: $05
    ld [hl], e                                    ; $7421: $73
    ret nc                                        ; $7422: $D0

    nop                                           ; $7423: $00
    jr nz, @-$1F                                  ; $7424: $20 $DF

    ld e, e                                       ; $7426: $5B
    ld [hl+], a                                   ; $7427: $22
    dec b                                         ; $7428: $05
    ld b, b                                       ; $7429: $40
    dec bc                                        ; $742A: $0B
    nop                                           ; $742B: $00
    dec b                                         ; $742C: $05
    jr nz, jr_018_73FD                            ; $742D: $20 $CE

    ld h, e                                       ; $742F: $63
    ld a, [bc]                                    ; $7430: $0A
    add hl, bc                                    ; $7431: $09
    ret nc                                        ; $7432: $D0

    ret nc                                        ; $7433: $D0

    nop                                           ; $7434: $00
    ld [hl+], a                                   ; $7435: $22
    jp c, $1940                                   ; $7436: $DA $40 $19

    jp hl                                         ; $7439: $E9


    ld h, a                                       ; $743A: $67
    dec b                                         ; $743B: $05
    rra                                           ; $743C: $1F
    adc $63                                       ; $743D: $CE $63
    ld a, [bc]                                    ; $743F: $0A
    add hl, bc                                    ; $7440: $09
    ret nc                                        ; $7441: $D0

    ret nc                                        ; $7442: $D0

    nop                                           ; $7443: $00
    ld [hl+], a                                   ; $7444: $22
    jp c, $1940                                   ; $7445: $DA $40 $19

    jp hl                                         ; $7448: $E9


    ld h, a                                       ; $7449: $67
    dec bc                                        ; $744A: $0B
    jr nz, @+$0D                                  ; $744B: $20 $0B

    rra                                           ; $744D: $1F
    ld l, e                                       ; $744E: $6B
    inc [hl]                                      ; $744F: $34
    dec c                                         ; $7450: $0D
    jr nc, jr_018_74BD                            ; $7451: $30 $6A

    nop                                           ; $7453: $00
    add b                                         ; $7454: $80
    nop                                           ; $7455: $00
    ld sp, $0F18                                  ; $7456: $31 $18 $0F
    ld [hl], h                                    ; $7459: $74
    ld [hl+], a                                   ; $745A: $22
    adc $40                                       ; $745B: $CE $40
    nop                                           ; $745D: $00
    add d                                         ; $745E: $82
    sub h                                         ; $745F: $94
    ld b, d                                       ; $7460: $42
    dec b                                         ; $7461: $05
    inc b                                         ; $7462: $04
    dec b                                         ; $7463: $05
    ld h, h                                       ; $7464: $64
    inc d                                         ; $7465: $14
    rrca                                          ; $7466: $0F
    inc bc                                        ; $7467: $03
    jp nc, $2210                                  ; $7468: $D2 $10 $22

    cp d                                          ; $746B: $BA
    ld b, b                                       ; $746C: $40
    ld [hl+], a                                   ; $746D: $22
    jp nz, $0140                                  ; $746E: $C2 $40 $01

    dec de                                        ; $7471: $1B
    ld c, $45                                     ; $7472: $0E $45
    cpl                                           ; $7474: $2F
    and h                                         ; $7475: $A4
    ld b, [hl]                                    ; $7476: $46
    ld [bc], a                                    ; $7477: $02
    daa                                           ; $7478: $27
    nop                                           ; $7479: $00
    ld e, $07                                     ; $747A: $1E $07
    ld b, l                                       ; $747C: $45
    jr jr_018_7482                                ; $747D: $18 $03

    ld [hl], l                                    ; $747F: $75
    and h                                         ; $7480: $A4
    ld c, l                                       ; $7481: $4D

jr_018_7482:
    and e                                         ; $7482: $A3
    ld bc, $2300                                  ; $7483: $01 $00 $23
    rra                                           ; $7486: $1F
    pop de                                        ; $7487: $D1
    and h                                         ; $7488: $A4

jr_018_7489:
    ld c, l                                       ; $7489: $4D
    and e                                         ; $748A: $A3
    ld [bc], a                                    ; $748B: $02
    nop                                           ; $748C: $00
    dec c                                         ; $748D: $0D
    ld l, $D2                                     ; $748E: $2E $D2
    and h                                         ; $7490: $A4

jr_018_7491:
    ld c, l                                       ; $7491: $4D
    and e                                         ; $7492: $A3
    inc b                                         ; $7493: $04
    nop                                           ; $7494: $00
    ld [$D533], sp                                ; $7495: $08 $33 $D5
    sub e                                         ; $7498: $93
    ld h, l                                       ; $7499: $65
    ldh a, [rVBK]                                 ; $749A: $F0 $4F
    ld c, a                                       ; $749C: $4F
    ld h, h                                       ; $749D: $64
    rst $20                                       ; $749E: $E7
    ld d, h                                       ; $749F: $54
    ld l, c                                       ; $74A0: $69
    ldh a, [rHDMA4]                               ; $74A1: $F0 $54
    ld h, [hl]                                    ; $74A3: $66
    ret nz                                        ; $74A4: $C0

    ld e, h                                       ; $74A5: $5C
    ld hl, $0005                                  ; $74A6: $21 $05 $00
    ld b, c                                       ; $74A9: $41
    ld e, e                                       ; $74AA: $5B
    dec b                                         ; $74AB: $05
    dec b                                         ; $74AC: $05
    rst $38                                       ; $74AD: $FF
    ret nc                                        ; $74AE: $D0

    nop                                           ; $74AF: $00
    jr nz, jr_018_7491                            ; $74B0: $20 $DF

    ld e, e                                       ; $74B2: $5B
    ld [hl+], a                                   ; $74B3: $22
    dec b                                         ; $74B4: $05
    ld b, b                                       ; $74B5: $40
    dec bc                                        ; $74B6: $0B
    nop                                           ; $74B7: $00
    dec b                                         ; $74B8: $05
    jr nz, jr_018_7489                            ; $74B9: $20 $CE

    ld h, e                                       ; $74BB: $63
    ld a, [bc]                                    ; $74BC: $0A

jr_018_74BD:
    add hl, bc                                    ; $74BD: $09
    call z, $00D1                                 ; $74BE: $CC $D1 $00
    ld [hl+], a                                   ; $74C1: $22
    jp c, $1840                                   ; $74C2: $DA $40 $18

    jr c, @+$75                                   ; $74C5: $38 $73

    dec b                                         ; $74C7: $05
    rra                                           ; $74C8: $1F
    adc $63                                       ; $74C9: $CE $63
    ld a, [bc]                                    ; $74CB: $0A
    add hl, bc                                    ; $74CC: $09
    call z, $00D1                                 ; $74CD: $CC $D1 $00
    ld [hl+], a                                   ; $74D0: $22
    jp c, $1840                                   ; $74D1: $DA $40 $18

    jr c, jr_018_7549                             ; $74D4: $38 $73

    dec bc                                        ; $74D6: $0B
    nop                                           ; $74D7: $00
    dec bc                                        ; $74D8: $0B
    jr nz, @+$0D                                  ; $74D9: $20 $0B

    rra                                           ; $74DB: $1F
    ld l, e                                       ; $74DC: $6B
    inc [hl]                                      ; $74DD: $34
    dec c                                         ; $74DE: $0D
    jr nc, jr_018_754B                            ; $74DF: $30 $6A

    nop                                           ; $74E1: $00
    add b                                         ; $74E2: $80
    nop                                           ; $74E3: $00
    ld sp, $9818                                  ; $74E4: $31 $18 $98
    ld [hl], h                                    ; $74E7: $74
    ld [hl+], a                                   ; $74E8: $22
    adc $40                                       ; $74E9: $CE $40
    nop                                           ; $74EB: $00
    rra                                           ; $74EC: $1F
    ld c, $82                                     ; $74ED: $0E $82
    sub h                                         ; $74EF: $94
    ld b, d                                       ; $74F0: $42

jr_018_74F1:
    ld [bc], a                                    ; $74F1: $02
    nop                                           ; $74F2: $00
    daa                                           ; $74F3: $27
    rlca                                          ; $74F4: $07
    ld e, $45                                     ; $74F5: $1E $45
    jr jr_018_7491                                ; $74F7: $18 $98

jr_018_74F9:
    ld [hl], h                                    ; $74F9: $74
    ld [bc], a                                    ; $74FA: $02
    jr jr_018_7502                                ; $74FB: $18 $05

    inc de                                        ; $74FD: $13
    nop                                           ; $74FE: $00
    ld b, l                                       ; $74FF: $45
    jr jr_018_756D                                ; $7500: $18 $6B

jr_018_7502:
    ld [hl], l                                    ; $7502: $75
    sub e                                         ; $7503: $93
    ld h, l                                       ; $7504: $65
    rst $38                                       ; $7505: $FF
    ld c, a                                       ; $7506: $4F
    ld c, a                                       ; $7507: $4F
    ld h, h                                       ; $7508: $64
    db $FD                                        ; $7509: $FD
    ld d, h                                       ; $750A: $54
    ld h, [hl]                                    ; $750B: $66
    ret nz                                        ; $750C: $C0

    ld e, h                                       ; $750D: $5C
    ld hl, $0005                                  ; $750E: $21 $05 $00
    ld b, c                                       ; $7511: $41
    ld e, e                                       ; $7512: $5B
    dec b                                         ; $7513: $05
    dec b                                         ; $7514: $05
    rst $38                                       ; $7515: $FF
    ret nc                                        ; $7516: $D0

    nop                                           ; $7517: $00
    jr nz, jr_018_74F9                            ; $7518: $20 $DF

    ld e, e                                       ; $751A: $5B
    ld [hl+], a                                   ; $751B: $22
    dec b                                         ; $751C: $05
    ld b, b                                       ; $751D: $40
    dec bc                                        ; $751E: $0B
    nop                                           ; $751F: $00
    dec b                                         ; $7520: $05
    jr nz, jr_018_74F1                            ; $7521: $20 $CE

    ld h, e                                       ; $7523: $63
    ld a, [bc]                                    ; $7524: $0A
    add hl, bc                                    ; $7525: $09
    call z, $00D1                                 ; $7526: $CC $D1 $00
    ld [hl+], a                                   ; $7529: $22
    jp c, $1840                                   ; $752A: $DA $40 $18

    jr c, @+$75                                   ; $752D: $38 $73

    dec b                                         ; $752F: $05
    rra                                           ; $7530: $1F
    adc $63                                       ; $7531: $CE $63
    ld a, [bc]                                    ; $7533: $0A
    add hl, bc                                    ; $7534: $09
    call z, $00D1                                 ; $7535: $CC $D1 $00
    ld [hl+], a                                   ; $7538: $22
    jp c, $1840                                   ; $7539: $DA $40 $18

    jr c, jr_018_75B1                             ; $753C: $38 $73

    dec bc                                        ; $753E: $0B
    nop                                           ; $753F: $00
    dec bc                                        ; $7540: $0B
    jr nz, @+$0D                                  ; $7541: $20 $0B

    rra                                           ; $7543: $1F
    ld l, e                                       ; $7544: $6B
    inc [hl]                                      ; $7545: $34
    dec c                                         ; $7546: $0D
    jr nc, jr_018_75B3                            ; $7547: $30 $6A

jr_018_7549:
    nop                                           ; $7549: $00
    add b                                         ; $754A: $80

jr_018_754B:
    nop                                           ; $754B: $00

jr_018_754C:
    ld sp, $0318                                  ; $754C: $31 $18 $03
    ld [hl], l                                    ; $754F: $75
    ld [hl+], a                                   ; $7550: $22
    adc $40                                       ; $7551: $CE $40
    nop                                           ; $7553: $00
    rra                                           ; $7554: $1F
    ld c, $82                                     ; $7555: $0E $82
    sub h                                         ; $7557: $94
    ld b, d                                       ; $7558: $42

jr_018_7559:
    ld [bc], a                                    ; $7559: $02
    dec b                                         ; $755A: $05
    jr jr_018_755D                                ; $755B: $18 $00

jr_018_755D:
    inc de                                        ; $755D: $13
    ld b, l                                       ; $755E: $45
    jr @+$05                                      ; $755F: $18 $03

jr_018_7561:
    ld [hl], l                                    ; $7561: $75
    ld [bc], a                                    ; $7562: $02
    ld b, $1F                                     ; $7563: $06 $1F
    daa                                           ; $7565: $27
    nop                                           ; $7566: $00
    ld b, l                                       ; $7567: $45
    jr jr_018_754C                                ; $7568: $18 $E2

    ld [hl], l                                    ; $756A: $75
    sub e                                         ; $756B: $93
    ld h, l                                       ; $756C: $65

jr_018_756D:
    ld c, $50                                     ; $756D: $0E $50
    ld c, a                                       ; $756F: $4F
    ld h, h                                       ; $7570: $64
    ld b, $55                                     ; $7571: $06 $55
    ld h, [hl]                                    ; $7573: $66
    ret nz                                        ; $7574: $C0

    ld e, h                                       ; $7575: $5C
    ld hl, $0005                                  ; $7576: $21 $05 $00
    ld b, c                                       ; $7579: $41
    ld e, e                                       ; $757A: $5B
    dec b                                         ; $757B: $05
    dec b                                         ; $757C: $05
    rst $38                                       ; $757D: $FF
    ret nc                                        ; $757E: $D0

    nop                                           ; $757F: $00
    jr nz, jr_018_7561                            ; $7580: $20 $DF

    ld e, e                                       ; $7582: $5B
    ld [hl+], a                                   ; $7583: $22
    dec b                                         ; $7584: $05
    ld b, b                                       ; $7585: $40
    dec bc                                        ; $7586: $0B
    nop                                           ; $7587: $00
    dec b                                         ; $7588: $05
    jr nz, jr_018_7559                            ; $7589: $20 $CE

    ld h, e                                       ; $758B: $63
    ld a, [bc]                                    ; $758C: $0A
    add hl, bc                                    ; $758D: $09
    call z, $00D1                                 ; $758E: $CC $D1 $00
    ld [hl+], a                                   ; $7591: $22
    jp c, $1840                                   ; $7592: $DA $40 $18

    jr c, @+$75                                   ; $7595: $38 $73

    dec b                                         ; $7597: $05
    rra                                           ; $7598: $1F
    adc $63                                       ; $7599: $CE $63
    ld a, [bc]                                    ; $759B: $0A
    add hl, bc                                    ; $759C: $09
    call z, $00D1                                 ; $759D: $CC $D1 $00
    ld [hl+], a                                   ; $75A0: $22
    jp c, $1840                                   ; $75A1: $DA $40 $18

    jr c, @+$75                                   ; $75A4: $38 $73

    dec bc                                        ; $75A6: $0B
    nop                                           ; $75A7: $00
    dec bc                                        ; $75A8: $0B
    jr nz, @+$0D                                  ; $75A9: $20 $0B

    rra                                           ; $75AB: $1F
    ld l, e                                       ; $75AC: $6B
    inc [hl]                                      ; $75AD: $34
    dec c                                         ; $75AE: $0D
    jr nc, jr_018_761B                            ; $75AF: $30 $6A

jr_018_75B1:
    nop                                           ; $75B1: $00
    add b                                         ; $75B2: $80

jr_018_75B3:
    nop                                           ; $75B3: $00
    ld sp, $6B18                                  ; $75B4: $31 $18 $6B
    ld [hl], l                                    ; $75B7: $75
    ld [hl+], a                                   ; $75B8: $22
    adc $40                                       ; $75B9: $CE $40
    nop                                           ; $75BB: $00
    rra                                           ; $75BC: $1F
    ld c, $82                                     ; $75BD: $0E $82
    sub h                                         ; $75BF: $94
    ld b, d                                       ; $75C0: $42
    ld [bc], a                                    ; $75C1: $02
    rra                                           ; $75C2: $1F
    ld b, $00                                     ; $75C3: $06 $00
    daa                                           ; $75C5: $27
    ld b, l                                       ; $75C6: $45
    jr @+$6D                                      ; $75C7: $18 $6B

    ld [hl], l                                    ; $75C9: $75
    and h                                         ; $75CA: $A4
    ld c, e                                       ; $75CB: $4B
    and e                                         ; $75CC: $A3
    add b                                         ; $75CD: $80
    ld [bc], a                                    ; $75CE: $02
    ld b, $80                                     ; $75CF: $06 $80
    db $D3                                        ; $75D1: $D3
    and h                                         ; $75D2: $A4

jr_018_75D3:
    ld c, h                                       ; $75D3: $4C
    and e                                         ; $75D4: $A3
    ld bc, $1802                                  ; $75D5: $01 $02 $18
    jp c, $A4D5                                   ; $75D8: $DA $D5 $A4

jr_018_75DB:
    ld c, h                                       ; $75DB: $4C
    and e                                         ; $75DC: $A3
    ld [bc], a                                    ; $75DD: $02
    nop                                           ; $75DE: $00
    ld [de], a                                    ; $75DF: $12
    xor b                                         ; $75E0: $A8
    sub $93                                       ; $75E1: $D6 $93
    ld h, l                                       ; $75E3: $65
    dec e                                         ; $75E4: $1D
    ld d, b                                       ; $75E5: $50
    ld c, a                                       ; $75E6: $4F
    ld h, h                                       ; $75E7: $64
    rrca                                          ; $75E8: $0F
    ld d, l                                       ; $75E9: $55
    ld l, c                                       ; $75EA: $69
    inc d                                         ; $75EB: $14
    ld d, l                                       ; $75EC: $55
    ld h, [hl]                                    ; $75ED: $66
    ret nz                                        ; $75EE: $C0

    ld e, h                                       ; $75EF: $5C
    ld hl, $0005                                  ; $75F0: $21 $05 $00
    ld b, c                                       ; $75F3: $41
    ld e, e                                       ; $75F4: $5B
    dec b                                         ; $75F5: $05
    dec b                                         ; $75F6: $05
    rst $38                                       ; $75F7: $FF
    ret nc                                        ; $75F8: $D0

    nop                                           ; $75F9: $00
    jr nz, jr_018_75DB                            ; $75FA: $20 $DF

    ld e, e                                       ; $75FC: $5B
    ld [hl+], a                                   ; $75FD: $22
    dec b                                         ; $75FE: $05
    ld b, b                                       ; $75FF: $40
    dec bc                                        ; $7600: $0B
    nop                                           ; $7601: $00
    dec b                                         ; $7602: $05
    jr nz, jr_018_75D3                            ; $7603: $20 $CE

    ld h, e                                       ; $7605: $63
    ld a, [bc]                                    ; $7606: $0A
    add hl, bc                                    ; $7607: $09
    call z, $00D1                                 ; $7608: $CC $D1 $00
    ld [hl+], a                                   ; $760B: $22
    jp c, $1840                                   ; $760C: $DA $40 $18

    jr c, jr_018_7684                             ; $760F: $38 $73

    dec b                                         ; $7611: $05
    rra                                           ; $7612: $1F
    adc $63                                       ; $7613: $CE $63
    ld a, [bc]                                    ; $7615: $0A
    add hl, bc                                    ; $7616: $09
    call z, $00D1                                 ; $7617: $CC $D1 $00
    ld [hl+], a                                   ; $761A: $22

jr_018_761B:
    jp c, $1840                                   ; $761B: $DA $40 $18

    jr c, jr_018_7693                             ; $761E: $38 $73

    dec bc                                        ; $7620: $0B
    nop                                           ; $7621: $00
    dec bc                                        ; $7622: $0B
    jr nz, @+$0D                                  ; $7623: $20 $0B

jr_018_7625:
    rra                                           ; $7625: $1F
    ld l, e                                       ; $7626: $6B
    inc [hl]                                      ; $7627: $34
    dec c                                         ; $7628: $0D
    jr nc, jr_018_7695                            ; $7629: $30 $6A

    nop                                           ; $762B: $00
    add b                                         ; $762C: $80
    nop                                           ; $762D: $00
    ld sp, $E218                                  ; $762E: $31 $18 $E2
    ld [hl], l                                    ; $7631: $75
    ld [hl+], a                                   ; $7632: $22
    adc $40                                       ; $7633: $CE $40
    nop                                           ; $7635: $00
    add d                                         ; $7636: $82
    rra                                           ; $7637: $1F
    ld c, $94                                     ; $7638: $0E $94
    ld b, d                                       ; $763A: $42
    ld [bc], a                                    ; $763B: $02
    dec e                                         ; $763C: $1D
    dec sp                                        ; $763D: $3B
    rrca                                          ; $763E: $0F
    nop                                           ; $763F: $00
    ld b, l                                       ; $7640: $45
    jr jr_018_7625                                ; $7641: $18 $E2

    ld [hl], l                                    ; $7643: $75
    sub e                                         ; $7644: $93
    ld h, l                                       ; $7645: $65
    inc l                                         ; $7646: $2C
    ld d, b                                       ; $7647: $50
    ld c, a                                       ; $7648: $4F
    ld h, h                                       ; $7649: $64

jr_018_764A:
    dec h                                         ; $764A: $25
    ld d, l                                       ; $764B: $55
    ld h, [hl]                                    ; $764C: $66
    ret nz                                        ; $764D: $C0

    ld e, h                                       ; $764E: $5C
    ld hl, $0005                                  ; $764F: $21 $05 $00
    ld b, c                                       ; $7652: $41
    ld e, e                                       ; $7653: $5B
    dec b                                         ; $7654: $05
    dec b                                         ; $7655: $05
    cp c                                          ; $7656: $B9
    ret nc                                        ; $7657: $D0

    nop                                           ; $7658: $00
    jr nz, jr_018_764A                            ; $7659: $20 $EF

    ld e, e                                       ; $765B: $5B
    ld [hl+], a                                   ; $765C: $22
    dec b                                         ; $765D: $05
    ld b, b                                       ; $765E: $40
    dec bc                                        ; $765F: $0B
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    add d                                         ; $7662: $82
    rra                                           ; $7663: $1F
    ld c, $94                                     ; $7664: $0E $94
    ld b, d                                       ; $7666: $42
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

jr_018_7684:
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

jr_018_7693:
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00

jr_018_7695:
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
