SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    inc de                                        ; $4002: $13
    inc bc                                        ; $4003: $03
    nop                                           ; $4004: $00
    ld hl, sp+$12                                 ; $4005: $F8 $12
    inc bc                                        ; $4007: $03
    ld hl, sp+$00                                 ; $4008: $F8 $00
    add hl, bc                                    ; $400A: $09
    rlca                                          ; $400B: $07
    ld hl, sp-$08                                 ; $400C: $F8 $F8
    ld [$F007], sp                                ; $400E: $08 $07 $F0
    nop                                           ; $4011: $00
    ld bc, $F007                                  ; $4012: $01 $07 $F0
    ld hl, sp+$00                                 ; $4015: $F8 $00
    rlca                                          ; $4017: $07
    add b                                         ; $4018: $80
    nop                                           ; $4019: $00
    ld hl, sp+$13                                 ; $401A: $F8 $13
    inc hl                                        ; $401C: $23
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    ld [de], a                                    ; $401F: $12
    inc hl                                        ; $4020: $23
    ld hl, sp-$08                                 ; $4021: $F8 $F8
    add hl, bc                                    ; $4023: $09
    daa                                           ; $4024: $27
    ld hl, sp+$00                                 ; $4025: $F8 $00
    ld [$F027], sp                                ; $4027: $08 $27 $F0
    ld hl, sp+$01                                 ; $402A: $F8 $01
    daa                                           ; $402C: $27
    ldh a, [rP1]                                  ; $402D: $F0 $00
    nop                                           ; $402F: $00
    daa                                           ; $4030: $27
    add b                                         ; $4031: $80
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    rla                                           ; $4034: $17
    inc bc                                        ; $4035: $03
    nop                                           ; $4036: $00
    ld hl, sp+$16                                 ; $4037: $F8 $16
    inc bc                                        ; $4039: $03
    ld hl, sp+$00                                 ; $403A: $F8 $00
    dec c                                         ; $403C: $0D
    rlca                                          ; $403D: $07
    ld hl, sp-$08                                 ; $403E: $F8 $F8
    inc c                                         ; $4040: $0C
    rlca                                          ; $4041: $07
    ldh a, [rP1]                                  ; $4042: $F0 $00
    rlca                                          ; $4044: $07
    rlca                                          ; $4045: $07
    ldh a, [$F8]                                  ; $4046: $F0 $F8
    ld b, $07                                     ; $4048: $06 $07
    add b                                         ; $404A: $80
    nop                                           ; $404B: $00
    ld hl, sp+$17                                 ; $404C: $F8 $17
    inc hl                                        ; $404E: $23
    nop                                           ; $404F: $00
    nop                                           ; $4050: $00
    ld d, $23                                     ; $4051: $16 $23
    ld hl, sp-$08                                 ; $4053: $F8 $F8
    dec c                                         ; $4055: $0D
    daa                                           ; $4056: $27
    ld hl, sp+$00                                 ; $4057: $F8 $00
    inc c                                         ; $4059: $0C
    daa                                           ; $405A: $27
    ldh a, [$F8]                                  ; $405B: $F0 $F8
    rlca                                          ; $405D: $07
    daa                                           ; $405E: $27
    ldh a, [rP1]                                  ; $405F: $F0 $00
    ld b, $27                                     ; $4061: $06 $27
    add b                                         ; $4063: $80
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    add hl, de                                    ; $4066: $19
    inc bc                                        ; $4067: $03
    nop                                           ; $4068: $00
    ld hl, sp+$18                                 ; $4069: $F8 $18
    inc bc                                        ; $406B: $03
    ld hl, sp+$00                                 ; $406C: $F8 $00
    rrca                                          ; $406E: $0F
    rlca                                          ; $406F: $07
    ld hl, sp-$08                                 ; $4070: $F8 $F8
    ld c, $07                                     ; $4072: $0E $07
    pop af                                        ; $4074: $F1
    nop                                           ; $4075: $00
    inc bc                                        ; $4076: $03
    rlca                                          ; $4077: $07
    pop af                                        ; $4078: $F1
    ld hl, sp+$02                                 ; $4079: $F8 $02
    rlca                                          ; $407B: $07
    add b                                         ; $407C: $80
    nop                                           ; $407D: $00
    ld hl, sp+$14                                 ; $407E: $F8 $14
    inc hl                                        ; $4080: $23
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    inc d                                         ; $4083: $14
    inc bc                                        ; $4084: $03
    ld hl, sp+$00                                 ; $4085: $F8 $00
    ld a, [bc]                                    ; $4087: $0A
    daa                                           ; $4088: $27
    ld hl, sp-$08                                 ; $4089: $F8 $F8
    ld a, [bc]                                    ; $408B: $0A
    rlca                                          ; $408C: $07
    ldh a, [rP1]                                  ; $408D: $F0 $00
    inc bc                                        ; $408F: $03
    rlca                                          ; $4090: $07
    ldh a, [$F8]                                  ; $4091: $F0 $F8
    ld [bc], a                                    ; $4093: $02
    rlca                                          ; $4094: $07
    add b                                         ; $4095: $80
    nop                                           ; $4096: $00
    ld hl, sp+$19                                 ; $4097: $F8 $19
    inc hl                                        ; $4099: $23
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    jr jr_010_40C1                                ; $409C: $18 $23

    ld hl, sp-$08                                 ; $409E: $F8 $F8
    rrca                                          ; $40A0: $0F
    daa                                           ; $40A1: $27
    ld hl, sp+$00                                 ; $40A2: $F8 $00
    ld c, $27                                     ; $40A4: $0E $27
    pop af                                        ; $40A6: $F1
    nop                                           ; $40A7: $00
    inc bc                                        ; $40A8: $03
    rlca                                          ; $40A9: $07
    pop af                                        ; $40AA: $F1
    ld hl, sp+$02                                 ; $40AB: $F8 $02
    rlca                                          ; $40AD: $07
    add b                                         ; $40AE: $80
    nop                                           ; $40AF: $00
    nop                                           ; $40B0: $00
    dec de                                        ; $40B1: $1B
    inc bc                                        ; $40B2: $03
    nop                                           ; $40B3: $00
    ld hl, sp+$1A                                 ; $40B4: $F8 $1A
    inc bc                                        ; $40B6: $03
    ld hl, sp+$00                                 ; $40B7: $F8 $00
    ld de, $F807                                  ; $40B9: $11 $07 $F8
    ld hl, sp+$10                                 ; $40BC: $F8 $10
    rlca                                          ; $40BE: $07
    pop af                                        ; $40BF: $F1
    nop                                           ; $40C0: $00

jr_010_40C1:
    dec b                                         ; $40C1: $05
    rlca                                          ; $40C2: $07
    pop af                                        ; $40C3: $F1
    ld hl, sp+$04                                 ; $40C4: $F8 $04
    rlca                                          ; $40C6: $07
    add b                                         ; $40C7: $80
    nop                                           ; $40C8: $00
    nop                                           ; $40C9: $00
    dec d                                         ; $40CA: $15
    inc bc                                        ; $40CB: $03
    nop                                           ; $40CC: $00
    ld hl, sp+$15                                 ; $40CD: $F8 $15
    inc hl                                        ; $40CF: $23
    ld hl, sp+$00                                 ; $40D0: $F8 $00
    dec bc                                        ; $40D2: $0B
    daa                                           ; $40D3: $27
    ld hl, sp-$08                                 ; $40D4: $F8 $F8
    dec bc                                        ; $40D6: $0B
    rlca                                          ; $40D7: $07
    ldh a, [rP1]                                  ; $40D8: $F0 $00
    dec b                                         ; $40DA: $05
    rlca                                          ; $40DB: $07
    ldh a, [$F8]                                  ; $40DC: $F0 $F8
    inc b                                         ; $40DE: $04
    rlca                                          ; $40DF: $07
    add b                                         ; $40E0: $80
    nop                                           ; $40E1: $00
    ld hl, sp+$1B                                 ; $40E2: $F8 $1B
    inc hl                                        ; $40E4: $23
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    ld a, [de]                                    ; $40E7: $1A
    inc hl                                        ; $40E8: $23
    ld hl, sp-$08                                 ; $40E9: $F8 $F8
    ld de, $F827                                  ; $40EB: $11 $27 $F8
    nop                                           ; $40EE: $00
    db $10                                        ; $40EF: $10
    daa                                           ; $40F0: $27
    pop af                                        ; $40F1: $F1
    nop                                           ; $40F2: $00
    dec b                                         ; $40F3: $05
    rlca                                          ; $40F4: $07
    pop af                                        ; $40F5: $F1
    ld hl, sp+$04                                 ; $40F6: $F8 $04
    rlca                                          ; $40F8: $07
    add b                                         ; $40F9: $80
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    dec h                                         ; $40FC: $25
    inc bc                                        ; $40FD: $03
    nop                                           ; $40FE: $00
    ld hl, sp+$24                                 ; $40FF: $F8 $24
    inc bc                                        ; $4101: $03
    ld hl, sp+$00                                 ; $4102: $F8 $00
    rra                                           ; $4104: $1F
    rlca                                          ; $4105: $07
    ld hl, sp-$08                                 ; $4106: $F8 $F8
    ld e, $07                                     ; $4108: $1E $07
    pop af                                        ; $410A: $F1
    nop                                           ; $410B: $00
    dec e                                         ; $410C: $1D
    rlca                                          ; $410D: $07
    pop af                                        ; $410E: $F1
    ld hl, sp+$1C                                 ; $410F: $F8 $1C
    rlca                                          ; $4111: $07
    add b                                         ; $4112: $80
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    daa                                           ; $4115: $27
    inc bc                                        ; $4116: $03
    nop                                           ; $4117: $00
    ld hl, sp+$26                                 ; $4118: $F8 $26
    inc bc                                        ; $411A: $03
    ld hl, sp+$00                                 ; $411B: $F8 $00
    ld hl, $F807                                  ; $411D: $21 $07 $F8
    ld hl, sp+$20                                 ; $4120: $F8 $20
    rlca                                          ; $4122: $07
    ldh a, [rP1]                                  ; $4123: $F0 $00
    dec e                                         ; $4125: $1D
    rlca                                          ; $4126: $07
    ldh a, [$F8]                                  ; $4127: $F0 $F8
    inc e                                         ; $4129: $1C
    rlca                                          ; $412A: $07
    add b                                         ; $412B: $80
    ld hl, sp+$00                                 ; $412C: $F8 $00
    inc hl                                        ; $412E: $23
    rlca                                          ; $412F: $07
    ld hl, sp-$08                                 ; $4130: $F8 $F8
    ld [hl+], a                                   ; $4132: $22
    rlca                                          ; $4133: $07
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    add hl, hl                                    ; $4136: $29
    inc bc                                        ; $4137: $03
    nop                                           ; $4138: $00
    ld hl, sp+$28                                 ; $4139: $F8 $28
    inc bc                                        ; $413B: $03
    pop af                                        ; $413C: $F1
    nop                                           ; $413D: $00
    dec e                                         ; $413E: $1D
    rlca                                          ; $413F: $07
    pop af                                        ; $4140: $F1
    ld hl, sp+$1C                                 ; $4141: $F8 $1C
    rlca                                          ; $4143: $07
    add b                                         ; $4144: $80
    nop                                           ; $4145: $00
    ld hl, sp+$25                                 ; $4146: $F8 $25
    inc hl                                        ; $4148: $23
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    inc h                                         ; $414B: $24
    inc hl                                        ; $414C: $23
    ld hl, sp-$08                                 ; $414D: $F8 $F8
    rra                                           ; $414F: $1F
    daa                                           ; $4150: $27
    ld hl, sp+$00                                 ; $4151: $F8 $00
    ld e, $27                                     ; $4153: $1E $27
    pop af                                        ; $4155: $F1
    ld hl, sp+$1D                                 ; $4156: $F8 $1D
    daa                                           ; $4158: $27
    pop af                                        ; $4159: $F1
    nop                                           ; $415A: $00
    inc e                                         ; $415B: $1C
    daa                                           ; $415C: $27
    add b                                         ; $415D: $80
    nop                                           ; $415E: $00
    ld hl, sp+$27                                 ; $415F: $F8 $27
    inc hl                                        ; $4161: $23
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    ld h, $23                                     ; $4164: $26 $23
    ld hl, sp-$08                                 ; $4166: $F8 $F8
    ld hl, $F827                                  ; $4168: $21 $27 $F8
    nop                                           ; $416B: $00
    jr nz, jr_010_4195                            ; $416C: $20 $27

    ldh a, [$F8]                                  ; $416E: $F0 $F8
    dec e                                         ; $4170: $1D
    daa                                           ; $4171: $27
    ldh a, [rP1]                                  ; $4172: $F0 $00
    inc e                                         ; $4174: $1C
    daa                                           ; $4175: $27
    add b                                         ; $4176: $80
    ld hl, sp-$08                                 ; $4177: $F8 $F8
    inc hl                                        ; $4179: $23
    daa                                           ; $417A: $27
    ld hl, sp+$00                                 ; $417B: $F8 $00
    ld [hl+], a                                   ; $417D: $22
    daa                                           ; $417E: $27
    nop                                           ; $417F: $00
    ld hl, sp+$29                                 ; $4180: $F8 $29
    inc hl                                        ; $4182: $23
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    jr z, jr_010_41AA                             ; $4185: $28 $23

    pop af                                        ; $4187: $F1
    ld hl, sp+$1D                                 ; $4188: $F8 $1D
    daa                                           ; $418A: $27
    pop af                                        ; $418B: $F1
    nop                                           ; $418C: $00
    inc e                                         ; $418D: $1C
    daa                                           ; $418E: $27
    add b                                         ; $418F: $80
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    dec c                                         ; $4192: $0D
    inc hl                                        ; $4193: $23
    nop                                           ; $4194: $00

jr_010_4195:
    ld hl, sp+$0D                                 ; $4195: $F8 $0D
    inc bc                                        ; $4197: $03
    ld hl, sp+$00                                 ; $4198: $F8 $00
    ld c, $27                                     ; $419A: $0E $27
    ld hl, sp-$08                                 ; $419C: $F8 $F8
    ld c, $07                                     ; $419E: $0E $07
    ldh a, [rP1]                                  ; $41A0: $F0 $00
    inc c                                         ; $41A2: $0C
    rlca                                          ; $41A3: $07
    ldh a, [$F8]                                  ; $41A4: $F0 $F8
    dec bc                                        ; $41A6: $0B
    rlca                                          ; $41A7: $07
    add b                                         ; $41A8: $80
    inc bc                                        ; $41A9: $03

jr_010_41AA:
    or $14                                        ; $41AA: $F6 $14
    rlca                                          ; $41AC: $07
    inc bc                                        ; $41AD: $03
    nop                                           ; $41AE: $00
    ld d, $03                                     ; $41AF: $16 $03
    inc bc                                        ; $41B1: $03
    ld hl, sp+$15                                 ; $41B2: $F8 $15
    inc bc                                        ; $41B4: $03
    di                                            ; $41B5: $F3
    ld hl, sp+$0F                                 ; $41B6: $F8 $0F
    rlca                                          ; $41B8: $07
    di                                            ; $41B9: $F3
    nop                                           ; $41BA: $00
    db $10                                        ; $41BB: $10
    rlca                                          ; $41BC: $07
    ei                                            ; $41BD: $FB
    nop                                           ; $41BE: $00
    inc de                                        ; $41BF: $13
    rlca                                          ; $41C0: $07
    ei                                            ; $41C1: $FB
    ld hl, sp+$12                                 ; $41C2: $F8 $12
    rlca                                          ; $41C4: $07
    ei                                            ; $41C5: $FB
    ldh a, [rNR11]                                ; $41C6: $F0 $11
    rlca                                          ; $41C8: $07
    add b                                         ; $41C9: $80
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    dec c                                         ; $41CC: $0D
    inc hl                                        ; $41CD: $23
    nop                                           ; $41CE: $00
    ld hl, sp+$0D                                 ; $41CF: $F8 $0D
    inc bc                                        ; $41D1: $03
    ld hl, sp+$00                                 ; $41D2: $F8 $00
    ld a, [de]                                    ; $41D4: $1A
    rlca                                          ; $41D5: $07
    ld hl, sp-$08                                 ; $41D6: $F8 $F8
    add hl, de                                    ; $41D8: $19
    rlca                                          ; $41D9: $07
    ldh a, [rP1]                                  ; $41DA: $F0 $00
    jr jr_010_41E5                                ; $41DC: $18 $07

    ldh a, [$F8]                                  ; $41DE: $F0 $F8
    rla                                           ; $41E0: $17
    rlca                                          ; $41E1: $07
    add b                                         ; $41E2: $80
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00

jr_010_41E5:
    dec c                                         ; $41E5: $0D
    inc hl                                        ; $41E6: $23
    nop                                           ; $41E7: $00
    ld hl, sp+$0D                                 ; $41E8: $F8 $0D
    inc bc                                        ; $41EA: $03
    ld hl, sp+$00                                 ; $41EB: $F8 $00
    ld a, [bc]                                    ; $41ED: $0A
    daa                                           ; $41EE: $27
    ld hl, sp-$08                                 ; $41EF: $F8 $F8
    ld a, [bc]                                    ; $41F1: $0A
    rlca                                          ; $41F2: $07
    ldh a, [rP1]                                  ; $41F3: $F0 $00
    add hl, bc                                    ; $41F5: $09
    rlca                                          ; $41F6: $07
    ldh a, [$F8]                                  ; $41F7: $F0 $F8
    ld [$8007], sp                                ; $41F9: $08 $07 $80
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    dec c                                         ; $41FE: $0D
    inc hl                                        ; $41FF: $23
    nop                                           ; $4200: $00
    ld hl, sp+$0D                                 ; $4201: $F8 $0D
    inc bc                                        ; $4203: $03
    ld hl, sp-$08                                 ; $4204: $F8 $F8
    ld a, [de]                                    ; $4206: $1A
    daa                                           ; $4207: $27
    ld hl, sp+$00                                 ; $4208: $F8 $00
    add hl, de                                    ; $420A: $19
    daa                                           ; $420B: $27
    ldh a, [$F8]                                  ; $420C: $F0 $F8
    jr jr_010_4237                                ; $420E: $18 $27

    ldh a, [rP1]                                  ; $4210: $F0 $00
    rla                                           ; $4212: $17
    daa                                           ; $4213: $27
    add b                                         ; $4214: $80
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    dec b                                         ; $4217: $05
    inc bc                                        ; $4218: $03
    nop                                           ; $4219: $00
    ld hl, sp+$04                                 ; $421A: $F8 $04
    inc bc                                        ; $421C: $03
    ld hl, sp+$00                                 ; $421D: $F8 $00
    inc bc                                        ; $421F: $03
    rlca                                          ; $4220: $07
    ld hl, sp-$08                                 ; $4221: $F8 $F8
    ld [bc], a                                    ; $4223: $02
    rlca                                          ; $4224: $07
    ldh a, [rP1]                                  ; $4225: $F0 $00
    ld bc, $F007                                  ; $4227: $01 $07 $F0
    ld hl, sp+$00                                 ; $422A: $F8 $00
    rlca                                          ; $422C: $07
    add b                                         ; $422D: $80
    ld sp, hl                                     ; $422E: $F9
    ld b, $06                                     ; $422F: $06 $06
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    dec b                                         ; $4234: $05
    inc bc                                        ; $4235: $03
    nop                                           ; $4236: $00

jr_010_4237:
    ld hl, sp+$04                                 ; $4237: $F8 $04
    inc bc                                        ; $4239: $03
    ld hl, sp+$00                                 ; $423A: $F8 $00
    inc bc                                        ; $423C: $03
    rlca                                          ; $423D: $07
    ld hl, sp-$08                                 ; $423E: $F8 $F8
    ld [bc], a                                    ; $4240: $02
    rlca                                          ; $4241: $07
    ldh a, [rP1]                                  ; $4242: $F0 $00
    ld bc, $F007                                  ; $4244: $01 $07 $F0
    ld hl, sp+$00                                 ; $4247: $F8 $00
    rlca                                          ; $4249: $07
    add b                                         ; $424A: $80
    rst $30                                       ; $424B: $F7
    ld b, $07                                     ; $424C: $06 $07
    nop                                           ; $424E: $00
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    dec b                                         ; $4251: $05
    inc bc                                        ; $4252: $03
    nop                                           ; $4253: $00
    ld hl, sp+$04                                 ; $4254: $F8 $04
    inc bc                                        ; $4256: $03
    ld hl, sp+$00                                 ; $4257: $F8 $00
    inc bc                                        ; $4259: $03
    rlca                                          ; $425A: $07
    ld hl, sp-$08                                 ; $425B: $F8 $F8
    ld [bc], a                                    ; $425D: $02
    rlca                                          ; $425E: $07
    ldh a, [rP1]                                  ; $425F: $F0 $00
    ld bc, $F007                                  ; $4261: $01 $07 $F0
    ld hl, sp+$00                                 ; $4264: $F8 $00
    rlca                                          ; $4266: $07
    add b                                         ; $4267: $80
    ld c, l                                       ; $4268: $4D
    ld [$0008], sp                                ; $4269: $08 $08 $00
    rst $38                                       ; $426C: $FF
    xor a                                         ; $426D: $AF
    ld b, b                                       ; $426E: $40
    ret z                                         ; $426F: $C8

    ld b, b                                       ; $4270: $40
    pop hl                                        ; $4271: $E1
    ld b, b                                       ; $4272: $40
    ret z                                         ; $4273: $C8

    ld b, b                                       ; $4274: $40
    ld b, [hl]                                    ; $4275: $46
    ld l, b                                       ; $4276: $68
    ld b, d                                       ; $4277: $42
    ld c, l                                       ; $4278: $4D
    ld [$0008], sp                                ; $4279: $08 $08 $00
    ld bc, $4064                                  ; $427C: $01 $64 $40
    ld a, l                                       ; $427F: $7D
    ld b, b                                       ; $4280: $40
    sub [hl]                                      ; $4281: $96
    ld b, b                                       ; $4282: $40
    ld a, l                                       ; $4283: $7D
    ld b, b                                       ; $4284: $40
    ld b, [hl]                                    ; $4285: $46
    ld a, b                                       ; $4286: $78
    ld b, d                                       ; $4287: $42
    ld c, l                                       ; $4288: $4D
    ld [$FF08], sp                                ; $4289: $08 $08 $FF
    nop                                           ; $428C: $00
    ld b, l                                       ; $428D: $45
    ld b, c                                       ; $428E: $41
    ld e, [hl]                                    ; $428F: $5E
    ld b, c                                       ; $4290: $41
    ld [hl], a                                    ; $4291: $77
    ld b, c                                       ; $4292: $41
    ld e, [hl]                                    ; $4293: $5E
    ld b, c                                       ; $4294: $41
    ld b, [hl]                                    ; $4295: $46
    adc b                                         ; $4296: $88
    ld b, d                                       ; $4297: $42
    ld c, l                                       ; $4298: $4D
    ld [$0108], sp                                ; $4299: $08 $08 $01
    nop                                           ; $429C: $00
    ld a, [$1340]                                 ; $429D: $FA $40 $13
    ld b, c                                       ; $42A0: $41
    inc l                                         ; $42A1: $2C
    ld b, c                                       ; $42A2: $41
    inc de                                        ; $42A3: $13
    ld b, c                                       ; $42A4: $41
    ld b, [hl]                                    ; $42A5: $46
    sbc b                                         ; $42A6: $98
    ld b, d                                       ; $42A7: $42
    ld c, l                                       ; $42A8: $4D
    ld [$0008], sp                                ; $42A9: $08 $08 $00
    cp $AF                                        ; $42AC: $FE $AF
    ld b, b                                       ; $42AE: $40
    ret z                                         ; $42AF: $C8

    ld b, b                                       ; $42B0: $40
    pop hl                                        ; $42B1: $E1
    ld b, b                                       ; $42B2: $40
    ret z                                         ; $42B3: $C8

    ld b, b                                       ; $42B4: $40
    ld b, [hl]                                    ; $42B5: $46
    xor b                                         ; $42B6: $A8
    ld b, d                                       ; $42B7: $42
    ld c, l                                       ; $42B8: $4D
    ld [$0008], sp                                ; $42B9: $08 $08 $00
    ld [bc], a                                    ; $42BC: $02
    ld h, h                                       ; $42BD: $64
    ld b, b                                       ; $42BE: $40
    ld a, l                                       ; $42BF: $7D
    ld b, b                                       ; $42C0: $40
    sub [hl]                                      ; $42C1: $96
    ld b, b                                       ; $42C2: $40
    ld a, l                                       ; $42C3: $7D
    ld b, b                                       ; $42C4: $40
    ld b, [hl]                                    ; $42C5: $46
    cp b                                          ; $42C6: $B8
    ld b, d                                       ; $42C7: $42
    ld c, l                                       ; $42C8: $4D
    ld [$FE08], sp                                ; $42C9: $08 $08 $FE
    nop                                           ; $42CC: $00
    ld b, l                                       ; $42CD: $45
    ld b, c                                       ; $42CE: $41
    ld e, [hl]                                    ; $42CF: $5E
    ld b, c                                       ; $42D0: $41
    ld [hl], a                                    ; $42D1: $77
    ld b, c                                       ; $42D2: $41
    ld e, [hl]                                    ; $42D3: $5E
    ld b, c                                       ; $42D4: $41
    ld b, [hl]                                    ; $42D5: $46
    ret z                                         ; $42D6: $C8

    ld b, d                                       ; $42D7: $42
    ld c, l                                       ; $42D8: $4D
    ld [$0208], sp                                ; $42D9: $08 $08 $02
    nop                                           ; $42DC: $00
    ld a, [$1340]                                 ; $42DD: $FA $40 $13
    ld b, c                                       ; $42E0: $41
    inc l                                         ; $42E1: $2C
    ld b, c                                       ; $42E2: $41
    inc de                                        ; $42E3: $13
    ld b, c                                       ; $42E4: $41
    ld b, [hl]                                    ; $42E5: $46
    ret c                                         ; $42E6: $D8

    ld b, d                                       ; $42E7: $42
    ld c, h                                       ; $42E8: $4C
    rst $38                                       ; $42E9: $FF
    nop                                           ; $42EA: $00
    nop                                           ; $42EB: $00
    ret z                                         ; $42EC: $C8

    ld b, b                                       ; $42ED: $40
    nop                                           ; $42EE: $00
    ld b, [hl]                                    ; $42EF: $46
    add sp, $42                                   ; $42F0: $E8 $42
    ld c, h                                       ; $42F2: $4C
    rst $38                                       ; $42F3: $FF
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    ld a, l                                       ; $42F6: $7D
    ld b, b                                       ; $42F7: $40
    nop                                           ; $42F8: $00
    ld b, [hl]                                    ; $42F9: $46
    ld a, [c]                                     ; $42FA: $F2
    ld b, d                                       ; $42FB: $42
    ld c, h                                       ; $42FC: $4C
    rst $38                                       ; $42FD: $FF
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    ld e, [hl]                                    ; $4300: $5E
    ld b, c                                       ; $4301: $41
    nop                                           ; $4302: $00
    ld b, [hl]                                    ; $4303: $46
    db $FC                                        ; $4304: $FC
    ld b, d                                       ; $4305: $42
    ld c, h                                       ; $4306: $4C
    rst $38                                       ; $4307: $FF
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    inc de                                        ; $430A: $13
    ld b, c                                       ; $430B: $41
    nop                                           ; $430C: $00
    ld b, [hl]                                    ; $430D: $46
    ld b, $43                                     ; $430E: $06 $43
    ld c, h                                       ; $4310: $4C
    rst $38                                       ; $4311: $FF
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    ld c, e                                       ; $4314: $4B
    ld b, b                                       ; $4315: $40
    nop                                           ; $4316: $00
    ld b, [hl]                                    ; $4317: $46
    db $10                                        ; $4318: $10
    ld b, e                                       ; $4319: $43
    ld c, h                                       ; $431A: $4C
    rst $38                                       ; $431B: $FF
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    ld [hl-], a                                   ; $431E: $32
    ld b, b                                       ; $431F: $40
    nop                                           ; $4320: $00
    ld b, [hl]                                    ; $4321: $46
    ld a, [de]                                    ; $4322: $1A
    ld b, e                                       ; $4323: $43
    ld c, h                                       ; $4324: $4C
    rst $38                                       ; $4325: $FF
    nop                                           ; $4326: $00
    nop                                           ; $4327: $00
    add hl, de                                    ; $4328: $19
    ld b, b                                       ; $4329: $40
    nop                                           ; $432A: $00
    ld b, [hl]                                    ; $432B: $46
    inc h                                         ; $432C: $24
    ld b, e                                       ; $432D: $43
    ld c, h                                       ; $432E: $4C
    rst $38                                       ; $432F: $FF
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    ld b, b                                       ; $4333: $40
    nop                                           ; $4334: $00
    ld b, [hl]                                    ; $4335: $46
    ld l, $43                                     ; $4336: $2E $43
    ld c, h                                       ; $4338: $4C
    ld [bc], a                                    ; $4339: $02
    nop                                           ; $433A: $00
    db $FC                                        ; $433B: $FC
    ld e, [hl]                                    ; $433C: $5E
    ld b, c                                       ; $433D: $41
    ld [bc], a                                    ; $433E: $02
    nop                                           ; $433F: $00
    db $FD                                        ; $4340: $FD
    ld e, [hl]                                    ; $4341: $5E
    ld b, c                                       ; $4342: $41
    ld [bc], a                                    ; $4343: $02
    nop                                           ; $4344: $00
    cp $5E                                        ; $4345: $FE $5E
    ld b, c                                       ; $4347: $41
    ld [bc], a                                    ; $4348: $02
    nop                                           ; $4349: $00
    rst $38                                       ; $434A: $FF
    ld e, [hl]                                    ; $434B: $5E
    ld b, c                                       ; $434C: $41
    ld [bc], a                                    ; $434D: $02
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    ld e, [hl]                                    ; $4350: $5E
    ld b, c                                       ; $4351: $41
    ld [bc], a                                    ; $4352: $02
    nop                                           ; $4353: $00
    ld bc, $415E                                  ; $4354: $01 $5E $41
    ld [bc], a                                    ; $4357: $02
    nop                                           ; $4358: $00
    ld [bc], a                                    ; $4359: $02
    ld e, [hl]                                    ; $435A: $5E
    ld b, c                                       ; $435B: $41
    ld [bc], a                                    ; $435C: $02
    nop                                           ; $435D: $00
    inc bc                                        ; $435E: $03
    ld e, [hl]                                    ; $435F: $5E
    ld b, c                                       ; $4360: $41
    ld [bc], a                                    ; $4361: $02
    nop                                           ; $4362: $00
    inc b                                         ; $4363: $04
    ld e, [hl]                                    ; $4364: $5E
    ld b, c                                       ; $4365: $41
    nop                                           ; $4366: $00
    ld b, [hl]                                    ; $4367: $46
    db $FC                                        ; $4368: $FC
    ld b, d                                       ; $4369: $42
    ld c, h                                       ; $436A: $4C
    ld [bc], a                                    ; $436B: $02
    nop                                           ; $436C: $00
    db $FC                                        ; $436D: $FC
    inc de                                        ; $436E: $13
    ld b, c                                       ; $436F: $41
    ld [bc], a                                    ; $4370: $02
    nop                                           ; $4371: $00
    db $FD                                        ; $4372: $FD
    inc de                                        ; $4373: $13
    ld b, c                                       ; $4374: $41
    ld [bc], a                                    ; $4375: $02
    nop                                           ; $4376: $00
    cp $13                                        ; $4377: $FE $13
    ld b, c                                       ; $4379: $41
    ld [bc], a                                    ; $437A: $02
    nop                                           ; $437B: $00
    rst $38                                       ; $437C: $FF
    inc de                                        ; $437D: $13
    ld b, c                                       ; $437E: $41
    ld [bc], a                                    ; $437F: $02
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    inc de                                        ; $4382: $13
    ld b, c                                       ; $4383: $41
    ld [bc], a                                    ; $4384: $02
    nop                                           ; $4385: $00
    ld bc, $4113                                  ; $4386: $01 $13 $41
    ld [bc], a                                    ; $4389: $02
    nop                                           ; $438A: $00
    ld [bc], a                                    ; $438B: $02
    inc de                                        ; $438C: $13
    ld b, c                                       ; $438D: $41
    ld [bc], a                                    ; $438E: $02
    nop                                           ; $438F: $00
    inc bc                                        ; $4390: $03
    inc de                                        ; $4391: $13
    ld b, c                                       ; $4392: $41
    ld [bc], a                                    ; $4393: $02
    nop                                           ; $4394: $00
    inc b                                         ; $4395: $04
    inc de                                        ; $4396: $13
    ld b, c                                       ; $4397: $41
    nop                                           ; $4398: $00
    ld b, [hl]                                    ; $4399: $46
    ld b, $43                                     ; $439A: $06 $43
    ld c, l                                       ; $439C: $4D
    ld [$0102], sp                                ; $439D: $08 $02 $01
    db $FC                                        ; $43A0: $FC
    add hl, de                                    ; $43A1: $19
    ld b, b                                       ; $43A2: $40
    nop                                           ; $43A3: $00
    ld b, b                                       ; $43A4: $40
    ld [hl-], a                                   ; $43A5: $32
    ld b, b                                       ; $43A6: $40
    ld c, e                                       ; $43A7: $4B
    ld b, b                                       ; $43A8: $40
    ld b, [hl]                                    ; $43A9: $46
    sbc h                                         ; $43AA: $9C
    ld b, e                                       ; $43AB: $43
    ld c, h                                       ; $43AC: $4C
    rst $38                                       ; $43AD: $FF
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    db $E3                                        ; $43B0: $E3
    ld b, c                                       ; $43B1: $41
    nop                                           ; $43B2: $00
    ld b, [hl]                                    ; $43B3: $46
    xor h                                         ; $43B4: $AC
    ld b, e                                       ; $43B5: $43
    ld c, l                                       ; $43B6: $4D
    ld [$0010], sp                                ; $43B7: $08 $10 $00
    nop                                           ; $43BA: $00
    jp z, $E341                                   ; $43BB: $CA $41 $E3

    ld b, c                                       ; $43BE: $41
    db $FC                                        ; $43BF: $FC
    ld b, c                                       ; $43C0: $41
    db $E3                                        ; $43C1: $E3
    ld b, c                                       ; $43C2: $41
    ld b, [hl]                                    ; $43C3: $46
    or [hl]                                       ; $43C4: $B6
    ld b, e                                       ; $43C5: $43
    ld c, l                                       ; $43C6: $4D
    jr nz, jr_010_43CD                            ; $43C7: $20 $04

    nop                                           ; $43C9: $00
    nop                                           ; $43CA: $00
    dec d                                         ; $43CB: $15
    ld b, d                                       ; $43CC: $42

jr_010_43CD:
    ld l, $42                                     ; $43CD: $2E $42
    ld c, e                                       ; $43CF: $4B
    ld b, d                                       ; $43D0: $42
    ld l, $42                                     ; $43D1: $2E $42
    dec d                                         ; $43D3: $15
    ld b, d                                       ; $43D4: $42
    ld l, $42                                     ; $43D5: $2E $42
    ld c, e                                       ; $43D7: $4B
    ld b, d                                       ; $43D8: $42
    ld l, $42                                     ; $43D9: $2E $42
    dec d                                         ; $43DB: $15
    ld b, d                                       ; $43DC: $42
    ld l, $42                                     ; $43DD: $2E $42
    ld c, e                                       ; $43DF: $4B
    ld b, d                                       ; $43E0: $42
    ld l, $42                                     ; $43E1: $2E $42
    dec d                                         ; $43E3: $15
    ld b, d                                       ; $43E4: $42
    ld l, $42                                     ; $43E5: $2E $42
    ld c, e                                       ; $43E7: $4B
    ld b, d                                       ; $43E8: $42
    ld l, $42                                     ; $43E9: $2E $42
    ld b, [hl]                                    ; $43EB: $46
    xor h                                         ; $43EC: $AC
    ld b, e                                       ; $43ED: $43
    ld c, h                                       ; $43EE: $4C
    rst $38                                       ; $43EF: $FF
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    sub b                                         ; $43F2: $90
    ld b, c                                       ; $43F3: $41
    nop                                           ; $43F4: $00
    ld b, [hl]                                    ; $43F5: $46
    xor $43                                       ; $43F6: $EE $43
    ld c, h                                       ; $43F8: $4C
    rst $38                                       ; $43F9: $FF
    nop                                           ; $43FA: $00
    nop                                           ; $43FB: $00
    xor c                                         ; $43FC: $A9
    ld b, c                                       ; $43FD: $41
    nop                                           ; $43FE: $00
    ld b, [hl]                                    ; $43FF: $46
    ld hl, sp+$43                                 ; $4400: $F8 $43
    ld c, e                                       ; $4402: $4B
    inc bc                                        ; $4403: $03
    stop                                          ; $4404: $10 $00
    nop                                           ; $4406: $00
    add hl, de                                    ; $4407: $19
    ld b, h                                       ; $4408: $44
    db $10                                        ; $4409: $10
    inc bc                                        ; $440A: $03
    nop                                           ; $440B: $00
    jr nz, @+$46                                  ; $440C: $20 $44

    db $10                                        ; $440E: $10
    ld [bc], a                                    ; $440F: $02
    nop                                           ; $4410: $00
    ld l, $44                                     ; $4411: $2E $44
    db $10                                        ; $4413: $10
    ld bc, $2700                                  ; $4414: $01 $00 $27
    ld b, h                                       ; $4417: $44
    rst $38                                       ; $4418: $FF
    inc d                                         ; $4419: $14
    db $10                                        ; $441A: $10
    add sp, $42                                   ; $441B: $E8 $42
    ld h, d                                       ; $441D: $62
    ld bc, $1412                                  ; $441E: $01 $12 $14
    db $10                                        ; $4421: $10
    ld a, [c]                                     ; $4422: $F2
    ld b, d                                       ; $4423: $42
    ld h, d                                       ; $4424: $62
    ld bc, $1412                                  ; $4425: $01 $12 $14
    db $10                                        ; $4428: $10
    db $FC                                        ; $4429: $FC
    ld b, d                                       ; $442A: $42
    ld h, d                                       ; $442B: $62
    ld bc, $1412                                  ; $442C: $01 $12 $14
    db $10                                        ; $442F: $10
    ld b, $43                                     ; $4430: $06 $43
    ld h, d                                       ; $4432: $62
    ld bc, $F012                                  ; $4433: $01 $12 $F0
    ld hl, sp+$00                                 ; $4436: $F8 $00
    rlca                                          ; $4438: $07
    ldh a, [rP1]                                  ; $4439: $F0 $00
    ld bc, $F807                                  ; $443B: $01 $07 $F8
    ei                                            ; $443E: $FB
    dec b                                         ; $443F: $05
    rlca                                          ; $4440: $07
    nop                                           ; $4441: $00
    ld hl, sp+$0D                                 ; $4442: $F8 $0D
    rlca                                          ; $4444: $07
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    ld c, $07                                     ; $4447: $0E $07
    add b                                         ; $4449: $80
    ldh a, [rP1]                                  ; $444A: $F0 $00
    nop                                           ; $444C: $00
    daa                                           ; $444D: $27
    ldh a, [$F8]                                  ; $444E: $F0 $F8
    ld bc, $F827                                  ; $4450: $01 $27 $F8
    db $FD                                        ; $4453: $FD
    dec b                                         ; $4454: $05
    daa                                           ; $4455: $27
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    dec c                                         ; $4458: $0D
    daa                                           ; $4459: $27
    nop                                           ; $445A: $00
    ld hl, sp+$0E                                 ; $445B: $F8 $0E
    daa                                           ; $445D: $27
    add b                                         ; $445E: $80
    ldh a, [$FD]                                  ; $445F: $F0 $FD
    inc b                                         ; $4461: $04
    rlca                                          ; $4462: $07
    ld hl, sp-$03                                 ; $4463: $F8 $FD
    ld [$0007], sp                                ; $4465: $08 $07 $00
    cp $11                                        ; $4468: $FE $11
    rlca                                          ; $446A: $07
    add b                                         ; $446B: $80
    ldh a, [$FC]                                  ; $446C: $F0 $FC
    inc b                                         ; $446E: $04
    daa                                           ; $446F: $27
    ld hl, sp-$04                                 ; $4470: $F8 $FC
    ld [$0027], sp                                ; $4472: $08 $27 $00
    ei                                            ; $4475: $FB
    ld de, $8027                                  ; $4476: $11 $27 $80
    pop af                                        ; $4479: $F1
    ld hl, sp+$02                                 ; $447A: $F8 $02
    rlca                                          ; $447C: $07
    pop af                                        ; $447D: $F1
    nop                                           ; $447E: $00
    ld [bc], a                                    ; $447F: $02
    daa                                           ; $4480: $27
    ld hl, sp-$08                                 ; $4481: $F8 $F8
    add hl, bc                                    ; $4483: $09
    rlca                                          ; $4484: $07
    ld hl, sp+$00                                 ; $4485: $F8 $00
    ld a, [bc]                                    ; $4487: $0A
    rlca                                          ; $4488: $07
    nop                                           ; $4489: $00
    db $FC                                        ; $448A: $FC
    ld [de], a                                    ; $448B: $12
    rlca                                          ; $448C: $07
    add b                                         ; $448D: $80
    ldh a, [$F8]                                  ; $448E: $F0 $F8
    ld [bc], a                                    ; $4490: $02
    rlca                                          ; $4491: $07
    ldh a, [rP1]                                  ; $4492: $F0 $00
    ld [bc], a                                    ; $4494: $02
    daa                                           ; $4495: $27
    ld hl, sp-$08                                 ; $4496: $F8 $F8
    rlca                                          ; $4498: $07
    rlca                                          ; $4499: $07
    ld hl, sp+$00                                 ; $449A: $F8 $00
    rlca                                          ; $449C: $07
    daa                                           ; $449D: $27
    nop                                           ; $449E: $00
    ld sp, hl                                     ; $449F: $F9
    rrca                                          ; $44A0: $0F
    daa                                           ; $44A1: $27
    nop                                           ; $44A2: $00
    nop                                           ; $44A3: $00
    rrca                                          ; $44A4: $0F
    rlca                                          ; $44A5: $07
    add b                                         ; $44A6: $80
    pop af                                        ; $44A7: $F1
    ld hl, sp+$02                                 ; $44A8: $F8 $02
    rlca                                          ; $44AA: $07
    pop af                                        ; $44AB: $F1
    nop                                           ; $44AC: $00
    ld [bc], a                                    ; $44AD: $02
    daa                                           ; $44AE: $27
    ld hl, sp+$00                                 ; $44AF: $F8 $00
    add hl, bc                                    ; $44B1: $09
    daa                                           ; $44B2: $27
    ld hl, sp-$08                                 ; $44B3: $F8 $F8
    ld a, [bc]                                    ; $44B5: $0A
    daa                                           ; $44B6: $27
    nop                                           ; $44B7: $00
    db $FC                                        ; $44B8: $FC
    ld [de], a                                    ; $44B9: $12
    daa                                           ; $44BA: $27
    add b                                         ; $44BB: $80
    pop af                                        ; $44BC: $F1
    ld hl, sp+$03                                 ; $44BD: $F8 $03
    rlca                                          ; $44BF: $07
    pop af                                        ; $44C0: $F1
    nop                                           ; $44C1: $00
    inc bc                                        ; $44C2: $03
    daa                                           ; $44C3: $27
    ld hl, sp-$08                                 ; $44C4: $F8 $F8
    dec bc                                        ; $44C6: $0B
    rlca                                          ; $44C7: $07
    ld hl, sp+$00                                 ; $44C8: $F8 $00
    inc c                                         ; $44CA: $0C
    rlca                                          ; $44CB: $07
    nop                                           ; $44CC: $00
    db $FC                                        ; $44CD: $FC
    inc de                                        ; $44CE: $13
    rlca                                          ; $44CF: $07
    add b                                         ; $44D0: $80
    ldh a, [$F8]                                  ; $44D1: $F0 $F8
    inc bc                                        ; $44D3: $03
    rlca                                          ; $44D4: $07
    ldh a, [rP1]                                  ; $44D5: $F0 $00
    inc bc                                        ; $44D7: $03
    daa                                           ; $44D8: $27
    ld hl, sp-$08                                 ; $44D9: $F8 $F8
    rlca                                          ; $44DB: $07
    rlca                                          ; $44DC: $07
    ld hl, sp+$00                                 ; $44DD: $F8 $00
    rlca                                          ; $44DF: $07
    daa                                           ; $44E0: $27
    nop                                           ; $44E1: $00
    ld sp, hl                                     ; $44E2: $F9
    db $10                                        ; $44E3: $10
    daa                                           ; $44E4: $27
    nop                                           ; $44E5: $00
    nop                                           ; $44E6: $00
    db $10                                        ; $44E7: $10
    rlca                                          ; $44E8: $07
    add b                                         ; $44E9: $80
    pop af                                        ; $44EA: $F1
    ld hl, sp+$03                                 ; $44EB: $F8 $03
    rlca                                          ; $44ED: $07
    pop af                                        ; $44EE: $F1
    nop                                           ; $44EF: $00
    inc bc                                        ; $44F0: $03
    daa                                           ; $44F1: $27
    ld hl, sp+$00                                 ; $44F2: $F8 $00
    dec bc                                        ; $44F4: $0B
    daa                                           ; $44F5: $27
    ld hl, sp-$08                                 ; $44F6: $F8 $F8
    inc c                                         ; $44F8: $0C
    daa                                           ; $44F9: $27
    nop                                           ; $44FA: $00
    db $FC                                        ; $44FB: $FC
    inc de                                        ; $44FC: $13
    daa                                           ; $44FD: $27
    add b                                         ; $44FE: $80
    pop af                                        ; $44FF: $F1
    ld hl, sp+$14                                 ; $4500: $F8 $14
    rlca                                          ; $4502: $07
    pop af                                        ; $4503: $F1
    nop                                           ; $4504: $00
    dec d                                         ; $4505: $15
    rlca                                          ; $4506: $07
    ld hl, sp-$04                                 ; $4507: $F8 $FC
    ld d, $07                                     ; $4509: $16 $07
    nop                                           ; $450B: $00
    ld hl, sp+$19                                 ; $450C: $F8 $19
    rlca                                          ; $450E: $07
    nop                                           ; $450F: $00
    nop                                           ; $4510: $00
    ld a, [de]                                    ; $4511: $1A
    rlca                                          ; $4512: $07
    add b                                         ; $4513: $80
    ldh a, [$F8]                                  ; $4514: $F0 $F8
    inc d                                         ; $4516: $14
    rlca                                          ; $4517: $07
    ldh a, [rP1]                                  ; $4518: $F0 $00
    dec d                                         ; $451A: $15
    rlca                                          ; $451B: $07
    nop                                           ; $451C: $00
    db $FD                                        ; $451D: $FD
    dec de                                        ; $451E: $1B
    rlca                                          ; $451F: $07
    ld hl, sp-$03                                 ; $4520: $F8 $FD
    rla                                           ; $4522: $17
    rlca                                          ; $4523: $07
    add b                                         ; $4524: $80
    pop af                                        ; $4525: $F1
    ld hl, sp+$14                                 ; $4526: $F8 $14
    rlca                                          ; $4528: $07
    pop af                                        ; $4529: $F1
    nop                                           ; $452A: $00
    dec d                                         ; $452B: $15
    rlca                                          ; $452C: $07
    nop                                           ; $452D: $00
    ld hl, sp+$1C                                 ; $452E: $F8 $1C
    rlca                                          ; $4530: $07
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    dec e                                         ; $4533: $1D
    rlca                                          ; $4534: $07
    ld hl, sp-$04                                 ; $4535: $F8 $FC
    jr @+$09                                      ; $4537: $18 $07

    add b                                         ; $4539: $80
    pop af                                        ; $453A: $F1
    nop                                           ; $453B: $00
    inc d                                         ; $453C: $14
    daa                                           ; $453D: $27
    pop af                                        ; $453E: $F1
    ld hl, sp+$15                                 ; $453F: $F8 $15
    daa                                           ; $4541: $27
    ld hl, sp-$04                                 ; $4542: $F8 $FC
    ld d, $27                                     ; $4544: $16 $27
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    add hl, de                                    ; $4548: $19
    daa                                           ; $4549: $27
    nop                                           ; $454A: $00
    ld hl, sp+$1A                                 ; $454B: $F8 $1A
    daa                                           ; $454D: $27
    add b                                         ; $454E: $80
    ldh a, [rP1]                                  ; $454F: $F0 $00
    inc d                                         ; $4551: $14
    daa                                           ; $4552: $27
    ldh a, [$F8]                                  ; $4553: $F0 $F8
    dec d                                         ; $4555: $15
    daa                                           ; $4556: $27
    nop                                           ; $4557: $00
    ei                                            ; $4558: $FB
    dec de                                        ; $4559: $1B
    daa                                           ; $455A: $27
    ld hl, sp-$05                                 ; $455B: $F8 $FB
    rla                                           ; $455D: $17
    daa                                           ; $455E: $27
    add b                                         ; $455F: $80
    pop af                                        ; $4560: $F1
    nop                                           ; $4561: $00
    inc d                                         ; $4562: $14
    daa                                           ; $4563: $27
    pop af                                        ; $4564: $F1
    ld hl, sp+$15                                 ; $4565: $F8 $15
    daa                                           ; $4567: $27
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    inc e                                         ; $456A: $1C
    daa                                           ; $456B: $27
    nop                                           ; $456C: $00
    ld hl, sp+$1D                                 ; $456D: $F8 $1D
    daa                                           ; $456F: $27
    ld hl, sp-$04                                 ; $4570: $F8 $FC
    jr @+$29                                      ; $4572: $18 $27

    add b                                         ; $4574: $80
    ld hl, sp-$08                                 ; $4575: $F8 $F8
    inc d                                         ; $4577: $14
    daa                                           ; $4578: $27
    ld hl, sp+$00                                 ; $4579: $F8 $00
    inc d                                         ; $457B: $14
    rlca                                          ; $457C: $07
    nop                                           ; $457D: $00
    ld sp, hl                                     ; $457E: $F9
    inc de                                        ; $457F: $13
    daa                                           ; $4580: $27
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    inc de                                        ; $4583: $13
    rlca                                          ; $4584: $07
    ldh a, [rP1]                                  ; $4585: $F0 $00
    rrca                                          ; $4587: $0F
    daa                                           ; $4588: $27
    ldh a, [$F8]                                  ; $4589: $F0 $F8
    rrca                                          ; $458B: $0F
    rlca                                          ; $458C: $07
    add b                                         ; $458D: $80
    nop                                           ; $458E: $00
    db $FC                                        ; $458F: $FC
    ld [de], a                                    ; $4590: $12
    rlca                                          ; $4591: $07
    ldh a, [rP1]                                  ; $4592: $F0 $00
    rrca                                          ; $4594: $0F
    daa                                           ; $4595: $27
    ldh a, [$F8]                                  ; $4596: $F0 $F8
    rrca                                          ; $4598: $0F
    rlca                                          ; $4599: $07
    ld hl, sp+$00                                 ; $459A: $F8 $00
    ld de, $F807                                  ; $459C: $11 $07 $F8
    ld hl, sp+$10                                 ; $459F: $F8 $10
    rlca                                          ; $45A1: $07
    add b                                         ; $45A2: $80
    ldh a, [rP1]                                  ; $45A3: $F0 $00
    add hl, bc                                    ; $45A5: $09
    rlca                                          ; $45A6: $07
    ldh a, [$F8]                                  ; $45A7: $F0 $F8
    ld [$F807], sp                                ; $45A9: $08 $07 $F8
    nop                                           ; $45AC: $00
    dec bc                                        ; $45AD: $0B
    rlca                                          ; $45AE: $07
    ld hl, sp-$08                                 ; $45AF: $F8 $F8
    ld a, [bc]                                    ; $45B1: $0A
    rlca                                          ; $45B2: $07
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    ld c, $07                                     ; $45B5: $0E $07
    nop                                           ; $45B7: $00
    ld hl, sp+$0D                                 ; $45B8: $F8 $0D
    rlca                                          ; $45BA: $07
    nop                                           ; $45BB: $00
    ldh a, [$0C]                                  ; $45BC: $F0 $0C
    rlca                                          ; $45BE: $07
    add b                                         ; $45BF: $80
    ld hl, sp+$00                                 ; $45C0: $F8 $00
    rla                                           ; $45C2: $17
    rlca                                          ; $45C3: $07
    ld hl, sp-$08                                 ; $45C4: $F8 $F8
    ld d, $07                                     ; $45C6: $16 $07
    ldh a, [rP1]                                  ; $45C8: $F0 $00
    rrca                                          ; $45CA: $0F
    daa                                           ; $45CB: $27
    ldh a, [$F8]                                  ; $45CC: $F0 $F8
    rrca                                          ; $45CE: $0F
    rlca                                          ; $45CF: $07
    nop                                           ; $45D0: $00
    ei                                            ; $45D1: $FB
    dec de                                        ; $45D2: $1B
    rlca                                          ; $45D3: $07
    add b                                         ; $45D4: $80
    ld hl, sp+$00                                 ; $45D5: $F8 $00
    add hl, de                                    ; $45D7: $19
    rlca                                          ; $45D8: $07
    ld hl, sp-$08                                 ; $45D9: $F8 $F8
    jr jr_010_45E4                                ; $45DB: $18 $07

    ldh a, [rP1]                                  ; $45DD: $F0 $00
    rrca                                          ; $45DF: $0F
    daa                                           ; $45E0: $27
    ldh a, [$F8]                                  ; $45E1: $F0 $F8
    rrca                                          ; $45E3: $0F

jr_010_45E4:
    rlca                                          ; $45E4: $07
    nop                                           ; $45E5: $00
    ei                                            ; $45E6: $FB
    dec de                                        ; $45E7: $1B
    rlca                                          ; $45E8: $07
    add b                                         ; $45E9: $80
    ld hl, sp+$00                                 ; $45EA: $F8 $00
    ld a, [de]                                    ; $45EC: $1A
    rlca                                          ; $45ED: $07
    ldh a, [rP1]                                  ; $45EE: $F0 $00
    rrca                                          ; $45F0: $0F
    daa                                           ; $45F1: $27
    ldh a, [$F8]                                  ; $45F2: $F0 $F8
    rrca                                          ; $45F4: $0F
    rlca                                          ; $45F5: $07
    ld hl, sp-$08                                 ; $45F6: $F8 $F8
    inc d                                         ; $45F8: $14
    daa                                           ; $45F9: $27
    nop                                           ; $45FA: $00
    ei                                            ; $45FB: $FB
    dec de                                        ; $45FC: $1B
    rlca                                          ; $45FD: $07
    add b                                         ; $45FE: $80
    ld hl, sp-$08                                 ; $45FF: $F8 $F8
    inc d                                         ; $4601: $14
    daa                                           ; $4602: $27
    ld hl, sp+$00                                 ; $4603: $F8 $00
    dec d                                         ; $4605: $15
    rlca                                          ; $4606: $07
    ldh a, [rP1]                                  ; $4607: $F0 $00
    rrca                                          ; $4609: $0F
    daa                                           ; $460A: $27
    ldh a, [$F8]                                  ; $460B: $F0 $F8
    rrca                                          ; $460D: $0F
    rlca                                          ; $460E: $07
    nop                                           ; $460F: $00
    ei                                            ; $4610: $FB
    dec de                                        ; $4611: $1B
    rlca                                          ; $4612: $07
    add b                                         ; $4613: $80
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    dec b                                         ; $4616: $05
    rlca                                          ; $4617: $07
    nop                                           ; $4618: $00
    ld hl, sp+$04                                 ; $4619: $F8 $04
    rlca                                          ; $461B: $07
    ld hl, sp+$00                                 ; $461C: $F8 $00
    inc bc                                        ; $461E: $03
    rlca                                          ; $461F: $07
    ld hl, sp-$08                                 ; $4620: $F8 $F8
    ld [bc], a                                    ; $4622: $02
    rlca                                          ; $4623: $07
    ldh a, [rP1]                                  ; $4624: $F0 $00
    ld bc, $F007                                  ; $4626: $01 $07 $F0
    ld hl, sp+$00                                 ; $4629: $F8 $00
    rlca                                          ; $462B: $07
    add b                                         ; $462C: $80
    rst $30                                       ; $462D: $F7
    inc b                                         ; $462E: $04
    ld b, $00                                     ; $462F: $06 $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    dec b                                         ; $4633: $05
    rlca                                          ; $4634: $07
    nop                                           ; $4635: $00
    ld hl, sp+$04                                 ; $4636: $F8 $04
    rlca                                          ; $4638: $07
    ld hl, sp+$00                                 ; $4639: $F8 $00
    inc bc                                        ; $463B: $03
    rlca                                          ; $463C: $07
    ld hl, sp-$08                                 ; $463D: $F8 $F8
    ld [bc], a                                    ; $463F: $02
    rlca                                          ; $4640: $07
    ldh a, [rP1]                                  ; $4641: $F0 $00
    ld bc, $F007                                  ; $4643: $01 $07 $F0
    ld hl, sp+$00                                 ; $4646: $F8 $00
    rlca                                          ; $4648: $07
    add b                                         ; $4649: $80
    or $03                                        ; $464A: $F6 $03
    rlca                                          ; $464C: $07
    nop                                           ; $464D: $00
    nop                                           ; $464E: $00
    nop                                           ; $464F: $00
    dec b                                         ; $4650: $05
    rlca                                          ; $4651: $07
    nop                                           ; $4652: $00
    ld hl, sp+$04                                 ; $4653: $F8 $04
    rlca                                          ; $4655: $07
    ld hl, sp+$00                                 ; $4656: $F8 $00
    inc bc                                        ; $4658: $03
    rlca                                          ; $4659: $07
    ld hl, sp-$08                                 ; $465A: $F8 $F8
    ld [bc], a                                    ; $465C: $02
    rlca                                          ; $465D: $07
    ldh a, [rP1]                                  ; $465E: $F0 $00
    ld bc, $F007                                  ; $4660: $01 $07 $F0
    ld hl, sp+$00                                 ; $4663: $F8 $00
    rlca                                          ; $4665: $07
    add b                                         ; $4666: $80
    ld c, l                                       ; $4667: $4D
    ld [$0008], sp                                ; $4668: $08 $08 $00
    rst $38                                       ; $466B: $FF
    cp h                                          ; $466C: $BC
    ld b, h                                       ; $466D: $44
    pop de                                        ; $466E: $D1
    ld b, h                                       ; $466F: $44
    ld [$D144], a                                 ; $4670: $EA $44 $D1

Jump_010_4673:
    ld b, h                                       ; $4673: $44
    ld b, [hl]                                    ; $4674: $46
    ld h, a                                       ; $4675: $67
    ld b, [hl]                                    ; $4676: $46
    ld c, l                                       ; $4677: $4D
    ld [$0008], sp                                ; $4678: $08 $08 $00
    ld bc, $4479                                  ; $467B: $01 $79 $44
    adc [hl]                                      ; $467E: $8E
    ld b, h                                       ; $467F: $44
    and a                                         ; $4680: $A7
    ld b, h                                       ; $4681: $44
    adc [hl]                                      ; $4682: $8E
    ld b, h                                       ; $4683: $44
    ld b, [hl]                                    ; $4684: $46
    ld [hl], a                                    ; $4685: $77
    ld b, [hl]                                    ; $4686: $46
    ld c, l                                       ; $4687: $4D
    ld [$FF08], sp                                ; $4688: $08 $08 $FF
    nop                                           ; $468B: $00
    ld a, [hl-]                                   ; $468C: $3A
    ld b, l                                       ; $468D: $45
    ld c, a                                       ; $468E: $4F
    ld b, l                                       ; $468F: $45
    ld h, b                                       ; $4690: $60
    ld b, l                                       ; $4691: $45
    ld c, a                                       ; $4692: $4F
    ld b, l                                       ; $4693: $45
    ld b, [hl]                                    ; $4694: $46
    add a                                         ; $4695: $87
    ld b, [hl]                                    ; $4696: $46
    ld c, l                                       ; $4697: $4D
    ld [$0108], sp                                ; $4698: $08 $08 $01
    nop                                           ; $469B: $00
    rst $38                                       ; $469C: $FF
    ld b, h                                       ; $469D: $44
    inc d                                         ; $469E: $14
    ld b, l                                       ; $469F: $45
    dec h                                         ; $46A0: $25
    ld b, l                                       ; $46A1: $45
    inc d                                         ; $46A2: $14
    ld b, l                                       ; $46A3: $45
    ld b, [hl]                                    ; $46A4: $46
    sub a                                         ; $46A5: $97
    ld b, [hl]                                    ; $46A6: $46
    ld c, l                                       ; $46A7: $4D
    ld [$0008], sp                                ; $46A8: $08 $08 $00
    cp $BC                                        ; $46AB: $FE $BC
    ld b, h                                       ; $46AD: $44
    pop de                                        ; $46AE: $D1
    ld b, h                                       ; $46AF: $44
    ld [$D144], a                                 ; $46B0: $EA $44 $D1
    ld b, h                                       ; $46B3: $44
    ld b, [hl]                                    ; $46B4: $46
    and a                                         ; $46B5: $A7
    ld b, [hl]                                    ; $46B6: $46
    ld c, l                                       ; $46B7: $4D
    ld [$0008], sp                                ; $46B8: $08 $08 $00
    ld [bc], a                                    ; $46BB: $02
    ld a, c                                       ; $46BC: $79
    ld b, h                                       ; $46BD: $44
    adc [hl]                                      ; $46BE: $8E
    ld b, h                                       ; $46BF: $44
    and a                                         ; $46C0: $A7
    ld b, h                                       ; $46C1: $44
    adc [hl]                                      ; $46C2: $8E
    ld b, h                                       ; $46C3: $44
    ld b, [hl]                                    ; $46C4: $46
    or a                                          ; $46C5: $B7
    ld b, [hl]                                    ; $46C6: $46
    ld c, l                                       ; $46C7: $4D
    ld [$FE08], sp                                ; $46C8: $08 $08 $FE
    nop                                           ; $46CB: $00
    ld a, [hl-]                                   ; $46CC: $3A
    ld b, l                                       ; $46CD: $45
    ld c, a                                       ; $46CE: $4F
    ld b, l                                       ; $46CF: $45
    ld h, b                                       ; $46D0: $60
    ld b, l                                       ; $46D1: $45
    ld c, a                                       ; $46D2: $4F
    ld b, l                                       ; $46D3: $45
    ld b, [hl]                                    ; $46D4: $46
    rst $00                                       ; $46D5: $C7
    ld b, [hl]                                    ; $46D6: $46
    ld c, l                                       ; $46D7: $4D
    ld [$0208], sp                                ; $46D8: $08 $08 $02
    nop                                           ; $46DB: $00
    rst $38                                       ; $46DC: $FF
    ld b, h                                       ; $46DD: $44
    inc d                                         ; $46DE: $14
    ld b, l                                       ; $46DF: $45
    dec h                                         ; $46E0: $25
    ld b, l                                       ; $46E1: $45
    inc d                                         ; $46E2: $14
    ld b, l                                       ; $46E3: $45
    ld b, [hl]                                    ; $46E4: $46
    rst $10                                       ; $46E5: $D7
    ld b, [hl]                                    ; $46E6: $46
    ld c, h                                       ; $46E7: $4C
    rst $38                                       ; $46E8: $FF
    nop                                           ; $46E9: $00
    nop                                           ; $46EA: $00
    pop de                                        ; $46EB: $D1
    ld b, h                                       ; $46EC: $44
    nop                                           ; $46ED: $00
    ld b, [hl]                                    ; $46EE: $46
    rst $20                                       ; $46EF: $E7
    ld b, [hl]                                    ; $46F0: $46
    ld c, h                                       ; $46F1: $4C
    rst $38                                       ; $46F2: $FF
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    adc [hl]                                      ; $46F5: $8E
    ld b, h                                       ; $46F6: $44
    nop                                           ; $46F7: $00
    ld b, [hl]                                    ; $46F8: $46
    pop af                                        ; $46F9: $F1
    ld b, [hl]                                    ; $46FA: $46
    ld c, h                                       ; $46FB: $4C
    rst $38                                       ; $46FC: $FF
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    ld c, a                                       ; $46FF: $4F
    ld b, l                                       ; $4700: $45
    nop                                           ; $4701: $00
    ld b, [hl]                                    ; $4702: $46
    ei                                            ; $4703: $FB
    ld b, [hl]                                    ; $4704: $46
    ld c, h                                       ; $4705: $4C
    rst $38                                       ; $4706: $FF
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    inc d                                         ; $4709: $14
    ld b, l                                       ; $470A: $45
    nop                                           ; $470B: $00
    ld b, [hl]                                    ; $470C: $46
    dec b                                         ; $470D: $05
    ld b, a                                       ; $470E: $47
    ld c, h                                       ; $470F: $4C
    rst $38                                       ; $4710: $FF
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    ld l, h                                       ; $4713: $6C
    ld b, h                                       ; $4714: $44
    nop                                           ; $4715: $00
    ld b, [hl]                                    ; $4716: $46
    rrca                                          ; $4717: $0F
    ld b, a                                       ; $4718: $47
    ld c, h                                       ; $4719: $4C
    rst $38                                       ; $471A: $FF
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    ld e, a                                       ; $471D: $5F
    ld b, h                                       ; $471E: $44
    nop                                           ; $471F: $00
    ld b, [hl]                                    ; $4720: $46
    add hl, de                                    ; $4721: $19
    ld b, a                                       ; $4722: $47
    ld c, h                                       ; $4723: $4C
    rst $38                                       ; $4724: $FF
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    ld c, d                                       ; $4727: $4A
    ld b, h                                       ; $4728: $44
    nop                                           ; $4729: $00
    ld b, [hl]                                    ; $472A: $46
    inc hl                                        ; $472B: $23
    ld b, a                                       ; $472C: $47
    ld c, h                                       ; $472D: $4C
    rst $38                                       ; $472E: $FF
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    dec [hl]                                      ; $4731: $35
    ld b, h                                       ; $4732: $44
    nop                                           ; $4733: $00
    ld b, [hl]                                    ; $4734: $46
    dec l                                         ; $4735: $2D
    ld b, a                                       ; $4736: $47
    ld c, h                                       ; $4737: $4C
    rst $38                                       ; $4738: $FF
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    ld [hl], l                                    ; $473B: $75
    ld b, l                                       ; $473C: $45
    nop                                           ; $473D: $00
    ld b, [hl]                                    ; $473E: $46
    scf                                           ; $473F: $37
    ld b, a                                       ; $4740: $47
    ld c, h                                       ; $4741: $4C
    jr nz, jr_010_4744                            ; $4742: $20 $00

jr_010_4744:
    nop                                           ; $4744: $00
    ld [hl], l                                    ; $4745: $75
    ld b, l                                       ; $4746: $45
    ld [rRAMG], sp                                ; $4747: $08 $00 $00
    ret nz                                        ; $474A: $C0

    ld b, l                                       ; $474B: $45
    ld [rRAMG], sp                                ; $474C: $08 $00 $00
    push de                                       ; $474F: $D5
    ld b, l                                       ; $4750: $45
    ld [rRAMG], sp                                ; $4751: $08 $00 $00
    ld [$0845], a                                 ; $4754: $EA $45 $08
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    rst $38                                       ; $4759: $FF
    ld b, l                                       ; $475A: $45
    nop                                           ; $475B: $00
    ld b, [hl]                                    ; $475C: $46
    scf                                           ; $475D: $37
    ld b, a                                       ; $475E: $47
    ld c, l                                       ; $475F: $4D
    jr nz, jr_010_4766                            ; $4760: $20 $04

    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    inc d                                         ; $4764: $14
    ld b, [hl]                                    ; $4765: $46

jr_010_4766:
    dec l                                         ; $4766: $2D
    ld b, [hl]                                    ; $4767: $46
    ld c, d                                       ; $4768: $4A
    ld b, [hl]                                    ; $4769: $46
    dec l                                         ; $476A: $2D
    ld b, [hl]                                    ; $476B: $46
    inc d                                         ; $476C: $14
    ld b, [hl]                                    ; $476D: $46
    dec l                                         ; $476E: $2D
    ld b, [hl]                                    ; $476F: $46
    ld c, d                                       ; $4770: $4A
    ld b, [hl]                                    ; $4771: $46
    dec l                                         ; $4772: $2D
    ld b, [hl]                                    ; $4773: $46
    inc d                                         ; $4774: $14
    ld b, [hl]                                    ; $4775: $46
    dec l                                         ; $4776: $2D
    ld b, [hl]                                    ; $4777: $46
    ld c, d                                       ; $4778: $4A
    ld b, [hl]                                    ; $4779: $46
    dec l                                         ; $477A: $2D
    ld b, [hl]                                    ; $477B: $46
    inc d                                         ; $477C: $14
    ld b, [hl]                                    ; $477D: $46
    dec l                                         ; $477E: $2D
    ld b, [hl]                                    ; $477F: $46
    ld c, d                                       ; $4780: $4A
    ld b, [hl]                                    ; $4781: $46
    dec l                                         ; $4782: $2D
    ld b, [hl]                                    ; $4783: $46
    ld c, h                                       ; $4784: $4C
    jr nz, jr_010_4787                            ; $4785: $20 $00

jr_010_4787:
    nop                                           ; $4787: $00
    inc d                                         ; $4788: $14
    ld b, [hl]                                    ; $4789: $46
    nop                                           ; $478A: $00
    ld b, [hl]                                    ; $478B: $46
    scf                                           ; $478C: $37
    ld b, a                                       ; $478D: $47
    ld c, h                                       ; $478E: $4C
    rst $38                                       ; $478F: $FF
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    adc [hl]                                      ; $4792: $8E
    ld b, l                                       ; $4793: $45
    nop                                           ; $4794: $00
    ld b, [hl]                                    ; $4795: $46
    adc [hl]                                      ; $4796: $8E
    ld b, a                                       ; $4797: $47
    ld c, h                                       ; $4798: $4C
    rst $38                                       ; $4799: $FF
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    and e                                         ; $479C: $A3
    ld b, l                                       ; $479D: $45
    nop                                           ; $479E: $00
    ld b, [hl]                                    ; $479F: $46
    sbc b                                         ; $47A0: $98
    ld b, a                                       ; $47A1: $47
    ld c, e                                       ; $47A2: $4B
    inc bc                                        ; $47A3: $03
    stop                                          ; $47A4: $10 $00
    nop                                           ; $47A6: $00
    cp c                                          ; $47A7: $B9
    ld b, a                                       ; $47A8: $47
    db $10                                        ; $47A9: $10
    inc bc                                        ; $47AA: $03
    nop                                           ; $47AB: $00
    ret nz                                        ; $47AC: $C0

    ld b, a                                       ; $47AD: $47
    db $10                                        ; $47AE: $10
    ld [bc], a                                    ; $47AF: $02
    nop                                           ; $47B0: $00
    adc $47                                       ; $47B1: $CE $47
    db $10                                        ; $47B3: $10
    ld bc, wScript_Scroll_CopyDest                                  ; $47B4: $01 $00 $C7
    ld b, a                                       ; $47B7: $47
    rst $38                                       ; $47B8: $FF
    inc d                                         ; $47B9: $14
    db $10                                        ; $47BA: $10
    rst $20                                       ; $47BB: $E7
    ld b, [hl]                                    ; $47BC: $46
    ld h, d                                       ; $47BD: $62
    ld bc, $1412                                  ; $47BE: $01 $12 $14
    db $10                                        ; $47C1: $10
    pop af                                        ; $47C2: $F1
    ld b, [hl]                                    ; $47C3: $46
    ld h, d                                       ; $47C4: $62
    ld bc, $1412                                  ; $47C5: $01 $12 $14
    db $10                                        ; $47C8: $10
    ei                                            ; $47C9: $FB
    ld b, [hl]                                    ; $47CA: $46
    ld h, d                                       ; $47CB: $62
    ld bc, $1412                                  ; $47CC: $01 $12 $14
    db $10                                        ; $47CF: $10
    dec b                                         ; $47D0: $05
    ld b, a                                       ; $47D1: $47
    ld h, d                                       ; $47D2: $62
    ld bc, $0012                                  ; $47D3: $01 $12 $00
    nop                                           ; $47D6: $00
    inc de                                        ; $47D7: $13
    ld [bc], a                                    ; $47D8: $02
    nop                                           ; $47D9: $00
    ld hl, sp+$12                                 ; $47DA: $F8 $12
    ld [bc], a                                    ; $47DC: $02
    ld hl, sp+$00                                 ; $47DD: $F8 $00
    add hl, bc                                    ; $47DF: $09
    rlca                                          ; $47E0: $07
    ld hl, sp-$08                                 ; $47E1: $F8 $F8
    ld [$F007], sp                                ; $47E3: $08 $07 $F0
    nop                                           ; $47E6: $00
    ld bc, $F007                                  ; $47E7: $01 $07 $F0
    ld hl, sp+$00                                 ; $47EA: $F8 $00
    rlca                                          ; $47EC: $07
    add b                                         ; $47ED: $80
    nop                                           ; $47EE: $00
    ld hl, sp+$13                                 ; $47EF: $F8 $13
    ld [hl+], a                                   ; $47F1: $22
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    ld [de], a                                    ; $47F4: $12
    ld [hl+], a                                   ; $47F5: $22
    ld hl, sp-$08                                 ; $47F6: $F8 $F8
    add hl, bc                                    ; $47F8: $09
    daa                                           ; $47F9: $27
    ld hl, sp+$00                                 ; $47FA: $F8 $00
    ld [$F027], sp                                ; $47FC: $08 $27 $F0
    ld hl, sp+$01                                 ; $47FF: $F8 $01
    daa                                           ; $4801: $27
    ldh a, [rP1]                                  ; $4802: $F0 $00
    nop                                           ; $4804: $00
    daa                                           ; $4805: $27
    add b                                         ; $4806: $80
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    rla                                           ; $4809: $17
    ld [bc], a                                    ; $480A: $02
    nop                                           ; $480B: $00
    ld hl, sp+$16                                 ; $480C: $F8 $16
    ld [bc], a                                    ; $480E: $02
    ld hl, sp+$00                                 ; $480F: $F8 $00
    dec c                                         ; $4811: $0D
    rlca                                          ; $4812: $07
    ld hl, sp-$08                                 ; $4813: $F8 $F8
    inc c                                         ; $4815: $0C
    rlca                                          ; $4816: $07
    ldh a, [rP1]                                  ; $4817: $F0 $00
    rlca                                          ; $4819: $07
    rlca                                          ; $481A: $07
    ldh a, [$F8]                                  ; $481B: $F0 $F8
    ld b, $07                                     ; $481D: $06 $07
    add b                                         ; $481F: $80
    nop                                           ; $4820: $00
    ld hl, sp+$17                                 ; $4821: $F8 $17
    ld [hl+], a                                   ; $4823: $22
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    ld d, $22                                     ; $4826: $16 $22
    ld hl, sp-$08                                 ; $4828: $F8 $F8
    dec c                                         ; $482A: $0D
    daa                                           ; $482B: $27
    ld hl, sp+$00                                 ; $482C: $F8 $00
    inc c                                         ; $482E: $0C
    daa                                           ; $482F: $27
    ldh a, [$F8]                                  ; $4830: $F0 $F8
    rlca                                          ; $4832: $07
    daa                                           ; $4833: $27
    ldh a, [rP1]                                  ; $4834: $F0 $00
    ld b, $27                                     ; $4836: $06 $27
    add b                                         ; $4838: $80
    nop                                           ; $4839: $00
    db $FC                                        ; $483A: $FC
    jr jr_010_483F                                ; $483B: $18 $02

    ld hl, sp+$00                                 ; $483D: $F8 $00

jr_010_483F:
    rrca                                          ; $483F: $0F
    rlca                                          ; $4840: $07
    ld hl, sp-$08                                 ; $4841: $F8 $F8
    ld c, $07                                     ; $4843: $0E $07
    pop af                                        ; $4845: $F1
    nop                                           ; $4846: $00
    inc bc                                        ; $4847: $03
    rlca                                          ; $4848: $07
    pop af                                        ; $4849: $F1
    ld hl, sp+$02                                 ; $484A: $F8 $02
    rlca                                          ; $484C: $07
    add b                                         ; $484D: $80
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    inc d                                         ; $4850: $14
    ld [bc], a                                    ; $4851: $02
    nop                                           ; $4852: $00
    ld hl, sp+$14                                 ; $4853: $F8 $14
    ld [hl+], a                                   ; $4855: $22
    ld hl, sp+$00                                 ; $4856: $F8 $00
    ld a, [bc]                                    ; $4858: $0A
    rlca                                          ; $4859: $07
    ld hl, sp-$08                                 ; $485A: $F8 $F8
    ld a, [bc]                                    ; $485C: $0A
    daa                                           ; $485D: $27
    ldh a, [rP1]                                  ; $485E: $F0 $00
    inc bc                                        ; $4860: $03
    rlca                                          ; $4861: $07
    ldh a, [$F8]                                  ; $4862: $F0 $F8
    ld [bc], a                                    ; $4864: $02
    rlca                                          ; $4865: $07
    add b                                         ; $4866: $80
    nop                                           ; $4867: $00
    db $FC                                        ; $4868: $FC
    jr jr_010_488D                                ; $4869: $18 $22

    ld hl, sp-$08                                 ; $486B: $F8 $F8
    rrca                                          ; $486D: $0F
    daa                                           ; $486E: $27
    ld hl, sp+$00                                 ; $486F: $F8 $00
    ld c, $27                                     ; $4871: $0E $27
    pop af                                        ; $4873: $F1
    nop                                           ; $4874: $00
    inc bc                                        ; $4875: $03
    rlca                                          ; $4876: $07
    pop af                                        ; $4877: $F1
    ld hl, sp+$02                                 ; $4878: $F8 $02
    rlca                                          ; $487A: $07
    add b                                         ; $487B: $80
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    ld a, [de]                                    ; $487E: $1A
    ld [bc], a                                    ; $487F: $02
    nop                                           ; $4880: $00
    ld hl, sp+$19                                 ; $4881: $F8 $19
    ld [bc], a                                    ; $4883: $02
    ld hl, sp+$00                                 ; $4884: $F8 $00
    ld de, $F807                                  ; $4886: $11 $07 $F8
    ld hl, sp+$10                                 ; $4889: $F8 $10
    rlca                                          ; $488B: $07
    pop af                                        ; $488C: $F1

jr_010_488D:
    nop                                           ; $488D: $00
    dec b                                         ; $488E: $05
    rlca                                          ; $488F: $07
    pop af                                        ; $4890: $F1
    ld hl, sp+$04                                 ; $4891: $F8 $04
    rlca                                          ; $4893: $07
    add b                                         ; $4894: $80
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    dec d                                         ; $4897: $15
    ld [bc], a                                    ; $4898: $02
    nop                                           ; $4899: $00
    ld hl, sp+$15                                 ; $489A: $F8 $15
    ld [hl+], a                                   ; $489C: $22
    ld hl, sp+$00                                 ; $489D: $F8 $00
    dec bc                                        ; $489F: $0B
    rlca                                          ; $48A0: $07
    ld hl, sp-$08                                 ; $48A1: $F8 $F8
    dec bc                                        ; $48A3: $0B
    daa                                           ; $48A4: $27
    ldh a, [rP1]                                  ; $48A5: $F0 $00
    dec b                                         ; $48A7: $05
    rlca                                          ; $48A8: $07
    ldh a, [$F8]                                  ; $48A9: $F0 $F8
    inc b                                         ; $48AB: $04
    rlca                                          ; $48AC: $07
    add b                                         ; $48AD: $80
    nop                                           ; $48AE: $00
    ld hl, sp+$1A                                 ; $48AF: $F8 $1A
    ld [hl+], a                                   ; $48B1: $22
    nop                                           ; $48B2: $00
    nop                                           ; $48B3: $00
    add hl, de                                    ; $48B4: $19
    ld [hl+], a                                   ; $48B5: $22
    ld hl, sp-$08                                 ; $48B6: $F8 $F8
    ld de, $F827                                  ; $48B8: $11 $27 $F8
    nop                                           ; $48BB: $00
    db $10                                        ; $48BC: $10
    daa                                           ; $48BD: $27
    pop af                                        ; $48BE: $F1
    nop                                           ; $48BF: $00
    dec b                                         ; $48C0: $05
    rlca                                          ; $48C1: $07
    pop af                                        ; $48C2: $F1
    ld hl, sp+$04                                 ; $48C3: $F8 $04
    rlca                                          ; $48C5: $07
    add b                                         ; $48C6: $80
    nop                                           ; $48C7: $00
    nop                                           ; $48C8: $00
    inc hl                                        ; $48C9: $23
    ld [bc], a                                    ; $48CA: $02
    nop                                           ; $48CB: $00
    ld hl, sp+$22                                 ; $48CC: $F8 $22
    ld [bc], a                                    ; $48CE: $02
    ld hl, sp+$00                                 ; $48CF: $F8 $00
    ld e, $07                                     ; $48D1: $1E $07
    ld hl, sp-$08                                 ; $48D3: $F8 $F8
    dec e                                         ; $48D5: $1D
    rlca                                          ; $48D6: $07
    pop af                                        ; $48D7: $F1
    nop                                           ; $48D8: $00
    inc e                                         ; $48D9: $1C
    rlca                                          ; $48DA: $07
    pop af                                        ; $48DB: $F1
    ld hl, sp+$1B                                 ; $48DC: $F8 $1B
    rlca                                          ; $48DE: $07
    add b                                         ; $48DF: $80
    ld hl, sp-$04                                 ; $48E0: $F8 $FC
    rra                                           ; $48E2: $1F
    rlca                                          ; $48E3: $07
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    dec h                                         ; $48E6: $25
    ld [bc], a                                    ; $48E7: $02
    nop                                           ; $48E8: $00
    ld hl, sp+$24                                 ; $48E9: $F8 $24
    ld [bc], a                                    ; $48EB: $02
    ldh a, [rP1]                                  ; $48EC: $F0 $00
    inc e                                         ; $48EE: $1C
    rlca                                          ; $48EF: $07
    ldh a, [$F8]                                  ; $48F0: $F0 $F8
    dec de                                        ; $48F2: $1B
    rlca                                          ; $48F3: $07
    add b                                         ; $48F4: $80
    ld hl, sp+$00                                 ; $48F5: $F8 $00
    ld hl, $F807                                  ; $48F7: $21 $07 $F8
    ld hl, sp+$20                                 ; $48FA: $F8 $20
    rlca                                          ; $48FC: $07
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    daa                                           ; $48FF: $27
    ld [bc], a                                    ; $4900: $02
    nop                                           ; $4901: $00
    ld hl, sp+$26                                 ; $4902: $F8 $26
    ld [bc], a                                    ; $4904: $02
    pop af                                        ; $4905: $F1
    nop                                           ; $4906: $00
    inc e                                         ; $4907: $1C
    rlca                                          ; $4908: $07
    pop af                                        ; $4909: $F1
    ld hl, sp+$1B                                 ; $490A: $F8 $1B
    rlca                                          ; $490C: $07
    add b                                         ; $490D: $80
    nop                                           ; $490E: $00
    ld hl, sp+$23                                 ; $490F: $F8 $23
    ld [hl+], a                                   ; $4911: $22
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    ld [hl+], a                                   ; $4914: $22
    ld [hl+], a                                   ; $4915: $22
    ld hl, sp-$08                                 ; $4916: $F8 $F8
    ld e, $27                                     ; $4918: $1E $27
    ld hl, sp+$00                                 ; $491A: $F8 $00
    dec e                                         ; $491C: $1D
    daa                                           ; $491D: $27
    pop af                                        ; $491E: $F1
    ld hl, sp+$1C                                 ; $491F: $F8 $1C
    daa                                           ; $4921: $27
    pop af                                        ; $4922: $F1
    nop                                           ; $4923: $00
    dec de                                        ; $4924: $1B
    daa                                           ; $4925: $27
    add b                                         ; $4926: $80
    ld hl, sp-$04                                 ; $4927: $F8 $FC
    rra                                           ; $4929: $1F
    daa                                           ; $492A: $27
    nop                                           ; $492B: $00
    ld hl, sp+$25                                 ; $492C: $F8 $25
    ld [hl+], a                                   ; $492E: $22
    nop                                           ; $492F: $00
    nop                                           ; $4930: $00
    inc h                                         ; $4931: $24
    ld [hl+], a                                   ; $4932: $22
    ldh a, [$F8]                                  ; $4933: $F0 $F8
    inc e                                         ; $4935: $1C
    daa                                           ; $4936: $27
    ldh a, [rP1]                                  ; $4937: $F0 $00
    dec de                                        ; $4939: $1B
    daa                                           ; $493A: $27
    add b                                         ; $493B: $80
    ld hl, sp-$08                                 ; $493C: $F8 $F8
    ld hl, $F827                                  ; $493E: $21 $27 $F8
    nop                                           ; $4941: $00
    jr nz, jr_010_496B                            ; $4942: $20 $27

    nop                                           ; $4944: $00
    ld hl, sp+$27                                 ; $4945: $F8 $27
    ld [hl+], a                                   ; $4947: $22
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    ld h, $22                                     ; $494A: $26 $22
    pop af                                        ; $494C: $F1
    ld hl, sp+$1C                                 ; $494D: $F8 $1C
    daa                                           ; $494F: $27
    pop af                                        ; $4950: $F1
    nop                                           ; $4951: $00
    dec de                                        ; $4952: $1B
    daa                                           ; $4953: $27
    add b                                         ; $4954: $80
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    dec c                                         ; $4957: $0D
    ld [hl+], a                                   ; $4958: $22
    nop                                           ; $4959: $00
    ld hl, sp+$0D                                 ; $495A: $F8 $0D
    ld [bc], a                                    ; $495C: $02
    ld hl, sp+$00                                 ; $495D: $F8 $00
    ld a, [de]                                    ; $495F: $1A
    daa                                           ; $4960: $27
    ld hl, sp-$08                                 ; $4961: $F8 $F8
    ld a, [de]                                    ; $4963: $1A
    rlca                                          ; $4964: $07
    ldh a, [rP1]                                  ; $4965: $F0 $00
    add hl, de                                    ; $4967: $19
    rlca                                          ; $4968: $07
    ldh a, [$F8]                                  ; $4969: $F0 $F8

jr_010_496B:
    jr jr_010_4974                                ; $496B: $18 $07

    add b                                         ; $496D: $80
    ld hl, sp+$00                                 ; $496E: $F8 $00
    inc c                                         ; $4970: $0C
    daa                                           ; $4971: $27
    ld hl, sp-$08                                 ; $4972: $F8 $F8

jr_010_4974:
    inc c                                         ; $4974: $0C
    rlca                                          ; $4975: $07
    ldh a, [rP1]                                  ; $4976: $F0 $00
    dec bc                                        ; $4978: $0B
    rlca                                          ; $4979: $07
    ldh a, [$F8]                                  ; $497A: $F0 $F8
    ld a, [bc]                                    ; $497C: $0A
    rlca                                          ; $497D: $07
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    dec c                                         ; $4980: $0D

jr_010_4981:
    ld [hl+], a                                   ; $4981: $22
    nop                                           ; $4982: $00
    ld hl, sp+$0D                                 ; $4983: $F8 $0D
    ld [bc], a                                    ; $4985: $02
    add b                                         ; $4986: $80
    push af                                       ; $4987: $F5
    ldh a, [rNR22]                                ; $4988: $F0 $17
    jr nz, jr_010_4981                            ; $498A: $20 $F5

    ld [$0017], sp                                ; $498C: $08 $17 $00
    ld hl, sp+$00                                 ; $498F: $F8 $00
    ld d, $27                                     ; $4991: $16 $27
    ld hl, sp-$08                                 ; $4993: $F8 $F8
    ld d, $07                                     ; $4995: $16 $07
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    dec c                                         ; $4999: $0D
    ld [hl+], a                                   ; $499A: $22
    nop                                           ; $499B: $00
    ld hl, sp+$0D                                 ; $499C: $F8 $0D
    ld [bc], a                                    ; $499E: $02
    ldh a, [rP1]                                  ; $499F: $F0 $00
    add hl, bc                                    ; $49A1: $09
    rlca                                          ; $49A2: $07
    ldh a, [$F8]                                  ; $49A3: $F0 $F8
    ld [$8007], sp                                ; $49A5: $08 $07 $80
    db $F4                                        ; $49A8: $F4
    nop                                           ; $49A9: $00
    rrca                                          ; $49AA: $0F
    rlca                                          ; $49AB: $07
    db $F4                                        ; $49AC: $F4
    ld hl, sp+$0E                                 ; $49AD: $F8 $0E
    rlca                                          ; $49AF: $07
    db $FC                                        ; $49B0: $FC
    nop                                           ; $49B1: $00
    ld [de], a                                    ; $49B2: $12
    rlca                                          ; $49B3: $07
    db $FC                                        ; $49B4: $FC
    ld hl, sp+$11                                 ; $49B5: $F8 $11
    rlca                                          ; $49B7: $07
    db $FC                                        ; $49B8: $FC
    ldh a, [rNR10]                                ; $49B9: $F0 $10
    rlca                                          ; $49BB: $07
    inc b                                         ; $49BC: $04
    nop                                           ; $49BD: $00
    dec d                                         ; $49BE: $15
    ld [bc], a                                    ; $49BF: $02
    inc b                                         ; $49C0: $04
    ld hl, sp+$14                                 ; $49C1: $F8 $14
    ld [bc], a                                    ; $49C3: $02
    inc b                                         ; $49C4: $04
    ldh a, [rNR13]                                ; $49C5: $F0 $13
    rlca                                          ; $49C7: $07
    add b                                         ; $49C8: $80
    nop                                           ; $49C9: $00
    nop                                           ; $49CA: $00
    dec b                                         ; $49CB: $05
    ld [bc], a                                    ; $49CC: $02
    nop                                           ; $49CD: $00
    ld hl, sp+$04                                 ; $49CE: $F8 $04
    ld [bc], a                                    ; $49D0: $02
    ld hl, sp+$00                                 ; $49D1: $F8 $00
    inc bc                                        ; $49D3: $03
    rlca                                          ; $49D4: $07
    ld hl, sp-$08                                 ; $49D5: $F8 $F8
    ld [bc], a                                    ; $49D7: $02
    rlca                                          ; $49D8: $07
    ldh a, [rP1]                                  ; $49D9: $F0 $00
    ld bc, $F007                                  ; $49DB: $01 $07 $F0
    ld hl, sp+$00                                 ; $49DE: $F8 $00
    rlca                                          ; $49E0: $07
    add b                                         ; $49E1: $80
    ld sp, hl                                     ; $49E2: $F9
    ld b, $06                                     ; $49E3: $06 $06
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00
    dec b                                         ; $49E8: $05
    ld [bc], a                                    ; $49E9: $02
    nop                                           ; $49EA: $00
    ld hl, sp+$04                                 ; $49EB: $F8 $04
    ld [bc], a                                    ; $49ED: $02
    ld hl, sp+$00                                 ; $49EE: $F8 $00
    inc bc                                        ; $49F0: $03
    rlca                                          ; $49F1: $07
    ld hl, sp-$08                                 ; $49F2: $F8 $F8
    ld [bc], a                                    ; $49F4: $02
    rlca                                          ; $49F5: $07
    ldh a, [rP1]                                  ; $49F6: $F0 $00
    ld bc, $F007                                  ; $49F8: $01 $07 $F0
    ld hl, sp+$00                                 ; $49FB: $F8 $00
    rlca                                          ; $49FD: $07
    add b                                         ; $49FE: $80
    ld hl, sp+$06                                 ; $49FF: $F8 $06
    rlca                                          ; $4A01: $07
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    nop                                           ; $4A04: $00
    dec b                                         ; $4A05: $05
    ld [bc], a                                    ; $4A06: $02
    nop                                           ; $4A07: $00
    ld hl, sp+$04                                 ; $4A08: $F8 $04
    ld [bc], a                                    ; $4A0A: $02
    ld hl, sp+$00                                 ; $4A0B: $F8 $00
    inc bc                                        ; $4A0D: $03
    rlca                                          ; $4A0E: $07
    ld hl, sp-$08                                 ; $4A0F: $F8 $F8
    ld [bc], a                                    ; $4A11: $02
    rlca                                          ; $4A12: $07
    ldh a, [rP1]                                  ; $4A13: $F0 $00
    ld bc, $F007                                  ; $4A15: $01 $07 $F0
    ld hl, sp+$00                                 ; $4A18: $F8 $00
    rlca                                          ; $4A1A: $07
    add b                                         ; $4A1B: $80
    inc b                                         ; $4A1C: $04
    or $0F                                        ; $4A1D: $F6 $0F
    ld h, a                                       ; $4A1F: $67
    inc b                                         ; $4A20: $04
    cp $0E                                        ; $4A21: $FE $0E
    ld h, a                                       ; $4A23: $67
    db $FC                                        ; $4A24: $FC
    or $12                                        ; $4A25: $F6 $12
    ld h, a                                       ; $4A27: $67
    db $FC                                        ; $4A28: $FC
    cp $11                                        ; $4A29: $FE $11
    ld h, a                                       ; $4A2B: $67
    db $FC                                        ; $4A2C: $FC
    ld b, $10                                     ; $4A2D: $06 $10
    ld h, a                                       ; $4A2F: $67
    db $F4                                        ; $4A30: $F4
    or $15                                        ; $4A31: $F6 $15
    ld h, d                                       ; $4A33: $62
    db $F4                                        ; $4A34: $F4
    cp $14                                        ; $4A35: $FE $14
    ld h, d                                       ; $4A37: $62
    db $F4                                        ; $4A38: $F4
    ld b, $13                                     ; $4A39: $06 $13
    ld h, a                                       ; $4A3B: $67
    add b                                         ; $4A3C: $80
    ld c, l                                       ; $4A3D: $4D
    ld [$0008], sp                                ; $4A3E: $08 $08 $00
    rst $38                                       ; $4A41: $FF
    ld a, h                                       ; $4A42: $7C
    ld c, b                                       ; $4A43: $48
    sub l                                         ; $4A44: $95
    ld c, b                                       ; $4A45: $48
    xor [hl]                                      ; $4A46: $AE
    ld c, b                                       ; $4A47: $48
    sub l                                         ; $4A48: $95
    ld c, b                                       ; $4A49: $48
    ld b, [hl]                                    ; $4A4A: $46
    dec a                                         ; $4A4B: $3D
    ld c, d                                       ; $4A4C: $4A
    ld c, l                                       ; $4A4D: $4D
    ld [$0008], sp                                ; $4A4E: $08 $08 $00
    ld bc, $4839                                  ; $4A51: $01 $39 $48
    ld c, [hl]                                    ; $4A54: $4E
    ld c, b                                       ; $4A55: $48
    ld h, a                                       ; $4A56: $67
    ld c, b                                       ; $4A57: $48
    ld c, [hl]                                    ; $4A58: $4E
    ld c, b                                       ; $4A59: $48
    ld b, [hl]                                    ; $4A5A: $46
    ld c, l                                       ; $4A5B: $4D
    ld c, d                                       ; $4A5C: $4A
    ld c, l                                       ; $4A5D: $4D
    ld [$FF08], sp                                ; $4A5E: $08 $08 $FF
    nop                                           ; $4A61: $00
    ld c, $49                                     ; $4A62: $0E $49
    daa                                           ; $4A64: $27
    ld c, c                                       ; $4A65: $49
    inc a                                         ; $4A66: $3C
    ld c, c                                       ; $4A67: $49
    daa                                           ; $4A68: $27
    ld c, c                                       ; $4A69: $49
    ld b, [hl]                                    ; $4A6A: $46
    ld e, l                                       ; $4A6B: $5D
    ld c, d                                       ; $4A6C: $4A
    ld c, l                                       ; $4A6D: $4D
    ld [$0108], sp                                ; $4A6E: $08 $08 $01
    nop                                           ; $4A71: $00
    rst $00                                       ; $4A72: $C7
    ld c, b                                       ; $4A73: $48
    ldh [rOBP0], a                                ; $4A74: $E0 $48
    push af                                       ; $4A76: $F5
    ld c, b                                       ; $4A77: $48
    ldh [rOBP0], a                                ; $4A78: $E0 $48
    ld b, [hl]                                    ; $4A7A: $46
    ld l, l                                       ; $4A7B: $6D
    ld c, d                                       ; $4A7C: $4A
    ld c, l                                       ; $4A7D: $4D
    ld [$0008], sp                                ; $4A7E: $08 $08 $00
    cp $7C                                        ; $4A81: $FE $7C
    ld c, b                                       ; $4A83: $48
    sub l                                         ; $4A84: $95
    ld c, b                                       ; $4A85: $48
    xor [hl]                                      ; $4A86: $AE
    ld c, b                                       ; $4A87: $48
    sub l                                         ; $4A88: $95
    ld c, b                                       ; $4A89: $48
    ld b, [hl]                                    ; $4A8A: $46
    ld a, l                                       ; $4A8B: $7D
    ld c, d                                       ; $4A8C: $4A
    ld c, l                                       ; $4A8D: $4D
    ld [$0008], sp                                ; $4A8E: $08 $08 $00
    ld [bc], a                                    ; $4A91: $02
    add hl, sp                                    ; $4A92: $39
    ld c, b                                       ; $4A93: $48
    ld c, [hl]                                    ; $4A94: $4E
    ld c, b                                       ; $4A95: $48
    ld h, a                                       ; $4A96: $67
    ld c, b                                       ; $4A97: $48
    ld c, [hl]                                    ; $4A98: $4E
    ld c, b                                       ; $4A99: $48
    ld b, [hl]                                    ; $4A9A: $46
    adc l                                         ; $4A9B: $8D
    ld c, d                                       ; $4A9C: $4A
    ld c, l                                       ; $4A9D: $4D
    ld [$FE08], sp                                ; $4A9E: $08 $08 $FE
    nop                                           ; $4AA1: $00
    ld c, $49                                     ; $4AA2: $0E $49
    daa                                           ; $4AA4: $27
    ld c, c                                       ; $4AA5: $49
    inc a                                         ; $4AA6: $3C
    ld c, c                                       ; $4AA7: $49
    daa                                           ; $4AA8: $27
    ld c, c                                       ; $4AA9: $49
    ld b, [hl]                                    ; $4AAA: $46
    sbc l                                         ; $4AAB: $9D
    ld c, d                                       ; $4AAC: $4A
    ld c, l                                       ; $4AAD: $4D
    ld [$0208], sp                                ; $4AAE: $08 $08 $02
    nop                                           ; $4AB1: $00
    rst $00                                       ; $4AB2: $C7
    ld c, b                                       ; $4AB3: $48
    ldh [rOBP0], a                                ; $4AB4: $E0 $48
    push af                                       ; $4AB6: $F5
    ld c, b                                       ; $4AB7: $48
    ldh [rOBP0], a                                ; $4AB8: $E0 $48
    ld b, [hl]                                    ; $4ABA: $46
    xor l                                         ; $4ABB: $AD
    ld c, d                                       ; $4ABC: $4A
    ld c, h                                       ; $4ABD: $4C
    rst $38                                       ; $4ABE: $FF
    nop                                           ; $4ABF: $00
    nop                                           ; $4AC0: $00
    sub l                                         ; $4AC1: $95
    ld c, b                                       ; $4AC2: $48
    nop                                           ; $4AC3: $00
    ld b, [hl]                                    ; $4AC4: $46
    cp l                                          ; $4AC5: $BD
    ld c, d                                       ; $4AC6: $4A
    ld c, h                                       ; $4AC7: $4C
    rst $38                                       ; $4AC8: $FF
    nop                                           ; $4AC9: $00
    nop                                           ; $4ACA: $00
    ld c, [hl]                                    ; $4ACB: $4E
    ld c, b                                       ; $4ACC: $48
    nop                                           ; $4ACD: $00
    ld b, [hl]                                    ; $4ACE: $46
    rst $00                                       ; $4ACF: $C7
    ld c, d                                       ; $4AD0: $4A
    ld c, h                                       ; $4AD1: $4C
    rst $38                                       ; $4AD2: $FF
    nop                                           ; $4AD3: $00
    nop                                           ; $4AD4: $00
    daa                                           ; $4AD5: $27
    ld c, c                                       ; $4AD6: $49
    nop                                           ; $4AD7: $00
    ld b, [hl]                                    ; $4AD8: $46
    pop de                                        ; $4AD9: $D1
    ld c, d                                       ; $4ADA: $4A
    ld c, h                                       ; $4ADB: $4C
    rst $38                                       ; $4ADC: $FF
    nop                                           ; $4ADD: $00
    nop                                           ; $4ADE: $00
    ldh [rOBP0], a                                ; $4ADF: $E0 $48
    nop                                           ; $4AE1: $00
    ld b, [hl]                                    ; $4AE2: $46
    db $DB                                        ; $4AE3: $DB
    ld c, d                                       ; $4AE4: $4A
    ld c, h                                       ; $4AE5: $4C
    rst $38                                       ; $4AE6: $FF
    nop                                           ; $4AE7: $00
    nop                                           ; $4AE8: $00
    jr nz, jr_010_4B33                            ; $4AE9: $20 $48

    nop                                           ; $4AEB: $00
    ld b, [hl]                                    ; $4AEC: $46
    push hl                                       ; $4AED: $E5
    ld c, d                                       ; $4AEE: $4A
    ld c, h                                       ; $4AEF: $4C
    rst $38                                       ; $4AF0: $FF
    nop                                           ; $4AF1: $00
    nop                                           ; $4AF2: $00
    rlca                                          ; $4AF3: $07
    ld c, b                                       ; $4AF4: $48
    nop                                           ; $4AF5: $00
    ld b, [hl]                                    ; $4AF6: $46
    rst $28                                       ; $4AF7: $EF
    ld c, d                                       ; $4AF8: $4A
    ld c, h                                       ; $4AF9: $4C
    rst $38                                       ; $4AFA: $FF
    nop                                           ; $4AFB: $00
    nop                                           ; $4AFC: $00
    xor $47                                       ; $4AFD: $EE $47
    nop                                           ; $4AFF: $00
    ld b, [hl]                                    ; $4B00: $46
    ld sp, hl                                     ; $4B01: $F9
    ld c, d                                       ; $4B02: $4A
    ld c, h                                       ; $4B03: $4C
    rst $38                                       ; $4B04: $FF
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    push de                                       ; $4B07: $D5
    ld b, a                                       ; $4B08: $47
    nop                                           ; $4B09: $00
    ld b, [hl]                                    ; $4B0A: $46
    inc bc                                        ; $4B0B: $03
    ld c, e                                       ; $4B0C: $4B
    ld c, h                                       ; $4B0D: $4C
    rst $38                                       ; $4B0E: $FF
    nop                                           ; $4B0F: $00
    nop                                           ; $4B10: $00
    ld d, l                                       ; $4B11: $55
    ld c, c                                       ; $4B12: $49
    nop                                           ; $4B13: $00
    ld b, [hl]                                    ; $4B14: $46
    dec c                                         ; $4B15: $0D
    ld c, e                                       ; $4B16: $4B
    ld c, l                                       ; $4B17: $4D
    ld b, $10                                     ; $4B18: $06 $10
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    ld l, [hl]                                    ; $4B1C: $6E
    ld c, c                                       ; $4B1D: $49
    add a                                         ; $4B1E: $87
    ld c, c                                       ; $4B1F: $49
    ld d, l                                       ; $4B20: $55
    ld c, c                                       ; $4B21: $49
    ld b, [hl]                                    ; $4B22: $46
    rla                                           ; $4B23: $17
    ld c, e                                       ; $4B24: $4B
    ld c, l                                       ; $4B25: $4D
    jr nz, jr_010_4B2C                            ; $4B26: $20 $04

    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    ret                                           ; $4B2A: $C9


    ld c, c                                       ; $4B2B: $49

jr_010_4B2C:
    ld [c], a                                     ; $4B2C: $E2
    ld c, c                                       ; $4B2D: $49
    rst $38                                       ; $4B2E: $FF
    ld c, c                                       ; $4B2F: $49
    ld [c], a                                     ; $4B30: $E2
    ld c, c                                       ; $4B31: $49
    ret                                           ; $4B32: $C9


jr_010_4B33:
    ld c, c                                       ; $4B33: $49
    ld [c], a                                     ; $4B34: $E2
    ld c, c                                       ; $4B35: $49
    rst $38                                       ; $4B36: $FF
    ld c, c                                       ; $4B37: $49
    ld [c], a                                     ; $4B38: $E2
    ld c, c                                       ; $4B39: $49
    ret                                           ; $4B3A: $C9


    ld c, c                                       ; $4B3B: $49
    ld [c], a                                     ; $4B3C: $E2
    ld c, c                                       ; $4B3D: $49
    rst $38                                       ; $4B3E: $FF
    ld c, c                                       ; $4B3F: $49
    ld [c], a                                     ; $4B40: $E2
    ld c, c                                       ; $4B41: $49
    ret                                           ; $4B42: $C9


    ld c, c                                       ; $4B43: $49
    ld [c], a                                     ; $4B44: $E2
    ld c, c                                       ; $4B45: $49
    rst $38                                       ; $4B46: $FF
    ld c, c                                       ; $4B47: $49
    ld [c], a                                     ; $4B48: $E2
    ld c, c                                       ; $4B49: $49
    ld c, h                                       ; $4B4A: $4C
    jr nz, jr_010_4B4D                            ; $4B4B: $20 $00

jr_010_4B4D:
    nop                                           ; $4B4D: $00
    ld [c], a                                     ; $4B4E: $E2
    ld c, c                                       ; $4B4F: $49
    nop                                           ; $4B50: $00
    ld b, [hl]                                    ; $4B51: $46
    dec c                                         ; $4B52: $0D
    ld c, e                                       ; $4B53: $4B
    ld c, h                                       ; $4B54: $4C
    ld [bc], a                                    ; $4B55: $02
    nop                                           ; $4B56: $00
    db $FC                                        ; $4B57: $FC
    ld d, l                                       ; $4B58: $55
    ld c, c                                       ; $4B59: $49
    ld [bc], a                                    ; $4B5A: $02
    nop                                           ; $4B5B: $00
    db $FD                                        ; $4B5C: $FD
    ld d, l                                       ; $4B5D: $55
    ld c, c                                       ; $4B5E: $49
    ld [bc], a                                    ; $4B5F: $02
    nop                                           ; $4B60: $00
    cp $55                                        ; $4B61: $FE $55
    ld c, c                                       ; $4B63: $49
    ld [bc], a                                    ; $4B64: $02
    nop                                           ; $4B65: $00
    rst $38                                       ; $4B66: $FF
    ld d, l                                       ; $4B67: $55
    ld c, c                                       ; $4B68: $49
    ld [bc], a                                    ; $4B69: $02
    nop                                           ; $4B6A: $00
    nop                                           ; $4B6B: $00
    ld l, [hl]                                    ; $4B6C: $6E
    ld c, c                                       ; $4B6D: $49
    ld [bc], a                                    ; $4B6E: $02
    nop                                           ; $4B6F: $00
    ld bc, $496E                                  ; $4B70: $01 $6E $49
    ld [bc], a                                    ; $4B73: $02
    nop                                           ; $4B74: $00
    ld [bc], a                                    ; $4B75: $02
    ld l, [hl]                                    ; $4B76: $6E
    ld c, c                                       ; $4B77: $49
    ld [bc], a                                    ; $4B78: $02
    nop                                           ; $4B79: $00
    inc bc                                        ; $4B7A: $03
    ld l, [hl]                                    ; $4B7B: $6E
    ld c, c                                       ; $4B7C: $49
    ld [bc], a                                    ; $4B7D: $02
    nop                                           ; $4B7E: $00
    inc b                                         ; $4B7F: $04
    ld l, [hl]                                    ; $4B80: $6E
    ld c, c                                       ; $4B81: $49
    nop                                           ; $4B82: $00
    ld c, l                                       ; $4B83: $4D
    inc b                                         ; $4B84: $04
    ld [rRAMG], sp                                ; $4B85: $08 $00 $00
    ld l, [hl]                                    ; $4B88: $6E
    ld c, c                                       ; $4B89: $49
    add a                                         ; $4B8A: $87
    ld c, c                                       ; $4B8B: $49
    ld b, [hl]                                    ; $4B8C: $46
    add e                                         ; $4B8D: $83
    ld c, e                                       ; $4B8E: $4B
    ld c, h                                       ; $4B8F: $4C
    ld [bc], a                                    ; $4B90: $02
    rst $38                                       ; $4B91: $FF
    db $FC                                        ; $4B92: $FC
    xor b                                         ; $4B93: $A8
    ld c, c                                       ; $4B94: $49
    ld [bc], a                                    ; $4B95: $02
    rst $38                                       ; $4B96: $FF
    db $FD                                        ; $4B97: $FD
    inc e                                         ; $4B98: $1C
    ld c, d                                       ; $4B99: $4A
    ld [bc], a                                    ; $4B9A: $02
    rst $38                                       ; $4B9B: $FF
    cp $A8                                        ; $4B9C: $FE $A8
    ld c, c                                       ; $4B9E: $49
    ld [bc], a                                    ; $4B9F: $02
    rst $38                                       ; $4BA0: $FF
    rst $38                                       ; $4BA1: $FF
    inc e                                         ; $4BA2: $1C
    ld c, d                                       ; $4BA3: $4A
    ld [bc], a                                    ; $4BA4: $02
    rst $38                                       ; $4BA5: $FF
    nop                                           ; $4BA6: $00
    xor b                                         ; $4BA7: $A8
    ld c, c                                       ; $4BA8: $49
    ld [bc], a                                    ; $4BA9: $02
    rst $38                                       ; $4BAA: $FF
    ld bc, $4A1C                                  ; $4BAB: $01 $1C $4A
    ld [bc], a                                    ; $4BAE: $02
    rst $38                                       ; $4BAF: $FF
    ld [bc], a                                    ; $4BB0: $02
    xor b                                         ; $4BB1: $A8
    ld c, c                                       ; $4BB2: $49
    ld [bc], a                                    ; $4BB3: $02
    rst $38                                       ; $4BB4: $FF
    inc bc                                        ; $4BB5: $03
    inc e                                         ; $4BB6: $1C
    ld c, d                                       ; $4BB7: $4A
    ld [bc], a                                    ; $4BB8: $02
    rst $38                                       ; $4BB9: $FF
    inc b                                         ; $4BBA: $04
    xor b                                         ; $4BBB: $A8
    ld c, c                                       ; $4BBC: $49
    ld bc, $FCFF                                  ; $4BBD: $01 $FF $FC
    xor b                                         ; $4BC0: $A8
    ld c, c                                       ; $4BC1: $49
    ld bc, $FDFF                                  ; $4BC2: $01 $FF $FD
    xor b                                         ; $4BC5: $A8
    ld c, c                                       ; $4BC6: $49
    ld bc, $FEFF                                  ; $4BC7: $01 $FF $FE
    inc e                                         ; $4BCA: $1C
    ld c, d                                       ; $4BCB: $4A
    ld bc, $FFFF                                  ; $4BCC: $01 $FF $FF
    inc e                                         ; $4BCF: $1C
    ld c, d                                       ; $4BD0: $4A
    ld bc, $00FF                                  ; $4BD1: $01 $FF $00
    xor b                                         ; $4BD4: $A8
    ld c, c                                       ; $4BD5: $49
    ld bc, $01FF                                  ; $4BD6: $01 $FF $01
    xor b                                         ; $4BD9: $A8
    ld c, c                                       ; $4BDA: $49
    ld bc, $02FF                                  ; $4BDB: $01 $FF $02
    inc e                                         ; $4BDE: $1C
    ld c, d                                       ; $4BDF: $4A
    ld bc, $03FF                                  ; $4BE0: $01 $FF $03
    inc e                                         ; $4BE3: $1C
    ld c, d                                       ; $4BE4: $4A
    ld bc, $04FF                                  ; $4BE5: $01 $FF $04
    xor b                                         ; $4BE8: $A8
    ld c, c                                       ; $4BE9: $49
    ld bc, $FFFF                                  ; $4BEA: $01 $FF $FF
    xor b                                         ; $4BED: $A8
    ld c, c                                       ; $4BEE: $49
    ld bc, $00FF                                  ; $4BEF: $01 $FF $00
    inc e                                         ; $4BF2: $1C
    ld c, d                                       ; $4BF3: $4A
    ld bc, $01FF                                  ; $4BF4: $01 $FF $01
    inc e                                         ; $4BF7: $1C
    ld c, d                                       ; $4BF8: $4A
    nop                                           ; $4BF9: $00
    ld c, h                                       ; $4BFA: $4C
    rst $38                                       ; $4BFB: $FF
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    xor b                                         ; $4BFE: $A8
    ld c, c                                       ; $4BFF: $49
    nop                                           ; $4C00: $00
    ld b, [hl]                                    ; $4C01: $46
    ld a, [$4B4B]                                 ; $4C02: $FA $4B $4B
    inc bc                                        ; $4C05: $03
    stop                                          ; $4C06: $10 $00
    nop                                           ; $4C08: $00
    dec de                                        ; $4C09: $1B
    ld c, h                                       ; $4C0A: $4C
    db $10                                        ; $4C0B: $10
    inc bc                                        ; $4C0C: $03
    nop                                           ; $4C0D: $00
    ld [hl+], a                                   ; $4C0E: $22
    ld c, h                                       ; $4C0F: $4C
    db $10                                        ; $4C10: $10
    ld [bc], a                                    ; $4C11: $02
    nop                                           ; $4C12: $00
    jr nc, jr_010_4C61                            ; $4C13: $30 $4C

    db $10                                        ; $4C15: $10
    ld bc, $2900                                  ; $4C16: $01 $00 $29
    ld c, h                                       ; $4C19: $4C
    rst $38                                       ; $4C1A: $FF
    inc d                                         ; $4C1B: $14
    db $10                                        ; $4C1C: $10
    cp l                                          ; $4C1D: $BD
    ld c, d                                       ; $4C1E: $4A
    ld h, d                                       ; $4C1F: $62
    ld bc, $1412                                  ; $4C20: $01 $12 $14
    db $10                                        ; $4C23: $10
    rst $00                                       ; $4C24: $C7
    ld c, d                                       ; $4C25: $4A
    ld h, d                                       ; $4C26: $62
    ld bc, $1412                                  ; $4C27: $01 $12 $14
    db $10                                        ; $4C2A: $10
    pop de                                        ; $4C2B: $D1
    ld c, d                                       ; $4C2C: $4A
    ld h, d                                       ; $4C2D: $62
    ld bc, $1412                                  ; $4C2E: $01 $12 $14
    db $10                                        ; $4C31: $10
    db $DB                                        ; $4C32: $DB
    ld c, d                                       ; $4C33: $4A
    ld h, d                                       ; $4C34: $62
    ld bc, $F012                                  ; $4C35: $01 $12 $F0
    ld hl, sp+$00                                 ; $4C38: $F8 $00
    rlca                                          ; $4C3A: $07
    ldh a, [rP1]                                  ; $4C3B: $F0 $00
    ld bc, $F807                                  ; $4C3D: $01 $07 $F8
    ld hl, sp+$08                                 ; $4C40: $F8 $08
    rlca                                          ; $4C42: $07
    ld hl, sp+$00                                 ; $4C43: $F8 $00
    add hl, bc                                    ; $4C45: $09
    rlca                                          ; $4C46: $07
    nop                                           ; $4C47: $00
    ld hl, sp+$16                                 ; $4C48: $F8 $16
    ld [bc], a                                    ; $4C4A: $02
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    rla                                           ; $4C4D: $17
    ld [bc], a                                    ; $4C4E: $02
    add b                                         ; $4C4F: $80
    ldh a, [rP1]                                  ; $4C50: $F0 $00

Jump_010_4C52:
    nop                                           ; $4C52: $00
    daa                                           ; $4C53: $27
    ldh a, [$F8]                                  ; $4C54: $F0 $F8
    ld bc, $F827                                  ; $4C56: $01 $27 $F8

Call_010_4C59:
    nop                                           ; $4C59: $00
    ld [$F827], sp                                ; $4C5A: $08 $27 $F8
    ld hl, sp+$09                                 ; $4C5D: $F8 $09
    daa                                           ; $4C5F: $27
    nop                                           ; $4C60: $00

jr_010_4C61:
    nop                                           ; $4C61: $00
    ld d, $22                                     ; $4C62: $16 $22
    nop                                           ; $4C64: $00
    ld hl, sp+$17                                 ; $4C65: $F8 $17
    ld [hl+], a                                   ; $4C67: $22

Call_010_4C68:
    add b                                         ; $4C68: $80
    ldh a, [$F8]                                  ; $4C69: $F0 $F8
    ld b, $07                                     ; $4C6B: $06 $07

Call_010_4C6D:
Jump_010_4C6D:
    ldh a, [rP1]                                  ; $4C6D: $F0 $00
    rlca                                          ; $4C6F: $07
    rlca                                          ; $4C70: $07
    ld hl, sp-$08                                 ; $4C71: $F8 $F8
    inc c                                         ; $4C73: $0C
    rlca                                          ; $4C74: $07
    ld hl, sp+$00                                 ; $4C75: $F8 $00
    dec c                                         ; $4C77: $0D
    rlca                                          ; $4C78: $07

Call_010_4C79:
    nop                                           ; $4C79: $00
    ld hl, sp+$1A                                 ; $4C7A: $F8 $1A
    ld [bc], a                                    ; $4C7C: $02
    nop                                           ; $4C7D: $00

Jump_010_4C7E:
    nop                                           ; $4C7E: $00
    dec de                                        ; $4C7F: $1B
    ld [bc], a                                    ; $4C80: $02
    add b                                         ; $4C81: $80
    ldh a, [rP1]                                  ; $4C82: $F0 $00
    ld b, $27                                     ; $4C84: $06 $27
    ldh a, [$F8]                                  ; $4C86: $F0 $F8
    rlca                                          ; $4C88: $07
    daa                                           ; $4C89: $27
    ld hl, sp+$00                                 ; $4C8A: $F8 $00
    inc c                                         ; $4C8C: $0C
    daa                                           ; $4C8D: $27
    ld hl, sp-$08                                 ; $4C8E: $F8 $F8
    dec c                                         ; $4C90: $0D
    daa                                           ; $4C91: $27
    nop                                           ; $4C92: $00
    nop                                           ; $4C93: $00
    ld a, [de]                                    ; $4C94: $1A
    ld [hl+], a                                   ; $4C95: $22
    nop                                           ; $4C96: $00
    ld hl, sp+$1B                                 ; $4C97: $F8 $1B
    ld [hl+], a                                   ; $4C99: $22
    add b                                         ; $4C9A: $80
    pop af                                        ; $4C9B: $F1
    ld hl, sp+$02                                 ; $4C9C: $F8 $02
    rlca                                          ; $4C9E: $07
    pop af                                        ; $4C9F: $F1
    nop                                           ; $4CA0: $00
    inc bc                                        ; $4CA1: $03
    rlca                                          ; $4CA2: $07
    ld hl, sp-$08                                 ; $4CA3: $F8 $F8
    ld c, $07                                     ; $4CA5: $0E $07
    ld hl, sp+$00                                 ; $4CA7: $F8 $00
    rrca                                          ; $4CA9: $0F
    rlca                                          ; $4CAA: $07
    nop                                           ; $4CAB: $00
    db $FC                                        ; $4CAC: $FC
    inc e                                         ; $4CAD: $1C
    ld [bc], a                                    ; $4CAE: $02
    add b                                         ; $4CAF: $80
    ldh a, [$F8]                                  ; $4CB0: $F0 $F8
    ld [bc], a                                    ; $4CB2: $02
    rlca                                          ; $4CB3: $07
    ldh a, [rP1]                                  ; $4CB4: $F0 $00
    inc bc                                        ; $4CB6: $03
    rlca                                          ; $4CB7: $07
    ld hl, sp-$08                                 ; $4CB8: $F8 $F8
    ld a, [bc]                                    ; $4CBA: $0A
    daa                                           ; $4CBB: $27
    ld hl, sp+$00                                 ; $4CBC: $F8 $00
    ld a, [bc]                                    ; $4CBE: $0A
    rlca                                          ; $4CBF: $07
    nop                                           ; $4CC0: $00
    ld hl, sp+$18                                 ; $4CC1: $F8 $18
    ld [hl+], a                                   ; $4CC3: $22
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    jr jr_010_4CCA                                ; $4CC6: $18 $02

    add b                                         ; $4CC8: $80
    pop af                                        ; $4CC9: $F1

jr_010_4CCA:
    ld hl, sp+$02                                 ; $4CCA: $F8 $02
    rlca                                          ; $4CCC: $07
    pop af                                        ; $4CCD: $F1
    nop                                           ; $4CCE: $00
    inc bc                                        ; $4CCF: $03
    rlca                                          ; $4CD0: $07
    ld hl, sp+$00                                 ; $4CD1: $F8 $00
    ld c, $27                                     ; $4CD3: $0E $27
    ld hl, sp-$08                                 ; $4CD5: $F8 $F8
    rrca                                          ; $4CD7: $0F
    daa                                           ; $4CD8: $27
    nop                                           ; $4CD9: $00
    db $FC                                        ; $4CDA: $FC
    inc e                                         ; $4CDB: $1C
    ld [hl+], a                                   ; $4CDC: $22
    add b                                         ; $4CDD: $80
    pop af                                        ; $4CDE: $F1
    ld hl, sp+$04                                 ; $4CDF: $F8 $04
    rlca                                          ; $4CE1: $07
    pop af                                        ; $4CE2: $F1
    nop                                           ; $4CE3: $00
    dec b                                         ; $4CE4: $05
    rlca                                          ; $4CE5: $07
    ld hl, sp-$08                                 ; $4CE6: $F8 $F8
    db $10                                        ; $4CE8: $10
    rlca                                          ; $4CE9: $07
    ld hl, sp+$00                                 ; $4CEA: $F8 $00
    ld de, $0007                                  ; $4CEC: $11 $07 $00
    ld hl, sp+$1D                                 ; $4CEF: $F8 $1D
    ld [bc], a                                    ; $4CF1: $02
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    ld e, $02                                     ; $4CF4: $1E $02
    add b                                         ; $4CF6: $80
    ldh a, [$F8]                                  ; $4CF7: $F0 $F8
    inc b                                         ; $4CF9: $04
    rlca                                          ; $4CFA: $07
    ldh a, [rP1]                                  ; $4CFB: $F0 $00
    dec b                                         ; $4CFD: $05
    rlca                                          ; $4CFE: $07
    ld hl, sp-$08                                 ; $4CFF: $F8 $F8
    dec bc                                        ; $4D01: $0B
    daa                                           ; $4D02: $27
    ld hl, sp+$00                                 ; $4D03: $F8 $00
    dec bc                                        ; $4D05: $0B
    rlca                                          ; $4D06: $07
    nop                                           ; $4D07: $00
    ld hl, sp+$19                                 ; $4D08: $F8 $19
    ld [hl+], a                                   ; $4D0A: $22
    nop                                           ; $4D0B: $00
    nop                                           ; $4D0C: $00
    add hl, de                                    ; $4D0D: $19
    ld [bc], a                                    ; $4D0E: $02
    add b                                         ; $4D0F: $80
    pop af                                        ; $4D10: $F1
    ld hl, sp+$04                                 ; $4D11: $F8 $04
    rlca                                          ; $4D13: $07
    pop af                                        ; $4D14: $F1
    nop                                           ; $4D15: $00
    dec b                                         ; $4D16: $05
    rlca                                          ; $4D17: $07
    ld hl, sp+$00                                 ; $4D18: $F8 $00
    db $10                                        ; $4D1A: $10
    daa                                           ; $4D1B: $27
    ld hl, sp-$08                                 ; $4D1C: $F8 $F8
    ld de, $0027                                  ; $4D1E: $11 $27 $00
    nop                                           ; $4D21: $00
    dec e                                         ; $4D22: $1D
    ld [hl+], a                                   ; $4D23: $22
    nop                                           ; $4D24: $00
    ld hl, sp+$1E                                 ; $4D25: $F8 $1E
    ld [hl+], a                                   ; $4D27: $22
    add b                                         ; $4D28: $80
    pop af                                        ; $4D29: $F1
    ld hl, sp+$1F                                 ; $4D2A: $F8 $1F
    rlca                                          ; $4D2C: $07
    pop af                                        ; $4D2D: $F1
    nop                                           ; $4D2E: $00
    jr nz, jr_010_4D38                            ; $4D2F: $20 $07

    ld hl, sp-$08                                 ; $4D31: $F8 $F8
    ld hl, $F807                                  ; $4D33: $21 $07 $F8
    nop                                           ; $4D36: $00
    ld [hl+], a                                   ; $4D37: $22

jr_010_4D38:
    rlca                                          ; $4D38: $07
    nop                                           ; $4D39: $00
    ld hl, sp+$27                                 ; $4D3A: $F8 $27
    ld [bc], a                                    ; $4D3C: $02
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    jr z, @+$04                                   ; $4D3F: $28 $02

    add b                                         ; $4D41: $80
    ldh a, [$F8]                                  ; $4D42: $F0 $F8
    rra                                           ; $4D44: $1F
    rlca                                          ; $4D45: $07
    ldh a, [rP1]                                  ; $4D46: $F0 $00
    jr nz, jr_010_4D51                            ; $4D48: $20 $07

    ld hl, sp-$08                                 ; $4D4A: $F8 $F8
    inc hl                                        ; $4D4C: $23
    rlca                                          ; $4D4D: $07
    ld hl, sp+$00                                 ; $4D4E: $F8 $00
    inc h                                         ; $4D50: $24

jr_010_4D51:
    rlca                                          ; $4D51: $07

Jump_010_4D52:
    nop                                           ; $4D52: $00
    ld hl, sp+$29                                 ; $4D53: $F8 $29
    ld [bc], a                                    ; $4D55: $02
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    ld a, [hl+]                                   ; $4D58: $2A
    ld [bc], a                                    ; $4D59: $02
    add b                                         ; $4D5A: $80
    pop af                                        ; $4D5B: $F1
    ld hl, sp+$1F                                 ; $4D5C: $F8 $1F
    rlca                                          ; $4D5E: $07
    pop af                                        ; $4D5F: $F1

Jump_010_4D60:
    nop                                           ; $4D60: $00
    jr nz, @+$09                                  ; $4D61: $20 $07

    ld hl, sp-$08                                 ; $4D63: $F8 $F8
    dec h                                         ; $4D65: $25
    rlca                                          ; $4D66: $07
    ld hl, sp+$00                                 ; $4D67: $F8 $00
    ld h, $07                                     ; $4D69: $26 $07
    nop                                           ; $4D6B: $00
    ld hl, sp+$2B                                 ; $4D6C: $F8 $2B
    ld [bc], a                                    ; $4D6E: $02
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    inc l                                         ; $4D71: $2C
    ld [bc], a                                    ; $4D72: $02
    add b                                         ; $4D73: $80
    pop af                                        ; $4D74: $F1
    nop                                           ; $4D75: $00
    rra                                           ; $4D76: $1F
    daa                                           ; $4D77: $27
    pop af                                        ; $4D78: $F1
    ld hl, sp+$20                                 ; $4D79: $F8 $20
    daa                                           ; $4D7B: $27
    ld hl, sp+$00                                 ; $4D7C: $F8 $00
    ld hl, $F827                                  ; $4D7E: $21 $27 $F8
    ld hl, sp+$22                                 ; $4D81: $F8 $22
    daa                                           ; $4D83: $27
    nop                                           ; $4D84: $00
    nop                                           ; $4D85: $00
    daa                                           ; $4D86: $27
    ld [hl+], a                                   ; $4D87: $22
    nop                                           ; $4D88: $00
    ld hl, sp+$28                                 ; $4D89: $F8 $28
    ld [hl+], a                                   ; $4D8B: $22
    add b                                         ; $4D8C: $80
    ldh a, [rP1]                                  ; $4D8D: $F0 $00
    rra                                           ; $4D8F: $1F
    daa                                           ; $4D90: $27
    ldh a, [$F8]                                  ; $4D91: $F0 $F8
    jr nz, @+$29                                  ; $4D93: $20 $27

    ld hl, sp+$00                                 ; $4D95: $F8 $00
    inc hl                                        ; $4D97: $23
    daa                                           ; $4D98: $27
    ld hl, sp-$08                                 ; $4D99: $F8 $F8
    inc h                                         ; $4D9B: $24
    daa                                           ; $4D9C: $27
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    add hl, hl                                    ; $4D9F: $29
    ld [hl+], a                                   ; $4DA0: $22
    nop                                           ; $4DA1: $00
    ld hl, sp+$2A                                 ; $4DA2: $F8 $2A
    ld [hl+], a                                   ; $4DA4: $22
    add b                                         ; $4DA5: $80
    pop af                                        ; $4DA6: $F1
    nop                                           ; $4DA7: $00
    rra                                           ; $4DA8: $1F
    daa                                           ; $4DA9: $27
    pop af                                        ; $4DAA: $F1
    ld hl, sp+$20                                 ; $4DAB: $F8 $20
    daa                                           ; $4DAD: $27
    ld hl, sp+$00                                 ; $4DAE: $F8 $00
    dec h                                         ; $4DB0: $25
    daa                                           ; $4DB1: $27
    ld hl, sp-$08                                 ; $4DB2: $F8 $F8
    ld h, $27                                     ; $4DB4: $26 $27
    nop                                           ; $4DB6: $00
    nop                                           ; $4DB7: $00
    dec hl                                        ; $4DB8: $2B
    ld [hl+], a                                   ; $4DB9: $22
    nop                                           ; $4DBA: $00
    ld hl, sp+$2C                                 ; $4DBB: $F8 $2C
    ld [hl+], a                                   ; $4DBD: $22
    add b                                         ; $4DBE: $80
    ldh a, [$F8]                                  ; $4DBF: $F0 $F8
    inc c                                         ; $4DC1: $0C
    daa                                           ; $4DC2: $27
    ldh a, [rP1]                                  ; $4DC3: $F0 $00
    inc c                                         ; $4DC5: $0C
    rlca                                          ; $4DC6: $07
    nop                                           ; $4DC7: $00
    ld sp, hl                                     ; $4DC8: $F9
    ld c, $22                                     ; $4DC9: $0E $22
    nop                                           ; $4DCB: $00
    nop                                           ; $4DCC: $00
    ld c, $02                                     ; $4DCD: $0E $02
    ld hl, sp-$08                                 ; $4DCF: $F8 $F8
    dec c                                         ; $4DD1: $0D
    daa                                           ; $4DD2: $27
    ld hl, sp+$00                                 ; $4DD3: $F8 $00
    dec c                                         ; $4DD5: $0D
    rlca                                          ; $4DD6: $07
    add b                                         ; $4DD7: $80
    ld hl, sp+$00                                 ; $4DD8: $F8 $00
    ld a, [bc]                                    ; $4DDA: $0A
    rlca                                          ; $4DDB: $07
    ldh a, [$F8]                                  ; $4DDC: $F0 $F8
    ld [$F027], sp                                ; $4DDE: $08 $27 $F0
    nop                                           ; $4DE1: $00
    ld [$0007], sp                                ; $4DE2: $08 $07 $00
    ld sp, hl                                     ; $4DE5: $F9
    dec bc                                        ; $4DE6: $0B
    ld [hl+], a                                   ; $4DE7: $22
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00
    dec bc                                        ; $4DEA: $0B
    ld [bc], a                                    ; $4DEB: $02
    ld hl, sp-$08                                 ; $4DEC: $F8 $F8
    add hl, bc                                    ; $4DEE: $09
    rlca                                          ; $4DEF: $07
    add b                                         ; $4DF0: $80
    ldh a, [rP1]                                  ; $4DF1: $F0 $00
    dec d                                         ; $4DF3: $15
    rlca                                          ; $4DF4: $07
    db $F4                                        ; $4DF5: $F4
    ld [$001B], sp                                ; $4DF6: $08 $1B $00
    ldh a, [$F8]                                  ; $4DF9: $F0 $F8
    inc c                                         ; $4DFB: $0C
    daa                                           ; $4DFC: $27
    ld hl, sp+$00                                 ; $4DFD: $F8 $00
    rla                                           ; $4DFF: $17
    rlca                                          ; $4E00: $07
    ld hl, sp-$08                                 ; $4E01: $F8 $F8
    ld d, $07                                     ; $4E03: $16 $07
    nop                                           ; $4E05: $00
    ld sp, hl                                     ; $4E06: $F9
    dec bc                                        ; $4E07: $0B
    ld [hl+], a                                   ; $4E08: $22
    nop                                           ; $4E09: $00
    nop                                           ; $4E0A: $00
    dec bc                                        ; $4E0B: $0B
    ld [bc], a                                    ; $4E0C: $02
    add b                                         ; $4E0D: $80
    ldh a, [$F8]                                  ; $4E0E: $F0 $F8
    jr jr_010_4E19                                ; $4E10: $18 $07

    ld hl, sp+$00                                 ; $4E12: $F8 $00
    ld a, [de]                                    ; $4E14: $1A
    rlca                                          ; $4E15: $07
    ld hl, sp-$08                                 ; $4E16: $F8 $F8
    add hl, de                                    ; $4E18: $19

jr_010_4E19:
    rlca                                          ; $4E19: $07
    db $F4                                        ; $4E1A: $F4
    ldh a, [rNR31]                                ; $4E1B: $F0 $1B
    jr nz, @-$0E                                  ; $4E1D: $20 $F0

    nop                                           ; $4E1F: $00
    inc c                                         ; $4E20: $0C
    rlca                                          ; $4E21: $07
    nop                                           ; $4E22: $00
    ld sp, hl                                     ; $4E23: $F9
    dec bc                                        ; $4E24: $0B
    ld [hl+], a                                   ; $4E25: $22
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    dec bc                                        ; $4E28: $0B
    ld [bc], a                                    ; $4E29: $02
    add b                                         ; $4E2A: $80
    inc b                                         ; $4E2B: $04
    nop                                           ; $4E2C: $00
    inc d                                         ; $4E2D: $14
    ld [bc], a                                    ; $4E2E: $02
    inc b                                         ; $4E2F: $04
    ld hl, sp+$13                                 ; $4E30: $F8 $13
    ld [bc], a                                    ; $4E32: $02
    db $F4                                        ; $4E33: $F4
    ld hl, sp+$0F                                 ; $4E34: $F8 $0F
    rlca                                          ; $4E36: $07
    db $F4                                        ; $4E37: $F4
    nop                                           ; $4E38: $00
    db $10                                        ; $4E39: $10
    rlca                                          ; $4E3A: $07
    db $FC                                        ; $4E3B: $FC
    nop                                           ; $4E3C: $00
    ld [de], a                                    ; $4E3D: $12
    rlca                                          ; $4E3E: $07
    db $FC                                        ; $4E3F: $FC
    ld hl, sp+$11                                 ; $4E40: $F8 $11
    rlca                                          ; $4E42: $07
    add b                                         ; $4E43: $80
    nop                                           ; $4E44: $00
    nop                                           ; $4E45: $00
    dec b                                         ; $4E46: $05
    ld [bc], a                                    ; $4E47: $02
    nop                                           ; $4E48: $00
    ld hl, sp+$04                                 ; $4E49: $F8 $04
    ld [bc], a                                    ; $4E4B: $02
    ld hl, sp+$00                                 ; $4E4C: $F8 $00
    inc bc                                        ; $4E4E: $03
    rlca                                          ; $4E4F: $07
    ld hl, sp-$08                                 ; $4E50: $F8 $F8
    ld [bc], a                                    ; $4E52: $02
    rlca                                          ; $4E53: $07
    ldh a, [rP1]                                  ; $4E54: $F0 $00
    ld bc, $F007                                  ; $4E56: $01 $07 $F0
    ld hl, sp+$00                                 ; $4E59: $F8 $00
    rlca                                          ; $4E5B: $07
    add b                                         ; $4E5C: $80
    ld hl, sp+$05                                 ; $4E5D: $F8 $05
    ld b, $00                                     ; $4E5F: $06 $00
    nop                                           ; $4E61: $00
    nop                                           ; $4E62: $00
    dec b                                         ; $4E63: $05
    ld [bc], a                                    ; $4E64: $02
    nop                                           ; $4E65: $00
    ld hl, sp+$04                                 ; $4E66: $F8 $04
    ld [bc], a                                    ; $4E68: $02
    ld hl, sp+$00                                 ; $4E69: $F8 $00
    inc bc                                        ; $4E6B: $03
    rlca                                          ; $4E6C: $07
    ld hl, sp-$08                                 ; $4E6D: $F8 $F8
    ld [bc], a                                    ; $4E6F: $02
    rlca                                          ; $4E70: $07
    ldh a, [rP1]                                  ; $4E71: $F0 $00
    ld bc, $F007                                  ; $4E73: $01 $07 $F0
    ld hl, sp+$00                                 ; $4E76: $F8 $00
    rlca                                          ; $4E78: $07
    add b                                         ; $4E79: $80
    rst $30                                       ; $4E7A: $F7
    inc b                                         ; $4E7B: $04
    rlca                                          ; $4E7C: $07
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    dec b                                         ; $4E80: $05
    ld [bc], a                                    ; $4E81: $02
    nop                                           ; $4E82: $00
    ld hl, sp+$04                                 ; $4E83: $F8 $04
    ld [bc], a                                    ; $4E85: $02
    ld hl, sp+$00                                 ; $4E86: $F8 $00
    inc bc                                        ; $4E88: $03
    rlca                                          ; $4E89: $07
    ld hl, sp-$08                                 ; $4E8A: $F8 $F8
    ld [bc], a                                    ; $4E8C: $02
    rlca                                          ; $4E8D: $07
    ldh a, [rP1]                                  ; $4E8E: $F0 $00
    ld bc, $F007                                  ; $4E90: $01 $07 $F0
    ld hl, sp+$00                                 ; $4E93: $F8 $00
    rlca                                          ; $4E95: $07
    add b                                         ; $4E96: $80
    ld hl, sp+$00                                 ; $4E97: $F8 $00
    ld a, [bc]                                    ; $4E99: $0A
    rlca                                          ; $4E9A: $07
    ld hl, sp-$08                                 ; $4E9B: $F8 $F8
    ld a, [bc]                                    ; $4E9D: $0A
    daa                                           ; $4E9E: $27
    db $F4                                        ; $4E9F: $F4
    ldh a, [rNR31]                                ; $4EA0: $F0 $1B
    jr nz, @-$0E                                  ; $4EA2: $20 $F0

    ld hl, sp+$15                                 ; $4EA4: $F8 $15
    daa                                           ; $4EA6: $27
    ldh a, [rP1]                                  ; $4EA7: $F0 $00
    dec d                                         ; $4EA9: $15
    rlca                                          ; $4EAA: $07
    db $F4                                        ; $4EAB: $F4
    ld [$001B], sp                                ; $4EAC: $08 $1B $00
    nop                                           ; $4EAF: $00
    ld sp, hl                                     ; $4EB0: $F9
    dec bc                                        ; $4EB1: $0B
    ld [hl+], a                                   ; $4EB2: $22
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    dec bc                                        ; $4EB5: $0B
    ld [bc], a                                    ; $4EB6: $02
    add b                                         ; $4EB7: $80
    ld c, l                                       ; $4EB8: $4D
    ld [$0008], sp                                ; $4EB9: $08 $08 $00
    rst $38                                       ; $4EBC: $FF
    sbc $4C                                       ; $4EBD: $DE $4C
    rst $30                                       ; $4EBF: $F7
    ld c, h                                       ; $4EC0: $4C
    db $10                                        ; $4EC1: $10
    ld c, l                                       ; $4EC2: $4D
    rst $30                                       ; $4EC3: $F7
    ld c, h                                       ; $4EC4: $4C
    ld b, [hl]                                    ; $4EC5: $46
    cp b                                          ; $4EC6: $B8
    ld c, [hl]                                    ; $4EC7: $4E
    ld c, l                                       ; $4EC8: $4D
    ld [$0008], sp                                ; $4EC9: $08 $08 $00
    ld bc, $4C9B                                  ; $4ECC: $01 $9B $4C
    or b                                          ; $4ECF: $B0
    ld c, h                                       ; $4ED0: $4C
    ret                                           ; $4ED1: $C9


    ld c, h                                       ; $4ED2: $4C
    or b                                          ; $4ED3: $B0
    ld c, h                                       ; $4ED4: $4C
    ld b, [hl]                                    ; $4ED5: $46
    ret z                                         ; $4ED6: $C8

    ld c, [hl]                                    ; $4ED7: $4E
    ld c, l                                       ; $4ED8: $4D
    ld [$FF08], sp                                ; $4ED9: $08 $08 $FF
    nop                                           ; $4EDC: $00
    ld [hl], h                                    ; $4EDD: $74
    ld c, l                                       ; $4EDE: $4D
    adc l                                         ; $4EDF: $8D
    ld c, l                                       ; $4EE0: $4D
    and [hl]                                      ; $4EE1: $A6
    ld c, l                                       ; $4EE2: $4D
    adc l                                         ; $4EE3: $8D
    ld c, l                                       ; $4EE4: $4D
    ld b, [hl]                                    ; $4EE5: $46
    ret c                                         ; $4EE6: $D8

    ld c, [hl]                                    ; $4EE7: $4E
    ld c, l                                       ; $4EE8: $4D
    ld [$0108], sp                                ; $4EE9: $08 $08 $01
    nop                                           ; $4EEC: $00
    add hl, hl                                    ; $4EED: $29
    ld c, l                                       ; $4EEE: $4D
    ld b, d                                       ; $4EEF: $42
    ld c, l                                       ; $4EF0: $4D
    ld e, e                                       ; $4EF1: $5B
    ld c, l                                       ; $4EF2: $4D
    ld b, d                                       ; $4EF3: $42
    ld c, l                                       ; $4EF4: $4D
    ld b, [hl]                                    ; $4EF5: $46
    add sp, $4E                                   ; $4EF6: $E8 $4E
    ld c, l                                       ; $4EF8: $4D
    ld [$0008], sp                                ; $4EF9: $08 $08 $00
    cp $DE                                        ; $4EFC: $FE $DE
    ld c, h                                       ; $4EFE: $4C
    rst $30                                       ; $4EFF: $F7
    ld c, h                                       ; $4F00: $4C
    db $10                                        ; $4F01: $10
    ld c, l                                       ; $4F02: $4D
    rst $30                                       ; $4F03: $F7
    ld c, h                                       ; $4F04: $4C
    ld b, [hl]                                    ; $4F05: $46
    ld hl, sp+$4E                                 ; $4F06: $F8 $4E
    ld c, l                                       ; $4F08: $4D
    ld [$0008], sp                                ; $4F09: $08 $08 $00
    ld [bc], a                                    ; $4F0C: $02
    sbc e                                         ; $4F0D: $9B
    ld c, h                                       ; $4F0E: $4C
    or b                                          ; $4F0F: $B0
    ld c, h                                       ; $4F10: $4C
    ret                                           ; $4F11: $C9


    ld c, h                                       ; $4F12: $4C
    or b                                          ; $4F13: $B0
    ld c, h                                       ; $4F14: $4C
    ld b, [hl]                                    ; $4F15: $46
    ld [$4D4F], sp                                ; $4F16: $08 $4F $4D
    ld [$FE08], sp                                ; $4F19: $08 $08 $FE
    nop                                           ; $4F1C: $00
    ld [hl], h                                    ; $4F1D: $74
    ld c, l                                       ; $4F1E: $4D
    adc l                                         ; $4F1F: $8D
    ld c, l                                       ; $4F20: $4D
    and [hl]                                      ; $4F21: $A6
    ld c, l                                       ; $4F22: $4D
    adc l                                         ; $4F23: $8D
    ld c, l                                       ; $4F24: $4D
    ld b, [hl]                                    ; $4F25: $46
    jr jr_010_4F77                                ; $4F26: $18 $4F

    ld c, l                                       ; $4F28: $4D
    ld [$0208], sp                                ; $4F29: $08 $08 $02
    nop                                           ; $4F2C: $00
    add hl, hl                                    ; $4F2D: $29
    ld c, l                                       ; $4F2E: $4D
    ld b, d                                       ; $4F2F: $42
    ld c, l                                       ; $4F30: $4D
    ld e, e                                       ; $4F31: $5B
    ld c, l                                       ; $4F32: $4D
    ld b, d                                       ; $4F33: $42
    ld c, l                                       ; $4F34: $4D
    ld b, [hl]                                    ; $4F35: $46
    jr z, jr_010_4F87                             ; $4F36: $28 $4F

    ld c, h                                       ; $4F38: $4C
    rst $38                                       ; $4F39: $FF
    nop                                           ; $4F3A: $00
    nop                                           ; $4F3B: $00
    rst $30                                       ; $4F3C: $F7
    ld c, h                                       ; $4F3D: $4C
    nop                                           ; $4F3E: $00
    ld b, [hl]                                    ; $4F3F: $46
    jr c, jr_010_4F91                             ; $4F40: $38 $4F

    ld c, h                                       ; $4F42: $4C
    rst $38                                       ; $4F43: $FF
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    or b                                          ; $4F46: $B0
    ld c, h                                       ; $4F47: $4C
    nop                                           ; $4F48: $00
    ld b, [hl]                                    ; $4F49: $46
    ld b, d                                       ; $4F4A: $42
    ld c, a                                       ; $4F4B: $4F
    ld c, h                                       ; $4F4C: $4C
    rst $38                                       ; $4F4D: $FF
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    adc l                                         ; $4F50: $8D
    ld c, l                                       ; $4F51: $4D
    nop                                           ; $4F52: $00
    ld b, [hl]                                    ; $4F53: $46
    ld c, h                                       ; $4F54: $4C
    ld c, a                                       ; $4F55: $4F
    ld c, h                                       ; $4F56: $4C
    rst $38                                       ; $4F57: $FF
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    ld b, d                                       ; $4F5A: $42
    ld c, l                                       ; $4F5B: $4D
    nop                                           ; $4F5C: $00
    ld b, [hl]                                    ; $4F5D: $46
    ld d, [hl]                                    ; $4F5E: $56
    ld c, a                                       ; $4F5F: $4F
    ld c, h                                       ; $4F60: $4C
    rst $38                                       ; $4F61: $FF
    nop                                           ; $4F62: $00
    nop                                           ; $4F63: $00
    add d                                         ; $4F64: $82
    ld c, h                                       ; $4F65: $4C
    nop                                           ; $4F66: $00
    ld b, [hl]                                    ; $4F67: $46
    ld h, b                                       ; $4F68: $60
    ld c, a                                       ; $4F69: $4F
    ld c, h                                       ; $4F6A: $4C
    rst $38                                       ; $4F6B: $FF
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    ld l, c                                       ; $4F6E: $69
    ld c, h                                       ; $4F6F: $4C
    nop                                           ; $4F70: $00
    ld b, [hl]                                    ; $4F71: $46
    ld l, d                                       ; $4F72: $6A
    ld c, a                                       ; $4F73: $4F
    ld c, h                                       ; $4F74: $4C
    rst $38                                       ; $4F75: $FF
    nop                                           ; $4F76: $00

jr_010_4F77:
    nop                                           ; $4F77: $00
    ld d, b                                       ; $4F78: $50
    ld c, h                                       ; $4F79: $4C
    nop                                           ; $4F7A: $00
    ld b, [hl]                                    ; $4F7B: $46
    ld [hl], h                                    ; $4F7C: $74
    ld c, a                                       ; $4F7D: $4F
    ld c, h                                       ; $4F7E: $4C
    rst $38                                       ; $4F7F: $FF
    nop                                           ; $4F80: $00
    nop                                           ; $4F81: $00
    scf                                           ; $4F82: $37
    ld c, h                                       ; $4F83: $4C
    nop                                           ; $4F84: $00
    ld b, [hl]                                    ; $4F85: $46
    ld a, [hl]                                    ; $4F86: $7E

jr_010_4F87:
    ld c, a                                       ; $4F87: $4F
    ld c, h                                       ; $4F88: $4C
    rst $38                                       ; $4F89: $FF
    nop                                           ; $4F8A: $00
    nop                                           ; $4F8B: $00
    cp a                                          ; $4F8C: $BF
    ld c, l                                       ; $4F8D: $4D
    nop                                           ; $4F8E: $00
    ld b, [hl]                                    ; $4F8F: $46
    adc b                                         ; $4F90: $88

jr_010_4F91:
    ld c, a                                       ; $4F91: $4F
    ld c, l                                       ; $4F92: $4D
    inc b                                         ; $4F93: $04
    inc b                                         ; $4F94: $04
    nop                                           ; $4F95: $00
    nop                                           ; $4F96: $00
    ret c                                         ; $4F97: $D8

    ld c, l                                       ; $4F98: $4D
    sub a                                         ; $4F99: $97
    ld c, [hl]                                    ; $4F9A: $4E
    ld b, [hl]                                    ; $4F9B: $46
    sub d                                         ; $4F9C: $92
    ld c, a                                       ; $4F9D: $4F
    ld c, l                                       ; $4F9E: $4D
    jr nz, jr_010_4FA5                            ; $4F9F: $20 $04

    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    ld b, h                                       ; $4FA3: $44
    ld c, [hl]                                    ; $4FA4: $4E

jr_010_4FA5:
    ld e, l                                       ; $4FA5: $5D
    ld c, [hl]                                    ; $4FA6: $4E
    ld a, d                                       ; $4FA7: $7A
    ld c, [hl]                                    ; $4FA8: $4E
    ld e, l                                       ; $4FA9: $5D
    ld c, [hl]                                    ; $4FAA: $4E
    ld b, h                                       ; $4FAB: $44
    ld c, [hl]                                    ; $4FAC: $4E
    ld e, l                                       ; $4FAD: $5D
    ld c, [hl]                                    ; $4FAE: $4E
    ld a, d                                       ; $4FAF: $7A
    ld c, [hl]                                    ; $4FB0: $4E
    ld e, l                                       ; $4FB1: $5D
    ld c, [hl]                                    ; $4FB2: $4E
    ld b, h                                       ; $4FB3: $44
    ld c, [hl]                                    ; $4FB4: $4E
    ld e, l                                       ; $4FB5: $5D
    ld c, [hl]                                    ; $4FB6: $4E
    ld a, d                                       ; $4FB7: $7A
    ld c, [hl]                                    ; $4FB8: $4E
    ld e, l                                       ; $4FB9: $5D
    ld c, [hl]                                    ; $4FBA: $4E
    ld b, h                                       ; $4FBB: $44
    ld c, [hl]                                    ; $4FBC: $4E
    ld e, l                                       ; $4FBD: $5D
    ld c, [hl]                                    ; $4FBE: $4E
    ld a, d                                       ; $4FBF: $7A
    ld c, [hl]                                    ; $4FC0: $4E
    ld e, l                                       ; $4FC1: $5D
    ld c, [hl]                                    ; $4FC2: $4E
    ld b, [hl]                                    ; $4FC3: $46
    adc b                                         ; $4FC4: $88
    ld c, a                                       ; $4FC5: $4F
    ld c, l                                       ; $4FC6: $4D
    ld [$0008], sp                                ; $4FC7: $08 $08 $00
    nop                                           ; $4FCA: $00
    ret c                                         ; $4FCB: $D8

    ld c, l                                       ; $4FCC: $4D
    pop af                                        ; $4FCD: $F1
    ld c, l                                       ; $4FCE: $4D
    ret c                                         ; $4FCF: $D8

    ld c, l                                       ; $4FD0: $4D
    ld c, $4E                                     ; $4FD1: $0E $4E
    ld b, [hl]                                    ; $4FD3: $46
    add $4F                                       ; $4FD4: $C6 $4F
    ld c, h                                       ; $4FD6: $4C
    rst $38                                       ; $4FD7: $FF
    nop                                           ; $4FD8: $00
    nop                                           ; $4FD9: $00
    dec hl                                        ; $4FDA: $2B
    ld c, [hl]                                    ; $4FDB: $4E
    nop                                           ; $4FDC: $00
    ld b, [hl]                                    ; $4FDD: $46
    sub $4F                                       ; $4FDE: $D6 $4F
    ld c, e                                       ; $4FE0: $4B
    inc bc                                        ; $4FE1: $03
    stop                                          ; $4FE2: $10 $00
    nop                                           ; $4FE4: $00
    rst $30                                       ; $4FE5: $F7
    ld c, a                                       ; $4FE6: $4F
    db $10                                        ; $4FE7: $10
    inc bc                                        ; $4FE8: $03
    nop                                           ; $4FE9: $00
    cp $4F                                        ; $4FEA: $FE $4F
    db $10                                        ; $4FEC: $10
    ld [bc], a                                    ; $4FED: $02
    nop                                           ; $4FEE: $00
    inc c                                         ; $4FEF: $0C
    ld d, b                                       ; $4FF0: $50
    db $10                                        ; $4FF1: $10
    ld bc, $0500                                  ; $4FF2: $01 $00 $05
    ld d, b                                       ; $4FF5: $50
    rst $38                                       ; $4FF6: $FF
    inc d                                         ; $4FF7: $14
    db $10                                        ; $4FF8: $10
    jr c, @+$51                                   ; $4FF9: $38 $4F

    ld h, d                                       ; $4FFB: $62
    ld bc, $1412                                  ; $4FFC: $01 $12 $14
    db $10                                        ; $4FFF: $10
    ld b, d                                       ; $5000: $42
    ld c, a                                       ; $5001: $4F
    ld h, d                                       ; $5002: $62
    ld bc, $1412                                  ; $5003: $01 $12 $14
    db $10                                        ; $5006: $10
    ld c, h                                       ; $5007: $4C
    ld c, a                                       ; $5008: $4F
    ld h, d                                       ; $5009: $62
    ld bc, $1412                                  ; $500A: $01 $12 $14
    db $10                                        ; $500D: $10
    ld d, [hl]                                    ; $500E: $56
    ld c, a                                       ; $500F: $4F
    ld h, d                                       ; $5010: $62
    ld bc, $F012                                  ; $5011: $01 $12 $F0
    ld hl, sp+$00                                 ; $5014: $F8 $00
    rlca                                          ; $5016: $07
    ldh a, [rP1]                                  ; $5017: $F0 $00
    ld bc, $F807                                  ; $5019: $01 $07 $F8
    ld hl, sp+$06                                 ; $501C: $F8 $06
    rlca                                          ; $501E: $07
    ld hl, sp+$00                                 ; $501F: $F8 $00
    rlca                                          ; $5021: $07
    rlca                                          ; $5022: $07
    nop                                           ; $5023: $00
    ld hl, sp+$10                                 ; $5024: $F8 $10
    rlca                                          ; $5026: $07
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    ld de, $8007                                  ; $5029: $11 $07 $80
    ldh a, [rP1]                                  ; $502C: $F0 $00
    nop                                           ; $502E: $00
    daa                                           ; $502F: $27
    ldh a, [$F8]                                  ; $5030: $F0 $F8
    ld bc, $F827                                  ; $5032: $01 $27 $F8
    nop                                           ; $5035: $00
    ld b, $27                                     ; $5036: $06 $27
    ld hl, sp-$08                                 ; $5038: $F8 $F8
    rlca                                          ; $503A: $07
    daa                                           ; $503B: $27
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    db $10                                        ; $503E: $10
    daa                                           ; $503F: $27
    nop                                           ; $5040: $00
    ld hl, sp+$11                                 ; $5041: $F8 $11
    daa                                           ; $5043: $27
    add b                                         ; $5044: $80
    ldh a, [$F8]                                  ; $5045: $F0 $F8
    inc b                                         ; $5047: $04
    rlca                                          ; $5048: $07
    ldh a, [rP1]                                  ; $5049: $F0 $00
    dec b                                         ; $504B: $05
    rlca                                          ; $504C: $07
    ld hl, sp-$08                                 ; $504D: $F8 $F8
    ld a, [bc]                                    ; $504F: $0A
    rlca                                          ; $5050: $07
    ld hl, sp+$00                                 ; $5051: $F8 $00
    dec bc                                        ; $5053: $0B
    rlca                                          ; $5054: $07
    nop                                           ; $5055: $00
    ld hl, sp+$14                                 ; $5056: $F8 $14
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505A: $00
    dec d                                         ; $505B: $15
    rlca                                          ; $505C: $07
    add b                                         ; $505D: $80
    ldh a, [rP1]                                  ; $505E: $F0 $00
    inc b                                         ; $5060: $04
    daa                                           ; $5061: $27
    ldh a, [$F8]                                  ; $5062: $F0 $F8
    dec b                                         ; $5064: $05
    daa                                           ; $5065: $27
    ld hl, sp+$00                                 ; $5066: $F8 $00
    ld a, [bc]                                    ; $5068: $0A
    daa                                           ; $5069: $27
    ld hl, sp-$08                                 ; $506A: $F8 $F8
    dec bc                                        ; $506C: $0B
    daa                                           ; $506D: $27
    nop                                           ; $506E: $00
    nop                                           ; $506F: $00
    inc d                                         ; $5070: $14
    jr nz, jr_010_5073                            ; $5071: $20 $00

jr_010_5073:
    ld hl, sp+$15                                 ; $5073: $F8 $15
    daa                                           ; $5075: $27
    add b                                         ; $5076: $80
    pop af                                        ; $5077: $F1
    ld hl, sp+$02                                 ; $5078: $F8 $02
    daa                                           ; $507A: $27
    pop af                                        ; $507B: $F1
    nop                                           ; $507C: $00
    ld [bc], a                                    ; $507D: $02
    rlca                                          ; $507E: $07
    ld hl, sp-$08                                 ; $507F: $F8 $F8
    inc c                                         ; $5081: $0C
    rlca                                          ; $5082: $07
    ld hl, sp+$00                                 ; $5083: $F8 $00
    dec c                                         ; $5085: $0D
    rlca                                          ; $5086: $07
    nop                                           ; $5087: $00
    ld hl, sp+$16                                 ; $5088: $F8 $16
    rlca                                          ; $508A: $07
    nop                                           ; $508B: $00
    nop                                           ; $508C: $00

jr_010_508D:
    rla                                           ; $508D: $17
    rlca                                          ; $508E: $07
    add b                                         ; $508F: $80
    ldh a, [$F8]                                  ; $5090: $F0 $F8
    ld [bc], a                                    ; $5092: $02
    daa                                           ; $5093: $27
    ldh a, [rP1]                                  ; $5094: $F0 $00
    ld [bc], a                                    ; $5096: $02
    rlca                                          ; $5097: $07
    ld hl, sp-$08                                 ; $5098: $F8 $F8
    ld [$F827], sp                                ; $509A: $08 $27 $F8
    nop                                           ; $509D: $00
    ld [$0007], sp                                ; $509E: $08 $07 $00
    ld hl, sp+$12                                 ; $50A1: $F8 $12
    daa                                           ; $50A3: $27
    nop                                           ; $50A4: $00
    nop                                           ; $50A5: $00
    ld [de], a                                    ; $50A6: $12
    rlca                                          ; $50A7: $07
    add b                                         ; $50A8: $80
    pop af                                        ; $50A9: $F1
    ld hl, sp+$02                                 ; $50AA: $F8 $02
    daa                                           ; $50AC: $27
    pop af                                        ; $50AD: $F1
    nop                                           ; $50AE: $00
    ld [bc], a                                    ; $50AF: $02
    rlca                                          ; $50B0: $07
    ld hl, sp+$00                                 ; $50B1: $F8 $00
    inc c                                         ; $50B3: $0C
    daa                                           ; $50B4: $27
    ld hl, sp-$08                                 ; $50B5: $F8 $F8
    dec c                                         ; $50B7: $0D
    daa                                           ; $50B8: $27
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    ld d, $27                                     ; $50BB: $16 $27
    nop                                           ; $50BD: $00
    ld hl, sp+$17                                 ; $50BE: $F8 $17
    daa                                           ; $50C0: $27
    add b                                         ; $50C1: $80
    pop af                                        ; $50C2: $F1
    ld hl, sp+$03                                 ; $50C3: $F8 $03
    daa                                           ; $50C5: $27
    pop af                                        ; $50C6: $F1
    nop                                           ; $50C7: $00
    inc bc                                        ; $50C8: $03
    rlca                                          ; $50C9: $07
    ld hl, sp-$08                                 ; $50CA: $F8 $F8
    ld c, $07                                     ; $50CC: $0E $07
    ld hl, sp+$00                                 ; $50CE: $F8 $00
    rrca                                          ; $50D0: $0F
    rlca                                          ; $50D1: $07
    nop                                           ; $50D2: $00
    ld hl, sp+$18                                 ; $50D3: $F8 $18
    rlca                                          ; $50D5: $07
    nop                                           ; $50D6: $00
    nop                                           ; $50D7: $00
    add hl, de                                    ; $50D8: $19
    nop                                           ; $50D9: $00
    add b                                         ; $50DA: $80
    ldh a, [$F8]                                  ; $50DB: $F0 $F8
    inc bc                                        ; $50DD: $03
    daa                                           ; $50DE: $27
    ldh a, [rP1]                                  ; $50DF: $F0 $00
    inc bc                                        ; $50E1: $03
    rlca                                          ; $50E2: $07
    ld hl, sp-$08                                 ; $50E3: $F8 $F8
    add hl, bc                                    ; $50E5: $09
    daa                                           ; $50E6: $27
    ld hl, sp+$00                                 ; $50E7: $F8 $00
    add hl, bc                                    ; $50E9: $09
    rlca                                          ; $50EA: $07
    nop                                           ; $50EB: $00
    ld hl, sp+$13                                 ; $50EC: $F8 $13
    daa                                           ; $50EE: $27
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    inc de                                        ; $50F1: $13
    rlca                                          ; $50F2: $07
    add b                                         ; $50F3: $80
    pop af                                        ; $50F4: $F1
    ld hl, sp+$03                                 ; $50F5: $F8 $03
    daa                                           ; $50F7: $27
    pop af                                        ; $50F8: $F1
    nop                                           ; $50F9: $00
    inc bc                                        ; $50FA: $03
    rlca                                          ; $50FB: $07
    ld hl, sp+$00                                 ; $50FC: $F8 $00
    ld c, $27                                     ; $50FE: $0E $27
    ld hl, sp-$08                                 ; $5100: $F8 $F8
    rrca                                          ; $5102: $0F
    daa                                           ; $5103: $27
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    jr @+$29                                      ; $5106: $18 $27

    nop                                           ; $5108: $00
    ld hl, sp+$19                                 ; $5109: $F8 $19
    jr nz, jr_010_508D                            ; $510B: $20 $80

    pop af                                        ; $510D: $F1
    ld hl, sp+$1A                                 ; $510E: $F8 $1A
    rlca                                          ; $5110: $07
    pop af                                        ; $5111: $F1
    nop                                           ; $5112: $00
    dec de                                        ; $5113: $1B
    rlca                                          ; $5114: $07
    ld hl, sp-$08                                 ; $5115: $F8 $F8
    inc e                                         ; $5117: $1C
    rlca                                          ; $5118: $07
    ld hl, sp+$00                                 ; $5119: $F8 $00
    dec e                                         ; $511B: $1D
    rlca                                          ; $511C: $07
    nop                                           ; $511D: $00
    ld hl, sp+$22                                 ; $511E: $F8 $22
    rlca                                          ; $5120: $07
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    inc hl                                        ; $5123: $23
    rlca                                          ; $5124: $07
    add b                                         ; $5125: $80
    ldh a, [$F8]                                  ; $5126: $F0 $F8
    ld a, [de]                                    ; $5128: $1A
    rlca                                          ; $5129: $07
    ldh a, [rP1]                                  ; $512A: $F0 $00
    dec de                                        ; $512C: $1B
    rlca                                          ; $512D: $07
    ld hl, sp-$08                                 ; $512E: $F8 $F8
    ld e, $07                                     ; $5130: $1E $07
    ld hl, sp+$00                                 ; $5132: $F8 $00
    rra                                           ; $5134: $1F
    rlca                                          ; $5135: $07
    nop                                           ; $5136: $00
    ld hl, sp+$24                                 ; $5137: $F8 $24
    rlca                                          ; $5139: $07
    nop                                           ; $513A: $00
    nop                                           ; $513B: $00
    dec h                                         ; $513C: $25
    rlca                                          ; $513D: $07
    add b                                         ; $513E: $80
    pop af                                        ; $513F: $F1
    ld hl, sp+$1A                                 ; $5140: $F8 $1A
    rlca                                          ; $5142: $07
    pop af                                        ; $5143: $F1
    nop                                           ; $5144: $00
    dec de                                        ; $5145: $1B
    rlca                                          ; $5146: $07
    ld hl, sp-$08                                 ; $5147: $F8 $F8
    jr nz, jr_010_5152                            ; $5149: $20 $07

    ld hl, sp+$00                                 ; $514B: $F8 $00
    ld hl, $0007                                  ; $514D: $21 $07 $00
    ld hl, sp+$26                                 ; $5150: $F8 $26

jr_010_5152:
    rlca                                          ; $5152: $07
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    daa                                           ; $5155: $27
    rlca                                          ; $5156: $07
    add b                                         ; $5157: $80
    pop af                                        ; $5158: $F1
    nop                                           ; $5159: $00
    ld a, [de]                                    ; $515A: $1A
    daa                                           ; $515B: $27
    pop af                                        ; $515C: $F1
    ld hl, sp+$1B                                 ; $515D: $F8 $1B
    daa                                           ; $515F: $27
    ld hl, sp+$00                                 ; $5160: $F8 $00
    inc e                                         ; $5162: $1C
    daa                                           ; $5163: $27
    ld hl, sp-$08                                 ; $5164: $F8 $F8
    dec e                                         ; $5166: $1D
    daa                                           ; $5167: $27
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    ld [hl+], a                                   ; $516A: $22
    daa                                           ; $516B: $27
    nop                                           ; $516C: $00
    ld hl, sp+$23                                 ; $516D: $F8 $23
    daa                                           ; $516F: $27
    add b                                         ; $5170: $80
    ldh a, [rP1]                                  ; $5171: $F0 $00
    ld a, [de]                                    ; $5173: $1A
    daa                                           ; $5174: $27
    ldh a, [$F8]                                  ; $5175: $F0 $F8
    dec de                                        ; $5177: $1B
    daa                                           ; $5178: $27
    ld hl, sp+$00                                 ; $5179: $F8 $00
    ld e, $27                                     ; $517B: $1E $27
    ld hl, sp-$08                                 ; $517D: $F8 $F8
    rra                                           ; $517F: $1F
    daa                                           ; $5180: $27
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    inc h                                         ; $5183: $24
    daa                                           ; $5184: $27
    nop                                           ; $5185: $00
    ld hl, sp+$25                                 ; $5186: $F8 $25
    daa                                           ; $5188: $27
    add b                                         ; $5189: $80
    pop af                                        ; $518A: $F1
    nop                                           ; $518B: $00
    ld a, [de]                                    ; $518C: $1A
    daa                                           ; $518D: $27
    pop af                                        ; $518E: $F1
    ld hl, sp+$1B                                 ; $518F: $F8 $1B
    daa                                           ; $5191: $27
    ld hl, sp+$00                                 ; $5192: $F8 $00
    jr nz, jr_010_51BD                            ; $5194: $20 $27

    ld hl, sp-$08                                 ; $5196: $F8 $F8
    ld hl, $0027                                  ; $5198: $21 $27 $00
    nop                                           ; $519B: $00
    ld h, $27                                     ; $519C: $26 $27
    nop                                           ; $519E: $00
    ld hl, sp+$27                                 ; $519F: $F8 $27
    daa                                           ; $51A1: $27
    add b                                         ; $51A2: $80
    nop                                           ; $51A3: $00
    ld hl, sp+$12                                 ; $51A4: $F8 $12
    daa                                           ; $51A6: $27
    nop                                           ; $51A7: $00
    nop                                           ; $51A8: $00
    ld [de], a                                    ; $51A9: $12
    rlca                                          ; $51AA: $07
    ld hl, sp-$08                                 ; $51AB: $F8 $F8
    ld de, $F827                                  ; $51AD: $11 $27 $F8
    nop                                           ; $51B0: $00
    ld de, $F007                                  ; $51B1: $11 $07 $F0
    ld hl, sp+$10                                 ; $51B4: $F8 $10
    daa                                           ; $51B6: $27
    ldh a, [rP1]                                  ; $51B7: $F0 $00
    db $10                                        ; $51B9: $10
    rlca                                          ; $51BA: $07
    add b                                         ; $51BB: $80
    nop                                           ; $51BC: $00

jr_010_51BD:
    nop                                           ; $51BD: $00
    dec c                                         ; $51BE: $0D
    daa                                           ; $51BF: $27
    nop                                           ; $51C0: $00
    ld hl, sp+$0D                                 ; $51C1: $F8 $0D
    rlca                                          ; $51C3: $07
    ld hl, sp+$00                                 ; $51C4: $F8 $00
    inc c                                         ; $51C6: $0C
    daa                                           ; $51C7: $27
    ld hl, sp-$08                                 ; $51C8: $F8 $F8
    inc c                                         ; $51CA: $0C
    rlca                                          ; $51CB: $07
    ldh a, [rP1]                                  ; $51CC: $F0 $00
    dec bc                                        ; $51CE: $0B
    daa                                           ; $51CF: $27
    ldh a, [$F8]                                  ; $51D0: $F0 $F8
    dec bc                                        ; $51D2: $0B
    rlca                                          ; $51D3: $07
    add b                                         ; $51D4: $80
    ld a, [c]                                     ; $51D5: $F2
    ld [$0709], sp                                ; $51D6: $08 $09 $07
    ld a, [c]                                     ; $51D9: $F2
    nop                                           ; $51DA: $00
    ld [$FA07], sp                                ; $51DB: $08 $07 $FA
    ld hl, sp+$0A                                 ; $51DE: $F8 $0A
    nop                                           ; $51E0: $00
    ld a, [$0F08]                                 ; $51E1: $FA $08 $0F
    rlca                                          ; $51E4: $07
    ld a, [$0E00]                                 ; $51E5: $FA $00 $0E
    rlca                                          ; $51E8: $07
    ld [bc], a                                    ; $51E9: $02
    ld [$0715], sp                                ; $51EA: $08 $15 $07
    ld [bc], a                                    ; $51ED: $02
    nop                                           ; $51EE: $00
    inc d                                         ; $51EF: $14
    rlca                                          ; $51F0: $07
    ld [bc], a                                    ; $51F1: $02
    ld hl, sp+$13                                 ; $51F2: $F8 $13
    nop                                           ; $51F4: $00
    add b                                         ; $51F5: $80
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    dec b                                         ; $51F8: $05
    rlca                                          ; $51F9: $07
    nop                                           ; $51FA: $00
    ld hl, sp+$04                                 ; $51FB: $F8 $04
    rlca                                          ; $51FD: $07
    ld hl, sp+$00                                 ; $51FE: $F8 $00
    inc bc                                        ; $5200: $03
    rlca                                          ; $5201: $07
    ld hl, sp-$08                                 ; $5202: $F8 $F8
    ld [bc], a                                    ; $5204: $02
    rlca                                          ; $5205: $07
    ldh a, [rP1]                                  ; $5206: $F0 $00
    ld bc, $F007                                  ; $5208: $01 $07 $F0
    ld hl, sp+$00                                 ; $520B: $F8 $00
    rlca                                          ; $520D: $07
    add b                                         ; $520E: $80
    ld hl, sp+$06                                 ; $520F: $F8 $06
    ld b, $00                                     ; $5211: $06 $00
    nop                                           ; $5213: $00
    nop                                           ; $5214: $00
    dec b                                         ; $5215: $05
    rlca                                          ; $5216: $07
    nop                                           ; $5217: $00
    ld hl, sp+$04                                 ; $5218: $F8 $04
    rlca                                          ; $521A: $07
    ld hl, sp+$00                                 ; $521B: $F8 $00
    inc bc                                        ; $521D: $03
    rlca                                          ; $521E: $07
    ld hl, sp-$08                                 ; $521F: $F8 $F8
    ld [bc], a                                    ; $5221: $02
    rlca                                          ; $5222: $07
    ldh a, [rP1]                                  ; $5223: $F0 $00
    ld bc, $F007                                  ; $5225: $01 $07 $F0
    ld hl, sp+$00                                 ; $5228: $F8 $00
    rlca                                          ; $522A: $07
    add b                                         ; $522B: $80
    rst $30                                       ; $522C: $F7
    dec b                                         ; $522D: $05
    rlca                                          ; $522E: $07
    nop                                           ; $522F: $00
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    dec b                                         ; $5232: $05
    rlca                                          ; $5233: $07
    nop                                           ; $5234: $00
    ld hl, sp+$04                                 ; $5235: $F8 $04
    rlca                                          ; $5237: $07
    ld hl, sp+$00                                 ; $5238: $F8 $00
    inc bc                                        ; $523A: $03
    rlca                                          ; $523B: $07
    ld hl, sp-$08                                 ; $523C: $F8 $F8
    ld [bc], a                                    ; $523E: $02
    rlca                                          ; $523F: $07
    ldh a, [rP1]                                  ; $5240: $F0 $00
    ld bc, $F007                                  ; $5242: $01 $07 $F0
    ld hl, sp+$00                                 ; $5245: $F8 $00
    rlca                                          ; $5247: $07
    add b                                         ; $5248: $80
    nop                                           ; $5249: $00
    ld hl, sp+$05                                 ; $524A: $F8 $05
    daa                                           ; $524C: $27
    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    inc b                                         ; $524F: $04
    daa                                           ; $5250: $27
    ld hl, sp-$08                                 ; $5251: $F8 $F8
    inc bc                                        ; $5253: $03
    daa                                           ; $5254: $27
    ld hl, sp+$00                                 ; $5255: $F8 $00
    ld [bc], a                                    ; $5257: $02
    daa                                           ; $5258: $27
    ldh a, [$F8]                                  ; $5259: $F0 $F8
    ld bc, $F027                                  ; $525B: $01 $27 $F0
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    daa                                           ; $5260: $27
    add b                                         ; $5261: $80
    ld c, l                                       ; $5262: $4D
    ld [$0008], sp                                ; $5263: $08 $08 $00
    rst $38                                       ; $5266: $FF
    jp nz, $DB50                                  ; $5267: $C2 $50 $DB

    ld d, b                                       ; $526A: $50
    db $F4                                        ; $526B: $F4
    ld d, b                                       ; $526C: $50
    db $DB                                        ; $526D: $DB
    ld d, b                                       ; $526E: $50
    ld b, [hl]                                    ; $526F: $46
    ld h, d                                       ; $5270: $62
    ld d, d                                       ; $5271: $52
    ld c, l                                       ; $5272: $4D
    ld [$0008], sp                                ; $5273: $08 $08 $00
    ld bc, $5077                                  ; $5276: $01 $77 $50
    sub b                                         ; $5279: $90
    ld d, b                                       ; $527A: $50
    xor c                                         ; $527B: $A9
    ld d, b                                       ; $527C: $50
    sub b                                         ; $527D: $90
    ld d, b                                       ; $527E: $50
    ld b, [hl]                                    ; $527F: $46
    ld [hl], d                                    ; $5280: $72
    ld d, d                                       ; $5281: $52
    ld c, l                                       ; $5282: $4D
    ld [$FF08], sp                                ; $5283: $08 $08 $FF
    nop                                           ; $5286: $00
    ld e, b                                       ; $5287: $58
    ld d, c                                       ; $5288: $51
    ld [hl], c                                    ; $5289: $71
    ld d, c                                       ; $528A: $51
    adc d                                         ; $528B: $8A
    ld d, c                                       ; $528C: $51
    ld [hl], c                                    ; $528D: $71
    ld d, c                                       ; $528E: $51
    ld b, [hl]                                    ; $528F: $46
    add d                                         ; $5290: $82
    ld d, d                                       ; $5291: $52
    ld c, l                                       ; $5292: $4D
    ld [$0108], sp                                ; $5293: $08 $08 $01
    nop                                           ; $5296: $00
    dec c                                         ; $5297: $0D
    ld d, c                                       ; $5298: $51
    ld h, $51                                     ; $5299: $26 $51
    ccf                                           ; $529B: $3F
    ld d, c                                       ; $529C: $51
    ld h, $51                                     ; $529D: $26 $51
    ld b, [hl]                                    ; $529F: $46
    sub d                                         ; $52A0: $92
    ld d, d                                       ; $52A1: $52
    ld c, l                                       ; $52A2: $4D
    ld [$0008], sp                                ; $52A3: $08 $08 $00
    cp $C2                                        ; $52A6: $FE $C2
    ld d, b                                       ; $52A8: $50
    db $DB                                        ; $52A9: $DB
    ld d, b                                       ; $52AA: $50
    db $F4                                        ; $52AB: $F4
    ld d, b                                       ; $52AC: $50
    db $DB                                        ; $52AD: $DB
    ld d, b                                       ; $52AE: $50
    ld b, [hl]                                    ; $52AF: $46
    and d                                         ; $52B0: $A2
    ld d, d                                       ; $52B1: $52
    ld c, l                                       ; $52B2: $4D
    ld [$0008], sp                                ; $52B3: $08 $08 $00
    ld [bc], a                                    ; $52B6: $02
    ld [hl], a                                    ; $52B7: $77
    ld d, b                                       ; $52B8: $50
    sub b                                         ; $52B9: $90
    ld d, b                                       ; $52BA: $50
    xor c                                         ; $52BB: $A9
    ld d, b                                       ; $52BC: $50
    sub b                                         ; $52BD: $90
    ld d, b                                       ; $52BE: $50
    ld b, [hl]                                    ; $52BF: $46
    or d                                          ; $52C0: $B2
    ld d, d                                       ; $52C1: $52
    ld c, l                                       ; $52C2: $4D
    ld [$FE08], sp                                ; $52C3: $08 $08 $FE
    nop                                           ; $52C6: $00
    ld e, b                                       ; $52C7: $58
    ld d, c                                       ; $52C8: $51
    ld [hl], c                                    ; $52C9: $71
    ld d, c                                       ; $52CA: $51
    adc d                                         ; $52CB: $8A
    ld d, c                                       ; $52CC: $51
    ld [hl], c                                    ; $52CD: $71
    ld d, c                                       ; $52CE: $51
    ld b, [hl]                                    ; $52CF: $46
    jp nz, Jump_010_4D52                          ; $52D0: $C2 $52 $4D

    ld [$0208], sp                                ; $52D3: $08 $08 $02
    nop                                           ; $52D6: $00
    dec c                                         ; $52D7: $0D
    ld d, c                                       ; $52D8: $51
    ld h, $51                                     ; $52D9: $26 $51
    ccf                                           ; $52DB: $3F
    ld d, c                                       ; $52DC: $51
    ld h, $51                                     ; $52DD: $26 $51
    ld b, [hl]                                    ; $52DF: $46
    jp nc, Jump_010_4C52                          ; $52E0: $D2 $52 $4C

    rst $38                                       ; $52E3: $FF
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    db $DB                                        ; $52E6: $DB
    ld d, b                                       ; $52E7: $50
    nop                                           ; $52E8: $00
    ld b, [hl]                                    ; $52E9: $46
    ld [c], a                                     ; $52EA: $E2
    ld d, d                                       ; $52EB: $52
    ld c, h                                       ; $52EC: $4C
    rst $38                                       ; $52ED: $FF
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    sub b                                         ; $52F0: $90
    ld d, b                                       ; $52F1: $50
    nop                                           ; $52F2: $00
    ld b, [hl]                                    ; $52F3: $46
    db $EC                                        ; $52F4: $EC
    ld d, d                                       ; $52F5: $52
    ld c, h                                       ; $52F6: $4C
    rst $38                                       ; $52F7: $FF
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    ld [hl], c                                    ; $52FA: $71
    ld d, c                                       ; $52FB: $51
    nop                                           ; $52FC: $00
    ld b, [hl]                                    ; $52FD: $46
    or $52                                        ; $52FE: $F6 $52
    ld c, h                                       ; $5300: $4C
    rst $38                                       ; $5301: $FF
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    ld h, $51                                     ; $5304: $26 $51
    nop                                           ; $5306: $00
    ld b, [hl]                                    ; $5307: $46
    nop                                           ; $5308: $00
    ld d, e                                       ; $5309: $53
    ld c, h                                       ; $530A: $4C
    rst $38                                       ; $530B: $FF
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    ld e, [hl]                                    ; $530E: $5E
    ld d, b                                       ; $530F: $50
    nop                                           ; $5310: $00
    ld b, [hl]                                    ; $5311: $46
    ld a, [bc]                                    ; $5312: $0A
    ld d, e                                       ; $5313: $53
    ld c, h                                       ; $5314: $4C
    rst $38                                       ; $5315: $FF
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    ld b, l                                       ; $5318: $45
    ld d, b                                       ; $5319: $50
    nop                                           ; $531A: $00
    ld b, [hl]                                    ; $531B: $46
    inc d                                         ; $531C: $14
    ld d, e                                       ; $531D: $53
    ld c, h                                       ; $531E: $4C
    rst $38                                       ; $531F: $FF
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    inc l                                         ; $5322: $2C
    ld d, b                                       ; $5323: $50
    nop                                           ; $5324: $00
    ld b, [hl]                                    ; $5325: $46
    ld e, $53                                     ; $5326: $1E $53
    ld c, h                                       ; $5328: $4C
    rst $38                                       ; $5329: $FF
    nop                                           ; $532A: $00
    nop                                           ; $532B: $00
    inc de                                        ; $532C: $13
    ld d, b                                       ; $532D: $50
    nop                                           ; $532E: $00
    ld b, [hl]                                    ; $532F: $46
    jr z, jr_010_5385                             ; $5330: $28 $53

    ld c, h                                       ; $5332: $4C
    rst $38                                       ; $5333: $FF
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    and e                                         ; $5336: $A3
    ld d, c                                       ; $5337: $51
    nop                                           ; $5338: $00
    ld b, [hl]                                    ; $5339: $46
    ld [hl-], a                                   ; $533A: $32
    ld d, e                                       ; $533B: $53
    ld c, l                                       ; $533C: $4D
    ld [$0010], sp                                ; $533D: $08 $10 $00
    nop                                           ; $5340: $00
    ld c, c                                       ; $5341: $49
    ld d, d                                       ; $5342: $52
    and e                                         ; $5343: $A3
    ld d, c                                       ; $5344: $51
    or $51                                        ; $5345: $F6 $51
    and e                                         ; $5347: $A3
    ld d, c                                       ; $5348: $51
    ld b, [hl]                                    ; $5349: $46
    inc a                                         ; $534A: $3C
    ld d, e                                       ; $534B: $53
    ld c, l                                       ; $534C: $4D
    jr nz, jr_010_5353                            ; $534D: $20 $04

    nop                                           ; $534F: $00
    nop                                           ; $5350: $00
    or $51                                        ; $5351: $F6 $51

jr_010_5353:
    rrca                                          ; $5353: $0F
    ld d, d                                       ; $5354: $52
    inc l                                         ; $5355: $2C
    ld d, d                                       ; $5356: $52
    rrca                                          ; $5357: $0F
    ld d, d                                       ; $5358: $52
    or $51                                        ; $5359: $F6 $51
    rrca                                          ; $535B: $0F
    ld d, d                                       ; $535C: $52
    inc l                                         ; $535D: $2C
    ld d, d                                       ; $535E: $52
    rrca                                          ; $535F: $0F
    ld d, d                                       ; $5360: $52
    or $51                                        ; $5361: $F6 $51
    rrca                                          ; $5363: $0F
    ld d, d                                       ; $5364: $52
    inc l                                         ; $5365: $2C
    ld d, d                                       ; $5366: $52
    rrca                                          ; $5367: $0F
    ld d, d                                       ; $5368: $52
    or $51                                        ; $5369: $F6 $51
    rrca                                          ; $536B: $0F
    ld d, d                                       ; $536C: $52
    inc l                                         ; $536D: $2C
    ld d, d                                       ; $536E: $52
    rrca                                          ; $536F: $0F
    ld d, d                                       ; $5370: $52
    ld c, h                                       ; $5371: $4C
    jr nz, jr_010_5374                            ; $5372: $20 $00

jr_010_5374:
    nop                                           ; $5374: $00
    or $51                                        ; $5375: $F6 $51
    nop                                           ; $5377: $00
    ld b, [hl]                                    ; $5378: $46
    ld [hl-], a                                   ; $5379: $32
    ld d, e                                       ; $537A: $53
    ld c, l                                       ; $537B: $4D
    inc b                                         ; $537C: $04
    jr nz, jr_010_537F                            ; $537D: $20 $00

jr_010_537F:
    nop                                           ; $537F: $00
    and e                                         ; $5380: $A3
    ld d, c                                       ; $5381: $51
    cp h                                          ; $5382: $BC
    ld d, c                                       ; $5383: $51
    ld b, [hl]                                    ; $5384: $46

jr_010_5385:
    ld a, e                                       ; $5385: $7B
    ld d, e                                       ; $5386: $53
    ld c, h                                       ; $5387: $4C
    rst $38                                       ; $5388: $FF
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    push de                                       ; $538B: $D5
    ld d, c                                       ; $538C: $51
    nop                                           ; $538D: $00
    ld b, [hl]                                    ; $538E: $46
    add a                                         ; $538F: $87
    ld d, e                                       ; $5390: $53
    ld c, e                                       ; $5391: $4B
    inc bc                                        ; $5392: $03
    stop                                          ; $5393: $10 $00
    nop                                           ; $5395: $00
    xor b                                         ; $5396: $A8
    ld d, e                                       ; $5397: $53
    db $10                                        ; $5398: $10
    inc bc                                        ; $5399: $03
    nop                                           ; $539A: $00
    xor a                                         ; $539B: $AF
    ld d, e                                       ; $539C: $53
    db $10                                        ; $539D: $10
    ld [bc], a                                    ; $539E: $02
    nop                                           ; $539F: $00
    cp l                                          ; $53A0: $BD
    ld d, e                                       ; $53A1: $53
    db $10                                        ; $53A2: $10
    ld bc, $B600                                  ; $53A3: $01 $00 $B6
    ld d, e                                       ; $53A6: $53
    rst $38                                       ; $53A7: $FF
    inc d                                         ; $53A8: $14
    db $10                                        ; $53A9: $10
    ld [c], a                                     ; $53AA: $E2
    ld d, d                                       ; $53AB: $52
    ld h, d                                       ; $53AC: $62
    ld bc, $1412                                  ; $53AD: $01 $12 $14
    db $10                                        ; $53B0: $10
    db $EC                                        ; $53B1: $EC
    ld d, d                                       ; $53B2: $52
    ld h, d                                       ; $53B3: $62
    ld bc, $1412                                  ; $53B4: $01 $12 $14
    db $10                                        ; $53B7: $10
    or $52                                        ; $53B8: $F6 $52
    ld h, d                                       ; $53BA: $62
    ld bc, $1412                                  ; $53BB: $01 $12 $14
    stop                                          ; $53BE: $10 $00
    ld d, e                                       ; $53C0: $53
    ld h, d                                       ; $53C1: $62
    ld bc, $F012                                  ; $53C2: $01 $12 $F0
    ld hl, sp+$00                                 ; $53C5: $F8 $00
    nop                                           ; $53C7: $00
    ldh a, [rP1]                                  ; $53C8: $F0 $00
    ld bc, $F800                                  ; $53CA: $01 $00 $F8
    ld hl, sp+$08                                 ; $53CD: $F8 $08
    nop                                           ; $53CF: $00
    ld hl, sp+$00                                 ; $53D0: $F8 $00

jr_010_53D2:
    add hl, bc                                    ; $53D2: $09
    nop                                           ; $53D3: $00
    nop                                           ; $53D4: $00
    ld hl, sp+$14                                 ; $53D5: $F8 $14
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    dec d                                         ; $53DA: $15
    nop                                           ; $53DB: $00
    add b                                         ; $53DC: $80
    ldh a, [rP1]                                  ; $53DD: $F0 $00
    nop                                           ; $53DF: $00
    jr nz, jr_010_53D2                            ; $53E0: $20 $F0

    ld hl, sp+$01                                 ; $53E2: $F8 $01
    jr nz, @-$06                                  ; $53E4: $20 $F8

    nop                                           ; $53E6: $00
    ld [$F820], sp                                ; $53E7: $08 $20 $F8
    ld hl, sp+$09                                 ; $53EA: $F8 $09
    jr nz, jr_010_53EE                            ; $53EC: $20 $00

jr_010_53EE:
    nop                                           ; $53EE: $00
    inc d                                         ; $53EF: $14
    jr nz, jr_010_53F2                            ; $53F0: $20 $00

jr_010_53F2:
    ld hl, sp+$15                                 ; $53F2: $F8 $15
    jr nz, @-$7E                                  ; $53F4: $20 $80

    ldh a, [$F8]                                  ; $53F6: $F0 $F8
    ld b, $00                                     ; $53F8: $06 $00
    ldh a, [rP1]                                  ; $53FA: $F0 $00
    rlca                                          ; $53FC: $07
    nop                                           ; $53FD: $00
    ld hl, sp-$08                                 ; $53FE: $F8 $F8
    ld c, $00                                     ; $5400: $0E $00
    ld hl, sp+$00                                 ; $5402: $F8 $00
    rrca                                          ; $5404: $0F
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    cp $1A                                        ; $5407: $FE $1A
    nop                                           ; $5409: $00
    add b                                         ; $540A: $80
    ldh a, [rP1]                                  ; $540B: $F0 $00
    ld b, $20                                     ; $540D: $06 $20
    ldh a, [$F8]                                  ; $540F: $F0 $F8
    rlca                                          ; $5411: $07
    jr nz, @-$06                                  ; $5412: $20 $F8

    nop                                           ; $5414: $00
    ld c, $20                                     ; $5415: $0E $20
    ld hl, sp-$08                                 ; $5417: $F8 $F8
    rrca                                          ; $5419: $0F
    jr nz, jr_010_541C                            ; $541A: $20 $00

jr_010_541C:
    ld a, [$201A]                                 ; $541C: $FA $1A $20
    add b                                         ; $541F: $80
    pop af                                        ; $5420: $F1
    ld hl, sp+$02                                 ; $5421: $F8 $02
    nop                                           ; $5423: $00
    pop af                                        ; $5424: $F1
    nop                                           ; $5425: $00

jr_010_5426:
    inc bc                                        ; $5426: $03
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    db $FC                                        ; $5429: $FC
    dec de                                        ; $542A: $1B
    nop                                           ; $542B: $00
    ld hl, sp-$08                                 ; $542C: $F8 $F8
    stop                                          ; $542E: $10 $00
    ld hl, sp+$00                                 ; $5430: $F8 $00
    ld de, $8000                                  ; $5432: $11 $00 $80
    ldh a, [$F8]                                  ; $5435: $F0 $F8
    ld [bc], a                                    ; $5437: $02
    nop                                           ; $5438: $00
    ldh a, [rP1]                                  ; $5439: $F0 $00
    inc bc                                        ; $543B: $03
    nop                                           ; $543C: $00
    ld hl, sp-$08                                 ; $543D: $F8 $F8
    ld a, [bc]                                    ; $543F: $0A
    nop                                           ; $5440: $00
    ld hl, sp+$00                                 ; $5441: $F8 $00
    dec bc                                        ; $5443: $0B
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    ld hl, sp+$16                                 ; $5446: $F8 $16
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544A: $00
    rla                                           ; $544B: $17
    nop                                           ; $544C: $00
    add b                                         ; $544D: $80
    pop af                                        ; $544E: $F1
    ld hl, sp+$02                                 ; $544F: $F8 $02
    nop                                           ; $5451: $00
    pop af                                        ; $5452: $F1

jr_010_5453:
    nop                                           ; $5453: $00
    inc bc                                        ; $5454: $03
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    db $FC                                        ; $5457: $FC
    dec de                                        ; $5458: $1B
    jr nz, jr_010_5453                            ; $5459: $20 $F8

    ld hl, sp+$2A                                 ; $545B: $F8 $2A
    nop                                           ; $545D: $00
    ld hl, sp+$00                                 ; $545E: $F8 $00
    dec hl                                        ; $5460: $2B
    nop                                           ; $5461: $00
    add b                                         ; $5462: $80
    pop af                                        ; $5463: $F1
    ld hl, sp+$04                                 ; $5464: $F8 $04
    nop                                           ; $5466: $00
    pop af                                        ; $5467: $F1
    nop                                           ; $5468: $00
    dec b                                         ; $5469: $05
    nop                                           ; $546A: $00
    ld hl, sp-$08                                 ; $546B: $F8 $F8
    ld [de], a                                    ; $546D: $12
    nop                                           ; $546E: $00
    ld hl, sp+$00                                 ; $546F: $F8 $00
    inc de                                        ; $5471: $13
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    db $FC                                        ; $5474: $FC
    inc e                                         ; $5475: $1C
    nop                                           ; $5476: $00
    add b                                         ; $5477: $80
    ldh a, [$F8]                                  ; $5478: $F0 $F8
    inc b                                         ; $547A: $04
    nop                                           ; $547B: $00
    ldh a, [rP1]                                  ; $547C: $F0 $00
    dec b                                         ; $547E: $05
    nop                                           ; $547F: $00
    ld hl, sp-$08                                 ; $5480: $F8 $F8
    inc c                                         ; $5482: $0C
    nop                                           ; $5483: $00
    ld hl, sp+$00                                 ; $5484: $F8 $00

jr_010_5486:
    dec c                                         ; $5486: $0D

jr_010_5487:
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    ld hl, sp+$18                                 ; $5489: $F8 $18
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    add hl, de                                    ; $548E: $19
    nop                                           ; $548F: $00
    add b                                         ; $5490: $80
    pop af                                        ; $5491: $F1

jr_010_5492:
    nop                                           ; $5492: $00
    inc b                                         ; $5493: $04
    jr nz, jr_010_5487                            ; $5494: $20 $F1

jr_010_5496:
    ld hl, sp+$05                                 ; $5496: $F8 $05
    jr nz, jr_010_5492                            ; $5498: $20 $F8

    nop                                           ; $549A: $00
    ld [de], a                                    ; $549B: $12
    jr nz, jr_010_5496                            ; $549C: $20 $F8

    ld hl, sp+$13                                 ; $549E: $F8 $13
    jr nz, jr_010_54A2                            ; $54A0: $20 $00

jr_010_54A2:
    db $FC                                        ; $54A2: $FC
    inc e                                         ; $54A3: $1C
    jr nz, jr_010_5426                            ; $54A4: $20 $80

    pop af                                        ; $54A6: $F1
    ld hl, sp+$1D                                 ; $54A7: $F8 $1D
    nop                                           ; $54A9: $00
    pop af                                        ; $54AA: $F1
    nop                                           ; $54AB: $00
    ld e, $00                                     ; $54AC: $1E $00
    ld hl, sp-$08                                 ; $54AE: $F8 $F8
    rra                                           ; $54B0: $1F
    nop                                           ; $54B1: $00
    ld hl, sp+$00                                 ; $54B2: $F8 $00

jr_010_54B4:
    jr nz, jr_010_54B6                            ; $54B4: $20 $00

jr_010_54B6:
    nop                                           ; $54B6: $00
    ld hl, sp+$25                                 ; $54B7: $F8 $25
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    ld h, $00                                     ; $54BC: $26 $00
    add b                                         ; $54BE: $80
    ldh a, [$F8]                                  ; $54BF: $F0 $F8
    dec e                                         ; $54C1: $1D
    nop                                           ; $54C2: $00
    ldh a, [rP1]                                  ; $54C3: $F0 $00
    ld e, $00                                     ; $54C5: $1E $00
    ld hl, sp-$08                                 ; $54C7: $F8 $F8
    ld hl, $F800                                  ; $54C9: $21 $00 $F8
    nop                                           ; $54CC: $00
    ld [hl+], a                                   ; $54CD: $22
    nop                                           ; $54CE: $00
    nop                                           ; $54CF: $00
    db $FC                                        ; $54D0: $FC
    daa                                           ; $54D1: $27
    nop                                           ; $54D2: $00
    add b                                         ; $54D3: $80
    nop                                           ; $54D4: $00
    ld hl, sp+$28                                 ; $54D5: $F8 $28
    nop                                           ; $54D7: $00
    nop                                           ; $54D8: $00
    nop                                           ; $54D9: $00
    add hl, hl                                    ; $54DA: $29
    nop                                           ; $54DB: $00
    pop af                                        ; $54DC: $F1
    ld hl, sp+$1D                                 ; $54DD: $F8 $1D
    nop                                           ; $54DF: $00
    pop af                                        ; $54E0: $F1
    nop                                           ; $54E1: $00
    ld e, $00                                     ; $54E2: $1E $00
    ld hl, sp-$08                                 ; $54E4: $F8 $F8
    inc hl                                        ; $54E6: $23
    nop                                           ; $54E7: $00
    ld hl, sp+$00                                 ; $54E8: $F8 $00
    inc h                                         ; $54EA: $24
    nop                                           ; $54EB: $00
    add b                                         ; $54EC: $80
    pop af                                        ; $54ED: $F1

jr_010_54EE:
    nop                                           ; $54EE: $00
    dec e                                         ; $54EF: $1D
    jr nz, @-$0D                                  ; $54F0: $20 $F1

jr_010_54F2:
    ld hl, sp+$1E                                 ; $54F2: $F8 $1E
    jr nz, jr_010_54EE                            ; $54F4: $20 $F8

    nop                                           ; $54F6: $00
    rra                                           ; $54F7: $1F
    jr nz, jr_010_54F2                            ; $54F8: $20 $F8

    ld hl, sp+$20                                 ; $54FA: $F8 $20
    jr nz, jr_010_54FE                            ; $54FC: $20 $00

jr_010_54FE:
    nop                                           ; $54FE: $00
    dec h                                         ; $54FF: $25
    jr nz, jr_010_5502                            ; $5500: $20 $00

jr_010_5502:
    ld hl, sp+$26                                 ; $5502: $F8 $26
    jr nz, jr_010_5486                            ; $5504: $20 $80

    db $F0, $00, $1D, $20, $F0, $F8, $1E, $20, $F8, $00, $21, $20, $F8, $F8, $22, $20
    db $00, $FC, $27, $20, $80

    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    jr z, jr_010_553F                             ; $551D: $28 $20

    nop                                           ; $551F: $00
    ld hl, sp+$29                                 ; $5520: $F8 $29
    jr nz, @-$0D                                  ; $5522: $20 $F1

jr_010_5524:
    nop                                           ; $5524: $00
    dec e                                         ; $5525: $1D
    jr nz, @-$0D                                  ; $5526: $20 $F1

jr_010_5528:
    ld hl, sp+$1E                                 ; $5528: $F8 $1E
    jr nz, jr_010_5524                            ; $552A: $20 $F8

    nop                                           ; $552C: $00
    inc hl                                        ; $552D: $23
    jr nz, jr_010_5528                            ; $552E: $20 $F8

    ld hl, sp+$24                                 ; $5530: $F8 $24
    jr nz, jr_010_54B4                            ; $5532: $20 $80

    ld c, l                                       ; $5534: $4D
    ld [$0008], sp                                ; $5535: $08 $08 $00
    rst $38                                       ; $5538: $FF
    ld h, e                                       ; $5539: $63
    ld d, h                                       ; $553A: $54
    ld a, b                                       ; $553B: $78
    ld d, h                                       ; $553C: $54
    sub c                                         ; $553D: $91
    ld d, h                                       ; $553E: $54

jr_010_553F:
    ld a, b                                       ; $553F: $78
    ld d, h                                       ; $5540: $54
    ld b, [hl]                                    ; $5541: $46
    inc [hl]                                      ; $5542: $34
    ld d, l                                       ; $5543: $55
    ld c, l                                       ; $5544: $4D
    ld [$0008], sp                                ; $5545: $08 $08 $00
    ld bc, $5420                                  ; $5548: $01 $20 $54
    dec [hl]                                      ; $554B: $35
    ld d, h                                       ; $554C: $54
    ld c, [hl]                                    ; $554D: $4E
    ld d, h                                       ; $554E: $54
    dec [hl]                                      ; $554F: $35
    ld d, h                                       ; $5550: $54
    ld b, [hl]                                    ; $5551: $46
    ld b, h                                       ; $5552: $44
    ld d, l                                       ; $5553: $55
    ld c, l                                       ; $5554: $4D
    ld [$FF08], sp                                ; $5555: $08 $08 $FF
    nop                                           ; $5558: $00
    db $ED                                        ; $5559: $ED
    ld d, h                                       ; $555A: $54
    ld b, $55                                     ; $555B: $06 $55
    dec de                                        ; $555D: $1B
    ld d, l                                       ; $555E: $55
    ld b, $55                                     ; $555F: $06 $55
    ld b, [hl]                                    ; $5561: $46
    ld d, h                                       ; $5562: $54
    ld d, l                                       ; $5563: $55
    ld c, l                                       ; $5564: $4D
    ld [$0108], sp                                ; $5565: $08 $08 $01
    nop                                           ; $5568: $00
    and [hl]                                      ; $5569: $A6
    ld d, h                                       ; $556A: $54
    cp a                                          ; $556B: $BF
    ld d, h                                       ; $556C: $54
    call nc, $BF54                                ; $556D: $D4 $54 $BF
    ld d, h                                       ; $5570: $54
    ld b, [hl]                                    ; $5571: $46
    ld h, h                                       ; $5572: $64
    ld d, l                                       ; $5573: $55
    ld c, l                                       ; $5574: $4D
    ld [$0008], sp                                ; $5575: $08 $08 $00
    cp $63                                        ; $5578: $FE $63
    ld d, h                                       ; $557A: $54
    ld a, b                                       ; $557B: $78
    ld d, h                                       ; $557C: $54
    sub c                                         ; $557D: $91
    ld d, h                                       ; $557E: $54
    ld a, b                                       ; $557F: $78
    ld d, h                                       ; $5580: $54
    ld b, [hl]                                    ; $5581: $46
    ld [hl], h                                    ; $5582: $74
    ld d, l                                       ; $5583: $55
    ld c, l                                       ; $5584: $4D
    ld [$0008], sp                                ; $5585: $08 $08 $00
    ld [bc], a                                    ; $5588: $02
    jr nz, jr_010_55DF                            ; $5589: $20 $54

    dec [hl]                                      ; $558B: $35
    ld d, h                                       ; $558C: $54
    ld c, [hl]                                    ; $558D: $4E
    ld d, h                                       ; $558E: $54
    dec [hl]                                      ; $558F: $35
    ld d, h                                       ; $5590: $54
    ld b, [hl]                                    ; $5591: $46
    add h                                         ; $5592: $84
    ld d, l                                       ; $5593: $55
    ld c, l                                       ; $5594: $4D
    ld [$FE08], sp                                ; $5595: $08 $08 $FE
    nop                                           ; $5598: $00
    db $ED                                        ; $5599: $ED
    ld d, h                                       ; $559A: $54
    ld b, $55                                     ; $559B: $06 $55
    dec de                                        ; $559D: $1B
    ld d, l                                       ; $559E: $55
    ld b, $55                                     ; $559F: $06 $55
    ld b, [hl]                                    ; $55A1: $46
    sub h                                         ; $55A2: $94
    ld d, l                                       ; $55A3: $55
    ld c, l                                       ; $55A4: $4D
    ld [$0208], sp                                ; $55A5: $08 $08 $02
    nop                                           ; $55A8: $00
    and [hl]                                      ; $55A9: $A6
    ld d, h                                       ; $55AA: $54
    cp a                                          ; $55AB: $BF
    ld d, h                                       ; $55AC: $54
    call nc, $BF54                                ; $55AD: $D4 $54 $BF
    ld d, h                                       ; $55B0: $54
    ld b, [hl]                                    ; $55B1: $46
    and h                                         ; $55B2: $A4
    ld d, l                                       ; $55B3: $55
    ld c, h                                       ; $55B4: $4C
    rst $38                                       ; $55B5: $FF
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    ld a, b                                       ; $55B8: $78
    ld d, h                                       ; $55B9: $54
    nop                                           ; $55BA: $00
    ld b, [hl]                                    ; $55BB: $46
    or h                                          ; $55BC: $B4
    ld d, l                                       ; $55BD: $55
    ld c, h                                       ; $55BE: $4C
    rst $38                                       ; $55BF: $FF
    nop                                           ; $55C0: $00
    nop                                           ; $55C1: $00
    dec [hl]                                      ; $55C2: $35
    ld d, h                                       ; $55C3: $54
    nop                                           ; $55C4: $00
    ld b, [hl]                                    ; $55C5: $46
    cp [hl]                                       ; $55C6: $BE
    ld d, l                                       ; $55C7: $55

    db $4C, $FF, $00, $00, $06, $55

    nop                                           ; $55CE: $00
    ld b, [hl]                                    ; $55CF: $46
    ret z                                         ; $55D0: $C8

    ld d, l                                       ; $55D1: $55
    ld c, h                                       ; $55D2: $4C
    rst $38                                       ; $55D3: $FF
    nop                                           ; $55D4: $00
    nop                                           ; $55D5: $00
    cp a                                          ; $55D6: $BF
    ld d, h                                       ; $55D7: $54
    nop                                           ; $55D8: $00
    ld b, [hl]                                    ; $55D9: $46
    jp nc, $4C55                                  ; $55DA: $D2 $55 $4C

    rst $38                                       ; $55DD: $FF
    nop                                           ; $55DE: $00

jr_010_55DF:
    nop                                           ; $55DF: $00
    dec bc                                        ; $55E0: $0B
    ld d, h                                       ; $55E1: $54
    nop                                           ; $55E2: $00
    ld b, [hl]                                    ; $55E3: $46
    call c, $4C55                                 ; $55E4: $DC $55 $4C
    rst $38                                       ; $55E7: $FF
    nop                                           ; $55E8: $00
    nop                                           ; $55E9: $00
    or $53                                        ; $55EA: $F6 $53
    nop                                           ; $55EC: $00
    ld b, [hl]                                    ; $55ED: $46
    and $55                                       ; $55EE: $E6 $55
    ld c, h                                       ; $55F0: $4C
    rst $38                                       ; $55F1: $FF
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    db $DD                                        ; $55F4: $DD
    ld d, e                                       ; $55F5: $53
    nop                                           ; $55F6: $00
    ld b, [hl]                                    ; $55F7: $46
    ldh a, [rHDMA5]                               ; $55F8: $F0 $55
    ld c, h                                       ; $55FA: $4C
    rst $38                                       ; $55FB: $FF
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    call nz, $0053                                ; $55FE: $C4 $53 $00
    ld b, [hl]                                    ; $5601: $46
    ld a, [$4B55]                                 ; $5602: $FA $55 $4B
    inc bc                                        ; $5605: $03
    stop                                          ; $5606: $10 $00
    nop                                           ; $5608: $00
    dec de                                        ; $5609: $1B
    ld d, [hl]                                    ; $560A: $56
    db $10                                        ; $560B: $10
    inc bc                                        ; $560C: $03
    nop                                           ; $560D: $00
    ld [hl+], a                                   ; $560E: $22
    ld d, [hl]                                    ; $560F: $56
    db $10                                        ; $5610: $10
    ld [bc], a                                    ; $5611: $02
    nop                                           ; $5612: $00
    jr nc, @+$58                                  ; $5613: $30 $56

    db $10                                        ; $5615: $10
    ld bc, $2900                                  ; $5616: $01 $00 $29
    ld d, [hl]                                    ; $5619: $56
    rst $38                                       ; $561A: $FF
    inc d                                         ; $561B: $14
    db $10                                        ; $561C: $10
    or h                                          ; $561D: $B4
    ld d, l                                       ; $561E: $55
    ld h, d                                       ; $561F: $62
    ld bc, $1412                                  ; $5620: $01 $12 $14
    db $10                                        ; $5623: $10
    cp [hl]                                       ; $5624: $BE
    ld d, l                                       ; $5625: $55
    ld h, d                                       ; $5626: $62
    ld bc, $1412                                  ; $5627: $01 $12 $14
    db $10                                        ; $562A: $10
    ret z                                         ; $562B: $C8

    ld d, l                                       ; $562C: $55
    ld h, d                                       ; $562D: $62
    ld bc, $1412                                  ; $562E: $01 $12 $14
    db $10                                        ; $5631: $10
    jp nc, Jump_010_6255                          ; $5632: $D2 $55 $62

    ld bc, $F012                                  ; $5635: $01 $12 $F0
    ld hl, sp+$00                                 ; $5638: $F8 $00
    ld bc, $00F0                                  ; $563A: $01 $F0 $00
    ld bc, $F801                                  ; $563D: $01 $01 $F8
    ld hl, sp+$06                                 ; $5640: $F8 $06
    ld bc, $00F8                                  ; $5642: $01 $F8 $00
    rlca                                          ; $5645: $07
    ld bc, $F800                                  ; $5646: $01 $00 $F8
    dec c                                         ; $5649: $0D
    ld [bc], a                                    ; $564A: $02
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    ld c, $02                                     ; $564D: $0E $02
    add b                                         ; $564F: $80
    ldh a, [rP1]                                  ; $5650: $F0 $00
    nop                                           ; $5652: $00
    ld hl, $F8F0                                  ; $5653: $21 $F0 $F8
    ld bc, $F821                                  ; $5656: $01 $21 $F8
    nop                                           ; $5659: $00
    ld b, $21                                     ; $565A: $06 $21
    ld hl, sp-$08                                 ; $565C: $F8 $F8
    rlca                                          ; $565E: $07
    ld hl, $0000                                  ; $565F: $21 $00 $00
    dec c                                         ; $5662: $0D
    ld [hl+], a                                   ; $5663: $22
    nop                                           ; $5664: $00
    ld hl, sp+$0E                                 ; $5665: $F8 $0E
    ld [hl+], a                                   ; $5667: $22
    add b                                         ; $5668: $80

    db $F0, $F8, $04, $01, $F0, $00, $05, $01, $F8, $F8, $0B, $01, $F8, $00, $0C, $01
    db $00, $F8, $11, $02, $00, $00, $12, $02, $80

    ldh a, [rP1]                                  ; $5682: $F0 $00
    inc b                                         ; $5684: $04
    ld hl, $F8F0                                  ; $5685: $21 $F0 $F8
    dec b                                         ; $5688: $05
    ld hl, $00F8                                  ; $5689: $21 $F8 $00
    dec bc                                        ; $568C: $0B
    ld hl, $F8F8                                  ; $568D: $21 $F8 $F8
    inc c                                         ; $5690: $0C
    ld hl, $0000                                  ; $5691: $21 $00 $00
    ld de, $0022                                  ; $5694: $11 $22 $00
    ld hl, sp+$12                                 ; $5697: $F8 $12
    ld [hl+], a                                   ; $5699: $22
    add b                                         ; $569A: $80

    db $F0, $F8, $02, $01, $F0, $00, $02, $21, $F8, $F8, $08, $01, $F8, $00, $08, $21
    db $00, $F8, $0F, $02, $00, $00, $0F, $22, $80

    ldh a, [$F8]                                  ; $56B4: $F0 $F8
    ld [bc], a                                    ; $56B6: $02
    ld bc, $00F0                                  ; $56B7: $01 $F0 $00
    ld [bc], a                                    ; $56BA: $02
    ld hl, $F8F8                                  ; $56BB: $21 $F8 $F8
    add hl, bc                                    ; $56BE: $09
    ld bc, $00F8                                  ; $56BF: $01 $F8 $00
    add hl, bc                                    ; $56C2: $09
    ld hl, $F800                                  ; $56C3: $21 $00 $F8
    inc de                                        ; $56C6: $13
    ld [bc], a                                    ; $56C7: $02
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    inc de                                        ; $56CA: $13
    ld [hl+], a                                   ; $56CB: $22
    add b                                         ; $56CC: $80
    ldh a, [$F8]                                  ; $56CD: $F0 $F8
    inc bc                                        ; $56CF: $03
    ld bc, $00F0                                  ; $56D0: $01 $F0 $00
    inc bc                                        ; $56D3: $03
    ld hl, $F8F8                                  ; $56D4: $21 $F8 $F8
    ld a, [bc]                                    ; $56D7: $0A
    ld bc, $00F8                                  ; $56D8: $01 $F8 $00
    ld a, [bc]                                    ; $56DB: $0A
    ld hl, $F800                                  ; $56DC: $21 $00 $F8
    db $10                                        ; $56DF: $10
    ld [bc], a                                    ; $56E0: $02
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    db $10                                        ; $56E3: $10
    ld [hl+], a                                   ; $56E4: $22
    add b                                         ; $56E5: $80
    ld c, h                                       ; $56E6: $4C
    rst $38                                       ; $56E7: $FF
    nop                                           ; $56E8: $00
    nop                                           ; $56E9: $00
    call $0056                                    ; $56EA: $CD $56 $00
    ld b, [hl]                                    ; $56ED: $46
    and $56                                       ; $56EE: $E6 $56

    db $4C, $FF, $00, $00, $9B, $56, $00, $46, $F0, $56

    ld c, h                                       ; $56FA: $4C
    rst $38                                       ; $56FB: $FF
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    add d                                         ; $56FE: $82
    ld d, [hl]                                    ; $56FF: $56
    nop                                           ; $5700: $00
    ld b, [hl]                                    ; $5701: $46
    db $FA                                        ; $5702: $FA
    ld d, [hl]                                    ; $5703: $56

    db $4C, $FF, $00, $00, $69, $56

    nop                                           ; $570A: $00
    ld b, [hl]                                    ; $570B: $46
    inc b                                         ; $570C: $04
    ld d, a                                       ; $570D: $57
    ld c, h                                       ; $570E: $4C
    rst $38                                       ; $570F: $FF
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    ld d, b                                       ; $5712: $50
    ld d, [hl]                                    ; $5713: $56
    nop                                           ; $5714: $00
    ld b, [hl]                                    ; $5715: $46
    ld c, $57                                     ; $5716: $0E $57
    ld c, h                                       ; $5718: $4C
    rst $38                                       ; $5719: $FF
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    scf                                           ; $571C: $37
    ld d, [hl]                                    ; $571D: $56
    nop                                           ; $571E: $00
    ld b, [hl]                                    ; $571F: $46
    jr jr_010_5779                                ; $5720: $18 $57

    ld c, e                                       ; $5722: $4B
    inc bc                                        ; $5723: $03
    stop                                          ; $5724: $10 $00
    nop                                           ; $5726: $00
    add hl, sp                                    ; $5727: $39
    ld d, a                                       ; $5728: $57
    db $10                                        ; $5729: $10
    inc bc                                        ; $572A: $03
    nop                                           ; $572B: $00
    ld b, b                                       ; $572C: $40
    ld d, a                                       ; $572D: $57
    db $10                                        ; $572E: $10
    ld [bc], a                                    ; $572F: $02
    nop                                           ; $5730: $00
    ld c, [hl]                                    ; $5731: $4E
    ld d, a                                       ; $5732: $57
    db $10                                        ; $5733: $10
    ld bc, $4700                                  ; $5734: $01 $00 $47
    ld d, a                                       ; $5737: $57
    rst $38                                       ; $5738: $FF
    inc d                                         ; $5739: $14
    db $10                                        ; $573A: $10
    and $56                                       ; $573B: $E6 $56
    ld h, d                                       ; $573D: $62
    ld bc, $1412                                  ; $573E: $01 $12 $14
    db $10                                        ; $5741: $10
    ldh a, [rRP]                                  ; $5742: $F0 $56
    ld h, d                                       ; $5744: $62
    ld bc, $1412                                  ; $5745: $01 $12 $14
    db $10                                        ; $5748: $10
    ld c, $57                                     ; $5749: $0E $57
    ld h, d                                       ; $574B: $62
    ld bc, $1412                                  ; $574C: $01 $12 $14
    db $10                                        ; $574F: $10
    jr jr_010_57A9                                ; $5750: $18 $57

    ld h, d                                       ; $5752: $62
    ld bc, $0012                                  ; $5753: $01 $12 $00
    db $FC                                        ; $5756: $FC
    nop                                           ; $5757: $00
    rlca                                          ; $5758: $07
    add b                                         ; $5759: $80
    nop                                           ; $575A: $00
    db $FC                                        ; $575B: $FC
    nop                                           ; $575C: $00
    ld [bc], a                                    ; $575D: $02
    add b                                         ; $575E: $80
    nop                                           ; $575F: $00
    db $FC                                        ; $5760: $FC
    nop                                           ; $5761: $00
    inc bc                                        ; $5762: $03
    add b                                         ; $5763: $80
    nop                                           ; $5764: $00
    db $FC                                        ; $5765: $FC
    nop                                           ; $5766: $00
    inc b                                         ; $5767: $04
    add b                                         ; $5768: $80
    nop                                           ; $5769: $00
    db $FC                                        ; $576A: $FC
    nop                                           ; $576B: $00
    ld b, $80                                     ; $576C: $06 $80
    ld c, h                                       ; $576E: $4C
    ld h, b                                       ; $576F: $60
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    ld d, l                                       ; $5772: $55
    ld d, a                                       ; $5773: $57
    nop                                           ; $5774: $00
    ld c, l                                       ; $5775: $4D
    ld c, $02                                     ; $5776: $0E $02
    nop                                           ; $5778: $00

jr_010_5779:
    nop                                           ; $5779: $00
    ld e, d                                       ; $577A: $5A
    ld d, a                                       ; $577B: $57
    ld e, a                                       ; $577C: $5F
    ld d, a                                       ; $577D: $57
    ld h, h                                       ; $577E: $64
    ld d, a                                       ; $577F: $57
    ld l, c                                       ; $5780: $69
    ld d, a                                       ; $5781: $57
    ld h, h                                       ; $5782: $64
    ld d, a                                       ; $5783: $57
    ld e, a                                       ; $5784: $5F
    ld d, a                                       ; $5785: $57
    ld e, d                                       ; $5786: $5A
    ld d, a                                       ; $5787: $57
    ld b, [hl]                                    ; $5788: $46
    ld l, [hl]                                    ; $5789: $6E
    ld d, a                                       ; $578A: $57
    ld c, h                                       ; $578B: $4C
    ld h, b                                       ; $578C: $60
    nop                                           ; $578D: $00
    db $FD                                        ; $578E: $FD
    ld d, l                                       ; $578F: $55
    ld d, a                                       ; $5790: $57
    nop                                           ; $5791: $00
    ld b, [hl]                                    ; $5792: $46
    adc e                                         ; $5793: $8B
    ld d, a                                       ; $5794: $57
    ld c, h                                       ; $5795: $4C
    ld a, [bc]                                    ; $5796: $0A
    db $FC                                        ; $5797: $FC
    nop                                           ; $5798: $00
    ld d, l                                       ; $5799: $55
    ld d, a                                       ; $579A: $57
    ld [bc], a                                    ; $579B: $02
    db $FD                                        ; $579C: $FD
    nop                                           ; $579D: $00
    ld d, l                                       ; $579E: $55
    ld d, a                                       ; $579F: $57
    ld [bc], a                                    ; $57A0: $02
    db $FD                                        ; $57A1: $FD
    ld bc, $5755                                  ; $57A2: $01 $55 $57
    ld [bc], a                                    ; $57A5: $02
    cp $01                                        ; $57A6: $FE $01
    ld d, l                                       ; $57A8: $55

jr_010_57A9:
    ld d, a                                       ; $57A9: $57
    ld [bc], a                                    ; $57AA: $02
    rst $38                                       ; $57AB: $FF
    ld bc, $5755                                  ; $57AC: $01 $55 $57
    ld [bc], a                                    ; $57AF: $02
    rst $38                                       ; $57B0: $FF
    ld [bc], a                                    ; $57B1: $02
    ld d, l                                       ; $57B2: $55
    ld d, a                                       ; $57B3: $57
    ld [bc], a                                    ; $57B4: $02
    nop                                           ; $57B5: $00
    inc bc                                        ; $57B6: $03
    ld d, l                                       ; $57B7: $55
    ld d, a                                       ; $57B8: $57
    ld [bc], a                                    ; $57B9: $02
    rst $38                                       ; $57BA: $FF
    cp $55                                        ; $57BB: $FE $55
    ld d, a                                       ; $57BD: $57
    ld [bc], a                                    ; $57BE: $02
    rst $38                                       ; $57BF: $FF
    rst $38                                       ; $57C0: $FF
    ld d, l                                       ; $57C1: $55
    ld d, a                                       ; $57C2: $57
    ld [bc], a                                    ; $57C3: $02
    rst $38                                       ; $57C4: $FF
    ld bc, $5755                                  ; $57C5: $01 $55 $57
    ld [bc], a                                    ; $57C8: $02
    rst $38                                       ; $57C9: $FF
    ld [bc], a                                    ; $57CA: $02
    ld d, l                                       ; $57CB: $55
    ld d, a                                       ; $57CC: $57
    ld [bc], a                                    ; $57CD: $02
    rst $38                                       ; $57CE: $FF
    inc bc                                        ; $57CF: $03
    ld d, l                                       ; $57D0: $55
    ld d, a                                       ; $57D1: $57
    nop                                           ; $57D2: $00
    ld b, [hl]                                    ; $57D3: $46
    ld l, [hl]                                    ; $57D4: $6E
    ld d, a                                       ; $57D5: $57
    ldh a, [$F8]                                  ; $57D6: $F0 $F8
    nop                                           ; $57D8: $00
    inc b                                         ; $57D9: $04
    ldh a, [rP1]                                  ; $57DA: $F0 $00
    ld bc, $F804                                  ; $57DC: $01 $04 $F8
    ld hl, sp+$08                                 ; $57DF: $F8 $08
    inc b                                         ; $57E1: $04
    ld hl, sp+$00                                 ; $57E2: $F8 $00
    add hl, bc                                    ; $57E4: $09
    inc b                                         ; $57E5: $04
    nop                                           ; $57E6: $00
    ld hl, sp+$14                                 ; $57E7: $F8 $14
    inc b                                         ; $57E9: $04
    nop                                           ; $57EA: $00
    nop                                           ; $57EB: $00
    dec d                                         ; $57EC: $15
    inc b                                         ; $57ED: $04
    add b                                         ; $57EE: $80
    ldh a, [rP1]                                  ; $57EF: $F0 $00
    nop                                           ; $57F1: $00
    inc h                                         ; $57F2: $24
    ldh a, [$F8]                                  ; $57F3: $F0 $F8
    ld bc, $F824                                  ; $57F5: $01 $24 $F8
    nop                                           ; $57F8: $00
    ld [$F824], sp                                ; $57F9: $08 $24 $F8
    ld hl, sp+$09                                 ; $57FC: $F8 $09
    inc h                                         ; $57FE: $24
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    inc d                                         ; $5801: $14
    inc h                                         ; $5802: $24
    nop                                           ; $5803: $00
    ld hl, sp+$15                                 ; $5804: $F8 $15
    inc h                                         ; $5806: $24
    add b                                         ; $5807: $80
    ldh a, [$F8]                                  ; $5808: $F0 $F8
    ld b, $04                                     ; $580A: $06 $04
    ldh a, [rP1]                                  ; $580C: $F0 $00
    rlca                                          ; $580E: $07
    inc b                                         ; $580F: $04
    ld hl, sp-$08                                 ; $5810: $F8 $F8
    ld c, $04                                     ; $5812: $0E $04
    ld hl, sp+$00                                 ; $5814: $F8 $00
    rrca                                          ; $5816: $0F
    inc b                                         ; $5817: $04
    nop                                           ; $5818: $00
    cp $18                                        ; $5819: $FE $18
    inc b                                         ; $581B: $04
    add b                                         ; $581C: $80
    ldh a, [rSB]                                  ; $581D: $F0 $01
    ld b, $24                                     ; $581F: $06 $24
    ldh a, [$F9]                                  ; $5821: $F0 $F9
    rlca                                          ; $5823: $07
    inc h                                         ; $5824: $24
    ld hl, sp+$01                                 ; $5825: $F8 $01
    ld c, $24                                     ; $5827: $0E $24
    ld hl, sp-$07                                 ; $5829: $F8 $F9
    rrca                                          ; $582B: $0F
    inc h                                         ; $582C: $24
    nop                                           ; $582D: $00
    ei                                            ; $582E: $FB
    jr jr_010_5855                                ; $582F: $18 $24

    add b                                         ; $5831: $80
    pop af                                        ; $5832: $F1
    ld hl, sp+$02                                 ; $5833: $F8 $02
    inc b                                         ; $5835: $04
    pop af                                        ; $5836: $F1
    nop                                           ; $5837: $00
    inc bc                                        ; $5838: $03
    inc b                                         ; $5839: $04
    ld hl, sp-$08                                 ; $583A: $F8 $F8
    db $10                                        ; $583C: $10
    inc b                                         ; $583D: $04
    ld hl, sp+$00                                 ; $583E: $F8 $00
    ld de, $0004                                  ; $5840: $11 $04 $00
    db $FC                                        ; $5843: $FC
    add hl, de                                    ; $5844: $19
    inc b                                         ; $5845: $04
    add b                                         ; $5846: $80
    ldh a, [$F8]                                  ; $5847: $F0 $F8
    ld [bc], a                                    ; $5849: $02
    inc b                                         ; $584A: $04
    ldh a, [rP1]                                  ; $584B: $F0 $00
    inc bc                                        ; $584D: $03
    inc b                                         ; $584E: $04
    ld hl, sp-$08                                 ; $584F: $F8 $F8
    ld a, [bc]                                    ; $5851: $0A
    inc b                                         ; $5852: $04
    ld hl, sp+$00                                 ; $5853: $F8 $00

jr_010_5855:
    dec bc                                        ; $5855: $0B
    inc b                                         ; $5856: $04
    nop                                           ; $5857: $00
    ld hl, sp+$16                                 ; $5858: $F8 $16
    inc h                                         ; $585A: $24
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    ld d, $04                                     ; $585D: $16 $04
    add b                                         ; $585F: $80
    pop af                                        ; $5860: $F1
    ld hl, sp+$02                                 ; $5861: $F8 $02
    inc b                                         ; $5863: $04
    pop af                                        ; $5864: $F1
    nop                                           ; $5865: $00
    inc bc                                        ; $5866: $03
    inc b                                         ; $5867: $04
    ld hl, sp+$00                                 ; $5868: $F8 $00
    db $10                                        ; $586A: $10
    inc h                                         ; $586B: $24
    ld hl, sp-$08                                 ; $586C: $F8 $F8
    ld de, $0024                                  ; $586E: $11 $24 $00
    db $FC                                        ; $5871: $FC
    add hl, de                                    ; $5872: $19
    inc h                                         ; $5873: $24
    add b                                         ; $5874: $80
    pop af                                        ; $5875: $F1
    ld hl, sp+$04                                 ; $5876: $F8 $04
    inc b                                         ; $5878: $04
    pop af                                        ; $5879: $F1
    nop                                           ; $587A: $00
    dec b                                         ; $587B: $05
    inc b                                         ; $587C: $04
    ld hl, sp-$08                                 ; $587D: $F8 $F8
    ld [de], a                                    ; $587F: $12
    inc b                                         ; $5880: $04
    ld hl, sp+$00                                 ; $5881: $F8 $00
    inc de                                        ; $5883: $13
    inc b                                         ; $5884: $04
    nop                                           ; $5885: $00
    db $FC                                        ; $5886: $FC
    ld a, [de]                                    ; $5887: $1A
    inc b                                         ; $5888: $04
    add b                                         ; $5889: $80
    ldh a, [$F8]                                  ; $588A: $F0 $F8
    inc b                                         ; $588C: $04
    inc b                                         ; $588D: $04
    ldh a, [rP1]                                  ; $588E: $F0 $00
    dec b                                         ; $5890: $05
    inc b                                         ; $5891: $04
    ld hl, sp-$08                                 ; $5892: $F8 $F8
    inc c                                         ; $5894: $0C
    inc b                                         ; $5895: $04
    ld hl, sp+$00                                 ; $5896: $F8 $00
    dec c                                         ; $5898: $0D
    inc b                                         ; $5899: $04
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    rla                                           ; $589C: $17
    inc b                                         ; $589D: $04
    nop                                           ; $589E: $00
    ld hl, sp+$17                                 ; $589F: $F8 $17
    inc h                                         ; $58A1: $24
    add b                                         ; $58A2: $80
    pop af                                        ; $58A3: $F1
    ld hl, sp+$04                                 ; $58A4: $F8 $04
    inc b                                         ; $58A6: $04
    pop af                                        ; $58A7: $F1
    nop                                           ; $58A8: $00
    dec b                                         ; $58A9: $05
    inc b                                         ; $58AA: $04
    ld hl, sp+$00                                 ; $58AB: $F8 $00
    ld [de], a                                    ; $58AD: $12
    inc h                                         ; $58AE: $24
    ld hl, sp-$08                                 ; $58AF: $F8 $F8
    inc de                                        ; $58B1: $13
    inc h                                         ; $58B2: $24
    nop                                           ; $58B3: $00
    db $FC                                        ; $58B4: $FC
    ld a, [de]                                    ; $58B5: $1A
    inc h                                         ; $58B6: $24
    add b                                         ; $58B7: $80
    pop af                                        ; $58B8: $F1
    ld hl, sp+$1B                                 ; $58B9: $F8 $1B
    inc b                                         ; $58BB: $04
    pop af                                        ; $58BC: $F1
    nop                                           ; $58BD: $00
    inc e                                         ; $58BE: $1C
    inc b                                         ; $58BF: $04
    ld hl, sp-$08                                 ; $58C0: $F8 $F8
    dec e                                         ; $58C2: $1D
    inc b                                         ; $58C3: $04
    ld hl, sp+$00                                 ; $58C4: $F8 $00
    ld e, $04                                     ; $58C6: $1E $04
    nop                                           ; $58C8: $00
    ld hl, sp+$22                                 ; $58C9: $F8 $22
    inc b                                         ; $58CB: $04
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    inc hl                                        ; $58CE: $23
    inc b                                         ; $58CF: $04
    add b                                         ; $58D0: $80
    ldh a, [$F8]                                  ; $58D1: $F0 $F8
    dec de                                        ; $58D3: $1B
    inc b                                         ; $58D4: $04
    ldh a, [rP1]                                  ; $58D5: $F0 $00
    inc e                                         ; $58D7: $1C
    inc b                                         ; $58D8: $04
    ld hl, sp-$03                                 ; $58D9: $F8 $FD
    rra                                           ; $58DB: $1F
    inc b                                         ; $58DC: $04
    nop                                           ; $58DD: $00
    db $FD                                        ; $58DE: $FD
    inc h                                         ; $58DF: $24
    inc b                                         ; $58E0: $04
    add b                                         ; $58E1: $80
    pop af                                        ; $58E2: $F1
    ld hl, sp+$1B                                 ; $58E3: $F8 $1B
    inc b                                         ; $58E5: $04
    pop af                                        ; $58E6: $F1
    nop                                           ; $58E7: $00
    inc e                                         ; $58E8: $1C
    inc b                                         ; $58E9: $04
    ld hl, sp-$08                                 ; $58EA: $F8 $F8
    jr nz, @+$06                                  ; $58EC: $20 $04

    ld hl, sp+$00                                 ; $58EE: $F8 $00
    ld hl, $0004                                  ; $58F0: $21 $04 $00
    ld hl, sp+$25                                 ; $58F3: $F8 $25
    inc b                                         ; $58F5: $04
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    ld h, $04                                     ; $58F8: $26 $04
    add b                                         ; $58FA: $80
    pop af                                        ; $58FB: $F1
    nop                                           ; $58FC: $00
    dec de                                        ; $58FD: $1B
    inc h                                         ; $58FE: $24
    pop af                                        ; $58FF: $F1
    ld hl, sp+$1C                                 ; $5900: $F8 $1C
    inc h                                         ; $5902: $24
    ld hl, sp+$00                                 ; $5903: $F8 $00
    dec e                                         ; $5905: $1D
    inc h                                         ; $5906: $24
    ld hl, sp-$08                                 ; $5907: $F8 $F8
    ld e, $24                                     ; $5909: $1E $24
    nop                                           ; $590B: $00
    nop                                           ; $590C: $00
    ld [hl+], a                                   ; $590D: $22
    inc h                                         ; $590E: $24
    nop                                           ; $590F: $00
    ld hl, sp+$23                                 ; $5910: $F8 $23
    inc h                                         ; $5912: $24
    add b                                         ; $5913: $80

    db $F0, $00, $1B, $24, $F0, $F8, $1C, $24, $F8, $FB, $1F, $24, $00, $FB, $24, $24
    db $80

    pop af                                        ; $5925: $F1
    nop                                           ; $5926: $00
    dec de                                        ; $5927: $1B
    inc h                                         ; $5928: $24
    pop af                                        ; $5929: $F1
    ld hl, sp+$1C                                 ; $592A: $F8 $1C
    inc h                                         ; $592C: $24
    ld hl, sp+$00                                 ; $592D: $F8 $00
    jr nz, jr_010_5955                            ; $592F: $20 $24

    ld hl, sp-$08                                 ; $5931: $F8 $F8
    ld hl, $0024                                  ; $5933: $21 $24 $00
    nop                                           ; $5936: $00
    dec h                                         ; $5937: $25
    inc h                                         ; $5938: $24
    nop                                           ; $5939: $00
    ld hl, sp+$26                                 ; $593A: $F8 $26
    inc h                                         ; $593C: $24
    add b                                         ; $593D: $80
    ld c, l                                       ; $593E: $4D
    ld [$0008], sp                                ; $593F: $08 $08 $00
    rst $38                                       ; $5942: $FF
    ld [hl], l                                    ; $5943: $75
    ld e, b                                       ; $5944: $58
    adc d                                         ; $5945: $8A
    ld e, b                                       ; $5946: $58
    and e                                         ; $5947: $A3
    ld e, b                                       ; $5948: $58
    adc d                                         ; $5949: $8A
    ld e, b                                       ; $594A: $58
    ld b, [hl]                                    ; $594B: $46
    ld a, $59                                     ; $594C: $3E $59
    ld c, l                                       ; $594E: $4D
    ld [$0008], sp                                ; $594F: $08 $08 $00
    ld bc, $5832                                  ; $5952: $01 $32 $58

jr_010_5955:
    ld b, a                                       ; $5955: $47
    ld e, b                                       ; $5956: $58
    ld h, b                                       ; $5957: $60
    ld e, b                                       ; $5958: $58
    ld b, a                                       ; $5959: $47
    ld e, b                                       ; $595A: $58
    ld b, [hl]                                    ; $595B: $46
    ld c, [hl]                                    ; $595C: $4E
    ld e, c                                       ; $595D: $59
    ld c, l                                       ; $595E: $4D
    ld [$FF08], sp                                ; $595F: $08 $08 $FF
    nop                                           ; $5962: $00
    ei                                            ; $5963: $FB
    ld e, b                                       ; $5964: $58
    inc d                                         ; $5965: $14
    ld e, c                                       ; $5966: $59
    dec h                                         ; $5967: $25
    ld e, c                                       ; $5968: $59
    inc d                                         ; $5969: $14
    ld e, c                                       ; $596A: $59
    ld b, [hl]                                    ; $596B: $46
    ld e, [hl]                                    ; $596C: $5E
    ld e, c                                       ; $596D: $59
    ld c, l                                       ; $596E: $4D
    ld [$0108], sp                                ; $596F: $08 $08 $01
    nop                                           ; $5972: $00
    cp b                                          ; $5973: $B8
    ld e, b                                       ; $5974: $58
    pop de                                        ; $5975: $D1
    ld e, b                                       ; $5976: $58
    ld [c], a                                     ; $5977: $E2
    ld e, b                                       ; $5978: $58
    pop de                                        ; $5979: $D1
    ld e, b                                       ; $597A: $58
    ld b, [hl]                                    ; $597B: $46
    ld l, [hl]                                    ; $597C: $6E
    ld e, c                                       ; $597D: $59
    ld c, l                                       ; $597E: $4D
    ld [$0008], sp                                ; $597F: $08 $08 $00
    cp $75                                        ; $5982: $FE $75
    ld e, b                                       ; $5984: $58
    adc d                                         ; $5985: $8A
    ld e, b                                       ; $5986: $58
    and e                                         ; $5987: $A3
    ld e, b                                       ; $5988: $58
    adc d                                         ; $5989: $8A
    ld e, b                                       ; $598A: $58
    ld b, [hl]                                    ; $598B: $46
    ld a, [hl]                                    ; $598C: $7E
    ld e, c                                       ; $598D: $59
    ld c, l                                       ; $598E: $4D
    ld [$0008], sp                                ; $598F: $08 $08 $00
    ld [bc], a                                    ; $5992: $02
    ld [hl-], a                                   ; $5993: $32
    ld e, b                                       ; $5994: $58
    ld b, a                                       ; $5995: $47
    ld e, b                                       ; $5996: $58
    ld h, b                                       ; $5997: $60
    ld e, b                                       ; $5998: $58
    ld b, a                                       ; $5999: $47
    ld e, b                                       ; $599A: $58
    ld b, [hl]                                    ; $599B: $46
    adc [hl]                                      ; $599C: $8E
    ld e, c                                       ; $599D: $59
    ld c, l                                       ; $599E: $4D
    ld [$FE08], sp                                ; $599F: $08 $08 $FE
    nop                                           ; $59A2: $00
    ei                                            ; $59A3: $FB
    ld e, b                                       ; $59A4: $58
    inc d                                         ; $59A5: $14
    ld e, c                                       ; $59A6: $59
    dec h                                         ; $59A7: $25
    ld e, c                                       ; $59A8: $59
    inc d                                         ; $59A9: $14
    ld e, c                                       ; $59AA: $59
    ld b, [hl]                                    ; $59AB: $46
    sbc [hl]                                      ; $59AC: $9E
    ld e, c                                       ; $59AD: $59
    ld c, l                                       ; $59AE: $4D
    ld [$0208], sp                                ; $59AF: $08 $08 $02
    nop                                           ; $59B2: $00
    cp b                                          ; $59B3: $B8
    ld e, b                                       ; $59B4: $58
    pop de                                        ; $59B5: $D1
    ld e, b                                       ; $59B6: $58
    ld [c], a                                     ; $59B7: $E2
    ld e, b                                       ; $59B8: $58
    pop de                                        ; $59B9: $D1
    ld e, b                                       ; $59BA: $58
    ld b, [hl]                                    ; $59BB: $46
    xor [hl]                                      ; $59BC: $AE
    ld e, c                                       ; $59BD: $59
    ld c, h                                       ; $59BE: $4C
    rst $38                                       ; $59BF: $FF
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    adc d                                         ; $59C2: $8A
    ld e, b                                       ; $59C3: $58
    nop                                           ; $59C4: $00
    ld b, [hl]                                    ; $59C5: $46
    cp [hl]                                       ; $59C6: $BE
    ld e, c                                       ; $59C7: $59
    ld c, h                                       ; $59C8: $4C
    rst $38                                       ; $59C9: $FF
    nop                                           ; $59CA: $00
    nop                                           ; $59CB: $00
    ld b, a                                       ; $59CC: $47
    ld e, b                                       ; $59CD: $58
    nop                                           ; $59CE: $00
    ld b, [hl]                                    ; $59CF: $46
    ret z                                         ; $59D0: $C8

    ld e, c                                       ; $59D1: $59

    db $4C, $FF, $00, $00, $14, $59, $00, $46, $D2, $59

    ld c, h                                       ; $59DC: $4C
    rst $38                                       ; $59DD: $FF
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    pop de                                        ; $59E0: $D1
    ld e, b                                       ; $59E1: $58
    nop                                           ; $59E2: $00
    ld b, [hl]                                    ; $59E3: $46
    call c, Call_010_4C59                         ; $59E4: $DC $59 $4C
    rst $38                                       ; $59E7: $FF
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    dec e                                         ; $59EA: $1D
    ld e, b                                       ; $59EB: $58
    nop                                           ; $59EC: $00
    ld b, [hl]                                    ; $59ED: $46
    and $59                                       ; $59EE: $E6 $59
    ld c, h                                       ; $59F0: $4C
    rst $38                                       ; $59F1: $FF
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    ld [$0058], sp                                ; $59F4: $08 $58 $00
    ld b, [hl]                                    ; $59F7: $46
    ldh a, [$59]                                  ; $59F8: $F0 $59
    ld c, h                                       ; $59FA: $4C
    rst $38                                       ; $59FB: $FF
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    rst $28                                       ; $59FE: $EF
    ld d, a                                       ; $59FF: $57
    nop                                           ; $5A00: $00
    ld b, [hl]                                    ; $5A01: $46
    ld a, [$4C59]                                 ; $5A02: $FA $59 $4C
    rst $38                                       ; $5A05: $FF
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    sub $57                                       ; $5A08: $D6 $57
    nop                                           ; $5A0A: $00
    ld b, [hl]                                    ; $5A0B: $46
    inc b                                         ; $5A0C: $04
    ld e, d                                       ; $5A0D: $5A
    ld c, e                                       ; $5A0E: $4B
    inc bc                                        ; $5A0F: $03
    stop                                          ; $5A10: $10 $00
    nop                                           ; $5A12: $00
    dec h                                         ; $5A13: $25
    ld e, d                                       ; $5A14: $5A
    db $10                                        ; $5A15: $10
    inc bc                                        ; $5A16: $03
    nop                                           ; $5A17: $00
    inc l                                         ; $5A18: $2C
    ld e, d                                       ; $5A19: $5A
    db $10                                        ; $5A1A: $10
    ld [bc], a                                    ; $5A1B: $02
    nop                                           ; $5A1C: $00
    ld a, [hl-]                                   ; $5A1D: $3A
    ld e, d                                       ; $5A1E: $5A
    db $10                                        ; $5A1F: $10
    ld bc, $3300                                  ; $5A20: $01 $00 $33
    ld e, d                                       ; $5A23: $5A
    rst $38                                       ; $5A24: $FF
    inc d                                         ; $5A25: $14
    db $10                                        ; $5A26: $10
    cp [hl]                                       ; $5A27: $BE
    ld e, c                                       ; $5A28: $59
    ld h, d                                       ; $5A29: $62
    ld bc, $1412                                  ; $5A2A: $01 $12 $14
    db $10                                        ; $5A2D: $10
    ret z                                         ; $5A2E: $C8

    ld e, c                                       ; $5A2F: $59
    ld h, d                                       ; $5A30: $62
    ld bc, $1412                                  ; $5A31: $01 $12 $14
    db $10                                        ; $5A34: $10
    jp nc, $6259                                  ; $5A35: $D2 $59 $62

    ld bc, $1412                                  ; $5A38: $01 $12 $14
    db $10                                        ; $5A3B: $10
    call c, $6259                                 ; $5A3C: $DC $59 $62
    db $01                                        ; $5A3F: $01
    ld [de], a                                    ; $5A40: $12

    db $F0, $F8, $00, $04, $F0, $00, $01, $04, $F8, $F8, $06, $04, $F8, $00, $07, $04
    db $00, $F8, $0E, $04, $00, $00, $0F, $04, $80

    ldh a, [rP1]                                  ; $5A5A: $F0 $00
    nop                                           ; $5A5C: $00
    inc h                                         ; $5A5D: $24
    ldh a, [$F8]                                  ; $5A5E: $F0 $F8
    ld bc, $F824                                  ; $5A60: $01 $24 $F8
    nop                                           ; $5A63: $00
    ld b, $24                                     ; $5A64: $06 $24
    ld hl, sp-$08                                 ; $5A66: $F8 $F8
    rlca                                          ; $5A68: $07
    inc h                                         ; $5A69: $24
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    ld c, $24                                     ; $5A6C: $0E $24
    nop                                           ; $5A6E: $00
    ld hl, sp+$0F                                 ; $5A6F: $F8 $0F
    inc h                                         ; $5A71: $24
    add b                                         ; $5A72: $80
    ldh a, [$F8]                                  ; $5A73: $F0 $F8
    inc b                                         ; $5A75: $04
    inc b                                         ; $5A76: $04
    ldh a, [rP1]                                  ; $5A77: $F0 $00
    dec b                                         ; $5A79: $05
    inc b                                         ; $5A7A: $04
    ld hl, sp-$08                                 ; $5A7B: $F8 $F8
    ld a, [bc]                                    ; $5A7D: $0A
    inc b                                         ; $5A7E: $04
    ld hl, sp+$00                                 ; $5A7F: $F8 $00
    dec bc                                        ; $5A81: $0B
    inc b                                         ; $5A82: $04
    nop                                           ; $5A83: $00
    ld hl, sp+$12                                 ; $5A84: $F8 $12
    inc b                                         ; $5A86: $04
    nop                                           ; $5A87: $00
    nop                                           ; $5A88: $00
    inc de                                        ; $5A89: $13
    inc b                                         ; $5A8A: $04
    add b                                         ; $5A8B: $80
    ldh a, [rP1]                                  ; $5A8C: $F0 $00
    inc b                                         ; $5A8E: $04
    inc h                                         ; $5A8F: $24
    ldh a, [$F8]                                  ; $5A90: $F0 $F8
    dec b                                         ; $5A92: $05
    inc h                                         ; $5A93: $24
    ld hl, sp+$00                                 ; $5A94: $F8 $00
    ld a, [bc]                                    ; $5A96: $0A
    inc h                                         ; $5A97: $24
    ld hl, sp-$08                                 ; $5A98: $F8 $F8
    dec bc                                        ; $5A9A: $0B
    inc h                                         ; $5A9B: $24
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    ld [de], a                                    ; $5A9E: $12
    inc h                                         ; $5A9F: $24
    nop                                           ; $5AA0: $00
    ld hl, sp+$13                                 ; $5AA1: $F8 $13
    inc h                                         ; $5AA3: $24
    add b                                         ; $5AA4: $80

    db $F1, $F8, $02, $04, $F1, $00, $02, $24, $F8, $F8, $0C, $04, $F8, $00, $0C, $24
    db $00, $F9, $14, $04, $00, $01, $15, $04, $80, $F0, $F8, $02, $04, $F0, $00, $02
    db $24, $F8, $F8, $08, $04, $F8, $00, $08, $24, $00, $F8, $10, $04, $00, $00, $10
    db $24, $80, $F1, $F8, $02, $04, $F1, $00, $02, $24, $F8, $F8, $0C, $04, $F8, $00
    db $0C, $24, $00, $FF, $14, $24, $00, $F7, $15, $24, $80, $F1, $00, $03, $04, $F1
    db $F8, $03, $24, $F8, $F8, $0D, $04, $F8, $00, $0D, $24, $00, $F8, $16, $04, $00
    db $00, $17, $04, $80, $F0, $00, $03, $04, $F0, $F8, $03, $24, $F8, $F8, $09, $04
    db $F8, $00, $09, $24, $00, $F9, $13, $24, $00, $00, $13, $04, $80, $F1, $00, $03
    db $04, $F1, $F8, $03, $24, $F8, $F8, $0D, $04, $F8, $00, $0D, $24, $00, $00, $16
    db $24, $00, $F8, $17, $24, $80

    pop af                                        ; $5B3B: $F1
    ld hl, sp+$18                                 ; $5B3C: $F8 $18
    inc b                                         ; $5B3E: $04
    pop af                                        ; $5B3F: $F1
    nop                                           ; $5B40: $00
    add hl, de                                    ; $5B41: $19
    inc b                                         ; $5B42: $04
    ld hl, sp-$08                                 ; $5B43: $F8 $F8
    ld a, [de]                                    ; $5B45: $1A
    inc b                                         ; $5B46: $04
    ld hl, sp+$00                                 ; $5B47: $F8 $00
    dec de                                        ; $5B49: $1B
    inc b                                         ; $5B4A: $04
    nop                                           ; $5B4B: $00
    ld hl, sp+$20                                 ; $5B4C: $F8 $20
    inc b                                         ; $5B4E: $04
    nop                                           ; $5B4F: $00
    nop                                           ; $5B50: $00
    ld hl, $8004                                  ; $5B51: $21 $04 $80

    db $F0, $F8, $18, $04, $F0, $00, $19, $04, $F8, $F8, $1C, $04, $F8, $00, $1D, $04
    db $00, $F8, $22, $04, $00, $00, $23, $04, $80

    pop af                                        ; $5B6D: $F1
    ld hl, sp+$18                                 ; $5B6E: $F8 $18
    inc b                                         ; $5B70: $04
    pop af                                        ; $5B71: $F1
    nop                                           ; $5B72: $00
    add hl, de                                    ; $5B73: $19
    inc b                                         ; $5B74: $04
    ld hl, sp-$08                                 ; $5B75: $F8 $F8
    ld e, $04                                     ; $5B77: $1E $04
    ld hl, sp+$00                                 ; $5B79: $F8 $00
    rra                                           ; $5B7B: $1F
    inc b                                         ; $5B7C: $04
    nop                                           ; $5B7D: $00
    ld hl, sp+$24                                 ; $5B7E: $F8 $24
    inc b                                         ; $5B80: $04
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    dec h                                         ; $5B83: $25
    inc b                                         ; $5B84: $04
    add b                                         ; $5B85: $80

    db $F1, $00, $18, $24, $F1, $F8, $19, $24, $F8, $00, $1A, $24, $F8, $F8, $1B, $24
    db $00, $00, $20, $24, $00, $F8, $21, $24, $80, $F0, $00, $18, $24, $F0, $F8, $19
    db $24, $F8, $00, $1C, $24, $F8, $F8, $1D, $24, $00, $00, $22, $24, $00, $F8, $23
    db $24, $80, $F1, $00, $18, $24, $F1, $F8, $19, $24, $F8, $00, $1E, $24, $F8, $F8
    db $1F, $24, $00, $00, $24, $24, $00, $F8, $25, $24, $80, $4D, $08, $08, $00, $FF
    db $F0, $5A, $09, $5B, $22, $5B

    add hl, bc                                    ; $5BDC: $09
    ld e, e                                       ; $5BDD: $5B
    ld b, [hl]                                    ; $5BDE: $46
    pop de                                        ; $5BDF: $D1
    ld e, e                                       ; $5BE0: $5B

    db $4D, $08, $08, $00, $01, $A5, $5A, $BE, $5A, $D7, $5A, $BE, $5A, $46, $E1, $5B
    db $4D, $08, $08, $FF, $00, $86, $5B, $9F, $5B, $B8, $5B, $9F, $5B, $46, $F1, $5B
    db $4D, $08, $08, $01, $00, $3B, $5B, $54, $5B, $6D, $5B

    ld d, h                                       ; $5C0C: $54
    ld e, e                                       ; $5C0D: $5B
    ld b, [hl]                                    ; $5C0E: $46
    ld bc, $4D5C                                  ; $5C0F: $01 $5C $4D
    ld [$0008], sp                                ; $5C12: $08 $08 $00
    cp $F0                                        ; $5C15: $FE $F0
    ld e, d                                       ; $5C17: $5A
    add hl, bc                                    ; $5C18: $09
    ld e, e                                       ; $5C19: $5B
    ld [hl+], a                                   ; $5C1A: $22
    ld e, e                                       ; $5C1B: $5B
    add hl, bc                                    ; $5C1C: $09
    ld e, e                                       ; $5C1D: $5B
    ld b, [hl]                                    ; $5C1E: $46
    ld de, $4D5C                                  ; $5C1F: $11 $5C $4D
    ld [$0008], sp                                ; $5C22: $08 $08 $00
    ld [bc], a                                    ; $5C25: $02
    and l                                         ; $5C26: $A5
    ld e, d                                       ; $5C27: $5A
    cp [hl]                                       ; $5C28: $BE
    ld e, d                                       ; $5C29: $5A
    rst $10                                       ; $5C2A: $D7
    ld e, d                                       ; $5C2B: $5A
    cp [hl]                                       ; $5C2C: $BE
    ld e, d                                       ; $5C2D: $5A
    ld b, [hl]                                    ; $5C2E: $46
    ld hl, $4D5C                                  ; $5C2F: $21 $5C $4D
    ld [$FE08], sp                                ; $5C32: $08 $08 $FE
    nop                                           ; $5C35: $00
    add [hl]                                      ; $5C36: $86
    ld e, e                                       ; $5C37: $5B
    sbc a                                         ; $5C38: $9F
    ld e, e                                       ; $5C39: $5B
    cp b                                          ; $5C3A: $B8
    ld e, e                                       ; $5C3B: $5B
    sbc a                                         ; $5C3C: $9F
    ld e, e                                       ; $5C3D: $5B
    ld b, [hl]                                    ; $5C3E: $46
    ld sp, $4D5C                                  ; $5C3F: $31 $5C $4D
    ld [$0208], sp                                ; $5C42: $08 $08 $02
    nop                                           ; $5C45: $00
    dec sp                                        ; $5C46: $3B
    ld e, e                                       ; $5C47: $5B
    ld d, h                                       ; $5C48: $54
    ld e, e                                       ; $5C49: $5B
    ld l, l                                       ; $5C4A: $6D
    ld e, e                                       ; $5C4B: $5B
    ld d, h                                       ; $5C4C: $54
    ld e, e                                       ; $5C4D: $5B
    ld b, [hl]                                    ; $5C4E: $46
    ld b, c                                       ; $5C4F: $41
    ld e, h                                       ; $5C50: $5C

    db $4C, $FF, $00, $00, $09, $5B

    nop                                           ; $5C57: $00
    ld b, [hl]                                    ; $5C58: $46
    ld d, c                                       ; $5C59: $51
    ld e, h                                       ; $5C5A: $5C

    db $4C, $FF, $00, $00, $BE, $5A

    nop                                           ; $5C61: $00
    ld b, [hl]                                    ; $5C62: $46
    ld e, e                                       ; $5C63: $5B
    ld e, h                                       ; $5C64: $5C

    db $4C, $FF, $00, $00, $9F, $5B

    nop                                           ; $5C6B: $00
    ld b, [hl]                                    ; $5C6C: $46
    ld h, l                                       ; $5C6D: $65
    ld e, h                                       ; $5C6E: $5C

    db $4C, $FF, $00, $00, $54, $5B

    nop                                           ; $5C75: $00
    ld b, [hl]                                    ; $5C76: $46
    ld l, a                                       ; $5C77: $6F
    ld e, h                                       ; $5C78: $5C
    ld c, h                                       ; $5C79: $4C
    rst $38                                       ; $5C7A: $FF
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    adc h                                         ; $5C7D: $8C
    ld e, d                                       ; $5C7E: $5A
    nop                                           ; $5C7F: $00
    ld b, [hl]                                    ; $5C80: $46
    ld a, c                                       ; $5C81: $79
    ld e, h                                       ; $5C82: $5C
    ld c, h                                       ; $5C83: $4C
    rst $38                                       ; $5C84: $FF
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    ld [hl], e                                    ; $5C87: $73
    ld e, d                                       ; $5C88: $5A
    nop                                           ; $5C89: $00
    ld b, [hl]                                    ; $5C8A: $46
    add e                                         ; $5C8B: $83
    ld e, h                                       ; $5C8C: $5C
    ld c, h                                       ; $5C8D: $4C
    rst $38                                       ; $5C8E: $FF
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    ld e, d                                       ; $5C91: $5A
    ld e, d                                       ; $5C92: $5A
    nop                                           ; $5C93: $00
    ld b, [hl]                                    ; $5C94: $46
    adc l                                         ; $5C95: $8D
    ld e, h                                       ; $5C96: $5C

    db $4C, $FF, $00, $00, $41, $5A, $00, $46, $97, $5C

    ld c, e                                       ; $5CA1: $4B
    inc bc                                        ; $5CA2: $03
    stop                                          ; $5CA3: $10 $00
    nop                                           ; $5CA5: $00
    cp b                                          ; $5CA6: $B8
    ld e, h                                       ; $5CA7: $5C
    db $10                                        ; $5CA8: $10
    inc bc                                        ; $5CA9: $03
    nop                                           ; $5CAA: $00
    cp a                                          ; $5CAB: $BF
    ld e, h                                       ; $5CAC: $5C
    db $10                                        ; $5CAD: $10
    ld [bc], a                                    ; $5CAE: $02
    nop                                           ; $5CAF: $00
    call $105C                                    ; $5CB0: $CD $5C $10
    ld bc, $C600                                  ; $5CB3: $01 $00 $C6
    ld e, h                                       ; $5CB6: $5C
    rst $38                                       ; $5CB7: $FF
    inc d                                         ; $5CB8: $14
    db $10                                        ; $5CB9: $10
    ld d, c                                       ; $5CBA: $51
    ld e, h                                       ; $5CBB: $5C
    ld h, d                                       ; $5CBC: $62
    ld bc, $1412                                  ; $5CBD: $01 $12 $14
    db $10                                        ; $5CC0: $10
    ld e, e                                       ; $5CC1: $5B
    ld e, h                                       ; $5CC2: $5C
    ld h, d                                       ; $5CC3: $62
    ld bc, $1412                                  ; $5CC4: $01 $12 $14
    db $10                                        ; $5CC7: $10
    ld h, l                                       ; $5CC8: $65
    ld e, h                                       ; $5CC9: $5C
    ld h, d                                       ; $5CCA: $62
    ld bc, $1412                                  ; $5CCB: $01 $12 $14
    db $10                                        ; $5CCE: $10
    ld l, a                                       ; $5CCF: $6F
    ld e, h                                       ; $5CD0: $5C
    ld h, d                                       ; $5CD1: $62
    ld bc, $F812                                  ; $5CD2: $01 $12 $F8
    ld hl, sp+$00                                 ; $5CD5: $F8 $00
    ld [bc], a                                    ; $5CD7: $02
    ld hl, sp+$00                                 ; $5CD8: $F8 $00
    ld bc, $0002                                  ; $5CDA: $01 $02 $00
    ld hl, sp+$02                                 ; $5CDD: $F8 $02
    ld [bc], a                                    ; $5CDF: $02
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    inc bc                                        ; $5CE2: $03
    ld [bc], a                                    ; $5CE3: $02
    add b                                         ; $5CE4: $80
    ld hl, sp-$08                                 ; $5CE5: $F8 $F8
    inc b                                         ; $5CE7: $04
    ld [bc], a                                    ; $5CE8: $02
    ld hl, sp+$00                                 ; $5CE9: $F8 $00
    dec b                                         ; $5CEB: $05
    ld [bc], a                                    ; $5CEC: $02
    nop                                           ; $5CED: $00
    ld hl, sp+$06                                 ; $5CEE: $F8 $06
    ld [bc], a                                    ; $5CF0: $02
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00
    rlca                                          ; $5CF3: $07
    ld [bc], a                                    ; $5CF4: $02
    add b                                         ; $5CF5: $80
    ld hl, sp-$08                                 ; $5CF6: $F8 $F8
    ld [$F802], sp                                ; $5CF8: $08 $02 $F8
    nop                                           ; $5CFB: $00
    add hl, bc                                    ; $5CFC: $09
    ld [bc], a                                    ; $5CFD: $02
    nop                                           ; $5CFE: $00
    ld hl, sp+$0A                                 ; $5CFF: $F8 $0A
    ld [bc], a                                    ; $5D01: $02
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    dec bc                                        ; $5D04: $0B
    ld [bc], a                                    ; $5D05: $02
    add b                                         ; $5D06: $80
    ld c, h                                       ; $5D07: $4C
    rst $38                                       ; $5D08: $FF
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    call nc, $005C                                ; $5D0B: $D4 $5C $00
    ld b, [hl]                                    ; $5D0E: $46
    rlca                                          ; $5D0F: $07
    ld e, l                                       ; $5D10: $5D
    ld c, l                                       ; $5D11: $4D
    ld b, $02                                     ; $5D12: $06 $02
    nop                                           ; $5D14: $00
    inc b                                         ; $5D15: $04
    call nc, $E55C                                ; $5D16: $D4 $5C $E5
    ld e, h                                       ; $5D19: $5C
    or $5C                                        ; $5D1A: $F6 $5C
    ld b, [hl]                                    ; $5D1C: $46
    ld de, $4C5D                                  ; $5D1D: $11 $5D $4C
    ld bc, $FE00                                  ; $5D20: $01 $00 $FE
    push hl                                       ; $5D23: $E5
    ld e, h                                       ; $5D24: $5C
    nop                                           ; $5D25: $00
    ld b, [hl]                                    ; $5D26: $46
    rra                                           ; $5D27: $1F
    ld e, l                                       ; $5D28: $5D
    ld c, h                                       ; $5D29: $4C
    ld bc, $0200                                  ; $5D2A: $01 $00 $02
    push hl                                       ; $5D2D: $E5
    ld e, h                                       ; $5D2E: $5C
    nop                                           ; $5D2F: $00
    ld b, [hl]                                    ; $5D30: $46
    add hl, hl                                    ; $5D31: $29
    ld e, l                                       ; $5D32: $5D
    ld c, h                                       ; $5D33: $4C
    ld bc, $0002                                  ; $5D34: $01 $02 $00
    or $5C                                        ; $5D37: $F6 $5C
    nop                                           ; $5D39: $00
    ld b, [hl]                                    ; $5D3A: $46
    inc sp                                        ; $5D3B: $33
    ld e, l                                       ; $5D3C: $5D
    ld c, h                                       ; $5D3D: $4C
    ld bc, $00FE                                  ; $5D3E: $01 $FE $00
    or $5C                                        ; $5D41: $F6 $5C
    nop                                           ; $5D43: $00
    ld b, [hl]                                    ; $5D44: $46
    dec a                                         ; $5D45: $3D
    ld e, l                                       ; $5D46: $5D
    ld c, h                                       ; $5D47: $4C
    ld bc, $FC00                                  ; $5D48: $01 $00 $FC
    push hl                                       ; $5D4B: $E5
    ld e, h                                       ; $5D4C: $5C
    nop                                           ; $5D4D: $00
    ld b, [hl]                                    ; $5D4E: $46
    ld b, a                                       ; $5D4F: $47
    ld e, l                                       ; $5D50: $5D
    ld c, h                                       ; $5D51: $4C
    ld bc, $0400                                  ; $5D52: $01 $00 $04
    push hl                                       ; $5D55: $E5
    ld e, h                                       ; $5D56: $5C
    nop                                           ; $5D57: $00
    ld b, [hl]                                    ; $5D58: $46
    ld d, c                                       ; $5D59: $51
    ld e, l                                       ; $5D5A: $5D
    ld c, h                                       ; $5D5B: $4C
    ld bc, $0004                                  ; $5D5C: $01 $04 $00
    or $5C                                        ; $5D5F: $F6 $5C
    nop                                           ; $5D61: $00
    ld b, [hl]                                    ; $5D62: $46
    ld e, e                                       ; $5D63: $5B
    ld e, l                                       ; $5D64: $5D
    ld c, h                                       ; $5D65: $4C
    ld bc, $00FC                                  ; $5D66: $01 $FC $00
    or $5C                                        ; $5D69: $F6 $5C
    nop                                           ; $5D6B: $00
    ld b, [hl]                                    ; $5D6C: $46
    ld h, l                                       ; $5D6D: $65
    ld e, l                                       ; $5D6E: $5D
    nop                                           ; $5D6F: $00
    ld hl, sp+$00                                 ; $5D70: $F8 $00
    nop                                           ; $5D72: $00
    add b                                         ; $5D73: $80
    nop                                           ; $5D74: $00
    ld hl, sp+$01                                 ; $5D75: $F8 $01
    nop                                           ; $5D77: $00
    add b                                         ; $5D78: $80
    nop                                           ; $5D79: $00
    ld hl, sp+$02                                 ; $5D7A: $F8 $02
    nop                                           ; $5D7C: $00
    add b                                         ; $5D7D: $80
    ld c, l                                       ; $5D7E: $4D
    ld b, $04                                     ; $5D7F: $06 $04
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    ld l, a                                       ; $5D83: $6F
    ld e, l                                       ; $5D84: $5D
    ld [hl], h                                    ; $5D85: $74
    ld e, l                                       ; $5D86: $5D
    ld a, c                                       ; $5D87: $79
    ld e, l                                       ; $5D88: $5D
    ld b, [hl]                                    ; $5D89: $46
    ld a, [hl]                                    ; $5D8A: $7E
    ld e, l                                       ; $5D8B: $5D
    ld c, h                                       ; $5D8C: $4C
    ld bc, $FCFC                                  ; $5D8D: $01 $FC $FC
    ld l, a                                       ; $5D90: $6F
    ld e, l                                       ; $5D91: $5D
    nop                                           ; $5D92: $00
    ld b, [hl]                                    ; $5D93: $46
    ld a, [hl]                                    ; $5D94: $7E
    ld e, l                                       ; $5D95: $5D
    ld c, h                                       ; $5D96: $4C
    ld bc, $FE00                                  ; $5D97: $01 $00 $FE
    ld l, a                                       ; $5D9A: $6F
    ld e, l                                       ; $5D9B: $5D
    nop                                           ; $5D9C: $00
    ld b, [hl]                                    ; $5D9D: $46
    ld a, [hl]                                    ; $5D9E: $7E
    ld e, l                                       ; $5D9F: $5D
    ld c, h                                       ; $5DA0: $4C
    ld bc, $FE00                                  ; $5DA1: $01 $00 $FE
    ld l, a                                       ; $5DA4: $6F
    ld e, l                                       ; $5DA5: $5D
    nop                                           ; $5DA6: $00
    ld b, [hl]                                    ; $5DA7: $46
    ld a, [hl]                                    ; $5DA8: $7E
    ld e, l                                       ; $5DA9: $5D
    ld c, h                                       ; $5DAA: $4C
    ld bc, $0002                                  ; $5DAB: $01 $02 $00
    ld l, a                                       ; $5DAE: $6F
    ld e, l                                       ; $5DAF: $5D
    nop                                           ; $5DB0: $00
    ld b, [hl]                                    ; $5DB1: $46
    ld a, [hl]                                    ; $5DB2: $7E
    ld e, l                                       ; $5DB3: $5D
    ld c, h                                       ; $5DB4: $4C
    ld bc, $0101                                  ; $5DB5: $01 $01 $01
    ld l, a                                       ; $5DB8: $6F
    ld e, l                                       ; $5DB9: $5D
    nop                                           ; $5DBA: $00
    ld b, [hl]                                    ; $5DBB: $46
    ld a, [hl]                                    ; $5DBC: $7E
    ld e, l                                       ; $5DBD: $5D

    db $00, $F8, $01, $06, $00, $00, $02, $06, $00, $08, $03, $06, $F8, $00, $00, $06
    db $80, $00, $F8, $06, $06, $00, $00, $07, $06, $00, $08, $08, $06, $F8, $F8, $04
    db $06, $F8, $00, $05, $06, $80, $00, $F8, $09, $06, $00, $00, $0A, $06, $00, $08
    db $0B, $06, $80, $4D, $08, $04, $00, $00, $BE, $5D, $CF, $5D, $BE, $5D, $E4, $5D
    db $42, $F0, $F8, $00, $03, $F0, $00, $01, $03, $F8, $F8, $07, $03, $F8, $00, $08
    db $03, $00, $F8, $11, $05, $00, $00, $12, $05, $80, $F0, $00, $00, $23, $F0, $F8
    db $01, $23, $F8, $00, $07, $23, $F8, $F8, $08, $23, $00, $00, $11, $25, $00, $F8
    db $12, $25, $80

    ldh a, [$F8]                                  ; $5E31: $F0 $F8
    dec b                                         ; $5E33: $05
    inc bc                                        ; $5E34: $03
    ldh a, [rP1]                                  ; $5E35: $F0 $00
    ld b, $03                                     ; $5E37: $06 $03
    ld hl, sp-$08                                 ; $5E39: $F8 $F8
    dec bc                                        ; $5E3B: $0B
    inc bc                                        ; $5E3C: $03
    ld hl, sp+$00                                 ; $5E3D: $F8 $00
    inc c                                         ; $5E3F: $0C
    inc bc                                        ; $5E40: $03
    nop                                           ; $5E41: $00
    cp $15                                        ; $5E42: $FE $15
    dec b                                         ; $5E44: $05
    add b                                         ; $5E45: $80
    ldh a, [rSB]                                  ; $5E46: $F0 $01
    dec b                                         ; $5E48: $05
    inc hl                                        ; $5E49: $23
    ldh a, [$F9]                                  ; $5E4A: $F0 $F9
    ld b, $23                                     ; $5E4C: $06 $23
    ld hl, sp+$01                                 ; $5E4E: $F8 $01
    dec bc                                        ; $5E50: $0B
    inc hl                                        ; $5E51: $23
    ld hl, sp-$07                                 ; $5E52: $F8 $F9
    inc c                                         ; $5E54: $0C
    inc hl                                        ; $5E55: $23
    nop                                           ; $5E56: $00
    ei                                            ; $5E57: $FB
    dec d                                         ; $5E58: $15
    dec h                                         ; $5E59: $25
    add b                                         ; $5E5A: $80
    pop af                                        ; $5E5B: $F1
    ld hl, sp+$02                                 ; $5E5C: $F8 $02
    inc bc                                        ; $5E5E: $03
    pop af                                        ; $5E5F: $F1
    nop                                           ; $5E60: $00
    inc bc                                        ; $5E61: $03
    inc bc                                        ; $5E62: $03
    ld hl, sp-$08                                 ; $5E63: $F8 $F8
    dec c                                         ; $5E65: $0D
    inc bc                                        ; $5E66: $03
    ld hl, sp+$00                                 ; $5E67: $F8 $00
    ld c, $03                                     ; $5E69: $0E $03
    nop                                           ; $5E6B: $00
    db $FC                                        ; $5E6C: $FC
    ld d, $05                                     ; $5E6D: $16 $05
    add b                                         ; $5E6F: $80

    db $F0, $F8, $02, $03, $F0, $00, $03, $03, $F8, $F8, $09, $03, $F8, $00, $09, $23
    db $00, $F9, $13, $25, $00, $00, $13, $05, $80

    pop af                                        ; $5E89: $F1
    ld hl, sp+$02                                 ; $5E8A: $F8 $02
    inc bc                                        ; $5E8C: $03
    pop af                                        ; $5E8D: $F1
    nop                                           ; $5E8E: $00
    inc bc                                        ; $5E8F: $03
    inc bc                                        ; $5E90: $03
    ld hl, sp+$00                                 ; $5E91: $F8 $00
    dec c                                         ; $5E93: $0D
    inc hl                                        ; $5E94: $23
    ld hl, sp-$08                                 ; $5E95: $F8 $F8
    ld c, $23                                     ; $5E97: $0E $23
    nop                                           ; $5E99: $00
    db $FC                                        ; $5E9A: $FC
    ld d, $25                                     ; $5E9B: $16 $25
    add b                                         ; $5E9D: $80
    pop af                                        ; $5E9E: $F1
    ld hl, sp+$04                                 ; $5E9F: $F8 $04
    inc bc                                        ; $5EA1: $03
    pop af                                        ; $5EA2: $F1
    nop                                           ; $5EA3: $00
    inc b                                         ; $5EA4: $04
    inc hl                                        ; $5EA5: $23
    ld hl, sp-$08                                 ; $5EA6: $F8 $F8
    rrca                                          ; $5EA8: $0F
    inc bc                                        ; $5EA9: $03
    ld hl, sp+$00                                 ; $5EAA: $F8 $00
    db $10                                        ; $5EAC: $10
    inc bc                                        ; $5EAD: $03
    nop                                           ; $5EAE: $00
    db $FD                                        ; $5EAF: $FD
    rla                                           ; $5EB0: $17
    dec b                                         ; $5EB1: $05
    add b                                         ; $5EB2: $80
    ldh a, [$F8]                                  ; $5EB3: $F0 $F8
    inc b                                         ; $5EB5: $04
    inc bc                                        ; $5EB6: $03
    ldh a, [rP1]                                  ; $5EB7: $F0 $00
    inc b                                         ; $5EB9: $04
    inc hl                                        ; $5EBA: $23
    ld hl, sp-$08                                 ; $5EBB: $F8 $F8
    ld a, [bc]                                    ; $5EBD: $0A
    inc bc                                        ; $5EBE: $03
    ld hl, sp+$00                                 ; $5EBF: $F8 $00
    ld a, [bc]                                    ; $5EC1: $0A
    inc hl                                        ; $5EC2: $23
    nop                                           ; $5EC3: $00
    ld sp, hl                                     ; $5EC4: $F9
    inc d                                         ; $5EC5: $14
    dec h                                         ; $5EC6: $25
    nop                                           ; $5EC7: $00
    nop                                           ; $5EC8: $00
    inc d                                         ; $5EC9: $14
    dec b                                         ; $5ECA: $05
    add b                                         ; $5ECB: $80
    pop af                                        ; $5ECC: $F1
    ld hl, sp+$04                                 ; $5ECD: $F8 $04
    inc bc                                        ; $5ECF: $03
    pop af                                        ; $5ED0: $F1
    nop                                           ; $5ED1: $00
    inc b                                         ; $5ED2: $04
    inc hl                                        ; $5ED3: $23
    ld hl, sp+$00                                 ; $5ED4: $F8 $00
    rrca                                          ; $5ED6: $0F
    inc hl                                        ; $5ED7: $23
    ld hl, sp-$08                                 ; $5ED8: $F8 $F8
    db $10                                        ; $5EDA: $10
    inc hl                                        ; $5EDB: $23
    nop                                           ; $5EDC: $00
    ei                                            ; $5EDD: $FB
    rla                                           ; $5EDE: $17
    dec h                                         ; $5EDF: $25
    add b                                         ; $5EE0: $80

    db $F1, $F8, $18, $03, $F1, $00, $19, $03, $F8, $F8, $1A, $03, $F8, $00, $1B, $03
    db $00, $F8, $20, $05, $00, $00, $21, $05, $80, $F0, $F8, $18, $03, $F0, $00, $19
    db $03, $F8, $F8, $1C, $03, $F8, $00, $1D, $03, $00, $FC, $22, $05, $80, $F1, $F8
    db $18, $03, $F1, $00, $19, $03, $F8, $F8, $1E, $03, $F8, $00, $1F, $03, $00, $F8
    db $23, $05, $00, $00, $24, $05, $80, $F1, $00, $18, $23, $F1, $F8, $19, $23, $F8
    db $00, $1A, $23, $F8, $F8, $1B, $23, $00, $00, $20, $25, $00, $F8, $21, $25, $80
    db $F0, $00, $18, $23, $F0, $F8, $19, $23, $F8, $00, $1C, $23, $F8, $F8, $1D, $23
    db $00, $FC, $22, $25, $80, $F1, $00, $18, $23, $F1, $F8, $19, $23, $F8, $00, $1E
    db $23, $F8, $F8, $1F, $23, $00, $00, $23, $25, $00, $F8, $24, $25, $80

    ld c, l                                       ; $5F6F: $4D
    ld [$0008], sp                                ; $5F70: $08 $08 $00
    rst $38                                       ; $5F73: $FF
    sbc [hl]                                      ; $5F74: $9E
    ld e, [hl]                                    ; $5F75: $5E
    or e                                          ; $5F76: $B3
    ld e, [hl]                                    ; $5F77: $5E
    call z, $B35E                                 ; $5F78: $CC $5E $B3
    ld e, [hl]                                    ; $5F7B: $5E
    ld b, [hl]                                    ; $5F7C: $46
    ld l, a                                       ; $5F7D: $6F
    ld e, a                                       ; $5F7E: $5F
    ld c, l                                       ; $5F7F: $4D
    ld [$0008], sp                                ; $5F80: $08 $08 $00
    ld bc, $5E5B                                  ; $5F83: $01 $5B $5E
    ld [hl], b                                    ; $5F86: $70
    ld e, [hl]                                    ; $5F87: $5E
    adc c                                         ; $5F88: $89
    ld e, [hl]                                    ; $5F89: $5E
    ld [hl], b                                    ; $5F8A: $70
    ld e, [hl]                                    ; $5F8B: $5E
    ld b, [hl]                                    ; $5F8C: $46
    ld a, a                                       ; $5F8D: $7F
    ld e, a                                       ; $5F8E: $5F

    db $4D, $08, $08, $FF, $00, $28, $5F, $41, $5F, $56, $5F, $41, $5F, $46, $8F, $5F
    db $4D, $08, $08, $01, $00, $E1, $5E, $FA, $5E, $0F, $5F, $FA, $5E, $46, $9F, $5F

    ld c, l                                       ; $5FAF: $4D
    ld [$0008], sp                                ; $5FB0: $08 $08 $00
    cp $9E                                        ; $5FB3: $FE $9E
    ld e, [hl]                                    ; $5FB5: $5E
    or e                                          ; $5FB6: $B3
    ld e, [hl]                                    ; $5FB7: $5E
    call z, $B35E                                 ; $5FB8: $CC $5E $B3
    ld e, [hl]                                    ; $5FBB: $5E
    ld b, [hl]                                    ; $5FBC: $46
    xor a                                         ; $5FBD: $AF
    ld e, a                                       ; $5FBE: $5F
    ld c, l                                       ; $5FBF: $4D
    ld [$0008], sp                                ; $5FC0: $08 $08 $00
    ld [bc], a                                    ; $5FC3: $02
    ld e, e                                       ; $5FC4: $5B
    ld e, [hl]                                    ; $5FC5: $5E
    ld [hl], b                                    ; $5FC6: $70
    ld e, [hl]                                    ; $5FC7: $5E
    adc c                                         ; $5FC8: $89
    ld e, [hl]                                    ; $5FC9: $5E
    ld [hl], b                                    ; $5FCA: $70
    ld e, [hl]                                    ; $5FCB: $5E
    ld b, [hl]                                    ; $5FCC: $46
    cp a                                          ; $5FCD: $BF
    ld e, a                                       ; $5FCE: $5F
    ld c, l                                       ; $5FCF: $4D
    ld [$FE08], sp                                ; $5FD0: $08 $08 $FE
    nop                                           ; $5FD3: $00
    jr z, @+$61                                   ; $5FD4: $28 $5F

    ld b, c                                       ; $5FD6: $41
    ld e, a                                       ; $5FD7: $5F
    ld d, [hl]                                    ; $5FD8: $56
    ld e, a                                       ; $5FD9: $5F
    ld b, c                                       ; $5FDA: $41
    ld e, a                                       ; $5FDB: $5F
    ld b, [hl]                                    ; $5FDC: $46
    rst $08                                       ; $5FDD: $CF
    ld e, a                                       ; $5FDE: $5F
    ld c, l                                       ; $5FDF: $4D
    ld [$0208], sp                                ; $5FE0: $08 $08 $02
    nop                                           ; $5FE3: $00
    pop hl                                        ; $5FE4: $E1
    ld e, [hl]                                    ; $5FE5: $5E
    ld a, [$0F5E]                                 ; $5FE6: $FA $5E $0F
    ld e, a                                       ; $5FE9: $5F
    ld a, [$465E]                                 ; $5FEA: $FA $5E $46
    rst $18                                       ; $5FED: $DF
    ld e, a                                       ; $5FEE: $5F
    ld c, h                                       ; $5FEF: $4C
    rst $38                                       ; $5FF0: $FF
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    or e                                          ; $5FF3: $B3
    ld e, [hl]                                    ; $5FF4: $5E
    nop                                           ; $5FF5: $00
    ld b, [hl]                                    ; $5FF6: $46
    rst $28                                       ; $5FF7: $EF
    ld e, a                                       ; $5FF8: $5F

    db $4C, $FF, $00, $00, $70, $5E

    nop                                           ; $5FFF: $00
    ld b, [hl]                                    ; $6000: $46
    ld sp, hl                                     ; $6001: $F9
    ld e, a                                       ; $6002: $5F
    ld c, h                                       ; $6003: $4C
    rst $38                                       ; $6004: $FF
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    ld b, c                                       ; $6007: $41
    ld e, a                                       ; $6008: $5F
    nop                                           ; $6009: $00
    ld b, [hl]                                    ; $600A: $46
    inc bc                                        ; $600B: $03
    ld h, b                                       ; $600C: $60
    ld c, h                                       ; $600D: $4C
    rst $38                                       ; $600E: $FF
    nop                                           ; $600F: $00
    nop                                           ; $6010: $00
    ld a, [$005E]                                 ; $6011: $FA $5E $00
    ld b, [hl]                                    ; $6014: $46
    dec c                                         ; $6015: $0D
    ld h, b                                       ; $6016: $60
    ld c, h                                       ; $6017: $4C
    rst $38                                       ; $6018: $FF
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    ld b, [hl]                                    ; $601B: $46
    ld e, [hl]                                    ; $601C: $5E
    nop                                           ; $601D: $00
    ld b, [hl]                                    ; $601E: $46
    rla                                           ; $601F: $17
    ld h, b                                       ; $6020: $60
    ld c, h                                       ; $6021: $4C
    rst $38                                       ; $6022: $FF
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    ld sp, $005E                                  ; $6025: $31 $5E $00
    ld b, [hl]                                    ; $6028: $46
    db $21                                        ; $6029: $21
    ld h, b                                       ; $602A: $60

    db $4C, $FF, $00, $00, $18, $5E

    nop                                           ; $6031: $00
    ld b, [hl]                                    ; $6032: $46
    dec hl                                        ; $6033: $2B
    ld h, b                                       ; $6034: $60

    db $4C, $FF, $00, $00, $FF, $5D

    nop                                           ; $603B: $00
    ld b, [hl]                                    ; $603C: $46
    dec [hl]                                      ; $603D: $35
    ld h, b                                       ; $603E: $60
    ld c, e                                       ; $603F: $4B
    inc bc                                        ; $6040: $03
    stop                                          ; $6041: $10 $00
    nop                                           ; $6043: $00
    ld d, [hl]                                    ; $6044: $56
    ld h, b                                       ; $6045: $60
    db $10                                        ; $6046: $10
    inc bc                                        ; $6047: $03
    nop                                           ; $6048: $00
    ld e, l                                       ; $6049: $5D
    ld h, b                                       ; $604A: $60
    db $10                                        ; $604B: $10
    ld [bc], a                                    ; $604C: $02
    nop                                           ; $604D: $00
    ld l, e                                       ; $604E: $6B
    ld h, b                                       ; $604F: $60
    db $10                                        ; $6050: $10
    ld bc, $6400                                  ; $6051: $01 $00 $64
    ld h, b                                       ; $6054: $60
    rst $38                                       ; $6055: $FF
    inc d                                         ; $6056: $14
    db $10                                        ; $6057: $10
    rst $28                                       ; $6058: $EF
    ld e, a                                       ; $6059: $5F
    ld h, d                                       ; $605A: $62
    ld bc, $1412                                  ; $605B: $01 $12 $14
    db $10                                        ; $605E: $10
    ld sp, hl                                     ; $605F: $F9
    ld e, a                                       ; $6060: $5F
    ld h, d                                       ; $6061: $62
    ld bc, $1412                                  ; $6062: $01 $12 $14
    db $10                                        ; $6065: $10
    inc bc                                        ; $6066: $03
    ld h, b                                       ; $6067: $60
    ld h, d                                       ; $6068: $62
    ld bc, $1412                                  ; $6069: $01 $12 $14
    db $10                                        ; $606C: $10
    dec c                                         ; $606D: $0D
    ld h, b                                       ; $606E: $60
    ld h, d                                       ; $606F: $62
    ld bc, $F812                                  ; $6070: $01 $12 $F8
    ld hl, sp+$02                                 ; $6073: $F8 $02
    inc bc                                        ; $6075: $03
    ld hl, sp+$00                                 ; $6076: $F8 $00
    inc bc                                        ; $6078: $03
    inc bc                                        ; $6079: $03
    ldh a, [$F8]                                  ; $607A: $F0 $F8
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    ld hl, sp+$06                                 ; $607F: $F8 $06
    inc bc                                        ; $6081: $03
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    rlca                                          ; $6084: $07
    inc bc                                        ; $6085: $03
    add b                                         ; $6086: $80
    ld hl, sp-$08                                 ; $6087: $F8 $F8
    inc b                                         ; $6089: $04
    inc bc                                        ; $608A: $03
    ld hl, sp+$00                                 ; $608B: $F8 $00
    dec b                                         ; $608D: $05
    inc bc                                        ; $608E: $03
    nop                                           ; $608F: $00
    ld hl, sp+$08                                 ; $6090: $F8 $08
    inc bc                                        ; $6092: $03
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    add hl, bc                                    ; $6095: $09
    inc bc                                        ; $6096: $03
    ldh a, [$F8]                                  ; $6097: $F0 $F8
    ld bc, $8000                                  ; $6099: $01 $00 $80
    ld hl, sp+$00                                 ; $609C: $F8 $00
    ld [bc], a                                    ; $609E: $02
    inc hl                                        ; $609F: $23
    ld hl, sp-$08                                 ; $60A0: $F8 $F8
    inc bc                                        ; $60A2: $03
    inc hl                                        ; $60A3: $23
    ldh a, [rP1]                                  ; $60A4: $F0 $00
    nop                                           ; $60A6: $00
    jr nz, jr_010_60A9                            ; $60A7: $20 $00

jr_010_60A9:
    nop                                           ; $60A9: $00
    ld b, $23                                     ; $60AA: $06 $23
    nop                                           ; $60AC: $00
    ld hl, sp+$07                                 ; $60AD: $F8 $07
    inc hl                                        ; $60AF: $23
    add b                                         ; $60B0: $80
    ld hl, sp+$00                                 ; $60B1: $F8 $00
    inc b                                         ; $60B3: $04
    inc hl                                        ; $60B4: $23
    ld hl, sp-$08                                 ; $60B5: $F8 $F8
    dec b                                         ; $60B7: $05
    inc hl                                        ; $60B8: $23
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    ld [$0023], sp                                ; $60BB: $08 $23 $00
    ld hl, sp+$09                                 ; $60BE: $F8 $09
    inc hl                                        ; $60C0: $23
    ldh a, [rP1]                                  ; $60C1: $F0 $00
    ld bc, $8020                                  ; $60C3: $01 $20 $80
    ld c, h                                       ; $60C6: $4C
    rst $38                                       ; $60C7: $FF
    nop                                           ; $60C8: $00
    nop                                           ; $60C9: $00
    sbc h                                         ; $60CA: $9C
    ld h, b                                       ; $60CB: $60
    nop                                           ; $60CC: $00
    ld b, [hl]                                    ; $60CD: $46
    add $60                                       ; $60CE: $C6 $60
    ld c, h                                       ; $60D0: $4C
    rst $38                                       ; $60D1: $FF
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    ld [hl], d                                    ; $60D4: $72
    ld h, b                                       ; $60D5: $60
    nop                                           ; $60D6: $00
    ld b, [hl]                                    ; $60D7: $46
    ret nc                                        ; $60D8: $D0

    ld h, b                                       ; $60D9: $60
    ld c, l                                       ; $60DA: $4D
    inc b                                         ; $60DB: $04
    stop                                          ; $60DC: $10 $00
    nop                                           ; $60DE: $00
    or c                                          ; $60DF: $B1
    ld h, b                                       ; $60E0: $60
    sbc h                                         ; $60E1: $9C
    ld h, b                                       ; $60E2: $60
    ld b, [hl]                                    ; $60E3: $46
    jp c, Jump_010_4D60                           ; $60E4: $DA $60 $4D

    inc b                                         ; $60E7: $04
    stop                                          ; $60E8: $10 $00
    nop                                           ; $60EA: $00
    add a                                         ; $60EB: $87
    ld h, b                                       ; $60EC: $60
    ld [hl], d                                    ; $60ED: $72
    ld h, b                                       ; $60EE: $60
    ld b, [hl]                                    ; $60EF: $46
    and $60                                       ; $60F0: $E6 $60
    ld c, l                                       ; $60F2: $4D
    inc b                                         ; $60F3: $04
    ld [bc], a                                    ; $60F4: $02
    cp $00                                        ; $60F5: $FE $00
    sbc h                                         ; $60F7: $9C
    ld h, b                                       ; $60F8: $60
    or c                                          ; $60F9: $B1
    ld h, b                                       ; $60FA: $60
    ld b, [hl]                                    ; $60FB: $46
    ld a, [c]                                     ; $60FC: $F2
    ld h, b                                       ; $60FD: $60
    ld c, l                                       ; $60FE: $4D
    inc b                                         ; $60FF: $04
    ld [bc], a                                    ; $6100: $02
    ld [bc], a                                    ; $6101: $02
    nop                                           ; $6102: $00
    ld [hl], d                                    ; $6103: $72
    ld h, b                                       ; $6104: $60
    add a                                         ; $6105: $87
    ld h, b                                       ; $6106: $60
    ld b, [hl]                                    ; $6107: $46
    cp $60                                        ; $6108: $FE $60
    ld c, l                                       ; $610A: $4D
    ld [$0002], sp                                ; $610B: $08 $02 $00
    cp $B1                                        ; $610E: $FE $B1
    ld h, b                                       ; $6110: $60
    ld [hl], d                                    ; $6111: $72
    ld h, b                                       ; $6112: $60
    sbc h                                         ; $6113: $9C
    ld h, b                                       ; $6114: $60
    add a                                         ; $6115: $87
    ld h, b                                       ; $6116: $60
    ld b, [hl]                                    ; $6117: $46
    ld a, [bc]                                    ; $6118: $0A
    ld h, c                                       ; $6119: $61
    ld c, l                                       ; $611A: $4D
    ld [$0002], sp                                ; $611B: $08 $02 $00
    ld [bc], a                                    ; $611E: $02
    or c                                          ; $611F: $B1
    ld h, b                                       ; $6120: $60
    ld [hl], d                                    ; $6121: $72
    ld h, b                                       ; $6122: $60
    sbc h                                         ; $6123: $9C
    ld h, b                                       ; $6124: $60
    add a                                         ; $6125: $87
    ld h, b                                       ; $6126: $60
    ld b, [hl]                                    ; $6127: $46
    ld a, [de]                                    ; $6128: $1A
    ld h, c                                       ; $6129: $61
    ld c, h                                       ; $612A: $4C
    ld bc, $FC01                                  ; $612B: $01 $01 $FC
    add a                                         ; $612E: $87
    ld h, b                                       ; $612F: $60
    ld [bc], a                                    ; $6130: $02
    ld bc, $87FD                                  ; $6131: $01 $FD $87
    ld h, b                                       ; $6134: $60
    ld [bc], a                                    ; $6135: $02
    ld bc, $87FE                                  ; $6136: $01 $FE $87
    ld h, b                                       ; $6139: $60
    ld [bc], a                                    ; $613A: $02
    ld bc, $87FF                                  ; $613B: $01 $FF $87
    ld h, b                                       ; $613E: $60
    ld [bc], a                                    ; $613F: $02
    ld [bc], a                                    ; $6140: $02
    nop                                           ; $6141: $00
    add a                                         ; $6142: $87
    ld h, b                                       ; $6143: $60
    nop                                           ; $6144: $00
    ld b, [hl]                                    ; $6145: $46
    ret nc                                        ; $6146: $D0

    ld h, b                                       ; $6147: $60
    ld c, h                                       ; $6148: $4C
    ld [bc], a                                    ; $6149: $02
    cp $00                                        ; $614A: $FE $00
    or c                                          ; $614C: $B1
    ld h, b                                       ; $614D: $60
    ld [bc], a                                    ; $614E: $02
    rst $38                                       ; $614F: $FF
    ld bc, $60B1                                  ; $6150: $01 $B1 $60
    ld [bc], a                                    ; $6153: $02
    rst $38                                       ; $6154: $FF
    ld [bc], a                                    ; $6155: $02
    or c                                          ; $6156: $B1
    ld h, b                                       ; $6157: $60
    ld [bc], a                                    ; $6158: $02
    rst $38                                       ; $6159: $FF
    inc bc                                        ; $615A: $03
    or c                                          ; $615B: $B1
    ld h, b                                       ; $615C: $60
    ld bc, $04FF                                  ; $615D: $01 $FF $04
    or c                                          ; $6160: $B1
    ld h, b                                       ; $6161: $60
    nop                                           ; $6162: $00
    ld b, [hl]                                    ; $6163: $46
    add $60                                       ; $6164: $C6 $60
    ldh a, [$F8]                                  ; $6166: $F0 $F8
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    ldh a, [rP1]                                  ; $616A: $F0 $00
    ld bc, $F800                                  ; $616C: $01 $00 $F8
    ld hl, sp+$08                                 ; $616F: $F8 $08
    nop                                           ; $6171: $00
    ld hl, sp+$00                                 ; $6172: $F8 $00

jr_010_6174:
    add hl, bc                                    ; $6174: $09
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    ld hl, sp+$14                                 ; $6177: $F8 $14
    ld [bc], a                                    ; $6179: $02
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    dec d                                         ; $617C: $15
    ld [bc], a                                    ; $617D: $02
    add b                                         ; $617E: $80
    ldh a, [rP1]                                  ; $617F: $F0 $00
    nop                                           ; $6181: $00
    jr nz, jr_010_6174                            ; $6182: $20 $F0

    ld hl, sp+$01                                 ; $6184: $F8 $01
    jr nz, @-$06                                  ; $6186: $20 $F8

    nop                                           ; $6188: $00
    ld [$F820], sp                                ; $6189: $08 $20 $F8
    ld hl, sp+$09                                 ; $618C: $F8 $09
    jr nz, jr_010_6190                            ; $618E: $20 $00

jr_010_6190:
    nop                                           ; $6190: $00
    inc d                                         ; $6191: $14
    ld [hl+], a                                   ; $6192: $22
    nop                                           ; $6193: $00
    ld hl, sp+$15                                 ; $6194: $F8 $15
    ld [hl+], a                                   ; $6196: $22
    add b                                         ; $6197: $80

    db $F0, $F8, $06, $00, $F0, $00, $07, $00, $F8, $F8, $0E, $00, $F8, $00, $0F, $00
    db $00, $F8, $18, $02, $00, $00, $19, $02, $80, $F0, $00, $06, $20, $F0, $F8, $07
    db $20, $F8, $00, $0E, $20, $F8, $F8, $0F, $20, $00, $00, $18, $22, $00, $F8, $19
    db $22, $80

    pop af                                        ; $61CA: $F1
    ld hl, sp+$02                                 ; $61CB: $F8 $02
    nop                                           ; $61CD: $00
    pop af                                        ; $61CE: $F1
    nop                                           ; $61CF: $00
    inc bc                                        ; $61D0: $03
    nop                                           ; $61D1: $00
    ld hl, sp-$08                                 ; $61D2: $F8 $F8
    stop                                          ; $61D4: $10 $00
    ld hl, sp+$00                                 ; $61D6: $F8 $00
    ld de, $0000                                  ; $61D8: $11 $00 $00
    ld hl, sp+$1A                                 ; $61DB: $F8 $1A
    ld [bc], a                                    ; $61DD: $02
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    dec de                                        ; $61E0: $1B
    ld [bc], a                                    ; $61E1: $02
    add b                                         ; $61E2: $80
    ldh a, [$F8]                                  ; $61E3: $F0 $F8
    ld [bc], a                                    ; $61E5: $02
    nop                                           ; $61E6: $00
    ldh a, [rP1]                                  ; $61E7: $F0 $00
    inc bc                                        ; $61E9: $03
    nop                                           ; $61EA: $00
    ld hl, sp-$08                                 ; $61EB: $F8 $F8
    ld a, [bc]                                    ; $61ED: $0A
    nop                                           ; $61EE: $00
    ld hl, sp+$00                                 ; $61EF: $F8 $00
    dec bc                                        ; $61F1: $0B
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    ld d, $02                                     ; $61F5: $16 $02
    nop                                           ; $61F7: $00
    ld sp, hl                                     ; $61F8: $F9
    ld d, $22                                     ; $61F9: $16 $22
    add b                                         ; $61FB: $80
    pop af                                        ; $61FC: $F1
    ld hl, sp+$02                                 ; $61FD: $F8 $02
    nop                                           ; $61FF: $00
    pop af                                        ; $6200: $F1
    nop                                           ; $6201: $00
    inc bc                                        ; $6202: $03
    nop                                           ; $6203: $00
    ld hl, sp-$08                                 ; $6204: $F8 $F8
    inc l                                         ; $6206: $2C
    nop                                           ; $6207: $00
    ld hl, sp+$00                                 ; $6208: $F8 $00
    dec l                                         ; $620A: $2D
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    ld a, [de]                                    ; $620E: $1A
    ld [hl+], a                                   ; $620F: $22
    nop                                           ; $6210: $00
    ld hl, sp+$1B                                 ; $6211: $F8 $1B
    ld [hl+], a                                   ; $6213: $22
    add b                                         ; $6214: $80

    db $F1, $F8, $04, $00, $F1, $00, $05, $00, $F8, $F8, $12, $00, $F8, $00, $13, $00
    db $00, $F8, $1C, $02, $00, $00, $1D, $02, $80

    ldh a, [$F8]                                  ; $622E: $F0 $F8
    inc b                                         ; $6230: $04
    nop                                           ; $6231: $00
    ldh a, [rP1]                                  ; $6232: $F0 $00
    dec b                                         ; $6234: $05
    nop                                           ; $6235: $00
    ld hl, sp-$08                                 ; $6236: $F8 $F8
    inc c                                         ; $6238: $0C
    nop                                           ; $6239: $00
    ld hl, sp+$00                                 ; $623A: $F8 $00
    dec c                                         ; $623C: $0D
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    rla                                           ; $6240: $17
    ld [bc], a                                    ; $6241: $02
    nop                                           ; $6242: $00
    ld sp, hl                                     ; $6243: $F9
    rla                                           ; $6244: $17
    ld [hl+], a                                   ; $6245: $22
    add b                                         ; $6246: $80
    pop af                                        ; $6247: $F1
    ld hl, sp+$04                                 ; $6248: $F8 $04
    nop                                           ; $624A: $00
    pop af                                        ; $624B: $F1
    nop                                           ; $624C: $00
    dec b                                         ; $624D: $05
    nop                                           ; $624E: $00
    ld hl, sp-$08                                 ; $624F: $F8 $F8
    ld l, $00                                     ; $6251: $2E $00
    ld hl, sp+$00                                 ; $6253: $F8 $00

Jump_010_6255:
    cpl                                           ; $6255: $2F
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    ld bc, $221C                                  ; $6258: $01 $1C $22
    nop                                           ; $625B: $00
    ld sp, hl                                     ; $625C: $F9
    dec e                                         ; $625D: $1D
    ld [hl+], a                                   ; $625E: $22
    add b                                         ; $625F: $80

    db $F1, $F8, $1E, $00, $F1, $00, $1F, $00, $F8, $F8, $20, $00, $F8, $00, $21, $00
    db $00, $F8, $26, $02, $00, $00, $27, $02, $80, $F0, $F8, $1E, $00, $F0, $00, $1F
    db $00, $F8, $F8, $22, $00, $F8, $00, $23, $00, $00, $F8, $28, $02, $00, $00, $29
    db $02, $80, $F1, $F8, $1E, $00, $F1, $00, $1F, $00, $F8, $F8, $24, $00, $F8, $00
    db $25, $00, $00, $F8, $2A, $02, $00, $00, $2B, $02, $80

    pop af                                        ; $62AB: $F1

jr_010_62AC:
    nop                                           ; $62AC: $00
    ld e, $20                                     ; $62AD: $1E $20
    pop af                                        ; $62AF: $F1
    ld hl, sp+$1F                                 ; $62B0: $F8 $1F
    jr nz, jr_010_62AC                            ; $62B2: $20 $F8

    nop                                           ; $62B4: $00
    jr nz, @+$22                                  ; $62B5: $20 $20

    ld hl, sp-$08                                 ; $62B7: $F8 $F8
    ld hl, $0020                                  ; $62B9: $21 $20 $00
    nop                                           ; $62BC: $00
    ld h, $22                                     ; $62BD: $26 $22
    nop                                           ; $62BF: $00
    ld hl, sp+$27                                 ; $62C0: $F8 $27
    ld [hl+], a                                   ; $62C2: $22
    add b                                         ; $62C3: $80
    ldh a, [rP1]                                  ; $62C4: $F0 $00
    ld e, $20                                     ; $62C6: $1E $20
    ldh a, [$F8]                                  ; $62C8: $F0 $F8
    rra                                           ; $62CA: $1F
    jr nz, @-$06                                  ; $62CB: $20 $F8

    nop                                           ; $62CD: $00
    ld [hl+], a                                   ; $62CE: $22
    jr nz, @-$06                                  ; $62CF: $20 $F8

    ld hl, sp+$23                                 ; $62D1: $F8 $23
    jr nz, jr_010_62D5                            ; $62D3: $20 $00

jr_010_62D5:
    nop                                           ; $62D5: $00
    jr z, @+$24                                   ; $62D6: $28 $22

    nop                                           ; $62D8: $00
    ld hl, sp+$29                                 ; $62D9: $F8 $29
    ld [hl+], a                                   ; $62DB: $22
    add b                                         ; $62DC: $80
    pop af                                        ; $62DD: $F1

jr_010_62DE:
    nop                                           ; $62DE: $00
    ld e, $20                                     ; $62DF: $1E $20
    pop af                                        ; $62E1: $F1

jr_010_62E2:
    ld hl, sp+$1F                                 ; $62E2: $F8 $1F
    jr nz, jr_010_62DE                            ; $62E4: $20 $F8

    nop                                           ; $62E6: $00
    inc h                                         ; $62E7: $24
    jr nz, jr_010_62E2                            ; $62E8: $20 $F8

    ld hl, sp+$25                                 ; $62EA: $F8 $25
    jr nz, jr_010_62EE                            ; $62EC: $20 $00

jr_010_62EE:
    nop                                           ; $62EE: $00
    ld a, [hl+]                                   ; $62EF: $2A
    ld [hl+], a                                   ; $62F0: $22
    nop                                           ; $62F1: $00
    ld hl, sp+$2B                                 ; $62F2: $F8 $2B
    ld [hl+], a                                   ; $62F4: $22
    add b                                         ; $62F5: $80

    db $4D, $08, $08, $00, $FF, $15, $62

    ld l, $62                                     ; $62FD: $2E $62
    ld b, a                                       ; $62FF: $47
    ld h, d                                       ; $6300: $62
    ld l, $62                                     ; $6301: $2E $62
    ld b, [hl]                                    ; $6303: $46
    or $62                                        ; $6304: $F6 $62
    ld c, l                                       ; $6306: $4D
    ld [$0008], sp                                ; $6307: $08 $08 $00
    ld bc, $61CA                                  ; $630A: $01 $CA $61
    db $E3                                        ; $630D: $E3
    ld h, c                                       ; $630E: $61
    db $FC                                        ; $630F: $FC
    ld h, c                                       ; $6310: $61
    db $E3                                        ; $6311: $E3
    ld h, c                                       ; $6312: $61
    ld b, [hl]                                    ; $6313: $46
    ld b, $63                                     ; $6314: $06 $63
    ld c, l                                       ; $6316: $4D
    ld [$FF08], sp                                ; $6317: $08 $08 $FF
    nop                                           ; $631A: $00
    xor e                                         ; $631B: $AB
    ld h, d                                       ; $631C: $62
    call nz, $DD62                                ; $631D: $C4 $62 $DD
    ld h, d                                       ; $6320: $62
    call nz, $4662                                ; $6321: $C4 $62 $46
    ld d, $63                                     ; $6324: $16 $63

    db $4D, $08, $08, $01, $00, $60, $62, $79, $62, $92, $62, $79, $62, $46, $26, $63

    ld c, l                                       ; $6336: $4D
    ld [$0008], sp                                ; $6337: $08 $08 $00
    cp $15                                        ; $633A: $FE $15
    ld h, d                                       ; $633C: $62
    ld l, $62                                     ; $633D: $2E $62
    ld b, a                                       ; $633F: $47
    ld h, d                                       ; $6340: $62
    ld l, $62                                     ; $6341: $2E $62
    ld b, [hl]                                    ; $6343: $46
    ld [hl], $63                                  ; $6344: $36 $63
    ld c, l                                       ; $6346: $4D
    ld [$0008], sp                                ; $6347: $08 $08 $00
    ld [bc], a                                    ; $634A: $02
    jp z, $E361                                   ; $634B: $CA $61 $E3

    ld h, c                                       ; $634E: $61
    db $FC                                        ; $634F: $FC
    ld h, c                                       ; $6350: $61
    db $E3                                        ; $6351: $E3
    ld h, c                                       ; $6352: $61
    ld b, [hl]                                    ; $6353: $46
    ld b, [hl]                                    ; $6354: $46
    ld h, e                                       ; $6355: $63
    ld c, l                                       ; $6356: $4D
    ld [$FE08], sp                                ; $6357: $08 $08 $FE
    nop                                           ; $635A: $00
    xor e                                         ; $635B: $AB
    ld h, d                                       ; $635C: $62
    call nz, $DD62                                ; $635D: $C4 $62 $DD
    ld h, d                                       ; $6360: $62
    call nz, $4662                                ; $6361: $C4 $62 $46
    ld d, [hl]                                    ; $6364: $56
    ld h, e                                       ; $6365: $63
    ld c, l                                       ; $6366: $4D
    ld [$0208], sp                                ; $6367: $08 $08 $02
    nop                                           ; $636A: $00
    ld h, b                                       ; $636B: $60
    ld h, d                                       ; $636C: $62
    ld a, c                                       ; $636D: $79
    ld h, d                                       ; $636E: $62
    sub d                                         ; $636F: $92
    ld h, d                                       ; $6370: $62
    ld a, c                                       ; $6371: $79
    ld h, d                                       ; $6372: $62
    ld b, [hl]                                    ; $6373: $46
    ld h, [hl]                                    ; $6374: $66
    ld h, e                                       ; $6375: $63
    ld c, h                                       ; $6376: $4C
    rst $38                                       ; $6377: $FF
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    ld l, $62                                     ; $637A: $2E $62
    nop                                           ; $637C: $00
    ld b, [hl]                                    ; $637D: $46
    halt                                          ; $637E: $76
    ld h, e                                       ; $637F: $63
    ld c, h                                       ; $6380: $4C
    rst $38                                       ; $6381: $FF
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    db $E3                                        ; $6384: $E3
    ld h, c                                       ; $6385: $61
    nop                                           ; $6386: $00
    ld b, [hl]                                    ; $6387: $46
    add b                                         ; $6388: $80
    ld h, e                                       ; $6389: $63
    ld c, h                                       ; $638A: $4C
    rst $38                                       ; $638B: $FF
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    call nz, $0062                                ; $638E: $C4 $62 $00
    ld b, [hl]                                    ; $6391: $46
    adc d                                         ; $6392: $8A
    ld h, e                                       ; $6393: $63

    db $4C, $FF, $00, $00, $79, $62, $00, $46, $94, $63, $4C, $FF, $00, $00, $B1, $61

    nop                                           ; $63A4: $00
    ld b, [hl]                                    ; $63A5: $46
    sbc [hl]                                      ; $63A6: $9E
    ld h, e                                       ; $63A7: $63

    db $4C, $FF, $00, $00, $98, $61

    nop                                           ; $63AE: $00
    ld b, [hl]                                    ; $63AF: $46
    xor b                                         ; $63B0: $A8
    ld h, e                                       ; $63B1: $63
    ld c, h                                       ; $63B2: $4C
    rst $38                                       ; $63B3: $FF
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    ld a, a                                       ; $63B6: $7F
    ld h, c                                       ; $63B7: $61
    nop                                           ; $63B8: $00
    ld b, [hl]                                    ; $63B9: $46
    or d                                          ; $63BA: $B2
    ld h, e                                       ; $63BB: $63
    ld c, h                                       ; $63BC: $4C
    rst $38                                       ; $63BD: $FF
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    ld h, [hl]                                    ; $63C0: $66
    ld h, c                                       ; $63C1: $61
    nop                                           ; $63C2: $00
    ld b, [hl]                                    ; $63C3: $46
    cp h                                          ; $63C4: $BC
    ld h, e                                       ; $63C5: $63
    ld c, e                                       ; $63C6: $4B
    inc bc                                        ; $63C7: $03
    stop                                          ; $63C8: $10 $00
    nop                                           ; $63CA: $00
    db $DD                                        ; $63CB: $DD
    ld h, e                                       ; $63CC: $63
    db $10                                        ; $63CD: $10
    inc bc                                        ; $63CE: $03
    nop                                           ; $63CF: $00
    db $E4                                        ; $63D0: $E4
    ld h, e                                       ; $63D1: $63
    db $10                                        ; $63D2: $10
    ld [bc], a                                    ; $63D3: $02
    nop                                           ; $63D4: $00
    ld a, [c]                                     ; $63D5: $F2
    ld h, e                                       ; $63D6: $63
    db $10                                        ; $63D7: $10
    ld bc, $EB00                                  ; $63D8: $01 $00 $EB
    ld h, e                                       ; $63DB: $63
    rst $38                                       ; $63DC: $FF
    inc d                                         ; $63DD: $14
    db $10                                        ; $63DE: $10
    halt                                          ; $63DF: $76
    ld h, e                                       ; $63E0: $63
    ld h, d                                       ; $63E1: $62
    ld bc, $1412                                  ; $63E2: $01 $12 $14
    db $10                                        ; $63E5: $10
    add b                                         ; $63E6: $80
    ld h, e                                       ; $63E7: $63
    ld h, d                                       ; $63E8: $62
    ld bc, $1412                                  ; $63E9: $01 $12 $14
    db $10                                        ; $63EC: $10
    adc d                                         ; $63ED: $8A
    ld h, e                                       ; $63EE: $63
    ld h, d                                       ; $63EF: $62
    ld bc, $1412                                  ; $63F0: $01 $12 $14
    db $10                                        ; $63F3: $10
    sub h                                         ; $63F4: $94
    ld h, e                                       ; $63F5: $63
    ld h, d                                       ; $63F6: $62
    ld bc, $F012                                  ; $63F7: $01 $12 $F0
    ld hl, sp+$00                                 ; $63FA: $F8 $00
    nop                                           ; $63FC: $00
    ldh a, [rP1]                                  ; $63FD: $F0 $00
    ld bc, $F800                                  ; $63FF: $01 $00 $F8
    ld hl, sp+$08                                 ; $6402: $F8 $08
    nop                                           ; $6404: $00
    ld hl, sp+$00                                 ; $6405: $F8 $00

jr_010_6407:
    add hl, bc                                    ; $6407: $09
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    ld hl, sp+$14                                 ; $640A: $F8 $14
    inc b                                         ; $640C: $04
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00
    dec d                                         ; $640F: $15
    inc b                                         ; $6410: $04
    add b                                         ; $6411: $80
    ldh a, [rP1]                                  ; $6412: $F0 $00
    nop                                           ; $6414: $00
    jr nz, jr_010_6407                            ; $6415: $20 $F0

    ld hl, sp+$01                                 ; $6417: $F8 $01
    jr nz, @-$06                                  ; $6419: $20 $F8

    nop                                           ; $641B: $00
    ld [$F820], sp                                ; $641C: $08 $20 $F8
    ld hl, sp+$09                                 ; $641F: $F8 $09
    jr nz, jr_010_6423                            ; $6421: $20 $00

jr_010_6423:
    nop                                           ; $6423: $00
    inc d                                         ; $6424: $14
    inc h                                         ; $6425: $24
    nop                                           ; $6426: $00
    ld hl, sp+$15                                 ; $6427: $F8 $15
    inc h                                         ; $6429: $24
    add b                                         ; $642A: $80
    ldh a, [$F8]                                  ; $642B: $F0 $F8
    ld b, $00                                     ; $642D: $06 $00
    ldh a, [rP1]                                  ; $642F: $F0 $00
    rlca                                          ; $6431: $07
    nop                                           ; $6432: $00
    ld hl, sp-$08                                 ; $6433: $F8 $F8
    ld c, $00                                     ; $6435: $0E $00
    ld hl, sp+$00                                 ; $6437: $F8 $00
    rrca                                          ; $6439: $0F
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    ld hl, sp+$18                                 ; $643C: $F8 $18
    inc b                                         ; $643E: $04
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    add hl, de                                    ; $6441: $19
    inc b                                         ; $6442: $04
    add b                                         ; $6443: $80
    ldh a, [rP1]                                  ; $6444: $F0 $00
    ld b, $20                                     ; $6446: $06 $20
    ldh a, [$F8]                                  ; $6448: $F0 $F8
    rlca                                          ; $644A: $07
    jr nz, @-$06                                  ; $644B: $20 $F8

    nop                                           ; $644D: $00
    ld c, $20                                     ; $644E: $0E $20
    ld hl, sp-$08                                 ; $6450: $F8 $F8
    rrca                                          ; $6452: $0F
    jr nz, jr_010_6455                            ; $6453: $20 $00

jr_010_6455:
    nop                                           ; $6455: $00
    jr jr_010_647C                                ; $6456: $18 $24

    nop                                           ; $6458: $00
    ld hl, sp+$19                                 ; $6459: $F8 $19
    inc h                                         ; $645B: $24
    add b                                         ; $645C: $80
    pop af                                        ; $645D: $F1
    ld hl, sp+$02                                 ; $645E: $F8 $02
    nop                                           ; $6460: $00
    pop af                                        ; $6461: $F1
    nop                                           ; $6462: $00
    inc bc                                        ; $6463: $03
    nop                                           ; $6464: $00
    ld hl, sp-$08                                 ; $6465: $F8 $F8
    stop                                          ; $6467: $10 $00
    ld hl, sp+$00                                 ; $6469: $F8 $00
    ld de, $0000                                  ; $646B: $11 $00 $00
    ld hl, sp+$1A                                 ; $646E: $F8 $1A
    inc b                                         ; $6470: $04
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    dec de                                        ; $6473: $1B
    inc b                                         ; $6474: $04
    add b                                         ; $6475: $80
    ldh a, [$F8]                                  ; $6476: $F0 $F8
    ld [bc], a                                    ; $6478: $02
    nop                                           ; $6479: $00
    ldh a, [rP1]                                  ; $647A: $F0 $00

jr_010_647C:
    inc bc                                        ; $647C: $03
    nop                                           ; $647D: $00
    ld hl, sp-$08                                 ; $647E: $F8 $F8
    ld a, [bc]                                    ; $6480: $0A
    nop                                           ; $6481: $00
    ld hl, sp+$00                                 ; $6482: $F8 $00
    dec bc                                        ; $6484: $0B
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    ld d, $04                                     ; $6488: $16 $04
    nop                                           ; $648A: $00
    ld sp, hl                                     ; $648B: $F9
    ld d, $24                                     ; $648C: $16 $24
    add b                                         ; $648E: $80
    pop af                                        ; $648F: $F1
    ld hl, sp+$02                                 ; $6490: $F8 $02
    nop                                           ; $6492: $00
    pop af                                        ; $6493: $F1
    nop                                           ; $6494: $00
    inc bc                                        ; $6495: $03
    nop                                           ; $6496: $00
    ld hl, sp-$08                                 ; $6497: $F8 $F8
    inc l                                         ; $6499: $2C
    nop                                           ; $649A: $00
    ld hl, sp+$00                                 ; $649B: $F8 $00
    dec l                                         ; $649D: $2D
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    ld a, [de]                                    ; $64A1: $1A
    inc h                                         ; $64A2: $24
    nop                                           ; $64A3: $00
    ld hl, sp+$1B                                 ; $64A4: $F8 $1B
    inc h                                         ; $64A6: $24
    add b                                         ; $64A7: $80
    pop af                                        ; $64A8: $F1
    ld hl, sp+$04                                 ; $64A9: $F8 $04
    nop                                           ; $64AB: $00
    pop af                                        ; $64AC: $F1
    nop                                           ; $64AD: $00
    dec b                                         ; $64AE: $05
    nop                                           ; $64AF: $00
    ld hl, sp-$08                                 ; $64B0: $F8 $F8
    ld [de], a                                    ; $64B2: $12
    nop                                           ; $64B3: $00
    ld hl, sp+$00                                 ; $64B4: $F8 $00
    inc de                                        ; $64B6: $13
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    ld hl, sp+$1C                                 ; $64B9: $F8 $1C
    inc b                                         ; $64BB: $04
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    dec e                                         ; $64BE: $1D
    inc b                                         ; $64BF: $04
    add b                                         ; $64C0: $80
    ldh a, [$F8]                                  ; $64C1: $F0 $F8
    inc b                                         ; $64C3: $04
    nop                                           ; $64C4: $00
    ldh a, [rP1]                                  ; $64C5: $F0 $00
    dec b                                         ; $64C7: $05
    nop                                           ; $64C8: $00
    ld hl, sp-$08                                 ; $64C9: $F8 $F8
    inc c                                         ; $64CB: $0C
    nop                                           ; $64CC: $00
    ld hl, sp+$00                                 ; $64CD: $F8 $00
    dec c                                         ; $64CF: $0D
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    nop                                           ; $64D2: $00
    rla                                           ; $64D3: $17
    inc b                                         ; $64D4: $04
    nop                                           ; $64D5: $00
    ld sp, hl                                     ; $64D6: $F9
    rla                                           ; $64D7: $17
    inc h                                         ; $64D8: $24
    add b                                         ; $64D9: $80
    pop af                                        ; $64DA: $F1
    ld hl, sp+$04                                 ; $64DB: $F8 $04
    nop                                           ; $64DD: $00
    pop af                                        ; $64DE: $F1
    nop                                           ; $64DF: $00
    dec b                                         ; $64E0: $05
    nop                                           ; $64E1: $00
    ld hl, sp-$08                                 ; $64E2: $F8 $F8
    ld l, $00                                     ; $64E4: $2E $00
    ld hl, sp+$00                                 ; $64E6: $F8 $00
    cpl                                           ; $64E8: $2F
    nop                                           ; $64E9: $00
    nop                                           ; $64EA: $00
    ld bc, $241C                                  ; $64EB: $01 $1C $24
    nop                                           ; $64EE: $00
    ld sp, hl                                     ; $64EF: $F9
    dec e                                         ; $64F0: $1D
    inc h                                         ; $64F1: $24
    add b                                         ; $64F2: $80
    pop af                                        ; $64F3: $F1
    ld hl, sp+$1E                                 ; $64F4: $F8 $1E
    nop                                           ; $64F6: $00
    pop af                                        ; $64F7: $F1
    nop                                           ; $64F8: $00
    rra                                           ; $64F9: $1F
    nop                                           ; $64FA: $00
    ld hl, sp-$08                                 ; $64FB: $F8 $F8
    jr nz, jr_010_64FF                            ; $64FD: $20 $00

jr_010_64FF:
    ld hl, sp+$00                                 ; $64FF: $F8 $00
    ld hl, $0000                                  ; $6501: $21 $00 $00
    ld hl, sp+$26                                 ; $6504: $F8 $26
    inc b                                         ; $6506: $04
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    daa                                           ; $6509: $27
    inc b                                         ; $650A: $04
    add b                                         ; $650B: $80
    ldh a, [$F8]                                  ; $650C: $F0 $F8
    ld e, $00                                     ; $650E: $1E $00
    ldh a, [rP1]                                  ; $6510: $F0 $00
    rra                                           ; $6512: $1F
    nop                                           ; $6513: $00
    ld hl, sp-$08                                 ; $6514: $F8 $F8
    ld [hl+], a                                   ; $6516: $22
    nop                                           ; $6517: $00
    ld hl, sp+$00                                 ; $6518: $F8 $00
    inc hl                                        ; $651A: $23
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    ld hl, sp+$28                                 ; $651D: $F8 $28
    inc b                                         ; $651F: $04
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    add hl, hl                                    ; $6522: $29
    inc b                                         ; $6523: $04
    add b                                         ; $6524: $80
    pop af                                        ; $6525: $F1
    ld hl, sp+$1E                                 ; $6526: $F8 $1E
    nop                                           ; $6528: $00
    pop af                                        ; $6529: $F1
    nop                                           ; $652A: $00
    rra                                           ; $652B: $1F
    nop                                           ; $652C: $00
    ld hl, sp-$08                                 ; $652D: $F8 $F8
    inc h                                         ; $652F: $24
    nop                                           ; $6530: $00
    ld hl, sp+$00                                 ; $6531: $F8 $00
    dec h                                         ; $6533: $25
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    ld hl, sp+$2A                                 ; $6536: $F8 $2A
    inc b                                         ; $6538: $04
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    dec hl                                        ; $653B: $2B
    inc b                                         ; $653C: $04
    add b                                         ; $653D: $80
    pop af                                        ; $653E: $F1

jr_010_653F:
    nop                                           ; $653F: $00
    ld e, $20                                     ; $6540: $1E $20
    pop af                                        ; $6542: $F1
    ld hl, sp+$1F                                 ; $6543: $F8 $1F
    jr nz, jr_010_653F                            ; $6545: $20 $F8

    nop                                           ; $6547: $00
    jr nz, @+$22                                  ; $6548: $20 $20

    ld hl, sp-$08                                 ; $654A: $F8 $F8
    ld hl, $0020                                  ; $654C: $21 $20 $00
    nop                                           ; $654F: $00
    ld h, $24                                     ; $6550: $26 $24
    nop                                           ; $6552: $00
    ld hl, sp+$27                                 ; $6553: $F8 $27
    inc h                                         ; $6555: $24
    add b                                         ; $6556: $80
    ldh a, [rP1]                                  ; $6557: $F0 $00
    ld e, $20                                     ; $6559: $1E $20
    ldh a, [$F8]                                  ; $655B: $F0 $F8
    rra                                           ; $655D: $1F
    jr nz, @-$06                                  ; $655E: $20 $F8

    nop                                           ; $6560: $00
    ld [hl+], a                                   ; $6561: $22
    jr nz, @-$06                                  ; $6562: $20 $F8

    ld hl, sp+$23                                 ; $6564: $F8 $23
    jr nz, jr_010_6568                            ; $6566: $20 $00

jr_010_6568:
    nop                                           ; $6568: $00
    jr z, jr_010_658F                             ; $6569: $28 $24

    nop                                           ; $656B: $00
    ld hl, sp+$29                                 ; $656C: $F8 $29
    inc h                                         ; $656E: $24
    add b                                         ; $656F: $80
    pop af                                        ; $6570: $F1

jr_010_6571:
    nop                                           ; $6571: $00
    ld e, $20                                     ; $6572: $1E $20
    pop af                                        ; $6574: $F1

jr_010_6575:
    ld hl, sp+$1F                                 ; $6575: $F8 $1F
    jr nz, jr_010_6571                            ; $6577: $20 $F8

    nop                                           ; $6579: $00
    inc h                                         ; $657A: $24
    jr nz, jr_010_6575                            ; $657B: $20 $F8

    ld hl, sp+$25                                 ; $657D: $F8 $25
    jr nz, jr_010_6581                            ; $657F: $20 $00

jr_010_6581:
    nop                                           ; $6581: $00
    ld a, [hl+]                                   ; $6582: $2A
    inc h                                         ; $6583: $24
    nop                                           ; $6584: $00
    ld hl, sp+$2B                                 ; $6585: $F8 $2B
    inc h                                         ; $6587: $24
    add b                                         ; $6588: $80
    ld c, l                                       ; $6589: $4D
    ld [$0008], sp                                ; $658A: $08 $08 $00
    rst $38                                       ; $658D: $FF
    xor b                                         ; $658E: $A8

jr_010_658F:
    ld h, h                                       ; $658F: $64
    pop bc                                        ; $6590: $C1
    ld h, h                                       ; $6591: $64
    jp c, $C164                                   ; $6592: $DA $64 $C1

    ld h, h                                       ; $6595: $64
    ld b, [hl]                                    ; $6596: $46
    adc c                                         ; $6597: $89
    ld h, l                                       ; $6598: $65
    ld c, l                                       ; $6599: $4D
    ld [$0008], sp                                ; $659A: $08 $08 $00
    ld bc, $645D                                  ; $659D: $01 $5D $64
    halt                                          ; $65A0: $76
    ld h, h                                       ; $65A1: $64
    adc a                                         ; $65A2: $8F
    ld h, h                                       ; $65A3: $64
    halt                                          ; $65A4: $76
    ld h, h                                       ; $65A5: $64
    ld b, [hl]                                    ; $65A6: $46
    sbc c                                         ; $65A7: $99
    ld h, l                                       ; $65A8: $65
    ld c, l                                       ; $65A9: $4D
    ld [$FF08], sp                                ; $65AA: $08 $08 $FF
    nop                                           ; $65AD: $00
    ld a, $65                                     ; $65AE: $3E $65
    ld d, a                                       ; $65B0: $57
    ld h, l                                       ; $65B1: $65
    ld [hl], b                                    ; $65B2: $70
    ld h, l                                       ; $65B3: $65
    ld d, a                                       ; $65B4: $57
    ld h, l                                       ; $65B5: $65
    ld b, [hl]                                    ; $65B6: $46
    xor c                                         ; $65B7: $A9
    ld h, l                                       ; $65B8: $65
    ld c, l                                       ; $65B9: $4D
    ld [$0108], sp                                ; $65BA: $08 $08 $01
    nop                                           ; $65BD: $00
    di                                            ; $65BE: $F3
    ld h, h                                       ; $65BF: $64
    inc c                                         ; $65C0: $0C
    ld h, l                                       ; $65C1: $65
    dec h                                         ; $65C2: $25
    ld h, l                                       ; $65C3: $65
    inc c                                         ; $65C4: $0C
    ld h, l                                       ; $65C5: $65
    ld b, [hl]                                    ; $65C6: $46
    cp c                                          ; $65C7: $B9
    ld h, l                                       ; $65C8: $65
    ld c, l                                       ; $65C9: $4D
    ld [$0008], sp                                ; $65CA: $08 $08 $00
    cp $A8                                        ; $65CD: $FE $A8
    ld h, h                                       ; $65CF: $64
    pop bc                                        ; $65D0: $C1
    ld h, h                                       ; $65D1: $64
    jp c, $C164                                   ; $65D2: $DA $64 $C1

    ld h, h                                       ; $65D5: $64
    ld b, [hl]                                    ; $65D6: $46
    ret                                           ; $65D7: $C9


    ld h, l                                       ; $65D8: $65
    ld c, l                                       ; $65D9: $4D
    ld [$0008], sp                                ; $65DA: $08 $08 $00
    ld [bc], a                                    ; $65DD: $02
    ld e, l                                       ; $65DE: $5D
    ld h, h                                       ; $65DF: $64
    halt                                          ; $65E0: $76
    ld h, h                                       ; $65E1: $64
    adc a                                         ; $65E2: $8F
    ld h, h                                       ; $65E3: $64
    halt                                          ; $65E4: $76
    ld h, h                                       ; $65E5: $64
    ld b, [hl]                                    ; $65E6: $46
    reti                                          ; $65E7: $D9


    ld h, l                                       ; $65E8: $65
    ld c, l                                       ; $65E9: $4D
    ld [$FE08], sp                                ; $65EA: $08 $08 $FE
    nop                                           ; $65ED: $00
    ld a, $65                                     ; $65EE: $3E $65
    ld d, a                                       ; $65F0: $57
    ld h, l                                       ; $65F1: $65
    ld [hl], b                                    ; $65F2: $70
    ld h, l                                       ; $65F3: $65
    ld d, a                                       ; $65F4: $57
    ld h, l                                       ; $65F5: $65
    ld b, [hl]                                    ; $65F6: $46
    jp hl                                         ; $65F7: $E9


    ld h, l                                       ; $65F8: $65
    ld c, l                                       ; $65F9: $4D
    ld [$0208], sp                                ; $65FA: $08 $08 $02
    nop                                           ; $65FD: $00
    di                                            ; $65FE: $F3
    ld h, h                                       ; $65FF: $64
    inc c                                         ; $6600: $0C
    ld h, l                                       ; $6601: $65
    dec h                                         ; $6602: $25
    ld h, l                                       ; $6603: $65
    inc c                                         ; $6604: $0C
    ld h, l                                       ; $6605: $65
    ld b, [hl]                                    ; $6606: $46
    ld sp, hl                                     ; $6607: $F9
    ld h, l                                       ; $6608: $65
    ld c, h                                       ; $6609: $4C
    rst $38                                       ; $660A: $FF
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    pop bc                                        ; $660D: $C1
    ld h, h                                       ; $660E: $64
    nop                                           ; $660F: $00
    ld b, [hl]                                    ; $6610: $46
    add hl, bc                                    ; $6611: $09
    ld h, [hl]                                    ; $6612: $66
    ld c, h                                       ; $6613: $4C
    rst $38                                       ; $6614: $FF
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    halt                                          ; $6617: $76
    ld h, h                                       ; $6618: $64
    nop                                           ; $6619: $00
    ld b, [hl]                                    ; $661A: $46
    inc de                                        ; $661B: $13
    ld h, [hl]                                    ; $661C: $66
    ld c, h                                       ; $661D: $4C
    rst $38                                       ; $661E: $FF
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
    ld d, a                                       ; $6621: $57
    ld h, l                                       ; $6622: $65
    nop                                           ; $6623: $00
    ld b, [hl]                                    ; $6624: $46
    dec e                                         ; $6625: $1D
    ld h, [hl]                                    ; $6626: $66
    ld c, h                                       ; $6627: $4C
    rst $38                                       ; $6628: $FF
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    inc c                                         ; $662B: $0C
    ld h, l                                       ; $662C: $65
    nop                                           ; $662D: $00
    ld b, [hl]                                    ; $662E: $46
    daa                                           ; $662F: $27
    ld h, [hl]                                    ; $6630: $66
    ld c, h                                       ; $6631: $4C
    rst $38                                       ; $6632: $FF
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    ld b, h                                       ; $6635: $44
    ld h, h                                       ; $6636: $64
    nop                                           ; $6637: $00
    ld b, [hl]                                    ; $6638: $46
    ld sp, $4C66                                  ; $6639: $31 $66 $4C
    rst $38                                       ; $663C: $FF
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    dec hl                                        ; $663F: $2B
    ld h, h                                       ; $6640: $64
    nop                                           ; $6641: $00
    ld b, [hl]                                    ; $6642: $46
    dec sp                                        ; $6643: $3B
    ld h, [hl]                                    ; $6644: $66
    ld c, h                                       ; $6645: $4C
    rst $38                                       ; $6646: $FF
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    ld [de], a                                    ; $6649: $12
    ld h, h                                       ; $664A: $64
    nop                                           ; $664B: $00
    ld b, [hl]                                    ; $664C: $46
    ld b, l                                       ; $664D: $45
    ld h, [hl]                                    ; $664E: $66
    ld c, h                                       ; $664F: $4C
    rst $38                                       ; $6650: $FF
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    ld sp, hl                                     ; $6653: $F9
    ld h, e                                       ; $6654: $63
    nop                                           ; $6655: $00
    ld b, [hl]                                    ; $6656: $46
    ld c, a                                       ; $6657: $4F
    ld h, [hl]                                    ; $6658: $66
    ld c, e                                       ; $6659: $4B
    inc bc                                        ; $665A: $03
    stop                                          ; $665B: $10 $00
    nop                                           ; $665D: $00
    ld [hl], b                                    ; $665E: $70
    ld h, [hl]                                    ; $665F: $66
    db $10                                        ; $6660: $10
    inc bc                                        ; $6661: $03
    nop                                           ; $6662: $00
    ld [hl], a                                    ; $6663: $77
    ld h, [hl]                                    ; $6664: $66
    db $10                                        ; $6665: $10
    ld [bc], a                                    ; $6666: $02
    nop                                           ; $6667: $00
    add l                                         ; $6668: $85
    ld h, [hl]                                    ; $6669: $66
    db $10                                        ; $666A: $10
    ld bc, $7E00                                  ; $666B: $01 $00 $7E
    ld h, [hl]                                    ; $666E: $66
    rst $38                                       ; $666F: $FF
    inc d                                         ; $6670: $14
    db $10                                        ; $6671: $10
    add hl, bc                                    ; $6672: $09
    ld h, [hl]                                    ; $6673: $66
    ld h, d                                       ; $6674: $62
    ld bc, $1412                                  ; $6675: $01 $12 $14
    db $10                                        ; $6678: $10
    inc de                                        ; $6679: $13
    ld h, [hl]                                    ; $667A: $66
    ld h, d                                       ; $667B: $62
    ld bc, $1412                                  ; $667C: $01 $12 $14
    db $10                                        ; $667F: $10
    dec e                                         ; $6680: $1D
    ld h, [hl]                                    ; $6681: $66
    ld h, d                                       ; $6682: $62
    ld bc, $1412                                  ; $6683: $01 $12 $14
    db $10                                        ; $6686: $10
    daa                                           ; $6687: $27
    ld h, [hl]                                    ; $6688: $66
    ld h, d                                       ; $6689: $62
    ld bc, $F012                                  ; $668A: $01 $12 $F0
    ld hl, sp+$00                                 ; $668D: $F8 $00
    inc bc                                        ; $668F: $03
    ldh a, [rP1]                                  ; $6690: $F0 $00
    ld bc, $F803                                  ; $6692: $01 $03 $F8
    ld hl, sp+$08                                 ; $6695: $F8 $08
    inc bc                                        ; $6697: $03
    ld hl, sp+$00                                 ; $6698: $F8 $00
    add hl, bc                                    ; $669A: $09
    inc bc                                        ; $669B: $03
    nop                                           ; $669C: $00
    ld hl, sp+$14                                 ; $669D: $F8 $14
    ld [bc], a                                    ; $669F: $02
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    dec d                                         ; $66A2: $15
    ld [bc], a                                    ; $66A3: $02
    add b                                         ; $66A4: $80
    ldh a, [rP1]                                  ; $66A5: $F0 $00
    nop                                           ; $66A7: $00
    inc hl                                        ; $66A8: $23
    ldh a, [$F8]                                  ; $66A9: $F0 $F8
    ld bc, $F823                                  ; $66AB: $01 $23 $F8
    nop                                           ; $66AE: $00
    ld [$F823], sp                                ; $66AF: $08 $23 $F8
    ld hl, sp+$09                                 ; $66B2: $F8 $09
    inc hl                                        ; $66B4: $23
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    inc d                                         ; $66B7: $14
    ld [hl+], a                                   ; $66B8: $22
    nop                                           ; $66B9: $00
    ld hl, sp+$15                                 ; $66BA: $F8 $15
    ld [hl+], a                                   ; $66BC: $22
    add b                                         ; $66BD: $80
    ldh a, [$F8]                                  ; $66BE: $F0 $F8
    ld b, $03                                     ; $66C0: $06 $03
    ldh a, [rP1]                                  ; $66C2: $F0 $00
    rlca                                          ; $66C4: $07
    inc bc                                        ; $66C5: $03
    ld hl, sp-$08                                 ; $66C6: $F8 $F8
    ld c, $03                                     ; $66C8: $0E $03
    ld hl, sp+$00                                 ; $66CA: $F8 $00
    rrca                                          ; $66CC: $0F
    inc bc                                        ; $66CD: $03
    nop                                           ; $66CE: $00
    ld hl, sp+$18                                 ; $66CF: $F8 $18
    ld [bc], a                                    ; $66D1: $02
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    add hl, de                                    ; $66D4: $19
    ld [bc], a                                    ; $66D5: $02
    add b                                         ; $66D6: $80
    ldh a, [rP1]                                  ; $66D7: $F0 $00
    ld b, $23                                     ; $66D9: $06 $23
    ldh a, [$F8]                                  ; $66DB: $F0 $F8
    rlca                                          ; $66DD: $07
    inc hl                                        ; $66DE: $23
    ld hl, sp+$00                                 ; $66DF: $F8 $00
    ld c, $23                                     ; $66E1: $0E $23
    ld hl, sp-$08                                 ; $66E3: $F8 $F8
    rrca                                          ; $66E5: $0F
    inc hl                                        ; $66E6: $23
    nop                                           ; $66E7: $00
    nop                                           ; $66E8: $00
    jr jr_010_670D                                ; $66E9: $18 $22

    nop                                           ; $66EB: $00
    ld hl, sp+$19                                 ; $66EC: $F8 $19
    ld [hl+], a                                   ; $66EE: $22
    add b                                         ; $66EF: $80
    pop af                                        ; $66F0: $F1
    ld hl, sp+$02                                 ; $66F1: $F8 $02
    inc bc                                        ; $66F3: $03
    pop af                                        ; $66F4: $F1
    nop                                           ; $66F5: $00
    inc bc                                        ; $66F6: $03
    inc bc                                        ; $66F7: $03
    ld hl, sp-$08                                 ; $66F8: $F8 $F8
    db $10                                        ; $66FA: $10
    inc bc                                        ; $66FB: $03
    ld hl, sp+$00                                 ; $66FC: $F8 $00
    ld de, $0003                                  ; $66FE: $11 $03 $00
    ld hl, sp+$1A                                 ; $6701: $F8 $1A
    ld [bc], a                                    ; $6703: $02
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    dec de                                        ; $6706: $1B
    ld [bc], a                                    ; $6707: $02
    add b                                         ; $6708: $80
    ldh a, [$F8]                                  ; $6709: $F0 $F8
    ld [bc], a                                    ; $670B: $02
    inc bc                                        ; $670C: $03

jr_010_670D:
    ldh a, [rP1]                                  ; $670D: $F0 $00
    inc bc                                        ; $670F: $03
    inc bc                                        ; $6710: $03
    ld hl, sp-$08                                 ; $6711: $F8 $F8
    ld a, [bc]                                    ; $6713: $0A
    inc bc                                        ; $6714: $03
    ld hl, sp+$00                                 ; $6715: $F8 $00
    dec bc                                        ; $6717: $0B
    inc bc                                        ; $6718: $03
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    ld d, $02                                     ; $671B: $16 $02
    nop                                           ; $671D: $00
    ld sp, hl                                     ; $671E: $F9
    ld d, $22                                     ; $671F: $16 $22
    add b                                         ; $6721: $80
    pop af                                        ; $6722: $F1
    ld hl, sp+$02                                 ; $6723: $F8 $02
    inc bc                                        ; $6725: $03
    pop af                                        ; $6726: $F1
    nop                                           ; $6727: $00
    inc bc                                        ; $6728: $03
    inc bc                                        ; $6729: $03
    ld hl, sp-$08                                 ; $672A: $F8 $F8
    inc l                                         ; $672C: $2C
    inc bc                                        ; $672D: $03
    ld hl, sp+$00                                 ; $672E: $F8 $00
    dec l                                         ; $6730: $2D
    inc bc                                        ; $6731: $03
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    ld a, [de]                                    ; $6734: $1A
    ld [hl+], a                                   ; $6735: $22
    nop                                           ; $6736: $00
    ld hl, sp+$1B                                 ; $6737: $F8 $1B
    ld [hl+], a                                   ; $6739: $22
    add b                                         ; $673A: $80
    pop af                                        ; $673B: $F1
    ld hl, sp+$04                                 ; $673C: $F8 $04
    inc bc                                        ; $673E: $03
    pop af                                        ; $673F: $F1
    nop                                           ; $6740: $00
    dec b                                         ; $6741: $05
    inc bc                                        ; $6742: $03
    ld hl, sp-$08                                 ; $6743: $F8 $F8
    ld [de], a                                    ; $6745: $12
    inc bc                                        ; $6746: $03
    ld hl, sp+$00                                 ; $6747: $F8 $00
    inc de                                        ; $6749: $13
    inc bc                                        ; $674A: $03
    nop                                           ; $674B: $00
    ld hl, sp+$1C                                 ; $674C: $F8 $1C
    ld [bc], a                                    ; $674E: $02
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    dec e                                         ; $6751: $1D
    ld [bc], a                                    ; $6752: $02
    add b                                         ; $6753: $80
    ldh a, [$F8]                                  ; $6754: $F0 $F8
    inc b                                         ; $6756: $04
    inc bc                                        ; $6757: $03
    ldh a, [rP1]                                  ; $6758: $F0 $00
    dec b                                         ; $675A: $05
    inc bc                                        ; $675B: $03
    ld hl, sp-$08                                 ; $675C: $F8 $F8
    inc c                                         ; $675E: $0C
    inc bc                                        ; $675F: $03
    ld hl, sp+$00                                 ; $6760: $F8 $00
    dec c                                         ; $6762: $0D
    inc bc                                        ; $6763: $03
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    rla                                           ; $6766: $17
    ld [bc], a                                    ; $6767: $02
    nop                                           ; $6768: $00
    ld sp, hl                                     ; $6769: $F9
    rla                                           ; $676A: $17
    ld [hl+], a                                   ; $676B: $22
    add b                                         ; $676C: $80
    pop af                                        ; $676D: $F1
    ld hl, sp+$04                                 ; $676E: $F8 $04
    inc bc                                        ; $6770: $03
    pop af                                        ; $6771: $F1
    nop                                           ; $6772: $00
    dec b                                         ; $6773: $05
    inc bc                                        ; $6774: $03
    ld hl, sp-$08                                 ; $6775: $F8 $F8
    ld l, $03                                     ; $6777: $2E $03
    ld hl, sp+$00                                 ; $6779: $F8 $00
    cpl                                           ; $677B: $2F
    inc bc                                        ; $677C: $03
    nop                                           ; $677D: $00
    ld bc, $221C                                  ; $677E: $01 $1C $22
    nop                                           ; $6781: $00
    ld sp, hl                                     ; $6782: $F9
    dec e                                         ; $6783: $1D
    ld [hl+], a                                   ; $6784: $22
    add b                                         ; $6785: $80
    pop af                                        ; $6786: $F1
    ld hl, sp+$1E                                 ; $6787: $F8 $1E
    inc bc                                        ; $6789: $03
    pop af                                        ; $678A: $F1
    nop                                           ; $678B: $00
    rra                                           ; $678C: $1F
    inc bc                                        ; $678D: $03
    ld hl, sp-$08                                 ; $678E: $F8 $F8
    jr nz, @+$05                                  ; $6790: $20 $03

    ld hl, sp+$00                                 ; $6792: $F8 $00
    ld hl, $0000                                  ; $6794: $21 $00 $00
    ld hl, sp+$26                                 ; $6797: $F8 $26
    ld [bc], a                                    ; $6799: $02
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    daa                                           ; $679C: $27
    ld [bc], a                                    ; $679D: $02
    add b                                         ; $679E: $80
    ldh a, [$F8]                                  ; $679F: $F0 $F8
    ld e, $03                                     ; $67A1: $1E $03
    ldh a, [rP1]                                  ; $67A3: $F0 $00
    rra                                           ; $67A5: $1F
    inc bc                                        ; $67A6: $03
    ld hl, sp-$08                                 ; $67A7: $F8 $F8
    ld [hl+], a                                   ; $67A9: $22
    inc bc                                        ; $67AA: $03
    ld hl, sp+$00                                 ; $67AB: $F8 $00
    inc hl                                        ; $67AD: $23
    nop                                           ; $67AE: $00
    nop                                           ; $67AF: $00
    ld hl, sp+$28                                 ; $67B0: $F8 $28
    ld [bc], a                                    ; $67B2: $02
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    add hl, hl                                    ; $67B5: $29
    ld [bc], a                                    ; $67B6: $02
    add b                                         ; $67B7: $80
    pop af                                        ; $67B8: $F1
    ld hl, sp+$1E                                 ; $67B9: $F8 $1E
    inc bc                                        ; $67BB: $03
    pop af                                        ; $67BC: $F1
    nop                                           ; $67BD: $00
    rra                                           ; $67BE: $1F
    inc bc                                        ; $67BF: $03
    ld hl, sp-$08                                 ; $67C0: $F8 $F8
    inc h                                         ; $67C2: $24
    inc bc                                        ; $67C3: $03
    ld hl, sp+$00                                 ; $67C4: $F8 $00
    dec h                                         ; $67C6: $25
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    ld hl, sp+$2A                                 ; $67C9: $F8 $2A
    ld [bc], a                                    ; $67CB: $02
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    dec hl                                        ; $67CE: $2B
    ld [bc], a                                    ; $67CF: $02
    add b                                         ; $67D0: $80
    pop af                                        ; $67D1: $F1
    nop                                           ; $67D2: $00
    ld e, $23                                     ; $67D3: $1E $23
    pop af                                        ; $67D5: $F1
    ld hl, sp+$1F                                 ; $67D6: $F8 $1F
    inc hl                                        ; $67D8: $23
    ld hl, sp+$00                                 ; $67D9: $F8 $00
    jr nz, @+$25                                  ; $67DB: $20 $23

    ld hl, sp-$08                                 ; $67DD: $F8 $F8
    ld hl, $0020                                  ; $67DF: $21 $20 $00
    nop                                           ; $67E2: $00
    ld h, $22                                     ; $67E3: $26 $22
    nop                                           ; $67E5: $00
    ld hl, sp+$27                                 ; $67E6: $F8 $27
    ld [hl+], a                                   ; $67E8: $22
    add b                                         ; $67E9: $80
    ldh a, [rP1]                                  ; $67EA: $F0 $00
    ld e, $23                                     ; $67EC: $1E $23
    ldh a, [$F8]                                  ; $67EE: $F0 $F8
    rra                                           ; $67F0: $1F
    inc hl                                        ; $67F1: $23
    ld hl, sp+$00                                 ; $67F2: $F8 $00
    ld [hl+], a                                   ; $67F4: $22
    inc hl                                        ; $67F5: $23
    ld hl, sp-$08                                 ; $67F6: $F8 $F8
    inc hl                                        ; $67F8: $23
    jr nz, jr_010_67FB                            ; $67F9: $20 $00

jr_010_67FB:
    nop                                           ; $67FB: $00
    jr z, jr_010_6820                             ; $67FC: $28 $22

    nop                                           ; $67FE: $00
    ld hl, sp+$29                                 ; $67FF: $F8 $29
    ld [hl+], a                                   ; $6801: $22
    add b                                         ; $6802: $80
    pop af                                        ; $6803: $F1
    nop                                           ; $6804: $00
    ld e, $23                                     ; $6805: $1E $23
    pop af                                        ; $6807: $F1
    ld hl, sp+$1F                                 ; $6808: $F8 $1F
    inc hl                                        ; $680A: $23
    ld hl, sp+$00                                 ; $680B: $F8 $00
    inc h                                         ; $680D: $24
    inc hl                                        ; $680E: $23
    ld hl, sp-$08                                 ; $680F: $F8 $F8
    dec h                                         ; $6811: $25
    jr nz, jr_010_6814                            ; $6812: $20 $00

jr_010_6814:
    nop                                           ; $6814: $00
    ld a, [hl+]                                   ; $6815: $2A
    ld [hl+], a                                   ; $6816: $22
    nop                                           ; $6817: $00
    ld hl, sp+$2B                                 ; $6818: $F8 $2B
    ld [hl+], a                                   ; $681A: $22
    add b                                         ; $681B: $80
    ld c, l                                       ; $681C: $4D
    ld [$0008], sp                                ; $681D: $08 $08 $00

jr_010_6820:
    rst $38                                       ; $6820: $FF
    dec sp                                        ; $6821: $3B
    ld h, a                                       ; $6822: $67
    ld d, h                                       ; $6823: $54
    ld h, a                                       ; $6824: $67
    ld l, l                                       ; $6825: $6D
    ld h, a                                       ; $6826: $67
    ld d, h                                       ; $6827: $54
    ld h, a                                       ; $6828: $67
    ld b, [hl]                                    ; $6829: $46
    inc e                                         ; $682A: $1C
    ld l, b                                       ; $682B: $68
    ld c, l                                       ; $682C: $4D
    ld [$0008], sp                                ; $682D: $08 $08 $00
    ld bc, $66F0                                  ; $6830: $01 $F0 $66
    add hl, bc                                    ; $6833: $09
    ld h, a                                       ; $6834: $67
    ld [hl+], a                                   ; $6835: $22
    ld h, a                                       ; $6836: $67
    add hl, bc                                    ; $6837: $09
    ld h, a                                       ; $6838: $67
    ld b, [hl]                                    ; $6839: $46
    inc l                                         ; $683A: $2C
    ld l, b                                       ; $683B: $68
    ld c, l                                       ; $683C: $4D
    ld [$FF08], sp                                ; $683D: $08 $08 $FF
    nop                                           ; $6840: $00
    pop de                                        ; $6841: $D1
    ld h, a                                       ; $6842: $67
    ld [$0367], a                                 ; $6843: $EA $67 $03
    ld l, b                                       ; $6846: $68
    ld [$4667], a                                 ; $6847: $EA $67 $46
    inc a                                         ; $684A: $3C
    ld l, b                                       ; $684B: $68
    ld c, l                                       ; $684C: $4D
    ld [$0108], sp                                ; $684D: $08 $08 $01
    nop                                           ; $6850: $00
    add [hl]                                      ; $6851: $86
    ld h, a                                       ; $6852: $67
    sbc a                                         ; $6853: $9F
    ld h, a                                       ; $6854: $67
    cp b                                          ; $6855: $B8
    ld h, a                                       ; $6856: $67
    sbc a                                         ; $6857: $9F
    ld h, a                                       ; $6858: $67
    ld b, [hl]                                    ; $6859: $46
    ld c, h                                       ; $685A: $4C
    ld l, b                                       ; $685B: $68
    ld c, l                                       ; $685C: $4D
    ld [$0008], sp                                ; $685D: $08 $08 $00
    cp $3B                                        ; $6860: $FE $3B
    ld h, a                                       ; $6862: $67
    ld d, h                                       ; $6863: $54
    ld h, a                                       ; $6864: $67
    ld l, l                                       ; $6865: $6D
    ld h, a                                       ; $6866: $67
    ld d, h                                       ; $6867: $54
    ld h, a                                       ; $6868: $67
    ld b, [hl]                                    ; $6869: $46
    ld e, h                                       ; $686A: $5C
    ld l, b                                       ; $686B: $68
    ld c, l                                       ; $686C: $4D
    ld [$0008], sp                                ; $686D: $08 $08 $00
    ld [bc], a                                    ; $6870: $02
    ldh a, [$66]                                  ; $6871: $F0 $66
    add hl, bc                                    ; $6873: $09
    ld h, a                                       ; $6874: $67
    ld [hl+], a                                   ; $6875: $22
    ld h, a                                       ; $6876: $67
    add hl, bc                                    ; $6877: $09
    ld h, a                                       ; $6878: $67
    ld b, [hl]                                    ; $6879: $46
    ld l, h                                       ; $687A: $6C
    ld l, b                                       ; $687B: $68
    ld c, l                                       ; $687C: $4D
    ld [$FE08], sp                                ; $687D: $08 $08 $FE
    nop                                           ; $6880: $00
    pop de                                        ; $6881: $D1
    ld h, a                                       ; $6882: $67
    ld [$0367], a                                 ; $6883: $EA $67 $03
    ld l, b                                       ; $6886: $68
    ld [$4667], a                                 ; $6887: $EA $67 $46
    ld a, h                                       ; $688A: $7C
    ld l, b                                       ; $688B: $68
    ld c, l                                       ; $688C: $4D
    ld [$0208], sp                                ; $688D: $08 $08 $02
    nop                                           ; $6890: $00
    add [hl]                                      ; $6891: $86
    ld h, a                                       ; $6892: $67
    sbc a                                         ; $6893: $9F
    ld h, a                                       ; $6894: $67
    cp b                                          ; $6895: $B8
    ld h, a                                       ; $6896: $67
    sbc a                                         ; $6897: $9F
    ld h, a                                       ; $6898: $67
    ld b, [hl]                                    ; $6899: $46
    adc h                                         ; $689A: $8C
    ld l, b                                       ; $689B: $68
    ld c, h                                       ; $689C: $4C
    rst $38                                       ; $689D: $FF
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    ld d, h                                       ; $68A0: $54
    ld h, a                                       ; $68A1: $67
    nop                                           ; $68A2: $00
    ld b, [hl]                                    ; $68A3: $46
    sbc h                                         ; $68A4: $9C
    ld l, b                                       ; $68A5: $68
    ld c, h                                       ; $68A6: $4C
    rst $38                                       ; $68A7: $FF
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    add hl, bc                                    ; $68AA: $09
    ld h, a                                       ; $68AB: $67
    nop                                           ; $68AC: $00
    ld b, [hl]                                    ; $68AD: $46
    and [hl]                                      ; $68AE: $A6
    ld l, b                                       ; $68AF: $68
    ld c, h                                       ; $68B0: $4C
    rst $38                                       ; $68B1: $FF
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    ld [$0067], a                                 ; $68B4: $EA $67 $00
    ld b, [hl]                                    ; $68B7: $46
    or b                                          ; $68B8: $B0
    ld l, b                                       ; $68B9: $68
    ld c, h                                       ; $68BA: $4C
    rst $38                                       ; $68BB: $FF
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    sbc a                                         ; $68BE: $9F
    ld h, a                                       ; $68BF: $67
    nop                                           ; $68C0: $00
    ld b, [hl]                                    ; $68C1: $46
    cp d                                          ; $68C2: $BA
    ld l, b                                       ; $68C3: $68
    ld c, h                                       ; $68C4: $4C
    rst $38                                       ; $68C5: $FF
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    rst $10                                       ; $68C8: $D7
    ld h, [hl]                                    ; $68C9: $66
    nop                                           ; $68CA: $00
    ld b, [hl]                                    ; $68CB: $46
    call nz, Call_010_4C68                        ; $68CC: $C4 $68 $4C
    rst $38                                       ; $68CF: $FF
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    cp [hl]                                       ; $68D2: $BE
    ld h, [hl]                                    ; $68D3: $66
    nop                                           ; $68D4: $00
    ld b, [hl]                                    ; $68D5: $46
    adc $68                                       ; $68D6: $CE $68
    ld c, h                                       ; $68D8: $4C
    rst $38                                       ; $68D9: $FF
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    and l                                         ; $68DC: $A5
    ld h, [hl]                                    ; $68DD: $66
    nop                                           ; $68DE: $00
    ld b, [hl]                                    ; $68DF: $46
    ret c                                         ; $68E0: $D8

    ld l, b                                       ; $68E1: $68
    ld c, h                                       ; $68E2: $4C
    rst $38                                       ; $68E3: $FF
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    adc h                                         ; $68E6: $8C
    ld h, [hl]                                    ; $68E7: $66
    nop                                           ; $68E8: $00
    ld b, [hl]                                    ; $68E9: $46
    ld [c], a                                     ; $68EA: $E2
    ld l, b                                       ; $68EB: $68
    ld c, e                                       ; $68EC: $4B
    inc bc                                        ; $68ED: $03
    stop                                          ; $68EE: $10 $00
    nop                                           ; $68F0: $00
    inc bc                                        ; $68F1: $03
    ld l, c                                       ; $68F2: $69
    db $10                                        ; $68F3: $10
    inc bc                                        ; $68F4: $03
    nop                                           ; $68F5: $00
    ld a, [bc]                                    ; $68F6: $0A
    ld l, c                                       ; $68F7: $69
    db $10                                        ; $68F8: $10
    ld [bc], a                                    ; $68F9: $02
    nop                                           ; $68FA: $00
    jr jr_010_6966                                ; $68FB: $18 $69

    db $10                                        ; $68FD: $10
    ld bc, $1100                                  ; $68FE: $01 $00 $11
    ld l, c                                       ; $6901: $69
    rst $38                                       ; $6902: $FF
    inc d                                         ; $6903: $14
    db $10                                        ; $6904: $10
    sbc h                                         ; $6905: $9C
    ld l, b                                       ; $6906: $68
    ld h, d                                       ; $6907: $62
    ld bc, $1412                                  ; $6908: $01 $12 $14
    db $10                                        ; $690B: $10
    and [hl]                                      ; $690C: $A6
    ld l, b                                       ; $690D: $68
    ld h, d                                       ; $690E: $62
    ld bc, $1412                                  ; $690F: $01 $12 $14
    db $10                                        ; $6912: $10
    or b                                          ; $6913: $B0
    ld l, b                                       ; $6914: $68
    ld h, d                                       ; $6915: $62
    ld bc, $1412                                  ; $6916: $01 $12 $14
    db $10                                        ; $6919: $10
    cp d                                          ; $691A: $BA
    ld l, b                                       ; $691B: $68
    ld h, d                                       ; $691C: $62
    ld bc, $F012                                  ; $691D: $01 $12 $F0
    ld hl, sp+$00                                 ; $6920: $F8 $00
    ld b, $F0                                     ; $6922: $06 $F0
    nop                                           ; $6924: $00
    ld bc, $F806                                  ; $6925: $01 $06 $F8
    ld hl, sp+$08                                 ; $6928: $F8 $08
    ld b, $F8                                     ; $692A: $06 $F8
    nop                                           ; $692C: $00
    add hl, bc                                    ; $692D: $09
    ld b, $00                                     ; $692E: $06 $00
    ld hl, sp+$14                                 ; $6930: $F8 $14
    inc bc                                        ; $6932: $03
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    dec d                                         ; $6935: $15
    inc bc                                        ; $6936: $03
    add b                                         ; $6937: $80
    ldh a, [rP1]                                  ; $6938: $F0 $00
    nop                                           ; $693A: $00
    ld h, $F0                                     ; $693B: $26 $F0
    ld hl, sp+$01                                 ; $693D: $F8 $01
    ld h, $F8                                     ; $693F: $26 $F8
    nop                                           ; $6941: $00
    ld [$F826], sp                                ; $6942: $08 $26 $F8
    ld hl, sp+$09                                 ; $6945: $F8 $09
    ld h, $00                                     ; $6947: $26 $00
    nop                                           ; $6949: $00
    inc d                                         ; $694A: $14
    inc hl                                        ; $694B: $23
    nop                                           ; $694C: $00
    ld hl, sp+$15                                 ; $694D: $F8 $15
    inc hl                                        ; $694F: $23
    add b                                         ; $6950: $80
    ldh a, [$F8]                                  ; $6951: $F0 $F8
    ld b, $06                                     ; $6953: $06 $06
    ldh a, [rP1]                                  ; $6955: $F0 $00
    rlca                                          ; $6957: $07
    ld b, $F8                                     ; $6958: $06 $F8
    ld hl, sp+$0E                                 ; $695A: $F8 $0E
    ld b, $F8                                     ; $695C: $06 $F8
    nop                                           ; $695E: $00
    rrca                                          ; $695F: $0F
    ld b, $00                                     ; $6960: $06 $00
    ld hl, sp+$18                                 ; $6962: $F8 $18
    inc bc                                        ; $6964: $03
    nop                                           ; $6965: $00

jr_010_6966:
    nop                                           ; $6966: $00
    add hl, de                                    ; $6967: $19
    inc bc                                        ; $6968: $03
    add b                                         ; $6969: $80
    ldh a, [rP1]                                  ; $696A: $F0 $00
    ld b, $26                                     ; $696C: $06 $26
    ldh a, [$F8]                                  ; $696E: $F0 $F8
    rlca                                          ; $6970: $07
    ld h, $F8                                     ; $6971: $26 $F8
    nop                                           ; $6973: $00
    ld c, $26                                     ; $6974: $0E $26
    ld hl, sp-$08                                 ; $6976: $F8 $F8
    rrca                                          ; $6978: $0F
    ld h, $00                                     ; $6979: $26 $00
    nop                                           ; $697B: $00
    jr jr_010_69A1                                ; $697C: $18 $23

    nop                                           ; $697E: $00
    ld hl, sp+$19                                 ; $697F: $F8 $19
    inc hl                                        ; $6981: $23
    add b                                         ; $6982: $80
    pop af                                        ; $6983: $F1
    ld hl, sp+$02                                 ; $6984: $F8 $02
    ld b, $F1                                     ; $6986: $06 $F1
    nop                                           ; $6988: $00
    inc bc                                        ; $6989: $03
    ld b, $F8                                     ; $698A: $06 $F8
    ld hl, sp+$10                                 ; $698C: $F8 $10
    ld b, $F8                                     ; $698E: $06 $F8
    nop                                           ; $6990: $00
    ld de, $0006                                  ; $6991: $11 $06 $00
    ld hl, sp+$1A                                 ; $6994: $F8 $1A
    inc bc                                        ; $6996: $03
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    dec de                                        ; $6999: $1B
    inc bc                                        ; $699A: $03
    add b                                         ; $699B: $80
    ldh a, [$F8]                                  ; $699C: $F0 $F8
    ld [bc], a                                    ; $699E: $02
    ld b, $F0                                     ; $699F: $06 $F0

jr_010_69A1:
    nop                                           ; $69A1: $00
    inc bc                                        ; $69A2: $03
    ld b, $F8                                     ; $69A3: $06 $F8
    ld hl, sp+$0A                                 ; $69A5: $F8 $0A
    ld b, $F8                                     ; $69A7: $06 $F8
    nop                                           ; $69A9: $00
    dec bc                                        ; $69AA: $0B
    ld b, $00                                     ; $69AB: $06 $00
    nop                                           ; $69AD: $00
    ld d, $03                                     ; $69AE: $16 $03
    nop                                           ; $69B0: $00
    ld sp, hl                                     ; $69B1: $F9
    ld d, $23                                     ; $69B2: $16 $23
    add b                                         ; $69B4: $80
    pop af                                        ; $69B5: $F1
    ld hl, sp+$02                                 ; $69B6: $F8 $02
    ld b, $F1                                     ; $69B8: $06 $F1
    nop                                           ; $69BA: $00
    inc bc                                        ; $69BB: $03
    ld b, $F8                                     ; $69BC: $06 $F8
    ld hl, sp+$2C                                 ; $69BE: $F8 $2C
    ld b, $F8                                     ; $69C0: $06 $F8
    nop                                           ; $69C2: $00
    dec l                                         ; $69C3: $2D
    ld b, $00                                     ; $69C4: $06 $00
    nop                                           ; $69C6: $00
    ld a, [de]                                    ; $69C7: $1A
    inc hl                                        ; $69C8: $23
    nop                                           ; $69C9: $00
    ld hl, sp+$1B                                 ; $69CA: $F8 $1B
    inc hl                                        ; $69CC: $23
    add b                                         ; $69CD: $80
    pop af                                        ; $69CE: $F1
    ld hl, sp+$04                                 ; $69CF: $F8 $04
    ld b, $F1                                     ; $69D1: $06 $F1
    nop                                           ; $69D3: $00
    dec b                                         ; $69D4: $05
    ld b, $F8                                     ; $69D5: $06 $F8
    ld hl, sp+$12                                 ; $69D7: $F8 $12
    ld b, $F8                                     ; $69D9: $06 $F8
    nop                                           ; $69DB: $00
    inc de                                        ; $69DC: $13
    ld b, $00                                     ; $69DD: $06 $00
    ld hl, sp+$1C                                 ; $69DF: $F8 $1C
    inc bc                                        ; $69E1: $03
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    dec e                                         ; $69E4: $1D
    inc bc                                        ; $69E5: $03
    add b                                         ; $69E6: $80
    ldh a, [$F8]                                  ; $69E7: $F0 $F8
    inc b                                         ; $69E9: $04
    ld b, $F0                                     ; $69EA: $06 $F0
    nop                                           ; $69EC: $00
    dec b                                         ; $69ED: $05
    ld b, $F8                                     ; $69EE: $06 $F8
    ld hl, sp+$0C                                 ; $69F0: $F8 $0C
    ld b, $F8                                     ; $69F2: $06 $F8
    nop                                           ; $69F4: $00
    dec c                                         ; $69F5: $0D
    ld b, $00                                     ; $69F6: $06 $00
    nop                                           ; $69F8: $00
    rla                                           ; $69F9: $17
    inc bc                                        ; $69FA: $03
    nop                                           ; $69FB: $00
    ld sp, hl                                     ; $69FC: $F9
    rla                                           ; $69FD: $17
    inc hl                                        ; $69FE: $23
    add b                                         ; $69FF: $80
    pop af                                        ; $6A00: $F1
    ld hl, sp+$04                                 ; $6A01: $F8 $04
    ld b, $F1                                     ; $6A03: $06 $F1
    nop                                           ; $6A05: $00
    dec b                                         ; $6A06: $05
    ld b, $F8                                     ; $6A07: $06 $F8
    ld hl, sp+$2E                                 ; $6A09: $F8 $2E
    ld b, $F8                                     ; $6A0B: $06 $F8
    nop                                           ; $6A0D: $00
    cpl                                           ; $6A0E: $2F
    ld b, $00                                     ; $6A0F: $06 $00
    ld bc, $231C                                  ; $6A11: $01 $1C $23
    nop                                           ; $6A14: $00
    ld sp, hl                                     ; $6A15: $F9
    dec e                                         ; $6A16: $1D
    inc hl                                        ; $6A17: $23
    add b                                         ; $6A18: $80
    pop af                                        ; $6A19: $F1
    ld hl, sp+$1E                                 ; $6A1A: $F8 $1E
    ld b, $F1                                     ; $6A1C: $06 $F1
    nop                                           ; $6A1E: $00
    rra                                           ; $6A1F: $1F
    ld b, $F8                                     ; $6A20: $06 $F8
    ld hl, sp+$20                                 ; $6A22: $F8 $20
    ld b, $F8                                     ; $6A24: $06 $F8
    nop                                           ; $6A26: $00
    ld hl, $0000                                  ; $6A27: $21 $00 $00
    ld hl, sp+$26                                 ; $6A2A: $F8 $26
    inc bc                                        ; $6A2C: $03
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    daa                                           ; $6A2F: $27
    inc bc                                        ; $6A30: $03
    add b                                         ; $6A31: $80
    ldh a, [$F8]                                  ; $6A32: $F0 $F8
    ld e, $06                                     ; $6A34: $1E $06
    ldh a, [rP1]                                  ; $6A36: $F0 $00
    rra                                           ; $6A38: $1F
    ld b, $F8                                     ; $6A39: $06 $F8
    ld hl, sp+$22                                 ; $6A3B: $F8 $22
    ld b, $F8                                     ; $6A3D: $06 $F8
    nop                                           ; $6A3F: $00
    inc hl                                        ; $6A40: $23
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    ld hl, sp+$28                                 ; $6A43: $F8 $28
    inc bc                                        ; $6A45: $03
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    add hl, hl                                    ; $6A48: $29
    inc bc                                        ; $6A49: $03
    add b                                         ; $6A4A: $80
    pop af                                        ; $6A4B: $F1
    ld hl, sp+$1E                                 ; $6A4C: $F8 $1E
    ld b, $F1                                     ; $6A4E: $06 $F1
    nop                                           ; $6A50: $00
    rra                                           ; $6A51: $1F
    ld b, $F8                                     ; $6A52: $06 $F8
    ld hl, sp+$24                                 ; $6A54: $F8 $24
    ld b, $F8                                     ; $6A56: $06 $F8
    nop                                           ; $6A58: $00
    dec h                                         ; $6A59: $25
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    ld hl, sp+$2A                                 ; $6A5C: $F8 $2A
    inc bc                                        ; $6A5E: $03
    nop                                           ; $6A5F: $00
    nop                                           ; $6A60: $00
    dec hl                                        ; $6A61: $2B
    inc bc                                        ; $6A62: $03
    add b                                         ; $6A63: $80
    pop af                                        ; $6A64: $F1
    nop                                           ; $6A65: $00
    ld e, $26                                     ; $6A66: $1E $26
    pop af                                        ; $6A68: $F1
    ld hl, sp+$1F                                 ; $6A69: $F8 $1F
    ld h, $F8                                     ; $6A6B: $26 $F8
    nop                                           ; $6A6D: $00
    jr nz, jr_010_6A96                            ; $6A6E: $20 $26

    ld hl, sp-$08                                 ; $6A70: $F8 $F8
    ld hl, $0020                                  ; $6A72: $21 $20 $00
    nop                                           ; $6A75: $00
    ld h, $23                                     ; $6A76: $26 $23
    nop                                           ; $6A78: $00
    ld hl, sp+$27                                 ; $6A79: $F8 $27
    inc hl                                        ; $6A7B: $23
    add b                                         ; $6A7C: $80
    ldh a, [rP1]                                  ; $6A7D: $F0 $00
    ld e, $26                                     ; $6A7F: $1E $26
    ldh a, [$F8]                                  ; $6A81: $F0 $F8
    rra                                           ; $6A83: $1F
    ld h, $F8                                     ; $6A84: $26 $F8
    nop                                           ; $6A86: $00
    ld [hl+], a                                   ; $6A87: $22
    ld h, $F8                                     ; $6A88: $26 $F8
    ld hl, sp+$23                                 ; $6A8A: $F8 $23
    jr nz, jr_010_6A8E                            ; $6A8C: $20 $00

jr_010_6A8E:
    nop                                           ; $6A8E: $00
    jr z, jr_010_6AB4                             ; $6A8F: $28 $23

    nop                                           ; $6A91: $00
    ld hl, sp+$29                                 ; $6A92: $F8 $29
    inc hl                                        ; $6A94: $23
    add b                                         ; $6A95: $80

jr_010_6A96:
    pop af                                        ; $6A96: $F1
    nop                                           ; $6A97: $00
    ld e, $26                                     ; $6A98: $1E $26
    pop af                                        ; $6A9A: $F1
    ld hl, sp+$1F                                 ; $6A9B: $F8 $1F
    ld h, $F8                                     ; $6A9D: $26 $F8
    nop                                           ; $6A9F: $00
    inc h                                         ; $6AA0: $24
    ld h, $F8                                     ; $6AA1: $26 $F8
    ld hl, sp+$25                                 ; $6AA3: $F8 $25
    jr nz, jr_010_6AA7                            ; $6AA5: $20 $00

jr_010_6AA7:
    nop                                           ; $6AA7: $00
    ld a, [hl+]                                   ; $6AA8: $2A
    inc hl                                        ; $6AA9: $23
    nop                                           ; $6AAA: $00
    ld hl, sp+$2B                                 ; $6AAB: $F8 $2B
    inc hl                                        ; $6AAD: $23
    add b                                         ; $6AAE: $80
    ld c, l                                       ; $6AAF: $4D
    ld [$0008], sp                                ; $6AB0: $08 $08 $00
    rst $38                                       ; $6AB3: $FF

jr_010_6AB4:
    adc $69                                       ; $6AB4: $CE $69
    rst $20                                       ; $6AB6: $E7
    ld l, c                                       ; $6AB7: $69
    nop                                           ; $6AB8: $00
    ld l, d                                       ; $6AB9: $6A
    rst $20                                       ; $6ABA: $E7
    ld l, c                                       ; $6ABB: $69
    ld b, [hl]                                    ; $6ABC: $46
    xor a                                         ; $6ABD: $AF
    ld l, d                                       ; $6ABE: $6A
    ld c, l                                       ; $6ABF: $4D
    ld [$0008], sp                                ; $6AC0: $08 $08 $00
    ld bc, $6983                                  ; $6AC3: $01 $83 $69
    sbc h                                         ; $6AC6: $9C
    ld l, c                                       ; $6AC7: $69
    or l                                          ; $6AC8: $B5
    ld l, c                                       ; $6AC9: $69
    sbc h                                         ; $6ACA: $9C
    ld l, c                                       ; $6ACB: $69
    ld b, [hl]                                    ; $6ACC: $46
    cp a                                          ; $6ACD: $BF
    ld l, d                                       ; $6ACE: $6A
    ld c, l                                       ; $6ACF: $4D
    ld [$FF08], sp                                ; $6AD0: $08 $08 $FF
    nop                                           ; $6AD3: $00
    ld h, h                                       ; $6AD4: $64
    ld l, d                                       ; $6AD5: $6A
    ld a, l                                       ; $6AD6: $7D
    ld l, d                                       ; $6AD7: $6A
    sub [hl]                                      ; $6AD8: $96
    ld l, d                                       ; $6AD9: $6A
    ld a, l                                       ; $6ADA: $7D
    ld l, d                                       ; $6ADB: $6A
    ld b, [hl]                                    ; $6ADC: $46
    rst $08                                       ; $6ADD: $CF
    ld l, d                                       ; $6ADE: $6A
    ld c, l                                       ; $6ADF: $4D
    ld [$0108], sp                                ; $6AE0: $08 $08 $01
    nop                                           ; $6AE3: $00
    add hl, de                                    ; $6AE4: $19
    ld l, d                                       ; $6AE5: $6A
    ld [hl-], a                                   ; $6AE6: $32
    ld l, d                                       ; $6AE7: $6A
    ld c, e                                       ; $6AE8: $4B
    ld l, d                                       ; $6AE9: $6A
    ld [hl-], a                                   ; $6AEA: $32
    ld l, d                                       ; $6AEB: $6A
    ld b, [hl]                                    ; $6AEC: $46
    rst $18                                       ; $6AED: $DF
    ld l, d                                       ; $6AEE: $6A
    ld c, l                                       ; $6AEF: $4D
    ld [$0008], sp                                ; $6AF0: $08 $08 $00
    cp $CE                                        ; $6AF3: $FE $CE
    ld l, c                                       ; $6AF5: $69
    rst $20                                       ; $6AF6: $E7
    ld l, c                                       ; $6AF7: $69
    nop                                           ; $6AF8: $00
    ld l, d                                       ; $6AF9: $6A
    rst $20                                       ; $6AFA: $E7
    ld l, c                                       ; $6AFB: $69
    ld b, [hl]                                    ; $6AFC: $46
    rst $28                                       ; $6AFD: $EF
    ld l, d                                       ; $6AFE: $6A
    ld c, l                                       ; $6AFF: $4D
    ld [$0008], sp                                ; $6B00: $08 $08 $00
    ld [bc], a                                    ; $6B03: $02
    add e                                         ; $6B04: $83
    ld l, c                                       ; $6B05: $69
    sbc h                                         ; $6B06: $9C
    ld l, c                                       ; $6B07: $69
    or l                                          ; $6B08: $B5
    ld l, c                                       ; $6B09: $69
    sbc h                                         ; $6B0A: $9C
    ld l, c                                       ; $6B0B: $69
    ld b, [hl]                                    ; $6B0C: $46
    rst $38                                       ; $6B0D: $FF
    ld l, d                                       ; $6B0E: $6A
    ld c, l                                       ; $6B0F: $4D
    ld [$FE08], sp                                ; $6B10: $08 $08 $FE
    nop                                           ; $6B13: $00
    ld h, h                                       ; $6B14: $64
    ld l, d                                       ; $6B15: $6A
    ld a, l                                       ; $6B16: $7D
    ld l, d                                       ; $6B17: $6A
    sub [hl]                                      ; $6B18: $96
    ld l, d                                       ; $6B19: $6A
    ld a, l                                       ; $6B1A: $7D
    ld l, d                                       ; $6B1B: $6A
    ld b, [hl]                                    ; $6B1C: $46
    rrca                                          ; $6B1D: $0F
    ld l, e                                       ; $6B1E: $6B
    ld c, l                                       ; $6B1F: $4D
    ld [$0208], sp                                ; $6B20: $08 $08 $02
    nop                                           ; $6B23: $00
    add hl, de                                    ; $6B24: $19
    ld l, d                                       ; $6B25: $6A
    ld [hl-], a                                   ; $6B26: $32
    ld l, d                                       ; $6B27: $6A
    ld c, e                                       ; $6B28: $4B
    ld l, d                                       ; $6B29: $6A
    ld [hl-], a                                   ; $6B2A: $32
    ld l, d                                       ; $6B2B: $6A
    ld b, [hl]                                    ; $6B2C: $46
    rra                                           ; $6B2D: $1F
    ld l, e                                       ; $6B2E: $6B
    ld c, h                                       ; $6B2F: $4C
    rst $38                                       ; $6B30: $FF
    nop                                           ; $6B31: $00
    nop                                           ; $6B32: $00
    rst $20                                       ; $6B33: $E7
    ld l, c                                       ; $6B34: $69
    nop                                           ; $6B35: $00
    ld b, [hl]                                    ; $6B36: $46
    cpl                                           ; $6B37: $2F
    ld l, e                                       ; $6B38: $6B
    ld c, h                                       ; $6B39: $4C
    rst $38                                       ; $6B3A: $FF
    nop                                           ; $6B3B: $00
    nop                                           ; $6B3C: $00
    sbc h                                         ; $6B3D: $9C
    ld l, c                                       ; $6B3E: $69
    nop                                           ; $6B3F: $00
    ld b, [hl]                                    ; $6B40: $46
    add hl, sp                                    ; $6B41: $39
    ld l, e                                       ; $6B42: $6B
    ld c, h                                       ; $6B43: $4C
    rst $38                                       ; $6B44: $FF
    nop                                           ; $6B45: $00
    nop                                           ; $6B46: $00
    ld a, l                                       ; $6B47: $7D
    ld l, d                                       ; $6B48: $6A
    nop                                           ; $6B49: $00
    ld b, [hl]                                    ; $6B4A: $46
    ld b, e                                       ; $6B4B: $43
    ld l, e                                       ; $6B4C: $6B
    ld c, h                                       ; $6B4D: $4C
    rst $38                                       ; $6B4E: $FF
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    ld [hl-], a                                   ; $6B51: $32
    ld l, d                                       ; $6B52: $6A
    nop                                           ; $6B53: $00
    ld b, [hl]                                    ; $6B54: $46
    ld c, l                                       ; $6B55: $4D
    ld l, e                                       ; $6B56: $6B
    ld c, h                                       ; $6B57: $4C
    rst $38                                       ; $6B58: $FF
    nop                                           ; $6B59: $00
    nop                                           ; $6B5A: $00
    ld l, d                                       ; $6B5B: $6A
    ld l, c                                       ; $6B5C: $69
    nop                                           ; $6B5D: $00
    ld b, [hl]                                    ; $6B5E: $46
    ld d, a                                       ; $6B5F: $57
    ld l, e                                       ; $6B60: $6B
    ld c, h                                       ; $6B61: $4C
    rst $38                                       ; $6B62: $FF
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    ld d, c                                       ; $6B65: $51
    ld l, c                                       ; $6B66: $69
    nop                                           ; $6B67: $00
    ld b, [hl]                                    ; $6B68: $46
    ld h, c                                       ; $6B69: $61
    ld l, e                                       ; $6B6A: $6B
    ld c, h                                       ; $6B6B: $4C
    rst $38                                       ; $6B6C: $FF
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    jr c, jr_010_6BDA                             ; $6B6F: $38 $69

    nop                                           ; $6B71: $00
    ld b, [hl]                                    ; $6B72: $46
    ld l, e                                       ; $6B73: $6B
    ld l, e                                       ; $6B74: $6B
    ld c, h                                       ; $6B75: $4C
    rst $38                                       ; $6B76: $FF
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    rra                                           ; $6B79: $1F
    ld l, c                                       ; $6B7A: $69
    nop                                           ; $6B7B: $00
    ld b, [hl]                                    ; $6B7C: $46
    ld [hl], l                                    ; $6B7D: $75
    ld l, e                                       ; $6B7E: $6B
    ld c, e                                       ; $6B7F: $4B
    inc bc                                        ; $6B80: $03
    stop                                          ; $6B81: $10 $00
    nop                                           ; $6B83: $00
    sub [hl]                                      ; $6B84: $96
    ld l, e                                       ; $6B85: $6B
    db $10                                        ; $6B86: $10
    inc bc                                        ; $6B87: $03
    nop                                           ; $6B88: $00
    sbc l                                         ; $6B89: $9D
    ld l, e                                       ; $6B8A: $6B
    db $10                                        ; $6B8B: $10
    ld [bc], a                                    ; $6B8C: $02
    nop                                           ; $6B8D: $00
    xor e                                         ; $6B8E: $AB
    ld l, e                                       ; $6B8F: $6B
    db $10                                        ; $6B90: $10
    ld bc, $A400                                  ; $6B91: $01 $00 $A4
    ld l, e                                       ; $6B94: $6B
    rst $38                                       ; $6B95: $FF
    inc d                                         ; $6B96: $14
    db $10                                        ; $6B97: $10
    cpl                                           ; $6B98: $2F
    ld l, e                                       ; $6B99: $6B
    ld h, d                                       ; $6B9A: $62
    ld bc, $1412                                  ; $6B9B: $01 $12 $14
    db $10                                        ; $6B9E: $10
    add hl, sp                                    ; $6B9F: $39
    ld l, e                                       ; $6BA0: $6B
    ld h, d                                       ; $6BA1: $62
    ld bc, $1412                                  ; $6BA2: $01 $12 $14
    db $10                                        ; $6BA5: $10
    ld b, e                                       ; $6BA6: $43
    ld l, e                                       ; $6BA7: $6B
    ld h, d                                       ; $6BA8: $62
    ld bc, $1412                                  ; $6BA9: $01 $12 $14
    db $10                                        ; $6BAC: $10
    ld c, l                                       ; $6BAD: $4D
    ld l, e                                       ; $6BAE: $6B
    ld h, d                                       ; $6BAF: $62
    ld bc, $F012                                  ; $6BB0: $01 $12 $F0
    ld hl, sp+$00                                 ; $6BB3: $F8 $00
    nop                                           ; $6BB5: $00
    ldh a, [rP1]                                  ; $6BB6: $F0 $00
    ld bc, $F800                                  ; $6BB8: $01 $00 $F8
    ld hl, sp+$04                                 ; $6BBB: $F8 $04
    nop                                           ; $6BBD: $00
    ld hl, sp+$00                                 ; $6BBE: $F8 $00

jr_010_6BC0:
    dec b                                         ; $6BC0: $05
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    ld hl, sp+$07                                 ; $6BC3: $F8 $07
    rlca                                          ; $6BC5: $07
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    ld [$8007], sp                                ; $6BC8: $08 $07 $80
    ldh a, [rP1]                                  ; $6BCB: $F0 $00
    nop                                           ; $6BCD: $00
    jr nz, jr_010_6BC0                            ; $6BCE: $20 $F0

jr_010_6BD0:
    ld hl, sp+$01                                 ; $6BD0: $F8 $01
    jr nz, @-$06                                  ; $6BD2: $20 $F8

    nop                                           ; $6BD4: $00
    inc b                                         ; $6BD5: $04
    jr nz, jr_010_6BD0                            ; $6BD6: $20 $F8

    ld hl, sp+$05                                 ; $6BD8: $F8 $05

jr_010_6BDA:
    jr nz, jr_010_6BDC                            ; $6BDA: $20 $00

jr_010_6BDC:
    nop                                           ; $6BDC: $00
    rlca                                          ; $6BDD: $07
    daa                                           ; $6BDE: $27
    nop                                           ; $6BDF: $00
    ld hl, sp+$08                                 ; $6BE0: $F8 $08
    daa                                           ; $6BE2: $27
    add b                                         ; $6BE3: $80
    ldh a, [$F8]                                  ; $6BE4: $F0 $F8
    dec bc                                        ; $6BE6: $0B
    nop                                           ; $6BE7: $00
    ldh a, [rP1]                                  ; $6BE8: $F0 $00
    inc c                                         ; $6BEA: $0C
    nop                                           ; $6BEB: $00
    ld hl, sp-$08                                 ; $6BEC: $F8 $F8

jr_010_6BEE:
    ld c, $00                                     ; $6BEE: $0E $00
    ld hl, sp+$00                                 ; $6BF0: $F8 $00
    rrca                                          ; $6BF2: $0F
    nop                                           ; $6BF3: $00
    nop                                           ; $6BF4: $00
    cp $11                                        ; $6BF5: $FE $11
    rlca                                          ; $6BF7: $07
    add b                                         ; $6BF8: $80
    ldh a, [rP1]                                  ; $6BF9: $F0 $00
    dec bc                                        ; $6BFB: $0B
    jr nz, jr_010_6BEE                            ; $6BFC: $20 $F0

    ld hl, sp+$0C                                 ; $6BFE: $F8 $0C
    jr nz, @-$06                                  ; $6C00: $20 $F8

    nop                                           ; $6C02: $00
    ld c, $20                                     ; $6C03: $0E $20
    ld hl, sp-$08                                 ; $6C05: $F8 $F8
    rrca                                          ; $6C07: $0F
    jr nz, jr_010_6C0A                            ; $6C08: $20 $00

jr_010_6C0A:
    ld a, [$2711]                                 ; $6C0A: $FA $11 $27
    add b                                         ; $6C0D: $80
    pop af                                        ; $6C0E: $F1
    ld hl, sp+$02                                 ; $6C0F: $F8 $02
    nop                                           ; $6C11: $00
    pop af                                        ; $6C12: $F1
    nop                                           ; $6C13: $00
    inc bc                                        ; $6C14: $03
    nop                                           ; $6C15: $00
    ld hl, sp-$08                                 ; $6C16: $F8 $F8
    ld [de], a                                    ; $6C18: $12
    nop                                           ; $6C19: $00
    ld hl, sp+$00                                 ; $6C1A: $F8 $00
    inc de                                        ; $6C1C: $13
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    db $FC                                        ; $6C1F: $FC
    inc d                                         ; $6C20: $14
    rlca                                          ; $6C21: $07
    add b                                         ; $6C22: $80
    ldh a, [$F8]                                  ; $6C23: $F0 $F8
    ld [bc], a                                    ; $6C25: $02
    nop                                           ; $6C26: $00
    ldh a, [rP1]                                  ; $6C27: $F0 $00
    inc bc                                        ; $6C29: $03
    nop                                           ; $6C2A: $00
    ld hl, sp+$00                                 ; $6C2B: $F8 $00
    ld b, $00                                     ; $6C2D: $06 $00
    ld hl, sp-$08                                 ; $6C2F: $F8 $F8
    ld b, $20                                     ; $6C31: $06 $20
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    add hl, bc                                    ; $6C35: $09
    rlca                                          ; $6C36: $07
    nop                                           ; $6C37: $00
    ld sp, hl                                     ; $6C38: $F9
    add hl, bc                                    ; $6C39: $09
    daa                                           ; $6C3A: $27
    add b                                         ; $6C3B: $80
    pop af                                        ; $6C3C: $F1
    ld hl, sp+$02                                 ; $6C3D: $F8 $02
    nop                                           ; $6C3F: $00
    pop af                                        ; $6C40: $F1
    nop                                           ; $6C41: $00
    inc bc                                        ; $6C42: $03
    nop                                           ; $6C43: $00
    nop                                           ; $6C44: $00
    db $FC                                        ; $6C45: $FC
    inc d                                         ; $6C46: $14
    daa                                           ; $6C47: $27
    ld hl, sp-$08                                 ; $6C48: $F8 $F8
    dec h                                         ; $6C4A: $25
    nop                                           ; $6C4B: $00
    ld hl, sp+$00                                 ; $6C4C: $F8 $00
    ld h, $00                                     ; $6C4E: $26 $00
    add b                                         ; $6C50: $80
    ld hl, sp-$08                                 ; $6C51: $F8 $F8
    dec d                                         ; $6C53: $15
    nop                                           ; $6C54: $00
    ld hl, sp+$00                                 ; $6C55: $F8 $00
    ld d, $00                                     ; $6C57: $16 $00
    pop af                                        ; $6C59: $F1
    nop                                           ; $6C5A: $00
    ld a, [bc]                                    ; $6C5B: $0A
    nop                                           ; $6C5C: $00
    pop af                                        ; $6C5D: $F1
    ld hl, sp+$0A                                 ; $6C5E: $F8 $0A
    jr nz, jr_010_6C62                            ; $6C60: $20 $00

jr_010_6C62:
    db $FC                                        ; $6C62: $FC
    rla                                           ; $6C63: $17
    rlca                                          ; $6C64: $07
    add b                                         ; $6C65: $80
    ldh a, [rP1]                                  ; $6C66: $F0 $00
    ld a, [bc]                                    ; $6C68: $0A
    nop                                           ; $6C69: $00
    ldh a, [$F8]                                  ; $6C6A: $F0 $F8
    ld a, [bc]                                    ; $6C6C: $0A
    jr nz, @-$06                                  ; $6C6D: $20 $F8

    nop                                           ; $6C6F: $00
    dec c                                         ; $6C70: $0D
    nop                                           ; $6C71: $00
    ld hl, sp-$08                                 ; $6C72: $F8 $F8
    dec c                                         ; $6C74: $0D
    jr nz, jr_010_6C77                            ; $6C75: $20 $00

jr_010_6C77:
    nop                                           ; $6C77: $00
    db $10                                        ; $6C78: $10

jr_010_6C79:
    rlca                                          ; $6C79: $07
    nop                                           ; $6C7A: $00
    ld sp, hl                                     ; $6C7B: $F9

jr_010_6C7C:
    db $10                                        ; $6C7C: $10
    daa                                           ; $6C7D: $27
    add b                                         ; $6C7E: $80
    ld hl, sp+$00                                 ; $6C7F: $F8 $00
    dec d                                         ; $6C81: $15
    jr nz, jr_010_6C7C                            ; $6C82: $20 $F8

    ld hl, sp+$16                                 ; $6C84: $F8 $16
    jr nz, jr_010_6C79                            ; $6C86: $20 $F1

    nop                                           ; $6C88: $00
    ld a, [bc]                                    ; $6C89: $0A
    nop                                           ; $6C8A: $00
    pop af                                        ; $6C8B: $F1
    ld hl, sp+$0A                                 ; $6C8C: $F8 $0A
    jr nz, jr_010_6C90                            ; $6C8E: $20 $00

jr_010_6C90:
    db $FC                                        ; $6C90: $FC
    rla                                           ; $6C91: $17
    daa                                           ; $6C92: $27
    add b                                         ; $6C93: $80
    pop af                                        ; $6C94: $F1
    ld hl, sp+$18                                 ; $6C95: $F8 $18
    nop                                           ; $6C97: $00
    pop af                                        ; $6C98: $F1
    nop                                           ; $6C99: $00
    add hl, de                                    ; $6C9A: $19
    nop                                           ; $6C9B: $00
    ld hl, sp-$08                                 ; $6C9C: $F8 $F8
    ld a, [de]                                    ; $6C9E: $1A
    nop                                           ; $6C9F: $00
    ld hl, sp+$00                                 ; $6CA0: $F8 $00
    dec de                                        ; $6CA2: $1B
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    ld hl, sp+$20                                 ; $6CA5: $F8 $20
    rlca                                          ; $6CA7: $07
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    ld hl, $8007                                  ; $6CAA: $21 $07 $80
    ldh a, [$F8]                                  ; $6CAD: $F0 $F8
    jr jr_010_6CB1                                ; $6CAF: $18 $00

jr_010_6CB1:
    ldh a, [rP1]                                  ; $6CB1: $F0 $00
    add hl, de                                    ; $6CB3: $19
    nop                                           ; $6CB4: $00
    ld hl, sp-$08                                 ; $6CB5: $F8 $F8
    inc e                                         ; $6CB7: $1C
    nop                                           ; $6CB8: $00
    ld hl, sp+$00                                 ; $6CB9: $F8 $00
    dec e                                         ; $6CBB: $1D
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    db $FC                                        ; $6CBE: $FC
    ld [hl+], a                                   ; $6CBF: $22
    rlca                                          ; $6CC0: $07
    add b                                         ; $6CC1: $80
    pop af                                        ; $6CC2: $F1
    ld hl, sp+$18                                 ; $6CC3: $F8 $18
    nop                                           ; $6CC5: $00
    pop af                                        ; $6CC6: $F1
    nop                                           ; $6CC7: $00
    add hl, de                                    ; $6CC8: $19
    nop                                           ; $6CC9: $00
    ld hl, sp-$08                                 ; $6CCA: $F8 $F8
    ld e, $00                                     ; $6CCC: $1E $00
    ld hl, sp+$00                                 ; $6CCE: $F8 $00
    rra                                           ; $6CD0: $1F
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    ld hl, sp+$23                                 ; $6CD3: $F8 $23
    rlca                                          ; $6CD5: $07
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    inc h                                         ; $6CD8: $24
    rlca                                          ; $6CD9: $07
    add b                                         ; $6CDA: $80
    pop af                                        ; $6CDB: $F1

jr_010_6CDC:
    nop                                           ; $6CDC: $00
    jr jr_010_6CFF                                ; $6CDD: $18 $20

    pop af                                        ; $6CDF: $F1

jr_010_6CE0:
    ld hl, sp+$19                                 ; $6CE0: $F8 $19
    jr nz, jr_010_6CDC                            ; $6CE2: $20 $F8

    nop                                           ; $6CE4: $00
    ld a, [de]                                    ; $6CE5: $1A
    jr nz, jr_010_6CE0                            ; $6CE6: $20 $F8

    ld hl, sp+$1B                                 ; $6CE8: $F8 $1B
    jr nz, jr_010_6CEC                            ; $6CEA: $20 $00

jr_010_6CEC:
    nop                                           ; $6CEC: $00
    jr nz, @+$29                                  ; $6CED: $20 $27

    nop                                           ; $6CEF: $00
    ld hl, sp+$21                                 ; $6CF0: $F8 $21
    daa                                           ; $6CF2: $27
    add b                                         ; $6CF3: $80
    ldh a, [rP1]                                  ; $6CF4: $F0 $00
    jr jr_010_6D18                                ; $6CF6: $18 $20

    ldh a, [$F8]                                  ; $6CF8: $F0 $F8
    add hl, de                                    ; $6CFA: $19
    jr nz, @-$06                                  ; $6CFB: $20 $F8

    nop                                           ; $6CFD: $00
    inc e                                         ; $6CFE: $1C

jr_010_6CFF:
    jr nz, @-$06                                  ; $6CFF: $20 $F8

    ld hl, sp+$1D                                 ; $6D01: $F8 $1D
    jr nz, jr_010_6D05                            ; $6D03: $20 $00

jr_010_6D05:
    db $FC                                        ; $6D05: $FC
    ld [hl+], a                                   ; $6D06: $22
    daa                                           ; $6D07: $27
    add b                                         ; $6D08: $80
    pop af                                        ; $6D09: $F1

jr_010_6D0A:
    nop                                           ; $6D0A: $00
    jr jr_010_6D2D                                ; $6D0B: $18 $20

    pop af                                        ; $6D0D: $F1
    ld hl, sp+$19                                 ; $6D0E: $F8 $19
    jr nz, jr_010_6D0A                            ; $6D10: $20 $F8

    nop                                           ; $6D12: $00
    ld e, $20                                     ; $6D13: $1E $20
    ld hl, sp-$08                                 ; $6D15: $F8 $F8
    rra                                           ; $6D17: $1F

jr_010_6D18:
    jr nz, jr_010_6D1A                            ; $6D18: $20 $00

jr_010_6D1A:
    nop                                           ; $6D1A: $00
    inc hl                                        ; $6D1B: $23
    daa                                           ; $6D1C: $27
    nop                                           ; $6D1D: $00
    ld hl, sp+$24                                 ; $6D1E: $F8 $24
    daa                                           ; $6D20: $27
    add b                                         ; $6D21: $80
    ld c, l                                       ; $6D22: $4D
    ld [$0008], sp                                ; $6D23: $08 $08 $00
    rst $38                                       ; $6D26: $FF
    ld d, c                                       ; $6D27: $51
    ld l, h                                       ; $6D28: $6C
    ld h, [hl]                                    ; $6D29: $66
    ld l, h                                       ; $6D2A: $6C
    ld a, a                                       ; $6D2B: $7F
    ld l, h                                       ; $6D2C: $6C

jr_010_6D2D:
    ld h, [hl]                                    ; $6D2D: $66
    ld l, h                                       ; $6D2E: $6C
    ld b, [hl]                                    ; $6D2F: $46
    ld [hl+], a                                   ; $6D30: $22
    ld l, l                                       ; $6D31: $6D
    ld c, l                                       ; $6D32: $4D
    ld [$0008], sp                                ; $6D33: $08 $08 $00
    ld bc, $6C0E                                  ; $6D36: $01 $0E $6C
    inc hl                                        ; $6D39: $23
    ld l, h                                       ; $6D3A: $6C
    inc a                                         ; $6D3B: $3C
    ld l, h                                       ; $6D3C: $6C
    inc hl                                        ; $6D3D: $23
    ld l, h                                       ; $6D3E: $6C
    ld b, [hl]                                    ; $6D3F: $46
    ld [hl-], a                                   ; $6D40: $32
    ld l, l                                       ; $6D41: $6D
    ld c, l                                       ; $6D42: $4D
    ld [$FF08], sp                                ; $6D43: $08 $08 $FF
    nop                                           ; $6D46: $00
    db $DB                                        ; $6D47: $DB
    ld l, h                                       ; $6D48: $6C
    db $F4                                        ; $6D49: $F4
    ld l, h                                       ; $6D4A: $6C
    add hl, bc                                    ; $6D4B: $09
    ld l, l                                       ; $6D4C: $6D
    db $F4                                        ; $6D4D: $F4
    ld l, h                                       ; $6D4E: $6C
    ld b, [hl]                                    ; $6D4F: $46
    ld b, d                                       ; $6D50: $42
    ld l, l                                       ; $6D51: $6D
    ld c, l                                       ; $6D52: $4D
    ld [$0108], sp                                ; $6D53: $08 $08 $01
    nop                                           ; $6D56: $00
    sub h                                         ; $6D57: $94
    ld l, h                                       ; $6D58: $6C
    xor l                                         ; $6D59: $AD
    ld l, h                                       ; $6D5A: $6C
    jp nz, $AD6C                                  ; $6D5B: $C2 $6C $AD

    ld l, h                                       ; $6D5E: $6C
    ld b, [hl]                                    ; $6D5F: $46
    ld d, d                                       ; $6D60: $52
    ld l, l                                       ; $6D61: $6D
    ld c, l                                       ; $6D62: $4D
    ld [$0008], sp                                ; $6D63: $08 $08 $00
    cp $51                                        ; $6D66: $FE $51
    ld l, h                                       ; $6D68: $6C
    ld h, [hl]                                    ; $6D69: $66
    ld l, h                                       ; $6D6A: $6C
    ld a, a                                       ; $6D6B: $7F
    ld l, h                                       ; $6D6C: $6C
    ld h, [hl]                                    ; $6D6D: $66
    ld l, h                                       ; $6D6E: $6C
    ld b, [hl]                                    ; $6D6F: $46
    ld h, d                                       ; $6D70: $62
    ld l, l                                       ; $6D71: $6D
    ld c, l                                       ; $6D72: $4D
    ld [$0008], sp                                ; $6D73: $08 $08 $00
    ld [bc], a                                    ; $6D76: $02
    ld c, $6C                                     ; $6D77: $0E $6C
    inc hl                                        ; $6D79: $23
    ld l, h                                       ; $6D7A: $6C
    inc a                                         ; $6D7B: $3C
    ld l, h                                       ; $6D7C: $6C
    inc hl                                        ; $6D7D: $23
    ld l, h                                       ; $6D7E: $6C
    ld b, [hl]                                    ; $6D7F: $46
    ld [hl], d                                    ; $6D80: $72
    ld l, l                                       ; $6D81: $6D
    ld c, l                                       ; $6D82: $4D
    ld [$FE08], sp                                ; $6D83: $08 $08 $FE
    nop                                           ; $6D86: $00
    db $DB                                        ; $6D87: $DB
    ld l, h                                       ; $6D88: $6C
    db $F4                                        ; $6D89: $F4
    ld l, h                                       ; $6D8A: $6C
    add hl, bc                                    ; $6D8B: $09
    ld l, l                                       ; $6D8C: $6D
    db $F4                                        ; $6D8D: $F4
    ld l, h                                       ; $6D8E: $6C
    ld b, [hl]                                    ; $6D8F: $46
    add d                                         ; $6D90: $82
    ld l, l                                       ; $6D91: $6D
    ld c, l                                       ; $6D92: $4D
    ld [$0208], sp                                ; $6D93: $08 $08 $02
    nop                                           ; $6D96: $00
    sub h                                         ; $6D97: $94
    ld l, h                                       ; $6D98: $6C
    xor l                                         ; $6D99: $AD
    ld l, h                                       ; $6D9A: $6C
    jp nz, $AD6C                                  ; $6D9B: $C2 $6C $AD

    ld l, h                                       ; $6D9E: $6C
    ld b, [hl]                                    ; $6D9F: $46
    sub d                                         ; $6DA0: $92
    ld l, l                                       ; $6DA1: $6D
    ld c, h                                       ; $6DA2: $4C
    rst $38                                       ; $6DA3: $FF
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    ld h, [hl]                                    ; $6DA6: $66
    ld l, h                                       ; $6DA7: $6C
    nop                                           ; $6DA8: $00
    ld b, [hl]                                    ; $6DA9: $46
    and d                                         ; $6DAA: $A2
    ld l, l                                       ; $6DAB: $6D
    ld c, h                                       ; $6DAC: $4C
    rst $38                                       ; $6DAD: $FF
    nop                                           ; $6DAE: $00
    nop                                           ; $6DAF: $00
    inc hl                                        ; $6DB0: $23
    ld l, h                                       ; $6DB1: $6C
    nop                                           ; $6DB2: $00
    ld b, [hl]                                    ; $6DB3: $46
    xor h                                         ; $6DB4: $AC
    ld l, l                                       ; $6DB5: $6D
    ld c, h                                       ; $6DB6: $4C
    rst $38                                       ; $6DB7: $FF
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    db $F4                                        ; $6DBA: $F4
    ld l, h                                       ; $6DBB: $6C
    nop                                           ; $6DBC: $00
    ld b, [hl]                                    ; $6DBD: $46
    or [hl]                                       ; $6DBE: $B6
    ld l, l                                       ; $6DBF: $6D
    ld c, h                                       ; $6DC0: $4C
    rst $38                                       ; $6DC1: $FF
    nop                                           ; $6DC2: $00
    nop                                           ; $6DC3: $00
    xor l                                         ; $6DC4: $AD
    ld l, h                                       ; $6DC5: $6C
    nop                                           ; $6DC6: $00
    ld b, [hl]                                    ; $6DC7: $46
    ret nz                                        ; $6DC8: $C0

    ld l, l                                       ; $6DC9: $6D
    ld c, h                                       ; $6DCA: $4C
    rst $38                                       ; $6DCB: $FF
    nop                                           ; $6DCC: $00
    nop                                           ; $6DCD: $00
    ld sp, hl                                     ; $6DCE: $F9
    ld l, e                                       ; $6DCF: $6B
    nop                                           ; $6DD0: $00
    ld b, [hl]                                    ; $6DD1: $46
    jp z, Jump_010_4C6D                           ; $6DD2: $CA $6D $4C

    rst $38                                       ; $6DD5: $FF
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    db $E4                                        ; $6DD8: $E4
    ld l, e                                       ; $6DD9: $6B
    nop                                           ; $6DDA: $00
    ld b, [hl]                                    ; $6DDB: $46
    call nc, Call_010_4C6D                        ; $6DDC: $D4 $6D $4C
    rst $38                                       ; $6DDF: $FF
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    bit 5, e                                      ; $6DE2: $CB $6B
    nop                                           ; $6DE4: $00
    ld b, [hl]                                    ; $6DE5: $46
    sbc $6D                                       ; $6DE6: $DE $6D
    ld c, h                                       ; $6DE8: $4C
    rst $38                                       ; $6DE9: $FF
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    or d                                          ; $6DEC: $B2
    ld l, e                                       ; $6DED: $6B
    nop                                           ; $6DEE: $00
    ld b, [hl]                                    ; $6DEF: $46
    add sp, $6D                                   ; $6DF0: $E8 $6D
    ld c, e                                       ; $6DF2: $4B
    inc bc                                        ; $6DF3: $03
    stop                                          ; $6DF4: $10 $00
    nop                                           ; $6DF6: $00
    add hl, bc                                    ; $6DF7: $09
    ld l, [hl]                                    ; $6DF8: $6E
    db $10                                        ; $6DF9: $10
    inc bc                                        ; $6DFA: $03
    nop                                           ; $6DFB: $00
    db $10                                        ; $6DFC: $10
    ld l, [hl]                                    ; $6DFD: $6E
    db $10                                        ; $6DFE: $10
    ld [bc], a                                    ; $6DFF: $02
    nop                                           ; $6E00: $00
    ld e, $6E                                     ; $6E01: $1E $6E
    db $10                                        ; $6E03: $10
    ld bc, $1700                                  ; $6E04: $01 $00 $17
    ld l, [hl]                                    ; $6E07: $6E
    rst $38                                       ; $6E08: $FF
    inc d                                         ; $6E09: $14
    db $10                                        ; $6E0A: $10
    and d                                         ; $6E0B: $A2
    ld l, l                                       ; $6E0C: $6D
    ld h, d                                       ; $6E0D: $62
    ld bc, $1412                                  ; $6E0E: $01 $12 $14
    db $10                                        ; $6E11: $10
    xor h                                         ; $6E12: $AC
    ld l, l                                       ; $6E13: $6D
    ld h, d                                       ; $6E14: $62
    ld bc, $1412                                  ; $6E15: $01 $12 $14
    db $10                                        ; $6E18: $10
    or [hl]                                       ; $6E19: $B6
    ld l, l                                       ; $6E1A: $6D
    ld h, d                                       ; $6E1B: $62
    ld bc, $1412                                  ; $6E1C: $01 $12 $14
    db $10                                        ; $6E1F: $10
    ret nz                                        ; $6E20: $C0

    ld l, l                                       ; $6E21: $6D
    ld h, d                                       ; $6E22: $62
    ld bc, $F012                                  ; $6E23: $01 $12 $F0
    ld hl, sp+$00                                 ; $6E26: $F8 $00
    nop                                           ; $6E28: $00
    ldh a, [rP1]                                  ; $6E29: $F0 $00
    ld bc, $F800                                  ; $6E2B: $01 $00 $F8
    ld hl, sp+$04                                 ; $6E2E: $F8 $04
    nop                                           ; $6E30: $00
    ld hl, sp+$00                                 ; $6E31: $F8 $00

jr_010_6E33:
    dec b                                         ; $6E33: $05
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    ld hl, sp+$07                                 ; $6E36: $F8 $07
    ld bc, $0000                                  ; $6E38: $01 $00 $00
    ld [$8001], sp                                ; $6E3B: $08 $01 $80
    ldh a, [rP1]                                  ; $6E3E: $F0 $00
    nop                                           ; $6E40: $00
    jr nz, jr_010_6E33                            ; $6E41: $20 $F0

jr_010_6E43:
    ld hl, sp+$01                                 ; $6E43: $F8 $01
    jr nz, @-$06                                  ; $6E45: $20 $F8

    nop                                           ; $6E47: $00
    inc b                                         ; $6E48: $04
    jr nz, jr_010_6E43                            ; $6E49: $20 $F8

    ld hl, sp+$05                                 ; $6E4B: $F8 $05
    jr nz, jr_010_6E4F                            ; $6E4D: $20 $00

jr_010_6E4F:
    nop                                           ; $6E4F: $00
    rlca                                          ; $6E50: $07
    ld hl, $F800                                  ; $6E51: $21 $00 $F8
    ld [$8021], sp                                ; $6E54: $08 $21 $80
    ldh a, [$F8]                                  ; $6E57: $F0 $F8
    inc c                                         ; $6E59: $0C
    nop                                           ; $6E5A: $00
    ldh a, [rP1]                                  ; $6E5B: $F0 $00
    dec c                                         ; $6E5D: $0D
    nop                                           ; $6E5E: $00
    ld hl, sp-$08                                 ; $6E5F: $F8 $F8

jr_010_6E61:
    rrca                                          ; $6E61: $0F
    nop                                           ; $6E62: $00
    ld hl, sp+$00                                 ; $6E63: $F8 $00
    stop                                          ; $6E65: $10 $00
    nop                                           ; $6E67: $00
    cp $27                                        ; $6E68: $FE $27
    ld bc, $F080                                  ; $6E6A: $01 $80 $F0

jr_010_6E6D:
    nop                                           ; $6E6D: $00
    inc c                                         ; $6E6E: $0C
    jr nz, jr_010_6E61                            ; $6E6F: $20 $F0

jr_010_6E71:
    ld hl, sp+$0D                                 ; $6E71: $F8 $0D
    jr nz, jr_010_6E6D                            ; $6E73: $20 $F8

    nop                                           ; $6E75: $00
    rrca                                          ; $6E76: $0F
    jr nz, jr_010_6E71                            ; $6E77: $20 $F8

    ld hl, sp+$10                                 ; $6E79: $F8 $10
    jr nz, jr_010_6E7D                            ; $6E7B: $20 $00

jr_010_6E7D:
    ld a, [$2127]                                 ; $6E7D: $FA $27 $21
    add b                                         ; $6E80: $80
    pop af                                        ; $6E81: $F1
    ld hl, sp+$02                                 ; $6E82: $F8 $02
    nop                                           ; $6E84: $00
    pop af                                        ; $6E85: $F1
    nop                                           ; $6E86: $00

jr_010_6E87:
    inc bc                                        ; $6E87: $03
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    db $FC                                        ; $6E8A: $FC
    inc d                                         ; $6E8B: $14
    ld bc, $F8F8                                  ; $6E8C: $01 $F8 $F8
    ld [de], a                                    ; $6E8F: $12
    nop                                           ; $6E90: $00
    ld hl, sp+$00                                 ; $6E91: $F8 $00
    inc de                                        ; $6E93: $13
    nop                                           ; $6E94: $00
    add b                                         ; $6E95: $80
    ldh a, [$F8]                                  ; $6E96: $F0 $F8
    ld [bc], a                                    ; $6E98: $02
    nop                                           ; $6E99: $00
    ldh a, [rP1]                                  ; $6E9A: $F0 $00
    inc bc                                        ; $6E9C: $03
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    ld sp, hl                                     ; $6E9F: $F9
    add hl, bc                                    ; $6EA0: $09
    ld hl, $0000                                  ; $6EA1: $21 $00 $00
    add hl, bc                                    ; $6EA4: $09
    ld bc, $00F8                                  ; $6EA5: $01 $F8 $00
    ld b, $00                                     ; $6EA8: $06 $00
    ld hl, sp-$08                                 ; $6EAA: $F8 $F8
    ld b, $20                                     ; $6EAC: $06 $20
    add b                                         ; $6EAE: $80
    pop af                                        ; $6EAF: $F1
    ld hl, sp+$02                                 ; $6EB0: $F8 $02
    nop                                           ; $6EB2: $00
    pop af                                        ; $6EB3: $F1
    nop                                           ; $6EB4: $00
    inc bc                                        ; $6EB5: $03
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    db $FC                                        ; $6EB8: $FC
    inc d                                         ; $6EB9: $14
    ld hl, $F8F8                                  ; $6EBA: $21 $F8 $F8
    dec h                                         ; $6EBD: $25
    nop                                           ; $6EBE: $00
    ld hl, sp+$00                                 ; $6EBF: $F8 $00
    ld h, $00                                     ; $6EC1: $26 $00
    add b                                         ; $6EC3: $80
    pop af                                        ; $6EC4: $F1
    ld hl, sp+$0A                                 ; $6EC5: $F8 $0A
    nop                                           ; $6EC7: $00
    pop af                                        ; $6EC8: $F1
    nop                                           ; $6EC9: $00
    dec bc                                        ; $6ECA: $0B
    nop                                           ; $6ECB: $00
    nop                                           ; $6ECC: $00
    ei                                            ; $6ECD: $FB
    rla                                           ; $6ECE: $17
    ld bc, $F8F8                                  ; $6ECF: $01 $F8 $F8
    dec d                                         ; $6ED2: $15
    nop                                           ; $6ED3: $00
    ld hl, sp+$00                                 ; $6ED4: $F8 $00
    ld d, $00                                     ; $6ED6: $16 $00
    add b                                         ; $6ED8: $80
    ldh a, [$F8]                                  ; $6ED9: $F0 $F8
    ld a, [bc]                                    ; $6EDB: $0A
    nop                                           ; $6EDC: $00
    ldh a, [rP1]                                  ; $6EDD: $F0 $00
    dec bc                                        ; $6EDF: $0B
    nop                                           ; $6EE0: $00
    ld hl, sp+$00                                 ; $6EE1: $F8 $00
    ld c, $00                                     ; $6EE3: $0E $00
    ld hl, sp-$08                                 ; $6EE5: $F8 $F8
    ld c, $20                                     ; $6EE7: $0E $20
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    ld de, $0001                                  ; $6EEB: $11 $01 $00
    ld sp, hl                                     ; $6EEE: $F9
    ld de, $8021                                  ; $6EEF: $11 $21 $80
    pop af                                        ; $6EF2: $F1
    ld hl, sp+$0A                                 ; $6EF3: $F8 $0A
    nop                                           ; $6EF5: $00
    pop af                                        ; $6EF6: $F1
    nop                                           ; $6EF7: $00
    dec bc                                        ; $6EF8: $0B
    nop                                           ; $6EF9: $00
    nop                                           ; $6EFA: $00

jr_010_6EFB:
    db $FD                                        ; $6EFB: $FD
    rla                                           ; $6EFC: $17
    ld hl, $00F8                                  ; $6EFD: $21 $F8 $00
    dec d                                         ; $6F00: $15
    jr nz, jr_010_6EFB                            ; $6F01: $20 $F8

    ld hl, sp+$16                                 ; $6F03: $F8 $16
    jr nz, jr_010_6E87                            ; $6F05: $20 $80

    ld hl, sp-$08                                 ; $6F07: $F8 $F8
    ld a, [de]                                    ; $6F09: $1A
    nop                                           ; $6F0A: $00
    ld hl, sp+$00                                 ; $6F0B: $F8 $00
    dec de                                        ; $6F0D: $1B
    nop                                           ; $6F0E: $00
    pop af                                        ; $6F0F: $F1
    ld hl, sp+$18                                 ; $6F10: $F8 $18
    nop                                           ; $6F12: $00
    pop af                                        ; $6F13: $F1
    nop                                           ; $6F14: $00
    add hl, de                                    ; $6F15: $19
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    ld hl, sp+$20                                 ; $6F18: $F8 $20
    ld bc, $0000                                  ; $6F1A: $01 $00 $00
    ld hl, $8001                                  ; $6F1D: $21 $01 $80
    ldh a, [$F8]                                  ; $6F20: $F0 $F8
    jr jr_010_6F24                                ; $6F22: $18 $00

jr_010_6F24:
    ldh a, [rP1]                                  ; $6F24: $F0 $00
    add hl, de                                    ; $6F26: $19
    nop                                           ; $6F27: $00
    ld hl, sp-$08                                 ; $6F28: $F8 $F8
    inc e                                         ; $6F2A: $1C
    nop                                           ; $6F2B: $00
    ld hl, sp+$00                                 ; $6F2C: $F8 $00
    dec e                                         ; $6F2E: $1D
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    db $FC                                        ; $6F31: $FC
    ld [hl+], a                                   ; $6F32: $22
    ld bc, $F180                                  ; $6F33: $01 $80 $F1
    ld hl, sp+$18                                 ; $6F36: $F8 $18
    nop                                           ; $6F38: $00
    pop af                                        ; $6F39: $F1
    nop                                           ; $6F3A: $00
    add hl, de                                    ; $6F3B: $19
    nop                                           ; $6F3C: $00
    ld hl, sp-$08                                 ; $6F3D: $F8 $F8
    ld e, $00                                     ; $6F3F: $1E $00
    ld hl, sp+$00                                 ; $6F41: $F8 $00
    rra                                           ; $6F43: $1F
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    ld hl, sp+$23                                 ; $6F46: $F8 $23

jr_010_6F48:
    ld bc, $0000                                  ; $6F48: $01 $00 $00

jr_010_6F4B:
    inc h                                         ; $6F4B: $24
    ld bc, $F880                                  ; $6F4C: $01 $80 $F8
    nop                                           ; $6F4F: $00
    ld a, [de]                                    ; $6F50: $1A
    jr nz, jr_010_6F4B                            ; $6F51: $20 $F8

    ld hl, sp+$1B                                 ; $6F53: $F8 $1B
    jr nz, jr_010_6F48                            ; $6F55: $20 $F1

    nop                                           ; $6F57: $00
    jr jr_010_6F7A                                ; $6F58: $18 $20

    pop af                                        ; $6F5A: $F1
    ld hl, sp+$19                                 ; $6F5B: $F8 $19
    jr nz, jr_010_6F5F                            ; $6F5D: $20 $00

jr_010_6F5F:
    nop                                           ; $6F5F: $00
    jr nz, jr_010_6F83                            ; $6F60: $20 $21

    nop                                           ; $6F62: $00
    ld hl, sp+$21                                 ; $6F63: $F8 $21
    ld hl, $F080                                  ; $6F65: $21 $80 $F0

jr_010_6F68:
    nop                                           ; $6F68: $00
    jr jr_010_6F8B                                ; $6F69: $18 $20

    ldh a, [$F8]                                  ; $6F6B: $F0 $F8
    add hl, de                                    ; $6F6D: $19
    jr nz, jr_010_6F68                            ; $6F6E: $20 $F8

    nop                                           ; $6F70: $00
    inc e                                         ; $6F71: $1C
    jr nz, @-$06                                  ; $6F72: $20 $F8

    ld hl, sp+$1D                                 ; $6F74: $F8 $1D
    jr nz, jr_010_6F78                            ; $6F76: $20 $00

jr_010_6F78:
    db $FC                                        ; $6F78: $FC
    ld [hl+], a                                   ; $6F79: $22

jr_010_6F7A:
    ld hl, $F180                                  ; $6F7A: $21 $80 $F1

jr_010_6F7D:
    nop                                           ; $6F7D: $00
    jr jr_010_6FA0                                ; $6F7E: $18 $20

    pop af                                        ; $6F80: $F1
    ld hl, sp+$19                                 ; $6F81: $F8 $19

jr_010_6F83:
    jr nz, jr_010_6F7D                            ; $6F83: $20 $F8

    nop                                           ; $6F85: $00
    ld e, $20                                     ; $6F86: $1E $20
    ld hl, sp-$08                                 ; $6F88: $F8 $F8
    rra                                           ; $6F8A: $1F

jr_010_6F8B:
    jr nz, jr_010_6F8D                            ; $6F8B: $20 $00

jr_010_6F8D:
    nop                                           ; $6F8D: $00
    inc hl                                        ; $6F8E: $23
    ld hl, $F800                                  ; $6F8F: $21 $00 $F8
    inc h                                         ; $6F92: $24
    ld hl, $4D80                                  ; $6F93: $21 $80 $4D
    ld [$0008], sp                                ; $6F96: $08 $08 $00
    rst $38                                       ; $6F99: $FF
    call nz, $D96E                                ; $6F9A: $C4 $6E $D9
    ld l, [hl]                                    ; $6F9D: $6E
    ld a, [c]                                     ; $6F9E: $F2
    ld l, [hl]                                    ; $6F9F: $6E

jr_010_6FA0:
    reti                                          ; $6FA0: $D9


    ld l, [hl]                                    ; $6FA1: $6E
    ld b, [hl]                                    ; $6FA2: $46
    sub l                                         ; $6FA3: $95
    ld l, a                                       ; $6FA4: $6F
    ld c, l                                       ; $6FA5: $4D
    ld [$0008], sp                                ; $6FA6: $08 $08 $00
    ld bc, $6E81                                  ; $6FA9: $01 $81 $6E
    sub [hl]                                      ; $6FAC: $96
    ld l, [hl]                                    ; $6FAD: $6E
    xor a                                         ; $6FAE: $AF
    ld l, [hl]                                    ; $6FAF: $6E
    sub [hl]                                      ; $6FB0: $96
    ld l, [hl]                                    ; $6FB1: $6E
    ld b, [hl]                                    ; $6FB2: $46
    and l                                         ; $6FB3: $A5
    ld l, a                                       ; $6FB4: $6F
    ld c, l                                       ; $6FB5: $4D
    ld [$FF08], sp                                ; $6FB6: $08 $08 $FF
    nop                                           ; $6FB9: $00
    ld c, [hl]                                    ; $6FBA: $4E
    ld l, a                                       ; $6FBB: $6F
    ld h, a                                       ; $6FBC: $67
    ld l, a                                       ; $6FBD: $6F
    ld a, h                                       ; $6FBE: $7C
    ld l, a                                       ; $6FBF: $6F
    ld h, a                                       ; $6FC0: $67
    ld l, a                                       ; $6FC1: $6F
    ld b, [hl]                                    ; $6FC2: $46
    or l                                          ; $6FC3: $B5
    ld l, a                                       ; $6FC4: $6F
    ld c, l                                       ; $6FC5: $4D
    ld [$0108], sp                                ; $6FC6: $08 $08 $01
    nop                                           ; $6FC9: $00
    rlca                                          ; $6FCA: $07
    ld l, a                                       ; $6FCB: $6F
    jr nz, jr_010_703D                            ; $6FCC: $20 $6F

    dec [hl]                                      ; $6FCE: $35
    ld l, a                                       ; $6FCF: $6F
    jr nz, jr_010_7041                            ; $6FD0: $20 $6F

    ld b, [hl]                                    ; $6FD2: $46
    push bc                                       ; $6FD3: $C5
    ld l, a                                       ; $6FD4: $6F
    ld c, l                                       ; $6FD5: $4D
    ld [$0008], sp                                ; $6FD6: $08 $08 $00
    cp $C4                                        ; $6FD9: $FE $C4
    ld l, [hl]                                    ; $6FDB: $6E
    reti                                          ; $6FDC: $D9


    ld l, [hl]                                    ; $6FDD: $6E
    ld a, [c]                                     ; $6FDE: $F2
    ld l, [hl]                                    ; $6FDF: $6E
    reti                                          ; $6FE0: $D9


    ld l, [hl]                                    ; $6FE1: $6E
    ld b, [hl]                                    ; $6FE2: $46
    push de                                       ; $6FE3: $D5
    ld l, a                                       ; $6FE4: $6F
    ld c, l                                       ; $6FE5: $4D
    ld [$0008], sp                                ; $6FE6: $08 $08 $00
    ld [bc], a                                    ; $6FE9: $02
    add c                                         ; $6FEA: $81
    ld l, [hl]                                    ; $6FEB: $6E
    sub [hl]                                      ; $6FEC: $96
    ld l, [hl]                                    ; $6FED: $6E
    xor a                                         ; $6FEE: $AF
    ld l, [hl]                                    ; $6FEF: $6E
    sub [hl]                                      ; $6FF0: $96
    ld l, [hl]                                    ; $6FF1: $6E
    ld b, [hl]                                    ; $6FF2: $46
    push hl                                       ; $6FF3: $E5
    ld l, a                                       ; $6FF4: $6F
    ld c, l                                       ; $6FF5: $4D
    ld [$FE08], sp                                ; $6FF6: $08 $08 $FE
    nop                                           ; $6FF9: $00
    ld c, [hl]                                    ; $6FFA: $4E
    ld l, a                                       ; $6FFB: $6F
    ld h, a                                       ; $6FFC: $67
    ld l, a                                       ; $6FFD: $6F
    ld a, h                                       ; $6FFE: $7C
    ld l, a                                       ; $6FFF: $6F
    ld h, a                                       ; $7000: $67
    ld l, a                                       ; $7001: $6F
    ld b, [hl]                                    ; $7002: $46
    push af                                       ; $7003: $F5
    ld l, a                                       ; $7004: $6F
    ld c, l                                       ; $7005: $4D
    ld [$0208], sp                                ; $7006: $08 $08 $02
    nop                                           ; $7009: $00
    rlca                                          ; $700A: $07
    ld l, a                                       ; $700B: $6F
    jr nz, jr_010_707D                            ; $700C: $20 $6F

    dec [hl]                                      ; $700E: $35
    ld l, a                                       ; $700F: $6F
    jr nz, jr_010_7081                            ; $7010: $20 $6F

    ld b, [hl]                                    ; $7012: $46
    dec b                                         ; $7013: $05
    ld [hl], b                                    ; $7014: $70
    ld c, h                                       ; $7015: $4C
    rst $38                                       ; $7016: $FF
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    reti                                          ; $7019: $D9


    ld l, [hl]                                    ; $701A: $6E
    nop                                           ; $701B: $00
    ld b, [hl]                                    ; $701C: $46
    dec d                                         ; $701D: $15
    ld [hl], b                                    ; $701E: $70
    ld c, h                                       ; $701F: $4C
    rst $38                                       ; $7020: $FF
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    sub [hl]                                      ; $7023: $96
    ld l, [hl]                                    ; $7024: $6E
    nop                                           ; $7025: $00
    ld b, [hl]                                    ; $7026: $46
    rra                                           ; $7027: $1F
    ld [hl], b                                    ; $7028: $70
    ld c, h                                       ; $7029: $4C
    rst $38                                       ; $702A: $FF
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    ld h, a                                       ; $702D: $67
    ld l, a                                       ; $702E: $6F
    nop                                           ; $702F: $00
    ld b, [hl]                                    ; $7030: $46
    add hl, hl                                    ; $7031: $29
    ld [hl], b                                    ; $7032: $70
    ld c, h                                       ; $7033: $4C
    rst $38                                       ; $7034: $FF
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    jr nz, @+$71                                  ; $7037: $20 $6F

    nop                                           ; $7039: $00
    ld b, [hl]                                    ; $703A: $46
    inc sp                                        ; $703B: $33
    ld [hl], b                                    ; $703C: $70

jr_010_703D:
    ld c, h                                       ; $703D: $4C
    rst $38                                       ; $703E: $FF
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00

jr_010_7041:
    ld l, h                                       ; $7041: $6C
    ld l, [hl]                                    ; $7042: $6E
    nop                                           ; $7043: $00
    ld b, [hl]                                    ; $7044: $46
    dec a                                         ; $7045: $3D
    ld [hl], b                                    ; $7046: $70
    ld c, h                                       ; $7047: $4C
    rst $38                                       ; $7048: $FF
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    ld d, a                                       ; $704B: $57
    ld l, [hl]                                    ; $704C: $6E
    nop                                           ; $704D: $00
    ld b, [hl]                                    ; $704E: $46
    ld b, a                                       ; $704F: $47
    ld [hl], b                                    ; $7050: $70
    ld c, h                                       ; $7051: $4C
    rst $38                                       ; $7052: $FF
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    ld a, $6E                                     ; $7055: $3E $6E
    nop                                           ; $7057: $00
    ld b, [hl]                                    ; $7058: $46
    ld d, c                                       ; $7059: $51
    ld [hl], b                                    ; $705A: $70
    ld c, h                                       ; $705B: $4C
    rst $38                                       ; $705C: $FF
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    dec h                                         ; $705F: $25
    ld l, [hl]                                    ; $7060: $6E
    nop                                           ; $7061: $00
    ld b, [hl]                                    ; $7062: $46
    ld e, e                                       ; $7063: $5B
    ld [hl], b                                    ; $7064: $70
    ld c, h                                       ; $7065: $4C
    ld bc, $0000                                  ; $7066: $01 $00 $00
    reti                                          ; $7069: $D9


    ld l, [hl]                                    ; $706A: $6E
    nop                                           ; $706B: $00
    ld c, b                                       ; $706C: $48
    ld b, [hl]                                    ; $706D: $46
    ld h, l                                       ; $706E: $65
    ld [hl], b                                    ; $706F: $70
    ld c, e                                       ; $7070: $4B
    inc bc                                        ; $7071: $03
    stop                                          ; $7072: $10 $00
    nop                                           ; $7074: $00
    add a                                         ; $7075: $87
    ld [hl], b                                    ; $7076: $70
    db $10                                        ; $7077: $10
    inc bc                                        ; $7078: $03
    nop                                           ; $7079: $00
    adc [hl]                                      ; $707A: $8E
    ld [hl], b                                    ; $707B: $70
    db $10                                        ; $707C: $10

jr_010_707D:
    ld [bc], a                                    ; $707D: $02
    nop                                           ; $707E: $00
    sbc h                                         ; $707F: $9C
    ld [hl], b                                    ; $7080: $70

jr_010_7081:
    db $10                                        ; $7081: $10
    ld bc, $9500                                  ; $7082: $01 $00 $95
    ld [hl], b                                    ; $7085: $70
    rst $38                                       ; $7086: $FF
    inc d                                         ; $7087: $14
    db $10                                        ; $7088: $10
    dec d                                         ; $7089: $15
    ld [hl], b                                    ; $708A: $70
    ld h, d                                       ; $708B: $62
    ld bc, $1412                                  ; $708C: $01 $12 $14
    db $10                                        ; $708F: $10
    rra                                           ; $7090: $1F
    ld [hl], b                                    ; $7091: $70
    ld h, d                                       ; $7092: $62
    ld bc, $1412                                  ; $7093: $01 $12 $14
    db $10                                        ; $7096: $10
    add hl, hl                                    ; $7097: $29
    ld [hl], b                                    ; $7098: $70
    ld h, d                                       ; $7099: $62
    ld bc, $1412                                  ; $709A: $01 $12 $14
    db $10                                        ; $709D: $10
    inc sp                                        ; $709E: $33
    ld [hl], b                                    ; $709F: $70
    ld h, d                                       ; $70A0: $62
    ld bc, $F012                                  ; $70A1: $01 $12 $F0
    ld hl, sp+$00                                 ; $70A4: $F8 $00
    nop                                           ; $70A6: $00
    ldh a, [rP1]                                  ; $70A7: $F0 $00
    ld bc, $F800                                  ; $70A9: $01 $00 $F8
    ld hl, sp+$04                                 ; $70AC: $F8 $04
    nop                                           ; $70AE: $00
    ld hl, sp+$00                                 ; $70AF: $F8 $00

jr_010_70B1:
    dec b                                         ; $70B1: $05
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    ld hl, sp+$08                                 ; $70B4: $F8 $08
    ld b, $00                                     ; $70B6: $06 $00
    nop                                           ; $70B8: $00
    add hl, bc                                    ; $70B9: $09
    ld b, $80                                     ; $70BA: $06 $80
    ldh a, [rP1]                                  ; $70BC: $F0 $00
    nop                                           ; $70BE: $00
    jr nz, jr_010_70B1                            ; $70BF: $20 $F0

jr_010_70C1:
    ld hl, sp+$01                                 ; $70C1: $F8 $01
    jr nz, @-$06                                  ; $70C3: $20 $F8

    nop                                           ; $70C5: $00
    inc b                                         ; $70C6: $04
    jr nz, jr_010_70C1                            ; $70C7: $20 $F8

    ld hl, sp+$05                                 ; $70C9: $F8 $05
    jr nz, jr_010_70CD                            ; $70CB: $20 $00

jr_010_70CD:
    nop                                           ; $70CD: $00
    ld [$0026], sp                                ; $70CE: $08 $26 $00
    ld hl, sp+$09                                 ; $70D1: $F8 $09
    ld h, $80                                     ; $70D3: $26 $80
    ldh a, [$F8]                                  ; $70D5: $F0 $F8
    dec c                                         ; $70D7: $0D
    nop                                           ; $70D8: $00
    ldh a, [rP1]                                  ; $70D9: $F0 $00
    ld c, $00                                     ; $70DB: $0E $00
    ld hl, sp-$08                                 ; $70DD: $F8 $F8

jr_010_70DF:
    stop                                          ; $70DF: $10 $00
    ld hl, sp+$00                                 ; $70E1: $F8 $00
    ld de, $0000                                  ; $70E3: $11 $00 $00
    cp $13                                        ; $70E6: $FE $13
    ld b, $80                                     ; $70E8: $06 $80
    ldh a, [rP1]                                  ; $70EA: $F0 $00
    dec c                                         ; $70EC: $0D
    jr nz, jr_010_70DF                            ; $70ED: $20 $F0

jr_010_70EF:
    ld hl, sp+$0E                                 ; $70EF: $F8 $0E
    jr nz, @-$06                                  ; $70F1: $20 $F8

    nop                                           ; $70F3: $00
    db $10                                        ; $70F4: $10
    jr nz, jr_010_70EF                            ; $70F5: $20 $F8

    ld hl, sp+$11                                 ; $70F7: $F8 $11
    jr nz, jr_010_70FB                            ; $70F9: $20 $00

jr_010_70FB:
    ld a, [$2613]                                 ; $70FB: $FA $13 $26
    add b                                         ; $70FE: $80
    pop af                                        ; $70FF: $F1
    ld hl, sp+$02                                 ; $7100: $F8 $02
    nop                                           ; $7102: $00
    pop af                                        ; $7103: $F1
    nop                                           ; $7104: $00
    inc bc                                        ; $7105: $03
    nop                                           ; $7106: $00
    ld hl, sp-$08                                 ; $7107: $F8 $F8
    inc d                                         ; $7109: $14
    nop                                           ; $710A: $00
    ld hl, sp+$00                                 ; $710B: $F8 $00
    dec d                                         ; $710D: $15
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    db $FC                                        ; $7110: $FC
    ld d, $06                                     ; $7111: $16 $06
    add b                                         ; $7113: $80
    ld hl, sp-$08                                 ; $7114: $F8 $F8
    ld b, $00                                     ; $7116: $06 $00
    ld hl, sp+$00                                 ; $7118: $F8 $00
    rlca                                          ; $711A: $07
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    ld a, [bc]                                    ; $711E: $0A
    ld b, $00                                     ; $711F: $06 $00
    ld sp, hl                                     ; $7121: $F9
    ld a, [bc]                                    ; $7122: $0A
    ld h, $F0                                     ; $7123: $26 $F0
    ld hl, sp+$02                                 ; $7125: $F8 $02
    nop                                           ; $7127: $00
    ldh a, [rP1]                                  ; $7128: $F0 $00
    inc bc                                        ; $712A: $03
    nop                                           ; $712B: $00
    add b                                         ; $712C: $80
    pop af                                        ; $712D: $F1
    ld hl, sp+$02                                 ; $712E: $F8 $02
    nop                                           ; $7130: $00
    pop af                                        ; $7131: $F1
    nop                                           ; $7132: $00
    inc bc                                        ; $7133: $03
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    db $FC                                        ; $7136: $FC
    ld d, $26                                     ; $7137: $16 $26
    ld hl, sp-$08                                 ; $7139: $F8 $F8
    ld l, $00                                     ; $713B: $2E $00
    ld hl, sp+$00                                 ; $713D: $F8 $00
    cpl                                           ; $713F: $2F
    nop                                           ; $7140: $00
    add b                                         ; $7141: $80
    pop af                                        ; $7142: $F1
    ld hl, sp+$0B                                 ; $7143: $F8 $0B
    nop                                           ; $7145: $00
    pop af                                        ; $7146: $F1
    nop                                           ; $7147: $00
    inc c                                         ; $7148: $0C
    nop                                           ; $7149: $00
    ld hl, sp-$08                                 ; $714A: $F8 $F8
    add hl, de                                    ; $714C: $19
    nop                                           ; $714D: $00
    ld hl, sp+$00                                 ; $714E: $F8 $00
    ld a, [de]                                    ; $7150: $1A
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    db $FC                                        ; $7153: $FC
    dec de                                        ; $7154: $1B
    ld b, $80                                     ; $7155: $06 $80
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    ld [de], a                                    ; $7159: $12
    ld b, $00                                     ; $715A: $06 $00
    ld sp, hl                                     ; $715C: $F9
    ld [de], a                                    ; $715D: $12
    ld h, $F0                                     ; $715E: $26 $F0
    ld hl, sp+$0B                                 ; $7160: $F8 $0B
    nop                                           ; $7162: $00
    ldh a, [rP1]                                  ; $7163: $F0 $00
    inc c                                         ; $7165: $0C
    nop                                           ; $7166: $00
    ld hl, sp+$00                                 ; $7167: $F8 $00
    dec l                                         ; $7169: $2D
    nop                                           ; $716A: $00
    ld hl, sp-$08                                 ; $716B: $F8 $F8
    rrca                                          ; $716D: $0F
    nop                                           ; $716E: $00
    add b                                         ; $716F: $80
    ld hl, sp-$08                                 ; $7170: $F8 $F8
    ld e, $00                                     ; $7172: $1E $00
    ld hl, sp+$00                                 ; $7174: $F8 $00
    rra                                           ; $7176: $1F
    nop                                           ; $7177: $00
    ldh a, [$F8]                                  ; $7178: $F0 $F8
    rla                                           ; $717A: $17
    nop                                           ; $717B: $00
    ldh a, [rP1]                                  ; $717C: $F0 $00
    jr jr_010_7180                                ; $717E: $18 $00

jr_010_7180:
    nop                                           ; $7180: $00
    db $FC                                        ; $7181: $FC
    dec de                                        ; $7182: $1B
    ld h, $80                                     ; $7183: $26 $80
    pop af                                        ; $7185: $F1
    ld hl, sp+$20                                 ; $7186: $F8 $20
    nop                                           ; $7188: $00
    pop af                                        ; $7189: $F1
    nop                                           ; $718A: $00
    ld hl, $F800                                  ; $718B: $21 $00 $F8
    ld hl, sp+$22                                 ; $718E: $F8 $22
    nop                                           ; $7190: $00
    ld hl, sp+$00                                 ; $7191: $F8 $00
    inc hl                                        ; $7193: $23
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    ld hl, sp+$28                                 ; $7196: $F8 $28
    ld b, $00                                     ; $7198: $06 $00
    nop                                           ; $719A: $00
    add hl, hl                                    ; $719B: $29
    ld b, $80                                     ; $719C: $06 $80
    ld hl, sp-$08                                 ; $719E: $F8 $F8
    inc h                                         ; $71A0: $24
    nop                                           ; $71A1: $00
    ld hl, sp+$00                                 ; $71A2: $F8 $00
    dec h                                         ; $71A4: $25
    nop                                           ; $71A5: $00
    nop                                           ; $71A6: $00
    db $FC                                        ; $71A7: $FC
    ld a, [hl+]                                   ; $71A8: $2A
    ld b, $F0                                     ; $71A9: $06 $F0
    ld hl, sp+$20                                 ; $71AB: $F8 $20
    nop                                           ; $71AD: $00
    ldh a, [rP1]                                  ; $71AE: $F0 $00
    ld hl, $8000                                  ; $71B0: $21 $00 $80
    pop af                                        ; $71B3: $F1
    ld hl, sp+$20                                 ; $71B4: $F8 $20
    nop                                           ; $71B6: $00
    pop af                                        ; $71B7: $F1
    nop                                           ; $71B8: $00
    ld hl, $F800                                  ; $71B9: $21 $00 $F8
    ld hl, sp+$26                                 ; $71BC: $F8 $26
    nop                                           ; $71BE: $00
    ld hl, sp+$00                                 ; $71BF: $F8 $00
    daa                                           ; $71C1: $27
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    ld hl, sp+$2B                                 ; $71C4: $F8 $2B
    ld b, $00                                     ; $71C6: $06 $00
    nop                                           ; $71C8: $00
    inc l                                         ; $71C9: $2C
    ld b, $80                                     ; $71CA: $06 $80
    pop af                                        ; $71CC: $F1

jr_010_71CD:
    nop                                           ; $71CD: $00
    jr nz, jr_010_71F0                            ; $71CE: $20 $20

    pop af                                        ; $71D0: $F1

jr_010_71D1:
    ld hl, sp+$21                                 ; $71D1: $F8 $21
    jr nz, jr_010_71CD                            ; $71D3: $20 $F8

    nop                                           ; $71D5: $00
    ld [hl+], a                                   ; $71D6: $22
    jr nz, jr_010_71D1                            ; $71D7: $20 $F8

    ld hl, sp+$23                                 ; $71D9: $F8 $23
    jr nz, jr_010_71DD                            ; $71DB: $20 $00

jr_010_71DD:
    nop                                           ; $71DD: $00
    jr z, jr_010_7206                             ; $71DE: $28 $26

    nop                                           ; $71E0: $00
    ld hl, sp+$29                                 ; $71E1: $F8 $29
    ld h, $80                                     ; $71E3: $26 $80
    ld hl, sp+$00                                 ; $71E5: $F8 $00
    inc h                                         ; $71E7: $24
    jr nz, @-$06                                  ; $71E8: $20 $F8

    ld hl, sp+$25                                 ; $71EA: $F8 $25
    jr nz, jr_010_71EE                            ; $71EC: $20 $00

jr_010_71EE:
    db $FC                                        ; $71EE: $FC
    ld a, [hl+]                                   ; $71EF: $2A

jr_010_71F0:
    ld h, $F0                                     ; $71F0: $26 $F0
    nop                                           ; $71F2: $00
    jr nz, @+$22                                  ; $71F3: $20 $20

    ldh a, [$F8]                                  ; $71F5: $F0 $F8
    ld hl, $8020                                  ; $71F7: $21 $20 $80
    pop af                                        ; $71FA: $F1

jr_010_71FB:
    nop                                           ; $71FB: $00
    jr nz, jr_010_721E                            ; $71FC: $20 $20

    pop af                                        ; $71FE: $F1
    ld hl, sp+$21                                 ; $71FF: $F8 $21
    jr nz, jr_010_71FB                            ; $7201: $20 $F8

    nop                                           ; $7203: $00
    ld h, $20                                     ; $7204: $26 $20

jr_010_7206:
    ld hl, sp-$08                                 ; $7206: $F8 $F8
    daa                                           ; $7208: $27
    jr nz, jr_010_720B                            ; $7209: $20 $00

jr_010_720B:
    nop                                           ; $720B: $00
    dec hl                                        ; $720C: $2B
    ld h, $00                                     ; $720D: $26 $00
    ld hl, sp+$2C                                 ; $720F: $F8 $2C
    ld h, $80                                     ; $7211: $26 $80
    ld c, l                                       ; $7213: $4D
    ld [$0008], sp                                ; $7214: $08 $08 $00
    rst $38                                       ; $7217: $FF
    ld b, d                                       ; $7218: $42
    ld [hl], c                                    ; $7219: $71
    ld d, a                                       ; $721A: $57
    ld [hl], c                                    ; $721B: $71
    ld [hl], b                                    ; $721C: $70
    ld [hl], c                                    ; $721D: $71

jr_010_721E:
    ld d, a                                       ; $721E: $57
    ld [hl], c                                    ; $721F: $71
    ld b, [hl]                                    ; $7220: $46
    inc de                                        ; $7221: $13
    ld [hl], d                                    ; $7222: $72
    ld c, l                                       ; $7223: $4D
    ld [$0008], sp                                ; $7224: $08 $08 $00
    ld bc, $70FF                                  ; $7227: $01 $FF $70
    inc d                                         ; $722A: $14
    ld [hl], c                                    ; $722B: $71
    dec l                                         ; $722C: $2D
    ld [hl], c                                    ; $722D: $71
    inc d                                         ; $722E: $14
    ld [hl], c                                    ; $722F: $71
    ld b, [hl]                                    ; $7230: $46
    inc hl                                        ; $7231: $23
    ld [hl], d                                    ; $7232: $72
    ld c, l                                       ; $7233: $4D
    ld [$FF08], sp                                ; $7234: $08 $08 $FF
    nop                                           ; $7237: $00
    call z, $E571                                 ; $7238: $CC $71 $E5
    ld [hl], c                                    ; $723B: $71
    ld a, [$E571]                                 ; $723C: $FA $71 $E5
    ld [hl], c                                    ; $723F: $71
    ld b, [hl]                                    ; $7240: $46
    inc sp                                        ; $7241: $33
    ld [hl], d                                    ; $7242: $72
    ld c, l                                       ; $7243: $4D
    ld [$0108], sp                                ; $7244: $08 $08 $01
    nop                                           ; $7247: $00
    add l                                         ; $7248: $85
    ld [hl], c                                    ; $7249: $71
    sbc [hl]                                      ; $724A: $9E
    ld [hl], c                                    ; $724B: $71
    or e                                          ; $724C: $B3
    ld [hl], c                                    ; $724D: $71
    sbc [hl]                                      ; $724E: $9E
    ld [hl], c                                    ; $724F: $71
    ld b, [hl]                                    ; $7250: $46
    ld b, e                                       ; $7251: $43
    ld [hl], d                                    ; $7252: $72
    ld c, l                                       ; $7253: $4D
    ld [$0008], sp                                ; $7254: $08 $08 $00
    cp $42                                        ; $7257: $FE $42
    ld [hl], c                                    ; $7259: $71
    ld d, a                                       ; $725A: $57
    ld [hl], c                                    ; $725B: $71
    ld [hl], b                                    ; $725C: $70
    ld [hl], c                                    ; $725D: $71
    ld d, a                                       ; $725E: $57
    ld [hl], c                                    ; $725F: $71
    ld b, [hl]                                    ; $7260: $46
    ld d, e                                       ; $7261: $53
    ld [hl], d                                    ; $7262: $72
    ld c, l                                       ; $7263: $4D
    ld [$0008], sp                                ; $7264: $08 $08 $00
    ld [bc], a                                    ; $7267: $02
    rst $38                                       ; $7268: $FF
    ld [hl], b                                    ; $7269: $70
    inc d                                         ; $726A: $14
    ld [hl], c                                    ; $726B: $71
    dec l                                         ; $726C: $2D
    ld [hl], c                                    ; $726D: $71
    inc d                                         ; $726E: $14
    ld [hl], c                                    ; $726F: $71
    ld b, [hl]                                    ; $7270: $46
    ld h, e                                       ; $7271: $63
    ld [hl], d                                    ; $7272: $72
    ld c, l                                       ; $7273: $4D
    ld [$FE08], sp                                ; $7274: $08 $08 $FE
    nop                                           ; $7277: $00
    call z, $E571                                 ; $7278: $CC $71 $E5
    ld [hl], c                                    ; $727B: $71
    ld a, [$E571]                                 ; $727C: $FA $71 $E5
    ld [hl], c                                    ; $727F: $71
    ld b, [hl]                                    ; $7280: $46
    ld [hl], e                                    ; $7281: $73
    ld [hl], d                                    ; $7282: $72
    ld c, l                                       ; $7283: $4D
    ld [$0208], sp                                ; $7284: $08 $08 $02
    nop                                           ; $7287: $00
    add l                                         ; $7288: $85
    ld [hl], c                                    ; $7289: $71
    sbc [hl]                                      ; $728A: $9E
    ld [hl], c                                    ; $728B: $71
    or e                                          ; $728C: $B3
    ld [hl], c                                    ; $728D: $71
    sbc [hl]                                      ; $728E: $9E
    ld [hl], c                                    ; $728F: $71
    ld b, [hl]                                    ; $7290: $46
    add e                                         ; $7291: $83
    ld [hl], d                                    ; $7292: $72
    ld c, h                                       ; $7293: $4C
    rst $38                                       ; $7294: $FF
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    ld d, a                                       ; $7297: $57
    ld [hl], c                                    ; $7298: $71
    nop                                           ; $7299: $00
    ld b, [hl]                                    ; $729A: $46
    sub e                                         ; $729B: $93
    ld [hl], d                                    ; $729C: $72
    ld c, h                                       ; $729D: $4C
    rst $38                                       ; $729E: $FF
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    inc d                                         ; $72A1: $14
    ld [hl], c                                    ; $72A2: $71
    nop                                           ; $72A3: $00
    ld b, [hl]                                    ; $72A4: $46
    sbc l                                         ; $72A5: $9D
    ld [hl], d                                    ; $72A6: $72
    ld c, h                                       ; $72A7: $4C
    rst $38                                       ; $72A8: $FF
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    push hl                                       ; $72AB: $E5
    ld [hl], c                                    ; $72AC: $71
    nop                                           ; $72AD: $00
    ld b, [hl]                                    ; $72AE: $46
    and a                                         ; $72AF: $A7
    ld [hl], d                                    ; $72B0: $72
    ld c, h                                       ; $72B1: $4C
    rst $38                                       ; $72B2: $FF
    nop                                           ; $72B3: $00
    nop                                           ; $72B4: $00
    sbc [hl]                                      ; $72B5: $9E
    ld [hl], c                                    ; $72B6: $71
    nop                                           ; $72B7: $00
    ld b, [hl]                                    ; $72B8: $46
    or c                                          ; $72B9: $B1
    ld [hl], d                                    ; $72BA: $72
    ld c, h                                       ; $72BB: $4C
    rst $38                                       ; $72BC: $FF
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    ld [$0070], a                                 ; $72BF: $EA $70 $00
    ld b, [hl]                                    ; $72C2: $46
    cp e                                          ; $72C3: $BB
    ld [hl], d                                    ; $72C4: $72
    ld c, h                                       ; $72C5: $4C
    rst $38                                       ; $72C6: $FF
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    push de                                       ; $72C9: $D5
    ld [hl], b                                    ; $72CA: $70
    nop                                           ; $72CB: $00
    ld b, [hl]                                    ; $72CC: $46
    push bc                                       ; $72CD: $C5
    ld [hl], d                                    ; $72CE: $72
    ld c, h                                       ; $72CF: $4C
    rst $38                                       ; $72D0: $FF
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    cp h                                          ; $72D3: $BC
    ld [hl], b                                    ; $72D4: $70
    nop                                           ; $72D5: $00
    ld b, [hl]                                    ; $72D6: $46
    rst $08                                       ; $72D7: $CF
    ld [hl], d                                    ; $72D8: $72
    ld c, h                                       ; $72D9: $4C
    rst $38                                       ; $72DA: $FF
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    and e                                         ; $72DD: $A3
    ld [hl], b                                    ; $72DE: $70
    nop                                           ; $72DF: $00
    ld b, [hl]                                    ; $72E0: $46
    reti                                          ; $72E1: $D9


    ld [hl], d                                    ; $72E2: $72
    ld c, e                                       ; $72E3: $4B
    inc bc                                        ; $72E4: $03
    stop                                          ; $72E5: $10 $00
    nop                                           ; $72E7: $00
    ld a, [$1072]                                 ; $72E8: $FA $72 $10
    inc bc                                        ; $72EB: $03
    nop                                           ; $72EC: $00
    ld bc, $1073                                  ; $72ED: $01 $73 $10
    ld [bc], a                                    ; $72F0: $02
    nop                                           ; $72F1: $00
    rrca                                          ; $72F2: $0F
    ld [hl], e                                    ; $72F3: $73
    db $10                                        ; $72F4: $10
    ld bc, $0800                                  ; $72F5: $01 $00 $08
    ld [hl], e                                    ; $72F8: $73
    rst $38                                       ; $72F9: $FF
    inc d                                         ; $72FA: $14
    db $10                                        ; $72FB: $10
    sub e                                         ; $72FC: $93
    ld [hl], d                                    ; $72FD: $72
    ld h, d                                       ; $72FE: $62
    ld bc, $1412                                  ; $72FF: $01 $12 $14
    db $10                                        ; $7302: $10
    sbc l                                         ; $7303: $9D
    ld [hl], d                                    ; $7304: $72
    ld h, d                                       ; $7305: $62
    ld bc, $1412                                  ; $7306: $01 $12 $14
    db $10                                        ; $7309: $10
    and a                                         ; $730A: $A7
    ld [hl], d                                    ; $730B: $72
    ld h, d                                       ; $730C: $62
    ld bc, $1412                                  ; $730D: $01 $12 $14
    db $10                                        ; $7310: $10
    or c                                          ; $7311: $B1
    ld [hl], d                                    ; $7312: $72
    ld h, d                                       ; $7313: $62
    ld bc, $F012                                  ; $7314: $01 $12 $F0
    ld hl, sp+$00                                 ; $7317: $F8 $00
    inc bc                                        ; $7319: $03
    ldh a, [rP1]                                  ; $731A: $F0 $00
    ld bc, $F803                                  ; $731C: $01 $03 $F8
    ld hl, sp+$04                                 ; $731F: $F8 $04
    inc bc                                        ; $7321: $03
    ld hl, sp+$00                                 ; $7322: $F8 $00
    dec b                                         ; $7324: $05
    inc bc                                        ; $7325: $03
    nop                                           ; $7326: $00
    ld hl, sp+$08                                 ; $7327: $F8 $08
    dec b                                         ; $7329: $05
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    add hl, bc                                    ; $732C: $09
    dec b                                         ; $732D: $05
    add b                                         ; $732E: $80
    ldh a, [rP1]                                  ; $732F: $F0 $00
    nop                                           ; $7331: $00
    inc hl                                        ; $7332: $23
    ldh a, [$F8]                                  ; $7333: $F0 $F8
    ld bc, $F823                                  ; $7335: $01 $23 $F8
    nop                                           ; $7338: $00
    inc b                                         ; $7339: $04
    inc hl                                        ; $733A: $23
    ld hl, sp-$08                                 ; $733B: $F8 $F8
    dec b                                         ; $733D: $05
    inc hl                                        ; $733E: $23
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    ld [$0025], sp                                ; $7341: $08 $25 $00
    ld hl, sp+$09                                 ; $7344: $F8 $09
    dec h                                         ; $7346: $25
    add b                                         ; $7347: $80
    ldh a, [$F8]                                  ; $7348: $F0 $F8
    dec c                                         ; $734A: $0D
    inc bc                                        ; $734B: $03
    ldh a, [rP1]                                  ; $734C: $F0 $00
    ld c, $03                                     ; $734E: $0E $03
    nop                                           ; $7350: $00
    cp $12                                        ; $7351: $FE $12
    dec b                                         ; $7353: $05
    ld hl, sp+$00                                 ; $7354: $F8 $00
    db $10                                        ; $7356: $10
    inc bc                                        ; $7357: $03
    ld hl, sp-$08                                 ; $7358: $F8 $F8
    inc h                                         ; $735A: $24
    inc bc                                        ; $735B: $03
    add b                                         ; $735C: $80
    ldh a, [rP1]                                  ; $735D: $F0 $00
    dec c                                         ; $735F: $0D
    inc hl                                        ; $7360: $23
    ldh a, [$F8]                                  ; $7361: $F0 $F8
    ld c, $23                                     ; $7363: $0E $23
    nop                                           ; $7365: $00
    ld a, [$2512]                                 ; $7366: $FA $12 $25
    ld hl, sp-$08                                 ; $7369: $F8 $F8
    db $10                                        ; $736B: $10
    inc hl                                        ; $736C: $23
    ld hl, sp+$00                                 ; $736D: $F8 $00
    inc h                                         ; $736F: $24
    inc hl                                        ; $7370: $23
    add b                                         ; $7371: $80

    db $F1, $F8, $02, $03, $F1, $00, $03, $03, $F8, $F8, $13, $03, $F8, $00, $14, $03
    db $00, $FC, $15, $05, $80, $F0, $F8, $02, $03, $F0, $00, $03, $03, $F8, $F8, $06
    db $03, $F8, $00, $07, $03, $00, $F9, $0A, $25, $00, $00, $0A, $05, $80, $F1, $F8
    db $02, $03, $F1, $00, $03, $03, $00, $FC, $15, $25, $F8, $F8, $26, $03, $F8, $00
    db $27, $03, $80

    pop af                                        ; $73B5: $F1
    ld hl, sp+$0B                                 ; $73B6: $F8 $0B
    inc bc                                        ; $73B8: $03
    pop af                                        ; $73B9: $F1
    nop                                           ; $73BA: $00
    inc c                                         ; $73BB: $0C
    inc bc                                        ; $73BC: $03
    ld hl, sp-$08                                 ; $73BD: $F8 $F8
    ld d, $03                                     ; $73BF: $16 $03
    ld hl, sp+$00                                 ; $73C1: $F8 $00
    rla                                           ; $73C3: $17
    inc bc                                        ; $73C4: $03
    nop                                           ; $73C5: $00
    ei                                            ; $73C6: $FB
    jr jr_010_73CE                                ; $73C7: $18 $05

    add b                                         ; $73C9: $80
    ldh a, [$F8]                                  ; $73CA: $F0 $F8
    dec bc                                        ; $73CC: $0B
    inc bc                                        ; $73CD: $03

jr_010_73CE:
    ldh a, [rP1]                                  ; $73CE: $F0 $00
    inc c                                         ; $73D0: $0C
    inc bc                                        ; $73D1: $03
    ld hl, sp-$08                                 ; $73D2: $F8 $F8
    rrca                                          ; $73D4: $0F
    inc hl                                        ; $73D5: $23
    ld hl, sp+$00                                 ; $73D6: $F8 $00
    rrca                                          ; $73D8: $0F
    inc bc                                        ; $73D9: $03
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    ld de, $0005                                  ; $73DC: $11 $05 $00
    ld sp, hl                                     ; $73DF: $F9
    ld de, $8025                                  ; $73E0: $11 $25 $80
    pop af                                        ; $73E3: $F1
    ld hl, sp+$0B                                 ; $73E4: $F8 $0B
    inc bc                                        ; $73E6: $03
    pop af                                        ; $73E7: $F1
    nop                                           ; $73E8: $00
    inc c                                         ; $73E9: $0C
    inc bc                                        ; $73EA: $03
    ld hl, sp+$00                                 ; $73EB: $F8 $00
    ld d, $23                                     ; $73ED: $16 $23
    ld hl, sp-$08                                 ; $73EF: $F8 $F8
    rla                                           ; $73F1: $17
    inc hl                                        ; $73F2: $23
    nop                                           ; $73F3: $00
    db $FD                                        ; $73F4: $FD
    jr @+$27                                      ; $73F5: $18 $25

    add b                                         ; $73F7: $80
    pop af                                        ; $73F8: $F1
    ld hl, sp+$19                                 ; $73F9: $F8 $19
    inc bc                                        ; $73FB: $03
    pop af                                        ; $73FC: $F1
    nop                                           ; $73FD: $00

jr_010_73FE:
    ld a, [de]                                    ; $73FE: $1A
    inc bc                                        ; $73FF: $03
    ld hl, sp-$08                                 ; $7400: $F8 $F8
    dec de                                        ; $7402: $1B
    inc bc                                        ; $7403: $03
    ld hl, sp+$00                                 ; $7404: $F8 $00
    inc e                                         ; $7406: $1C
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    jr nz, @+$07                                  ; $740A: $20 $05

    nop                                           ; $740C: $00
    ld hl, sp+$25                                 ; $740D: $F8 $25
    dec b                                         ; $740F: $05
    add b                                         ; $7410: $80

    db $F0, $F8, $19, $03, $F0, $00, $1A, $03, $F8, $FC, $1D, $05, $00, $FC, $21, $05
    db $80

    pop af                                        ; $7422: $F1
    ld hl, sp+$19                                 ; $7423: $F8 $19
    inc bc                                        ; $7425: $03
    pop af                                        ; $7426: $F1
    nop                                           ; $7427: $00
    ld a, [de]                                    ; $7428: $1A
    inc bc                                        ; $7429: $03
    nop                                           ; $742A: $00
    ld hl, sp+$22                                 ; $742B: $F8 $22
    dec b                                         ; $742D: $05
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    inc hl                                        ; $7430: $23
    dec b                                         ; $7431: $05
    ld hl, sp-$08                                 ; $7432: $F8 $F8
    ld e, $03                                     ; $7434: $1E $03
    ld hl, sp+$00                                 ; $7436: $F8 $00
    rra                                           ; $7438: $1F
    nop                                           ; $7439: $00
    add b                                         ; $743A: $80

    db $F1, $00, $19, $23, $F1, $F8, $1A, $23, $F8, $00, $1B, $23, $F8, $F8, $1C, $20
    db $00, $F8, $20, $25, $00, $00, $25, $25, $80

    ldh a, [rP1]                                  ; $7454: $F0 $00
    add hl, de                                    ; $7456: $19
    inc hl                                        ; $7457: $23
    ldh a, [$F8]                                  ; $7458: $F0 $F8
    ld a, [de]                                    ; $745A: $1A
    inc hl                                        ; $745B: $23
    ld hl, sp-$04                                 ; $745C: $F8 $FC
    dec e                                         ; $745E: $1D
    dec h                                         ; $745F: $25
    nop                                           ; $7460: $00
    db $FC                                        ; $7461: $FC
    ld hl, $8025                                  ; $7462: $21 $25 $80
    pop af                                        ; $7465: $F1
    nop                                           ; $7466: $00
    add hl, de                                    ; $7467: $19
    inc hl                                        ; $7468: $23
    pop af                                        ; $7469: $F1
    ld hl, sp+$1A                                 ; $746A: $F8 $1A
    inc hl                                        ; $746C: $23
    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    ld [hl+], a                                   ; $746F: $22
    dec h                                         ; $7470: $25
    nop                                           ; $7471: $00
    ld hl, sp+$23                                 ; $7472: $F8 $23
    dec h                                         ; $7474: $25
    ld hl, sp+$00                                 ; $7475: $F8 $00
    ld e, $23                                     ; $7477: $1E $23
    ld hl, sp-$08                                 ; $7479: $F8 $F8
    rra                                           ; $747B: $1F
    jr nz, jr_010_73FE                            ; $747C: $20 $80

    ld c, l                                       ; $747E: $4D
    ld [$0008], sp                                ; $747F: $08 $08 $00
    rst $38                                       ; $7482: $FF
    or l                                          ; $7483: $B5
    ld [hl], e                                    ; $7484: $73
    jp z, $E373                                   ; $7485: $CA $73 $E3

    ld [hl], e                                    ; $7488: $73
    jp z, Jump_010_4673                           ; $7489: $CA $73 $46

    ld a, [hl]                                    ; $748C: $7E
    ld [hl], h                                    ; $748D: $74
    ld c, l                                       ; $748E: $4D
    ld [$0008], sp                                ; $748F: $08 $08 $00
    ld bc, $7372                                  ; $7492: $01 $72 $73
    add a                                         ; $7495: $87
    ld [hl], e                                    ; $7496: $73
    and b                                         ; $7497: $A0
    ld [hl], e                                    ; $7498: $73
    add a                                         ; $7499: $87
    ld [hl], e                                    ; $749A: $73
    ld b, [hl]                                    ; $749B: $46
    adc [hl]                                      ; $749C: $8E
    ld [hl], h                                    ; $749D: $74
    ld c, l                                       ; $749E: $4D
    ld [$FF08], sp                                ; $749F: $08 $08 $FF
    nop                                           ; $74A2: $00
    dec sp                                        ; $74A3: $3B
    ld [hl], h                                    ; $74A4: $74
    ld d, h                                       ; $74A5: $54
    ld [hl], h                                    ; $74A6: $74
    ld h, l                                       ; $74A7: $65
    ld [hl], h                                    ; $74A8: $74
    ld d, h                                       ; $74A9: $54
    ld [hl], h                                    ; $74AA: $74
    ld b, [hl]                                    ; $74AB: $46
    sbc [hl]                                      ; $74AC: $9E
    ld [hl], h                                    ; $74AD: $74
    ld c, l                                       ; $74AE: $4D
    ld [$0108], sp                                ; $74AF: $08 $08 $01
    nop                                           ; $74B2: $00
    ld hl, sp+$73                                 ; $74B3: $F8 $73
    ld de, $2274                                  ; $74B5: $11 $74 $22
    ld [hl], h                                    ; $74B8: $74
    ld de, $4674                                  ; $74B9: $11 $74 $46
    xor [hl]                                      ; $74BC: $AE
    ld [hl], h                                    ; $74BD: $74
    ld c, l                                       ; $74BE: $4D
    ld [$0008], sp                                ; $74BF: $08 $08 $00
    cp $B5                                        ; $74C2: $FE $B5
    ld [hl], e                                    ; $74C4: $73
    jp z, $E373                                   ; $74C5: $CA $73 $E3

    ld [hl], e                                    ; $74C8: $73
    jp z, Jump_010_4673                           ; $74C9: $CA $73 $46

    cp [hl]                                       ; $74CC: $BE
    ld [hl], h                                    ; $74CD: $74

    db $4D, $08, $08, $00, $02, $72, $73, $87, $73, $A0, $73, $87, $73, $46, $CE, $74
    db $4D, $08, $08, $FE, $00, $3B, $74

    ld d, h                                       ; $74E5: $54
    ld [hl], h                                    ; $74E6: $74
    ld h, l                                       ; $74E7: $65
    ld [hl], h                                    ; $74E8: $74
    ld d, h                                       ; $74E9: $54
    ld [hl], h                                    ; $74EA: $74
    ld b, [hl]                                    ; $74EB: $46
    sbc $74                                       ; $74EC: $DE $74
    ld c, l                                       ; $74EE: $4D
    ld [$0208], sp                                ; $74EF: $08 $08 $02
    nop                                           ; $74F2: $00
    ld hl, sp+$73                                 ; $74F3: $F8 $73
    ld de, $2274                                  ; $74F5: $11 $74 $22
    ld [hl], h                                    ; $74F8: $74
    ld de, $4674                                  ; $74F9: $11 $74 $46
    xor $74                                       ; $74FC: $EE $74
    ld c, h                                       ; $74FE: $4C
    rst $38                                       ; $74FF: $FF
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    jp z, $0073                                   ; $7502: $CA $73 $00

    ld b, [hl]                                    ; $7505: $46
    cp $74                                        ; $7506: $FE $74

    db $4C, $FF, $00, $00, $87, $73

    nop                                           ; $750E: $00
    ld b, [hl]                                    ; $750F: $46
    db $08                                        ; $7510: $08
    ld [hl], l                                    ; $7511: $75

    db $4C, $FF, $00, $00, $54, $74

    nop                                           ; $7518: $00
    ld b, [hl]                                    ; $7519: $46
    ld [de], a                                    ; $751A: $12
    ld [hl], l                                    ; $751B: $75

    db $4C, $FF, $00, $00, $11, $74, $00, $46, $1C, $75

    ld c, h                                       ; $7526: $4C
    rst $38                                       ; $7527: $FF
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    ld e, l                                       ; $752A: $5D
    ld [hl], e                                    ; $752B: $73
    nop                                           ; $752C: $00
    ld b, [hl]                                    ; $752D: $46
    ld h, $75                                     ; $752E: $26 $75
    ld c, h                                       ; $7530: $4C
    rst $38                                       ; $7531: $FF
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    ld c, b                                       ; $7534: $48
    ld [hl], e                                    ; $7535: $73
    nop                                           ; $7536: $00
    ld b, [hl]                                    ; $7537: $46
    jr nc, jr_010_75AF                            ; $7538: $30 $75

    db $4C, $FF, $00, $00, $2F, $73

    nop                                           ; $7540: $00
    ld b, [hl]                                    ; $7541: $46
    ld a, [hl-]                                   ; $7542: $3A
    ld [hl], l                                    ; $7543: $75

    db $4C, $FF, $00, $00, $16, $73

    nop                                           ; $754A: $00
    ld b, [hl]                                    ; $754B: $46
    ld b, h                                       ; $754C: $44
    ld [hl], l                                    ; $754D: $75
    ld c, e                                       ; $754E: $4B
    inc bc                                        ; $754F: $03
    stop                                          ; $7550: $10 $00
    nop                                           ; $7552: $00
    ld h, l                                       ; $7553: $65
    ld [hl], l                                    ; $7554: $75
    db $10                                        ; $7555: $10
    inc bc                                        ; $7556: $03
    nop                                           ; $7557: $00
    ld l, h                                       ; $7558: $6C
    ld [hl], l                                    ; $7559: $75
    db $10                                        ; $755A: $10
    ld [bc], a                                    ; $755B: $02
    nop                                           ; $755C: $00
    ld a, d                                       ; $755D: $7A
    ld [hl], l                                    ; $755E: $75
    db $10                                        ; $755F: $10
    ld bc, $7300                                  ; $7560: $01 $00 $73
    ld [hl], l                                    ; $7563: $75
    rst $38                                       ; $7564: $FF
    inc d                                         ; $7565: $14
    db $10                                        ; $7566: $10
    cp $74                                        ; $7567: $FE $74
    ld h, d                                       ; $7569: $62
    ld bc, $1412                                  ; $756A: $01 $12 $14
    db $10                                        ; $756D: $10
    ld [$6275], sp                                ; $756E: $08 $75 $62
    ld bc, $1412                                  ; $7571: $01 $12 $14
    db $10                                        ; $7574: $10
    ld [de], a                                    ; $7575: $12
    ld [hl], l                                    ; $7576: $75
    ld h, d                                       ; $7577: $62
    ld bc, $1412                                  ; $7578: $01 $12 $14
    db $10                                        ; $757B: $10
    inc e                                         ; $757C: $1C
    ld [hl], l                                    ; $757D: $75
    ld h, d                                       ; $757E: $62
    ld bc, $F012                                  ; $757F: $01 $12 $F0
    ld hl, sp+$00                                 ; $7582: $F8 $00
    inc bc                                        ; $7584: $03
    ldh a, [rP1]                                  ; $7585: $F0 $00
    ld bc, $F803                                  ; $7587: $01 $03 $F8
    ld hl, sp+$03                                 ; $758A: $F8 $03
    inc bc                                        ; $758C: $03
    ld hl, sp+$00                                 ; $758D: $F8 $00
    inc b                                         ; $758F: $04
    inc bc                                        ; $7590: $03
    nop                                           ; $7591: $00
    ld hl, sp+$06                                 ; $7592: $F8 $06
    inc bc                                        ; $7594: $03
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    rlca                                          ; $7597: $07
    inc bc                                        ; $7598: $03
    add b                                         ; $7599: $80
    ldh a, [rP1]                                  ; $759A: $F0 $00
    nop                                           ; $759C: $00
    inc hl                                        ; $759D: $23
    ldh a, [$F8]                                  ; $759E: $F0 $F8
    ld bc, $F823                                  ; $75A0: $01 $23 $F8
    nop                                           ; $75A3: $00
    inc bc                                        ; $75A4: $03
    inc hl                                        ; $75A5: $23
    ld hl, sp-$08                                 ; $75A6: $F8 $F8
    inc b                                         ; $75A8: $04
    inc hl                                        ; $75A9: $23
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    ld b, $23                                     ; $75AC: $06 $23
    nop                                           ; $75AE: $00

jr_010_75AF:
    ld hl, sp+$07                                 ; $75AF: $F8 $07
    inc hl                                        ; $75B1: $23
    add b                                         ; $75B2: $80
    ldh a, [$F8]                                  ; $75B3: $F0 $F8
    dec bc                                        ; $75B5: $0B
    inc bc                                        ; $75B6: $03
    ldh a, [rP1]                                  ; $75B7: $F0 $00
    inc c                                         ; $75B9: $0C
    inc bc                                        ; $75BA: $03
    nop                                           ; $75BB: $00
    cp $10                                        ; $75BC: $FE $10
    inc bc                                        ; $75BE: $03
    ld hl, sp-$03                                 ; $75BF: $F8 $FD
    rrca                                          ; $75C1: $0F
    inc bc                                        ; $75C2: $03
    add b                                         ; $75C3: $80
    ldh a, [rSC]                                  ; $75C4: $F0 $02
    dec bc                                        ; $75C6: $0B
    inc hl                                        ; $75C7: $23
    ldh a, [$FA]                                  ; $75C8: $F0 $FA
    inc c                                         ; $75CA: $0C
    inc hl                                        ; $75CB: $23
    nop                                           ; $75CC: $00
    db $FC                                        ; $75CD: $FC
    db $10                                        ; $75CE: $10
    inc hl                                        ; $75CF: $23
    ld hl, sp-$03                                 ; $75D0: $F8 $FD
    rrca                                          ; $75D2: $0F
    inc hl                                        ; $75D3: $23
    add b                                         ; $75D4: $80
    pop af                                        ; $75D5: $F1
    ld hl, sp+$02                                 ; $75D6: $F8 $02
    inc bc                                        ; $75D8: $03
    pop af                                        ; $75D9: $F1
    nop                                           ; $75DA: $00
    ld [bc], a                                    ; $75DB: $02
    inc hl                                        ; $75DC: $23
    ld hl, sp-$08                                 ; $75DD: $F8 $F8
    ld [de], a                                    ; $75DF: $12
    inc bc                                        ; $75E0: $03
    ld hl, sp+$00                                 ; $75E1: $F8 $00
    inc de                                        ; $75E3: $13
    inc bc                                        ; $75E4: $03
    nop                                           ; $75E5: $00
    db $FC                                        ; $75E6: $FC
    inc d                                         ; $75E7: $14
    inc bc                                        ; $75E8: $03
    add b                                         ; $75E9: $80
    ldh a, [$F8]                                  ; $75EA: $F0 $F8
    ld [bc], a                                    ; $75EC: $02
    inc bc                                        ; $75ED: $03
    ldh a, [rP1]                                  ; $75EE: $F0 $00
    ld [bc], a                                    ; $75F0: $02
    inc hl                                        ; $75F1: $23
    ld hl, sp-$08                                 ; $75F2: $F8 $F8
    dec b                                         ; $75F4: $05
    inc hl                                        ; $75F5: $23
    ld hl, sp+$00                                 ; $75F6: $F8 $00
    dec b                                         ; $75F8: $05
    inc bc                                        ; $75F9: $03
    nop                                           ; $75FA: $00
    ld sp, hl                                     ; $75FB: $F9
    ld [$0023], sp                                ; $75FC: $08 $23 $00
    nop                                           ; $75FF: $00
    ld [$8003], sp                                ; $7600: $08 $03 $80
    pop af                                        ; $7603: $F1
    ld hl, sp+$02                                 ; $7604: $F8 $02
    inc bc                                        ; $7606: $03
    pop af                                        ; $7607: $F1
    nop                                           ; $7608: $00
    ld [bc], a                                    ; $7609: $02
    inc hl                                        ; $760A: $23
    ld hl, sp+$00                                 ; $760B: $F8 $00
    ld [de], a                                    ; $760D: $12
    inc hl                                        ; $760E: $23
    ld hl, sp-$08                                 ; $760F: $F8 $F8
    inc de                                        ; $7611: $13
    inc hl                                        ; $7612: $23
    nop                                           ; $7613: $00
    db $FC                                        ; $7614: $FC
    inc d                                         ; $7615: $14
    inc hl                                        ; $7616: $23
    add b                                         ; $7617: $80
    ldh a, [$F8]                                  ; $7618: $F0 $F8
    dec d                                         ; $761A: $15
    inc bc                                        ; $761B: $03
    ldh a, [rP1]                                  ; $761C: $F0 $00
    ld d, $03                                     ; $761E: $16 $03
    nop                                           ; $7620: $00
    db $FC                                        ; $7621: $FC
    rra                                           ; $7622: $1F
    inc bc                                        ; $7623: $03
    ld hl, sp-$08                                 ; $7624: $F8 $F8
    dec de                                        ; $7626: $1B
    inc bc                                        ; $7627: $03
    ld hl, sp+$00                                 ; $7628: $F8 $00
    inc e                                         ; $762A: $1C
    inc bc                                        ; $762B: $03
    add b                                         ; $762C: $80
    ldh a, [$F8]                                  ; $762D: $F0 $F8
    rla                                           ; $762F: $17
    inc bc                                        ; $7630: $03
    ldh a, [rP1]                                  ; $7631: $F0 $00
    jr jr_010_7638                                ; $7633: $18 $03

    ld hl, sp-$08                                 ; $7635: $F8 $F8
    dec c                                         ; $7637: $0D

jr_010_7638:
    inc bc                                        ; $7638: $03
    ld hl, sp+$00                                 ; $7639: $F8 $00
    ld c, $03                                     ; $763B: $0E $03
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    ld de, $0003                                  ; $763F: $11 $03 $00
    ld sp, hl                                     ; $7642: $F9
    ld de, $8023                                  ; $7643: $11 $23 $80
    ldh a, [$F8]                                  ; $7646: $F0 $F8
    add hl, de                                    ; $7648: $19
    inc bc                                        ; $7649: $03
    ldh a, [rP1]                                  ; $764A: $F0 $00
    ld a, [de]                                    ; $764C: $1A
    inc bc                                        ; $764D: $03
    ld hl, sp-$08                                 ; $764E: $F8 $F8
    dec e                                         ; $7650: $1D
    inc bc                                        ; $7651: $03
    ld hl, sp+$00                                 ; $7652: $F8 $00
    ld e, $03                                     ; $7654: $1E $03
    nop                                           ; $7656: $00
    db $FC                                        ; $7657: $FC
    rra                                           ; $7658: $1F
    inc hl                                        ; $7659: $23
    add b                                         ; $765A: $80
    pop af                                        ; $765B: $F1
    ld hl, sp+$20                                 ; $765C: $F8 $20
    inc bc                                        ; $765E: $03
    pop af                                        ; $765F: $F1
    nop                                           ; $7660: $00
    ld hl, $F803                                  ; $7661: $21 $03 $F8
    ld hl, sp+$22                                 ; $7664: $F8 $22
    inc bc                                        ; $7666: $03
    ld hl, sp+$00                                 ; $7667: $F8 $00
    inc hl                                        ; $7669: $23
    inc bc                                        ; $766A: $03
    nop                                           ; $766B: $00
    ld hl, sp+$27                                 ; $766C: $F8 $27
    inc bc                                        ; $766E: $03
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    jr z, @+$05                                   ; $7671: $28 $03

    add b                                         ; $7673: $80
    nop                                           ; $7674: $00
    ld hl, sp+$29                                 ; $7675: $F8 $29
    inc bc                                        ; $7677: $03
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    ld a, [hl+]                                   ; $767A: $2A
    inc bc                                        ; $767B: $03
    ld hl, sp-$04                                 ; $767C: $F8 $FC
    inc h                                         ; $767E: $24
    inc bc                                        ; $767F: $03
    ldh a, [$F8]                                  ; $7680: $F0 $F8
    jr nz, @+$05                                  ; $7682: $20 $03

    ldh a, [rP1]                                  ; $7684: $F0 $00
    ld hl, $8003                                  ; $7686: $21 $03 $80
    pop af                                        ; $7689: $F1
    ld hl, sp+$20                                 ; $768A: $F8 $20
    inc bc                                        ; $768C: $03
    pop af                                        ; $768D: $F1
    nop                                           ; $768E: $00
    ld hl, $F803                                  ; $768F: $21 $03 $F8
    ld hl, sp+$25                                 ; $7692: $F8 $25
    inc bc                                        ; $7694: $03
    ld hl, sp+$00                                 ; $7695: $F8 $00
    ld h, $03                                     ; $7697: $26 $03
    nop                                           ; $7699: $00
    ld hl, sp+$2B                                 ; $769A: $F8 $2B
    inc bc                                        ; $769C: $03
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    inc l                                         ; $769F: $2C
    inc bc                                        ; $76A0: $03
    add b                                         ; $76A1: $80
    pop af                                        ; $76A2: $F1
    nop                                           ; $76A3: $00
    jr nz, jr_010_76C9                            ; $76A4: $20 $23

    pop af                                        ; $76A6: $F1
    ld hl, sp+$21                                 ; $76A7: $F8 $21
    inc hl                                        ; $76A9: $23
    ld hl, sp+$00                                 ; $76AA: $F8 $00
    ld [hl+], a                                   ; $76AC: $22
    inc hl                                        ; $76AD: $23
    ld hl, sp-$08                                 ; $76AE: $F8 $F8
    inc hl                                        ; $76B0: $23
    inc hl                                        ; $76B1: $23
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    daa                                           ; $76B4: $27
    inc hl                                        ; $76B5: $23
    nop                                           ; $76B6: $00
    ld hl, sp+$28                                 ; $76B7: $F8 $28
    inc hl                                        ; $76B9: $23
    add b                                         ; $76BA: $80
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    add hl, hl                                    ; $76BD: $29
    inc hl                                        ; $76BE: $23
    nop                                           ; $76BF: $00
    ld hl, sp+$2A                                 ; $76C0: $F8 $2A
    inc hl                                        ; $76C2: $23
    ld hl, sp-$04                                 ; $76C3: $F8 $FC
    inc h                                         ; $76C5: $24
    inc hl                                        ; $76C6: $23
    ldh a, [rP1]                                  ; $76C7: $F0 $00

jr_010_76C9:
    jr nz, jr_010_76EE                            ; $76C9: $20 $23

    ldh a, [$F8]                                  ; $76CB: $F0 $F8
    ld hl, $8023                                  ; $76CD: $21 $23 $80
    pop af                                        ; $76D0: $F1
    nop                                           ; $76D1: $00
    jr nz, jr_010_76F7                            ; $76D2: $20 $23

    pop af                                        ; $76D4: $F1
    ld hl, sp+$21                                 ; $76D5: $F8 $21
    inc hl                                        ; $76D7: $23
    ld hl, sp+$00                                 ; $76D8: $F8 $00
    dec h                                         ; $76DA: $25
    inc hl                                        ; $76DB: $23
    ld hl, sp-$08                                 ; $76DC: $F8 $F8
    ld h, $23                                     ; $76DE: $26 $23
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    dec hl                                        ; $76E2: $2B
    inc hl                                        ; $76E3: $23
    nop                                           ; $76E4: $00
    ld hl, sp+$2C                                 ; $76E5: $F8 $2C
    inc hl                                        ; $76E7: $23
    add b                                         ; $76E8: $80
    ld c, l                                       ; $76E9: $4D
    ld [$0008], sp                                ; $76EA: $08 $08 $00
    rst $38                                       ; $76ED: $FF

jr_010_76EE:
    jr jr_010_7766                                ; $76EE: $18 $76

    dec l                                         ; $76F0: $2D
    halt                                          ; $76F1: $76
    ld b, [hl]                                    ; $76F2: $46
    halt                                          ; $76F3: $76
    dec l                                         ; $76F4: $2D
    halt                                          ; $76F5: $76
    ld b, [hl]                                    ; $76F6: $46

jr_010_76F7:
    jp hl                                         ; $76F7: $E9


    halt                                          ; $76F8: $76
    ld c, l                                       ; $76F9: $4D
    ld [$0008], sp                                ; $76FA: $08 $08 $00
    ld bc, $75D5                                  ; $76FD: $01 $D5 $75
    ld [$0375], a                                 ; $7700: $EA $75 $03
    halt                                          ; $7703: $76
    ld [$4675], a                                 ; $7704: $EA $75 $46
    ld sp, hl                                     ; $7707: $F9
    halt                                          ; $7708: $76
    ld c, l                                       ; $7709: $4D
    ld [$FF08], sp                                ; $770A: $08 $08 $FF
    nop                                           ; $770D: $00
    and d                                         ; $770E: $A2
    halt                                          ; $770F: $76
    cp e                                          ; $7710: $BB
    halt                                          ; $7711: $76
    ret nc                                        ; $7712: $D0

    halt                                          ; $7713: $76
    cp e                                          ; $7714: $BB
    halt                                          ; $7715: $76
    ld b, [hl]                                    ; $7716: $46
    add hl, bc                                    ; $7717: $09
    ld [hl], a                                    ; $7718: $77
    ld c, l                                       ; $7719: $4D
    ld [$0108], sp                                ; $771A: $08 $08 $01
    nop                                           ; $771D: $00
    ld e, e                                       ; $771E: $5B
    halt                                          ; $771F: $76
    ld [hl], h                                    ; $7720: $74
    halt                                          ; $7721: $76
    adc c                                         ; $7722: $89
    halt                                          ; $7723: $76
    ld [hl], h                                    ; $7724: $74
    halt                                          ; $7725: $76
    ld b, [hl]                                    ; $7726: $46
    add hl, de                                    ; $7727: $19
    ld [hl], a                                    ; $7728: $77
    ld c, l                                       ; $7729: $4D
    ld [$0008], sp                                ; $772A: $08 $08 $00
    cp $18                                        ; $772D: $FE $18
    halt                                          ; $772F: $76
    dec l                                         ; $7730: $2D
    halt                                          ; $7731: $76
    ld b, [hl]                                    ; $7732: $46
    halt                                          ; $7733: $76
    dec l                                         ; $7734: $2D
    halt                                          ; $7735: $76
    ld b, [hl]                                    ; $7736: $46
    add hl, hl                                    ; $7737: $29
    ld [hl], a                                    ; $7738: $77
    ld c, l                                       ; $7739: $4D
    ld [$0008], sp                                ; $773A: $08 $08 $00
    ld [bc], a                                    ; $773D: $02
    push de                                       ; $773E: $D5
    ld [hl], l                                    ; $773F: $75
    ld [$0375], a                                 ; $7740: $EA $75 $03
    halt                                          ; $7743: $76
    ld [$4675], a                                 ; $7744: $EA $75 $46
    add hl, sp                                    ; $7747: $39
    ld [hl], a                                    ; $7748: $77
    ld c, l                                       ; $7749: $4D
    ld [$FE08], sp                                ; $774A: $08 $08 $FE
    nop                                           ; $774D: $00
    and d                                         ; $774E: $A2
    halt                                          ; $774F: $76
    cp e                                          ; $7750: $BB
    halt                                          ; $7751: $76
    ret nc                                        ; $7752: $D0

    halt                                          ; $7753: $76
    cp e                                          ; $7754: $BB
    halt                                          ; $7755: $76
    ld b, [hl]                                    ; $7756: $46
    ld c, c                                       ; $7757: $49
    ld [hl], a                                    ; $7758: $77
    ld c, l                                       ; $7759: $4D
    ld [$0208], sp                                ; $775A: $08 $08 $02
    nop                                           ; $775D: $00
    ld e, e                                       ; $775E: $5B
    halt                                          ; $775F: $76
    ld [hl], h                                    ; $7760: $74
    halt                                          ; $7761: $76
    adc c                                         ; $7762: $89
    halt                                          ; $7763: $76
    ld [hl], h                                    ; $7764: $74
    halt                                          ; $7765: $76

jr_010_7766:
    ld b, [hl]                                    ; $7766: $46
    ld e, c                                       ; $7767: $59
    ld [hl], a                                    ; $7768: $77
    ld c, h                                       ; $7769: $4C
    rst $38                                       ; $776A: $FF
    nop                                           ; $776B: $00
    nop                                           ; $776C: $00
    dec l                                         ; $776D: $2D
    halt                                          ; $776E: $76
    nop                                           ; $776F: $00
    ld b, [hl]                                    ; $7770: $46
    ld l, c                                       ; $7771: $69
    ld [hl], a                                    ; $7772: $77
    ld c, h                                       ; $7773: $4C
    rst $38                                       ; $7774: $FF
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    ld [$0075], a                                 ; $7777: $EA $75 $00
    ld b, [hl]                                    ; $777A: $46
    ld [hl], e                                    ; $777B: $73
    ld [hl], a                                    ; $777C: $77
    ld c, h                                       ; $777D: $4C
    rst $38                                       ; $777E: $FF
    nop                                           ; $777F: $00
    nop                                           ; $7780: $00
    cp e                                          ; $7781: $BB
    halt                                          ; $7782: $76
    nop                                           ; $7783: $00
    ld b, [hl]                                    ; $7784: $46
    ld a, l                                       ; $7785: $7D
    ld [hl], a                                    ; $7786: $77
    ld c, h                                       ; $7787: $4C
    rst $38                                       ; $7788: $FF
    nop                                           ; $7789: $00
    nop                                           ; $778A: $00
    ld [hl], h                                    ; $778B: $74
    halt                                          ; $778C: $76
    nop                                           ; $778D: $00
    ld b, [hl]                                    ; $778E: $46
    add a                                         ; $778F: $87
    ld [hl], a                                    ; $7790: $77
    ld c, h                                       ; $7791: $4C
    rst $38                                       ; $7792: $FF
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    call nz, $0075                                ; $7795: $C4 $75 $00
    ld b, [hl]                                    ; $7798: $46
    sub c                                         ; $7799: $91
    ld [hl], a                                    ; $779A: $77
    ld c, h                                       ; $779B: $4C
    rst $38                                       ; $779C: $FF
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    or e                                          ; $779F: $B3
    ld [hl], l                                    ; $77A0: $75
    nop                                           ; $77A1: $00
    ld b, [hl]                                    ; $77A2: $46
    sbc e                                         ; $77A3: $9B
    ld [hl], a                                    ; $77A4: $77
    ld c, h                                       ; $77A5: $4C
    rst $38                                       ; $77A6: $FF
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    sbc d                                         ; $77A9: $9A
    ld [hl], l                                    ; $77AA: $75
    nop                                           ; $77AB: $00
    ld b, [hl]                                    ; $77AC: $46
    and l                                         ; $77AD: $A5
    ld [hl], a                                    ; $77AE: $77
    ld c, h                                       ; $77AF: $4C
    rst $38                                       ; $77B0: $FF
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    add c                                         ; $77B3: $81
    ld [hl], l                                    ; $77B4: $75
    nop                                           ; $77B5: $00
    ld b, [hl]                                    ; $77B6: $46
    xor a                                         ; $77B7: $AF
    ld [hl], a                                    ; $77B8: $77
    ld c, e                                       ; $77B9: $4B
    inc bc                                        ; $77BA: $03
    stop                                          ; $77BB: $10 $00
    nop                                           ; $77BD: $00
    ret nc                                        ; $77BE: $D0

    ld [hl], a                                    ; $77BF: $77
    db $10                                        ; $77C0: $10
    inc bc                                        ; $77C1: $03
    nop                                           ; $77C2: $00
    rst $10                                       ; $77C3: $D7
    ld [hl], a                                    ; $77C4: $77
    db $10                                        ; $77C5: $10
    ld [bc], a                                    ; $77C6: $02
    nop                                           ; $77C7: $00
    push hl                                       ; $77C8: $E5
    ld [hl], a                                    ; $77C9: $77
    db $10                                        ; $77CA: $10
    ld bc, $DE00                                  ; $77CB: $01 $00 $DE
    ld [hl], a                                    ; $77CE: $77
    rst $38                                       ; $77CF: $FF
    inc d                                         ; $77D0: $14
    db $10                                        ; $77D1: $10
    ld l, c                                       ; $77D2: $69
    ld [hl], a                                    ; $77D3: $77
    ld h, d                                       ; $77D4: $62
    ld bc, $1412                                  ; $77D5: $01 $12 $14
    db $10                                        ; $77D8: $10
    ld [hl], e                                    ; $77D9: $73
    ld [hl], a                                    ; $77DA: $77
    ld h, d                                       ; $77DB: $62
    ld bc, $1412                                  ; $77DC: $01 $12 $14
    db $10                                        ; $77DF: $10
    ld a, l                                       ; $77E0: $7D
    ld [hl], a                                    ; $77E1: $77
    ld h, d                                       ; $77E2: $62
    ld bc, $1412                                  ; $77E3: $01 $12 $14
    db $10                                        ; $77E6: $10
    add a                                         ; $77E7: $87
    ld [hl], a                                    ; $77E8: $77
    ld h, d                                       ; $77E9: $62
    ld bc, $F012                                  ; $77EA: $01 $12 $F0
    ld hl, sp+$00                                 ; $77ED: $F8 $00
    inc bc                                        ; $77EF: $03
    ldh a, [rP1]                                  ; $77F0: $F0 $00
    ld bc, $F803                                  ; $77F2: $01 $03 $F8
    ld hl, sp+$04                                 ; $77F5: $F8 $04
    inc bc                                        ; $77F7: $03
    ld hl, sp+$00                                 ; $77F8: $F8 $00
    dec b                                         ; $77FA: $05
    inc bc                                        ; $77FB: $03
    nop                                           ; $77FC: $00
    ld hl, sp+$08                                 ; $77FD: $F8 $08
    inc bc                                        ; $77FF: $03
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    add hl, bc                                    ; $7802: $09
    inc bc                                        ; $7803: $03
    add b                                         ; $7804: $80
    ldh a, [rP1]                                  ; $7805: $F0 $00
    nop                                           ; $7807: $00
    inc hl                                        ; $7808: $23
    ldh a, [$F8]                                  ; $7809: $F0 $F8
    ld bc, $F823                                  ; $780B: $01 $23 $F8
    nop                                           ; $780E: $00
    inc b                                         ; $780F: $04
    inc hl                                        ; $7810: $23
    ld hl, sp-$08                                 ; $7811: $F8 $F8
    dec b                                         ; $7813: $05
    inc hl                                        ; $7814: $23
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    ld [$0023], sp                                ; $7817: $08 $23 $00
    ld hl, sp+$09                                 ; $781A: $F8 $09
    inc hl                                        ; $781C: $23
    add b                                         ; $781D: $80
    ldh a, [$F8]                                  ; $781E: $F0 $F8
    inc c                                         ; $7820: $0C
    inc bc                                        ; $7821: $03
    ldh a, [rP1]                                  ; $7822: $F0 $00
    dec c                                         ; $7824: $0D
    inc bc                                        ; $7825: $03
    ld hl, sp+$00                                 ; $7826: $F8 $00
    db $10                                        ; $7828: $10
    inc bc                                        ; $7829: $03
    ld hl, sp-$08                                 ; $782A: $F8 $F8
    rrca                                          ; $782C: $0F
    inc bc                                        ; $782D: $03
    nop                                           ; $782E: $00
    cp $12                                        ; $782F: $FE $12
    inc bc                                        ; $7831: $03
    add b                                         ; $7832: $80
    ldh a, [rP1]                                  ; $7833: $F0 $00
    inc c                                         ; $7835: $0C
    inc hl                                        ; $7836: $23
    ldh a, [$F8]                                  ; $7837: $F0 $F8
    dec c                                         ; $7839: $0D
    inc hl                                        ; $783A: $23
    ld hl, sp-$08                                 ; $783B: $F8 $F8
    db $10                                        ; $783D: $10
    inc hl                                        ; $783E: $23
    ld hl, sp+$00                                 ; $783F: $F8 $00
    rrca                                          ; $7841: $0F
    inc hl                                        ; $7842: $23
    nop                                           ; $7843: $00
    ld a, [$2312]                                 ; $7844: $FA $12 $23
    add b                                         ; $7847: $80
    pop af                                        ; $7848: $F1
    ld hl, sp+$02                                 ; $7849: $F8 $02
    inc bc                                        ; $784B: $03
    pop af                                        ; $784C: $F1
    nop                                           ; $784D: $00
    inc bc                                        ; $784E: $03
    inc bc                                        ; $784F: $03
    ld hl, sp-$08                                 ; $7850: $F8 $F8
    dec d                                         ; $7852: $15
    inc bc                                        ; $7853: $03
    ld hl, sp+$00                                 ; $7854: $F8 $00
    ld d, $03                                     ; $7856: $16 $03
    nop                                           ; $7858: $00
    db $FC                                        ; $7859: $FC
    rla                                           ; $785A: $17
    inc bc                                        ; $785B: $03
    add b                                         ; $785C: $80
    ld hl, sp-$08                                 ; $785D: $F8 $F8
    ld b, $03                                     ; $785F: $06 $03
    ld hl, sp+$00                                 ; $7861: $F8 $00
    rlca                                          ; $7863: $07
    inc bc                                        ; $7864: $03
    nop                                           ; $7865: $00
    ld sp, hl                                     ; $7866: $F9
    ld a, [bc]                                    ; $7867: $0A
    inc hl                                        ; $7868: $23
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
    ld a, [bc]                                    ; $786B: $0A
    inc bc                                        ; $786C: $03
    ldh a, [$F8]                                  ; $786D: $F0 $F8
    ld [bc], a                                    ; $786F: $02
    inc bc                                        ; $7870: $03
    ldh a, [rP1]                                  ; $7871: $F0 $00
    inc bc                                        ; $7873: $03
    inc bc                                        ; $7874: $03
    add b                                         ; $7875: $80
    pop af                                        ; $7876: $F1
    ld hl, sp+$02                                 ; $7877: $F8 $02
    inc bc                                        ; $7879: $03
    pop af                                        ; $787A: $F1
    nop                                           ; $787B: $00
    inc bc                                        ; $787C: $03
    inc bc                                        ; $787D: $03
    nop                                           ; $787E: $00
    db $FC                                        ; $787F: $FC
    rla                                           ; $7880: $17
    inc hl                                        ; $7881: $23
    ld hl, sp-$08                                 ; $7882: $F8 $F8
    dec d                                         ; $7884: $15
    inc bc                                        ; $7885: $03
    ld hl, sp+$00                                 ; $7886: $F8 $00
    ld d, $03                                     ; $7888: $16 $03
    add b                                         ; $788A: $80
    pop af                                        ; $788B: $F1
    ld hl, sp+$0B                                 ; $788C: $F8 $0B
    inc hl                                        ; $788E: $23
    pop af                                        ; $788F: $F1
    nop                                           ; $7890: $00
    dec bc                                        ; $7891: $0B
    inc bc                                        ; $7892: $03
    nop                                           ; $7893: $00
    db $FC                                        ; $7894: $FC
    ld a, [de]                                    ; $7895: $1A
    inc bc                                        ; $7896: $03
    ld hl, sp-$08                                 ; $7897: $F8 $F8
    jr jr_010_789E                                ; $7899: $18 $03

    ld hl, sp+$00                                 ; $789B: $F8 $00
    add hl, de                                    ; $789D: $19

jr_010_789E:
    inc bc                                        ; $789E: $03
    add b                                         ; $789F: $80
    ldh a, [$F8]                                  ; $78A0: $F0 $F8
    dec bc                                        ; $78A2: $0B
    inc hl                                        ; $78A3: $23
    ldh a, [rP1]                                  ; $78A4: $F0 $00
    dec bc                                        ; $78A6: $0B
    inc bc                                        ; $78A7: $03
    ld hl, sp-$08                                 ; $78A8: $F8 $F8
    ld c, $23                                     ; $78AA: $0E $23
    ld hl, sp+$00                                 ; $78AC: $F8 $00
    ld c, $03                                     ; $78AE: $0E $03
    nop                                           ; $78B0: $00
    ld hl, sp+$11                                 ; $78B1: $F8 $11
    inc hl                                        ; $78B3: $23
    nop                                           ; $78B4: $00
    nop                                           ; $78B5: $00
    ld de, $8003                                  ; $78B6: $11 $03 $80
    pop af                                        ; $78B9: $F1
    ld hl, sp+$0B                                 ; $78BA: $F8 $0B
    inc hl                                        ; $78BC: $23
    pop af                                        ; $78BD: $F1
    nop                                           ; $78BE: $00
    dec bc                                        ; $78BF: $0B
    inc bc                                        ; $78C0: $03
    nop                                           ; $78C1: $00
    db $FC                                        ; $78C2: $FC
    ld a, [de]                                    ; $78C3: $1A
    inc hl                                        ; $78C4: $23
    ld hl, sp+$00                                 ; $78C5: $F8 $00
    jr @+$25                                      ; $78C7: $18 $23

    ld hl, sp-$08                                 ; $78C9: $F8 $F8
    add hl, de                                    ; $78CB: $19
    inc hl                                        ; $78CC: $23
    add b                                         ; $78CD: $80
    pop af                                        ; $78CE: $F1
    ld hl, sp+$1B                                 ; $78CF: $F8 $1B
    inc bc                                        ; $78D1: $03
    pop af                                        ; $78D2: $F1
    nop                                           ; $78D3: $00
    inc e                                         ; $78D4: $1C
    inc bc                                        ; $78D5: $03
    ld hl, sp-$08                                 ; $78D6: $F8 $F8
    dec e                                         ; $78D8: $1D
    inc bc                                        ; $78D9: $03
    ld hl, sp+$00                                 ; $78DA: $F8 $00
    ld e, $03                                     ; $78DC: $1E $03
    nop                                           ; $78DE: $00
    ld hl, sp+$22                                 ; $78DF: $F8 $22
    inc bc                                        ; $78E1: $03
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    inc hl                                        ; $78E4: $23
    inc bc                                        ; $78E5: $03
    add b                                         ; $78E6: $80
    ldh a, [$F8]                                  ; $78E7: $F0 $F8
    dec de                                        ; $78E9: $1B
    inc bc                                        ; $78EA: $03
    ldh a, [rP1]                                  ; $78EB: $F0 $00
    inc e                                         ; $78ED: $1C
    inc bc                                        ; $78EE: $03
    ld hl, sp-$03                                 ; $78EF: $F8 $FD
    rra                                           ; $78F1: $1F
    inc bc                                        ; $78F2: $03
    nop                                           ; $78F3: $00
    ld hl, sp+$24                                 ; $78F4: $F8 $24
    inc bc                                        ; $78F6: $03
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    dec h                                         ; $78F9: $25
    inc bc                                        ; $78FA: $03
    add b                                         ; $78FB: $80
    pop af                                        ; $78FC: $F1
    ld hl, sp+$1B                                 ; $78FD: $F8 $1B
    inc bc                                        ; $78FF: $03
    pop af                                        ; $7900: $F1
    nop                                           ; $7901: $00
    inc e                                         ; $7902: $1C
    inc bc                                        ; $7903: $03
    ld hl, sp-$08                                 ; $7904: $F8 $F8
    jr nz, @+$05                                  ; $7906: $20 $03

    ld hl, sp+$00                                 ; $7908: $F8 $00
    ld hl, $0003                                  ; $790A: $21 $03 $00
    ld hl, sp+$26                                 ; $790D: $F8 $26
    inc bc                                        ; $790F: $03
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    daa                                           ; $7912: $27
    inc bc                                        ; $7913: $03
    add b                                         ; $7914: $80
    pop af                                        ; $7915: $F1
    nop                                           ; $7916: $00
    dec de                                        ; $7917: $1B
    inc hl                                        ; $7918: $23
    pop af                                        ; $7919: $F1
    ld hl, sp+$1C                                 ; $791A: $F8 $1C
    inc hl                                        ; $791C: $23
    ld hl, sp+$00                                 ; $791D: $F8 $00
    dec e                                         ; $791F: $1D
    inc hl                                        ; $7920: $23
    ld hl, sp-$08                                 ; $7921: $F8 $F8
    ld e, $23                                     ; $7923: $1E $23
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    ld [hl+], a                                   ; $7927: $22
    inc hl                                        ; $7928: $23
    nop                                           ; $7929: $00
    ld hl, sp+$23                                 ; $792A: $F8 $23
    inc hl                                        ; $792C: $23
    add b                                         ; $792D: $80
    ldh a, [rP1]                                  ; $792E: $F0 $00
    dec de                                        ; $7930: $1B
    inc hl                                        ; $7931: $23
    ldh a, [$F8]                                  ; $7932: $F0 $F8
    inc e                                         ; $7934: $1C
    inc hl                                        ; $7935: $23
    ld hl, sp-$05                                 ; $7936: $F8 $FB
    rra                                           ; $7938: $1F
    inc hl                                        ; $7939: $23
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    inc h                                         ; $793C: $24
    inc hl                                        ; $793D: $23
    nop                                           ; $793E: $00
    ld hl, sp+$25                                 ; $793F: $F8 $25
    inc hl                                        ; $7941: $23
    add b                                         ; $7942: $80
    pop af                                        ; $7943: $F1
    nop                                           ; $7944: $00
    dec de                                        ; $7945: $1B
    inc hl                                        ; $7946: $23
    pop af                                        ; $7947: $F1
    ld hl, sp+$1C                                 ; $7948: $F8 $1C
    inc hl                                        ; $794A: $23
    ld hl, sp+$00                                 ; $794B: $F8 $00
    jr nz, @+$25                                  ; $794D: $20 $23

    ld hl, sp-$08                                 ; $794F: $F8 $F8
    ld hl, $0023                                  ; $7951: $21 $23 $00
    nop                                           ; $7954: $00
    ld h, $23                                     ; $7955: $26 $23
    nop                                           ; $7957: $00
    ld hl, sp+$27                                 ; $7958: $F8 $27
    inc hl                                        ; $795A: $23
    add b                                         ; $795B: $80
    ld c, l                                       ; $795C: $4D
    ld [$0008], sp                                ; $795D: $08 $08 $00
    rst $38                                       ; $7960: $FF
    adc e                                         ; $7961: $8B
    ld a, b                                       ; $7962: $78
    and b                                         ; $7963: $A0
    ld a, b                                       ; $7964: $78
    cp c                                          ; $7965: $B9
    ld a, b                                       ; $7966: $78
    and b                                         ; $7967: $A0
    ld a, b                                       ; $7968: $78
    ld b, [hl]                                    ; $7969: $46
    ld e, h                                       ; $796A: $5C
    ld a, c                                       ; $796B: $79
    ld c, l                                       ; $796C: $4D
    ld [$0008], sp                                ; $796D: $08 $08 $00
    ld bc, $7848                                  ; $7970: $01 $48 $78
    ld e, l                                       ; $7973: $5D
    ld a, b                                       ; $7974: $78
    halt                                          ; $7975: $76
    ld a, b                                       ; $7976: $78
    ld e, l                                       ; $7977: $5D
    ld a, b                                       ; $7978: $78
    ld b, [hl]                                    ; $7979: $46
    ld l, h                                       ; $797A: $6C
    ld a, c                                       ; $797B: $79
    ld c, l                                       ; $797C: $4D
    ld [$FF08], sp                                ; $797D: $08 $08 $FF
    nop                                           ; $7980: $00
    dec d                                         ; $7981: $15
    ld a, c                                       ; $7982: $79
    ld l, $79                                     ; $7983: $2E $79
    ld b, e                                       ; $7985: $43
    ld a, c                                       ; $7986: $79
    ld l, $79                                     ; $7987: $2E $79
    ld b, [hl]                                    ; $7989: $46
    ld a, h                                       ; $798A: $7C
    ld a, c                                       ; $798B: $79
    ld c, l                                       ; $798C: $4D
    ld [$0108], sp                                ; $798D: $08 $08 $01
    nop                                           ; $7990: $00
    adc $78                                       ; $7991: $CE $78
    rst $20                                       ; $7993: $E7
    ld a, b                                       ; $7994: $78
    db $FC                                        ; $7995: $FC
    ld a, b                                       ; $7996: $78
    rst $20                                       ; $7997: $E7
    ld a, b                                       ; $7998: $78
    ld b, [hl]                                    ; $7999: $46
    adc h                                         ; $799A: $8C
    ld a, c                                       ; $799B: $79
    ld c, l                                       ; $799C: $4D
    ld [$0008], sp                                ; $799D: $08 $08 $00
    cp $8B                                        ; $79A0: $FE $8B
    ld a, b                                       ; $79A2: $78
    and b                                         ; $79A3: $A0
    ld a, b                                       ; $79A4: $78
    cp c                                          ; $79A5: $B9
    ld a, b                                       ; $79A6: $78
    and b                                         ; $79A7: $A0
    ld a, b                                       ; $79A8: $78
    ld b, [hl]                                    ; $79A9: $46
    sbc h                                         ; $79AA: $9C
    ld a, c                                       ; $79AB: $79
    ld c, l                                       ; $79AC: $4D
    ld [$0008], sp                                ; $79AD: $08 $08 $00
    ld [bc], a                                    ; $79B0: $02
    ld c, b                                       ; $79B1: $48
    ld a, b                                       ; $79B2: $78
    ld e, l                                       ; $79B3: $5D
    ld a, b                                       ; $79B4: $78
    halt                                          ; $79B5: $76
    ld a, b                                       ; $79B6: $78
    ld e, l                                       ; $79B7: $5D
    ld a, b                                       ; $79B8: $78
    ld b, [hl]                                    ; $79B9: $46
    xor h                                         ; $79BA: $AC
    ld a, c                                       ; $79BB: $79
    ld c, l                                       ; $79BC: $4D
    ld [$FE08], sp                                ; $79BD: $08 $08 $FE
    nop                                           ; $79C0: $00
    dec d                                         ; $79C1: $15
    ld a, c                                       ; $79C2: $79
    ld l, $79                                     ; $79C3: $2E $79
    ld b, e                                       ; $79C5: $43
    ld a, c                                       ; $79C6: $79
    ld l, $79                                     ; $79C7: $2E $79
    ld b, [hl]                                    ; $79C9: $46
    cp h                                          ; $79CA: $BC
    ld a, c                                       ; $79CB: $79
    ld c, l                                       ; $79CC: $4D
    ld [$0208], sp                                ; $79CD: $08 $08 $02
    nop                                           ; $79D0: $00
    adc $78                                       ; $79D1: $CE $78
    rst $20                                       ; $79D3: $E7
    ld a, b                                       ; $79D4: $78
    db $FC                                        ; $79D5: $FC
    ld a, b                                       ; $79D6: $78
    rst $20                                       ; $79D7: $E7
    ld a, b                                       ; $79D8: $78
    ld b, [hl]                                    ; $79D9: $46
    call z, Call_010_4C79                         ; $79DA: $CC $79 $4C
    rst $38                                       ; $79DD: $FF
    nop                                           ; $79DE: $00
    nop                                           ; $79DF: $00
    and b                                         ; $79E0: $A0
    ld a, b                                       ; $79E1: $78
    nop                                           ; $79E2: $00
    ld b, [hl]                                    ; $79E3: $46
    call c, Call_010_4C79                         ; $79E4: $DC $79 $4C
    rst $38                                       ; $79E7: $FF
    nop                                           ; $79E8: $00
    nop                                           ; $79E9: $00
    ld e, l                                       ; $79EA: $5D
    ld a, b                                       ; $79EB: $78
    nop                                           ; $79EC: $00
    ld b, [hl]                                    ; $79ED: $46
    and $79                                       ; $79EE: $E6 $79
    ld c, h                                       ; $79F0: $4C
    rst $38                                       ; $79F1: $FF
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    ld l, $79                                     ; $79F4: $2E $79
    nop                                           ; $79F6: $00
    ld b, [hl]                                    ; $79F7: $46
    ldh a, [$79]                                  ; $79F8: $F0 $79
    ld c, h                                       ; $79FA: $4C
    rst $38                                       ; $79FB: $FF
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00
    rst $20                                       ; $79FE: $E7
    ld a, b                                       ; $79FF: $78
    nop                                           ; $7A00: $00
    ld b, [hl]                                    ; $7A01: $46
    ld a, [$4C79]                                 ; $7A02: $FA $79 $4C
    rst $38                                       ; $7A05: $FF
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    inc sp                                        ; $7A08: $33
    ld a, b                                       ; $7A09: $78
    nop                                           ; $7A0A: $00
    ld b, [hl]                                    ; $7A0B: $46
    inc b                                         ; $7A0C: $04
    ld a, d                                       ; $7A0D: $7A
    ld c, h                                       ; $7A0E: $4C
    rst $38                                       ; $7A0F: $FF
    nop                                           ; $7A10: $00
    nop                                           ; $7A11: $00
    ld e, $78                                     ; $7A12: $1E $78
    nop                                           ; $7A14: $00
    ld b, [hl]                                    ; $7A15: $46
    ld c, $7A                                     ; $7A16: $0E $7A
    ld c, h                                       ; $7A18: $4C
    rst $38                                       ; $7A19: $FF
    nop                                           ; $7A1A: $00
    nop                                           ; $7A1B: $00
    dec b                                         ; $7A1C: $05
    ld a, b                                       ; $7A1D: $78
    nop                                           ; $7A1E: $00
    ld b, [hl]                                    ; $7A1F: $46
    jr jr_010_7A9C                                ; $7A20: $18 $7A

    ld c, h                                       ; $7A22: $4C
    rst $38                                       ; $7A23: $FF
    nop                                           ; $7A24: $00
    nop                                           ; $7A25: $00
    db $EC                                        ; $7A26: $EC
    ld [hl], a                                    ; $7A27: $77
    nop                                           ; $7A28: $00
    ld b, [hl]                                    ; $7A29: $46
    ld [hl+], a                                   ; $7A2A: $22
    ld a, d                                       ; $7A2B: $7A
    ld c, e                                       ; $7A2C: $4B
    inc bc                                        ; $7A2D: $03
    stop                                          ; $7A2E: $10 $00
    nop                                           ; $7A30: $00
    ld b, e                                       ; $7A31: $43
    ld a, d                                       ; $7A32: $7A
    db $10                                        ; $7A33: $10
    inc bc                                        ; $7A34: $03
    nop                                           ; $7A35: $00
    ld c, d                                       ; $7A36: $4A
    ld a, d                                       ; $7A37: $7A
    db $10                                        ; $7A38: $10
    ld [bc], a                                    ; $7A39: $02
    nop                                           ; $7A3A: $00
    ld e, b                                       ; $7A3B: $58
    ld a, d                                       ; $7A3C: $7A
    db $10                                        ; $7A3D: $10
    ld bc, $5100                                  ; $7A3E: $01 $00 $51
    ld a, d                                       ; $7A41: $7A
    rst $38                                       ; $7A42: $FF
    inc d                                         ; $7A43: $14
    db $10                                        ; $7A44: $10
    call c, $6279                                 ; $7A45: $DC $79 $62
    ld bc, $1412                                  ; $7A48: $01 $12 $14
    db $10                                        ; $7A4B: $10
    and $79                                       ; $7A4C: $E6 $79
    ld h, d                                       ; $7A4E: $62
    ld bc, $1412                                  ; $7A4F: $01 $12 $14
    db $10                                        ; $7A52: $10
    ldh a, [$79]                                  ; $7A53: $F0 $79
    ld h, d                                       ; $7A55: $62
    ld bc, $1412                                  ; $7A56: $01 $12 $14
    db $10                                        ; $7A59: $10
    ld a, [$6279]                                 ; $7A5A: $FA $79 $62
    ld bc, $F012                                  ; $7A5D: $01 $12 $F0
    ld hl, sp+$00                                 ; $7A60: $F8 $00
    inc b                                         ; $7A62: $04
    ldh a, [rP1]                                  ; $7A63: $F0 $00
    ld bc, $F804                                  ; $7A65: $01 $04 $F8
    ld hl, sp+$04                                 ; $7A68: $F8 $04
    inc b                                         ; $7A6A: $04
    ld hl, sp+$00                                 ; $7A6B: $F8 $00
    dec b                                         ; $7A6D: $05
    inc b                                         ; $7A6E: $04
    nop                                           ; $7A6F: $00
    ld hl, sp+$08                                 ; $7A70: $F8 $08
    inc b                                         ; $7A72: $04
    nop                                           ; $7A73: $00
    nop                                           ; $7A74: $00
    add hl, bc                                    ; $7A75: $09
    inc b                                         ; $7A76: $04
    add b                                         ; $7A77: $80
    ldh a, [rP1]                                  ; $7A78: $F0 $00
    nop                                           ; $7A7A: $00
    inc h                                         ; $7A7B: $24
    ldh a, [$F8]                                  ; $7A7C: $F0 $F8
    ld bc, $F824                                  ; $7A7E: $01 $24 $F8
    nop                                           ; $7A81: $00
    inc b                                         ; $7A82: $04
    inc h                                         ; $7A83: $24
    ld hl, sp-$08                                 ; $7A84: $F8 $F8
    dec b                                         ; $7A86: $05
    inc h                                         ; $7A87: $24
    nop                                           ; $7A88: $00
    nop                                           ; $7A89: $00
    ld [$0024], sp                                ; $7A8A: $08 $24 $00
    ld hl, sp+$09                                 ; $7A8D: $F8 $09
    inc h                                         ; $7A8F: $24
    add b                                         ; $7A90: $80
    ldh a, [$F8]                                  ; $7A91: $F0 $F8
    dec c                                         ; $7A93: $0D
    inc b                                         ; $7A94: $04
    ldh a, [rP1]                                  ; $7A95: $F0 $00
    ld c, $04                                     ; $7A97: $0E $04
    nop                                           ; $7A99: $00
    cp $13                                        ; $7A9A: $FE $13

jr_010_7A9C:
    inc b                                         ; $7A9C: $04
    ld hl, sp-$08                                 ; $7A9D: $F8 $F8
    db $10                                        ; $7A9F: $10
    inc b                                         ; $7AA0: $04
    ld hl, sp+$00                                 ; $7AA1: $F8 $00
    ld de, $8004                                  ; $7AA3: $11 $04 $80
    ldh a, [rP1]                                  ; $7AA6: $F0 $00
    dec c                                         ; $7AA8: $0D
    inc h                                         ; $7AA9: $24
    ldh a, [$F8]                                  ; $7AAA: $F0 $F8
    ld c, $24                                     ; $7AAC: $0E $24
    nop                                           ; $7AAE: $00
    ld a, [$2413]                                 ; $7AAF: $FA $13 $24
    ld hl, sp+$00                                 ; $7AB2: $F8 $00
    db $10                                        ; $7AB4: $10
    inc h                                         ; $7AB5: $24
    ld hl, sp-$08                                 ; $7AB6: $F8 $F8
    ld de, $8024                                  ; $7AB8: $11 $24 $80
    pop af                                        ; $7ABB: $F1
    ld hl, sp+$02                                 ; $7ABC: $F8 $02
    inc b                                         ; $7ABE: $04
    pop af                                        ; $7ABF: $F1
    nop                                           ; $7AC0: $00
    inc bc                                        ; $7AC1: $03
    inc b                                         ; $7AC2: $04
    ld hl, sp-$08                                 ; $7AC3: $F8 $F8
    ld d, $04                                     ; $7AC5: $16 $04
    ld hl, sp+$00                                 ; $7AC7: $F8 $00
    rla                                           ; $7AC9: $17
    inc b                                         ; $7ACA: $04
    nop                                           ; $7ACB: $00
    db $FC                                        ; $7ACC: $FC
    jr jr_010_7AD3                                ; $7ACD: $18 $04

    add b                                         ; $7ACF: $80
    nop                                           ; $7AD0: $00
    ld sp, hl                                     ; $7AD1: $F9
    ld a, [bc]                                    ; $7AD2: $0A

jr_010_7AD3:
    inc h                                         ; $7AD3: $24
    nop                                           ; $7AD4: $00
    nop                                           ; $7AD5: $00
    ld a, [bc]                                    ; $7AD6: $0A
    inc b                                         ; $7AD7: $04
    ldh a, [$F8]                                  ; $7AD8: $F0 $F8
    ld [bc], a                                    ; $7ADA: $02
    inc b                                         ; $7ADB: $04
    ldh a, [rP1]                                  ; $7ADC: $F0 $00
    inc bc                                        ; $7ADE: $03
    inc b                                         ; $7ADF: $04
    ld hl, sp-$08                                 ; $7AE0: $F8 $F8
    ld b, $04                                     ; $7AE2: $06 $04
    ld hl, sp+$00                                 ; $7AE4: $F8 $00
    rlca                                          ; $7AE6: $07
    inc b                                         ; $7AE7: $04
    add b                                         ; $7AE8: $80
    ld hl, sp-$08                                 ; $7AE9: $F8 $F8
    add hl, de                                    ; $7AEB: $19
    inc b                                         ; $7AEC: $04
    ld hl, sp+$00                                 ; $7AED: $F8 $00
    ld a, [de]                                    ; $7AEF: $1A
    inc b                                         ; $7AF0: $04
    nop                                           ; $7AF1: $00
    db $FC                                        ; $7AF2: $FC
    jr jr_010_7B19                                ; $7AF3: $18 $24

    pop af                                        ; $7AF5: $F1
    ld hl, sp+$02                                 ; $7AF6: $F8 $02
    inc b                                         ; $7AF8: $04
    pop af                                        ; $7AF9: $F1
    nop                                           ; $7AFA: $00
    inc bc                                        ; $7AFB: $03
    inc b                                         ; $7AFC: $04
    add b                                         ; $7AFD: $80
    pop af                                        ; $7AFE: $F1
    ld hl, sp+$0B                                 ; $7AFF: $F8 $0B
    inc b                                         ; $7B01: $04
    pop af                                        ; $7B02: $F1
    nop                                           ; $7B03: $00
    inc c                                         ; $7B04: $0C
    inc b                                         ; $7B05: $04
    ld hl, sp-$08                                 ; $7B06: $F8 $F8
    dec de                                        ; $7B08: $1B
    inc b                                         ; $7B09: $04
    ld hl, sp+$00                                 ; $7B0A: $F8 $00
    inc e                                         ; $7B0C: $1C
    inc b                                         ; $7B0D: $04
    nop                                           ; $7B0E: $00
    db $FC                                        ; $7B0F: $FC
    dec e                                         ; $7B10: $1D
    inc b                                         ; $7B11: $04
    add b                                         ; $7B12: $80
    ldh a, [$F8]                                  ; $7B13: $F0 $F8
    dec bc                                        ; $7B15: $0B
    inc b                                         ; $7B16: $04
    ldh a, [rP1]                                  ; $7B17: $F0 $00

jr_010_7B19:
    inc c                                         ; $7B19: $0C
    inc b                                         ; $7B1A: $04
    ld hl, sp-$08                                 ; $7B1B: $F8 $F8
    rrca                                          ; $7B1D: $0F
    inc h                                         ; $7B1E: $24
    ld hl, sp+$00                                 ; $7B1F: $F8 $00
    rrca                                          ; $7B21: $0F
    inc b                                         ; $7B22: $04
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    ld [de], a                                    ; $7B25: $12
    inc b                                         ; $7B26: $04
    nop                                           ; $7B27: $00
    ld sp, hl                                     ; $7B28: $F9
    ld [de], a                                    ; $7B29: $12
    inc h                                         ; $7B2A: $24
    add b                                         ; $7B2B: $80
    pop af                                        ; $7B2C: $F1
    ld hl, sp+$0B                                 ; $7B2D: $F8 $0B
    inc b                                         ; $7B2F: $04
    pop af                                        ; $7B30: $F1
    nop                                           ; $7B31: $00
    inc c                                         ; $7B32: $0C
    inc b                                         ; $7B33: $04
    ld hl, sp+$00                                 ; $7B34: $F8 $00
    dec de                                        ; $7B36: $1B
    inc h                                         ; $7B37: $24
    ld hl, sp-$08                                 ; $7B38: $F8 $F8
    inc e                                         ; $7B3A: $1C
    inc h                                         ; $7B3B: $24
    nop                                           ; $7B3C: $00
    db $FC                                        ; $7B3D: $FC
    dec e                                         ; $7B3E: $1D
    inc h                                         ; $7B3F: $24
    add b                                         ; $7B40: $80
    pop af                                        ; $7B41: $F1
    ld hl, sp+$1E                                 ; $7B42: $F8 $1E
    inc b                                         ; $7B44: $04
    pop af                                        ; $7B45: $F1
    nop                                           ; $7B46: $00
    rra                                           ; $7B47: $1F
    inc b                                         ; $7B48: $04
    ld hl, sp-$08                                 ; $7B49: $F8 $F8
    jr nz, @+$06                                  ; $7B4B: $20 $04

    ld hl, sp+$00                                 ; $7B4D: $F8 $00
    ld hl, $0004                                  ; $7B4F: $21 $04 $00
    ld hl, sp+$25                                 ; $7B52: $F8 $25
    inc b                                         ; $7B54: $04
    nop                                           ; $7B55: $00
    nop                                           ; $7B56: $00
    ld h, $04                                     ; $7B57: $26 $04
    add b                                         ; $7B59: $80
    ldh a, [$F8]                                  ; $7B5A: $F0 $F8
    ld e, $04                                     ; $7B5C: $1E $04
    ldh a, [rP1]                                  ; $7B5E: $F0 $00
    rra                                           ; $7B60: $1F
    inc b                                         ; $7B61: $04
    ld hl, sp-$04                                 ; $7B62: $F8 $FC
    ld [hl+], a                                   ; $7B64: $22
    inc b                                         ; $7B65: $04
    nop                                           ; $7B66: $00
    db $FC                                        ; $7B67: $FC
    daa                                           ; $7B68: $27
    inc b                                         ; $7B69: $04
    add b                                         ; $7B6A: $80
    pop af                                        ; $7B6B: $F1
    ld hl, sp+$1E                                 ; $7B6C: $F8 $1E
    inc b                                         ; $7B6E: $04
    pop af                                        ; $7B6F: $F1
    nop                                           ; $7B70: $00
    rra                                           ; $7B71: $1F
    inc b                                         ; $7B72: $04
    ld hl, sp-$08                                 ; $7B73: $F8 $F8
    inc hl                                        ; $7B75: $23
    inc b                                         ; $7B76: $04
    ld hl, sp+$00                                 ; $7B77: $F8 $00
    inc h                                         ; $7B79: $24
    inc b                                         ; $7B7A: $04
    nop                                           ; $7B7B: $00
    ld hl, sp+$28                                 ; $7B7C: $F8 $28
    inc b                                         ; $7B7E: $04
    nop                                           ; $7B7F: $00
    nop                                           ; $7B80: $00
    add hl, hl                                    ; $7B81: $29
    inc b                                         ; $7B82: $04
    add b                                         ; $7B83: $80
    pop af                                        ; $7B84: $F1
    nop                                           ; $7B85: $00
    ld e, $24                                     ; $7B86: $1E $24
    pop af                                        ; $7B88: $F1
    ld hl, sp+$1F                                 ; $7B89: $F8 $1F
    inc h                                         ; $7B8B: $24
    ld hl, sp+$00                                 ; $7B8C: $F8 $00
    jr nz, @+$26                                  ; $7B8E: $20 $24

    ld hl, sp-$08                                 ; $7B90: $F8 $F8
    ld hl, $0024                                  ; $7B92: $21 $24 $00
    nop                                           ; $7B95: $00
    dec h                                         ; $7B96: $25
    inc h                                         ; $7B97: $24
    nop                                           ; $7B98: $00
    ld hl, sp+$26                                 ; $7B99: $F8 $26
    inc h                                         ; $7B9B: $24
    add b                                         ; $7B9C: $80
    ldh a, [rP1]                                  ; $7B9D: $F0 $00
    ld e, $24                                     ; $7B9F: $1E $24
    ldh a, [$F8]                                  ; $7BA1: $F0 $F8
    rra                                           ; $7BA3: $1F
    inc h                                         ; $7BA4: $24
    ld hl, sp-$04                                 ; $7BA5: $F8 $FC
    ld [hl+], a                                   ; $7BA7: $22
    inc h                                         ; $7BA8: $24
    nop                                           ; $7BA9: $00
    db $FC                                        ; $7BAA: $FC
    daa                                           ; $7BAB: $27
    inc h                                         ; $7BAC: $24
    add b                                         ; $7BAD: $80
    pop af                                        ; $7BAE: $F1
    nop                                           ; $7BAF: $00
    ld e, $24                                     ; $7BB0: $1E $24
    pop af                                        ; $7BB2: $F1
    ld hl, sp+$1F                                 ; $7BB3: $F8 $1F
    inc h                                         ; $7BB5: $24
    ld hl, sp+$00                                 ; $7BB6: $F8 $00
    inc hl                                        ; $7BB8: $23
    inc h                                         ; $7BB9: $24
    ld hl, sp-$08                                 ; $7BBA: $F8 $F8
    inc h                                         ; $7BBC: $24
    inc h                                         ; $7BBD: $24
    nop                                           ; $7BBE: $00
    nop                                           ; $7BBF: $00
    jr z, jr_010_7BE6                             ; $7BC0: $28 $24

    nop                                           ; $7BC2: $00
    ld hl, sp+$29                                 ; $7BC3: $F8 $29
    inc h                                         ; $7BC5: $24
    add b                                         ; $7BC6: $80
    ld c, l                                       ; $7BC7: $4D
    ld [$0008], sp                                ; $7BC8: $08 $08 $00
    rst $38                                       ; $7BCB: $FF
    cp $7A                                        ; $7BCC: $FE $7A
    inc de                                        ; $7BCE: $13
    ld a, e                                       ; $7BCF: $7B
    inc l                                         ; $7BD0: $2C
    ld a, e                                       ; $7BD1: $7B
    inc de                                        ; $7BD2: $13
    ld a, e                                       ; $7BD3: $7B
    ld b, [hl]                                    ; $7BD4: $46
    rst $00                                       ; $7BD5: $C7
    ld a, e                                       ; $7BD6: $7B
    ld c, l                                       ; $7BD7: $4D
    ld [$0008], sp                                ; $7BD8: $08 $08 $00
    ld bc, $7ABB                                  ; $7BDB: $01 $BB $7A
    ret nc                                        ; $7BDE: $D0

    ld a, d                                       ; $7BDF: $7A
    jp hl                                         ; $7BE0: $E9


    ld a, d                                       ; $7BE1: $7A
    ret nc                                        ; $7BE2: $D0

    ld a, d                                       ; $7BE3: $7A
    ld b, [hl]                                    ; $7BE4: $46
    rst $10                                       ; $7BE5: $D7

jr_010_7BE6:
    ld a, e                                       ; $7BE6: $7B
    ld c, l                                       ; $7BE7: $4D
    ld [$FF08], sp                                ; $7BE8: $08 $08 $FF
    nop                                           ; $7BEB: $00
    add h                                         ; $7BEC: $84
    ld a, e                                       ; $7BED: $7B
    sbc l                                         ; $7BEE: $9D
    ld a, e                                       ; $7BEF: $7B
    xor [hl]                                      ; $7BF0: $AE
    ld a, e                                       ; $7BF1: $7B
    sbc l                                         ; $7BF2: $9D
    ld a, e                                       ; $7BF3: $7B
    ld b, [hl]                                    ; $7BF4: $46
    rst $20                                       ; $7BF5: $E7
    ld a, e                                       ; $7BF6: $7B
    ld c, l                                       ; $7BF7: $4D
    ld [$0108], sp                                ; $7BF8: $08 $08 $01
    nop                                           ; $7BFB: $00
    ld b, c                                       ; $7BFC: $41
    ld a, e                                       ; $7BFD: $7B
    ld e, d                                       ; $7BFE: $5A
    ld a, e                                       ; $7BFF: $7B
    ld l, e                                       ; $7C00: $6B
    ld a, e                                       ; $7C01: $7B
    ld e, d                                       ; $7C02: $5A
    ld a, e                                       ; $7C03: $7B
    ld b, [hl]                                    ; $7C04: $46
    rst $30                                       ; $7C05: $F7
    ld a, e                                       ; $7C06: $7B
    ld c, l                                       ; $7C07: $4D
    ld [$0008], sp                                ; $7C08: $08 $08 $00
    cp $FE                                        ; $7C0B: $FE $FE
    ld a, d                                       ; $7C0D: $7A
    inc de                                        ; $7C0E: $13
    ld a, e                                       ; $7C0F: $7B
    inc l                                         ; $7C10: $2C
    ld a, e                                       ; $7C11: $7B
    inc de                                        ; $7C12: $13
    ld a, e                                       ; $7C13: $7B
    ld b, [hl]                                    ; $7C14: $46
    rlca                                          ; $7C15: $07
    ld a, h                                       ; $7C16: $7C
    ld c, l                                       ; $7C17: $4D
    ld [$0008], sp                                ; $7C18: $08 $08 $00
    ld [bc], a                                    ; $7C1B: $02
    cp e                                          ; $7C1C: $BB
    ld a, d                                       ; $7C1D: $7A
    ret nc                                        ; $7C1E: $D0

    ld a, d                                       ; $7C1F: $7A
    jp hl                                         ; $7C20: $E9


    ld a, d                                       ; $7C21: $7A
    ret nc                                        ; $7C22: $D0

    ld a, d                                       ; $7C23: $7A
    ld b, [hl]                                    ; $7C24: $46
    rla                                           ; $7C25: $17
    ld a, h                                       ; $7C26: $7C
    ld c, l                                       ; $7C27: $4D
    ld [$FE08], sp                                ; $7C28: $08 $08 $FE
    nop                                           ; $7C2B: $00
    add h                                         ; $7C2C: $84
    ld a, e                                       ; $7C2D: $7B
    sbc l                                         ; $7C2E: $9D
    ld a, e                                       ; $7C2F: $7B
    xor [hl]                                      ; $7C30: $AE
    ld a, e                                       ; $7C31: $7B
    sbc l                                         ; $7C32: $9D
    ld a, e                                       ; $7C33: $7B
    ld b, [hl]                                    ; $7C34: $46
    daa                                           ; $7C35: $27
    ld a, h                                       ; $7C36: $7C
    ld c, l                                       ; $7C37: $4D
    ld [$0208], sp                                ; $7C38: $08 $08 $02
    nop                                           ; $7C3B: $00
    ld b, c                                       ; $7C3C: $41
    ld a, e                                       ; $7C3D: $7B
    ld e, d                                       ; $7C3E: $5A
    ld a, e                                       ; $7C3F: $7B
    ld l, e                                       ; $7C40: $6B
    ld a, e                                       ; $7C41: $7B
    ld e, d                                       ; $7C42: $5A
    ld a, e                                       ; $7C43: $7B
    ld b, [hl]                                    ; $7C44: $46
    scf                                           ; $7C45: $37
    ld a, h                                       ; $7C46: $7C
    ld c, h                                       ; $7C47: $4C
    rst $38                                       ; $7C48: $FF
    nop                                           ; $7C49: $00
    nop                                           ; $7C4A: $00
    inc de                                        ; $7C4B: $13
    ld a, e                                       ; $7C4C: $7B
    nop                                           ; $7C4D: $00
    ld b, [hl]                                    ; $7C4E: $46
    ld b, a                                       ; $7C4F: $47
    ld a, h                                       ; $7C50: $7C
    ld c, h                                       ; $7C51: $4C
    rst $38                                       ; $7C52: $FF
    nop                                           ; $7C53: $00
    nop                                           ; $7C54: $00
    ret nc                                        ; $7C55: $D0

    ld a, d                                       ; $7C56: $7A
    nop                                           ; $7C57: $00
    ld b, [hl]                                    ; $7C58: $46
    ld d, c                                       ; $7C59: $51
    ld a, h                                       ; $7C5A: $7C
    ld c, h                                       ; $7C5B: $4C
    rst $38                                       ; $7C5C: $FF
    nop                                           ; $7C5D: $00
    nop                                           ; $7C5E: $00
    sbc l                                         ; $7C5F: $9D
    ld a, e                                       ; $7C60: $7B
    nop                                           ; $7C61: $00
    ld b, [hl]                                    ; $7C62: $46
    ld e, e                                       ; $7C63: $5B
    ld a, h                                       ; $7C64: $7C
    ld c, h                                       ; $7C65: $4C
    rst $38                                       ; $7C66: $FF
    nop                                           ; $7C67: $00
    nop                                           ; $7C68: $00
    ld e, d                                       ; $7C69: $5A
    ld a, e                                       ; $7C6A: $7B
    nop                                           ; $7C6B: $00
    ld b, [hl]                                    ; $7C6C: $46
    ld h, l                                       ; $7C6D: $65
    ld a, h                                       ; $7C6E: $7C
    ld c, h                                       ; $7C6F: $4C
    rst $38                                       ; $7C70: $FF
    nop                                           ; $7C71: $00
    nop                                           ; $7C72: $00
    and [hl]                                      ; $7C73: $A6
    ld a, d                                       ; $7C74: $7A
    nop                                           ; $7C75: $00
    ld b, [hl]                                    ; $7C76: $46
    ld l, a                                       ; $7C77: $6F
    ld a, h                                       ; $7C78: $7C
    ld c, h                                       ; $7C79: $4C
    rst $38                                       ; $7C7A: $FF
    nop                                           ; $7C7B: $00
    nop                                           ; $7C7C: $00
    sub c                                         ; $7C7D: $91
    ld a, d                                       ; $7C7E: $7A
    nop                                           ; $7C7F: $00
    ld b, [hl]                                    ; $7C80: $46
    ld a, c                                       ; $7C81: $79
    ld a, h                                       ; $7C82: $7C
    ld c, h                                       ; $7C83: $4C
    rst $38                                       ; $7C84: $FF
    nop                                           ; $7C85: $00
    nop                                           ; $7C86: $00
    ld a, b                                       ; $7C87: $78
    ld a, d                                       ; $7C88: $7A
    nop                                           ; $7C89: $00
    ld b, [hl]                                    ; $7C8A: $46
    add e                                         ; $7C8B: $83
    ld a, h                                       ; $7C8C: $7C
    ld c, h                                       ; $7C8D: $4C
    rst $38                                       ; $7C8E: $FF
    nop                                           ; $7C8F: $00
    nop                                           ; $7C90: $00
    ld e, a                                       ; $7C91: $5F
    ld a, d                                       ; $7C92: $7A
    nop                                           ; $7C93: $00
    ld b, [hl]                                    ; $7C94: $46
    adc l                                         ; $7C95: $8D
    ld a, h                                       ; $7C96: $7C
    ld c, e                                       ; $7C97: $4B
    inc bc                                        ; $7C98: $03
    stop                                          ; $7C99: $10 $00
    nop                                           ; $7C9B: $00
    xor [hl]                                      ; $7C9C: $AE
    ld a, h                                       ; $7C9D: $7C
    db $10                                        ; $7C9E: $10
    inc bc                                        ; $7C9F: $03
    nop                                           ; $7CA0: $00
    or l                                          ; $7CA1: $B5
    ld a, h                                       ; $7CA2: $7C
    db $10                                        ; $7CA3: $10
    ld [bc], a                                    ; $7CA4: $02
    nop                                           ; $7CA5: $00
    jp $107C                                      ; $7CA6: $C3 $7C $10


    ld bc, $BC00                                  ; $7CA9: $01 $00 $BC
    ld a, h                                       ; $7CAC: $7C
    rst $38                                       ; $7CAD: $FF
    inc d                                         ; $7CAE: $14
    db $10                                        ; $7CAF: $10
    ld b, a                                       ; $7CB0: $47
    ld a, h                                       ; $7CB1: $7C
    ld h, d                                       ; $7CB2: $62
    ld bc, $1412                                  ; $7CB3: $01 $12 $14
    db $10                                        ; $7CB6: $10
    ld d, c                                       ; $7CB7: $51
    ld a, h                                       ; $7CB8: $7C
    ld h, d                                       ; $7CB9: $62
    ld bc, $1412                                  ; $7CBA: $01 $12 $14
    db $10                                        ; $7CBD: $10
    ld e, e                                       ; $7CBE: $5B
    ld a, h                                       ; $7CBF: $7C
    ld h, d                                       ; $7CC0: $62
    ld bc, $1412                                  ; $7CC1: $01 $12 $14
    db $10                                        ; $7CC4: $10
    ld h, l                                       ; $7CC5: $65
    ld a, h                                       ; $7CC6: $7C
    ld h, d                                       ; $7CC7: $62
    ld bc, $F012                                  ; $7CC8: $01 $12 $F0
    ld hl, sp+$00                                 ; $7CCB: $F8 $00
    inc b                                         ; $7CCD: $04
    ldh a, [rP1]                                  ; $7CCE: $F0 $00
    ld bc, $F804                                  ; $7CD0: $01 $04 $F8
    ld hl, sp+$04                                 ; $7CD3: $F8 $04
    inc b                                         ; $7CD5: $04
    ld hl, sp+$00                                 ; $7CD6: $F8 $00
    dec b                                         ; $7CD8: $05
    inc b                                         ; $7CD9: $04
    nop                                           ; $7CDA: $00
    ld hl, sp+$06                                 ; $7CDB: $F8 $06
    inc b                                         ; $7CDD: $04
    nop                                           ; $7CDE: $00
    nop                                           ; $7CDF: $00
    rlca                                          ; $7CE0: $07
    inc b                                         ; $7CE1: $04
    add b                                         ; $7CE2: $80
    ldh a, [rP1]                                  ; $7CE3: $F0 $00
    nop                                           ; $7CE5: $00
    inc h                                         ; $7CE6: $24
    ldh a, [$F8]                                  ; $7CE7: $F0 $F8
    ld bc, $F824                                  ; $7CE9: $01 $24 $F8
    nop                                           ; $7CEC: $00
    inc b                                         ; $7CED: $04
    inc h                                         ; $7CEE: $24
    ld hl, sp-$08                                 ; $7CEF: $F8 $F8
    dec b                                         ; $7CF1: $05
    inc h                                         ; $7CF2: $24
    nop                                           ; $7CF3: $00
    nop                                           ; $7CF4: $00
    ld b, $24                                     ; $7CF5: $06 $24
    nop                                           ; $7CF7: $00
    ld hl, sp+$07                                 ; $7CF8: $F8 $07
    inc h                                         ; $7CFA: $24
    add b                                         ; $7CFB: $80
    ldh a, [$F8]                                  ; $7CFC: $F0 $F8
    inc c                                         ; $7CFE: $0C
    inc b                                         ; $7CFF: $04
    ldh a, [rP1]                                  ; $7D00: $F0 $00
    dec c                                         ; $7D02: $0D
    inc b                                         ; $7D03: $04
    ld hl, sp-$04                                 ; $7D04: $F8 $FC
    rrca                                          ; $7D06: $0F
    inc b                                         ; $7D07: $04
    nop                                           ; $7D08: $00
    db $FD                                        ; $7D09: $FD
    ld de, $8004                                  ; $7D0A: $11 $04 $80
    ldh a, [rSB]                                  ; $7D0D: $F0 $01
    inc c                                         ; $7D0F: $0C
    inc h                                         ; $7D10: $24
    ldh a, [$F9]                                  ; $7D11: $F0 $F9
    dec c                                         ; $7D13: $0D
    inc h                                         ; $7D14: $24
    ld hl, sp-$04                                 ; $7D15: $F8 $FC
    rrca                                          ; $7D17: $0F
    inc h                                         ; $7D18: $24
    nop                                           ; $7D19: $00
    ei                                            ; $7D1A: $FB
    ld de, $8024                                  ; $7D1B: $11 $24 $80
    pop af                                        ; $7D1E: $F1
    ld hl, sp+$02                                 ; $7D1F: $F8 $02
    inc b                                         ; $7D21: $04
    pop af                                        ; $7D22: $F1
    nop                                           ; $7D23: $00
    inc bc                                        ; $7D24: $03
    inc b                                         ; $7D25: $04
    ld hl, sp-$08                                 ; $7D26: $F8 $F8
    ld [de], a                                    ; $7D28: $12
    inc b                                         ; $7D29: $04
    ld hl, sp+$00                                 ; $7D2A: $F8 $00
    inc de                                        ; $7D2C: $13
    inc b                                         ; $7D2D: $04
    nop                                           ; $7D2E: $00
    db $FC                                        ; $7D2F: $FC
    inc d                                         ; $7D30: $14
    inc b                                         ; $7D31: $04
    add b                                         ; $7D32: $80
    ldh a, [$F8]                                  ; $7D33: $F0 $F8
    ld [bc], a                                    ; $7D35: $02
    inc b                                         ; $7D36: $04
    ldh a, [rP1]                                  ; $7D37: $F0 $00
    inc bc                                        ; $7D39: $03
    inc b                                         ; $7D3A: $04
    nop                                           ; $7D3B: $00
    ld sp, hl                                     ; $7D3C: $F9
    add hl, bc                                    ; $7D3D: $09
    inc h                                         ; $7D3E: $24
    nop                                           ; $7D3F: $00
    nop                                           ; $7D40: $00
    add hl, bc                                    ; $7D41: $09
    inc b                                         ; $7D42: $04
    ld hl, sp+$00                                 ; $7D43: $F8 $00
    ld [$F804], sp                                ; $7D45: $08 $04 $F8
    ld hl, sp+$08                                 ; $7D48: $F8 $08
    inc h                                         ; $7D4A: $24
    add b                                         ; $7D4B: $80
    pop af                                        ; $7D4C: $F1
    ld hl, sp+$02                                 ; $7D4D: $F8 $02
    inc b                                         ; $7D4F: $04
    pop af                                        ; $7D50: $F1
    nop                                           ; $7D51: $00
    inc bc                                        ; $7D52: $03
    inc b                                         ; $7D53: $04
    ld hl, sp+$00                                 ; $7D54: $F8 $00
    ld [de], a                                    ; $7D56: $12
    inc h                                         ; $7D57: $24
    ld hl, sp-$08                                 ; $7D58: $F8 $F8
    inc de                                        ; $7D5A: $13
    inc h                                         ; $7D5B: $24
    nop                                           ; $7D5C: $00
    db $FC                                        ; $7D5D: $FC
    inc d                                         ; $7D5E: $14
    inc h                                         ; $7D5F: $24
    add b                                         ; $7D60: $80
    pop af                                        ; $7D61: $F1
    ld hl, sp+$0A                                 ; $7D62: $F8 $0A
    inc b                                         ; $7D64: $04
    pop af                                        ; $7D65: $F1
    nop                                           ; $7D66: $00
    dec bc                                        ; $7D67: $0B
    inc b                                         ; $7D68: $04
    nop                                           ; $7D69: $00
    db $FC                                        ; $7D6A: $FC
    rla                                           ; $7D6B: $17
    inc b                                         ; $7D6C: $04
    ld hl, sp-$08                                 ; $7D6D: $F8 $F8
    dec d                                         ; $7D6F: $15
    inc b                                         ; $7D70: $04
    ld hl, sp+$00                                 ; $7D71: $F8 $00
    ld d, $04                                     ; $7D73: $16 $04
    add b                                         ; $7D75: $80
    ldh a, [$F8]                                  ; $7D76: $F0 $F8
    ld a, [bc]                                    ; $7D78: $0A
    inc b                                         ; $7D79: $04
    ldh a, [rP1]                                  ; $7D7A: $F0 $00
    dec bc                                        ; $7D7C: $0B
    inc b                                         ; $7D7D: $04
    ld hl, sp+$00                                 ; $7D7E: $F8 $00
    ld c, $04                                     ; $7D80: $0E $04
    ld hl, sp-$08                                 ; $7D82: $F8 $F8
    ld c, $24                                     ; $7D84: $0E $24
    nop                                           ; $7D86: $00
    nop                                           ; $7D87: $00
    db $10                                        ; $7D88: $10
    inc b                                         ; $7D89: $04
    nop                                           ; $7D8A: $00
    ld sp, hl                                     ; $7D8B: $F9
    db $10                                        ; $7D8C: $10
    inc h                                         ; $7D8D: $24
    add b                                         ; $7D8E: $80
    pop af                                        ; $7D8F: $F1
    ld hl, sp+$0A                                 ; $7D90: $F8 $0A
    inc b                                         ; $7D92: $04
    pop af                                        ; $7D93: $F1
    nop                                           ; $7D94: $00
    dec bc                                        ; $7D95: $0B
    inc b                                         ; $7D96: $04
    nop                                           ; $7D97: $00
    db $FC                                        ; $7D98: $FC
    rla                                           ; $7D99: $17
    inc h                                         ; $7D9A: $24
    ld hl, sp+$00                                 ; $7D9B: $F8 $00
    dec d                                         ; $7D9D: $15
    inc h                                         ; $7D9E: $24
    ld hl, sp-$08                                 ; $7D9F: $F8 $F8
    ld d, $24                                     ; $7DA1: $16 $24
    add b                                         ; $7DA3: $80
    pop af                                        ; $7DA4: $F1
    ld hl, sp+$18                                 ; $7DA5: $F8 $18
    inc b                                         ; $7DA7: $04
    pop af                                        ; $7DA8: $F1
    nop                                           ; $7DA9: $00
    add hl, de                                    ; $7DAA: $19
    inc b                                         ; $7DAB: $04
    ld hl, sp-$08                                 ; $7DAC: $F8 $F8
    ld a, [de]                                    ; $7DAE: $1A
    inc b                                         ; $7DAF: $04
    ld hl, sp+$00                                 ; $7DB0: $F8 $00
    dec de                                        ; $7DB2: $1B
    inc b                                         ; $7DB3: $04
    nop                                           ; $7DB4: $00
    ld hl, sp+$20                                 ; $7DB5: $F8 $20
    inc b                                         ; $7DB7: $04
    nop                                           ; $7DB8: $00
    nop                                           ; $7DB9: $00
    ld hl, $8004                                  ; $7DBA: $21 $04 $80
    ldh a, [$F8]                                  ; $7DBD: $F0 $F8
    jr jr_010_7DC5                                ; $7DBF: $18 $04

    ldh a, [rP1]                                  ; $7DC1: $F0 $00
    add hl, de                                    ; $7DC3: $19
    inc b                                         ; $7DC4: $04

jr_010_7DC5:
    ld hl, sp-$08                                 ; $7DC5: $F8 $F8
    inc e                                         ; $7DC7: $1C
    inc b                                         ; $7DC8: $04
    ld hl, sp+$00                                 ; $7DC9: $F8 $00
    dec e                                         ; $7DCB: $1D
    inc b                                         ; $7DCC: $04
    nop                                           ; $7DCD: $00
    db $FC                                        ; $7DCE: $FC
    ld [hl+], a                                   ; $7DCF: $22
    inc b                                         ; $7DD0: $04
    add b                                         ; $7DD1: $80
    pop af                                        ; $7DD2: $F1
    ld hl, sp+$18                                 ; $7DD3: $F8 $18
    inc b                                         ; $7DD5: $04
    pop af                                        ; $7DD6: $F1
    nop                                           ; $7DD7: $00
    add hl, de                                    ; $7DD8: $19
    inc b                                         ; $7DD9: $04
    ld hl, sp-$08                                 ; $7DDA: $F8 $F8
    ld e, $04                                     ; $7DDC: $1E $04
    ld hl, sp+$00                                 ; $7DDE: $F8 $00
    rra                                           ; $7DE0: $1F
    inc b                                         ; $7DE1: $04
    nop                                           ; $7DE2: $00
    ld hl, sp+$23                                 ; $7DE3: $F8 $23
    inc b                                         ; $7DE5: $04
    nop                                           ; $7DE6: $00
    nop                                           ; $7DE7: $00
    inc h                                         ; $7DE8: $24
    inc b                                         ; $7DE9: $04
    add b                                         ; $7DEA: $80
    pop af                                        ; $7DEB: $F1
    nop                                           ; $7DEC: $00
    jr jr_010_7E13                                ; $7DED: $18 $24

    pop af                                        ; $7DEF: $F1
    ld hl, sp+$19                                 ; $7DF0: $F8 $19
    inc h                                         ; $7DF2: $24
    ld hl, sp+$00                                 ; $7DF3: $F8 $00
    ld a, [de]                                    ; $7DF5: $1A
    inc h                                         ; $7DF6: $24
    ld hl, sp-$08                                 ; $7DF7: $F8 $F8
    dec de                                        ; $7DF9: $1B
    inc h                                         ; $7DFA: $24
    nop                                           ; $7DFB: $00
    nop                                           ; $7DFC: $00
    jr nz, jr_010_7E23                            ; $7DFD: $20 $24

    nop                                           ; $7DFF: $00
    ld hl, sp+$21                                 ; $7E00: $F8 $21
    inc h                                         ; $7E02: $24
    add b                                         ; $7E03: $80
    ldh a, [rP1]                                  ; $7E04: $F0 $00
    jr jr_010_7E2C                                ; $7E06: $18 $24

    ldh a, [$F8]                                  ; $7E08: $F0 $F8
    add hl, de                                    ; $7E0A: $19
    inc h                                         ; $7E0B: $24
    ld hl, sp+$00                                 ; $7E0C: $F8 $00
    inc e                                         ; $7E0E: $1C
    inc h                                         ; $7E0F: $24
    ld hl, sp-$08                                 ; $7E10: $F8 $F8
    dec e                                         ; $7E12: $1D

jr_010_7E13:
    inc h                                         ; $7E13: $24
    nop                                           ; $7E14: $00
    db $FC                                        ; $7E15: $FC
    ld [hl+], a                                   ; $7E16: $22
    inc h                                         ; $7E17: $24
    add b                                         ; $7E18: $80
    pop af                                        ; $7E19: $F1
    nop                                           ; $7E1A: $00
    jr jr_010_7E41                                ; $7E1B: $18 $24

    pop af                                        ; $7E1D: $F1
    ld hl, sp+$19                                 ; $7E1E: $F8 $19
    inc h                                         ; $7E20: $24
    ld hl, sp+$00                                 ; $7E21: $F8 $00

jr_010_7E23:
    ld e, $24                                     ; $7E23: $1E $24
    ld hl, sp-$08                                 ; $7E25: $F8 $F8
    rra                                           ; $7E27: $1F
    inc h                                         ; $7E28: $24
    nop                                           ; $7E29: $00
    nop                                           ; $7E2A: $00
    inc hl                                        ; $7E2B: $23

jr_010_7E2C:
    inc h                                         ; $7E2C: $24
    nop                                           ; $7E2D: $00
    ld hl, sp+$24                                 ; $7E2E: $F8 $24
    inc h                                         ; $7E30: $24
    add b                                         ; $7E31: $80
    ld c, l                                       ; $7E32: $4D
    ld [$0008], sp                                ; $7E33: $08 $08 $00
    rst $38                                       ; $7E36: $FF
    ld h, c                                       ; $7E37: $61
    ld a, l                                       ; $7E38: $7D
    halt                                          ; $7E39: $76
    ld a, l                                       ; $7E3A: $7D
    adc a                                         ; $7E3B: $8F
    ld a, l                                       ; $7E3C: $7D
    halt                                          ; $7E3D: $76
    ld a, l                                       ; $7E3E: $7D
    ld b, [hl]                                    ; $7E3F: $46
    ld [hl-], a                                   ; $7E40: $32

jr_010_7E41:
    ld a, [hl]                                    ; $7E41: $7E
    ld c, l                                       ; $7E42: $4D
    ld [$0008], sp                                ; $7E43: $08 $08 $00
    ld bc, $7D1E                                  ; $7E46: $01 $1E $7D
    inc sp                                        ; $7E49: $33
    ld a, l                                       ; $7E4A: $7D
    ld c, h                                       ; $7E4B: $4C
    ld a, l                                       ; $7E4C: $7D
    inc sp                                        ; $7E4D: $33
    ld a, l                                       ; $7E4E: $7D
    ld b, [hl]                                    ; $7E4F: $46
    ld b, d                                       ; $7E50: $42
    ld a, [hl]                                    ; $7E51: $7E
    ld c, l                                       ; $7E52: $4D
    ld [$FF08], sp                                ; $7E53: $08 $08 $FF
    nop                                           ; $7E56: $00
    db $EB                                        ; $7E57: $EB
    ld a, l                                       ; $7E58: $7D
    inc b                                         ; $7E59: $04
    ld a, [hl]                                    ; $7E5A: $7E
    add hl, de                                    ; $7E5B: $19
    ld a, [hl]                                    ; $7E5C: $7E
    inc b                                         ; $7E5D: $04
    ld a, [hl]                                    ; $7E5E: $7E
    ld b, [hl]                                    ; $7E5F: $46
    ld d, d                                       ; $7E60: $52
    ld a, [hl]                                    ; $7E61: $7E
    ld c, l                                       ; $7E62: $4D
    ld [$0108], sp                                ; $7E63: $08 $08 $01
    nop                                           ; $7E66: $00
    and h                                         ; $7E67: $A4
    ld a, l                                       ; $7E68: $7D
    cp l                                          ; $7E69: $BD
    ld a, l                                       ; $7E6A: $7D
    jp nc, $BD7D                                  ; $7E6B: $D2 $7D $BD

    ld a, l                                       ; $7E6E: $7D
    ld b, [hl]                                    ; $7E6F: $46
    ld h, d                                       ; $7E70: $62
    ld a, [hl]                                    ; $7E71: $7E
    ld c, l                                       ; $7E72: $4D
    ld [$0008], sp                                ; $7E73: $08 $08 $00
    cp $61                                        ; $7E76: $FE $61
    ld a, l                                       ; $7E78: $7D
    halt                                          ; $7E79: $76
    ld a, l                                       ; $7E7A: $7D
    adc a                                         ; $7E7B: $8F
    ld a, l                                       ; $7E7C: $7D
    halt                                          ; $7E7D: $76
    ld a, l                                       ; $7E7E: $7D
    ld b, [hl]                                    ; $7E7F: $46
    ld [hl], d                                    ; $7E80: $72
    ld a, [hl]                                    ; $7E81: $7E
    ld c, l                                       ; $7E82: $4D
    ld [$0008], sp                                ; $7E83: $08 $08 $00
    ld [bc], a                                    ; $7E86: $02
    ld e, $7D                                     ; $7E87: $1E $7D
    inc sp                                        ; $7E89: $33
    ld a, l                                       ; $7E8A: $7D
    ld c, h                                       ; $7E8B: $4C
    ld a, l                                       ; $7E8C: $7D
    inc sp                                        ; $7E8D: $33
    ld a, l                                       ; $7E8E: $7D
    ld b, [hl]                                    ; $7E8F: $46
    add d                                         ; $7E90: $82
    ld a, [hl]                                    ; $7E91: $7E
    ld c, l                                       ; $7E92: $4D
    ld [$FE08], sp                                ; $7E93: $08 $08 $FE
    nop                                           ; $7E96: $00
    db $EB                                        ; $7E97: $EB
    ld a, l                                       ; $7E98: $7D
    inc b                                         ; $7E99: $04
    ld a, [hl]                                    ; $7E9A: $7E
    add hl, de                                    ; $7E9B: $19
    ld a, [hl]                                    ; $7E9C: $7E
    inc b                                         ; $7E9D: $04
    ld a, [hl]                                    ; $7E9E: $7E
    ld b, [hl]                                    ; $7E9F: $46
    sub d                                         ; $7EA0: $92
    ld a, [hl]                                    ; $7EA1: $7E
    ld c, l                                       ; $7EA2: $4D
    ld [$0208], sp                                ; $7EA3: $08 $08 $02
    nop                                           ; $7EA6: $00
    and h                                         ; $7EA7: $A4
    ld a, l                                       ; $7EA8: $7D
    cp l                                          ; $7EA9: $BD
    ld a, l                                       ; $7EAA: $7D
    jp nc, $BD7D                                  ; $7EAB: $D2 $7D $BD

    ld a, l                                       ; $7EAE: $7D
    ld b, [hl]                                    ; $7EAF: $46
    and d                                         ; $7EB0: $A2
    ld a, [hl]                                    ; $7EB1: $7E
    ld c, h                                       ; $7EB2: $4C
    rst $38                                       ; $7EB3: $FF
    nop                                           ; $7EB4: $00
    nop                                           ; $7EB5: $00
    halt                                          ; $7EB6: $76
    ld a, l                                       ; $7EB7: $7D
    nop                                           ; $7EB8: $00
    ld b, [hl]                                    ; $7EB9: $46
    or d                                          ; $7EBA: $B2
    ld a, [hl]                                    ; $7EBB: $7E
    ld c, h                                       ; $7EBC: $4C
    rst $38                                       ; $7EBD: $FF
    nop                                           ; $7EBE: $00
    nop                                           ; $7EBF: $00
    inc sp                                        ; $7EC0: $33
    ld a, l                                       ; $7EC1: $7D
    nop                                           ; $7EC2: $00
    ld b, [hl]                                    ; $7EC3: $46
    cp h                                          ; $7EC4: $BC
    ld a, [hl]                                    ; $7EC5: $7E
    ld c, h                                       ; $7EC6: $4C
    rst $38                                       ; $7EC7: $FF
    nop                                           ; $7EC8: $00
    nop                                           ; $7EC9: $00
    inc b                                         ; $7ECA: $04
    ld a, [hl]                                    ; $7ECB: $7E
    nop                                           ; $7ECC: $00
    ld b, [hl]                                    ; $7ECD: $46
    add $7E                                       ; $7ECE: $C6 $7E
    ld c, h                                       ; $7ED0: $4C
    rst $38                                       ; $7ED1: $FF
    nop                                           ; $7ED2: $00
    nop                                           ; $7ED3: $00
    cp l                                          ; $7ED4: $BD
    ld a, l                                       ; $7ED5: $7D
    nop                                           ; $7ED6: $00
    ld b, [hl]                                    ; $7ED7: $46
    ret nc                                        ; $7ED8: $D0

    ld a, [hl]                                    ; $7ED9: $7E
    ld c, h                                       ; $7EDA: $4C
    rst $38                                       ; $7EDB: $FF
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    dec c                                         ; $7EDE: $0D
    ld a, l                                       ; $7EDF: $7D
    nop                                           ; $7EE0: $00
    ld b, [hl]                                    ; $7EE1: $46
    jp c, Jump_010_4C7E                           ; $7EE2: $DA $7E $4C

    rst $38                                       ; $7EE5: $FF
    nop                                           ; $7EE6: $00
    nop                                           ; $7EE7: $00
    db $FC                                        ; $7EE8: $FC
    ld a, h                                       ; $7EE9: $7C
    nop                                           ; $7EEA: $00
    ld b, [hl]                                    ; $7EEB: $46
    db $E4                                        ; $7EEC: $E4
    ld a, [hl]                                    ; $7EED: $7E
    ld c, h                                       ; $7EEE: $4C
    rst $38                                       ; $7EEF: $FF
    nop                                           ; $7EF0: $00
    nop                                           ; $7EF1: $00
    db $E3                                        ; $7EF2: $E3
    ld a, h                                       ; $7EF3: $7C
    nop                                           ; $7EF4: $00
    ld b, [hl]                                    ; $7EF5: $46
    xor $7E                                       ; $7EF6: $EE $7E
    ld c, h                                       ; $7EF8: $4C
    rst $38                                       ; $7EF9: $FF
    nop                                           ; $7EFA: $00
    nop                                           ; $7EFB: $00
    jp z, $007C                                   ; $7EFC: $CA $7C $00

    ld b, [hl]                                    ; $7EFF: $46
    ld hl, sp+$7E                                 ; $7F00: $F8 $7E
    ld c, e                                       ; $7F02: $4B
    inc bc                                        ; $7F03: $03
    stop                                          ; $7F04: $10 $00
    nop                                           ; $7F06: $00
    add hl, de                                    ; $7F07: $19
    ld a, a                                       ; $7F08: $7F
    db $10                                        ; $7F09: $10
    inc bc                                        ; $7F0A: $03
    nop                                           ; $7F0B: $00
    jr nz, jr_010_7F8D                            ; $7F0C: $20 $7F

    db $10                                        ; $7F0E: $10
    ld [bc], a                                    ; $7F0F: $02
    nop                                           ; $7F10: $00
    ld l, $7F                                     ; $7F11: $2E $7F
    db $10                                        ; $7F13: $10
    ld bc, $2700                                  ; $7F14: $01 $00 $27
    ld a, a                                       ; $7F17: $7F
    rst $38                                       ; $7F18: $FF
    inc d                                         ; $7F19: $14
    db $10                                        ; $7F1A: $10
    or d                                          ; $7F1B: $B2
    ld a, [hl]                                    ; $7F1C: $7E
    ld h, d                                       ; $7F1D: $62
    ld bc, $1412                                  ; $7F1E: $01 $12 $14
    db $10                                        ; $7F21: $10
    cp h                                          ; $7F22: $BC
    ld a, [hl]                                    ; $7F23: $7E
    ld h, d                                       ; $7F24: $62
    ld bc, $1412                                  ; $7F25: $01 $12 $14
    db $10                                        ; $7F28: $10
    add $7E                                       ; $7F29: $C6 $7E
    ld h, d                                       ; $7F2B: $62
    ld bc, $1412                                  ; $7F2C: $01 $12 $14
    db $10                                        ; $7F2F: $10
    ret nc                                        ; $7F30: $D0

    ld a, [hl]                                    ; $7F31: $7E
    ld h, d                                       ; $7F32: $62
    ld bc, $0012                                  ; $7F33: $01 $12 $00
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

jr_010_7F8D:
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
