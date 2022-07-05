SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    sub h                                         ; $4000: $94
    db $20, $8C                                   ; $4001: $20 $8C
    ld h, b                                       ; $4003: $60
    sub h                                         ; $4004: $94
    db $20, $8C                                   ; $4005: $20 $8C
    ld h, b                                       ; $4007: $60
    sub h                                         ; $4008: $94
    db $20, $8C                                   ; $4009: $20 $8C
    ld h, b                                       ; $400B: $60
    sub h                                         ; $400C: $94
    db $20, $8C                                   ; $400D: $20 $8C
    ld h, b                                       ; $400F: $60
    sub h                                         ; $4010: $94
    db $20, $8C                                   ; $4011: $20 $8C
    ld h, b                                       ; $4013: $60
    sub h                                         ; $4014: $94
    db $20, $8C                                   ; $4015: $20 $8C
    ld h, b                                       ; $4017: $60
    sub h                                         ; $4018: $94
    db $20, $8C                                   ; $4019: $20 $8C
    ld h, b                                       ; $401B: $60
    add d                                         ; $401C: $82
    db $20, $89                                   ; $401D: $20 $89
    ld [$2001], sp                                ; $401F: $08 $01 $20
    add d                                         ; $4022: $82
    ld [$2086], sp                                ; $4023: $08 $86 $20
    adc h                                         ; $4026: $8C
    ld h, b                                       ; $4027: $60
    sub h                                         ; $4028: $94
    db $20, $8C                                   ; $4029: $20 $8C
    ld h, b                                       ; $402B: $60
    sub h                                         ; $402C: $94
    db $20, $8C                                   ; $402D: $20 $8C
    ld h, b                                       ; $402F: $60
    add h                                         ; $4030: $84
    db $20, $86                                   ; $4031: $20 $86
    ld [$2801], sp                                ; $4033: $08 $01 $28
    add d                                         ; $4036: $82
    db $20, $85                                   ; $4037: $20 $85
    ld [$2082], sp                                ; $4039: $08 $82 $20
    adc h                                         ; $403C: $8C
    ld h, b                                       ; $403D: $60
    sub h                                         ; $403E: $94
    db $20, $8C                                   ; $403F: $20 $8C
    ld h, b                                       ; $4041: $60
    sub h                                         ; $4042: $94
    db $20, $8C                                   ; $4043: $20 $8C
    ld h, b                                       ; $4045: $60
    sub h                                         ; $4046: $94
    db $20, $8C                                   ; $4047: $20 $8C
    ld h, b                                       ; $4049: $60
    sub h                                         ; $404A: $94
    db $20, $8C                                   ; $404B: $20 $8C
    ld h, b                                       ; $404D: $60
    sub h                                         ; $404E: $94
    db $20, $8C                                   ; $404F: $20 $8C

Jump_026_4051:
    ld h, b                                       ; $4051: $60
    sub h                                         ; $4052: $94
    db $20, $8C                                   ; $4053: $20 $8C
    ld h, b                                       ; $4055: $60
    sub h                                         ; $4056: $94
    jr nz, @-$3D                                  ; $4057: $20 $C1

jr_026_4059:
    call z, $0060                                 ; $4059: $CC $60 $00
    sub h                                         ; $405C: $94

jr_026_405D:
    ld l, [hl]                                    ; $405D: $6E
    adc h                                         ; $405E: $8C
    ld a, [hl]                                    ; $405F: $7E
    sub h                                         ; $4060: $94

jr_026_4061:
    ld l, [hl]                                    ; $4061: $6E
    adc h                                         ; $4062: $8C
    ld a, [hl]                                    ; $4063: $7E

Jump_026_4064:
    sub h                                         ; $4064: $94

jr_026_4065:
    ld l, [hl]                                    ; $4065: $6E
    adc h                                         ; $4066: $8C
    ld a, [hl]                                    ; $4067: $7E
    sub h                                         ; $4068: $94

jr_026_4069:
    ld l, [hl]                                    ; $4069: $6E
    adc h                                         ; $406A: $8C
    ld a, [hl]                                    ; $406B: $7E
    sub h                                         ; $406C: $94

jr_026_406D:
    ld l, [hl]                                    ; $406D: $6E
    adc h                                         ; $406E: $8C
    ld a, [hl]                                    ; $406F: $7E

jr_026_4070:
    sub h                                         ; $4070: $94
    ld l, [hl]                                    ; $4071: $6E
    adc h                                         ; $4072: $8C
    ld a, [hl]                                    ; $4073: $7E
    sub h                                         ; $4074: $94
    ld l, [hl]                                    ; $4075: $6E
    adc h                                         ; $4076: $8C
    ld a, [hl]                                    ; $4077: $7E
    add d                                         ; $4078: $82
    ld l, [hl]                                    ; $4079: $6E
    inc c                                         ; $407A: $0C
    ret nc                                        ; $407B: $D0

    ld a, [c]                                     ; $407C: $F2
    push hl                                       ; $407D: $E5
    di                                            ; $407E: $F3
    push hl                                       ; $407F: $E5
    xor $F4                                       ; $4080: $EE $F4
    push hl                                       ; $4082: $E5
    db $E4                                        ; $4083: $E4
    ld l, [hl]                                    ; $4084: $6E
    ld [c], a                                     ; $4085: $E2
    ld sp, hl                                     ; $4086: $F9
    add [hl]                                      ; $4087: $86
    ld l, [hl]                                    ; $4088: $6E

jr_026_4089:
    adc h                                         ; $4089: $8C
    ld a, [hl]                                    ; $408A: $7E
    sub h                                         ; $408B: $94

jr_026_408C:
    ld l, [hl]                                    ; $408C: $6E

jr_026_408D:
    adc h                                         ; $408D: $8C
    ld a, [hl]                                    ; $408E: $7E
    sub h                                         ; $408F: $94
    ld l, [hl]                                    ; $4090: $6E
    adc h                                         ; $4091: $8C
    ld a, [hl]                                    ; $4092: $7E
    add h                                         ; $4093: $84
    ld l, [hl]                                    ; $4094: $6E
    inc bc                                        ; $4095: $03
    ret nc                                        ; $4096: $D0

    add sp, -$17                                  ; $4097: $E8 $E9
    add d                                         ; $4099: $82
    db $EC                                        ; $409A: $EC
    ld [bc], a                                    ; $409B: $02
    jp hl                                         ; $409C: $E9


jr_026_409D:
    pop af                                        ; $409D: $F1
    add d                                         ; $409E: $82
    ld l, [hl]                                    ; $409F: $6E
    dec b                                         ; $40A0: $05

jr_026_40A1:
    call nc, $F6E1                                ; $40A1: $D4 $E1 $F6
    push hl                                       ; $40A4: $E5

jr_026_40A5:
    db $EC                                        ; $40A5: $EC
    add d                                         ; $40A6: $82
    ld l, [hl]                                    ; $40A7: $6E
    adc h                                         ; $40A8: $8C

jr_026_40A9:
    ld a, [hl]                                    ; $40A9: $7E
    sub h                                         ; $40AA: $94
    ld l, [hl]                                    ; $40AB: $6E
    adc h                                         ; $40AC: $8C

jr_026_40AD:
    ld a, [hl]                                    ; $40AD: $7E
    sub h                                         ; $40AE: $94
    ld l, [hl]                                    ; $40AF: $6E
    adc h                                         ; $40B0: $8C

jr_026_40B1:
    ld a, [hl]                                    ; $40B1: $7E
    sub h                                         ; $40B2: $94
    ld l, [hl]                                    ; $40B3: $6E
    adc h                                         ; $40B4: $8C
    ld a, [hl]                                    ; $40B5: $7E
    sub h                                         ; $40B6: $94
    ld l, [hl]                                    ; $40B7: $6E
    adc h                                         ; $40B8: $8C
    ld a, [hl]                                    ; $40B9: $7E
    sub h                                         ; $40BA: $94
    ld l, [hl]                                    ; $40BB: $6E
    adc h                                         ; $40BC: $8C
    ld a, [hl]                                    ; $40BD: $7E
    sub h                                         ; $40BE: $94
    ld l, [hl]                                    ; $40BF: $6E
    adc h                                         ; $40C0: $8C
    ld a, [hl]                                    ; $40C1: $7E
    sub h                                         ; $40C2: $94
    ld l, [hl]                                    ; $40C3: $6E
    pop bc                                        ; $40C4: $C1
    call z, $007E                                 ; $40C5: $CC $7E $00
    ld a, [hl]                                    ; $40C8: $7E
    nop                                           ; $40C9: $00
    sub h                                         ; $40CA: $94
    jr nz, jr_026_4059                            ; $40CB: $20 $8C

    ld h, b                                       ; $40CD: $60
    sub h                                         ; $40CE: $94
    jr nz, jr_026_405D                            ; $40CF: $20 $8C

    ld h, b                                       ; $40D1: $60
    sub h                                         ; $40D2: $94
    jr nz, jr_026_4061                            ; $40D3: $20 $8C

    ld h, b                                       ; $40D5: $60
    sub h                                         ; $40D6: $94
    jr nz, jr_026_4065                            ; $40D7: $20 $8C

    ld h, b                                       ; $40D9: $60
    sub h                                         ; $40DA: $94
    jr nz, jr_026_4069                            ; $40DB: $20 $8C

    ld h, b                                       ; $40DD: $60
    sub h                                         ; $40DE: $94
    jr nz, jr_026_406D                            ; $40DF: $20 $8C

    ld h, b                                       ; $40E1: $60
    add d                                         ; $40E2: $82
    jr nz, jr_026_406D                            ; $40E3: $20 $88

    ld [$208A], sp                                ; $40E5: $08 $8A $20
    adc h                                         ; $40E8: $8C
    ld h, b                                       ; $40E9: $60

jr_026_40EA:
    add d                                         ; $40EA: $82
    jr nz, jr_026_4070                            ; $40EB: $20 $83

    ld [$2001], sp                                ; $40ED: $08 $01 $20
    adc b                                         ; $40F0: $88
    ld [$2001], sp                                ; $40F1: $08 $01 $20
    add d                                         ; $40F4: $82
    ld [$2083], sp                                ; $40F5: $08 $83 $20
    adc h                                         ; $40F8: $8C
    ld h, b                                       ; $40F9: $60
    sub h                                         ; $40FA: $94
    jr nz, jr_026_4089                            ; $40FB: $20 $8C

    ld h, b                                       ; $40FD: $60
    sub h                                         ; $40FE: $94
    jr nz, jr_026_408D                            ; $40FF: $20 $8C

    ld h, b                                       ; $4101: $60
    add h                                         ; $4102: $84
    jr nz, jr_026_408C                            ; $4103: $20 $87

    ld [$2001], sp                                ; $4105: $08 $01 $20
    add [hl]                                      ; $4108: $86
    ld [$2082], sp                                ; $4109: $08 $82 $20
    adc h                                         ; $410C: $8C
    ld h, b                                       ; $410D: $60
    sub h                                         ; $410E: $94
    jr nz, jr_026_409D                            ; $410F: $20 $8C

    ld h, b                                       ; $4111: $60
    sub h                                         ; $4112: $94
    jr nz, jr_026_40A1                            ; $4113: $20 $8C

    ld h, b                                       ; $4115: $60
    sub h                                         ; $4116: $94
    jr nz, jr_026_40A5                            ; $4117: $20 $8C

    ld h, b                                       ; $4119: $60
    sub h                                         ; $411A: $94
    jr nz, jr_026_40A9                            ; $411B: $20 $8C

    ld h, b                                       ; $411D: $60
    sub h                                         ; $411E: $94
    jr nz, jr_026_40AD                            ; $411F: $20 $8C

    ld h, b                                       ; $4121: $60
    sub h                                         ; $4122: $94
    jr nz, jr_026_40B1                            ; $4123: $20 $8C

    ld h, b                                       ; $4125: $60
    sub h                                         ; $4126: $94
    jr nz, jr_026_40EA                            ; $4127: $20 $C1

    call z, $0060                                 ; $4129: $CC $60 $00
    sub h                                         ; $412C: $94
    ld l, [hl]                                    ; $412D: $6E
    adc h                                         ; $412E: $8C
    ld a, [hl]                                    ; $412F: $7E
    sub h                                         ; $4130: $94
    ld l, [hl]                                    ; $4131: $6E
    adc h                                         ; $4132: $8C
    ld a, [hl]                                    ; $4133: $7E

jr_026_4134:
    sub h                                         ; $4134: $94
    ld l, [hl]                                    ; $4135: $6E
    adc h                                         ; $4136: $8C
    ld a, [hl]                                    ; $4137: $7E

jr_026_4138:
    sub h                                         ; $4138: $94
    ld l, [hl]                                    ; $4139: $6E
    adc h                                         ; $413A: $8C
    ld a, [hl]                                    ; $413B: $7E

jr_026_413C:
    sub h                                         ; $413C: $94
    ld l, [hl]                                    ; $413D: $6E
    adc h                                         ; $413E: $8C
    ld a, [hl]                                    ; $413F: $7E

jr_026_4140:
    sub h                                         ; $4140: $94
    ld l, [hl]                                    ; $4141: $6E
    adc h                                         ; $4142: $8C
    ld a, [hl]                                    ; $4143: $7E

jr_026_4144:
    add d                                         ; $4144: $82
    ld l, [hl]                                    ; $4145: $6E
    ld [$F2D0], sp                                ; $4146: $08 $D0 $F2
    rst $28                                       ; $4149: $EF
    db $E4                                        ; $414A: $E4
    push af                                       ; $414B: $F5

jr_026_414C:
    db $E3                                        ; $414C: $E3
    push hl                                       ; $414D: $E5
    db $E4                                        ; $414E: $E4
    adc d                                         ; $414F: $8A
    ld l, [hl]                                    ; $4150: $6E
    adc h                                         ; $4151: $8C
    ld a, [hl]                                    ; $4152: $7E
    add d                                         ; $4153: $82
    ld l, [hl]                                    ; $4154: $6E
    rrca                                          ; $4155: $0F
    pop hl                                        ; $4156: $E1
    xor $E4                                       ; $4157: $EE $E4
    ld l, [hl]                                    ; $4159: $6E
    call nz, $F2E9                                ; $415A: $C4 $E9 $F2
    push hl                                       ; $415D: $E5
    db $E3                                        ; $415E: $E3
    db $F4                                        ; $415F: $F4

jr_026_4160:
    push hl                                       ; $4160: $E5
    db $E4                                        ; $4161: $E4
    ld l, [hl]                                    ; $4162: $6E
    ld [c], a                                     ; $4163: $E2
    ld sp, hl                                     ; $4164: $F9
    add e                                         ; $4165: $83
    ld l, [hl]                                    ; $4166: $6E
    adc h                                         ; $4167: $8C
    ld a, [hl]                                    ; $4168: $7E
    sub h                                         ; $4169: $94
    ld l, [hl]                                    ; $416A: $6E
    adc h                                         ; $416B: $8C
    ld a, [hl]                                    ; $416C: $7E
    sub h                                         ; $416D: $94
    ld l, [hl]                                    ; $416E: $6E
    adc h                                         ; $416F: $8C

jr_026_4170:
    ld a, [hl]                                    ; $4170: $7E
    add h                                         ; $4171: $84
    ld l, [hl]                                    ; $4172: $6E
    add hl, bc                                    ; $4173: $09

jr_026_4174:
    ret nc                                        ; $4174: $D0

    pop hl                                        ; $4175: $E1
    db $F4                                        ; $4176: $F4
    ld a, [c]                                     ; $4177: $F2

jr_026_4178:
    jp hl                                         ; $4178: $E9


    db $E3                                        ; $4179: $E3
    db $EB                                        ; $417A: $EB
    ld l, [hl]                                    ; $417B: $6E

jr_026_417C:
    call $E582                                    ; $417C: $CD $82 $E5
    inc bc                                        ; $417F: $03

jr_026_4180:
    add sp, -$1F                                  ; $4180: $E8 $E1
    xor $82                                       ; $4182: $EE $82

jr_026_4184:
    ld l, [hl]                                    ; $4184: $6E
    adc h                                         ; $4185: $8C
    ld a, [hl]                                    ; $4186: $7E
    sub h                                         ; $4187: $94
    ld l, [hl]                                    ; $4188: $6E
    adc h                                         ; $4189: $8C
    ld a, [hl]                                    ; $418A: $7E
    sub h                                         ; $418B: $94
    ld l, [hl]                                    ; $418C: $6E
    adc h                                         ; $418D: $8C
    ld a, [hl]                                    ; $418E: $7E
    sub h                                         ; $418F: $94
    ld l, [hl]                                    ; $4190: $6E
    adc h                                         ; $4191: $8C
    ld a, [hl]                                    ; $4192: $7E
    sub h                                         ; $4193: $94
    ld l, [hl]                                    ; $4194: $6E
    adc h                                         ; $4195: $8C
    ld a, [hl]                                    ; $4196: $7E
    sub h                                         ; $4197: $94
    ld l, [hl]                                    ; $4198: $6E
    adc h                                         ; $4199: $8C
    ld a, [hl]                                    ; $419A: $7E
    sub h                                         ; $419B: $94
    ld l, [hl]                                    ; $419C: $6E
    adc h                                         ; $419D: $8C
    ld a, [hl]                                    ; $419E: $7E
    sub h                                         ; $419F: $94
    ld l, [hl]                                    ; $41A0: $6E
    pop bc                                        ; $41A1: $C1
    call z, $007E                                 ; $41A2: $CC $7E $00
    sub h                                         ; $41A5: $94
    jr nz, jr_026_4134                            ; $41A6: $20 $8C

    nop                                           ; $41A8: $00
    sub h                                         ; $41A9: $94
    jr nz, jr_026_4138                            ; $41AA: $20 $8C

    nop                                           ; $41AC: $00
    sub h                                         ; $41AD: $94
    jr nz, jr_026_413C                            ; $41AE: $20 $8C

    nop                                           ; $41B0: $00
    sub h                                         ; $41B1: $94
    jr nz, jr_026_4140                            ; $41B2: $20 $8C

    nop                                           ; $41B4: $00
    sub h                                         ; $41B5: $94
    jr nz, jr_026_4144                            ; $41B6: $20 $8C

    nop                                           ; $41B8: $00
    sub h                                         ; $41B9: $94
    jr nz, @-$72                                  ; $41BA: $20 $8C

    nop                                           ; $41BC: $00

jr_026_41BD:
    sub h                                         ; $41BD: $94
    jr nz, jr_026_414C                            ; $41BE: $20 $8C

    nop                                           ; $41C0: $00
    add d                                         ; $41C1: $82
    jr nz, jr_026_414C                            ; $41C2: $20 $88

    ld [$2001], sp                                ; $41C4: $08 $01 $20
    add d                                         ; $41C7: $82
    ld [$2087], sp                                ; $41C8: $08 $87 $20
    adc h                                         ; $41CB: $8C
    nop                                           ; $41CC: $00
    sub h                                         ; $41CD: $94
    jr nz, @-$72                                  ; $41CE: $20 $8C

    nop                                           ; $41D0: $00
    sub h                                         ; $41D1: $94
    jr nz, jr_026_4160                            ; $41D2: $20 $8C

    nop                                           ; $41D4: $00
    add a                                         ; $41D5: $87
    jr nz, @-$7B                                  ; $41D6: $20 $83

    ld [$2001], sp                                ; $41D8: $08 $01 $20
    add a                                         ; $41DB: $87
    ld [$2082], sp                                ; $41DC: $08 $82 $20
    adc h                                         ; $41DF: $8C
    nop                                           ; $41E0: $00
    sub h                                         ; $41E1: $94
    jr nz, jr_026_4170                            ; $41E2: $20 $8C

    nop                                           ; $41E4: $00
    sub h                                         ; $41E5: $94
    jr nz, jr_026_4174                            ; $41E6: $20 $8C

    nop                                           ; $41E8: $00
    sub h                                         ; $41E9: $94
    jr nz, jr_026_4178                            ; $41EA: $20 $8C

    nop                                           ; $41EC: $00
    sub h                                         ; $41ED: $94
    jr nz, jr_026_417C                            ; $41EE: $20 $8C

    nop                                           ; $41F0: $00
    sub h                                         ; $41F1: $94
    jr nz, jr_026_4180                            ; $41F2: $20 $8C

jr_026_41F4:
    nop                                           ; $41F4: $00
    sub h                                         ; $41F5: $94
    jr nz, jr_026_4184                            ; $41F6: $20 $8C

jr_026_41F8:
    nop                                           ; $41F8: $00
    sub h                                         ; $41F9: $94
    jr nz, jr_026_41BD                            ; $41FA: $20 $C1

jr_026_41FC:
    call z, RST_00                                ; $41FC: $CC $00 $00
    sub h                                         ; $41FF: $94

jr_026_4200:
    ld l, [hl]                                    ; $4200: $6E
    adc h                                         ; $4201: $8C
    ld a, [hl]                                    ; $4202: $7E
    sub h                                         ; $4203: $94

jr_026_4204:
    ld l, [hl]                                    ; $4204: $6E
    adc h                                         ; $4205: $8C
    ld a, [hl]                                    ; $4206: $7E
    sub h                                         ; $4207: $94
    ld l, [hl]                                    ; $4208: $6E

jr_026_4209:
    adc h                                         ; $4209: $8C
    ld a, [hl]                                    ; $420A: $7E
    sub h                                         ; $420B: $94
    ld l, [hl]                                    ; $420C: $6E
    adc h                                         ; $420D: $8C

jr_026_420E:
    ld a, [hl]                                    ; $420E: $7E
    sub h                                         ; $420F: $94
    ld l, [hl]                                    ; $4210: $6E
    adc h                                         ; $4211: $8C
    ld a, [hl]                                    ; $4212: $7E
    sub h                                         ; $4213: $94
    ld l, [hl]                                    ; $4214: $6E
    adc h                                         ; $4215: $8C
    ld a, [hl]                                    ; $4216: $7E
    sub h                                         ; $4217: $94
    ld l, [hl]                                    ; $4218: $6E
    adc h                                         ; $4219: $8C
    ld a, [hl]                                    ; $421A: $7E
    add d                                         ; $421B: $82
    ld l, [hl]                                    ; $421C: $6E
    dec bc                                        ; $421D: $0B
    call nz, $E1E9                                ; $421E: $C4 $E9 $E1
    db $EC                                        ; $4221: $EC
    rst $28                                       ; $4222: $EF
    rst $20                                       ; $4223: $E7

jr_026_4224:
    push af                                       ; $4224: $F5
    push hl                                       ; $4225: $E5
    ld l, [hl]                                    ; $4226: $6E
    ld [c], a                                     ; $4227: $E2

jr_026_4228:
    ld sp, hl                                     ; $4228: $F9
    add a                                         ; $4229: $87
    ld l, [hl]                                    ; $422A: $6E
    adc h                                         ; $422B: $8C
    ld a, [hl]                                    ; $422C: $7E
    sub h                                         ; $422D: $94
    ld l, [hl]                                    ; $422E: $6E
    adc h                                         ; $422F: $8C
    ld a, [hl]                                    ; $4230: $7E
    sub h                                         ; $4231: $94
    ld l, [hl]                                    ; $4232: $6E
    adc h                                         ; $4233: $8C
    ld a, [hl]                                    ; $4234: $7E
    add a                                         ; $4235: $87
    ld l, [hl]                                    ; $4236: $6E
    dec bc                                        ; $4237: $0B

jr_026_4238:
    jp z, $EEEF                                   ; $4238: $CA $EF $EE

    ld l, [hl]                                    ; $423B: $6E

jr_026_423C:
    rst $10                                       ; $423C: $D7
    jp hl                                         ; $423D: $E9


    xor $EB                                       ; $423E: $EE $EB

jr_026_4240:
    db $EC                                        ; $4240: $EC
    push hl                                       ; $4241: $E5
    ld a, [c]                                     ; $4242: $F2
    add d                                         ; $4243: $82

jr_026_4244:
    ld l, [hl]                                    ; $4244: $6E
    adc h                                         ; $4245: $8C
    ld a, [hl]                                    ; $4246: $7E
    sub h                                         ; $4247: $94

jr_026_4248:
    ld l, [hl]                                    ; $4248: $6E
    adc h                                         ; $4249: $8C
    ld a, [hl]                                    ; $424A: $7E
    sub h                                         ; $424B: $94

jr_026_424C:
    ld l, [hl]                                    ; $424C: $6E
    adc h                                         ; $424D: $8C
    ld a, [hl]                                    ; $424E: $7E
    sub h                                         ; $424F: $94
    ld l, [hl]                                    ; $4250: $6E
    adc h                                         ; $4251: $8C
    ld a, [hl]                                    ; $4252: $7E
    sub h                                         ; $4253: $94
    ld l, [hl]                                    ; $4254: $6E
    adc h                                         ; $4255: $8C
    ld a, [hl]                                    ; $4256: $7E
    sub h                                         ; $4257: $94
    ld l, [hl]                                    ; $4258: $6E
    adc h                                         ; $4259: $8C
    ld a, [hl]                                    ; $425A: $7E
    sub h                                         ; $425B: $94
    ld l, [hl]                                    ; $425C: $6E
    adc h                                         ; $425D: $8C
    ld a, [hl]                                    ; $425E: $7E
    sub h                                         ; $425F: $94
    ld l, [hl]                                    ; $4260: $6E
    pop bc                                        ; $4261: $C1
    call z, $007E                                 ; $4262: $CC $7E $00
    sub h                                         ; $4265: $94
    jr nz, jr_026_41F4                            ; $4266: $20 $8C

    nop                                           ; $4268: $00
    sub h                                         ; $4269: $94
    jr nz, jr_026_41F8                            ; $426A: $20 $8C

    nop                                           ; $426C: $00
    sub h                                         ; $426D: $94
    jr nz, jr_026_41FC                            ; $426E: $20 $8C

    nop                                           ; $4270: $00
    sub h                                         ; $4271: $94
    jr nz, jr_026_4200                            ; $4272: $20 $8C

    nop                                           ; $4274: $00
    sub h                                         ; $4275: $94
    jr nz, jr_026_4204                            ; $4276: $20 $8C

    nop                                           ; $4278: $00
    add d                                         ; $4279: $82
    jr nz, jr_026_4200                            ; $427A: $20 $84

    ld [$208E], sp                                ; $427C: $08 $8E $20
    adc h                                         ; $427F: $8C
    nop                                           ; $4280: $00
    add d                                         ; $4281: $82
    jr nz, jr_026_4209                            ; $4282: $20 $85

    ld [$208D], sp                                ; $4284: $08 $8D $20
    adc h                                         ; $4287: $8C
    nop                                           ; $4288: $00
    add d                                         ; $4289: $82
    jr nz, jr_026_420E                            ; $428A: $20 $82

    ld [$2801], sp                                ; $428C: $08 $01 $28
    add a                                         ; $428F: $87
    ld [$2088], sp                                ; $4290: $08 $88 $20
    adc h                                         ; $4293: $8C
    nop                                           ; $4294: $00
    sub h                                         ; $4295: $94
    jr nz, jr_026_4224                            ; $4296: $20 $8C

    nop                                           ; $4298: $00
    sub h                                         ; $4299: $94
    jr nz, jr_026_4228                            ; $429A: $20 $8C

    nop                                           ; $429C: $00
    add [hl]                                      ; $429D: $86
    jr nz, jr_026_4224                            ; $429E: $20 $84

    ld [$2001], sp                                ; $42A0: $08 $01 $20
    add a                                         ; $42A3: $87
    ld [$2082], sp                                ; $42A4: $08 $82 $20
    adc h                                         ; $42A7: $8C
    nop                                           ; $42A8: $00
    sub h                                         ; $42A9: $94
    jr nz, jr_026_4238                            ; $42AA: $20 $8C

    nop                                           ; $42AC: $00
    sub h                                         ; $42AD: $94
    jr nz, jr_026_423C                            ; $42AE: $20 $8C

    nop                                           ; $42B0: $00
    sub h                                         ; $42B1: $94
    jr nz, jr_026_4240                            ; $42B2: $20 $8C

    nop                                           ; $42B4: $00
    sub h                                         ; $42B5: $94
    jr nz, jr_026_4244                            ; $42B6: $20 $8C

    nop                                           ; $42B8: $00
    sub h                                         ; $42B9: $94
    jr nz, jr_026_4248                            ; $42BA: $20 $8C

    nop                                           ; $42BC: $00
    sub h                                         ; $42BD: $94
    jr nz, jr_026_424C                            ; $42BE: $20 $8C

    nop                                           ; $42C0: $00
    sub h                                         ; $42C1: $94
    jr nz, @-$3D                                  ; $42C2: $20 $C1

    call z, RST_00                                ; $42C4: $CC $00 $00
    sub h                                         ; $42C7: $94
    ld l, [hl]                                    ; $42C8: $6E
    adc h                                         ; $42C9: $8C
    ld a, [hl]                                    ; $42CA: $7E
    sub h                                         ; $42CB: $94

jr_026_42CC:
    ld l, [hl]                                    ; $42CC: $6E
    adc h                                         ; $42CD: $8C
    ld a, [hl]                                    ; $42CE: $7E
    sub h                                         ; $42CF: $94

jr_026_42D0:
    ld l, [hl]                                    ; $42D0: $6E
    adc h                                         ; $42D1: $8C
    ld a, [hl]                                    ; $42D2: $7E
    sub h                                         ; $42D3: $94

jr_026_42D4:
    ld l, [hl]                                    ; $42D4: $6E
    adc h                                         ; $42D5: $8C
    ld a, [hl]                                    ; $42D6: $7E
    sub h                                         ; $42D7: $94

jr_026_42D8:
    ld l, [hl]                                    ; $42D8: $6E
    adc h                                         ; $42D9: $8C
    ld a, [hl]                                    ; $42DA: $7E
    add d                                         ; $42DB: $82

jr_026_42DC:
    ld l, [hl]                                    ; $42DC: $6E

jr_026_42DD:
    inc b                                         ; $42DD: $04
    call z, $E1E5                                 ; $42DE: $CC $E5 $E1
    db $E4                                        ; $42E1: $E4
    adc [hl]                                      ; $42E2: $8E
    ld l, [hl]                                    ; $42E3: $6E
    adc h                                         ; $42E4: $8C
    ld a, [hl]                                    ; $42E5: $7E
    add d                                         ; $42E6: $82
    ld l, [hl]                                    ; $42E7: $6E
    dec b                                         ; $42E8: $05
    db $D3                                        ; $42E9: $D3
    db $E3                                        ; $42EA: $E3

jr_026_42EB:
    push hl                                       ; $42EB: $E5
    xor $E5                                       ; $42EC: $EE $E5
    adc l                                         ; $42EE: $8D
    ld l, [hl]                                    ; $42EF: $6E
    adc h                                         ; $42F0: $8C
    ld a, [hl]                                    ; $42F1: $7E
    add d                                         ; $42F2: $82

jr_026_42F3:
    ld l, [hl]                                    ; $42F3: $6E

jr_026_42F4:
    ld b, $D0                                     ; $42F4: $06 $D0
    ld a, [c]                                     ; $42F6: $F2
    rst $28                                       ; $42F7: $EF

jr_026_42F8:
    rst $20                                       ; $42F8: $E7
    ld a, [c]                                     ; $42F9: $F2
    pop hl                                        ; $42FA: $E1
    add d                                         ; $42FB: $82
    db $ED                                        ; $42FC: $ED
    ld [bc], a                                    ; $42FD: $02
    push hl                                       ; $42FE: $E5
    ld a, [c]                                     ; $42FF: $F2

jr_026_4300:
    adc b                                         ; $4300: $88
    ld l, [hl]                                    ; $4301: $6E
    adc h                                         ; $4302: $8C
    ld a, [hl]                                    ; $4303: $7E
    sub h                                         ; $4304: $94
    ld l, [hl]                                    ; $4305: $6E
    adc h                                         ; $4306: $8C
    ld a, [hl]                                    ; $4307: $7E
    sub h                                         ; $4308: $94
    ld l, [hl]                                    ; $4309: $6E
    adc h                                         ; $430A: $8C
    ld a, [hl]                                    ; $430B: $7E

jr_026_430C:
    add [hl]                                      ; $430C: $86
    ld l, [hl]                                    ; $430D: $6E
    inc c                                         ; $430E: $0C
    jp nc, $E1F9                                  ; $430F: $D2 $F9 $E1

    xor $6E                                       ; $4312: $EE $6E
    db $D3                                        ; $4314: $D3
    db $F4                                        ; $4315: $F4
    pop hl                                        ; $4316: $E1
    ld a, [c]                                     ; $4317: $F2
    db $EB                                        ; $4318: $EB
    push hl                                       ; $4319: $E5
    ld sp, hl                                     ; $431A: $F9
    add d                                         ; $431B: $82
    ld l, [hl]                                    ; $431C: $6E
    adc h                                         ; $431D: $8C
    ld a, [hl]                                    ; $431E: $7E
    sub h                                         ; $431F: $94

jr_026_4320:
    ld l, [hl]                                    ; $4320: $6E
    adc h                                         ; $4321: $8C
    ld a, [hl]                                    ; $4322: $7E
    sub h                                         ; $4323: $94

jr_026_4324:
    ld l, [hl]                                    ; $4324: $6E
    adc h                                         ; $4325: $8C
    ld a, [hl]                                    ; $4326: $7E
    sub h                                         ; $4327: $94

jr_026_4328:
    ld l, [hl]                                    ; $4328: $6E
    adc h                                         ; $4329: $8C
    ld a, [hl]                                    ; $432A: $7E
    sub h                                         ; $432B: $94

jr_026_432C:
    ld l, [hl]                                    ; $432C: $6E
    adc h                                         ; $432D: $8C
    ld a, [hl]                                    ; $432E: $7E
    sub h                                         ; $432F: $94
    ld l, [hl]                                    ; $4330: $6E
    adc h                                         ; $4331: $8C
    ld a, [hl]                                    ; $4332: $7E
    sub h                                         ; $4333: $94
    ld l, [hl]                                    ; $4334: $6E
    adc h                                         ; $4335: $8C
    ld a, [hl]                                    ; $4336: $7E
    sub h                                         ; $4337: $94
    ld l, [hl]                                    ; $4338: $6E
    pop bc                                        ; $4339: $C1
    call z, $007E                                 ; $433A: $CC $7E $00
    sub h                                         ; $433D: $94
    jr nz, jr_026_42CC                            ; $433E: $20 $8C

    ld h, b                                       ; $4340: $60
    sub h                                         ; $4341: $94
    jr nz, jr_026_42D0                            ; $4342: $20 $8C

    ld h, b                                       ; $4344: $60
    sub h                                         ; $4345: $94
    jr nz, jr_026_42D4                            ; $4346: $20 $8C

    ld h, b                                       ; $4348: $60
    sub h                                         ; $4349: $94
    jr nz, jr_026_42D8                            ; $434A: $20 $8C

    ld h, b                                       ; $434C: $60
    sub h                                         ; $434D: $94
    jr nz, jr_026_42DC                            ; $434E: $20 $8C

    ld h, b                                       ; $4350: $60
    sub h                                         ; $4351: $94
    jr nz, @-$72                                  ; $4352: $20 $8C

    ld h, b                                       ; $4354: $60
    add d                                         ; $4355: $82
    jr nz, jr_026_42DD                            ; $4356: $20 $85

    ld [$208D], sp                                ; $4358: $08 $8D $20
    adc h                                         ; $435B: $8C
    ld h, b                                       ; $435C: $60
    add d                                         ; $435D: $82
    jr nz, jr_026_42EB                            ; $435E: $20 $8B

    ld [$2087], sp                                ; $4360: $08 $87 $20
    adc h                                         ; $4363: $8C
    ld h, b                                       ; $4364: $60

jr_026_4365:
    sub h                                         ; $4365: $94
    jr nz, jr_026_42F4                            ; $4366: $20 $8C

    ld h, b                                       ; $4368: $60
    sub h                                         ; $4369: $94
    jr nz, jr_026_42F8                            ; $436A: $20 $8C

    ld h, b                                       ; $436C: $60
    add a                                         ; $436D: $87
    jr nz, jr_026_42F3                            ; $436E: $20 $83

    ld [$2001], sp                                ; $4370: $08 $01 $20
    add a                                         ; $4373: $87
    ld [$2082], sp                                ; $4374: $08 $82 $20
    adc h                                         ; $4377: $8C
    ld h, b                                       ; $4378: $60
    add a                                         ; $4379: $87
    jr nz, jr_026_4300                            ; $437A: $20 $84

    ld [$2001], sp                                ; $437C: $08 $01 $20
    add l                                         ; $437F: $85
    ld [$2083], sp                                ; $4380: $08 $83 $20
    adc h                                         ; $4383: $8C
    ld h, b                                       ; $4384: $60
    add a                                         ; $4385: $87
    jr nz, jr_026_430C                            ; $4386: $20 $84

    ld [$2001], sp                                ; $4388: $08 $01 $20
    add l                                         ; $438B: $85
    ld [$2083], sp                                ; $438C: $08 $83 $20
    adc h                                         ; $438F: $8C
    ld h, b                                       ; $4390: $60
    sub h                                         ; $4391: $94
    jr nz, jr_026_4320                            ; $4392: $20 $8C

    ld h, b                                       ; $4394: $60
    sub h                                         ; $4395: $94
    jr nz, jr_026_4324                            ; $4396: $20 $8C

    ld h, b                                       ; $4398: $60
    sub h                                         ; $4399: $94
    jr nz, jr_026_4328                            ; $439A: $20 $8C

    ld h, b                                       ; $439C: $60
    sub h                                         ; $439D: $94
    jr nz, jr_026_432C                            ; $439E: $20 $8C

    ld h, b                                       ; $43A0: $60
    sub h                                         ; $43A1: $94
    jr nz, jr_026_4365                            ; $43A2: $20 $C1

    call z, $0060                                 ; $43A4: $CC $60 $00
    sub h                                         ; $43A7: $94
    ld l, [hl]                                    ; $43A8: $6E
    adc h                                         ; $43A9: $8C
    ld a, [hl]                                    ; $43AA: $7E
    sub h                                         ; $43AB: $94
    ld l, [hl]                                    ; $43AC: $6E
    adc h                                         ; $43AD: $8C
    ld a, [hl]                                    ; $43AE: $7E
    sub h                                         ; $43AF: $94
    ld l, [hl]                                    ; $43B0: $6E
    adc h                                         ; $43B1: $8C
    ld a, [hl]                                    ; $43B2: $7E
    sub h                                         ; $43B3: $94
    ld l, [hl]                                    ; $43B4: $6E
    adc h                                         ; $43B5: $8C
    ld a, [hl]                                    ; $43B6: $7E
    sub h                                         ; $43B7: $94
    ld l, [hl]                                    ; $43B8: $6E
    adc h                                         ; $43B9: $8C
    ld a, [hl]                                    ; $43BA: $7E
    sub h                                         ; $43BB: $94
    ld l, [hl]                                    ; $43BC: $6E
    adc h                                         ; $43BD: $8C
    ld a, [hl]                                    ; $43BE: $7E

jr_026_43BF:
    add d                                         ; $43BF: $82
    ld l, [hl]                                    ; $43C0: $6E
    dec b                                         ; $43C1: $05
    db $D3                                        ; $43C2: $D3

jr_026_43C3:
    db $E3                                        ; $43C3: $E3
    push hl                                       ; $43C4: $E5
    xor $E5                                       ; $43C5: $EE $E5

jr_026_43C7:
    adc l                                         ; $43C7: $8D
    ld l, [hl]                                    ; $43C8: $6E
    adc h                                         ; $43C9: $8C
    ld a, [hl]                                    ; $43CA: $7E

jr_026_43CB:
    add d                                         ; $43CB: $82
    ld l, [hl]                                    ; $43CC: $6E
    ld b, $D0                                     ; $43CD: $06 $D0

jr_026_43CF:
    ld a, [c]                                     ; $43CF: $F2

jr_026_43D0:
    rst $28                                       ; $43D0: $EF
    rst $20                                       ; $43D1: $E7
    ld a, [c]                                     ; $43D2: $F2

jr_026_43D3:
    pop hl                                        ; $43D3: $E1
    add d                                         ; $43D4: $82

jr_026_43D5:
    db $ED                                        ; $43D5: $ED
    inc bc                                        ; $43D6: $03
    push hl                                       ; $43D7: $E5
    ld a, [c]                                     ; $43D8: $F2
    di                                            ; $43D9: $F3
    add a                                         ; $43DA: $87
    ld l, [hl]                                    ; $43DB: $6E
    adc h                                         ; $43DC: $8C
    ld a, [hl]                                    ; $43DD: $7E
    sub h                                         ; $43DE: $94
    ld l, [hl]                                    ; $43DF: $6E
    adc h                                         ; $43E0: $8C
    ld a, [hl]                                    ; $43E1: $7E
    sub h                                         ; $43E2: $94
    ld l, [hl]                                    ; $43E3: $6E
    adc h                                         ; $43E4: $8C
    ld a, [hl]                                    ; $43E5: $7E
    add a                                         ; $43E6: $87
    ld l, [hl]                                    ; $43E7: $6E
    dec bc                                        ; $43E8: $0B
    jp z, $EEEF                                   ; $43E9: $CA $EF $EE

    ld l, [hl]                                    ; $43EC: $6E

jr_026_43ED:
    rst $10                                       ; $43ED: $D7
    jp hl                                         ; $43EE: $E9


jr_026_43EF:
    xor $EB                                       ; $43EF: $EE $EB
    db $EC                                        ; $43F1: $EC
    push hl                                       ; $43F2: $E5
    ld a, [c]                                     ; $43F3: $F2
    add d                                         ; $43F4: $82
    ld l, [hl]                                    ; $43F5: $6E
    adc h                                         ; $43F6: $8C
    ld a, [hl]                                    ; $43F7: $7E

jr_026_43F8:
    add a                                         ; $43F8: $87
    ld l, [hl]                                    ; $43F9: $6E
    ld a, [bc]                                    ; $43FA: $0A
    call $EBE9                                    ; $43FB: $CD $E9 $EB
    push hl                                       ; $43FE: $E5
    ld l, [hl]                                    ; $43FF: $6E
    jp nz, $EFEC                                  ; $4400: $C2 $EC $EF

    db $E3                                        ; $4403: $E3
    add sp, -$7D                                  ; $4404: $E8 $83
    ld l, [hl]                                    ; $4406: $6E
    adc h                                         ; $4407: $8C
    ld a, [hl]                                    ; $4408: $7E
    add a                                         ; $4409: $87
    ld l, [hl]                                    ; $440A: $6E

jr_026_440B:
    ld a, [bc]                                    ; $440B: $0A
    pop bc                                        ; $440C: $C1
    db $EC                                        ; $440D: $EC
    pop hl                                        ; $440E: $E1

jr_026_440F:
    xor $6E                                       ; $440F: $EE $6E
    push bc                                       ; $4411: $C5
    ldh a, [$EC]                                  ; $4412: $F0 $EC
    push hl                                       ; $4414: $E5
    ld sp, hl                                     ; $4415: $F9
    add e                                         ; $4416: $83

jr_026_4417:
    ld l, [hl]                                    ; $4417: $6E
    adc h                                         ; $4418: $8C
    ld a, [hl]                                    ; $4419: $7E
    sub h                                         ; $441A: $94

jr_026_441B:
    ld l, [hl]                                    ; $441B: $6E
    adc h                                         ; $441C: $8C
    ld a, [hl]                                    ; $441D: $7E
    sub h                                         ; $441E: $94
    ld l, [hl]                                    ; $441F: $6E
    adc h                                         ; $4420: $8C
    ld a, [hl]                                    ; $4421: $7E
    sub h                                         ; $4422: $94
    ld l, [hl]                                    ; $4423: $6E
    adc h                                         ; $4424: $8C
    ld a, [hl]                                    ; $4425: $7E
    sub h                                         ; $4426: $94
    ld l, [hl]                                    ; $4427: $6E
    adc h                                         ; $4428: $8C
    ld a, [hl]                                    ; $4429: $7E
    sub h                                         ; $442A: $94
    ld l, [hl]                                    ; $442B: $6E
    pop bc                                        ; $442C: $C1
    call z, $007E                                 ; $442D: $CC $7E $00
    sub h                                         ; $4430: $94
    jr nz, jr_026_43BF                            ; $4431: $20 $8C

    ld h, b                                       ; $4433: $60
    sub h                                         ; $4434: $94
    jr nz, jr_026_43C3                            ; $4435: $20 $8C

    ld h, b                                       ; $4437: $60
    sub h                                         ; $4438: $94
    jr nz, jr_026_43C7                            ; $4439: $20 $8C

    ld h, b                                       ; $443B: $60
    sub h                                         ; $443C: $94
    jr nz, jr_026_43CB                            ; $443D: $20 $8C

    ld h, b                                       ; $443F: $60
    sub h                                         ; $4440: $94
    jr nz, jr_026_43CF                            ; $4441: $20 $8C

    ld h, b                                       ; $4443: $60
    sub h                                         ; $4444: $94
    jr nz, jr_026_43D3                            ; $4445: $20 $8C

    ld h, b                                       ; $4447: $60
    add d                                         ; $4448: $82
    jr nz, jr_026_43D0                            ; $4449: $20 $85

    ld [$208D], sp                                ; $444B: $08 $8D $20
    adc h                                         ; $444E: $8C
    ld h, b                                       ; $444F: $60
    add d                                         ; $4450: $82
    jr nz, jr_026_43D5                            ; $4451: $20 $82

    ld [$2801], sp                                ; $4453: $08 $01 $28
    adc b                                         ; $4456: $88
    ld [$2087], sp                                ; $4457: $08 $87 $20

Jump_026_445A:
    adc h                                         ; $445A: $8C
    ld h, b                                       ; $445B: $60
    sub h                                         ; $445C: $94
    jr nz, @-$72                                  ; $445D: $20 $8C

    ld h, b                                       ; $445F: $60
    sub h                                         ; $4460: $94
    jr nz, jr_026_43EF                            ; $4461: $20 $8C

    ld h, b                                       ; $4463: $60
    add [hl]                                      ; $4464: $86
    jr nz, jr_026_43ED                            ; $4465: $20 $86

    ld [$2001], sp                                ; $4467: $08 $01 $20
    add l                                         ; $446A: $85
    ld [$2082], sp                                ; $446B: $08 $82 $20
    adc h                                         ; $446E: $8C
    ld h, b                                       ; $446F: $60
    add [hl]                                      ; $4470: $86
    jr nz, jr_026_43F8                            ; $4471: $20 $85

    ld [$2001], sp                                ; $4473: $08 $01 $20
    add l                                         ; $4476: $85
    ld [$2083], sp                                ; $4477: $08 $83 $20
    adc h                                         ; $447A: $8C
    ld h, b                                       ; $447B: $60
    sub h                                         ; $447C: $94
    jr nz, jr_026_440B                            ; $447D: $20 $8C

    ld h, b                                       ; $447F: $60
    sub h                                         ; $4480: $94
    jr nz, jr_026_440F                            ; $4481: $20 $8C

    ld h, b                                       ; $4483: $60
    sub h                                         ; $4484: $94
    jr nz, @-$72                                  ; $4485: $20 $8C

    ld h, b                                       ; $4487: $60
    sub h                                         ; $4488: $94
    jr nz, jr_026_4417                            ; $4489: $20 $8C

    ld h, b                                       ; $448B: $60
    sub h                                         ; $448C: $94
    jr nz, jr_026_441B                            ; $448D: $20 $8C

    ld h, b                                       ; $448F: $60
    sub h                                         ; $4490: $94
    jr nz, @-$3D                                  ; $4491: $20 $C1

    call z, $0060                                 ; $4493: $CC $60 $00
    sub h                                         ; $4496: $94
    ld l, [hl]                                    ; $4497: $6E
    adc h                                         ; $4498: $8C
    ld a, [hl]                                    ; $4499: $7E
    sub h                                         ; $449A: $94
    ld l, [hl]                                    ; $449B: $6E
    adc h                                         ; $449C: $8C
    ld a, [hl]                                    ; $449D: $7E
    sub h                                         ; $449E: $94
    ld l, [hl]                                    ; $449F: $6E
    adc h                                         ; $44A0: $8C
    ld a, [hl]                                    ; $44A1: $7E
    sub h                                         ; $44A2: $94
    ld l, [hl]                                    ; $44A3: $6E

jr_026_44A4:
    adc h                                         ; $44A4: $8C
    ld a, [hl]                                    ; $44A5: $7E
    sub h                                         ; $44A6: $94
    ld l, [hl]                                    ; $44A7: $6E

jr_026_44A8:
    adc h                                         ; $44A8: $8C
    ld a, [hl]                                    ; $44A9: $7E
    sub h                                         ; $44AA: $94
    ld l, [hl]                                    ; $44AB: $6E

jr_026_44AC:
    adc h                                         ; $44AC: $8C
    ld a, [hl]                                    ; $44AD: $7E
    add d                                         ; $44AE: $82
    ld l, [hl]                                    ; $44AF: $6E

jr_026_44B0:
    dec b                                         ; $44B0: $05
    db $D3                                        ; $44B1: $D3
    db $E3                                        ; $44B2: $E3
    push hl                                       ; $44B3: $E5

jr_026_44B4:
    xor $E5                                       ; $44B4: $EE $E5
    adc l                                         ; $44B6: $8D
    ld l, [hl]                                    ; $44B7: $6E
    adc h                                         ; $44B8: $8C
    ld a, [hl]                                    ; $44B9: $7E
    add d                                         ; $44BA: $82
    ld l, [hl]                                    ; $44BB: $6E
    ld b, $D0                                     ; $44BC: $06 $D0
    ld a, [c]                                     ; $44BE: $F2
    rst $28                                       ; $44BF: $EF
    rst $20                                       ; $44C0: $E7
    ld a, [c]                                     ; $44C1: $F2
    pop hl                                        ; $44C2: $E1
    add d                                         ; $44C3: $82

jr_026_44C4:
    db $ED                                        ; $44C4: $ED
    inc bc                                        ; $44C5: $03
    push hl                                       ; $44C6: $E5
    ld a, [c]                                     ; $44C7: $F2
    di                                            ; $44C8: $F3
    add a                                         ; $44C9: $87
    ld l, [hl]                                    ; $44CA: $6E
    adc h                                         ; $44CB: $8C
    ld a, [hl]                                    ; $44CC: $7E
    sub h                                         ; $44CD: $94
    ld l, [hl]                                    ; $44CE: $6E

jr_026_44CF:
    adc h                                         ; $44CF: $8C
    ld a, [hl]                                    ; $44D0: $7E
    sub h                                         ; $44D1: $94
    ld l, [hl]                                    ; $44D2: $6E
    adc h                                         ; $44D3: $8C
    ld a, [hl]                                    ; $44D4: $7E
    add [hl]                                      ; $44D5: $86
    ld l, [hl]                                    ; $44D6: $6E
    inc c                                         ; $44D7: $0C
    jp z, $F3F5                                   ; $44D8: $CA $F5 $F3

    db $F4                                        ; $44DB: $F4
    jp hl                                         ; $44DC: $E9


    xor $6E                                       ; $44DD: $EE $6E

jr_026_44DF:
    jp nc, $E4E9                                  ; $44DF: $D2 $E9 $E4

    push hl                                       ; $44E2: $E5

jr_026_44E3:
    ld a, [c]                                     ; $44E3: $F2
    add d                                         ; $44E4: $82
    ld l, [hl]                                    ; $44E5: $6E
    adc h                                         ; $44E6: $8C
    ld a, [hl]                                    ; $44E7: $7E
    add [hl]                                      ; $44E8: $86
    ld l, [hl]                                    ; $44E9: $6E
    ld [bc], a                                    ; $44EA: $02
    jp z, $82E5                                   ; $44EB: $CA $E5 $82

    di                                            ; $44EE: $F3
    rlca                                          ; $44EF: $07
    push hl                                       ; $44F0: $E5
    ld l, [hl]                                    ; $44F1: $6E
    rst $10                                       ; $44F2: $D7
    jp hl                                         ; $44F3: $E9


    db $EC                                        ; $44F4: $EC
    db $EB                                        ; $44F5: $EB
    push hl                                       ; $44F6: $E5
    add e                                         ; $44F7: $83
    ld l, [hl]                                    ; $44F8: $6E
    adc h                                         ; $44F9: $8C
    ld a, [hl]                                    ; $44FA: $7E
    sub h                                         ; $44FB: $94
    ld l, [hl]                                    ; $44FC: $6E
    adc h                                         ; $44FD: $8C
    ld a, [hl]                                    ; $44FE: $7E
    sub h                                         ; $44FF: $94
    ld l, [hl]                                    ; $4500: $6E

jr_026_4501:
    adc h                                         ; $4501: $8C
    ld a, [hl]                                    ; $4502: $7E
    sub h                                         ; $4503: $94
    ld l, [hl]                                    ; $4504: $6E

jr_026_4505:
    adc h                                         ; $4505: $8C
    ld a, [hl]                                    ; $4506: $7E
    sub h                                         ; $4507: $94
    ld l, [hl]                                    ; $4508: $6E

jr_026_4509:
    adc h                                         ; $4509: $8C
    ld a, [hl]                                    ; $450A: $7E
    sub h                                         ; $450B: $94
    ld l, [hl]                                    ; $450C: $6E

jr_026_450D:
    adc h                                         ; $450D: $8C
    ld a, [hl]                                    ; $450E: $7E
    sub h                                         ; $450F: $94
    ld l, [hl]                                    ; $4510: $6E

jr_026_4511:
    pop bc                                        ; $4511: $C1
    call z, $007E                                 ; $4512: $CC $7E $00
    sub h                                         ; $4515: $94
    jr nz, jr_026_44A4                            ; $4516: $20 $8C

    ld h, b                                       ; $4518: $60
    sub h                                         ; $4519: $94
    jr nz, jr_026_44A8                            ; $451A: $20 $8C

    ld h, b                                       ; $451C: $60
    sub h                                         ; $451D: $94
    jr nz, jr_026_44AC                            ; $451E: $20 $8C

    ld h, b                                       ; $4520: $60
    sub h                                         ; $4521: $94
    jr nz, jr_026_44B0                            ; $4522: $20 $8C

    ld h, b                                       ; $4524: $60
    sub h                                         ; $4525: $94
    jr nz, jr_026_44B4                            ; $4526: $20 $8C

    ld h, b                                       ; $4528: $60
    add d                                         ; $4529: $82
    jr nz, @+$04                                  ; $452A: $20 $02

    ld [$8528], sp                                ; $452C: $08 $28 $85
    ld [$2001], sp                                ; $452F: $08 $01 $20
    add h                                         ; $4532: $84
    ld [$2086], sp                                ; $4533: $08 $86 $20
    adc h                                         ; $4536: $8C
    ld h, b                                       ; $4537: $60
    add d                                         ; $4538: $82
    jr nz, jr_026_44C4                            ; $4539: $20 $89

    ld [$2001], sp                                ; $453B: $08 $01 $20
    add e                                         ; $453E: $83
    ld [$2085], sp                                ; $453F: $08 $85 $20
    adc h                                         ; $4542: $8C
    ld h, b                                       ; $4543: $60
    add d                                         ; $4544: $82
    jr nz, jr_026_44CF                            ; $4545: $20 $88

    ld [$2001], sp                                ; $4547: $08 $01 $20

jr_026_454A:
    add [hl]                                      ; $454A: $86
    ld [$2083], sp                                ; $454B: $08 $83 $20
    adc h                                         ; $454E: $8C
    ld h, b                                       ; $454F: $60
    sub h                                         ; $4550: $94
    jr nz, jr_026_44DF                            ; $4551: $20 $8C

    ld h, b                                       ; $4553: $60
    sub h                                         ; $4554: $94
    jr nz, jr_026_44E3                            ; $4555: $20 $8C

    ld h, b                                       ; $4557: $60
    add l                                         ; $4558: $85
    jr nz, jr_026_44DF                            ; $4559: $20 $84

    ld [$2003], sp                                ; $455B: $08 $03 $20
    ld [$8628], sp                                ; $455E: $08 $28 $86
    ld [$2082], sp                                ; $4561: $08 $82 $20
    adc h                                         ; $4564: $8C
    ld h, b                                       ; $4565: $60
    add l                                         ; $4566: $85
    jr nz, @-$7A                                  ; $4567: $20 $84

    ld [$2001], sp                                ; $4569: $08 $01 $20
    add h                                         ; $456C: $84
    ld [$2086], sp                                ; $456D: $08 $86 $20
    adc h                                         ; $4570: $8C
    ld h, b                                       ; $4571: $60
    sub h                                         ; $4572: $94
    jr nz, jr_026_4501                            ; $4573: $20 $8C

    ld h, b                                       ; $4575: $60
    sub h                                         ; $4576: $94
    jr nz, jr_026_4505                            ; $4577: $20 $8C

    ld h, b                                       ; $4579: $60
    sub h                                         ; $457A: $94
    jr nz, jr_026_4509                            ; $457B: $20 $8C

    ld h, b                                       ; $457D: $60
    sub h                                         ; $457E: $94
    jr nz, jr_026_450D                            ; $457F: $20 $8C

    ld h, b                                       ; $4581: $60
    sub h                                         ; $4582: $94
    jr nz, jr_026_4511                            ; $4583: $20 $8C

    ld h, b                                       ; $4585: $60
    sub h                                         ; $4586: $94
    jr nz, jr_026_454A                            ; $4587: $20 $C1

    call z, $0060                                 ; $4589: $CC $60 $00
    sub h                                         ; $458C: $94
    ld l, [hl]                                    ; $458D: $6E
    adc h                                         ; $458E: $8C
    ld a, [hl]                                    ; $458F: $7E
    sub h                                         ; $4590: $94
    ld l, [hl]                                    ; $4591: $6E
    adc h                                         ; $4592: $8C
    ld a, [hl]                                    ; $4593: $7E
    sub h                                         ; $4594: $94
    ld l, [hl]                                    ; $4595: $6E
    adc h                                         ; $4596: $8C
    ld a, [hl]                                    ; $4597: $7E
    sub h                                         ; $4598: $94
    ld l, [hl]                                    ; $4599: $6E
    adc h                                         ; $459A: $8C
    ld a, [hl]                                    ; $459B: $7E
    sub h                                         ; $459C: $94
    ld l, [hl]                                    ; $459D: $6E
    adc h                                         ; $459E: $8C
    ld a, [hl]                                    ; $459F: $7E
    add d                                         ; $45A0: $82
    ld l, [hl]                                    ; $45A1: $6E
    inc c                                         ; $45A2: $0C
    jp $EEEF                                      ; $45A3: $C3 $EF $EE


    db $E3                                        ; $45A6: $E3
    push hl                                       ; $45A7: $E5
    ldh a, [$F4]                                  ; $45A8: $F0 $F4
    ld l, [hl]                                    ; $45AA: $6E
    pop bc                                        ; $45AB: $C1
    ld a, [c]                                     ; $45AC: $F2
    db $F4                                        ; $45AD: $F4
    xor h                                         ; $45AE: $AC
    add [hl]                                      ; $45AF: $86
    ld l, [hl]                                    ; $45B0: $6E
    adc h                                         ; $45B1: $8C
    ld a, [hl]                                    ; $45B2: $7E

jr_026_45B3:
    add d                                         ; $45B3: $82
    ld l, [hl]                                    ; $45B4: $6E
    dec c                                         ; $45B5: $0D
    jp $E1E8                                      ; $45B6: $C3 $E8 $E1


    ld a, [c]                                     ; $45B9: $F2
    pop hl                                        ; $45BA: $E1

jr_026_45BB:
    db $E3                                        ; $45BB: $E3
    db $F4                                        ; $45BC: $F4
    push hl                                       ; $45BD: $E5
    ld a, [c]                                     ; $45BE: $F2

jr_026_45BF:
    ld l, [hl]                                    ; $45BF: $6E
    pop hl                                        ; $45C0: $E1
    xor $E4                                       ; $45C1: $EE $E4

jr_026_45C3:
    add l                                         ; $45C3: $85
    ld l, [hl]                                    ; $45C4: $6E
    adc h                                         ; $45C5: $8C
    ld a, [hl]                                    ; $45C6: $7E

jr_026_45C7:
    add d                                         ; $45C7: $82
    ld l, [hl]                                    ; $45C8: $6E
    rrca                                          ; $45C9: $0F
    jp $E5F2                                      ; $45CA: $C3 $F2 $E5


    pop hl                                        ; $45CD: $E1

jr_026_45CE:
    db $F4                                        ; $45CE: $F4
    push af                                       ; $45CF: $F5
    ld a, [c]                                     ; $45D0: $F2
    push hl                                       ; $45D1: $E5
    ld l, [hl]                                    ; $45D2: $6E
    call nz, $F3E5                                ; $45D3: $C4 $E5 $F3
    jp hl                                         ; $45D6: $E9


    rst $20                                       ; $45D7: $E7
    xor $83                                       ; $45D8: $EE $83
    ld l, [hl]                                    ; $45DA: $6E
    adc h                                         ; $45DB: $8C
    ld a, [hl]                                    ; $45DC: $7E
    sub h                                         ; $45DD: $94
    ld l, [hl]                                    ; $45DE: $6E

jr_026_45DF:
    adc h                                         ; $45DF: $8C
    ld a, [hl]                                    ; $45E0: $7E
    sub h                                         ; $45E1: $94

jr_026_45E2:
    ld l, [hl]                                    ; $45E2: $6E

jr_026_45E3:
    adc h                                         ; $45E3: $8C
    ld a, [hl]                                    ; $45E4: $7E
    add l                                         ; $45E5: $85
    ld l, [hl]                                    ; $45E6: $6E
    ld [bc], a                                    ; $45E7: $02
    call $82E1                                    ; $45E8: $CD $E1 $82
    db $F4                                        ; $45EB: $F4
    add hl, bc                                    ; $45EC: $09
    ld l, [hl]                                    ; $45ED: $6E
    ret z                                         ; $45EE: $C8

    rst $28                                       ; $45EF: $EF
    db $EC                                        ; $45F0: $EC
    db $ED                                        ; $45F1: $ED
    ld [c], a                                     ; $45F2: $E2

jr_026_45F3:
    push hl                                       ; $45F3: $E5
    ld a, [c]                                     ; $45F4: $F2
    rst $20                                       ; $45F5: $E7
    add d                                         ; $45F6: $82

jr_026_45F7:
    ld l, [hl]                                    ; $45F7: $6E
    adc h                                         ; $45F8: $8C
    ld a, [hl]                                    ; $45F9: $7E
    add l                                         ; $45FA: $85

jr_026_45FB:
    ld l, [hl]                                    ; $45FB: $6E
    add hl, bc                                    ; $45FC: $09
    call $EBE9                                    ; $45FD: $CD $E9 $EB
    push hl                                       ; $4600: $E5
    ld l, [hl]                                    ; $4601: $6E
    sub $E5                                       ; $4602: $D6 $E5
    rst $20                                       ; $4604: $E7
    pop hl                                        ; $4605: $E1
    add [hl]                                      ; $4606: $86

jr_026_4607:
    ld l, [hl]                                    ; $4607: $6E
    adc h                                         ; $4608: $8C
    ld a, [hl]                                    ; $4609: $7E
    sub h                                         ; $460A: $94
    ld l, [hl]                                    ; $460B: $6E
    adc h                                         ; $460C: $8C
    ld a, [hl]                                    ; $460D: $7E
    sub h                                         ; $460E: $94
    ld l, [hl]                                    ; $460F: $6E
    adc h                                         ; $4610: $8C
    ld a, [hl]                                    ; $4611: $7E
    sub h                                         ; $4612: $94
    ld l, [hl]                                    ; $4613: $6E
    adc h                                         ; $4614: $8C
    ld a, [hl]                                    ; $4615: $7E
    sub h                                         ; $4616: $94
    ld l, [hl]                                    ; $4617: $6E
    adc h                                         ; $4618: $8C
    ld a, [hl]                                    ; $4619: $7E
    sub h                                         ; $461A: $94
    ld l, [hl]                                    ; $461B: $6E
    adc h                                         ; $461C: $8C
    ld a, [hl]                                    ; $461D: $7E
    sub h                                         ; $461E: $94
    ld l, [hl]                                    ; $461F: $6E
    pop bc                                        ; $4620: $C1
    call z, $007E                                 ; $4621: $CC $7E $00
    sub h                                         ; $4624: $94
    jr nz, jr_026_45B3                            ; $4625: $20 $8C

    ld h, b                                       ; $4627: $60
    sub h                                         ; $4628: $94
    jr nz, @-$72                                  ; $4629: $20 $8C

    ld h, b                                       ; $462B: $60
    sub h                                         ; $462C: $94
    jr nz, jr_026_45BB                            ; $462D: $20 $8C

    ld h, b                                       ; $462F: $60
    sub h                                         ; $4630: $94
    jr nz, jr_026_45BF                            ; $4631: $20 $8C

    ld h, b                                       ; $4633: $60
    sub h                                         ; $4634: $94
    jr nz, jr_026_45C3                            ; $4635: $20 $8C

    ld h, b                                       ; $4637: $60
    sub h                                         ; $4638: $94
    jr nz, jr_026_45C7                            ; $4639: $20 $8C

    ld h, b                                       ; $463B: $60
    add d                                         ; $463C: $82
    jr nz, jr_026_45C3                            ; $463D: $20 $84

    ld [$208E], sp                                ; $463F: $08 $8E $20
    adc h                                         ; $4642: $8C
    ld h, b                                       ; $4643: $60
    add d                                         ; $4644: $82
    jr nz, jr_026_45CE                            ; $4645: $20 $87

    ld [$2001], sp                                ; $4647: $08 $01 $20

Jump_026_464A:
    add [hl]                                      ; $464A: $86
    ld [$2084], sp                                ; $464B: $08 $84 $20
    adc h                                         ; $464E: $8C
    ld h, b                                       ; $464F: $60
    sub h                                         ; $4650: $94
    jr nz, jr_026_45DF                            ; $4651: $20 $8C

    ld h, b                                       ; $4653: $60

Jump_026_4654:
    sub h                                         ; $4654: $94
    jr nz, jr_026_45E3                            ; $4655: $20 $8C

    ld h, b                                       ; $4657: $60
    add h                                         ; $4658: $84
    jr nz, jr_026_45E2                            ; $4659: $20 $87

    ld [$2001], sp                                ; $465B: $08 $01 $20
    add [hl]                                      ; $465E: $86
    ld [$2082], sp                                ; $465F: $08 $82 $20
    adc h                                         ; $4662: $8C
    ld h, b                                       ; $4663: $60
    sub h                                         ; $4664: $94
    jr nz, jr_026_45F3                            ; $4665: $20 $8C

    ld h, b                                       ; $4667: $60
    sub h                                         ; $4668: $94
    jr nz, jr_026_45F7                            ; $4669: $20 $8C

    ld h, b                                       ; $466B: $60
    sub h                                         ; $466C: $94
    jr nz, jr_026_45FB                            ; $466D: $20 $8C

    ld h, b                                       ; $466F: $60
    sub h                                         ; $4670: $94
    jr nz, @-$72                                  ; $4671: $20 $8C

    ld h, b                                       ; $4673: $60
    sub h                                         ; $4674: $94
    jr nz, @-$72                                  ; $4675: $20 $8C

    ld h, b                                       ; $4677: $60
    sub h                                         ; $4678: $94
    jr nz, jr_026_4607                            ; $4679: $20 $8C

    ld h, b                                       ; $467B: $60
    sub h                                         ; $467C: $94
    jr nz, @-$3D                                  ; $467D: $20 $C1

    call z, $0060                                 ; $467F: $CC $60 $00
    sub h                                         ; $4682: $94
    ld l, [hl]                                    ; $4683: $6E
    adc h                                         ; $4684: $8C
    ld a, [hl]                                    ; $4685: $7E
    sub h                                         ; $4686: $94
    ld l, [hl]                                    ; $4687: $6E
    adc h                                         ; $4688: $8C
    ld a, [hl]                                    ; $4689: $7E
    sub h                                         ; $468A: $94
    ld l, [hl]                                    ; $468B: $6E
    adc h                                         ; $468C: $8C
    ld a, [hl]                                    ; $468D: $7E
    sub h                                         ; $468E: $94
    ld l, [hl]                                    ; $468F: $6E
    adc h                                         ; $4690: $8C
    ld a, [hl]                                    ; $4691: $7E
    sub h                                         ; $4692: $94
    ld l, [hl]                                    ; $4693: $6E
    adc h                                         ; $4694: $8C
    ld a, [hl]                                    ; $4695: $7E
    sub h                                         ; $4696: $94
    ld l, [hl]                                    ; $4697: $6E
    adc h                                         ; $4698: $8C
    ld a, [hl]                                    ; $4699: $7E
    add d                                         ; $469A: $82
    ld l, [hl]                                    ; $469B: $6E
    inc b                                         ; $469C: $04
    call z, $E1E5                                 ; $469D: $CC $E5 $E1
    db $E4                                        ; $46A0: $E4
    adc [hl]                                      ; $46A1: $8E
    ld l, [hl]                                    ; $46A2: $6E
    adc h                                         ; $46A3: $8C
    ld a, [hl]                                    ; $46A4: $7E
    add d                                         ; $46A5: $82
    ld l, [hl]                                    ; $46A6: $6E
    ld c, $C7                                     ; $46A7: $0E $C7
    pop hl                                        ; $46A9: $E1
    db $ED                                        ; $46AA: $ED
    push hl                                       ; $46AB: $E5
    jp nz, $F9EF                                  ; $46AC: $C2 $EF $F9

    ld l, [hl]                                    ; $46AF: $6E
    pop bc                                        ; $46B0: $C1
    ld a, [c]                                     ; $46B1: $F2
    db $F4                                        ; $46B2: $F4
    jp hl                                         ; $46B3: $E9


    di                                            ; $46B4: $F3
    db $F4                                        ; $46B5: $F4
    add h                                         ; $46B6: $84
    ld l, [hl]                                    ; $46B7: $6E
    adc h                                         ; $46B8: $8C
    ld a, [hl]                                    ; $46B9: $7E
    sub h                                         ; $46BA: $94
    ld l, [hl]                                    ; $46BB: $6E
    adc h                                         ; $46BC: $8C
    ld a, [hl]                                    ; $46BD: $7E
    sub h                                         ; $46BE: $94
    ld l, [hl]                                    ; $46BF: $6E
    adc h                                         ; $46C0: $8C
    ld a, [hl]                                    ; $46C1: $7E
    add h                                         ; $46C2: $84
    ld l, [hl]                                    ; $46C3: $6E
    add hl, bc                                    ; $46C4: $09
    ret nc                                        ; $46C5: $D0

    pop hl                                        ; $46C6: $E1
    db $F4                                        ; $46C7: $F4
    ld a, [c]                                     ; $46C8: $F2
    jp hl                                         ; $46C9: $E9


    db $E3                                        ; $46CA: $E3
    db $EB                                        ; $46CB: $EB
    ld l, [hl]                                    ; $46CC: $6E
    call $E582                                    ; $46CD: $CD $82 $E5
    inc bc                                        ; $46D0: $03
    add sp, -$1F                                  ; $46D1: $E8 $E1
    xor $82                                       ; $46D3: $EE $82
    ld l, [hl]                                    ; $46D5: $6E
    adc h                                         ; $46D6: $8C
    ld a, [hl]                                    ; $46D7: $7E
    sub h                                         ; $46D8: $94
    ld l, [hl]                                    ; $46D9: $6E
    adc h                                         ; $46DA: $8C
    ld a, [hl]                                    ; $46DB: $7E
    sub h                                         ; $46DC: $94
    ld l, [hl]                                    ; $46DD: $6E
    adc h                                         ; $46DE: $8C
    ld a, [hl]                                    ; $46DF: $7E
    sub h                                         ; $46E0: $94
    ld l, [hl]                                    ; $46E1: $6E
    adc h                                         ; $46E2: $8C
    ld a, [hl]                                    ; $46E3: $7E
    sub h                                         ; $46E4: $94
    ld l, [hl]                                    ; $46E5: $6E
    adc h                                         ; $46E6: $8C
    ld a, [hl]                                    ; $46E7: $7E
    sub h                                         ; $46E8: $94
    ld l, [hl]                                    ; $46E9: $6E
    adc h                                         ; $46EA: $8C
    ld a, [hl]                                    ; $46EB: $7E
    sub h                                         ; $46EC: $94
    ld l, [hl]                                    ; $46ED: $6E
    adc h                                         ; $46EE: $8C
    ld a, [hl]                                    ; $46EF: $7E
    sub h                                         ; $46F0: $94
    ld l, [hl]                                    ; $46F1: $6E
    pop bc                                        ; $46F2: $C1
    call z, $007E                                 ; $46F3: $CC $7E $00
    ret nz                                        ; $46F6: $C0

    ld [c], a                                     ; $46F7: $E2
    nop                                           ; $46F8: $00
    add a                                         ; $46F9: $87
    ld [$0001], sp                                ; $46FA: $08 $01 $00
    add a                                         ; $46FD: $87
    ld [$54C0], sp                                ; $46FE: $08 $C0 $54
    nop                                           ; $4701: $00
    add [hl]                                      ; $4702: $86
    ld [$0001], sp                                ; $4703: $08 $01 $00
    add [hl]                                      ; $4706: $86
    ld [$0093], sp                                ; $4707: $08 $93 $00
    add e                                         ; $470A: $83
    ld [$0001], sp                                ; $470B: $08 $01 $00
    adc b                                         ; $470E: $88
    ld [$0094], sp                                ; $470F: $08 $94 $00
    add h                                         ; $4712: $84
    ld [$0001], sp                                ; $4713: $08 $01 $00
    add [hl]                                      ; $4716: $86
    ld [$70C2], sp                                ; $4717: $08 $C2 $70
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    sub h                                         ; $471C: $94
    ld l, [hl]                                    ; $471D: $6E
    adc h                                         ; $471E: $8C
    ld a, [hl]                                    ; $471F: $7E
    sub h                                         ; $4720: $94
    ld l, [hl]                                    ; $4721: $6E
    adc h                                         ; $4722: $8C
    ld a, [hl]                                    ; $4723: $7E
    sub h                                         ; $4724: $94
    ld l, [hl]                                    ; $4725: $6E
    adc h                                         ; $4726: $8C
    ld a, [hl]                                    ; $4727: $7E
    sub h                                         ; $4728: $94
    ld l, [hl]                                    ; $4729: $6E
    adc h                                         ; $472A: $8C
    ld a, [hl]                                    ; $472B: $7E
    sub h                                         ; $472C: $94
    ld l, [hl]                                    ; $472D: $6E
    adc h                                         ; $472E: $8C
    ld a, [hl]                                    ; $472F: $7E
    sub h                                         ; $4730: $94
    ld l, [hl]                                    ; $4731: $6E
    adc h                                         ; $4732: $8C
    ld a, [hl]                                    ; $4733: $7E
    sub h                                         ; $4734: $94
    ld l, [hl]                                    ; $4735: $6E

jr_026_4736:
    adc h                                         ; $4736: $8C
    ld a, [hl]                                    ; $4737: $7E
    add d                                         ; $4738: $82
    ld l, [hl]                                    ; $4739: $6E

jr_026_473A:
    rrca                                          ; $473A: $0F
    rst $00                                       ; $473B: $C7
    pop hl                                        ; $473C: $E1
    db $ED                                        ; $473D: $ED

jr_026_473E:
    push hl                                       ; $473E: $E5
    jp nz, $F9EF                                  ; $473F: $C2 $EF $F9

jr_026_4742:
    ld l, [hl]                                    ; $4742: $6E
    pop bc                                        ; $4743: $C1
    ld a, [c]                                     ; $4744: $F2
    db $F4                                        ; $4745: $F4

jr_026_4746:
    jp hl                                         ; $4746: $E9


    di                                            ; $4747: $F3
    db $F4                                        ; $4748: $F4
    di                                            ; $4749: $F3

jr_026_474A:
    add e                                         ; $474A: $83

jr_026_474B:
    ld l, [hl]                                    ; $474B: $6E
    adc h                                         ; $474C: $8C
    ld a, [hl]                                    ; $474D: $7E

jr_026_474E:
    sub h                                         ; $474E: $94
    ld l, [hl]                                    ; $474F: $6E
    adc h                                         ; $4750: $8C
    ld a, [hl]                                    ; $4751: $7E
    sub h                                         ; $4752: $94
    ld l, [hl]                                    ; $4753: $6E
    adc h                                         ; $4754: $8C
    ld a, [hl]                                    ; $4755: $7E
    add l                                         ; $4756: $85
    ld l, [hl]                                    ; $4757: $6E
    add hl, bc                                    ; $4758: $09
    pop bc                                        ; $4759: $C1
    db $E4                                        ; $475A: $E4
    ld a, [c]                                     ; $475B: $F2
    jp hl                                         ; $475C: $E9


    pop hl                                        ; $475D: $E1
    xor $6E                                       ; $475E: $EE $6E

jr_026_4760:
    add $E5                                       ; $4760: $C6 $E5
    add d                                         ; $4762: $82
    ld a, [c]                                     ; $4763: $F2

jr_026_4764:
    ld [bc], a                                    ; $4764: $02
    push hl                                       ; $4765: $E5
    ld a, [c]                                     ; $4766: $F2
    add d                                         ; $4767: $82
    ld l, [hl]                                    ; $4768: $6E
    adc h                                         ; $4769: $8C
    ld a, [hl]                                    ; $476A: $7E
    add l                                         ; $476B: $85
    ld l, [hl]                                    ; $476C: $6E
    ld b, $D4                                     ; $476D: $06 $D4
    jp hl                                         ; $476F: $E9


jr_026_4770:
    db $ED                                        ; $4770: $ED
    ld l, [hl]                                    ; $4771: $6E
    rst $00                                       ; $4772: $C7

jr_026_4773:
    jp hl                                         ; $4773: $E9


    add d                                         ; $4774: $82
    db $EC                                        ; $4775: $EC
    inc b                                         ; $4776: $04
    push hl                                       ; $4777: $E5
    db $F4                                        ; $4778: $F4
    db $F4                                        ; $4779: $F4
    push hl                                       ; $477A: $E5
    add e                                         ; $477B: $83
    ld l, [hl]                                    ; $477C: $6E
    adc h                                         ; $477D: $8C
    ld a, [hl]                                    ; $477E: $7E
    add l                                         ; $477F: $85
    ld l, [hl]                                    ; $4780: $6E
    dec bc                                        ; $4781: $0B
    jp nc, $E3E9                                  ; $4782: $D2 $E9 $E3

    add sp, $6E                                   ; $4785: $E8 $6E

jr_026_4787:
    rst $10                                       ; $4787: $D7
    push hl                                       ; $4788: $E5
    ld a, [c]                                     ; $4789: $F2
    xor $E5                                       ; $478A: $EE $E5
    ld a, [c]                                     ; $478C: $F2
    add h                                         ; $478D: $84
    ld l, [hl]                                    ; $478E: $6E

jr_026_478F:
    adc h                                         ; $478F: $8C
    ld a, [hl]                                    ; $4790: $7E
    sub h                                         ; $4791: $94
    ld l, [hl]                                    ; $4792: $6E

jr_026_4793:
    adc h                                         ; $4793: $8C
    ld a, [hl]                                    ; $4794: $7E
    sub h                                         ; $4795: $94
    ld l, [hl]                                    ; $4796: $6E
    adc h                                         ; $4797: $8C
    ld a, [hl]                                    ; $4798: $7E
    sub h                                         ; $4799: $94
    ld l, [hl]                                    ; $479A: $6E
    adc h                                         ; $479B: $8C
    ld a, [hl]                                    ; $479C: $7E
    sub h                                         ; $479D: $94
    ld l, [hl]                                    ; $479E: $6E
    adc h                                         ; $479F: $8C
    ld a, [hl]                                    ; $47A0: $7E
    sub h                                         ; $47A1: $94
    ld l, [hl]                                    ; $47A2: $6E
    pop bc                                        ; $47A3: $C1
    call z, $007E                                 ; $47A4: $CC $7E $00
    sub h                                         ; $47A7: $94
    jr nz, jr_026_4736                            ; $47A8: $20 $8C

    ld h, b                                       ; $47AA: $60
    sub h                                         ; $47AB: $94
    jr nz, jr_026_473A                            ; $47AC: $20 $8C

    ld h, b                                       ; $47AE: $60
    sub h                                         ; $47AF: $94
    jr nz, jr_026_473E                            ; $47B0: $20 $8C

    ld h, b                                       ; $47B2: $60
    sub h                                         ; $47B3: $94
    jr nz, jr_026_4742                            ; $47B4: $20 $8C

    ld h, b                                       ; $47B6: $60
    sub h                                         ; $47B7: $94
    jr nz, jr_026_4746                            ; $47B8: $20 $8C

    ld h, b                                       ; $47BA: $60
    sub h                                         ; $47BB: $94
    jr nz, jr_026_474A                            ; $47BC: $20 $8C

    ld h, b                                       ; $47BE: $60
    sub h                                         ; $47BF: $94
    jr nz, jr_026_474E                            ; $47C0: $20 $8C

    ld h, b                                       ; $47C2: $60
    add d                                         ; $47C3: $82
    jr nz, jr_026_474B                            ; $47C4: $20 $85

    ld [$2803], sp                                ; $47C6: $08 $03 $28
    ld [$8720], sp                                ; $47C9: $08 $20 $87

jr_026_47CC:
    ld [$2083], sp                                ; $47CC: $08 $83 $20
    adc h                                         ; $47CF: $8C
    ld h, b                                       ; $47D0: $60
    sub h                                         ; $47D1: $94
    jr nz, jr_026_4760                            ; $47D2: $20 $8C

    ld h, b                                       ; $47D4: $60
    sub h                                         ; $47D5: $94
    jr nz, jr_026_4764                            ; $47D6: $20 $8C

    ld h, b                                       ; $47D8: $60
    add [hl]                                      ; $47D9: $86
    jr nz, @-$79                                  ; $47DA: $20 $85

    ld [$2802], sp                                ; $47DC: $08 $02 $28
    jr nz, jr_026_4764                            ; $47DF: $20 $83

    ld [$2801], sp                                ; $47E1: $08 $01 $28
    add e                                         ; $47E4: $83
    jr nz, jr_026_4773                            ; $47E5: $20 $8C

    ld h, b                                       ; $47E7: $60
    add [hl]                                      ; $47E8: $86
    jr nz, jr_026_4770                            ; $47E9: $20 $85

    ld [$2001], sp                                ; $47EB: $08 $01 $20
    add [hl]                                      ; $47EE: $86
    ld [$2082], sp                                ; $47EF: $08 $82 $20
    adc h                                         ; $47F2: $8C
    ld h, b                                       ; $47F3: $60
    sub h                                         ; $47F4: $94
    jr nz, @-$72                                  ; $47F5: $20 $8C

    ld h, b                                       ; $47F7: $60
    sub h                                         ; $47F8: $94
    jr nz, jr_026_4787                            ; $47F9: $20 $8C

    ld h, b                                       ; $47FB: $60
    sub h                                         ; $47FC: $94
    jr nz, @-$72                                  ; $47FD: $20 $8C

    ld h, b                                       ; $47FF: $60
    sub h                                         ; $4800: $94
    jr nz, jr_026_478F                            ; $4801: $20 $8C

    ld h, b                                       ; $4803: $60
    sub h                                         ; $4804: $94
    jr nz, jr_026_4793                            ; $4805: $20 $8C

    ld h, b                                       ; $4807: $60
    sub h                                         ; $4808: $94
    jr nz, jr_026_47CC                            ; $4809: $20 $C1

    call z, $0060                                 ; $480B: $CC $60 $00
    sub h                                         ; $480E: $94
    ld l, [hl]                                    ; $480F: $6E
    adc h                                         ; $4810: $8C
    ld a, [hl]                                    ; $4811: $7E
    sub h                                         ; $4812: $94
    ld l, [hl]                                    ; $4813: $6E
    adc h                                         ; $4814: $8C
    ld a, [hl]                                    ; $4815: $7E

jr_026_4816:
    sub h                                         ; $4816: $94
    ld l, [hl]                                    ; $4817: $6E
    adc h                                         ; $4818: $8C
    ld a, [hl]                                    ; $4819: $7E

jr_026_481A:
    sub h                                         ; $481A: $94
    ld l, [hl]                                    ; $481B: $6E
    adc h                                         ; $481C: $8C
    ld a, [hl]                                    ; $481D: $7E

jr_026_481E:
    sub h                                         ; $481E: $94
    ld l, [hl]                                    ; $481F: $6E
    adc h                                         ; $4820: $8C
    ld a, [hl]                                    ; $4821: $7E

jr_026_4822:
    sub h                                         ; $4822: $94

jr_026_4823:
    ld l, [hl]                                    ; $4823: $6E
    adc h                                         ; $4824: $8C
    ld a, [hl]                                    ; $4825: $7E
    sub h                                         ; $4826: $94
    ld l, [hl]                                    ; $4827: $6E
    adc h                                         ; $4828: $8C
    ld a, [hl]                                    ; $4829: $7E
    add d                                         ; $482A: $82

jr_026_482B:
    ld l, [hl]                                    ; $482B: $6E
    rrca                                          ; $482C: $0F

jr_026_482D:
    rst $00                                       ; $482D: $C7
    pop hl                                        ; $482E: $E1
    db $ED                                        ; $482F: $ED
    push hl                                       ; $4830: $E5
    jp nz, $F9EF                                  ; $4831: $C2 $EF $F9

    ld l, [hl]                                    ; $4834: $6E
    pop bc                                        ; $4835: $C1
    ld a, [c]                                     ; $4836: $F2
    db $F4                                        ; $4837: $F4
    jp hl                                         ; $4838: $E9


    di                                            ; $4839: $F3
    db $F4                                        ; $483A: $F4
    di                                            ; $483B: $F3
    add e                                         ; $483C: $83
    ld l, [hl]                                    ; $483D: $6E
    adc h                                         ; $483E: $8C
    ld a, [hl]                                    ; $483F: $7E

jr_026_4840:
    sub h                                         ; $4840: $94
    ld l, [hl]                                    ; $4841: $6E
    adc h                                         ; $4842: $8C
    ld a, [hl]                                    ; $4843: $7E
    sub h                                         ; $4844: $94
    ld l, [hl]                                    ; $4845: $6E
    adc h                                         ; $4846: $8C
    ld a, [hl]                                    ; $4847: $7E
    add [hl]                                      ; $4848: $86
    ld l, [hl]                                    ; $4849: $6E
    dec bc                                        ; $484A: $0B
    ret z                                         ; $484B: $C8

    pop hl                                        ; $484C: $E1
    ld sp, hl                                     ; $484D: $F9
    pop hl                                        ; $484E: $E1
    db $F4                                        ; $484F: $F4
    rst $28                                       ; $4850: $EF

jr_026_4851:
    ld l, [hl]                                    ; $4851: $6E

jr_026_4852:
    db $D3                                        ; $4852: $D3
    pop hl                                        ; $4853: $E1
    db $F4                                        ; $4854: $F4
    rst $28                                       ; $4855: $EF

jr_026_4856:
    add e                                         ; $4856: $83
    ld l, [hl]                                    ; $4857: $6E
    adc h                                         ; $4858: $8C
    ld a, [hl]                                    ; $4859: $7E
    add [hl]                                      ; $485A: $86
    ld l, [hl]                                    ; $485B: $6E
    inc c                                         ; $485C: $0C
    jp $E1E8                                      ; $485D: $C3 $E8 $E1


    xor $E1                                       ; $4860: $EE $E1
    ld l, [hl]                                    ; $4862: $6E
    rst $00                                       ; $4863: $C7
    jp hl                                         ; $4864: $E9


    db $EC                                        ; $4865: $EC

jr_026_4866:
    db $ED                                        ; $4866: $ED
    pop hl                                        ; $4867: $E1
    xor $82                                       ; $4868: $EE $82

jr_026_486A:
    ld l, [hl]                                    ; $486A: $6E
    adc h                                         ; $486B: $8C
    ld a, [hl]                                    ; $486C: $7E
    sub h                                         ; $486D: $94

jr_026_486E:
    ld l, [hl]                                    ; $486E: $6E
    adc h                                         ; $486F: $8C
    ld a, [hl]                                    ; $4870: $7E
    sub h                                         ; $4871: $94

jr_026_4872:
    ld l, [hl]                                    ; $4872: $6E
    adc h                                         ; $4873: $8C
    ld a, [hl]                                    ; $4874: $7E
    sub h                                         ; $4875: $94

jr_026_4876:
    ld l, [hl]                                    ; $4876: $6E
    adc h                                         ; $4877: $8C
    ld a, [hl]                                    ; $4878: $7E
    sub h                                         ; $4879: $94

jr_026_487A:
    ld l, [hl]                                    ; $487A: $6E
    adc h                                         ; $487B: $8C
    ld a, [hl]                                    ; $487C: $7E
    sub h                                         ; $487D: $94
    ld l, [hl]                                    ; $487E: $6E
    adc h                                         ; $487F: $8C
    ld a, [hl]                                    ; $4880: $7E
    sub h                                         ; $4881: $94
    ld l, [hl]                                    ; $4882: $6E
    pop bc                                        ; $4883: $C1
    call z, $007E                                 ; $4884: $CC $7E $00
    sub h                                         ; $4887: $94
    jr nz, jr_026_4816                            ; $4888: $20 $8C

    ld b, b                                       ; $488A: $40
    sub h                                         ; $488B: $94
    jr nz, jr_026_481A                            ; $488C: $20 $8C

    ld b, b                                       ; $488E: $40
    sub h                                         ; $488F: $94
    jr nz, jr_026_481E                            ; $4890: $20 $8C

    ld b, b                                       ; $4892: $40
    sub h                                         ; $4893: $94
    jr nz, jr_026_4822                            ; $4894: $20 $8C

    ld b, b                                       ; $4896: $40
    add d                                         ; $4897: $82
    jr nz, jr_026_4823                            ; $4898: $20 $89

    ld [$2089], sp                                ; $489A: $08 $89 $20
    adc h                                         ; $489D: $8C
    ld b, b                                       ; $489E: $40
    add d                                         ; $489F: $82
    jr nz, jr_026_482B                            ; $48A0: $20 $89

    ld [$2089], sp                                ; $48A2: $08 $89 $20
    adc h                                         ; $48A5: $8C
    ld b, b                                       ; $48A6: $40
    add d                                         ; $48A7: $82
    jr nz, jr_026_482D                            ; $48A8: $20 $83

    ld [$2001], sp                                ; $48AA: $08 $01 $20
    add h                                         ; $48AD: $84
    ld [$2001], sp                                ; $48AE: $08 $01 $20
    add l                                         ; $48B1: $85
    ld [$2084], sp                                ; $48B2: $08 $84 $20
    adc h                                         ; $48B5: $8C
    ld b, b                                       ; $48B6: $40
    add d                                         ; $48B7: $82
    jr nz, jr_026_4840                            ; $48B8: $20 $86

    ld [$2001], sp                                ; $48BA: $08 $01 $20
    add d                                         ; $48BD: $82
    ld [$2089], sp                                ; $48BE: $08 $89 $20
    adc h                                         ; $48C1: $8C
    ld b, b                                       ; $48C2: $40
    sub h                                         ; $48C3: $94
    jr nz, jr_026_4852                            ; $48C4: $20 $8C

    ld b, b                                       ; $48C6: $40
    sub h                                         ; $48C7: $94
    jr nz, jr_026_4856                            ; $48C8: $20 $8C

    ld b, b                                       ; $48CA: $40
    add [hl]                                      ; $48CB: $86
    jr nz, jr_026_4851                            ; $48CC: $20 $83

    ld [$2001], sp                                ; $48CE: $08 $01 $20
    adc b                                         ; $48D1: $88
    ld [$2082], sp                                ; $48D2: $08 $82 $20
    adc h                                         ; $48D5: $8C
    ld b, b                                       ; $48D6: $40
    sub h                                         ; $48D7: $94
    jr nz, jr_026_4866                            ; $48D8: $20 $8C

    ld b, b                                       ; $48DA: $40
    sub h                                         ; $48DB: $94
    jr nz, jr_026_486A                            ; $48DC: $20 $8C

    ld b, b                                       ; $48DE: $40
    sub h                                         ; $48DF: $94
    jr nz, jr_026_486E                            ; $48E0: $20 $8C

    ld b, b                                       ; $48E2: $40
    sub h                                         ; $48E3: $94
    jr nz, jr_026_4872                            ; $48E4: $20 $8C

    ld b, b                                       ; $48E6: $40
    sub h                                         ; $48E7: $94
    jr nz, jr_026_4876                            ; $48E8: $20 $8C

    ld b, b                                       ; $48EA: $40
    sub h                                         ; $48EB: $94
    jr nz, jr_026_487A                            ; $48EC: $20 $8C

    ld b, b                                       ; $48EE: $40
    sub h                                         ; $48EF: $94
    jr nz, @-$3D                                  ; $48F0: $20 $C1

    call z, $0040                                 ; $48F2: $CC $40 $00
    sub h                                         ; $48F5: $94
    ld l, [hl]                                    ; $48F6: $6E
    adc h                                         ; $48F7: $8C
    ld a, [hl]                                    ; $48F8: $7E
    sub h                                         ; $48F9: $94
    ld l, [hl]                                    ; $48FA: $6E
    adc h                                         ; $48FB: $8C
    ld a, [hl]                                    ; $48FC: $7E
    sub h                                         ; $48FD: $94
    ld l, [hl]                                    ; $48FE: $6E
    adc h                                         ; $48FF: $8C
    ld a, [hl]                                    ; $4900: $7E
    sub h                                         ; $4901: $94
    ld l, [hl]                                    ; $4902: $6E
    adc h                                         ; $4903: $8C
    ld a, [hl]                                    ; $4904: $7E
    add d                                         ; $4905: $82
    ld l, [hl]                                    ; $4906: $6E
    add hl, bc                                    ; $4907: $09
    jp $E1E8                                      ; $4908: $C3 $E8 $E1


    ld a, [c]                                     ; $490B: $F2
    pop hl                                        ; $490C: $E1
    db $E3                                        ; $490D: $E3
    db $F4                                        ; $490E: $F4
    push hl                                       ; $490F: $E5
    ld a, [c]                                     ; $4910: $F2
    adc c                                         ; $4911: $89
    ld l, [hl]                                    ; $4912: $6E

jr_026_4913:
    adc h                                         ; $4913: $8C
    ld a, [hl]                                    ; $4914: $7E
    add d                                         ; $4915: $82
    ld l, [hl]                                    ; $4916: $6E

jr_026_4917:
    add hl, bc                                    ; $4917: $09
    pop bc                                        ; $4918: $C1
    xor $E9                                       ; $4919: $EE $E9

jr_026_491B:
    db $ED                                        ; $491B: $ED
    pop hl                                        ; $491C: $E1

jr_026_491D:
    db $F4                                        ; $491D: $F4
    jp hl                                         ; $491E: $E9


jr_026_491F:
    rst $28                                       ; $491F: $EF
    xor $89                                       ; $4920: $EE $89
    ld l, [hl]                                    ; $4922: $6E

jr_026_4923:
    adc h                                         ; $4923: $8C
    ld a, [hl]                                    ; $4924: $7E
    add d                                         ; $4925: $82
    ld l, [hl]                                    ; $4926: $6E
    ld c, $E1                                     ; $4927: $0E $E1
    xor $E4                                       ; $4929: $EE $E4
    ld l, [hl]                                    ; $492B: $6E
    call nc, $EEEF                                ; $492C: $D4 $EF $EE
    ld sp, hl                                     ; $492F: $F9
    ld l, [hl]                                    ; $4930: $6E
    jp z, $EEEF                                   ; $4931: $CA $EF $EE

    push hl                                       ; $4934: $E5
    di                                            ; $4935: $F3
    add h                                         ; $4936: $84
    ld l, [hl]                                    ; $4937: $6E
    adc h                                         ; $4938: $8C
    ld a, [hl]                                    ; $4939: $7E

jr_026_493A:
    add d                                         ; $493A: $82
    ld l, [hl]                                    ; $493B: $6E
    add hl, bc                                    ; $493C: $09
    call nz, $F3E5                                ; $493D: $C4 $E5 $F3
    jp hl                                         ; $4940: $E9


    rst $20                                       ; $4941: $E7
    xor $6E                                       ; $4942: $EE $6E
    ld [c], a                                     ; $4944: $E2
    ld sp, hl                                     ; $4945: $F9
    adc c                                         ; $4946: $89
    ld l, [hl]                                    ; $4947: $6E
    adc h                                         ; $4948: $8C
    ld a, [hl]                                    ; $4949: $7E
    sub h                                         ; $494A: $94
    ld l, [hl]                                    ; $494B: $6E
    adc h                                         ; $494C: $8C
    ld a, [hl]                                    ; $494D: $7E
    sub h                                         ; $494E: $94

jr_026_494F:
    ld l, [hl]                                    ; $494F: $6E
    adc h                                         ; $4950: $8C

jr_026_4951:
    ld a, [hl]                                    ; $4951: $7E
    add [hl]                                      ; $4952: $86

jr_026_4953:
    ld l, [hl]                                    ; $4953: $6E
    ld b, $D4                                     ; $4954: $06 $D4
    jp hl                                         ; $4956: $E9


    db $ED                                        ; $4957: $ED
    ld l, [hl]                                    ; $4958: $6E
    rst $00                                       ; $4959: $C7
    jp hl                                         ; $495A: $E9


    add d                                         ; $495B: $82
    db $EC                                        ; $495C: $EC
    ld b, $E5                                     ; $495D: $06 $E5
    db $F4                                        ; $495F: $F4
    db $F4                                        ; $4960: $F4
    push hl                                       ; $4961: $E5
    ld l, [hl]                                    ; $4962: $6E

jr_026_4963:
    ld l, [hl]                                    ; $4963: $6E
    adc h                                         ; $4964: $8C
    ld a, [hl]                                    ; $4965: $7E
    sub h                                         ; $4966: $94

jr_026_4967:
    ld l, [hl]                                    ; $4967: $6E
    adc h                                         ; $4968: $8C
    ld a, [hl]                                    ; $4969: $7E
    sub h                                         ; $496A: $94

jr_026_496B:
    ld l, [hl]                                    ; $496B: $6E
    adc h                                         ; $496C: $8C
    ld a, [hl]                                    ; $496D: $7E
    sub h                                         ; $496E: $94

jr_026_496F:
    ld l, [hl]                                    ; $496F: $6E
    adc h                                         ; $4970: $8C
    ld a, [hl]                                    ; $4971: $7E
    sub h                                         ; $4972: $94

jr_026_4973:
    ld l, [hl]                                    ; $4973: $6E
    adc h                                         ; $4974: $8C
    ld a, [hl]                                    ; $4975: $7E
    sub h                                         ; $4976: $94

jr_026_4977:
    ld l, [hl]                                    ; $4977: $6E
    adc h                                         ; $4978: $8C
    ld a, [hl]                                    ; $4979: $7E
    sub h                                         ; $497A: $94
    ld l, [hl]                                    ; $497B: $6E
    adc h                                         ; $497C: $8C
    ld a, [hl]                                    ; $497D: $7E
    sub h                                         ; $497E: $94
    ld l, [hl]                                    ; $497F: $6E
    pop bc                                        ; $4980: $C1
    call z, $007E                                 ; $4981: $CC $7E $00
    sub h                                         ; $4984: $94
    jr nz, jr_026_4913                            ; $4985: $20 $8C

    nop                                           ; $4987: $00
    sub h                                         ; $4988: $94
    jr nz, jr_026_4917                            ; $4989: $20 $8C

    nop                                           ; $498B: $00
    sub h                                         ; $498C: $94
    jr nz, jr_026_491B                            ; $498D: $20 $8C

    nop                                           ; $498F: $00
    sub h                                         ; $4990: $94
    jr nz, jr_026_491F                            ; $4991: $20 $8C

    nop                                           ; $4993: $00
    sub h                                         ; $4994: $94
    jr nz, jr_026_4923                            ; $4995: $20 $8C

    nop                                           ; $4997: $00
    add d                                         ; $4998: $82
    jr nz, jr_026_491D                            ; $4999: $20 $82

    ld [$2001], sp                                ; $499B: $08 $01 $20
    adc c                                         ; $499E: $89
    ld [$2086], sp                                ; $499F: $08 $86 $20
    adc h                                         ; $49A2: $8C
    nop                                           ; $49A3: $00
    add d                                         ; $49A4: $82
    jr nz, @-$7B                                  ; $49A5: $20 $83

    ld [$2001], sp                                ; $49A7: $08 $01 $20
    add [hl]                                      ; $49AA: $86
    ld [$2001], sp                                ; $49AB: $08 $01 $20
    add l                                         ; $49AE: $85
    ld [$2082], sp                                ; $49AF: $08 $82 $20
    adc h                                         ; $49B2: $8C
    nop                                           ; $49B3: $00
    add d                                         ; $49B4: $82
    jr nz, jr_026_493A                            ; $49B5: $20 $83

    ld [$2801], sp                                ; $49B7: $08 $01 $28
    add h                                         ; $49BA: $84
    ld [$208A], sp                                ; $49BB: $08 $8A $20
    adc h                                         ; $49BE: $8C
    nop                                           ; $49BF: $00
    sub h                                         ; $49C0: $94
    jr nz, jr_026_494F                            ; $49C1: $20 $8C

    nop                                           ; $49C3: $00
    sub h                                         ; $49C4: $94
    jr nz, jr_026_4953                            ; $49C5: $20 $8C

    nop                                           ; $49C7: $00
    add a                                         ; $49C8: $87
    jr nz, jr_026_4951                            ; $49C9: $20 $86

    ld [$2001], sp                                ; $49CB: $08 $01 $20
    add h                                         ; $49CE: $84
    ld [$2082], sp                                ; $49CF: $08 $82 $20
    adc h                                         ; $49D2: $8C
    nop                                           ; $49D3: $00
    sub h                                         ; $49D4: $94
    jr nz, jr_026_4963                            ; $49D5: $20 $8C

    nop                                           ; $49D7: $00
    sub h                                         ; $49D8: $94
    jr nz, jr_026_4967                            ; $49D9: $20 $8C

    nop                                           ; $49DB: $00
    sub h                                         ; $49DC: $94
    jr nz, jr_026_496B                            ; $49DD: $20 $8C

    nop                                           ; $49DF: $00
    sub h                                         ; $49E0: $94
    jr nz, jr_026_496F                            ; $49E1: $20 $8C

    nop                                           ; $49E3: $00
    sub h                                         ; $49E4: $94
    jr nz, jr_026_4973                            ; $49E5: $20 $8C

    nop                                           ; $49E7: $00
    sub h                                         ; $49E8: $94
    jr nz, jr_026_4977                            ; $49E9: $20 $8C

    nop                                           ; $49EB: $00
    sub h                                         ; $49EC: $94
    jr nz, @-$3D                                  ; $49ED: $20 $C1

    call z, RST_00                                ; $49EF: $CC $00 $00
    sub h                                         ; $49F2: $94
    ld l, [hl]                                    ; $49F3: $6E
    adc h                                         ; $49F4: $8C
    ld a, [hl]                                    ; $49F5: $7E
    sub h                                         ; $49F6: $94
    ld l, [hl]                                    ; $49F7: $6E
    adc h                                         ; $49F8: $8C
    ld a, [hl]                                    ; $49F9: $7E
    sub h                                         ; $49FA: $94
    ld l, [hl]                                    ; $49FB: $6E
    adc h                                         ; $49FC: $8C
    ld a, [hl]                                    ; $49FD: $7E
    sub h                                         ; $49FE: $94
    ld l, [hl]                                    ; $49FF: $6E
    adc h                                         ; $4A00: $8C
    ld a, [hl]                                    ; $4A01: $7E
    sub h                                         ; $4A02: $94
    ld l, [hl]                                    ; $4A03: $6E
    adc h                                         ; $4A04: $8C
    ld a, [hl]                                    ; $4A05: $7E
    add d                                         ; $4A06: $82

jr_026_4A07:
    ld l, [hl]                                    ; $4A07: $6E
    inc c                                         ; $4A08: $0C
    add $D8                                       ; $4A09: $C6 $D8

jr_026_4A0B:
    ld l, [hl]                                    ; $4A0B: $6E
    pop bc                                        ; $4A0C: $C1
    xor $E9                                       ; $4A0D: $EE $E9

jr_026_4A0F:
    db $ED                                        ; $4A0F: $ED
    pop hl                                        ; $4A10: $E1
    db $F4                                        ; $4A11: $F4
    jp hl                                         ; $4A12: $E9


jr_026_4A13:
    rst $28                                       ; $4A13: $EF
    xor $86                                       ; $4A14: $EE $86
    ld l, [hl]                                    ; $4A16: $6E

jr_026_4A17:
    adc h                                         ; $4A17: $8C
    ld a, [hl]                                    ; $4A18: $7E
    add d                                         ; $4A19: $82
    ld l, [hl]                                    ; $4A1A: $6E

jr_026_4A1B:
    ld b, $E1                                     ; $4A1B: $06 $E1
    xor $E4                                       ; $4A1D: $EE $E4
    ld l, [hl]                                    ; $4A1F: $6E
    jp nz, $82E1                                  ; $4A20: $C2 $E1 $82

    db $F4                                        ; $4A23: $F4
    ld [$E5EC], sp                                ; $4A24: $08 $EC $E5
    ld l, [hl]                                    ; $4A27: $6E
    db $D3                                        ; $4A28: $D3
    db $E3                                        ; $4A29: $E3

jr_026_4A2A:
    push hl                                       ; $4A2A: $E5
    xor $E5                                       ; $4A2B: $EE $E5
    add d                                         ; $4A2D: $82
    ld l, [hl]                                    ; $4A2E: $6E
    adc h                                         ; $4A2F: $8C
    ld a, [hl]                                    ; $4A30: $7E
    add d                                         ; $4A31: $82
    ld l, [hl]                                    ; $4A32: $6E
    ld [$F2C7], sp                                ; $4A33: $08 $C7 $F2
    pop hl                                        ; $4A36: $E1
    pop af                                        ; $4A37: $F1
    add sp, -$17                                  ; $4A38: $E8 $E9
    db $E3                                        ; $4A3A: $E3
    di                                            ; $4A3B: $F3
    adc d                                         ; $4A3C: $8A
    ld l, [hl]                                    ; $4A3D: $6E
    adc h                                         ; $4A3E: $8C

jr_026_4A3F:
    ld a, [hl]                                    ; $4A3F: $7E

jr_026_4A40:
    sub h                                         ; $4A40: $94
    ld l, [hl]                                    ; $4A41: $6E
    adc h                                         ; $4A42: $8C

jr_026_4A43:
    ld a, [hl]                                    ; $4A43: $7E
    sub h                                         ; $4A44: $94
    ld l, [hl]                                    ; $4A45: $6E
    adc h                                         ; $4A46: $8C
    ld a, [hl]                                    ; $4A47: $7E
    add a                                         ; $4A48: $87
    ld l, [hl]                                    ; $4A49: $6E
    dec bc                                        ; $4A4A: $0B
    ret z                                         ; $4A4B: $C8

    pop hl                                        ; $4A4C: $E1
    ld sp, hl                                     ; $4A4D: $F9
    pop hl                                        ; $4A4E: $E1
    db $F4                                        ; $4A4F: $F4
    rst $28                                       ; $4A50: $EF
    ld l, [hl]                                    ; $4A51: $6E
    db $D3                                        ; $4A52: $D3

jr_026_4A53:
    pop hl                                        ; $4A53: $E1
    db $F4                                        ; $4A54: $F4
    rst $28                                       ; $4A55: $EF
    add d                                         ; $4A56: $82

jr_026_4A57:
    ld l, [hl]                                    ; $4A57: $6E
    adc h                                         ; $4A58: $8C
    ld a, [hl]                                    ; $4A59: $7E
    sub h                                         ; $4A5A: $94

jr_026_4A5B:
    ld l, [hl]                                    ; $4A5B: $6E
    adc h                                         ; $4A5C: $8C
    ld a, [hl]                                    ; $4A5D: $7E
    sub h                                         ; $4A5E: $94

jr_026_4A5F:
    ld l, [hl]                                    ; $4A5F: $6E
    adc h                                         ; $4A60: $8C
    ld a, [hl]                                    ; $4A61: $7E
    sub h                                         ; $4A62: $94

jr_026_4A63:
    ld l, [hl]                                    ; $4A63: $6E

Jump_026_4A64:
    adc h                                         ; $4A64: $8C
    ld a, [hl]                                    ; $4A65: $7E
    sub h                                         ; $4A66: $94

jr_026_4A67:
    ld l, [hl]                                    ; $4A67: $6E
    adc h                                         ; $4A68: $8C
    ld a, [hl]                                    ; $4A69: $7E
    sub h                                         ; $4A6A: $94
    ld l, [hl]                                    ; $4A6B: $6E
    adc h                                         ; $4A6C: $8C
    ld a, [hl]                                    ; $4A6D: $7E
    sub h                                         ; $4A6E: $94
    ld l, [hl]                                    ; $4A6F: $6E
    adc h                                         ; $4A70: $8C
    ld a, [hl]                                    ; $4A71: $7E
    sub h                                         ; $4A72: $94
    ld l, [hl]                                    ; $4A73: $6E
    pop bc                                        ; $4A74: $C1
    call z, $007E                                 ; $4A75: $CC $7E $00
    sub h                                         ; $4A78: $94
    jr nz, jr_026_4A07                            ; $4A79: $20 $8C

    nop                                           ; $4A7B: $00
    sub h                                         ; $4A7C: $94
    jr nz, jr_026_4A0B                            ; $4A7D: $20 $8C

    nop                                           ; $4A7F: $00
    sub h                                         ; $4A80: $94
    jr nz, jr_026_4A0F                            ; $4A81: $20 $8C

    nop                                           ; $4A83: $00
    sub h                                         ; $4A84: $94
    jr nz, jr_026_4A13                            ; $4A85: $20 $8C

    nop                                           ; $4A87: $00
    sub h                                         ; $4A88: $94
    jr nz, jr_026_4A17                            ; $4A89: $20 $8C

    nop                                           ; $4A8B: $00
    sub h                                         ; $4A8C: $94
    jr nz, jr_026_4A1B                            ; $4A8D: $20 $8C

    nop                                           ; $4A8F: $00
    add d                                         ; $4A90: $82
    jr nz, @+$03                                  ; $4A91: $20 $01

    jr z, @-$77                                   ; $4A93: $28 $87

    ld [$2001], sp                                ; $4A95: $08 $01 $20
    add l                                         ; $4A98: $85
    ld [$2084], sp                                ; $4A99: $08 $84 $20
    adc h                                         ; $4A9C: $8C
    nop                                           ; $4A9D: $00
    add d                                         ; $4A9E: $82
    jr nz, jr_026_4AA4                            ; $4A9F: $20 $03

    ld [$0828], sp                                ; $4AA1: $08 $28 $08

jr_026_4AA4:
    add d                                         ; $4AA4: $82
    jr z, jr_026_4A2A                             ; $4AA5: $28 $83

    ld [$2001], sp                                ; $4AA7: $08 $01 $20
    add d                                         ; $4AAA: $82
    ld [$2087], sp                                ; $4AAB: $08 $87 $20
    adc h                                         ; $4AAE: $8C
    nop                                           ; $4AAF: $00
    sub h                                         ; $4AB0: $94
    jr nz, jr_026_4A3F                            ; $4AB1: $20 $8C

    nop                                           ; $4AB3: $00
    sub h                                         ; $4AB4: $94
    jr nz, jr_026_4A43                            ; $4AB5: $20 $8C

    nop                                           ; $4AB7: $00
    adc c                                         ; $4AB8: $89
    jr nz, jr_026_4A40                            ; $4AB9: $20 $85

    ld [$2001], sp                                ; $4ABB: $08 $01 $20
    add e                                         ; $4ABE: $83
    ld [$2082], sp                                ; $4ABF: $08 $82 $20
    adc h                                         ; $4AC2: $8C
    nop                                           ; $4AC3: $00
    sub h                                         ; $4AC4: $94
    jr nz, jr_026_4A53                            ; $4AC5: $20 $8C

    nop                                           ; $4AC7: $00
    sub h                                         ; $4AC8: $94
    jr nz, jr_026_4A57                            ; $4AC9: $20 $8C

    nop                                           ; $4ACB: $00
    sub h                                         ; $4ACC: $94
    jr nz, jr_026_4A5B                            ; $4ACD: $20 $8C

    nop                                           ; $4ACF: $00
    sub h                                         ; $4AD0: $94
    jr nz, jr_026_4A5F                            ; $4AD1: $20 $8C

    nop                                           ; $4AD3: $00
    sub h                                         ; $4AD4: $94
    jr nz, jr_026_4A63                            ; $4AD5: $20 $8C

    nop                                           ; $4AD7: $00
    sub h                                         ; $4AD8: $94
    jr nz, jr_026_4A67                            ; $4AD9: $20 $8C

    nop                                           ; $4ADB: $00
    sub h                                         ; $4ADC: $94
    jr nz, @-$3D                                  ; $4ADD: $20 $C1

    call z, RST_00                                ; $4ADF: $CC $00 $00
    sub h                                         ; $4AE2: $94
    ld l, [hl]                                    ; $4AE3: $6E
    adc h                                         ; $4AE4: $8C
    ld a, [hl]                                    ; $4AE5: $7E
    sub h                                         ; $4AE6: $94

jr_026_4AE7:
    ld l, [hl]                                    ; $4AE7: $6E
    adc h                                         ; $4AE8: $8C
    ld a, [hl]                                    ; $4AE9: $7E
    sub h                                         ; $4AEA: $94

jr_026_4AEB:
    ld l, [hl]                                    ; $4AEB: $6E
    adc h                                         ; $4AEC: $8C
    ld a, [hl]                                    ; $4AED: $7E
    sub h                                         ; $4AEE: $94

jr_026_4AEF:
    ld l, [hl]                                    ; $4AEF: $6E
    adc h                                         ; $4AF0: $8C
    ld a, [hl]                                    ; $4AF1: $7E
    sub h                                         ; $4AF2: $94

jr_026_4AF3:
    ld l, [hl]                                    ; $4AF3: $6E
    adc h                                         ; $4AF4: $8C

jr_026_4AF5:
    ld a, [hl]                                    ; $4AF5: $7E
    sub h                                         ; $4AF6: $94

jr_026_4AF7:
    ld l, [hl]                                    ; $4AF7: $6E
    adc h                                         ; $4AF8: $8C
    ld a, [hl]                                    ; $4AF9: $7E
    add d                                         ; $4AFA: $82
    ld l, [hl]                                    ; $4AFB: $6E
    ld c, $CF                                     ; $4AFC: $0E $CF
    ld a, [c]                                     ; $4AFE: $F2
    jp hl                                         ; $4AFF: $E9


    rst $20                                       ; $4B00: $E7
    jp hl                                         ; $4B01: $E9


    xor $E1                                       ; $4B02: $EE $E1

jr_026_4B04:
    db $EC                                        ; $4B04: $EC
    ld l, [hl]                                    ; $4B05: $6E
    call $F3F5                                    ; $4B06: $CD $F5 $F3
    jp hl                                         ; $4B09: $E9


    db $E3                                        ; $4B0A: $E3
    add h                                         ; $4B0B: $84
    ld l, [hl]                                    ; $4B0C: $6E
    adc h                                         ; $4B0D: $8C
    ld a, [hl]                                    ; $4B0E: $7E
    add d                                         ; $4B0F: $82
    ld l, [hl]                                    ; $4B10: $6E
    dec bc                                        ; $4B11: $0B

jr_026_4B12:
    jp $EDEF                                      ; $4B12: $C3 $EF $ED


    pop af                                        ; $4B15: $F1
    rst $28                                       ; $4B16: $EF
    di                                            ; $4B17: $F3
    push hl                                       ; $4B18: $E5
    db $E4                                        ; $4B19: $E4
    ld l, [hl]                                    ; $4B1A: $6E
    ld [c], a                                     ; $4B1B: $E2
    ld sp, hl                                     ; $4B1C: $F9
    add a                                         ; $4B1D: $87
    ld l, [hl]                                    ; $4B1E: $6E
    adc h                                         ; $4B1F: $8C
    ld a, [hl]                                    ; $4B20: $7E
    sub h                                         ; $4B21: $94
    ld l, [hl]                                    ; $4B22: $6E
    adc h                                         ; $4B23: $8C

jr_026_4B24:
    ld a, [hl]                                    ; $4B24: $7E
    sub h                                         ; $4B25: $94

jr_026_4B26:
    ld l, [hl]                                    ; $4B26: $6E
    adc h                                         ; $4B27: $8C

jr_026_4B28:
    ld a, [hl]                                    ; $4B28: $7E
    adc c                                         ; $4B29: $89
    ld l, [hl]                                    ; $4B2A: $6E
    ld [bc], a                                    ; $4B2B: $02
    jp z, $82E5                                   ; $4B2C: $CA $E5 $82

    ld a, [c]                                     ; $4B2F: $F2
    dec b                                         ; $4B30: $05
    ld sp, hl                                     ; $4B31: $F9
    ld l, [hl]                                    ; $4B32: $6E
    call z, $EDE9                                 ; $4B33: $CC $E9 $ED
    add d                                         ; $4B36: $82
    ld l, [hl]                                    ; $4B37: $6E
    adc h                                         ; $4B38: $8C
    ld a, [hl]                                    ; $4B39: $7E

jr_026_4B3A:
    sub h                                         ; $4B3A: $94
    ld l, [hl]                                    ; $4B3B: $6E
    adc h                                         ; $4B3C: $8C
    ld a, [hl]                                    ; $4B3D: $7E

jr_026_4B3E:
    sub h                                         ; $4B3E: $94
    ld l, [hl]                                    ; $4B3F: $6E
    adc h                                         ; $4B40: $8C
    ld a, [hl]                                    ; $4B41: $7E

jr_026_4B42:
    sub h                                         ; $4B42: $94
    ld l, [hl]                                    ; $4B43: $6E
    adc h                                         ; $4B44: $8C
    ld a, [hl]                                    ; $4B45: $7E

jr_026_4B46:
    sub h                                         ; $4B46: $94
    ld l, [hl]                                    ; $4B47: $6E
    adc h                                         ; $4B48: $8C
    ld a, [hl]                                    ; $4B49: $7E

jr_026_4B4A:
    sub h                                         ; $4B4A: $94
    ld l, [hl]                                    ; $4B4B: $6E
    adc h                                         ; $4B4C: $8C
    ld a, [hl]                                    ; $4B4D: $7E

jr_026_4B4E:
    sub h                                         ; $4B4E: $94
    ld l, [hl]                                    ; $4B4F: $6E
    adc h                                         ; $4B50: $8C
    ld a, [hl]                                    ; $4B51: $7E
    sub h                                         ; $4B52: $94
    ld l, [hl]                                    ; $4B53: $6E
    pop bc                                        ; $4B54: $C1
    call z, $007E                                 ; $4B55: $CC $7E $00
    sub h                                         ; $4B58: $94
    jr nz, jr_026_4AE7                            ; $4B59: $20 $8C

    ld h, b                                       ; $4B5B: $60
    sub h                                         ; $4B5C: $94
    jr nz, jr_026_4AEB                            ; $4B5D: $20 $8C

    ld h, b                                       ; $4B5F: $60
    sub h                                         ; $4B60: $94
    jr nz, jr_026_4AEF                            ; $4B61: $20 $8C

    ld h, b                                       ; $4B63: $60
    sub h                                         ; $4B64: $94
    jr nz, jr_026_4AF3                            ; $4B65: $20 $8C

    ld h, b                                       ; $4B67: $60
    sub h                                         ; $4B68: $94
    jr nz, jr_026_4AF7                            ; $4B69: $20 $8C

    ld h, b                                       ; $4B6B: $60
    add d                                         ; $4B6C: $82
    jr nz, jr_026_4AF5                            ; $4B6D: $20 $86

    ld [$2801], sp                                ; $4B6F: $08 $01 $28
    add e                                         ; $4B72: $83
    ld [$2088], sp                                ; $4B73: $08 $88 $20
    adc h                                         ; $4B76: $8C
    ld h, b                                       ; $4B77: $60
    add d                                         ; $4B78: $82
    jr nz, jr_026_4B04                            ; $4B79: $20 $89

    ld [$2002], sp                                ; $4B7B: $08 $02 $20
    ld [$2882], sp                                ; $4B7E: $08 $82 $28
    add d                                         ; $4B81: $82
    ld [$2083], sp                                ; $4B82: $08 $83 $20
    adc h                                         ; $4B85: $8C
    ld h, b                                       ; $4B86: $60

jr_026_4B87:
    add d                                         ; $4B87: $82
    jr nz, jr_026_4B12                            ; $4B88: $20 $88

    ld [$2005], sp                                ; $4B8A: $08 $05 $20
    ld [$2808], sp                                ; $4B8D: $08 $08 $28
    ld [$2085], sp                                ; $4B90: $08 $85 $20
    adc h                                         ; $4B93: $8C
    ld h, b                                       ; $4B94: $60
    sub h                                         ; $4B95: $94
    jr nz, jr_026_4B24                            ; $4B96: $20 $8C

    ld h, b                                       ; $4B98: $60
    sub h                                         ; $4B99: $94
    jr nz, jr_026_4B28                            ; $4B9A: $20 $8C

    ld h, b                                       ; $4B9C: $60
    add [hl]                                      ; $4B9D: $86
    jr nz, jr_026_4B26                            ; $4B9E: $20 $86

    ld [$2003], sp                                ; $4BA0: $08 $03 $20
    ld [$8328], sp                                ; $4BA3: $08 $28 $83
    ld [$2082], sp                                ; $4BA6: $08 $82 $20
    adc h                                         ; $4BA9: $8C
    ld h, b                                       ; $4BAA: $60
    sub h                                         ; $4BAB: $94
    jr nz, jr_026_4B3A                            ; $4BAC: $20 $8C

    ld h, b                                       ; $4BAE: $60
    sub h                                         ; $4BAF: $94
    jr nz, jr_026_4B3E                            ; $4BB0: $20 $8C

    ld h, b                                       ; $4BB2: $60
    sub h                                         ; $4BB3: $94
    jr nz, jr_026_4B42                            ; $4BB4: $20 $8C

    ld h, b                                       ; $4BB6: $60
    sub h                                         ; $4BB7: $94
    jr nz, jr_026_4B46                            ; $4BB8: $20 $8C

    ld h, b                                       ; $4BBA: $60
    sub h                                         ; $4BBB: $94
    jr nz, jr_026_4B4A                            ; $4BBC: $20 $8C

    ld h, b                                       ; $4BBE: $60
    sub h                                         ; $4BBF: $94
    jr nz, jr_026_4B4E                            ; $4BC0: $20 $8C

    ld h, b                                       ; $4BC2: $60
    sub h                                         ; $4BC3: $94
    jr nz, jr_026_4B87                            ; $4BC4: $20 $C1

    call z, $0060                                 ; $4BC6: $CC $60 $00
    sub h                                         ; $4BC9: $94
    ld l, [hl]                                    ; $4BCA: $6E
    adc h                                         ; $4BCB: $8C
    ld a, [hl]                                    ; $4BCC: $7E
    sub h                                         ; $4BCD: $94
    ld l, [hl]                                    ; $4BCE: $6E
    adc h                                         ; $4BCF: $8C
    ld a, [hl]                                    ; $4BD0: $7E
    sub h                                         ; $4BD1: $94
    ld l, [hl]                                    ; $4BD2: $6E
    adc h                                         ; $4BD3: $8C
    ld a, [hl]                                    ; $4BD4: $7E
    sub h                                         ; $4BD5: $94
    ld l, [hl]                                    ; $4BD6: $6E
    adc h                                         ; $4BD7: $8C
    ld a, [hl]                                    ; $4BD8: $7E
    sub h                                         ; $4BD9: $94
    ld l, [hl]                                    ; $4BDA: $6E
    adc h                                         ; $4BDB: $8C
    ld a, [hl]                                    ; $4BDC: $7E
    add d                                         ; $4BDD: $82
    ld l, [hl]                                    ; $4BDE: $6E
    ld a, [bc]                                    ; $4BDF: $0A
    pop bc                                        ; $4BE0: $C1
    db $E4                                        ; $4BE1: $E4
    db $E4                                        ; $4BE2: $E4
    jp hl                                         ; $4BE3: $E9


jr_026_4BE4:
    db $F4                                        ; $4BE4: $F4
    jp hl                                         ; $4BE5: $E9


    rst $28                                       ; $4BE6: $EF
    xor $E1                                       ; $4BE7: $EE $E1
    db $EC                                        ; $4BE9: $EC
    adc b                                         ; $4BEA: $88
    ld l, [hl]                                    ; $4BEB: $6E

jr_026_4BEC:
    adc h                                         ; $4BEC: $8C
    ld a, [hl]                                    ; $4BED: $7E
    add d                                         ; $4BEE: $82
    ld l, [hl]                                    ; $4BEF: $6E

jr_026_4BF0:
    inc b                                         ; $4BF0: $04
    call nz, $E2E5                                ; $4BF1: $C4 $E5 $E2

jr_026_4BF4:
    push af                                       ; $4BF4: $F5
    add d                                         ; $4BF5: $82
    rst $20                                       ; $4BF6: $E7
    dec b                                         ; $4BF7: $05

jr_026_4BF8:
    jp hl                                         ; $4BF8: $E9


    xor $E7                                       ; $4BF9: $EE $E7
    ld l, [hl]                                    ; $4BFB: $6E

jr_026_4BFC:
    call nc, $EF82                                ; $4BFC: $D4 $82 $EF
    ld [bc], a                                    ; $4BFF: $02
    db $EC                                        ; $4C00: $EC
    di                                            ; $4C01: $F3
    add e                                         ; $4C02: $83
    ld l, [hl]                                    ; $4C03: $6E
    adc h                                         ; $4C04: $8C
    ld a, [hl]                                    ; $4C05: $7E
    add d                                         ; $4C06: $82
    ld l, [hl]                                    ; $4C07: $6E
    dec c                                         ; $4C08: $0D
    call z, $E3E9                                 ; $4C09: $CC $E9 $E3
    push hl                                       ; $4C0C: $E5
    xor $F3                                       ; $4C0D: $EE $F3

jr_026_4C0F:
    push hl                                       ; $4C0F: $E5
    db $E4                                        ; $4C10: $E4
    ld l, [hl]                                    ; $4C11: $6E

jr_026_4C12:
    and $F2                                       ; $4C12: $E6 $F2
    rst $28                                       ; $4C14: $EF
    db $ED                                        ; $4C15: $ED
    add l                                         ; $4C16: $85
    ld l, [hl]                                    ; $4C17: $6E
    adc h                                         ; $4C18: $8C
    ld a, [hl]                                    ; $4C19: $7E
    sub h                                         ; $4C1A: $94
    ld l, [hl]                                    ; $4C1B: $6E
    adc h                                         ; $4C1C: $8C
    ld a, [hl]                                    ; $4C1D: $7E
    sub h                                         ; $4C1E: $94
    ld l, [hl]                                    ; $4C1F: $6E
    adc h                                         ; $4C20: $8C
    ld a, [hl]                                    ; $4C21: $7E
    add [hl]                                      ; $4C22: $86

jr_026_4C23:
    ld l, [hl]                                    ; $4C23: $6E
    inc c                                         ; $4C24: $0C
    call $F2E1                                    ; $4C25: $CD $E1 $F2
    db $F4                                        ; $4C28: $F4
    jp hl                                         ; $4C29: $E9


    xor $6E                                       ; $4C2A: $EE $6E
    set 5, a                                      ; $4C2C: $CB $EF
    ld a, [c]                                     ; $4C2E: $F2

jr_026_4C2F:
    db $F4                                        ; $4C2F: $F4
    add sp, -$7E                                  ; $4C30: $E8 $82
    ld l, [hl]                                    ; $4C32: $6E

jr_026_4C33:
    adc h                                         ; $4C33: $8C
    ld a, [hl]                                    ; $4C34: $7E
    sub h                                         ; $4C35: $94
    ld l, [hl]                                    ; $4C36: $6E

jr_026_4C37:
    adc h                                         ; $4C37: $8C
    ld a, [hl]                                    ; $4C38: $7E
    sub h                                         ; $4C39: $94
    ld l, [hl]                                    ; $4C3A: $6E
    adc h                                         ; $4C3B: $8C
    ld a, [hl]                                    ; $4C3C: $7E
    sub h                                         ; $4C3D: $94
    ld l, [hl]                                    ; $4C3E: $6E
    adc h                                         ; $4C3F: $8C
    ld a, [hl]                                    ; $4C40: $7E
    sub h                                         ; $4C41: $94
    ld l, [hl]                                    ; $4C42: $6E
    adc h                                         ; $4C43: $8C
    ld a, [hl]                                    ; $4C44: $7E
    sub h                                         ; $4C45: $94
    ld l, [hl]                                    ; $4C46: $6E
    adc h                                         ; $4C47: $8C
    ld a, [hl]                                    ; $4C48: $7E
    sub h                                         ; $4C49: $94
    ld l, [hl]                                    ; $4C4A: $6E
    adc h                                         ; $4C4B: $8C
    ld a, [hl]                                    ; $4C4C: $7E
    sub h                                         ; $4C4D: $94
    ld l, [hl]                                    ; $4C4E: $6E
    pop bc                                        ; $4C4F: $C1
    call z, $007E                                 ; $4C50: $CC $7E $00
    ld a, [hl]                                    ; $4C53: $7E
    nop                                           ; $4C54: $00
    sub h                                         ; $4C55: $94
    jr nz, jr_026_4BE4                            ; $4C56: $20 $8C

    ld h, b                                       ; $4C58: $60
    sub h                                         ; $4C59: $94
    jr nz, @-$72                                  ; $4C5A: $20 $8C

    ld h, b                                       ; $4C5C: $60
    sub h                                         ; $4C5D: $94
    jr nz, jr_026_4BEC                            ; $4C5E: $20 $8C

    ld h, b                                       ; $4C60: $60
    sub h                                         ; $4C61: $94
    jr nz, jr_026_4BF0                            ; $4C62: $20 $8C

    ld h, b                                       ; $4C64: $60
    sub h                                         ; $4C65: $94
    jr nz, jr_026_4BF4                            ; $4C66: $20 $8C

    ld h, b                                       ; $4C68: $60
    sub h                                         ; $4C69: $94
    jr nz, jr_026_4BF8                            ; $4C6A: $20 $8C

    ld h, b                                       ; $4C6C: $60
    sub h                                         ; $4C6D: $94
    jr nz, jr_026_4BFC                            ; $4C6E: $20 $8C

jr_026_4C70:
    ld h, b                                       ; $4C70: $60
    add d                                         ; $4C71: $82
    jr nz, jr_026_4BF8                            ; $4C72: $20 $84

    ld [$2004], sp                                ; $4C74: $08 $04 $20
    ld [$2808], sp                                ; $4C77: $08 $08 $28
    add a                                         ; $4C7A: $87
    ld [$2083], sp                                ; $4C7B: $08 $83 $20
    adc h                                         ; $4C7E: $8C
    ld h, b                                       ; $4C7F: $60
    sub h                                         ; $4C80: $94
    jr nz, jr_026_4C0F                            ; $4C81: $20 $8C

    ld h, b                                       ; $4C83: $60
    sub h                                         ; $4C84: $94
    jr nz, @-$72                                  ; $4C85: $20 $8C

    ld h, b                                       ; $4C87: $60
    add h                                         ; $4C88: $84
    jr nz, jr_026_4C12                            ; $4C89: $20 $87

    ld [$2001], sp                                ; $4C8B: $08 $01 $20
    add [hl]                                      ; $4C8E: $86
    ld [$2082], sp                                ; $4C8F: $08 $82 $20
    adc h                                         ; $4C92: $8C
    ld h, b                                       ; $4C93: $60
    sub h                                         ; $4C94: $94
    jr nz, jr_026_4C23                            ; $4C95: $20 $8C

    ld h, b                                       ; $4C97: $60
    sub h                                         ; $4C98: $94
    jr nz, @-$72                                  ; $4C99: $20 $8C

    ld h, b                                       ; $4C9B: $60
    sub h                                         ; $4C9C: $94
    jr nz, @-$72                                  ; $4C9D: $20 $8C

    ld h, b                                       ; $4C9F: $60
    sub h                                         ; $4CA0: $94
    jr nz, jr_026_4C2F                            ; $4CA1: $20 $8C

    ld h, b                                       ; $4CA3: $60
    sub h                                         ; $4CA4: $94
    jr nz, jr_026_4C33                            ; $4CA5: $20 $8C

    ld h, b                                       ; $4CA7: $60
    sub h                                         ; $4CA8: $94
    jr nz, jr_026_4C37                            ; $4CA9: $20 $8C

    ld h, b                                       ; $4CAB: $60
    sub h                                         ; $4CAC: $94
    jr nz, jr_026_4C70                            ; $4CAD: $20 $C1

    call z, $0060                                 ; $4CAF: $CC $60 $00
    sub h                                         ; $4CB2: $94
    ld l, [hl]                                    ; $4CB3: $6E

jr_026_4CB4:
    adc h                                         ; $4CB4: $8C
    ld a, [hl]                                    ; $4CB5: $7E
    sub h                                         ; $4CB6: $94
    ld l, [hl]                                    ; $4CB7: $6E

jr_026_4CB8:
    adc h                                         ; $4CB8: $8C
    ld a, [hl]                                    ; $4CB9: $7E
    sub h                                         ; $4CBA: $94
    ld l, [hl]                                    ; $4CBB: $6E

jr_026_4CBC:
    adc h                                         ; $4CBC: $8C
    ld a, [hl]                                    ; $4CBD: $7E
    sub h                                         ; $4CBE: $94
    ld l, [hl]                                    ; $4CBF: $6E

jr_026_4CC0:
    adc h                                         ; $4CC0: $8C
    ld a, [hl]                                    ; $4CC1: $7E
    sub h                                         ; $4CC2: $94
    ld l, [hl]                                    ; $4CC3: $6E

jr_026_4CC4:
    adc h                                         ; $4CC4: $8C
    ld a, [hl]                                    ; $4CC5: $7E

jr_026_4CC6:
    sub h                                         ; $4CC6: $94
    ld l, [hl]                                    ; $4CC7: $6E
    adc h                                         ; $4CC8: $8C
    ld a, [hl]                                    ; $4CC9: $7E
    sub h                                         ; $4CCA: $94
    ld l, [hl]                                    ; $4CCB: $6E
    adc h                                         ; $4CCC: $8C
    ld a, [hl]                                    ; $4CCD: $7E
    add d                                         ; $4CCE: $82
    ld l, [hl]                                    ; $4CCF: $6E
    dec bc                                        ; $4CD0: $0B
    call z, $E1E5                                 ; $4CD1: $CC $E5 $E1
    db $E4                                        ; $4CD4: $E4
    ld l, [hl]                                    ; $4CD5: $6E
    ret nc                                        ; $4CD6: $D0

    ld a, [c]                                     ; $4CD7: $F2
    rst $28                                       ; $4CD8: $EF
    rst $20                                       ; $4CD9: $E7
    ld a, [c]                                     ; $4CDA: $F2
    pop hl                                        ; $4CDB: $E1

jr_026_4CDC:
    add d                                         ; $4CDC: $82

jr_026_4CDD:
    db $ED                                        ; $4CDD: $ED
    ld [bc], a                                    ; $4CDE: $02
    push hl                                       ; $4CDF: $E5

jr_026_4CE0:
    ld a, [c]                                     ; $4CE0: $F2
    add e                                         ; $4CE1: $83
    ld l, [hl]                                    ; $4CE2: $6E
    adc h                                         ; $4CE3: $8C
    ld a, [hl]                                    ; $4CE4: $7E
    sub h                                         ; $4CE5: $94
    ld l, [hl]                                    ; $4CE6: $6E
    adc h                                         ; $4CE7: $8C
    ld a, [hl]                                    ; $4CE8: $7E
    sub h                                         ; $4CE9: $94

jr_026_4CEA:
    ld l, [hl]                                    ; $4CEA: $6E
    adc h                                         ; $4CEB: $8C
    ld a, [hl]                                    ; $4CEC: $7E
    add h                                         ; $4CED: $84
    ld l, [hl]                                    ; $4CEE: $6E
    add hl, bc                                    ; $4CEF: $09
    ret nc                                        ; $4CF0: $D0

    pop hl                                        ; $4CF1: $E1
    db $F4                                        ; $4CF2: $F4
    ld a, [c]                                     ; $4CF3: $F2
    jp hl                                         ; $4CF4: $E9


    db $E3                                        ; $4CF5: $E3
    db $EB                                        ; $4CF6: $EB

jr_026_4CF7:
    ld l, [hl]                                    ; $4CF7: $6E
    call $E582                                    ; $4CF8: $CD $82 $E5
    inc bc                                        ; $4CFB: $03
    add sp, -$1F                                  ; $4CFC: $E8 $E1
    xor $82                                       ; $4CFE: $EE $82
    ld l, [hl]                                    ; $4D00: $6E
    adc h                                         ; $4D01: $8C
    ld a, [hl]                                    ; $4D02: $7E
    sub h                                         ; $4D03: $94

jr_026_4D04:
    ld l, [hl]                                    ; $4D04: $6E
    adc h                                         ; $4D05: $8C
    ld a, [hl]                                    ; $4D06: $7E
    sub h                                         ; $4D07: $94
    ld l, [hl]                                    ; $4D08: $6E
    adc h                                         ; $4D09: $8C
    ld a, [hl]                                    ; $4D0A: $7E
    sub h                                         ; $4D0B: $94
    ld l, [hl]                                    ; $4D0C: $6E
    adc h                                         ; $4D0D: $8C
    ld a, [hl]                                    ; $4D0E: $7E
    sub h                                         ; $4D0F: $94
    ld l, [hl]                                    ; $4D10: $6E
    adc h                                         ; $4D11: $8C
    ld a, [hl]                                    ; $4D12: $7E
    sub h                                         ; $4D13: $94

jr_026_4D14:
    ld l, [hl]                                    ; $4D14: $6E
    adc h                                         ; $4D15: $8C
    ld a, [hl]                                    ; $4D16: $7E
    sub h                                         ; $4D17: $94

jr_026_4D18:
    ld l, [hl]                                    ; $4D18: $6E
    adc h                                         ; $4D19: $8C
    ld a, [hl]                                    ; $4D1A: $7E
    sub h                                         ; $4D1B: $94

jr_026_4D1C:
    ld l, [hl]                                    ; $4D1C: $6E
    pop bc                                        ; $4D1D: $C1
    call z, $007E                                 ; $4D1E: $CC $7E $00
    sub h                                         ; $4D21: $94
    jr nz, @-$72                                  ; $4D22: $20 $8C

    ld h, b                                       ; $4D24: $60
    sub h                                         ; $4D25: $94
    jr nz, jr_026_4CB4                            ; $4D26: $20 $8C

    ld h, b                                       ; $4D28: $60
    sub h                                         ; $4D29: $94
    jr nz, jr_026_4CB8                            ; $4D2A: $20 $8C

    ld h, b                                       ; $4D2C: $60
    sub h                                         ; $4D2D: $94
    jr nz, jr_026_4CBC                            ; $4D2E: $20 $8C

    ld h, b                                       ; $4D30: $60
    sub h                                         ; $4D31: $94
    jr nz, jr_026_4CC0                            ; $4D32: $20 $8C

    ld h, b                                       ; $4D34: $60
    sub h                                         ; $4D35: $94
    jr nz, jr_026_4CC4                            ; $4D36: $20 $8C

    ld h, b                                       ; $4D38: $60
    add d                                         ; $4D39: $82
    jr nz, jr_026_4CC0                            ; $4D3A: $20 $84

    ld [$208E], sp                                ; $4D3C: $08 $8E $20
    adc h                                         ; $4D3F: $8C
    ld h, b                                       ; $4D40: $60
    add d                                         ; $4D41: $82
    jr nz, jr_026_4CC6                            ; $4D42: $20 $82

    ld [$2801], sp                                ; $4D44: $08 $01 $28
    adc b                                         ; $4D47: $88
    ld [$2087], sp                                ; $4D48: $08 $87 $20
    adc h                                         ; $4D4B: $8C
    ld h, b                                       ; $4D4C: $60
    sub h                                         ; $4D4D: $94
    jr nz, jr_026_4CDC                            ; $4D4E: $20 $8C

    ld h, b                                       ; $4D50: $60
    sub h                                         ; $4D51: $94
    jr nz, jr_026_4CE0                            ; $4D52: $20 $8C

    ld h, b                                       ; $4D54: $60

jr_026_4D55:
    add l                                         ; $4D55: $85
    jr nz, jr_026_4CDD                            ; $4D56: $20 $85

    ld [$2804], sp                                ; $4D58: $08 $04 $28
    ld [$2808], sp                                ; $4D5B: $08 $08 $28
    add l                                         ; $4D5E: $85
    ld [$2001], sp                                ; $4D5F: $08 $01 $20
    adc h                                         ; $4D62: $8C
    ld h, b                                       ; $4D63: $60
    adc [hl]                                      ; $4D64: $8E
    jr nz, jr_026_4CEA                            ; $4D65: $20 $83

    ld [$2803], sp                                ; $4D67: $08 $03 $28
    jr nz, jr_026_4D8C                            ; $4D6A: $20 $20

    adc h                                         ; $4D6C: $8C
    ld h, b                                       ; $4D6D: $60
    sub h                                         ; $4D6E: $94
    jr nz, @-$72                                  ; $4D6F: $20 $8C

    ld h, b                                       ; $4D71: $60
    add l                                         ; $4D72: $85
    jr nz, jr_026_4CF7                            ; $4D73: $20 $82

    ld [$2806], sp                                ; $4D75: $08 $06 $28
    ld [$2008], sp                                ; $4D78: $08 $08 $20
    ld [$0108], sp                                ; $4D7B: $08 $08 $01
    jr z, jr_026_4D04                             ; $4D7E: $28 $84

    ld [$2082], sp                                ; $4D80: $08 $82 $20
    adc h                                         ; $4D83: $8C
    ld h, b                                       ; $4D84: $60
    sub h                                         ; $4D85: $94
    jr nz, jr_026_4D14                            ; $4D86: $20 $8C

    ld h, b                                       ; $4D88: $60
    sub h                                         ; $4D89: $94
    jr nz, jr_026_4D18                            ; $4D8A: $20 $8C

jr_026_4D8C:
    ld h, b                                       ; $4D8C: $60
    sub h                                         ; $4D8D: $94
    jr nz, jr_026_4D1C                            ; $4D8E: $20 $8C

    ld h, b                                       ; $4D90: $60
    sub h                                         ; $4D91: $94
    jr nz, jr_026_4D55                            ; $4D92: $20 $C1

    call z, $0060                                 ; $4D94: $CC $60 $00
    sub h                                         ; $4D97: $94
    ld l, [hl]                                    ; $4D98: $6E
    adc h                                         ; $4D99: $8C
    ld a, [hl]                                    ; $4D9A: $7E
    sub h                                         ; $4D9B: $94
    ld l, [hl]                                    ; $4D9C: $6E
    adc h                                         ; $4D9D: $8C
    ld a, [hl]                                    ; $4D9E: $7E
    sub h                                         ; $4D9F: $94
    ld l, [hl]                                    ; $4DA0: $6E
    adc h                                         ; $4DA1: $8C
    ld a, [hl]                                    ; $4DA2: $7E
    sub h                                         ; $4DA3: $94
    ld l, [hl]                                    ; $4DA4: $6E
    adc h                                         ; $4DA5: $8C
    ld a, [hl]                                    ; $4DA6: $7E
    sub h                                         ; $4DA7: $94
    ld l, [hl]                                    ; $4DA8: $6E
    adc h                                         ; $4DA9: $8C
    ld a, [hl]                                    ; $4DAA: $7E
    sub h                                         ; $4DAB: $94
    ld l, [hl]                                    ; $4DAC: $6E

jr_026_4DAD:
    adc h                                         ; $4DAD: $8C
    ld a, [hl]                                    ; $4DAE: $7E
    add d                                         ; $4DAF: $82
    ld l, [hl]                                    ; $4DB0: $6E

jr_026_4DB1:
    inc b                                         ; $4DB1: $04
    rst $00                                       ; $4DB2: $C7
    pop hl                                        ; $4DB3: $E1
    db $ED                                        ; $4DB4: $ED

jr_026_4DB5:
    push hl                                       ; $4DB5: $E5
    adc [hl]                                      ; $4DB6: $8E
    ld l, [hl]                                    ; $4DB7: $6E
    adc h                                         ; $4DB8: $8C

jr_026_4DB9:
    ld a, [hl]                                    ; $4DB9: $7E
    add d                                         ; $4DBA: $82
    ld l, [hl]                                    ; $4DBB: $6E
    ld b, $D0                                     ; $4DBC: $06 $D0
    ld a, [c]                                     ; $4DBE: $F2
    rst $28                                       ; $4DBF: $EF
    rst $20                                       ; $4DC0: $E7

jr_026_4DC1:
    ld a, [c]                                     ; $4DC1: $F2
    pop hl                                        ; $4DC2: $E1

jr_026_4DC3:
    add d                                         ; $4DC3: $82
    db $ED                                        ; $4DC4: $ED
    inc bc                                        ; $4DC5: $03
    push hl                                       ; $4DC6: $E5
    ld a, [c]                                     ; $4DC7: $F2
    di                                            ; $4DC8: $F3
    add a                                         ; $4DC9: $87
    ld l, [hl]                                    ; $4DCA: $6E
    adc h                                         ; $4DCB: $8C
    ld a, [hl]                                    ; $4DCC: $7E
    sub h                                         ; $4DCD: $94
    ld l, [hl]                                    ; $4DCE: $6E
    adc h                                         ; $4DCF: $8C
    ld a, [hl]                                    ; $4DD0: $7E
    sub h                                         ; $4DD1: $94
    ld l, [hl]                                    ; $4DD2: $6E
    adc h                                         ; $4DD3: $8C
    ld a, [hl]                                    ; $4DD4: $7E
    add l                                         ; $4DD5: $85
    ld l, [hl]                                    ; $4DD6: $6E
    rrca                                          ; $4DD7: $0F
    call nz, $ECF9                                ; $4DD8: $C4 $F9 $EC
    pop hl                                        ; $4DDB: $E1
    xor $A7                                       ; $4DDC: $EE $A7
    push bc                                       ; $4DDE: $C5
    ld hl, sp-$11                                 ; $4DDF: $F8 $EF
    jp nz, $F4F9                                  ; $4DE1: $C2 $F9 $F4

    push hl                                       ; $4DE4: $E5
    and a                                         ; $4DE5: $A7
    ld l, [hl]                                    ; $4DE6: $6E
    adc h                                         ; $4DE7: $8C
    ld a, [hl]                                    ; $4DE8: $7E
    adc [hl]                                      ; $4DE9: $8E
    ld l, [hl]                                    ; $4DEA: $6E
    inc b                                         ; $4DEB: $04
    call $F9E1                                    ; $4DEC: $CD $E1 $F9
    rst $28                                       ; $4DEF: $EF

jr_026_4DF0:
    add d                                         ; $4DF0: $82
    ld l, [hl]                                    ; $4DF1: $6E
    adc h                                         ; $4DF2: $8C
    ld a, [hl]                                    ; $4DF3: $7E

jr_026_4DF4:
    sub h                                         ; $4DF4: $94
    ld l, [hl]                                    ; $4DF5: $6E
    adc h                                         ; $4DF6: $8C
    ld a, [hl]                                    ; $4DF7: $7E

jr_026_4DF8:
    add l                                         ; $4DF8: $85
    ld l, [hl]                                    ; $4DF9: $6E
    dec c                                         ; $4DFA: $0D
    push bc                                       ; $4DFB: $C5

jr_026_4DFC:
    db $ED                                        ; $4DFC: $ED
    rst $28                                       ; $4DFD: $EF
    ld a, [c]                                     ; $4DFE: $F2
    ld sp, hl                                     ; $4DFF: $F9

jr_026_4E00:
    ld l, [hl]                                    ; $4E00: $6E
    rst $00                                       ; $4E01: $C7
    push hl                                       ; $4E02: $E5
    rst $28                                       ; $4E03: $EF

jr_026_4E04:
    ld a, [c]                                     ; $4E04: $F2
    rst $20                                       ; $4E05: $E7
    push hl                                       ; $4E06: $E5
    di                                            ; $4E07: $F3
    add d                                         ; $4E08: $82
    ld l, [hl]                                    ; $4E09: $6E
    adc h                                         ; $4E0A: $8C
    ld a, [hl]                                    ; $4E0B: $7E
    sub h                                         ; $4E0C: $94
    ld l, [hl]                                    ; $4E0D: $6E
    adc h                                         ; $4E0E: $8C
    ld a, [hl]                                    ; $4E0F: $7E
    sub h                                         ; $4E10: $94
    ld l, [hl]                                    ; $4E11: $6E
    adc h                                         ; $4E12: $8C
    ld a, [hl]                                    ; $4E13: $7E
    sub h                                         ; $4E14: $94
    ld l, [hl]                                    ; $4E15: $6E
    adc h                                         ; $4E16: $8C
    ld a, [hl]                                    ; $4E17: $7E
    sub h                                         ; $4E18: $94
    ld l, [hl]                                    ; $4E19: $6E
    pop bc                                        ; $4E1A: $C1
    call z, $007E                                 ; $4E1B: $CC $7E $00
    sub h                                         ; $4E1E: $94
    jr nz, jr_026_4DAD                            ; $4E1F: $20 $8C

    ld h, b                                       ; $4E21: $60
    sub h                                         ; $4E22: $94
    jr nz, jr_026_4DB1                            ; $4E23: $20 $8C

    ld h, b                                       ; $4E25: $60
    sub h                                         ; $4E26: $94
    jr nz, jr_026_4DB5                            ; $4E27: $20 $8C

    ld h, b                                       ; $4E29: $60
    sub h                                         ; $4E2A: $94
    jr nz, jr_026_4DB9                            ; $4E2B: $20 $8C

    ld h, b                                       ; $4E2D: $60
    sub h                                         ; $4E2E: $94
    jr nz, @-$72                                  ; $4E2F: $20 $8C

    ld h, b                                       ; $4E31: $60
    sub h                                         ; $4E32: $94
    jr nz, jr_026_4DC1                            ; $4E33: $20 $8C

    ld h, b                                       ; $4E35: $60
    add d                                         ; $4E36: $82
    jr nz, @-$7A                                  ; $4E37: $20 $84

    ld [$208E], sp                                ; $4E39: $08 $8E $20
    adc h                                         ; $4E3C: $8C

jr_026_4E3D:
    ld h, b                                       ; $4E3D: $60
    add d                                         ; $4E3E: $82
    jr nz, jr_026_4DC3                            ; $4E3F: $20 $82

    ld [$2801], sp                                ; $4E41: $08 $01 $28
    adc b                                         ; $4E44: $88
    ld [$2087], sp                                ; $4E45: $08 $87 $20
    adc h                                         ; $4E48: $8C
    ld h, b                                       ; $4E49: $60
    sub h                                         ; $4E4A: $94
    jr nz, @-$72                                  ; $4E4B: $20 $8C

    ld h, b                                       ; $4E4D: $60
    sub h                                         ; $4E4E: $94
    jr nz, @-$72                                  ; $4E4F: $20 $8C

    ld h, b                                       ; $4E51: $60
    add e                                         ; $4E52: $83
    jr nz, @-$7A                                  ; $4E53: $20 $84

    ld [$2001], sp                                ; $4E55: $08 $01 $20
    adc b                                         ; $4E58: $88
    ld [$2802], sp                                ; $4E59: $08 $02 $28
    ld [$2082], sp                                ; $4E5C: $08 $82 $20
    adc h                                         ; $4E5F: $8C
    ld h, b                                       ; $4E60: $60
    sub h                                         ; $4E61: $94
    jr nz, jr_026_4DF0                            ; $4E62: $20 $8C

Jump_026_4E64:
    ld h, b                                       ; $4E64: $60
    sub h                                         ; $4E65: $94
    jr nz, jr_026_4DF4                            ; $4E66: $20 $8C

    ld h, b                                       ; $4E68: $60
    sub h                                         ; $4E69: $94
    jr nz, jr_026_4DF8                            ; $4E6A: $20 $8C

    ld h, b                                       ; $4E6C: $60
    sub h                                         ; $4E6D: $94
    jr nz, jr_026_4DFC                            ; $4E6E: $20 $8C

    ld h, b                                       ; $4E70: $60
    sub h                                         ; $4E71: $94
    jr nz, jr_026_4E00                            ; $4E72: $20 $8C

    ld h, b                                       ; $4E74: $60
    sub h                                         ; $4E75: $94
    jr nz, jr_026_4E04                            ; $4E76: $20 $8C

    ld h, b                                       ; $4E78: $60
    sub h                                         ; $4E79: $94
    jr nz, jr_026_4E3D                            ; $4E7A: $20 $C1

    call z, $0060                                 ; $4E7C: $CC $60 $00
    sub h                                         ; $4E7F: $94

jr_026_4E80:
    ld l, [hl]                                    ; $4E80: $6E
    adc h                                         ; $4E81: $8C
    ld a, [hl]                                    ; $4E82: $7E
    sub h                                         ; $4E83: $94

jr_026_4E84:
    ld l, [hl]                                    ; $4E84: $6E
    adc h                                         ; $4E85: $8C
    ld a, [hl]                                    ; $4E86: $7E
    sub h                                         ; $4E87: $94

jr_026_4E88:
    ld l, [hl]                                    ; $4E88: $6E
    adc h                                         ; $4E89: $8C
    ld a, [hl]                                    ; $4E8A: $7E
    sub h                                         ; $4E8B: $94

jr_026_4E8C:
    ld l, [hl]                                    ; $4E8C: $6E
    adc h                                         ; $4E8D: $8C
    ld a, [hl]                                    ; $4E8E: $7E
    sub h                                         ; $4E8F: $94

jr_026_4E90:
    ld l, [hl]                                    ; $4E90: $6E

jr_026_4E91:
    adc h                                         ; $4E91: $8C
    ld a, [hl]                                    ; $4E92: $7E
    sub h                                         ; $4E93: $94

jr_026_4E94:
    ld l, [hl]                                    ; $4E94: $6E
    adc h                                         ; $4E95: $8C
    ld a, [hl]                                    ; $4E96: $7E
    add d                                         ; $4E97: $82
    ld l, [hl]                                    ; $4E98: $6E
    inc b                                         ; $4E99: $04
    rst $00                                       ; $4E9A: $C7
    pop hl                                        ; $4E9B: $E1

jr_026_4E9C:
    db $ED                                        ; $4E9C: $ED
    push hl                                       ; $4E9D: $E5
    adc [hl]                                      ; $4E9E: $8E
    ld l, [hl]                                    ; $4E9F: $6E
    adc h                                         ; $4EA0: $8C
    ld a, [hl]                                    ; $4EA1: $7E
    add d                                         ; $4EA2: $82
    ld l, [hl]                                    ; $4EA3: $6E
    ld b, $D0                                     ; $4EA4: $06 $D0
    ld a, [c]                                     ; $4EA6: $F2
    rst $28                                       ; $4EA7: $EF

jr_026_4EA8:
    rst $20                                       ; $4EA8: $E7

jr_026_4EA9:
    ld a, [c]                                     ; $4EA9: $F2
    pop hl                                        ; $4EAA: $E1
    add d                                         ; $4EAB: $82

jr_026_4EAC:
    db $ED                                        ; $4EAC: $ED
    inc bc                                        ; $4EAD: $03
    push hl                                       ; $4EAE: $E5
    ld a, [c]                                     ; $4EAF: $F2
    di                                            ; $4EB0: $F3
    add a                                         ; $4EB1: $87
    ld l, [hl]                                    ; $4EB2: $6E
    adc h                                         ; $4EB3: $8C
    ld a, [hl]                                    ; $4EB4: $7E
    sub h                                         ; $4EB5: $94
    ld l, [hl]                                    ; $4EB6: $6E
    adc h                                         ; $4EB7: $8C
    ld a, [hl]                                    ; $4EB8: $7E
    sub h                                         ; $4EB9: $94
    ld l, [hl]                                    ; $4EBA: $6E
    adc h                                         ; $4EBB: $8C

jr_026_4EBC:
    ld a, [hl]                                    ; $4EBC: $7E
    add e                                         ; $4EBD: $83
    ld l, [hl]                                    ; $4EBE: $6E
    rrca                                          ; $4EBF: $0F

jr_026_4EC0:
    push bc                                       ; $4EC0: $C5
    ld a, [c]                                     ; $4EC1: $F2
    jp hl                                         ; $4EC2: $E9


    db $EB                                        ; $4EC3: $EB

jr_026_4EC4:
    ld l, [hl]                                    ; $4EC4: $6E
    ret z                                         ; $4EC5: $C8

    push af                                       ; $4EC6: $F5
    db $F4                                        ; $4EC7: $F4

jr_026_4EC8:
    db $E3                                        ; $4EC8: $E3
    add sp, -$17                                  ; $4EC9: $E8 $E9
    xor $F3                                       ; $4ECB: $EE $F3
    rst $28                                       ; $4ECD: $EF
    xor $82                                       ; $4ECE: $EE $82

jr_026_4ED0:
    ld l, [hl]                                    ; $4ED0: $6E
    adc h                                         ; $4ED1: $8C
    ld a, [hl]                                    ; $4ED2: $7E
    sub h                                         ; $4ED3: $94
    ld l, [hl]                                    ; $4ED4: $6E
    adc h                                         ; $4ED5: $8C
    ld a, [hl]                                    ; $4ED6: $7E
    sub h                                         ; $4ED7: $94
    ld l, [hl]                                    ; $4ED8: $6E
    adc h                                         ; $4ED9: $8C
    ld a, [hl]                                    ; $4EDA: $7E
    sub h                                         ; $4EDB: $94
    ld l, [hl]                                    ; $4EDC: $6E
    adc h                                         ; $4EDD: $8C
    ld a, [hl]                                    ; $4EDE: $7E
    sub h                                         ; $4EDF: $94
    ld l, [hl]                                    ; $4EE0: $6E
    adc h                                         ; $4EE1: $8C
    ld a, [hl]                                    ; $4EE2: $7E
    sub h                                         ; $4EE3: $94
    ld l, [hl]                                    ; $4EE4: $6E
    adc h                                         ; $4EE5: $8C
    ld a, [hl]                                    ; $4EE6: $7E
    sub h                                         ; $4EE7: $94
    ld l, [hl]                                    ; $4EE8: $6E
    adc h                                         ; $4EE9: $8C
    ld a, [hl]                                    ; $4EEA: $7E
    sub h                                         ; $4EEB: $94
    ld l, [hl]                                    ; $4EEC: $6E
    pop bc                                        ; $4EED: $C1
    call z, $007E                                 ; $4EEE: $CC $7E $00
    sub h                                         ; $4EF1: $94
    jr nz, jr_026_4E80                            ; $4EF2: $20 $8C

    nop                                           ; $4EF4: $00
    sub h                                         ; $4EF5: $94
    jr nz, jr_026_4E84                            ; $4EF6: $20 $8C

    nop                                           ; $4EF8: $00
    sub h                                         ; $4EF9: $94
    jr nz, jr_026_4E88                            ; $4EFA: $20 $8C

    nop                                           ; $4EFC: $00
    sub h                                         ; $4EFD: $94
    jr nz, jr_026_4E8C                            ; $4EFE: $20 $8C

    nop                                           ; $4F00: $00
    sub h                                         ; $4F01: $94
    jr nz, jr_026_4E90                            ; $4F02: $20 $8C

    nop                                           ; $4F04: $00
    sub h                                         ; $4F05: $94
    jr nz, jr_026_4E94                            ; $4F06: $20 $8C

    nop                                           ; $4F08: $00

jr_026_4F09:
    add d                                         ; $4F09: $82
    jr nz, jr_026_4E91                            ; $4F0A: $20 $85

    ld [$208D], sp                                ; $4F0C: $08 $8D $20
    adc h                                         ; $4F0F: $8C
    nop                                           ; $4F10: $00
    add d                                         ; $4F11: $82
    jr nz, jr_026_4E9C                            ; $4F12: $20 $88

    ld [$208A], sp                                ; $4F14: $08 $8A $20
    adc h                                         ; $4F17: $8C
    nop                                           ; $4F18: $00
    sub h                                         ; $4F19: $94
    jr nz, jr_026_4EA8                            ; $4F1A: $20 $8C

    nop                                           ; $4F1C: $00
    sub h                                         ; $4F1D: $94
    jr nz, jr_026_4EAC                            ; $4F1E: $20 $8C

    nop                                           ; $4F20: $00
    add l                                         ; $4F21: $85
    jr nz, jr_026_4EA9                            ; $4F22: $20 $85

    ld [$2001], sp                                ; $4F24: $08 $01 $20
    add a                                         ; $4F27: $87
    ld [$2082], sp                                ; $4F28: $08 $82 $20
    adc h                                         ; $4F2B: $8C
    nop                                           ; $4F2C: $00
    sub h                                         ; $4F2D: $94
    jr nz, jr_026_4EBC                            ; $4F2E: $20 $8C

    nop                                           ; $4F30: $00
    sub h                                         ; $4F31: $94
    jr nz, jr_026_4EC0                            ; $4F32: $20 $8C

    nop                                           ; $4F34: $00
    sub h                                         ; $4F35: $94
    jr nz, jr_026_4EC4                            ; $4F36: $20 $8C

    nop                                           ; $4F38: $00
    sub h                                         ; $4F39: $94
    jr nz, jr_026_4EC8                            ; $4F3A: $20 $8C

    nop                                           ; $4F3C: $00
    sub h                                         ; $4F3D: $94
    jr nz, @-$72                                  ; $4F3E: $20 $8C

    nop                                           ; $4F40: $00
    sub h                                         ; $4F41: $94
    jr nz, jr_026_4ED0                            ; $4F42: $20 $8C

    nop                                           ; $4F44: $00
    sub h                                         ; $4F45: $94
    jr nz, jr_026_4F09                            ; $4F46: $20 $C1

    call z, RST_00                                ; $4F48: $CC $00 $00
    sub h                                         ; $4F4B: $94
    ld l, [hl]                                    ; $4F4C: $6E
    adc h                                         ; $4F4D: $8C

jr_026_4F4E:
    ld a, [hl]                                    ; $4F4E: $7E
    sub h                                         ; $4F4F: $94
    ld l, [hl]                                    ; $4F50: $6E
    adc h                                         ; $4F51: $8C

jr_026_4F52:
    ld a, [hl]                                    ; $4F52: $7E
    sub h                                         ; $4F53: $94
    ld l, [hl]                                    ; $4F54: $6E
    adc h                                         ; $4F55: $8C

jr_026_4F56:
    ld a, [hl]                                    ; $4F56: $7E
    sub h                                         ; $4F57: $94
    ld l, [hl]                                    ; $4F58: $6E
    adc h                                         ; $4F59: $8C

jr_026_4F5A:
    ld a, [hl]                                    ; $4F5A: $7E
    sub h                                         ; $4F5B: $94
    ld l, [hl]                                    ; $4F5C: $6E
    adc h                                         ; $4F5D: $8C

jr_026_4F5E:
    ld a, [hl]                                    ; $4F5E: $7E
    sub h                                         ; $4F5F: $94
    ld l, [hl]                                    ; $4F60: $6E
    adc h                                         ; $4F61: $8C
    ld a, [hl]                                    ; $4F62: $7E
    add d                                         ; $4F63: $82

jr_026_4F64:
    ld l, [hl]                                    ; $4F64: $6E
    dec b                                         ; $4F65: $05
    pop bc                                        ; $4F66: $C1
    push af                                       ; $4F67: $F5
    db $E4                                        ; $4F68: $E4
    jp hl                                         ; $4F69: $E9


    rst $28                                       ; $4F6A: $EF
    adc l                                         ; $4F6B: $8D
    ld l, [hl]                                    ; $4F6C: $6E
    adc h                                         ; $4F6D: $8C
    ld a, [hl]                                    ; $4F6E: $7E
    add d                                         ; $4F6F: $82
    ld l, [hl]                                    ; $4F70: $6E
    dec b                                         ; $4F71: $05
    push bc                                       ; $4F72: $C5
    xor $E7                                       ; $4F73: $EE $E7
    jp hl                                         ; $4F75: $E9


    xor $82                                       ; $4F76: $EE $82
    push hl                                       ; $4F78: $E5
    ld bc, $8AF2                                  ; $4F79: $01 $F2 $8A
    ld l, [hl]                                    ; $4F7C: $6E
    adc h                                         ; $4F7D: $8C

jr_026_4F7E:
    ld a, [hl]                                    ; $4F7E: $7E
    sub h                                         ; $4F7F: $94
    ld l, [hl]                                    ; $4F80: $6E
    adc h                                         ; $4F81: $8C
    ld a, [hl]                                    ; $4F82: $7E
    sub h                                         ; $4F83: $94
    ld l, [hl]                                    ; $4F84: $6E
    adc h                                         ; $4F85: $8C
    ld a, [hl]                                    ; $4F86: $7E
    add l                                         ; $4F87: $85
    ld l, [hl]                                    ; $4F88: $6E
    dec c                                         ; $4F89: $0D
    push bc                                       ; $4F8A: $C5
    db $ED                                        ; $4F8B: $ED
    rst $28                                       ; $4F8C: $EF
    ld a, [c]                                     ; $4F8D: $F2
    ld sp, hl                                     ; $4F8E: $F9
    ld l, [hl]                                    ; $4F8F: $6E
    rst $00                                       ; $4F90: $C7

jr_026_4F91:
    push hl                                       ; $4F91: $E5
    rst $28                                       ; $4F92: $EF
    ld a, [c]                                     ; $4F93: $F2
    rst $20                                       ; $4F94: $E7

jr_026_4F95:
    push hl                                       ; $4F95: $E5
    di                                            ; $4F96: $F3
    add d                                         ; $4F97: $82
    ld l, [hl]                                    ; $4F98: $6E

jr_026_4F99:
    adc h                                         ; $4F99: $8C
    ld a, [hl]                                    ; $4F9A: $7E
    sub h                                         ; $4F9B: $94
    ld l, [hl]                                    ; $4F9C: $6E

jr_026_4F9D:
    adc h                                         ; $4F9D: $8C
    ld a, [hl]                                    ; $4F9E: $7E
    sub h                                         ; $4F9F: $94
    ld l, [hl]                                    ; $4FA0: $6E

jr_026_4FA1:
    adc h                                         ; $4FA1: $8C
    ld a, [hl]                                    ; $4FA2: $7E
    sub h                                         ; $4FA3: $94
    ld l, [hl]                                    ; $4FA4: $6E

jr_026_4FA5:
    adc h                                         ; $4FA5: $8C
    ld a, [hl]                                    ; $4FA6: $7E
    sub h                                         ; $4FA7: $94
    ld l, [hl]                                    ; $4FA8: $6E
    adc h                                         ; $4FA9: $8C
    ld a, [hl]                                    ; $4FAA: $7E
    sub h                                         ; $4FAB: $94
    ld l, [hl]                                    ; $4FAC: $6E
    adc h                                         ; $4FAD: $8C
    ld a, [hl]                                    ; $4FAE: $7E
    sub h                                         ; $4FAF: $94
    ld l, [hl]                                    ; $4FB0: $6E
    adc h                                         ; $4FB1: $8C
    ld a, [hl]                                    ; $4FB2: $7E
    sub h                                         ; $4FB3: $94
    ld l, [hl]                                    ; $4FB4: $6E
    pop bc                                        ; $4FB5: $C1
    call z, $007E                                 ; $4FB6: $CC $7E $00
    ld a, [hl]                                    ; $4FB9: $7E
    nop                                           ; $4FBA: $00
    sub h                                         ; $4FBB: $94
    jr nz, @-$72                                  ; $4FBC: $20 $8C

    nop                                           ; $4FBE: $00
    sub h                                         ; $4FBF: $94
    jr nz, jr_026_4F4E                            ; $4FC0: $20 $8C

    nop                                           ; $4FC2: $00
    sub h                                         ; $4FC3: $94
    jr nz, jr_026_4F52                            ; $4FC4: $20 $8C

    nop                                           ; $4FC6: $00
    sub h                                         ; $4FC7: $94
    jr nz, jr_026_4F56                            ; $4FC8: $20 $8C

    nop                                           ; $4FCA: $00
    sub h                                         ; $4FCB: $94
    jr nz, jr_026_4F5A                            ; $4FCC: $20 $8C

    nop                                           ; $4FCE: $00
    sub h                                         ; $4FCF: $94
    jr nz, jr_026_4F5E                            ; $4FD0: $20 $8C

    nop                                           ; $4FD2: $00
    add d                                         ; $4FD3: $82
    jr nz, @+$03                                  ; $4FD4: $20 $01

    ld [$2882], sp                                ; $4FD6: $08 $82 $28
    add d                                         ; $4FD9: $82
    ld [$208D], sp                                ; $4FDA: $08 $8D $20
    adc h                                         ; $4FDD: $8C

jr_026_4FDE:
    nop                                           ; $4FDE: $00
    add d                                         ; $4FDF: $82
    jr nz, jr_026_4F64                            ; $4FE0: $20 $82

    ld [$2801], sp                                ; $4FE2: $08 $01 $28
    add a                                         ; $4FE5: $87
    ld [$2088], sp                                ; $4FE6: $08 $88 $20
    adc h                                         ; $4FE9: $8C
    nop                                           ; $4FEA: $00
    sub h                                         ; $4FEB: $94
    jr nz, @-$72                                  ; $4FEC: $20 $8C

    nop                                           ; $4FEE: $00
    sub h                                         ; $4FEF: $94
    jr nz, jr_026_4F7E                            ; $4FF0: $20 $8C

    nop                                           ; $4FF2: $00
    adc b                                         ; $4FF3: $88
    jr nz, @+$04                                  ; $4FF4: $20 $02

    ld [$8228], sp                                ; $4FF6: $08 $28 $82
    ld [$2001], sp                                ; $4FF9: $08 $01 $20
    add l                                         ; $4FFC: $85
    ld [$2082], sp                                ; $4FFD: $08 $82 $20
    adc h                                         ; $5000: $8C
    nop                                           ; $5001: $00
    sub h                                         ; $5002: $94
    jr nz, jr_026_4F91                            ; $5003: $20 $8C

    nop                                           ; $5005: $00
    sub h                                         ; $5006: $94
    jr nz, jr_026_4F95                            ; $5007: $20 $8C

    nop                                           ; $5009: $00
    sub h                                         ; $500A: $94
    jr nz, jr_026_4F99                            ; $500B: $20 $8C

    nop                                           ; $500D: $00
    sub h                                         ; $500E: $94
    jr nz, jr_026_4F9D                            ; $500F: $20 $8C

    nop                                           ; $5011: $00
    sub h                                         ; $5012: $94
    jr nz, jr_026_4FA1                            ; $5013: $20 $8C

    nop                                           ; $5015: $00
    sub h                                         ; $5016: $94
    jr nz, jr_026_4FA5                            ; $5017: $20 $8C

    nop                                           ; $5019: $00
    sub h                                         ; $501A: $94
    jr nz, jr_026_4FDE                            ; $501B: $20 $C1

    call z, RST_00                                ; $501D: $CC $00 $00

jr_026_5020:
    sub h                                         ; $5020: $94
    ld l, [hl]                                    ; $5021: $6E
    adc h                                         ; $5022: $8C
    ld a, [hl]                                    ; $5023: $7E

jr_026_5024:
    sub h                                         ; $5024: $94
    ld l, [hl]                                    ; $5025: $6E
    adc h                                         ; $5026: $8C
    ld a, [hl]                                    ; $5027: $7E

jr_026_5028:
    sub h                                         ; $5028: $94
    ld l, [hl]                                    ; $5029: $6E
    adc h                                         ; $502A: $8C
    ld a, [hl]                                    ; $502B: $7E

jr_026_502C:
    sub h                                         ; $502C: $94
    ld l, [hl]                                    ; $502D: $6E
    adc h                                         ; $502E: $8C
    ld a, [hl]                                    ; $502F: $7E

jr_026_5030:
    sub h                                         ; $5030: $94
    ld l, [hl]                                    ; $5031: $6E
    adc h                                         ; $5032: $8C
    ld a, [hl]                                    ; $5033: $7E

jr_026_5034:
    sub h                                         ; $5034: $94
    ld l, [hl]                                    ; $5035: $6E
    adc h                                         ; $5036: $8C
    ld a, [hl]                                    ; $5037: $7E
    add d                                         ; $5038: $82
    ld l, [hl]                                    ; $5039: $6E
    dec b                                         ; $503A: $05
    call nc, $EFEF                                ; $503B: $D4 $EF $EF
    db $EC                                        ; $503E: $EC
    di                                            ; $503F: $F3
    adc l                                         ; $5040: $8D
    ld l, [hl]                                    ; $5041: $6E
    adc h                                         ; $5042: $8C
    ld a, [hl]                                    ; $5043: $7E

jr_026_5044:
    add d                                         ; $5044: $82
    ld l, [hl]                                    ; $5045: $6E
    ld b, $D0                                     ; $5046: $06 $D0

jr_026_5048:
    ld a, [c]                                     ; $5048: $F2
    rst $28                                       ; $5049: $EF
    rst $20                                       ; $504A: $E7
    ld a, [c]                                     ; $504B: $F2
    pop hl                                        ; $504C: $E1
    add d                                         ; $504D: $82
    db $ED                                        ; $504E: $ED
    ld [bc], a                                    ; $504F: $02
    push hl                                       ; $5050: $E5
    ld a, [c]                                     ; $5051: $F2
    adc b                                         ; $5052: $88
    ld l, [hl]                                    ; $5053: $6E

Jump_026_5054:
jr_026_5054:
    adc h                                         ; $5054: $8C
    ld a, [hl]                                    ; $5055: $7E
    sub h                                         ; $5056: $94

jr_026_5057:
    ld l, [hl]                                    ; $5057: $6E

Jump_026_5058:
    adc h                                         ; $5058: $8C
    ld a, [hl]                                    ; $5059: $7E
    sub h                                         ; $505A: $94
    ld l, [hl]                                    ; $505B: $6E
    adc h                                         ; $505C: $8C
    ld a, [hl]                                    ; $505D: $7E
    adc b                                         ; $505E: $88
    ld l, [hl]                                    ; $505F: $6E
    ld a, [bc]                                    ; $5060: $0A
    jp z, $F3EF                                   ; $5061: $CA $EF $F3

    add sp, $6E                                   ; $5064: $E8 $6E

jr_026_5066:
    call z, $F4F9                                 ; $5066: $CC $F9 $F4
    db $EC                                        ; $5069: $EC

jr_026_506A:
    push hl                                       ; $506A: $E5
    add d                                         ; $506B: $82
    ld l, [hl]                                    ; $506C: $6E
    adc h                                         ; $506D: $8C

jr_026_506E:
    ld a, [hl]                                    ; $506E: $7E
    sub h                                         ; $506F: $94
    ld l, [hl]                                    ; $5070: $6E
    adc h                                         ; $5071: $8C

jr_026_5072:
    ld a, [hl]                                    ; $5072: $7E

Jump_026_5073:
    sub h                                         ; $5073: $94
    ld l, [hl]                                    ; $5074: $6E
    adc h                                         ; $5075: $8C

jr_026_5076:
    ld a, [hl]                                    ; $5076: $7E
    sub h                                         ; $5077: $94
    ld l, [hl]                                    ; $5078: $6E
    adc h                                         ; $5079: $8C

jr_026_507A:
    ld a, [hl]                                    ; $507A: $7E
    sub h                                         ; $507B: $94
    ld l, [hl]                                    ; $507C: $6E
    adc h                                         ; $507D: $8C
    ld a, [hl]                                    ; $507E: $7E
    sub h                                         ; $507F: $94
    ld l, [hl]                                    ; $5080: $6E
    adc h                                         ; $5081: $8C
    ld a, [hl]                                    ; $5082: $7E
    sub h                                         ; $5083: $94
    ld l, [hl]                                    ; $5084: $6E
    adc h                                         ; $5085: $8C
    ld a, [hl]                                    ; $5086: $7E
    sub h                                         ; $5087: $94
    ld l, [hl]                                    ; $5088: $6E
    pop bc                                        ; $5089: $C1
    call z, $007E                                 ; $508A: $CC $7E $00
    sub h                                         ; $508D: $94
    jr nz, @-$72                                  ; $508E: $20 $8C

    ld h, b                                       ; $5090: $60
    sub h                                         ; $5091: $94
    jr nz, jr_026_5020                            ; $5092: $20 $8C

    ld h, b                                       ; $5094: $60
    sub h                                         ; $5095: $94
    jr nz, jr_026_5024                            ; $5096: $20 $8C

    ld h, b                                       ; $5098: $60
    sub h                                         ; $5099: $94
    jr nz, jr_026_5028                            ; $509A: $20 $8C

    ld h, b                                       ; $509C: $60
    sub h                                         ; $509D: $94
    jr nz, jr_026_502C                            ; $509E: $20 $8C

    ld h, b                                       ; $50A0: $60
    sub h                                         ; $50A1: $94
    jr nz, jr_026_5030                            ; $50A2: $20 $8C

    ld h, b                                       ; $50A4: $60
    sub h                                         ; $50A5: $94
    jr nz, jr_026_5034                            ; $50A6: $20 $8C

    ld h, b                                       ; $50A8: $60
    add d                                         ; $50A9: $82
    jr nz, jr_026_5030                            ; $50AA: $20 $84

    ld [$2001], sp                                ; $50AC: $08 $01 $20
    add [hl]                                      ; $50AF: $86
    ld [$2087], sp                                ; $50B0: $08 $87 $20

jr_026_50B3:
    adc h                                         ; $50B3: $8C
    ld h, b                                       ; $50B4: $60
    sub h                                         ; $50B5: $94
    jr nz, jr_026_5044                            ; $50B6: $20 $8C

    ld h, b                                       ; $50B8: $60
    sub h                                         ; $50B9: $94
    jr nz, jr_026_5048                            ; $50BA: $20 $8C

    ld h, b                                       ; $50BC: $60
    add a                                         ; $50BD: $87
    jr nz, @+$04                                  ; $50BE: $20 $02

    ld [$8228], sp                                ; $50C0: $08 $28 $82
    ld [$2001], sp                                ; $50C3: $08 $01 $20
    add l                                         ; $50C6: $85
    ld [$2083], sp                                ; $50C7: $08 $83 $20
    adc h                                         ; $50CA: $8C
    ld h, b                                       ; $50CB: $60
    add a                                         ; $50CC: $87
    jr nz, jr_026_5054                            ; $50CD: $20 $85

    ld [$2802], sp                                ; $50CF: $08 $02 $28
    jr nz, jr_026_5057                            ; $50D2: $20 $83

    ld [$2801], sp                                ; $50D4: $08 $01 $28
    add d                                         ; $50D7: $82
    jr nz, jr_026_5066                            ; $50D8: $20 $8C

    ld h, b                                       ; $50DA: $60
    sub h                                         ; $50DB: $94
    jr nz, jr_026_506A                            ; $50DC: $20 $8C

    ld h, b                                       ; $50DE: $60
    sub h                                         ; $50DF: $94
    jr nz, jr_026_506E                            ; $50E0: $20 $8C

    ld h, b                                       ; $50E2: $60
    sub h                                         ; $50E3: $94
    jr nz, jr_026_5072                            ; $50E4: $20 $8C

    ld h, b                                       ; $50E6: $60
    sub h                                         ; $50E7: $94
    jr nz, jr_026_5076                            ; $50E8: $20 $8C

    ld h, b                                       ; $50EA: $60
    sub h                                         ; $50EB: $94
    jr nz, jr_026_507A                            ; $50EC: $20 $8C

    ld h, b                                       ; $50EE: $60
    sub h                                         ; $50EF: $94
    jr nz, jr_026_50B3                            ; $50F0: $20 $C1

    call z, $0060                                 ; $50F2: $CC $60 $00
    sub h                                         ; $50F5: $94
    ld l, [hl]                                    ; $50F6: $6E

jr_026_50F7:
    adc h                                         ; $50F7: $8C
    ld a, [hl]                                    ; $50F8: $7E
    sub h                                         ; $50F9: $94
    ld l, [hl]                                    ; $50FA: $6E

jr_026_50FB:
    adc h                                         ; $50FB: $8C
    ld a, [hl]                                    ; $50FC: $7E
    sub h                                         ; $50FD: $94
    ld l, [hl]                                    ; $50FE: $6E

jr_026_50FF:
    adc h                                         ; $50FF: $8C
    ld a, [hl]                                    ; $5100: $7E
    sub h                                         ; $5101: $94
    ld l, [hl]                                    ; $5102: $6E

jr_026_5103:
    adc h                                         ; $5103: $8C
    ld a, [hl]                                    ; $5104: $7E
    sub h                                         ; $5105: $94
    ld l, [hl]                                    ; $5106: $6E

jr_026_5107:
    adc h                                         ; $5107: $8C
    ld a, [hl]                                    ; $5108: $7E

jr_026_5109:
    sub h                                         ; $5109: $94
    ld l, [hl]                                    ; $510A: $6E

jr_026_510B:
    adc h                                         ; $510B: $8C
    ld a, [hl]                                    ; $510C: $7E
    sub h                                         ; $510D: $94
    ld l, [hl]                                    ; $510E: $6E
    adc h                                         ; $510F: $8C
    ld a, [hl]                                    ; $5110: $7E
    add d                                         ; $5111: $82
    ld l, [hl]                                    ; $5112: $6E
    dec bc                                        ; $5113: $0B
    rst $00                                       ; $5114: $C7
    pop hl                                        ; $5115: $E1
    db $ED                                        ; $5116: $ED
    push hl                                       ; $5117: $E5

jr_026_5118:
    ld l, [hl]                                    ; $5118: $6E
    call nz, $F3E5                                ; $5119: $C4 $E5 $F3
    jp hl                                         ; $511C: $E9


    rst $20                                       ; $511D: $E7
    xor $87                                       ; $511E: $EE $87
    ld l, [hl]                                    ; $5120: $6E
    adc h                                         ; $5121: $8C
    ld a, [hl]                                    ; $5122: $7E

jr_026_5123:
    sub h                                         ; $5123: $94
    ld l, [hl]                                    ; $5124: $6E
    adc h                                         ; $5125: $8C
    ld a, [hl]                                    ; $5126: $7E

jr_026_5127:
    sub h                                         ; $5127: $94
    ld l, [hl]                                    ; $5128: $6E
    adc h                                         ; $5129: $8C
    ld a, [hl]                                    ; $512A: $7E
    add a                                         ; $512B: $87
    ld l, [hl]                                    ; $512C: $6E
    ld a, [bc]                                    ; $512D: $0A
    jp z, $F3EF                                   ; $512E: $CA $EF $F3

    add sp, $6E                                   ; $5131: $E8 $6E
    call z, $F4F9                                 ; $5133: $CC $F9 $F4
    db $EC                                        ; $5136: $EC

jr_026_5137:
    push hl                                       ; $5137: $E5
    add e                                         ; $5138: $83
    ld l, [hl]                                    ; $5139: $6E
    adc h                                         ; $513A: $8C

jr_026_513B:
    ld a, [hl]                                    ; $513B: $7E
    add a                                         ; $513C: $87
    ld l, [hl]                                    ; $513D: $6E
    dec bc                                        ; $513E: $0B

jr_026_513F:
    ret z                                         ; $513F: $C8

    pop hl                                        ; $5140: $E1
    ld sp, hl                                     ; $5141: $F9
    pop hl                                        ; $5142: $E1

jr_026_5143:
    db $F4                                        ; $5143: $F4
    rst $28                                       ; $5144: $EF
    ld l, [hl]                                    ; $5145: $6E
    db $D3                                        ; $5146: $D3

jr_026_5147:
    pop hl                                        ; $5147: $E1
    db $F4                                        ; $5148: $F4
    rst $28                                       ; $5149: $EF
    add d                                         ; $514A: $82

jr_026_514B:
    ld l, [hl]                                    ; $514B: $6E
    adc h                                         ; $514C: $8C
    ld a, [hl]                                    ; $514D: $7E
    sub h                                         ; $514E: $94
    ld l, [hl]                                    ; $514F: $6E
    adc h                                         ; $5150: $8C
    ld a, [hl]                                    ; $5151: $7E
    sub h                                         ; $5152: $94
    ld l, [hl]                                    ; $5153: $6E
    adc h                                         ; $5154: $8C
    ld a, [hl]                                    ; $5155: $7E
    sub h                                         ; $5156: $94
    ld l, [hl]                                    ; $5157: $6E
    adc h                                         ; $5158: $8C
    ld a, [hl]                                    ; $5159: $7E
    sub h                                         ; $515A: $94
    ld l, [hl]                                    ; $515B: $6E
    adc h                                         ; $515C: $8C
    ld a, [hl]                                    ; $515D: $7E
    sub h                                         ; $515E: $94
    ld l, [hl]                                    ; $515F: $6E
    adc h                                         ; $5160: $8C
    ld a, [hl]                                    ; $5161: $7E
    sub h                                         ; $5162: $94
    ld l, [hl]                                    ; $5163: $6E
    pop bc                                        ; $5164: $C1
    call z, $007E                                 ; $5165: $CC $7E $00
    sub h                                         ; $5168: $94
    jr nz, jr_026_50F7                            ; $5169: $20 $8C

    nop                                           ; $516B: $00
    sub h                                         ; $516C: $94
    jr nz, jr_026_50FB                            ; $516D: $20 $8C

    nop                                           ; $516F: $00
    sub h                                         ; $5170: $94
    jr nz, jr_026_50FF                            ; $5171: $20 $8C

    nop                                           ; $5173: $00
    sub h                                         ; $5174: $94
    jr nz, jr_026_5103                            ; $5175: $20 $8C

    nop                                           ; $5177: $00
    sub h                                         ; $5178: $94
    jr nz, jr_026_5107                            ; $5179: $20 $8C

    nop                                           ; $517B: $00
    sub h                                         ; $517C: $94
    jr nz, jr_026_510B                            ; $517D: $20 $8C

    nop                                           ; $517F: $00
    add d                                         ; $5180: $82
    jr nz, jr_026_5109                            ; $5181: $20 $86

    ld [$2001], sp                                ; $5183: $08 $01 $20
    add [hl]                                      ; $5186: $86
    ld [$2085], sp                                ; $5187: $08 $85 $20
    adc h                                         ; $518A: $8C
    nop                                           ; $518B: $00
    add d                                         ; $518C: $82
    jr nz, jr_026_5118                            ; $518D: $20 $89

    ld [$2089], sp                                ; $518F: $08 $89 $20
    adc h                                         ; $5192: $8C
    nop                                           ; $5193: $00
    sub h                                         ; $5194: $94
    jr nz, jr_026_5123                            ; $5195: $20 $8C

    nop                                           ; $5197: $00
    sub h                                         ; $5198: $94
    jr nz, jr_026_5127                            ; $5199: $20 $8C

    nop                                           ; $519B: $00
    adc b                                         ; $519C: $88
    jr nz, jr_026_5123                            ; $519D: $20 $84

    ld [$2001], sp                                ; $519F: $08 $01 $20
    add l                                         ; $51A2: $85
    ld [$2082], sp                                ; $51A3: $08 $82 $20
    adc h                                         ; $51A6: $8C
    nop                                           ; $51A7: $00
    sub h                                         ; $51A8: $94
    jr nz, jr_026_5137                            ; $51A9: $20 $8C

    nop                                           ; $51AB: $00
    sub h                                         ; $51AC: $94
    jr nz, jr_026_513B                            ; $51AD: $20 $8C

    nop                                           ; $51AF: $00
    sub h                                         ; $51B0: $94
    jr nz, jr_026_513F                            ; $51B1: $20 $8C

    nop                                           ; $51B3: $00
    sub h                                         ; $51B4: $94
    jr nz, jr_026_5143                            ; $51B5: $20 $8C

    nop                                           ; $51B7: $00
    sub h                                         ; $51B8: $94
    jr nz, jr_026_5147                            ; $51B9: $20 $8C

    nop                                           ; $51BB: $00
    sub h                                         ; $51BC: $94
    jr nz, jr_026_514B                            ; $51BD: $20 $8C

    nop                                           ; $51BF: $00
    sub h                                         ; $51C0: $94
    jr nz, @-$3D                                  ; $51C1: $20 $C1

    call z, RST_00                                ; $51C3: $CC $00 $00
    sub h                                         ; $51C6: $94
    ld l, [hl]                                    ; $51C7: $6E

jr_026_51C8:
    adc h                                         ; $51C8: $8C
    ld a, [hl]                                    ; $51C9: $7E
    sub h                                         ; $51CA: $94
    ld l, [hl]                                    ; $51CB: $6E

jr_026_51CC:
    adc h                                         ; $51CC: $8C
    ld a, [hl]                                    ; $51CD: $7E
    sub h                                         ; $51CE: $94
    ld l, [hl]                                    ; $51CF: $6E

jr_026_51D0:
    adc h                                         ; $51D0: $8C

jr_026_51D1:
    ld a, [hl]                                    ; $51D1: $7E
    sub h                                         ; $51D2: $94
    ld l, [hl]                                    ; $51D3: $6E

jr_026_51D4:
    adc h                                         ; $51D4: $8C
    ld a, [hl]                                    ; $51D5: $7E
    sub h                                         ; $51D6: $94
    ld l, [hl]                                    ; $51D7: $6E
    adc h                                         ; $51D8: $8C
    ld a, [hl]                                    ; $51D9: $7E
    sub h                                         ; $51DA: $94
    ld l, [hl]                                    ; $51DB: $6E
    adc h                                         ; $51DC: $8C
    ld a, [hl]                                    ; $51DD: $7E
    add d                                         ; $51DE: $82

jr_026_51DF:
    ld l, [hl]                                    ; $51DF: $6E

jr_026_51E0:
    dec c                                         ; $51E0: $0D
    db $D3                                        ; $51E1: $D3
    add sp, -$1F                                  ; $51E2: $E8 $E1
    db $E4                                        ; $51E4: $E4
    rst $28                                       ; $51E5: $EF
    rst $30                                       ; $51E6: $F7
    ld l, [hl]                                    ; $51E7: $6E
    rst $00                                       ; $51E8: $C7
    push hl                                       ; $51E9: $E5
    ld sp, hl                                     ; $51EA: $F9
    di                                            ; $51EB: $F3
    push hl                                       ; $51EC: $E5
    ld a, [c]                                     ; $51ED: $F2
    add l                                         ; $51EE: $85
    ld l, [hl]                                    ; $51EF: $6E
    adc h                                         ; $51F0: $8C
    ld a, [hl]                                    ; $51F1: $7E
    add d                                         ; $51F2: $82
    ld l, [hl]                                    ; $51F3: $6E

jr_026_51F4:
    add hl, bc                                    ; $51F4: $09
    pop bc                                        ; $51F5: $C1
    ld a, [c]                                     ; $51F6: $F2
    db $E3                                        ; $51F7: $E3
    add sp, -$17                                  ; $51F8: $E8 $E9
    db $F4                                        ; $51FA: $F4
    push hl                                       ; $51FB: $E5
    db $E3                                        ; $51FC: $E3
    db $F4                                        ; $51FD: $F4
    adc c                                         ; $51FE: $89
    ld l, [hl]                                    ; $51FF: $6E

jr_026_5200:
    adc h                                         ; $5200: $8C

jr_026_5201:
    ld a, [hl]                                    ; $5201: $7E
    sub h                                         ; $5202: $94
    ld l, [hl]                                    ; $5203: $6E

jr_026_5204:
    adc h                                         ; $5204: $8C
    ld a, [hl]                                    ; $5205: $7E
    sub h                                         ; $5206: $94
    ld l, [hl]                                    ; $5207: $6E
    adc h                                         ; $5208: $8C
    ld a, [hl]                                    ; $5209: $7E
    adc b                                         ; $520A: $88
    ld l, [hl]                                    ; $520B: $6E

jr_026_520C:
    ld a, [bc]                                    ; $520C: $0A
    jp z, $F3EF                                   ; $520D: $CA $EF $F3

    add sp, $6E                                   ; $5210: $E8 $6E
    call z, $F4F9                                 ; $5212: $CC $F9 $F4
    db $EC                                        ; $5215: $EC
    push hl                                       ; $5216: $E5
    add d                                         ; $5217: $82
    ld l, [hl]                                    ; $5218: $6E
    adc h                                         ; $5219: $8C
    ld a, [hl]                                    ; $521A: $7E
    sub h                                         ; $521B: $94

jr_026_521C:
    ld l, [hl]                                    ; $521C: $6E
    adc h                                         ; $521D: $8C
    ld a, [hl]                                    ; $521E: $7E
    sub h                                         ; $521F: $94

jr_026_5220:
    ld l, [hl]                                    ; $5220: $6E
    adc h                                         ; $5221: $8C
    ld a, [hl]                                    ; $5222: $7E
    sub h                                         ; $5223: $94

jr_026_5224:
    ld l, [hl]                                    ; $5224: $6E
    adc h                                         ; $5225: $8C
    ld a, [hl]                                    ; $5226: $7E
    sub h                                         ; $5227: $94

jr_026_5228:
    ld l, [hl]                                    ; $5228: $6E
    adc h                                         ; $5229: $8C
    ld a, [hl]                                    ; $522A: $7E
    sub h                                         ; $522B: $94

jr_026_522C:
    ld l, [hl]                                    ; $522C: $6E
    adc h                                         ; $522D: $8C
    ld a, [hl]                                    ; $522E: $7E
    sub h                                         ; $522F: $94
    ld l, [hl]                                    ; $5230: $6E
    adc h                                         ; $5231: $8C
    ld a, [hl]                                    ; $5232: $7E
    sub h                                         ; $5233: $94
    ld l, [hl]                                    ; $5234: $6E
    pop bc                                        ; $5235: $C1
    call z, $007E                                 ; $5236: $CC $7E $00
    sub h                                         ; $5239: $94
    jr nz, jr_026_51C8                            ; $523A: $20 $8C

    ld h, b                                       ; $523C: $60
    sub h                                         ; $523D: $94
    jr nz, jr_026_51CC                            ; $523E: $20 $8C

    ld h, b                                       ; $5240: $60
    sub h                                         ; $5241: $94
    jr nz, jr_026_51D0                            ; $5242: $20 $8C

    ld h, b                                       ; $5244: $60
    sub h                                         ; $5245: $94
    jr nz, jr_026_51D4                            ; $5246: $20 $8C

    ld h, b                                       ; $5248: $60
    add d                                         ; $5249: $82
    jr nz, jr_026_51D1                            ; $524A: $20 $85

    ld [$208D], sp                                ; $524C: $08 $8D $20
    adc h                                         ; $524F: $8C
    ld h, b                                       ; $5250: $60
    add d                                         ; $5251: $82
    jr nz, jr_026_51DF                            ; $5252: $20 $8B

    ld [$2087], sp                                ; $5254: $08 $87 $20
    adc h                                         ; $5257: $8C
    ld h, b                                       ; $5258: $60
    add d                                         ; $5259: $82
    jr nz, jr_026_51E0                            ; $525A: $20 $84

    ld [$2001], sp                                ; $525C: $08 $01 $20
    add e                                         ; $525F: $83
    ld [$2001], sp                                ; $5260: $08 $01 $20
    add e                                         ; $5263: $83
    ld [$2086], sp                                ; $5264: $08 $86 $20
    adc h                                         ; $5267: $8C
    ld h, b                                       ; $5268: $60
    add d                                         ; $5269: $82
    jr nz, jr_026_51F4                            ; $526A: $20 $88

    ld [$208A], sp                                ; $526C: $08 $8A $20
    adc h                                         ; $526F: $8C
    ld h, b                                       ; $5270: $60
    sub h                                         ; $5271: $94
    jr nz, jr_026_5200                            ; $5272: $20 $8C

    ld h, b                                       ; $5274: $60
    sub h                                         ; $5275: $94
    jr nz, jr_026_5204                            ; $5276: $20 $8C

    ld h, b                                       ; $5278: $60
    add l                                         ; $5279: $85
    jr nz, jr_026_5201                            ; $527A: $20 $85

    ld [$2801], sp                                ; $527C: $08 $01 $28
    adc b                                         ; $527F: $88
    ld [$2001], sp                                ; $5280: $08 $01 $20
    adc h                                         ; $5283: $8C
    ld h, b                                       ; $5284: $60
    adc [hl]                                      ; $5285: $8E
    jr nz, jr_026_520C                            ; $5286: $20 $84

    ld [$2082], sp                                ; $5288: $08 $82 $20
    adc h                                         ; $528B: $8C
    ld h, b                                       ; $528C: $60
    sub h                                         ; $528D: $94
    jr nz, jr_026_521C                            ; $528E: $20 $8C

    ld h, b                                       ; $5290: $60
    sub h                                         ; $5291: $94
    jr nz, jr_026_5220                            ; $5292: $20 $8C

    ld h, b                                       ; $5294: $60
    sub h                                         ; $5295: $94
    jr nz, jr_026_5224                            ; $5296: $20 $8C

    ld h, b                                       ; $5298: $60
    sub h                                         ; $5299: $94
    jr nz, jr_026_5228                            ; $529A: $20 $8C

    ld h, b                                       ; $529C: $60
    sub h                                         ; $529D: $94
    jr nz, jr_026_522C                            ; $529E: $20 $8C

    ld h, b                                       ; $52A0: $60
    sub h                                         ; $52A1: $94
    jr nz, @-$3D                                  ; $52A2: $20 $C1

    call z, $0060                                 ; $52A4: $CC $60 $00
    sub h                                         ; $52A7: $94
    ld l, [hl]                                    ; $52A8: $6E
    adc h                                         ; $52A9: $8C
    ld a, [hl]                                    ; $52AA: $7E
    sub h                                         ; $52AB: $94
    ld l, [hl]                                    ; $52AC: $6E
    adc h                                         ; $52AD: $8C
    ld a, [hl]                                    ; $52AE: $7E
    sub h                                         ; $52AF: $94
    ld l, [hl]                                    ; $52B0: $6E
    adc h                                         ; $52B1: $8C
    ld a, [hl]                                    ; $52B2: $7E
    sub h                                         ; $52B3: $94
    ld l, [hl]                                    ; $52B4: $6E
    adc h                                         ; $52B5: $8C
    ld a, [hl]                                    ; $52B6: $7E
    add d                                         ; $52B7: $82
    ld l, [hl]                                    ; $52B8: $6E
    dec b                                         ; $52B9: $05
    db $D3                                        ; $52BA: $D3
    db $F4                                        ; $52BB: $F4
    rst $28                                       ; $52BC: $EF
    ld a, [c]                                     ; $52BD: $F2
    ld sp, hl                                     ; $52BE: $F9
    adc l                                         ; $52BF: $8D
    ld l, [hl]                                    ; $52C0: $6E
    adc h                                         ; $52C1: $8C
    ld a, [hl]                                    ; $52C2: $7E
    add d                                         ; $52C3: $82
    ld l, [hl]                                    ; $52C4: $6E
    dec bc                                        ; $52C5: $0B
    jp $EEEF                                      ; $52C6: $C3 $EF $EE


    db $F4                                        ; $52C9: $F4
    jp hl                                         ; $52CA: $E9


jr_026_52CB:
    xor $F5                                       ; $52CB: $EE $F5
    jp hl                                         ; $52CD: $E9


    db $F4                                        ; $52CE: $F4

jr_026_52CF:
    ld sp, hl                                     ; $52CF: $F9
    xor h                                         ; $52D0: $AC
    add a                                         ; $52D1: $87
    ld l, [hl]                                    ; $52D2: $6E

jr_026_52D3:
    adc h                                         ; $52D3: $8C
    ld a, [hl]                                    ; $52D4: $7E
    add d                                         ; $52D5: $82
    ld l, [hl]                                    ; $52D6: $6E

jr_026_52D7:
    inc c                                         ; $52D7: $0C
    set 5, a                                      ; $52D8: $CB $EF

jr_026_52DA:
    ld a, [c]                                     ; $52DA: $F2

jr_026_52DB:
    rst $20                                       ; $52DB: $E7
    ld l, [hl]                                    ; $52DC: $6E
    pop hl                                        ; $52DD: $E1
    xor $E4                                       ; $52DE: $EE $E4
    ld l, [hl]                                    ; $52E0: $6E
    jp c, $F4E5                                   ; $52E1: $DA $E5 $F4

    add [hl]                                      ; $52E4: $86
    ld l, [hl]                                    ; $52E5: $6E
    adc h                                         ; $52E6: $8C
    ld a, [hl]                                    ; $52E7: $7E
    add d                                         ; $52E8: $82
    ld l, [hl]                                    ; $52E9: $6E
    ld [$F2D7], sp                                ; $52EA: $08 $D7 $F2
    pop hl                                        ; $52ED: $E1
    xor $E7                                       ; $52EE: $EE $E7
    db $EC                                        ; $52F0: $EC
    push hl                                       ; $52F1: $E5
    ld a, [c]                                     ; $52F2: $F2
    adc d                                         ; $52F3: $8A
    ld l, [hl]                                    ; $52F4: $6E

jr_026_52F5:
    adc h                                         ; $52F5: $8C
    ld a, [hl]                                    ; $52F6: $7E
    sub h                                         ; $52F7: $94
    ld l, [hl]                                    ; $52F8: $6E

jr_026_52F9:
    adc h                                         ; $52F9: $8C
    ld a, [hl]                                    ; $52FA: $7E
    sub h                                         ; $52FB: $94
    ld l, [hl]                                    ; $52FC: $6E
    adc h                                         ; $52FD: $8C
    ld a, [hl]                                    ; $52FE: $7E
    add l                                         ; $52FF: $85
    ld l, [hl]                                    ; $5300: $6E
    rrca                                          ; $5301: $0F
    call nz, $ECF9                                ; $5302: $C4 $F9 $EC
    pop hl                                        ; $5305: $E1
    xor $A7                                       ; $5306: $EE $A7
    push bc                                       ; $5308: $C5
    ld hl, sp-$11                                 ; $5309: $F8 $EF
    jp nz, $F4F9                                  ; $530B: $C2 $F9 $F4

    push hl                                       ; $530E: $E5
    and a                                         ; $530F: $A7
    ld l, [hl]                                    ; $5310: $6E
    adc h                                         ; $5311: $8C
    ld a, [hl]                                    ; $5312: $7E
    adc [hl]                                      ; $5313: $8E
    ld l, [hl]                                    ; $5314: $6E
    inc b                                         ; $5315: $04
    call $F9E1                                    ; $5316: $CD $E1 $F9
    rst $28                                       ; $5319: $EF
    add d                                         ; $531A: $82

jr_026_531B:
    ld l, [hl]                                    ; $531B: $6E
    adc h                                         ; $531C: $8C
    ld a, [hl]                                    ; $531D: $7E
    sub h                                         ; $531E: $94

jr_026_531F:
    ld l, [hl]                                    ; $531F: $6E
    adc h                                         ; $5320: $8C
    ld a, [hl]                                    ; $5321: $7E
    sub h                                         ; $5322: $94

jr_026_5323:
    ld l, [hl]                                    ; $5323: $6E
    adc h                                         ; $5324: $8C
    ld a, [hl]                                    ; $5325: $7E
    sub h                                         ; $5326: $94

jr_026_5327:
    ld l, [hl]                                    ; $5327: $6E
    adc h                                         ; $5328: $8C
    ld a, [hl]                                    ; $5329: $7E
    sub h                                         ; $532A: $94
    ld l, [hl]                                    ; $532B: $6E
    adc h                                         ; $532C: $8C
    ld a, [hl]                                    ; $532D: $7E
    sub h                                         ; $532E: $94
    ld l, [hl]                                    ; $532F: $6E
    adc h                                         ; $5330: $8C
    ld a, [hl]                                    ; $5331: $7E
    sub h                                         ; $5332: $94
    ld l, [hl]                                    ; $5333: $6E
    pop bc                                        ; $5334: $C1
    call z, $007E                                 ; $5335: $CC $7E $00
    sub h                                         ; $5338: $94
    jr nz, @-$72                                  ; $5339: $20 $8C

    ld h, b                                       ; $533B: $60
    sub h                                         ; $533C: $94
    jr nz, jr_026_52CB                            ; $533D: $20 $8C

    ld h, b                                       ; $533F: $60
    sub h                                         ; $5340: $94
    jr nz, jr_026_52CF                            ; $5341: $20 $8C

    ld h, b                                       ; $5343: $60
    sub h                                         ; $5344: $94
    jr nz, jr_026_52D3                            ; $5345: $20 $8C

    ld h, b                                       ; $5347: $60
    sub h                                         ; $5348: $94
    jr nz, jr_026_52D7                            ; $5349: $20 $8C

    ld h, b                                       ; $534B: $60
    sub h                                         ; $534C: $94
    jr nz, jr_026_52DB                            ; $534D: $20 $8C

    ld h, b                                       ; $534F: $60
    add d                                         ; $5350: $82
    jr nz, jr_026_52DA                            ; $5351: $20 $87

    ld [$208B], sp                                ; $5353: $08 $8B $20
    adc h                                         ; $5356: $8C
    ld h, b                                       ; $5357: $60
    add d                                         ; $5358: $82
    jr nz, @+$04                                  ; $5359: $20 $02

    ld [$8328], sp                                ; $535B: $08 $28 $83
    ld [$2802], sp                                ; $535E: $08 $02 $28
    ld [$208B], sp                                ; $5361: $08 $8B $20
    adc h                                         ; $5364: $8C
    ld h, b                                       ; $5365: $60
    sub h                                         ; $5366: $94
    jr nz, jr_026_52F5                            ; $5367: $20 $8C

    ld h, b                                       ; $5369: $60
    sub h                                         ; $536A: $94
    jr nz, jr_026_52F9                            ; $536B: $20 $8C

    ld h, b                                       ; $536D: $60
    add l                                         ; $536E: $85
    jr nz, jr_026_52F5                            ; $536F: $20 $84

    ld [$2003], sp                                ; $5371: $08 $03 $20
    ld [$8628], sp                                ; $5374: $08 $28 $86
    ld [$2082], sp                                ; $5377: $08 $82 $20
    adc h                                         ; $537A: $8C
    ld h, b                                       ; $537B: $60
    add l                                         ; $537C: $85
    jr nz, @-$7A                                  ; $537D: $20 $84

    ld [$2001], sp                                ; $537F: $08 $01 $20
    add l                                         ; $5382: $85
    ld [$2085], sp                                ; $5383: $08 $85 $20
    adc h                                         ; $5386: $8C
    ld h, b                                       ; $5387: $60
    sub h                                         ; $5388: $94
    jr nz, @-$72                                  ; $5389: $20 $8C

    ld h, b                                       ; $538B: $60
    sub h                                         ; $538C: $94
    jr nz, jr_026_531B                            ; $538D: $20 $8C

    ld h, b                                       ; $538F: $60
    sub h                                         ; $5390: $94
    jr nz, jr_026_531F                            ; $5391: $20 $8C

    ld h, b                                       ; $5393: $60
    sub h                                         ; $5394: $94
    jr nz, jr_026_5323                            ; $5395: $20 $8C

    ld h, b                                       ; $5397: $60
    sub h                                         ; $5398: $94
    jr nz, jr_026_5327                            ; $5399: $20 $8C

    ld h, b                                       ; $539B: $60
    sub h                                         ; $539C: $94
    jr nz, @-$3D                                  ; $539D: $20 $C1

    call z, $0060                                 ; $539F: $CC $60 $00
    sub h                                         ; $53A2: $94
    ld l, [hl]                                    ; $53A3: $6E
    adc h                                         ; $53A4: $8C
    ld a, [hl]                                    ; $53A5: $7E
    sub h                                         ; $53A6: $94
    ld l, [hl]                                    ; $53A7: $6E
    adc h                                         ; $53A8: $8C
    ld a, [hl]                                    ; $53A9: $7E
    sub h                                         ; $53AA: $94
    ld l, [hl]                                    ; $53AB: $6E
    adc h                                         ; $53AC: $8C
    ld a, [hl]                                    ; $53AD: $7E
    sub h                                         ; $53AE: $94
    ld l, [hl]                                    ; $53AF: $6E
    adc h                                         ; $53B0: $8C
    ld a, [hl]                                    ; $53B1: $7E
    sub h                                         ; $53B2: $94
    ld l, [hl]                                    ; $53B3: $6E
    adc h                                         ; $53B4: $8C
    ld a, [hl]                                    ; $53B5: $7E
    sub h                                         ; $53B6: $94
    ld l, [hl]                                    ; $53B7: $6E
    adc h                                         ; $53B8: $8C
    ld a, [hl]                                    ; $53B9: $7E
    add d                                         ; $53BA: $82
    ld l, [hl]                                    ; $53BB: $6E
    rlca                                          ; $53BC: $07
    pop de                                        ; $53BD: $D1
    push af                                       ; $53BE: $F5
    pop hl                                        ; $53BF: $E1
    db $EC                                        ; $53C0: $EC
    jp hl                                         ; $53C1: $E9


    db $F4                                        ; $53C2: $F4
    ld sp, hl                                     ; $53C3: $F9
    adc e                                         ; $53C4: $8B
    ld l, [hl]                                    ; $53C5: $6E
    adc h                                         ; $53C6: $8C
    ld a, [hl]                                    ; $53C7: $7E
    add d                                         ; $53C8: $82
    ld l, [hl]                                    ; $53C9: $6E
    rlca                                          ; $53CA: $07
    jp $EEEF                                      ; $53CB: $C3 $EF $EE


    db $F4                                        ; $53CE: $F4
    ld a, [c]                                     ; $53CF: $F2
    rst $28                                       ; $53D0: $EF
    db $EC                                        ; $53D1: $EC
    adc e                                         ; $53D2: $8B
    ld l, [hl]                                    ; $53D3: $6E
    adc h                                         ; $53D4: $8C
    ld a, [hl]                                    ; $53D5: $7E
    sub h                                         ; $53D6: $94
    ld l, [hl]                                    ; $53D7: $6E
    adc h                                         ; $53D8: $8C
    ld a, [hl]                                    ; $53D9: $7E
    sub h                                         ; $53DA: $94
    ld l, [hl]                                    ; $53DB: $6E
    adc h                                         ; $53DC: $8C
    ld a, [hl]                                    ; $53DD: $7E
    add l                                         ; $53DE: $85
    ld l, [hl]                                    ; $53DF: $6E
    ld [bc], a                                    ; $53E0: $02
    call $82E1                                    ; $53E1: $CD $E1 $82
    db $F4                                        ; $53E4: $F4
    add hl, bc                                    ; $53E5: $09
    ld l, [hl]                                    ; $53E6: $6E
    ret z                                         ; $53E7: $C8

    rst $28                                       ; $53E8: $EF
    db $EC                                        ; $53E9: $EC
    db $ED                                        ; $53EA: $ED
    ld [c], a                                     ; $53EB: $E2
    push hl                                       ; $53EC: $E5
    ld a, [c]                                     ; $53ED: $F2
    rst $20                                       ; $53EE: $E7
    add d                                         ; $53EF: $82
    ld l, [hl]                                    ; $53F0: $6E
    adc h                                         ; $53F1: $8C
    ld a, [hl]                                    ; $53F2: $7E
    add l                                         ; $53F3: $85
    ld l, [hl]                                    ; $53F4: $6E
    ld a, [bc]                                    ; $53F5: $0A
    jp nz, $E1E5                                  ; $53F6: $C2 $E5 $E1

    push af                                       ; $53F9: $F5
    ld l, [hl]                                    ; $53FA: $6E
    rst $10                                       ; $53FB: $D7
    jp hl                                         ; $53FC: $E9


    xor $E5                                       ; $53FD: $EE $E5
    ld sp, hl                                     ; $53FF: $F9
    add l                                         ; $5400: $85
    ld l, [hl]                                    ; $5401: $6E
    adc h                                         ; $5402: $8C
    ld a, [hl]                                    ; $5403: $7E
    sub h                                         ; $5404: $94
    ld l, [hl]                                    ; $5405: $6E
    adc h                                         ; $5406: $8C
    ld a, [hl]                                    ; $5407: $7E
    sub h                                         ; $5408: $94
    ld l, [hl]                                    ; $5409: $6E
    adc h                                         ; $540A: $8C
    ld a, [hl]                                    ; $540B: $7E
    sub h                                         ; $540C: $94
    ld l, [hl]                                    ; $540D: $6E
    adc h                                         ; $540E: $8C
    ld a, [hl]                                    ; $540F: $7E
    sub h                                         ; $5410: $94
    ld l, [hl]                                    ; $5411: $6E
    adc h                                         ; $5412: $8C
    ld a, [hl]                                    ; $5413: $7E
    sub h                                         ; $5414: $94
    ld l, [hl]                                    ; $5415: $6E
    adc h                                         ; $5416: $8C
    ld a, [hl]                                    ; $5417: $7E
    sub h                                         ; $5418: $94
    ld l, [hl]                                    ; $5419: $6E
    pop bc                                        ; $541A: $C1
    call z, $007E                                 ; $541B: $CC $7E $00
    sub h                                         ; $541E: $94
    nop                                           ; $541F: $00
    adc h                                         ; $5420: $8C
    ld h, b                                       ; $5421: $60
    sub h                                         ; $5422: $94
    nop                                           ; $5423: $00
    adc h                                         ; $5424: $8C
    ld h, b                                       ; $5425: $60
    sub h                                         ; $5426: $94
    nop                                           ; $5427: $00
    adc h                                         ; $5428: $8C
    ld h, b                                       ; $5429: $60
    sub h                                         ; $542A: $94
    nop                                           ; $542B: $00
    adc h                                         ; $542C: $8C
    ld h, b                                       ; $542D: $60
    sub h                                         ; $542E: $94
    nop                                           ; $542F: $00
    adc h                                         ; $5430: $8C
    ld h, b                                       ; $5431: $60
    add d                                         ; $5432: $82
    nop                                           ; $5433: $00
    add l                                         ; $5434: $85
    ld [$0006], sp                                ; $5435: $08 $06 $00
    ld [$0008], sp                                ; $5438: $08 $08 $00
    ld [$8708], sp                                ; $543B: $08 $08 $87
    nop                                           ; $543E: $00
    adc h                                         ; $543F: $8C
    ld h, b                                       ; $5440: $60
    add d                                         ; $5441: $82
    nop                                           ; $5442: $00
    adc b                                         ; $5443: $88
    ld [$0001], sp                                ; $5444: $08 $01 $00
    add l                                         ; $5447: $85
    ld [$2802], sp                                ; $5448: $08 $02 $28
    ld [$0082], sp                                ; $544B: $08 $82 $00
    adc h                                         ; $544E: $8C
    ld h, b                                       ; $544F: $60
    add d                                         ; $5450: $82
    nop                                           ; $5451: $00
    add d                                         ; $5452: $82
    ld [$0090], sp                                ; $5453: $08 $90 $00
    adc h                                         ; $5456: $8C
    ld h, b                                       ; $5457: $60
    sub h                                         ; $5458: $94
    nop                                           ; $5459: $00
    adc h                                         ; $545A: $8C
    ld h, b                                       ; $545B: $60
    sub h                                         ; $545C: $94
    nop                                           ; $545D: $00
    adc h                                         ; $545E: $8C
    ld h, b                                       ; $545F: $60
    add l                                         ; $5460: $85
    nop                                           ; $5461: $00
    add [hl]                                      ; $5462: $86
    ld [$2802], sp                                ; $5463: $08 $02 $28
    nop                                           ; $5466: $00
    add l                                         ; $5467: $85
    ld [$0082], sp                                ; $5468: $08 $82 $00
    adc h                                         ; $546B: $8C
    ld h, b                                       ; $546C: $60
    sub h                                         ; $546D: $94
    nop                                           ; $546E: $00
    adc h                                         ; $546F: $8C
    ld h, b                                       ; $5470: $60
    sub h                                         ; $5471: $94
    nop                                           ; $5472: $00
    adc h                                         ; $5473: $8C
    ld h, b                                       ; $5474: $60
    sub h                                         ; $5475: $94
    nop                                           ; $5476: $00
    adc h                                         ; $5477: $8C
    ld h, b                                       ; $5478: $60
    sub h                                         ; $5479: $94
    nop                                           ; $547A: $00
    adc h                                         ; $547B: $8C
    ld h, b                                       ; $547C: $60
    sub h                                         ; $547D: $94
    nop                                           ; $547E: $00
    adc h                                         ; $547F: $8C
    ld h, b                                       ; $5480: $60
    sub h                                         ; $5481: $94
    nop                                           ; $5482: $00
    adc h                                         ; $5483: $8C
    ld h, b                                       ; $5484: $60
    sub h                                         ; $5485: $94
    nop                                           ; $5486: $00
    pop bc                                        ; $5487: $C1
    call z, $0060                                 ; $5488: $CC $60 $00
    sub h                                         ; $548B: $94
    ld l, [hl]                                    ; $548C: $6E
    adc h                                         ; $548D: $8C
    ld a, [hl]                                    ; $548E: $7E
    sub h                                         ; $548F: $94
    ld l, [hl]                                    ; $5490: $6E
    adc h                                         ; $5491: $8C
    ld a, [hl]                                    ; $5492: $7E
    sub h                                         ; $5493: $94
    ld l, [hl]                                    ; $5494: $6E
    adc h                                         ; $5495: $8C
    ld a, [hl]                                    ; $5496: $7E
    sub h                                         ; $5497: $94
    ld l, [hl]                                    ; $5498: $6E
    adc h                                         ; $5499: $8C
    ld a, [hl]                                    ; $549A: $7E
    sub h                                         ; $549B: $94
    ld l, [hl]                                    ; $549C: $6E
    adc h                                         ; $549D: $8C
    ld a, [hl]                                    ; $549E: $7E
    add d                                         ; $549F: $82
    ld l, [hl]                                    ; $54A0: $6E
    dec bc                                        ; $54A1: $0B
    jp nz, $F3E1                                  ; $54A2: $C2 $E1 $F3

    push hl                                       ; $54A5: $E5
    db $E4                                        ; $54A6: $E4
    ld l, [hl]                                    ; $54A7: $6E
    rst $28                                       ; $54A8: $EF
    xor $6E                                       ; $54A9: $EE $6E
    pop hl                                        ; $54AB: $E1
    xor $87                                       ; $54AC: $EE $87
    ld l, [hl]                                    ; $54AE: $6E
    adc h                                         ; $54AF: $8C
    ld a, [hl]                                    ; $54B0: $7E
    add d                                         ; $54B1: $82
    ld l, [hl]                                    ; $54B2: $6E
    db $10                                        ; $54B3: $10
    rst $08                                       ; $54B4: $CF
    ld a, [c]                                     ; $54B5: $F2
    jp hl                                         ; $54B6: $E9


    rst $20                                       ; $54B7: $E7
    jp hl                                         ; $54B8: $E9


    xor $E1                                       ; $54B9: $EE $E1
    db $EC                                        ; $54BB: $EC
    ld l, [hl]                                    ; $54BC: $6E
    jp $EEEF                                      ; $54BD: $C3 $EF $EE


    db $E3                                        ; $54C0: $E3
    push hl                                       ; $54C1: $E5
    pop af                                        ; $54C2: $F1
    db $F4                                        ; $54C3: $F4
    add d                                         ; $54C4: $82
    ld l, [hl]                                    ; $54C5: $6E
    adc h                                         ; $54C6: $8C
    ld a, [hl]                                    ; $54C7: $7E
    add d                                         ; $54C8: $82
    ld l, [hl]                                    ; $54C9: $6E
    ld [bc], a                                    ; $54CA: $02
    ld [c], a                                     ; $54CB: $E2
    ld sp, hl                                     ; $54CC: $F9
    sub b                                         ; $54CD: $90
    ld l, [hl]                                    ; $54CE: $6E
    adc h                                         ; $54CF: $8C
    ld a, [hl]                                    ; $54D0: $7E
    sub h                                         ; $54D1: $94
    ld l, [hl]                                    ; $54D2: $6E
    adc h                                         ; $54D3: $8C
    ld a, [hl]                                    ; $54D4: $7E
    sub h                                         ; $54D5: $94
    ld l, [hl]                                    ; $54D6: $6E
    adc h                                         ; $54D7: $8C
    ld a, [hl]                                    ; $54D8: $7E
    add l                                         ; $54D9: $85
    ld l, [hl]                                    ; $54DA: $6E
    inc bc                                        ; $54DB: $03
    ret nc                                        ; $54DC: $D0

    add sp, -$17                                  ; $54DD: $E8 $E9
    add d                                         ; $54DF: $82
    db $EC                                        ; $54E0: $EC
    ld [$F1E9], sp                                ; $54E1: $08 $E9 $F1
    ld l, [hl]                                    ; $54E4: $6E
    call nc, $F6E1                                ; $54E5: $D4 $E1 $F6
    push hl                                       ; $54E8: $E5
    db $EC                                        ; $54E9: $EC
    add d                                         ; $54EA: $82
    ld l, [hl]                                    ; $54EB: $6E
    adc h                                         ; $54EC: $8C
    ld a, [hl]                                    ; $54ED: $7E
    sub h                                         ; $54EE: $94
    ld l, [hl]                                    ; $54EF: $6E
    adc h                                         ; $54F0: $8C
    ld a, [hl]                                    ; $54F1: $7E
    sub h                                         ; $54F2: $94
    ld l, [hl]                                    ; $54F3: $6E
    adc h                                         ; $54F4: $8C
    ld a, [hl]                                    ; $54F5: $7E
    sub h                                         ; $54F6: $94
    ld l, [hl]                                    ; $54F7: $6E
    adc h                                         ; $54F8: $8C
    ld a, [hl]                                    ; $54F9: $7E
    sub h                                         ; $54FA: $94
    ld l, [hl]                                    ; $54FB: $6E
    adc h                                         ; $54FC: $8C
    ld a, [hl]                                    ; $54FD: $7E
    sub h                                         ; $54FE: $94
    ld l, [hl]                                    ; $54FF: $6E
    adc h                                         ; $5500: $8C
    ld a, [hl]                                    ; $5501: $7E
    sub h                                         ; $5502: $94
    ld l, [hl]                                    ; $5503: $6E
    adc h                                         ; $5504: $8C
    ld a, [hl]                                    ; $5505: $7E
    sub h                                         ; $5506: $94
    ld l, [hl]                                    ; $5507: $6E
    pop bc                                        ; $5508: $C1
    call z, $007E                                 ; $5509: $CC $7E $00
    sub h                                         ; $550C: $94
    nop                                           ; $550D: $00
    adc h                                         ; $550E: $8C
    ld b, b                                       ; $550F: $40
    sub h                                         ; $5510: $94
    nop                                           ; $5511: $00
    adc h                                         ; $5512: $8C
    ld b, b                                       ; $5513: $40
    sub h                                         ; $5514: $94
    nop                                           ; $5515: $00
    adc h                                         ; $5516: $8C
    ld b, b                                       ; $5517: $40
    sub h                                         ; $5518: $94
    nop                                           ; $5519: $00
    adc h                                         ; $551A: $8C
    ld b, b                                       ; $551B: $40
    sub h                                         ; $551C: $94
    nop                                           ; $551D: $00
    adc h                                         ; $551E: $8C
    ld b, b                                       ; $551F: $40
    sub h                                         ; $5520: $94
    nop                                           ; $5521: $00
    adc h                                         ; $5522: $8C
    ld b, b                                       ; $5523: $40
    add d                                         ; $5524: $82
    nop                                           ; $5525: $00
    adc c                                         ; $5526: $89
    ld [$0089], sp                                ; $5527: $08 $89 $00
    adc h                                         ; $552A: $8C
    ld b, b                                       ; $552B: $40
    add d                                         ; $552C: $82
    nop                                           ; $552D: $00
    adc c                                         ; $552E: $89
    ld [$0089], sp                                ; $552F: $08 $89 $00
    adc h                                         ; $5532: $8C
    ld b, b                                       ; $5533: $40
    sub h                                         ; $5534: $94
    nop                                           ; $5535: $00
    adc h                                         ; $5536: $8C
    ld b, b                                       ; $5537: $40
    sub h                                         ; $5538: $94
    nop                                           ; $5539: $00
    adc h                                         ; $553A: $8C
    ld b, b                                       ; $553B: $40
    add e                                         ; $553C: $83
    nop                                           ; $553D: $00
    add a                                         ; $553E: $87
    ld [$0001], sp                                ; $553F: $08 $01 $00
    add l                                         ; $5542: $85
    ld [$0084], sp                                ; $5543: $08 $84 $00
    adc h                                         ; $5546: $8C
    ld b, b                                       ; $5547: $40
    add e                                         ; $5548: $83
    nop                                           ; $5549: $00
    add h                                         ; $554A: $84
    ld [$0001], sp                                ; $554B: $08 $01 $00
    adc d                                         ; $554E: $8A
    ld [$0082], sp                                ; $554F: $08 $82 $00
    adc h                                         ; $5552: $8C
    ld b, b                                       ; $5553: $40
    adc h                                         ; $5554: $8C
    nop                                           ; $5555: $00
    add e                                         ; $5556: $83
    ld [$0001], sp                                ; $5557: $08 $01 $00
    add d                                         ; $555A: $82
    ld [$0082], sp                                ; $555B: $08 $82 $00
    adc h                                         ; $555E: $8C
    ld b, b                                       ; $555F: $40
    sub h                                         ; $5560: $94
    nop                                           ; $5561: $00
    adc h                                         ; $5562: $8C
    ld b, b                                       ; $5563: $40
    sub h                                         ; $5564: $94
    nop                                           ; $5565: $00
    adc h                                         ; $5566: $8C
    ld b, b                                       ; $5567: $40
    sub h                                         ; $5568: $94
    nop                                           ; $5569: $00
    adc h                                         ; $556A: $8C
    ld b, b                                       ; $556B: $40
    sub h                                         ; $556C: $94
    nop                                           ; $556D: $00
    adc h                                         ; $556E: $8C
    ld b, b                                       ; $556F: $40
    sub h                                         ; $5570: $94
    nop                                           ; $5571: $00
    pop bc                                        ; $5572: $C1
    call z, $0040                                 ; $5573: $CC $40 $00
    sub h                                         ; $5576: $94
    ld l, [hl]                                    ; $5577: $6E
    adc h                                         ; $5578: $8C
    ld a, [hl]                                    ; $5579: $7E
    sub h                                         ; $557A: $94
    ld l, [hl]                                    ; $557B: $6E
    adc h                                         ; $557C: $8C
    ld a, [hl]                                    ; $557D: $7E
    sub h                                         ; $557E: $94
    ld l, [hl]                                    ; $557F: $6E
    adc h                                         ; $5580: $8C
    ld a, [hl]                                    ; $5581: $7E
    sub h                                         ; $5582: $94
    ld l, [hl]                                    ; $5583: $6E
    adc h                                         ; $5584: $8C
    ld a, [hl]                                    ; $5585: $7E
    sub h                                         ; $5586: $94
    ld l, [hl]                                    ; $5587: $6E
    adc h                                         ; $5588: $8C
    ld a, [hl]                                    ; $5589: $7E
    sub h                                         ; $558A: $94
    ld l, [hl]                                    ; $558B: $6E
    adc h                                         ; $558C: $8C
    ld a, [hl]                                    ; $558D: $7E
    add d                                         ; $558E: $82
    ld l, [hl]                                    ; $558F: $6E
    add hl, bc                                    ; $5590: $09
    push bc                                       ; $5591: $C5
    ld hl, sp-$1B                                 ; $5592: $F8 $E5
    db $E3                                        ; $5594: $E3
    push af                                       ; $5595: $F5
    db $F4                                        ; $5596: $F4
    jp hl                                         ; $5597: $E9


    or $E5                                        ; $5598: $F6 $E5
    adc c                                         ; $559A: $89
    ld l, [hl]                                    ; $559B: $6E
    adc h                                         ; $559C: $8C
    ld a, [hl]                                    ; $559D: $7E
    add d                                         ; $559E: $82
    ld l, [hl]                                    ; $559F: $6E
    add hl, bc                                    ; $55A0: $09
    ret nc                                        ; $55A1: $D0

    ld a, [c]                                     ; $55A2: $F2
    rst $28                                       ; $55A3: $EF
    db $E4                                        ; $55A4: $E4
    push af                                       ; $55A5: $F5
    db $E3                                        ; $55A6: $E3
    push hl                                       ; $55A7: $E5
    ld a, [c]                                     ; $55A8: $F2
    di                                            ; $55A9: $F3
    adc c                                         ; $55AA: $89
    ld l, [hl]                                    ; $55AB: $6E
    adc h                                         ; $55AC: $8C
    ld a, [hl]                                    ; $55AD: $7E
    sub h                                         ; $55AE: $94
    ld l, [hl]                                    ; $55AF: $6E
    adc h                                         ; $55B0: $8C
    ld a, [hl]                                    ; $55B1: $7E
    sub h                                         ; $55B2: $94
    ld l, [hl]                                    ; $55B3: $6E
    adc h                                         ; $55B4: $8C
    ld a, [hl]                                    ; $55B5: $7E
    add e                                         ; $55B6: $83
    ld l, [hl]                                    ; $55B7: $6E
    inc bc                                        ; $55B8: $03
    ret nc                                        ; $55B9: $D0

    add sp, -$17                                  ; $55BA: $E8 $E9
    add d                                         ; $55BC: $82
    db $EC                                        ; $55BD: $EC
    ld [$F0E9], sp                                ; $55BE: $08 $E9 $F0
    ld l, [hl]                                    ; $55C1: $6E
    call nc, $F6E1                                ; $55C2: $D4 $E1 $F6
    push hl                                       ; $55C5: $E5
    db $EC                                        ; $55C6: $EC
    add h                                         ; $55C7: $84
    ld l, [hl]                                    ; $55C8: $6E
    adc h                                         ; $55C9: $8C
    ld a, [hl]                                    ; $55CA: $7E
    add e                                         ; $55CB: $83
    ld l, [hl]                                    ; $55CC: $6E
    rrca                                          ; $55CD: $0F
    rst $00                                       ; $55CE: $C7
    ld a, [c]                                     ; $55CF: $F2
    push hl                                       ; $55D0: $E5
    rst $20                                       ; $55D1: $E7
    ld l, [hl]                                    ; $55D2: $6E
    jp nc, $E3E9                                  ; $55D3: $D2 $E9 $E3

    add sp, -$1F                                  ; $55D6: $E8 $E1
    ld a, [c]                                     ; $55D8: $F2
    db $E4                                        ; $55D9: $E4
    di                                            ; $55DA: $F3
    rst $28                                       ; $55DB: $EF
    xor $82                                       ; $55DC: $EE $82
    ld l, [hl]                                    ; $55DE: $6E
    adc h                                         ; $55DF: $8C
    ld a, [hl]                                    ; $55E0: $7E
    adc h                                         ; $55E1: $8C
    ld l, [hl]                                    ; $55E2: $6E
    ld b, $F6                                     ; $55E3: $06 $F6
    rst $28                                       ; $55E5: $EF
    xor $6E                                       ; $55E6: $EE $6E
    rst $08                                       ; $55E8: $CF
    ld sp, hl                                     ; $55E9: $F9
    add d                                         ; $55EA: $82
    ld l, [hl]                                    ; $55EB: $6E
    adc h                                         ; $55EC: $8C
    ld a, [hl]                                    ; $55ED: $7E
    sub h                                         ; $55EE: $94
    ld l, [hl]                                    ; $55EF: $6E
    adc h                                         ; $55F0: $8C
    ld a, [hl]                                    ; $55F1: $7E
    sub h                                         ; $55F2: $94
    ld l, [hl]                                    ; $55F3: $6E
    adc h                                         ; $55F4: $8C
    ld a, [hl]                                    ; $55F5: $7E
    sub h                                         ; $55F6: $94
    ld l, [hl]                                    ; $55F7: $6E
    adc h                                         ; $55F8: $8C
    ld a, [hl]                                    ; $55F9: $7E
    sub h                                         ; $55FA: $94
    ld l, [hl]                                    ; $55FB: $6E
    adc h                                         ; $55FC: $8C
    ld a, [hl]                                    ; $55FD: $7E
    sub h                                         ; $55FE: $94
    ld l, [hl]                                    ; $55FF: $6E
    pop bc                                        ; $5600: $C1
    call z, $007E                                 ; $5601: $CC $7E $00
    sub h                                         ; $5604: $94
    nop                                           ; $5605: $00
    adc h                                         ; $5606: $8C
    ld h, b                                       ; $5607: $60
    sub h                                         ; $5608: $94
    nop                                           ; $5609: $00
    adc h                                         ; $560A: $8C
    ld h, b                                       ; $560B: $60
    sub h                                         ; $560C: $94
    nop                                           ; $560D: $00
    adc h                                         ; $560E: $8C
    ld h, b                                       ; $560F: $60
    sub h                                         ; $5610: $94
    nop                                           ; $5611: $00
    adc h                                         ; $5612: $8C
    ld h, b                                       ; $5613: $60
    sub h                                         ; $5614: $94
    nop                                           ; $5615: $00
    adc h                                         ; $5616: $8C
    ld h, b                                       ; $5617: $60
    sub h                                         ; $5618: $94
    nop                                           ; $5619: $00
    adc h                                         ; $561A: $8C
    ld h, b                                       ; $561B: $60
    add d                                         ; $561C: $82
    nop                                           ; $561D: $00
    ld [bc], a                                    ; $561E: $02
    ld [$8528], sp                                ; $561F: $08 $28 $85
    ld [$008B], sp                                ; $5622: $08 $8B $00
    adc h                                         ; $5625: $8C
    ld h, b                                       ; $5626: $60
    add d                                         ; $5627: $82
    nop                                           ; $5628: $00
    add [hl]                                      ; $5629: $86
    ld [$0001], sp                                ; $562A: $08 $01 $00
    add d                                         ; $562D: $82
    ld [$0089], sp                                ; $562E: $08 $89 $00
    adc h                                         ; $5631: $8C
    ld h, b                                       ; $5632: $60
    sub h                                         ; $5633: $94
    nop                                           ; $5634: $00
    adc h                                         ; $5635: $8C
    ld h, b                                       ; $5636: $60
    sub h                                         ; $5637: $94
    nop                                           ; $5638: $00
    adc h                                         ; $5639: $8C
    ld h, b                                       ; $563A: $60
    add d                                         ; $563B: $82
    nop                                           ; $563C: $00
    adc c                                         ; $563D: $89
    ld [$0001], sp                                ; $563E: $08 $01 $00
    add [hl]                                      ; $5641: $86
    ld [$0082], sp                                ; $5642: $08 $82 $00
    adc h                                         ; $5645: $8C
    ld h, b                                       ; $5646: $60
    add d                                         ; $5647: $82
    nop                                           ; $5648: $00
    add e                                         ; $5649: $83
    ld [$008F], sp                                ; $564A: $08 $8F $00
    adc h                                         ; $564D: $8C
    ld h, b                                       ; $564E: $60
    add d                                         ; $564F: $82
    nop                                           ; $5650: $00
    add e                                         ; $5651: $83
    ld [$0001], sp                                ; $5652: $08 $01 $00
    add a                                         ; $5655: $87
    ld [$0087], sp                                ; $5656: $08 $87 $00
    adc h                                         ; $5659: $8C
    ld h, b                                       ; $565A: $60
    add d                                         ; $565B: $82
    nop                                           ; $565C: $00
    adc c                                         ; $565D: $89
    ld [$0001], sp                                ; $565E: $08 $01 $00
    add d                                         ; $5661: $82
    ld [$0086], sp                                ; $5662: $08 $86 $00
    adc h                                         ; $5665: $8C

Jump_026_5666:
    ld h, b                                       ; $5666: $60
    add d                                         ; $5667: $82
    nop                                           ; $5668: $00
    adc d                                         ; $5669: $8A
    ld [$0088], sp                                ; $566A: $08 $88 $00
    adc h                                         ; $566D: $8C
    ld h, b                                       ; $566E: $60
    sub h                                         ; $566F: $94
    nop                                           ; $5670: $00
    adc h                                         ; $5671: $8C
    ld h, b                                       ; $5672: $60
    sub h                                         ; $5673: $94
    nop                                           ; $5674: $00
    adc h                                         ; $5675: $8C
    ld h, b                                       ; $5676: $60
    sub h                                         ; $5677: $94
    nop                                           ; $5678: $00
    pop bc                                        ; $5679: $C1
    call z, $0060                                 ; $567A: $CC $60 $00
    sub h                                         ; $567D: $94
    ld l, [hl]                                    ; $567E: $6E
    adc h                                         ; $567F: $8C
    ld a, [hl]                                    ; $5680: $7E
    sub h                                         ; $5681: $94
    ld l, [hl]                                    ; $5682: $6E
    adc h                                         ; $5683: $8C
    ld a, [hl]                                    ; $5684: $7E
    sub h                                         ; $5685: $94
    ld l, [hl]                                    ; $5686: $6E
    adc h                                         ; $5687: $8C
    ld a, [hl]                                    ; $5688: $7E
    sub h                                         ; $5689: $94
    ld l, [hl]                                    ; $568A: $6E
    adc h                                         ; $568B: $8C
    ld a, [hl]                                    ; $568C: $7E
    sub h                                         ; $568D: $94
    ld l, [hl]                                    ; $568E: $6E
    adc h                                         ; $568F: $8C
    ld a, [hl]                                    ; $5690: $7E
    sub h                                         ; $5691: $94
    ld l, [hl]                                    ; $5692: $6E
    adc h                                         ; $5693: $8C
    ld a, [hl]                                    ; $5694: $7E
    add d                                         ; $5695: $82
    ld l, [hl]                                    ; $5696: $6E
    rlca                                          ; $5697: $07
    db $D3                                        ; $5698: $D3
    pop af                                        ; $5699: $F1
    push hl                                       ; $569A: $E5
    db $E3                                        ; $569B: $E3
    jp hl                                         ; $569C: $E9


    pop hl                                        ; $569D: $E1
    db $EC                                        ; $569E: $EC
    adc e                                         ; $569F: $8B
    ld l, [hl]                                    ; $56A0: $6E
    adc h                                         ; $56A1: $8C
    ld a, [hl]                                    ; $56A2: $7E
    add d                                         ; $56A3: $82
    ld l, [hl]                                    ; $56A4: $6E
    add hl, bc                                    ; $56A5: $09
    call nc, $E1E8                                ; $56A6: $D4 $E8 $E1
    xor $EB                                       ; $56A9: $EE $EB
    di                                            ; $56AB: $F3
    ld l, [hl]                                    ; $56AC: $6E
    db $F4                                        ; $56AD: $F4
    rst $28                                       ; $56AE: $EF

jr_026_56AF:
    adc c                                         ; $56AF: $89
    ld l, [hl]                                    ; $56B0: $6E
    adc h                                         ; $56B1: $8C
    ld a, [hl]                                    ; $56B2: $7E

jr_026_56B3:
    sub h                                         ; $56B3: $94
    ld l, [hl]                                    ; $56B4: $6E
    adc h                                         ; $56B5: $8C
    ld a, [hl]                                    ; $56B6: $7E

jr_026_56B7:
    sub h                                         ; $56B7: $94
    ld l, [hl]                                    ; $56B8: $6E
    adc h                                         ; $56B9: $8C
    ld a, [hl]                                    ; $56BA: $7E

jr_026_56BB:
    add d                                         ; $56BB: $82
    ld l, [hl]                                    ; $56BC: $6E
    db $10                                        ; $56BD: $10
    call nz, $AEF2                                ; $56BE: $C4 $F2 $AE
    jp $E1EC                                      ; $56C1: $C3 $EC $E1


    push af                                       ; $56C4: $F5
    db $E4                                        ; $56C5: $E4
    push hl                                       ; $56C6: $E5
    ld l, [hl]                                    ; $56C7: $6E
    jp $EDEF                                      ; $56C8: $C3 $EF $ED


    pop hl                                        ; $56CB: $E1
    jp hl                                         ; $56CC: $E9


    ld a, [c]                                     ; $56CD: $F2
    add d                                         ; $56CE: $82
    ld l, [hl]                                    ; $56CF: $6E
    adc h                                         ; $56D0: $8C
    ld a, [hl]                                    ; $56D1: $7E
    add d                                         ; $56D2: $82
    ld l, [hl]                                    ; $56D3: $6E
    inc bc                                        ; $56D4: $03
    pop hl                                        ; $56D5: $E1
    xor $E4                                       ; $56D6: $EE $E4
    adc a                                         ; $56D8: $8F
    ld l, [hl]                                    ; $56D9: $6E

jr_026_56DA:
    adc h                                         ; $56DA: $8C

jr_026_56DB:
    ld a, [hl]                                    ; $56DB: $7E
    add d                                         ; $56DC: $82
    ld l, [hl]                                    ; $56DD: $6E
    dec bc                                        ; $56DE: $0B

jr_026_56DF:
    call nc, $E5E8                                ; $56DF: $D4 $E8 $E5

jr_026_56E2:
    ld l, [hl]                                    ; $56E2: $6E
    call nz, $E7E9                                ; $56E3: $C4 $E9 $E7
    jp hl                                         ; $56E6: $E9


    ret nc                                        ; $56E7: $D0

    push hl                                       ; $56E8: $E5
    xor $87                                       ; $56E9: $EE $87
    ld l, [hl]                                    ; $56EB: $6E
    adc h                                         ; $56EC: $8C

jr_026_56ED:
    ld a, [hl]                                    ; $56ED: $7E
    add d                                         ; $56EE: $82
    ld l, [hl]                                    ; $56EF: $6E
    inc c                                         ; $56F0: $0C
    ret                                           ; $56F1: $C9


    xor $F3                                       ; $56F2: $EE $F3
    db $F4                                        ; $56F4: $F4
    jp hl                                         ; $56F5: $E9


    db $F4                                        ; $56F6: $F4
    push af                                       ; $56F7: $F5
    db $F4                                        ; $56F8: $F4
    push hl                                       ; $56F9: $E5
    ld l, [hl]                                    ; $56FA: $6E
    rst $28                                       ; $56FB: $EF
    and $86                                       ; $56FC: $E6 $86
    ld l, [hl]                                    ; $56FE: $6E
    adc h                                         ; $56FF: $8C
    ld a, [hl]                                    ; $5700: $7E
    add d                                         ; $5701: $82
    ld l, [hl]                                    ; $5702: $6E

jr_026_5703:
    ld a, [bc]                                    ; $5703: $0A
    call nc, $E3E5                                ; $5704: $D4 $E5 $E3

jr_026_5707:
    add sp, -$12                                  ; $5707: $E8 $EE
    rst $28                                       ; $5709: $EF
    db $EC                                        ; $570A: $EC

jr_026_570B:
    rst $28                                       ; $570B: $EF
    rst $20                                       ; $570C: $E7
    ld sp, hl                                     ; $570D: $F9
    adc b                                         ; $570E: $88

jr_026_570F:
    ld l, [hl]                                    ; $570F: $6E
    adc h                                         ; $5710: $8C
    ld a, [hl]                                    ; $5711: $7E
    sub h                                         ; $5712: $94
    ld l, [hl]                                    ; $5713: $6E
    adc h                                         ; $5714: $8C
    ld a, [hl]                                    ; $5715: $7E
    sub h                                         ; $5716: $94
    ld l, [hl]                                    ; $5717: $6E
    adc h                                         ; $5718: $8C
    ld a, [hl]                                    ; $5719: $7E
    sub h                                         ; $571A: $94
    ld l, [hl]                                    ; $571B: $6E
    pop bc                                        ; $571C: $C1
    call z, $007E                                 ; $571D: $CC $7E $00
    sub h                                         ; $5720: $94
    jr nz, jr_026_56AF                            ; $5721: $20 $8C

    ld h, b                                       ; $5723: $60
    sub h                                         ; $5724: $94
    jr nz, jr_026_56B3                            ; $5725: $20 $8C

    ld h, b                                       ; $5727: $60
    sub h                                         ; $5728: $94
    jr nz, jr_026_56B7                            ; $5729: $20 $8C

    ld h, b                                       ; $572B: $60
    sub h                                         ; $572C: $94
    jr nz, jr_026_56BB                            ; $572D: $20 $8C

    ld h, b                                       ; $572F: $60
    sub h                                         ; $5730: $94
    jr nz, @-$72                                  ; $5731: $20 $8C

    ld h, b                                       ; $5733: $60
    sub h                                         ; $5734: $94
    jr nz, @-$72                                  ; $5735: $20 $8C

    ld h, b                                       ; $5737: $60
    add d                                         ; $5738: $82
    jr nz, @-$77                                  ; $5739: $20 $87

    ld [$208B], sp                                ; $573B: $08 $8B $20
    adc h                                         ; $573E: $8C
    ld h, b                                       ; $573F: $60
    add d                                         ; $5740: $82
    jr nz, @-$78                                  ; $5741: $20 $86

    ld [$2001], sp                                ; $5743: $08 $01 $20
    add d                                         ; $5746: $82
    ld [$2089], sp                                ; $5747: $08 $89 $20
    adc h                                         ; $574A: $8C
    ld h, b                                       ; $574B: $60
    sub h                                         ; $574C: $94
    jr nz, jr_026_56DB                            ; $574D: $20 $8C

    ld h, b                                       ; $574F: $60
    sub h                                         ; $5750: $94
    jr nz, jr_026_56DF                            ; $5751: $20 $8C

    ld h, b                                       ; $5753: $60
    add l                                         ; $5754: $85
    jr nz, jr_026_56DA                            ; $5755: $20 $83

    ld [$208C], sp                                ; $5757: $08 $8C $20
    adc h                                         ; $575A: $8C
    ld h, b                                       ; $575B: $60
    add l                                         ; $575C: $85
    jr nz, jr_026_56E2                            ; $575D: $20 $83

    ld [$2001], sp                                ; $575F: $08 $01 $20
    adc c                                         ; $5762: $89
    ld [$2082], sp                                ; $5763: $08 $82 $20
    adc h                                         ; $5766: $8C
    ld h, b                                       ; $5767: $60
    add l                                         ; $5768: $85
    jr nz, jr_026_56ED                            ; $5769: $20 $82

    ld [$2001], sp                                ; $576B: $08 $01 $20
    add a                                         ; $576E: $87
    ld [$2085], sp                                ; $576F: $08 $85 $20
    adc h                                         ; $5772: $8C
    ld h, b                                       ; $5773: $60
    sub h                                         ; $5774: $94
    jr nz, jr_026_5703                            ; $5775: $20 $8C

    ld h, b                                       ; $5777: $60
    sub h                                         ; $5778: $94
    jr nz, jr_026_5707                            ; $5779: $20 $8C

    ld h, b                                       ; $577B: $60
    sub h                                         ; $577C: $94
    jr nz, jr_026_570B                            ; $577D: $20 $8C

    ld h, b                                       ; $577F: $60
    sub h                                         ; $5780: $94
    jr nz, jr_026_570F                            ; $5781: $20 $8C

    ld h, b                                       ; $5783: $60
    sub h                                         ; $5784: $94
    jr nz, @-$3D                                  ; $5785: $20 $C1

    call z, $0060                                 ; $5787: $CC $60 $00
    sub h                                         ; $578A: $94
    ld l, [hl]                                    ; $578B: $6E
    adc h                                         ; $578C: $8C
    ld a, [hl]                                    ; $578D: $7E
    sub h                                         ; $578E: $94
    ld l, [hl]                                    ; $578F: $6E
    adc h                                         ; $5790: $8C
    ld a, [hl]                                    ; $5791: $7E
    sub h                                         ; $5792: $94
    ld l, [hl]                                    ; $5793: $6E
    adc h                                         ; $5794: $8C
    ld a, [hl]                                    ; $5795: $7E
    sub h                                         ; $5796: $94
    ld l, [hl]                                    ; $5797: $6E
    adc h                                         ; $5798: $8C
    ld a, [hl]                                    ; $5799: $7E
    sub h                                         ; $579A: $94
    ld l, [hl]                                    ; $579B: $6E
    adc h                                         ; $579C: $8C

jr_026_579D:
    ld a, [hl]                                    ; $579D: $7E
    sub h                                         ; $579E: $94
    ld l, [hl]                                    ; $579F: $6E
    adc h                                         ; $57A0: $8C

jr_026_57A1:
    ld a, [hl]                                    ; $57A1: $7E
    add d                                         ; $57A2: $82
    ld l, [hl]                                    ; $57A3: $6E
    rlca                                          ; $57A4: $07

jr_026_57A5:
    db $D3                                        ; $57A5: $D3
    ldh a, [$E5]                                  ; $57A6: $F0 $E5
    db $E3                                        ; $57A8: $E3

jr_026_57A9:
    jp hl                                         ; $57A9: $E9


    pop hl                                        ; $57AA: $E1
    db $EC                                        ; $57AB: $EC
    adc e                                         ; $57AC: $8B

jr_026_57AD:
    ld l, [hl]                                    ; $57AD: $6E
    adc h                                         ; $57AE: $8C
    ld a, [hl]                                    ; $57AF: $7E
    add d                                         ; $57B0: $82

jr_026_57B1:
    ld l, [hl]                                    ; $57B1: $6E
    add hl, bc                                    ; $57B2: $09
    call nc, $E1E8                                ; $57B3: $D4 $E8 $E1
    xor $EB                                       ; $57B6: $EE $EB
    di                                            ; $57B8: $F3
    ld l, [hl]                                    ; $57B9: $6E

jr_026_57BA:
    db $F4                                        ; $57BA: $F4
    rst $28                                       ; $57BB: $EF
    adc c                                         ; $57BC: $89
    ld l, [hl]                                    ; $57BD: $6E
    adc h                                         ; $57BE: $8C
    ld a, [hl]                                    ; $57BF: $7E
    sub h                                         ; $57C0: $94
    ld l, [hl]                                    ; $57C1: $6E
    adc h                                         ; $57C2: $8C
    ld a, [hl]                                    ; $57C3: $7E
    sub h                                         ; $57C4: $94
    ld l, [hl]                                    ; $57C5: $6E
    adc h                                         ; $57C6: $8C
    ld a, [hl]                                    ; $57C7: $7E
    add l                                         ; $57C8: $85
    ld l, [hl]                                    ; $57C9: $6E
    inc bc                                        ; $57CA: $03

jr_026_57CB:
    call nc, $E5E8                                ; $57CB: $D4 $E8 $E5
    adc h                                         ; $57CE: $8C
    ld l, [hl]                                    ; $57CF: $6E

jr_026_57D0:
    adc h                                         ; $57D0: $8C
    ld a, [hl]                                    ; $57D1: $7E
    add l                                         ; $57D2: $85
    ld l, [hl]                                    ; $57D3: $6E
    dec c                                         ; $57D4: $0D
    pop bc                                        ; $57D5: $C1
    ld a, [c]                                     ; $57D6: $F2
    db $F4                                        ; $57D7: $F4
    ld l, [hl]                                    ; $57D8: $6E
    ret                                           ; $57D9: $C9


    xor $F3                                       ; $57DA: $EE $F3
    db $F4                                        ; $57DC: $F4
    jp hl                                         ; $57DD: $E9


    db $F4                                        ; $57DE: $F4
    push af                                       ; $57DF: $F5

jr_026_57E0:
    db $F4                                        ; $57E0: $F4
    push hl                                       ; $57E1: $E5
    add d                                         ; $57E2: $82
    ld l, [hl]                                    ; $57E3: $6E

jr_026_57E4:
    adc h                                         ; $57E4: $8C
    ld a, [hl]                                    ; $57E5: $7E
    add l                                         ; $57E6: $85
    ld l, [hl]                                    ; $57E7: $6E

jr_026_57E8:
    ld b, $EF                                     ; $57E8: $06 $EF
    and $6E                                       ; $57EA: $E6 $6E

jr_026_57EC:
    db $D3                                        ; $57EC: $D3
    push hl                                       ; $57ED: $E5
    pop hl                                        ; $57EE: $E1
    add d                                         ; $57EF: $82

jr_026_57F0:
    db $F4                                        ; $57F0: $F4
    ld [bc], a                                    ; $57F1: $02
    db $EC                                        ; $57F2: $EC
    push hl                                       ; $57F3: $E5

jr_026_57F4:
    add l                                         ; $57F4: $85
    ld l, [hl]                                    ; $57F5: $6E
    adc h                                         ; $57F6: $8C
    ld a, [hl]                                    ; $57F7: $7E
    sub h                                         ; $57F8: $94
    ld l, [hl]                                    ; $57F9: $6E
    adc h                                         ; $57FA: $8C
    ld a, [hl]                                    ; $57FB: $7E
    sub h                                         ; $57FC: $94
    ld l, [hl]                                    ; $57FD: $6E
    adc h                                         ; $57FE: $8C
    ld a, [hl]                                    ; $57FF: $7E
    sub h                                         ; $5800: $94
    ld l, [hl]                                    ; $5801: $6E
    adc h                                         ; $5802: $8C
    ld a, [hl]                                    ; $5803: $7E
    sub h                                         ; $5804: $94
    ld l, [hl]                                    ; $5805: $6E
    adc h                                         ; $5806: $8C
    ld a, [hl]                                    ; $5807: $7E
    sub h                                         ; $5808: $94
    ld l, [hl]                                    ; $5809: $6E
    pop bc                                        ; $580A: $C1
    call z, $007E                                 ; $580B: $CC $7E $00
    sub h                                         ; $580E: $94
    jr nz, jr_026_579D                            ; $580F: $20 $8C

    nop                                           ; $5811: $00
    sub h                                         ; $5812: $94
    jr nz, jr_026_57A1                            ; $5813: $20 $8C

    nop                                           ; $5815: $00
    sub h                                         ; $5816: $94
    jr nz, jr_026_57A5                            ; $5817: $20 $8C

    nop                                           ; $5819: $00
    sub h                                         ; $581A: $94
    jr nz, jr_026_57A9                            ; $581B: $20 $8C

    nop                                           ; $581D: $00
    sub h                                         ; $581E: $94
    jr nz, jr_026_57AD                            ; $581F: $20 $8C

    nop                                           ; $5821: $00
    sub h                                         ; $5822: $94
    jr nz, jr_026_57B1                            ; $5823: $20 $8C

    nop                                           ; $5825: $00
    add d                                         ; $5826: $82
    jr nz, @+$04                                  ; $5827: $20 $02

    ld [$8528], sp                                ; $5829: $08 $28 $85
    ld [$208B], sp                                ; $582C: $08 $8B $20
    adc h                                         ; $582F: $8C
    nop                                           ; $5830: $00
    add d                                         ; $5831: $82
    jr nz, jr_026_57BA                            ; $5832: $20 $86

    ld [$2001], sp                                ; $5834: $08 $01 $20
    add d                                         ; $5837: $82
    ld [$2089], sp                                ; $5838: $08 $89 $20
    adc h                                         ; $583B: $8C
    nop                                           ; $583C: $00
    sub h                                         ; $583D: $94
    jr nz, @-$72                                  ; $583E: $20 $8C

    nop                                           ; $5840: $00
    sub h                                         ; $5841: $94
    jr nz, jr_026_57D0                            ; $5842: $20 $8C

    nop                                           ; $5844: $00
    add a                                         ; $5845: $87
    jr nz, jr_026_57CB                            ; $5846: $20 $83

    ld [$2001], sp                                ; $5848: $08 $01 $20
    add a                                         ; $584B: $87
    ld [$2082], sp                                ; $584C: $08 $82 $20
    adc h                                         ; $584F: $8C
    nop                                           ; $5850: $00
    sub h                                         ; $5851: $94

Jump_026_5852:
    jr nz, jr_026_57E0                            ; $5852: $20 $8C

    nop                                           ; $5854: $00
    sub h                                         ; $5855: $94
    jr nz, jr_026_57E4                            ; $5856: $20 $8C

    nop                                           ; $5858: $00
    sub h                                         ; $5859: $94
    jr nz, jr_026_57E8                            ; $585A: $20 $8C

    nop                                           ; $585C: $00
    sub h                                         ; $585D: $94
    jr nz, jr_026_57EC                            ; $585E: $20 $8C

    nop                                           ; $5860: $00
    sub h                                         ; $5861: $94
    jr nz, jr_026_57F0                            ; $5862: $20 $8C

    nop                                           ; $5864: $00
    sub h                                         ; $5865: $94
    jr nz, jr_026_57F4                            ; $5866: $20 $8C

    nop                                           ; $5868: $00
    sub h                                         ; $5869: $94
    jr nz, @-$3D                                  ; $586A: $20 $C1

    call z, RST_00                                ; $586C: $CC $00 $00
    sub h                                         ; $586F: $94
    ld l, [hl]                                    ; $5870: $6E
    adc h                                         ; $5871: $8C
    ld a, [hl]                                    ; $5872: $7E
    sub h                                         ; $5873: $94
    ld l, [hl]                                    ; $5874: $6E
    adc h                                         ; $5875: $8C
    ld a, [hl]                                    ; $5876: $7E
    sub h                                         ; $5877: $94
    ld l, [hl]                                    ; $5878: $6E
    adc h                                         ; $5879: $8C
    ld a, [hl]                                    ; $587A: $7E
    sub h                                         ; $587B: $94
    ld l, [hl]                                    ; $587C: $6E
    adc h                                         ; $587D: $8C
    ld a, [hl]                                    ; $587E: $7E
    sub h                                         ; $587F: $94
    ld l, [hl]                                    ; $5880: $6E
    adc h                                         ; $5881: $8C
    ld a, [hl]                                    ; $5882: $7E
    sub h                                         ; $5883: $94
    ld l, [hl]                                    ; $5884: $6E
    adc h                                         ; $5885: $8C
    ld a, [hl]                                    ; $5886: $7E
    add d                                         ; $5887: $82
    ld l, [hl]                                    ; $5888: $6E
    rlca                                          ; $5889: $07
    db $D3                                        ; $588A: $D3
    pop af                                        ; $588B: $F1
    push hl                                       ; $588C: $E5
    db $E3                                        ; $588D: $E3
    jp hl                                         ; $588E: $E9


    pop hl                                        ; $588F: $E1
    db $EC                                        ; $5890: $EC
    adc e                                         ; $5891: $8B
    ld l, [hl]                                    ; $5892: $6E
    adc h                                         ; $5893: $8C
    ld a, [hl]                                    ; $5894: $7E
    add d                                         ; $5895: $82
    ld l, [hl]                                    ; $5896: $6E
    add hl, bc                                    ; $5897: $09
    call nc, $E1E8                                ; $5898: $D4 $E8 $E1
    xor $EB                                       ; $589B: $EE $EB
    di                                            ; $589D: $F3
    ld l, [hl]                                    ; $589E: $6E
    db $F4                                        ; $589F: $F4
    rst $28                                       ; $58A0: $EF
    adc c                                         ; $58A1: $89
    ld l, [hl]                                    ; $58A2: $6E
    adc h                                         ; $58A3: $8C
    ld a, [hl]                                    ; $58A4: $7E
    sub h                                         ; $58A5: $94
    ld l, [hl]                                    ; $58A6: $6E
    adc h                                         ; $58A7: $8C
    ld a, [hl]                                    ; $58A8: $7E
    sub h                                         ; $58A9: $94
    ld l, [hl]                                    ; $58AA: $6E
    adc h                                         ; $58AB: $8C
    ld a, [hl]                                    ; $58AC: $7E
    add a                                         ; $58AD: $87
    ld l, [hl]                                    ; $58AE: $6E
    ld b, $C4                                     ; $58AF: $06 $C4
    pop hl                                        ; $58B1: $E1
    xor $6E                                       ; $58B2: $EE $6E
    call nc, $82E9                                ; $58B4: $D4 $E9 $82
    ld [c], a                                     ; $58B7: $E2
    inc bc                                        ; $58B8: $03
    db $EC                                        ; $58B9: $EC
    push hl                                       ; $58BA: $E5
    di                                            ; $58BB: $F3
    add d                                         ; $58BC: $82
    ld l, [hl]                                    ; $58BD: $6E
    adc h                                         ; $58BE: $8C
    ld a, [hl]                                    ; $58BF: $7E
    sub h                                         ; $58C0: $94
    ld l, [hl]                                    ; $58C1: $6E
    adc h                                         ; $58C2: $8C
    ld a, [hl]                                    ; $58C3: $7E
    sub h                                         ; $58C4: $94
    ld l, [hl]                                    ; $58C5: $6E
    adc h                                         ; $58C6: $8C
    ld a, [hl]                                    ; $58C7: $7E
    sub h                                         ; $58C8: $94
    ld l, [hl]                                    ; $58C9: $6E
    adc h                                         ; $58CA: $8C
    ld a, [hl]                                    ; $58CB: $7E
    sub h                                         ; $58CC: $94
    ld l, [hl]                                    ; $58CD: $6E
    adc h                                         ; $58CE: $8C
    ld a, [hl]                                    ; $58CF: $7E
    sub h                                         ; $58D0: $94
    ld l, [hl]                                    ; $58D1: $6E
    adc h                                         ; $58D2: $8C
    ld a, [hl]                                    ; $58D3: $7E
    sub h                                         ; $58D4: $94
    ld l, [hl]                                    ; $58D5: $6E
    adc h                                         ; $58D6: $8C
    ld a, [hl]                                    ; $58D7: $7E
    sub h                                         ; $58D8: $94
    ld l, [hl]                                    ; $58D9: $6E
    pop bc                                        ; $58DA: $C1
    call z, $007E                                 ; $58DB: $CC $7E $00
    sub h                                         ; $58DE: $94
    nop                                           ; $58DF: $00
    adc h                                         ; $58E0: $8C
    ld h, b                                       ; $58E1: $60
    sub h                                         ; $58E2: $94
    nop                                           ; $58E3: $00
    adc h                                         ; $58E4: $8C
    ld h, b                                       ; $58E5: $60
    sub h                                         ; $58E6: $94
    nop                                           ; $58E7: $00
    adc h                                         ; $58E8: $8C
    ld h, b                                       ; $58E9: $60
    sub h                                         ; $58EA: $94
    nop                                           ; $58EB: $00
    adc h                                         ; $58EC: $8C
    ld h, b                                       ; $58ED: $60
    sub h                                         ; $58EE: $94
    nop                                           ; $58EF: $00
    adc h                                         ; $58F0: $8C
    ld h, b                                       ; $58F1: $60
    sub h                                         ; $58F2: $94
    nop                                           ; $58F3: $00
    adc h                                         ; $58F4: $8C
    ld h, b                                       ; $58F5: $60
    add d                                         ; $58F6: $82
    nop                                           ; $58F7: $00
    add a                                         ; $58F8: $87
    ld [$008B], sp                                ; $58F9: $08 $8B $00
    adc h                                         ; $58FC: $8C
    ld h, b                                       ; $58FD: $60
    add d                                         ; $58FE: $82
    nop                                           ; $58FF: $00
    adc e                                         ; $5900: $8B
    ld [$0087], sp                                ; $5901: $08 $87 $00
    adc h                                         ; $5904: $8C
    ld h, b                                       ; $5905: $60
    sub h                                         ; $5906: $94
    nop                                           ; $5907: $00
    adc h                                         ; $5908: $8C
    ld h, b                                       ; $5909: $60
    sub h                                         ; $590A: $94
    nop                                           ; $590B: $00
    adc h                                         ; $590C: $8C
    ld h, b                                       ; $590D: $60
    add e                                         ; $590E: $83
    nop                                           ; $590F: $00
    add e                                         ; $5910: $83
    ld [$0002], sp                                ; $5911: $08 $02 $00
    ld [$2882], sp                                ; $5914: $08 $82 $28
    add l                                         ; $5917: $85
    ld [$0085], sp                                ; $5918: $08 $85 $00
    adc h                                         ; $591B: $8C
    ld h, b                                       ; $591C: $60
    add e                                         ; $591D: $83
    nop                                           ; $591E: $00
    add [hl]                                      ; $591F: $86
    ld [$0004], sp                                ; $5920: $08 $04 $00
    ld [$2808], sp                                ; $5923: $08 $08 $28
    add e                                         ; $5926: $83
    ld [$2802], sp                                ; $5927: $08 $02 $28
    ld [$0082], sp                                ; $592A: $08 $82 $00
    adc h                                         ; $592D: $8C
    ld h, b                                       ; $592E: $60
    add e                                         ; $592F: $83
    nop                                           ; $5930: $00
    add e                                         ; $5931: $83
    ld [$0001], sp                                ; $5932: $08 $01 $00
    add l                                         ; $5935: $85
    ld [$2803], sp                                ; $5936: $08 $03 $28
    ld [$8508], sp                                ; $5939: $08 $08 $85
    nop                                           ; $593C: $00
    adc h                                         ; $593D: $8C
    ld h, b                                       ; $593E: $60
    sub h                                         ; $593F: $94
    nop                                           ; $5940: $00
    adc h                                         ; $5941: $8C
    ld h, b                                       ; $5942: $60
    sub h                                         ; $5943: $94
    nop                                           ; $5944: $00
    adc h                                         ; $5945: $8C
    ld h, b                                       ; $5946: $60
    sub h                                         ; $5947: $94
    nop                                           ; $5948: $00
    adc h                                         ; $5949: $8C
    ld h, b                                       ; $594A: $60
    sub h                                         ; $594B: $94
    nop                                           ; $594C: $00
    adc h                                         ; $594D: $8C
    ld h, b                                       ; $594E: $60
    sub h                                         ; $594F: $94
    nop                                           ; $5950: $00
    pop bc                                        ; $5951: $C1
    call z, $0060                                 ; $5952: $CC $60 $00
    sub h                                         ; $5955: $94
    ld l, [hl]                                    ; $5956: $6E
    adc h                                         ; $5957: $8C
    ld a, [hl]                                    ; $5958: $7E
    sub h                                         ; $5959: $94
    ld l, [hl]                                    ; $595A: $6E
    adc h                                         ; $595B: $8C
    ld a, [hl]                                    ; $595C: $7E
    sub h                                         ; $595D: $94
    ld l, [hl]                                    ; $595E: $6E
    adc h                                         ; $595F: $8C
    ld a, [hl]                                    ; $5960: $7E
    sub h                                         ; $5961: $94
    ld l, [hl]                                    ; $5962: $6E
    adc h                                         ; $5963: $8C
    ld a, [hl]                                    ; $5964: $7E
    sub h                                         ; $5965: $94
    ld l, [hl]                                    ; $5966: $6E
    adc h                                         ; $5967: $8C
    ld a, [hl]                                    ; $5968: $7E
    sub h                                         ; $5969: $94
    ld l, [hl]                                    ; $596A: $6E
    adc h                                         ; $596B: $8C
    ld a, [hl]                                    ; $596C: $7E
    add d                                         ; $596D: $82
    ld l, [hl]                                    ; $596E: $6E
    rlca                                          ; $596F: $07
    rst $10                                       ; $5970: $D7
    push hl                                       ; $5971: $E5
    push hl                                       ; $5972: $E5
    db $EB                                        ; $5973: $EB
    push hl                                       ; $5974: $E5
    xor $E4                                       ; $5975: $EE $E4

jr_026_5977:
    adc e                                         ; $5977: $8B
    ld l, [hl]                                    ; $5978: $6E
    adc h                                         ; $5979: $8C
    ld a, [hl]                                    ; $597A: $7E

jr_026_597B:
    add d                                         ; $597B: $82
    ld l, [hl]                                    ; $597C: $6E
    dec bc                                        ; $597D: $0B
    ret nc                                        ; $597E: $D0

jr_026_597F:
    db $EC                                        ; $597F: $EC
    pop hl                                        ; $5980: $E1
    ld sp, hl                                     ; $5981: $F9
    db $F4                                        ; $5982: $F4

jr_026_5983:
    push hl                                       ; $5983: $E5
    di                                            ; $5984: $F3
    db $F4                                        ; $5985: $F4
    push hl                                       ; $5986: $E5

jr_026_5987:
    ld a, [c]                                     ; $5987: $F2
    di                                            ; $5988: $F3
    add a                                         ; $5989: $87
    ld l, [hl]                                    ; $598A: $6E

jr_026_598B:
    adc h                                         ; $598B: $8C
    ld a, [hl]                                    ; $598C: $7E
    sub h                                         ; $598D: $94
    ld l, [hl]                                    ; $598E: $6E
    adc h                                         ; $598F: $8C

jr_026_5990:
    ld a, [hl]                                    ; $5990: $7E
    sub h                                         ; $5991: $94
    ld l, [hl]                                    ; $5992: $6E
    adc h                                         ; $5993: $8C
    ld a, [hl]                                    ; $5994: $7E
    add e                                         ; $5995: $83
    ld l, [hl]                                    ; $5996: $6E
    dec b                                         ; $5997: $05
    call $F8E1                                    ; $5998: $CD $E1 $F8
    ld l, [hl]                                    ; $599B: $6E
    rst $10                                       ; $599C: $D7
    add d                                         ; $599D: $82
    rst $28                                       ; $599E: $EF
    dec b                                         ; $599F: $05
    db $E4                                        ; $59A0: $E4
    ld a, [c]                                     ; $59A1: $F2

jr_026_59A2:
    jp hl                                         ; $59A2: $E9


    xor $E7                                       ; $59A3: $EE $E7
    add l                                         ; $59A5: $85

jr_026_59A6:
    ld l, [hl]                                    ; $59A6: $6E
    adc h                                         ; $59A7: $8C
    ld a, [hl]                                    ; $59A8: $7E
    add e                                         ; $59A9: $83
    ld l, [hl]                                    ; $59AA: $6E
    rrca                                          ; $59AB: $0F
    set 4, l                                      ; $59AC: $CB $E5
    push hl                                       ; $59AE: $E5
    xor $E1                                       ; $59AF: $EE $E1

jr_026_59B1:
    xor $6E                                       ; $59B1: $EE $6E
    call nc, $EFE8                                ; $59B3: $D4 $E8 $EF
    db $ED                                        ; $59B6: $ED
    ldh a, [$F3]                                  ; $59B7: $F0 $F3
    rst $28                                       ; $59B9: $EF
    xor $82                                       ; $59BA: $EE $82
    ld l, [hl]                                    ; $59BC: $6E
    adc h                                         ; $59BD: $8C
    ld a, [hl]                                    ; $59BE: $7E
    add e                                         ; $59BF: $83
    ld l, [hl]                                    ; $59C0: $6E
    inc c                                         ; $59C1: $0C
    adc $E9                                       ; $59C2: $CE $E9
    db $EB                                        ; $59C4: $EB
    ld l, [hl]                                    ; $59C5: $6E
    set 4, c                                      ; $59C6: $CB $E1
    xor $E5                                       ; $59C8: $EE $E5
    db $F4                                        ; $59CA: $F4
    rst $28                                       ; $59CB: $EF
    db $ED                                        ; $59CC: $ED
    jp hl                                         ; $59CD: $E9


    add l                                         ; $59CE: $85
    ld l, [hl]                                    ; $59CF: $6E
    adc h                                         ; $59D0: $8C
    ld a, [hl]                                    ; $59D1: $7E
    sub h                                         ; $59D2: $94
    ld l, [hl]                                    ; $59D3: $6E
    adc h                                         ; $59D4: $8C
    ld a, [hl]                                    ; $59D5: $7E

jr_026_59D6:
    sub h                                         ; $59D6: $94
    ld l, [hl]                                    ; $59D7: $6E
    adc h                                         ; $59D8: $8C
    ld a, [hl]                                    ; $59D9: $7E

jr_026_59DA:
    sub h                                         ; $59DA: $94
    ld l, [hl]                                    ; $59DB: $6E
    adc h                                         ; $59DC: $8C
    ld a, [hl]                                    ; $59DD: $7E

jr_026_59DE:
    sub h                                         ; $59DE: $94
    ld l, [hl]                                    ; $59DF: $6E
    adc h                                         ; $59E0: $8C
    ld a, [hl]                                    ; $59E1: $7E

jr_026_59E2:
    sub h                                         ; $59E2: $94
    ld l, [hl]                                    ; $59E3: $6E
    pop bc                                        ; $59E4: $C1
    call z, $007E                                 ; $59E5: $CC $7E $00
    sub h                                         ; $59E8: $94
    jr nz, jr_026_5977                            ; $59E9: $20 $8C

    ld b, b                                       ; $59EB: $40
    sub h                                         ; $59EC: $94
    jr nz, jr_026_597B                            ; $59ED: $20 $8C

    ld b, b                                       ; $59EF: $40
    sub h                                         ; $59F0: $94
    jr nz, jr_026_597F                            ; $59F1: $20 $8C

    ld b, b                                       ; $59F3: $40
    sub h                                         ; $59F4: $94
    jr nz, jr_026_5983                            ; $59F5: $20 $8C

    ld b, b                                       ; $59F7: $40
    sub h                                         ; $59F8: $94
    jr nz, jr_026_5987                            ; $59F9: $20 $8C

    ld b, b                                       ; $59FB: $40
    sub h                                         ; $59FC: $94
    jr nz, jr_026_598B                            ; $59FD: $20 $8C

    ld b, b                                       ; $59FF: $40
    add d                                         ; $5A00: $82
    jr nz, @+$04                                  ; $5A01: $20 $02

    ld [$8928], sp                                ; $5A03: $08 $28 $89
    ld [$2087], sp                                ; $5A06: $08 $87 $20
    adc h                                         ; $5A09: $8C
    ld b, b                                       ; $5A0A: $40
    add d                                         ; $5A0B: $82
    jr nz, jr_026_5990                            ; $5A0C: $20 $82

    ld [$2090], sp                                ; $5A0E: $08 $90 $20
    adc h                                         ; $5A11: $8C
    ld b, b                                       ; $5A12: $40
    sub h                                         ; $5A13: $94
    jr nz, jr_026_59A2                            ; $5A14: $20 $8C

    ld b, b                                       ; $5A16: $40
    sub h                                         ; $5A17: $94
    jr nz, jr_026_59A6                            ; $5A18: $20 $8C

    ld b, b                                       ; $5A1A: $40

jr_026_5A1B:
    add a                                         ; $5A1B: $87
    jr nz, @-$78                                  ; $5A1C: $20 $86

    ld [$2001], sp                                ; $5A1E: $08 $01 $20
    add e                                         ; $5A21: $83
    ld [$2083], sp                                ; $5A22: $08 $83 $20
    adc h                                         ; $5A25: $8C
    ld b, b                                       ; $5A26: $40
    add a                                         ; $5A27: $87
    jr nz, @+$05                                  ; $5A28: $20 $03

    jr z, @+$0A                                   ; $5A2A: $28 $08

    jr nz, jr_026_59B1                            ; $5A2C: $20 $83

    ld [$2001], sp                                ; $5A2E: $08 $01 $20
    add e                                         ; $5A31: $83
    ld [$2083], sp                                ; $5A32: $08 $83 $20
    adc h                                         ; $5A35: $8C
    ld b, b                                       ; $5A36: $40
    add a                                         ; $5A37: $87
    jr nz, @+$03                                  ; $5A38: $20 $01

    ld [$2883], sp                                ; $5A3A: $08 $83 $28
    add d                                         ; $5A3D: $82
    ld [$2001], sp                                ; $5A3E: $08 $01 $20
    add h                                         ; $5A41: $84
    ld [$2082], sp                                ; $5A42: $08 $82 $20
    adc h                                         ; $5A45: $8C
    ld b, b                                       ; $5A46: $40
    sub h                                         ; $5A47: $94
    jr nz, jr_026_59D6                            ; $5A48: $20 $8C

    ld b, b                                       ; $5A4A: $40
    sub h                                         ; $5A4B: $94
    jr nz, jr_026_59DA                            ; $5A4C: $20 $8C

    ld b, b                                       ; $5A4E: $40
    sub h                                         ; $5A4F: $94
    jr nz, jr_026_59DE                            ; $5A50: $20 $8C

    ld b, b                                       ; $5A52: $40
    sub h                                         ; $5A53: $94
    jr nz, jr_026_59E2                            ; $5A54: $20 $8C

    ld b, b                                       ; $5A56: $40
    sub h                                         ; $5A57: $94
    jr nz, jr_026_5A1B                            ; $5A58: $20 $C1

    call z, $0040                                 ; $5A5A: $CC $40 $00
    sub h                                         ; $5A5D: $94
    ld l, [hl]                                    ; $5A5E: $6E
    adc h                                         ; $5A5F: $8C
    ld a, [hl]                                    ; $5A60: $7E
    sub h                                         ; $5A61: $94
    ld l, [hl]                                    ; $5A62: $6E
    adc h                                         ; $5A63: $8C
    ld a, [hl]                                    ; $5A64: $7E
    sub h                                         ; $5A65: $94
    ld l, [hl]                                    ; $5A66: $6E
    adc h                                         ; $5A67: $8C
    ld a, [hl]                                    ; $5A68: $7E
    sub h                                         ; $5A69: $94
    ld l, [hl]                                    ; $5A6A: $6E
    adc h                                         ; $5A6B: $8C
    ld a, [hl]                                    ; $5A6C: $7E
    sub h                                         ; $5A6D: $94
    ld l, [hl]                                    ; $5A6E: $6E
    adc h                                         ; $5A6F: $8C
    ld a, [hl]                                    ; $5A70: $7E
    sub h                                         ; $5A71: $94
    ld l, [hl]                                    ; $5A72: $6E
    adc h                                         ; $5A73: $8C
    ld a, [hl]                                    ; $5A74: $7E
    add d                                         ; $5A75: $82
    ld l, [hl]                                    ; $5A76: $6E
    dec bc                                        ; $5A77: $0B
    jp $EEEF                                      ; $5A78: $C3 $EF $EE


    or $E5                                        ; $5A7B: $F6 $E5
    xor $E9                                       ; $5A7D: $EE $E9
    push hl                                       ; $5A7F: $E5
    xor $E3                                       ; $5A80: $EE $E3
    push hl                                       ; $5A82: $E5
    add a                                         ; $5A83: $87
    ld l, [hl]                                    ; $5A84: $6E
    adc h                                         ; $5A85: $8C
    ld a, [hl]                                    ; $5A86: $7E
    add d                                         ; $5A87: $82
    ld l, [hl]                                    ; $5A88: $6E
    ld [bc], a                                    ; $5A89: $02
    ld [c], a                                     ; $5A8A: $E2
    ld sp, hl                                     ; $5A8B: $F9
    sub b                                         ; $5A8C: $90
    ld l, [hl]                                    ; $5A8D: $6E
    adc h                                         ; $5A8E: $8C
    ld a, [hl]                                    ; $5A8F: $7E
    sub h                                         ; $5A90: $94
    ld l, [hl]                                    ; $5A91: $6E
    adc h                                         ; $5A92: $8C
    ld a, [hl]                                    ; $5A93: $7E
    sub h                                         ; $5A94: $94
    ld l, [hl]                                    ; $5A95: $6E
    adc h                                         ; $5A96: $8C
    ld a, [hl]                                    ; $5A97: $7E
    add a                                         ; $5A98: $87
    ld l, [hl]                                    ; $5A99: $6E
    ld a, [bc]                                    ; $5A9A: $0A
    call $E8E9                                    ; $5A9B: $CD $E9 $E8
    ld sp, hl                                     ; $5A9E: $F9
    push af                                       ; $5A9F: $F5
    xor $6E                                       ; $5AA0: $EE $6E
    adc $E1                                       ; $5AA2: $CE $E1
    db $ED                                        ; $5AA4: $ED
    add e                                         ; $5AA5: $83
    ld l, [hl]                                    ; $5AA6: $6E
    adc h                                         ; $5AA7: $8C
    ld a, [hl]                                    ; $5AA8: $7E
    add a                                         ; $5AA9: $87
    ld l, [hl]                                    ; $5AAA: $6E
    ld a, [bc]                                    ; $5AAB: $0A
    rst $28                                       ; $5AAC: $EF
    and $6E                                       ; $5AAD: $E6 $6E
    or c                                          ; $5AAF: $B1
    di                                            ; $5AB0: $F3
    db $F4                                        ; $5AB1: $F4
    ld l, [hl]                                    ; $5AB2: $6E
    pop bc                                        ; $5AB3: $C1
    or $E5                                        ; $5AB4: $F6 $E5
    add e                                         ; $5AB6: $83
    ld l, [hl]                                    ; $5AB7: $6E
    adc h                                         ; $5AB8: $8C
    ld a, [hl]                                    ; $5AB9: $7E
    add a                                         ; $5ABA: $87
    ld l, [hl]                                    ; $5ABB: $6E
    dec bc                                        ; $5ABC: $0B
    ret nc                                        ; $5ABD: $D0

    rst $28                                       ; $5ABE: $EF
    pop af                                        ; $5ABF: $F1
    xor l                                         ; $5AC0: $AD
    ret                                           ; $5AC1: $C9


    xor $6E                                       ; $5AC2: $EE $6E

jr_026_5AC4:
    call $F2E1                                    ; $5AC4: $CD $E1 $F2
    db $F4                                        ; $5AC7: $F4
    add d                                         ; $5AC8: $82
    ld l, [hl]                                    ; $5AC9: $6E
    adc h                                         ; $5ACA: $8C
    ld a, [hl]                                    ; $5ACB: $7E
    sub h                                         ; $5ACC: $94
    ld l, [hl]                                    ; $5ACD: $6E
    adc h                                         ; $5ACE: $8C
    ld a, [hl]                                    ; $5ACF: $7E
    sub h                                         ; $5AD0: $94
    ld l, [hl]                                    ; $5AD1: $6E
    adc h                                         ; $5AD2: $8C
    ld a, [hl]                                    ; $5AD3: $7E
    sub h                                         ; $5AD4: $94
    ld l, [hl]                                    ; $5AD5: $6E
    adc h                                         ; $5AD6: $8C
    ld a, [hl]                                    ; $5AD7: $7E
    sub h                                         ; $5AD8: $94
    ld l, [hl]                                    ; $5AD9: $6E
    adc h                                         ; $5ADA: $8C
    ld a, [hl]                                    ; $5ADB: $7E
    sub h                                         ; $5ADC: $94
    ld l, [hl]                                    ; $5ADD: $6E
    pop bc                                        ; $5ADE: $C1
    call z, $007E                                 ; $5ADF: $CC $7E $00
    sub h                                         ; $5AE2: $94
    nop                                           ; $5AE3: $00
    adc h                                         ; $5AE4: $8C
    ld h, b                                       ; $5AE5: $60
    sub h                                         ; $5AE6: $94
    nop                                           ; $5AE7: $00
    adc h                                         ; $5AE8: $8C
    ld h, b                                       ; $5AE9: $60
    sub h                                         ; $5AEA: $94
    nop                                           ; $5AEB: $00
    adc h                                         ; $5AEC: $8C
    ld h, b                                       ; $5AED: $60
    sub h                                         ; $5AEE: $94
    nop                                           ; $5AEF: $00
    adc h                                         ; $5AF0: $8C
    ld h, b                                       ; $5AF1: $60
    sub h                                         ; $5AF2: $94
    nop                                           ; $5AF3: $00
    adc h                                         ; $5AF4: $8C
    ld h, b                                       ; $5AF5: $60
    sub h                                         ; $5AF6: $94
    nop                                           ; $5AF7: $00
    adc h                                         ; $5AF8: $8C
    ld h, b                                       ; $5AF9: $60
    add e                                         ; $5AFA: $83
    nop                                           ; $5AFB: $00
    add l                                         ; $5AFC: $85
    ld [$0003], sp                                ; $5AFD: $08 $03 $00
    ld [$8528], sp                                ; $5B00: $08 $28 $85
    ld [$0084], sp                                ; $5B03: $08 $84 $00
    adc h                                         ; $5B06: $8C
    ld h, b                                       ; $5B07: $60
    add e                                         ; $5B08: $83
    nop                                           ; $5B09: $00
    add [hl]                                      ; $5B0A: $86
    ld [$0004], sp                                ; $5B0B: $08 $04 $00
    ld [$0008], sp                                ; $5B0E: $08 $08 $00
    add e                                         ; $5B11: $83
    ld [$0084], sp                                ; $5B12: $08 $84 $00
    adc h                                         ; $5B15: $8C
    ld h, b                                       ; $5B16: $60
    add e                                         ; $5B17: $83
    nop                                           ; $5B18: $00
    ld [bc], a                                    ; $5B19: $02
    ld [$8528], sp                                ; $5B1A: $08 $28 $85
    ld [$0001], sp                                ; $5B1D: $08 $01 $00
    add e                                         ; $5B20: $83
    ld [$0086], sp                                ; $5B21: $08 $86 $00
    adc h                                         ; $5B24: $8C
    ld h, b                                       ; $5B25: $60
    add e                                         ; $5B26: $83
    nop                                           ; $5B27: $00
    ld bc, $8728                                  ; $5B28: $01 $28 $87
    ld [$0001], sp                                ; $5B2B: $08 $01 $00
    add e                                         ; $5B2E: $83
    ld [$0085], sp                                ; $5B2F: $08 $85 $00
    adc h                                         ; $5B32: $8C
    ld h, b                                       ; $5B33: $60
    add e                                         ; $5B34: $83
    nop                                           ; $5B35: $00
    add l                                         ; $5B36: $85
    ld [$0002], sp                                ; $5B37: $08 $02 $00
    jr z, jr_026_5AC4                             ; $5B3A: $28 $88

    ld [$0082], sp                                ; $5B3C: $08 $82 $00
    adc h                                         ; $5B3F: $8C
    ld h, b                                       ; $5B40: $60
    sub h                                         ; $5B41: $94
    nop                                           ; $5B42: $00
    adc h                                         ; $5B43: $8C
    ld h, b                                       ; $5B44: $60
    sub h                                         ; $5B45: $94
    nop                                           ; $5B46: $00
    adc h                                         ; $5B47: $8C
    ld h, b                                       ; $5B48: $60
    sub h                                         ; $5B49: $94
    nop                                           ; $5B4A: $00
    adc h                                         ; $5B4B: $8C
    ld h, b                                       ; $5B4C: $60
    sub h                                         ; $5B4D: $94
    nop                                           ; $5B4E: $00
    adc h                                         ; $5B4F: $8C
    ld h, b                                       ; $5B50: $60
    sub h                                         ; $5B51: $94
    nop                                           ; $5B52: $00
    adc h                                         ; $5B53: $8C
    ld h, b                                       ; $5B54: $60
    sub h                                         ; $5B55: $94
    nop                                           ; $5B56: $00
    adc h                                         ; $5B57: $8C
    ld h, b                                       ; $5B58: $60
    sub h                                         ; $5B59: $94
    nop                                           ; $5B5A: $00
    pop bc                                        ; $5B5B: $C1
    call z, $0060                                 ; $5B5C: $CC $60 $00
    sub h                                         ; $5B5F: $94
    ld l, [hl]                                    ; $5B60: $6E
    adc h                                         ; $5B61: $8C
    ld a, [hl]                                    ; $5B62: $7E
    sub h                                         ; $5B63: $94
    ld l, [hl]                                    ; $5B64: $6E
    adc h                                         ; $5B65: $8C
    ld a, [hl]                                    ; $5B66: $7E
    sub h                                         ; $5B67: $94
    ld l, [hl]                                    ; $5B68: $6E
    adc h                                         ; $5B69: $8C
    ld a, [hl]                                    ; $5B6A: $7E
    sub h                                         ; $5B6B: $94
    ld l, [hl]                                    ; $5B6C: $6E
    adc h                                         ; $5B6D: $8C
    ld a, [hl]                                    ; $5B6E: $7E
    sub h                                         ; $5B6F: $94
    ld l, [hl]                                    ; $5B70: $6E
    adc h                                         ; $5B71: $8C
    ld a, [hl]                                    ; $5B72: $7E
    sub h                                         ; $5B73: $94
    ld l, [hl]                                    ; $5B74: $6E
    adc h                                         ; $5B75: $8C
    ld a, [hl]                                    ; $5B76: $7E
    add e                                         ; $5B77: $83
    ld l, [hl]                                    ; $5B78: $6E
    dec c                                         ; $5B79: $0D
    push bc                                       ; $5B7A: $C5
    ld hl, sp-$0C                                 ; $5B7B: $F8 $F4
    ld a, [c]                                     ; $5B7D: $F2
    pop hl                                        ; $5B7E: $E1
    ld l, [hl]                                    ; $5B7F: $6E
    di                                            ; $5B80: $F3
    pop af                                        ; $5B81: $F1
    push hl                                       ; $5B82: $E5
    db $E3                                        ; $5B83: $E3
    jp hl                                         ; $5B84: $E9


    pop hl                                        ; $5B85: $E1
    db $EC                                        ; $5B86: $EC
    add h                                         ; $5B87: $84
    ld l, [hl]                                    ; $5B88: $6E
    adc h                                         ; $5B89: $8C
    ld a, [hl]                                    ; $5B8A: $7E
    add e                                         ; $5B8B: $83
    ld l, [hl]                                    ; $5B8C: $6E
    dec c                                         ; $5B8D: $0D
    db $F4                                        ; $5B8E: $F4
    add sp, -$1F                                  ; $5B8F: $E8 $E1
    xor $EB                                       ; $5B91: $EE $EB
    di                                            ; $5B93: $F3
    ld l, [hl]                                    ; $5B94: $6E
    db $F4                                        ; $5B95: $F4
    rst $28                                       ; $5B96: $EF
    ld l, [hl]                                    ; $5B97: $6E
    rst $28                                       ; $5B98: $EF
    push af                                       ; $5B99: $F5
    ld a, [c]                                     ; $5B9A: $F2
    add h                                         ; $5B9B: $84
    ld l, [hl]                                    ; $5B9C: $6E
    adc h                                         ; $5B9D: $8C
    ld a, [hl]                                    ; $5B9E: $7E
    add e                                         ; $5B9F: $83
    ld l, [hl]                                    ; $5BA0: $6E
    dec bc                                        ; $5BA1: $0B
    di                                            ; $5BA2: $F3
    pop af                                        ; $5BA3: $F1
    rst $28                                       ; $5BA4: $EF
    push af                                       ; $5BA5: $F5
    di                                            ; $5BA6: $F3
    push hl                                       ; $5BA7: $E5
    di                                            ; $5BA8: $F3
    ld l, [hl]                                    ; $5BA9: $6E
    pop hl                                        ; $5BAA: $E1
    xor $E4                                       ; $5BAB: $EE $E4
    add [hl]                                      ; $5BAD: $86
    ld l, [hl]                                    ; $5BAE: $6E
    adc h                                         ; $5BAF: $8C
    ld a, [hl]                                    ; $5BB0: $7E
    add e                                         ; $5BB1: $83
    ld l, [hl]                                    ; $5BB2: $6E
    inc c                                         ; $5BB3: $0C
    pop af                                        ; $5BB4: $F1
    pop hl                                        ; $5BB5: $E1
    ld a, [c]                                     ; $5BB6: $F2
    db $F4                                        ; $5BB7: $F4
    xor $E5                                       ; $5BB8: $EE $E5
    ld a, [c]                                     ; $5BBA: $F2
    di                                            ; $5BBB: $F3
    ld l, [hl]                                    ; $5BBC: $6E
    and $EF                                       ; $5BBD: $E6 $EF
    ld a, [c]                                     ; $5BBF: $F2
    add l                                         ; $5BC0: $85
    ld l, [hl]                                    ; $5BC1: $6E
    adc h                                         ; $5BC2: $8C
    ld a, [hl]                                    ; $5BC3: $7E
    add e                                         ; $5BC4: $83
    ld l, [hl]                                    ; $5BC5: $6E
    rrca                                          ; $5BC6: $0F
    db $F4                                        ; $5BC7: $F4
    add sp, -$1B                                  ; $5BC8: $E8 $E5
    jp hl                                         ; $5BCA: $E9


    ld a, [c]                                     ; $5BCB: $F2
    ld l, [hl]                                    ; $5BCC: $6E
    pop af                                        ; $5BCD: $F1
    pop hl                                        ; $5BCE: $E1
    db $F4                                        ; $5BCF: $F4
    jp hl                                         ; $5BD0: $E9


    push hl                                       ; $5BD1: $E5
    xor $E3                                       ; $5BD2: $EE $E3
    push hl                                       ; $5BD4: $E5
    and c                                         ; $5BD5: $A1
    add d                                         ; $5BD6: $82
    ld l, [hl]                                    ; $5BD7: $6E
    adc h                                         ; $5BD8: $8C
    ld a, [hl]                                    ; $5BD9: $7E
    sub h                                         ; $5BDA: $94
    ld l, [hl]                                    ; $5BDB: $6E
    adc h                                         ; $5BDC: $8C
    ld a, [hl]                                    ; $5BDD: $7E
    sub h                                         ; $5BDE: $94
    ld l, [hl]                                    ; $5BDF: $6E
    adc h                                         ; $5BE0: $8C
    ld a, [hl]                                    ; $5BE1: $7E
    sub h                                         ; $5BE2: $94
    ld l, [hl]                                    ; $5BE3: $6E
    adc h                                         ; $5BE4: $8C
    ld a, [hl]                                    ; $5BE5: $7E
    sub h                                         ; $5BE6: $94
    ld l, [hl]                                    ; $5BE7: $6E
    adc h                                         ; $5BE8: $8C
    ld a, [hl]                                    ; $5BE9: $7E
    sub h                                         ; $5BEA: $94
    ld l, [hl]                                    ; $5BEB: $6E
    adc h                                         ; $5BEC: $8C
    ld a, [hl]                                    ; $5BED: $7E
    sub h                                         ; $5BEE: $94
    ld l, [hl]                                    ; $5BEF: $6E
    adc h                                         ; $5BF0: $8C
    ld a, [hl]                                    ; $5BF1: $7E
    sub h                                         ; $5BF2: $94
    ld l, [hl]                                    ; $5BF3: $6E
    pop bc                                        ; $5BF4: $C1
    call z, $007E                                 ; $5BF5: $CC $7E $00
    sub h                                         ; $5BF8: $94
    nop                                           ; $5BF9: $00
    adc h                                         ; $5BFA: $8C
    ld h, b                                       ; $5BFB: $60
    sub h                                         ; $5BFC: $94
    nop                                           ; $5BFD: $00
    adc h                                         ; $5BFE: $8C
    ld h, b                                       ; $5BFF: $60
    sub h                                         ; $5C00: $94
    nop                                           ; $5C01: $00
    adc h                                         ; $5C02: $8C
    ld h, b                                       ; $5C03: $60
    sub h                                         ; $5C04: $94
    nop                                           ; $5C05: $00
    adc h                                         ; $5C06: $8C
    ld h, b                                       ; $5C07: $60
    sub h                                         ; $5C08: $94
    nop                                           ; $5C09: $00
    adc h                                         ; $5C0A: $8C
    ld h, b                                       ; $5C0B: $60
    sub h                                         ; $5C0C: $94
    nop                                           ; $5C0D: $00
    adc h                                         ; $5C0E: $8C
    ld h, b                                       ; $5C0F: $60
    sub h                                         ; $5C10: $94
    nop                                           ; $5C11: $00
    adc h                                         ; $5C12: $8C
    ld h, b                                       ; $5C13: $60
    sub h                                         ; $5C14: $94
    nop                                           ; $5C15: $00
    adc h                                         ; $5C16: $8C
    ld h, b                                       ; $5C17: $60
    add h                                         ; $5C18: $84
    nop                                           ; $5C19: $00
    ld [bc], a                                    ; $5C1A: $02
    ld [$8300], sp                                ; $5C1B: $08 $00 $83
    ld [$0082], sp                                ; $5C1E: $08 $82 $00
    add e                                         ; $5C21: $83
    ld [$0002], sp                                ; $5C22: $08 $02 $00
    ld [$0084], sp                                ; $5C25: $08 $84 $00
    adc h                                         ; $5C28: $8C
    ld h, b                                       ; $5C29: $60
    sub h                                         ; $5C2A: $94
    nop                                           ; $5C2B: $00
    adc h                                         ; $5C2C: $8C
    ld h, b                                       ; $5C2D: $60
    sub h                                         ; $5C2E: $94
    nop                                           ; $5C2F: $00
    adc h                                         ; $5C30: $8C
    ld h, b                                       ; $5C31: $60
    sub h                                         ; $5C32: $94
    nop                                           ; $5C33: $00
    adc h                                         ; $5C34: $8C
    ld h, b                                       ; $5C35: $60
    sub h                                         ; $5C36: $94
    nop                                           ; $5C37: $00
    adc h                                         ; $5C38: $8C

jr_026_5C39:
    ld h, b                                       ; $5C39: $60
    sub h                                         ; $5C3A: $94
    nop                                           ; $5C3B: $00
    adc h                                         ; $5C3C: $8C

jr_026_5C3D:
    ld h, b                                       ; $5C3D: $60
    sub h                                         ; $5C3E: $94
    nop                                           ; $5C3F: $00
    adc h                                         ; $5C40: $8C

jr_026_5C41:
    ld h, b                                       ; $5C41: $60
    sub h                                         ; $5C42: $94
    nop                                           ; $5C43: $00
    adc h                                         ; $5C44: $8C

jr_026_5C45:
    ld h, b                                       ; $5C45: $60
    sub h                                         ; $5C46: $94
    nop                                           ; $5C47: $00
    adc h                                         ; $5C48: $8C

jr_026_5C49:
    ld h, b                                       ; $5C49: $60
    sub h                                         ; $5C4A: $94
    nop                                           ; $5C4B: $00
    pop bc                                        ; $5C4C: $C1

jr_026_5C4D:
    call z, $0060                                 ; $5C4D: $CC $60 $00

jr_026_5C50:
    sub h                                         ; $5C50: $94
    ld l, [hl]                                    ; $5C51: $6E
    adc h                                         ; $5C52: $8C
    ld a, [hl]                                    ; $5C53: $7E
    sub h                                         ; $5C54: $94
    ld l, [hl]                                    ; $5C55: $6E
    adc h                                         ; $5C56: $8C
    ld a, [hl]                                    ; $5C57: $7E
    sub h                                         ; $5C58: $94

jr_026_5C59:
    ld l, [hl]                                    ; $5C59: $6E
    adc h                                         ; $5C5A: $8C
    ld a, [hl]                                    ; $5C5B: $7E

jr_026_5C5C:
    sub h                                         ; $5C5C: $94
    ld l, [hl]                                    ; $5C5D: $6E
    adc h                                         ; $5C5E: $8C
    ld a, [hl]                                    ; $5C5F: $7E
    sub h                                         ; $5C60: $94
    ld l, [hl]                                    ; $5C61: $6E
    adc h                                         ; $5C62: $8C
    ld a, [hl]                                    ; $5C63: $7E
    sub h                                         ; $5C64: $94

jr_026_5C65:
    ld l, [hl]                                    ; $5C65: $6E
    adc h                                         ; $5C66: $8C
    ld a, [hl]                                    ; $5C67: $7E

jr_026_5C68:
    sub h                                         ; $5C68: $94
    ld l, [hl]                                    ; $5C69: $6E
    adc h                                         ; $5C6A: $8C
    ld a, [hl]                                    ; $5C6B: $7E
    sub h                                         ; $5C6C: $94
    ld l, [hl]                                    ; $5C6D: $6E
    adc h                                         ; $5C6E: $8C
    ld a, [hl]                                    ; $5C6F: $7E
    add h                                         ; $5C70: $84

jr_026_5C71:
    ld l, [hl]                                    ; $5C71: $6E
    dec b                                         ; $5C72: $05
    sub c                                         ; $5C73: $91
    ld l, [hl]                                    ; $5C74: $6E

jr_026_5C75:
    call nc, $E5E8                                ; $5C75: $D4 $E8 $E5
    add d                                         ; $5C78: $82

jr_026_5C79:
    ld l, [hl]                                    ; $5C79: $6E
    dec b                                         ; $5C7A: $05
    push bc                                       ; $5C7B: $C5
    xor $E4                                       ; $5C7C: $EE $E4
    ld l, [hl]                                    ; $5C7E: $6E
    sub c                                         ; $5C7F: $91
    add h                                         ; $5C80: $84

jr_026_5C81:
    ld l, [hl]                                    ; $5C81: $6E
    adc h                                         ; $5C82: $8C
    ld a, [hl]                                    ; $5C83: $7E
    sub h                                         ; $5C84: $94

jr_026_5C85:
    ld l, [hl]                                    ; $5C85: $6E
    adc h                                         ; $5C86: $8C
    ld a, [hl]                                    ; $5C87: $7E
    sub h                                         ; $5C88: $94
    ld l, [hl]                                    ; $5C89: $6E
    adc h                                         ; $5C8A: $8C
    ld a, [hl]                                    ; $5C8B: $7E
    sub h                                         ; $5C8C: $94
    ld l, [hl]                                    ; $5C8D: $6E
    adc h                                         ; $5C8E: $8C
    ld a, [hl]                                    ; $5C8F: $7E
    sub h                                         ; $5C90: $94
    ld l, [hl]                                    ; $5C91: $6E
    adc h                                         ; $5C92: $8C
    ld a, [hl]                                    ; $5C93: $7E
    sub h                                         ; $5C94: $94
    ld l, [hl]                                    ; $5C95: $6E
    adc h                                         ; $5C96: $8C
    ld a, [hl]                                    ; $5C97: $7E
    sub h                                         ; $5C98: $94
    ld l, [hl]                                    ; $5C99: $6E
    adc h                                         ; $5C9A: $8C
    ld a, [hl]                                    ; $5C9B: $7E
    sub h                                         ; $5C9C: $94
    ld l, [hl]                                    ; $5C9D: $6E
    adc h                                         ; $5C9E: $8C
    ld a, [hl]                                    ; $5C9F: $7E
    sub h                                         ; $5CA0: $94
    ld l, [hl]                                    ; $5CA1: $6E
    adc h                                         ; $5CA2: $8C
    ld a, [hl]                                    ; $5CA3: $7E
    sub h                                         ; $5CA4: $94
    ld l, [hl]                                    ; $5CA5: $6E
    pop bc                                        ; $5CA6: $C1
    call z, $007E                                 ; $5CA7: $CC $7E $00
    sub h                                         ; $5CAA: $94
    jr nz, jr_026_5C39                            ; $5CAB: $20 $8C

    ld h, b                                       ; $5CAD: $60
    sub h                                         ; $5CAE: $94
    jr nz, jr_026_5C3D                            ; $5CAF: $20 $8C

    ld h, b                                       ; $5CB1: $60
    sub h                                         ; $5CB2: $94
    jr nz, jr_026_5C41                            ; $5CB3: $20 $8C

    ld h, b                                       ; $5CB5: $60
    sub h                                         ; $5CB6: $94
    jr nz, jr_026_5C45                            ; $5CB7: $20 $8C

    ld h, b                                       ; $5CB9: $60
    sub h                                         ; $5CBA: $94
    jr nz, jr_026_5C49                            ; $5CBB: $20 $8C

    ld h, b                                       ; $5CBD: $60

jr_026_5CBE:
    sub h                                         ; $5CBE: $94
    jr nz, jr_026_5C4D                            ; $5CBF: $20 $8C

    ld h, b                                       ; $5CC1: $60
    add h                                         ; $5CC2: $84
    jr nz, jr_026_5C50                            ; $5CC3: $20 $8B

    ld [$2085], sp                                ; $5CC5: $08 $85 $20
    adc h                                         ; $5CC8: $8C
    ld h, b                                       ; $5CC9: $60
    sub h                                         ; $5CCA: $94
    jr nz, jr_026_5C59                            ; $5CCB: $20 $8C

    ld h, b                                       ; $5CCD: $60
    add l                                         ; $5CCE: $85
    jr nz, jr_026_5C5C                            ; $5CCF: $20 $8B

    ld [$2084], sp                                ; $5CD1: $08 $84 $20
    adc h                                         ; $5CD4: $8C
    ld h, b                                       ; $5CD5: $60
    sub h                                         ; $5CD6: $94
    jr nz, jr_026_5C65                            ; $5CD7: $20 $8C

    ld h, b                                       ; $5CD9: $60
    add [hl]                                      ; $5CDA: $86
    jr nz, jr_026_5C68                            ; $5CDB: $20 $8B

    ld [$2083], sp                                ; $5CDD: $08 $83 $20
    adc h                                         ; $5CE0: $8C
    ld h, b                                       ; $5CE1: $60
    sub h                                         ; $5CE2: $94
    jr nz, jr_026_5C71                            ; $5CE3: $20 $8C

    ld h, b                                       ; $5CE5: $60
    sub h                                         ; $5CE6: $94
    jr nz, jr_026_5C75                            ; $5CE7: $20 $8C

    ld h, b                                       ; $5CE9: $60
    sub h                                         ; $5CEA: $94
    jr nz, jr_026_5C79                            ; $5CEB: $20 $8C

    ld h, b                                       ; $5CED: $60
    sub h                                         ; $5CEE: $94
    jr nz, @-$72                                  ; $5CEF: $20 $8C

    ld h, b                                       ; $5CF1: $60
    sub h                                         ; $5CF2: $94
    jr nz, jr_026_5C81                            ; $5CF3: $20 $8C

    ld h, b                                       ; $5CF5: $60
    sub h                                         ; $5CF6: $94
    jr nz, jr_026_5C85                            ; $5CF7: $20 $8C

    ld h, b                                       ; $5CF9: $60
    sub h                                         ; $5CFA: $94
    jr nz, jr_026_5CBE                            ; $5CFB: $20 $C1

    call z, $0060                                 ; $5CFD: $CC $60 $00
    sub h                                         ; $5D00: $94
    ld l, [hl]                                    ; $5D01: $6E
    adc h                                         ; $5D02: $8C

jr_026_5D03:
    ld a, [hl]                                    ; $5D03: $7E
    sub h                                         ; $5D04: $94
    ld l, [hl]                                    ; $5D05: $6E
    adc h                                         ; $5D06: $8C

jr_026_5D07:
    ld a, [hl]                                    ; $5D07: $7E
    sub h                                         ; $5D08: $94
    ld l, [hl]                                    ; $5D09: $6E
    adc h                                         ; $5D0A: $8C

jr_026_5D0B:
    ld a, [hl]                                    ; $5D0B: $7E
    sub h                                         ; $5D0C: $94
    ld l, [hl]                                    ; $5D0D: $6E
    adc h                                         ; $5D0E: $8C

jr_026_5D0F:
    ld a, [hl]                                    ; $5D0F: $7E
    sub h                                         ; $5D10: $94
    ld l, [hl]                                    ; $5D11: $6E
    adc h                                         ; $5D12: $8C

jr_026_5D13:
    ld a, [hl]                                    ; $5D13: $7E
    sub h                                         ; $5D14: $94
    ld l, [hl]                                    ; $5D15: $6E

jr_026_5D16:
    adc h                                         ; $5D16: $8C

jr_026_5D17:
    ld a, [hl]                                    ; $5D17: $7E
    add h                                         ; $5D18: $84
    ld l, [hl]                                    ; $5D19: $6E
    dec bc                                        ; $5D1A: $0B

jr_026_5D1B:
    ret                                           ; $5D1B: $C9


    adc $D4                                       ; $5D1C: $CE $D4
    push bc                                       ; $5D1E: $C5
    jp nc, $C3C1                                  ; $5D1F: $D2 $C1 $C3

    call nc, $D6C9                                ; $5D22: $D4 $C9 $D6
    push bc                                       ; $5D25: $C5
    add l                                         ; $5D26: $85

jr_026_5D27:
    ld l, [hl]                                    ; $5D27: $6E
    adc h                                         ; $5D28: $8C
    ld a, [hl]                                    ; $5D29: $7E
    sub h                                         ; $5D2A: $94

jr_026_5D2B:
    ld l, [hl]                                    ; $5D2B: $6E
    adc h                                         ; $5D2C: $8C
    ld a, [hl]                                    ; $5D2D: $7E
    add l                                         ; $5D2E: $85
    ld l, [hl]                                    ; $5D2F: $6E
    dec bc                                        ; $5D30: $0B
    ret                                           ; $5D31: $C9


    call $C7C1                                    ; $5D32: $CD $C1 $C7
    ret                                           ; $5D35: $C9


    adc $C1                                       ; $5D36: $CE $C1
    call nc, $CFC9                                ; $5D38: $D4 $C9 $CF

jr_026_5D3B:
    adc $84                                       ; $5D3B: $CE $84
    ld l, [hl]                                    ; $5D3D: $6E
    adc h                                         ; $5D3E: $8C

jr_026_5D3F:
    ld a, [hl]                                    ; $5D3F: $7E
    sub h                                         ; $5D40: $94
    ld l, [hl]                                    ; $5D41: $6E
    adc h                                         ; $5D42: $8C

jr_026_5D43:
    ld a, [hl]                                    ; $5D43: $7E
    add [hl]                                      ; $5D44: $86
    ld l, [hl]                                    ; $5D45: $6E
    dec bc                                        ; $5D46: $0B

jr_026_5D47:
    jp $D2CF                                      ; $5D47: $C3 $CF $D2


    ret nc                                        ; $5D4A: $D0

jr_026_5D4B:
    rst $08                                       ; $5D4B: $CF
    jp nc, $D4C1                                  ; $5D4C: $D2 $C1 $D4

jr_026_5D4F:
    ret                                           ; $5D4F: $C9


    rst $08                                       ; $5D50: $CF
    adc $83                                       ; $5D51: $CE $83
    ld l, [hl]                                    ; $5D53: $6E
    adc h                                         ; $5D54: $8C
    ld a, [hl]                                    ; $5D55: $7E
    sub h                                         ; $5D56: $94
    ld l, [hl]                                    ; $5D57: $6E
    adc h                                         ; $5D58: $8C
    ld a, [hl]                                    ; $5D59: $7E
    sub h                                         ; $5D5A: $94
    ld l, [hl]                                    ; $5D5B: $6E
    adc h                                         ; $5D5C: $8C
    ld a, [hl]                                    ; $5D5D: $7E
    sub h                                         ; $5D5E: $94
    ld l, [hl]                                    ; $5D5F: $6E
    adc h                                         ; $5D60: $8C
    ld a, [hl]                                    ; $5D61: $7E
    sub h                                         ; $5D62: $94
    ld l, [hl]                                    ; $5D63: $6E
    adc h                                         ; $5D64: $8C
    ld a, [hl]                                    ; $5D65: $7E
    sub h                                         ; $5D66: $94
    ld l, [hl]                                    ; $5D67: $6E
    adc h                                         ; $5D68: $8C
    ld a, [hl]                                    ; $5D69: $7E
    sub h                                         ; $5D6A: $94
    ld l, [hl]                                    ; $5D6B: $6E
    adc h                                         ; $5D6C: $8C
    ld a, [hl]                                    ; $5D6D: $7E
    sub h                                         ; $5D6E: $94
    ld l, [hl]                                    ; $5D6F: $6E
    pop bc                                        ; $5D70: $C1
    call z, $007E                                 ; $5D71: $CC $7E $00
    sub h                                         ; $5D74: $94
    jr nz, jr_026_5D03                            ; $5D75: $20 $8C

    ld h, b                                       ; $5D77: $60
    sub h                                         ; $5D78: $94
    jr nz, jr_026_5D07                            ; $5D79: $20 $8C

    ld h, b                                       ; $5D7B: $60
    sub h                                         ; $5D7C: $94
    jr nz, jr_026_5D0B                            ; $5D7D: $20 $8C

    ld h, b                                       ; $5D7F: $60
    sub h                                         ; $5D80: $94
    jr nz, jr_026_5D0F                            ; $5D81: $20 $8C

    ld h, b                                       ; $5D83: $60
    sub h                                         ; $5D84: $94
    jr nz, jr_026_5D13                            ; $5D85: $20 $8C

    ld h, b                                       ; $5D87: $60

jr_026_5D88:
    sub h                                         ; $5D88: $94
    jr nz, jr_026_5D17                            ; $5D89: $20 $8C

    ld h, b                                       ; $5D8B: $60
    sub h                                         ; $5D8C: $94
    jr nz, jr_026_5D1B                            ; $5D8D: $20 $8C

    ld h, b                                       ; $5D8F: $60
    add d                                         ; $5D90: $82
    jr nz, jr_026_5D16                            ; $5D91: $20 $83

    ld [$208F], sp                                ; $5D93: $08 $8F $20
    adc h                                         ; $5D96: $8C
    ld h, b                                       ; $5D97: $60
    sub h                                         ; $5D98: $94
    jr nz, jr_026_5D27                            ; $5D99: $20 $8C

    ld h, b                                       ; $5D9B: $60
    sub h                                         ; $5D9C: $94
    jr nz, jr_026_5D2B                            ; $5D9D: $20 $8C

    ld h, b                                       ; $5D9F: $60
    add [hl]                                      ; $5DA0: $86
    jr nz, jr_026_5D27                            ; $5DA1: $20 $84

    ld [$2001], sp                                ; $5DA3: $08 $01 $20
    adc b                                         ; $5DA6: $88
    ld [$2001], sp                                ; $5DA7: $08 $01 $20
    adc h                                         ; $5DAA: $8C
    ld h, b                                       ; $5DAB: $60
    sub h                                         ; $5DAC: $94
    jr nz, jr_026_5D3B                            ; $5DAD: $20 $8C

    ld h, b                                       ; $5DAF: $60
    sub h                                         ; $5DB0: $94
    jr nz, jr_026_5D3F                            ; $5DB1: $20 $8C

    ld h, b                                       ; $5DB3: $60
    sub h                                         ; $5DB4: $94
    jr nz, jr_026_5D43                            ; $5DB5: $20 $8C

    ld h, b                                       ; $5DB7: $60

jr_026_5DB8:
    sub h                                         ; $5DB8: $94
    jr nz, jr_026_5D47                            ; $5DB9: $20 $8C

    ld h, b                                       ; $5DBB: $60

jr_026_5DBC:
    sub h                                         ; $5DBC: $94
    jr nz, jr_026_5D4B                            ; $5DBD: $20 $8C

    ld h, b                                       ; $5DBF: $60

jr_026_5DC0:
    sub h                                         ; $5DC0: $94
    jr nz, jr_026_5D4F                            ; $5DC1: $20 $8C

    ld h, b                                       ; $5DC3: $60

jr_026_5DC4:
    sub h                                         ; $5DC4: $94
    jr nz, jr_026_5D88                            ; $5DC5: $20 $C1

    call z, $0060                                 ; $5DC7: $CC $60 $00
    sub h                                         ; $5DCA: $94
    ld l, [hl]                                    ; $5DCB: $6E

jr_026_5DCC:
    adc h                                         ; $5DCC: $8C
    ld a, [hl]                                    ; $5DCD: $7E
    sub h                                         ; $5DCE: $94
    ld l, [hl]                                    ; $5DCF: $6E
    adc h                                         ; $5DD0: $8C
    ld a, [hl]                                    ; $5DD1: $7E
    sub h                                         ; $5DD2: $94
    ld l, [hl]                                    ; $5DD3: $6E

jr_026_5DD4:
    adc h                                         ; $5DD4: $8C
    ld a, [hl]                                    ; $5DD5: $7E
    sub h                                         ; $5DD6: $94
    ld l, [hl]                                    ; $5DD7: $6E
    adc h                                         ; $5DD8: $8C
    ld a, [hl]                                    ; $5DD9: $7E
    sub h                                         ; $5DDA: $94
    ld l, [hl]                                    ; $5DDB: $6E
    adc h                                         ; $5DDC: $8C
    ld a, [hl]                                    ; $5DDD: $7E
    sub h                                         ; $5DDE: $94
    ld l, [hl]                                    ; $5DDF: $6E

jr_026_5DE0:
    adc h                                         ; $5DE0: $8C
    ld a, [hl]                                    ; $5DE1: $7E

jr_026_5DE2:
    sub h                                         ; $5DE2: $94
    ld l, [hl]                                    ; $5DE3: $6E

jr_026_5DE4:
    adc h                                         ; $5DE4: $8C
    ld a, [hl]                                    ; $5DE5: $7E

jr_026_5DE6:
    add d                                         ; $5DE6: $82
    ld l, [hl]                                    ; $5DE7: $6E
    inc bc                                        ; $5DE8: $03
    jp $CFC5                                      ; $5DE9: $C3 $C5 $CF


    adc a                                         ; $5DEC: $8F
    ld l, [hl]                                    ; $5DED: $6E
    adc h                                         ; $5DEE: $8C
    ld a, [hl]                                    ; $5DEF: $7E
    sub h                                         ; $5DF0: $94
    ld l, [hl]                                    ; $5DF1: $6E
    adc h                                         ; $5DF2: $8C
    ld a, [hl]                                    ; $5DF3: $7E
    sub h                                         ; $5DF4: $94

jr_026_5DF5:
    ld l, [hl]                                    ; $5DF5: $6E
    adc h                                         ; $5DF6: $8C
    ld a, [hl]                                    ; $5DF7: $7E
    add [hl]                                      ; $5DF8: $86

jr_026_5DF9:
    ld l, [hl]                                    ; $5DF9: $6E
    ld c, $D2                                     ; $5DFA: $0E $D2
    jp hl                                         ; $5DFC: $E9


jr_026_5DFD:
    db $E3                                        ; $5DFD: $E3
    add sp, $6E                                   ; $5DFE: $E8 $6E
    db $D3                                        ; $5E00: $D3

jr_026_5E01:
    jp hl                                         ; $5E01: $E9


    db $EC                                        ; $5E02: $EC
    or $E5                                        ; $5E03: $F6 $E5

jr_026_5E05:
    jp hl                                         ; $5E05: $E9


    ld a, [c]                                     ; $5E06: $F2
    pop hl                                        ; $5E07: $E1
    ld l, [hl]                                    ; $5E08: $6E

jr_026_5E09:
    adc h                                         ; $5E09: $8C
    ld a, [hl]                                    ; $5E0A: $7E
    sub h                                         ; $5E0B: $94
    ld l, [hl]                                    ; $5E0C: $6E
    adc h                                         ; $5E0D: $8C
    ld a, [hl]                                    ; $5E0E: $7E
    sub h                                         ; $5E0F: $94
    ld l, [hl]                                    ; $5E10: $6E
    adc h                                         ; $5E11: $8C
    ld a, [hl]                                    ; $5E12: $7E
    sub h                                         ; $5E13: $94
    ld l, [hl]                                    ; $5E14: $6E
    adc h                                         ; $5E15: $8C
    ld a, [hl]                                    ; $5E16: $7E
    sub h                                         ; $5E17: $94
    ld l, [hl]                                    ; $5E18: $6E
    adc h                                         ; $5E19: $8C
    ld a, [hl]                                    ; $5E1A: $7E
    sub h                                         ; $5E1B: $94
    ld l, [hl]                                    ; $5E1C: $6E
    adc h                                         ; $5E1D: $8C
    ld a, [hl]                                    ; $5E1E: $7E
    sub h                                         ; $5E1F: $94
    ld l, [hl]                                    ; $5E20: $6E
    adc h                                         ; $5E21: $8C
    ld a, [hl]                                    ; $5E22: $7E
    sub h                                         ; $5E23: $94
    ld l, [hl]                                    ; $5E24: $6E
    pop bc                                        ; $5E25: $C1
    call z, $007E                                 ; $5E26: $CC $7E $00
    sub h                                         ; $5E29: $94
    jr nz, jr_026_5DB8                            ; $5E2A: $20 $8C

    nop                                           ; $5E2C: $00
    sub h                                         ; $5E2D: $94
    jr nz, jr_026_5DBC                            ; $5E2E: $20 $8C

    nop                                           ; $5E30: $00
    sub h                                         ; $5E31: $94
    jr nz, jr_026_5DC0                            ; $5E32: $20 $8C

    nop                                           ; $5E34: $00
    sub h                                         ; $5E35: $94
    jr nz, jr_026_5DC4                            ; $5E36: $20 $8C

    nop                                           ; $5E38: $00
    sub h                                         ; $5E39: $94
    jr nz, @-$72                                  ; $5E3A: $20 $8C

    nop                                           ; $5E3C: $00
    sub h                                         ; $5E3D: $94
    jr nz, jr_026_5DCC                            ; $5E3E: $20 $8C

    nop                                           ; $5E40: $00
    add d                                         ; $5E41: $82

jr_026_5E42:
    jr nz, jr_026_5DCC                            ; $5E42: $20 $88

    ld [$208A], sp                                ; $5E44: $08 $8A $20
    adc h                                         ; $5E47: $8C
    nop                                           ; $5E48: $00
    add d                                         ; $5E49: $82
    jr nz, jr_026_5DD4                            ; $5E4A: $20 $88

    ld [$208A], sp                                ; $5E4C: $08 $8A $20
    adc h                                         ; $5E4F: $8C
    nop                                           ; $5E50: $00
    sub h                                         ; $5E51: $94
    jr nz, jr_026_5DE0                            ; $5E52: $20 $8C

    nop                                           ; $5E54: $00
    sub h                                         ; $5E55: $94
    jr nz, jr_026_5DE4                            ; $5E56: $20 $8C

    nop                                           ; $5E58: $00
    add l                                         ; $5E59: $85
    jr nz, jr_026_5DE2                            ; $5E5A: $20 $86

    ld [$2802], sp                                ; $5E5C: $08 $02 $28
    jr nz, jr_026_5DE6                            ; $5E5F: $20 $85

    ld [$2082], sp                                ; $5E61: $08 $82 $20
    adc h                                         ; $5E64: $8C
    nop                                           ; $5E65: $00
    sub h                                         ; $5E66: $94
    jr nz, jr_026_5DF5                            ; $5E67: $20 $8C

    nop                                           ; $5E69: $00
    sub h                                         ; $5E6A: $94
    jr nz, jr_026_5DF9                            ; $5E6B: $20 $8C

    nop                                           ; $5E6D: $00
    sub h                                         ; $5E6E: $94
    jr nz, jr_026_5DFD                            ; $5E6F: $20 $8C

    nop                                           ; $5E71: $00
    sub h                                         ; $5E72: $94
    jr nz, jr_026_5E01                            ; $5E73: $20 $8C

    nop                                           ; $5E75: $00
    sub h                                         ; $5E76: $94
    jr nz, jr_026_5E05                            ; $5E77: $20 $8C

    nop                                           ; $5E79: $00
    sub h                                         ; $5E7A: $94
    jr nz, jr_026_5E09                            ; $5E7B: $20 $8C

    nop                                           ; $5E7D: $00
    sub h                                         ; $5E7E: $94
    jr nz, jr_026_5E42                            ; $5E7F: $20 $C1

    call z, RST_00                                ; $5E81: $CC $00 $00

jr_026_5E84:
    sub h                                         ; $5E84: $94
    ld l, [hl]                                    ; $5E85: $6E
    adc h                                         ; $5E86: $8C
    ld a, [hl]                                    ; $5E87: $7E

jr_026_5E88:
    sub h                                         ; $5E88: $94
    ld l, [hl]                                    ; $5E89: $6E
    adc h                                         ; $5E8A: $8C
    ld a, [hl]                                    ; $5E8B: $7E

jr_026_5E8C:
    sub h                                         ; $5E8C: $94
    ld l, [hl]                                    ; $5E8D: $6E
    adc h                                         ; $5E8E: $8C
    ld a, [hl]                                    ; $5E8F: $7E

jr_026_5E90:
    sub h                                         ; $5E90: $94
    ld l, [hl]                                    ; $5E91: $6E
    adc h                                         ; $5E92: $8C
    ld a, [hl]                                    ; $5E93: $7E

jr_026_5E94:
    sub h                                         ; $5E94: $94
    ld l, [hl]                                    ; $5E95: $6E
    adc h                                         ; $5E96: $8C
    ld a, [hl]                                    ; $5E97: $7E

jr_026_5E98:
    sub h                                         ; $5E98: $94
    ld l, [hl]                                    ; $5E99: $6E
    adc h                                         ; $5E9A: $8C
    ld a, [hl]                                    ; $5E9B: $7E
    add d                                         ; $5E9C: $82
    ld l, [hl]                                    ; $5E9D: $6E
    ld [$F2C3], sp                                ; $5E9E: $08 $C3 $F2
    push hl                                       ; $5EA1: $E5
    pop hl                                        ; $5EA2: $E1
    db $F4                                        ; $5EA3: $F4
    jp hl                                         ; $5EA4: $E9


    or $E5                                        ; $5EA5: $F6 $E5
    adc d                                         ; $5EA7: $8A
    ld l, [hl]                                    ; $5EA8: $6E
    adc h                                         ; $5EA9: $8C
    ld a, [hl]                                    ; $5EAA: $7E
    add d                                         ; $5EAB: $82
    ld l, [hl]                                    ; $5EAC: $6E
    ld [$E9C4], sp                                ; $5EAD: $08 $C4 $E9
    ld a, [c]                                     ; $5EB0: $F2
    push hl                                       ; $5EB1: $E5
    db $E3                                        ; $5EB2: $E3

jr_026_5EB3:
    db $F4                                        ; $5EB3: $F4
    rst $28                                       ; $5EB4: $EF
    ld a, [c]                                     ; $5EB5: $F2
    adc d                                         ; $5EB6: $8A

jr_026_5EB7:
    ld l, [hl]                                    ; $5EB7: $6E
    adc h                                         ; $5EB8: $8C
    ld a, [hl]                                    ; $5EB9: $7E
    sub h                                         ; $5EBA: $94
    ld l, [hl]                                    ; $5EBB: $6E
    adc h                                         ; $5EBC: $8C
    ld a, [hl]                                    ; $5EBD: $7E

jr_026_5EBE:
    sub h                                         ; $5EBE: $94
    ld l, [hl]                                    ; $5EBF: $6E
    adc h                                         ; $5EC0: $8C
    ld a, [hl]                                    ; $5EC1: $7E
    add l                                         ; $5EC2: $85
    ld l, [hl]                                    ; $5EC3: $6E
    inc bc                                        ; $5EC4: $03
    ret nc                                        ; $5EC5: $D0

    add sp, -$17                                  ; $5EC6: $E8 $E9
    add d                                         ; $5EC8: $82
    db $EC                                        ; $5EC9: $EC
    ld [$F1E9], sp                                ; $5ECA: $08 $E9 $F1
    ld l, [hl]                                    ; $5ECD: $6E
    call nc, $F6E1                                ; $5ECE: $D4 $E1 $F6
    push hl                                       ; $5ED1: $E5
    db $EC                                        ; $5ED2: $EC

jr_026_5ED3:
    add d                                         ; $5ED3: $82
    ld l, [hl]                                    ; $5ED4: $6E
    adc h                                         ; $5ED5: $8C
    ld a, [hl]                                    ; $5ED6: $7E

jr_026_5ED7:
    sub h                                         ; $5ED7: $94
    ld l, [hl]                                    ; $5ED8: $6E
    adc h                                         ; $5ED9: $8C
    ld a, [hl]                                    ; $5EDA: $7E

jr_026_5EDB:
    sub h                                         ; $5EDB: $94
    ld l, [hl]                                    ; $5EDC: $6E
    adc h                                         ; $5EDD: $8C
    ld a, [hl]                                    ; $5EDE: $7E

jr_026_5EDF:
    sub h                                         ; $5EDF: $94
    ld l, [hl]                                    ; $5EE0: $6E
    adc h                                         ; $5EE1: $8C
    ld a, [hl]                                    ; $5EE2: $7E

jr_026_5EE3:
    sub h                                         ; $5EE3: $94
    ld l, [hl]                                    ; $5EE4: $6E
    adc h                                         ; $5EE5: $8C
    ld a, [hl]                                    ; $5EE6: $7E
    sub h                                         ; $5EE7: $94
    ld l, [hl]                                    ; $5EE8: $6E
    adc h                                         ; $5EE9: $8C
    ld a, [hl]                                    ; $5EEA: $7E
    sub h                                         ; $5EEB: $94
    ld l, [hl]                                    ; $5EEC: $6E
    adc h                                         ; $5EED: $8C
    ld a, [hl]                                    ; $5EEE: $7E
    sub h                                         ; $5EEF: $94
    ld l, [hl]                                    ; $5EF0: $6E
    pop bc                                        ; $5EF1: $C1
    call z, $007E                                 ; $5EF2: $CC $7E $00
    sub h                                         ; $5EF5: $94
    jr nz, jr_026_5E84                            ; $5EF6: $20 $8C

    ld h, b                                       ; $5EF8: $60
    sub h                                         ; $5EF9: $94
    jr nz, jr_026_5E88                            ; $5EFA: $20 $8C

    ld h, b                                       ; $5EFC: $60
    sub h                                         ; $5EFD: $94
    jr nz, jr_026_5E8C                            ; $5EFE: $20 $8C

    ld h, b                                       ; $5F00: $60
    sub h                                         ; $5F01: $94
    jr nz, jr_026_5E90                            ; $5F02: $20 $8C

    ld h, b                                       ; $5F04: $60
    sub h                                         ; $5F05: $94
    jr nz, jr_026_5E94                            ; $5F06: $20 $8C

    ld h, b                                       ; $5F08: $60
    sub h                                         ; $5F09: $94
    jr nz, jr_026_5E98                            ; $5F0A: $20 $8C

    ld h, b                                       ; $5F0C: $60
    ld bc, $8620                                  ; $5F0D: $01 $20 $86
    ld [$208D], sp                                ; $5F10: $08 $8D $20
    adc h                                         ; $5F13: $8C
    ld h, b                                       ; $5F14: $60
    ld b, $20                                     ; $5F15: $06 $20
    ld [$2008], sp                                ; $5F17: $08 $08 $20
    ld [$0308], sp                                ; $5F1A: $08 $08 $03
    jr nz, jr_026_5F27                            ; $5F1D: $20 $08

    ld [$208B], sp                                ; $5F1F: $08 $8B $20
    adc h                                         ; $5F22: $8C
    ld h, b                                       ; $5F23: $60
    sub h                                         ; $5F24: $94
    jr nz, jr_026_5EB3                            ; $5F25: $20 $8C

jr_026_5F27:
    ld h, b                                       ; $5F27: $60
    sub h                                         ; $5F28: $94
    jr nz, jr_026_5EB7                            ; $5F29: $20 $8C

    ld h, b                                       ; $5F2B: $60
    add d                                         ; $5F2C: $82
    jr nz, jr_026_5EB3                            ; $5F2D: $20 $84

    ld [$2001], sp                                ; $5F2F: $08 $01 $20
    adc d                                         ; $5F32: $8A
    ld [$2083], sp                                ; $5F33: $08 $83 $20
    adc h                                         ; $5F36: $8C
    ld h, b                                       ; $5F37: $60
    adc e                                         ; $5F38: $8B
    jr nz, jr_026_5EBE                            ; $5F39: $20 $83

    ld [$2003], sp                                ; $5F3B: $08 $03 $20
    jr z, jr_026_5F48                             ; $5F3E: $28 $08

    add e                                         ; $5F40: $83
    jr nz, @-$72                                  ; $5F41: $20 $8C

    ld h, b                                       ; $5F43: $60
    sub h                                         ; $5F44: $94
    jr nz, jr_026_5ED3                            ; $5F45: $20 $8C

    ld h, b                                       ; $5F47: $60

jr_026_5F48:
    sub h                                         ; $5F48: $94
    jr nz, jr_026_5ED7                            ; $5F49: $20 $8C

    ld h, b                                       ; $5F4B: $60
    sub h                                         ; $5F4C: $94
    jr nz, jr_026_5EDB                            ; $5F4D: $20 $8C

    ld h, b                                       ; $5F4F: $60
    sub h                                         ; $5F50: $94
    jr nz, jr_026_5EDF                            ; $5F51: $20 $8C

    ld h, b                                       ; $5F53: $60
    sub h                                         ; $5F54: $94
    jr nz, jr_026_5EE3                            ; $5F55: $20 $8C

    ld h, b                                       ; $5F57: $60
    sub h                                         ; $5F58: $94
    jr nz, @-$3D                                  ; $5F59: $20 $C1

    call z, $0060                                 ; $5F5B: $CC $60 $00
    sub h                                         ; $5F5E: $94
    ld l, [hl]                                    ; $5F5F: $6E
    adc h                                         ; $5F60: $8C
    ld a, [hl]                                    ; $5F61: $7E
    sub h                                         ; $5F62: $94
    ld l, [hl]                                    ; $5F63: $6E

jr_026_5F64:
    adc h                                         ; $5F64: $8C
    ld a, [hl]                                    ; $5F65: $7E
    sub h                                         ; $5F66: $94
    ld l, [hl]                                    ; $5F67: $6E

jr_026_5F68:
    adc h                                         ; $5F68: $8C
    ld a, [hl]                                    ; $5F69: $7E
    sub h                                         ; $5F6A: $94
    ld l, [hl]                                    ; $5F6B: $6E

jr_026_5F6C:
    adc h                                         ; $5F6C: $8C
    ld a, [hl]                                    ; $5F6D: $7E
    sub h                                         ; $5F6E: $94
    ld l, [hl]                                    ; $5F6F: $6E

jr_026_5F70:
    adc h                                         ; $5F70: $8C
    ld a, [hl]                                    ; $5F71: $7E

jr_026_5F72:
    sub h                                         ; $5F72: $94
    ld l, [hl]                                    ; $5F73: $6E

jr_026_5F74:
    adc h                                         ; $5F74: $8C
    ld a, [hl]                                    ; $5F75: $7E
    rlca                                          ; $5F76: $07
    ld l, [hl]                                    ; $5F77: $6E

jr_026_5F78:
    db $D3                                        ; $5F78: $D3
    push hl                                       ; $5F79: $E5
    xor $E9                                       ; $5F7A: $EE $E9

jr_026_5F7C:
    rst $28                                       ; $5F7C: $EF
    ld a, [c]                                     ; $5F7D: $F2
    adc l                                         ; $5F7E: $8D
    ld l, [hl]                                    ; $5F7F: $6E
    adc h                                         ; $5F80: $8C
    ld a, [hl]                                    ; $5F81: $7E

jr_026_5F82:
    add hl, bc                                    ; $5F82: $09
    ld l, [hl]                                    ; $5F83: $6E
    sub $D0                                       ; $5F84: $D6 $D0
    ld l, [hl]                                    ; $5F86: $6E
    rst $28                                       ; $5F87: $EF
    and $6E                                       ; $5F88: $E6 $6E
    pop de                                        ; $5F8A: $D1
    pop bc                                        ; $5F8B: $C1
    adc e                                         ; $5F8C: $8B
    ld l, [hl]                                    ; $5F8D: $6E
    adc h                                         ; $5F8E: $8C
    ld a, [hl]                                    ; $5F8F: $7E
    sub h                                         ; $5F90: $94
    ld l, [hl]                                    ; $5F91: $6E
    adc h                                         ; $5F92: $8C
    ld a, [hl]                                    ; $5F93: $7E
    sub h                                         ; $5F94: $94
    ld l, [hl]                                    ; $5F95: $6E
    adc h                                         ; $5F96: $8C

jr_026_5F97:
    ld a, [hl]                                    ; $5F97: $7E

jr_026_5F98:
    add d                                         ; $5F98: $82
    ld l, [hl]                                    ; $5F99: $6E
    rrca                                          ; $5F9A: $0F

jr_026_5F9B:
    rst $00                                       ; $5F9B: $C7
    ld a, [c]                                     ; $5F9C: $F2
    push hl                                       ; $5F9D: $E5
    rst $20                                       ; $5F9E: $E7
    ld l, [hl]                                    ; $5F9F: $6E
    jp nc, $E3E9                                  ; $5FA0: $D2 $E9 $E3

    add sp, -$1F                                  ; $5FA3: $E8 $E1
    ld a, [c]                                     ; $5FA5: $F2
    db $E4                                        ; $5FA6: $E4
    di                                            ; $5FA7: $F3
    rst $28                                       ; $5FA8: $EF
    xor $83                                       ; $5FA9: $EE $83

jr_026_5FAB:
    ld l, [hl]                                    ; $5FAB: $6E
    adc h                                         ; $5FAC: $8C
    ld a, [hl]                                    ; $5FAD: $7E
    adc e                                         ; $5FAE: $8B

jr_026_5FAF:
    ld l, [hl]                                    ; $5FAF: $6E
    ld b, $F6                                     ; $5FB0: $06 $F6
    rst $28                                       ; $5FB2: $EF

jr_026_5FB3:
    xor $6E                                       ; $5FB3: $EE $6E
    rst $08                                       ; $5FB5: $CF
    ld sp, hl                                     ; $5FB6: $F9

jr_026_5FB7:
    add e                                         ; $5FB7: $83
    ld l, [hl]                                    ; $5FB8: $6E
    adc h                                         ; $5FB9: $8C
    ld a, [hl]                                    ; $5FBA: $7E

jr_026_5FBB:
    sub h                                         ; $5FBB: $94
    ld l, [hl]                                    ; $5FBC: $6E
    adc h                                         ; $5FBD: $8C
    ld a, [hl]                                    ; $5FBE: $7E

jr_026_5FBF:
    sub h                                         ; $5FBF: $94
    ld l, [hl]                                    ; $5FC0: $6E
    adc h                                         ; $5FC1: $8C
    ld a, [hl]                                    ; $5FC2: $7E
    sub h                                         ; $5FC3: $94
    ld l, [hl]                                    ; $5FC4: $6E
    adc h                                         ; $5FC5: $8C
    ld a, [hl]                                    ; $5FC6: $7E
    sub h                                         ; $5FC7: $94
    ld l, [hl]                                    ; $5FC8: $6E
    adc h                                         ; $5FC9: $8C
    ld a, [hl]                                    ; $5FCA: $7E
    sub h                                         ; $5FCB: $94
    ld l, [hl]                                    ; $5FCC: $6E
    adc h                                         ; $5FCD: $8C
    ld a, [hl]                                    ; $5FCE: $7E
    sub h                                         ; $5FCF: $94
    ld l, [hl]                                    ; $5FD0: $6E
    pop bc                                        ; $5FD1: $C1
    call z, $007E                                 ; $5FD2: $CC $7E $00
    sub h                                         ; $5FD5: $94
    jr nz, jr_026_5F64                            ; $5FD6: $20 $8C

    ld h, b                                       ; $5FD8: $60
    sub h                                         ; $5FD9: $94
    jr nz, jr_026_5F68                            ; $5FDA: $20 $8C

    ld h, b                                       ; $5FDC: $60
    sub h                                         ; $5FDD: $94
    jr nz, jr_026_5F6C                            ; $5FDE: $20 $8C

    ld h, b                                       ; $5FE0: $60
    sub h                                         ; $5FE1: $94
    jr nz, jr_026_5F70                            ; $5FE2: $20 $8C

    ld h, b                                       ; $5FE4: $60
    sub h                                         ; $5FE5: $94
    jr nz, jr_026_5F74                            ; $5FE6: $20 $8C

    ld h, b                                       ; $5FE8: $60
    sub h                                         ; $5FE9: $94
    jr nz, jr_026_5F78                            ; $5FEA: $20 $8C

    ld h, b                                       ; $5FEC: $60
    add d                                         ; $5FED: $82
    jr nz, jr_026_5F72                            ; $5FEE: $20 $82

    ld [$2004], sp                                ; $5FF0: $08 $04 $20
    jr z, jr_026_5FFD                             ; $5FF3: $28 $08

    jr nz, jr_026_5F7C                            ; $5FF5: $20 $85

    ld [$2087], sp                                ; $5FF7: $08 $87 $20
    adc h                                         ; $5FFA: $8C
    ld h, b                                       ; $5FFB: $60
    add d                                         ; $5FFC: $82

jr_026_5FFD:
    jr nz, jr_026_5F82                            ; $5FFD: $20 $83

    ld [$2001], sp                                ; $5FFF: $08 $01 $20
    adc c                                         ; $6002: $89
    ld [$2085], sp                                ; $6003: $08 $85 $20
    adc h                                         ; $6006: $8C
    ld h, b                                       ; $6007: $60
    sub h                                         ; $6008: $94
    jr nz, jr_026_5F97                            ; $6009: $20 $8C

    ld h, b                                       ; $600B: $60
    sub h                                         ; $600C: $94
    jr nz, jr_026_5F9B                            ; $600D: $20 $8C

    ld h, b                                       ; $600F: $60
    add l                                         ; $6010: $85
    jr nz, jr_026_5F98                            ; $6011: $20 $85

    ld [$2001], sp                                ; $6013: $08 $01 $20
    add a                                         ; $6016: $87
    ld [$2082], sp                                ; $6017: $08 $82 $20
    adc h                                         ; $601A: $8C
    ld h, b                                       ; $601B: $60
    sub h                                         ; $601C: $94
    jr nz, jr_026_5FAB                            ; $601D: $20 $8C

    ld h, b                                       ; $601F: $60
    sub h                                         ; $6020: $94
    jr nz, jr_026_5FAF                            ; $6021: $20 $8C

    ld h, b                                       ; $6023: $60
    sub h                                         ; $6024: $94
    jr nz, jr_026_5FB3                            ; $6025: $20 $8C

    ld h, b                                       ; $6027: $60
    sub h                                         ; $6028: $94
    jr nz, jr_026_5FB7                            ; $6029: $20 $8C

    ld h, b                                       ; $602B: $60
    sub h                                         ; $602C: $94
    jr nz, jr_026_5FBB                            ; $602D: $20 $8C

    ld h, b                                       ; $602F: $60
    sub h                                         ; $6030: $94
    jr nz, jr_026_5FBF                            ; $6031: $20 $8C

    ld h, b                                       ; $6033: $60
    sub h                                         ; $6034: $94
    jr nz, @-$3D                                  ; $6035: $20 $C1

    call z, $0060                                 ; $6037: $CC $60 $00
    sub h                                         ; $603A: $94
    ld l, [hl]                                    ; $603B: $6E
    adc h                                         ; $603C: $8C
    ld a, [hl]                                    ; $603D: $7E
    sub h                                         ; $603E: $94
    ld l, [hl]                                    ; $603F: $6E
    adc h                                         ; $6040: $8C
    ld a, [hl]                                    ; $6041: $7E

jr_026_6042:
    sub h                                         ; $6042: $94
    ld l, [hl]                                    ; $6043: $6E
    adc h                                         ; $6044: $8C
    ld a, [hl]                                    ; $6045: $7E

jr_026_6046:
    sub h                                         ; $6046: $94
    ld l, [hl]                                    ; $6047: $6E
    adc h                                         ; $6048: $8C
    ld a, [hl]                                    ; $6049: $7E

jr_026_604A:
    sub h                                         ; $604A: $94
    ld l, [hl]                                    ; $604B: $6E
    adc h                                         ; $604C: $8C
    ld a, [hl]                                    ; $604D: $7E

jr_026_604E:
    sub h                                         ; $604E: $94
    ld l, [hl]                                    ; $604F: $6E
    adc h                                         ; $6050: $8C
    ld a, [hl]                                    ; $6051: $7E

jr_026_6052:
    add d                                         ; $6052: $82
    ld l, [hl]                                    ; $6053: $6E
    dec bc                                        ; $6054: $0B
    sub $D0                                       ; $6055: $D6 $D0
    ld l, [hl]                                    ; $6057: $6E
    rst $28                                       ; $6058: $EF
    and $6E                                       ; $6059: $E6 $6E
    db $D3                                        ; $605B: $D3
    pop hl                                        ; $605C: $E1
    db $EC                                        ; $605D: $EC
    push hl                                       ; $605E: $E5
    di                                            ; $605F: $F3
    add a                                         ; $6060: $87
    ld l, [hl]                                    ; $6061: $6E
    adc h                                         ; $6062: $8C
    ld a, [hl]                                    ; $6063: $7E
    add d                                         ; $6064: $82
    ld l, [hl]                                    ; $6065: $6E
    dec c                                         ; $6066: $0D

jr_026_6067:
    pop hl                                        ; $6067: $E1
    xor $E4                                       ; $6068: $EE $E4
    ld l, [hl]                                    ; $606A: $6E
    call $F2E1                                    ; $606B: $CD $E1 $F2
    db $EB                                        ; $606E: $EB
    push hl                                       ; $606F: $E5
    db $F4                                        ; $6070: $F4
    jp hl                                         ; $6071: $E9


    xor $E7                                       ; $6072: $EE $E7
    add l                                         ; $6074: $85
    ld l, [hl]                                    ; $6075: $6E
    adc h                                         ; $6076: $8C
    ld a, [hl]                                    ; $6077: $7E

jr_026_6078:
    sub h                                         ; $6078: $94
    ld l, [hl]                                    ; $6079: $6E
    adc h                                         ; $607A: $8C

jr_026_607B:
    ld a, [hl]                                    ; $607B: $7E

jr_026_607C:
    sub h                                         ; $607C: $94
    ld l, [hl]                                    ; $607D: $6E
    adc h                                         ; $607E: $8C
    ld a, [hl]                                    ; $607F: $7E
    add l                                         ; $6080: $85
    ld l, [hl]                                    ; $6081: $6E
    inc bc                                        ; $6082: $03
    rst $00                                       ; $6083: $C7
    db $EC                                        ; $6084: $EC
    push hl                                       ; $6085: $E5
    add d                                         ; $6086: $82
    xor $08                                       ; $6087: $EE $08
    ld l, [hl]                                    ; $6089: $6E
    ret z                                         ; $608A: $C8

    pop hl                                        ; $608B: $E1

jr_026_608C:
    db $EC                                        ; $608C: $EC
    di                                            ; $608D: $F3
    push hl                                       ; $608E: $E5
    db $F4                                        ; $608F: $F4

jr_026_6090:
    add sp, -$7E                                  ; $6090: $E8 $82
    ld l, [hl]                                    ; $6092: $6E
    adc h                                         ; $6093: $8C

jr_026_6094:
    ld a, [hl]                                    ; $6094: $7E
    sub h                                         ; $6095: $94
    ld l, [hl]                                    ; $6096: $6E
    adc h                                         ; $6097: $8C

jr_026_6098:
    ld a, [hl]                                    ; $6098: $7E
    sub h                                         ; $6099: $94
    ld l, [hl]                                    ; $609A: $6E
    adc h                                         ; $609B: $8C

jr_026_609C:
    ld a, [hl]                                    ; $609C: $7E
    sub h                                         ; $609D: $94
    ld l, [hl]                                    ; $609E: $6E
    adc h                                         ; $609F: $8C

jr_026_60A0:
    ld a, [hl]                                    ; $60A0: $7E
    sub h                                         ; $60A1: $94
    ld l, [hl]                                    ; $60A2: $6E
    adc h                                         ; $60A3: $8C
    ld a, [hl]                                    ; $60A4: $7E
    sub h                                         ; $60A5: $94
    ld l, [hl]                                    ; $60A6: $6E
    adc h                                         ; $60A7: $8C
    ld a, [hl]                                    ; $60A8: $7E
    sub h                                         ; $60A9: $94
    ld l, [hl]                                    ; $60AA: $6E
    adc h                                         ; $60AB: $8C
    ld a, [hl]                                    ; $60AC: $7E
    sub h                                         ; $60AD: $94
    ld l, [hl]                                    ; $60AE: $6E
    pop bc                                        ; $60AF: $C1
    call z, $007E                                 ; $60B0: $CC $7E $00
    sub h                                         ; $60B3: $94
    jr nz, jr_026_6042                            ; $60B4: $20 $8C

    nop                                           ; $60B6: $00
    sub h                                         ; $60B7: $94
    jr nz, jr_026_6046                            ; $60B8: $20 $8C

    nop                                           ; $60BA: $00
    sub h                                         ; $60BB: $94
    jr nz, jr_026_604A                            ; $60BC: $20 $8C

    nop                                           ; $60BE: $00
    sub h                                         ; $60BF: $94
    jr nz, jr_026_604E                            ; $60C0: $20 $8C

    nop                                           ; $60C2: $00
    sub h                                         ; $60C3: $94
    jr nz, jr_026_6052                            ; $60C4: $20 $8C

    nop                                           ; $60C6: $00
    add d                                         ; $60C7: $82
    jr nz, @+$04                                  ; $60C8: $20 $02

    ld [$8628], sp                                ; $60CA: $08 $28 $86
    ld [$208A], sp                                ; $60CD: $08 $8A $20
    adc h                                         ; $60D0: $8C
    nop                                           ; $60D1: $00
    add d                                         ; $60D2: $82
    jr nz, @-$79                                  ; $60D3: $20 $85

    ld [$2801], sp                                ; $60D5: $08 $01 $28
    add l                                         ; $60D8: $85

jr_026_60D9:
    ld [$2087], sp                                ; $60D9: $08 $87 $20
    adc h                                         ; $60DC: $8C
    nop                                           ; $60DD: $00
    add d                                         ; $60DE: $82
    jr nz, jr_026_6067                            ; $60DF: $20 $86

    ld [$2802], sp                                ; $60E1: $08 $02 $28
    ld [$208A], sp                                ; $60E4: $08 $8A $20
    adc h                                         ; $60E7: $8C
    nop                                           ; $60E8: $00
    sub h                                         ; $60E9: $94
    jr nz, jr_026_6078                            ; $60EA: $20 $8C

    nop                                           ; $60EC: $00
    sub h                                         ; $60ED: $94
    jr nz, jr_026_607C                            ; $60EE: $20 $8C

    nop                                           ; $60F0: $00
    add h                                         ; $60F1: $84
    jr nz, jr_026_607B                            ; $60F2: $20 $87

    ld [$2001], sp                                ; $60F4: $08 $01 $20
    add [hl]                                      ; $60F7: $86
    ld [$2082], sp                                ; $60F8: $08 $82 $20
    adc h                                         ; $60FB: $8C
    nop                                           ; $60FC: $00
    sub h                                         ; $60FD: $94
    jr nz, jr_026_608C                            ; $60FE: $20 $8C

    nop                                           ; $6100: $00
    sub h                                         ; $6101: $94
    jr nz, jr_026_6090                            ; $6102: $20 $8C

    nop                                           ; $6104: $00
    sub h                                         ; $6105: $94
    jr nz, jr_026_6094                            ; $6106: $20 $8C

    nop                                           ; $6108: $00
    sub h                                         ; $6109: $94
    jr nz, jr_026_6098                            ; $610A: $20 $8C

    nop                                           ; $610C: $00
    sub h                                         ; $610D: $94
    jr nz, jr_026_609C                            ; $610E: $20 $8C

    nop                                           ; $6110: $00
    sub h                                         ; $6111: $94
    jr nz, jr_026_60A0                            ; $6112: $20 $8C

    nop                                           ; $6114: $00
    sub h                                         ; $6115: $94
    jr nz, jr_026_60D9                            ; $6116: $20 $C1

    call z, RST_00                                ; $6118: $CC $00 $00
    sub h                                         ; $611B: $94
    ld l, [hl]                                    ; $611C: $6E
    adc h                                         ; $611D: $8C
    ld a, [hl]                                    ; $611E: $7E
    sub h                                         ; $611F: $94
    ld l, [hl]                                    ; $6120: $6E
    adc h                                         ; $6121: $8C
    ld a, [hl]                                    ; $6122: $7E
    sub h                                         ; $6123: $94
    ld l, [hl]                                    ; $6124: $6E
    adc h                                         ; $6125: $8C
    ld a, [hl]                                    ; $6126: $7E
    sub h                                         ; $6127: $94
    ld l, [hl]                                    ; $6128: $6E
    adc h                                         ; $6129: $8C

jr_026_612A:
    ld a, [hl]                                    ; $612A: $7E
    sub h                                         ; $612B: $94
    ld l, [hl]                                    ; $612C: $6E
    adc h                                         ; $612D: $8C

jr_026_612E:
    ld a, [hl]                                    ; $612E: $7E
    add d                                         ; $612F: $82
    ld l, [hl]                                    ; $6130: $6E
    ld [$EFD3], sp                                ; $6131: $08 $D3 $EF
    and $F4                                       ; $6134: $E6 $F4

jr_026_6136:
    rst $30                                       ; $6136: $F7
    pop hl                                        ; $6137: $E1
    ld a, [c]                                     ; $6138: $F2
    push hl                                       ; $6139: $E5

jr_026_613A:
    adc d                                         ; $613A: $8A
    ld l, [hl]                                    ; $613B: $6E
    adc h                                         ; $613C: $8C
    ld a, [hl]                                    ; $613D: $7E

jr_026_613E:
    add d                                         ; $613E: $82
    ld l, [hl]                                    ; $613F: $6E
    dec bc                                        ; $6140: $0B

jr_026_6141:
    call nz, $F6E5                                ; $6141: $C4 $E5 $F6
    push hl                                       ; $6144: $E5
    db $EC                                        ; $6145: $EC
    rst $28                                       ; $6146: $EF
    ldh a, [$ED]                                  ; $6147: $F0 $ED
    push hl                                       ; $6149: $E5
    xor $F4                                       ; $614A: $EE $F4
    add a                                         ; $614C: $87
    ld l, [hl]                                    ; $614D: $6E
    adc h                                         ; $614E: $8C
    ld a, [hl]                                    ; $614F: $7E
    add d                                         ; $6150: $82
    ld l, [hl]                                    ; $6151: $6E
    ld [$E9C4], sp                                ; $6152: $08 $C4 $E9
    ld a, [c]                                     ; $6155: $F2
    push hl                                       ; $6156: $E5
    db $E3                                        ; $6157: $E3
    db $F4                                        ; $6158: $F4

jr_026_6159:
    rst $28                                       ; $6159: $EF
    ld a, [c]                                     ; $615A: $F2
    adc d                                         ; $615B: $8A
    ld l, [hl]                                    ; $615C: $6E

jr_026_615D:
    adc h                                         ; $615D: $8C
    ld a, [hl]                                    ; $615E: $7E
    sub h                                         ; $615F: $94
    ld l, [hl]                                    ; $6160: $6E
    adc h                                         ; $6161: $8C
    ld a, [hl]                                    ; $6162: $7E
    sub h                                         ; $6163: $94
    ld l, [hl]                                    ; $6164: $6E
    adc h                                         ; $6165: $8C
    ld a, [hl]                                    ; $6166: $7E
    add h                                         ; $6167: $84
    ld l, [hl]                                    ; $6168: $6E
    add hl, bc                                    ; $6169: $09
    ret nc                                        ; $616A: $D0

    pop hl                                        ; $616B: $E1
    db $F4                                        ; $616C: $F4
    ld a, [c]                                     ; $616D: $F2
    jp hl                                         ; $616E: $E9


    db $E3                                        ; $616F: $E3
    db $EB                                        ; $6170: $EB

jr_026_6171:
    ld l, [hl]                                    ; $6171: $6E
    call $E582                                    ; $6172: $CD $82 $E5

jr_026_6175:
    inc bc                                        ; $6175: $03
    add sp, -$1F                                  ; $6176: $E8 $E1
    xor $82                                       ; $6178: $EE $82
    ld l, [hl]                                    ; $617A: $6E
    adc h                                         ; $617B: $8C
    ld a, [hl]                                    ; $617C: $7E

jr_026_617D:
    sub h                                         ; $617D: $94
    ld l, [hl]                                    ; $617E: $6E
    adc h                                         ; $617F: $8C
    ld a, [hl]                                    ; $6180: $7E

jr_026_6181:
    sub h                                         ; $6181: $94
    ld l, [hl]                                    ; $6182: $6E
    adc h                                         ; $6183: $8C
    ld a, [hl]                                    ; $6184: $7E

jr_026_6185:
    sub h                                         ; $6185: $94
    ld l, [hl]                                    ; $6186: $6E
    adc h                                         ; $6187: $8C
    ld a, [hl]                                    ; $6188: $7E
    sub h                                         ; $6189: $94
    ld l, [hl]                                    ; $618A: $6E
    adc h                                         ; $618B: $8C
    ld a, [hl]                                    ; $618C: $7E
    sub h                                         ; $618D: $94
    ld l, [hl]                                    ; $618E: $6E
    adc h                                         ; $618F: $8C
    ld a, [hl]                                    ; $6190: $7E
    sub h                                         ; $6191: $94
    ld l, [hl]                                    ; $6192: $6E
    adc h                                         ; $6193: $8C
    ld a, [hl]                                    ; $6194: $7E
    sub h                                         ; $6195: $94
    ld l, [hl]                                    ; $6196: $6E
    pop bc                                        ; $6197: $C1
    call z, $007E                                 ; $6198: $CC $7E $00
    sub h                                         ; $619B: $94
    jr nz, jr_026_612A                            ; $619C: $20 $8C

    ld h, b                                       ; $619E: $60
    sub h                                         ; $619F: $94
    jr nz, jr_026_612E                            ; $61A0: $20 $8C

    ld h, b                                       ; $61A2: $60
    sub h                                         ; $61A3: $94
    jr nz, @-$72                                  ; $61A4: $20 $8C

    ld h, b                                       ; $61A6: $60
    sub h                                         ; $61A7: $94
    jr nz, jr_026_6136                            ; $61A8: $20 $8C

    ld h, b                                       ; $61AA: $60
    sub h                                         ; $61AB: $94
    jr nz, jr_026_613A                            ; $61AC: $20 $8C

    ld h, b                                       ; $61AE: $60
    sub h                                         ; $61AF: $94
    jr nz, jr_026_613E                            ; $61B0: $20 $8C

    ld h, b                                       ; $61B2: $60
    add d                                         ; $61B3: $82
    jr nz, jr_026_613E                            ; $61B4: $20 $88

    ld [$208A], sp                                ; $61B6: $08 $8A $20
    adc h                                         ; $61B9: $8C
    ld h, b                                       ; $61BA: $60
    add d                                         ; $61BB: $82
    jr nz, jr_026_6141                            ; $61BC: $20 $83

jr_026_61BE:
    ld [$2001], sp                                ; $61BE: $08 $01 $20
    add [hl]                                      ; $61C1: $86
    ld [$2802], sp                                ; $61C2: $08 $02 $28
    ld [$2086], sp                                ; $61C5: $08 $86 $20
    adc h                                         ; $61C8: $8C
    ld h, b                                       ; $61C9: $60
    sub h                                         ; $61CA: $94
    jr nz, jr_026_6159                            ; $61CB: $20 $8C

    ld h, b                                       ; $61CD: $60
    sub h                                         ; $61CE: $94
    jr nz, jr_026_615D                            ; $61CF: $20 $8C

    ld h, b                                       ; $61D1: $60
    add d                                         ; $61D2: $82
    jr nz, jr_026_6159                            ; $61D3: $20 $84

    ld [$2001], sp                                ; $61D5: $08 $01 $20
    add [hl]                                      ; $61D8: $86
    ld [$2801], sp                                ; $61D9: $08 $01 $28
    add h                                         ; $61DC: $84
    ld [$2082], sp                                ; $61DD: $08 $82 $20
    adc h                                         ; $61E0: $8C
    ld h, b                                       ; $61E1: $60
    sub h                                         ; $61E2: $94
    jr nz, jr_026_6171                            ; $61E3: $20 $8C

    ld h, b                                       ; $61E5: $60
    sub h                                         ; $61E6: $94
    jr nz, jr_026_6175                            ; $61E7: $20 $8C

    ld h, b                                       ; $61E9: $60
    sub h                                         ; $61EA: $94
    jr nz, @-$72                                  ; $61EB: $20 $8C

    ld h, b                                       ; $61ED: $60
    sub h                                         ; $61EE: $94
    jr nz, jr_026_617D                            ; $61EF: $20 $8C

    ld h, b                                       ; $61F1: $60
    sub h                                         ; $61F2: $94
    jr nz, jr_026_6181                            ; $61F3: $20 $8C

    ld h, b                                       ; $61F5: $60
    sub h                                         ; $61F6: $94
    jr nz, jr_026_6185                            ; $61F7: $20 $8C

    ld h, b                                       ; $61F9: $60
    sub h                                         ; $61FA: $94
    jr nz, jr_026_61BE                            ; $61FB: $20 $C1

    call z, $0060                                 ; $61FD: $CC $60 $00
    sub h                                         ; $6200: $94
    ld l, [hl]                                    ; $6201: $6E
    adc h                                         ; $6202: $8C
    ld a, [hl]                                    ; $6203: $7E
    sub h                                         ; $6204: $94
    ld l, [hl]                                    ; $6205: $6E

jr_026_6206:
    adc h                                         ; $6206: $8C
    ld a, [hl]                                    ; $6207: $7E
    sub h                                         ; $6208: $94
    ld l, [hl]                                    ; $6209: $6E

jr_026_620A:
    adc h                                         ; $620A: $8C
    ld a, [hl]                                    ; $620B: $7E
    sub h                                         ; $620C: $94
    ld l, [hl]                                    ; $620D: $6E

jr_026_620E:
    adc h                                         ; $620E: $8C
    ld a, [hl]                                    ; $620F: $7E
    sub h                                         ; $6210: $94
    ld l, [hl]                                    ; $6211: $6E

jr_026_6212:
    adc h                                         ; $6212: $8C
    ld a, [hl]                                    ; $6213: $7E
    sub h                                         ; $6214: $94
    ld l, [hl]                                    ; $6215: $6E

jr_026_6216:
    adc h                                         ; $6216: $8C
    ld a, [hl]                                    ; $6217: $7E
    add d                                         ; $6218: $82
    ld l, [hl]                                    ; $6219: $6E

jr_026_621A:
    ld [$F2C3], sp                                ; $621A: $08 $C3 $F2
    push hl                                       ; $621D: $E5
    pop hl                                        ; $621E: $E1
    db $F4                                        ; $621F: $F4
    jp hl                                         ; $6220: $E9


    or $E5                                        ; $6221: $F6 $E5

jr_026_6223:
    adc d                                         ; $6223: $8A
    ld l, [hl]                                    ; $6224: $6E
    adc h                                         ; $6225: $8C
    ld a, [hl]                                    ; $6226: $7E
    add d                                         ; $6227: $82
    ld l, [hl]                                    ; $6228: $6E
    inc c                                         ; $6229: $0C
    pop bc                                        ; $622A: $C1
    ld a, [c]                                     ; $622B: $F2
    db $F4                                        ; $622C: $F4
    ld l, [hl]                                    ; $622D: $6E

jr_026_622E:
    call nz, $F2E9                                ; $622E: $C4 $E9 $F2
    push hl                                       ; $6231: $E5

jr_026_6232:
    db $E3                                        ; $6232: $E3
    db $F4                                        ; $6233: $F4
    rst $28                                       ; $6234: $EF
    ld a, [c]                                     ; $6235: $F2
    add [hl]                                      ; $6236: $86
    ld l, [hl]                                    ; $6237: $6E
    adc h                                         ; $6238: $8C
    ld a, [hl]                                    ; $6239: $7E
    sub h                                         ; $623A: $94
    ld l, [hl]                                    ; $623B: $6E
    adc h                                         ; $623C: $8C
    ld a, [hl]                                    ; $623D: $7E
    sub h                                         ; $623E: $94
    ld l, [hl]                                    ; $623F: $6E
    adc h                                         ; $6240: $8C
    ld a, [hl]                                    ; $6241: $7E

jr_026_6242:
    add d                                         ; $6242: $82
    ld l, [hl]                                    ; $6243: $6E
    db $10                                        ; $6244: $10
    call $EBE9                                    ; $6245: $CD $E9 $EB
    push hl                                       ; $6248: $E5
    ld l, [hl]                                    ; $6249: $6E

jr_026_624A:
    jp $F2E8                                      ; $624A: $C3 $E8 $F2


    jp hl                                         ; $624D: $E9


jr_026_624E:
    di                                            ; $624E: $F3
    db $F4                                        ; $624F: $F4
    rst $28                                       ; $6250: $EF
    ldh a, [$E8]                                  ; $6251: $F0 $E8
    push hl                                       ; $6253: $E5
    ld a, [c]                                     ; $6254: $F2
    add d                                         ; $6255: $82

jr_026_6256:
    ld l, [hl]                                    ; $6256: $6E
    adc h                                         ; $6257: $8C
    ld a, [hl]                                    ; $6258: $7E
    sub h                                         ; $6259: $94
    ld l, [hl]                                    ; $625A: $6E
    adc h                                         ; $625B: $8C
    ld a, [hl]                                    ; $625C: $7E
    sub h                                         ; $625D: $94
    ld l, [hl]                                    ; $625E: $6E
    adc h                                         ; $625F: $8C
    ld a, [hl]                                    ; $6260: $7E
    sub h                                         ; $6261: $94
    ld l, [hl]                                    ; $6262: $6E
    adc h                                         ; $6263: $8C
    ld a, [hl]                                    ; $6264: $7E
    sub h                                         ; $6265: $94
    ld l, [hl]                                    ; $6266: $6E
    adc h                                         ; $6267: $8C
    ld a, [hl]                                    ; $6268: $7E
    sub h                                         ; $6269: $94
    ld l, [hl]                                    ; $626A: $6E
    adc h                                         ; $626B: $8C
    ld a, [hl]                                    ; $626C: $7E
    sub h                                         ; $626D: $94
    ld l, [hl]                                    ; $626E: $6E
    adc h                                         ; $626F: $8C
    ld a, [hl]                                    ; $6270: $7E
    sub h                                         ; $6271: $94
    ld l, [hl]                                    ; $6272: $6E
    pop bc                                        ; $6273: $C1
    call z, $007E                                 ; $6274: $CC $7E $00
    sub h                                         ; $6277: $94
    jr nz, jr_026_6206                            ; $6278: $20 $8C

    nop                                           ; $627A: $00
    sub h                                         ; $627B: $94
    jr nz, jr_026_620A                            ; $627C: $20 $8C

    nop                                           ; $627E: $00
    sub h                                         ; $627F: $94
    jr nz, jr_026_620E                            ; $6280: $20 $8C

    nop                                           ; $6282: $00
    sub h                                         ; $6283: $94
    jr nz, jr_026_6212                            ; $6284: $20 $8C

    nop                                           ; $6286: $00
    sub h                                         ; $6287: $94
    jr nz, jr_026_6216                            ; $6288: $20 $8C

    nop                                           ; $628A: $00
    sub h                                         ; $628B: $94
    jr nz, jr_026_621A                            ; $628C: $20 $8C

    nop                                           ; $628E: $00

jr_026_628F:
    add d                                         ; $628F: $82
    jr nz, jr_026_621A                            ; $6290: $20 $88

    ld [$208A], sp                                ; $6292: $08 $8A $20
    adc h                                         ; $6295: $8C
    nop                                           ; $6296: $00
    add d                                         ; $6297: $82
    jr nz, jr_026_6223                            ; $6298: $20 $89

    ld [$2089], sp                                ; $629A: $08 $89 $20
    adc h                                         ; $629D: $8C
    nop                                           ; $629E: $00
    sub h                                         ; $629F: $94
    jr nz, jr_026_622E                            ; $62A0: $20 $8C

    nop                                           ; $62A2: $00
    sub h                                         ; $62A3: $94
    jr nz, jr_026_6232                            ; $62A4: $20 $8C

    nop                                           ; $62A6: $00
    add a                                         ; $62A7: $87
    jr nz, jr_026_622E                            ; $62A8: $20 $84

    ld [$2001], sp                                ; $62AA: $08 $01 $20
    add [hl]                                      ; $62AD: $86
    ld [$2082], sp                                ; $62AE: $08 $82 $20
    adc h                                         ; $62B1: $8C
    nop                                           ; $62B2: $00
    sub h                                         ; $62B3: $94
    jr nz, jr_026_6242                            ; $62B4: $20 $8C

    nop                                           ; $62B6: $00
    sub h                                         ; $62B7: $94
    jr nz, @-$72                                  ; $62B8: $20 $8C

    nop                                           ; $62BA: $00
    sub h                                         ; $62BB: $94
    jr nz, jr_026_624A                            ; $62BC: $20 $8C

    nop                                           ; $62BE: $00
    sub h                                         ; $62BF: $94
    jr nz, jr_026_624E                            ; $62C0: $20 $8C

    nop                                           ; $62C2: $00
    sub h                                         ; $62C3: $94
    jr nz, @-$72                                  ; $62C4: $20 $8C

    nop                                           ; $62C6: $00
    sub h                                         ; $62C7: $94
    jr nz, jr_026_6256                            ; $62C8: $20 $8C

    nop                                           ; $62CA: $00
    sub h                                         ; $62CB: $94
    jr nz, jr_026_628F                            ; $62CC: $20 $C1

    call z, RST_00                                ; $62CE: $CC $00 $00
    sub h                                         ; $62D1: $94
    ld l, [hl]                                    ; $62D2: $6E

jr_026_62D3:
    adc h                                         ; $62D3: $8C
    ld a, [hl]                                    ; $62D4: $7E
    sub h                                         ; $62D5: $94
    ld l, [hl]                                    ; $62D6: $6E

jr_026_62D7:
    adc h                                         ; $62D7: $8C
    ld a, [hl]                                    ; $62D8: $7E
    sub h                                         ; $62D9: $94
    ld l, [hl]                                    ; $62DA: $6E

jr_026_62DB:
    adc h                                         ; $62DB: $8C
    ld a, [hl]                                    ; $62DC: $7E
    sub h                                         ; $62DD: $94
    ld l, [hl]                                    ; $62DE: $6E

jr_026_62DF:
    adc h                                         ; $62DF: $8C
    ld a, [hl]                                    ; $62E0: $7E

jr_026_62E1:
    sub h                                         ; $62E1: $94
    ld l, [hl]                                    ; $62E2: $6E

jr_026_62E3:
    adc h                                         ; $62E3: $8C
    ld a, [hl]                                    ; $62E4: $7E
    sub h                                         ; $62E5: $94
    ld l, [hl]                                    ; $62E6: $6E
    adc h                                         ; $62E7: $8C
    ld a, [hl]                                    ; $62E8: $7E
    add d                                         ; $62E9: $82
    ld l, [hl]                                    ; $62EA: $6E
    ld [$F2C3], sp                                ; $62EB: $08 $C3 $F2
    push hl                                       ; $62EE: $E5
    pop hl                                        ; $62EF: $E1

jr_026_62F0:
    db $F4                                        ; $62F0: $F4
    jp hl                                         ; $62F1: $E9


    or $E5                                        ; $62F2: $F6 $E5
    adc d                                         ; $62F4: $8A
    ld l, [hl]                                    ; $62F5: $6E
    adc h                                         ; $62F6: $8C
    ld a, [hl]                                    ; $62F7: $7E
    add d                                         ; $62F8: $82
    ld l, [hl]                                    ; $62F9: $6E
    add hl, bc                                    ; $62FA: $09

jr_026_62FB:
    pop bc                                        ; $62FB: $C1

jr_026_62FC:
    di                                            ; $62FC: $F3
    di                                            ; $62FD: $F3
    jp hl                                         ; $62FE: $E9


jr_026_62FF:
    di                                            ; $62FF: $F3
    db $F4                                        ; $6300: $F4
    pop hl                                        ; $6301: $E1
    xor $F4                                       ; $6302: $EE $F4
    adc c                                         ; $6304: $89
    ld l, [hl]                                    ; $6305: $6E
    adc h                                         ; $6306: $8C
    ld a, [hl]                                    ; $6307: $7E
    sub h                                         ; $6308: $94
    ld l, [hl]                                    ; $6309: $6E
    adc h                                         ; $630A: $8C
    ld a, [hl]                                    ; $630B: $7E
    sub h                                         ; $630C: $94
    ld l, [hl]                                    ; $630D: $6E

jr_026_630E:
    adc h                                         ; $630E: $8C
    ld a, [hl]                                    ; $630F: $7E
    add a                                         ; $6310: $87
    ld l, [hl]                                    ; $6311: $6E

jr_026_6312:
    dec bc                                        ; $6312: $0B
    jp nc, $E1F9                                  ; $6313: $D2 $F9 $E1

jr_026_6316:
    xor $6E                                       ; $6316: $EE $6E
    db $D3                                        ; $6318: $D3
    add sp, -$0E                                  ; $6319: $E8 $F2
    push hl                                       ; $631B: $E5
    or $E5                                        ; $631C: $F6 $E5

jr_026_631E:
    add d                                         ; $631E: $82
    ld l, [hl]                                    ; $631F: $6E
    adc h                                         ; $6320: $8C
    ld a, [hl]                                    ; $6321: $7E

jr_026_6322:
    sub h                                         ; $6322: $94
    ld l, [hl]                                    ; $6323: $6E
    adc h                                         ; $6324: $8C
    ld a, [hl]                                    ; $6325: $7E

jr_026_6326:
    sub h                                         ; $6326: $94
    ld l, [hl]                                    ; $6327: $6E
    adc h                                         ; $6328: $8C
    ld a, [hl]                                    ; $6329: $7E
    sub h                                         ; $632A: $94
    ld l, [hl]                                    ; $632B: $6E
    adc h                                         ; $632C: $8C
    ld a, [hl]                                    ; $632D: $7E
    sub h                                         ; $632E: $94
    ld l, [hl]                                    ; $632F: $6E
    adc h                                         ; $6330: $8C
    ld a, [hl]                                    ; $6331: $7E
    sub h                                         ; $6332: $94
    ld l, [hl]                                    ; $6333: $6E
    adc h                                         ; $6334: $8C
    ld a, [hl]                                    ; $6335: $7E
    sub h                                         ; $6336: $94
    ld l, [hl]                                    ; $6337: $6E
    adc h                                         ; $6338: $8C
    ld a, [hl]                                    ; $6339: $7E
    sub h                                         ; $633A: $94
    ld l, [hl]                                    ; $633B: $6E
    pop bc                                        ; $633C: $C1
    call z, $007E                                 ; $633D: $CC $7E $00
    sub h                                         ; $6340: $94
    jr nz, @-$72                                  ; $6341: $20 $8C

    nop                                           ; $6343: $00
    sub h                                         ; $6344: $94
    jr nz, jr_026_62D3                            ; $6345: $20 $8C

    nop                                           ; $6347: $00
    sub h                                         ; $6348: $94
    jr nz, jr_026_62D7                            ; $6349: $20 $8C

    nop                                           ; $634B: $00
    sub h                                         ; $634C: $94
    jr nz, jr_026_62DB                            ; $634D: $20 $8C

    nop                                           ; $634F: $00
    sub h                                         ; $6350: $94
    jr nz, jr_026_62DF                            ; $6351: $20 $8C

    nop                                           ; $6353: $00
    sub h                                         ; $6354: $94
    jr nz, jr_026_62E3                            ; $6355: $20 $8C

    nop                                           ; $6357: $00
    add d                                         ; $6358: $82
    jr nz, jr_026_62E1                            ; $6359: $20 $86

    ld [$2001], sp                                ; $635B: $08 $01 $20
    add e                                         ; $635E: $83

jr_026_635F:
    ld [$2088], sp                                ; $635F: $08 $88 $20
    adc h                                         ; $6362: $8C
    nop                                           ; $6363: $00
    add d                                         ; $6364: $82
    jr nz, jr_026_62F0                            ; $6365: $20 $89

    ld [$2089], sp                                ; $6367: $08 $89 $20
    adc h                                         ; $636A: $8C
    nop                                           ; $636B: $00
    sub h                                         ; $636C: $94
    jr nz, jr_026_62FB                            ; $636D: $20 $8C

    nop                                           ; $636F: $00
    sub h                                         ; $6370: $94
    jr nz, jr_026_62FF                            ; $6371: $20 $8C

    nop                                           ; $6373: $00
    adc b                                         ; $6374: $88
    jr nz, jr_026_62FC                            ; $6375: $20 $85

    ld [$2002], sp                                ; $6377: $08 $02 $20
    ld [$2882], sp                                ; $637A: $08 $82 $28
    ld bc, $8208                                  ; $637D: $01 $08 $82
    jr nz, jr_026_630E                            ; $6380: $20 $8C

    nop                                           ; $6382: $00
    sub h                                         ; $6383: $94
    jr nz, jr_026_6312                            ; $6384: $20 $8C

    nop                                           ; $6386: $00
    sub h                                         ; $6387: $94
    jr nz, jr_026_6316                            ; $6388: $20 $8C

    nop                                           ; $638A: $00
    sub h                                         ; $638B: $94
    jr nz, @-$72                                  ; $638C: $20 $8C

    nop                                           ; $638E: $00
    sub h                                         ; $638F: $94
    jr nz, jr_026_631E                            ; $6390: $20 $8C

    nop                                           ; $6392: $00
    sub h                                         ; $6393: $94
    jr nz, jr_026_6322                            ; $6394: $20 $8C

    nop                                           ; $6396: $00
    sub h                                         ; $6397: $94
    jr nz, jr_026_6326                            ; $6398: $20 $8C

    nop                                           ; $639A: $00
    sub h                                         ; $639B: $94
    jr nz, jr_026_635F                            ; $639C: $20 $C1

    call z, RST_00                                ; $639E: $CC $00 $00

jr_026_63A1:
    sub h                                         ; $63A1: $94
    ld l, [hl]                                    ; $63A2: $6E
    adc h                                         ; $63A3: $8C
    ld a, [hl]                                    ; $63A4: $7E

jr_026_63A5:
    sub h                                         ; $63A5: $94
    ld l, [hl]                                    ; $63A6: $6E
    adc h                                         ; $63A7: $8C
    ld a, [hl]                                    ; $63A8: $7E

jr_026_63A9:
    sub h                                         ; $63A9: $94
    ld l, [hl]                                    ; $63AA: $6E
    adc h                                         ; $63AB: $8C
    ld a, [hl]                                    ; $63AC: $7E

jr_026_63AD:
    sub h                                         ; $63AD: $94
    ld l, [hl]                                    ; $63AE: $6E
    adc h                                         ; $63AF: $8C
    ld a, [hl]                                    ; $63B0: $7E

jr_026_63B1:
    sub h                                         ; $63B1: $94
    ld l, [hl]                                    ; $63B2: $6E
    adc h                                         ; $63B3: $8C
    ld a, [hl]                                    ; $63B4: $7E

jr_026_63B5:
    sub h                                         ; $63B5: $94
    ld l, [hl]                                    ; $63B6: $6E
    adc h                                         ; $63B7: $8C
    ld a, [hl]                                    ; $63B8: $7E
    add d                                         ; $63B9: $82
    ld l, [hl]                                    ; $63BA: $6E
    ld a, [bc]                                    ; $63BB: $0A
    pop bc                                        ; $63BC: $C1
    ld a, [c]                                     ; $63BD: $F2
    db $F4                                        ; $63BE: $F4
    jp hl                                         ; $63BF: $E9


jr_026_63C0:
    di                                            ; $63C0: $F3
    db $F4                                        ; $63C1: $F4
    ld l, [hl]                                    ; $63C2: $6E
    pop hl                                        ; $63C3: $E1
    xor $E4                                       ; $63C4: $EE $E4
    adc b                                         ; $63C6: $88
    ld l, [hl]                                    ; $63C7: $6E
    adc h                                         ; $63C8: $8C
    ld a, [hl]                                    ; $63C9: $7E
    add d                                         ; $63CA: $82
    ld l, [hl]                                    ; $63CB: $6E
    add hl, bc                                    ; $63CC: $09
    rst $10                                       ; $63CD: $D7
    push hl                                       ; $63CE: $E5
    ld [c], a                                     ; $63CF: $E2
    db $ED                                        ; $63D0: $ED
    pop hl                                        ; $63D1: $E1
    di                                            ; $63D2: $F3

jr_026_63D3:
    db $F4                                        ; $63D3: $F4

jr_026_63D4:
    push hl                                       ; $63D4: $E5
    ld a, [c]                                     ; $63D5: $F2
    adc c                                         ; $63D6: $89
    ld l, [hl]                                    ; $63D7: $6E

jr_026_63D8:
    adc h                                         ; $63D8: $8C
    ld a, [hl]                                    ; $63D9: $7E
    sub h                                         ; $63DA: $94
    ld l, [hl]                                    ; $63DB: $6E
    adc h                                         ; $63DC: $8C
    ld a, [hl]                                    ; $63DD: $7E
    sub h                                         ; $63DE: $94
    ld l, [hl]                                    ; $63DF: $6E
    adc h                                         ; $63E0: $8C
    ld a, [hl]                                    ; $63E1: $7E
    adc b                                         ; $63E2: $88
    ld l, [hl]                                    ; $63E3: $6E
    rlca                                          ; $63E4: $07
    db $D3                                        ; $63E5: $D3
    add sp, -$1F                                  ; $63E6: $E8 $E1

jr_026_63E8:
    rst $30                                       ; $63E8: $F7
    xor $6E                                       ; $63E9: $EE $6E
    rst $10                                       ; $63EB: $D7

jr_026_63EC:
    add d                                         ; $63EC: $82
    rst $28                                       ; $63ED: $EF
    ld bc, $82E4                                  ; $63EE: $01 $E4 $82
    ld l, [hl]                                    ; $63F1: $6E
    adc h                                         ; $63F2: $8C
    ld a, [hl]                                    ; $63F3: $7E

jr_026_63F4:
    sub h                                         ; $63F4: $94
    ld l, [hl]                                    ; $63F5: $6E
    adc h                                         ; $63F6: $8C
    ld a, [hl]                                    ; $63F7: $7E

jr_026_63F8:
    sub h                                         ; $63F8: $94
    ld l, [hl]                                    ; $63F9: $6E
    adc h                                         ; $63FA: $8C
    ld a, [hl]                                    ; $63FB: $7E

jr_026_63FC:
    sub h                                         ; $63FC: $94
    ld l, [hl]                                    ; $63FD: $6E
    adc h                                         ; $63FE: $8C
    ld a, [hl]                                    ; $63FF: $7E
    sub h                                         ; $6400: $94
    ld l, [hl]                                    ; $6401: $6E
    adc h                                         ; $6402: $8C
    ld a, [hl]                                    ; $6403: $7E
    sub h                                         ; $6404: $94
    ld l, [hl]                                    ; $6405: $6E
    adc h                                         ; $6406: $8C
    ld a, [hl]                                    ; $6407: $7E
    sub h                                         ; $6408: $94
    ld l, [hl]                                    ; $6409: $6E
    adc h                                         ; $640A: $8C
    ld a, [hl]                                    ; $640B: $7E
    sub h                                         ; $640C: $94
    ld l, [hl]                                    ; $640D: $6E
    pop bc                                        ; $640E: $C1
    call z, $007E                                 ; $640F: $CC $7E $00
    sub h                                         ; $6412: $94
    jr nz, jr_026_63A1                            ; $6413: $20 $8C

    ld h, b                                       ; $6415: $60
    sub h                                         ; $6416: $94
    jr nz, jr_026_63A5                            ; $6417: $20 $8C

    ld h, b                                       ; $6419: $60
    sub h                                         ; $641A: $94
    jr nz, jr_026_63A9                            ; $641B: $20 $8C

    ld h, b                                       ; $641D: $60
    sub h                                         ; $641E: $94
    jr nz, jr_026_63AD                            ; $641F: $20 $8C

    ld h, b                                       ; $6421: $60
    sub h                                         ; $6422: $94
    jr nz, jr_026_63B1                            ; $6423: $20 $8C

    ld h, b                                       ; $6425: $60
    sub h                                         ; $6426: $94
    jr nz, jr_026_63B5                            ; $6427: $20 $8C

    ld h, b                                       ; $6429: $60
    add d                                         ; $642A: $82
    jr nz, jr_026_63B1                            ; $642B: $20 $84

    ld [$2801], sp                                ; $642D: $08 $01 $28
    add h                                         ; $6430: $84
    ld [$2802], sp                                ; $6431: $08 $02 $28
    ld [$2087], sp                                ; $6434: $08 $87 $20
    adc h                                         ; $6437: $8C
    ld h, b                                       ; $6438: $60
    add d                                         ; $6439: $82
    jr nz, jr_026_63C0                            ; $643A: $20 $84

    ld [$2001], sp                                ; $643C: $08 $01 $20
    adc c                                         ; $643F: $89
    ld [$2084], sp                                ; $6440: $08 $84 $20
    adc h                                         ; $6443: $8C
    ld h, b                                       ; $6444: $60
    sub h                                         ; $6445: $94
    jr nz, jr_026_63D4                            ; $6446: $20 $8C

    ld h, b                                       ; $6448: $60
    sub h                                         ; $6449: $94
    jr nz, jr_026_63D8                            ; $644A: $20 $8C

    ld h, b                                       ; $644C: $60
    add a                                         ; $644D: $87
    jr nz, jr_026_63D3                            ; $644E: $20 $83

    ld [$2001], sp                                ; $6450: $08 $01 $20
    add a                                         ; $6453: $87
    ld [$2082], sp                                ; $6454: $08 $82 $20
    adc h                                         ; $6457: $8C
    ld h, b                                       ; $6458: $60
    sub h                                         ; $6459: $94
    jr nz, jr_026_63E8                            ; $645A: $20 $8C

    ld h, b                                       ; $645C: $60
    sub h                                         ; $645D: $94
    jr nz, jr_026_63EC                            ; $645E: $20 $8C

    ld h, b                                       ; $6460: $60
    sub h                                         ; $6461: $94
    jr nz, @-$72                                  ; $6462: $20 $8C

    ld h, b                                       ; $6464: $60
    sub h                                         ; $6465: $94
    jr nz, jr_026_63F4                            ; $6466: $20 $8C

    ld h, b                                       ; $6468: $60
    sub h                                         ; $6469: $94
    jr nz, jr_026_63F8                            ; $646A: $20 $8C

    ld h, b                                       ; $646C: $60
    sub h                                         ; $646D: $94
    jr nz, jr_026_63FC                            ; $646E: $20 $8C

    ld h, b                                       ; $6470: $60
    sub h                                         ; $6471: $94
    jr nz, @-$3D                                  ; $6472: $20 $C1

    call z, $0060                                 ; $6474: $CC $60 $00
    sub h                                         ; $6477: $94
    ld l, [hl]                                    ; $6478: $6E
    adc h                                         ; $6479: $8C
    ld a, [hl]                                    ; $647A: $7E
    sub h                                         ; $647B: $94
    ld l, [hl]                                    ; $647C: $6E
    adc h                                         ; $647D: $8C

jr_026_647E:
    ld a, [hl]                                    ; $647E: $7E
    sub h                                         ; $647F: $94
    ld l, [hl]                                    ; $6480: $6E
    adc h                                         ; $6481: $8C
    ld a, [hl]                                    ; $6482: $7E
    sub h                                         ; $6483: $94
    ld l, [hl]                                    ; $6484: $6E
    adc h                                         ; $6485: $8C
    ld a, [hl]                                    ; $6486: $7E
    sub h                                         ; $6487: $94
    ld l, [hl]                                    ; $6488: $6E
    adc h                                         ; $6489: $8C
    ld a, [hl]                                    ; $648A: $7E
    sub h                                         ; $648B: $94
    ld l, [hl]                                    ; $648C: $6E
    adc h                                         ; $648D: $8C
    ld a, [hl]                                    ; $648E: $7E
    add d                                         ; $648F: $82
    ld l, [hl]                                    ; $6490: $6E

jr_026_6491:
    dec bc                                        ; $6491: $0B
    call $E7E1                                    ; $6492: $CD $E1 $E7
    jp hl                                         ; $6495: $E9


    xor l                                         ; $6496: $AD
    adc $E1                                       ; $6497: $CE $E1
    db $F4                                        ; $6499: $F4
    jp hl                                         ; $649A: $E9


    rst $28                                       ; $649B: $EF

jr_026_649C:
    xor $87                                       ; $649C: $EE $87
    ld l, [hl]                                    ; $649E: $6E
    adc h                                         ; $649F: $8C
    ld a, [hl]                                    ; $64A0: $7E
    add d                                         ; $64A1: $82
    ld l, [hl]                                    ; $64A2: $6E
    ld c, $C4                                     ; $64A3: $0E $C4
    push de                                       ; $64A5: $D5
    push bc                                       ; $64A6: $C5
    call z, $D76E                                 ; $64A7: $CC $6E $D7
    push hl                                       ; $64AA: $E5
    ld [c], a                                     ; $64AB: $E2
    db $ED                                        ; $64AC: $ED
    pop hl                                        ; $64AD: $E1
    di                                            ; $64AE: $F3
    db $F4                                        ; $64AF: $F4
    push hl                                       ; $64B0: $E5
    ld a, [c]                                     ; $64B1: $F2
    add h                                         ; $64B2: $84
    ld l, [hl]                                    ; $64B3: $6E
    adc h                                         ; $64B4: $8C
    ld a, [hl]                                    ; $64B5: $7E
    sub h                                         ; $64B6: $94
    ld l, [hl]                                    ; $64B7: $6E
    adc h                                         ; $64B8: $8C
    ld a, [hl]                                    ; $64B9: $7E
    sub h                                         ; $64BA: $94
    ld l, [hl]                                    ; $64BB: $6E
    adc h                                         ; $64BC: $8C
    ld a, [hl]                                    ; $64BD: $7E
    add a                                         ; $64BE: $87
    ld l, [hl]                                    ; $64BF: $6E
    ld b, $C4                                     ; $64C0: $06 $C4
    pop hl                                        ; $64C2: $E1
    xor $6E                                       ; $64C3: $EE $6E
    call nc, $82E9                                ; $64C5: $D4 $E9 $82
    ld [c], a                                     ; $64C8: $E2
    inc bc                                        ; $64C9: $03
    db $EC                                        ; $64CA: $EC
    push hl                                       ; $64CB: $E5
    di                                            ; $64CC: $F3
    add d                                         ; $64CD: $82
    ld l, [hl]                                    ; $64CE: $6E
    adc h                                         ; $64CF: $8C
    ld a, [hl]                                    ; $64D0: $7E
    sub h                                         ; $64D1: $94
    ld l, [hl]                                    ; $64D2: $6E
    adc h                                         ; $64D3: $8C
    ld a, [hl]                                    ; $64D4: $7E
    sub h                                         ; $64D5: $94
    ld l, [hl]                                    ; $64D6: $6E
    adc h                                         ; $64D7: $8C
    ld a, [hl]                                    ; $64D8: $7E
    sub h                                         ; $64D9: $94
    ld l, [hl]                                    ; $64DA: $6E
    adc h                                         ; $64DB: $8C
    ld a, [hl]                                    ; $64DC: $7E
    sub h                                         ; $64DD: $94
    ld l, [hl]                                    ; $64DE: $6E
    adc h                                         ; $64DF: $8C
    ld a, [hl]                                    ; $64E0: $7E
    sub h                                         ; $64E1: $94
    ld l, [hl]                                    ; $64E2: $6E
    adc h                                         ; $64E3: $8C
    ld a, [hl]                                    ; $64E4: $7E
    sub h                                         ; $64E5: $94
    ld l, [hl]                                    ; $64E6: $6E
    adc h                                         ; $64E7: $8C
    ld a, [hl]                                    ; $64E8: $7E
    sub h                                         ; $64E9: $94
    ld l, [hl]                                    ; $64EA: $6E
    pop bc                                        ; $64EB: $C1
    call z, $007E                                 ; $64EC: $CC $7E $00
    ret nz                                        ; $64EF: $C0

    and d                                         ; $64F0: $A2
    jr nz, jr_026_647E                            ; $64F1: $20 $8B

    ld [$2095], sp                                ; $64F3: $08 $95 $20
    adc c                                         ; $64F6: $89
    ld [$2802], sp                                ; $64F7: $08 $02 $28
    ld [$2095], sp                                ; $64FA: $08 $95 $20
    dec b                                         ; $64FD: $05
    ld [$2828], sp                                ; $64FE: $08 $28 $28
    ld [$8628], sp                                ; $6501: $08 $28 $86
    ld [$55C0], sp                                ; $6504: $08 $C0 $55
    jr nz, jr_026_6491                            ; $6507: $20 $88

    ld [$2001], sp                                ; $6509: $08 $01 $20
    add a                                         ; $650C: $87
    ld [$2090], sp                                ; $650D: $08 $90 $20
    ld b, $08                                     ; $6510: $06 $08
    jr z, @+$0A                                   ; $6512: $28 $08

    jr nz, jr_026_651E                            ; $6514: $20 $08

    jr z, jr_026_649C                             ; $6516: $28 $84

    ld [$94C2], sp                                ; $6518: $08 $C2 $94
    jr nz, jr_026_651D                            ; $651B: $20 $00

jr_026_651D:
    sub h                                         ; $651D: $94

jr_026_651E:
    ld l, [hl]                                    ; $651E: $6E
    adc h                                         ; $651F: $8C
    ld a, [hl]                                    ; $6520: $7E
    sub h                                         ; $6521: $94
    ld l, [hl]                                    ; $6522: $6E
    adc h                                         ; $6523: $8C
    ld a, [hl]                                    ; $6524: $7E
    sub h                                         ; $6525: $94
    ld l, [hl]                                    ; $6526: $6E
    adc h                                         ; $6527: $8C
    ld a, [hl]                                    ; $6528: $7E
    sub h                                         ; $6529: $94
    ld l, [hl]                                    ; $652A: $6E
    adc h                                         ; $652B: $8C
    ld a, [hl]                                    ; $652C: $7E
    sub h                                         ; $652D: $94
    ld l, [hl]                                    ; $652E: $6E
    adc h                                         ; $652F: $8C
    ld a, [hl]                                    ; $6530: $7E
    add d                                         ; $6531: $82
    ld l, [hl]                                    ; $6532: $6E
    dec bc                                        ; $6533: $0B
    ret                                           ; $6534: $C9


    xor $F4                                       ; $6535: $EE $F4
    push hl                                       ; $6537: $E5
    ld a, [c]                                     ; $6538: $F2
    pop hl                                        ; $6539: $E1
    db $E3                                        ; $653A: $E3
    db $F4                                        ; $653B: $F4
    jp hl                                         ; $653C: $E9


    or $E5                                        ; $653D: $F6 $E5
    add a                                         ; $653F: $87
    ld l, [hl]                                    ; $6540: $6E
    adc h                                         ; $6541: $8C
    ld a, [hl]                                    ; $6542: $7E
    add d                                         ; $6543: $82
    ld l, [hl]                                    ; $6544: $6E
    dec bc                                        ; $6545: $0B
    ret                                           ; $6546: $C9


    db $ED                                        ; $6547: $ED
    pop hl                                        ; $6548: $E1
    rst $20                                       ; $6549: $E7
    jp hl                                         ; $654A: $E9


    xor $E1                                       ; $654B: $EE $E1
    db $F4                                        ; $654D: $F4
    jp hl                                         ; $654E: $E9


    rst $28                                       ; $654F: $EF
    xor $87                                       ; $6550: $EE $87
    ld l, [hl]                                    ; $6552: $6E
    adc h                                         ; $6553: $8C
    ld a, [hl]                                    ; $6554: $7E
    add d                                         ; $6555: $82
    ld l, [hl]                                    ; $6556: $6E
    dec bc                                        ; $6557: $0B
    jp $ADEF                                      ; $6558: $C3 $EF $AD


    add $EF                                       ; $655B: $C6 $EF
    push af                                       ; $655D: $F5
    xor $E4                                       ; $655E: $EE $E4
    push hl                                       ; $6560: $E5
    ld a, [c]                                     ; $6561: $F2
    di                                            ; $6562: $F3
    add a                                         ; $6563: $87
    ld l, [hl]                                    ; $6564: $6E
    adc h                                         ; $6565: $8C
    ld a, [hl]                                    ; $6566: $7E
    sub h                                         ; $6567: $94
    ld l, [hl]                                    ; $6568: $6E
    adc h                                         ; $6569: $8C
    ld a, [hl]                                    ; $656A: $7E
    sub h                                         ; $656B: $94
    ld l, [hl]                                    ; $656C: $6E
    adc h                                         ; $656D: $8C
    ld a, [hl]                                    ; $656E: $7E
    add d                                         ; $656F: $82
    ld l, [hl]                                    ; $6570: $6E
    inc c                                         ; $6571: $0C
    db $D3                                        ; $6572: $D3
    db $F4                                        ; $6573: $F4
    push hl                                       ; $6574: $E5
    ld a, [c]                                     ; $6575: $F2
    db $EC                                        ; $6576: $EC
    jp hl                                         ; $6577: $E9


    xor $E7                                       ; $6578: $EE $E7
    ld l, [hl]                                    ; $657A: $6E
    rst $00                                       ; $657B: $C7
    ld a, [c]                                     ; $657C: $F2
    jp hl                                         ; $657D: $E9


    add d                                         ; $657E: $82
    and $02                                       ; $657F: $E6 $02
    jp hl                                         ; $6581: $E9


    xor $82                                       ; $6582: $EE $82
    ld l, [hl]                                    ; $6584: $6E
    adc h                                         ; $6585: $8C
    ld a, [hl]                                    ; $6586: $7E
    add d                                         ; $6587: $82
    ld l, [hl]                                    ; $6588: $6E
    ld b, $C4                                     ; $6589: $06 $C4
    rst $28                                       ; $658B: $EF
    xor $6E                                       ; $658C: $EE $6E
    call $82EF                                    ; $658E: $CD $EF $82
    ld a, [c]                                     ; $6591: $F2
    ld [bc], a                                    ; $6592: $02
    jp hl                                         ; $6593: $E9


    di                                            ; $6594: $F3
    adc b                                         ; $6595: $88
    ld l, [hl]                                    ; $6596: $6E
    adc h                                         ; $6597: $8C
    ld a, [hl]                                    ; $6598: $7E
    sub h                                         ; $6599: $94
    ld l, [hl]                                    ; $659A: $6E
    adc h                                         ; $659B: $8C
    ld a, [hl]                                    ; $659C: $7E
    sub h                                         ; $659D: $94
    ld l, [hl]                                    ; $659E: $6E
    adc h                                         ; $659F: $8C
    ld a, [hl]                                    ; $65A0: $7E
    sub h                                         ; $65A1: $94
    ld l, [hl]                                    ; $65A2: $6E
    adc h                                         ; $65A3: $8C
    ld a, [hl]                                    ; $65A4: $7E
    sub h                                         ; $65A5: $94
    ld l, [hl]                                    ; $65A6: $6E
    adc h                                         ; $65A7: $8C
    ld a, [hl]                                    ; $65A8: $7E
    sub h                                         ; $65A9: $94
    ld l, [hl]                                    ; $65AA: $6E
    adc h                                         ; $65AB: $8C
    ld a, [hl]                                    ; $65AC: $7E
    sub h                                         ; $65AD: $94
    ld l, [hl]                                    ; $65AE: $6E
    pop bc                                        ; $65AF: $C1
    call z, $007E                                 ; $65B0: $CC $7E $00
    ld bc, $96E0                                  ; $65B3: $01 $E0 $96
    cp h                                          ; $65B6: $BC
    ld d, c                                       ; $65B7: $51
    ld [bc], a                                    ; $65B8: $02
    ld [bc], a                                    ; $65B9: $02
    ld a, h                                       ; $65BA: $7C
    ld bc, $8800                                  ; $65BB: $01 $00 $88
    nop                                           ; $65BE: $00
    ld b, b                                       ; $65BF: $40
    db $10                                        ; $65C0: $10
    db $10                                        ; $65C1: $10
    ld b, $40                                     ; $65C2: $06 $40
    nop                                           ; $65C4: $00
    ld c, l                                       ; $65C5: $4D
    inc e                                         ; $65C6: $1C
    rla                                           ; $65C7: $17
    ld l, $FF                                     ; $65C8: $2E $FF
    ld a, a                                       ; $65CA: $7F
    ld b, b                                       ; $65CB: $40
    nop                                           ; $65CC: $00
    ld c, l                                       ; $65CD: $4D
    inc e                                         ; $65CE: $1C
    rla                                           ; $65CF: $17
    ld l, $FF                                     ; $65D0: $2E $FF
    ld a, a                                       ; $65D2: $7F
    ld b, b                                       ; $65D3: $40
    nop                                           ; $65D4: $00
    ld c, l                                       ; $65D5: $4D
    inc e                                         ; $65D6: $1C
    rla                                           ; $65D7: $17
    ld l, $FF                                     ; $65D8: $2E $FF
    ld a, a                                       ; $65DA: $7F
    ld b, b                                       ; $65DB: $40
    nop                                           ; $65DC: $00
    ld c, l                                       ; $65DD: $4D
    inc e                                         ; $65DE: $1C
    rla                                           ; $65DF: $17
    ld l, $FF                                     ; $65E0: $2E $FF
    ld a, a                                       ; $65E2: $7F
    ld b, b                                       ; $65E3: $40
    nop                                           ; $65E4: $00
    ld c, l                                       ; $65E5: $4D
    inc e                                         ; $65E6: $1C
    rla                                           ; $65E7: $17
    ld l, $FF                                     ; $65E8: $2E $FF
    ld a, a                                       ; $65EA: $7F
    ld b, b                                       ; $65EB: $40
    nop                                           ; $65EC: $00
    ld c, l                                       ; $65ED: $4D
    inc e                                         ; $65EE: $1C
    rla                                           ; $65EF: $17
    ld l, $FF                                     ; $65F0: $2E $FF
    ld a, a                                       ; $65F2: $7F
    ld b, b                                       ; $65F3: $40
    nop                                           ; $65F4: $00
    ld c, l                                       ; $65F5: $4D
    inc e                                         ; $65F6: $1C
    rla                                           ; $65F7: $17
    ld l, $FF                                     ; $65F8: $2E $FF
    ld a, a                                       ; $65FA: $7F
    ld b, b                                       ; $65FB: $40
    nop                                           ; $65FC: $00
    ld c, l                                       ; $65FD: $4D
    inc e                                         ; $65FE: $1C
    rla                                           ; $65FF: $17
    ld l, $FF                                     ; $6600: $2E $FF
    ld a, a                                       ; $6602: $7F
    ld b, b                                       ; $6603: $40
    db $10                                        ; $6604: $10
    dec de                                        ; $6605: $1B
    dec d                                         ; $6606: $15
    add hl, bc                                    ; $6607: $09
    ld de, $1626                                  ; $6608: $11 $26 $16
    ld l, c                                       ; $660B: $69
    ld b, d                                       ; $660C: $42
    dec de                                        ; $660D: $1B
    rra                                           ; $660E: $1F
    ld a, [bc]                                    ; $660F: $0A
    nop                                           ; $6610: $00
    dec b                                         ; $6611: $05
    rlca                                          ; $6612: $07
    nop                                           ; $6613: $00
    ld l, e                                       ; $6614: $6B
    ld c, d                                       ; $6615: $4A
    add hl, bc                                    ; $6616: $09
    nop                                           ; $6617: $00
    ld h, $0C                                     ; $6618: $26 $0C
    ld l, c                                       ; $661A: $69
    ld b, $11                                     ; $661B: $06 $11
    nop                                           ; $661D: $00
    add hl, bc                                    ; $661E: $09
    ld de, $AB20                                  ; $661F: $11 $20 $AB
    ld d, b                                       ; $6622: $50
    ld b, d                                       ; $6623: $42
    sub e                                         ; $6624: $93
    ld h, l                                       ; $6625: $65
    jr c, jr_026_666C                             ; $6626: $38 $44

    ld c, a                                       ; $6628: $4F
    ld h, h                                       ; $6629: $64
    ld a, [c]                                     ; $662A: $F2
    ld b, h                                       ; $662B: $44
    ld l, c                                       ; $662C: $69
    rst $30                                       ; $662D: $F7
    ld b, h                                       ; $662E: $44
    ld h, [hl]                                    ; $662F: $66
    ret nz                                        ; $6630: $C0

    ld e, h                                       ; $6631: $5C
    ld hl, $0005                                  ; $6632: $21 $05 $00
    add c                                         ; $6635: $81
    ld e, l                                       ; $6636: $5D
    dec b                                         ; $6637: $05
    ld a, [bc]                                    ; $6638: $0A

jr_026_6639:
    ld [hl], e                                    ; $6639: $73
    ret nc                                        ; $663A: $D0

    nop                                           ; $663B: $00
    jr nz, jr_026_6639                            ; $663C: $20 $FB

    ld d, b                                       ; $663E: $50
    ld [hl+], a                                   ; $663F: $22
    dec b                                         ; $6640: $05
    ld b, b                                       ; $6641: $40
    dec b                                         ; $6642: $05
    ld [bc], a                                    ; $6643: $02
    and h                                         ; $6644: $A4
    ld h, l                                       ; $6645: $65
    ld bc, $3805                                  ; $6646: $01 $05 $38
    ret nc                                        ; $6649: $D0

    nop                                           ; $664A: $00
    ld h, $2A                                     ; $664B: $26 $2A
    ld l, b                                       ; $664D: $68
    ld h, $52                                     ; $664E: $26 $52
    ld l, b                                       ; $6650: $68
    dec b                                         ; $6651: $05
    inc bc                                        ; $6652: $03
    and h                                         ; $6653: $A4
    ld h, l                                       ; $6654: $65
    ld bc, $2D04                                  ; $6655: $01 $04 $2D
    ret nc                                        ; $6658: $D0

    nop                                           ; $6659: $00
    ld h, $37                                     ; $665A: $26 $37
    ld l, b                                       ; $665C: $68
    ld h, $90                                     ; $665D: $26 $90
    ld l, b                                       ; $665F: $68
    dec b                                         ; $6660: $05
    inc b                                         ; $6661: $04
    and h                                         ; $6662: $A4
    ld h, l                                       ; $6663: $65
    ld bc, $2203                                  ; $6664: $01 $03 $22
    ret nc                                        ; $6667: $D0

    nop                                           ; $6668: $00
    ld h, $44                                     ; $6669: $26 $44
    ld l, b                                       ; $666B: $68

jr_026_666C:
    ld h, $CE                                     ; $666C: $26 $CE
    ld l, b                                       ; $666E: $68
    dec b                                         ; $666F: $05
    dec b                                         ; $6670: $05
    ld l, e                                       ; $6671: $6B
    ld c, d                                       ; $6672: $4A
    ld [bc], a                                    ; $6673: $02
    rlca                                          ; $6674: $07
    ld c, a                                       ; $6675: $4F
    ret nc                                        ; $6676: $D0

    jr nz, jr_026_669B                            ; $6677: $20 $22

    inc b                                         ; $6679: $04
    ld b, b                                       ; $667A: $40
    ld [hl+], a                                   ; $667B: $22
    inc b                                         ; $667C: $04
    ld b, b                                       ; $667D: $40
    dec b                                         ; $667E: $05
    ld b, $6B                                     ; $667F: $06 $6B
    ld c, d                                       ; $6681: $4A
    inc b                                         ; $6682: $04
    rlca                                          ; $6683: $07
    ld d, c                                       ; $6684: $51
    ret nc                                        ; $6685: $D0

    jr nz, jr_026_66AA                            ; $6686: $20 $22

    inc b                                         ; $6688: $04
    ld b, b                                       ; $6689: $40
    ld [hl+], a                                   ; $668A: $22
    inc b                                         ; $668B: $04
    ld b, b                                       ; $668C: $40
    dec b                                         ; $668D: $05
    rlca                                          ; $668E: $07
    ld l, e                                       ; $668F: $6B
    ld c, d                                       ; $6690: $4A
    ld b, $07                                     ; $6691: $06 $07
    ld d, e                                       ; $6693: $53
    ret nc                                        ; $6694: $D0

    jr nz, jr_026_66B9                            ; $6695: $20 $22

    inc b                                         ; $6697: $04
    ld b, b                                       ; $6698: $40
    ld [hl+], a                                   ; $6699: $22
    inc b                                         ; $669A: $04

jr_026_669B:
    ld b, b                                       ; $669B: $40
    dec b                                         ; $669C: $05
    ld [$4A6B], sp                                ; $669D: $08 $6B $4A
    ld [$5507], sp                                ; $66A0: $08 $07 $55

jr_026_66A3:
    ret nc                                        ; $66A3: $D0

    jr nz, jr_026_66C8                            ; $66A4: $20 $22

    inc b                                         ; $66A6: $04
    ld b, b                                       ; $66A7: $40
    ld [hl+], a                                   ; $66A8: $22
    inc b                                         ; $66A9: $04

jr_026_66AA:
    ld b, b                                       ; $66AA: $40
    dec b                                         ; $66AB: $05
    ld de, $4A6B                                  ; $66AC: $11 $6B $4A
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    ret nc                                        ; $66B2: $D0

    nop                                           ; $66B3: $00
    ld [hl+], a                                   ; $66B4: $22
    inc b                                         ; $66B5: $04
    ld b, b                                       ; $66B6: $40
    ld [hl+], a                                   ; $66B7: $22
    inc b                                         ; $66B8: $04

jr_026_66B9:
    ld b, b                                       ; $66B9: $40
    dec b                                         ; $66BA: $05
    ld [de], a                                    ; $66BB: $12
    ld l, e                                       ; $66BC: $6B
    ld c, d                                       ; $66BD: $4A
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    ret nc                                        ; $66C1: $D0

    nop                                           ; $66C2: $00
    ld h, $44                                     ; $66C3: $26 $44
    ld h, a                                       ; $66C5: $67
    ld [hl+], a                                   ; $66C6: $22
    inc b                                         ; $66C7: $04

jr_026_66C8:
    ld b, b                                       ; $66C8: $40
    dec b                                         ; $66C9: $05
    inc de                                        ; $66CA: $13
    ld l, e                                       ; $66CB: $6B
    ld c, d                                       ; $66CC: $4A
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    ret nc                                        ; $66D0: $D0

    ld b, b                                       ; $66D1: $40
    ld [hl+], a                                   ; $66D2: $22
    inc b                                         ; $66D3: $04
    ld b, b                                       ; $66D4: $40
    ld [hl+], a                                   ; $66D5: $22
    inc b                                         ; $66D6: $04
    ld b, b                                       ; $66D7: $40
    dec bc                                        ; $66D8: $0B
    ld de, $120B                                  ; $66D9: $11 $0B $12
    dec bc                                        ; $66DC: $0B
    inc de                                        ; $66DD: $13
    ld l, e                                       ; $66DE: $6B
    ld [$600D], sp                                ; $66DF: $08 $0D $60
    ld b, a                                       ; $66E2: $47
    nop                                           ; $66E3: $00
    add h                                         ; $66E4: $84
    nop                                           ; $66E5: $00
    ld l, e                                       ; $66E6: $6B
    dec b                                         ; $66E7: $05
    daa                                           ; $66E8: $27
    ld [hl], b                                    ; $66E9: $70
    ld d, [hl]                                    ; $66EA: $56
    nop                                           ; $66EB: $00
    add b                                         ; $66EC: $80
    nop                                           ; $66ED: $00
    ld l, e                                       ; $66EE: $6B
    ld b, $27                                     ; $66EF: $06 $27
    ret nz                                        ; $66F1: $C0

    ld d, [hl]                                    ; $66F2: $56
    ld d, b                                       ; $66F3: $50
    add b                                         ; $66F4: $80
    nop                                           ; $66F5: $00
    dec bc                                        ; $66F6: $0B
    nop                                           ; $66F7: $00
    dec bc                                        ; $66F8: $0B
    ld [bc], a                                    ; $66F9: $02
    dec bc                                        ; $66FA: $0B
    inc bc                                        ; $66FB: $03
    dec bc                                        ; $66FC: $0B
    inc b                                         ; $66FD: $04
    dec bc                                        ; $66FE: $0B
    dec b                                         ; $66FF: $05
    dec bc                                        ; $6700: $0B
    ld b, $0B                                     ; $6701: $06 $0B
    rlca                                          ; $6703: $07
    dec bc                                        ; $6704: $0B
    ld [$8200], sp                                ; $6705: $08 $00 $82
    ld l, a                                       ; $6708: $6F
    rrca                                          ; $6709: $0F
    rst $38                                       ; $670A: $FF
    ld a, a                                       ; $670B: $7F
    rra                                           ; $670C: $1F
    jr nz, jr_026_66A3                            ; $670D: $20 $94

    halt                                          ; $670F: $76
    jr nz, jr_026_6721                            ; $6710: $20 $0F

    ld e, e                                       ; $6712: $5B
    ld h, $17                                     ; $6713: $26 $17
    ld h, a                                       ; $6715: $67
    ld b, d                                       ; $6716: $42
    ld b, b                                       ; $6717: $40
    rst $38                                       ; $6718: $FF
    ld b, b                                       ; $6719: $40
    rst $38                                       ; $671A: $FF
    ld b, b                                       ; $671B: $40
    rst $38                                       ; $671C: $FF
    ld b, b                                       ; $671D: $40
    rst $38                                       ; $671E: $FF
    ld b, b                                       ; $671F: $40
    rst $38                                       ; $6720: $FF

jr_026_6721:
    ld b, b                                       ; $6721: $40
    rst $38                                       ; $6722: $FF
    ld b, b                                       ; $6723: $40
    rst $38                                       ; $6724: $FF
    ld b, b                                       ; $6725: $40
    rst $38                                       ; $6726: $FF
    rra                                           ; $6727: $1F
    ld bc, $549F                                  ; $6728: $01 $9F $54
    ld c, c                                       ; $672B: $49
    ld c, l                                       ; $672C: $4D
    ld b, l                                       ; $672D: $45
    daa                                           ; $672E: $27
    ld d, e                                       ; $672F: $53
    jr nz, jr_026_6787                            ; $6730: $20 $55

    ld d, b                                       ; $6732: $50
    ld hl, $FDFE                                  ; $6733: $21 $FE $FD
    sbc d                                         ; $6736: $9A
    ld b, b                                       ; $6737: $40

jr_026_6738:
    ld [$0F6E], sp                                ; $6738: $08 $6E $0F
    rst $38                                       ; $673B: $FF
    ld a, a                                       ; $673C: $7F
    halt                                          ; $673D: $76
    jr nz, @+$11                                  ; $673E: $20 $0F

    ld b, l                                       ; $6740: $45
    inc e                                         ; $6741: $1C
    ld [bc], a                                    ; $6742: $02
    ld [hl], h                                    ; $6743: $74
    ld b, b                                       ; $6744: $40
    ld d, b                                       ; $6745: $50
    ld b, a                                       ; $6746: $47
    ld [$6026], sp                                ; $6747: $08 $26 $60
    ld h, a                                       ; $674A: $67
    ld h, $74                                     ; $674B: $26 $74
    ld h, a                                       ; $674D: $67
    ld h, $88                                     ; $674E: $26 $88
    ld h, a                                       ; $6750: $67
    ld h, $9C                                     ; $6751: $26 $9C
    ld h, a                                       ; $6753: $67
    ld h, $B0                                     ; $6754: $26 $B0
    ld h, a                                       ; $6756: $67
    ld h, $B0                                     ; $6757: $26 $B0
    ld h, a                                       ; $6759: $67
    ld h, $B0                                     ; $675A: $26 $B0
    ld h, a                                       ; $675C: $67
    ld h, $B0                                     ; $675D: $26 $B0
    ld h, a                                       ; $675F: $67
    dec b                                         ; $6760: $05
    inc de                                        ; $6761: $13
    and h                                         ; $6762: $A4
    ld h, l                                       ; $6763: $65
    ld [bc], a                                    ; $6764: $02
    ld [bc], a                                    ; $6765: $02
    jr jr_026_6738                                ; $6766: $18 $D0

    ld b, b                                       ; $6768: $40
    ld de, $718E                                  ; $6769: $11 $8E $71
    ld h, $C2                                     ; $676C: $26 $C2
    ld h, a                                       ; $676E: $67
    ld b, b                                       ; $676F: $40
    jr nc, jr_026_67B8                            ; $6770: $30 $46

    ld b, h                                       ; $6772: $44
    ld h, a                                       ; $6773: $67
    dec b                                         ; $6774: $05
    inc de                                        ; $6775: $13
    and h                                         ; $6776: $A4
    ld h, l                                       ; $6777: $65
    inc b                                         ; $6778: $04
    ld [bc], a                                    ; $6779: $02
    ld a, [de]                                    ; $677A: $1A
    ret nc                                        ; $677B: $D0

    ld b, b                                       ; $677C: $40
    ld de, $718E                                  ; $677D: $11 $8E $71
    ld h, $C2                                     ; $6780: $26 $C2
    ld h, a                                       ; $6782: $67
    ld b, b                                       ; $6783: $40
    jr nc, jr_026_67CC                            ; $6784: $30 $46

    ld b, h                                       ; $6786: $44

jr_026_6787:
    ld h, a                                       ; $6787: $67
    dec b                                         ; $6788: $05
    inc de                                        ; $6789: $13
    and h                                         ; $678A: $A4
    ld h, l                                       ; $678B: $65
    ld b, $02                                     ; $678C: $06 $02
    inc e                                         ; $678E: $1C
    ret nc                                        ; $678F: $D0

    ld b, b                                       ; $6790: $40
    ld de, $718E                                  ; $6791: $11 $8E $71
    ld h, $C2                                     ; $6794: $26 $C2
    ld h, a                                       ; $6796: $67
    ld b, b                                       ; $6797: $40
    jr nc, jr_026_67E0                            ; $6798: $30 $46

    ld b, h                                       ; $679A: $44
    ld h, a                                       ; $679B: $67
    dec b                                         ; $679C: $05
    inc de                                        ; $679D: $13
    and h                                         ; $679E: $A4
    ld h, l                                       ; $679F: $65
    ld [$1E02], sp                                ; $67A0: $08 $02 $1E
    ret nc                                        ; $67A3: $D0

    ld b, b                                       ; $67A4: $40
    ld de, $718E                                  ; $67A5: $11 $8E $71
    ld h, $C2                                     ; $67A8: $26 $C2
    ld h, a                                       ; $67AA: $67
    ld b, b                                       ; $67AB: $40
    jr nc, jr_026_67F4                            ; $67AC: $30 $46

    ld b, h                                       ; $67AE: $44
    ld h, a                                       ; $67AF: $67
    dec b                                         ; $67B0: $05
    inc de                                        ; $67B1: $13
    ld l, e                                       ; $67B2: $6B
    ld c, d                                       ; $67B3: $4A
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    ret nc                                        ; $67B7: $D0

jr_026_67B8:
    ld b, b                                       ; $67B8: $40
    ld [hl+], a                                   ; $67B9: $22
    inc b                                         ; $67BA: $04
    ld b, b                                       ; $67BB: $40
    ld [hl+], a                                   ; $67BC: $22
    inc b                                         ; $67BD: $04
    ld b, b                                       ; $67BE: $40
    ld b, [hl]                                    ; $67BF: $46
    ld b, h                                       ; $67C0: $44
    ld h, a                                       ; $67C1: $67
    dec b                                         ; $67C2: $05
    nop                                           ; $67C3: $00
    ld l, e                                       ; $67C4: $6B
    ld c, d                                       ; $67C5: $4A
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    ret nc                                        ; $67C9: $D0

    nop                                           ; $67CA: $00
    ld [hl+], a                                   ; $67CB: $22

jr_026_67CC:
    inc b                                         ; $67CC: $04
    ld b, b                                       ; $67CD: $40
    ld [hl+], a                                   ; $67CE: $22
    dec b                                         ; $67CF: $05
    ld b, b                                       ; $67D0: $40
    inc d                                         ; $67D1: $14
    ld de, $718E                                  ; $67D2: $11 $8E $71
    add hl, bc                                    ; $67D5: $09
    ld [de], a                                    ; $67D6: $12
    ld [hl+], a                                   ; $67D7: $22
    inc b                                         ; $67D8: $04
    ld b, b                                       ; $67D9: $40
    ld e, d                                       ; $67DA: $5A
    ld h, $DF                                     ; $67DB: $26 $DF
    ld h, a                                       ; $67DD: $67
    ld b, d                                       ; $67DE: $42
    add hl, bc                                    ; $67DF: $09

jr_026_67E0:
    ld de, $1626                                  ; $67E0: $11 $26 $16
    ld l, c                                       ; $67E3: $69
    and [hl]                                      ; $67E4: $A6
    or b                                          ; $67E5: $B0
    and d                                         ; $67E6: $A2
    dec bc                                        ; $67E7: $0B
    ld bc, $A2B0                                  ; $67E8: $01 $B0 $A2
    dec b                                         ; $67EB: $05
    dec b                                         ; $67EC: $05
    add e                                         ; $67ED: $83
    ld [bc], a                                    ; $67EE: $02
    ld [bc], a                                    ; $67EF: $02
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    add e                                         ; $67F2: $83
    ld [bc], a                                    ; $67F3: $02

jr_026_67F4:
    cp $02                                        ; $67F4: $FE $02
    nop                                           ; $67F6: $00
    add e                                         ; $67F7: $83
    ld [bc], a                                    ; $67F8: $02
    cp $00                                        ; $67F9: $FE $00
    nop                                           ; $67FB: $00
    add e                                         ; $67FC: $83
    ld [bc], a                                    ; $67FD: $02
    ld [bc], a                                    ; $67FE: $02
    cp $00                                        ; $67FF: $FE $00
    add e                                         ; $6801: $83
    ld bc, $0200                                  ; $6802: $01 $00 $02
    nop                                           ; $6805: $00
    add e                                         ; $6806: $83
    ld bc, $0002                                  ; $6807: $01 $02 $00
    nop                                           ; $680A: $00
    add e                                         ; $680B: $83
    ld bc, $FE00                                  ; $680C: $01 $00 $FE
    nop                                           ; $680F: $00
    add e                                         ; $6810: $83
    ld bc, $00FE                                  ; $6811: $01 $FE $00
    nop                                           ; $6814: $00
    dec b                                         ; $6815: $05
    inc de                                        ; $6816: $13
    ld l, e                                       ; $6817: $6B
    ld c, d                                       ; $6818: $4A
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    ret nc                                        ; $681C: $D0

    ld b, b                                       ; $681D: $40
    ld [hl+], a                                   ; $681E: $22
    inc b                                         ; $681F: $04
    ld b, b                                       ; $6820: $40
    ld [hl+], a                                   ; $6821: $22
    inc b                                         ; $6822: $04
    ld b, b                                       ; $6823: $40
    add hl, bc                                    ; $6824: $09
    ld [de], a                                    ; $6825: $12
    ld h, $44                                     ; $6826: $26 $44
    ld h, a                                       ; $6828: $67
    ld b, d                                       ; $6829: $42
    dec d                                         ; $682A: $15
    ld de, $70D3                                  ; $682B: $11 $D3 $70
    add b                                         ; $682E: $80
    ld de, $70F1                                  ; $682F: $11 $F1 $70
    add b                                         ; $6832: $80
    nop                                           ; $6833: $00
    ld b, [hl]                                    ; $6834: $46
    ld a, [hl+]                                   ; $6835: $2A
    ld l, b                                       ; $6836: $68
    dec d                                         ; $6837: $15
    ld de, $70DD                                  ; $6838: $11 $DD $70
    ld b, b                                       ; $683B: $40
    ld de, $70FB                                  ; $683C: $11 $FB $70
    ld b, b                                       ; $683F: $40
    nop                                           ; $6840: $00
    ld b, [hl]                                    ; $6841: $46
    scf                                           ; $6842: $37
    ld l, b                                       ; $6843: $68
    dec d                                         ; $6844: $15
    ld de, $70E7                                  ; $6845: $11 $E7 $70
    ld a, [hl+]                                   ; $6848: $2A
    ld de, $7105                                  ; $6849: $11 $05 $71
    ld a, [hl+]                                   ; $684C: $2A
    nop                                           ; $684D: $00
    ld b, [hl]                                    ; $684E: $46
    ld b, h                                       ; $684F: $44
    ld l, b                                       ; $6850: $68
    ld b, d                                       ; $6851: $42
    dec b                                         ; $6852: $05
    nop                                           ; $6853: $00
    ld l, e                                       ; $6854: $6B
    ld c, d                                       ; $6855: $4A
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    ret nc                                        ; $6859: $D0

    nop                                           ; $685A: $00
    ld [hl+], a                                   ; $685B: $22
    inc b                                         ; $685C: $04
    ld b, b                                       ; $685D: $40
    ld [hl+], a                                   ; $685E: $22
    dec b                                         ; $685F: $05
    ld b, b                                       ; $6860: $40
    ld b, b                                       ; $6861: $40
    ld [$151B], sp                                ; $6862: $08 $1B $15
    inc d                                         ; $6865: $14
    ld de, $710F                                  ; $6866: $11 $0F $71
    ld b, b                                       ; $6869: $40
    jr jr_026_68C6                                ; $686A: $18 $5A

    ld h, $70                                     ; $686C: $26 $70
    ld l, b                                       ; $686E: $68
    ld b, d                                       ; $686F: $42
    add hl, bc                                    ; $6870: $09
    ld de, $1626                                  ; $6871: $11 $26 $16
    ld l, c                                       ; $6874: $69
    ld b, b                                       ; $6875: $40
    ld a, [bc]                                    ; $6876: $0A
    and [hl]                                      ; $6877: $A6
    or b                                          ; $6878: $B0
    and d                                         ; $6879: $A2
    dec bc                                        ; $687A: $0B
    ld bc, $A2B0                                  ; $687B: $01 $B0 $A2
    dec b                                         ; $687E: $05
    ld bc, $0205                                  ; $687F: $01 $05 $02
    and h                                         ; $6882: $A4
    ld h, l                                       ; $6883: $65
    ld bc, $3805                                  ; $6884: $01 $05 $38
    ret nc                                        ; $6887: $D0

    nop                                           ; $6888: $00
    ld h, $2A                                     ; $6889: $26 $2A
    ld l, b                                       ; $688B: $68
    ld h, $52                                     ; $688C: $26 $52
    ld l, b                                       ; $688E: $68
    ld b, d                                       ; $688F: $42
    dec b                                         ; $6890: $05
    nop                                           ; $6891: $00
    ld l, e                                       ; $6892: $6B
    ld c, d                                       ; $6893: $4A
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    ret nc                                        ; $6897: $D0

    nop                                           ; $6898: $00
    ld [hl+], a                                   ; $6899: $22
    inc b                                         ; $689A: $04
    ld b, b                                       ; $689B: $40
    ld [hl+], a                                   ; $689C: $22
    dec b                                         ; $689D: $05
    ld b, b                                       ; $689E: $40
    ld b, b                                       ; $689F: $40
    ld [$151B], sp                                ; $68A0: $08 $1B $15
    inc d                                         ; $68A3: $14
    ld de, $710F                                  ; $68A4: $11 $0F $71
    ld b, b                                       ; $68A7: $40
    jr jr_026_6904                                ; $68A8: $18 $5A

    ld h, $AE                                     ; $68AA: $26 $AE
    ld l, b                                       ; $68AC: $68
    ld b, d                                       ; $68AD: $42
    add hl, bc                                    ; $68AE: $09
    ld de, $1626                                  ; $68AF: $11 $26 $16
    ld l, c                                       ; $68B2: $69
    ld b, b                                       ; $68B3: $40
    ld a, [bc]                                    ; $68B4: $0A
    and [hl]                                      ; $68B5: $A6
    or b                                          ; $68B6: $B0
    and d                                         ; $68B7: $A2
    dec bc                                        ; $68B8: $0B
    ld bc, $A2B0                                  ; $68B9: $01 $B0 $A2
    dec b                                         ; $68BC: $05
    ld [bc], a                                    ; $68BD: $02
    dec b                                         ; $68BE: $05
    inc bc                                        ; $68BF: $03
    and h                                         ; $68C0: $A4
    ld h, l                                       ; $68C1: $65
    ld bc, $2D04                                  ; $68C2: $01 $04 $2D
    ret nc                                        ; $68C5: $D0

jr_026_68C6:
    nop                                           ; $68C6: $00
    ld h, $37                                     ; $68C7: $26 $37
    ld l, b                                       ; $68C9: $68
    ld h, $90                                     ; $68CA: $26 $90
    ld l, b                                       ; $68CC: $68
    ld b, d                                       ; $68CD: $42
    dec b                                         ; $68CE: $05

jr_026_68CF:
    nop                                           ; $68CF: $00
    ld l, e                                       ; $68D0: $6B
    ld c, d                                       ; $68D1: $4A
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    ret nc                                        ; $68D5: $D0

    nop                                           ; $68D6: $00
    ld [hl+], a                                   ; $68D7: $22
    inc b                                         ; $68D8: $04
    ld b, b                                       ; $68D9: $40
    ld [hl+], a                                   ; $68DA: $22
    dec b                                         ; $68DB: $05
    ld b, b                                       ; $68DC: $40
    ld b, b                                       ; $68DD: $40
    ld [$151B], sp                                ; $68DE: $08 $1B $15
    inc d                                         ; $68E1: $14
    ld de, $710F                                  ; $68E2: $11 $0F $71
    ld b, b                                       ; $68E5: $40
    jr jr_026_6942                                ; $68E6: $18 $5A

    ld h, $EC                                     ; $68E8: $26 $EC
    ld l, b                                       ; $68EA: $68
    ld b, d                                       ; $68EB: $42
    add hl, bc                                    ; $68EC: $09
    ld de, $1626                                  ; $68ED: $11 $26 $16
    ld l, c                                       ; $68F0: $69
    ld b, b                                       ; $68F1: $40
    ld a, [bc]                                    ; $68F2: $0A
    and [hl]                                      ; $68F3: $A6
    or b                                          ; $68F4: $B0
    and d                                         ; $68F5: $A2
    dec bc                                        ; $68F6: $0B
    ld bc, $A2B0                                  ; $68F7: $01 $B0 $A2
    dec b                                         ; $68FA: $05
    inc bc                                        ; $68FB: $03
    dec b                                         ; $68FC: $05
    inc b                                         ; $68FD: $04
    and h                                         ; $68FE: $A4
    ld h, l                                       ; $68FF: $65
    ld bc, $2203                                  ; $6900: $01 $03 $22
    ret nc                                        ; $6903: $D0

jr_026_6904:
    nop                                           ; $6904: $00
    ld h, $44                                     ; $6905: $26 $44
    ld l, b                                       ; $6907: $68
    ld h, $CE                                     ; $6908: $26 $CE
    ld l, b                                       ; $690A: $68
    ld b, d                                       ; $690B: $42
    dec d                                         ; $690C: $15
    ld de, $70B5                                  ; $690D: $11 $B5 $70
    inc c                                         ; $6910: $0C
    nop                                           ; $6911: $00
    inc de                                        ; $6912: $13
    rst $10                                       ; $6913: $D7
    ld h, l                                       ; $6914: $65
    ld b, d                                       ; $6915: $42
    inc d                                         ; $6916: $14

jr_026_6917:
    jr nz, @-$53                                  ; $6917: $20 $AB

    ld d, b                                       ; $6919: $50
    ld a, [bc]                                    ; $691A: $0A
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    ld b, $00                                     ; $691D: $06 $00
    ld de, $0009                                  ; $691F: $11 $09 $00
    jr nz, jr_026_68CF                            ; $6922: $20 $AB

    ld d, b                                       ; $6924: $50
    rlca                                          ; $6925: $07
    nop                                           ; $6926: $00
    add c                                         ; $6927: $81
    ld e, l                                       ; $6928: $5D
    inc d                                         ; $6929: $14
    ld [hl+], a                                   ; $692A: $22
    inc b                                         ; $692B: $04
    ld b, b                                       ; $692C: $40
    ld b, d                                       ; $692D: $42
    ld [bc], a                                    ; $692E: $02
    rla                                           ; $692F: $17
    nop                                           ; $6930: $00
    ld a, [bc]                                    ; $6931: $0A
    rlca                                          ; $6932: $07
    ld b, l                                       ; $6933: $45
    dec h                                         ; $6934: $25
    ld e, h                                       ; $6935: $5C
    ld [hl], l                                    ; $6936: $75
    ld bc, $3108                                  ; $6937: $01 $08 $31
    dec b                                         ; $693A: $05
    nop                                           ; $693B: $00
    db $ED                                        ; $693C: $ED
    ld d, b                                       ; $693D: $50
    dec b                                         ; $693E: $05
    dec b                                         ; $693F: $05
    ld c, e                                       ; $6940: $4B
    ret nc                                        ; $6941: $D0

jr_026_6942:
    nop                                           ; $6942: $00
    jr nz, jr_026_697D                            ; $6943: $20 $38

    ld e, h                                       ; $6945: $5C
    ld [hl+], a                                   ; $6946: $22
    dec b                                         ; $6947: $05
    ld b, b                                       ; $6948: $40
    ld b, l                                       ; $6949: $45
    rla                                           ; $694A: $17
    or [hl]                                       ; $694B: $B6
    ld [hl], c                                    ; $694C: $71
    ld bc, $3306                                  ; $694D: $01 $06 $33
    rlca                                          ; $6950: $07
    nop                                           ; $6951: $00
    ld l, e                                       ; $6952: $6B
    ld c, d                                       ; $6953: $4A
    add hl, bc                                    ; $6954: $09
    nop                                           ; $6955: $00
    jr nz, jr_026_6917                            ; $6956: $20 $BF

    ld d, b                                       ; $6958: $50
    ld l, [hl]                                    ; $6959: $6E
    rrca                                          ; $695A: $0F
    rst $38                                       ; $695B: $FF
    ld a, a                                       ; $695C: $7F

jr_026_695D:
    halt                                          ; $695D: $76
    jr nz, @+$11                                  ; $695E: $20 $0F

    ld b, l                                       ; $6960: $45
    dec d                                         ; $6961: $15
    ld [hl], $6C                                  ; $6962: $36 $6C
    ld b, e                                       ; $6964: $43
    rrca                                          ; $6965: $0F
    inc b                                         ; $6966: $04
    dec b                                         ; $6967: $05
    dec d                                         ; $6968: $15
    ld h, $96                                     ; $6969: $26 $96
    ld l, c                                       ; $696B: $69
    ld b, e                                       ; $696C: $43
    ld [$040F], sp                                ; $696D: $08 $0F $04
    dec b                                         ; $6970: $05
    jr jr_026_697D                                ; $6971: $18 $0A

    nop                                           ; $6973: $00
    xor l                                         ; $6974: $AD
    and c                                         ; $6975: $A1
    ld bc, $B026                                  ; $6976: $01 $26 $B0
    ld [hl], h                                    ; $6979: $74
    sbc e                                         ; $697A: $9B
    ld a, b                                       ; $697B: $78
    ld [hl], b                                    ; $697C: $70

jr_026_697D:
    sbc a                                         ; $697D: $9F
    ld c, b                                       ; $697E: $48

Call_026_697F:
    ld l, l                                       ; $697F: $6D
    ld l, l                                       ; $6980: $6D
    ld l, $2E                                     ; $6981: $2E $2E
    jr nz, @+$4B                                  ; $6983: $20 $49

    ld [hl], h                                    ; $6985: $74
    rst $38                                       ; $6986: $FF
    ld [hl], a                                    ; $6987: $77
    ld l, a                                       ; $6988: $6F
    ld l, [hl]                                    ; $6989: $6E
    daa                                           ; $698A: $27
    ld [hl], h                                    ; $698B: $74
    jr nz, jr_026_69FD                            ; $698C: $20 $6F

    ld [hl], b                                    ; $698E: $70
    ld h, l                                       ; $698F: $65
    ld l, [hl]                                    ; $6990: $6E
    ld l, $FE                                     ; $6991: $2E $FE
    db $FD                                        ; $6993: $FD
    sbc d                                         ; $6994: $9A
    ld b, d                                       ; $6995: $42
    rlca                                          ; $6996: $07
    nop                                           ; $6997: $00

jr_026_6998:
    ld l, e                                       ; $6998: $6B
    ld c, d                                       ; $6999: $4A
    add hl, bc                                    ; $699A: $09
    nop                                           ; $699B: $00
    jr nz, jr_026_695D                            ; $699C: $20 $BF

    ld d, b                                       ; $699E: $50
    sbc e                                         ; $699F: $9B
    ld a, b                                       ; $69A0: $78
    ld [hl], b                                    ; $69A1: $70
    sbc a                                         ; $69A2: $9F
    ld d, a                                       ; $69A3: $57
    ld h, l                                       ; $69A4: $65
    ld l, h                                       ; $69A5: $6C
    ld l, h                                       ; $69A6: $6C
    inc l                                         ; $69A7: $2C
    jr nz, jr_026_6A1E                            ; $69A8: $20 $74

    ld l, b                                       ; $69AA: $68
    ld l, c                                       ; $69AB: $69
    ld [hl], e                                    ; $69AC: $73
    jr nz, @+$6B                                  ; $69AD: $20 $69

    ld [hl], e                                    ; $69AF: $73
    rst $38                                       ; $69B0: $FF
    ld l, c                                       ; $69B1: $69
    ld [hl], h                                    ; $69B2: $74
    ld l, $2E                                     ; $69B3: $2E $2E
    ld l, $FE                                     ; $69B5: $2E $FE
    ld c, c                                       ; $69B7: $49
    daa                                           ; $69B8: $27
    ld l, l                                       ; $69B9: $6D
    jr nz, @+$69                                  ; $69BA: $20 $67

    ld l, a                                       ; $69BC: $6F
    ld l, c                                       ; $69BD: $69
    ld l, [hl]                                    ; $69BE: $6E
    ld h, a                                       ; $69BF: $67
    jr nz, jr_026_6A2A                            ; $69C0: $20 $68

    ld l, a                                       ; $69C2: $6F
    ld l, l                                       ; $69C3: $6D
    ld h, l                                       ; $69C4: $65
    ld l, $FE                                     ; $69C5: $2E $FE
    db $FD                                        ; $69C7: $FD
    sbc d                                         ; $69C8: $9A
    ld b, b                                       ; $69C9: $40
    ld h, b                                       ; $69CA: $60
    add hl, bc                                    ; $69CB: $09
    nop                                           ; $69CC: $00
    jr nz, jr_026_6998                            ; $69CD: $20 $C9

    ld d, b                                       ; $69CF: $50
    sbc e                                         ; $69D0: $9B
    ld a, b                                       ; $69D1: $78
    ld [hl], b                                    ; $69D2: $70
    sbc a                                         ; $69D3: $9F
    ld d, a                                       ; $69D4: $57
    ld l, b                                       ; $69D5: $68
    ld a, c                                       ; $69D6: $79
    jr nz, @+$63                                  ; $69D7: $20 $61

    ld l, l                                       ; $69D9: $6D
    jr nz, jr_026_6A25                            ; $69DA: $20 $49

    jr nz, jr_026_6A51                            ; $69DC: $20 $73

jr_026_69DE:
    ld l, a                                       ; $69DE: $6F
    rst $38                                       ; $69DF: $FF
    ld h, d                                       ; $69E0: $62
    ld [hl], l                                    ; $69E1: $75
    ld l, l                                       ; $69E2: $6D
    ld l, l                                       ; $69E3: $6D
    ld h, l                                       ; $69E4: $65
    ld h, h                                       ; $69E5: $64
    jr nz, jr_026_6A57                            ; $69E6: $20 $6F

    ld [hl], l                                    ; $69E8: $75
    ld [hl], h                                    ; $69E9: $74
    cp $61                                        ; $69EA: $FE $61
    ld h, d                                       ; $69EC: $62
    ld l, a                                       ; $69ED: $6F
    ld [hl], l                                    ; $69EE: $75
    ld [hl], h                                    ; $69EF: $74
    jr nz, @+$76                                  ; $69F0: $20 $74

    ld l, b                                       ; $69F2: $68
    ld l, c                                       ; $69F3: $69
    ld [hl], e                                    ; $69F4: $73
    ccf                                           ; $69F5: $3F
    cp $54                                        ; $69F6: $FE $54
    ld l, b                                       ; $69F8: $68
    ld l, c                                       ; $69F9: $69
    ld [hl], e                                    ; $69FA: $73
    jr nz, @+$6B                                  ; $69FB: $20 $69

jr_026_69FD:
    ld [hl], e                                    ; $69FD: $73
    jr nz, @+$79                                  ; $69FE: $20 $77

    ld l, b                                       ; $6A00: $68
    ld h, c                                       ; $6A01: $61
    ld [hl], h                                    ; $6A02: $74
    rst $38                                       ; $6A03: $FF
    ld c, c                                       ; $6A04: $49
    jr nz, jr_026_6A7E                            ; $6A05: $20 $77

    ld h, c                                       ; $6A07: $61
    ld l, [hl]                                    ; $6A08: $6E
    ld [hl], h                                    ; $6A09: $74
    ld h, l                                       ; $6A0A: $65
    ld h, h                                       ; $6A0B: $64
    jr nz, jr_026_6A6F                            ; $6A0C: $20 $61

    ld l, h                                       ; $6A0E: $6C
    ld l, h                                       ; $6A0F: $6C
    cp $61                                        ; $6A10: $FE $61
    ld l, h                                       ; $6A12: $6C
    ld l, a                                       ; $6A13: $6F
    ld l, [hl]                                    ; $6A14: $6E
    ld h, a                                       ; $6A15: $67
    inc l                                         ; $6A16: $2C
    jr nz, jr_026_6A90                            ; $6A17: $20 $77

    ld h, c                                       ; $6A19: $61
    ld [hl], e                                    ; $6A1A: $73
    ld l, [hl]                                    ; $6A1B: $6E
    daa                                           ; $6A1C: $27
    ld [hl], h                                    ; $6A1D: $74

jr_026_6A1E:
    rst $38                                       ; $6A1E: $FF
    ld l, c                                       ; $6A1F: $69
    ld [hl], h                                    ; $6A20: $74
    ccf                                           ; $6A21: $3F
    cp $FD                                        ; $6A22: $FE $FD
    sbc d                                         ; $6A24: $9A

jr_026_6A25:
    add hl, bc                                    ; $6A25: $09
    nop                                           ; $6A26: $00
    jr nz, jr_026_69DE                            ; $6A27: $20 $B5

    ld d, b                                       ; $6A29: $50

jr_026_6A2A:
    sbc e                                         ; $6A2A: $9B
    ld a, b                                       ; $6A2B: $78
    ld [hl], b                                    ; $6A2C: $70
    sbc a                                         ; $6A2D: $9F

jr_026_6A2E:
    ld d, e                                       ; $6A2E: $53
    ld [hl], l                                    ; $6A2F: $75
    ld [hl], d                                    ; $6A30: $72
    ld h, l                                       ; $6A31: $65
    inc l                                         ; $6A32: $2C
    jr nz, jr_026_6AA2                            ; $6A33: $20 $6D

    ld h, c                                       ; $6A35: $61
    ld a, c                                       ; $6A36: $79
    ld h, d                                       ; $6A37: $62
    ld h, l                                       ; $6A38: $65
    jr nz, jr_026_6AA4                            ; $6A39: $20 $69

    ld [hl], h                                    ; $6A3B: $74
    rst $38                                       ; $6A3C: $FF
    ld [hl], a                                    ; $6A3D: $77
    ld h, c                                       ; $6A3E: $61
    ld [hl], e                                    ; $6A3F: $73
    jr nz, jr_026_6AA8                            ; $6A40: $20 $66

    ld [hl], l                                    ; $6A42: $75
    ld l, [hl]                                    ; $6A43: $6E
    jr nz, @+$72                                  ; $6A44: $20 $70

    ld l, h                                       ; $6A46: $6C
    ld h, c                                       ; $6A47: $61
    ld a, c                                       ; $6A48: $79
    ld l, c                                       ; $6A49: $69
    ld l, [hl]                                    ; $6A4A: $6E
    ld h, a                                       ; $6A4B: $67
    cp $68                                        ; $6A4C: $FE $68
    ld h, l                                       ; $6A4E: $65
    ld [hl], d                                    ; $6A4F: $72
    ld l, a                                       ; $6A50: $6F

jr_026_6A51:
    jr nz, jr_026_6AB4                            ; $6A51: $20 $61

    ld l, [hl]                                    ; $6A53: $6E
    ld h, h                                       ; $6A54: $64
    jr nz, jr_026_6AB8                            ; $6A55: $20 $61

jr_026_6A57:
    ld l, h                                       ; $6A57: $6C
    ld l, h                                       ; $6A58: $6C
    rst $38                                       ; $6A59: $FF
    ld [hl], h                                    ; $6A5A: $74
    ld l, b                                       ; $6A5B: $68
    ld h, c                                       ; $6A5C: $61
    ld [hl], h                                    ; $6A5D: $74
    inc l                                         ; $6A5E: $2C
    jr nz, jr_026_6AC3                            ; $6A5F: $20 $62

    ld [hl], l                                    ; $6A61: $75
    ld [hl], h                                    ; $6A62: $74
    ld l, $2E                                     ; $6A63: $2E $2E
    ld l, $FE                                     ; $6A65: $2E $FE
    db $FD                                        ; $6A67: $FD
    sbc d                                         ; $6A68: $9A
    ld b, b                                       ; $6A69: $40
    ld h, b                                       ; $6A6A: $60
    add hl, bc                                    ; $6A6B: $09
    nop                                           ; $6A6C: $00
    jr nz, jr_026_6A2E                            ; $6A6D: $20 $BF

jr_026_6A6F:
    ld d, b                                       ; $6A6F: $50
    sbc e                                         ; $6A70: $9B
    ld a, b                                       ; $6A71: $78
    ld [hl], b                                    ; $6A72: $70
    sbc a                                         ; $6A73: $9F
    ld l, $2E                                     ; $6A74: $2E $2E
    ld l, $69                                     ; $6A76: $2E $69
    ld [hl], h                                    ; $6A78: $74
    daa                                           ; $6A79: $27
    ld [hl], e                                    ; $6A7A: $73
    jr nz, jr_026_6ADF                            ; $6A7B: $20 $62

    ld h, l                                       ; $6A7D: $65

jr_026_6A7E:
    ld [hl], h                                    ; $6A7E: $74
    ld [hl], h                                    ; $6A7F: $74
    ld h, l                                       ; $6A80: $65
    ld [hl], d                                    ; $6A81: $72
    rst $38                                       ; $6A82: $FF
    ld l, c                                       ; $6A83: $69
    ld h, [hl]                                    ; $6A84: $66
    jr nz, jr_026_6AD0                            ; $6A85: $20 $49

    jr nz, jr_026_6AF5                            ; $6A87: $20 $6C

    ld h, l                                       ; $6A89: $65
    ld h, c                                       ; $6A8A: $61
    halt                                          ; $6A8B: $76
    ld h, l                                       ; $6A8C: $65
    ld l, $FE                                     ; $6A8D: $2E $FE
    ld b, c                                       ; $6A8F: $41

jr_026_6A90:
    ld h, [hl]                                    ; $6A90: $66
    ld [hl], h                                    ; $6A91: $74
    ld h, l                                       ; $6A92: $65
    ld [hl], d                                    ; $6A93: $72
    jr nz, jr_026_6AF7                            ; $6A94: $20 $61

    ld l, h                                       ; $6A96: $6C
    ld l, h                                       ; $6A97: $6C
    inc l                                         ; $6A98: $2C
    jr nz, jr_026_6AE2                            ; $6A99: $20 $47

    ld l, c                                       ; $6A9B: $69
    ld h, c                                       ; $6A9C: $61
    rst $38                                       ; $6A9D: $FF
    ld [hl], e                                    ; $6A9E: $73
    ld h, c                                       ; $6A9F: $61
    ld l, c                                       ; $6AA0: $69
    ld h, h                                       ; $6AA1: $64

jr_026_6AA2:
    jr nz, jr_026_6AED                            ; $6AA2: $20 $49

jr_026_6AA4:
    jr nz, jr_026_6B1D                            ; $6AA4: $20 $77

    ld h, c                                       ; $6AA6: $61
    ld [hl], e                                    ; $6AA7: $73

jr_026_6AA8:
    jr nz, jr_026_6B1E                            ; $6AA8: $20 $74

    ld l, b                                       ; $6AAA: $68
    ld h, l                                       ; $6AAB: $65
    cp $63                                        ; $6AAC: $FE $63
    ld h, c                                       ; $6AAE: $61
    ld [hl], l                                    ; $6AAF: $75
    ld [hl], e                                    ; $6AB0: $73
    ld h, l                                       ; $6AB1: $65
    jr nz, @+$71                                  ; $6AB2: $20 $6F

jr_026_6AB4:
    ld h, [hl]                                    ; $6AB4: $66
    jr nz, jr_026_6B18                            ; $6AB5: $20 $61

    ld l, h                                       ; $6AB7: $6C

jr_026_6AB8:
    ld l, h                                       ; $6AB8: $6C
    rst $38                                       ; $6AB9: $FF
    ld [hl], h                                    ; $6ABA: $74
    ld l, b                                       ; $6ABB: $68
    ld l, a                                       ; $6ABC: $6F
    ld [hl], e                                    ; $6ABD: $73
    ld h, l                                       ; $6ABE: $65
    jr nz, jr_026_6B31                            ; $6ABF: $20 $70

    ld [hl], d                                    ; $6AC1: $72
    ld l, a                                       ; $6AC2: $6F

jr_026_6AC3:
    ld h, d                                       ; $6AC3: $62
    ld l, h                                       ; $6AC4: $6C
    ld h, l                                       ; $6AC5: $65
    ld l, l                                       ; $6AC6: $6D
    ld [hl], e                                    ; $6AC7: $73
    ld l, $FE                                     ; $6AC8: $2E $FE
    ld l, $2E                                     ; $6ACA: $2E $2E
    ld l, $2E                                     ; $6ACC: $2E $2E
    ld l, $2E                                     ; $6ACE: $2E $2E

jr_026_6AD0:
    ld l, $2E                                     ; $6AD0: $2E $2E
    ld l, $FE                                     ; $6AD2: $2E $FE
    ld c, c                                       ; $6AD4: $49
    ld [hl], h                                    ; $6AD5: $74
    daa                                           ; $6AD6: $27
    ld [hl], e                                    ; $6AD7: $73
    jr nz, jr_026_6B4E                            ; $6AD8: $20 $74

    ld l, b                                       ; $6ADA: $68
    ld h, l                                       ; $6ADB: $65
    rst $38                                       ; $6ADC: $FF
    ld [hl], d                                    ; $6ADD: $72
    ld l, c                                       ; $6ADE: $69

jr_026_6ADF:
    ld h, a                                       ; $6ADF: $67
    ld l, b                                       ; $6AE0: $68
    ld [hl], h                                    ; $6AE1: $74

jr_026_6AE2:
    jr nz, @+$76                                  ; $6AE2: $20 $74

    ld l, b                                       ; $6AE4: $68
    ld l, c                                       ; $6AE5: $69
    ld l, [hl]                                    ; $6AE6: $6E
    ld h, a                                       ; $6AE7: $67
    cp $74                                        ; $6AE8: $FE $74
    ld l, a                                       ; $6AEA: $6F
    jr nz, jr_026_6B51                            ; $6AEB: $20 $64

jr_026_6AED:
    ld l, a                                       ; $6AED: $6F
    ld l, $FE                                     ; $6AEE: $2E $FE
    db $FD                                        ; $6AF0: $FD
    sbc d                                         ; $6AF1: $9A
    sbc e                                         ; $6AF2: $9B
    ld a, b                                       ; $6AF3: $78
    ld [hl], b                                    ; $6AF4: $70

jr_026_6AF5:
    sbc a                                         ; $6AF5: $9F
    ld c, h                                       ; $6AF6: $4C

jr_026_6AF7:
    ld h, l                                       ; $6AF7: $65
    ld [hl], h                                    ; $6AF8: $74
    daa                                           ; $6AF9: $27
    ld [hl], e                                    ; $6AFA: $73
    jr nz, jr_026_6B70                            ; $6AFB: $20 $73

    ld h, l                                       ; $6AFD: $65
    ld h, l                                       ; $6AFE: $65
    ld l, $2E                                     ; $6AFF: $2E $2E
    ld l, $20                                     ; $6B01: $2E $20
    ld l, c                                       ; $6B03: $69
    ld h, [hl]                                    ; $6B04: $66
    cp $49                                        ; $6B05: $FE $49
    jr nz, jr_026_6B73                            ; $6B07: $20 $6A

    ld [hl], l                                    ; $6B09: $75
    ld [hl], e                                    ; $6B0A: $73
    ld [hl], h                                    ; $6B0B: $74
    jr nz, @+$72                                  ; $6B0C: $20 $70

    ld [hl], l                                    ; $6B0E: $75
    ld [hl], h                                    ; $6B0F: $74
    jr nz, jr_026_6B86                            ; $6B10: $20 $74

    ld l, b                                       ; $6B12: $68
    ld h, l                                       ; $6B13: $65
    rst $38                                       ; $6B14: $FF
    ld b, a                                       ; $6B15: $47
    ld l, h                                       ; $6B16: $6C
    ld a, c                                       ; $6B17: $79

jr_026_6B18:
    ld [hl], b                                    ; $6B18: $70
    ld l, b                                       ; $6B19: $68
    jr nz, jr_026_6B90                            ; $6B1A: $20 $74

    ld l, b                                       ; $6B1C: $68

jr_026_6B1D:
    ld h, l                                       ; $6B1D: $65

jr_026_6B1E:
    ld [hl], d                                    ; $6B1E: $72
    ld h, l                                       ; $6B1F: $65
    ld l, $2E                                     ; $6B20: $2E $2E
    ld l, $FE                                     ; $6B22: $2E $FE
    ld [hl], e                                    ; $6B24: $73
    ld l, a                                       ; $6B25: $6F
    ld l, l                                       ; $6B26: $6D
    ld h, l                                       ; $6B27: $65
    ld [hl], h                                    ; $6B28: $74
    ld l, b                                       ; $6B29: $68
    ld l, c                                       ; $6B2A: $69
    ld l, [hl]                                    ; $6B2B: $6E
    ld h, a                                       ; $6B2C: $67
    rst $38                                       ; $6B2D: $FF
    ld [hl], e                                    ; $6B2E: $73
    ld l, b                                       ; $6B2F: $68
    ld l, a                                       ; $6B30: $6F

jr_026_6B31:
    ld [hl], l                                    ; $6B31: $75
    ld l, h                                       ; $6B32: $6C
    ld h, h                                       ; $6B33: $64
    jr nz, jr_026_6B9E                            ; $6B34: $20 $68

    ld h, c                                       ; $6B36: $61
    ld [hl], b                                    ; $6B37: $70
    ld [hl], b                                    ; $6B38: $70
    ld h, l                                       ; $6B39: $65
    ld l, [hl]                                    ; $6B3A: $6E
    ld l, $FE                                     ; $6B3B: $2E $FE
    db $FD                                        ; $6B3D: $FD
    sbc d                                         ; $6B3E: $9A
    ld b, l                                       ; $6B3F: $45
    ld h, $01                                     ; $6B40: $26 $01
    ld [hl], h                                    ; $6B42: $74
    sbc e                                         ; $6B43: $9B
    xor c                                         ; $6B44: $A9
    ld c, a                                       ; $6B45: $4F
    sbc a                                         ; $6B46: $9F
    ld b, [hl]                                    ; $6B47: $46
    ld c, c                                       ; $6B48: $49
    ld c, [hl]                                    ; $6B49: $4E
    ld b, c                                       ; $6B4A: $41
    ld c, h                                       ; $6B4B: $4C
    ld c, h                                       ; $6B4C: $4C
    ld e, c                                       ; $6B4D: $59

jr_026_6B4E:
    ld hl, $46FF                                  ; $6B4E: $21 $FF $46

jr_026_6B51:
    ld l, c                                       ; $6B51: $69
    ld l, [hl]                                    ; $6B52: $6E
    ld h, c                                       ; $6B53: $61
    ld l, h                                       ; $6B54: $6C
    ld l, h                                       ; $6B55: $6C
    ld a, c                                       ; $6B56: $79
    jr nz, jr_026_6BA2                            ; $6B57: $20 $49

    jr nz, jr_026_6BBC                            ; $6B59: $20 $61

    ld l, l                                       ; $6B5B: $6D
    cp $72                                        ; $6B5C: $FE $72
    ld l, c                                       ; $6B5E: $69
    ld h, h                                       ; $6B5F: $64
    jr nz, jr_026_6BD1                            ; $6B60: $20 $6F

    ld h, [hl]                                    ; $6B62: $66
    jr nz, jr_026_6BD9                            ; $6B63: $20 $74

    ld l, b                                       ; $6B65: $68
    ld h, c                                       ; $6B66: $61
    ld [hl], h                                    ; $6B67: $74
    rst $38                                       ; $6B68: $FF
    ld l, c                                       ; $6B69: $69
    ld l, [hl]                                    ; $6B6A: $6E
    ld h, e                                       ; $6B6B: $63
    ld l, a                                       ; $6B6C: $6F
    ld l, l                                       ; $6B6D: $6D
    ld [hl], b                                    ; $6B6E: $70
    ld h, c                                       ; $6B6F: $61

jr_026_6B70:
    ld [hl], d                                    ; $6B70: $72
    ld h, c                                       ; $6B71: $61
    ld h, d                                       ; $6B72: $62

jr_026_6B73:
    ld l, h                                       ; $6B73: $6C
    ld h, l                                       ; $6B74: $65
    cp $63                                        ; $6B75: $FE $63
    ld [hl], d                                    ; $6B77: $72
    ld h, l                                       ; $6B78: $65
    ld [hl], h                                    ; $6B79: $74
    ld l, c                                       ; $6B7A: $69
    ld l, [hl]                                    ; $6B7B: $6E
    ld hl, $4E20                                  ; $6B7C: $21 $20 $4E
    ld l, a                                       ; $6B7F: $6F
    jr nz, jr_026_6BEF                            ; $6B80: $20 $6D

    ld l, a                                       ; $6B82: $6F
    ld [hl], d                                    ; $6B83: $72
    ld h, l                                       ; $6B84: $65
    rst $38                                       ; $6B85: $FF

jr_026_6B86:
    ld l, l                                       ; $6B86: $6D
    ld h, l                                       ; $6B87: $65
    ld [hl], e                                    ; $6B88: $73
    ld [hl], e                                    ; $6B89: $73
    ld l, c                                       ; $6B8A: $69
    ld l, [hl]                                    ; $6B8B: $6E
    ld h, a                                       ; $6B8C: $67
    jr nz, jr_026_6C06                            ; $6B8D: $20 $77

    ld l, c                                       ; $6B8F: $69

jr_026_6B90:
    ld [hl], h                                    ; $6B90: $74
    ld l, b                                       ; $6B91: $68
    jr nz, jr_026_6C01                            ; $6B92: $20 $6D

    ld a, c                                       ; $6B94: $79
    cp $63                                        ; $6B95: $FE $63
    ld h, c                                       ; $6B97: $61
    ld [hl], d                                    ; $6B98: $72
    ld h, l                                       ; $6B99: $65
    ld h, [hl]                                    ; $6B9A: $66
    ld [hl], l                                    ; $6B9B: $75
    ld l, h                                       ; $6B9C: $6C
    ld l, h                                       ; $6B9D: $6C

jr_026_6B9E:
    ld a, c                                       ; $6B9E: $79
    dec l                                         ; $6B9F: $2D
    ld l, h                                       ; $6BA0: $6C
    ld h, c                                       ; $6BA1: $61

jr_026_6BA2:
    ld l, c                                       ; $6BA2: $69
    ld h, h                                       ; $6BA3: $64
    rst $38                                       ; $6BA4: $FF
    ld [hl], b                                    ; $6BA5: $70
    ld l, h                                       ; $6BA6: $6C
    ld h, c                                       ; $6BA7: $61
    ld l, [hl]                                    ; $6BA8: $6E
    ld [hl], e                                    ; $6BA9: $73
    ld hl, $4E20                                  ; $6BAA: $21 $20 $4E
    ld l, a                                       ; $6BAD: $6F
    jr nz, jr_026_6C1D                            ; $6BAE: $20 $6D

    ld l, a                                       ; $6BB0: $6F
    ld [hl], d                                    ; $6BB1: $72
    ld h, l                                       ; $6BB2: $65
    cp $6F                                        ; $6BB3: $FE $6F
    ld h, [hl]                                    ; $6BB5: $66
    jr nz, jr_026_6C2C                            ; $6BB6: $20 $74

    ld l, b                                       ; $6BB8: $68
    ld h, c                                       ; $6BB9: $61
    ld [hl], h                                    ; $6BBA: $74
    rst $38                                       ; $6BBB: $FF

jr_026_6BBC:
    ld h, a                                       ; $6BBC: $67
    ld l, c                                       ; $6BBD: $69
    ld h, a                                       ; $6BBE: $67
    ld h, c                                       ; $6BBF: $61
    ld l, [hl]                                    ; $6BC0: $6E
    ld [hl], h                                    ; $6BC1: $74
    ld l, c                                       ; $6BC2: $69
    ld h, e                                       ; $6BC3: $63
    jr nz, jr_026_6C2B                            ; $6BC4: $20 $65

    ld h, a                                       ; $6BC6: $67
    ld l, a                                       ; $6BC7: $6F
    ld hl, $41FE                                  ; $6BC8: $21 $FE $41
    ld l, [hl]                                    ; $6BCB: $6E
    ld h, h                                       ; $6BCC: $64
    jr nz, jr_026_6C3C                            ; $6BCD: $20 $6D

    ld l, a                                       ; $6BCF: $6F
    ld [hl], e                                    ; $6BD0: $73

jr_026_6BD1:
    ld [hl], h                                    ; $6BD1: $74
    jr nz, jr_026_6C43                            ; $6BD2: $20 $6F

    ld h, [hl]                                    ; $6BD4: $66
    rst $38                                       ; $6BD5: $FF
    ld h, c                                       ; $6BD6: $61
    ld l, h                                       ; $6BD7: $6C
    ld l, h                                       ; $6BD8: $6C

jr_026_6BD9:
    inc l                                         ; $6BD9: $2C
    jr nz, jr_026_6C4A                            ; $6BDA: $20 $6E

    ld l, a                                       ; $6BDC: $6F
    jr nz, @+$6F                                  ; $6BDD: $20 $6D

    ld l, a                                       ; $6BDF: $6F
    ld [hl], d                                    ; $6BE0: $72
    ld h, l                                       ; $6BE1: $65
    cp $27                                        ; $6BE2: $FE $27
    ld d, e                                       ; $6BE4: $53
    ld l, b                                       ; $6BE5: $68
    ld h, c                                       ; $6BE6: $61
    ld h, h                                       ; $6BE7: $64
    ld h, h                                       ; $6BE8: $64
    ld [hl], l                                    ; $6BE9: $75
    ld [hl], b                                    ; $6BEA: $70
    jr nz, @+$5C                                  ; $6BEB: $20 $5A

    ld h, l                                       ; $6BED: $65
    ld [hl], h                                    ; $6BEE: $74

jr_026_6BEF:
    ld hl, $FE27                                  ; $6BEF: $21 $27 $FE
    ld c, b                                       ; $6BF2: $48
    ld b, c                                       ; $6BF3: $41
    jr nz, jr_026_6C3E                            ; $6BF4: $20 $48

    ld b, c                                       ; $6BF6: $41
    jr nz, jr_026_6C41                            ; $6BF7: $20 $48

    ld b, c                                       ; $6BF9: $41
    ld hl, $5720                                  ; $6BFA: $21 $20 $57
    ld c, b                                       ; $6BFD: $48
    ld c, a                                       ; $6BFE: $4F
    daa                                           ; $6BFF: $27
    ld d, e                                       ; $6C00: $53

jr_026_6C01:
    rst $38                                       ; $6C01: $FF
    ld c, c                                       ; $6C02: $49
    ld c, [hl]                                    ; $6C03: $4E
    jr nz, jr_026_6C49                            ; $6C04: $20 $43

jr_026_6C06:
    ld c, b                                       ; $6C06: $48
    ld b, c                                       ; $6C07: $41
    ld d, d                                       ; $6C08: $52
    ld b, a                                       ; $6C09: $47
    ld b, l                                       ; $6C0A: $45
    jr nz, jr_026_6C5B                            ; $6C0B: $20 $4E

    ld c, a                                       ; $6C0D: $4F
    ld d, a                                       ; $6C0E: $57
    inc l                                         ; $6C0F: $2C
    cp $59                                        ; $6C10: $FE $59
    ld c, a                                       ; $6C12: $4F
    ld d, l                                       ; $6C13: $55
    jr nz, jr_026_6C57                            ; $6C14: $20 $41

    ld c, [hl]                                    ; $6C16: $4E
    ld c, [hl]                                    ; $6C17: $4E
    ld c, a                                       ; $6C18: $4F
    ld e, c                                       ; $6C19: $59
    ld c, c                                       ; $6C1A: $49
    ld c, [hl]                                    ; $6C1B: $4E
    ld b, a                                       ; $6C1C: $47

jr_026_6C1D:
    rst $38                                       ; $6C1D: $FF
    ld c, c                                       ; $6C1E: $49
    ld c, l                                       ; $6C1F: $4D
    ld b, d                                       ; $6C20: $42
    ld b, l                                       ; $6C21: $45
    ld b, e                                       ; $6C22: $43
    ld c, c                                       ; $6C23: $49
    ld c, h                                       ; $6C24: $4C
    ld b, l                                       ; $6C25: $45
    ccf                                           ; $6C26: $3F
    ld hl, $FE21                                  ; $6C27: $21 $21 $FE
    db $FD                                        ; $6C2A: $FD

jr_026_6C2B:
    sbc d                                         ; $6C2B: $9A

jr_026_6C2C:
    ld e, b                                       ; $6C2C: $58
    inc bc                                        ; $6C2D: $03
    ld b, d                                       ; $6C2E: $42
    sbc e                                         ; $6C2F: $9B
    ld c, b                                       ; $6C30: $48
    ld b, [hl]                                    ; $6C31: $46
    sbc a                                         ; $6C32: $9F
    ld d, h                                       ; $6C33: $54
    ld l, a                                       ; $6C34: $6F
    ld l, [hl]                                    ; $6C35: $6E
    ld a, c                                       ; $6C36: $79
    ld hl, $4120                                  ; $6C37: $21 $20 $41
    ld [hl], d                                    ; $6C3A: $72
    ld h, l                                       ; $6C3B: $65

jr_026_6C3C:
    jr nz, @+$7B                                  ; $6C3C: $20 $79

jr_026_6C3E:
    ld l, a                                       ; $6C3E: $6F
    ld [hl], l                                    ; $6C3F: $75
    rst $38                                       ; $6C40: $FF

jr_026_6C41:
    ld l, a                                       ; $6C41: $6F
    ld l, e                                       ; $6C42: $6B

jr_026_6C43:
    ld h, c                                       ; $6C43: $61
    ld a, c                                       ; $6C44: $79
    ccf                                           ; $6C45: $3F
    jr nz, jr_026_6C9C                            ; $6C46: $20 $54

    ld h, c                                       ; $6C48: $61

jr_026_6C49:
    ld l, e                                       ; $6C49: $6B

jr_026_6C4A:
    ld h, l                                       ; $6C4A: $65
    jr nz, jr_026_6CC1                            ; $6C4B: $20 $74

    ld l, b                                       ; $6C4D: $68
    ld l, c                                       ; $6C4E: $69
    ld [hl], e                                    ; $6C4F: $73
    cp $74                                        ; $6C50: $FE $74
    ld l, a                                       ; $6C52: $6F
    jr nz, jr_026_6CC7                            ; $6C53: $20 $72

    ld h, l                                       ; $6C55: $65
    ld [hl], e                                    ; $6C56: $73

jr_026_6C57:
    ld [hl], h                                    ; $6C57: $74
    ld l, a                                       ; $6C58: $6F
    ld [hl], d                                    ; $6C59: $72
    ld h, l                                       ; $6C5A: $65

jr_026_6C5B:
    jr nz, jr_026_6CD6                            ; $6C5B: $20 $79

    ld l, a                                       ; $6C5D: $6F
    ld [hl], l                                    ; $6C5E: $75
    ld [hl], d                                    ; $6C5F: $72
    rst $38                                       ; $6C60: $FF
    ld [hl], e                                    ; $6C61: $73
    ld [hl], h                                    ; $6C62: $74
    ld [hl], d                                    ; $6C63: $72
    ld h, l                                       ; $6C64: $65
    ld l, [hl]                                    ; $6C65: $6E
    ld h, a                                       ; $6C66: $67
    ld [hl], h                                    ; $6C67: $74
    ld l, b                                       ; $6C68: $68
    ld hl, $FDFE                                  ; $6C69: $21 $FE $FD
    sbc d                                         ; $6C6C: $9A
    ld e, b                                       ; $6C6D: $58
    inc b                                         ; $6C6E: $04
    ld b, d                                       ; $6C6F: $42
    sbc e                                         ; $6C70: $9B
    xor c                                         ; $6C71: $A9
    ld c, a                                       ; $6C72: $4F
    sbc a                                         ; $6C73: $9F
    ld c, [hl]                                    ; $6C74: $4E
    ld l, a                                       ; $6C75: $6F
    ld [hl], a                                    ; $6C76: $77
    inc l                                         ; $6C77: $2C
    jr nz, @+$4B                                  ; $6C78: $20 $49

    jr nz, jr_026_6CDF                            ; $6C7A: $20 $63

    ld h, c                                       ; $6C7C: $61
    ld l, [hl]                                    ; $6C7D: $6E
    jr nz, jr_026_6CE7                            ; $6C7E: $20 $67

    ld h, l                                       ; $6C80: $65
    ld [hl], h                                    ; $6C81: $74
    rst $38                                       ; $6C82: $FF
    ld [hl], h                                    ; $6C83: $74
    ld l, b                                       ; $6C84: $68
    ld h, l                                       ; $6C85: $65
    cp $61                                        ; $6C86: $FE $61
    ld [hl], b                                    ; $6C88: $70
    ld [hl], b                                    ; $6C89: $70
    ld [hl], d                                    ; $6C8A: $72
    ld h, l                                       ; $6C8B: $65
    ld h, e                                       ; $6C8C: $63
    ld l, c                                       ; $6C8D: $69
    ld h, c                                       ; $6C8E: $61
    ld [hl], h                                    ; $6C8F: $74
    ld l, c                                       ; $6C90: $69
    ld l, a                                       ; $6C91: $6F
    ld l, [hl]                                    ; $6C92: $6E
    jr nz, jr_026_6CDE                            ; $6C93: $20 $49

    rst $38                                       ; $6C95: $FF
    ld h, h                                       ; $6C96: $64
    ld h, l                                       ; $6C97: $65
    ld [hl], e                                    ; $6C98: $73
    ld h, l                                       ; $6C99: $65
    ld [hl], d                                    ; $6C9A: $72
    halt                                          ; $6C9B: $76

jr_026_6C9C:
    ld h, l                                       ; $6C9C: $65
    jr nz, jr_026_6D05                            ; $6C9D: $20 $66

    ld [hl], d                                    ; $6C9F: $72
    ld l, a                                       ; $6CA0: $6F
    ld l, l                                       ; $6CA1: $6D
    cp $4D                                        ; $6CA2: $FE $4D
    ld l, a                                       ; $6CA4: $6F
    ld [hl], d                                    ; $6CA5: $72
    ld h, c                                       ; $6CA6: $61
    ld h, a                                       ; $6CA7: $67
    ld l, $20                                     ; $6CA8: $2E $20
    ld c, b                                       ; $6CAA: $48
    ld h, l                                       ; $6CAB: $65
    daa                                           ; $6CAC: $27
    ld l, h                                       ; $6CAD: $6C
    ld l, h                                       ; $6CAE: $6C
    rst $38                                       ; $6CAF: $FF
    ld [hl], a                                    ; $6CB0: $77
    ld l, a                                       ; $6CB1: $6F
    ld l, [hl]                                    ; $6CB2: $6E
    ld h, h                                       ; $6CB3: $64
    ld h, l                                       ; $6CB4: $65
    ld [hl], d                                    ; $6CB5: $72
    jr nz, jr_026_6D2F                            ; $6CB6: $20 $77

    ld l, b                                       ; $6CB8: $68
    ld a, c                                       ; $6CB9: $79
    jr nz, jr_026_6D24                            ; $6CBA: $20 $68

    ld h, l                                       ; $6CBC: $65
    cp $65                                        ; $6CBD: $FE $65
    halt                                          ; $6CBF: $76
    ld h, l                                       ; $6CC0: $65

jr_026_6CC1:
    ld [hl], d                                    ; $6CC1: $72
    jr nz, @+$75                                  ; $6CC2: $20 $73

    ld [hl], l                                    ; $6CC4: $75
    ld [hl], b                                    ; $6CC5: $70
    ld [hl], b                                    ; $6CC6: $70

jr_026_6CC7:
    ld [hl], d                                    ; $6CC7: $72
    ld h, l                                       ; $6CC8: $65
    ld [hl], e                                    ; $6CC9: $73
    ld [hl], e                                    ; $6CCA: $73
    ld h, l                                       ; $6CCB: $65
    ld h, h                                       ; $6CCC: $64
    rst $38                                       ; $6CCD: $FF
    ld l, l                                       ; $6CCE: $6D
    ld h, l                                       ; $6CCF: $65
    jr nz, jr_026_6D47                            ; $6CD0: $20 $75

    ld l, [hl]                                    ; $6CD2: $6E
    ld h, h                                       ; $6CD3: $64
    ld h, l                                       ; $6CD4: $65
    ld [hl], d                                    ; $6CD5: $72

jr_026_6CD6:
    jr nz, jr_026_6D4C                            ; $6CD6: $20 $74

    ld l, b                                       ; $6CD8: $68
    ld h, c                                       ; $6CD9: $61
    ld [hl], h                                    ; $6CDA: $74
    cp $69                                        ; $6CDB: $FE $69
    ld h, a                                       ; $6CDD: $67

jr_026_6CDE:
    ld l, [hl]                                    ; $6CDE: $6E

jr_026_6CDF:
    ld l, a                                       ; $6CDF: $6F
    ld [hl], d                                    ; $6CE0: $72
    ld h, c                                       ; $6CE1: $61
    ld l, l                                       ; $6CE2: $6D
    ld [hl], l                                    ; $6CE3: $75
    ld [hl], e                                    ; $6CE4: $73
    ld l, $FF                                     ; $6CE5: $2E $FF

jr_026_6CE7:
    ld d, h                                       ; $6CE7: $54
    ld h, c                                       ; $6CE8: $61
    ld [hl], e                                    ; $6CE9: $73
    ld [hl], h                                    ; $6CEA: $74
    ld h, l                                       ; $6CEB: $65
    jr nz, jr_026_6D62                            ; $6CEC: $20 $74

    ld l, b                                       ; $6CEE: $68
    ld h, l                                       ; $6CEF: $65
    jr nz, jr_026_6D58                            ; $6CF0: $20 $66

    ld [hl], l                                    ; $6CF2: $75
    ld l, h                                       ; $6CF3: $6C
    ld l, h                                       ; $6CF4: $6C
    cp $70                                        ; $6CF5: $FE $70
    ld l, a                                       ; $6CF7: $6F
    ld [hl], a                                    ; $6CF8: $77
    ld h, l                                       ; $6CF9: $65
    ld [hl], d                                    ; $6CFA: $72
    jr nz, jr_026_6D6C                            ; $6CFB: $20 $6F

    ld h, [hl]                                    ; $6CFD: $66
    jr nz, jr_026_6D6D                            ; $6CFE: $20 $6D

    ld a, c                                       ; $6D00: $79
    rst $38                                       ; $6D01: $FF
    ld [hl], a                                    ; $6D02: $77
    ld [hl], d                                    ; $6D03: $72
    ld h, c                                       ; $6D04: $61

jr_026_6D05:
    ld [hl], h                                    ; $6D05: $74
    ld l, b                                       ; $6D06: $68
    ld hl, $FE21                                  ; $6D07: $21 $21 $FE
    db $FD                                        ; $6D0A: $FD
    sbc d                                         ; $6D0B: $9A
    ld e, b                                       ; $6D0C: $58
    dec b                                         ; $6D0D: $05
    ld b, d                                       ; $6D0E: $42
    sbc e                                         ; $6D0F: $9B
    xor c                                         ; $6D10: $A9
    ld c, a                                       ; $6D11: $4F
    sbc a                                         ; $6D12: $9F
    ld c, c                                       ; $6D13: $49
    dec l                                         ; $6D14: $2D
    ld c, c                                       ; $6D15: $49
    ld l, l                                       ; $6D16: $6D
    ld [hl], b                                    ; $6D17: $70
    ld l, a                                       ; $6D18: $6F
    ld [hl], e                                    ; $6D19: $73
    ld [hl], e                                    ; $6D1A: $73
    ld l, c                                       ; $6D1B: $69
    ld h, d                                       ; $6D1C: $62
    ld l, h                                       ; $6D1D: $6C
    ld h, l                                       ; $6D1E: $65
    ld hl, $4920                                  ; $6D1F: $21 $20 $49
    rst $38                                       ; $6D22: $FF
    ld h, c                                       ; $6D23: $61

jr_026_6D24:
    ld l, l                                       ; $6D24: $6D
    ld l, $2E                                     ; $6D25: $2E $2E
    ld l, $20                                     ; $6D27: $2E $20
    ld l, [hl]                                    ; $6D29: $6E
    ld l, a                                       ; $6D2A: $6F
    ld [hl], h                                    ; $6D2B: $74
    jr nz, @+$63                                  ; $6D2C: $20 $61

    ld [hl], e                                    ; $6D2E: $73

jr_026_6D2F:
    cp $77                                        ; $6D2F: $FE $77
    ld h, l                                       ; $6D31: $65
    ld h, c                                       ; $6D32: $61
    ld l, e                                       ; $6D33: $6B
    ld l, $2E                                     ; $6D34: $2E $2E
    ld l, $20                                     ; $6D36: $2E $20
    ld h, c                                       ; $6D38: $61
    ld [hl], e                                    ; $6D39: $73
    jr nz, @+$76                                  ; $6D3A: $20 $74

    ld l, b                                       ; $6D3C: $68
    ld h, c                                       ; $6D3D: $61
    ld [hl], h                                    ; $6D3E: $74
    rst $38                                       ; $6D3F: $FF
    ld [hl], b                                    ; $6D40: $70
    ld h, c                                       ; $6D41: $61
    ld [hl], h                                    ; $6D42: $74
    ld l, b                                       ; $6D43: $68
    ld h, l                                       ; $6D44: $65
    ld [hl], h                                    ; $6D45: $74
    ld l, c                                       ; $6D46: $69

jr_026_6D47:
    ld h, e                                       ; $6D47: $63
    ld l, $2E                                     ; $6D48: $2E $2E
    ld l, $FE                                     ; $6D4A: $2E $FE

jr_026_6D4C:
    ld h, c                                       ; $6D4C: $61
    ld l, b                                       ; $6D4D: $68
    ld l, b                                       ; $6D4E: $68
    ld l, b                                       ; $6D4F: $68
    ld l, b                                       ; $6D50: $68
    ld hl, $2121                                  ; $6D51: $21 $21 $21
    cp $FD                                        ; $6D54: $FE $FD
    sbc d                                         ; $6D56: $9A
    ld e, b                                       ; $6D57: $58

jr_026_6D58:
    ld b, $42                                     ; $6D58: $06 $42
    sbc e                                         ; $6D5A: $9B
    ld c, b                                       ; $6D5B: $48
    ld b, [hl]                                    ; $6D5C: $46
    sbc a                                         ; $6D5D: $9F
    ld d, h                                       ; $6D5E: $54
    ld l, a                                       ; $6D5F: $6F
    ld l, [hl]                                    ; $6D60: $6E
    ld a, c                                       ; $6D61: $79

jr_026_6D62:
    ld hl, $4120                                  ; $6D62: $21 $20 $41
    ld [hl], d                                    ; $6D65: $72
    ld h, l                                       ; $6D66: $65
    jr nz, @+$7B                                  ; $6D67: $20 $79

    ld l, a                                       ; $6D69: $6F
    ld [hl], l                                    ; $6D6A: $75
    rst $38                                       ; $6D6B: $FF

jr_026_6D6C:
    ld l, b                                       ; $6D6C: $68

jr_026_6D6D:
    ld [hl], l                                    ; $6D6D: $75
    ld [hl], d                                    ; $6D6E: $72
    ld [hl], h                                    ; $6D6F: $74
    ccf                                           ; $6D70: $3F
    cp $FD                                        ; $6D71: $FE $FD
    sbc e                                         ; $6D73: $9B
    ld a, b                                       ; $6D74: $78
    ld [hl], b                                    ; $6D75: $70
    sbc a                                         ; $6D76: $9F
    ld c, c                                       ; $6D77: $49
    daa                                           ; $6D78: $27
    ld l, l                                       ; $6D79: $6D
    jr nz, @+$68                                  ; $6D7A: $20 $66

    ld l, c                                       ; $6D7C: $69
    ld l, [hl]                                    ; $6D7D: $6E
    ld h, l                                       ; $6D7E: $65
    inc l                                         ; $6D7F: $2C
    rst $38                                       ; $6D80: $FF
    ld b, l                                       ; $6D81: $45
    ld l, c                                       ; $6D82: $69
    ld h, h                                       ; $6D83: $64
    ld l, a                                       ; $6D84: $6F
    ld l, [hl]                                    ; $6D85: $6E
    ld l, $20                                     ; $6D86: $2E $20
    ld c, d                                       ; $6D88: $4A
    ld [hl], l                                    ; $6D89: $75
    ld [hl], e                                    ; $6D8A: $73
    ld [hl], h                                    ; $6D8B: $74
    jr nz, jr_026_6DEF                            ; $6D8C: $20 $61

    cp $6C                                        ; $6D8E: $FE $6C
    ld l, c                                       ; $6D90: $69
    ld [hl], h                                    ; $6D91: $74
    ld [hl], h                                    ; $6D92: $74
    ld l, h                                       ; $6D93: $6C
    ld h, l                                       ; $6D94: $65
    jr nz, jr_026_6E0E                            ; $6D95: $20 $77

    ld l, c                                       ; $6D97: $69
    ld l, [hl]                                    ; $6D98: $6E
    ld h, h                                       ; $6D99: $64
    ld h, l                                       ; $6D9A: $65
    ld h, h                                       ; $6D9B: $64
    ld l, $FE                                     ; $6D9C: $2E $FE
    db $FD                                        ; $6D9E: $FD
    sbc e                                         ; $6D9F: $9B
    ld c, b                                       ; $6DA0: $48
    ld b, [hl]                                    ; $6DA1: $46
    sbc a                                         ; $6DA2: $9F
    ld d, h                                       ; $6DA3: $54
    ld l, b                                       ; $6DA4: $68
    ld h, c                                       ; $6DA5: $61
    ld [hl], h                                    ; $6DA6: $74
    daa                                           ; $6DA7: $27
    ld [hl], e                                    ; $6DA8: $73
    jr nz, jr_026_6E12                            ; $6DA9: $20 $67

    ld l, a                                       ; $6DAB: $6F
    ld l, a                                       ; $6DAC: $6F
    ld h, h                                       ; $6DAD: $64
    dec l                                         ; $6DAE: $2D
    cp $FD                                        ; $6DAF: $FE $FD
    sbc d                                         ; $6DB1: $9A
    ld e, b                                       ; $6DB2: $58
    rlca                                          ; $6DB3: $07
    ld b, d                                       ; $6DB4: $42
    sbc e                                         ; $6DB5: $9B
    ld a, b                                       ; $6DB6: $78
    ld [hl], b                                    ; $6DB7: $70
    sbc a                                         ; $6DB8: $9F
    ld hl, $2121                                  ; $6DB9: $21 $21 $21
    ld hl, $FDFE                                  ; $6DBC: $21 $FE $FD
    sbc e                                         ; $6DBF: $9B
    cp c                                          ; $6DC0: $B9
    ld e, l                                       ; $6DC1: $5D
    sbc a                                         ; $6DC2: $9F
    ld c, c                                       ; $6DC3: $49
    jr nz, jr_026_6E27                            ; $6DC4: $20 $61

    ld [hl], b                                    ; $6DC6: $70
    ld l, a                                       ; $6DC7: $6F
    ld l, h                                       ; $6DC8: $6C
    ld l, a                                       ; $6DC9: $6F
    ld h, a                                       ; $6DCA: $67
    ld l, c                                       ; $6DCB: $69
    ld a, d                                       ; $6DCC: $7A
    ld h, l                                       ; $6DCD: $65
    jr nz, jr_026_6E36                            ; $6DCE: $20 $66

    ld l, a                                       ; $6DD0: $6F
    ld [hl], d                                    ; $6DD1: $72
    rst $38                                       ; $6DD2: $FF
    ld [hl], e                                    ; $6DD3: $73
    ld [hl], h                                    ; $6DD4: $74
    ld h, c                                       ; $6DD5: $61
    ld [hl], d                                    ; $6DD6: $72
    ld [hl], h                                    ; $6DD7: $74
    ld l, h                                       ; $6DD8: $6C
    ld l, c                                       ; $6DD9: $69
    ld l, [hl]                                    ; $6DDA: $6E
    ld h, a                                       ; $6DDB: $67
    jr nz, jr_026_6E57                            ; $6DDC: $20 $79

    ld l, a                                       ; $6DDE: $6F
    ld [hl], l                                    ; $6DDF: $75
    inc l                                         ; $6DE0: $2C
    cp $47                                        ; $6DE1: $FE $47
    ld [hl], d                                    ; $6DE3: $72
    ld h, l                                       ; $6DE4: $65
    ld h, c                                       ; $6DE5: $61
    ld [hl], h                                    ; $6DE6: $74
    jr nz, jr_026_6E36                            ; $6DE7: $20 $4D

    ld h, c                                       ; $6DE9: $61
    ld h, a                                       ; $6DEA: $67
    ld [hl], l                                    ; $6DEB: $75
    ld [hl], e                                    ; $6DEC: $73
    ld l, $FF                                     ; $6DED: $2E $FF

jr_026_6DEF:
    ld d, h                                       ; $6DEF: $54
    ld l, b                                       ; $6DF0: $68
    ld l, c                                       ; $6DF1: $69
    ld [hl], e                                    ; $6DF2: $73
    jr nz, @+$6B                                  ; $6DF3: $20 $69

    ld [hl], e                                    ; $6DF5: $73
    cp $70                                        ; $6DF6: $FE $70
    ld [hl], d                                    ; $6DF8: $72
    ld l, a                                       ; $6DF9: $6F
    ld h, d                                       ; $6DFA: $62
    ld h, c                                       ; $6DFB: $61
    ld h, d                                       ; $6DFC: $62
    ld l, h                                       ; $6DFD: $6C
    ld a, c                                       ; $6DFE: $79
    rst $38                                       ; $6DFF: $FF
    ld [hl], e                                    ; $6E00: $73
    ld l, a                                       ; $6E01: $6F
    ld l, l                                       ; $6E02: $6D
    ld h, l                                       ; $6E03: $65
    ld [hl], h                                    ; $6E04: $74
    ld l, b                                       ; $6E05: $68
    ld l, c                                       ; $6E06: $69
    ld l, [hl]                                    ; $6E07: $6E
    ld h, a                                       ; $6E08: $67
    jr nz, jr_026_6E7A                            ; $6E09: $20 $6F

    ld h, [hl]                                    ; $6E0B: $66
    jr nz, jr_026_6E6F                            ; $6E0C: $20 $61

jr_026_6E0E:
    cp $73                                        ; $6E0E: $FE $73
    ld [hl], l                                    ; $6E10: $75
    ld [hl], d                                    ; $6E11: $72

jr_026_6E12:
    ld [hl], b                                    ; $6E12: $70
    ld [hl], d                                    ; $6E13: $72
    ld l, c                                       ; $6E14: $69
    ld [hl], e                                    ; $6E15: $73
    ld h, l                                       ; $6E16: $65
    jr nz, jr_026_6E8D                            ; $6E17: $20 $74

    ld l, a                                       ; $6E19: $6F
    rst $38                                       ; $6E1A: $FF
    ld a, c                                       ; $6E1B: $79
    ld l, a                                       ; $6E1C: $6F
    ld [hl], l                                    ; $6E1D: $75
    ld l, $FE                                     ; $6E1E: $2E $FE
    db $FD                                        ; $6E20: $FD
    ld e, b                                       ; $6E21: $58
    ld [bc], a                                    ; $6E22: $02
    sbc e                                         ; $6E23: $9B
    ld a, b                                       ; $6E24: $78
    ld [hl], b                                    ; $6E25: $70
    sbc a                                         ; $6E26: $9F

jr_026_6E27:
    ld c, d                                       ; $6E27: $4A
    ld [hl], l                                    ; $6E28: $75
    ld [hl], e                                    ; $6E29: $73
    ld [hl], h                                    ; $6E2A: $74
    ld l, $2E                                     ; $6E2B: $2E $2E
    ld l, $20                                     ; $6E2D: $2E $20
    ld [hl], a                                    ; $6E2F: $77
    ld l, b                                       ; $6E30: $68
    ld l, a                                       ; $6E31: $6F
    jr nz, jr_026_6E95                            ; $6E32: $20 $61

    ld [hl], d                                    ; $6E34: $72
    ld h, l                                       ; $6E35: $65

jr_026_6E36:
    rst $38                                       ; $6E36: $FF
    ld a, c                                       ; $6E37: $79
    ld l, a                                       ; $6E38: $6F
    ld [hl], l                                    ; $6E39: $75
    ccf                                           ; $6E3A: $3F
    jr nz, jr_026_6E94                            ; $6E3B: $20 $57

    ld l, b                                       ; $6E3D: $68
    ld h, c                                       ; $6E3E: $61
    ld [hl], h                                    ; $6E3F: $74
    jr nz, jr_026_6EA6                            ; $6E40: $20 $64

    ld l, c                                       ; $6E42: $69
    ld h, h                                       ; $6E43: $64
    cp $79                                        ; $6E44: $FE $79
    ld l, a                                       ; $6E46: $6F
    ld [hl], l                                    ; $6E47: $75
    jr nz, jr_026_6EAE                            ; $6E48: $20 $64

    ld l, a                                       ; $6E4A: $6F
    jr nz, jr_026_6EC1                            ; $6E4B: $20 $74

    ld l, a                                       ; $6E4D: $6F
    rst $38                                       ; $6E4E: $FF
    ld b, l                                       ; $6E4F: $45
    ld l, c                                       ; $6E50: $69
    ld h, h                                       ; $6E51: $64
    ld l, a                                       ; $6E52: $6F
    ld l, [hl]                                    ; $6E53: $6E
    ccf                                           ; $6E54: $3F
    cp $FD                                        ; $6E55: $FE $FD

jr_026_6E57:
    sbc e                                         ; $6E57: $9B
    cp c                                          ; $6E58: $B9
    ld e, l                                       ; $6E59: $5D
    sbc a                                         ; $6E5A: $9F
    ld d, a                                       ; $6E5B: $57
    ld h, l                                       ; $6E5C: $65
    jr nz, jr_026_6EC0                            ; $6E5D: $20 $61

    ld [hl], d                                    ; $6E5F: $72
    ld h, l                                       ; $6E60: $65
    rst $38                                       ; $6E61: $FF
    ld b, c                                       ; $6E62: $41
    ld [hl], d                                    ; $6E63: $72
    ld h, h                                       ; $6E64: $64
    ld h, l                                       ; $6E65: $65
    ld [hl], d                                    ; $6E66: $72
    ld l, c                                       ; $6E67: $69
    ld h, c                                       ; $6E68: $61
    ld l, h                                       ; $6E69: $6C
    ld [hl], e                                    ; $6E6A: $73
    inc l                                         ; $6E6B: $2C
    cp $70                                        ; $6E6C: $FE $70
    ld h, l                                       ; $6E6E: $65

jr_026_6E6F:
    ld l, a                                       ; $6E6F: $6F
    ld [hl], b                                    ; $6E70: $70
    ld l, h                                       ; $6E71: $6C
    ld h, l                                       ; $6E72: $65
    jr nz, @+$71                                  ; $6E73: $20 $6F

    ld h, [hl]                                    ; $6E75: $66
    jr nz, @+$76                                  ; $6E76: $20 $74

    ld l, b                                       ; $6E78: $68
    ld h, l                                       ; $6E79: $65

jr_026_6E7A:
    rst $38                                       ; $6E7A: $FF
    ld [hl], e                                    ; $6E7B: $73
    ld l, e                                       ; $6E7C: $6B
    ld a, c                                       ; $6E7D: $79
    ld l, $20                                     ; $6E7E: $2E $20
    ld b, [hl]                                    ; $6E80: $46
    ld l, a                                       ; $6E81: $6F
    ld [hl], d                                    ; $6E82: $72
    cp $63                                        ; $6E83: $FE $63
    ld h, l                                       ; $6E85: $65
    ld l, [hl]                                    ; $6E86: $6E
    ld [hl], h                                    ; $6E87: $74
    ld [hl], l                                    ; $6E88: $75
    ld [hl], d                                    ; $6E89: $72
    ld l, c                                       ; $6E8A: $69
    ld h, l                                       ; $6E8B: $65
    ld [hl], e                                    ; $6E8C: $73

jr_026_6E8D:
    jr nz, jr_026_6F06                            ; $6E8D: $20 $77

    ld h, l                                       ; $6E8F: $65
    rst $38                                       ; $6E90: $FF
    ld l, b                                       ; $6E91: $68
    ld h, c                                       ; $6E92: $61
    halt                                          ; $6E93: $76

jr_026_6E94:
    ld h, l                                       ; $6E94: $65

jr_026_6E95:
    jr nz, jr_026_6F00                            ; $6E95: $20 $69

    ld [hl], e                                    ; $6E97: $73
    ld l, a                                       ; $6E98: $6F
    ld l, h                                       ; $6E99: $6C
    ld h, c                                       ; $6E9A: $61
    ld [hl], h                                    ; $6E9B: $74
    ld h, l                                       ; $6E9C: $65
    ld h, h                                       ; $6E9D: $64
    cp $6F                                        ; $6E9E: $FE $6F
    ld [hl], l                                    ; $6EA0: $75
    ld [hl], d                                    ; $6EA1: $72
    ld [hl], e                                    ; $6EA2: $73
    ld h, l                                       ; $6EA3: $65
    ld l, h                                       ; $6EA4: $6C
    halt                                          ; $6EA5: $76

jr_026_6EA6:
    ld h, l                                       ; $6EA6: $65
    ld [hl], e                                    ; $6EA7: $73
    jr nz, @+$68                                  ; $6EA8: $20 $66

    ld [hl], d                                    ; $6EAA: $72
    ld l, a                                       ; $6EAB: $6F
    ld l, l                                       ; $6EAC: $6D
    rst $38                                       ; $6EAD: $FF

jr_026_6EAE:
    ld [hl], h                                    ; $6EAE: $74
    ld l, b                                       ; $6EAF: $68
    ld h, l                                       ; $6EB0: $65
    jr nz, jr_026_6F22                            ; $6EB1: $20 $6F

    ld [hl], h                                    ; $6EB3: $74
    ld l, b                                       ; $6EB4: $68
    ld h, l                                       ; $6EB5: $65
    ld [hl], d                                    ; $6EB6: $72
    cp $63                                        ; $6EB7: $FE $63
    ld l, a                                       ; $6EB9: $6F
    ld [hl], l                                    ; $6EBA: $75
    ld l, [hl]                                    ; $6EBB: $6E
    ld [hl], h                                    ; $6EBC: $74
    ld [hl], d                                    ; $6EBD: $72
    ld l, c                                       ; $6EBE: $69
    ld h, l                                       ; $6EBF: $65

jr_026_6EC0:
    ld [hl], e                                    ; $6EC0: $73

jr_026_6EC1:
    jr nz, jr_026_6F32                            ; $6EC1: $20 $6F

    ld h, [hl]                                    ; $6EC3: $66
    rst $38                                       ; $6EC4: $FF
    ld c, l                                       ; $6EC5: $4D
    ld h, c                                       ; $6EC6: $61
    ld h, a                                       ; $6EC7: $67
    ld l, c                                       ; $6EC8: $69
    dec l                                         ; $6EC9: $2D
    ld c, [hl]                                    ; $6ECA: $4E
    ld h, c                                       ; $6ECB: $61
    ld [hl], h                                    ; $6ECC: $74
    ld l, c                                       ; $6ECD: $69
    ld l, a                                       ; $6ECE: $6F
    ld l, [hl]                                    ; $6ECF: $6E
    inc l                                         ; $6ED0: $2C
    cp $62                                        ; $6ED1: $FE $62
    ld [hl], l                                    ; $6ED3: $75
    ld [hl], h                                    ; $6ED4: $74
    jr nz, jr_026_6F4B                            ; $6ED5: $20 $74

    ld l, b                                       ; $6ED7: $68
    ld h, l                                       ; $6ED8: $65
    rst $38                                       ; $6ED9: $FF
    ld [hl], e                                    ; $6EDA: $73
    ld l, c                                       ; $6EDB: $69
    ld [hl], h                                    ; $6EDC: $74
    ld [hl], l                                    ; $6EDD: $75
    ld h, c                                       ; $6EDE: $61
    ld [hl], h                                    ; $6EDF: $74
    ld l, c                                       ; $6EE0: $69
    ld l, a                                       ; $6EE1: $6F
    ld l, [hl]                                    ; $6EE2: $6E
    jr nz, @+$7B                                  ; $6EE3: $20 $79

    ld l, a                                       ; $6EE5: $6F
    ld [hl], l                                    ; $6EE6: $75
    cp $61                                        ; $6EE7: $FE $61
    ld [hl], d                                    ; $6EE9: $72
    ld h, l                                       ; $6EEA: $65
    jr nz, jr_026_6F56                            ; $6EEB: $20 $69

    ld l, [hl]                                    ; $6EED: $6E
    halt                                          ; $6EEE: $76
    ld l, a                                       ; $6EEF: $6F
    ld l, h                                       ; $6EF0: $6C
    halt                                          ; $6EF1: $76
    ld h, l                                       ; $6EF2: $65
    ld h, h                                       ; $6EF3: $64
    jr nz, jr_026_6F5F                            ; $6EF4: $20 $69

    ld l, [hl]                                    ; $6EF6: $6E
    rst $38                                       ; $6EF7: $FF
    ld l, c                                       ; $6EF8: $69
    ld [hl], e                                    ; $6EF9: $73
    jr nz, @+$75                                  ; $6EFA: $20 $73

    ld l, a                                       ; $6EFC: $6F
    ld l, l                                       ; $6EFD: $6D
    ld h, l                                       ; $6EFE: $65
    ld [hl], h                                    ; $6EFF: $74

jr_026_6F00:
    ld l, b                                       ; $6F00: $68
    ld l, c                                       ; $6F01: $69
    ld l, [hl]                                    ; $6F02: $6E
    ld h, a                                       ; $6F03: $67
    jr nz, jr_026_6F7D                            ; $6F04: $20 $77

jr_026_6F06:
    ld h, l                                       ; $6F06: $65
    cp $68                                        ; $6F07: $FE $68
    ld h, c                                       ; $6F09: $61
    halt                                          ; $6F0A: $76
    ld h, l                                       ; $6F0B: $65
    ld l, [hl]                                    ; $6F0C: $6E
    daa                                           ; $6F0D: $27
    ld [hl], h                                    ; $6F0E: $74
    jr nz, jr_026_6F73                            ; $6F0F: $20 $62

    ld h, l                                       ; $6F11: $65
    ld h, l                                       ; $6F12: $65
    ld l, [hl]                                    ; $6F13: $6E
    rst $38                                       ; $6F14: $FF
    ld h, c                                       ; $6F15: $61
    ld h, d                                       ; $6F16: $62
    ld l, h                                       ; $6F17: $6C
    ld h, l                                       ; $6F18: $65
    jr nz, jr_026_6F8F                            ; $6F19: $20 $74

    ld l, a                                       ; $6F1B: $6F
    jr nz, jr_026_6F87                            ; $6F1C: $20 $69

    ld h, a                                       ; $6F1E: $67
    ld l, [hl]                                    ; $6F1F: $6E
    ld l, a                                       ; $6F20: $6F
    ld [hl], d                                    ; $6F21: $72

jr_026_6F22:
    ld h, l                                       ; $6F22: $65
    ld l, $FE                                     ; $6F23: $2E $FE
    ld b, c                                       ; $6F25: $41
    ld [hl], e                                    ; $6F26: $73
    jr nz, jr_026_6F8F                            ; $6F27: $20 $66

    ld l, a                                       ; $6F29: $6F
    ld [hl], d                                    ; $6F2A: $72
    jr nz, jr_026_6FA6                            ; $6F2B: $20 $79

    ld l, a                                       ; $6F2D: $6F
    ld [hl], l                                    ; $6F2E: $75
    ld [hl], d                                    ; $6F2F: $72
    rst $38                                       ; $6F30: $FF
    ld h, [hl]                                    ; $6F31: $66

jr_026_6F32:
    ld [hl], d                                    ; $6F32: $72
    ld l, c                                       ; $6F33: $69
    ld h, l                                       ; $6F34: $65
    ld l, [hl]                                    ; $6F35: $6E
    ld h, h                                       ; $6F36: $64
    jr nz, jr_026_6F7E                            ; $6F37: $20 $45

    ld l, c                                       ; $6F39: $69
    ld h, h                                       ; $6F3A: $64
    ld l, a                                       ; $6F3B: $6F
    ld l, [hl]                                    ; $6F3C: $6E
    inc l                                         ; $6F3D: $2C
    cp $77                                        ; $6F3E: $FE $77
    ld h, l                                       ; $6F40: $65
    jr nz, jr_026_6FB0                            ; $6F41: $20 $6D

    ld h, l                                       ; $6F43: $65
    ld [hl], d                                    ; $6F44: $72
    ld h, l                                       ; $6F45: $65
    ld l, h                                       ; $6F46: $6C
    ld a, c                                       ; $6F47: $79
    jr nz, jr_026_6FAE                            ; $6F48: $20 $64

    ld h, l                                       ; $6F4A: $65

jr_026_6F4B:
    ld h, c                                       ; $6F4B: $61
    ld l, h                                       ; $6F4C: $6C
    ld [hl], h                                    ; $6F4D: $74
    rst $38                                       ; $6F4E: $FF
    ld l, b                                       ; $6F4F: $68
    ld l, c                                       ; $6F50: $69
    ld l, l                                       ; $6F51: $6D
    jr nz, jr_026_6FB5                            ; $6F52: $20 $61

    jr nz, jr_026_6FBE                            ; $6F54: $20 $68

jr_026_6F56:
    ld h, c                                       ; $6F56: $61
    ld [hl], d                                    ; $6F57: $72
    ld l, l                                       ; $6F58: $6D
    ld l, h                                       ; $6F59: $6C
    ld h, l                                       ; $6F5A: $65
    ld [hl], e                                    ; $6F5B: $73
    ld [hl], e                                    ; $6F5C: $73
    cp $62                                        ; $6F5D: $FE $62

jr_026_6F5F:
    ld l, h                                       ; $6F5F: $6C
    ld l, a                                       ; $6F60: $6F
    ld [hl], a                                    ; $6F61: $77
    ld l, $20                                     ; $6F62: $2E $20
    ld c, b                                       ; $6F64: $48
    ld h, l                                       ; $6F65: $65
    jr nz, jr_026_6FDF                            ; $6F66: $20 $77

    ld l, c                                       ; $6F68: $69
    ld l, h                                       ; $6F69: $6C
    ld l, h                                       ; $6F6A: $6C
    rst $38                                       ; $6F6B: $FF
    ld h, d                                       ; $6F6C: $62
    ld h, l                                       ; $6F6D: $65
    jr nz, jr_026_6FD6                            ; $6F6E: $20 $66

    ld l, c                                       ; $6F70: $69
    ld l, [hl]                                    ; $6F71: $6E
    ld h, l                                       ; $6F72: $65

jr_026_6F73:
    ld l, $FE                                     ; $6F73: $2E $FE
    db $FD                                        ; $6F75: $FD
    ld e, b                                       ; $6F76: $58
    inc bc                                        ; $6F77: $03
    sbc e                                         ; $6F78: $9B
    ld a, b                                       ; $6F79: $78
    ld [hl], b                                    ; $6F7A: $70
    sbc a                                         ; $6F7B: $9F
    ld d, a                                       ; $6F7C: $57

jr_026_6F7D:
    ld h, c                                       ; $6F7D: $61

jr_026_6F7E:
    ld l, c                                       ; $6F7E: $69
    ld [hl], h                                    ; $6F7F: $74
    jr nz, jr_026_6FE3                            ; $6F80: $20 $61

    jr nz, jr_026_6FF1                            ; $6F82: $20 $6D

    ld l, c                                       ; $6F84: $69
    ld l, [hl]                                    ; $6F85: $6E
    ld [hl], l                                    ; $6F86: $75

jr_026_6F87:
    ld [hl], h                                    ; $6F87: $74
    ld h, l                                       ; $6F88: $65
    inc l                                         ; $6F89: $2C
    cp $49                                        ; $6F8A: $FE $49
    jr nz, jr_026_7000                            ; $6F8C: $20 $72

    ld h, l                                       ; $6F8E: $65

jr_026_6F8F:
    ld h, e                                       ; $6F8F: $63
    ld l, a                                       ; $6F90: $6F
    ld h, a                                       ; $6F91: $67
    ld l, [hl]                                    ; $6F92: $6E
    ld l, c                                       ; $6F93: $69
    ld a, d                                       ; $6F94: $7A
    ld h, l                                       ; $6F95: $65
    rst $38                                       ; $6F96: $FF
    ld [hl], h                                    ; $6F97: $74
    ld l, b                                       ; $6F98: $68
    ld h, c                                       ; $6F99: $61
    ld [hl], h                                    ; $6F9A: $74
    jr nz, jr_026_7013                            ; $6F9B: $20 $76

    ld l, a                                       ; $6F9D: $6F
    ld l, c                                       ; $6F9E: $69
    ld h, e                                       ; $6F9F: $63
    ld h, l                                       ; $6FA0: $65
    ld l, $2E                                     ; $6FA1: $2E $2E
    ld l, $FE                                     ; $6FA3: $2E $FE
    db $FD                                        ; $6FA5: $FD

jr_026_6FA6:
    sbc e                                         ; $6FA6: $9B
    cp c                                          ; $6FA7: $B9
    ld e, l                                       ; $6FA8: $5D
    sbc a                                         ; $6FA9: $9F
    ld e, c                                       ; $6FAA: $59
    ld h, l                                       ; $6FAB: $65
    ld [hl], e                                    ; $6FAC: $73
    inc l                                         ; $6FAD: $2C

jr_026_6FAE:
    jr nz, @+$6B                                  ; $6FAE: $20 $69

jr_026_6FB0:
    ld [hl], h                                    ; $6FB0: $74
    jr nz, jr_026_702A                            ; $6FB1: $20 $77

    ld h, c                                       ; $6FB3: $61
    ld [hl], e                                    ; $6FB4: $73

jr_026_6FB5:
    jr nz, jr_026_7000                            ; $6FB5: $20 $49

    rst $38                                       ; $6FB7: $FF
    ld [hl], a                                    ; $6FB8: $77
    ld l, b                                       ; $6FB9: $68
    ld l, a                                       ; $6FBA: $6F
    jr nz, jr_026_7025                            ; $6FBB: $20 $68

    ld h, l                                       ; $6FBD: $65

jr_026_6FBE:
    ld l, h                                       ; $6FBE: $6C
    ld [hl], b                                    ; $6FBF: $70
    ld h, l                                       ; $6FC0: $65
    ld h, h                                       ; $6FC1: $64
    jr nz, jr_026_703D                            ; $6FC2: $20 $79

    ld l, a                                       ; $6FC4: $6F
    ld [hl], l                                    ; $6FC5: $75
    cp $6F                                        ; $6FC6: $FE $6F
    ld [hl], l                                    ; $6FC8: $75
    ld [hl], h                                    ; $6FC9: $74
    jr nz, jr_026_703B                            ; $6FCA: $20 $6F

    ld h, [hl]                                    ; $6FCC: $66
    jr nz, jr_026_7043                            ; $6FCD: $20 $74

    ld l, b                                       ; $6FCF: $68
    ld h, l                                       ; $6FD0: $65
    rst $38                                       ; $6FD1: $FF
    ld d, e                                       ; $6FD2: $53
    ld l, b                                       ; $6FD3: $68
    ld h, c                                       ; $6FD4: $61
    ld h, h                                       ; $6FD5: $64

jr_026_6FD6:
    ld l, a                                       ; $6FD6: $6F
    ld [hl], a                                    ; $6FD7: $77
    ld l, b                                       ; $6FD8: $68
    ld l, a                                       ; $6FD9: $6F
    ld l, h                                       ; $6FDA: $6C
    ld h, h                                       ; $6FDB: $64
    ld l, $FE                                     ; $6FDC: $2E $FE
    ld d, l                                       ; $6FDE: $55

jr_026_6FDF:
    ld l, [hl]                                    ; $6FDF: $6E
    ld h, [hl]                                    ; $6FE0: $66
    ld l, a                                       ; $6FE1: $6F
    ld [hl], d                                    ; $6FE2: $72

jr_026_6FE3:
    ld [hl], h                                    ; $6FE3: $74
    ld [hl], l                                    ; $6FE4: $75
    ld l, [hl]                                    ; $6FE5: $6E
    ld h, c                                       ; $6FE6: $61
    ld [hl], h                                    ; $6FE7: $74
    ld h, l                                       ; $6FE8: $65
    ld l, h                                       ; $6FE9: $6C
    ld a, c                                       ; $6FEA: $79
    jr nz, jr_026_7036                            ; $6FEB: $20 $49

    rst $38                                       ; $6FED: $FF
    ld [hl], a                                    ; $6FEE: $77
    ld h, c                                       ; $6FEF: $61
    ld [hl], e                                    ; $6FF0: $73

jr_026_6FF1:
    jr nz, jr_026_7066                            ; $6FF1: $20 $73

    ld l, c                                       ; $6FF3: $69
    ld h, h                                       ; $6FF4: $64
    ld h, l                                       ; $6FF5: $65
    ld [hl], h                                    ; $6FF6: $74
    ld [hl], d                                    ; $6FF7: $72
    ld h, c                                       ; $6FF8: $61
    ld h, e                                       ; $6FF9: $63
    ld l, e                                       ; $6FFA: $6B
    ld h, l                                       ; $6FFB: $65
    ld h, h                                       ; $6FFC: $64
    cp $74                                        ; $6FFD: $FE $74
    ld l, b                                       ; $6FFF: $68

jr_026_7000:
    ld h, l                                       ; $7000: $65
    ld [hl], d                                    ; $7001: $72
    ld h, l                                       ; $7002: $65
    jr nz, jr_026_7078                            ; $7003: $20 $73

    ld l, a                                       ; $7005: $6F
    jr nz, jr_026_7051                            ; $7006: $20 $49

    jr nz, jr_026_7072                            ; $7008: $20 $68

    ld h, c                                       ; $700A: $61
    ld h, h                                       ; $700B: $64
    rst $38                                       ; $700C: $FF
    ld [hl], h                                    ; $700D: $74
    ld l, a                                       ; $700E: $6F
    jr nz, jr_026_7081                            ; $700F: $20 $70

    ld l, h                                       ; $7011: $6C
    ld h, c                                       ; $7012: $61

jr_026_7013:
    ld h, e                                       ; $7013: $63
    ld h, l                                       ; $7014: $65
    jr nz, jr_026_7084                            ; $7015: $20 $6D

    ld a, c                                       ; $7017: $79
    cp $66                                        ; $7018: $FE $66
    ld h, c                                       ; $701A: $61
    ld l, c                                       ; $701B: $69
    ld [hl], h                                    ; $701C: $74
    ld l, b                                       ; $701D: $68
    jr nz, @+$6B                                  ; $701E: $20 $69

    ld l, [hl]                                    ; $7020: $6E
    jr nz, jr_026_709C                            ; $7021: $20 $79

    ld l, a                                       ; $7023: $6F
    ld [hl], l                                    ; $7024: $75

jr_026_7025:
    rst $38                                       ; $7025: $FF
    ld [hl], h                                    ; $7026: $74
    ld l, b                                       ; $7027: $68
    ld h, c                                       ; $7028: $61
    ld [hl], h                                    ; $7029: $74

jr_026_702A:
    jr nz, jr_026_70A5                            ; $702A: $20 $79

    ld l, a                                       ; $702C: $6F
    ld [hl], l                                    ; $702D: $75
    jr nz, @+$6F                                  ; $702E: $20 $6D

    ld l, c                                       ; $7030: $69
    ld h, a                                       ; $7031: $67
    ld l, b                                       ; $7032: $68
    ld [hl], h                                    ; $7033: $74
    cp $65                                        ; $7034: $FE $65

jr_026_7036:
    ld [hl], e                                    ; $7036: $73
    ld h, e                                       ; $7037: $63
    ld h, c                                       ; $7038: $61
    ld [hl], b                                    ; $7039: $70
    ld h, l                                       ; $703A: $65

jr_026_703B:
    jr nz, jr_026_70B4                            ; $703B: $20 $77

jr_026_703D:
    ld l, c                                       ; $703D: $69
    ld [hl], h                                    ; $703E: $74
    ld l, b                                       ; $703F: $68
    ld l, a                                       ; $7040: $6F
    ld [hl], l                                    ; $7041: $75
    ld [hl], h                                    ; $7042: $74

jr_026_7043:
    rst $38                                       ; $7043: $FF
    ld l, l                                       ; $7044: $6D
    ld a, c                                       ; $7045: $79
    jr nz, jr_026_70B0                            ; $7046: $20 $68

    ld h, l                                       ; $7048: $65
    ld l, h                                       ; $7049: $6C
    ld [hl], b                                    ; $704A: $70
    ld l, $2E                                     ; $704B: $2E $2E
    ld l, $FE                                     ; $704D: $2E $FE
    ld [hl], a                                    ; $704F: $77
    ld l, b                                       ; $7050: $68

jr_026_7051:
    ld l, c                                       ; $7051: $69
    ld h, e                                       ; $7052: $63
    ld l, b                                       ; $7053: $68
    jr nz, jr_026_70CF                            ; $7054: $20 $79

    ld l, a                                       ; $7056: $6F
    ld [hl], l                                    ; $7057: $75
    jr nz, jr_026_70BE                            ; $7058: $20 $64

    ld l, c                                       ; $705A: $69
    ld h, h                                       ; $705B: $64
    ld l, $FE                                     ; $705C: $2E $FE
    db $FD                                        ; $705E: $FD
    ld e, b                                       ; $705F: $58
    inc b                                         ; $7060: $04
    sbc e                                         ; $7061: $9B
    ld a, b                                       ; $7062: $78
    ld [hl], b                                    ; $7063: $70
    sbc a                                         ; $7064: $9F
    ld d, e                                       ; $7065: $53

jr_026_7066:
    ld l, a                                       ; $7066: $6F
    jr nz, @+$79                                  ; $7067: $20 $77

    ld l, b                                       ; $7069: $68
    ld h, c                                       ; $706A: $61
    ld [hl], h                                    ; $706B: $74
    jr nz, jr_026_70D2                            ; $706C: $20 $64

    ld l, a                                       ; $706E: $6F
    jr nz, jr_026_70EA                            ; $706F: $20 $79

    ld l, a                                       ; $7071: $6F

jr_026_7072:
    ld [hl], l                                    ; $7072: $75
    rst $38                                       ; $7073: $FF
    ld [hl], a                                    ; $7074: $77
    ld h, c                                       ; $7075: $61
    ld l, [hl]                                    ; $7076: $6E
    ld [hl], h                                    ; $7077: $74

jr_026_7078:
    jr nz, jr_026_70F1                            ; $7078: $20 $77

    ld l, c                                       ; $707A: $69
    ld [hl], h                                    ; $707B: $74
    ld l, b                                       ; $707C: $68
    jr nz, jr_026_70EC                            ; $707D: $20 $6D

    ld h, l                                       ; $707F: $65
    ccf                                           ; $7080: $3F

jr_026_7081:
    cp $FD                                        ; $7081: $FE $FD
    sbc e                                         ; $7083: $9B

jr_026_7084:
    cp c                                          ; $7084: $B9
    ld e, l                                       ; $7085: $5D
    sbc a                                         ; $7086: $9F
    ld b, c                                       ; $7087: $41
    jr nz, jr_026_70F1                            ; $7088: $20 $67

    ld l, c                                       ; $708A: $69
    ld h, c                                       ; $708B: $61
    ld l, [hl]                                    ; $708C: $6E
    ld [hl], h                                    ; $708D: $74
    rst $38                                       ; $708E: $FF
    ld d, e                                       ; $708F: $53
    ld l, b                                       ; $7090: $68
    ld h, c                                       ; $7091: $61
    ld h, h                                       ; $7092: $64
    ld l, a                                       ; $7093: $6F
    ld [hl], a                                    ; $7094: $77
    jr nz, jr_026_70DE                            ; $7095: $20 $47

    ld h, l                                       ; $7097: $65
    ld a, c                                       ; $7098: $79
    ld [hl], e                                    ; $7099: $73
    ld h, l                                       ; $709A: $65
    ld [hl], d                                    ; $709B: $72

jr_026_709C:
    cp $68                                        ; $709C: $FE $68
    ld h, c                                       ; $709E: $61
    ld [hl], e                                    ; $709F: $73
    jr nz, jr_026_7103                            ; $70A0: $20 $61

    ld [hl], b                                    ; $70A2: $70
    ld [hl], b                                    ; $70A3: $70
    ld h, l                                       ; $70A4: $65

jr_026_70A5:
    ld h, c                                       ; $70A5: $61
    ld [hl], d                                    ; $70A6: $72
    ld h, l                                       ; $70A7: $65
    ld h, h                                       ; $70A8: $64
    rst $38                                       ; $70A9: $FF
    ld l, [hl]                                    ; $70AA: $6E
    ld h, l                                       ; $70AB: $65
    ld h, c                                       ; $70AC: $61
    ld [hl], d                                    ; $70AD: $72
    jr nz, jr_026_7124                            ; $70AE: $20 $74

jr_026_70B0:
    ld l, b                                       ; $70B0: $68
    ld h, l                                       ; $70B1: $65
    cp $70                                        ; $70B2: $FE $70

jr_026_70B4:
    ld h, c                                       ; $70B4: $61
    ld l, h                                       ; $70B5: $6C
    ld h, c                                       ; $70B6: $61
    ld h, e                                       ; $70B7: $63
    ld h, l                                       ; $70B8: $65
    ld l, $20                                     ; $70B9: $2E $20
    ld b, e                                       ; $70BB: $43
    ld l, a                                       ; $70BC: $6F
    ld [hl], d                                    ; $70BD: $72

jr_026_70BE:
    ld h, l                                       ; $70BE: $65
    rst $38                                       ; $70BF: $FF
    ld h, e                                       ; $70C0: $63
    ld [hl], d                                    ; $70C1: $72
    ld h, l                                       ; $70C2: $65
    ld h, c                                       ; $70C3: $61
    ld [hl], h                                    ; $70C4: $74
    ld [hl], l                                    ; $70C5: $75
    ld [hl], d                                    ; $70C6: $72
    ld h, l                                       ; $70C7: $65
    ld [hl], e                                    ; $70C8: $73
    jr nz, jr_026_712C                            ; $70C9: $20 $61

    ld [hl], d                                    ; $70CB: $72
    ld h, l                                       ; $70CC: $65
    cp $77                                        ; $70CD: $FE $77

jr_026_70CF:
    ld [hl], d                                    ; $70CF: $72
    ld h, l                                       ; $70D0: $65
    ld h, c                                       ; $70D1: $61

jr_026_70D2:
    ld l, e                                       ; $70D2: $6B
    ld l, c                                       ; $70D3: $69
    ld l, [hl]                                    ; $70D4: $6E
    ld h, a                                       ; $70D5: $67
    jr nz, jr_026_7140                            ; $70D6: $20 $68

    ld h, c                                       ; $70D8: $61
    halt                                          ; $70D9: $76
    ld l, a                                       ; $70DA: $6F
    ld h, e                                       ; $70DB: $63
    rst $38                                       ; $70DC: $FF
    ld l, a                                       ; $70DD: $6F

jr_026_70DE:
    ld l, [hl]                                    ; $70DE: $6E
    jr nz, jr_026_7142                            ; $70DF: $20 $61

    ld l, h                                       ; $70E1: $6C
    ld l, h                                       ; $70E2: $6C
    jr nz, jr_026_7159                            ; $70E3: $20 $74

    ld l, b                                       ; $70E5: $68
    ld h, l                                       ; $70E6: $65
    cp $69                                        ; $70E7: $FE $69
    ld l, [hl]                                    ; $70E9: $6E

jr_026_70EA:
    ld l, b                                       ; $70EA: $68
    ld h, c                                       ; $70EB: $61

jr_026_70EC:
    ld h, d                                       ; $70EC: $62
    ld l, c                                       ; $70ED: $69
    ld [hl], h                                    ; $70EE: $74
    ld h, c                                       ; $70EF: $61
    ld l, [hl]                                    ; $70F0: $6E

jr_026_70F1:
    ld [hl], h                                    ; $70F1: $74
    ld [hl], e                                    ; $70F2: $73
    jr nz, jr_026_7164                            ; $70F3: $20 $6F

    ld h, [hl]                                    ; $70F5: $66
    rst $38                                       ; $70F6: $FF
    ld b, c                                       ; $70F7: $41
    ld [hl], d                                    ; $70F8: $72
    ld h, h                                       ; $70F9: $64
    ld h, l                                       ; $70FA: $65
    ld [hl], d                                    ; $70FB: $72
    ld l, c                                       ; $70FC: $69
    ld h, c                                       ; $70FD: $61
    ld l, h                                       ; $70FE: $6C
    ld l, $FE                                     ; $70FF: $2E $FE
    db $FD                                        ; $7101: $FD
    sbc e                                         ; $7102: $9B

jr_026_7103:
    ld a, b                                       ; $7103: $78
    ld [hl], b                                    ; $7104: $70
    sbc a                                         ; $7105: $9F
    ld b, c                                       ; $7106: $41
    jr nz, @+$55                                  ; $7107: $20 $53

    ld l, b                                       ; $7109: $68
    ld h, c                                       ; $710A: $61
    ld h, h                                       ; $710B: $64
    ld l, a                                       ; $710C: $6F
    ld [hl], a                                    ; $710D: $77
    rst $38                                       ; $710E: $FF
    ld b, a                                       ; $710F: $47
    ld h, l                                       ; $7110: $65
    ld a, c                                       ; $7111: $79
    ld [hl], e                                    ; $7112: $73
    ld h, l                                       ; $7113: $65
    ld [hl], d                                    ; $7114: $72
    ccf                                           ; $7115: $3F
    jr nz, jr_026_716C                            ; $7116: $20 $54

    ld l, b                                       ; $7118: $68
    ld h, c                                       ; $7119: $61
    ld [hl], h                                    ; $711A: $74
    daa                                           ; $711B: $27
    ld [hl], e                                    ; $711C: $73
    cp $69                                        ; $711D: $FE $69
    ld l, l                                       ; $711F: $6D
    ld [hl], b                                    ; $7120: $70
    ld l, a                                       ; $7121: $6F
    ld [hl], e                                    ; $7122: $73
    ld [hl], e                                    ; $7123: $73

jr_026_7124:
    ld l, c                                       ; $7124: $69
    ld h, d                                       ; $7125: $62
    ld l, h                                       ; $7126: $6C
    ld h, l                                       ; $7127: $65
    ld hl, $4920                                  ; $7128: $21 $20 $49
    rst $38                                       ; $712B: $FF

jr_026_712C:
    ld l, b                                       ; $712C: $68
    ld h, c                                       ; $712D: $61
    halt                                          ; $712E: $76
    ld h, l                                       ; $712F: $65
    jr nz, jr_026_7193                            ; $7130: $20 $61

    ld l, h                                       ; $7132: $6C
    ld l, h                                       ; $7133: $6C
    jr nz, jr_026_71AA                            ; $7134: $20 $74

    ld l, b                                       ; $7136: $68
    ld h, l                                       ; $7137: $65
    cp $43                                        ; $7138: $FE $43
    ld l, a                                       ; $713A: $6F
    ld [hl], d                                    ; $713B: $72
    ld h, l                                       ; $713C: $65
    jr nz, jr_026_7192                            ; $713D: $20 $53

    ld [hl], h                                    ; $713F: $74

jr_026_7140:
    ld l, a                                       ; $7140: $6F
    ld l, [hl]                                    ; $7141: $6E

jr_026_7142:
    ld h, l                                       ; $7142: $65
    ld [hl], e                                    ; $7143: $73
    rst $38                                       ; $7144: $FF
    ld l, b                                       ; $7145: $68
    ld h, l                                       ; $7146: $65
    ld [hl], d                                    ; $7147: $72
    ld h, l                                       ; $7148: $65
    jr nz, @+$6B                                  ; $7149: $20 $69

    ld l, [hl]                                    ; $714B: $6E
    jr nz, jr_026_71C2                            ; $714C: $20 $74

    ld l, b                                       ; $714E: $68
    ld h, l                                       ; $714F: $65
    cp $43                                        ; $7150: $FE $43
    ld l, a                                       ; $7152: $6F
    ld [hl], d                                    ; $7153: $72
    ld h, l                                       ; $7154: $65
    jr nz, jr_026_719E                            ; $7155: $20 $47

    ld l, h                                       ; $7157: $6C
    ld a, c                                       ; $7158: $79

jr_026_7159:
    ld [hl], b                                    ; $7159: $70
    ld l, b                                       ; $715A: $68
    ld l, $FE                                     ; $715B: $2E $FE
    db $FD                                        ; $715D: $FD
    sbc e                                         ; $715E: $9B
    cp c                                          ; $715F: $B9
    ld e, l                                       ; $7160: $5D
    sbc a                                         ; $7161: $9F
    ld c, [hl]                                    ; $7162: $4E
    ld l, a                                       ; $7163: $6F

jr_026_7164:
    ld l, [hl]                                    ; $7164: $6E
    ld h, l                                       ; $7165: $65
    ld [hl], h                                    ; $7166: $74
    ld l, b                                       ; $7167: $68
    ld h, l                                       ; $7168: $65
    ld l, h                                       ; $7169: $6C
    ld h, l                                       ; $716A: $65
    ld [hl], e                                    ; $716B: $73

jr_026_716C:
    ld [hl], e                                    ; $716C: $73
    ld l, $2E                                     ; $716D: $2E $2E
    ld l, $FE                                     ; $716F: $2E $FE
    ld l, a                                       ; $7171: $6F
    ld l, [hl]                                    ; $7172: $6E
    ld h, l                                       ; $7173: $65
    jr nz, @+$6A                                  ; $7174: $20 $68

    ld h, c                                       ; $7176: $61
    ld [hl], e                                    ; $7177: $73
    rst $38                                       ; $7178: $FF
    ld h, c                                       ; $7179: $61
    ld [hl], b                                    ; $717A: $70
    ld [hl], b                                    ; $717B: $70
    ld h, l                                       ; $717C: $65
    ld h, c                                       ; $717D: $61
    ld [hl], d                                    ; $717E: $72
    ld h, l                                       ; $717F: $65
    ld h, h                                       ; $7180: $64
    inc l                                         ; $7181: $2C
    jr nz, jr_026_71E5                            ; $7182: $20 $61

    ld l, [hl]                                    ; $7184: $6E
    ld h, h                                       ; $7185: $64
    cp $69                                        ; $7186: $FE $69
    ld [hl], h                                    ; $7188: $74
    jr nz, jr_026_71F4                            ; $7189: $20 $69

    ld [hl], e                                    ; $718B: $73
    jr nz, jr_026_71EF                            ; $718C: $20 $61

    ld l, [hl]                                    ; $718E: $6E
    rst $38                                       ; $718F: $FF
    ld h, l                                       ; $7190: $65
    ld a, b                                       ; $7191: $78

jr_026_7192:
    ld [hl], h                                    ; $7192: $74

jr_026_7193:
    ld [hl], d                                    ; $7193: $72
    ld h, l                                       ; $7194: $65
    ld l, l                                       ; $7195: $6D
    ld h, l                                       ; $7196: $65
    ld l, h                                       ; $7197: $6C
    ld a, c                                       ; $7198: $79
    cp $70                                        ; $7199: $FE $70
    ld l, a                                       ; $719B: $6F
    ld [hl], a                                    ; $719C: $77
    ld h, l                                       ; $719D: $65

jr_026_719E:
    ld [hl], d                                    ; $719E: $72
    ld h, [hl]                                    ; $719F: $66
    ld [hl], l                                    ; $71A0: $75
    ld l, h                                       ; $71A1: $6C
    jr nz, jr_026_7213                            ; $71A2: $20 $6F

    ld l, [hl]                                    ; $71A4: $6E
    ld h, l                                       ; $71A5: $65
    ld l, $FF                                     ; $71A6: $2E $FF
    ld b, c                                       ; $71A8: $41
    ld [hl], e                                    ; $71A9: $73

jr_026_71AA:
    jr nz, jr_026_7223                            ; $71AA: $20 $77

    ld l, c                                       ; $71AC: $69
    ld [hl], h                                    ; $71AD: $74
    ld l, b                                       ; $71AE: $68
    jr nz, jr_026_7212                            ; $71AF: $20 $61

    ld l, h                                       ; $71B1: $6C
    ld l, h                                       ; $71B2: $6C
    jr nz, jr_026_7229                            ; $71B3: $20 $74

    ld l, b                                       ; $71B5: $68
    ld h, l                                       ; $71B6: $65
    cp $6F                                        ; $71B7: $FE $6F
    ld [hl], h                                    ; $71B9: $74
    ld l, b                                       ; $71BA: $68
    ld h, l                                       ; $71BB: $65
    ld [hl], d                                    ; $71BC: $72
    ld [hl], e                                    ; $71BD: $73
    inc l                                         ; $71BE: $2C
    rst $38                                       ; $71BF: $FF
    ld b, c                                       ; $71C0: $41
    ld [hl], d                                    ; $71C1: $72

jr_026_71C2:
    ld h, h                                       ; $71C2: $64
    ld h, l                                       ; $71C3: $65
    ld [hl], d                                    ; $71C4: $72
    ld l, c                                       ; $71C5: $69
    ld h, c                                       ; $71C6: $61
    ld l, h                                       ; $71C7: $6C
    jr nz, jr_026_7217                            ; $71C8: $20 $4D

    ld h, c                                       ; $71CA: $61
    ld h, a                                       ; $71CB: $67
    ld l, c                                       ; $71CC: $69
    cp $63                                        ; $71CD: $FE $63
    ld h, c                                       ; $71CF: $61
    ld l, [hl]                                    ; $71D0: $6E
    ld l, [hl]                                    ; $71D1: $6E
    ld l, a                                       ; $71D2: $6F
    ld [hl], h                                    ; $71D3: $74
    jr nz, @+$67                                  ; $71D4: $20 $65

    ld l, [hl]                                    ; $71D6: $6E
    ld [hl], h                                    ; $71D7: $74
    ld h, l                                       ; $71D8: $65
    ld [hl], d                                    ; $71D9: $72
    rst $38                                       ; $71DA: $FF
    ld l, c                                       ; $71DB: $69
    ld [hl], h                                    ; $71DC: $74
    ld l, $20                                     ; $71DD: $2E $20
    ld d, h                                       ; $71DF: $54
    ld l, b                                       ; $71E0: $68
    ld l, c                                       ; $71E1: $69
    ld [hl], e                                    ; $71E2: $73
    jr nz, jr_026_724E                            ; $71E3: $20 $69

jr_026_71E5:
    ld [hl], e                                    ; $71E5: $73
    jr nz, jr_026_725F                            ; $71E6: $20 $77

    ld l, b                                       ; $71E8: $68
    ld a, c                                       ; $71E9: $79
    cp $77                                        ; $71EA: $FE $77
    ld h, l                                       ; $71EC: $65
    jr nz, jr_026_7257                            ; $71ED: $20 $68

jr_026_71EF:
    ld h, c                                       ; $71EF: $61
    halt                                          ; $71F0: $76
    ld h, l                                       ; $71F1: $65
    jr nz, jr_026_7268                            ; $71F2: $20 $74

jr_026_71F4:
    ld l, a                                       ; $71F4: $6F
    rst $38                                       ; $71F5: $FF
    ld [hl], h                                    ; $71F6: $74
    ld h, c                                       ; $71F7: $61
    ld l, e                                       ; $71F8: $6B
    ld h, l                                       ; $71F9: $65
    jr nz, jr_026_7275                            ; $71FA: $20 $79

    ld l, a                                       ; $71FC: $6F
    ld [hl], l                                    ; $71FD: $75
    ld l, $FE                                     ; $71FE: $2E $FE
    ld d, b                                       ; $7200: $50
    ld l, h                                       ; $7201: $6C
    ld h, l                                       ; $7202: $65
    ld h, c                                       ; $7203: $61
    ld [hl], e                                    ; $7204: $73
    ld h, l                                       ; $7205: $65
    inc l                                         ; $7206: $2C
    jr nz, @+$7B                                  ; $7207: $20 $79

    ld l, a                                       ; $7209: $6F
    ld [hl], l                                    ; $720A: $75
    rst $38                                       ; $720B: $FF
    ld l, l                                       ; $720C: $6D
    ld [hl], l                                    ; $720D: $75
    ld [hl], e                                    ; $720E: $73
    ld [hl], h                                    ; $720F: $74
    jr nz, @+$6A                                  ; $7210: $20 $68

jr_026_7212:
    ld h, l                                       ; $7212: $65

jr_026_7213:
    ld l, h                                       ; $7213: $6C
    ld [hl], b                                    ; $7214: $70
    jr nz, jr_026_728C                            ; $7215: $20 $75

jr_026_7217:
    ld [hl], e                                    ; $7217: $73
    ld hl, $FDFE                                  ; $7218: $21 $FE $FD
    sbc e                                         ; $721B: $9B
    ld a, b                                       ; $721C: $78
    ld [hl], b                                    ; $721D: $70
    sbc a                                         ; $721E: $9F
    ld c, c                                       ; $721F: $49
    jr nz, jr_026_7295                            ; $7220: $20 $73

    ld h, l                                       ; $7222: $65

jr_026_7223:
    ld h, l                                       ; $7223: $65
    ld l, $FE                                     ; $7224: $2E $FE
    ld c, a                                       ; $7226: $4F
    ld l, e                                       ; $7227: $6B
    ld h, c                                       ; $7228: $61

jr_026_7229:
    ld a, c                                       ; $7229: $79
    inc l                                         ; $722A: $2C
    jr nz, @+$6E                                  ; $722B: $20 $6C

    ld h, l                                       ; $722D: $65
    ld [hl], h                                    ; $722E: $74

jr_026_722F:
    daa                                           ; $722F: $27
    ld [hl], e                                    ; $7230: $73
    rst $38                                       ; $7231: $FF
    ld h, a                                       ; $7232: $67
    ld l, a                                       ; $7233: $6F
    ld l, $FE                                     ; $7234: $2E $FE
    db $FD                                        ; $7236: $FD
    sbc d                                         ; $7237: $9A
    ld e, b                                       ; $7238: $58
    ld [$0242], sp                                ; $7239: $08 $42 $02
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    jr nc, jr_026_722F                            ; $7240: $30 $ED

    ld d, [hl]                                    ; $7242: $56
    add hl, bc                                    ; $7243: $09
    dec h                                         ; $7244: $25
    nop                                           ; $7245: $00
    ld e, [hl]                                    ; $7246: $5E

jr_026_7247:
    ld [hl-], a                                   ; $7247: $32
    ld c, h                                       ; $7248: $4C
    inc hl                                        ; $7249: $23
    ld b, b                                       ; $724A: $40
    dec hl                                        ; $724B: $2B
    xor d                                         ; $724C: $AA
    dec a                                         ; $724D: $3D

jr_026_724E:
    db $D3                                        ; $724E: $D3
    rlca                                          ; $724F: $07
    ld [bc], a                                    ; $7250: $02
    xor d                                         ; $7251: $AA
    ld a, $D3                                     ; $7252: $3E $D3
    rlca                                          ; $7254: $07
    push de                                       ; $7255: $D5
    sbc e                                         ; $7256: $9B

jr_026_7257:
    xor c                                         ; $7257: $A9
    ld c, a                                       ; $7258: $4F
    sbc a                                         ; $7259: $9F
    ld c, [hl]                                    ; $725A: $4E
    ld l, a                                       ; $725B: $6F
    ld [hl], a                                    ; $725C: $77
    jr nz, @+$7B                                  ; $725D: $20 $79

jr_026_725F:
    ld l, a                                       ; $725F: $6F
    ld [hl], l                                    ; $7260: $75
    jr nz, jr_026_72DA                            ; $7261: $20 $77

    ld l, c                                       ; $7263: $69
    ld l, h                                       ; $7264: $6C
    ld l, h                                       ; $7265: $6C
    rst $38                                       ; $7266: $FF
    ld [hl], e                                    ; $7267: $73

jr_026_7268:
    ld h, l                                       ; $7268: $65
    ld h, l                                       ; $7269: $65
    jr nz, jr_026_72E0                            ; $726A: $20 $74

    ld l, b                                       ; $726C: $68
    ld h, l                                       ; $726D: $65
    jr nz, jr_026_72E4                            ; $726E: $20 $74

    ld [hl], d                                    ; $7270: $72
    ld [hl], l                                    ; $7271: $75
    ld h, l                                       ; $7272: $65
    cp $70                                        ; $7273: $FE $70

jr_026_7275:
    ld l, a                                       ; $7275: $6F
    ld [hl], a                                    ; $7276: $77
    ld h, l                                       ; $7277: $65
    ld [hl], d                                    ; $7278: $72
    jr nz, @+$4B                                  ; $7279: $20 $49

    jr nz, jr_026_72E5                            ; $727B: $20 $68

    ld l, a                                       ; $727D: $6F
    ld l, h                                       ; $727E: $6C
    ld h, h                                       ; $727F: $64
    ld hl, $FDFE                                  ; $7280: $21 $FE $FD
    sbc d                                         ; $7283: $9A
    ld l, $09                                     ; $7284: $2E $09
    dec h                                         ; $7286: $25
    ld l, $87                                     ; $7287: $2E $87
    nop                                           ; $7289: $00
    dec hl                                        ; $728A: $2B
    ld e, d                                       ; $728B: $5A

jr_026_728C:
    ld h, $9B                                     ; $728C: $26 $9B
    ld [hl], d                                    ; $728E: $72
    ld e, [hl]                                    ; $728F: $5E
    dec hl                                        ; $7290: $2B
    ld e, d                                       ; $7291: $5A
    ld h, $A9                                     ; $7292: $26 $A9
    ld [hl], d                                    ; $7294: $72

jr_026_7295:
    ld e, [hl]                                    ; $7295: $5E
    dec hl                                        ; $7296: $2B
    ld b, l                                       ; $7297: $45
    ld h, $8B                                     ; $7298: $26 $8B
    ld [hl], d                                    ; $729A: $72
    ld b, a                                       ; $729B: $47
    inc b                                         ; $729C: $04
    ld h, $C8                                     ; $729D: $26 $C8
    ld [hl], d                                    ; $729F: $72
    ld h, $18                                     ; $72A0: $26 $18
    ld [hl], e                                    ; $72A2: $73
    ld h, $18                                     ; $72A3: $26 $18
    ld [hl], e                                    ; $72A5: $73
    ld h, $72                                     ; $72A6: $26 $72
    ld [hl], e                                    ; $72A8: $73
    ld b, a                                       ; $72A9: $47
    rlca                                          ; $72AA: $07
    ld h, $C0                                     ; $72AB: $26 $C0
    ld [hl], d                                    ; $72AD: $72
    ld h, $C0                                     ; $72AE: $26 $C0
    ld [hl], d                                    ; $72B0: $72
    ld h, $C8                                     ; $72B1: $26 $C8
    ld [hl], d                                    ; $72B3: $72
    ld h, $02                                     ; $72B4: $26 $02
    ld [hl], e                                    ; $72B6: $73
    ld h, $10                                     ; $72B7: $26 $10
    ld [hl], e                                    ; $72B9: $73
    ld h, $10                                     ; $72BA: $26 $10
    ld [hl], e                                    ; $72BC: $73
    ld h, $6B                                     ; $72BD: $26 $6B
    ld [hl], e                                    ; $72BF: $73
    ld l, $09                                     ; $72C0: $2E $09
    dec h                                         ; $72C2: $25
    jr nc, jr_026_7247                            ; $72C3: $30 $82

    nop                                           ; $72C5: $00
    ld d, h                                       ; $72C6: $54
    ld b, d                                       ; $72C7: $42
    ld l, $09                                     ; $72C8: $2E $09
    dec h                                         ; $72CA: $25
    jr z, jr_026_733B                             ; $72CB: $28 $6E

    nop                                           ; $72CD: $00
    ld b, e                                       ; $72CE: $43
    ld d, $07                                     ; $72CF: $16 $07
    rrca                                          ; $72D1: $0F
    ld bc, $D0AF                                  ; $72D2: $01 $AF $D0
    dec b                                         ; $72D5: $05
    nop                                           ; $72D6: $00
    ld h, $02                                     ; $72D7: $26 $02
    ld [hl], e                                    ; $72D9: $73

jr_026_72DA:
    cpl                                           ; $72DA: $2F
    add hl, bc                                    ; $72DB: $09
    ld d, e                                       ; $72DC: $53
    ld e, a                                       ; $72DD: $5F
    ld b, $9B                                     ; $72DE: $06 $9B

jr_026_72E0:
    xor c                                         ; $72E0: $A9
    ld c, a                                       ; $72E1: $4F
    sbc a                                         ; $72E2: $9F
    ld b, d                                       ; $72E3: $42

jr_026_72E4:
    ld h, l                                       ; $72E4: $65

jr_026_72E5:
    ld [hl], h                                    ; $72E5: $74
    jr nz, jr_026_7361                            ; $72E6: $20 $79

    ld l, a                                       ; $72E8: $6F
    ld [hl], l                                    ; $72E9: $75
    jr nz, jr_026_734F                            ; $72EA: $20 $63

    ld h, c                                       ; $72EC: $61
    ld l, [hl]                                    ; $72ED: $6E
    daa                                           ; $72EE: $27
    ld [hl], h                                    ; $72EF: $74
    rst $38                                       ; $72F0: $FF
    ld l, b                                       ; $72F1: $68
    ld h, c                                       ; $72F2: $61
    ld l, [hl]                                    ; $72F3: $6E
    ld h, h                                       ; $72F4: $64
    ld l, h                                       ; $72F5: $6C
    ld h, l                                       ; $72F6: $65
    jr nz, jr_026_736D                            ; $72F7: $20 $74

    ld l, b                                       ; $72F9: $68
    ld l, c                                       ; $72FA: $69
    ld [hl], e                                    ; $72FB: $73
    ld hl, $FDFE                                  ; $72FC: $21 $FE $FD
    sbc d                                         ; $72FF: $9A
    ld d, h                                       ; $7300: $54
    ld b, d                                       ; $7301: $42
    cpl                                           ; $7302: $2F
    add hl, bc                                    ; $7303: $09
    ld h, l                                       ; $7304: $65
    ld e, [hl]                                    ; $7305: $5E
    nop                                           ; $7306: $00
    ld d, h                                       ; $7307: $54
    ld b, d                                       ; $7308: $42
    jr z, jr_026_7314                             ; $7309: $28 $09

    adc l                                         ; $730B: $8D
    ld [hl], c                                    ; $730C: $71
    db $10                                        ; $730D: $10
    ld d, h                                       ; $730E: $54
    ld b, d                                       ; $730F: $42
    ld l, $09                                     ; $7310: $2E $09
    ld c, [hl]                                    ; $7312: $4E
    dec l                                         ; $7313: $2D

jr_026_7314:
    ld [hl], e                                    ; $7314: $73
    nop                                           ; $7315: $00
    ld d, h                                       ; $7316: $54
    ld b, d                                       ; $7317: $42
    ld l, $09                                     ; $7318: $2E $09
    ld c, [hl]                                    ; $731A: $4E
    jr z, @+$70                                   ; $731B: $28 $6E

    nop                                           ; $731D: $00
    ld b, e                                       ; $731E: $43
    ld d, $07                                     ; $731F: $16 $07
    rrca                                          ; $7321: $0F
    ld bc, $D0AF                                  ; $7322: $01 $AF $D0
    dec b                                         ; $7325: $05
    nop                                           ; $7326: $00
    ld h, $02                                     ; $7327: $26 $02
    ld [hl], e                                    ; $7329: $73
    jr z, jr_026_7335                             ; $732A: $28 $09

    adc l                                         ; $732C: $8D
    ld [hl], c                                    ; $732D: $71
    db $10                                        ; $732E: $10
    add hl, bc                                    ; $732F: $09
    ld c, $0E                                     ; $7330: $0E $0E
    ld e, e                                       ; $7332: $5B
    ld a, a                                       ; $7333: $7F
    sbc e                                         ; $7334: $9B

jr_026_7335:
    xor c                                         ; $7335: $A9
    ld c, a                                       ; $7336: $4F
    sbc a                                         ; $7337: $9F
    ld c, c                                       ; $7338: $49
    jr nz, jr_026_73AB                            ; $7339: $20 $70

jr_026_733B:
    ld h, l                                       ; $733B: $65
    ld [hl], d                                    ; $733C: $72
    ld h, [hl]                                    ; $733D: $66
    ld h, l                                       ; $733E: $65
    ld h, e                                       ; $733F: $63
    ld [hl], h                                    ; $7340: $74
    ld h, l                                       ; $7341: $65
    ld h, h                                       ; $7342: $64
    rst $38                                       ; $7343: $FF
    ld [hl], h                                    ; $7344: $74
    ld l, b                                       ; $7345: $68
    ld l, c                                       ; $7346: $69
    ld [hl], e                                    ; $7347: $73
    jr nz, @+$76                                  ; $7348: $20 $74

    ld h, l                                       ; $734A: $65
    ld h, e                                       ; $734B: $63
    ld l, b                                       ; $734C: $68
    ld l, [hl]                                    ; $734D: $6E
    ld l, c                                       ; $734E: $69

jr_026_734F:
    ld [hl], c                                    ; $734F: $71
    ld [hl], l                                    ; $7350: $75
    ld h, l                                       ; $7351: $65
    cp $77                                        ; $7352: $FE $77
    ld l, b                                       ; $7354: $68
    ld l, c                                       ; $7355: $69
    ld l, h                                       ; $7356: $6C
    ld h, l                                       ; $7357: $65
    jr nz, jr_026_73CF                            ; $7358: $20 $75

    ld l, [hl]                                    ; $735A: $6E
    ld h, h                                       ; $735B: $64
    ld h, l                                       ; $735C: $65
    ld [hl], d                                    ; $735D: $72
    jr nz, jr_026_73C1                            ; $735E: $20 $61

    rst $38                                       ; $7360: $FF

jr_026_7361:
    ld [hl], d                                    ; $7361: $72
    ld l, a                                       ; $7362: $6F
    ld h, e                                       ; $7363: $63
    ld l, e                                       ; $7364: $6B
    ld hl, $FDFE                                  ; $7365: $21 $FE $FD
    sbc d                                         ; $7368: $9A
    ld d, h                                       ; $7369: $54
    ld b, d                                       ; $736A: $42
    cpl                                           ; $736B: $2F
    add hl, bc                                    ; $736C: $09

jr_026_736D:
    ld d, e                                       ; $736D: $53
    ld e, a                                       ; $736E: $5F
    ld b, $54                                     ; $736F: $06 $54
    ld b, d                                       ; $7371: $42
    jr z, @+$0B                                   ; $7372: $28 $09

    ld a, e                                       ; $7374: $7B
    ld [hl], d                                    ; $7375: $72
    ld c, $54                                     ; $7376: $0E $54
    ld b, d                                       ; $7378: $42
    sub e                                         ; $7379: $93
    ld l, d                                       ; $737A: $6A
    call nc, Call_026_697F                        ; $737B: $D4 $7F $69
    db $FC                                        ; $737E: $FC
    ld b, a                                       ; $737F: $47
    ld a, h                                       ; $7380: $7C
    dec bc                                        ; $7381: $0B
    nop                                           ; $7382: $00
    add d                                         ; $7383: $82
    sub h                                         ; $7384: $94
    ld b, d                                       ; $7385: $42
    xor h                                         ; $7386: $AC
    or d                                          ; $7387: $B2
    and d                                         ; $7388: $A2
    ld bc, $0F43                                  ; $7389: $01 $43 $0F
    inc b                                         ; $738C: $04
    dec b                                         ; $738D: $05
    jr jr_026_73B6                                ; $738E: $18 $26

    pop bc                                        ; $7390: $C1
    ld [hl], e                                    ; $7391: $73
    sub e                                         ; $7392: $93
    ld h, l                                       ; $7393: $65
    adc e                                         ; $7394: $8B
    ld c, e                                       ; $7395: $4B
    ld c, a                                       ; $7396: $4F
    ld l, b                                       ; $7397: $68
    ld a, b                                       ; $7398: $78
    ld a, a                                       ; $7399: $7F
    ld a, e                                       ; $739A: $7B
    rst $28                                       ; $739B: $EF
    ld h, l                                       ; $739C: $65
    ld a, h                                       ; $739D: $7C
    ld h, h                                       ; $739E: $64
    rst $10                                       ; $739F: $D7
    ld c, c                                       ; $73A0: $49
    ld l, c                                       ; $73A1: $69
    db $E4                                        ; $73A2: $E4
    ld c, c                                       ; $73A3: $49
    ld h, [hl]                                    ; $73A4: $66
    ret nz                                        ; $73A5: $C0

    ld e, h                                       ; $73A6: $5C
    ld hl, $000B                                  ; $73A7: $21 $0B $00
    nop                                           ; $73AA: $00

jr_026_73AB:
    add d                                         ; $73AB: $82
    rra                                           ; $73AC: $1F
    dec c                                         ; $73AD: $0D
    ld b, e                                       ; $73AE: $43
    inc d                                         ; $73AF: $14
    inc b                                         ; $73B0: $04
    dec b                                         ; $73B1: $05
    dec d                                         ; $73B2: $15
    ld h, $BF                                     ; $73B3: $26 $BF
    ld [hl], e                                    ; $73B5: $73

jr_026_73B6:
    ld a, a                                       ; $73B6: $7F
    ld d, e                                       ; $73B7: $53
    ret nc                                        ; $73B8: $D0

    dec b                                         ; $73B9: $05
    inc bc                                        ; $73BA: $03
    sbc d                                         ; $73BB: $9A
    ret nc                                        ; $73BC: $D0

    ld b, $0A                                     ; $73BD: $06 $0A
    sub h                                         ; $73BF: $94
    ld b, d                                       ; $73C0: $42

jr_026_73C1:
    sub e                                         ; $73C1: $93
    ld h, l                                       ; $73C2: $65
    adc e                                         ; $73C3: $8B
    ld c, e                                       ; $73C4: $4B
    ld c, a                                       ; $73C5: $4F
    ld l, b                                       ; $73C6: $68
    ld a, b                                       ; $73C7: $78
    ld a, a                                       ; $73C8: $7F
    ld a, e                                       ; $73C9: $7B
    rst $28                                       ; $73CA: $EF
    ld h, l                                       ; $73CB: $65
    ld a, h                                       ; $73CC: $7C
    ld h, h                                       ; $73CD: $64
    rst $10                                       ; $73CE: $D7

jr_026_73CF:
    ld c, c                                       ; $73CF: $49
    ld l, c                                       ; $73D0: $69
    db $E4                                        ; $73D1: $E4
    ld c, c                                       ; $73D2: $49
    ld h, [hl]                                    ; $73D3: $66
    ret nz                                        ; $73D4: $C0

    ld e, h                                       ; $73D5: $5C
    ld hl, $000B                                  ; $73D6: $21 $0B $00
    nop                                           ; $73D9: $00
    add d                                         ; $73DA: $82
    rra                                           ; $73DB: $1F
    dec c                                         ; $73DC: $0D
    ld l, a                                       ; $73DD: $6F
    rrca                                          ; $73DE: $0F
    rst $38                                       ; $73DF: $FF
    ld a, a                                       ; $73E0: $7F
    ld a, a                                       ; $73E1: $7F
    ld d, e                                       ; $73E2: $53
    ret nc                                        ; $73E3: $D0

jr_026_73E4:
    dec b                                         ; $73E4: $05
    inc bc                                        ; $73E5: $03

jr_026_73E6:
    sbc d                                         ; $73E6: $9A
    ret nc                                        ; $73E7: $D0

    ld b, $0A                                     ; $73E8: $06 $0A
    ld b, e                                       ; $73EA: $43
    ld a, [bc]                                    ; $73EB: $0A

jr_026_73EC:
    nop                                           ; $73EC: $00
    xor l                                         ; $73ED: $AD
    and c                                         ; $73EE: $A1
    ld bc, $FC26                                  ; $73EF: $01 $26 $FC
    ld [hl], e                                    ; $73F2: $73
    ld a, a                                       ; $73F3: $7F
    ld c, l                                       ; $73F4: $4D
    ret nc                                        ; $73F5: $D0

    ld bc, $4D04                                  ; $73F6: $01 $04 $4D
    ret nc                                        ; $73F9: $D0

    inc bc                                        ; $73FA: $03
    dec b                                         ; $73FB: $05
    sub h                                         ; $73FC: $94
    halt                                          ; $73FD: $76
    jr nz, @+$11                                  ; $73FE: $20 $0F

    ld b, d                                       ; $7400: $42
    rlca                                          ; $7401: $07
    nop                                           ; $7402: $00
    ld l, e                                       ; $7403: $6B
    ld c, d                                       ; $7404: $4A
    add hl, bc                                    ; $7405: $09
    nop                                           ; $7406: $00
    ld h, $22                                     ; $7407: $26 $22
    ld [hl], h                                    ; $7409: $74

jr_026_740A:
    dec b                                         ; $740A: $05
    ld [bc], a                                    ; $740B: $02
    ld l, e                                       ; $740C: $6B
    ld c, d                                       ; $740D: $4A
    ld b, $06                                     ; $740E: $06 $06
    sub [hl]                                      ; $7410: $96
    ret nc                                        ; $7411: $D0

    nop                                           ; $7412: $00
    ld de, $76A3                                  ; $7413: $11 $A3 $76
    ld [hl+], a                                   ; $7416: $22
    dec b                                         ; $7417: $05
    ld b, b                                       ; $7418: $40
    ld l, e                                       ; $7419: $6B
    inc b                                         ; $741A: $04
    dec c                                         ; $741B: $0D

jr_026_741C:
    ldh [$58], a                                  ; $741C: $E0 $58
    nop                                           ; $741E: $00
    add b                                         ; $741F: $80
    nop                                           ; $7420: $00
    ld b, d                                       ; $7421: $42

jr_026_7422:
    dec d                                         ; $7422: $15
    jr nz, jr_026_73E4                            ; $7423: $20 $BF

    ld d, b                                       ; $7425: $50
    db $10                                        ; $7426: $10
    jr nz, jr_026_7466                            ; $7427: $20 $3D

    ld d, b                                       ; $7429: $50
    db $10                                        ; $742A: $10
    jr nz, jr_026_73EC                            ; $742B: $20 $BF

    ld d, b                                       ; $742D: $50
    inc b                                         ; $742E: $04
    nop                                           ; $742F: $00
    dec bc                                        ; $7430: $0B
    ld [bc], a                                    ; $7431: $02
    ld b, b                                       ; $7432: $40
    jr nz, jr_026_748F                            ; $7433: $20 $5A

    ld h, $75                                     ; $7435: $26 $75
    halt                                          ; $7437: $76
    dec d                                         ; $7438: $15
    jr nz, jr_026_7422                            ; $7439: $20 $E7

    ld d, b                                       ; $743B: $50
    db $10                                        ; $743C: $10
    jr nz, jr_026_741C                            ; $743D: $20 $DD

    ld d, b                                       ; $743F: $50
    db $10                                        ; $7440: $10
    jr nz, @-$0D                                  ; $7441: $20 $F1

    ld d, b                                       ; $7443: $50
    db $10                                        ; $7444: $10
    jr nz, @-$21                                  ; $7445: $20 $DD

    ld d, b                                       ; $7447: $50
    db $10                                        ; $7448: $10
    jr nz, jr_026_740A                            ; $7449: $20 $BF

    ld d, b                                       ; $744B: $50
    nop                                           ; $744C: $00
    nop                                           ; $744D: $00
    ld e, e                                       ; $744E: $5B
    ld h, $71                                     ; $744F: $26 $71
    ld [hl], h                                    ; $7451: $74
    ld e, h                                       ; $7452: $5C
    nop                                           ; $7453: $00
    ld [bc], a                                    ; $7454: $02
    ld b, b                                       ; $7455: $40
    jr nc, jr_026_74B3                            ; $7456: $30 $5B

    ld h, $8C                                     ; $7458: $26 $8C
    ld [hl], h                                    ; $745A: $74
    ld e, h                                       ; $745B: $5C
    ld bc, $1502                                  ; $745C: $01 $02 $15
    jr nz, jr_026_73E6                            ; $745F: $20 $85

    ld d, h                                       ; $7461: $54
    jr nz, jr_026_7464                            ; $7462: $20 $00

jr_026_7464:
    ld l, [hl]                                    ; $7464: $6E

jr_026_7465:
    rrca                                          ; $7465: $0F

jr_026_7466:
    rst $38                                       ; $7466: $FF
    ld a, a                                       ; $7467: $7F
    halt                                          ; $7468: $76
    jr nz, jr_026_747A                            ; $7469: $20 $0F

    ld b, b                                       ; $746B: $40
    ld h, b                                       ; $746C: $60
    ld b, l                                       ; $746D: $45
    rra                                           ; $746E: $1F
    inc [hl]                                      ; $746F: $34

jr_026_7470:
    ld e, a                                       ; $7470: $5F
    sbc e                                         ; $7471: $9B
    ld a, b                                       ; $7472: $78
    ld [hl], b                                    ; $7473: $70
    sbc a                                         ; $7474: $9F
    ld d, a                                       ; $7475: $57
    ld l, b                                       ; $7476: $68
    ld h, c                                       ; $7477: $61
    ld [hl], h                                    ; $7478: $74
    daa                                           ; $7479: $27

jr_026_747A:
    ld [hl], e                                    ; $747A: $73
    jr nz, @+$69                                  ; $747B: $20 $67

    ld l, a                                       ; $747D: $6F
    ld l, c                                       ; $747E: $69
    ld l, [hl]                                    ; $747F: $6E
    ld h, a                                       ; $7480: $67
    rst $38                                       ; $7481: $FF
    ld l, a                                       ; $7482: $6F
    ld l, [hl]                                    ; $7483: $6E
    ccf                                           ; $7484: $3F
    cp $FD                                        ; $7485: $FE $FD
    sbc d                                         ; $7487: $9A
    ld e, h                                       ; $7488: $5C
    nop                                           ; $7489: $00
    ld [bc], a                                    ; $748A: $02
    ld b, d                                       ; $748B: $42
    sbc e                                         ; $748C: $9B
    ld a, b                                       ; $748D: $78
    ld [hl], b                                    ; $748E: $70

jr_026_748F:
    sbc a                                         ; $748F: $9F
    ld b, a                                       ; $7490: $47
    ld h, l                                       ; $7491: $65
    ld [hl], h                                    ; $7492: $74
    ld [hl], h                                    ; $7493: $74
    ld l, c                                       ; $7494: $69
    ld l, [hl]                                    ; $7495: $6E
    ld h, a                                       ; $7496: $67
    ld l, $2E                                     ; $7497: $2E $2E
    ld l, $2E                                     ; $7499: $2E $2E
    rst $38                                       ; $749B: $FF
    ld l, $2E                                     ; $749C: $2E $2E
    ld l, $2E                                     ; $749E: $2E $2E
    ld h, h                                       ; $74A0: $64
    ld l, c                                       ; $74A1: $69
    ld a, d                                       ; $74A2: $7A
    ld a, d                                       ; $74A3: $7A
    ld a, c                                       ; $74A4: $79
    ld l, $2E                                     ; $74A5: $2E $2E
    rst $38                                       ; $74A7: $FF
    db $FD                                        ; $74A8: $FD
    ld b, b                                       ; $74A9: $40
    jr nc, @-$64                                  ; $74AA: $30 $9A

    ld e, h                                       ; $74AC: $5C
    ld bc, $4202                                  ; $74AD: $01 $02 $42
    xor h                                         ; $74B0: $AC
    or d                                          ; $74B1: $B2
    and d                                         ; $74B2: $A2

jr_026_74B3:
    ld bc, $ADAF                                  ; $74B3: $01 $AF $AD
    and c                                         ; $74B6: $A1
    ld bc, $0007                                  ; $74B7: $01 $07 $00
    ld l, e                                       ; $74BA: $6B
    ld c, d                                       ; $74BB: $4A
    add hl, bc                                    ; $74BC: $09
    nop                                           ; $74BD: $00
    ld h, $43                                     ; $74BE: $26 $43
    halt                                          ; $74C0: $76
    ld e, d                                       ; $74C1: $5A
    ld h, $64                                     ; $74C2: $26 $64
    halt                                          ; $74C4: $76
    ld b, b                                       ; $74C5: $40
    ld d, b                                       ; $74C6: $50
    dec b                                         ; $74C7: $05
    ld [bc], a                                    ; $74C8: $02
    ld l, e                                       ; $74C9: $6B
    ld c, d                                       ; $74CA: $4A
    ld b, $06                                     ; $74CB: $06 $06
    sub [hl]                                      ; $74CD: $96
    ret nc                                        ; $74CE: $D0

    nop                                           ; $74CF: $00
    ld de, $7699                                  ; $74D0: $11 $99 $76
    ld [hl+], a                                   ; $74D3: $22
    dec b                                         ; $74D4: $05
    ld b, b                                       ; $74D5: $40
    ld l, e                                       ; $74D6: $6B
    inc bc                                        ; $74D7: $03
    dec c                                         ; $74D8: $0D
    or b                                          ; $74D9: $B0
    ld e, b                                       ; $74DA: $58
    nop                                           ; $74DB: $00
    add b                                         ; $74DC: $80
    nop                                           ; $74DD: $00
    ld l, e                                       ; $74DE: $6B
    jr nc, jr_026_7530                            ; $74DF: $30 $4F

    sbc a                                         ; $74E1: $9F
    ld d, l                                       ; $74E2: $55
    jr nc, jr_026_7465                            ; $74E3: $30 $80

    nop                                           ; $74E5: $00
    ld l, e                                       ; $74E6: $6B
    dec l                                         ; $74E7: $2D
    ld b, c                                       ; $74E8: $41
    ret nz                                        ; $74E9: $C0

    ld d, [hl]                                    ; $74EA: $56
    jr nc, jr_026_7470                            ; $74EB: $30 $83

    nop                                           ; $74ED: $00
    add hl, bc                                    ; $74EE: $09
    nop                                           ; $74EF: $00
    ld h, $5F                                     ; $74F0: $26 $5F
    halt                                          ; $74F2: $76
    ld b, b                                       ; $74F3: $40
    ld b, b                                       ; $74F4: $40
    ld d, b                                       ; $74F5: $50
    call $50C2                                    ; $74F6: $CD $C2 $50
    ld b, b                                       ; $74F9: $40
    inc bc                                        ; $74FA: $03
    ld b, b                                       ; $74FB: $40
    jp nc, Jump_026_5073                          ; $74FC: $D2 $73 $50

    add sp, -$3E                                  ; $74FF: $E8 $C2
    ld d, b                                       ; $7501: $50
    ld b, b                                       ; $7502: $40
    inc sp                                        ; $7503: $33
    ld b, b                                       ; $7504: $40
    ld h, [hl]                                    ; $7505: $66
    ld [hl], e                                    ; $7506: $73
    ld d, b                                       ; $7507: $50
    inc bc                                        ; $7508: $03
    jp Jump_026_5058                              ; $7509: $C3 $58 $50


    inc bc                                        ; $750C: $03
    ld b, b                                       ; $750D: $40
    inc hl                                        ; $750E: $23
    ld [hl], h                                    ; $750F: $74
    ld d, b                                       ; $7510: $50
    ld e, $C3                                     ; $7511: $1E $C3
    ld d, b                                       ; $7513: $50
    ld b, b                                       ; $7514: $40
    inc bc                                        ; $7515: $03
    ld b, b                                       ; $7516: $40
    inc hl                                        ; $7517: $23
    ld [hl], h                                    ; $7518: $74
    ld d, b                                       ; $7519: $50
    add hl, sp                                    ; $751A: $39
    jp $3A50                                      ; $751B: $C3 $50 $3A


    inc bc                                        ; $751E: $03
    ld b, b                                       ; $751F: $40
    inc hl                                        ; $7520: $23
    ld [hl], h                                    ; $7521: $74
    ld d, b                                       ; $7522: $50
    ld d, h                                       ; $7523: $54
    jp Jump_026_464A                              ; $7524: $C3 $4A $46


    inc bc                                        ; $7527: $03
    ld b, b                                       ; $7528: $40
    inc hl                                        ; $7529: $23
    ld [hl], h                                    ; $752A: $74
    ld d, b                                       ; $752B: $50
    ld l, a                                       ; $752C: $6F
    jp $3A56                                      ; $752D: $C3 $56 $3A


jr_026_7530:
    inc bc                                        ; $7530: $03
    ld b, b                                       ; $7531: $40
    inc hl                                        ; $7532: $23
    ld [hl], h                                    ; $7533: $74
    ld d, b                                       ; $7534: $50
    adc d                                         ; $7535: $8A
    jp $405A                                      ; $7536: $C3 $5A $40


    inc bc                                        ; $7539: $03
    ld b, b                                       ; $753A: $40
    inc hl                                        ; $753B: $23
    ld [hl], h                                    ; $753C: $74
    ld d, b                                       ; $753D: $50
    and l                                         ; $753E: $A5
    jp Jump_026_445A                              ; $753F: $C3 $5A $44


    inc bc                                        ; $7542: $03
    ld b, b                                       ; $7543: $40
    inc hl                                        ; $7544: $23
    ld [hl], h                                    ; $7545: $74
    ld d, b                                       ; $7546: $50
    ret nz                                        ; $7547: $C0

    jp $3A56                                      ; $7548: $C3 $56 $3A


    inc bc                                        ; $754B: $03
    ld b, b                                       ; $754C: $40
    inc hl                                        ; $754D: $23
    ld [hl], h                                    ; $754E: $74
    ld a, b                                       ; $754F: $78
    ret nz                                        ; $7550: $C0

    ld b, e                                       ; $7551: $43
    ld b, b                                       ; $7552: $40
    add a                                         ; $7553: $87
    ld a, c                                       ; $7554: $79
    add a                                         ; $7555: $87
    ld b, b                                       ; $7556: $40
    jr nz, @+$0D                                  ; $7557: $20 $0B

    inc c                                         ; $7559: $0C
    ld b, b                                       ; $755A: $40
    ld [bc], a                                    ; $755B: $02
    ld l, a                                       ; $755C: $6F
    ld b, $FF                                     ; $755D: $06 $FF
    ld a, a                                       ; $755F: $7F
    ld b, b                                       ; $7560: $40
    ld [bc], a                                    ; $7561: $02
    ld e, d                                       ; $7562: $5A
    ld h, $86                                     ; $7563: $26 $86
    halt                                          ; $7565: $76
    ld a, b                                       ; $7566: $78
    db $FC                                        ; $7567: $FC
    ld b, a                                       ; $7568: $47
    ld a, h                                       ; $7569: $7C
    ld b, $79                                     ; $756A: $06 $79
    ld b, $40                                     ; $756C: $06 $40
    ld bc, $0E0B                                  ; $756E: $01 $0B $0E
    ld b, b                                       ; $7571: $40
    ld [bc], a                                    ; $7572: $02
    dec bc                                        ; $7573: $0B
    rrca                                          ; $7574: $0F
    ld b, b                                       ; $7575: $40
    ld [bc], a                                    ; $7576: $02
    ld l, a                                       ; $7577: $6F
    ld b, $FF                                     ; $7578: $06 $FF
    ld a, a                                       ; $757A: $7F
    ld b, b                                       ; $757B: $40
    ld [bc], a                                    ; $757C: $02
    ld a, b                                       ; $757D: $78
    db $FC                                        ; $757E: $FC
    ld b, a                                       ; $757F: $47
    ld a, h                                       ; $7580: $7C
    ld b, $79                                     ; $7581: $06 $79
    ld b, $0B                                     ; $7583: $06 $0B
    db $10                                        ; $7585: $10
    ld b, b                                       ; $7586: $40
    ld b, $7F                                     ; $7587: $06 $7F
    ld c, l                                       ; $7589: $4D
    ret nc                                        ; $758A: $D0

    ld bc, $4D04                                  ; $758B: $01 $04 $4D
    ret nc                                        ; $758E: $D0

    inc bc                                        ; $758F: $03
    dec b                                         ; $7590: $05
    dec bc                                        ; $7591: $0B
    ld de, $0840                                  ; $7592: $11 $40 $08
    dec bc                                        ; $7595: $0B
    ld [de], a                                    ; $7596: $12
    ld b, b                                       ; $7597: $40
    ld a, [bc]                                    ; $7598: $0A
    dec bc                                        ; $7599: $0B
    inc de                                        ; $759A: $13
    ld e, d                                       ; $759B: $5A
    ld h, $75                                     ; $759C: $26 $75
    halt                                          ; $759E: $76
    ld b, b                                       ; $759F: $40
    db $10                                        ; $75A0: $10
    dec bc                                        ; $75A1: $0B
    inc d                                         ; $75A2: $14
    ld b, b                                       ; $75A3: $40
    jr @+$5C                                      ; $75A4: $18 $5A

    ld h, $64                                     ; $75A6: $26 $64
    halt                                          ; $75A8: $76
    dec bc                                        ; $75A9: $0B
    dec d                                         ; $75AA: $15
    ld b, b                                       ; $75AB: $40
    jr jr_026_75BA                                ; $75AC: $18 $0C

    ld c, $0C                                     ; $75AE: $0E $0C
    rrca                                          ; $75B0: $0F
    inc c                                         ; $75B1: $0C
    db $10                                        ; $75B2: $10
    inc c                                         ; $75B3: $0C
    ld de, $120C                                  ; $75B4: $11 $0C $12
    inc c                                         ; $75B7: $0C

jr_026_75B8:
    inc de                                        ; $75B8: $13
    inc c                                         ; $75B9: $0C

jr_026_75BA:
    inc d                                         ; $75BA: $14
    inc c                                         ; $75BB: $0C
    dec d                                         ; $75BC: $15
    ld d, b                                       ; $75BD: $50
    inc bc                                        ; $75BE: $03
    jp Jump_026_4064                              ; $75BF: $C3 $64 $40


    inc bc                                        ; $75C2: $03
    ld b, b                                       ; $75C3: $40
    inc hl                                        ; $75C4: $23
    ld [hl], h                                    ; $75C5: $74
    ld d, b                                       ; $75C6: $50
    ld e, $C3                                     ; $75C7: $1E $C3
    ld d, h                                       ; $75C9: $54
    ld b, h                                       ; $75CA: $44
    inc bc                                        ; $75CB: $03
    ld b, b                                       ; $75CC: $40
    inc hl                                        ; $75CD: $23
    ld [hl], h                                    ; $75CE: $74
    ld d, b                                       ; $75CF: $50
    add hl, sp                                    ; $75D0: $39
    jp Jump_026_4654                              ; $75D1: $C3 $54 $46


    inc bc                                        ; $75D4: $03
    ld b, b                                       ; $75D5: $40
    inc hl                                        ; $75D6: $23
    ld [hl], h                                    ; $75D7: $74
    ld d, b                                       ; $75D8: $50
    ld d, h                                       ; $75D9: $54
    jp Jump_026_4A64                              ; $75DA: $C3 $64 $4A


    inc bc                                        ; $75DD: $03
    ld b, b                                       ; $75DE: $40
    inc hl                                        ; $75DF: $23
    ld [hl], h                                    ; $75E0: $74
    ld d, b                                       ; $75E1: $50
    ld l, a                                       ; $75E2: $6F

jr_026_75E3:
    jp Jump_026_4E64                              ; $75E3: $C3 $64 $4E


    inc bc                                        ; $75E6: $03
    ld b, b                                       ; $75E7: $40
    inc hl                                        ; $75E8: $23
    ld [hl], h                                    ; $75E9: $74
    ld d, b                                       ; $75EA: $50
    adc d                                         ; $75EB: $8A
    jp Jump_026_5054                              ; $75EC: $C3 $54 $50


    inc bc                                        ; $75EF: $03
    ld b, b                                       ; $75F0: $40
    inc hl                                        ; $75F1: $23
    ld [hl], h                                    ; $75F2: $74
    ld d, b                                       ; $75F3: $50
    and l                                         ; $75F4: $A5
    jp Jump_026_5666                              ; $75F5: $C3 $66 $56


    inc bc                                        ; $75F8: $03
    ld b, b                                       ; $75F9: $40
    inc hl                                        ; $75FA: $23
    ld [hl], h                                    ; $75FB: $74
    ld d, b                                       ; $75FC: $50
    ret nz                                        ; $75FD: $C0

    jp Jump_026_5852                              ; $75FE: $C3 $52 $58


    inc bc                                        ; $7601: $03
    ld b, b                                       ; $7602: $40
    inc hl                                        ; $7603: $23
    ld [hl], h                                    ; $7604: $74

jr_026_7605:
    dec bc                                        ; $7605: $0B
    ld c, $40                                     ; $7606: $0E $40
    ld [$2B5A], sp                                ; $7608: $08 $5A $2B
    ld h, b                                       ; $760B: $60
    ld h, c                                       ; $760C: $61

jr_026_760D:
    dec bc                                        ; $760D: $0B
    rrca                                          ; $760E: $0F
    ld b, b                                       ; $760F: $40
    db $10                                        ; $7610: $10
    dec bc                                        ; $7611: $0B
    db $10                                        ; $7612: $10
    ld b, b                                       ; $7613: $40
    inc c                                         ; $7614: $0C
    dec bc                                        ; $7615: $0B
    ld de, $0840                                  ; $7616: $11 $40 $08
    dec bc                                        ; $7619: $0B
    ld [de], a                                    ; $761A: $12
    ld b, b                                       ; $761B: $40
    db $10                                        ; $761C: $10
    dec bc                                        ; $761D: $0B
    inc de                                        ; $761E: $13
    ld b, b                                       ; $761F: $40
    jr jr_026_762D                                ; $7620: $18 $0B

    inc d                                         ; $7622: $14
    ld b, b                                       ; $7623: $40
    db $10                                        ; $7624: $10
    dec bc                                        ; $7625: $0B
    dec d                                         ; $7626: $15
    ld b, b                                       ; $7627: $40
    jr jr_026_7635                                ; $7628: $18 $0B

    nop                                           ; $762A: $00
    ld a, b                                       ; $762B: $78
    ret nz                                        ; $762C: $C0

jr_026_762D:
    ld e, h                                       ; $762D: $5C
    ld hl, $7987                                  ; $762E: $21 $87 $79
    add a                                         ; $7631: $87
    ld b, b                                       ; $7632: $40
    jr nz, jr_026_75B8                            ; $7633: $20 $83

jr_026_7635:
    ld b, b                                       ; $7635: $40
    ld bc, $0000                                  ; $7636: $01 $00 $00
    rlca                                          ; $7639: $07
    nop                                           ; $763A: $00
    add c                                         ; $763B: $81
    ld e, l                                       ; $763C: $5D
    add hl, bc                                    ; $763D: $09
    nop                                           ; $763E: $00
    jr nz, @-$3F                                  ; $763F: $20 $BF

    ld d, b                                       ; $7641: $50
    ld b, d                                       ; $7642: $42
    dec d                                         ; $7643: $15
    jr nz, jr_026_7605                            ; $7644: $20 $BF

    ld d, b                                       ; $7646: $50
    db $10                                        ; $7647: $10
    jr nz, jr_026_7687                            ; $7648: $20 $3D

    ld d, b                                       ; $764A: $50
    db $10                                        ; $764B: $10
    jr nz, jr_026_760D                            ; $764C: $20 $BF

    ld d, b                                       ; $764E: $50
    db $10                                        ; $764F: $10
    jr nz, jr_026_75E3                            ; $7650: $20 $91

    ld d, b                                       ; $7652: $50
    jr jr_026_7675                                ; $7653: $18 $20

    cp a                                          ; $7655: $BF
    ld d, b                                       ; $7656: $50
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    add e                                         ; $7659: $83
    jr nc, @+$01                                  ; $765A: $30 $FF

    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    add hl, de                                    ; $765E: $19
    inc d                                         ; $765F: $14
    jr nz, @-$3F                                  ; $7660: $20 $BF

    ld d, b                                       ; $7662: $50
    ld b, d                                       ; $7663: $42
    add e                                         ; $7664: $83
    ld bc, $0100                                  ; $7665: $01 $00 $01
    ld bc, $0001                                  ; $7668: $01 $01 $00
    ld bc, $FF00                                  ; $766B: $01 $00 $FF
    ld bc, $00FF                                  ; $766E: $01 $FF $00
    nop                                           ; $7671: $00
    ld b, [hl]                                    ; $7672: $46
    ld h, h                                       ; $7673: $64
    halt                                          ; $7674: $76

jr_026_7675:
    add e                                         ; $7675: $83
    ld bc, $0200                                  ; $7676: $01 $00 $02
    ld bc, $0002                                  ; $7679: $01 $02 $00
    ld bc, $FE00                                  ; $767C: $01 $00 $FE
    ld bc, $00FE                                  ; $767F: $01 $FE $00
    nop                                           ; $7682: $00
    ld b, [hl]                                    ; $7683: $46
    ld [hl], l                                    ; $7684: $75
    halt                                          ; $7685: $76
    add e                                         ; $7686: $83

jr_026_7687:
    ld bc, $0300                                  ; $7687: $01 $00 $03
    ld bc, $0003                                  ; $768A: $01 $03 $00
    ld bc, $FD00                                  ; $768D: $01 $00 $FD
    ld bc, $00FD                                  ; $7690: $01 $FD $00
    nop                                           ; $7693: $00
    ld b, [hl]                                    ; $7694: $46
    add [hl]                                      ; $7695: $86
    halt                                          ; $7696: $76
    add e                                         ; $7697: $83
    ld bc, $0400                                  ; $7698: $01 $00 $04
    ld bc, $0004                                  ; $769B: $01 $04 $00
    ld bc, $FC00                                  ; $769E: $01 $00 $FC
    ld bc, $00FC                                  ; $76A1: $01 $FC $00
    nop                                           ; $76A4: $00
    ld b, [hl]                                    ; $76A5: $46
    sub a                                         ; $76A6: $97
    halt                                          ; $76A7: $76
    xor h                                         ; $76A8: $AC
    or d                                          ; $76A9: $B2
    and d                                         ; $76AA: $A2
    ld bc, $6593                                  ; $76AB: $01 $93 $65
    adc e                                         ; $76AE: $8B
    ld c, e                                       ; $76AF: $4B
    ld c, a                                       ; $76B0: $4F
    ld l, b                                       ; $76B1: $68
    ld a, b                                       ; $76B2: $78
    ld a, a                                       ; $76B3: $7F
    ld a, e                                       ; $76B4: $7B
    rst $28                                       ; $76B5: $EF
    ld h, l                                       ; $76B6: $65
    ld a, h                                       ; $76B7: $7C
    ld h, h                                       ; $76B8: $64
    rst $10                                       ; $76B9: $D7
    ld c, c                                       ; $76BA: $49
    ld h, [hl]                                    ; $76BB: $66
    ret nz                                        ; $76BC: $C0

    ld e, h                                       ; $76BD: $5C
    ld hl, $0005                                  ; $76BE: $21 $05 $00
    ld l, e                                       ; $76C1: $6B
    ld c, d                                       ; $76C2: $4A
    ld a, [bc]                                    ; $76C3: $0A
    ld b, $9A                                     ; $76C4: $06 $9A
    ret nc                                        ; $76C6: $D0

    nop                                           ; $76C7: $00
    ld h, $20                                     ; $76C8: $26 $20
    ld [hl], a                                    ; $76CA: $77
    ld [hl+], a                                   ; $76CB: $22
    dec b                                         ; $76CC: $05
    ld b, b                                       ; $76CD: $40
    dec b                                         ; $76CE: $05
    ld [bc], a                                    ; $76CF: $02
    ld l, e                                       ; $76D0: $6B
    ld c, d                                       ; $76D1: $4A
    inc c                                         ; $76D2: $0C
    ld b, $9C                                     ; $76D3: $06 $9C
    ret nc                                        ; $76D5: $D0

    jr nc, jr_026_76FE                            ; $76D6: $30 $26

    ld a, a                                       ; $76D8: $7F
    ld [hl], a                                    ; $76D9: $77
    ld [hl+], a                                   ; $76DA: $22
    dec b                                         ; $76DB: $05
    ld b, b                                       ; $76DC: $40
    dec b                                         ; $76DD: $05
    inc bc                                        ; $76DE: $03
    ld l, e                                       ; $76DF: $6B
    ld c, d                                       ; $76E0: $4A
    ld b, $06                                     ; $76E1: $06 $06
    sub [hl]                                      ; $76E3: $96
    ret nc                                        ; $76E4: $D0

    nop                                           ; $76E5: $00
    ld h, $BE                                     ; $76E6: $26 $BE
    ld [hl], a                                    ; $76E8: $77
    ld [hl+], a                                   ; $76E9: $22
    dec b                                         ; $76EA: $05
    ld b, b                                       ; $76EB: $40

jr_026_76EC:
    dec b                                         ; $76EC: $05
    ld [$4A6B], sp                                ; $76ED: $08 $6B $4A

jr_026_76F0:
    dec c                                         ; $76F0: $0D
    inc b                                         ; $76F1: $04
    ld l, l                                       ; $76F2: $6D
    ret nc                                        ; $76F3: $D0

    ld l, [hl]                                    ; $76F4: $6E
    db $10                                        ; $76F5: $10

jr_026_76F6:
    sub l                                         ; $76F6: $95
    ld d, a                                       ; $76F7: $57
    ld [hl+], a                                   ; $76F8: $22
    dec b                                         ; $76F9: $05
    ld b, b                                       ; $76FA: $40
    ld l, e                                       ; $76FB: $6B
    ld a, [hl+]                                   ; $76FC: $2A
    ld a, [bc]                                    ; $76FD: $0A

jr_026_76FE:
    ldh a, [$5E]                                  ; $76FE: $F0 $5E
    nop                                           ; $7700: $00
    add e                                         ; $7701: $83
    nop                                           ; $7702: $00
    ld l, e                                       ; $7703: $6B
    jr nc, @+$0D                                  ; $7704: $30 $0B

jr_026_7706:
    ld d, b                                       ; $7706: $50
    ld a, d                                       ; $7707: $7A
    nop                                           ; $7708: $00
    add b                                         ; $7709: $80
    nop                                           ; $770A: $00
    ld l, e                                       ; $770B: $6B
    ld bc, $000A                                  ; $770C: $01 $0A $00
    ld d, a                                       ; $770F: $57
    ldh [$86], a                                  ; $7710: $E0 $86
    nop                                           ; $7712: $00
    dec bc                                        ; $7713: $0B
    nop                                           ; $7714: $00
    dec bc                                        ; $7715: $0B
    ld [bc], a                                    ; $7716: $02
    dec bc                                        ; $7717: $0B
    inc bc                                        ; $7718: $03
    add h                                         ; $7719: $84
    add hl, bc                                    ; $771A: $09
    ld b, $1F                                     ; $771B: $06 $1F
    dec c                                         ; $771D: $0D
    sub h                                         ; $771E: $94
    ld b, d                                       ; $771F: $42
    dec d                                         ; $7720: $15
    jr nz, jr_026_7770                            ; $7721: $20 $4D

    ld d, b                                       ; $7723: $50
    inc b                                         ; $7724: $04
    jr nz, jr_026_76F0                            ; $7725: $20 $C9

    ld d, b                                       ; $7727: $50
    nop                                           ; $7728: $00

jr_026_7729:
    nop                                           ; $7729: $00
    inc d                                         ; $772A: $14
    jr nz, jr_026_76F6                            ; $772B: $20 $C9

    ld d, b                                       ; $772D: $50

jr_026_772E:
    ld h, b                                       ; $772E: $60
    ld [bc], a                                    ; $772F: $02
    ld d, [hl]                                    ; $7730: $56
    inc bc                                        ; $7731: $03
    dec d                                         ; $7732: $15
    jr nz, jr_026_76FE                            ; $7733: $20 $C9

    ld d, b                                       ; $7735: $50
    ld c, b                                       ; $7736: $48
    jr nz, @-$11                                  ; $7737: $20 $ED

    ld c, a                                       ; $7739: $4F
    db $10                                        ; $773A: $10
    jr nz, jr_026_7706                            ; $773B: $20 $C9

    ld d, b                                       ; $773D: $50
    jr jr_026_7760                                ; $773E: $18 $20

    db $DD                                        ; $7740: $DD
    ld d, b                                       ; $7741: $50
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    ld d, [hl]                                    ; $7744: $56
    inc b                                         ; $7745: $04
    ld e, h                                       ; $7746: $5C
    nop                                           ; $7747: $00
    inc bc                                        ; $7748: $03
    inc d                                         ; $7749: $14
    jr nz, jr_026_7729                            ; $774A: $20 $DD

    ld d, b                                       ; $774C: $50
    ld e, h                                       ; $774D: $5C
    ld bc, $1502                                  ; $774E: $01 $02 $15
    jr nz, jr_026_76EC                            ; $7751: $20 $99

    ld d, h                                       ; $7753: $54
    inc d                                         ; $7754: $14
    jr nz, jr_026_77CE                            ; $7755: $20 $77

    ld d, b                                       ; $7757: $50
    ld [$C920], sp                                ; $7758: $08 $20 $C9
    ld d, b                                       ; $775B: $50
    jr nc, jr_026_777E                            ; $775C: $30 $20

    dec l                                         ; $775E: $2D
    ld d, b                                       ; $775F: $50

jr_026_7760:
    stop                                          ; $7760: $10 $00
    inc d                                         ; $7762: $14
    jr nz, jr_026_772E                            ; $7763: $20 $C9

    ld d, b                                       ; $7765: $50
    ld h, d                                       ; $7766: $62
    inc b                                         ; $7767: $04
    dec d                                         ; $7768: $15
    jr nz, @-$35                                  ; $7769: $20 $C9

    ld d, b                                       ; $776B: $50
    inc h                                         ; $776C: $24
    jr nz, jr_026_772E                            ; $776D: $20 $BF

    ld d, b                                       ; $776F: $50

jr_026_7770:
    ld [$0C00], sp                                ; $7770: $08 $00 $0C
    ld [$2015], sp                                ; $7773: $08 $15 $20
    add l                                         ; $7776: $85
    ld d, h                                       ; $7777: $54
    ld [$C920], sp                                ; $7778: $08 $20 $C9
    ld d, b                                       ; $777B: $50
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00

jr_026_777E:
    ld b, d                                       ; $777E: $42
    dec d                                         ; $777F: $15
    ld c, $03                                     ; $7780: $0E $03
    ld [hl], d                                    ; $7782: $72
    inc b                                         ; $7783: $04
    ld c, $57                                     ; $7784: $0E $57
    ld [hl], d                                    ; $7786: $72
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    ld e, d                                       ; $7789: $5A
    ld h, $82                                     ; $778A: $26 $82
    ld a, b                                       ; $778C: $78
    inc d                                         ; $778D: $14
    ld c, $57                                     ; $778E: $0E $57
    ld [hl], d                                    ; $7790: $72
    ld h, b                                       ; $7791: $60
    inc bc                                        ; $7792: $03
    dec d                                         ; $7793: $15
    ld c, $57                                     ; $7794: $0E $57
    ld [hl], d                                    ; $7796: $72
    inc e                                         ; $7797: $1C
    nop                                           ; $7798: $00
    ld e, d                                       ; $7799: $5A
    ld h, $73                                     ; $779A: $26 $73
    ld a, b                                       ; $779C: $78
    ld a, a                                       ; $779D: $7F
    sbc e                                         ; $779E: $9B
    ret nc                                        ; $779F: $D0

    inc bc                                        ; $77A0: $03
    ld [bc], a                                    ; $77A1: $02
    sbc e                                         ; $77A2: $9B
    ret nc                                        ; $77A3: $D0

    ld b, $0B                                     ; $77A4: $06 $0B
    ld b, b                                       ; $77A6: $40
    db $10                                        ; $77A7: $10
    ld a, a                                       ; $77A8: $7F
    ld d, e                                       ; $77A9: $53
    ret nc                                        ; $77AA: $D0

    dec b                                         ; $77AB: $05
    inc bc                                        ; $77AC: $03
    sbc d                                         ; $77AD: $9A
    ret nc                                        ; $77AE: $D0

    ld b, $0A                                     ; $77AF: $06 $0A
    ld b, b                                       ; $77B1: $40
    jr nz, jr_026_77C9                            ; $77B2: $20 $15

    ld c, $B3                                     ; $77B4: $0E $B3
    ld [hl], d                                    ; $77B6: $72
    jr nc, jr_026_77B9                            ; $77B7: $30 $00

jr_026_77B9:
    ld e, h                                       ; $77B9: $5C
    nop                                           ; $77BA: $00
    inc bc                                        ; $77BB: $03
    add hl, de                                    ; $77BC: $19
    ld b, d                                       ; $77BD: $42
    dec d                                         ; $77BE: $15
    ld c, $42                                     ; $77BF: $0E $42
    ld a, [hl]                                    ; $77C1: $7E
    inc b                                         ; $77C2: $04
    ld c, $A0                                     ; $77C3: $0E $A0
    ld a, [hl]                                    ; $77C5: $7E
    nop                                           ; $77C6: $00
    nop                                           ; $77C7: $00
    ld d, [hl]                                    ; $77C8: $56

jr_026_77C9:
    ld [bc], a                                    ; $77C9: $02
    ld h, b                                       ; $77CA: $60
    inc b                                         ; $77CB: $04
    ld d, $0E                                     ; $77CC: $16 $0E

jr_026_77CE:
    ld [hl-], a                                   ; $77CE: $32
    ld a, [hl]                                    ; $77CF: $7E
    jr nz, @+$01                                  ; $77D0: $20 $FF

    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    inc d                                         ; $77D4: $14
    ld c, $C8                                     ; $77D5: $0E $C8
    ld a, [hl]                                    ; $77D7: $7E
    ld e, h                                       ; $77D8: $5C
    nop                                           ; $77D9: $00
    inc bc                                        ; $77DA: $03
    dec d                                         ; $77DB: $15
    ld c, $12                                     ; $77DC: $0E $12
    ld a, [hl]                                    ; $77DE: $7E
    ld [$C80E], sp                                ; $77DF: $08 $0E $C8
    ld a, [hl]                                    ; $77E2: $7E
    stop                                          ; $77E3: $10 $00
    dec b                                         ; $77E5: $05
    inc b                                         ; $77E6: $04
    ld l, e                                       ; $77E7: $6B
    ld c, d                                       ; $77E8: $4A
    ld [de], a                                    ; $77E9: $12
    ld b, $A2                                     ; $77EA: $06 $A2
    ret nc                                        ; $77EC: $D0

    jr nc, jr_026_7815                            ; $77ED: $30 $26

    ld b, c                                       ; $77EF: $41
    ld a, b                                       ; $77F0: $78
    ld [hl+], a                                   ; $77F1: $22
    dec b                                         ; $77F2: $05
    ld b, b                                       ; $77F3: $40
    ld l, e                                       ; $77F4: $6B
    inc l                                         ; $77F5: $2C
    ld a, [bc]                                    ; $77F6: $0A
    or b                                          ; $77F7: $B0
    ld c, b                                       ; $77F8: $48
    nop                                           ; $77F9: $00
    add e                                         ; $77FA: $83
    nop                                           ; $77FB: $00
    ld l, e                                       ; $77FC: $6B
    ld c, $0D                                     ; $77FD: $0E $0D
    ld [hl], b                                    ; $77FF: $70
    ld d, b                                       ; $7800: $50
    nop                                           ; $7801: $00
    add [hl]                                      ; $7802: $86
    nop                                           ; $7803: $00
    dec d                                         ; $7804: $15
    ld c, $42                                     ; $7805: $0E $42
    ld a, [hl]                                    ; $7807: $7E
    inc b                                         ; $7808: $04
    ld c, $72                                     ; $7809: $0E $72
    ld a, [hl]                                    ; $780B: $7E
    ld [$5C00], sp                                ; $780C: $08 $00 $5C
    ld bc, $1502                                  ; $780F: $01 $02 $15
    ld c, $72                                     ; $7812: $0E $72
    ld a, [hl]                                    ; $7814: $7E

jr_026_7815:
    ld c, $0E                                     ; $7815: $0E $0E
    ret z                                         ; $7817: $C8

    ld a, [hl]                                    ; $7818: $7E
    jr nz, jr_026_781B                            ; $7819: $20 $00

jr_026_781B:
    dec bc                                        ; $781B: $0B
    inc b                                         ; $781C: $04
    ld e, e                                       ; $781D: $5B
    ld h, $43                                     ; $781E: $26 $43
    ld l, e                                       ; $7820: $6B
    ld b, b                                       ; $7821: $40
    jr c, jr_026_787A                             ; $7822: $38 $56

    ld a, [bc]                                    ; $7824: $0A
    ld h, d                                       ; $7825: $62
    inc b                                         ; $7826: $04
    add e                                         ; $7827: $83
    db $10                                        ; $7828: $10
    cp $00                                        ; $7829: $FE $00
    nop                                           ; $782B: $00
    inc d                                         ; $782C: $14
    ld c, $96                                     ; $782D: $0E $96
    ld a, [hl]                                    ; $782F: $7E
    ld e, e                                       ; $7830: $5B
    ld h, $70                                     ; $7831: $26 $70
    ld l, h                                       ; $7833: $6C
    ld h, d                                       ; $7834: $62
    dec b                                         ; $7835: $05
    ld sp, $9426                                  ; $7836: $31 $26 $94
    ld a, b                                       ; $7839: $78
    ld [hl+], a                                   ; $783A: $22
    adc $40                                       ; $783B: $CE $40
    ld b, l                                       ; $783D: $45
    ld h, $3B                                     ; $783E: $26 $3B
    ld [hl], d                                    ; $7840: $72
    ld h, d                                       ; $7841: $62
    inc bc                                        ; $7842: $03
    dec d                                         ; $7843: $15
    ld c, $B0                                     ; $7844: $0E $B0
    ld d, e                                       ; $7846: $53
    inc b                                         ; $7847: $04
    ld c, $D0                                     ; $7848: $0E $D0
    ld d, e                                       ; $784A: $53
    jr nz, jr_026_784D                            ; $784B: $20 $00

jr_026_784D:
    inc d                                         ; $784D: $14
    ld c, $04                                     ; $784E: $0E $04
    ld d, h                                       ; $7850: $54
    add e                                         ; $7851: $83
    db $10                                        ; $7852: $10
    ld [bc], a                                    ; $7853: $02
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    ld b, b                                       ; $7856: $40
    db $10                                        ; $7857: $10
    ld d, [hl]                                    ; $7858: $56
    dec b                                         ; $7859: $05
    ld e, e                                       ; $785A: $5B
    ld h, $2F                                     ; $785B: $26 $2F
    ld l, h                                       ; $785D: $6C
    ld h, d                                       ; $785E: $62
    inc b                                         ; $785F: $04
    dec bc                                        ; $7860: $0B
    ld [$0587], sp                                ; $7861: $08 $87 $05
    dec b                                         ; $7864: $05
    rst $38                                       ; $7865: $FF
    add a                                         ; $7866: $87
    dec b                                         ; $7867: $05
    dec b                                         ; $7868: $05
    rst $38                                       ; $7869: $FF
    add a                                         ; $786A: $87
    dec b                                         ; $786B: $05
    dec b                                         ; $786C: $05
    rst $38                                       ; $786D: $FF
    add a                                         ; $786E: $87
    dec b                                         ; $786F: $05
    dec b                                         ; $7870: $05
    rst $38                                       ; $7871: $FF
    ld b, d                                       ; $7872: $42
    add e                                         ; $7873: $83
    ld [bc], a                                    ; $7874: $02
    nop                                           ; $7875: $00
    inc bc                                        ; $7876: $03
    ld [bc], a                                    ; $7877: $02
    inc bc                                        ; $7878: $03
    nop                                           ; $7879: $00

jr_026_787A:
    ld [bc], a                                    ; $787A: $02
    nop                                           ; $787B: $00
    db $FD                                        ; $787C: $FD
    ld [bc], a                                    ; $787D: $02
    db $FD                                        ; $787E: $FD
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    ld b, d                                       ; $7881: $42
    add e                                         ; $7882: $83
    jr nz, jr_026_7887                            ; $7883: $20 $02

    nop                                           ; $7885: $00
    nop                                           ; $7886: $00

jr_026_7887:
    ld b, d                                       ; $7887: $42
    add e                                         ; $7888: $83

jr_026_7889:
    jr nc, jr_026_7889                            ; $7889: $30 $FE

    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    ld b, d                                       ; $788D: $42
    add e                                         ; $788E: $83
    jr nc, jr_026_7893                            ; $788F: $30 $02

    nop                                           ; $7891: $00
    nop                                           ; $7892: $00

jr_026_7893:
    ld b, d                                       ; $7893: $42
    sub e                                         ; $7894: $93
    ld h, l                                       ; $7895: $65
    adc e                                         ; $7896: $8B
    ld c, e                                       ; $7897: $4B
    ld c, a                                       ; $7898: $4F
    ld l, b                                       ; $7899: $68
    ld a, b                                       ; $789A: $78
    ld a, a                                       ; $789B: $7F
    ld a, e                                       ; $789C: $7B
    rst $28                                       ; $789D: $EF
    ld h, l                                       ; $789E: $65
    ld a, h                                       ; $789F: $7C
    ld h, h                                       ; $78A0: $64
    rst $10                                       ; $78A1: $D7
    ld c, c                                       ; $78A2: $49
    ld h, [hl]                                    ; $78A3: $66
    ret nz                                        ; $78A4: $C0

    ld e, h                                       ; $78A5: $5C
    ld hl, $0005                                  ; $78A6: $21 $05 $00
    ld l, e                                       ; $78A9: $6B
    ld c, d                                       ; $78AA: $4A
    ld [$9806], sp                                ; $78AB: $08 $06 $98
    ret nc                                        ; $78AE: $D0

    nop                                           ; $78AF: $00
    ld h, $02                                     ; $78B0: $26 $02
    ld a, c                                       ; $78B2: $79
    ld [hl+], a                                   ; $78B3: $22
    dec b                                         ; $78B4: $05
    ld b, b                                       ; $78B5: $40
    dec b                                         ; $78B6: $05
    inc bc                                        ; $78B7: $03
    ld l, e                                       ; $78B8: $6B
    ld c, d                                       ; $78B9: $4A
    ld a, [bc]                                    ; $78BA: $0A
    ld b, $9A                                     ; $78BB: $06 $9A
    ret nc                                        ; $78BD: $D0

    ld a, $26                                     ; $78BE: $3E $26
    add c                                         ; $78C0: $81
    ld a, c                                       ; $78C1: $79
    ld [hl+], a                                   ; $78C2: $22
    dec b                                         ; $78C3: $05
    ld b, b                                       ; $78C4: $40
    dec b                                         ; $78C5: $05
    inc b                                         ; $78C6: $04
    ld l, e                                       ; $78C7: $6B
    ld c, d                                       ; $78C8: $4A
    rrca                                          ; $78C9: $0F
    ld b, $9F                                     ; $78CA: $06 $9F
    ret nc                                        ; $78CC: $D0

    nop                                           ; $78CD: $00
    ld h, $9A                                     ; $78CE: $26 $9A
    ld a, c                                       ; $78D0: $79
    ld [hl+], a                                   ; $78D1: $22

jr_026_78D2:
    dec b                                         ; $78D2: $05
    ld b, b                                       ; $78D3: $40
    ld l, e                                       ; $78D4: $6B
    jr nc, jr_026_78E2                            ; $78D5: $30 $0B

    ld d, b                                       ; $78D7: $50
    ld a, d                                       ; $78D8: $7A
    ldh [$83], a                                  ; $78D9: $E0 $83
    nop                                           ; $78DB: $00
    ld l, e                                       ; $78DC: $6B
    inc l                                         ; $78DD: $2C
    ld a, [bc]                                    ; $78DE: $0A
    or b                                          ; $78DF: $B0
    ld c, b                                       ; $78E0: $48
    nop                                           ; $78E1: $00

jr_026_78E2:
    add b                                         ; $78E2: $80
    nop                                           ; $78E3: $00
    ld l, e                                       ; $78E4: $6B
    ld c, $0D                                     ; $78E5: $0E $0D
    ld [hl], b                                    ; $78E7: $70
    ld d, b                                       ; $78E8: $50
    nop                                           ; $78E9: $00
    add e                                         ; $78EA: $83
    nop                                           ; $78EB: $00
    dec bc                                        ; $78EC: $0B
    nop                                           ; $78ED: $00
    dec bc                                        ; $78EE: $0B

jr_026_78EF:
    inc bc                                        ; $78EF: $03
    dec bc                                        ; $78F0: $0B
    inc b                                         ; $78F1: $04
    add h                                         ; $78F2: $84
    add hl, bc                                    ; $78F3: $09
    rlca                                          ; $78F4: $07
    rra                                           ; $78F5: $1F
    dec c                                         ; $78F6: $0D
    ld a, a                                       ; $78F7: $7F
    ld d, e                                       ; $78F8: $53
    ret nc                                        ; $78F9: $D0

    dec b                                         ; $78FA: $05
    inc bc                                        ; $78FB: $03
    sbc d                                         ; $78FC: $9A
    ret nc                                        ; $78FD: $D0

    ld b, $0A                                     ; $78FE: $06 $0A
    sub h                                         ; $7900: $94

jr_026_7901:
    ld b, d                                       ; $7901: $42
    dec d                                         ; $7902: $15
    jr nz, jr_026_7952                            ; $7903: $20 $4D

    ld d, b                                       ; $7905: $50
    inc b                                         ; $7906: $04
    jr nz, jr_026_78D2                            ; $7907: $20 $C9

    ld d, b                                       ; $7909: $50
    ld [$5C00], sp                                ; $790A: $08 $00 $5C
    nop                                           ; $790D: $00
    inc bc                                        ; $790E: $03
    ld b, b                                       ; $790F: $40
    ld h, b                                       ; $7910: $60
    dec d                                         ; $7911: $15

jr_026_7912:
    jr nz, jr_026_7901                            ; $7912: $20 $ED

    ld c, a                                       ; $7914: $4F
    jr nz, jr_026_7937                            ; $7915: $20 $20

    ret                                           ; $7917: $C9


    ld d, b                                       ; $7918: $50
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    ld h, d                                       ; $791B: $62
    ld [bc], a                                    ; $791C: $02
    dec d                                         ; $791D: $15

jr_026_791E:
    jr nz, jr_026_794D                            ; $791E: $20 $2D

    ld d, b                                       ; $7920: $50
    ld [$C920], sp                                ; $7921: $08 $20 $C9
    ld d, b                                       ; $7924: $50
    jr nc, jr_026_7947                            ; $7925: $30 $20

    xor e                                         ; $7927: $AB
    ld d, b                                       ; $7928: $50
    jr nc, jr_026_794B                            ; $7929: $30 $20

    ret                                           ; $792B: $C9


    ld d, b                                       ; $792C: $50
    jr nz, jr_026_794F                            ; $792D: $20 $20

    xor e                                         ; $792F: $AB
    ld d, b                                       ; $7930: $50
    jr nz, jr_026_7953                            ; $7931: $20 $20

    ret                                           ; $7933: $C9


    ld d, b                                       ; $7934: $50
    jr nz, jr_026_7957                            ; $7935: $20 $20

jr_026_7937:
    xor e                                         ; $7937: $AB
    ld d, b                                       ; $7938: $50
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    ld h, d                                       ; $793B: $62
    inc bc                                        ; $793C: $03
    dec d                                         ; $793D: $15
    jr nz, jr_026_795D                            ; $793E: $20 $1D

    ld d, b                                       ; $7940: $50
    inc b                                         ; $7941: $04
    jr nz, jr_026_78EF                            ; $7942: $20 $AB

    ld d, b                                       ; $7944: $50
    jr nc, jr_026_7967                            ; $7945: $30 $20

jr_026_7947:
    ret                                           ; $7947: $C9


jr_026_7948:
    ld d, b                                       ; $7948: $50
    jr nz, jr_026_796B                            ; $7949: $20 $20

jr_026_794B:
    xor e                                         ; $794B: $AB
    ld d, b                                       ; $794C: $50

jr_026_794D:
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00

jr_026_794F:
    ld e, h                                       ; $794F: $5C
    nop                                           ; $7950: $00
    ld [bc], a                                    ; $7951: $02

jr_026_7952:
    inc d                                         ; $7952: $14

jr_026_7953:
    jr nz, jr_026_791E                            ; $7953: $20 $C9

    ld d, b                                       ; $7955: $50
    ld h, b                                       ; $7956: $60

jr_026_7957:
    inc d                                         ; $7957: $14
    ld d, [hl]                                    ; $7958: $56
    ld c, $40                                     ; $7959: $0E $40
    jr nz, jr_026_7972                            ; $795B: $20 $15

jr_026_795D:
    jr nz, jr_026_7912                            ; $795D: $20 $B3

    ld c, a                                       ; $795F: $4F
    ld b, $20                                     ; $7960: $06 $20
    xor e                                         ; $7962: $AB
    ld d, b                                       ; $7963: $50
    ld [$C920], sp                                ; $7964: $08 $20 $C9

jr_026_7967:
    ld d, b                                       ; $7967: $50
    inc c                                         ; $7968: $0C
    jr nz, jr_026_7948                            ; $7969: $20 $DD

jr_026_796B:
    ld d, b                                       ; $796B: $50
    ld b, $00                                     ; $796C: $06 $00
    ld d, $20                                     ; $796E: $16 $20
    ld h, a                                       ; $7970: $67
    ld d, c                                       ; $7971: $51

jr_026_7972:
    jr nz, jr_026_7974                            ; $7972: $20 $00

jr_026_7974:
    rst $38                                       ; $7974: $FF
    nop                                           ; $7975: $00
    dec d                                         ; $7976: $15
    jr nz, jr_026_79E0                            ; $7977: $20 $67

    ld d, c                                       ; $7979: $51
    jr z, jr_026_797C                             ; $797A: $28 $00

jr_026_797C:
    ld b, l                                       ; $797C: $45
    rla                                           ; $797D: $17
    ei                                            ; $797E: $FB
    ld [hl], c                                    ; $797F: $71
    ld b, d                                       ; $7980: $42
    inc d                                         ; $7981: $14
    ld c, $96                                     ; $7982: $0E $96
    ld a, [hl]                                    ; $7984: $7E
    ld d, [hl]                                    ; $7985: $56
    rlca                                          ; $7986: $07
    ld e, e                                       ; $7987: $5B
    ld h, $0F                                     ; $7988: $26 $0F
    ld l, l                                       ; $798A: $6D
    ld h, d                                       ; $798B: $62
    ld b, $24                                     ; $798C: $06 $24
    ld d, b                                       ; $798E: $50
    dec d                                         ; $798F: $15
    ld c, $B1                                     ; $7990: $0E $B1
    ld a, a                                       ; $7992: $7F
    ld b, b                                       ; $7993: $40
    nop                                           ; $7994: $00
    ld e, h                                       ; $7995: $5C
    nop                                           ; $7996: $00
    inc bc                                        ; $7997: $03
    add hl, de                                    ; $7998: $19
    ld b, d                                       ; $7999: $42
    dec d                                         ; $799A: $15
    ld c, $B0                                     ; $799B: $0E $B0
    ld d, e                                       ; $799D: $53
    inc b                                         ; $799E: $04
    ld c, $04                                     ; $799F: $0E $04
    ld d, h                                       ; $79A1: $54
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    ld e, h                                       ; $79A4: $5C
    nop                                           ; $79A5: $00
    inc bc                                        ; $79A6: $03
    ld b, b                                       ; $79A7: $40
    ld [$0505], sp                                ; $79A8: $08 $05 $05
    ld l, e                                       ; $79AB: $6B
    ld c, d                                       ; $79AC: $4A
    rrca                                          ; $79AD: $0F
    nop                                           ; $79AE: $00

jr_026_79AF:
    rrca                                          ; $79AF: $0F
    ret nc                                        ; $79B0: $D0

    ld c, $26                                     ; $79B1: $0E $26
    db $FD                                        ; $79B3: $FD
    ld a, c                                       ; $79B4: $79
    ld [hl+], a                                   ; $79B5: $22
    dec b                                         ; $79B6: $05
    ld b, b                                       ; $79B7: $40
    dec b                                         ; $79B8: $05
    ld b, $6B                                     ; $79B9: $06 $6B
    ld c, d                                       ; $79BB: $4A
    ld a, [bc]                                    ; $79BC: $0A
    ld bc, $D022                                  ; $79BD: $01 $22 $D0
    ld c, $26                                     ; $79C0: $0E $26
    ld [hl], $7A                                  ; $79C2: $36 $7A
    ld [hl+], a                                   ; $79C4: $22
    dec b                                         ; $79C5: $05
    ld b, b                                       ; $79C6: $40
    ld l, e                                       ; $79C7: $6B
    ld [hl], $0D                                  ; $79C8: $36 $0D
    nop                                           ; $79CA: $00
    ld b, b                                       ; $79CB: $40
    ldh [$83], a                                  ; $79CC: $E0 $83
    nop                                           ; $79CE: $00
    add e                                         ; $79CF: $83
    jr jr_026_79D4                                ; $79D0: $18 $02

    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00

jr_026_79D4:
    ld e, e                                       ; $79D4: $5B
    ld h, $5A                                     ; $79D5: $26 $5A
    ld l, l                                       ; $79D7: $6D
    ld h, d                                       ; $79D8: $62
    rlca                                          ; $79D9: $07
    dec bc                                        ; $79DA: $0B
    dec b                                         ; $79DB: $05
    ld b, b                                       ; $79DC: $40
    dec hl                                        ; $79DD: $2B
    rra                                           ; $79DE: $1F
    rra                                           ; $79DF: $1F

jr_026_79E0:
    dec de                                        ; $79E0: $1B
    add hl, bc                                    ; $79E1: $09
    dec d                                         ; $79E2: $15
    ld c, $F9                                     ; $79E3: $0E $F9
    ld d, h                                       ; $79E5: $54
    db $10                                        ; $79E6: $10
    ld c, $00                                     ; $79E7: $0E $00
    ld d, l                                       ; $79E9: $55
    jr jr_026_79EC                                ; $79EA: $18 $00

jr_026_79EC:
    ld e, e                                       ; $79EC: $5B
    ld h, $B5                                     ; $79ED: $26 $B5
    ld l, l                                       ; $79EF: $6D
    ld b, b                                       ; $79F0: $40
    add b                                         ; $79F1: $80
    ld e, d                                       ; $79F2: $5A
    dec e                                         ; $79F3: $1D
    jp nc, Jump_026_4051                          ; $79F4: $D2 $51 $40

    ld h, b                                       ; $79F7: $60
    ld e, d                                       ; $79F8: $5A
    dec hl                                        ; $79F9: $2B
    ld h, b                                       ; $79FA: $60
    ld h, c                                       ; $79FB: $61
    ld b, d                                       ; $79FC: $42
    dec d                                         ; $79FD: $15
    jr nz, jr_026_79AF                            ; $79FE: $20 $AF

    ld h, [hl]                                    ; $7A00: $66
    dec b                                         ; $7A01: $05
    jr nz, jr_026_7A83                            ; $7A02: $20 $7F

    ld h, [hl]                                    ; $7A04: $66
    ld b, $20                                     ; $7A05: $06 $20
    ld b, c                                       ; $7A07: $41
    ld h, a                                       ; $7A08: $67
    ld d, h                                       ; $7A09: $54
    jr nz, jr_026_7A17                            ; $7A0A: $20 $0B

    ld h, [hl]                                    ; $7A0C: $66
    jr jr_026_7A2F                                ; $7A0D: $18 $20

    ld d, l                                       ; $7A0F: $55
    ld h, [hl]                                    ; $7A10: $66
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    dec bc                                        ; $7A13: $0B
    ld b, $62                                     ; $7A14: $06 $62
    inc b                                         ; $7A16: $04

jr_026_7A17:
    ld e, h                                       ; $7A17: $5C

jr_026_7A18:
    nop                                           ; $7A18: $00
    ld [bc], a                                    ; $7A19: $02
    dec d                                         ; $7A1A: $15
    jr nz, jr_026_7A28                            ; $7A1B: $20 $0B

    ld h, [hl]                                    ; $7A1D: $66
    jr nz, jr_026_7A40                            ; $7A1E: $20 $20

    ld d, l                                       ; $7A20: $55
    ld h, [hl]                                    ; $7A21: $66
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    ld h, d                                       ; $7A24: $62
    ld [$1456], sp                                ; $7A25: $08 $56 $14

jr_026_7A28:
    ld b, b                                       ; $7A28: $40
    db $10                                        ; $7A29: $10
    dec d                                         ; $7A2A: $15
    jr nz, jr_026_7A18                            ; $7A2B: $20 $EB

    ld h, l                                       ; $7A2D: $65
    and b                                         ; $7A2E: $A0

jr_026_7A2F:
    jr nz, jr_026_7A5C                            ; $7A2F: $20 $2B

    ld h, [hl]                                    ; $7A31: $66
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    add hl, de                                    ; $7A34: $19
    ld b, d                                       ; $7A35: $42
    dec d                                         ; $7A36: $15
    jr nz, jr_026_7A74                            ; $7A37: $20 $3B

    ld h, [hl]                                    ; $7A39: $66
    jr z, jr_026_7A5C                             ; $7A3A: $28 $20

    ei                                            ; $7A3C: $FB
    ld h, l                                       ; $7A3D: $65
    jr nz, jr_026_7A60                            ; $7A3E: $20 $20

jr_026_7A40:
    dec sp                                        ; $7A40: $3B
    ld h, [hl]                                    ; $7A41: $66
    nop                                           ; $7A42: $00
    nop                                           ; $7A43: $00

jr_026_7A44:
    ld h, b                                       ; $7A44: $60
    ld c, $15                                     ; $7A45: $0E $15
    jr nz, jr_026_7A44                            ; $7A47: $20 $FB

    ld h, l                                       ; $7A49: $65
    ld [hl+], a                                   ; $7A4A: $22
    nop                                           ; $7A4B: $00

jr_026_7A4C:
    ld d, [hl]                                    ; $7A4C: $56
    ld a, [bc]                                    ; $7A4D: $0A
    dec d                                         ; $7A4E: $15
    jr nz, jr_026_7A4C                            ; $7A4F: $20 $FB

    ld h, l                                       ; $7A51: $65
    db $10                                        ; $7A52: $10
    jr nz, jr_026_7A60                            ; $7A53: $20 $0B

    ld h, [hl]                                    ; $7A55: $66
    ld [$EB20], sp                                ; $7A56: $08 $20 $EB
    ld h, l                                       ; $7A59: $65
    and b                                         ; $7A5A: $A0
    nop                                           ; $7A5B: $00

jr_026_7A5C:
    add hl, de                                    ; $7A5C: $19
    ld b, d                                       ; $7A5D: $42
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00

jr_026_7A60:
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

jr_026_7A74:
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

jr_026_7A83:
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
