SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    rrca                                          ; $4006: $0F
    nop                                           ; $4007: $00
    inc e                                         ; $4008: $1C
    inc bc                                        ; $4009: $03
    dec de                                        ; $400A: $1B
    rlca                                          ; $400B: $07
    add hl, de                                    ; $400C: $19
    dec b                                         ; $400D: $05
    inc c                                         ; $400E: $0C
    ld [de], a                                    ; $400F: $12
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    add b                                         ; $4017: $80
    ret nz                                        ; $4018: $C0

    jr nz, jr_055_407B                            ; $4019: $20 $60

    sub b                                         ; $401B: $90
    or b                                          ; $401C: $B0
    ret z                                         ; $401D: $C8

    ret c                                         ; $401E: $D8

    db $E4                                        ; $401F: $E4
    ld bc, $03FF                                  ; $4020: $01 $FF $03
    ld a, a                                       ; $4023: $7F
    rlca                                          ; $4024: $07
    ccf                                           ; $4025: $3F
    rrca                                          ; $4026: $0F
    rra                                           ; $4027: $1F
    rrca                                          ; $4028: $0F
    rlca                                          ; $4029: $07
    rra                                           ; $402A: $1F
    inc bc                                        ; $402B: $03
    ccf                                           ; $402C: $3F
    ld bc, $007F                                  ; $402D: $01 $7F $00
    ccf                                           ; $4030: $3F
    ret nz                                        ; $4031: $C0

    ld a, a                                       ; $4032: $7F
    add b                                         ; $4033: $80
    rst $38                                       ; $4034: $FF
    nop                                           ; $4035: $00
    rst $38                                       ; $4036: $FF
    nop                                           ; $4037: $00
    rst $38                                       ; $4038: $FF
    nop                                           ; $4039: $00
    rst $38                                       ; $403A: $FF
    nop                                           ; $403B: $00
    rst $38                                       ; $403C: $FF
    nop                                           ; $403D: $00
    ld a, a                                       ; $403E: $7F
    nop                                           ; $403F: $00
    pop af                                        ; $4040: $F1
    ld a, [bc]                                    ; $4041: $0A
    ld sp, hl                                     ; $4042: $F9
    inc b                                         ; $4043: $04
    ld hl, sp+$05                                 ; $4044: $F8 $05
    db $FC                                        ; $4046: $FC
    inc bc                                        ; $4047: $03
    db $FC                                        ; $4048: $FC
    inc bc                                        ; $4049: $03
    db $FC                                        ; $404A: $FC
    ld [bc], a                                    ; $404B: $02
    db $FC                                        ; $404C: $FC
    ld bc, $05F8                                  ; $404D: $01 $F8 $05
    nop                                           ; $4050: $00
    ld a, a                                       ; $4051: $7F
    ld a, a                                       ; $4052: $7F
    add b                                         ; $4053: $80
    db $FD                                        ; $4054: $FD
    ld a, $CE                                     ; $4055: $3E $CE
    cpl                                           ; $4057: $2F
    ld h, a                                       ; $4058: $67
    sub a                                         ; $4059: $97
    inc sp                                        ; $405A: $33
    ld c, e                                       ; $405B: $4B
    ld de, $1125                                  ; $405C: $11 $25 $11
    dec l                                         ; $405F: $2D
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    add b                                         ; $4063: $80
    add b                                         ; $4064: $80
    ld b, b                                       ; $4065: $40
    ret nz                                        ; $4066: $C0

    nop                                           ; $4067: $00
    ld b, b                                       ; $4068: $40
    and b                                         ; $4069: $A0
    jr nz, jr_055_40AC                            ; $406A: $20 $40

    and a                                         ; $406C: $A7
    ret c                                         ; $406D: $D8

    cp d                                          ; $406E: $BA
    add $00                                       ; $406F: $C6 $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    ccf                                           ; $407A: $3F

jr_055_407B:
    ld b, b                                       ; $407B: $40
    rst $00                                       ; $407C: $C7
    daa                                           ; $407D: $27
    cp b                                          ; $407E: $B8
    cp b                                          ; $407F: $B8
    ld bc, $03FF                                  ; $4080: $01 $FF $03
    ld a, a                                       ; $4083: $7F
    rlca                                          ; $4084: $07
    ccf                                           ; $4085: $3F
    rrca                                          ; $4086: $0F
    rra                                           ; $4087: $1F
    rrca                                          ; $4088: $0F
    rlca                                          ; $4089: $07
    rra                                           ; $408A: $1F
    inc bc                                        ; $408B: $03
    ccf                                           ; $408C: $3F
    ld bc, $007F                                  ; $408D: $01 $7F $00
    reti                                          ; $4090: $D9


    ld a, $BC                                     ; $4091: $3E $BC
    ld e, a                                       ; $4093: $5F
    xor [hl]                                      ; $4094: $AE
    ld e, a                                       ; $4095: $5F
    or a                                          ; $4096: $B7
    ld c, a                                       ; $4097: $4F
    sbc e                                         ; $4098: $9B
    ld h, a                                       ; $4099: $67
    adc $31                                       ; $409A: $CE $31
    ld b, a                                       ; $409C: $47
    jr c, @+$35                                   ; $409D: $38 $33

    inc c                                         ; $409F: $0C
    ld d, l                                       ; $40A0: $55
    ld l, $FA                                     ; $40A1: $2E $FA
    dec c                                         ; $40A3: $0D
    ld h, c                                       ; $40A4: $61
    sbc a                                         ; $40A5: $9F
    scf                                           ; $40A6: $37
    res 3, a                                      ; $40A7: $CB $9F
    db $E3                                        ; $40A9: $E3
    db $DB                                        ; $40AA: $DB
    rst $20                                       ; $40AB: $E7

jr_055_40AC:
    or h                                          ; $40AC: $B4
    ld c, h                                       ; $40AD: $4C
    ldh [rNR13], a                                ; $40AE: $E0 $13
    jp nc, Jump_055_772F                          ; $40B0: $D2 $2F $77

    adc a                                         ; $40B3: $8F
    or a                                          ; $40B4: $B7
    rst $08                                       ; $40B5: $CF
    or a                                          ; $40B6: $B7
    adc a                                         ; $40B7: $8F
    db $D3                                        ; $40B8: $D3
    rst $08                                       ; $40B9: $CF
    dec d                                         ; $40BA: $15
    cpl                                           ; $40BB: $2F
    halt                                          ; $40BC: $76
    adc [hl]                                      ; $40BD: $8E
    rla                                           ; $40BE: $17
    rst $28                                       ; $40BF: $EF
    ld bc, $03FF                                  ; $40C0: $01 $FF $03
    ld a, a                                       ; $40C3: $7F
    rlca                                          ; $40C4: $07
    ccf                                           ; $40C5: $3F
    rrca                                          ; $40C6: $0F
    rra                                           ; $40C7: $1F
    rrca                                          ; $40C8: $0F
    rlca                                          ; $40C9: $07
    rra                                           ; $40CA: $1F
    inc bc                                        ; $40CB: $03
    ccf                                           ; $40CC: $3F
    ld bc, $007F                                  ; $40CD: $01 $7F $00
    ld bc, $03FF                                  ; $40D0: $01 $FF $03
    ld a, a                                       ; $40D3: $7F
    rlca                                          ; $40D4: $07
    ccf                                           ; $40D5: $3F
    rrca                                          ; $40D6: $0F
    rra                                           ; $40D7: $1F
    rrca                                          ; $40D8: $0F
    rlca                                          ; $40D9: $07
    rra                                           ; $40DA: $1F
    inc bc                                        ; $40DB: $03
    ccf                                           ; $40DC: $3F
    ld bc, $007F                                  ; $40DD: $01 $7F $00
    ld bc, $03FF                                  ; $40E0: $01 $FF $03
    ld a, a                                       ; $40E3: $7F
    rlca                                          ; $40E4: $07
    ccf                                           ; $40E5: $3F
    rrca                                          ; $40E6: $0F
    rra                                           ; $40E7: $1F
    rrca                                          ; $40E8: $0F
    rlca                                          ; $40E9: $07
    rra                                           ; $40EA: $1F
    inc bc                                        ; $40EB: $03
    ccf                                           ; $40EC: $3F
    ld bc, $007F                                  ; $40ED: $01 $7F $00
    ld bc, $03FF                                  ; $40F0: $01 $FF $03
    ld a, a                                       ; $40F3: $7F
    rlca                                          ; $40F4: $07
    ccf                                           ; $40F5: $3F
    rrca                                          ; $40F6: $0F
    rra                                           ; $40F7: $1F
    rrca                                          ; $40F8: $0F
    rlca                                          ; $40F9: $07
    rra                                           ; $40FA: $1F
    inc bc                                        ; $40FB: $03
    ccf                                           ; $40FC: $3F
    ld bc, $007F                                  ; $40FD: $01 $7F $00
    ld b, $09                                     ; $4100: $06 $09
    inc bc                                        ; $4102: $03
    inc b                                         ; $4103: $04
    inc bc                                        ; $4104: $03
    nop                                           ; $4105: $00
    ld bc, $0002                                  ; $4106: $01 $02 $00
    ld bc, $0000                                  ; $4109: $01 $00 $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    ld a, h                                       ; $4110: $7C
    ld [hl], d                                    ; $4111: $72
    ld a, $B9                                     ; $4112: $3E $B9
    sbc e                                         ; $4114: $9B
    ld e, h                                       ; $4115: $5C
    rst $08                                       ; $4116: $CF
    jr nc, @-$10                                  ; $4117: $30 $EE

    rra                                           ; $4119: $1F
    rst $00                                       ; $411A: $C7
    scf                                           ; $411B: $37
    db $E3                                        ; $411C: $E3
    dec de                                        ; $411D: $1B
    ld h, c                                       ; $411E: $61
    sbc l                                         ; $411F: $9D
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    add b                                         ; $4125: $80
    add b                                         ; $4126: $80
    ld b, b                                       ; $4127: $40
    ldh [rNR10], a                                ; $4128: $E0 $10
    jr jr_055_4190                                ; $412A: $18 $64

    adc $D1                                       ; $412C: $CE $D1
    di                                            ; $412E: $F3
    db $F4                                        ; $412F: $F4
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    ld bc, $0201                                  ; $4139: $01 $01 $02
    rlca                                          ; $413C: $07
    ld [$528D], sp                                ; $413D: $08 $8D $52
    ld bc, $0F02                                  ; $4140: $01 $02 $0F
    db $10                                        ; $4143: $10
    inc sp                                        ; $4144: $33
    ld c, e                                       ; $4145: $4B
    ld l, [hl]                                    ; $4146: $6E
    sbc [hl]                                      ; $4147: $9E
    ret c                                         ; $4148: $D8

    add hl, sp                                    ; $4149: $39
    and b                                         ; $414A: $A0
    ld h, a                                       ; $414B: $67
    ld c, a                                       ; $414C: $4F
    ret nc                                        ; $414D: $D0

    dec e                                         ; $414E: $1D
    db $E3                                        ; $414F: $E3
    ldh a, [$0A]                                  ; $4150: $F0 $0A
    ld de, $D0EF                                  ; $4152: $11 $EF $D0
    jp z, $2F11                                   ; $4155: $CA $11 $2F

    jr c, jr_055_41A0                             ; $4158: $38 $46

    rst $38                                       ; $415A: $FF
    nop                                           ; $415B: $00
    ret nz                                        ; $415C: $C0

    dec [hl]                                      ; $415D: $35
    and b                                         ; $415E: $A0
    jp c, $DCAB                                   ; $415F: $DA $AB $DC

    ccf                                           ; $4162: $3F
    ld b, c                                       ; $4163: $41
    or d                                          ; $4164: $B2
    sla l                                         ; $4165: $CB $25
    ld d, [hl]                                    ; $4167: $56
    ld h, d                                       ; $4168: $62
    sub e                                         ; $4169: $93
    reti                                          ; $416A: $D9


    dec h                                         ; $416B: $25
    rlca                                          ; $416C: $07
    or b                                          ; $416D: $B0
    ld a, [bc]                                    ; $416E: $0A
    jp z, $00FF                                   ; $416F: $CA $FF $00

    rst $38                                       ; $4172: $FF
    rst $38                                       ; $4173: $FF
    ret nz                                        ; $4174: $C0

    ld a, [hl+]                                   ; $4175: $2A
    xor d                                         ; $4176: $AA
    ld d, l                                       ; $4177: $55
    rst $38                                       ; $4178: $FF
    nop                                           ; $4179: $00
    rst $38                                       ; $417A: $FF
    rst $38                                       ; $417B: $FF
    rst $38                                       ; $417C: $FF
    nop                                           ; $417D: $00
    add b                                         ; $417E: $80
    cp a                                          ; $417F: $BF
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    ld bc, $0200                                  ; $4182: $01 $00 $02
    ld bc, $0305                                  ; $4185: $01 $05 $03
    add hl, bc                                    ; $4188: $09
    ld b, $12                                     ; $4189: $06 $12
    dec c                                         ; $418B: $0D
    dec d                                         ; $418C: $15
    ld [$0019], sp                                ; $418D: $08 $19 $00

jr_055_4190:
    ld a, a                                       ; $4190: $7F
    nop                                           ; $4191: $00
    or a                                          ; $4192: $B7
    ld a, b                                       ; $4193: $78
    reti                                          ; $4194: $D9


    and $6E                                       ; $4195: $E6 $6E
    sbc a                                         ; $4197: $9F
    db $DD                                        ; $4198: $DD
    ld a, $BE                                     ; $4199: $3E $BE
    ld a, a                                       ; $419B: $7F

jr_055_419C:
    cp b                                          ; $419C: $B8
    ld a, c                                       ; $419D: $79
    ld h, c                                       ; $419E: $61
    ld [c], a                                     ; $419F: $E2

jr_055_41A0:
    inc e                                         ; $41A0: $1C
    db $E3                                        ; $41A1: $E3
    ld [hl], e                                    ; $41A2: $73
    adc e                                         ; $41A3: $8B
    rst $18                                       ; $41A4: $DF
    ccf                                           ; $41A5: $3F
    cp a                                          ; $41A6: $BF
    ld a, a                                       ; $41A7: $7F
    ld hl, sp+$38                                 ; $41A8: $F8 $38
    rst $00                                       ; $41AA: $C7
    jr z, jr_055_419C                             ; $41AB: $28 $EF

    db $10                                        ; $41AD: $10
    cp $01                                        ; $41AE: $FE $01
    rst $30                                       ; $41B0: $F7
    rrca                                          ; $41B1: $0F
    dec sp                                        ; $41B2: $3B
    ld b, a                                       ; $41B3: $47
    call c, $E7C3                                 ; $41B4: $DC $C3 $E7
    ldh [$F8], a                                  ; $41B7: $E0 $F8
    ld hl, sp+$3E                                 ; $41B9: $F8 $3E
    cp h                                          ; $41BB: $BC
    sbc l                                         ; $41BC: $9D
    ld e, h                                       ; $41BD: $5C
    pop bc                                        ; $41BE: $C1
    ld [hl+], a                                   ; $41BF: $22
    ld bc, $03FF                                  ; $41C0: $01 $FF $03
    ld a, a                                       ; $41C3: $7F
    rlca                                          ; $41C4: $07
    ccf                                           ; $41C5: $3F
    rrca                                          ; $41C6: $0F
    rra                                           ; $41C7: $1F
    rrca                                          ; $41C8: $0F
    rlca                                          ; $41C9: $07
    rra                                           ; $41CA: $1F
    inc bc                                        ; $41CB: $03
    ccf                                           ; $41CC: $3F
    ld bc, $007F                                  ; $41CD: $01 $7F $00
    ld bc, $03FF                                  ; $41D0: $01 $FF $03
    ld a, a                                       ; $41D3: $7F
    rlca                                          ; $41D4: $07
    ccf                                           ; $41D5: $3F
    rrca                                          ; $41D6: $0F
    rra                                           ; $41D7: $1F
    rrca                                          ; $41D8: $0F
    rlca                                          ; $41D9: $07
    rra                                           ; $41DA: $1F
    inc bc                                        ; $41DB: $03
    ccf                                           ; $41DC: $3F
    ld bc, $007F                                  ; $41DD: $01 $7F $00
    ld bc, $03FF                                  ; $41E0: $01 $FF $03
    ld a, a                                       ; $41E3: $7F
    rlca                                          ; $41E4: $07
    ccf                                           ; $41E5: $3F
    rrca                                          ; $41E6: $0F
    rra                                           ; $41E7: $1F
    rrca                                          ; $41E8: $0F
    rlca                                          ; $41E9: $07
    rra                                           ; $41EA: $1F
    inc bc                                        ; $41EB: $03
    ccf                                           ; $41EC: $3F
    ld bc, $007F                                  ; $41ED: $01 $7F $00
    ld bc, $03FF                                  ; $41F0: $01 $FF $03
    ld a, a                                       ; $41F3: $7F
    rlca                                          ; $41F4: $07
    ccf                                           ; $41F5: $3F
    rrca                                          ; $41F6: $0F
    rra                                           ; $41F7: $1F
    rrca                                          ; $41F8: $0F
    rlca                                          ; $41F9: $07
    rra                                           ; $41FA: $1F
    inc bc                                        ; $41FB: $03
    ccf                                           ; $41FC: $3F
    ld bc, $007F                                  ; $41FD: $01 $7F $00
    rst $08                                       ; $4200: $CF
    cpl                                           ; $4201: $2F
    ld a, a                                       ; $4202: $7F
    ld e, a                                       ; $4203: $5F
    rst $38                                       ; $4204: $FF
    rst $08                                       ; $4205: $CF
    cp $E1                                        ; $4206: $FE $E1
    rrca                                          ; $4208: $0F
    ld d, $09                                     ; $4209: $16 $09
    rst $30                                       ; $420B: $F7
    db $10                                        ; $420C: $10
    rst $28                                       ; $420D: $EF
    ccf                                           ; $420E: $3F
    ret nz                                        ; $420F: $C0

    jr nc, jr_055_4261                            ; $4210: $30 $4F

    jr jr_055_423B                                ; $4212: $18 $27

    inc c                                         ; $4214: $0C
    inc de                                        ; $4215: $13
    rlca                                          ; $4216: $07
    ld [$0201], sp                                ; $4217: $08 $01 $02
    nop                                           ; $421A: $00
    ld bc, $0000                                  ; $421B: $01 $00 $00
    ld a, a                                       ; $421E: $7F
    add b                                         ; $421F: $80
    ld a, h                                       ; $4220: $7C
    ld a, l                                       ; $4221: $7D
    ccf                                           ; $4222: $3F
    cp a                                          ; $4223: $BF
    rrca                                          ; $4224: $0F
    rst $28                                       ; $4225: $EF
    inc bc                                        ; $4226: $03
    di                                            ; $4227: $F3
    ret nz                                        ; $4228: $C0

    inc a                                         ; $4229: $3C
    ldh a, [rIF]                                  ; $422A: $F0 $0F
    inc a                                         ; $422C: $3C
    ld b, e                                       ; $422D: $43
    rst $38                                       ; $422E: $FF
    nop                                           ; $422F: $00
    ld hl, sp+$07                                 ; $4230: $F8 $07
    inc e                                         ; $4232: $1C
    ld h, e                                       ; $4233: $63
    rst $00                                       ; $4234: $C7
    ret c                                         ; $4235: $D8

    ldh a, [$F7]                                  ; $4236: $F0 $F7
    db $FD                                        ; $4238: $FD
    db $FC                                        ; $4239: $FC
    ccf                                           ; $423A: $3F

jr_055_423B:
    jr c, jr_055_4249                             ; $423B: $38 $0C

    ld a, [c]                                     ; $423D: $F2
    dec sp                                        ; $423E: $3B
    rst $00                                       ; $423F: $C7
    or a                                          ; $4240: $B7
    ld c, a                                       ; $4241: $4F
    ld l, a                                       ; $4242: $6F
    sbc a                                         ; $4243: $9F
    or $0E                                        ; $4244: $F6 $0E
    ld a, a                                       ; $4246: $7F
    add b                                         ; $4247: $80
    ret nz                                        ; $4248: $C0

jr_055_4249:
    dec [hl]                                      ; $4249: $35
    ccf                                           ; $424A: $3F
    cp a                                          ; $424B: $BF
    rst $38                                       ; $424C: $FF
    rst $38                                       ; $424D: $FF
    rst $38                                       ; $424E: $FF
    rst $38                                       ; $424F: $FF
    pop de                                        ; $4250: $D1
    db $ED                                        ; $4251: $ED
    xor d                                         ; $4252: $AA
    or d                                          ; $4253: $B2
    add hl, bc                                    ; $4254: $09
    ld d, c                                       ; $4255: $51
    cp $02                                        ; $4256: $FE $02
    rrca                                          ; $4258: $0F
    ld [hl], b                                    ; $4259: $70
    pop hl                                        ; $425A: $E1
    and $FC                                       ; $425B: $E6 $FC
    db $FD                                        ; $425D: $FD
    rst $38                                       ; $425E: $FF
    rst $38                                       ; $425F: $FF
    inc d                                         ; $4260: $14

jr_055_4261:
    dec d                                         ; $4261: $15
    and c                                         ; $4262: $A1
    and d                                         ; $4263: $A2
    ld d, d                                       ; $4264: $52
    ld e, l                                       ; $4265: $5D
    and a                                         ; $4266: $A7
    xor e                                         ; $4267: $AB
    dec a                                         ; $4268: $3D
    cp e                                          ; $4269: $BB
    sbc a                                         ; $426A: $9F
    ld e, h                                       ; $426B: $5C
    ld c, [hl]                                    ; $426C: $4E
    xor a                                         ; $426D: $AF
    daa                                           ; $426E: $27
    ld d, a                                       ; $426F: $57
    ccf                                           ; $4270: $3F
    ret nz                                        ; $4271: $C0

    rst $18                                       ; $4272: $DF
    ccf                                           ; $4273: $3F
    or b                                          ; $4274: $B0
    jp z, $956A                                   ; $4275: $CA $6A $95

    cp a                                          ; $4278: $BF
    ret nz                                        ; $4279: $C0

    ld a, a                                       ; $427A: $7F
    rst $38                                       ; $427B: $FF
    rst $38                                       ; $427C: $FF
    nop                                           ; $427D: $00
    xor b                                         ; $427E: $A8
    rst $38                                       ; $427F: $FF
    inc de                                        ; $4280: $13
    nop                                           ; $4281: $00
    inc bc                                        ; $4282: $03
    nop                                           ; $4283: $00
    dec b                                         ; $4284: $05
    ld [bc], a                                    ; $4285: $02
    dec b                                         ; $4286: $05
    ld [bc], a                                    ; $4287: $02
    dec b                                         ; $4288: $05
    ld [bc], a                                    ; $4289: $02
    inc b                                         ; $428A: $04
    ld bc, $0204                                  ; $428B: $01 $04 $02
    ld [bc], a                                    ; $428E: $02
    ld bc, wStartMenuTextStringStringAddress                                  ; $428F: $01 $43 $CC
    ld b, [hl]                                    ; $4292: $46
    reti                                          ; $4293: $D9


    ld b, h                                       ; $4294: $44
    db $DB                                        ; $4295: $DB
    and h                                         ; $4296: $A4
    ld a, e                                       ; $4297: $7B
    sub d                                         ; $4298: $92
    ld a, l                                       ; $4299: $7D
    ret z                                         ; $429A: $C8

    ccf                                           ; $429B: $3F
    ld h, b                                       ; $429C: $60
    sbc e                                         ; $429D: $9B
    inc [hl]                                      ; $429E: $34
    rst $08                                       ; $429F: $CF
    inc [hl]                                      ; $42A0: $34
    jp $E112                                      ; $42A1: $C3 $12 $E1


    add hl, de                                    ; $42A4: $19
    ldh [$3C], a                                  ; $42A5: $E0 $3C
    ret nz                                        ; $42A7: $C0

    ld l, d                                       ; $42A8: $6A
    sbc h                                         ; $42A9: $9C
    ld e, a                                       ; $42AA: $5F
    cp a                                          ; $42AB: $BF
    ld c, a                                       ; $42AC: $4F
    xor a                                         ; $42AD: $AF
    ld b, b                                       ; $42AE: $40
    or b                                          ; $42AF: $B0
    ld [hl], e                                    ; $42B0: $73
    adc h                                         ; $42B1: $8C
    cp $00                                        ; $42B2: $FE $00
    ret nz                                        ; $42B4: $C0

    nop                                           ; $42B5: $00
    add hl, sp                                    ; $42B6: $39
    add hl, sp                                    ; $42B7: $39
    rst $30                                       ; $42B8: $F7
    rst $30                                       ; $42B9: $F7
    db $EB                                        ; $42BA: $EB
    db $EB                                        ; $42BB: $EB
    ld d, a                                       ; $42BC: $57
    rla                                           ; $42BD: $17
    cp a                                          ; $42BE: $BF
    ccf                                           ; $42BF: $3F
    ld bc, $03FF                                  ; $42C0: $01 $FF $03
    ld a, a                                       ; $42C3: $7F
    rlca                                          ; $42C4: $07
    ccf                                           ; $42C5: $3F
    rrca                                          ; $42C6: $0F
    rra                                           ; $42C7: $1F
    rrca                                          ; $42C8: $0F
    rlca                                          ; $42C9: $07
    rra                                           ; $42CA: $1F
    inc bc                                        ; $42CB: $03
    ccf                                           ; $42CC: $3F
    ld bc, $007F                                  ; $42CD: $01 $7F $00
    ld bc, $03FF                                  ; $42D0: $01 $FF $03
    ld a, a                                       ; $42D3: $7F
    rlca                                          ; $42D4: $07
    ccf                                           ; $42D5: $3F
    rrca                                          ; $42D6: $0F
    rra                                           ; $42D7: $1F
    rrca                                          ; $42D8: $0F
    rlca                                          ; $42D9: $07
    rra                                           ; $42DA: $1F
    inc bc                                        ; $42DB: $03
    ccf                                           ; $42DC: $3F
    ld bc, $007F                                  ; $42DD: $01 $7F $00
    ld bc, $03FF                                  ; $42E0: $01 $FF $03
    ld a, a                                       ; $42E3: $7F
    rlca                                          ; $42E4: $07
    ccf                                           ; $42E5: $3F
    rrca                                          ; $42E6: $0F
    rra                                           ; $42E7: $1F
    rrca                                          ; $42E8: $0F
    rlca                                          ; $42E9: $07
    rra                                           ; $42EA: $1F
    inc bc                                        ; $42EB: $03
    ccf                                           ; $42EC: $3F
    ld bc, $007F                                  ; $42ED: $01 $7F $00
    ld bc, $03FF                                  ; $42F0: $01 $FF $03
    ld a, a                                       ; $42F3: $7F
    rlca                                          ; $42F4: $07
    ccf                                           ; $42F5: $3F
    rrca                                          ; $42F6: $0F
    rra                                           ; $42F7: $1F
    rrca                                          ; $42F8: $0F
    rlca                                          ; $42F9: $07
    rra                                           ; $42FA: $1F
    inc bc                                        ; $42FB: $03
    ccf                                           ; $42FC: $3F
    ld bc, $007F                                  ; $42FD: $01 $7F $00
    inc bc                                        ; $4300: $03
    inc b                                         ; $4301: $04
    ld c, $11                                     ; $4302: $0E $11
    add hl, de                                    ; $4304: $19
    dec h                                         ; $4305: $25
    scf                                           ; $4306: $37
    ld c, a                                       ; $4307: $4F
    ld l, a                                       ; $4308: $6F
    rra                                           ; $4309: $1F
    ld h, [hl]                                    ; $430A: $66
    ld d, $60                                     ; $430B: $16 $60
    add hl, de                                    ; $430D: $19
    jr nc, jr_055_435F                            ; $430E: $30 $4F

    rst $08                                       ; $4310: $CF
    cpl                                           ; $4311: $2F
    ld a, a                                       ; $4312: $7F
    ld a, a                                       ; $4313: $7F
    rst $38                                       ; $4314: $FF
    rst $38                                       ; $4315: $FF
    ldh a, [$F5]                                  ; $4316: $F0 $F5
    nop                                           ; $4318: $00
    rra                                           ; $4319: $1F
    nop                                           ; $431A: $00
    rst $38                                       ; $431B: $FF
    nop                                           ; $431C: $00
    rst $38                                       ; $431D: $FF
    ccf                                           ; $431E: $3F

jr_055_431F:
    ret nz                                        ; $431F: $C0

    di                                            ; $4320: $F3
    db $F4                                        ; $4321: $F4
    db $FC                                        ; $4322: $FC

jr_055_4323:
    db $FD                                        ; $4323: $FD
    cp $FE                                        ; $4324: $FE $FE
    inc a                                         ; $4326: $3C
    cp l                                          ; $4327: $BD

jr_055_4328:
    nop                                           ; $4328: $00
    jp $FE01                                      ; $4329: $C3 $01 $FE


    inc bc                                        ; $432C: $03
    db $FC                                        ; $432D: $FC
    rst $20                                       ; $432E: $E7
    jr jr_055_4328                                ; $432F: $18 $F7

    rrca                                          ; $4331: $0F
    db $F4                                        ; $4332: $F4
    inc b                                         ; $4333: $04
    ld l, b                                       ; $4334: $68

jr_055_4335:
    sbc e                                         ; $4335: $9B
    ld h, e                                       ; $4336: $63
    sub h                                         ; $4337: $94
    add $29                                       ; $4338: $C6 $29
    sbc b                                         ; $433A: $98
    ld h, a                                       ; $433B: $67
    or b                                          ; $433C: $B0
    ld c, a                                       ; $433D: $4F
    jr nz, jr_055_431F                            ; $433E: $20 $DF

    nop                                           ; $4340: $00
    ld a, [hl+]                                   ; $4341: $2A
    nop                                           ; $4342: $00
    rst $38                                       ; $4343: $FF
    ld a, a                                       ; $4344: $7F
    add b                                         ; $4345: $80
    xor d                                         ; $4346: $AA
    ld d, l                                       ; $4347: $55
    dec b                                         ; $4348: $05
    ld a, [$FF00]                                 ; $4349: $FA $00 $FF
    rlca                                          ; $434C: $07
    ld hl, sp+$1F                                 ; $434D: $F8 $1F
    ldh [$3F], a                                  ; $434F: $E0 $3F
    ccf                                           ; $4351: $3F
    rrca                                          ; $4352: $0F
    rst $08                                       ; $4353: $CF
    add e                                         ; $4354: $83
    ld [hl], e                                    ; $4355: $73
    pop hl                                        ; $4356: $E1
    dec e                                         ; $4357: $1D
    ld a, b                                       ; $4358: $78
    add [hl]                                      ; $4359: $86
    inc l                                         ; $435A: $2C
    db $D3                                        ; $435B: $D3
    add [hl]                                      ; $435C: $86
    ld a, b                                       ; $435D: $78
    ld [c], a                                     ; $435E: $E2

jr_055_435F:
    dec d                                         ; $435F: $15
    add l                                         ; $4360: $85
    cp l                                          ; $4361: $BD
    jp z, $ECD7                                   ; $4362: $CA $D7 $EC

    pop hl                                        ; $4365: $E1
    push af                                       ; $4366: $F5
    ld a, [$F0F7]                                 ; $4367: $FA $F7 $F0
    ld a, e                                       ; $436A: $7B
    ld a, h                                       ; $436B: $7C
    dec sp                                        ; $436C: $3B
    cp h                                          ; $436D: $BC
    ld de, $4F52                                  ; $436E: $11 $52 $4F
    ldh a, [rPCM34]                               ; $4371: $F0 $77
    adc a                                         ; $4373: $8F
    ret c                                         ; $4374: $D8

    jr c, jr_055_4323                             ; $4375: $38 $AC

    ld [hl], e                                    ; $4377: $73
    ld [hl], b                                    ; $4378: $70
    rst $28                                       ; $4379: $EF
    ld a, d                                       ; $437A: $7A
    push hl                                       ; $437B: $E5
    ccf                                           ; $437C: $3F
    or b                                          ; $437D: $B0
    sbc a                                         ; $437E: $9F
    ld e, a                                       ; $437F: $5F
    inc bc                                        ; $4380: $03
    nop                                           ; $4381: $00
    ld bc, $0000                                  ; $4382: $01 $00 $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    nop                                           ; $438A: $00
    nop                                           ; $438B: $00
    nop                                           ; $438C: $00
    nop                                           ; $438D: $00
    nop                                           ; $438E: $00
    nop                                           ; $438F: $00
    jr jr_055_4335                                ; $4390: $18 $A3

    ret z                                         ; $4392: $C8

    scf                                           ; $4393: $37
    ld l, b                                       ; $4394: $68
    inc de                                        ; $4395: $13
    jr nc, jr_055_43A3                            ; $4396: $30 $0B

    jr nc, @+$05                                  ; $4398: $30 $03

    ld h, b                                       ; $439A: $60
    rla                                           ; $439B: $17
    call nz, $C623                                ; $439C: $C4 $23 $C6
    ld hl, $8679                                  ; $439F: $21 $79 $86
    dec a                                         ; $43A2: $3D

jr_055_43A3:
    jp nz, $C03F                                  ; $43A3: $C2 $3F $C0

    scf                                           ; $43A6: $37
    ret z                                         ; $43A7: $C8

    inc sp                                        ; $43A8: $33
    call z, $9661                                 ; $43A9: $CC $61 $96
    ld l, c                                       ; $43AC: $69
    sbc [hl]                                      ; $43AD: $9E
    ret z                                         ; $43AE: $C8

    cpl                                           ; $43AF: $2F
    cp a                                          ; $43B0: $BF
    ccf                                           ; $43B1: $3F
    ld a, a                                       ; $43B2: $7F
    ld a, a                                       ; $43B3: $7F
    ld a, a                                       ; $43B4: $7F
    ld a, a                                       ; $43B5: $7F
    ccf                                           ; $43B6: $3F
    ccf                                           ; $43B7: $3F
    rra                                           ; $43B8: $1F
    sbc a                                         ; $43B9: $9F
    dec b                                         ; $43BA: $05
    push bc                                       ; $43BB: $C5
    cp h                                          ; $43BC: $BC
    ld b, b                                       ; $43BD: $40
    jp c, $013C                                   ; $43BE: $DA $3C $01

    rst $38                                       ; $43C1: $FF
    inc bc                                        ; $43C2: $03
    ld a, a                                       ; $43C3: $7F
    rlca                                          ; $43C4: $07
    ccf                                           ; $43C5: $3F
    rrca                                          ; $43C6: $0F
    rra                                           ; $43C7: $1F
    rrca                                          ; $43C8: $0F
    rlca                                          ; $43C9: $07
    rra                                           ; $43CA: $1F
    inc bc                                        ; $43CB: $03
    ccf                                           ; $43CC: $3F
    ld bc, $007F                                  ; $43CD: $01 $7F $00
    ld bc, $03FF                                  ; $43D0: $01 $FF $03
    ld a, a                                       ; $43D3: $7F
    rlca                                          ; $43D4: $07
    ccf                                           ; $43D5: $3F
    rrca                                          ; $43D6: $0F
    rra                                           ; $43D7: $1F
    rrca                                          ; $43D8: $0F
    rlca                                          ; $43D9: $07
    rra                                           ; $43DA: $1F
    inc bc                                        ; $43DB: $03
    ccf                                           ; $43DC: $3F
    ld bc, $007F                                  ; $43DD: $01 $7F $00
    ld bc, $03FF                                  ; $43E0: $01 $FF $03
    ld a, a                                       ; $43E3: $7F
    rlca                                          ; $43E4: $07
    ccf                                           ; $43E5: $3F
    rrca                                          ; $43E6: $0F
    rra                                           ; $43E7: $1F
    rrca                                          ; $43E8: $0F
    rlca                                          ; $43E9: $07
    rra                                           ; $43EA: $1F
    inc bc                                        ; $43EB: $03
    ccf                                           ; $43EC: $3F
    ld bc, $007F                                  ; $43ED: $01 $7F $00
    ld bc, $03FF                                  ; $43F0: $01 $FF $03
    ld a, a                                       ; $43F3: $7F
    rlca                                          ; $43F4: $07
    ccf                                           ; $43F5: $3F
    rrca                                          ; $43F6: $0F
    rra                                           ; $43F7: $1F
    rrca                                          ; $43F8: $0F
    rlca                                          ; $43F9: $07
    rra                                           ; $43FA: $1F
    inc bc                                        ; $43FB: $03
    ccf                                           ; $43FC: $3F
    ld bc, $007F                                  ; $43FD: $01 $7F $00
    rra                                           ; $4400: $1F
    jr nz, jr_055_4403                            ; $4401: $20 $00

jr_055_4403:
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    ccf                                           ; $4408: $3F

jr_055_4409:
    nop                                           ; $4409: $00
    ld h, h                                       ; $440A: $64
    dec de                                        ; $440B: $1B
    ld e, e                                       ; $440C: $5B
    or a                                          ; $440D: $B7
    cp c                                          ; $440E: $B9
    ld [hl], a                                    ; $440F: $77
    ldh [rNR10], a                                ; $4410: $E0 $10
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    ld bc, $1F02                                  ; $4414: $01 $02 $1F
    jr nz, jr_055_4409                            ; $4417: $20 $F0

    rrca                                          ; $4419: $0F
    rlca                                          ; $441A: $07
    rst $38                                       ; $441B: $FF
    cp $FE                                        ; $441C: $FE $FE
    db $E3                                        ; $441E: $E3
    db $EC                                        ; $441F: $EC
    ccf                                           ; $4420: $3F
    ld b, b                                       ; $4421: $40
    ld h, e                                       ; $4422: $63
    sbc h                                         ; $4423: $9C
    push bc                                       ; $4424: $C5
    ld a, $19                                     ; $4425: $3E $19
    cp $72                                        ; $4427: $FE $72
    db $FD                                        ; $4429: $FD
    call nz, $3ADB                                ; $442A: $C4 $DB $3A
    rst $00                                       ; $442D: $C7
    and $1F                                       ; $442E: $E6 $1F
    ld h, b                                       ; $4430: $60
    sub l                                         ; $4431: $95
    ret nz                                        ; $4432: $C0

    ld a, [hl+]                                   ; $4433: $2A
    ret nz                                        ; $4434: $C0

    dec b                                         ; $4435: $05
    ret nz                                        ; $4436: $C0

    ld [hl+], a                                   ; $4437: $22

jr_055_4438:
    ret z                                         ; $4438: $C8

    add hl, bc                                    ; $4439: $09
    call z, $E62C                                 ; $443A: $CC $2C $E6
    ld d, $73                                     ; $443D: $16 $73
    adc e                                         ; $443F: $8B
    inc a                                         ; $4440: $3C
    ret nz                                        ; $4441: $C0

    ld l, a                                       ; $4442: $6F
    add c                                         ; $4443: $81
    rst $10                                       ; $4444: $D7

jr_055_4445:
    ld de, $20A6                                  ; $4445: $11 $A6 $20
    add [hl]                                      ; $4448: $86
    ld [$19C6], sp                                ; $4449: $08 $C6 $19
    db $E3                                        ; $444C: $E3
    inc e                                         ; $444D: $1C
    ld [hl], e                                    ; $444E: $73
    inc c                                         ; $444F: $0C
    ld [hl], c                                    ; $4450: $71
    ld a, [bc]                                    ; $4451: $0A
    cp c                                          ; $4452: $B9
    add h                                         ; $4453: $84
    jr jr_055_445B                                ; $4454: $18 $05

    inc c                                         ; $4456: $0C
    inc bc                                        ; $4457: $03
    inc c                                         ; $4458: $0C
    db $E3                                        ; $4459: $E3
    inc c                                         ; $445A: $0C

jr_055_445B:
    ld a, [c]                                     ; $445B: $F2
    inc c                                         ; $445C: $0C
    pop af                                        ; $445D: $F1
    jr jr_055_4445                                ; $445E: $18 $E5

    inc b                                         ; $4460: $04
    or a                                          ; $4461: $B7
    ld [$00ED], sp                                ; $4462: $08 $ED $00
    cp e                                          ; $4465: $BB
    inc bc                                        ; $4466: $03
    call c, Call_055_730C                         ; $4467: $DC $0C $73
    db $10                                        ; $446A: $10
    xor b                                         ; $446B: $A8
    jr nz, jr_055_44BE                            ; $446C: $20 $50

    nop                                           ; $446E: $00
    rst $20                                       ; $446F: $E7
    rst $20                                       ; $4470: $E7
    rra                                           ; $4471: $1F
    ccf                                           ; $4472: $3F
    ret nz                                        ; $4473: $C0

    rlca                                          ; $4474: $07
    jr jr_055_4438                                ; $4475: $18 $C1

    ld h, $70                                     ; $4477: $26 $70
    adc b                                         ; $4479: $88
    inc e                                         ; $447A: $1C
    ld h, e                                       ; $447B: $63
    rlca                                          ; $447C: $07
    jr jr_055_4480                                ; $447D: $18 $01

    add [hl]                                      ; $447F: $86

jr_055_4480:
    nop                                           ; $4480: $00
    ld bc, $0201                                  ; $4481: $01 $01 $02
    rlca                                          ; $4484: $07
    ld [$130D], sp                                ; $4485: $08 $0D $13
    rla                                           ; $4488: $17
    cpl                                           ; $4489: $2F
    cpl                                           ; $448A: $2F
    rra                                           ; $448B: $1F
    cpl                                           ; $448C: $2F
    rra                                           ; $448D: $1F
    daa                                           ; $448E: $27
    rra                                           ; $448F: $1F
    rst $20                                       ; $4490: $E7
    nop                                           ; $4491: $00
    db $E3                                        ; $4492: $E3
    inc d                                         ; $4493: $14
    pop de                                        ; $4494: $D1
    ld a, [hl+]                                   ; $4495: $2A
    ld c, e                                       ; $4496: $4B
    or h                                          ; $4497: $B4
    and a                                         ; $4498: $A7
    ret c                                         ; $4499: $D8

    or a                                          ; $449A: $B7
    ret z                                         ; $449B: $C8

    ld a, $41                                     ; $449C: $3E $41
    ld e, $60                                     ; $449E: $1E $60
    ret c                                         ; $44A0: $D8

    dec sp                                        ; $44A1: $3B
    sub l                                         ; $44A2: $95
    ld d, [hl]                                    ; $44A3: $56
    or d                                          ; $44A4: $B2
    ld a, c                                       ; $44A5: $79
    or d                                          ; $44A6: $B2
    inc a                                         ; $44A7: $3C
    ld h, d                                       ; $44A8: $62
    db $EC                                        ; $44A9: $EC
    ld h, e                                       ; $44AA: $63
    ld l, h                                       ; $44AB: $6C
    pop bc                                        ; $44AC: $C1
    adc $C0                                       ; $44AD: $CE $C0
    rst $28                                       ; $44AF: $EF
    or h                                          ; $44B0: $B4
    ld c, h                                       ; $44B1: $4C
    ld l, a                                       ; $44B2: $6F
    sbc a                                         ; $44B3: $9F
    ccf                                           ; $44B4: $3F
    ccf                                           ; $44B5: $3F
    ld a, b                                       ; $44B6: $78
    nop                                           ; $44B7: $00
    rst $30                                       ; $44B8: $F7
    ld [$0E77], sp                                ; $44B9: $08 $77 $0E
    add hl, sp                                    ; $44BC: $39
    add [hl]                                      ; $44BD: $86

jr_055_44BE:
    rst $38                                       ; $44BE: $FF
    nop                                           ; $44BF: $00
    ld bc, $03FF                                  ; $44C0: $01 $FF $03
    ld a, a                                       ; $44C3: $7F
    rlca                                          ; $44C4: $07
    ccf                                           ; $44C5: $3F
    rrca                                          ; $44C6: $0F
    rra                                           ; $44C7: $1F
    rrca                                          ; $44C8: $0F
    rlca                                          ; $44C9: $07
    rra                                           ; $44CA: $1F
    inc bc                                        ; $44CB: $03
    ccf                                           ; $44CC: $3F
    ld bc, $007F                                  ; $44CD: $01 $7F $00
    ld bc, $03FF                                  ; $44D0: $01 $FF $03
    ld a, a                                       ; $44D3: $7F
    rlca                                          ; $44D4: $07
    ccf                                           ; $44D5: $3F
    rrca                                          ; $44D6: $0F
    rra                                           ; $44D7: $1F
    rrca                                          ; $44D8: $0F
    rlca                                          ; $44D9: $07
    rra                                           ; $44DA: $1F
    inc bc                                        ; $44DB: $03
    ccf                                           ; $44DC: $3F
    ld bc, $007F                                  ; $44DD: $01 $7F $00
    ld bc, $0200                                  ; $44E0: $01 $00 $02
    ld bc, $0103                                  ; $44E3: $01 $03 $01
    inc bc                                        ; $44E6: $03
    ld bc, $0503                                  ; $44E7: $01 $03 $05
    dec b                                         ; $44EA: $05
    inc bc                                        ; $44EB: $03
    dec b                                         ; $44EC: $05
    inc bc                                        ; $44ED: $03
    dec b                                         ; $44EE: $05

jr_055_44EF:
    inc bc                                        ; $44EF: $03
    ld bc, $03FF                                  ; $44F0: $01 $FF $03
    ld a, a                                       ; $44F3: $7F
    rlca                                          ; $44F4: $07
    ccf                                           ; $44F5: $3F
    rrca                                          ; $44F6: $0F
    rra                                           ; $44F7: $1F
    rrca                                          ; $44F8: $0F
    rlca                                          ; $44F9: $07
    rra                                           ; $44FA: $1F
    inc bc                                        ; $44FB: $03
    ccf                                           ; $44FC: $3F
    ld bc, $007F                                  ; $44FD: $01 $7F $00
    cp b                                          ; $4500: $B8
    ld [hl], a                                    ; $4501: $77
    xor b                                         ; $4502: $A8
    ld h, a                                       ; $4503: $67
    xor b                                         ; $4504: $A8
    ld [hl], a                                    ; $4505: $77
    ld h, h                                       ; $4506: $64
    cp e                                          ; $4507: $BB
    ld b, a                                       ; $4508: $47
    sbc b                                         ; $4509: $98
    add $31                                       ; $450A: $C6 $31
    db $E4                                        ; $450C: $E4
    inc de                                        ; $450D: $13
    ld l, h                                       ; $450E: $6C
    sbc e                                         ; $450F: $9B
    rlca                                          ; $4510: $07
    ld hl, sp+$06                                 ; $4511: $F8 $06
    ld sp, hl                                     ; $4513: $F9
    ld b, $F9                                     ; $4514: $06 $F9
    add [hl]                                      ; $4516: $86
    ld a, c                                       ; $4517: $79
    inc bc                                        ; $4518: $03
    db $FC                                        ; $4519: $FC
    ld bc, $00FE                                  ; $451A: $01 $FE $00
    rst $38                                       ; $451D: $FF
    ld bc, $1CFE                                  ; $451E: $01 $FE $1C
    rst $38                                       ; $4521: $FF
    ldh a, [$F7]                                  ; $4522: $F0 $F7
    ld h, e                                       ; $4524: $63
    db $EC                                        ; $4525: $EC
    inc c                                         ; $4526: $0C
    di                                            ; $4527: $F3

jr_055_4528:
    ld hl, $C7DD                                  ; $4528: $21 $DD $C7
    scf                                           ; $452B: $37
    sbc a                                         ; $452C: $9F
    ld a, a                                       ; $452D: $7F
    jr c, jr_055_4528                             ; $452E: $38 $F8

    inc a                                         ; $4530: $3C
    jp nz, $00FF                                  ; $4531: $C2 $FF $00

    ret nz                                        ; $4534: $C0

    ccf                                           ; $4535: $3F
    rra                                           ; $4536: $1F
    rst $18                                       ; $4537: $DF
    rst $38                                       ; $4538: $FF
    rst $38                                       ; $4539: $FF
    rst $38                                       ; $453A: $FF
    rst $38                                       ; $453B: $FF
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    rst $38                                       ; $453F: $FF
    ccf                                           ; $4540: $3F
    ld b, b                                       ; $4541: $40
    rst $38                                       ; $4542: $FF
    nop                                           ; $4543: $00
    inc bc                                        ; $4544: $03
    db $FC                                        ; $4545: $FC
    ldh [$E3], a                                  ; $4546: $E0 $E3
    rst $38                                       ; $4548: $FF
    rst $38                                       ; $4549: $FF
    rst $38                                       ; $454A: $FF
    rst $38                                       ; $454B: $FF
    rlca                                          ; $454C: $07
    rlca                                          ; $454D: $07
    nop                                           ; $454E: $00
    ld hl, sp-$0F                                 ; $454F: $F8 $F1
    ld a, [bc]                                    ; $4551: $0A
    add d                                         ; $4552: $82
    ld b, l                                       ; $4553: $45

jr_055_4554:
    ld [c], a                                     ; $4554: $E2
    dec c                                         ; $4555: $0D
    inc a                                         ; $4556: $3C
    jp $B887                                      ; $4557: $C3 $87 $B8


    ldh a, [$F7]                                  ; $455A: $F0 $F7
    db $FC                                        ; $455C: $FC
    db $FC                                        ; $455D: $FC
    rst $38                                       ; $455E: $FF
    rst $38                                       ; $455F: $FF
    rlca                                          ; $4560: $07
    ret c                                         ; $4561: $D8

    inc c                                         ; $4562: $0C
    or b                                          ; $4563: $B0
    dec de                                        ; $4564: $1B
    ld h, e                                       ; $4565: $63
    inc [hl]                                      ; $4566: $34
    push bc                                       ; $4567: $C5
    or e                                          ; $4568: $B3
    ld b, h                                       ; $4569: $44
    ld sp, hl                                     ; $456A: $F9
    ld b, $1F                                     ; $456B: $06 $1F
    jr nz, jr_055_44EF                            ; $456D: $20 $80

    add a                                         ; $456F: $87
    ret nz                                        ; $4570: $C0

    jr nz, jr_055_45E3                            ; $4571: $20 $70

    ld [wEncounter_Enabled], sp                                ; $4573: $08 $D8 $C6
    halt                                          ; $4576: $76
    ld [hl], c                                    ; $4577: $71
    ld a, [de]                                    ; $4578: $1A
    reti                                          ; $4579: $D9


    call nz, $F024                                ; $457A: $C4 $24 $F0
    inc c                                         ; $457D: $0C
    db $FC                                        ; $457E: $FC
    inc bc                                        ; $457F: $03
    dec de                                        ; $4580: $1B
    daa                                           ; $4581: $27
    inc c                                         ; $4582: $0C
    ld [de], a                                    ; $4583: $12
    ld bc, $000D                                  ; $4584: $01 $0D $00
    ld bc, $0300                                  ; $4587: $01 $00 $03
    ld [bc], a                                    ; $458A: $02
    ld bc, $0502                                  ; $458B: $01 $02 $05
    dec b                                         ; $458E: $05
    dec bc                                        ; $458F: $0B
    sbc l                                         ; $4590: $9D
    db $E3                                        ; $4591: $E3

jr_055_4592:
    sbc l                                         ; $4592: $9D
    and c                                         ; $4593: $A1
    db $DB                                        ; $4594: $DB
    rst $20                                       ; $4595: $E7
    db $DB                                        ; $4596: $DB
    db $E3                                        ; $4597: $E3
    sub [hl]                                      ; $4598: $96
    xor [hl]                                      ; $4599: $AE
    xor [hl]                                      ; $459A: $AE
    sbc $DC                                       ; $459B: $DE $DC
    cp l                                          ; $459D: $BD
    dec a                                         ; $459E: $3D
    ld a, h                                       ; $459F: $7C
    add d                                         ; $45A0: $82
    xor l                                         ; $45A1: $AD
    and d                                         ; $45A2: $A2
    push bc                                       ; $45A3: $C5
    ld h, d                                       ; $45A4: $62
    dec d                                         ; $45A5: $15
    ld h, d                                       ; $45A6: $62
    sub l                                         ; $45A7: $95
    ld [c], a                                     ; $45A8: $E2
    dec d                                         ; $45A9: $15
    and d                                         ; $45AA: $A2
    ld d, l                                       ; $45AB: $55
    and d                                         ; $45AC: $A2
    ld d, c                                       ; $45AD: $51
    inc hl                                        ; $45AE: $23
    ret c                                         ; $45AF: $D8

    rst $18                                       ; $45B0: $DF
    jr nz, jr_055_4592                            ; $45B1: $20 $DF

    jr nz, jr_055_4554                            ; $45B3: $20 $9F

    ld h, b                                       ; $45B5: $60
    cp a                                          ; $45B6: $BF
    nop                                           ; $45B7: $00
    adc a                                         ; $45B8: $8F
    ld c, a                                       ; $45B9: $4F
    ld [hl], b                                    ; $45BA: $70
    adc b                                         ; $45BB: $88
    ccf                                           ; $45BC: $3F
    ret nz                                        ; $45BD: $C0

    rrca                                          ; $45BE: $0F
    ldh a, [rSB]                                  ; $45BF: $F0 $01
    rst $38                                       ; $45C1: $FF
    inc bc                                        ; $45C2: $03
    ld a, a                                       ; $45C3: $7F
    rlca                                          ; $45C4: $07
    ccf                                           ; $45C5: $3F
    rrca                                          ; $45C6: $0F
    rra                                           ; $45C7: $1F
    rrca                                          ; $45C8: $0F
    rlca                                          ; $45C9: $07
    rra                                           ; $45CA: $1F
    inc bc                                        ; $45CB: $03
    ccf                                           ; $45CC: $3F
    ld bc, $007F                                  ; $45CD: $01 $7F $00
    ld bc, $03FF                                  ; $45D0: $01 $FF $03
    ld a, a                                       ; $45D3: $7F
    rlca                                          ; $45D4: $07
    ccf                                           ; $45D5: $3F
    rrca                                          ; $45D6: $0F
    rra                                           ; $45D7: $1F
    rrca                                          ; $45D8: $0F
    rlca                                          ; $45D9: $07
    rra                                           ; $45DA: $1F
    inc bc                                        ; $45DB: $03
    ccf                                           ; $45DC: $3F
    ld bc, $007F                                  ; $45DD: $01 $7F $00
    dec b                                         ; $45E0: $05
    inc bc                                        ; $45E1: $03
    dec b                                         ; $45E2: $05

jr_055_45E3:
    inc bc                                        ; $45E3: $03
    dec b                                         ; $45E4: $05
    inc bc                                        ; $45E5: $03
    dec b                                         ; $45E6: $05
    inc bc                                        ; $45E7: $03
    dec b                                         ; $45E8: $05
    inc bc                                        ; $45E9: $03
    dec b                                         ; $45EA: $05
    dec bc                                        ; $45EB: $0B
    ld a, [bc]                                    ; $45EC: $0A
    rlca                                          ; $45ED: $07
    dec bc                                        ; $45EE: $0B
    rlca                                          ; $45EF: $07
    ld bc, $03FF                                  ; $45F0: $01 $FF $03
    ld a, a                                       ; $45F3: $7F
    rlca                                          ; $45F4: $07
    ccf                                           ; $45F5: $3F
    rrca                                          ; $45F6: $0F
    rra                                           ; $45F7: $1F
    rrca                                          ; $45F8: $0F
    rlca                                          ; $45F9: $07
    rra                                           ; $45FA: $1F
    inc bc                                        ; $45FB: $03
    ccf                                           ; $45FC: $3F
    ld bc, $007F                                  ; $45FD: $01 $7F $00
    inc l                                         ; $4600: $2C
    ld c, e                                       ; $4601: $4B
    ld e, h                                       ; $4602: $5C
    dec sp                                        ; $4603: $3B
    ld e, h                                       ; $4604: $5C
    dec sp                                        ; $4605: $3B
    ld e, h                                       ; $4606: $5C
    dec sp                                        ; $4607: $3B
    ld e, d                                       ; $4608: $5A
    dec a                                         ; $4609: $3D
    ld l, l                                       ; $460A: $6D
    ld e, $36                                     ; $460B: $1E $36
    ld c, a                                       ; $460D: $4F
    dec sp                                        ; $460E: $3B
    rlca                                          ; $460F: $07
    add c                                         ; $4610: $81
    ld a, [hl]                                    ; $4611: $7E
    add d                                         ; $4612: $82
    ld a, l                                       ; $4613: $7D
    jp nz, $723D                                  ; $4614: $C2 $3D $72

    adc l                                         ; $4617: $8D
    ld e, $E1                                     ; $4618: $1E $E1
    ld [bc], a                                    ; $461A: $02
    db $FD                                        ; $461B: $FD
    jp nz, $BF3D                                  ; $461C: $C2 $3D $BF

    ret nz                                        ; $461F: $C0

    ld h, b                                       ; $4620: $60
    rst $20                                       ; $4621: $E7
    ld b, b                                       ; $4622: $40
    rst $08                                       ; $4623: $CF
    add b                                         ; $4624: $80
    sbc a                                         ; $4625: $9F
    add b                                         ; $4626: $80

Jump_055_4627:
    cp a                                          ; $4627: $BF
    add c                                         ; $4628: $81
    cp [hl]                                       ; $4629: $BE
    ld bc, $013E                                  ; $462A: $01 $3E $01
    ld a, $01                                     ; $462D: $3E $01
    cp [hl]                                       ; $462F: $BE
    rra                                           ; $4630: $1F
    ldh [$7F], a                                  ; $4631: $E0 $7F
    add b                                         ; $4633: $80
    rst $38                                       ; $4634: $FF
    nop                                           ; $4635: $00
    rst $38                                       ; $4636: $FF
    nop                                           ; $4637: $00
    rst $38                                       ; $4638: $FF
    nop                                           ; $4639: $00
    rst $38                                       ; $463A: $FF

Jump_055_463B:
    nop                                           ; $463B: $00
    db $E3                                        ; $463C: $E3
    inc e                                         ; $463D: $1C
    pop bc                                        ; $463E: $C1
    ld a, $F8                                     ; $463F: $3E $F8
    rlca                                          ; $4641: $07
    rst $38                                       ; $4642: $FF
    nop                                           ; $4643: $00
    rst $38                                       ; $4644: $FF
    nop                                           ; $4645: $00
    adc a                                         ; $4646: $8F
    ld [hl], b                                    ; $4647: $70
    rlca                                          ; $4648: $07
    cp b                                          ; $4649: $B8
    inc bc                                        ; $464A: $03
    xor h                                         ; $464B: $AC
    inc bc                                        ; $464C: $03
    ret z                                         ; $464D: $C8

    inc bc                                        ; $464E: $03
    or h                                          ; $464F: $B4
    rra                                           ; $4650: $1F
    rra                                           ; $4651: $1F
    ld bc, $C0E1                                  ; $4652: $01 $E1 $C0
    ld a, $F0                                     ; $4655: $3E $F0
    rrca                                          ; $4657: $0F
    rst $38                                       ; $4658: $FF
    nop                                           ; $4659: $00
    rst $18                                       ; $465A: $DF
    jr nz, @-$3D                                  ; $465B: $20 $C1

    ld a, [hl-]                                   ; $465D: $3A
    ld b, b                                       ; $465E: $40
    xor c                                         ; $465F: $A9
    ld hl, sp-$08                                 ; $4660: $F8 $F8
    rst $38                                       ; $4662: $FF
    rst $38                                       ; $4663: $FF
    rra                                           ; $4664: $1F
    rra                                           ; $4665: $1F
    ld bc, $00E1                                  ; $4666: $01 $E1 $00
    cp $FC                                        ; $4669: $FE $FC
    inc bc                                        ; $466B: $03
    rst $38                                       ; $466C: $FF
    nop                                           ; $466D: $00
    rst $38                                       ; $466E: $FF
    nop                                           ; $466F: $00
    rra                                           ; $4670: $1F
    ldh [rP1], a                                  ; $4671: $E0 $00
    rrca                                          ; $4673: $0F
    ldh a, [$F0]                                  ; $4674: $F0 $F0
    rst $38                                       ; $4676: $FF
    rst $38                                       ; $4677: $FF
    ccf                                           ; $4678: $3F
    ccf                                           ; $4679: $3F
    nop                                           ; $467A: $00
    ret nz                                        ; $467B: $C0

    ret nz                                        ; $467C: $C0

    ccf                                           ; $467D: $3F
    rst $38                                       ; $467E: $FF
    nop                                           ; $467F: $00
    dec c                                         ; $4680: $0D
    inc de                                        ; $4681: $13
    dec de                                        ; $4682: $1B
    daa                                           ; $4683: $27
    scf                                           ; $4684: $37
    ld c, a                                       ; $4685: $4F
    ld l, a                                       ; $4686: $6F
    rrca                                          ; $4687: $0F
    ld e, a                                       ; $4688: $5F
    ccf                                           ; $4689: $3F
    ld e, a                                       ; $468A: $5F
    ccf                                           ; $468B: $3F
    ld c, [hl]                                    ; $468C: $4E
    ld l, $60                                     ; $468D: $2E $60
    db $10                                        ; $468F: $10
    ld a, c                                       ; $4690: $79
    ld a, [$F5F2]                                 ; $4691: $FA $F2 $F5
    ldh [$EE], a                                  ; $4694: $E0 $EE
    ret nz                                        ; $4696: $C0

    call c, $9A81                                 ; $4697: $DC $81 $9A
    nop                                           ; $469A: $00
    inc l                                         ; $469B: $2C
    inc c                                         ; $469C: $0C
    ld [hl], e                                    ; $469D: $73
    inc bc                                        ; $469E: $03
    call c, Call_055_4A31                         ; $469F: $DC $31 $4A
    ld de, $1868                                  ; $46A2: $11 $68 $18
    ld h, l                                       ; $46A5: $65
    ld [$8CF4], sp                                ; $46A6: $08 $F4 $8C
    ld [hl], d                                    ; $46A9: $72
    ld h, h                                       ; $46AA: $64
    sbc d                                         ; $46AB: $9A
    ld e, $20                                     ; $46AC: $1E $20
    add [hl]                                      ; $46AE: $86
    ld e, c                                       ; $46AF: $59
    nop                                           ; $46B0: $00
    rst $38                                       ; $46B1: $FF
    add b                                         ; $46B2: $80
    ld a, a                                       ; $46B3: $7F
    add b                                         ; $46B4: $80
    ld e, a                                       ; $46B5: $5F
    ret nz                                        ; $46B6: $C0

    rla                                           ; $46B7: $17
    ret nz                                        ; $46B8: $C0

    dec hl                                        ; $46B9: $2B
    ld h, b                                       ; $46BA: $60
    sub l                                         ; $46BB: $95
    jr nz, jr_055_4710                            ; $46BC: $20 $52

    jr nc, jr_055_46C9                            ; $46BE: $30 $09

    ld bc, $03FF                                  ; $46C0: $01 $FF $03
    ld a, a                                       ; $46C3: $7F
    rlca                                          ; $46C4: $07
    ccf                                           ; $46C5: $3F
    rrca                                          ; $46C6: $0F
    rra                                           ; $46C7: $1F
    rrca                                          ; $46C8: $0F

jr_055_46C9:
    rlca                                          ; $46C9: $07
    rra                                           ; $46CA: $1F
    inc bc                                        ; $46CB: $03
    ccf                                           ; $46CC: $3F
    ld bc, $007F                                  ; $46CD: $01 $7F $00
    ld bc, $03FF                                  ; $46D0: $01 $FF $03
    ld a, a                                       ; $46D3: $7F
    rlca                                          ; $46D4: $07
    ccf                                           ; $46D5: $3F
    rrca                                          ; $46D6: $0F
    rra                                           ; $46D7: $1F
    rrca                                          ; $46D8: $0F
    rlca                                          ; $46D9: $07
    rra                                           ; $46DA: $1F
    inc bc                                        ; $46DB: $03
    ccf                                           ; $46DC: $3F
    ld bc, $007F                                  ; $46DD: $01 $7F $00
    dec bc                                        ; $46E0: $0B
    rlca                                          ; $46E1: $07
    dec bc                                        ; $46E2: $0B
    rlca                                          ; $46E3: $07
    dec bc                                        ; $46E4: $0B
    rlca                                          ; $46E5: $07
    add hl, bc                                    ; $46E6: $09
    rlca                                          ; $46E7: $07
    ld a, [bc]                                    ; $46E8: $0A
    rlca                                          ; $46E9: $07
    dec bc                                        ; $46EA: $0B
    rlca                                          ; $46EB: $07
    dec bc                                        ; $46EC: $0B
    rlca                                          ; $46ED: $07
    dec bc                                        ; $46EE: $0B
    rlca                                          ; $46EF: $07
    ld bc, $03FF                                  ; $46F0: $01 $FF $03
    ld a, a                                       ; $46F3: $7F
    rlca                                          ; $46F4: $07
    ccf                                           ; $46F5: $3F
    rrca                                          ; $46F6: $0F
    rra                                           ; $46F7: $1F
    rrca                                          ; $46F8: $0F
    rlca                                          ; $46F9: $07
    rra                                           ; $46FA: $1F
    inc bc                                        ; $46FB: $03
    ccf                                           ; $46FC: $3F
    ld bc, $007F                                  ; $46FD: $01 $7F $00
    ld a, $01                                     ; $4700: $3E $01
    rra                                           ; $4702: $1F
    nop                                           ; $4703: $00
    rlca                                          ; $4704: $07
    ld [$0201], sp                                ; $4705: $08 $01 $02
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470A: $00
    nop                                           ; $470B: $00
    nop                                           ; $470C: $00
    nop                                           ; $470D: $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00

jr_055_4710:
    rst $20                                       ; $4710: $E7
    ld hl, sp-$7F                                 ; $4711: $F8 $81
    ld a, [hl]                                    ; $4713: $7E
    ldh a, [rIF]                                  ; $4714: $F0 $0F
    rst $38                                       ; $4716: $FF
    nop                                           ; $4717: $00
    ccf                                           ; $4718: $3F
    ld b, b                                       ; $4719: $40
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ld bc, $809E                                  ; $4720: $01 $9E $80
    ld e, a                                       ; $4723: $5F
    ret nz                                        ; $4724: $C0

    cpl                                           ; $4725: $2F
    ldh [$1F], a                                  ; $4726: $E0 $1F
    ld hl, sp+$07                                 ; $4728: $F8 $07
    ld a, a                                       ; $472A: $7F
    add b                                         ; $472B: $80
    nop                                           ; $472C: $00
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    pop bc                                        ; $4730: $C1
    ld [hl-], a                                   ; $4731: $32
    pop hl                                        ; $4732: $E1
    nop                                           ; $4733: $00
    ldh [rNR10], a                                ; $4734: $E0 $10
    ld [hl], b                                    ; $4736: $70
    adc b                                         ; $4737: $88
    jr c, @-$3A                                   ; $4738: $38 $C4

    nop                                           ; $473A: $00
    ld hl, sp+$00                                 ; $473B: $F8 $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    inc bc                                        ; $4740: $03
    db $EC                                        ; $4741: $EC
    add e                                         ; $4742: $83
    ld a, h                                       ; $4743: $7C
    add e                                         ; $4744: $83
    ld a, h                                       ; $4745: $7C

jr_055_4746:
    ld h, [hl]                                    ; $4746: $66
    add hl, de                                    ; $4747: $19
    ld a, $00                                     ; $4748: $3E $00
    inc e                                         ; $474A: $1C
    nop                                           ; $474B: $00
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    nop                                           ; $474E: $00
    nop                                           ; $474F: $00
    ld h, b                                       ; $4750: $60
    sub l                                         ; $4751: $95
    ld hl, $33DE                                  ; $4752: $21 $DE $33
    call z, $211E                                 ; $4755: $CC $1E $21
    inc c                                         ; $4758: $0C
    stop                                          ; $4759: $10 $00
    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00

jr_055_4760:
    rst $18                                       ; $4760: $DF
    jr nz, @-$60                                  ; $4761: $20 $9E

    ld h, c                                       ; $4763: $61
    inc c                                         ; $4764: $0C
    ld a, [c]                                     ; $4765: $F2
    inc b                                         ; $4766: $04
    ld a, [bc]                                    ; $4767: $0A
    ld b, $01                                     ; $4768: $06 $01
    ld [bc], a                                    ; $476A: $02
    ld bc, $0003                                  ; $476B: $01 $03 $00
    ld bc, $CF00                                  ; $476E: $01 $00 $CF
    jr nc, jr_055_477A                            ; $4771: $30 $07

    add sp, $06                                   ; $4773: $E8 $06
    sbc c                                         ; $4775: $99
    inc b                                         ; $4776: $04
    db $DB                                        ; $4777: $DB
    inc c                                         ; $4778: $0C
    ld [hl], e                                    ; $4779: $73

jr_055_477A:
    jr jr_055_4760                                ; $477A: $18 $E4

    jr nc, jr_055_4746                            ; $477C: $30 $C8

    ldh [rP1], a                                  ; $477E: $E0 $00
    jr nc, jr_055_4791                            ; $4780: $30 $0F

    rra                                           ; $4782: $1F
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478A: $00
    nop                                           ; $478B: $00
    nop                                           ; $478C: $00
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    sub b                                         ; $4790: $90

jr_055_4791:
    rrca                                          ; $4791: $0F
    ld c, $81                                     ; $4792: $0E $81
    inc bc                                        ; $4794: $03
    inc b                                         ; $4795: $04
    nop                                           ; $4796: $00
    ld bc, $0000                                  ; $4797: $01 $00 $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    pop bc                                        ; $47A0: $C1
    ld h, $68                                     ; $47A1: $26 $68
    adc c                                         ; $47A3: $89
    and h                                         ; $47A4: $A4
    ld d, h                                       ; $47A5: $54
    and $16                                       ; $47A6: $E6 $16
    ld h, e                                       ; $47A8: $63
    sbc e                                         ; $47A9: $9B
    jr nc, jr_055_47F8                            ; $47AA: $30 $4C

    inc e                                         ; $47AC: $1C
    inc hl                                        ; $47AD: $23
    rlca                                          ; $47AE: $07
    ld [$A018], sp                                ; $47AF: $08 $18 $A0
    adc b                                         ; $47B2: $88
    inc d                                         ; $47B3: $14
    ld [$5095], sp                                ; $47B4: $08 $95 $50
    ld c, e                                       ; $47B7: $4B
    add b                                         ; $47B8: $80
    xor a                                         ; $47B9: $AF
    ld c, $51                                     ; $47BA: $0E $51
    add hl, de                                    ; $47BC: $19
    db $E4                                        ; $47BD: $E4
    ldh a, [$0A]                                  ; $47BE: $F0 $0A
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    stop                                          ; $47C6: $10 $00
    jr z, jr_055_47DA                             ; $47C8: $28 $10

    ld d, h                                       ; $47CA: $54
    jr c, @+$74                                   ; $47CB: $38 $72

    inc a                                         ; $47CD: $3C
    ld a, [$003C]                                 ; $47CE: $FA $3C $00
    nop                                           ; $47D1: $00
    inc bc                                        ; $47D2: $03
    nop                                           ; $47D3: $00
    rrca                                          ; $47D4: $0F
    inc bc                                        ; $47D5: $03
    dec d                                         ; $47D6: $15
    ld c, $2E                                     ; $47D7: $0E $2E
    add hl, de                                    ; $47D9: $19

jr_055_47DA:
    dec l                                         ; $47DA: $2D
    inc de                                        ; $47DB: $13
    ld c, e                                       ; $47DC: $4B
    scf                                           ; $47DD: $37
    ld d, a                                       ; $47DE: $57
    cpl                                           ; $47DF: $2F
    dec bc                                        ; $47E0: $0B
    rlca                                          ; $47E1: $07
    jp hl                                         ; $47E2: $E9


    rlca                                          ; $47E3: $07
    jp c, $EBE7                                   ; $47E4: $DA $E7 $EB

    rla                                           ; $47E7: $17
    dec sp                                        ; $47E8: $3B
    rst $00                                       ; $47E9: $C7
    db $DB                                        ; $47EA: $DB
    rst $20                                       ; $47EB: $E7
    db $EB                                        ; $47EC: $EB
    rst $30                                       ; $47ED: $F7
    add hl, de                                    ; $47EE: $19
    rst $20                                       ; $47EF: $E7
    ld bc, $03FF                                  ; $47F0: $01 $FF $03
    ld a, a                                       ; $47F3: $7F
    rlca                                          ; $47F4: $07
    ccf                                           ; $47F5: $3F
    rrca                                          ; $47F6: $0F
    rra                                           ; $47F7: $1F

jr_055_47F8:
    rrca                                          ; $47F8: $0F
    rlca                                          ; $47F9: $07
    rra                                           ; $47FA: $1F
    inc bc                                        ; $47FB: $03
    ccf                                           ; $47FC: $3F
    ld bc, $007F                                  ; $47FD: $01 $7F $00
    dec sp                                        ; $4800: $3B
    nop                                           ; $4801: $00
    add b                                         ; $4802: $80
    nop                                           ; $4803: $00
    ld de, $2200                                  ; $4804: $11 $00 $22
    ld de, $3102                                  ; $4807: $11 $02 $31
    ld d, d                                       ; $480A: $52
    ld sp, $712A                                  ; $480B: $31 $2A $71
    dec h                                         ; $480E: $25
    ld a, b                                       ; $480F: $78
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    and [hl]                                      ; $4812: $A6
    ld b, b                                       ; $4813: $40
    add hl, de                                    ; $4814: $19
    ret nz                                        ; $4815: $C0

    ld [bc], a                                    ; $4816: $02
    pop bc                                        ; $4817: $C1
    and d                                         ; $4818: $A2
    pop bc                                        ; $4819: $C1
    sub h                                         ; $481A: $94
    db $E3                                        ; $481B: $E3
    db $DD                                        ; $481C: $DD
    di                                            ; $481D: $F3
    ld l, l                                       ; $481E: $6D
    ei                                            ; $481F: $FB
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    inc bc                                        ; $4826: $03
    nop                                           ; $4827: $00
    inc de                                        ; $4828: $13
    nop                                           ; $4829: $00
    add b                                         ; $482A: $80
    nop                                           ; $482B: $00
    or $00                                        ; $482C: $F6 $00
    ld b, $00                                     ; $482E: $06 $00
    call c, RST_00                                ; $4830: $DC $00 $00
    nop                                           ; $4833: $00
    ldh a, [rP1]                                  ; $4834: $F0 $00

jr_055_4836:
    ld b, $00                                     ; $4836: $06 $00
    or a                                          ; $4838: $B7
    nop                                           ; $4839: $00
    add b                                         ; $483A: $80
    nop                                           ; $483B: $00
    or $00                                        ; $483C: $F6 $00
    cp $00                                        ; $483E: $FE $00
    rra                                           ; $4840: $1F

jr_055_4841:
    nop                                           ; $4841: $00
    ld [hl], c                                    ; $4842: $71
    ld c, $E1                                     ; $4843: $0E $E1
    ld e, $7F                                     ; $4845: $1E $7F
    add b                                         ; $4847: $80
    push bc                                       ; $4848: $C5
    ld [bc], a                                    ; $4849: $02
    cp a                                          ; $484A: $BF
    ld b, b                                       ; $484B: $40
    db $ED                                        ; $484C: $ED
    inc de                                        ; $484D: $13
    and h                                         ; $484E: $A4
    ld e, e                                       ; $484F: $5B
    dec sp                                        ; $4850: $3B
    nop                                           ; $4851: $00
    add e                                         ; $4852: $83
    nop                                           ; $4853: $00
    ret c                                         ; $4854: $D8

    nop                                           ; $4855: $00
    sbc $00                                       ; $4856: $DE $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    ldh a, [rP1]                                  ; $485A: $F0 $00
    ld b, $00                                     ; $485C: $06 $00
    or a                                          ; $485E: $B7
    nop                                           ; $485F: $00
    dec sp                                        ; $4860: $3B
    nop                                           ; $4861: $00
    add h                                         ; $4862: $84
    inc bc                                        ; $4863: $03
    pop de                                        ; $4864: $D1
    ld [$1EC0], sp                                ; $4865: $08 $C0 $1E
    ld e, $00                                     ; $4868: $1E $00
    add hl, bc                                    ; $486A: $09
    ldh a, [$09]                                  ; $486B: $F0 $09
    ld b, $48                                     ; $486D: $06 $48
    or a                                          ; $486F: $B7
    dec sp                                        ; $4870: $3B
    nop                                           ; $4871: $00
    inc bc                                        ; $4872: $03
    add b                                         ; $4873: $80
    jr jr_055_4836                                ; $4874: $18 $C0

    ld e, $C0                                     ; $4876: $1E $C0
    ldh a, [rP1]                                  ; $4878: $F0 $00
    ld [$F1F0], sp                                ; $487A: $08 $F0 $F1
    ld b, $48                                     ; $487D: $06 $48
    or a                                          ; $487F: $B7
    db $EC                                        ; $4880: $EC
    inc bc                                        ; $4881: $03
    ld l, l                                       ; $4882: $6D
    add e                                         ; $4883: $83
    daa                                           ; $4884: $27
    ret nz                                        ; $4885: $C0

    dec l                                         ; $4886: $2D
    jp nz, $00C1                                  ; $4887: $C2 $C1 $00

    rrca                                          ; $488A: $0F
    ldh a, [$F8]                                  ; $488B: $F0 $F8
    rlca                                          ; $488D: $07
    ld c, a                                       ; $488E: $4F
    or a                                          ; $488F: $B7
    ldh a, [rP1]                                  ; $4890: $F0 $00
    ld b, h                                       ; $4892: $44
    add e                                         ; $4893: $83
    and a                                         ; $4894: $A7
    ret c                                         ; $4895: $D8

    dec l                                         ; $4896: $2D
    sbc $F1                                       ; $4897: $DE $F1
    ld e, $06                                     ; $4899: $1E $06
    ld sp, hl                                     ; $489B: $F9
    ldh a, [rIF]                                  ; $489C: $F0 $0F
    ld b, a                                       ; $489E: $47
    cp a                                          ; $489F: $BF
    ld b, h                                       ; $48A0: $44
    ld [bc], a                                    ; $48A1: $02
    add hl, de                                    ; $48A2: $19
    nop                                           ; $48A3: $00
    ld d, h                                       ; $48A4: $54
    ld [bc], a                                    ; $48A5: $02
    nop                                           ; $48A6: $00
    add hl, bc                                    ; $48A7: $09
    jr nz, jr_055_48AE                            ; $48A8: $20 $04

    ld c, b                                       ; $48AA: $48
    ld bc, $0234                                  ; $48AB: $01 $34 $02

jr_055_48AE:
    jr jr_055_48B1                                ; $48AE: $18 $01

    ld l, b                                       ; $48B0: $68

jr_055_48B1:
    nop                                           ; $48B1: $00
    add [hl]                                      ; $48B2: $86
    nop                                           ; $48B3: $00
    ld a, b                                       ; $48B4: $78
    nop                                           ; $48B5: $00
    inc bc                                        ; $48B6: $03
    add b                                         ; $48B7: $80
    ld c, b                                       ; $48B8: $48
    jr nz, jr_055_4841                            ; $48B9: $20 $86

    nop                                           ; $48BB: $00
    ld a, b                                       ; $48BC: $78
    nop                                           ; $48BD: $00
    add e                                         ; $48BE: $83
    nop                                           ; $48BF: $00
    ld b, h                                       ; $48C0: $44
    ld [bc], a                                    ; $48C1: $02
    ld [$4511], sp                                ; $48C2: $08 $11 $45
    ld [de], a                                    ; $48C5: $12
    ld b, d                                       ; $48C6: $42
    add hl, bc                                    ; $48C7: $09
    ld h, e                                       ; $48C8: $63
    inc b                                         ; $48C9: $04
    ld l, d                                       ; $48CA: $6A
    ld bc, $2255                                  ; $48CB: $01 $55 $22
    ld c, h                                       ; $48CE: $4C
    inc sp                                        ; $48CF: $33
    rla                                           ; $48D0: $17
    ld l, b                                       ; $48D1: $68
    ld a, c                                       ; $48D2: $79
    add [hl]                                      ; $48D3: $86
    or l                                          ; $48D4: $B5
    ld a, b                                       ; $48D5: $78
    ld a, l                                       ; $48D6: $7D
    add e                                         ; $48D7: $83
    sub [hl]                                      ; $48D8: $96
    ld l, b                                       ; $48D9: $68
    ld a, c                                       ; $48DA: $79
    add [hl]                                      ; $48DB: $86
    or h                                          ; $48DC: $B4
    ld a, b                                       ; $48DD: $78
    ld a, h                                       ; $48DE: $7C
    add e                                         ; $48DF: $83
    and a                                         ; $48E0: $A7
    rra                                           ; $48E1: $1F
    ld e, h                                       ; $48E2: $5C
    ccf                                           ; $48E3: $3F
    or a                                          ; $48E4: $B7
    ld a, b                                       ; $48E5: $78
    ld l, b                                       ; $48E6: $68
    ldh a, [$D1]                                  ; $48E7: $F0 $D1
    ldh [$C0], a                                  ; $48E9: $E0 $C0
    pop hl                                        ; $48EB: $E1
    or [hl]                                       ; $48EC: $B6
    call $D7AA                                    ; $48ED: $CD $AA $D7
    and a                                         ; $48F0: $A7
    rra                                           ; $48F1: $1F
    ld e, h                                       ; $48F2: $5C
    ccf                                           ; $48F3: $3F
    or a                                          ; $48F4: $B7
    ld a, b                                       ; $48F5: $78
    ld l, b                                       ; $48F6: $68
    ldh a, [$D0]                                  ; $48F7: $F0 $D0
    ldh [$C0], a                                  ; $48F9: $E0 $C0
    ldh [$A0], a                                  ; $48FB: $E0 $A0
    ret nz                                        ; $48FD: $C0

    and b                                         ; $48FE: $A0
    ret nz                                        ; $48FF: $C0

    ld [hl], $6C                                  ; $4900: $36 $6C
    dec hl                                        ; $4902: $2B
    ld [hl], a                                    ; $4903: $77
    dec [hl]                                      ; $4904: $35
    ld a, e                                       ; $4905: $7B

jr_055_4906:
    ld e, e                                       ; $4906: $5B
    inc a                                         ; $4907: $3C
    ld e, a                                       ; $4908: $5F
    ld a, $AF                                     ; $4909: $3E $AF
    rra                                           ; $490B: $1F
    rla                                           ; $490C: $17
    rrca                                          ; $490D: $0F
    adc h                                         ; $490E: $8C
    inc bc                                        ; $490F: $03
    cp [hl]                                       ; $4910: $BE
    ld l, c                                       ; $4911: $69
    jp hl                                         ; $4912: $E9


    nop                                           ; $4913: $00
    push bc                                       ; $4914: $C5
    add e                                         ; $4915: $83
    db $EB                                        ; $4916: $EB
    rst $00                                       ; $4917: $C7
    reti                                          ; $4918: $D9


    daa                                           ; $4919: $27
    ld a, h                                       ; $491A: $7C
    add e                                         ; $491B: $83
    and a                                         ; $491C: $A7
    ret nz                                        ; $491D: $C0

    ld l, b                                       ; $491E: $68
    sub b                                         ; $491F: $90
    ld c, $00                                     ; $4920: $0E $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    rst $28                                       ; $4924: $EF
    nop                                           ; $4925: $00
    rlca                                          ; $4926: $07
    nop                                           ; $4927: $00
    rst $28                                       ; $4928: $EF
    nop                                           ; $4929: $00
    rra                                           ; $492A: $1F
    nop                                           ; $492B: $00
    ld [hl], c                                    ; $492C: $71
    ld c, $E1                                     ; $492D: $0E $E1
    ld e, $EF                                     ; $492F: $1E $EF
    nop                                           ; $4931: $00
    rst $38                                       ; $4932: $FF
    nop                                           ; $4933: $00
    ld sp, hl                                     ; $4934: $F9
    ld b, $F1                                     ; $4935: $06 $F1
    ld c, $B7                                     ; $4937: $0E $B7
    ld c, b                                       ; $4939: $48
    ld a, a                                       ; $493A: $7F
    add b                                         ; $493B: $80
    cp a                                          ; $493C: $BF
    ld b, b                                       ; $493D: $40
    ld [hl], h                                    ; $493E: $74
    adc e                                         ; $493F: $8B
    ld a, [hl-]                                   ; $4940: $3A

jr_055_4941:
    ld bc, $8102                                  ; $4941: $01 $02 $81
    jr jr_055_4906                                ; $4944: $18 $C0

    ld [de], a                                    ; $4946: $12
    call z, RST_00                                ; $4947: $CC $00 $00
    ldh a, [rP1]                                  ; $494A: $F0 $00
    ld b, $00                                     ; $494C: $06 $00
    or a                                          ; $494E: $B7
    nop                                           ; $494F: $00
    add b                                         ; $4950: $80
    nop                                           ; $4951: $00
    ld b, b                                       ; $4952: $40
    nop                                           ; $4953: $00
    adc d                                         ; $4954: $8A
    nop                                           ; $4955: $00
    dec sp                                        ; $4956: $3B
    nop                                           ; $4957: $00
    ld [bc], a                                    ; $4958: $02
    nop                                           ; $4959: $00
    ld bc, $8100                                  ; $495A: $01 $00 $81
    nop                                           ; $495D: $00
    ld bc, $4480                                  ; $495E: $01 $80 $44
    dec sp                                        ; $4961: $3B
    ld b, b                                       ; $4962: $40
    add e                                         ; $4963: $83
    dec h                                         ; $4964: $25
    ret c                                         ; $4965: $D8

    ld hl, $71DE                                  ; $4966: $21 $DE $71
    nop                                           ; $4969: $00
    adc e                                         ; $496A: $8B
    ld [hl], b                                    ; $496B: $70
    ld [hl], c                                    ; $496C: $71
    ld b, $A9                                     ; $496D: $06 $A9
    ld d, $84                                     ; $496F: $16 $84
    dec sp                                        ; $4971: $3B
    ld b, b                                       ; $4972: $40
    add e                                         ; $4973: $83
    inc h                                         ; $4974: $24
    ret c                                         ; $4975: $D8

    ld hl, $E0DE                                  ; $4976: $21 $DE $E0
    nop                                           ; $4979: $00
    ld [$06F0], sp                                ; $497A: $08 $F0 $06
    nop                                           ; $497D: $00
    ld c, a                                       ; $497E: $4F
    or b                                          ; $497F: $B0
    call nc, Call_055_7D3B                        ; $4980: $D4 $3B $7D
    add e                                         ; $4983: $83
    and a                                         ; $4984: $A7
    ret c                                         ; $4985: $D8

    dec l                                         ; $4986: $2D
    sbc $D8                                       ; $4987: $DE $D8
    jr nz, jr_055_4A01                            ; $4989: $20 $76

    ld hl, sp-$07                                 ; $498B: $F8 $F9
    ld b, $5A                                     ; $498D: $06 $5A
    cp h                                          ; $498F: $BC
    sbc $3F                                       ; $4990: $DE $3F
    ld a, h                                       ; $4992: $7C
    add e                                         ; $4993: $83
    daa                                           ; $4994: $27
    ret c                                         ; $4995: $D8

    ld hl, $00DE                                  ; $4996: $21 $DE $00
    nop                                           ; $4999: $00
    adc e                                         ; $499A: $8B
    ld [hl], b                                    ; $499B: $70
    ei                                            ; $499C: $FB
    ld b, $29                                     ; $499D: $06 $29
    ld d, $44                                     ; $499F: $16 $44
    ld [bc], a                                    ; $49A1: $02
    add hl, de                                    ; $49A2: $19
    nop                                           ; $49A3: $00
    ld d, h                                       ; $49A4: $54
    ld [bc], a                                    ; $49A5: $02
    nop                                           ; $49A6: $00
    add hl, bc                                    ; $49A7: $09
    jr nz, jr_055_49AE                            ; $49A8: $20 $04

    ld c, b                                       ; $49AA: $48
    ld bc, $0234                                  ; $49AB: $01 $34 $02

jr_055_49AE:
    jr jr_055_49B1                                ; $49AE: $18 $01

    ld l, b                                       ; $49B0: $68

jr_055_49B1:
    nop                                           ; $49B1: $00
    add [hl]                                      ; $49B2: $86
    nop                                           ; $49B3: $00
    ld a, b                                       ; $49B4: $78
    nop                                           ; $49B5: $00

jr_055_49B6:
    inc bc                                        ; $49B6: $03
    add b                                         ; $49B7: $80
    ld c, b                                       ; $49B8: $48
    jr nz, jr_055_4941                            ; $49B9: $20 $86

    nop                                           ; $49BB: $00
    ld a, b                                       ; $49BC: $78
    nop                                           ; $49BD: $00
    add e                                         ; $49BE: $83
    nop                                           ; $49BF: $00
    ld e, c                                       ; $49C0: $59
    scf                                           ; $49C1: $37
    halt                                          ; $49C2: $76
    add hl, de                                    ; $49C3: $19
    add hl, hl                                    ; $49C4: $29
    ld e, $34                                     ; $49C5: $1E $34
    rrca                                          ; $49C7: $0F
    sbc b                                         ; $49C8: $98
    rlca                                          ; $49C9: $07
    ld c, $01                                     ; $49CA: $0E $01
    db $E3                                        ; $49CC: $E3
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    nop                                           ; $49CF: $00
    rst $38                                       ; $49D0: $FF
    nop                                           ; $49D1: $00
    nop                                           ; $49D2: $00
    rst $38                                       ; $49D3: $FF
    and $FF                                       ; $49D4: $E6 $FF
    ld [hl], e                                    ; $49D6: $73
    rst $38                                       ; $49D7: $FF
    ld b, h                                       ; $49D8: $44
    cp e                                          ; $49D9: $BB
    rst $28                                       ; $49DA: $EF
    nop                                           ; $49DB: $00
    adc $00                                       ; $49DC: $CE $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    and c                                         ; $49E0: $A1
    jp $C1A0                                      ; $49E1: $C3 $A0 $C1


    ld [hl], $CD                                  ; $49E4: $36 $CD
    xor d                                         ; $49E6: $AA
    rst $10                                       ; $49E7: $D7
    ld hl, $43C3                                  ; $49E8: $21 $C3 $43
    add b                                         ; $49EB: $80

jr_055_49EC:
    rst $38                                       ; $49EC: $FF
    nop                                           ; $49ED: $00
    cp a                                          ; $49EE: $BF
    ld a, a                                       ; $49EF: $7F
    and b                                         ; $49F0: $A0
    ret nz                                        ; $49F1: $C0

    and b                                         ; $49F2: $A0
    ret nz                                        ; $49F3: $C0

    jr nz, jr_055_49B6                            ; $49F4: $20 $C0

    and b                                         ; $49F6: $A0
    ret nz                                        ; $49F7: $C0

    jr nz, @-$3E                                  ; $49F8: $20 $C0

    ld b, b                                       ; $49FA: $40
    add b                                         ; $49FB: $80
    rst $38                                       ; $49FC: $FF
    nop                                           ; $49FD: $00
    cp a                                          ; $49FE: $BF
    ld a, a                                       ; $49FF: $7F
    sub d                                         ; $4A00: $92

jr_055_4A01:
    ld h, c                                       ; $4A01: $61
    add hl, bc                                    ; $4A02: $09
    ld a, [c]                                     ; $4A03: $F2
    db $F4                                        ; $4A04: $F4
    nop                                           ; $4A05: $00
    ld c, b                                       ; $4A06: $48
    jr nc, jr_055_49EC                            ; $4A07: $30 $E3

    nop                                           ; $4A09: $00
    ld h, $C1                                     ; $4A0A: $26 $C1
    call $9B03                                    ; $4A0C: $CD $03 $9B
    rlca                                          ; $4A0F: $07
    ld a, [c]                                     ; $4A10: $F2
    nop                                           ; $4A11: $00
    add b                                         ; $4A12: $80
    nop                                           ; $4A13: $00
    rra                                           ; $4A14: $1F
    nop                                           ; $4A15: $00
    rst $30                                       ; $4A16: $F7
    rrca                                          ; $4A17: $0F
    cp a                                          ; $4A18: $BF
    ld a, a                                       ; $4A19: $7F
    db $FC                                        ; $4A1A: $FC
    rst $38                                       ; $4A1B: $FF
    rst $18                                       ; $4A1C: $DF
    ldh [$E0], a                                  ; $4A1D: $E0 $E0
    add b                                         ; $4A1F: $80
    xor a                                         ; $4A20: $AF
    ret nc                                        ; $4A21: $D0

    ld b, a                                       ; $4A22: $47
    ld hl, sp-$76                                 ; $4A23: $F8 $8A

jr_055_4A25:
    rst $38                                       ; $4A25: $FF
    add hl, sp                                    ; $4A26: $39
    rst $38                                       ; $4A27: $FF
    ld a, [de]                                    ; $4A28: $1A
    rst $20                                       ; $4A29: $E7
    db $E4                                        ; $4A2A: $E4
    rra                                           ; $4A2B: $1F
    and c                                         ; $4A2C: $A1
    sbc $92                                       ; $4A2D: $DE $92
    db $FC                                        ; $4A2F: $FC
    rst $00                                       ; $4A30: $C7

Call_055_4A31:
    ccf                                           ; $4A31: $3F
    ccf                                           ; $4A32: $3F
    rst $38                                       ; $4A33: $FF
    ld hl, sp-$01                                 ; $4A34: $F8 $FF
    add a                                         ; $4A36: $87
    ld hl, sp+$38                                 ; $4A37: $F8 $38
    ret nz                                        ; $4A39: $C0

    ret nz                                        ; $4A3A: $C0

    nop                                           ; $4A3B: $00
    rlca                                          ; $4A3C: $07
    nop                                           ; $4A3D: $00
    jr c, jr_055_4A47                             ; $4A3E: $38 $07

    inc h                                         ; $4A40: $24
    res 5, h                                      ; $4A41: $CB $AC
    jp $C8E7                                      ; $4A43: $C3 $E7 $C8


jr_055_4A46:
    pop hl                                        ; $4A46: $E1

jr_055_4A47:
    adc $2F                                       ; $4A47: $CE $2F
    ret nz                                        ; $4A49: $C0

    rst $28                                       ; $4A4A: $EF
    ret nz                                        ; $4A4B: $C0

    add hl, hl                                    ; $4A4C: $29
    add $A8                                       ; $4A4D: $C6 $A8
    rst $00                                       ; $4A4F: $C7
    dec h                                         ; $4A50: $25
    res 5, h                                      ; $4A51: $CB $AC
    jp $C9E7                                      ; $4A53: $C3 $E7 $C9


    ldh [$CF], a                                  ; $4A56: $E0 $CF
    cpl                                           ; $4A58: $2F
    pop bc                                        ; $4A59: $C1
    rst $28                                       ; $4A5A: $EF
    pop bc                                        ; $4A5B: $C1
    jr z, jr_055_4A25                             ; $4A5C: $28 $C7

    xor c                                         ; $4A5E: $A9
    add $EC                                       ; $4A5F: $C6 $EC
    inc bc                                        ; $4A61: $03
    ld l, l                                       ; $4A62: $6D
    add e                                         ; $4A63: $83
    daa                                           ; $4A64: $27
    ret nz                                        ; $4A65: $C0

    inc l                                         ; $4A66: $2C
    ret nz                                        ; $4A67: $C0

    pop bc                                        ; $4A68: $C1
    nop                                           ; $4A69: $00
    inc bc                                        ; $4A6A: $03
    ldh a, [$E7]                                  ; $4A6B: $F0 $E7
    ld bc, $A345                                  ; $4A6D: $01 $45 $A3
    ldh a, [rP1]                                  ; $4A70: $F0 $00
    ld b, b                                       ; $4A72: $40
    add b                                         ; $4A73: $80
    rla                                           ; $4A74: $17
    rrca                                          ; $4A75: $0F
    ld a, c                                       ; $4A76: $79
    ld e, $E8                                     ; $4A77: $1E $E8
    ld [hl], b                                    ; $4A79: $70
    and e                                         ; $4A7A: $A3
    ret nz                                        ; $4A7B: $C0

    ld d, c                                       ; $4A7C: $51
    add a                                         ; $4A7D: $87
    cp l                                          ; $4A7E: $BD
    ld [hl-], a                                   ; $4A7F: $32
    rst $20                                       ; $4A80: $E7
    ld [bc], a                                    ; $4A81: $02
    ld h, d                                       ; $4A82: $62
    add b                                         ; $4A83: $80
    jr nz, jr_055_4A46                            ; $4A84: $20 $C0

    jr nz, @-$3E                                  ; $4A86: $20 $C0

    jp nz, $0C04                                  ; $4A88: $C2 $04 $0C

    add [hl]                                      ; $4A8B: $86
    inc l                                         ; $4A8C: $2C
    ld b, $2D                                     ; $4A8D: $06 $2D
    ld b, $FF                                     ; $4A8F: $06 $FF
    nop                                           ; $4A91: $00
    rst $38                                       ; $4A92: $FF
    nop                                           ; $4A93: $00
    rst $38                                       ; $4A94: $FF
    nop                                           ; $4A95: $00
    ldh a, [$7F]                                  ; $4A96: $F0 $7F
    add b                                         ; $4A98: $80
    ld a, b                                       ; $4A99: $78
    ldh [$7F], a                                  ; $4A9A: $E0 $7F
    add b                                         ; $4A9C: $80
    ld h, b                                       ; $4A9D: $60
    ldh [$3F], a                                  ; $4A9E: $E0 $3F
    rst $38                                       ; $4AA0: $FF
    rst $38                                       ; $4AA1: $FF
    rlca                                          ; $4AA2: $07
    rst $38                                       ; $4AA3: $FF
    ldh a, [rIE]                                  ; $4AA4: $F0 $FF
    rlca                                          ; $4AA6: $07
    rst $38                                       ; $4AA7: $FF
    rst $28                                       ; $4AA8: $EF
    rst $38                                       ; $4AA9: $FF
    xor $FF                                       ; $4AAA: $EE $FF
    nop                                           ; $4AAC: $00
    rst $38                                       ; $4AAD: $FF
    cp $FF                                        ; $4AAE: $FE $FF
    ld a, a                                       ; $4AB0: $7F
    rst $38                                       ; $4AB1: $FF
    ld b, b                                       ; $4AB2: $40
    rst $38                                       ; $4AB3: $FF
    rra                                           ; $4AB4: $1F
    rst $38                                       ; $4AB5: $FF
    ret nz                                        ; $4AB6: $C0

    rst $38                                       ; $4AB7: $FF
    rst $38                                       ; $4AB8: $FF
    rst $38                                       ; $4AB9: $FF
    nop                                           ; $4ABA: $00
    rst $38                                       ; $4ABB: $FF
    cp $FF                                        ; $4ABC: $FE $FF
    nop                                           ; $4ABE: $00
    rst $38                                       ; $4ABF: $FF
    rst $38                                       ; $4AC0: $FF
    nop                                           ; $4AC1: $00
    rlca                                          ; $4AC2: $07
    nop                                           ; $4AC3: $00
    ldh a, [$84]                                  ; $4AC4: $F0 $84
    rlca                                          ; $4AC6: $07
    adc h                                         ; $4AC7: $8C
    rst $20                                       ; $4AC8: $E7
    sub $EE                                       ; $4AC9: $D6 $EE
    cp $00                                        ; $4ACB: $FE $00
    rst $38                                       ; $4ACD: $FF
    cp $FF                                        ; $4ACE: $FE $FF
    ld a, a                                       ; $4AD0: $7F
    nop                                           ; $4AD1: $00
    ld b, b                                       ; $4AD2: $40
    nop                                           ; $4AD3: $00
    rra                                           ; $4AD4: $1F
    ld bc, $11C0                                  ; $4AD5: $01 $C0 $11

jr_055_4AD8:
    rst $38                                       ; $4AD8: $FF
    jr jr_055_4ADB                                ; $4AD9: $18 $00

jr_055_4ADB:
    ccf                                           ; $4ADB: $3F
    cp $3F                                        ; $4ADC: $FE $3F
    nop                                           ; $4ADE: $00
    ld a, a                                       ; $4ADF: $7F
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    ld a, [hl]                                    ; $4AE2: $7E
    nop                                           ; $4AE3: $00
    cp $00                                        ; $4AE4: $FE $00
    cp $00                                        ; $4AE6: $FE $00
    db $FC                                        ; $4AE8: $FC
    ld [bc], a                                    ; $4AE9: $02
    ld [bc], a                                    ; $4AEA: $02
    db $FC                                        ; $4AEB: $FC
    add h                                         ; $4AEC: $84
    ld a, b                                       ; $4AED: $78
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    ld a, a                                       ; $4AF0: $7F
    inc bc                                        ; $4AF1: $03
    ld b, b                                       ; $4AF2: $40
    ld bc, $001F                                  ; $4AF3: $01 $1F $00
    ret nz                                        ; $4AF6: $C0

    inc bc                                        ; $4AF7: $03
    rst $38                                       ; $4AF8: $FF
    ld bc, $0100                                  ; $4AF9: $01 $00 $01
    cp $00                                        ; $4AFC: $FE $00
    nop                                           ; $4AFE: $00
    ld [$0F17], sp                                ; $4AFF: $08 $17 $0F
    cp a                                          ; $4B02: $BF
    ld c, $2E                                     ; $4B03: $0E $2E
    inc e                                         ; $4B05: $1C
    ld a, [hl]                                    ; $4B06: $7E
    inc e                                         ; $4B07: $1C
    ld l, [hl]                                    ; $4B08: $6E
    jr jr_055_4B87                                ; $4B09: $18 $7C

    nop                                           ; $4B0B: $00
    or [hl]                                       ; $4B0C: $B6
    ld a, b                                       ; $4B0D: $78
    ld a, [de]                                    ; $4B0E: $1A
    db $FC                                        ; $4B0F: $FC
    ld [hl], b                                    ; $4B10: $70
    adc a                                         ; $4B11: $8F
    call nz, $9038                                ; $4B12: $C4 $38 $90
    ld h, b                                       ; $4B15: $60
    jr nz, jr_055_4AD8                            ; $4B16: $20 $C0

    ld b, b                                       ; $4B18: $40
    add b                                         ; $4B19: $80
    nop                                           ; $4B1A: $00
    add b                                         ; $4B1B: $80
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    inc h                                         ; $4B20: $24
    ld hl, sp-$17                                 ; $4B21: $F8 $E9
    ldh a, [$CB]                                  ; $4B23: $F0 $CB
    ldh a, [$D5]                                  ; $4B25: $F0 $D5
    ld [c], a                                     ; $4B27: $E2
    rla                                           ; $4B28: $17
    ldh [$EF], a                                  ; $4B29: $E0 $EF
    ret nz                                        ; $4B2B: $C0

    add hl, hl                                    ; $4B2C: $29
    add $A8                                       ; $4B2D: $C6 $A8
    rst $00                                       ; $4B2F: $C7
    inc h                                         ; $4B30: $24
    ld hl, sp-$17                                 ; $4B31: $F8 $E9
    ldh a, [$CA]                                  ; $4B33: $F0 $CA
    pop af                                        ; $4B35: $F1
    push de                                       ; $4B36: $D5
    db $E3                                        ; $4B37: $E3
    rla                                           ; $4B38: $17
    pop hl                                        ; $4B39: $E1
    xor $C1                                       ; $4B3A: $EE $C1
    add hl, hl                                    ; $4B3C: $29
    rst $00                                       ; $4B3D: $C7
    xor c                                         ; $4B3E: $A9
    rst $00                                       ; $4B3F: $C7
    ld l, $DC                                     ; $4B40: $2E $DC
    or $0C                                        ; $4B42: $F6 $0C
    sub $0C                                       ; $4B44: $D6 $0C
    ld h, $0C                                     ; $4B46: $26 $0C
    ld h, l                                       ; $4B48: $65
    ld c, $4A                                     ; $4B49: $0E $4A
    daa                                           ; $4B4B: $27
    ld e, e                                       ; $4B4C: $5B
    jr nc, jr_055_4BB3                            ; $4B4D: $30 $64

    jr jr_055_4B8F                                ; $4B4F: $18 $3E

    nop                                           ; $4B51: $00
    ld d, e                                       ; $4B52: $53
    inc l                                         ; $4B53: $2C
    ld e, e                                       ; $4B54: $5B
    ld h, $4C                                     ; $4B55: $26 $4C
    inc sp                                        ; $4B57: $33
    ld h, a                                       ; $4B58: $67
    jr jr_055_4B98                                ; $4B59: $18 $3D

    ld [bc], a                                    ; $4B5B: $02
    ld d, d                                       ; $4B5C: $52
    ld hl, $1029                                  ; $4B5D: $21 $29 $10
    rst $00                                       ; $4B60: $C7
    ld [hl+], a                                   ; $4B61: $22
    ld l, d                                       ; $4B62: $6A
    add a                                         ; $4B63: $87
    and [hl]                                      ; $4B64: $A6
    jp nz, $C227                                  ; $4B65: $C2 $27 $C2

    jp z, Jump_055_4627                           ; $4B68: $CA $27 $46

    jp nz, $02E7                                  ; $4B6B: $C2 $E7 $02

    ld b, a                                       ; $4B6E: $47
    add d                                         ; $4B6F: $82
    ld e, $29                                     ; $4B70: $1E $29
    dec hl                                        ; $4B72: $2B
    inc b                                         ; $4B73: $04
    ld d, a                                       ; $4B74: $57
    nop                                           ; $4B75: $00
    pop hl                                        ; $4B76: $E1
    ld c, b                                       ; $4B77: $48
    xor b                                         ; $4B78: $A8
    ld b, l                                       ; $4B79: $45
    xor $4D                                       ; $4B7A: $EE $4D
    and a                                         ; $4B7C: $A7
    ld c, l                                       ; $4B7D: $4D
    ld d, d                                       ; $4B7E: $52
    inc h                                         ; $4B7F: $24
    ld h, d                                       ; $4B80: $62
    rlca                                          ; $4B81: $07
    ld h, e                                       ; $4B82: $63
    rlca                                          ; $4B83: $07
    ld h, l                                       ; $4B84: $65
    inc bc                                        ; $4B85: $03
    ld [hl+], a                                   ; $4B86: $22

jr_055_4B87:
    ld b, c                                       ; $4B87: $41
    ld hl, $6040                                  ; $4B88: $21 $40 $60
    ld b, b                                       ; $4B8B: $40
    ld [hl], h                                    ; $4B8C: $74
    ld a, b                                       ; $4B8D: $78
    nop                                           ; $4B8E: $00

jr_055_4B8F:
    nop                                           ; $4B8F: $00
    add b                                         ; $4B90: $80
    nop                                           ; $4B91: $00
    ld h, b                                       ; $4B92: $60
    add b                                         ; $4B93: $80
    add b                                         ; $4B94: $80
    rst $38                                       ; $4B95: $FF
    rst $38                                       ; $4B96: $FF
    rst $38                                       ; $4B97: $FF

jr_055_4B98:
    add b                                         ; $4B98: $80
    ld a, a                                       ; $4B99: $7F
    rst $38                                       ; $4B9A: $FF
    nop                                           ; $4B9B: $00
    rst $38                                       ; $4B9C: $FF
    nop                                           ; $4B9D: $00
    rst $38                                       ; $4B9E: $FF
    nop                                           ; $4B9F: $00
    rst $38                                       ; $4BA0: $FF
    nop                                           ; $4BA1: $00
    rlca                                          ; $4BA2: $07
    nop                                           ; $4BA3: $00
    ldh a, [rP1]                                  ; $4BA4: $F0 $00
    rlca                                          ; $4BA6: $07
    nop                                           ; $4BA7: $00
    rst $28                                       ; $4BA8: $EF
    nop                                           ; $4BA9: $00
    xor $00                                       ; $4BAA: $EE $00
    nop                                           ; $4BAC: $00
    nop                                           ; $4BAD: $00
    cp $00                                        ; $4BAE: $FE $00
    ld a, a                                       ; $4BB0: $7F
    nop                                           ; $4BB1: $00
    ld b, b                                       ; $4BB2: $40

jr_055_4BB3:
    nop                                           ; $4BB3: $00
    rra                                           ; $4BB4: $1F
    nop                                           ; $4BB5: $00
    ret nz                                        ; $4BB6: $C0

    nop                                           ; $4BB7: $00
    rst $38                                       ; $4BB8: $FF
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    cp $00                                        ; $4BBC: $FE $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    rst $38                                       ; $4BC0: $FF
    ccf                                           ; $4BC1: $3F
    rlca                                          ; $4BC2: $07
    rrca                                          ; $4BC3: $0F
    ldh a, [rTAC]                                 ; $4BC4: $F0 $07
    rlca                                          ; $4BC6: $07
    rrca                                          ; $4BC7: $0F
    rst $28                                       ; $4BC8: $EF
    rra                                           ; $4BC9: $1F
    xor $3F                                       ; $4BCA: $EE $3F
    nop                                           ; $4BCC: $00
    rrca                                          ; $4BCD: $0F
    cp $03                                        ; $4BCE: $FE $03
    rst $38                                       ; $4BD0: $FF
    nop                                           ; $4BD1: $00
    rlca                                          ; $4BD2: $07
    ld bc, $07F0                                  ; $4BD3: $01 $F0 $07
    rlca                                          ; $4BD6: $07
    rra                                           ; $4BD7: $1F
    rst $28                                       ; $4BD8: $EF
    rrca                                          ; $4BD9: $0F
    xor $07                                       ; $4BDA: $EE $07
    nop                                           ; $4BDC: $00
    rlca                                          ; $4BDD: $07
    cp $0F                                        ; $4BDE: $FE $0F
    rst $38                                       ; $4BE0: $FF
    nop                                           ; $4BE1: $00
    rlca                                          ; $4BE2: $07
    ld b, $F0                                     ; $4BE3: $06 $F0
    nop                                           ; $4BE5: $00
    rlca                                          ; $4BE6: $07
    inc bc                                        ; $4BE7: $03
    rst $28                                       ; $4BE8: $EF
    add e                                         ; $4BE9: $83
    xor $C3                                       ; $4BEA: $EE $C3
    nop                                           ; $4BEC: $00
    di                                            ; $4BED: $F3
    cp $F7                                        ; $4BEE: $FE $F7
    ld a, a                                       ; $4BF0: $7F
    inc e                                         ; $4BF1: $1C
    ld b, b                                       ; $4BF2: $40
    rrca                                          ; $4BF3: $0F
    rra                                           ; $4BF4: $1F
    rlca                                          ; $4BF5: $07
    ret nz                                        ; $4BF6: $C0

    rlca                                          ; $4BF7: $07
    rst $38                                       ; $4BF8: $FF
    jp $FF00                                      ; $4BF9: $C3 $00 $FF


    cp $FF                                        ; $4BFC: $FE $FF
    nop                                           ; $4BFE: $00
    rst $38                                       ; $4BFF: $FF
    nop                                           ; $4C00: $00
    rst $38                                       ; $4C01: $FF
    ld a, a                                       ; $4C02: $7F
    rst $38                                       ; $4C03: $FF
    ld b, b                                       ; $4C04: $40
    rst $38                                       ; $4C05: $FF
    ld c, [hl]                                    ; $4C06: $4E
    rst $38                                       ; $4C07: $FF
    ld b, c                                       ; $4C08: $41
    rst $38                                       ; $4C09: $FF
    ld c, h                                       ; $4C0A: $4C
    rst $38                                       ; $4C0B: $FF
    ld e, c                                       ; $4C0C: $59
    rst $38                                       ; $4C0D: $FF
    ld b, e                                       ; $4C0E: $43
    rst $38                                       ; $4C0F: $FF
    ret nz                                        ; $4C10: $C0

    nop                                           ; $4C11: $00
    jr nz, @-$3E                                  ; $4C12: $20 $C0

    ldh a, [$E0]                                  ; $4C14: $F0 $E0
    ld [hl], b                                    ; $4C16: $70
    ldh [$50], a                                  ; $4C17: $E0 $50
    and b                                         ; $4C19: $A0
    ldh a, [rP1]                                  ; $4C1A: $F0 $00
    ret nz                                        ; $4C1C: $C0

    nop                                           ; $4C1D: $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    rst $38                                       ; $4C20: $FF
    nop                                           ; $4C21: $00
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    nop                                           ; $4C24: $00
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    nop                                           ; $4C28: $00
    nop                                           ; $4C29: $00
    nop                                           ; $4C2A: $00
    nop                                           ; $4C2B: $00
    rst $38                                       ; $4C2C: $FF
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    ld [bc], a                                    ; $4C30: $02
    nop                                           ; $4C31: $00
    and $72                                       ; $4C32: $E6 $72
    adc [hl]                                      ; $4C34: $8E
    ld h, [hl]                                    ; $4C35: $66
    add h                                         ; $4C36: $84
    ld c, [hl]                                    ; $4C37: $4E
    xor h                                         ; $4C38: $AC
    ld c, $6C                                     ; $4C39: $0E $6C
    ld l, $EC                                     ; $4C3B: $2E $EC
    ld l, [hl]                                    ; $4C3D: $6E
    ld c, h                                       ; $4C3E: $4C
    xor $D6                                       ; $4C3F: $EE $D6
    rst $20                                       ; $4C41: $E7
    rst $10                                       ; $4C42: $D7
    ldh [$C0], a                                  ; $4C43: $E0 $C0
    ldh a, [$E0]                                  ; $4C45: $F0 $E0
    ld [hl], b                                    ; $4C47: $70
    ld l, h                                       ; $4C48: $6C
    ld [hl], b                                    ; $4C49: $70
    ld a, b                                       ; $4C4A: $78
    nop                                           ; $4C4B: $00
    ld bc, $0300                                  ; $4C4C: $01 $00 $03
    nop                                           ; $4C4F: $00
    rst $38                                       ; $4C50: $FF
    nop                                           ; $4C51: $00
    cp $00                                        ; $4C52: $FE $00
    db $FC                                        ; $4C54: $FC
    nop                                           ; $4C55: $00
    ld hl, sp+$00                                 ; $4C56: $F8 $00
    ldh a, [rP1]                                  ; $4C58: $F0 $00
    ldh [rP1], a                                  ; $4C5A: $E0 $00
    ret nz                                        ; $4C5C: $C0

    nop                                           ; $4C5D: $00
    add b                                         ; $4C5E: $80
    nop                                           ; $4C5F: $00
    ld e, a                                       ; $4C60: $5F
    ccf                                           ; $4C61: $3F
    rst $38                                       ; $4C62: $FF
    ld a, a                                       ; $4C63: $7F
    rst $28                                       ; $4C64: $EF
    ldh a, [$B8]                                  ; $4C65: $F0 $B8
    ret nz                                        ; $4C67: $C0

    ld c, h                                       ; $4C68: $4C
    add b                                         ; $4C69: $80
    and a                                         ; $4C6A: $A7
    ld b, b                                       ; $4C6B: $40
    ld [hl], $00                                  ; $4C6C: $36 $00
    ld [de], a                                    ; $4C6E: $12
    nop                                           ; $4C6F: $00
    ld a, [$FFFC]                                 ; $4C70: $FA $FC $FF
    cp $F7                                        ; $4C73: $FE $F7
    rrca                                          ; $4C75: $0F
    adc l                                         ; $4C76: $8D
    inc bc                                        ; $4C77: $03
    sbc [hl]                                      ; $4C78: $9E
    ld bc, $00FC                                  ; $4C79: $01 $FC $00
    add hl, de                                    ; $4C7C: $19
    nop                                           ; $4C7D: $00
    stop                                          ; $4C7E: $10 $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00

jr_055_4C84:
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    nop                                           ; $4C89: $00
    rst $38                                       ; $4C8A: $FF
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    rst $38                                       ; $4C8D: $FF
    rst $38                                       ; $4C8E: $FF
    rst $38                                       ; $4C8F: $FF
    cp $E1                                        ; $4C90: $FE $E1
    ld sp, hl                                     ; $4C92: $F9
    or $F8                                        ; $4C93: $F6 $F8
    jp $00FE                                      ; $4C95: $C3 $FE $00


    jp $1824                                      ; $4C98: $C3 $24 $18


    and l                                         ; $4C9B: $A5
    nop                                           ; $4C9C: $00
    sbc c                                         ; $4C9D: $99
    jp Jump_055_7FA4                              ; $4C9E: $C3 $A4 $7F


    adc a                                         ; $4CA1: $8F
    sbc a                                         ; $4CA2: $9F
    ld h, e                                       ; $4CA3: $63
    rra                                           ; $4CA4: $1F
    ret nz                                        ; $4CA5: $C0

    ld [hl], e                                    ; $4CA6: $73
    inc c                                         ; $4CA7: $0C
    call z, $C033                                 ; $4CA8: $CC $33 $C0
    sbc [hl]                                      ; $4CAB: $9E
    di                                            ; $4CAC: $F3
    nop                                           ; $4CAD: $00
    ccf                                           ; $4CAE: $3F
    ret nz                                        ; $4CAF: $C0

    rst $38                                       ; $4CB0: $FF
    nop                                           ; $4CB1: $00
    rst $38                                       ; $4CB2: $FF
    jr jr_055_4C84                                ; $4CB3: $18 $CF

    inc l                                         ; $4CB5: $2C
    rst $20                                       ; $4CB6: $E7
    sub c                                         ; $4CB7: $91
    cp $13                                        ; $4CB8: $FE $13
    rst $38                                       ; $4CBA: $FF
    dec a                                         ; $4CBB: $3D
    rst $38                                       ; $4CBC: $FF
    sbc h                                         ; $4CBD: $9C
    rst $38                                       ; $4CBE: $FF
    rlca                                          ; $4CBF: $07
    rst $38                                       ; $4CC0: $FF
    nop                                           ; $4CC1: $00
    rst $38                                       ; $4CC2: $FF
    jr c, @+$01                                   ; $4CC3: $38 $FF

    ld [hl], b                                    ; $4CC5: $70
    ccf                                           ; $4CC6: $3F
    ret nz                                        ; $4CC7: $C0

    ccf                                           ; $4CC8: $3F
    ld e, h                                       ; $4CC9: $5C
    ld sp, hl                                     ; $4CCA: $F9
    cp d                                          ; $4CCB: $BA
    di                                            ; $4CCC: $F3
    inc b                                         ; $4CCD: $04
    rst $38                                       ; $4CCE: $FF
    ld c, h                                       ; $4CCF: $4C
    dec h                                         ; $4CD0: $25
    ld hl, sp-$16                                 ; $4CD1: $F8 $EA
    ldh a, [$C8]                                  ; $4CD3: $F0 $C8
    ldh a, [$D0]                                  ; $4CD5: $F0 $D0
    ldh [rNR22], a                                ; $4CD7: $E0 $17
    ld [c], a                                     ; $4CD9: $E2
    db $EC                                        ; $4CDA: $EC
    call nz, $C026                                ; $4CDB: $C4 $26 $C0
    and b                                         ; $4CDE: $A0
    ret nz                                        ; $4CDF: $C0

    or e                                          ; $4CE0: $B3
    ld c, h                                       ; $4CE1: $4C
    ld a, [hl]                                    ; $4CE2: $7E
    add c                                         ; $4CE3: $81
    rst $00                                       ; $4CE4: $C7
    ld a, [hl-]                                   ; $4CE5: $3A
    sbc e                                         ; $4CE6: $9B
    ld b, h                                       ; $4CE7: $44
    add $2B                                       ; $4CE8: $C6 $2B
    db $FC                                        ; $4CEA: $FC
    ld h, d                                       ; $4CEB: $62
    ld h, [hl]                                    ; $4CEC: $66
    sbc c                                         ; $4CED: $99
    jp $1F24                                      ; $4CEE: $C3 $24 $1F


    ldh [rPCM34], a                               ; $4CF1: $E0 $77
    ld [$950E], sp                                ; $4CF3: $08 $0E $95
    db $FC                                        ; $4CF6: $FC
    ld a, [bc]                                    ; $4CF7: $0A
    ld c, $D1                                     ; $4CF8: $0E $D1
    rst $20                                       ; $4CFA: $E7
    ld a, [bc]                                    ; $4CFB: $0A
    dec e                                         ; $4CFC: $1D
    ld [hl-], a                                   ; $4CFD: $32
    rst $30                                       ; $4CFE: $F7
    ld [rOBP1], sp                                ; $4CFF: $08 $49 $FF
    ld b, b                                       ; $4D02: $40
    rst $38                                       ; $4D03: $FF
    ld a, a                                       ; $4D04: $7F
    rst $38                                       ; $4D05: $FF
    ld c, h                                       ; $4D06: $4C
    rst $38                                       ; $4D07: $FF
    ld a, a                                       ; $4D08: $7F
    rst $38                                       ; $4D09: $FF
    ld d, d                                       ; $4D0A: $52
    rst $38                                       ; $4D0B: $FF
    ld a, a                                       ; $4D0C: $7F
    rst $38                                       ; $4D0D: $FF
    nop                                           ; $4D0E: $00
    rst $38                                       ; $4D0F: $FF
    and d                                         ; $4D10: $A2
    rst $38                                       ; $4D11: $FF
    ld [bc], a                                    ; $4D12: $02
    rst $38                                       ; $4D13: $FF
    cp $FF                                        ; $4D14: $FE $FF
    ld c, d                                       ; $4D16: $4A
    rst $38                                       ; $4D17: $FF
    cp $FF                                        ; $4D18: $FE $FF
    add d                                         ; $4D1A: $82
    rst $38                                       ; $4D1B: $FF
    cp $FF                                        ; $4D1C: $FE $FF
    nop                                           ; $4D1E: $00
    rst $38                                       ; $4D1F: $FF
    call z, $CCEE                                 ; $4D20: $CC $EE $CC
    xor $CC                                       ; $4D23: $EE $CC
    xor $CC                                       ; $4D25: $EE $CC
    xor $CC                                       ; $4D27: $EE $CC
    xor $CC                                       ; $4D29: $EE $CC
    xor $CC                                       ; $4D2B: $EE $CC
    xor $CC                                       ; $4D2D: $EE $CC
    xor $CC                                       ; $4D2F: $EE $CC
    xor $CC                                       ; $4D31: $EE $CC
    xor $CC                                       ; $4D33: $EE $CC
    xor $CC                                       ; $4D35: $EE $CC
    xor $CD                                       ; $4D37: $EE $CD
    xor $CD                                       ; $4D39: $EE $CD
    xor $CC                                       ; $4D3B: $EE $CC
    rst $28                                       ; $4D3D: $EF
    adc $E7                                       ; $4D3E: $CE $E7
    add $00                                       ; $4D40: $C6 $00
    adc h                                         ; $4D42: $8C
    nop                                           ; $4D43: $00
    jr jr_055_4D46                                ; $4D44: $18 $00

jr_055_4D46:
    jr nc, jr_055_4D48                            ; $4D46: $30 $00

jr_055_4D48:
    ld h, b                                       ; $4D48: $60
    nop                                           ; $4D49: $00
    ret nz                                        ; $4D4A: $C0

    nop                                           ; $4D4B: $00
    add b                                         ; $4D4C: $80
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    ld hl, sp+$00                                 ; $4D50: $F8 $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    ld bc, $0100                                  ; $4D56: $01 $00 $01
    nop                                           ; $4D59: $00
    inc bc                                        ; $4D5A: $03
    nop                                           ; $4D5B: $00
    cp $00                                        ; $4D5C: $FE $00

jr_055_4D5E:
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    dec l                                         ; $4D62: $2D
    ld [de], a                                    ; $4D63: $12
    ld h, c                                       ; $4D64: $61
    ld e, $B8                                     ; $4D65: $1E $B8
    ld b, a                                       ; $4D67: $47
    cp h                                          ; $4D68: $BC
    ld b, e                                       ; $4D69: $43

jr_055_4D6A:
    rst $00                                       ; $4D6A: $C7
    jr c, jr_055_4DEC                             ; $4D6B: $38 $7F

    rst $38                                       ; $4D6D: $FF
    jr nz, jr_055_4D8F                            ; $4D6E: $20 $1F

    nop                                           ; $4D70: $00
    nop                                           ; $4D71: $00
    sbc c                                         ; $4D72: $99
    ld h, [hl]                                    ; $4D73: $66
    rst $08                                       ; $4D74: $CF
    jr nc, jr_055_4D5E                            ; $4D75: $30 $E7

    jr jr_055_4DB4                                ; $4D77: $18 $3B

    call nz, Call_055_7887                        ; $4D79: $C4 $87 $78
    rst $38                                       ; $4D7C: $FF
    rst $38                                       ; $4D7D: $FF
    nop                                           ; $4D7E: $00
    rst $38                                       ; $4D7F: $FF
    nop                                           ; $4D80: $00
    nop                                           ; $4D81: $00
    stop                                          ; $4D82: $10 $00
    jr z, @+$12                                   ; $4D84: $28 $10

    db $10                                        ; $4D86: $10
    jr c, @-$6E                                   ; $4D87: $38 $90

    jr c, jr_055_4D6A                             ; $4D89: $38 $DF

    jr nc, jr_055_4E05                            ; $4D8B: $30 $78

    add a                                         ; $4D8D: $87
    rst $38                                       ; $4D8E: $FF

jr_055_4D8F:
    rst $38                                       ; $4D8F: $FF
    db $FC                                        ; $4D90: $FC
    jp $81FC                                      ; $4D91: $C3 $FC $81


    rst $08                                       ; $4D94: $CF
    jr nc, jr_055_4DCA                            ; $4D95: $30 $33

    call z, Call_055_7903                         ; $4D97: $CC $03 $79

jr_055_4D9A:
    rst $08                                       ; $4D9A: $CF
    nop                                           ; $4D9B: $00
    rst $38                                       ; $4D9C: $FF
    ld b, $FF                                     ; $4D9D: $06 $FF
    adc a                                         ; $4D9F: $8F
    rst $08                                       ; $4DA0: $CF
    ld [hl-], a                                   ; $4DA1: $32
    rrca                                          ; $4DA2: $0F
    rst $20                                       ; $4DA3: $E7
    ccf                                           ; $4DA4: $3F
    nop                                           ; $4DA5: $00
    jp $1824                                      ; $4DA6: $C3 $24 $18


    and l                                         ; $4DA9: $A5
    nop                                           ; $4DAA: $00
    sbc c                                         ; $4DAB: $99
    jp $FF24                                      ; $4DAC: $C3 $24 $FF


    add e                                         ; $4DAF: $83
    di                                            ; $4DB0: $F3
    ld l, e                                       ; $4DB1: $6B
    add hl, sp                                    ; $4DB2: $39
    or a                                          ; $4DB3: $B7

jr_055_4DB4:
    sbc a                                         ; $4DB4: $9F
    ld h, b                                       ; $4DB5: $60
    rst $38                                       ; $4DB6: $FF
    adc h                                         ; $4DB7: $8C
    di                                            ; $4DB8: $F3
    ld a, [bc]                                    ; $4DB9: $0A
    ld sp, hl                                     ; $4DBA: $F9
    call nz, $10EF                                ; $4DBB: $C4 $EF $10
    di                                            ; $4DBE: $F3
    adc h                                         ; $4DBF: $8C
    rst $38                                       ; $4DC0: $FF
    ld [hl], b                                    ; $4DC1: $70
    rst $08                                       ; $4DC2: $CF
    ld d, d                                       ; $4DC3: $52
    sbc l                                         ; $4DC4: $9D
    and $FB                                       ; $4DC5: $E6 $FB
    inc b                                         ; $4DC7: $04
    rst $38                                       ; $4DC8: $FF
    ld e, b                                       ; $4DC9: $58

jr_055_4DCA:
    rst $08                                       ; $4DCA: $CF
    ldh a, [$9F]                                  ; $4DCB: $F0 $9F
    ld a, b                                       ; $4DCD: $78
    rst $38                                       ; $4DCE: $FF
    ld b, $20                                     ; $4DCF: $06 $20
    ret nz                                        ; $4DD1: $C0

    and b                                         ; $4DD2: $A0
    ret nz                                        ; $4DD3: $C0

    ldh [$C0], a                                  ; $4DD4: $E0 $C0
    ldh [$C0], a                                  ; $4DD6: $E0 $C0
    jr nz, jr_055_4D9A                            ; $4DD8: $20 $C0

    ldh [$C0], a                                  ; $4DDA: $E0 $C0
    ld hl, $A3C0                                  ; $4DDC: $21 $C0 $A3
    ret nz                                        ; $4DDF: $C0

    ret nz                                        ; $4DE0: $C0

    nop                                           ; $4DE1: $00
    ld [hl], b                                    ; $4DE2: $70
    ret nz                                        ; $4DE3: $C0

    or b                                          ; $4DE4: $B0
    ld a, a                                       ; $4DE5: $7F
    rst $28                                       ; $4DE6: $EF
    rra                                           ; $4DE7: $1F
    ld a, a                                       ; $4DE8: $7F
    nop                                           ; $4DE9: $00
    ld a, b                                       ; $4DEA: $78
    rlca                                          ; $4DEB: $07

jr_055_4DEC:
    ccf                                           ; $4DEC: $3F
    nop                                           ; $4DED: $00
    sbc b                                         ; $4DEE: $98
    rlca                                          ; $4DEF: $07
    rst $38                                       ; $4DF0: $FF
    call c, $C03F                                 ; $4DF1: $DC $3F $C0
    rst $38                                       ; $4DF4: $FF
    sbc h                                         ; $4DF5: $9C
    db $E3                                        ; $4DF6: $E3
    dec [hl]                                      ; $4DF7: $35
    rst $28                                       ; $4DF8: $EF
    ld [$739F], sp                                ; $4DF9: $08 $9F $73
    rst $08                                       ; $4DFC: $CF
    ld hl, sp-$01                                 ; $4DFD: $F8 $FF
    inc bc                                        ; $4DFF: $03
    rst $30                                       ; $4E00: $F7
    rrca                                          ; $4E01: $0F
    cp a                                          ; $4E02: $BF
    ld a, a                                       ; $4E03: $7F
    rst $38                                       ; $4E04: $FF

jr_055_4E05:
    rst $38                                       ; $4E05: $FF
    rst $38                                       ; $4E06: $FF
    rst $38                                       ; $4E07: $FF
    ldh a, [rIE]                                  ; $4E08: $F0 $FF
    add a                                         ; $4E0A: $87
    ld hl, sp+$3F                                 ; $4E0B: $F8 $3F
    ret nz                                        ; $4E0D: $C0

    ld [hl], a                                    ; $4E0E: $77
    adc b                                         ; $4E0F: $88
    ld a, l                                       ; $4E10: $7D
    cp $7D                                        ; $4E11: $FE $7D
    cp $3D                                        ; $4E13: $FE $3D
    cp $BE                                        ; $4E15: $FE $BE
    ld a, a                                       ; $4E17: $7F
    sbc [hl]                                      ; $4E18: $9E
    ld a, a                                       ; $4E19: $7F
    ld e, [hl]                                    ; $4E1A: $5E
    ccf                                           ; $4E1B: $3F
    cpl                                           ; $4E1C: $2F
    rra                                           ; $4E1D: $1F
    cpl                                           ; $4E1E: $2F
    rra                                           ; $4E1F: $1F
    ld hl, sp+$07                                 ; $4E20: $F8 $07
    rst $00                                       ; $4E22: $C7
    ccf                                           ; $4E23: $3F
    ccf                                           ; $4E24: $3F
    rst $38                                       ; $4E25: $FF
    cp $FF                                        ; $4E26: $FE $FF
    ld hl, sp-$01                                 ; $4E28: $F8 $FF
    pop hl                                        ; $4E2A: $E1
    cp $03                                        ; $4E2B: $FE $03
    db $FC                                        ; $4E2D: $FC
    rra                                           ; $4E2E: $1F
    ldh [$84], a                                  ; $4E2F: $E0 $84
    ld a, d                                       ; $4E31: $7A
    ld a, [hl-]                                   ; $4E32: $3A
    db $FC                                        ; $4E33: $FC
    ld a, l                                       ; $4E34: $7D
    cp $7D                                        ; $4E35: $FE $7D
    cp $39                                        ; $4E37: $FE $39
    cp $82                                        ; $4E39: $FE $82
    ld a, h                                       ; $4E3B: $7C
    add $38                                       ; $4E3C: $C6 $38
    ld a, h                                       ; $4E3E: $7C
    add b                                         ; $4E3F: $80
    or h                                          ; $4E40: $B4
    ld a, b                                       ; $4E41: $78
    ld [hl], h                                    ; $4E42: $74
    ld hl, sp+$7A                                 ; $4E43: $F8 $7A
    db $FC                                        ; $4E45: $FC
    ld a, c                                       ; $4E46: $79
    cp $7D                                        ; $4E47: $FE $7D
    cp $BC                                        ; $4E49: $FE $BC
    ld a, a                                       ; $4E4B: $7F
    cp [hl]                                       ; $4E4C: $BE
    ld a, a                                       ; $4E4D: $7F
    cp [hl]                                       ; $4E4E: $BE
    ld a, a                                       ; $4E4F: $7F
    ld a, $00                                     ; $4E50: $3E $00
    ld h, l                                       ; $4E52: $65
    jr jr_055_4E97                                ; $4E53: $18 $42

    inc a                                         ; $4E55: $3C
    add e                                         ; $4E56: $83
    ld a, h                                       ; $4E57: $7C
    add [hl]                                      ; $4E58: $86
    ld a, b                                       ; $4E59: $78
    add [hl]                                      ; $4E5A: $86
    ld a, b                                       ; $4E5B: $78
    inc c                                         ; $4E5C: $0C
    ldh a, [$0C]                                  ; $4E5D: $F0 $0C
    ldh a, [rP1]                                  ; $4E5F: $F0 $00
    nop                                           ; $4E61: $00
    ccf                                           ; $4E62: $3F
    nop                                           ; $4E63: $00
    ld a, a                                       ; $4E64: $7F
    nop                                           ; $4E65: $00
    ld e, a                                       ; $4E66: $5F
    jr nz, jr_055_4E8A                            ; $4E67: $20 $21

    ld e, $00                                     ; $4E69: $1E $00
    nop                                           ; $4E6B: $00
    rlca                                          ; $4E6C: $07
    nop                                           ; $4E6D: $00
    rra                                           ; $4E6E: $1F
    nop                                           ; $4E6F: $00
    add b                                         ; $4E70: $80
    nop                                           ; $4E71: $00
    add b                                         ; $4E72: $80
    nop                                           ; $4E73: $00
    add b                                         ; $4E74: $80
    nop                                           ; $4E75: $00
    add b                                         ; $4E76: $80
    nop                                           ; $4E77: $00
    ret nz                                        ; $4E78: $C0

    nop                                           ; $4E79: $00
    ld b, b                                       ; $4E7A: $40
    nop                                           ; $4E7B: $00
    ret nz                                        ; $4E7C: $C0

    nop                                           ; $4E7D: $00
    ldh [rP1], a                                  ; $4E7E: $E0 $00
    ld d, b                                       ; $4E80: $50
    nop                                           ; $4E81: $00
    ld h, b                                       ; $4E82: $60
    nop                                           ; $4E83: $00
    ld [hl], b                                    ; $4E84: $70
    nop                                           ; $4E85: $00
    jr nc, jr_055_4E88                            ; $4E86: $30 $00

jr_055_4E88:
    jr nz, jr_055_4E8A                            ; $4E88: $20 $00

jr_055_4E8A:
    ld [hl], b                                    ; $4E8A: $70
    nop                                           ; $4E8B: $00
    ld h, b                                       ; $4E8C: $60
    nop                                           ; $4E8D: $00
    jr nz, jr_055_4E90                            ; $4E8E: $20 $00

jr_055_4E90:
    ld [hl], b                                    ; $4E90: $70
    nop                                           ; $4E91: $00
    ld b, b                                       ; $4E92: $40
    nop                                           ; $4E93: $00
    ld e, $00                                     ; $4E94: $1E $00
    ret nz                                        ; $4E96: $C0

jr_055_4E97:
    nop                                           ; $4E97: $00
    rst $38                                       ; $4E98: $FF
    nop                                           ; $4E99: $00
    nop                                           ; $4E9A: $00
    nop                                           ; $4E9B: $00
    cp $00                                        ; $4E9C: $FE $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    adc c                                         ; $4EA0: $89
    ld [hl], b                                    ; $4EA1: $70
    ld [hl], e                                    ; $4EA2: $73
    nop                                           ; $4EA3: $00
    inc b                                         ; $4EA4: $04
    inc bc                                        ; $4EA5: $03
    ld [bc], a                                    ; $4EA6: $02
    ld bc, $0081                                  ; $4EA7: $01 $81 $00
    ldh [rP1], a                                  ; $4EAA: $E0 $00
    nop                                           ; $4EAC: $00
    nop                                           ; $4EAD: $00
    cp $00                                        ; $4EAE: $FE $00
    sbc e                                         ; $4EB0: $9B
    nop                                           ; $4EB1: $00
    sbc e                                         ; $4EB2: $9B
    nop                                           ; $4EB3: $00
    add b                                         ; $4EB4: $80
    nop                                           ; $4EB5: $00
    cp b                                          ; $4EB6: $B8
    rlca                                          ; $4EB7: $07
    add b                                         ; $4EB8: $80
    nop                                           ; $4EB9: $00
    sbc e                                         ; $4EBA: $9B
    nop                                           ; $4EBB: $00
    sbc e                                         ; $4EBC: $9B
    nop                                           ; $4EBD: $00
    add b                                         ; $4EBE: $80
    nop                                           ; $4EBF: $00
    ld [hl], b                                    ; $4EC0: $70
    adc a                                         ; $4EC1: $8F
    call nz, $9038                                ; $4EC2: $C4 $38 $90
    ld h, b                                       ; $4EC5: $60
    jr nz, jr_055_4E88                            ; $4EC6: $20 $C0

    ld b, a                                       ; $4EC8: $47
    add b                                         ; $4EC9: $80
    add hl, de                                    ; $4ECA: $19
    add [hl]                                      ; $4ECB: $86
    inc hl                                        ; $4ECC: $23
    ld e, $47                                     ; $4ECD: $1E $47
    ld a, $83                                     ; $4ECF: $3E $83
    ld a, h                                       ; $4ED1: $7C
    ld a, l                                       ; $4ED2: $7D
    cp $FF                                        ; $4ED3: $FE $FF
    cp $FF                                        ; $4ED5: $FE $FF
    cp $FF                                        ; $4ED7: $FE $FF
    cp $FF                                        ; $4ED9: $FE $FF
    cp $7D                                        ; $4EDB: $FE $7D
    cp $FF                                        ; $4EDD: $FE $FF
    nop                                           ; $4EDF: $00
    nop                                           ; $4EE0: $00
    ccf                                           ; $4EE1: $3F
    rrca                                          ; $4EE2: $0F
    rlca                                          ; $4EE3: $07
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00
    jr c, jr_055_4EE8                             ; $4EE6: $38 $00

jr_055_4EE8:
    nop                                           ; $4EE8: $00
    ccf                                           ; $4EE9: $3F
    rrca                                          ; $4EEA: $0F
    rlca                                          ; $4EEB: $07
    nop                                           ; $4EEC: $00
    nop                                           ; $4EED: $00
    jr c, jr_055_4EF0                             ; $4EEE: $38 $00

jr_055_4EF0:
    nop                                           ; $4EF0: $00
    rst $38                                       ; $4EF1: $FF
    add b                                         ; $4EF2: $80
    rst $38                                       ; $4EF3: $FF
    rst $38                                       ; $4EF4: $FF
    ld a, a                                       ; $4EF5: $7F
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    nop                                           ; $4EF8: $00
    rst $38                                       ; $4EF9: $FF
    add b                                         ; $4EFA: $80
    rst $38                                       ; $4EFB: $FF
    rst $38                                       ; $4EFC: $FF
    ld a, a                                       ; $4EFD: $7F
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    ld [hl], l                                    ; $4F00: $75
    adc [hl]                                      ; $4F01: $8E
    ld e, e                                       ; $4F02: $5B
    and h                                         ; $4F03: $A4
    ld d, [hl]                                    ; $4F04: $56
    cp c                                          ; $4F05: $B9
    ld l, d                                       ; $4F06: $6A
    sbc l                                         ; $4F07: $9D
    ld a, a                                       ; $4F08: $7F
    add b                                         ; $4F09: $80
    rst $10                                       ; $4F0A: $D7
    ccf                                           ; $4F0B: $3F
    nop                                           ; $4F0C: $00
    rst $38                                       ; $4F0D: $FF
    rst $38                                       ; $4F0E: $FF
    nop                                           ; $4F0F: $00
    ld l, a                                       ; $4F10: $6F
    nop                                           ; $4F11: $00
    ld [hl], b                                    ; $4F12: $70

jr_055_4F13:
    nop                                           ; $4F13: $00
    ld [hl], b                                    ; $4F14: $70
    nop                                           ; $4F15: $00
    ld e, b                                       ; $4F16: $58
    jr nz, jr_055_4F78                            ; $4F17: $20 $5F

    jr nz, @+$5A                                  ; $4F19: $20 $58

    daa                                           ; $4F1B: $27
    ld a, a                                       ; $4F1C: $7F
    rrca                                          ; $4F1D: $0F
    ldh [$1F], a                                  ; $4F1E: $E0 $1F
    or $01                                        ; $4F20: $F6 $01
    dec c                                         ; $4F22: $0D
    inc bc                                        ; $4F23: $03
    dec c                                         ; $4F24: $0D
    inc bc                                        ; $4F25: $03
    add hl, de                                    ; $4F26: $19
    rlca                                          ; $4F27: $07
    ld hl, sp+$07                                 ; $4F28: $F8 $07
    jr jr_055_4F13                                ; $4F2A: $18 $E7

    db $FC                                        ; $4F2C: $FC
    di                                            ; $4F2D: $F3
    rlca                                          ; $4F2E: $07
    ld hl, sp+$60                                 ; $4F2F: $F8 $60
    add b                                         ; $4F31: $80
    or d                                          ; $4F32: $B2
    ret nz                                        ; $4F33: $C0

    or [hl]                                       ; $4F34: $B6
    ret nz                                        ; $4F35: $C0

    sbc d                                         ; $4F36: $9A
    db $E4                                        ; $4F37: $E4
    ld a, [de]                                    ; $4F38: $1A
    db $E4                                        ; $4F39: $E4
    ld e, $E4                                     ; $4F3A: $1E $E4
    ld a, [hl-]                                   ; $4F3C: $3A
    call z, $18E4                                 ; $4F3D: $CC $E4 $18
    ldh a, [rP1]                                  ; $4F40: $F0 $00
    ld [bc], a                                    ; $4F42: $02
    nop                                           ; $4F43: $00
    ld c, $00                                     ; $4F44: $0E $00
    ld a, [de]                                    ; $4F46: $1A
    inc b                                         ; $4F47: $04
    ld a, [c]                                     ; $4F48: $F2
    inc c                                         ; $4F49: $0C
    ld b, $FC                                     ; $4F4A: $06 $FC
    ld a, [$04FC]                                 ; $4F4C: $FA $FC $04
    ld hl, sp+$0C                                 ; $4F4F: $F8 $0C
    ldh a, [$0C]                                  ; $4F51: $F0 $0C
    ldh a, [$86]                                  ; $4F53: $F0 $86
    ld a, b                                       ; $4F55: $78
    add [hl]                                      ; $4F56: $86
    ld a, b                                       ; $4F57: $78
    add e                                         ; $4F58: $83
    ld a, h                                       ; $4F59: $7C
    ld b, e                                       ; $4F5A: $43
    inc a                                         ; $4F5B: $3C
    ld b, c                                       ; $4F5C: $41
    ld a, $41                                     ; $4F5D: $3E $41
    ld a, $3F                                     ; $4F5F: $3E $3F
    nop                                           ; $4F61: $00
    rra                                           ; $4F62: $1F
    nop                                           ; $4F63: $00
    ld d, $09                                     ; $4F64: $16 $09
    adc c                                         ; $4F66: $89
    ld b, $80                                     ; $4F67: $06 $80
    nop                                           ; $4F69: $00
    ld bc, $E200                                  ; $4F6A: $01 $00 $E2
    ld bc, $0001                                  ; $4F6D: $01 $01 $00
    ldh [rP1], a                                  ; $4F70: $E0 $00
    ldh a, [rP1]                                  ; $4F72: $F0 $00
    ldh [rP1], a                                  ; $4F74: $E0 $00
    inc e                                         ; $4F76: $1C
    nop                                           ; $4F77: $00

jr_055_4F78:
    ld a, [hl]                                    ; $4F78: $7E
    nop                                           ; $4F79: $00
    rst $38                                       ; $4F7A: $FF
    nop                                           ; $4F7B: $00
    rst $38                                       ; $4F7C: $FF
    nop                                           ; $4F7D: $00
    inc [hl]                                      ; $4F7E: $34
    nop                                           ; $4F7F: $00
    db $FC                                        ; $4F80: $FC
    inc bc                                        ; $4F81: $03
    cp h                                          ; $4F82: $BC
    inc bc                                        ; $4F83: $03
    dec a                                         ; $4F84: $3D
    ld [bc], a                                    ; $4F85: $02
    add hl, hl                                    ; $4F86: $29
    ld b, $0B                                     ; $4F87: $06 $0B
    inc b                                         ; $4F89: $04
    ld b, $01                                     ; $4F8A: $06 $01
    ld [hl], c                                    ; $4F8C: $71
    nop                                           ; $4F8D: $00
    ld hl, sp+$00                                 ; $4F8E: $F8 $00
    db $FC                                        ; $4F90: $FC
    nop                                           ; $4F91: $00
    ld a, [$F404]                                 ; $4F92: $FA $04 $F4
    ld [$D029], sp                                ; $4F95: $08 $29 $D0
    ld [de], a                                    ; $4F98: $12
    pop hl                                        ; $4F99: $E1
    ld h, c                                       ; $4F9A: $61
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    adc e                                         ; $4FA0: $8B
    ld a, a                                       ; $4FA1: $7F
    db $E3                                        ; $4FA2: $E3
    rra                                           ; $4FA3: $1F
    sbc b                                         ; $4FA4: $98
    rlca                                          ; $4FA5: $07
    add b                                         ; $4FA6: $80
    nop                                           ; $4FA7: $00
    add c                                         ; $4FA8: $81
    nop                                           ; $4FA9: $00
    adc e                                         ; $4FAA: $8B
    nop                                           ; $4FAB: $00
    sbc e                                         ; $4FAC: $9B
    nop                                           ; $4FAD: $00
    sbc e                                         ; $4FAE: $9B
    nop                                           ; $4FAF: $00
    or h                                          ; $4FB0: $B4
    dec bc                                        ; $4FB1: $0B
    add b                                         ; $4FB2: $80
    nop                                           ; $4FB3: $00
    sbc e                                         ; $4FB4: $9B
    nop                                           ; $4FB5: $00
    sbc e                                         ; $4FB6: $9B
    nop                                           ; $4FB7: $00
    sbc e                                         ; $4FB8: $9B
    nop                                           ; $4FB9: $00
    sbc d                                         ; $4FBA: $9A
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    nop                                           ; $4FBE: $00
    nop                                           ; $4FBF: $00
    rlca                                          ; $4FC0: $07
    ld a, [hl]                                    ; $4FC1: $7E
    scf                                           ; $4FC2: $37
    ld a, [hl]                                    ; $4FC3: $7E
    rla                                           ; $4FC4: $17
    ld a, [hl]                                    ; $4FC5: $7E
    scf                                           ; $4FC6: $37
    ld c, [hl]                                    ; $4FC7: $4E
    rlca                                          ; $4FC8: $07
    ld a, [hl]                                    ; $4FC9: $7E
    rlca                                          ; $4FCA: $07
    ld a, [hl]                                    ; $4FCB: $7E
    rlca                                          ; $4FCC: $07
    ld a, [hl]                                    ; $4FCD: $7E
    rlca                                          ; $4FCE: $07
    ld a, [hl]                                    ; $4FCF: $7E
    scf                                           ; $4FD0: $37
    ld a, [hl]                                    ; $4FD1: $7E
    rla                                           ; $4FD2: $17
    ld a, [hl]                                    ; $4FD3: $7E
    scf                                           ; $4FD4: $37
    ld c, [hl]                                    ; $4FD5: $4E
    rlca                                          ; $4FD6: $07
    ld a, [hl]                                    ; $4FD7: $7E
    rlca                                          ; $4FD8: $07
    ld a, [hl]                                    ; $4FD9: $7E
    rlca                                          ; $4FDA: $07
    ld a, [hl]                                    ; $4FDB: $7E
    ld b, e                                       ; $4FDC: $43
    ld a, $3F                                     ; $4FDD: $3E $3F
    nop                                           ; $4FDF: $00
    ld d, b                                       ; $4FE0: $50
    db $10                                        ; $4FE1: $10
    ld c, a                                       ; $4FE2: $4F
    rrca                                          ; $4FE3: $0F
    jr jr_055_4FE6                                ; $4FE4: $18 $00

jr_055_4FE6:
    add l                                         ; $4FE6: $85
    ld c, $C7                                     ; $4FE7: $0E $C7
    rrca                                          ; $4FE9: $0F
    ld [bc], a                                    ; $4FEA: $02
    rlca                                          ; $4FEB: $07
    pop bc                                        ; $4FEC: $C1
    ld [bc], a                                    ; $4FED: $02
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    inc b                                         ; $4FF0: $04
    nop                                           ; $4FF1: $00
    cp b                                          ; $4FF2: $B8
    ret nz                                        ; $4FF3: $C0

    inc b                                         ; $4FF4: $04
    nop                                           ; $4FF5: $00
    add sp, $00                                   ; $4FF6: $E8 $00
    ld e, b                                       ; $4FF8: $58
    add b                                         ; $4FF9: $80
    ret nc                                        ; $4FFA: $D0

    nop                                           ; $4FFB: $00
    ldh [rP1], a                                  ; $4FFC: $E0 $00
    ld [bc], a                                    ; $4FFE: $02
    nop                                           ; $4FFF: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    inc c                                         ; $5002: $0C
    nop                                           ; $5003: $00
    add hl, de                                    ; $5004: $19
    nop                                           ; $5005: $00
    ld h, d                                       ; $5006: $62
    ld bc, $6395                                  ; $5007: $01 $95 $63
    ld c, e                                       ; $500A: $4B
    scf                                           ; $500B: $37
    dec [hl]                                      ; $500C: $35
    inc bc                                        ; $500D: $03
    ld b, b                                       ; $500E: $40
    inc bc                                        ; $500F: $03

jr_055_5010:
    ld l, c                                       ; $5010: $69
    ld b, $56                                     ; $5011: $06 $56
    cpl                                           ; $5013: $2F
    xor a                                         ; $5014: $AF
    ld a, a                                       ; $5015: $7F
    inc hl                                        ; $5016: $23
    rst $38                                       ; $5017: $FF
    call $EEFF                                    ; $5018: $CD $FF $EE
    rst $38                                       ; $501B: $FF
    add $FF                                       ; $501C: $C6 $FF
    inc de                                        ; $501E: $13
    rst $38                                       ; $501F: $FF
    rst $00                                       ; $5020: $C7
    rrca                                          ; $5021: $0F
    adc h                                         ; $5022: $8C
    inc sp                                        ; $5023: $33
    ld [hl-], a                                   ; $5024: $32
    ld a, l                                       ; $5025: $7D
    push hl                                       ; $5026: $E5
    ei                                            ; $5027: $FB
    adc e                                         ; $5028: $8B
    rst $30                                       ; $5029: $F7
    rrca                                          ; $502A: $0F
    rlca                                          ; $502B: $07
    ld d, e                                       ; $502C: $53
    daa                                           ; $502D: $27
    inc a                                         ; $502E: $3C
    ld b, e                                       ; $502F: $43
    ld a, a                                       ; $5030: $7F
    rst $38                                       ; $5031: $FF
    rst $38                                       ; $5032: $FF
    ld a, a                                       ; $5033: $7F
    inc bc                                        ; $5034: $03
    rst $38                                       ; $5035: $FF
    rst $28                                       ; $5036: $EF
    rst $38                                       ; $5037: $FF
    rst $28                                       ; $5038: $EF
    rst $38                                       ; $5039: $FF
    rst $38                                       ; $503A: $FF
    rst $38                                       ; $503B: $FF
    db $E3                                        ; $503C: $E3
    rst $38                                       ; $503D: $FF
    rra                                           ; $503E: $1F
    rst $38                                       ; $503F: $FF
    ld sp, hl                                     ; $5040: $F9
    ld b, $8F                                     ; $5041: $06 $8F
    nop                                           ; $5043: $00
    ld h, [hl]                                    ; $5044: $66
    jr jr_055_5010                                ; $5045: $18 $C9

    jr nc, @-$2D                                  ; $5047: $30 $D1

    jr nz, jr_055_50B8                            ; $5049: $20 $6D

    nop                                           ; $504B: $00
    ld e, l                                       ; $504C: $5D
    nop                                           ; $504D: $00
    ld e, $00                                     ; $504E: $1E $00
    adc e                                         ; $5050: $8B
    ld [hl], h                                    ; $5051: $74
    add hl, bc                                    ; $5052: $09
    rst $30                                       ; $5053: $F7
    inc sp                                        ; $5054: $33
    rst $08                                       ; $5055: $CF
    db $E3                                        ; $5056: $E3
    rla                                           ; $5057: $17
    and e                                         ; $5058: $A3
    ld b, a                                       ; $5059: $47
    push hl                                       ; $505A: $E5
    inc bc                                        ; $505B: $03
    adc $01                                       ; $505C: $CE $01
    adc a                                         ; $505E: $8F
    nop                                           ; $505F: $00
    ld a, a                                       ; $5060: $7F
    rst $38                                       ; $5061: $FF
    rst $38                                       ; $5062: $FF
    rst $38                                       ; $5063: $FF
    pop hl                                        ; $5064: $E1
    rst $38                                       ; $5065: $FF
    ld c, a                                       ; $5066: $4F
    rst $38                                       ; $5067: $FF
    rra                                           ; $5068: $1F
    rst $38                                       ; $5069: $FF
    ld c, [hl]                                    ; $506A: $4E
    rst $38                                       ; $506B: $FF
    pop af                                        ; $506C: $F1
    rst $38                                       ; $506D: $FF
    ld l, a                                       ; $506E: $6F
    rst $38                                       ; $506F: $FF
    ld e, $00                                     ; $5070: $1E $00
    dec a                                         ; $5072: $3D
    nop                                           ; $5073: $00
    dec [hl]                                      ; $5074: $35
    ld [bc], a                                    ; $5075: $02
    ld hl, $0906                                  ; $5076: $21 $06 $09
    ld b, $0A                                     ; $5079: $06 $0A
    inc b                                         ; $507B: $04
    inc e                                         ; $507C: $1C
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    sbc e                                         ; $5080: $9B
    inc b                                         ; $5081: $04
    ld [hl], h                                    ; $5082: $74
    sbc a                                         ; $5083: $9F
    add hl, de                                    ; $5084: $19
    rst $38                                       ; $5085: $FF
    dec sp                                        ; $5086: $3B
    rst $38                                       ; $5087: $FF
    cp e                                          ; $5088: $BB
    rst $38                                       ; $5089: $FF
    cp e                                          ; $508A: $BB
    rst $38                                       ; $508B: $FF
    cp a                                          ; $508C: $BF
    rst $38                                       ; $508D: $FF
    rst $18                                       ; $508E: $DF
    rst $38                                       ; $508F: $FF
    add hl, de                                    ; $5090: $19
    ldh [$D6], a                                  ; $5091: $E0 $D6
    ld sp, hl                                     ; $5093: $F9
    jr c, @+$01                                   ; $5094: $38 $FF

    cp b                                          ; $5096: $B8
    rst $38                                       ; $5097: $FF
    cp d                                          ; $5098: $BA
    rst $38                                       ; $5099: $FF
    or a                                          ; $509A: $B7
    rst $38                                       ; $509B: $FF
    ld [hl], a                                    ; $509C: $77
    rst $38                                       ; $509D: $FF
    rst $38                                       ; $509E: $FF
    rst $38                                       ; $509F: $FF
    rst $38                                       ; $50A0: $FF
    rst $38                                       ; $50A1: $FF
    rst $38                                       ; $50A2: $FF
    rst $38                                       ; $50A3: $FF
    rst $38                                       ; $50A4: $FF
    rst $38                                       ; $50A5: $FF
    ld e, a                                       ; $50A6: $5F
    rst $38                                       ; $50A7: $FF
    rst $38                                       ; $50A8: $FF
    rst $38                                       ; $50A9: $FF
    db $DD                                        ; $50AA: $DD
    rst $38                                       ; $50AB: $FF
    db $DB                                        ; $50AC: $DB
    rst $38                                       ; $50AD: $FF
    cp e                                          ; $50AE: $BB
    rst $38                                       ; $50AF: $FF
    rst $38                                       ; $50B0: $FF
    rst $38                                       ; $50B1: $FF
    rst $38                                       ; $50B2: $FF
    rst $38                                       ; $50B3: $FF
    rst $38                                       ; $50B4: $FF
    rst $38                                       ; $50B5: $FF
    rst $38                                       ; $50B6: $FF
    rst $38                                       ; $50B7: $FF

jr_055_50B8:
    rst $30                                       ; $50B8: $F7
    rst $38                                       ; $50B9: $FF
    ei                                            ; $50BA: $FB
    rst $38                                       ; $50BB: $FF
    cp e                                          ; $50BC: $BB
    rst $38                                       ; $50BD: $FF
    cp e                                          ; $50BE: $BB
    rst $38                                       ; $50BF: $FF
    dec sp                                        ; $50C0: $3B
    rst $38                                       ; $50C1: $FF
    cp c                                          ; $50C2: $B9
    rst $38                                       ; $50C3: $FF
    rst $10                                       ; $50C4: $D7
    cp a                                          ; $50C5: $BF
    or c                                          ; $50C6: $B1
    adc $26                                       ; $50C7: $CE $26
    db $DD                                        ; $50C9: $DD
    ld l, $DD                                     ; $50CA: $2E $DD
    ld l, e                                       ; $50CC: $6B
    inc e                                         ; $50CD: $1C
    ld [hl], a                                    ; $50CE: $77
    ld [$FFB8], sp                                ; $50CF: $08 $B8 $FF
    jr nc, @+$01                                  ; $50D2: $30 $FF

    ld e, h                                       ; $50D4: $5C
    di                                            ; $50D5: $F3
    or d                                          ; $50D6: $B2
    ld c, a                                       ; $50D7: $4F
    rla                                           ; $50D8: $17
    xor $15                                       ; $50D9: $EE $15
    xor $13                                       ; $50DB: $EE $13
    db $EC                                        ; $50DD: $EC
    ccf                                           ; $50DE: $3F
    ret nz                                        ; $50DF: $C0

    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    inc e                                         ; $50E6: $1C
    nop                                           ; $50E7: $00
    ld a, $00                                     ; $50E8: $3E $00
    inc c                                         ; $50EA: $0C
    nop                                           ; $50EB: $00
    inc bc                                        ; $50EC: $03
    nop                                           ; $50ED: $00
    inc b                                         ; $50EE: $04
    inc bc                                        ; $50EF: $03
    inc bc                                        ; $50F0: $03
    nop                                           ; $50F1: $00
    ld b, $01                                     ; $50F2: $06 $01
    inc a                                         ; $50F4: $3C
    inc bc                                        ; $50F5: $03
    ld a, c                                       ; $50F6: $79
    rlca                                          ; $50F7: $07
    db $E3                                        ; $50F8: $E3
    rra                                           ; $50F9: $1F
    ld c, h                                       ; $50FA: $4C
    ccf                                           ; $50FB: $3F
    ld de, $3BFF                                  ; $50FC: $11 $FF $3B
    rst $38                                       ; $50FF: $FF
    add sp, $07                                   ; $5100: $E8 $07
    ld d, [hl]                                    ; $5102: $56
    rrca                                          ; $5103: $0F
    cpl                                           ; $5104: $2F
    rra                                           ; $5105: $1F
    cpl                                           ; $5106: $2F
    rra                                           ; $5107: $1F
    ld b, b                                       ; $5108: $40
    rrca                                          ; $5109: $0F
    dec sp                                        ; $510A: $3B
    rlca                                          ; $510B: $07
    rst $30                                       ; $510C: $F7
    rlca                                          ; $510D: $07
    rst $30                                       ; $510E: $F7
    rrca                                          ; $510F: $0F
    rst $28                                       ; $5110: $EF
    rst $38                                       ; $5111: $FF
    ld [hl], a                                    ; $5112: $77
    rst $38                                       ; $5113: $FF
    rst $30                                       ; $5114: $F7
    rst $38                                       ; $5115: $FF

jr_055_5116:
    sbc a                                         ; $5116: $9F
    rst $38                                       ; $5117: $FF
    ld l, a                                       ; $5118: $6F
    rst $38                                       ; $5119: $FF
    rst $18                                       ; $511A: $DF
    rst $38                                       ; $511B: $FF
    cp a                                          ; $511C: $BF
    rst $38                                       ; $511D: $FF
    sbc a                                         ; $511E: $9F
    rst $38                                       ; $511F: $FF
    ld a, d                                       ; $5120: $7A
    add c                                         ; $5121: $81
    pop af                                        ; $5122: $F1
    inc bc                                        ; $5123: $03
    add e                                         ; $5124: $83
    rlca                                          ; $5125: $07
    dec de                                        ; $5126: $1B
    daa                                           ; $5127: $27
    ld l, b                                       ; $5128: $68
    ld [hl], a                                    ; $5129: $77
    adc $F1                                       ; $512A: $CE $F1
    rrca                                          ; $512C: $0F
    di                                            ; $512D: $F3
    ld a, [de]                                    ; $512E: $1A
    rst $20                                       ; $512F: $E7
    rst $38                                       ; $5130: $FF
    rst $38                                       ; $5131: $FF
    db $FD                                        ; $5132: $FD
    rst $38                                       ; $5133: $FF
    db $E3                                        ; $5134: $E3
    rst $38                                       ; $5135: $FF
    ld c, $FF                                     ; $5136: $0E $FF
    ld e, l                                       ; $5138: $5D
    cp a                                          ; $5139: $BF
    ld e, e                                       ; $513A: $5B
    cp a                                          ; $513B: $BF
    ld l, e                                       ; $513C: $6B
    sbc a                                         ; $513D: $9F
    pop de                                        ; $513E: $D1
    cpl                                           ; $513F: $2F
    inc a                                         ; $5140: $3C
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    add hl, bc                                    ; $5144: $09
    nop                                           ; $5145: $00
    dec de                                        ; $5146: $1B
    nop                                           ; $5147: $00
    jr c, jr_055_514A                             ; $5148: $38 $00

jr_055_514A:
    jr c, jr_055_514C                             ; $514A: $38 $00

jr_055_514C:
    stop                                          ; $514C: $10 $00
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    ld l, a                                       ; $5150: $6F
    nop                                           ; $5151: $00
    sub $20                                       ; $5152: $D6 $20
    jr nc, jr_055_5116                            ; $5154: $30 $C0

    adc $00                                       ; $5156: $CE $00
    ld a, [de]                                    ; $5158: $1A
    inc b                                         ; $5159: $04
    ld b, $18                                     ; $515A: $06 $18
    inc e                                         ; $515C: $1C
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    rst $08                                       ; $5160: $CF
    rst $38                                       ; $5161: $FF
    add a                                         ; $5162: $87
    rst $38                                       ; $5163: $FF
    jr nc, @+$01                                  ; $5164: $30 $FF

    sbc a                                         ; $5166: $9F
    rst $38                                       ; $5167: $FF
    ccf                                           ; $5168: $3F
    rst $38                                       ; $5169: $FF
    ld a, e                                       ; $516A: $7B
    rst $38                                       ; $516B: $FF
    ld [hl], e                                    ; $516C: $73
    rst $38                                       ; $516D: $FF
    dec c                                         ; $516E: $0D
    rst $38                                       ; $516F: $FF
    rst $38                                       ; $5170: $FF
    rst $38                                       ; $5171: $FF
    cp a                                          ; $5172: $BF
    rst $38                                       ; $5173: $FF
    ld a, a                                       ; $5174: $7F
    rst $38                                       ; $5175: $FF
    ld [hl], a                                    ; $5176: $77
    rst $38                                       ; $5177: $FF
    ld [hl], a                                    ; $5178: $77
    rst $38                                       ; $5179: $FF
    and a                                         ; $517A: $A7
    rst $38                                       ; $517B: $FF
    call $FBFF                                    ; $517C: $CD $FF $FB
    rst $38                                       ; $517F: $FF
    rst $38                                       ; $5180: $FF
    rst $38                                       ; $5181: $FF
    rst $38                                       ; $5182: $FF
    rst $38                                       ; $5183: $FF
    rst $38                                       ; $5184: $FF
    rst $38                                       ; $5185: $FF
    rst $38                                       ; $5186: $FF
    rst $38                                       ; $5187: $FF
    db $FD                                        ; $5188: $FD
    rst $38                                       ; $5189: $FF
    db $FD                                        ; $518A: $FD
    cp $CD                                        ; $518B: $FE $CD
    cp $F5                                        ; $518D: $FE $F5
    cp $FA                                        ; $518F: $FE $FA
    db $FC                                        ; $5191: $FC
    ld a, [bc]                                    ; $5192: $0A
    db $FC                                        ; $5193: $FC
    pop bc                                        ; $5194: $C1
    cp $67                                        ; $5195: $FE $67
    ld hl, sp-$68                                 ; $5197: $F8 $98
    ldh [$EE], a                                  ; $5199: $E0 $EE
    ldh a, [$F2]                                  ; $519B: $F0 $F2
    db $FC                                        ; $519D: $FC
    pop af                                        ; $519E: $F1
    cp $01                                        ; $519F: $FE $01
    rst $38                                       ; $51A1: $FF
    inc bc                                        ; $51A2: $03
    ld a, a                                       ; $51A3: $7F
    rlca                                          ; $51A4: $07
    ccf                                           ; $51A5: $3F
    rrca                                          ; $51A6: $0F
    rra                                           ; $51A7: $1F
    rrca                                          ; $51A8: $0F
    rlca                                          ; $51A9: $07
    rra                                           ; $51AA: $1F
    inc bc                                        ; $51AB: $03
    ccf                                           ; $51AC: $3F
    ld bc, $007F                                  ; $51AD: $01 $7F $00
    ld bc, $03FF                                  ; $51B0: $01 $FF $03
    ld a, a                                       ; $51B3: $7F
    rlca                                          ; $51B4: $07
    ccf                                           ; $51B5: $3F
    rrca                                          ; $51B6: $0F
    rra                                           ; $51B7: $1F
    rrca                                          ; $51B8: $0F
    rlca                                          ; $51B9: $07
    rra                                           ; $51BA: $1F
    inc bc                                        ; $51BB: $03
    ccf                                           ; $51BC: $3F
    ld bc, $007F                                  ; $51BD: $01 $7F $00
    ld l, a                                       ; $51C0: $6F
    nop                                           ; $51C1: $00
    db $F4                                        ; $51C2: $F4
    inc bc                                        ; $51C3: $03
    or $01                                        ; $51C4: $F6 $01
    pop af                                        ; $51C6: $F1
    nop                                           ; $51C7: $00
    ld [hl], d                                    ; $51C8: $72
    nop                                           ; $51C9: $00
    daa                                           ; $51CA: $27
    nop                                           ; $51CB: $00
    inc bc                                        ; $51CC: $03
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    ld a, a                                       ; $51D0: $7F
    nop                                           ; $51D1: $00
    cp a                                          ; $51D2: $BF
    nop                                           ; $51D3: $00
    ld e, l                                       ; $51D4: $5D
    add b                                         ; $51D5: $80
    sbc $00                                       ; $51D6: $DE $00
    ld e, $00                                     ; $51D8: $1E $00
    adc h                                         ; $51DA: $8C
    nop                                           ; $51DB: $00
    adc b                                         ; $51DC: $88
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    add hl, bc                                    ; $51E0: $09
    ld b, $3F                                     ; $51E1: $06 $3F
    ld bc, $0F71                                  ; $51E3: $01 $71 $0F
    dec hl                                        ; $51E6: $2B
    rra                                           ; $51E7: $1F
    jr nc, jr_055_51F9                            ; $51E8: $30 $0F

    ld h, c                                       ; $51EA: $61
    rra                                           ; $51EB: $1F
    ld e, e                                       ; $51EC: $5B
    scf                                           ; $51ED: $37
    or a                                          ; $51EE: $B7
    ld a, a                                       ; $51EF: $7F
    ld [hl], a                                    ; $51F0: $77
    rst $38                                       ; $51F1: $FF
    cp e                                          ; $51F2: $BB
    ld a, a                                       ; $51F3: $7F
    dec h                                         ; $51F4: $25
    rst $38                                       ; $51F5: $FF
    sbc h                                         ; $51F6: $9C
    rst $38                                       ; $51F7: $FF
    dec sp                                        ; $51F8: $3B

jr_055_51F9:
    rst $38                                       ; $51F9: $FF
    rlca                                          ; $51FA: $07
    rst $38                                       ; $51FB: $FF
    xor a                                         ; $51FC: $AF
    rst $38                                       ; $51FD: $FF
    ld l, h                                       ; $51FE: $6C
    rst $38                                       ; $51FF: $FF
    add $3F                                       ; $5200: $C6 $3F
    ld [hl], h                                    ; $5202: $74
    rrca                                          ; $5203: $0F
    add hl, hl                                    ; $5204: $29
    rra                                           ; $5205: $1F
    ld l, e                                       ; $5206: $6B
    rra                                           ; $5207: $1F
    add e                                         ; $5208: $83
    ld a, a                                       ; $5209: $7F
    db $DB                                        ; $520A: $DB
    daa                                           ; $520B: $27

Jump_055_520C:
    cp h                                          ; $520C: $BC
    ld b, e                                       ; $520D: $43
    db $D3                                        ; $520E: $D3
    cpl                                           ; $520F: $2F
    ret nc                                        ; $5210: $D0

    rst $28                                       ; $5211: $EF
    dec bc                                        ; $5212: $0B
    rst $30                                       ; $5213: $F7
    rst $00                                       ; $5214: $C7
    rst $38                                       ; $5215: $FF
    rst $28                                       ; $5216: $EF
    rst $38                                       ; $5217: $FF
    adc $FF                                       ; $5218: $CE $FF
    ld bc, $CFFF                                  ; $521A: $01 $FF $CF
    rst $38                                       ; $521D: $FF
    rst $28                                       ; $521E: $EF
    rst $38                                       ; $521F: $FF
    ld e, e                                       ; $5220: $5B
    dec h                                         ; $5221: $25
    db $FC                                        ; $5222: $FC
    inc bc                                        ; $5223: $03
    ld [hl], h                                    ; $5224: $74
    dec bc                                        ; $5225: $0B
    inc [hl]                                      ; $5226: $34
    dec bc                                        ; $5227: $0B
    dec bc                                        ; $5228: $0B
    inc b                                         ; $5229: $04
    ld [de], a                                    ; $522A: $12
    dec c                                         ; $522B: $0D
    inc h                                         ; $522C: $24
    jr jr_055_523C                                ; $522D: $18 $0D

    db $10                                        ; $522F: $10
    inc a                                         ; $5230: $3C
    rst $38                                       ; $5231: $FF
    inc a                                         ; $5232: $3C
    rst $38                                       ; $5233: $FF
    ld a, l                                       ; $5234: $7D
    cp e                                          ; $5235: $BB
    or d                                          ; $5236: $B2
    ld c, l                                       ; $5237: $4D
    ld l, $DD                                     ; $5238: $2E $DD
    ld a, [hl-]                                   ; $523A: $3A
    db $DD                                        ; $523B: $DD

jr_055_523C:
    db $E4                                        ; $523C: $E4
    dec de                                        ; $523D: $1B
    ld sp, hl                                     ; $523E: $F9
    ld b, $7E                                     ; $523F: $06 $7E
    rst $38                                       ; $5241: $FF
    call $D1FF                                    ; $5242: $CD $FF $D1
    rst $38                                       ; $5245: $FF
    sbc c                                         ; $5246: $99
    rst $38                                       ; $5247: $FF
    inc a                                         ; $5248: $3C
    rst $38                                       ; $5249: $FF
    ld a, [hl-]                                   ; $524A: $3A
    db $FD                                        ; $524B: $FD
    ld [hl], h                                    ; $524C: $74
    cp e                                          ; $524D: $BB
    adc b                                         ; $524E: $88
    ld a, a                                       ; $524F: $7F
    or $FF                                        ; $5250: $F6 $FF
    ldh a, [rIE]                                  ; $5252: $F0 $FF
    db $EC                                        ; $5254: $EC
    rst $38                                       ; $5255: $FF
    call c, $3CFF                                 ; $5256: $DC $FF $3C
    rst $38                                       ; $5259: $FF
    jr @+$01                                      ; $525A: $18 $FF

    ld h, $FF                                     ; $525C: $26 $FF
    xor a                                         ; $525E: $AF
    rst $18                                       ; $525F: $DF
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    ld e, $00                                     ; $5266: $1E $00
    ld hl, $431E                                  ; $5268: $21 $1E $43
    inc a                                         ; $526B: $3C
    sbc c                                         ; $526C: $99
    ld h, a                                       ; $526D: $67
    ld h, e                                       ; $526E: $63
    rst $38                                       ; $526F: $FF
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    ld h, $18                                     ; $5276: $26 $18
    ld b, c                                       ; $5278: $41
    ld a, $33                                     ; $5279: $3E $33
    inc c                                         ; $527B: $0C
    inc e                                         ; $527C: $1C
    inc bc                                        ; $527D: $03
    dec bc                                        ; $527E: $0B
    rlca                                          ; $527F: $07
    ld b, $01                                     ; $5280: $06 $01
    dec e                                         ; $5282: $1D
    inc bc                                        ; $5283: $03
    ld a, e                                       ; $5284: $7B
    rlca                                          ; $5285: $07
    push bc                                       ; $5286: $C5
    dec sp                                        ; $5287: $3B
    add hl, de                                    ; $5288: $19
    rst $38                                       ; $5289: $FF
    cp [hl]                                       ; $528A: $BE
    ld a, a                                       ; $528B: $7F
    rst $08                                       ; $528C: $CF
    rst $38                                       ; $528D: $FF
    rst $38                                       ; $528E: $FF
    rst $38                                       ; $528F: $FF
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    ld c, $00                                     ; $5294: $0E $00
    ld hl, $5E1E                                  ; $5296: $21 $1E $5E
    ccf                                           ; $5299: $3F
    cp h                                          ; $529A: $BC
    ld a, a                                       ; $529B: $7F
    ld h, a                                       ; $529C: $67
    rst $38                                       ; $529D: $FF
    rst $38                                       ; $529E: $FF
    rst $38                                       ; $529F: $FF
    ld bc, $0200                                  ; $52A0: $01 $00 $02
    ld bc, $0305                                  ; $52A3: $01 $05 $03
    dec b                                         ; $52A6: $05
    inc bc                                        ; $52A7: $03
    inc bc                                        ; $52A8: $03
    nop                                           ; $52A9: $00
    rlca                                          ; $52AA: $07
    ld bc, $0305                                  ; $52AB: $01 $05 $03
    dec bc                                        ; $52AE: $0B
    rlca                                          ; $52AF: $07
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    inc a                                         ; $52B6: $3C
    nop                                           ; $52B7: $00
    rra                                           ; $52B8: $1F
    nop                                           ; $52B9: $00
    rra                                           ; $52BA: $1F
    nop                                           ; $52BB: $00
    rrca                                          ; $52BC: $0F
    nop                                           ; $52BD: $00
    rst $00                                       ; $52BE: $C7
    nop                                           ; $52BF: $00
    stop                                          ; $52C0: $10 $00
    jr nc, jr_055_52C4                            ; $52C2: $30 $00

jr_055_52C4:
    inc a                                         ; $52C4: $3C
    nop                                           ; $52C5: $00
    ld a, $00                                     ; $52C6: $3E $00
    ccf                                           ; $52C8: $3F
    nop                                           ; $52C9: $00
    rst $38                                       ; $52CA: $FF
    nop                                           ; $52CB: $00
    sbc a                                         ; $52CC: $9F
    nop                                           ; $52CD: $00
    rst $38                                       ; $52CE: $FF
    nop                                           ; $52CF: $00
    rst $38                                       ; $52D0: $FF
    nop                                           ; $52D1: $00
    ld a, a                                       ; $52D2: $7F
    nop                                           ; $52D3: $00
    ccf                                           ; $52D4: $3F
    nop                                           ; $52D5: $00
    rra                                           ; $52D6: $1F
    nop                                           ; $52D7: $00
    rra                                           ; $52D8: $1F
    nop                                           ; $52D9: $00
    rrca                                          ; $52DA: $0F
    nop                                           ; $52DB: $00
    inc bc                                        ; $52DC: $03
    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    jr nz, jr_055_52E4                            ; $52E2: $20 $00

jr_055_52E4:
    ld h, b                                       ; $52E4: $60
    nop                                           ; $52E5: $00
    ld [hl], b                                    ; $52E6: $70
    nop                                           ; $52E7: $00
    ld a, b                                       ; $52E8: $78
    nop                                           ; $52E9: $00
    ld a, c                                       ; $52EA: $79
    nop                                           ; $52EB: $00
    inc sp                                        ; $52EC: $33
    nop                                           ; $52ED: $00
    ld e, $00                                     ; $52EE: $1E $00
    nop                                           ; $52F0: $00
    nop                                           ; $52F1: $00
    nop                                           ; $52F2: $00
    nop                                           ; $52F3: $00
    nop                                           ; $52F4: $00
    nop                                           ; $52F5: $00
    stop                                          ; $52F6: $10 $00
    ldh [rP1], a                                  ; $52F8: $E0 $00
    ldh [rP1], a                                  ; $52FA: $E0 $00
    ret nz                                        ; $52FC: $C0

    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00
    nop                                           ; $52FF: $00
    rst $10                                       ; $5300: $D7
    ccf                                           ; $5301: $3F
    or a                                          ; $5302: $B7
    ld a, a                                       ; $5303: $7F
    ld [hl], b                                    ; $5304: $70
    cp a                                          ; $5305: $BF
    xor $1F                                       ; $5306: $EE $1F
    ld c, l                                       ; $5308: $4D
    ccf                                           ; $5309: $3F
    ld c, e                                       ; $530A: $4B
    ccf                                           ; $530B: $3F
    jp $A03F                                      ; $530C: $C3 $3F $A0


    rra                                           ; $530F: $1F

jr_055_5310:
    jp nz, $31FF                                  ; $5310: $C2 $FF $31

    rst $38                                       ; $5313: $FF
    ei                                            ; $5314: $FB
    rst $38                                       ; $5315: $FF
    rst $30                                       ; $5316: $F7
    rst $38                                       ; $5317: $FF
    ld c, $FF                                     ; $5318: $0E $FF
    xor $FF                                       ; $531A: $EE $FF
    pop bc                                        ; $531C: $C1
    rst $38                                       ; $531D: $FF
    dec de                                        ; $531E: $1B
    rst $38                                       ; $531F: $FF
    add hl, de                                    ; $5320: $19
    nop                                           ; $5321: $00
    ld bc, $0C00                                  ; $5322: $01 $00 $0C
    nop                                           ; $5325: $00
    ld e, $00                                     ; $5326: $1E $00
    inc e                                         ; $5328: $1C
    nop                                           ; $5329: $00
    stop                                          ; $532A: $10 $00
    nop                                           ; $532C: $00
    nop                                           ; $532D: $00
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    di                                            ; $5330: $F3
    inc c                                         ; $5331: $0C
    ld h, a                                       ; $5332: $67
    add b                                         ; $5333: $80
    jp $0B04                                      ; $5334: $C3 $04 $0B


    inc b                                         ; $5337: $04
    add $00                                       ; $5338: $C6 $00
    ld [c], a                                     ; $533A: $E2
    nop                                           ; $533B: $00
    ldh [rP1], a                                  ; $533C: $E0 $00
    ld b, b                                       ; $533E: $40
    nop                                           ; $533F: $00
    push bc                                       ; $5340: $C5
    ccf                                           ; $5341: $3F
    add a                                         ; $5342: $87
    ld a, e                                       ; $5343: $7B
    sbc [hl]                                      ; $5344: $9E
    ld h, e                                       ; $5345: $63
    inc a                                         ; $5346: $3C
    inc bc                                        ; $5347: $03
    ld a, h                                       ; $5348: $7C
    nop                                           ; $5349: $00
    ld a, l                                       ; $534A: $7D
    nop                                           ; $534B: $00
    ld [hl], c                                    ; $534C: $71
    nop                                           ; $534D: $00
    nop                                           ; $534E: $00
    nop                                           ; $534F: $00
    cpl                                           ; $5350: $2F
    rst $18                                       ; $5351: $DF
    ld b, [hl]                                    ; $5352: $46
    cp a                                          ; $5353: $BF
    ld c, c                                       ; $5354: $49
    or [hl]                                       ; $5355: $B6
    rst $20                                       ; $5356: $E7
    jr jr_055_5310                                ; $5357: $18 $B7

    ld c, b                                       ; $5359: $48
    scf                                           ; $535A: $37
    ret nz                                        ; $535B: $C0

    ld h, a                                       ; $535C: $67
    add b                                         ; $535D: $80
    add $00                                       ; $535E: $C6 $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    jr jr_055_5368                                ; $5366: $18 $00

jr_055_5368:
    xor h                                         ; $5368: $AC
    db $10                                        ; $5369: $10
    ld b, [hl]                                    ; $536A: $46
    cp b                                          ; $536B: $B8
    cp h                                          ; $536C: $BC
    cp $DF                                        ; $536D: $FE $DF
    rst $38                                       ; $536F: $FF
    ld d, $0F                                     ; $5370: $16 $0F
    ld h, c                                       ; $5372: $61
    rra                                           ; $5373: $1F
    adc a                                         ; $5374: $8F
    ld a, a                                       ; $5375: $7F
    ld e, a                                       ; $5376: $5F
    ccf                                           ; $5377: $3F
    ld l, $1F                                     ; $5378: $2E $1F
    ld b, c                                       ; $537A: $41
    ccf                                           ; $537B: $3F
    or a                                          ; $537C: $B7
    ld a, a                                       ; $537D: $7F
    rst $38                                       ; $537E: $FF
    ld a, a                                       ; $537F: $7F
    ld bc, $0300                                  ; $5380: $01 $00 $03
    nop                                           ; $5383: $00
    rlca                                          ; $5384: $07
    nop                                           ; $5385: $00
    rlca                                          ; $5386: $07
    nop                                           ; $5387: $00
    inc bc                                        ; $5388: $03
    nop                                           ; $5389: $00
    rlca                                          ; $538A: $07
    nop                                           ; $538B: $00
    rlca                                          ; $538C: $07
    nop                                           ; $538D: $00
    rrca                                          ; $538E: $0F
    nop                                           ; $538F: $00
    jr jr_055_5392                                ; $5390: $18 $00

jr_055_5392:
    ld a, b                                       ; $5392: $78
    nop                                           ; $5393: $00
    ldh a, [rP1]                                  ; $5394: $F0 $00
    db $E4                                        ; $5396: $E4
    jr jr_055_53EB                                ; $5397: $18 $52

    cp h                                          ; $5399: $BC
    sbc b                                         ; $539A: $98
    cp $CF                                        ; $539B: $FE $CF
    cp $FF                                        ; $539D: $FE $FF
    rst $38                                       ; $539F: $FF
    add hl, bc                                    ; $53A0: $09
    rlca                                          ; $53A1: $07
    rlca                                          ; $53A2: $07
    nop                                           ; $53A3: $00
    inc bc                                        ; $53A4: $03
    nop                                           ; $53A5: $00
    rlca                                          ; $53A6: $07
    ld bc, $030D                                  ; $53A7: $01 $0D $03
    dec bc                                        ; $53AA: $0B
    rlca                                          ; $53AB: $07
    inc b                                         ; $53AC: $04
    inc bc                                        ; $53AD: $03
    inc bc                                        ; $53AE: $03
    nop                                           ; $53AF: $00
    rst $28                                       ; $53B0: $EF
    nop                                           ; $53B1: $00
    rst $38                                       ; $53B2: $FF
    nop                                           ; $53B3: $00
    ld a, a                                       ; $53B4: $7F
    nop                                           ; $53B5: $00
    ld a, a                                       ; $53B6: $7F
    nop                                           ; $53B7: $00
    ccf                                           ; $53B8: $3F
    nop                                           ; $53B9: $00
    rst $38                                       ; $53BA: $FF
    nop                                           ; $53BB: $00
    ld a, a                                       ; $53BC: $7F
    nop                                           ; $53BD: $00
    ccf                                           ; $53BE: $3F
    nop                                           ; $53BF: $00
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    nop                                           ; $53C4: $00
    nop                                           ; $53C5: $00
    add b                                         ; $53C6: $80
    nop                                           ; $53C7: $00
    add b                                         ; $53C8: $80
    nop                                           ; $53C9: $00
    ret nz                                        ; $53CA: $C0

    nop                                           ; $53CB: $00
    ldh [rP1], a                                  ; $53CC: $E0 $00
    ldh a, [rP1]                                  ; $53CE: $F0 $00
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    nop                                           ; $53D3: $00
    nop                                           ; $53D4: $00
    nop                                           ; $53D5: $00
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    rlca                                          ; $53DC: $07
    nop                                           ; $53DD: $00
    ccf                                           ; $53DE: $3F
    nop                                           ; $53DF: $00
    rlca                                          ; $53E0: $07
    nop                                           ; $53E1: $00
    ld bc, $0000                                  ; $53E2: $01 $00 $00
    nop                                           ; $53E5: $00
    ld bc, $0300                                  ; $53E6: $01 $00 $03
    nop                                           ; $53E9: $00
    ld [bc], a                                    ; $53EA: $02

jr_055_53EB:
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    add b                                         ; $53F2: $80
    nop                                           ; $53F3: $00
    ret nz                                        ; $53F4: $C0

    nop                                           ; $53F5: $00
    ldh [rP1], a                                  ; $53F6: $E0 $00
    jr nz, jr_055_53FA                            ; $53F8: $20 $00

jr_055_53FA:
    jr nc, jr_055_53FC                            ; $53FA: $30 $00

jr_055_53FC:
    inc a                                         ; $53FC: $3C
    nop                                           ; $53FD: $00
    rra                                           ; $53FE: $1F
    nop                                           ; $53FF: $00
    rst $00                                       ; $5400: $C7
    nop                                           ; $5401: $00
    adc a                                         ; $5402: $8F
    nop                                           ; $5403: $00
    sbc a                                         ; $5404: $9F
    nop                                           ; $5405: $00
    sbc a                                         ; $5406: $9F
    nop                                           ; $5407: $00
    cp [hl]                                       ; $5408: $BE
    nop                                           ; $5409: $00
    add [hl]                                      ; $540A: $86
    nop                                           ; $540B: $00
    add $00                                       ; $540C: $C6 $00
    ld a, [hl]                                    ; $540E: $7E
    nop                                           ; $540F: $00
    ld [hl], b                                    ; $5410: $70
    nop                                           ; $5411: $00
    jr c, jr_055_5414                             ; $5412: $38 $00

jr_055_5414:
    rrca                                          ; $5414: $0F
    nop                                           ; $5415: $00
    rlca                                          ; $5416: $07
    nop                                           ; $5417: $00
    ld bc, $0000                                  ; $5418: $01 $00 $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    rst $38                                       ; $5420: $FF
    nop                                           ; $5421: $00
    rst $30                                       ; $5422: $F7
    nop                                           ; $5423: $00
    ld a, c                                       ; $5424: $79
    nop                                           ; $5425: $00
    jr c, jr_055_5428                             ; $5426: $38 $00

jr_055_5428:
    jr c, jr_055_542A                             ; $5428: $38 $00

jr_055_542A:
    inc e                                         ; $542A: $1C
    nop                                           ; $542B: $00
    stop                                          ; $542C: $10 $00
    jr nc, jr_055_5430                            ; $542E: $30 $00

jr_055_5430:
    rst $38                                       ; $5430: $FF
    nop                                           ; $5431: $00
    sbc a                                         ; $5432: $9F
    nop                                           ; $5433: $00
    rst $08                                       ; $5434: $CF
    nop                                           ; $5435: $00
    xor $00                                       ; $5436: $EE $00
    inc e                                         ; $5438: $1C
    nop                                           ; $5439: $00
    jr c, jr_055_543C                             ; $543A: $38 $00

jr_055_543C:
    stop                                          ; $543C: $10 $00
    jr nc, jr_055_5440                            ; $543E: $30 $00

jr_055_5440:
    ret nz                                        ; $5440: $C0

    nop                                           ; $5441: $00
    ret nz                                        ; $5442: $C0

    nop                                           ; $5443: $00
    ret nz                                        ; $5444: $C0

    nop                                           ; $5445: $00
    ret nz                                        ; $5446: $C0

    nop                                           ; $5447: $00
    ret nz                                        ; $5448: $C0

    nop                                           ; $5449: $00
    ret nz                                        ; $544A: $C0

    nop                                           ; $544B: $00
    pop af                                        ; $544C: $F1
    nop                                           ; $544D: $00
    ld a, a                                       ; $544E: $7F
    nop                                           ; $544F: $00
    add hl, bc                                    ; $5450: $09
    nop                                           ; $5451: $00
    rrca                                          ; $5452: $0F
    nop                                           ; $5453: $00
    ld e, $00                                     ; $5454: $1E $00
    ld a, b                                       ; $5456: $78
    nop                                           ; $5457: $00
    ldh a, [rP1]                                  ; $5458: $F0 $00
    ret nz                                        ; $545A: $C0

    nop                                           ; $545B: $00
    add b                                         ; $545C: $80
    nop                                           ; $545D: $00
    add b                                         ; $545E: $80
    nop                                           ; $545F: $00
    rst $38                                       ; $5460: $FF
    nop                                           ; $5461: $00
    rst $38                                       ; $5462: $FF
    nop                                           ; $5463: $00
    ld a, a                                       ; $5464: $7F
    nop                                           ; $5465: $00
    ld e, $00                                     ; $5466: $1E $00
    ld a, [bc]                                    ; $5468: $0A
    nop                                           ; $5469: $00
    ld [bc], a                                    ; $546A: $02
    nop                                           ; $546B: $00
    inc bc                                        ; $546C: $03
    nop                                           ; $546D: $00
    ld bc, $1000                                  ; $546E: $01 $00 $10
    nop                                           ; $5471: $00
    jr nz, jr_055_5474                            ; $5472: $20 $00

jr_055_5474:
    ld c, d                                       ; $5474: $4A
    nop                                           ; $5475: $00
    inc e                                         ; $5476: $1C
    nop                                           ; $5477: $00
    inc [hl]                                      ; $5478: $34
    ld [$041A], sp                                ; $5479: $08 $1A $04
    ld h, [hl]                                    ; $547C: $66
    jr jr_055_54AB                                ; $547D: $18 $2C

    stop                                          ; $547F: $10 $00
    nop                                           ; $5481: $00
    ld [hl+], a                                   ; $5482: $22
    nop                                           ; $5483: $00
    ld c, e                                       ; $5484: $4B
    nop                                           ; $5485: $00
    sbc h                                         ; $5486: $9C
    inc bc                                        ; $5487: $03
    dec [hl]                                      ; $5488: $35
    ld a, [bc]                                    ; $5489: $0A
    dec de                                        ; $548A: $1B
    inc b                                         ; $548B: $04
    ld h, $00                                     ; $548C: $26 $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    ld b, l                                       ; $5492: $45
    nop                                           ; $5493: $00
    rst $18                                       ; $5494: $DF
    nop                                           ; $5495: $00
    ld [hl-], a                                   ; $5496: $32
    call Call_055_7689                            ; $5497: $CD $89 $76
    sbc $21                                       ; $549A: $DE $21
    ld h, l                                       ; $549C: $65
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    ld bc, $0B00                                  ; $54A2: $01 $00 $0B
    nop                                           ; $54A5: $00
    inc bc                                        ; $54A6: $03
    nop                                           ; $54A7: $00
    ld b, $01                                     ; $54A8: $06 $01
    inc c                                         ; $54AA: $0C

jr_055_54AB:
    inc bc                                        ; $54AB: $03
    rlca                                          ; $54AC: $07
    nop                                           ; $54AD: $00
    ld b, $01                                     ; $54AE: $06 $01
    call nz, $8000                                ; $54B0: $C4 $00 $80
    nop                                           ; $54B3: $00
    ccf                                           ; $54B4: $3F
    ret nz                                        ; $54B5: $C0

    ldh [$03], a                                  ; $54B6: $E0 $03
    ld e, a                                       ; $54B8: $5F
    and b                                         ; $54B9: $A0
    and [hl]                                      ; $54BA: $A6
    ld e, c                                       ; $54BB: $59
    nop                                           ; $54BC: $00
    rst $38                                       ; $54BD: $FF
    ld e, h                                       ; $54BE: $5C
    rst $38                                       ; $54BF: $FF
    inc c                                         ; $54C0: $0C
    nop                                           ; $54C1: $00
    rst $38                                       ; $54C2: $FF
    nop                                           ; $54C3: $00
    xor a                                         ; $54C4: $AF
    ld d, b                                       ; $54C5: $50
    db $FC                                        ; $54C6: $FC
    inc bc                                        ; $54C7: $03
    ld h, e                                       ; $54C8: $63
    sbc h                                         ; $54C9: $9C
    rra                                           ; $54CA: $1F
    ldh [$84], a                                  ; $54CB: $E0 $84
    rst $38                                       ; $54CD: $FF
    ld d, e                                       ; $54CE: $53
    rst $38                                       ; $54CF: $FF
    ld a, a                                       ; $54D0: $7F
    add b                                         ; $54D1: $80
    ld a, a                                       ; $54D2: $7F
    add b                                         ; $54D3: $80
    ld a, a                                       ; $54D4: $7F
    add b                                         ; $54D5: $80
    ld l, a                                       ; $54D6: $6F
    sub b                                         ; $54D7: $90
    scf                                           ; $54D8: $37
    ret z                                         ; $54D9: $C8

    add hl, bc                                    ; $54DA: $09
    or $07                                        ; $54DB: $F6 $07
    ld hl, sp+$01                                 ; $54DD: $F8 $01
    cp $00                                        ; $54DF: $FE $00
    nop                                           ; $54E1: $00
    nop                                           ; $54E2: $00
    nop                                           ; $54E3: $00
    nop                                           ; $54E4: $00
    nop                                           ; $54E5: $00
    nop                                           ; $54E6: $00
    nop                                           ; $54E7: $00
    ld bc, $0B00                                  ; $54E8: $01 $00 $0B
    nop                                           ; $54EB: $00
    rla                                           ; $54EC: $17
    nop                                           ; $54ED: $00
    dec c                                         ; $54EE: $0D
    ld [bc], a                                    ; $54EF: $02
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    nop                                           ; $54F3: $00
    rlca                                          ; $54F4: $07
    nop                                           ; $54F5: $00
    ccf                                           ; $54F6: $3F
    nop                                           ; $54F7: $00
    rst $38                                       ; $54F8: $FF
    nop                                           ; $54F9: $00
    ld hl, sp+$07                                 ; $54FA: $F8 $07
    and b                                         ; $54FC: $A0
    ld e, a                                       ; $54FD: $5F
    ld b, b                                       ; $54FE: $40
    cp a                                          ; $54FF: $BF
    ld a, $00                                     ; $5500: $3E $00
    ld b, $00                                     ; $5502: $06 $00
    ld b, $00                                     ; $5504: $06 $00
    rlca                                          ; $5506: $07
    nop                                           ; $5507: $00
    inc bc                                        ; $5508: $03
    nop                                           ; $5509: $00
    ld bc, $0000                                  ; $550A: $01 $00 $00
    nop                                           ; $550D: $00
    nop                                           ; $550E: $00
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    inc bc                                        ; $5512: $03
    nop                                           ; $5513: $00
    rrca                                          ; $5514: $0F
    nop                                           ; $5515: $00
    inc e                                         ; $5516: $1C
    nop                                           ; $5517: $00
    sbc b                                         ; $5518: $98
    nop                                           ; $5519: $00
    db $FC                                        ; $551A: $FC
    nop                                           ; $551B: $00
    ld a, a                                       ; $551C: $7F
    nop                                           ; $551D: $00
    ld bc, $7000                                  ; $551E: $01 $00 $70
    nop                                           ; $5521: $00
    ret nz                                        ; $5522: $C0

    nop                                           ; $5523: $00
    ld bc, $0000                                  ; $5524: $01 $00 $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
    nop                                           ; $552D: $00
    add b                                         ; $552E: $80
    nop                                           ; $552F: $00
    jr nz, jr_055_5532                            ; $5530: $20 $00

jr_055_5532:
    jr nz, jr_055_5534                            ; $5532: $20 $00

jr_055_5534:
    jr nz, jr_055_5536                            ; $5534: $20 $00

jr_055_5536:
    ldh a, [rP1]                                  ; $5536: $F0 $00
    stop                                          ; $5538: $10 $00
    ld [$0800], sp                                ; $553A: $08 $00 $08
    nop                                           ; $553D: $00
    ld [$3F00], sp                                ; $553E: $08 $00 $3F
    nop                                           ; $5541: $00
    rrca                                          ; $5542: $0F
    nop                                           ; $5543: $00
    inc bc                                        ; $5544: $03
    nop                                           ; $5545: $00
    ld bc, $0100                                  ; $5546: $01 $00 $01
    nop                                           ; $5549: $00
    ld bc, $0000                                  ; $554A: $01 $00 $00
    nop                                           ; $554D: $00
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    add b                                         ; $5550: $80
    nop                                           ; $5551: $00
    ld [$8400], sp                                ; $5552: $08 $00 $84
    nop                                           ; $5555: $00
    call nz, $FF00                                ; $5556: $C4 $00 $FF
    nop                                           ; $5559: $00
    rst $38                                       ; $555A: $FF
    nop                                           ; $555B: $00
    rst $38                                       ; $555C: $FF
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    rst $38                                       ; $5560: $FF
    nop                                           ; $5561: $00
    rst $38                                       ; $5562: $FF
    nop                                           ; $5563: $00
    sbc $00                                       ; $5564: $DE $00
    ret c                                         ; $5566: $D8

    nop                                           ; $5567: $00
    ld [hl], b                                    ; $5568: $70
    nop                                           ; $5569: $00
    jr nc, jr_055_556C                            ; $556A: $30 $00

jr_055_556C:
    ld h, b                                       ; $556C: $60
    nop                                           ; $556D: $00
    ldh [rP1], a                                  ; $556E: $E0 $00
    ld l, d                                       ; $5570: $6A
    inc d                                         ; $5571: $14
    inc [hl]                                      ; $5572: $34
    ld [$1866], sp                                ; $5573: $08 $66 $18
    inc l                                         ; $5576: $2C
    db $10                                        ; $5577: $10
    inc [hl]                                      ; $5578: $34
    ld [$0C12], sp                                ; $5579: $08 $12 $0C
    ld h, [hl]                                    ; $557C: $66
    jr jr_055_55AB                                ; $557D: $18 $2C

    stop                                          ; $557F: $10 $00
    nop                                           ; $5581: $00
    ld [$0700], sp                                ; $5582: $08 $00 $07
    nop                                           ; $5585: $00
    ld e, b                                       ; $5586: $58
    rlca                                          ; $5587: $07
    inc hl                                        ; $5588: $23
    inc e                                         ; $5589: $1C
    dec [hl]                                      ; $558A: $35
    ld a, [bc]                                    ; $558B: $0A
    cpl                                           ; $558C: $2F
    db $10                                        ; $558D: $10
    inc a                                         ; $558E: $3C
    nop                                           ; $558F: $00
    ld bc, $03FF                                  ; $5590: $01 $FF $03
    ld a, a                                       ; $5593: $7F
    rlca                                          ; $5594: $07
    ccf                                           ; $5595: $3F
    rrca                                          ; $5596: $0F
    rra                                           ; $5597: $1F
    rrca                                          ; $5598: $0F
    rlca                                          ; $5599: $07
    rra                                           ; $559A: $1F
    inc bc                                        ; $559B: $03
    ccf                                           ; $559C: $3F
    ld bc, $007F                                  ; $559D: $01 $7F $00
    inc c                                         ; $55A0: $0C
    inc bc                                        ; $55A1: $03
    rlca                                          ; $55A2: $07
    nop                                           ; $55A3: $00
    inc e                                         ; $55A4: $1C
    inc bc                                        ; $55A5: $03
    ld b, $01                                     ; $55A6: $06 $01
    inc bc                                        ; $55A8: $03
    nop                                           ; $55A9: $00
    dec bc                                        ; $55AA: $0B

jr_055_55AB:
    nop                                           ; $55AB: $00
    ld bc, $0000                                  ; $55AC: $01 $00 $00
    nop                                           ; $55AF: $00
    rlca                                          ; $55B0: $07
    rst $38                                       ; $55B1: $FF
    ld d, b                                       ; $55B2: $50
    cp a                                          ; $55B3: $BF
    pop hl                                        ; $55B4: $E1
    ld e, $3F                                     ; $55B5: $1E $3F
    ret nz                                        ; $55B7: $C0

    ldh [$03], a                                  ; $55B8: $E0 $03
    rst $38                                       ; $55BA: $FF
    nop                                           ; $55BB: $00
    add b                                         ; $55BC: $80
    nop                                           ; $55BD: $00
    call nz, $0D00                                ; $55BE: $C4 $00 $0D
    rst $38                                       ; $55C1: $FF
    ld [c], a                                     ; $55C2: $E2
    dec e                                         ; $55C3: $1D
    ccf                                           ; $55C4: $3F
    ret nz                                        ; $55C5: $C0

jr_055_55C6:
    ld h, b                                       ; $55C6: $60
    sbc a                                         ; $55C7: $9F
    rst $08                                       ; $55C8: $CF
    jr nc, jr_055_55C6                            ; $55C9: $30 $FB

    inc b                                         ; $55CB: $04
    rst $38                                       ; $55CC: $FF
    nop                                           ; $55CD: $00
    inc c                                         ; $55CE: $0C
    nop                                           ; $55CF: $00
    ld b, b                                       ; $55D0: $40
    rst $38                                       ; $55D1: $FF
    inc a                                         ; $55D2: $3C
    rst $38                                       ; $55D3: $FF
    sbc [hl]                                      ; $55D4: $9E
    rst $38                                       ; $55D5: $FF
    jp $B8FF                                      ; $55D6: $C3 $FF $B8


    rst $38                                       ; $55D9: $FF
    rst $38                                       ; $55DA: $FF
    rst $38                                       ; $55DB: $FF
    rst $38                                       ; $55DC: $FF
    rst $38                                       ; $55DD: $FF
    rst $38                                       ; $55DE: $FF
    rst $38                                       ; $55DF: $FF
    ld e, $01                                     ; $55E0: $1E $01
    inc e                                         ; $55E2: $1C
    inc bc                                        ; $55E3: $03
    ld a, [hl-]                                   ; $55E4: $3A
    dec b                                         ; $55E5: $05
    jr c, jr_055_55EF                             ; $55E6: $38 $07

    ld sp, $700F                                  ; $55E8: $31 $0F $70
    rrca                                          ; $55EB: $0F
    ld h, c                                       ; $55EC: $61
    rra                                           ; $55ED: $1F
    ld l, h                                       ; $55EE: $6C

jr_055_55EF:
    inc de                                        ; $55EF: $13
    ld h, $FF                                     ; $55F0: $26 $FF
    inc c                                         ; $55F2: $0C
    rst $38                                       ; $55F3: $FF
    ld h, b                                       ; $55F4: $60
    rst $38                                       ; $55F5: $FF
    ld d, c                                       ; $55F6: $51
    cp $04                                        ; $55F7: $FE $04
    ei                                            ; $55F9: $FB
    add c                                         ; $55FA: $81
    cp $66                                        ; $55FB: $FE $66
    ld hl, sp+$0F                                 ; $55FD: $F8 $0F
    ldh a, [rP1]                                  ; $55FF: $F0 $00
    nop                                           ; $5601: $00
    add b                                         ; $5602: $80
    nop                                           ; $5603: $00
    jr nz, jr_055_5606                            ; $5604: $20 $00

jr_055_5606:
    inc [hl]                                      ; $5606: $34
    nop                                           ; $5607: $00
    inc a                                         ; $5608: $3C
    nop                                           ; $5609: $00
    cp a                                          ; $560A: $BF
    nop                                           ; $560B: $00
    ld l, $11                                     ; $560C: $2E $11
    inc l                                         ; $560E: $2C
    inc de                                        ; $560F: $13
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    ld bc, $4400                                  ; $5612: $01 $00 $44
    nop                                           ; $5615: $00
    ld c, h                                       ; $5616: $4C
    nop                                           ; $5617: $00
    inc a                                         ; $5618: $3C
    nop                                           ; $5619: $00
    db $FD                                        ; $561A: $FD
    nop                                           ; $561B: $00
    db $F4                                        ; $561C: $F4
    ld [$48B4], sp                                ; $561D: $08 $B4 $48
    ld [hl], d                                    ; $5620: $72
    dec c                                         ; $5621: $0D
    ld a, d                                       ; $5622: $7A
    dec b                                         ; $5623: $05
    ld l, [hl]                                    ; $5624: $6E
    ld de, $1B64                                  ; $5625: $11 $64 $1B
    push af                                       ; $5628: $F5
    dec bc                                        ; $5629: $0B
    push de                                       ; $562A: $D5
    dec hl                                        ; $562B: $2B
    halt                                          ; $562C: $76
    add hl, bc                                    ; $562D: $09
    ld [hl], l                                    ; $562E: $75
    dec bc                                        ; $562F: $0B
    ld c, [hl]                                    ; $5630: $4E

jr_055_5631:
    ldh a, [$9A]                                  ; $5631: $F0 $9A
    db $E4                                        ; $5633: $E4
    ld e, $E0                                     ; $5634: $1E $E0
    xor d                                         ; $5636: $AA
    call nc, $D02F                                ; $5637: $D4 $2F $D0
    ld l, a                                       ; $563A: $6F
    ret nc                                        ; $563B: $D0

    or [hl]                                       ; $563C: $B6
    ret z                                         ; $563D: $C8

    or [hl]                                       ; $563E: $B6
    ret z                                         ; $563F: $C8

    ld b, $00                                     ; $5640: $06 $00
    ccf                                           ; $5642: $3F
    nop                                           ; $5643: $00
    rra                                           ; $5644: $1F
    nop                                           ; $5645: $00
    rrca                                          ; $5646: $0F
    nop                                           ; $5647: $00
    inc a                                         ; $5648: $3C
    inc bc                                        ; $5649: $03
    rlca                                          ; $564A: $07
    nop                                           ; $564B: $00
    inc e                                         ; $564C: $1C
    inc bc                                        ; $564D: $03
    ld c, $01                                     ; $564E: $0E $01
    call nz, $8000                                ; $5650: $C4 $00 $80
    nop                                           ; $5653: $00
    rst $38                                       ; $5654: $FF
    nop                                           ; $5655: $00
    ldh [$03], a                                  ; $5656: $E0 $03
    rst $38                                       ; $5658: $FF
    nop                                           ; $5659: $00
    rst $20                                       ; $565A: $E7
    jr jr_055_566B                                ; $565B: $18 $0E

    pop af                                        ; $565D: $F1
    jr c, @-$37                                   ; $565E: $38 $C7

    inc c                                         ; $5660: $0C
    nop                                           ; $5661: $00
    rst $38                                       ; $5662: $FF
    nop                                           ; $5663: $00
    rst $38                                       ; $5664: $FF
    nop                                           ; $5665: $00
    rst $38                                       ; $5666: $FF
    nop                                           ; $5667: $00
    jr c, jr_055_5631                             ; $5668: $38 $C7

    ccf                                           ; $566A: $3F

jr_055_566B:
    ret nz                                        ; $566B: $C0

    ldh [$1F], a                                  ; $566C: $E0 $1F
    ld [hl], b                                    ; $566E: $70
    adc a                                         ; $566F: $8F
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    ld c, b                                       ; $5674: $48
    nop                                           ; $5675: $00
    ld l, d                                       ; $5676: $6A
    nop                                           ; $5677: $00
    ld a, e                                       ; $5678: $7B
    nop                                           ; $5679: $00
    rst $38                                       ; $567A: $FF
    nop                                           ; $567B: $00
    push af                                       ; $567C: $F5
    ld a, [bc]                                    ; $567D: $0A
    ld [hl], h                                    ; $567E: $74
    dec bc                                        ; $567F: $0B
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    ld [bc], a                                    ; $5686: $02
    nop                                           ; $5687: $00
    ld d, b                                       ; $5688: $50
    nop                                           ; $5689: $00
    db $FD                                        ; $568A: $FD
    nop                                           ; $568B: $00
    rst $38                                       ; $568C: $FF
    nop                                           ; $568D: $00
    and a                                         ; $568E: $A7
    ld e, b                                       ; $568F: $58
    ld [hl], d                                    ; $5690: $72
    dec c                                         ; $5691: $0D
    ld [hl], e                                    ; $5692: $73
    inc c                                         ; $5693: $0C
    ld a, a                                       ; $5694: $7F
    nop                                           ; $5695: $00
    ld a, l                                       ; $5696: $7D
    ld [bc], a                                    ; $5697: $02
    db $FC                                        ; $5698: $FC
    inc bc                                        ; $5699: $03
    db $F4                                        ; $569A: $F4
    dec bc                                        ; $569B: $0B
    ld [hl], h                                    ; $569C: $74
    dec bc                                        ; $569D: $0B
    ld [hl], h                                    ; $569E: $74
    dec bc                                        ; $569F: $0B
    dec de                                        ; $56A0: $1B
    rst $38                                       ; $56A1: $FF
    dec hl                                        ; $56A2: $2B
    rst $38                                       ; $56A3: $FF
    dec hl                                        ; $56A4: $2B
    rst $38                                       ; $56A5: $FF
    scf                                           ; $56A6: $37
    rst $38                                       ; $56A7: $FF
    ld d, l                                       ; $56A8: $55
    rst $38                                       ; $56A9: $FF
    dec d                                         ; $56AA: $15
    rst $38                                       ; $56AB: $FF
    cp a                                          ; $56AC: $BF
    ld a, a                                       ; $56AD: $7F
    sbc e                                         ; $56AE: $9B
    ld a, a                                       ; $56AF: $7F
    ld a, h                                       ; $56B0: $7C
    inc bc                                        ; $56B1: $03
    ld [hl], h                                    ; $56B2: $74
    dec bc                                        ; $56B3: $0B
    ld [hl], h                                    ; $56B4: $74
    dec bc                                        ; $56B5: $0B
    ld a, b                                       ; $56B6: $78
    rlca                                          ; $56B7: $07
    jr c, jr_055_56C1                             ; $56B8: $38 $07

    inc a                                         ; $56BA: $3C
    inc bc                                        ; $56BB: $03
    dec a                                         ; $56BC: $3D
    ld [bc], a                                    ; $56BD: $02
    ld e, $01                                     ; $56BE: $1E $01
    ccf                                           ; $56C0: $3F

jr_055_56C1:
    rst $38                                       ; $56C1: $FF
    ld d, a                                       ; $56C2: $57
    rst $38                                       ; $56C3: $FF
    ld c, a                                       ; $56C4: $4F
    rst $38                                       ; $56C5: $FF
    inc sp                                        ; $56C6: $33
    rst $38                                       ; $56C7: $FF
    add hl, sp                                    ; $56C8: $39
    rst $38                                       ; $56C9: $FF
    inc d                                         ; $56CA: $14
    rst $38                                       ; $56CB: $FF
    ld a, [bc]                                    ; $56CC: $0A
    rst $38                                       ; $56CD: $FF
    adc l                                         ; $56CE: $8D
    ld a, a                                       ; $56CF: $7F
    db $EC                                        ; $56D0: $EC
    rst $38                                       ; $56D1: $FF
    pop af                                        ; $56D2: $F1
    rst $38                                       ; $56D3: $FF
    cp $FF                                        ; $56D4: $FE $FF
    db $FD                                        ; $56D6: $FD
    rst $38                                       ; $56D7: $FF
    rst $38                                       ; $56D8: $FF
    rst $38                                       ; $56D9: $FF
    rst $38                                       ; $56DA: $FF
    rst $38                                       ; $56DB: $FF
    rst $38                                       ; $56DC: $FF
    rst $38                                       ; $56DD: $FF
    ld l, a                                       ; $56DE: $6F
    rst $38                                       ; $56DF: $FF
    ld bc, $03FF                                  ; $56E0: $01 $FF $03
    ld a, a                                       ; $56E3: $7F
    rlca                                          ; $56E4: $07
    ccf                                           ; $56E5: $3F
    rrca                                          ; $56E6: $0F
    rra                                           ; $56E7: $1F
    rrca                                          ; $56E8: $0F
    rlca                                          ; $56E9: $07
    rra                                           ; $56EA: $1F
    inc bc                                        ; $56EB: $03
    ccf                                           ; $56EC: $3F
    ld bc, $007F                                  ; $56ED: $01 $7F $00
    or b                                          ; $56F0: $B0
    rst $38                                       ; $56F1: $FF
    sbc b                                         ; $56F2: $98
    rst $38                                       ; $56F3: $FF
    ret c                                         ; $56F4: $D8

    rst $38                                       ; $56F5: $FF
    ret z                                         ; $56F6: $C8

    rst $38                                       ; $56F7: $FF
    ld h, h                                       ; $56F8: $64
    rst $38                                       ; $56F9: $FF
    ld [hl-], a                                   ; $56FA: $32
    rst $38                                       ; $56FB: $FF
    sbc c                                         ; $56FC: $99
    rst $38                                       ; $56FD: $FF
    reti                                          ; $56FE: $D9


    rst $38                                       ; $56FF: $FF
    db $F4                                        ; $5700: $F4
    dec bc                                        ; $5701: $0B
    or [hl]                                       ; $5702: $B6
    add hl, bc                                    ; $5703: $09
    inc a                                         ; $5704: $3C
    inc bc                                        ; $5705: $03
    ld a, [hl+]                                   ; $5706: $2A
    rlca                                          ; $5707: $07
    jr z, jr_055_5711                             ; $5708: $28 $07

    xor c                                         ; $570A: $A9
    rlca                                          ; $570B: $07
    add hl, hl                                    ; $570C: $29
    rla                                           ; $570D: $17
    dec l                                         ; $570E: $2D
    inc de                                        ; $570F: $13
    dec hl                                        ; $5710: $2B

jr_055_5711:
    call nc, $E499                                ; $5711: $D4 $99 $E4
    inc l                                         ; $5714: $2C
    ret nc                                        ; $5715: $D0

    sub h                                         ; $5716: $94
    ldh [$94], a                                  ; $5717: $E0 $94
    ldh [$B5], a                                  ; $5719: $E0 $B5
    ret nz                                        ; $571B: $C0

    inc [hl]                                      ; $571C: $34
    ret z                                         ; $571D: $C8

    inc d                                         ; $571E: $14
    add sp, $72                                   ; $571F: $E8 $72
    dec c                                         ; $5721: $0D
    dec sp                                        ; $5722: $3B
    inc b                                         ; $5723: $04
    rrca                                          ; $5724: $0F
    nop                                           ; $5725: $00
    inc h                                         ; $5726: $24
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    ld c, [hl]                                    ; $5730: $4E
    or b                                          ; $5731: $B0
    ld e, h                                       ; $5732: $5C
    and b                                         ; $5733: $A0
    ldh a, [rP1]                                  ; $5734: $F0 $00
    and h                                         ; $5736: $A4
    nop                                           ; $5737: $00
    jr nz, jr_055_573A                            ; $5738: $20 $00

jr_055_573A:
    nop                                           ; $573A: $00
    nop                                           ; $573B: $00
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    rlca                                          ; $5740: $07
    nop                                           ; $5741: $00
    ld c, $01                                     ; $5742: $0E $01
    rlca                                          ; $5744: $07
    nop                                           ; $5745: $00
    ld c, $01                                     ; $5746: $0E $01
    ld b, $01                                     ; $5748: $06 $01
    rlca                                          ; $574A: $07
    nop                                           ; $574B: $00
    inc de                                        ; $574C: $13
    nop                                           ; $574D: $00
    rlca                                          ; $574E: $07
    nop                                           ; $574F: $00
    ret nz                                        ; $5750: $C0

    ccf                                           ; $5751: $3F
    nop                                           ; $5752: $00
    rst $38                                       ; $5753: $FF
    pop hl                                        ; $5754: $E1
    rst $38                                       ; $5755: $FF
    rrca                                          ; $5756: $0F
    rst $38                                       ; $5757: $FF
    pop bc                                        ; $5758: $C1
    rst $38                                       ; $5759: $FF
    rst $38                                       ; $575A: $FF
    rst $38                                       ; $575B: $FF
    rst $28                                       ; $575C: $EF
    rst $38                                       ; $575D: $FF
    db $FC                                        ; $575E: $FC
    rst $38                                       ; $575F: $FF
    inc bc                                        ; $5760: $03
    db $FC                                        ; $5761: $FC
    ld [$72FF], sp                                ; $5762: $08 $FF $72
    rst $38                                       ; $5765: $FF
    sbc a                                         ; $5766: $9F
    rst $38                                       ; $5767: $FF
    db $E3                                        ; $5768: $E3
    rst $38                                       ; $5769: $FF
    ld e, $FF                                     ; $576A: $1E $FF
    di                                            ; $576C: $F3
    rst $38                                       ; $576D: $FF
    rst $38                                       ; $576E: $FF
    rst $38                                       ; $576F: $FF
    db $FC                                        ; $5770: $FC
    inc bc                                        ; $5771: $03
    cp h                                          ; $5772: $BC
    inc bc                                        ; $5773: $03
    dec a                                         ; $5774: $3D
    ld [bc], a                                    ; $5775: $02
    add hl, hl                                    ; $5776: $29
    ld b, $2B                                     ; $5777: $06 $2B
    inc b                                         ; $5779: $04
    xor [hl]                                      ; $577A: $AE
    ld bc, $112E                                  ; $577B: $01 $2E $11
    inc l                                         ; $577E: $2C
    inc de                                        ; $577F: $13
    xor a                                         ; $5780: $AF
    ld a, a                                       ; $5781: $7F
    xor a                                         ; $5782: $AF
    ld a, a                                       ; $5783: $7F
    daa                                           ; $5784: $27
    rst $38                                       ; $5785: $FF
    dec b                                         ; $5786: $05
    rst $38                                       ; $5787: $FF
    rla                                           ; $5788: $17
    rst $38                                       ; $5789: $FF
    rla                                           ; $578A: $17
    rst $38                                       ; $578B: $FF
    ld d, $FF                                     ; $578C: $16 $FF
    ld a, $FF                                     ; $578E: $3E $FF
    ld [hl], d                                    ; $5790: $72
    dec c                                         ; $5791: $0D
    dec sp                                        ; $5792: $3B
    inc b                                         ; $5793: $04
    ld l, $01                                     ; $5794: $2E $01
    rlca                                          ; $5796: $07
    nop                                           ; $5797: $00
    dec b                                         ; $5798: $05
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    dec de                                        ; $57A0: $1B
    rst $38                                       ; $57A1: $FF
    dec hl                                        ; $57A2: $2B
    rst $38                                       ; $57A3: $FF
    or e                                          ; $57A4: $B3
    ld l, a                                       ; $57A5: $6F
    sbc $21                                       ; $57A6: $DE $21
    rst $38                                       ; $57A8: $FF
    nop                                           ; $57A9: $00
    rst $38                                       ; $57AA: $FF
    nop                                           ; $57AB: $00
    scf                                           ; $57AC: $37
    nop                                           ; $57AD: $00
    nop                                           ; $57AE: $00
    nop                                           ; $57AF: $00
    ld c, $01                                     ; $57B0: $0E $01
    rlca                                          ; $57B2: $07
    nop                                           ; $57B3: $00
    dec b                                         ; $57B4: $05
    nop                                           ; $57B5: $00
    ld [bc], a                                    ; $57B6: $02
    nop                                           ; $57B7: $00
    inc bc                                        ; $57B8: $03
    nop                                           ; $57B9: $00
    ld bc, $0000                                  ; $57BA: $01 $00 $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    add $3F                                       ; $57C0: $C6 $3F
    ld h, e                                       ; $57C2: $63
    sbc a                                         ; $57C3: $9F
    or b                                          ; $57C4: $B0
    ld c, a                                       ; $57C5: $4F
    ret c                                         ; $57C6: $D8

    daa                                           ; $57C7: $27
    ld l, h                                       ; $57C8: $6C
    inc de                                        ; $57C9: $13
    ld a, l                                       ; $57CA: $7D
    ld [bc], a                                    ; $57CB: $02
    cp [hl]                                       ; $57CC: $BE
    ld bc, $003F                                  ; $57CD: $01 $3F $00
    cp a                                          ; $57D0: $BF
    rst $38                                       ; $57D1: $FF
    ld l, a                                       ; $57D2: $6F
    rst $38                                       ; $57D3: $FF
    cp e                                          ; $57D4: $BB
    rst $38                                       ; $57D5: $FF
    ld c, $FF                                     ; $57D6: $0E $FF
    inc bc                                        ; $57D8: $03
    rst $38                                       ; $57D9: $FF
    nop                                           ; $57DA: $00
    rst $38                                       ; $57DB: $FF
    add b                                         ; $57DC: $80
    ld a, a                                       ; $57DD: $7F
    ld b, b                                       ; $57DE: $40
    cp a                                          ; $57DF: $BF
    ld e, a                                       ; $57E0: $5F
    nop                                           ; $57E1: $00
    cpl                                           ; $57E2: $2F
    nop                                           ; $57E3: $00
    inc bc                                        ; $57E4: $03
    nop                                           ; $57E5: $00
    inc b                                         ; $57E6: $04
    nop                                           ; $57E7: $00
    inc bc                                        ; $57E8: $03
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    nop                                           ; $57EB: $00
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    ldh a, [rIF]                                  ; $57F0: $F0 $0F
    db $FC                                        ; $57F2: $FC
    inc bc                                        ; $57F3: $03
    cp a                                          ; $57F4: $BF
    nop                                           ; $57F5: $00
    rst $08                                       ; $57F6: $CF
    nop                                           ; $57F7: $00
    jr nc, jr_055_57FA                            ; $57F8: $30 $00

jr_055_57FA:
    rst $08                                       ; $57FA: $CF
    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    dec de                                        ; $5800: $1B
    rlca                                          ; $5801: $07
    add hl, de                                    ; $5802: $19
    rlca                                          ; $5803: $07
    ld c, l                                       ; $5804: $4D
    inc bc                                        ; $5805: $03
    ld h, h                                       ; $5806: $64
    inc bc                                        ; $5807: $03
    halt                                          ; $5808: $76
    ld bc, $0374                                  ; $5809: $01 $74 $03
    dec sp                                        ; $580C: $3B
    nop                                           ; $580D: $00
    cpl                                           ; $580E: $2F
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    rst $38                                       ; $5811: $FF
    nop                                           ; $5812: $00
    rst $38                                       ; $5813: $FF
    nop                                           ; $5814: $00
    rst $38                                       ; $5815: $FF
    nop                                           ; $5816: $00
    rst $38                                       ; $5817: $FF
    ld a, [bc]                                    ; $5818: $0A
    rst $38                                       ; $5819: $FF
    dec d                                         ; $581A: $15
    rst $38                                       ; $581B: $FF
    ld a, [hl+]                                   ; $581C: $2A
    rst $38                                       ; $581D: $FF
    rla                                           ; $581E: $17
    rst $38                                       ; $581F: $FF
    nop                                           ; $5820: $00
    rst $38                                       ; $5821: $FF
    nop                                           ; $5822: $00
    rst $38                                       ; $5823: $FF
    nop                                           ; $5824: $00
    rst $38                                       ; $5825: $FF
    nop                                           ; $5826: $00
    rst $38                                       ; $5827: $FF
    add b                                         ; $5828: $80
    rst $38                                       ; $5829: $FF
    ld b, b                                       ; $582A: $40
    rst $38                                       ; $582B: $FF
    and b                                         ; $582C: $A0
    rst $38                                       ; $582D: $FF
    ret nc                                        ; $582E: $D0

    rst $38                                       ; $582F: $FF
    rla                                           ; $5830: $17
    scf                                           ; $5831: $37
    rrca                                          ; $5832: $0F
    cpl                                           ; $5833: $2F
    rla                                           ; $5834: $17
    scf                                           ; $5835: $37
    rrca                                          ; $5836: $0F
    cpl                                           ; $5837: $2F
    rla                                           ; $5838: $17
    scf                                           ; $5839: $37
    rrca                                          ; $583A: $0F
    cpl                                           ; $583B: $2F
    scf                                           ; $583C: $37
    ld [hl], a                                    ; $583D: $77
    cpl                                           ; $583E: $2F
    ld l, a                                       ; $583F: $6F
    db $FC                                        ; $5840: $FC
    rst $38                                       ; $5841: $FF
    db $FC                                        ; $5842: $FC
    rst $38                                       ; $5843: $FF
    cp $FF                                        ; $5844: $FE $FF
    cp $FF                                        ; $5846: $FE $FF
    cp $FF                                        ; $5848: $FE $FF
    cp $FF                                        ; $584A: $FE $FF
    cp $FF                                        ; $584C: $FE $FF
    cp $FF                                        ; $584E: $FE $FF
    rst $38                                       ; $5850: $FF
    nop                                           ; $5851: $00
    rst $38                                       ; $5852: $FF
    nop                                           ; $5853: $00
    rst $38                                       ; $5854: $FF
    nop                                           ; $5855: $00
    rst $38                                       ; $5856: $FF
    nop                                           ; $5857: $00
    rst $38                                       ; $5858: $FF
    nop                                           ; $5859: $00
    rst $38                                       ; $585A: $FF
    rra                                           ; $585B: $1F
    ldh [$3F], a                                  ; $585C: $E0 $3F
    ret nz                                        ; $585E: $C0

    ld a, a                                       ; $585F: $7F
    rst $38                                       ; $5860: $FF
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $FF
    nop                                           ; $5863: $00
    rst $38                                       ; $5864: $FF
    nop                                           ; $5865: $00
    rst $38                                       ; $5866: $FF
    nop                                           ; $5867: $00
    rst $38                                       ; $5868: $FF
    nop                                           ; $5869: $00
    rst $38                                       ; $586A: $FF
    ldh a, [rIF]                                  ; $586B: $F0 $0F
    ld sp, hl                                     ; $586D: $F9
    ld b, $FF                                     ; $586E: $06 $FF
    inc b                                         ; $5870: $04
    inc bc                                        ; $5871: $03

jr_055_5872:
    inc bc                                        ; $5872: $03
    ld hl, sp+$70                                 ; $5873: $F8 $70
    adc h                                         ; $5875: $8C
    add hl, bc                                    ; $5876: $09
    inc b                                         ; $5877: $04
    ld h, b                                       ; $5878: $60
    nop                                           ; $5879: $00
    ld hl, $C8C0                                  ; $587A: $21 $C0 $C8
    dec b                                         ; $587D: $05
    jr jr_055_5885                                ; $587E: $18 $05

    jr jr_055_5887                                ; $5880: $18 $05

    ld [$0905], sp                                ; $5882: $08 $05 $09

jr_055_5885:
    nop                                           ; $5885: $00
    ld b, b                                       ; $5886: $40

jr_055_5887:
    nop                                           ; $5887: $00
    add hl, bc                                    ; $5888: $09
    nop                                           ; $5889: $00
    jr nc, jr_055_5898                            ; $588A: $30 $0C

    inc bc                                        ; $588C: $03
    jr c, jr_055_5895                             ; $588D: $38 $06

    nop                                           ; $588F: $00
    sub b                                         ; $5890: $90
    ld h, b                                       ; $5891: $60
    sub b                                         ; $5892: $90
    ld h, b                                       ; $5893: $60
    sub b                                         ; $5894: $90

jr_055_5895:
    ld h, b                                       ; $5895: $60
    sub b                                         ; $5896: $90
    ld h, b                                       ; $5897: $60

jr_055_5898:
    sub b                                         ; $5898: $90
    ld h, b                                       ; $5899: $60
    sub b                                         ; $589A: $90
    ld h, b                                       ; $589B: $60
    ret nc                                        ; $589C: $D0

    jr nz, jr_055_5872                            ; $589D: $20 $D3

    jr nz, jr_055_58DC                            ; $589F: $20 $3B

    nop                                           ; $58A1: $00
    ld l, a                                       ; $58A2: $6F
    db $10                                        ; $58A3: $10
    ccf                                           ; $58A4: $3F
    nop                                           ; $58A5: $00
    ld l, a                                       ; $58A6: $6F
    db $10                                        ; $58A7: $10
    ld c, d                                       ; $58A8: $4A
    inc [hl]                                      ; $58A9: $34
    dec d                                         ; $58AA: $15
    ld l, d                                       ; $58AB: $6A
    sbc b                                         ; $58AC: $98
    ld h, a                                       ; $58AD: $67
    db $10                                        ; $58AE: $10
    rst $28                                       ; $58AF: $EF
    adc c                                         ; $58B0: $89
    nop                                           ; $58B1: $00
    add l                                         ; $58B2: $85
    nop                                           ; $58B3: $00
    ld de, $0100                                  ; $58B4: $11 $00 $01
    nop                                           ; $58B7: $00
    ld [bc], a                                    ; $58B8: $02
    ld bc, $0003                                  ; $58B9: $01 $03 $00
    add [hl]                                      ; $58BC: $86
    ld bc, $8007                                  ; $58BD: $01 $07 $80
    halt                                          ; $58C0: $76
    add b                                         ; $58C1: $80
    or [hl]                                       ; $58C2: $B6

jr_055_58C3:
    ld b, b                                       ; $58C3: $40
    halt                                          ; $58C4: $76
    add b                                         ; $58C5: $80
    halt                                          ; $58C6: $76
    add b                                         ; $58C7: $80
    or [hl]                                       ; $58C8: $B6
    ld b, b                                       ; $58C9: $40
    ld a, [hl]                                    ; $58CA: $7E
    add b                                         ; $58CB: $80
    sbc $20                                       ; $58CC: $DE $20
    xor [hl]                                      ; $58CE: $AE
    ld d, b                                       ; $58CF: $50
    ld d, d                                       ; $58D0: $52
    ld [$0009], sp                                ; $58D1: $08 $09 $00
    ld b, d                                       ; $58D4: $42
    ld bc, $0112                                  ; $58D5: $01 $12 $01
    ld e, d                                       ; $58D8: $5A
    ld bc, $0813                                  ; $58D9: $01 $13 $08

jr_055_58DC:
    ld b, l                                       ; $58DC: $45
    ld [rRAMG], sp                                ; $58DD: $08 $00 $00
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    ld a, [hl+]                                   ; $58E2: $2A
    ld d, l                                       ; $58E3: $55
    ld b, b                                       ; $58E4: $40
    ld a, a                                       ; $58E5: $7F
    ld b, a                                       ; $58E6: $47
    ld a, a                                       ; $58E7: $7F
    ld c, e                                       ; $58E8: $4B
    ld [hl], a                                    ; $58E9: $77
    ld b, b                                       ; $58EA: $40
    ld [hl], a                                    ; $58EB: $77
    ld h, b                                       ; $58EC: $60
    ld [hl], a                                    ; $58ED: $77
    ld h, [hl]                                    ; $58EE: $66
    rla                                           ; $58EF: $17
    nop                                           ; $58F0: $00
    nop                                           ; $58F1: $00
    jr nz, jr_055_58C3                            ; $58F2: $20 $CF

    nop                                           ; $58F4: $00
    rst $28                                       ; $58F5: $EF
    rst $28                                       ; $58F6: $EF
    rst $00                                       ; $58F7: $C7
    rst $08                                       ; $58F8: $CF
    adc a                                         ; $58F9: $8F
    ld [hl+], a                                   ; $58FA: $22
    rst $00                                       ; $58FB: $C7
    ld bc, $00F3                                  ; $58FC: $01 $F3 $00
    ei                                            ; $58FF: $FB
    inc d                                         ; $5900: $14
    ld a, a                                       ; $5901: $7F
    ld a, [de]                                    ; $5902: $1A
    ccf                                           ; $5903: $3F
    dec a                                         ; $5904: $3D
    ccf                                           ; $5905: $3F
    ld a, [de]                                    ; $5906: $1A
    rra                                           ; $5907: $1F
    dec c                                         ; $5908: $0D
    rrca                                          ; $5909: $0F
    ld b, $07                                     ; $590A: $06 $07
    inc bc                                        ; $590C: $03
    inc bc                                        ; $590D: $03
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    cpl                                           ; $5910: $2F
    rst $38                                       ; $5911: $FF
    ccf                                           ; $5912: $3F
    ld a, a                                       ; $5913: $7F
    rra                                           ; $5914: $1F
    ld a, a                                       ; $5915: $7F
    rrca                                          ; $5916: $0F
    ld l, a                                       ; $5917: $6F
    rla                                           ; $5918: $17
    scf                                           ; $5919: $37
    rrca                                          ; $591A: $0F
    cpl                                           ; $591B: $2F
    rla                                           ; $591C: $17
    scf                                           ; $591D: $37
    rrca                                          ; $591E: $0F
    cpl                                           ; $591F: $2F
    ldh [rIE], a                                  ; $5920: $E0 $FF
    ret nc                                        ; $5922: $D0

    rst $38                                       ; $5923: $FF
    add sp, -$01                                  ; $5924: $E8 $FF
    ldh a, [rIE]                                  ; $5926: $F0 $FF
    ld hl, sp-$01                                 ; $5928: $F8 $FF
    ld hl, sp-$01                                 ; $592A: $F8 $FF
    db $FC                                        ; $592C: $FC
    rst $38                                       ; $592D: $FF
    db $FC                                        ; $592E: $FC
    rst $38                                       ; $592F: $FF
    rra                                           ; $5930: $1F
    rst $18                                       ; $5931: $DF
    ld l, a                                       ; $5932: $6F
    rst $28                                       ; $5933: $EF
    ld e, a                                       ; $5934: $5F
    rst $18                                       ; $5935: $DF
    cpl                                           ; $5936: $2F
    xor a                                         ; $5937: $AF
    ld e, a                                       ; $5938: $5F
    rst $18                                       ; $5939: $DF
    cpl                                           ; $593A: $2F
    xor a                                         ; $593B: $AF
    rrca                                          ; $593C: $0F
    ld c, a                                       ; $593D: $4F
    and a                                         ; $593E: $A7
    ld h, a                                       ; $593F: $67
    cp $00                                        ; $5940: $FE $00
    ld a, [$FE04]                                 ; $5942: $FA $04 $FE
    nop                                           ; $5945: $00
    ld a, [$FC04]                                 ; $5946: $FA $04 $FC
    ld [bc], a                                    ; $5949: $02
    ld a, [$FC04]                                 ; $594A: $FA $04 $FC

jr_055_594D:
    ld [bc], a                                    ; $594D: $02
    ld a, [$9004]                                 ; $594E: $FA $04 $90
    nop                                           ; $5951: $00
    or b                                          ; $5952: $B0
    nop                                           ; $5953: $00
    or h                                          ; $5954: $B4
    nop                                           ; $5955: $00
    sbc $20                                       ; $5956: $DE $20
    sbc $20                                       ; $5958: $DE $20
    call c, $9820                                 ; $595A: $DC $20 $98
    ld h, b                                       ; $595D: $60
    sub b                                         ; $595E: $90
    ld h, b                                       ; $595F: $60
    ld [hl], c                                    ; $5960: $71
    nop                                           ; $5961: $00
    ret c                                         ; $5962: $D8

    jr nz, jr_055_594D                            ; $5963: $20 $E8

    db $10                                        ; $5965: $10
    call nc, $EC28                                ; $5966: $D4 $28 $EC
    db $10                                        ; $5969: $10
    db $E4                                        ; $596A: $E4
    nop                                           ; $596B: $00
    ld b, d                                       ; $596C: $42
    nop                                           ; $596D: $00
    ld bc, $4000                                  ; $596E: $01 $00 $40
    rst $38                                       ; $5971: $FF
    add e                                         ; $5972: $83
    rst $38                                       ; $5973: $FF
    ld c, a                                       ; $5974: $4F
    rst $38                                       ; $5975: $FF
    rra                                           ; $5976: $1F
    rst $38                                       ; $5977: $FF
    rra                                           ; $5978: $1F
    rst $38                                       ; $5979: $FF
    rrca                                          ; $597A: $0F
    rst $38                                       ; $597B: $FF
    ld c, $FF                                     ; $597C: $0E $FF
    inc d                                         ; $597E: $14
    rst $38                                       ; $597F: $FF
    nop                                           ; $5980: $00
    rst $38                                       ; $5981: $FF
    add d                                         ; $5982: $82
    rst $38                                       ; $5983: $FF
    jp nz, $C6FF                                  ; $5984: $C2 $FF $C6

    rst $38                                       ; $5987: $FF
    and $FF                                       ; $5988: $E6 $FF
    ld d, $FF                                     ; $598A: $16 $FF
    ld h, [hl]                                    ; $598C: $66
    rst $38                                       ; $598D: $FF
    or $FF                                        ; $598E: $F6 $FF
    sbc e                                         ; $5990: $9B
    ld h, a                                       ; $5991: $67
    rst $08                                       ; $5992: $CF
    ccf                                           ; $5993: $3F
    db $D3                                        ; $5994: $D3
    jr z, @-$6C                                   ; $5995: $28 $92

    ld l, c                                       ; $5997: $69
    or d                                          ; $5998: $B2
    add hl, bc                                    ; $5999: $09
    ld d, d                                       ; $599A: $52
    add hl, bc                                    ; $599B: $09
    ld de, $5208                                  ; $599C: $11 $08 $52
    ld [$F5CA], sp                                ; $599F: $08 $CA $F5
    push hl                                       ; $59A2: $E5
    ld a, [$FD3A]                                 ; $59A3: $FA $3A $FD
    ld l, l                                       ; $59A6: $6D
    ld e, $06                                     ; $59A7: $1E $06
    rrca                                          ; $59A9: $0F
    ld [hl], e                                    ; $59AA: $73
    adc a                                         ; $59AB: $8F
    inc bc                                        ; $59AC: $03
    ld hl, sp+$04                                 ; $59AD: $F8 $04
    inc bc                                        ; $59AF: $03
    add h                                         ; $59B0: $84
    nop                                           ; $59B1: $00
    add c                                         ; $59B2: $81
    nop                                           ; $59B3: $00
    add a                                         ; $59B4: $87
    nop                                           ; $59B5: $00
    adc [hl]                                      ; $59B6: $8E
    ld bc, $02DD                                  ; $59B7: $01 $DD $02
    cp d                                          ; $59BA: $BA
    push bc                                       ; $59BB: $C5
    ld [hl], b                                    ; $59BC: $70
    rst $38                                       ; $59BD: $FF
    ld [bc], a                                    ; $59BE: $02
    rst $38                                       ; $59BF: $FF
    ld l, $00                                     ; $59C0: $2E $00
    or $08                                        ; $59C2: $F6 $08
    ld c, $F0                                     ; $59C4: $0E $F0
    ld e, [hl]                                    ; $59C6: $5E
    and b                                         ; $59C7: $A0
    cp $00                                        ; $59C8: $FE $00
    or [hl]                                       ; $59CA: $B6
    ld b, b                                       ; $59CB: $40
    ld e, [hl]                                    ; $59CC: $5E
    and b                                         ; $59CD: $A0
    ld a, [c]                                     ; $59CE: $F2
    db $FC                                        ; $59CF: $FC
    ld h, e                                       ; $59D0: $63
    nop                                           ; $59D1: $00
    dec [hl]                                      ; $59D2: $35
    ld b, b                                       ; $59D3: $40
    ld l, a                                       ; $59D4: $6F
    db $10                                        ; $59D5: $10
    ld [hl+], a                                   ; $59D6: $22
    ld e, l                                       ; $59D7: $5D
    ld [hl], b                                    ; $59D8: $70
    rrca                                          ; $59D9: $0F
    cpl                                           ; $59DA: $2F
    ld d, b                                       ; $59DB: $50
    ld e, l                                       ; $59DC: $5D
    ld [bc], a                                    ; $59DD: $02
    cpl                                           ; $59DE: $2F
    nop                                           ; $59DF: $00
    inc de                                        ; $59E0: $13
    rlca                                          ; $59E1: $07
    ld b, b                                       ; $59E2: $40
    ld h, b                                       ; $59E3: $60
    ld b, d                                       ; $59E4: $42
    ld [hl], c                                    ; $59E5: $71
    ld b, b                                       ; $59E6: $40
    ld [hl], a                                    ; $59E7: $77
    ld b, b                                       ; $59E8: $40
    ld [hl], a                                    ; $59E9: $77
    ld b, b                                       ; $59EA: $40
    ld [hl], a                                    ; $59EB: $77
    ld b, h                                       ; $59EC: $44
    ld [hl], e                                    ; $59ED: $73
    ld b, d                                       ; $59EE: $42
    ld [hl], l                                    ; $59EF: $75
    ldh a, [$FD]                                  ; $59F0: $F0 $FD
    dec c                                         ; $59F2: $0D
    dec e                                         ; $59F3: $1D
    inc c                                         ; $59F4: $0C
    adc c                                         ; $59F5: $89
    jr nz, @-$3E                                  ; $59F6: $20 $C0

    nop                                           ; $59F8: $00
    db $D3                                        ; $59F9: $D3
    db $10                                        ; $59FA: $10
    ret nz                                        ; $59FB: $C0

    ld de, $02C0                                  ; $59FC: $11 $C0 $02
    pop bc                                        ; $59FF: $C1
    db $F4                                        ; $5A00: $F4
    inc bc                                        ; $5A01: $03
    dec c                                         ; $5A02: $0D
    di                                            ; $5A03: $F3
    push af                                       ; $5A04: $F5
    ei                                            ; $5A05: $FB
    dec a                                         ; $5A06: $3D
    ei                                            ; $5A07: $FB
    sbc $39                                       ; $5A08: $DE $39
    dec hl                                        ; $5A0A: $2B
    inc e                                         ; $5A0B: $1C
    ld d, h                                       ; $5A0C: $54
    ld c, $95                                     ; $5A0D: $0E $95
    ld c, $0F                                     ; $5A0F: $0E $0F
    ldh a, [rNR23]                                ; $5A11: $F0 $18
    rst $20                                       ; $5A13: $E7
    db $10                                        ; $5A14: $10
    rst $28                                       ; $5A15: $EF
    sub b                                         ; $5A16: $90

jr_055_5A17:
    rst $28                                       ; $5A17: $EF
    ret nz                                        ; $5A18: $C0

    rst $38                                       ; $5A19: $FF
    ld [hl-], a                                   ; $5A1A: $32
    rst $38                                       ; $5A1B: $FF
    call Call_055_733F                            ; $5A1C: $CD $3F $73
    rrca                                          ; $5A1F: $0F
    rst $38                                       ; $5A20: $FF
    nop                                           ; $5A21: $00
    rra                                           ; $5A22: $1F
    rst $38                                       ; $5A23: $FF
    ccf                                           ; $5A24: $3F
    rst $38                                       ; $5A25: $FF
    ld a, a                                       ; $5A26: $7F
    rst $38                                       ; $5A27: $FF
    ld a, a                                       ; $5A28: $7F
    rst $38                                       ; $5A29: $FF
    cp a                                          ; $5A2A: $BF
    rst $38                                       ; $5A2B: $FF
    ld c, a                                       ; $5A2C: $4F
    rst $38                                       ; $5A2D: $FF
    ldh [rIE], a                                  ; $5A2E: $E0 $FF
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    ldh a, [rP1]                                  ; $5A32: $F0 $00
    add b                                         ; $5A34: $80
    ld a, a                                       ; $5A35: $7F
    rrca                                          ; $5A36: $0F
    rst $38                                       ; $5A37: $FF
    ret nz                                        ; $5A38: $C0

    ccf                                           ; $5A39: $3F
    cp b                                          ; $5A3A: $B8
    ld b, a                                       ; $5A3B: $47
    adc $31                                       ; $5A3C: $CE $31
    rst $38                                       ; $5A3E: $FF
    nop                                           ; $5A3F: $00
    or [hl]                                       ; $5A40: $B6
    ld h, e                                       ; $5A41: $63
    rlca                                          ; $5A42: $07
    inc bc                                        ; $5A43: $03
    ret nz                                        ; $5A44: $C0

    nop                                           ; $5A45: $00
    add b                                         ; $5A46: $80
    db $FC                                        ; $5A47: $FC
    ei                                            ; $5A48: $FB
    ei                                            ; $5A49: $FB
    dec sp                                        ; $5A4A: $3B
    ei                                            ; $5A4B: $FB
    ld bc, $F8FB                                  ; $5A4C: $01 $FB $F8
    dec b                                         ; $5A4F: $05
    inc h                                         ; $5A50: $24

jr_055_5A51:
    jp $8146                                      ; $5A51: $C3 $46 $81


    ld bc, $FC00                                  ; $5A54: $01 $00 $FC
    nop                                           ; $5A57: $00
    rrca                                          ; $5A58: $0F
    ldh a, [$E0]                                  ; $5A59: $F0 $E0
    rst $38                                       ; $5A5B: $FF
    ld sp, hl                                     ; $5A5C: $F9
    cp $07                                        ; $5A5D: $FE $07
    ld hl, sp-$3B                                 ; $5A5F: $F8 $C5
    jr c, @+$1D                                   ; $5A61: $38 $1B

    ldh [$E2], a                                  ; $5A63: $E0 $E2
    nop                                           ; $5A65: $00
    ld bc, $CB00                                  ; $5A66: $01 $00 $CB
    rlca                                          ; $5A69: $07
    sub b                                         ; $5A6A: $90
    rrca                                          ; $5A6B: $0F
    and a                                         ; $5A6C: $A7
    jr jr_055_5ACE                                ; $5A6D: $18 $5F

    jr nz, jr_055_5A51                            ; $5A6F: $20 $E0

    nop                                           ; $5A71: $00
    jr c, @-$0E                                   ; $5A72: $38 $F0

    add hl, sp                                    ; $5A74: $39
    ld c, $C6                                     ; $5A75: $0E $C6
    ld bc, $F0E9                                  ; $5A77: $01 $E9 $F0
    ld a, [hl-]                                   ; $5A7A: $3A
    db $FC                                        ; $5A7B: $FC
    call $F23E                                    ; $5A7C: $CD $3E $F2
    rrca                                          ; $5A7F: $0F
    add hl, sp                                    ; $5A80: $39
    ld e, $6C                                     ; $5A81: $1E $6C
    jr nc, jr_055_5A17                            ; $5A83: $30 $92

    ld h, c                                       ; $5A85: $61
    ld c, e                                       ; $5A86: $4B
    add a                                         ; $5A87: $87
    xor h                                         ; $5A88: $AC
    rra                                           ; $5A89: $1F
    ld d, c                                       ; $5A8A: $51
    ld a, $AE                                     ; $5A8B: $3E $AE
    ld [hl], b                                    ; $5A8D: $70
    ld e, h                                       ; $5A8E: $5C
    ldh [$A0], a                                  ; $5A8F: $E0 $A0
    inc e                                         ; $5A91: $1C
    nop                                           ; $5A92: $00
    ld bc, $C023                                  ; $5A93: $01 $23 $C0
    add sp, -$10                                  ; $5A96: $E8 $F0
    dec b                                         ; $5A98: $05
    ld hl, sp-$06                                 ; $5A99: $F8 $FA
    inc b                                         ; $5A9B: $04
    ld c, $00                                     ; $5A9C: $0E $00
    ld bc, $0000                                  ; $5A9E: $01 $00 $00
    nop                                           ; $5AA1: $00
    ld a, [hl+]                                   ; $5AA2: $2A
    ld d, l                                       ; $5AA3: $55
    ld b, b                                       ; $5AA4: $40
    ld a, a                                       ; $5AA5: $7F
    ld b, a                                       ; $5AA6: $47
    ld a, a                                       ; $5AA7: $7F
    ld c, e                                       ; $5AA8: $4B
    ld [hl], a                                    ; $5AA9: $77
    ld b, b                                       ; $5AAA: $40
    ld [hl], a                                    ; $5AAB: $77
    ld b, b                                       ; $5AAC: $40
    ld [hl], a                                    ; $5AAD: $77
    ld b, b                                       ; $5AAE: $40
    ld [hl], a                                    ; $5AAF: $77
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    rst $38                                       ; $5AB3: $FF
    nop                                           ; $5AB4: $00
    rst $38                                       ; $5AB5: $FF
    rst $38                                       ; $5AB6: $FF
    rst $38                                       ; $5AB7: $FF
    rst $38                                       ; $5AB8: $FF
    rst $38                                       ; $5AB9: $FF
    nop                                           ; $5ABA: $00
    rst $38                                       ; $5ABB: $FF
    nop                                           ; $5ABC: $00
    rst $38                                       ; $5ABD: $FF
    nop                                           ; $5ABE: $00
    rst $38                                       ; $5ABF: $FF
    ld b, $01                                     ; $5AC0: $06 $01
    rlca                                          ; $5AC2: $07
    nop                                           ; $5AC3: $00
    inc bc                                        ; $5AC4: $03
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    ld bc, $0300                                  ; $5ACA: $01 $00 $03
    nop                                           ; $5ACD: $00

jr_055_5ACE:
    ld b, $01                                     ; $5ACE: $06 $01
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    add b                                         ; $5AD4: $80
    nop                                           ; $5AD5: $00
    ld h, b                                       ; $5AD6: $60
    add b                                         ; $5AD7: $80
    or b                                          ; $5AD8: $B0
    ld b, b                                       ; $5AD9: $40
    ld e, e                                       ; $5ADA: $5B
    and b                                         ; $5ADB: $A0
    or $01                                        ; $5ADC: $F6 $01
    call z, $0003                                 ; $5ADE: $CC $03 $00
    nop                                           ; $5AE1: $00
    rlca                                          ; $5AE2: $07
    nop                                           ; $5AE3: $00
    inc e                                         ; $5AE4: $1C
    inc bc                                        ; $5AE5: $03
    ld [hl], e                                    ; $5AE6: $73
    rrca                                          ; $5AE7: $0F
    rst $08                                       ; $5AE8: $CF
    ccf                                           ; $5AE9: $3F
    sbc b                                         ; $5AEA: $98
    ld a, a                                       ; $5AEB: $7F
    daa                                           ; $5AEC: $27
    rst $38                                       ; $5AED: $FF
    ld e, a                                       ; $5AEE: $5F
    rst $38                                       ; $5AEF: $FF
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    ccf                                           ; $5AF2: $3F
    nop                                           ; $5AF3: $00
    ld hl, sp+$07                                 ; $5AF4: $F8 $07
    rst $08                                       ; $5AF6: $CF
    ccf                                           ; $5AF7: $3F
    ld bc, $FCFF                                  ; $5AF8: $01 $FF $FC
    inc bc                                        ; $5AFB: $03
    add b                                         ; $5AFC: $80
    ld a, a                                       ; $5AFD: $7F
    ld a, a                                       ; $5AFE: $7F
    rst $38                                       ; $5AFF: $FF
    sub l                                         ; $5B00: $95
    ld c, $91                                     ; $5B01: $0E $91
    ld c, $A3                                     ; $5B03: $0E $A3
    inc e                                         ; $5B05: $1C
    rst $38                                       ; $5B06: $FF
    nop                                           ; $5B07: $00
    ld b, d                                       ; $5B08: $42
    add b                                         ; $5B09: $80
    and l                                         ; $5B0A: $A5
    jr jr_055_5B67                                ; $5B0B: $18 $5A

    inc a                                         ; $5B0D: $3C
    ld e, a                                       ; $5B0E: $5F
    inc a                                         ; $5B0F: $3C
    xor a                                         ; $5B10: $AF
    nop                                           ; $5B11: $00
    add b                                         ; $5B12: $80
    nop                                           ; $5B13: $00
    add e                                         ; $5B14: $83
    nop                                           ; $5B15: $00
    ld c, [hl]                                    ; $5B16: $4E
    ld bc, $0798                                  ; $5B17: $01 $98 $07
    inc sp                                        ; $5B1A: $33
    rrca                                          ; $5B1B: $0F
    ld h, l                                       ; $5B1C: $65
    rra                                           ; $5B1D: $1F
    ld c, e                                       ; $5B1E: $4B
    ccf                                           ; $5B1F: $3F
    rst $38                                       ; $5B20: $FF
    nop                                           ; $5B21: $00
    ld hl, sp+$07                                 ; $5B22: $F8 $07
    add a                                         ; $5B24: $87
    ld a, a                                       ; $5B25: $7F
    ccf                                           ; $5B26: $3F
    rst $38                                       ; $5B27: $FF
    rst $18                                       ; $5B28: $DF
    rst $38                                       ; $5B29: $FF
    ld a, a                                       ; $5B2A: $7F
    rst $38                                       ; $5B2B: $FF
    rst $30                                       ; $5B2C: $F7
    ld hl, sp-$22                                 ; $5B2D: $F8 $DE
    ldh [rP1], a                                  ; $5B2F: $E0 $00
    nop                                           ; $5B31: $00
    rst $38                                       ; $5B32: $FF
    nop                                           ; $5B33: $00
    xor d                                         ; $5B34: $AA
    ld d, l                                       ; $5B35: $55
    nop                                           ; $5B36: $00
    rst $38                                       ; $5B37: $FF
    ldh a, [rIF]                                  ; $5B38: $F0 $0F
    rst $38                                       ; $5B3A: $FF
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    nop                                           ; $5B40: $00
    nop                                           ; $5B41: $00

jr_055_5B42:
    ldh [rP1], a                                  ; $5B42: $E0 $00
    and a                                         ; $5B44: $A7
    ld b, b                                       ; $5B45: $40
    nop                                           ; $5B46: $00
    rlc c                                         ; $5B47: $CB $01
    db $DD                                        ; $5B49: $DD
    ret nc                                        ; $5B4A: $D0

    inc c                                         ; $5B4B: $0C
    sbc $00                                       ; $5B4C: $DE $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    db $FC                                        ; $5B50: $FC
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    rst $38                                       ; $5B54: $FF
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    rst $38                                       ; $5B57: $FF
    ld a, a                                       ; $5B58: $7F
    rst $38                                       ; $5B59: $FF
    nop                                           ; $5B5A: $00
    rst $38                                       ; $5B5B: $FF
    rst $38                                       ; $5B5C: $FF
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    ld [hl], b                                    ; $5B60: $70
    nop                                           ; $5B61: $00
    ld h, b                                       ; $5B62: $60
    nop                                           ; $5B63: $00
    add b                                         ; $5B64: $80
    nop                                           ; $5B65: $00
    rst $38                                       ; $5B66: $FF

jr_055_5B67:
    nop                                           ; $5B67: $00
    ld hl, sp-$01                                 ; $5B68: $F8 $FF
    rlca                                          ; $5B6A: $07
    rst $38                                       ; $5B6B: $FF
    ret nz                                        ; $5B6C: $C0

    ccf                                           ; $5B6D: $3F
    ld a, a                                       ; $5B6E: $7F
    nop                                           ; $5B6F: $00
    inc a                                         ; $5B70: $3C
    inc bc                                        ; $5B71: $03
    rlca                                          ; $5B72: $07
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    rst $38                                       ; $5B76: $FF
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    rst $38                                       ; $5B79: $FF
    rst $38                                       ; $5B7A: $FF
    rst $38                                       ; $5B7B: $FF
    nop                                           ; $5B7C: $00
    rst $38                                       ; $5B7D: $FF
    rst $38                                       ; $5B7E: $FF
    nop                                           ; $5B7F: $00
    jr nc, jr_055_5B42                            ; $5B80: $30 $C0

    ld bc, $FE00                                  ; $5B82: $01 $00 $FE
    ld bc, $7F80                                  ; $5B85: $01 $80 $7F
    rst $38                                       ; $5B88: $FF
    rst $38                                       ; $5B89: $FF
    ld bc, $FEFE                                  ; $5B8A: $01 $FE $FE
    nop                                           ; $5B8D: $00
    nop                                           ; $5B8E: $00
    nop                                           ; $5B8F: $00

jr_055_5B90:
    ld e, $01                                     ; $5B90: $1E $01
    ldh a, [rIF]                                  ; $5B92: $F0 $0F
    rrca                                          ; $5B94: $0F
    rst $38                                       ; $5B95: $FF
    ldh a, [rIE]                                  ; $5B96: $F0 $FF
    rrca                                          ; $5B98: $0F
    ldh a, [$F0]                                  ; $5B99: $F0 $F0
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ld b, b                                       ; $5BA0: $40
    ld [hl], a                                    ; $5BA1: $77
    ld b, b                                       ; $5BA2: $40

jr_055_5BA3:
    ld [hl], a                                    ; $5BA3: $77
    ld b, b                                       ; $5BA4: $40
    ld [hl], a                                    ; $5BA5: $77
    ld b, b                                       ; $5BA6: $40
    ld [hl], a                                    ; $5BA7: $77
    ld b, b                                       ; $5BA8: $40
    ld [hl], a                                    ; $5BA9: $77
    ld b, b                                       ; $5BAA: $40
    ld [hl], a                                    ; $5BAB: $77
    ld b, h                                       ; $5BAC: $44
    ld [hl], e                                    ; $5BAD: $73
    ld b, d                                       ; $5BAE: $42
    ld [hl], l                                    ; $5BAF: $75
    nop                                           ; $5BB0: $00
    rst $38                                       ; $5BB1: $FF
    rrca                                          ; $5BB2: $0F
    rst $38                                       ; $5BB3: $FF
    jr @+$01                                      ; $5BB4: $18 $FF

    jr nc, jr_055_5B90                            ; $5BB6: $30 $D8

    nop                                           ; $5BB8: $00
    rst $10                                       ; $5BB9: $D7
    db $10                                        ; $5BBA: $10
    ret z                                         ; $5BBB: $C8

    ld de, $02C0                                  ; $5BBC: $11 $C0 $02
    pop bc                                        ; $5BBF: $C1
    and b                                         ; $5BC0: $A0
    ld b, b                                       ; $5BC1: $40
    ret nz                                        ; $5BC2: $C0

    nop                                           ; $5BC3: $00
    add a                                         ; $5BC4: $87
    nop                                           ; $5BC5: $00
    inc a                                         ; $5BC6: $3C
    inc bc                                        ; $5BC7: $03
    db $E3                                        ; $5BC8: $E3
    inc e                                         ; $5BC9: $1C
    sbc b                                         ; $5BCA: $98
    ld h, a                                       ; $5BCB: $67
    ld b, c                                       ; $5BCC: $41
    cp [hl]                                       ; $5BCD: $BE
    rlca                                          ; $5BCE: $07
    ld hl, sp+$3A                                 ; $5BCF: $F8 $3A
    dec b                                         ; $5BD1: $05
    push hl                                       ; $5BD2: $E5
    dec de                                        ; $5BD3: $1B
    sbc d                                         ; $5BD4: $9A
    ld h, a                                       ; $5BD5: $67
    ld [hl], l                                    ; $5BD6: $75
    adc a                                         ; $5BD7: $8F
    ld [$FD1F], a                                 ; $5BD8: $EA $1F $FD
    inc bc                                        ; $5BDB: $03
    xor e                                         ; $5BDC: $AB
    ld a, h                                       ; $5BDD: $7C
    ld e, [hl]                                    ; $5BDE: $5E
    rst $38                                       ; $5BDF: $FF
    ld hl, sp+$07                                 ; $5BE0: $F8 $07
    pop hl                                        ; $5BE2: $E1
    ld e, $C7                                     ; $5BE3: $1E $C7
    jr c, jr_055_5BA3                             ; $5BE5: $38 $BC

    ld b, b                                       ; $5BE7: $40
    di                                            ; $5BE8: $F3
    nop                                           ; $5BE9: $00
    xor $00                                       ; $5BEA: $EE $00
    ret c                                         ; $5BEC: $D8

    nop                                           ; $5BED: $00
    ld de, $0000                                  ; $5BEE: $11 $00 $00
    rst $38                                       ; $5BF1: $FF
    rst $38                                       ; $5BF2: $FF
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    ld b, b                                       ; $5BF6: $40
    ccf                                           ; $5BF7: $3F
    adc a                                         ; $5BF8: $8F
    ld a, a                                       ; $5BF9: $7F
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    swap b                                        ; $5BFC: $CB $30
    sub h                                         ; $5BFE: $94
    ld h, e                                       ; $5BFF: $63
    ld e, l                                       ; $5C00: $5D
    ld a, $49                                     ; $5C01: $3E $49
    ld a, $50                                     ; $5C03: $3E $50
    ccf                                           ; $5C05: $3F
    ld a, [hl+]                                   ; $5C06: $2A
    dec e                                         ; $5C07: $1D
    inc d                                         ; $5C08: $14
    dec bc                                        ; $5C09: $0B
    dec c                                         ; $5C0A: $0D
    inc bc                                        ; $5C0B: $03
    add hl, de                                    ; $5C0C: $19
    rlca                                          ; $5C0D: $07
    dec de                                        ; $5C0E: $1B
    rlca                                          ; $5C0F: $07
    sub a                                         ; $5C10: $97
    ld a, a                                       ; $5C11: $7F
    ld a, $FF                                     ; $5C12: $3E $FF
    ld l, l                                       ; $5C14: $6D
    cp $5A                                        ; $5C15: $FE $5A
    db $FC                                        ; $5C17: $FC
    db $F4                                        ; $5C18: $F4
    ld hl, sp-$57                                 ; $5C19: $F8 $A9
    ldh a, [$33]                                  ; $5C1B: $F0 $33
    ldh [rHDMA3], a                               ; $5C1D: $E0 $53
    ldh [$60], a                                  ; $5C1F: $E0 $60
    add b                                         ; $5C21: $80
    add b                                         ; $5C22: $80
    nop                                           ; $5C23: $00
    ld e, $00                                     ; $5C24: $1E $00
    ld a, b                                       ; $5C26: $78
    nop                                           ; $5C27: $00
    ldh [rP1], a                                  ; $5C28: $E0 $00
    ret nz                                        ; $5C2A: $C0

    nop                                           ; $5C2B: $00
    add b                                         ; $5C2C: $80
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    db $FD                                        ; $5C30: $FD
    ld [bc], a                                    ; $5C31: $02
    ld [c], a                                     ; $5C32: $E2
    dec e                                         ; $5C33: $1D
    ret nc                                        ; $5C34: $D0

    cpl                                           ; $5C35: $2F
    and b                                         ; $5C36: $A0
    ld e, a                                       ; $5C37: $5F
    ret nz                                        ; $5C38: $C0

    ccf                                           ; $5C39: $3F
    add b                                         ; $5C3A: $80
    ld a, a                                       ; $5C3B: $7F
    ld b, c                                       ; $5C3C: $41
    ccf                                           ; $5C3D: $3F
    ld b, b                                       ; $5C3E: $40
    ccf                                           ; $5C3F: $3F
    ld a, b                                       ; $5C40: $78
    add a                                         ; $5C41: $87
    or h                                          ; $5C42: $B4
    ld c, e                                       ; $5C43: $4B
    ld a, c                                       ; $5C44: $79
    add a                                         ; $5C45: $87
    xor [hl]                                      ; $5C46: $AE
    jp $C067                                      ; $5C47: $C3 $67 $C0


    ldh [$C0], a                                  ; $5C4A: $E0 $C0
    ld h, b                                       ; $5C4C: $60
    ret nz                                        ; $5C4D: $C0

    ldh [$C0], a                                  ; $5C4E: $E0 $C0
    pop hl                                        ; $5C50: $E1
    ld e, $40                                     ; $5C51: $1E $40
    cp a                                          ; $5C53: $BF
    ld c, e                                       ; $5C54: $4B
    cp [hl]                                       ; $5C55: $BE
    push af                                       ; $5C56: $F5
    ld a, $5B                                     ; $5C57: $3E $5B
    inc a                                         ; $5C59: $3C
    ld h, $18                                     ; $5C5A: $26 $18
    inc e                                         ; $5C5C: $1C
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    rst $38                                       ; $5C60: $FF
    nop                                           ; $5C61: $00
    db $ED                                        ; $5C62: $ED
    ld [de], a                                    ; $5C63: $12
    call nc, Call_055_6A2F                        ; $5C64: $D4 $2F $6A
    rra                                           ; $5C67: $1F
    cpl                                           ; $5C68: $2F
    rra                                           ; $5C69: $1F
    ld d, $0F                                     ; $5C6A: $16 $0F
    add hl, bc                                    ; $5C6C: $09
    ld b, $07                                     ; $5C6D: $06 $07
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    add c                                         ; $5C72: $81
    nop                                           ; $5C73: $00
    add c                                         ; $5C74: $81
    nop                                           ; $5C75: $00
    add c                                         ; $5C76: $81
    nop                                           ; $5C77: $00
    add c                                         ; $5C78: $81
    nop                                           ; $5C79: $00
    add c                                         ; $5C7A: $81
    nop                                           ; $5C7B: $00
    add b                                         ; $5C7C: $80
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    swap h                                        ; $5C80: $CB $34
    add l                                         ; $5C82: $85
    ld a, d                                       ; $5C83: $7A
    add c                                         ; $5C84: $81
    ld a, [hl]                                    ; $5C85: $7E
    xor e                                         ; $5C86: $AB
    ld a, h                                       ; $5C87: $7C
    rst $10                                       ; $5C88: $D7
    ld a, h                                       ; $5C89: $7C
    ei                                            ; $5C8A: $FB
    ld a, h                                       ; $5C8B: $7C
    or $38                                        ; $5C8C: $F6 $38
    ld a, h                                       ; $5C8E: $7C
    nop                                           ; $5C8F: $00
    adc e                                         ; $5C90: $8B
    ld [hl], h                                    ; $5C91: $74
    rlca                                          ; $5C92: $07
    ld hl, sp+$23                                 ; $5C93: $F8 $23
    db $FC                                        ; $5C95: $FC
    ld d, [hl]                                    ; $5C96: $56
    ld hl, sp-$0C                                 ; $5C97: $F8 $F4
    ld hl, sp+$68                                 ; $5C99: $F8 $68
    ldh a, [$90]                                  ; $5C9B: $F0 $90
    ld h, b                                       ; $5C9D: $60
    ld h, b                                       ; $5C9E: $60
    nop                                           ; $5C9F: $00
    ld b, h                                       ; $5CA0: $44
    ld [hl], e                                    ; $5CA1: $73
    ld b, d                                       ; $5CA2: $42
    ld [hl], l                                    ; $5CA3: $75
    ld b, l                                       ; $5CA4: $45
    ld [hl], d                                    ; $5CA5: $72
    ld b, a                                       ; $5CA6: $47
    ld [hl], b                                    ; $5CA7: $70
    ld b, b                                       ; $5CA8: $40
    ld [hl], b                                    ; $5CA9: $70
    ld b, b                                       ; $5CAA: $40
    ld a, a                                       ; $5CAB: $7F
    ld b, b                                       ; $5CAC: $40
    ld a, a                                       ; $5CAD: $7F
    ld a, a                                       ; $5CAE: $7F
    ld a, a                                       ; $5CAF: $7F
    inc hl                                        ; $5CB0: $23
    ret nz                                        ; $5CB1: $C0

    sub b                                         ; $5CB2: $90
    ld h, b                                       ; $5CB3: $60
    ld b, b                                       ; $5CB4: $40
    cp a                                          ; $5CB5: $BF
    rst $38                                       ; $5CB6: $FF

jr_055_5CB7:
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    rst $38                                       ; $5CBB: $FF
    nop                                           ; $5CBC: $00
    rst $38                                       ; $5CBD: $FF
    rst $38                                       ; $5CBE: $FF
    rst $38                                       ; $5CBF: $FF
    ld c, $00                                     ; $5CC0: $0E $00
    add e                                         ; $5CC2: $83
    nop                                           ; $5CC3: $00
    ld [hl], b                                    ; $5CC4: $70
    add b                                         ; $5CC5: $80
    adc h                                         ; $5CC6: $8C
    ldh a, [$F3]                                  ; $5CC7: $F0 $F3
    db $FC                                        ; $5CC9: $FC
    inc a                                         ; $5CCA: $3C
    rst $38                                       ; $5CCB: $FF
    rlca                                          ; $5CCC: $07
    rst $38                                       ; $5CCD: $FF
    pop bc                                        ; $5CCE: $C1
    rst $38                                       ; $5CCF: $FF
    ld b, $00                                     ; $5CD0: $06 $00
    add $00                                       ; $5CD2: $C6 $00
    sub e                                         ; $5CD4: $93
    ld h, b                                       ; $5CD5: $60
    ld c, c                                       ; $5CD6: $49
    jr nc, jr_055_5CFB                            ; $5CD7: $30 $22

    inc e                                         ; $5CD9: $1C
    adc c                                         ; $5CDA: $89
    ld b, $64                                     ; $5CDB: $06 $64
    add e                                         ; $5CDD: $83
    jp nc, $3CE1                                  ; $5CDE: $D2 $E1 $3C

    inc bc                                        ; $5CE1: $03
    ld [hl], b                                    ; $5CE2: $70
    rrca                                          ; $5CE3: $0F
    inc [hl]                                      ; $5CE4: $34
    rrca                                          ; $5CE5: $0F
    adc e                                         ; $5CE6: $8B
    rlca                                          ; $5CE7: $07
    ld h, h                                       ; $5CE8: $64
    inc bc                                        ; $5CE9: $03
    jr nc, jr_055_5CEC                            ; $5CEA: $30 $00

jr_055_5CEC:
    sbc h                                         ; $5CEC: $9C
    inc bc                                        ; $5CED: $03
    jr z, jr_055_5CB7                             ; $5CEE: $28 $C7

    inc c                                         ; $5CF0: $0C
    add b                                         ; $5CF1: $80
    ld c, $D0                                     ; $5CF2: $0E $D0
    inc l                                         ; $5CF4: $2C
    or b                                          ; $5CF5: $B0
    ld d, c                                       ; $5CF6: $51
    ld h, b                                       ; $5CF7: $60
    ld h, $40                                     ; $5CF8: $26 $40
    inc c                                         ; $5CFA: $0C

jr_055_5CFB:
    nop                                           ; $5CFB: $00
    add hl, sp                                    ; $5CFC: $39
    ret nz                                        ; $5CFD: $C0

    inc d                                         ; $5CFE: $14
    db $E3                                        ; $5CFF: $E3
    inc sp                                        ; $5D00: $33
    rrca                                          ; $5D01: $0F
    ld [hl-], a                                   ; $5D02: $32
    rrca                                          ; $5D03: $0F
    ld h, $1F                                     ; $5D04: $26 $1F
    ld h, [hl]                                    ; $5D06: $66
    rra                                           ; $5D07: $1F
    ld h, [hl]                                    ; $5D08: $66
    rra                                           ; $5D09: $1F
    ld h, h                                       ; $5D0A: $64
    rra                                           ; $5D0B: $1F
    ld l, l                                       ; $5D0C: $6D
    rra                                           ; $5D0D: $1F
    ld l, l                                       ; $5D0E: $6D
    rra                                           ; $5D0F: $1F
    ld h, [hl]                                    ; $5D10: $66
    ret nz                                        ; $5D11: $C0

    ld h, [hl]                                    ; $5D12: $66
    ret nz                                        ; $5D13: $C0

    xor h                                         ; $5D14: $AC
    ret nz                                        ; $5D15: $C0

    ret z                                         ; $5D16: $C8

    add b                                         ; $5D17: $80
    ret z                                         ; $5D18: $C8

    add b                                         ; $5D19: $80
    ret z                                         ; $5D1A: $C8

    add b                                         ; $5D1B: $80
    ld b, b                                       ; $5D1C: $40
    add b                                         ; $5D1D: $80
    add b                                         ; $5D1E: $80
    nop                                           ; $5D1F: $00
    ld hl, $1A1F                                  ; $5D20: $21 $1F $1A
    rrca                                          ; $5D23: $0F
    dec d                                         ; $5D24: $15
    rrca                                          ; $5D25: $0F
    dec bc                                        ; $5D26: $0B
    rlca                                          ; $5D27: $07
    inc b                                         ; $5D28: $04
    inc bc                                        ; $5D29: $03
    inc bc                                        ; $5D2A: $03
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    ld h, b                                       ; $5D30: $60
    ret nz                                        ; $5D31: $C0

    ldh [$C0], a                                  ; $5D32: $E0 $C0
    ldh [$C0], a                                  ; $5D34: $E0 $C0
    and b                                         ; $5D36: $A0
    ret nz                                        ; $5D37: $C0

    ld h, b                                       ; $5D38: $60
    add b                                         ; $5D39: $80
    ret nz                                        ; $5D3A: $C0

    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    ccf                                           ; $5D40: $3F
    ccf                                           ; $5D41: $3F
    ld bc, $0001                                  ; $5D42: $01 $01 $00
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    nop                                           ; $5D4A: $00
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    nop                                           ; $5D4D: $00
    add b                                         ; $5D4E: $80
    nop                                           ; $5D4F: $00
    rst $38                                       ; $5D50: $FF
    rst $38                                       ; $5D51: $FF
    rst $38                                       ; $5D52: $FF
    rst $38                                       ; $5D53: $FF
    rlca                                          ; $5D54: $07
    rlca                                          ; $5D55: $07
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
    rst $38                                       ; $5D62: $FF
    rst $38                                       ; $5D63: $FF
    rst $38                                       ; $5D64: $FF
    rst $38                                       ; $5D65: $FF
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
    inc e                                         ; $5D70: $1C
    rra                                           ; $5D71: $1F
    ldh [rIE], a                                  ; $5D72: $E0 $FF
    nop                                           ; $5D74: $00
    rst $38                                       ; $5D75: $FF
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
    add l                                         ; $5D80: $85
    dec h                                         ; $5D81: $25
    jp nc, wCntDown                                  ; $5D82: $D2 $32 $C9

    add hl, de                                    ; $5D85: $19
    db $E4                                        ; $5D86: $E4
    inc c                                         ; $5D87: $0C
    ld a, [c]                                     ; $5D88: $F2
    ld b, $F9                                     ; $5D89: $06 $F9
    inc bc                                        ; $5D8B: $03

jr_055_5D8C:
    db $FC                                        ; $5D8C: $FC
    ld bc, $00FF                                  ; $5D8D: $01 $FF $00
    db $F4                                        ; $5D90: $F4
    ld a, [bc]                                    ; $5D91: $0A
    xor d                                         ; $5D92: $AA
    ld d, h                                       ; $5D93: $54
    ld d, h                                       ; $5D94: $54
    xor d                                         ; $5D95: $AA
    xor b                                         ; $5D96: $A8
    ld d, [hl]                                    ; $5D97: $56
    ld [bc], a                                    ; $5D98: $02
    db $FC                                        ; $5D99: $FC
    add [hl]                                      ; $5D9A: $86
    ld a, b                                       ; $5D9B: $78
    ld a, h                                       ; $5D9C: $7C
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    ld l, b                                       ; $5DA0: $68
    rst $38                                       ; $5DA1: $FF
    dec d                                         ; $5DA2: $15
    ld [$40BF], a                                 ; $5DA3: $EA $BF $40
    cp a                                          ; $5DA6: $BF
    ld b, b                                       ; $5DA7: $40
    ld a, a                                       ; $5DA8: $7F
    nop                                           ; $5DA9: $00
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    ld sp, $6B00                                  ; $5DAC: $31 $00 $6B
    stop                                          ; $5DAF: $10 $00
    rst $38                                       ; $5DB1: $FF
    rst $38                                       ; $5DB2: $FF
    nop                                           ; $5DB3: $00
    rst $38                                       ; $5DB4: $FF
    nop                                           ; $5DB5: $00
    rst $38                                       ; $5DB6: $FF
    nop                                           ; $5DB7: $00
    rst $38                                       ; $5DB8: $FF
    nop                                           ; $5DB9: $00
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    db $FD                                        ; $5DBC: $FD
    nop                                           ; $5DBD: $00
    ld [bc], a                                    ; $5DBE: $02
    db $FC                                        ; $5DBF: $FC
    ld a, b                                       ; $5DC0: $78
    rst $38                                       ; $5DC1: $FF

jr_055_5DC2:
    ld c, $FF                                     ; $5DC2: $0E $FF
    db $E3                                        ; $5DC4: $E3
    rra                                           ; $5DC5: $1F
    add hl, de                                    ; $5DC6: $19
    rlca                                          ; $5DC7: $07
    ld h, $C1                                     ; $5DC8: $26 $C1
    dec bc                                        ; $5DCA: $0B
    ld [hl], b                                    ; $5DCB: $70
    dec d                                         ; $5DCC: $15
    ld [$844A], sp                                ; $5DCD: $08 $4A $84
    jr z, jr_055_5DC2                             ; $5DD0: $28 $F0

    ld h, h                                       ; $5DD2: $64
    sbc b                                         ; $5DD3: $98
    jp z, $9704                                   ; $5DD4: $CA $04 $97

    jr nc, jr_055_5D8C                            ; $5DD7: $30 $B3

    inc [hl]                                      ; $5DD9: $34
    ld b, e                                       ; $5DDA: $43
    adc h                                         ; $5DDB: $8C
    add l                                         ; $5DDC: $85
    ld a, d                                       ; $5DDD: $7A
    ld a, [$9804]                                 ; $5DDE: $FA $04 $98
    ld h, b                                       ; $5DE1: $60
    ld c, l                                       ; $5DE2: $4D
    jr nc, @+$27                                  ; $5DE3: $30 $25

    jr jr_055_5E37                                ; $5DE5: $18 $50

    inc c                                         ; $5DE7: $0C
    ld a, [hl+]                                   ; $5DE8: $2A
    ld b, h                                       ; $5DE9: $44
    ld b, l                                       ; $5DEA: $45
    ld a, $29                                     ; $5DEB: $3E $29
    ld e, $0E                                     ; $5DED: $1E $0E
    nop                                           ; $5DEF: $00
    add hl, de                                    ; $5DF0: $19
    ld b, $B2                                     ; $5DF1: $06 $B2
    inc c                                         ; $5DF3: $0C
    and h                                         ; $5DF4: $A4
    jr jr_055_5E01                                ; $5DF5: $18 $0A

    jr nc, jr_055_5E6D                            ; $5DF7: $30 $74

    ld [hl+], a                                   ; $5DF9: $22
    and b                                         ; $5DFA: $A0
    ld a, h                                       ; $5DFB: $7C
    ldh a, [rP1]                                  ; $5DFC: $F0 $00

jr_055_5DFE:
    ld c, $00                                     ; $5DFE: $0E $00
    ld a, a                                       ; $5E00: $7F

jr_055_5E01:
    add b                                         ; $5E01: $80
    ld a, a                                       ; $5E02: $7F
    add b                                         ; $5E03: $80
    ld a, a                                       ; $5E04: $7F
    add b                                         ; $5E05: $80
    ccf                                           ; $5E06: $3F
    ret nz                                        ; $5E07: $C0

    rra                                           ; $5E08: $1F
    ldh [rIF], a                                  ; $5E09: $E0 $0F
    ldh a, [$03]                                  ; $5E0B: $F0 $03
    db $FC                                        ; $5E0D: $FC
    nop                                           ; $5E0E: $00
    rst $38                                       ; $5E0F: $FF
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00

jr_055_5E14:
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
    inc a                                         ; $5E20: $3C
    nop                                           ; $5E21: $00
    ld h, d                                       ; $5E22: $62
    inc e                                         ; $5E23: $1C
    push bc                                       ; $5E24: $C5
    ld a, $CB                                     ; $5E25: $3E $CB
    ld a, $E4                                     ; $5E27: $3E $E4
    rra                                           ; $5E29: $1F
    jp nc, $E02F                                  ; $5E2A: $D2 $2F $E0

    rra                                           ; $5E2D: $1F
    ret nc                                        ; $5E2E: $D0

    cpl                                           ; $5E2F: $2F
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00

jr_055_5E37:
    nop                                           ; $5E37: $00
    add b                                         ; $5E38: $80
    nop                                           ; $5E39: $00
    ld b, b                                       ; $5E3A: $40
    add b                                         ; $5E3B: $80
    jr nz, jr_055_5DFE                            ; $5E3C: $20 $C0

    db $10                                        ; $5E3E: $10
    ldh [rP1], a                                  ; $5E3F: $E0 $00
    nop                                           ; $5E41: $00
    ld a, [bc]                                    ; $5E42: $0A
    dec b                                         ; $5E43: $05
    inc d                                         ; $5E44: $14
    dec bc                                        ; $5E45: $0B
    add hl, de                                    ; $5E46: $19
    rlca                                          ; $5E47: $07
    ld de, $130F                                  ; $5E48: $11 $0F $13
    rrca                                          ; $5E4B: $0F
    inc de                                        ; $5E4C: $13
    rrca                                          ; $5E4D: $0F
    inc de                                        ; $5E4E: $13
    rrca                                          ; $5E4F: $0F
    nop                                           ; $5E50: $00
    nop                                           ; $5E51: $00
    jr nz, jr_055_5E14                            ; $5E52: $20 $C0

    ret nc                                        ; $5E54: $D0

    ldh [$F0], a                                  ; $5E55: $E0 $F0
    ldh [$F0], a                                  ; $5E57: $E0 $F0
    ldh [$F0], a                                  ; $5E59: $E0 $F0
    ldh [$F0], a                                  ; $5E5B: $E0 $F0
    ldh [$F8], a                                  ; $5E5D: $E0 $F8
    ldh [rDIV], a                                 ; $5E5F: $E0 $04
    inc bc                                        ; $5E61: $03
    inc b                                         ; $5E62: $04
    inc bc                                        ; $5E63: $03
    inc b                                         ; $5E64: $04
    inc bc                                        ; $5E65: $03
    inc b                                         ; $5E66: $04
    inc bc                                        ; $5E67: $03
    ld b, $01                                     ; $5E68: $06 $01
    rlca                                          ; $5E6A: $07
    nop                                           ; $5E6B: $00
    ld [bc], a                                    ; $5E6C: $02

jr_055_5E6D:
    nop                                           ; $5E6D: $00
    ld bc, $FE00                                  ; $5E6E: $01 $00 $FE
    rst $38                                       ; $5E71: $FF
    db $FD                                        ; $5E72: $FD
    rst $38                                       ; $5E73: $FF
    xor d                                         ; $5E74: $AA
    rst $38                                       ; $5E75: $FF
    ld d, h                                       ; $5E76: $54
    rst $38                                       ; $5E77: $FF
    ld [bc], a                                    ; $5E78: $02
    db $FD                                        ; $5E79: $FD
    dec d                                         ; $5E7A: $15
    ld [$00FF], a                                 ; $5E7B: $EA $FF $00
    ld a, [hl]                                    ; $5E7E: $7E
    nop                                           ; $5E7F: $00
    rst $38                                       ; $5E80: $FF
    nop                                           ; $5E81: $00
    ld a, a                                       ; $5E82: $7F
    add b                                         ; $5E83: $80
    rrca                                          ; $5E84: $0F
    ldh a, [rTAC]                                 ; $5E85: $F0 $07
    ld hl, sp+$00                                 ; $5E87: $F8 $00
    rst $38                                       ; $5E89: $FF
    nop                                           ; $5E8A: $00
    rst $38                                       ; $5E8B: $FF
    nop                                           ; $5E8C: $00
    rst $38                                       ; $5E8D: $FF
    nop                                           ; $5E8E: $00
    rst $38                                       ; $5E8F: $FF
    rst $38                                       ; $5E90: $FF
    nop                                           ; $5E91: $00
    rst $38                                       ; $5E92: $FF
    nop                                           ; $5E93: $00
    cp $01                                        ; $5E94: $FE $01
    ldh a, [rIF]                                  ; $5E96: $F0 $0F
    nop                                           ; $5E98: $00
    rst $38                                       ; $5E99: $FF
    nop                                           ; $5E9A: $00
    rst $38                                       ; $5E9B: $FF
    nop                                           ; $5E9C: $00
    rst $38                                       ; $5E9D: $FF
    nop                                           ; $5E9E: $00
    rst $38                                       ; $5E9F: $FF
    ld d, d                                       ; $5EA0: $52
    ld [$0811], sp                                ; $5EA1: $08 $11 $08
    ld d, d                                       ; $5EA4: $52
    add hl, bc                                    ; $5EA5: $09
    ld [de], a                                    ; $5EA6: $12
    add hl, bc                                    ; $5EA7: $09
    ld d, d                                       ; $5EA8: $52
    add hl, bc                                    ; $5EA9: $09
    inc de                                        ; $5EAA: $13
    ld [$0855], sp                                ; $5EAB: $08 $55 $08
    ld [de], a                                    ; $5EAE: $12
    inc c                                         ; $5EAF: $0C
    ld bc, $0600                                  ; $5EB0: $01 $00 $06
    ld bc, $0708                                  ; $5EB3: $01 $08 $07
    db $10                                        ; $5EB6: $10
    rrca                                          ; $5EB7: $0F
    ld de, $230E                                  ; $5EB8: $11 $0E $23
    inc e                                         ; $5EBB: $1C
    ld h, $18                                     ; $5EBC: $26 $18
    ld h, $18                                     ; $5EBE: $26 $18
    inc h                                         ; $5EC0: $24
    jp $8162                                      ; $5EC1: $C3 $62 $81


    add b                                         ; $5EC4: $80
    nop                                           ; $5EC5: $00
    ld a, b                                       ; $5EC6: $78
    rlca                                          ; $5EC7: $07
    jp $003F                                      ; $5EC8: $C3 $3F $00


    nop                                           ; $5ECB: $00
    rrca                                          ; $5ECC: $0F
    nop                                           ; $5ECD: $00
    ldh a, [rIF]                                  ; $5ECE: $F0 $0F
    ld l, l                                       ; $5ED0: $6D
    add $80                                       ; $5ED1: $C6 $80
    add b                                         ; $5ED3: $80
    ld sp, $FF0F                                  ; $5ED4: $31 $0F $FF
    rst $38                                       ; $5ED7: $FF
    ldh a, [rIE]                                  ; $5ED8: $F0 $FF
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    rst $38                                       ; $5EDC: $FF
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    rst $38                                       ; $5EDF: $FF
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    rrca                                          ; $5EE2: $0F
    nop                                           ; $5EE3: $00
    pop af                                        ; $5EE4: $F1
    cp $C0                                        ; $5EE5: $FE $C0
    rst $38                                       ; $5EE7: $FF
    inc bc                                        ; $5EE8: $03
    db $FC                                        ; $5EE9: $FC
    dec e                                         ; $5EEA: $1D
    ld [bc], a                                    ; $5EEB: $02
    ret nz                                        ; $5EEC: $C0

    nop                                           ; $5EED: $00
    ld a, a                                       ; $5EEE: $7F
    add b                                         ; $5EEF: $80
    rst $38                                       ; $5EF0: $FF
    nop                                           ; $5EF1: $00
    ld hl, sp-$01                                 ; $5EF2: $F8 $FF
    db $FC                                        ; $5EF4: $FC
    rst $38                                       ; $5EF5: $FF
    cp $FF                                        ; $5EF6: $FE $FF
    cp $FF                                        ; $5EF8: $FE $FF
    db $FD                                        ; $5EFA: $FD
    rst $38                                       ; $5EFB: $FF
    ld a, [c]                                     ; $5EFC: $F2
    ld a, a                                       ; $5EFD: $7F
    rst $30                                       ; $5EFE: $F7
    rrca                                          ; $5EFF: $0F
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00

jr_055_5F02:
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
    ldh [$1F], a                                  ; $5F20: $E0 $1F
    ld [hl], h                                    ; $5F22: $74
    dec bc                                        ; $5F23: $0B
    ld l, d                                       ; $5F24: $6A
    dec d                                         ; $5F25: $15
    ld [hl], l                                    ; $5F26: $75
    ld a, [bc]                                    ; $5F27: $0A
    ld a, [hl-]                                   ; $5F28: $3A
    inc b                                         ; $5F29: $04
    dec a                                         ; $5F2A: $3D
    nop                                           ; $5F2B: $00
    ld a, [de]                                    ; $5F2C: $1A
    ld bc, $0205                                  ; $5F2D: $01 $05 $02
    jr z, jr_055_5F02                             ; $5F30: $28 $D0

    ld d, $E8                                     ; $5F32: $16 $E8
    ccf                                           ; $5F34: $3F
    ret nz                                        ; $5F35: $C0

    pop af                                        ; $5F36: $F1
    ld c, $C0                                     ; $5F37: $0E $C0
    ccf                                           ; $5F39: $3F
    ld b, $FF                                     ; $5F3A: $06 $FF
    rla                                           ; $5F3C: $17
    ld hl, sp+$5A                                 ; $5F3D: $F8 $5A
    and b                                         ; $5F3F: $A0
    dec de                                        ; $5F40: $1B
    rlca                                          ; $5F41: $07
    dec d                                         ; $5F42: $15
    dec bc                                        ; $5F43: $0B
    ld a, [de]                                    ; $5F44: $1A
    dec b                                         ; $5F45: $05
    dec d                                         ; $5F46: $15
    ld a, [bc]                                    ; $5F47: $0A
    ld a, [de]                                    ; $5F48: $1A
    dec b                                         ; $5F49: $05
    ld [$0807], sp                                ; $5F4A: $08 $07 $08
    rlca                                          ; $5F4D: $07
    inc c                                         ; $5F4E: $0C
    inc bc                                        ; $5F4F: $03
    add sp, -$10                                  ; $5F50: $E8 $F0
    db $FC                                        ; $5F52: $FC
    ldh a, [$86]                                  ; $5F53: $F0 $86
    ld hl, sp+$7B                                 ; $5F55: $F8 $7B
    db $FC                                        ; $5F57: $FC
    sbc l                                         ; $5F58: $9D
    cp $7F                                        ; $5F59: $FE $7F
    cp $FF                                        ; $5F5B: $FE $FF
    cp $FE                                        ; $5F5D: $FE $FE
    rst $38                                       ; $5F5F: $FF
    add b                                         ; $5F60: $80
    nop                                           ; $5F61: $00
    ret nz                                        ; $5F62: $C0

    nop                                           ; $5F63: $00
    ld b, b                                       ; $5F64: $40
    add b                                         ; $5F65: $80
    pop bc                                        ; $5F66: $C1
    nop                                           ; $5F67: $00
    jp $8500                                      ; $5F68: $C3 $00 $85


    inc bc                                        ; $5F6B: $03
    ld c, e                                       ; $5F6C: $4B
    rlca                                          ; $5F6D: $07
    adc d                                         ; $5F6E: $8A
    rlca                                          ; $5F6F: $07
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    ccf                                           ; $5F74: $3F
    nop                                           ; $5F75: $00
    ldh [$1F], a                                  ; $5F76: $E0 $1F
    rra                                           ; $5F78: $1F
    rst $38                                       ; $5F79: $FF
    rst $38                                       ; $5F7A: $FF
    rst $38                                       ; $5F7B: $FF
    ccf                                           ; $5F7C: $3F
    ret nz                                        ; $5F7D: $C0

    rst $28                                       ; $5F7E: $EF
    rra                                           ; $5F7F: $1F
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    db $FC                                        ; $5F84: $FC
    nop                                           ; $5F85: $00
    rlca                                          ; $5F86: $07
    ld hl, sp-$08                                 ; $5F87: $F8 $F8
    rst $38                                       ; $5F89: $FF
    rst $38                                       ; $5F8A: $FF
    rst $38                                       ; $5F8B: $FF
    db $FC                                        ; $5F8C: $FC
    inc bc                                        ; $5F8D: $03
    rst $38                                       ; $5F8E: $FF
    jr nc, jr_055_5FA3                            ; $5F8F: $30 $12

    inc c                                         ; $5F91: $0C
    ld d, l                                       ; $5F92: $55
    ld [$0813], sp                                ; $5F93: $08 $13 $08
    ld d, d                                       ; $5F96: $52
    add hl, bc                                    ; $5F97: $09
    ld [de], a                                    ; $5F98: $12
    add hl, bc                                    ; $5F99: $09
    ld d, d                                       ; $5F9A: $52
    add hl, bc                                    ; $5F9B: $09
    add hl, bc                                    ; $5F9C: $09
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    inc b                                         ; $5FA0: $04
    inc bc                                        ; $5FA1: $03
    inc bc                                        ; $5FA2: $03

jr_055_5FA3:
    ld hl, sp+$70                                 ; $5FA3: $F8 $70
    adc h                                         ; $5FA5: $8C
    add hl, bc                                    ; $5FA6: $09
    inc b                                         ; $5FA7: $04
    ld l, b                                       ; $5FA8: $68
    inc b                                         ; $5FA9: $04
    add hl, hl                                    ; $5FAA: $29
    call nz, $05C8                                ; $5FAB: $C4 $C8 $05
    jr jr_055_5FB5                                ; $5FAE: $18 $05

    ld h, $18                                     ; $5FB0: $26 $18
    ld h, $18                                     ; $5FB2: $26 $18
    dec hl                                        ; $5FB4: $2B

jr_055_5FB5:
    inc e                                         ; $5FB5: $1C
    add hl, de                                    ; $5FB6: $19
    ld c, $14                                     ; $5FB7: $0E $14
    rrca                                          ; $5FB9: $0F
    inc c                                         ; $5FBA: $0C
    inc bc                                        ; $5FBB: $03
    inc bc                                        ; $5FBC: $03
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    rlca                                          ; $5FC0: $07
    rst $38                                       ; $5FC1: $FF
    ld hl, sp-$01                                 ; $5FC2: $F8 $FF
    inc bc                                        ; $5FC4: $03
    db $FC                                        ; $5FC5: $FC
    db $FC                                        ; $5FC6: $FC
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00
    xor b                                         ; $5FD0: $A8
    rst $38                                       ; $5FD1: $FF
    nop                                           ; $5FD2: $00
    rst $38                                       ; $5FD3: $FF
    rst $38                                       ; $5FD4: $FF
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
    rla                                           ; $5FE0: $17
    add sp, $2B                                   ; $5FE1: $E8 $2B
    call nc, $08F7                                ; $5FE3: $D4 $F7 $08
    rra                                           ; $5FE6: $1F
    nop                                           ; $5FE7: $00
    ld bc, $0000                                  ; $5FE8: $01 $00 $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    sbc a                                         ; $5FF0: $9F
    ldh [$F3], a                                  ; $5FF1: $E0 $F3
    db $FC                                        ; $5FF3: $FC
    db $FC                                        ; $5FF4: $FC
    rst $38                                       ; $5FF5: $FF
    cp $FF                                        ; $5FF6: $FE $FF
    rst $38                                       ; $5FF8: $FF
    rst $38                                       ; $5FF9: $FF
    rst $38                                       ; $5FFA: $FF
    ld a, a                                       ; $5FFB: $7F
    rst $38                                       ; $5FFC: $FF
    rrca                                          ; $5FFD: $0F
    adc a                                         ; $5FFE: $8F
    inc bc                                        ; $5FFF: $03
    ld [hl], a                                    ; $6000: $77
    add sp, -$3B                                  ; $6001: $E8 $C5
    ldh a, [$89]                                  ; $6003: $F0 $89
    ld a, [c]                                     ; $6005: $F2
    ret nz                                        ; $6006: $C0

    add b                                         ; $6007: $80
    or b                                          ; $6008: $B0
    ret nz                                        ; $6009: $C0

    cp b                                          ; $600A: $B8
    ldh [$EC], a                                  ; $600B: $E0 $EC
    ret nc                                        ; $600D: $D0

    or $E9                                        ; $600E: $F6 $E9
    rlca                                          ; $6010: $07
    rst $38                                       ; $6011: $FF
    rst $20                                       ; $6012: $E7
    rra                                           ; $6013: $1F
    ld h, a                                       ; $6014: $67
    sbc a                                         ; $6015: $9F
    ld de, $0A07                                  ; $6016: $11 $07 $0A
    rlca                                          ; $6019: $07
    cp a                                          ; $601A: $BF
    rlca                                          ; $601B: $07
    rst $20                                       ; $601C: $E7
    rra                                           ; $601D: $1F
    rlca                                          ; $601E: $07
    rst $38                                       ; $601F: $FF
    rst $38                                       ; $6020: $FF
    rst $38                                       ; $6021: $FF
    nop                                           ; $6022: $00
    rst $38                                       ; $6023: $FF
    ld b, c                                       ; $6024: $41
    cp [hl]                                       ; $6025: $BE
    ld a, a                                       ; $6026: $7F
    add b                                         ; $6027: $80
    ccf                                           ; $6028: $3F
    add b                                         ; $6029: $80
    nop                                           ; $602A: $00
    add b                                         ; $602B: $80
    nop                                           ; $602C: $00
    rst $38                                       ; $602D: $FF
    nop                                           ; $602E: $00
    rst $38                                       ; $602F: $FF
    rst $38                                       ; $6030: $FF
    rst $38                                       ; $6031: $FF
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $FF
    rst $38                                       ; $6034: $FF
    nop                                           ; $6035: $00
    rst $38                                       ; $6036: $FF
    nop                                           ; $6037: $00
    rst $38                                       ; $6038: $FF
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    rst $38                                       ; $603D: $FF
    nop                                           ; $603E: $00
    rst $38                                       ; $603F: $FF
    db $FD                                        ; $6040: $FD
    rst $38                                       ; $6041: $FF
    add l                                         ; $6042: $85
    cp $34                                        ; $6043: $FE $34
    adc $DC                                       ; $6045: $CE $DC
    ld h, $64                                     ; $6047: $26 $64
    sub $84                                       ; $6049: $D6 $84
    cp $D4                                        ; $604B: $FE $D4
    cp $FC                                        ; $604D: $FE $FC
    cp $01                                        ; $604F: $FE $01
    rst $38                                       ; $6051: $FF
    ld b, e                                       ; $6052: $43
    add c                                         ; $6053: $81
    ld bc, $3D81                                  ; $6054: $01 $81 $3D
    add c                                         ; $6057: $81
    ld b, e                                       ; $6058: $43
    cp l                                          ; $6059: $BD
    ld h, a                                       ; $605A: $67
    sbc c                                         ; $605B: $99
    ld bc, $FFFF                                  ; $605C: $01 $FF $FF
    rst $38                                       ; $605F: $FF
    add b                                         ; $6060: $80
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    rst $38                                       ; $6064: $FF
    nop                                           ; $6065: $00
    rst $38                                       ; $6066: $FF
    nop                                           ; $6067: $00
    add b                                         ; $6068: $80
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    rst $38                                       ; $606C: $FF
    nop                                           ; $606D: $00
    rst $38                                       ; $606E: $FF
    nop                                           ; $606F: $00
    db $D3                                        ; $6070: $D3
    add sp, -$45                                  ; $6071: $E8 $BB
    call z, $EFD8                                 ; $6073: $CC $D8 $EF
    rst $00                                       ; $6076: $C7
    rst $38                                       ; $6077: $FF
    cp [hl]                                       ; $6078: $BE
    pop bc                                        ; $6079: $C1
    adc h                                         ; $607A: $8C
    di                                            ; $607B: $F3
    ret nz                                        ; $607C: $C0

    rst $38                                       ; $607D: $FF
    cp $FF                                        ; $607E: $FE $FF
    inc de                                        ; $6080: $13
    rrca                                          ; $6081: $0F
    db $FD                                        ; $6082: $FD
    rlca                                          ; $6083: $07
    dec c                                         ; $6084: $0D
    rst $30                                       ; $6085: $F7
    rst $30                                       ; $6086: $F7
    rst $38                                       ; $6087: $FF
    rst $38                                       ; $6088: $FF
    inc bc                                        ; $6089: $03
    adc c                                         ; $608A: $89
    rst $30                                       ; $608B: $F7
    add c                                         ; $608C: $81
    rst $38                                       ; $608D: $FF
    rst $38                                       ; $608E: $FF
    rst $38                                       ; $608F: $FF
    ld hl, sp-$40                                 ; $6090: $F8 $C0
    ei                                            ; $6092: $FB
    adc h                                         ; $6093: $8C
    ret z                                         ; $6094: $C8

    rst $28                                       ; $6095: $EF
    rst $38                                       ; $6096: $FF
    rst $28                                       ; $6097: $EF
    jp nz, $BFE1                                  ; $6098: $C2 $E1 $BF

    ret nz                                        ; $609B: $C0

    ret nz                                        ; $609C: $C0

    rst $38                                       ; $609D: $FF
    cp $FE                                        ; $609E: $FE $FE
    rra                                           ; $60A0: $1F
    inc bc                                        ; $60A1: $03
    db $FD                                        ; $60A2: $FD
    rlca                                          ; $60A3: $07
    dec b                                         ; $60A4: $05
    rst $30                                       ; $60A5: $F7
    rst $38                                       ; $60A6: $FF
    rst $30                                       ; $60A7: $F7
    adc a                                         ; $60A8: $8F
    inc bc                                        ; $60A9: $03
    cp a                                          ; $60AA: $BF
    jp $FF81                                      ; $60AB: $C3 $81 $FF


    rst $38                                       ; $60AE: $FF
    rst $38                                       ; $60AF: $FF
    rst $00                                       ; $60B0: $C7
    rst $38                                       ; $60B1: $FF
    push af                                       ; $60B2: $F5
    rst $38                                       ; $60B3: $FF
    call nz, $AAFB                                ; $60B4: $C4 $FB $AA
    call c, $F794                                 ; $60B7: $DC $94 $F7
    rst $18                                       ; $60BA: $DF
    rst $30                                       ; $60BB: $F7
    xor $E8                                       ; $60BC: $EE $E8
    rst $38                                       ; $60BE: $FF
    rst $38                                       ; $60BF: $FF
    inc e                                         ; $60C0: $1C
    nop                                           ; $60C1: $00
    db $FD                                        ; $60C2: $FD
    ld b, $04                                     ; $60C3: $06 $04
    rst $30                                       ; $60C5: $F7
    rst $38                                       ; $60C6: $FF
    rst $30                                       ; $60C7: $F7
    sbc l                                         ; $60C8: $9D
    nop                                           ; $60C9: $00
    cp a                                          ; $60CA: $BF
    ret nz                                        ; $60CB: $C0

    add b                                         ; $60CC: $80
    cp $FE                                        ; $60CD: $FE $FE
    cp $08                                        ; $60CF: $FE $08
    nop                                           ; $60D1: $00
    sub h                                         ; $60D2: $94
    ld [$C43B], sp                                ; $60D3: $08 $3B $C4
    ldh a, [$8F]                                  ; $60D6: $F0 $8F
    add c                                         ; $60D8: $81
    nop                                           ; $60D9: $00
    or e                                          ; $60DA: $B3
    ret nz                                        ; $60DB: $C0

    add b                                         ; $60DC: $80
    rst $38                                       ; $60DD: $FF
    cp $78                                        ; $60DE: $FE $78
    nop                                           ; $60E0: $00
    inc b                                         ; $60E1: $04
    nop                                           ; $60E2: $00
    rra                                           ; $60E3: $1F
    nop                                           ; $60E4: $00
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    nop                                           ; $60E9: $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    nop                                           ; $60EC: $00
    rst $38                                       ; $60ED: $FF
    nop                                           ; $60EE: $00
    ld [rRAMG], sp                                ; $60EF: $08 $00 $00
    nop                                           ; $60F2: $00
    ret nz                                        ; $60F3: $C0

    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00
    nop                                           ; $60F6: $00
    db $FC                                        ; $60F7: $FC
    nop                                           ; $60F8: $00
    stop                                          ; $60F9: $10 $00
    ld a, [hl]                                    ; $60FB: $7E
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
    rlca                                          ; $6109: $07
    dec b                                         ; $610A: $05
    rrca                                          ; $610B: $0F
    nop                                           ; $610C: $00
    ccf                                           ; $610D: $3F
    dec hl                                        ; $610E: $2B
    ld a, a                                       ; $610F: $7F
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    rra                                           ; $6112: $1F
    rra                                           ; $6113: $1F
    ccf                                           ; $6114: $3F
    ccf                                           ; $6115: $3F
    ld h, b                                       ; $6116: $60
    ld e, [hl]                                    ; $6117: $5E
    ld h, b                                       ; $6118: $60
    ld e, [hl]                                    ; $6119: $5E
    ld h, b                                       ; $611A: $60
    ld e, l                                       ; $611B: $5D
    ld h, b                                       ; $611C: $60
    ld b, e                                       ; $611D: $43
    ld h, b                                       ; $611E: $60
    ld e, l                                       ; $611F: $5D
    rst $38                                       ; $6120: $FF
    rst $38                                       ; $6121: $FF
    jr z, @+$01                                   ; $6122: $28 $FF

    adc l                                         ; $6124: $8D
    ld [hl], d                                    ; $6125: $72
    rst $38                                       ; $6126: $FF
    nop                                           ; $6127: $00
    cp a                                          ; $6128: $BF
    ld b, b                                       ; $6129: $40
    or a                                          ; $612A: $B7
    ld c, b                                       ; $612B: $48
    inc bc                                        ; $612C: $03
    rst $38                                       ; $612D: $FF
    rst $38                                       ; $612E: $FF
    rst $38                                       ; $612F: $FF
    rst $38                                       ; $6130: $FF
    rst $38                                       ; $6131: $FF
    ld bc, $4CFF                                  ; $6132: $01 $FF $4C
    or e                                          ; $6135: $B3
    cp a                                          ; $6136: $BF
    ld b, b                                       ; $6137: $40
    rst $38                                       ; $6138: $FF
    nop                                           ; $6139: $00
    ld c, c                                       ; $613A: $49
    or [hl]                                       ; $613B: $B6
    ld [hl+], a                                   ; $613C: $22
    rst $38                                       ; $613D: $FF
    rst $38                                       ; $613E: $FF
    rst $38                                       ; $613F: $FF
    db $FC                                        ; $6140: $FC
    cp $FC                                        ; $6141: $FE $FC
    cp $FD                                        ; $6143: $FE $FD
    cp $FC                                        ; $6145: $FE $FC
    cp $DD                                        ; $6147: $FE $DD
    cp $9E                                        ; $6149: $FE $9E
    rst $38                                       ; $614B: $FF
    sbc a                                         ; $614C: $9F
    rst $38                                       ; $614D: $FF
    add b                                         ; $614E: $80
    rst $38                                       ; $614F: $FF
    rst $38                                       ; $6150: $FF
    rst $38                                       ; $6151: $FF
    add h                                         ; $6152: $84
    rst $38                                       ; $6153: $FF
    ld [hl-], a                                   ; $6154: $32
    call $FF70                                    ; $6155: $CD $70 $FF
    ld d, a                                       ; $6158: $57
    rst $38                                       ; $6159: $FF
    cp l                                          ; $615A: $BD
    rst $18                                       ; $615B: $DF
    rst $38                                       ; $615C: $FF
    sbc l                                         ; $615D: $9D
    rst $38                                       ; $615E: $FF
    db $DD                                        ; $615F: $DD
    rst $38                                       ; $6160: $FF
    rst $38                                       ; $6161: $FF
    ld hl, $4CFF                                  ; $6162: $21 $FF $4C
    or e                                          ; $6165: $B3
    cp e                                          ; $6166: $BB
    ld b, h                                       ; $6167: $44
    rrca                                          ; $6168: $0F
    rst $38                                       ; $6169: $FF
    ld sp, hl                                     ; $616A: $F9
    rst $38                                       ; $616B: $FF
    rst $38                                       ; $616C: $FF
    ei                                            ; $616D: $FB
    rst $38                                       ; $616E: $FF
    ei                                            ; $616F: $FB
    rst $38                                       ; $6170: $FF
    rst $38                                       ; $6171: $FF
    xor d                                         ; $6172: $AA
    nop                                           ; $6173: $00
    rst $38                                       ; $6174: $FF
    rst $38                                       ; $6175: $FF
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    inc bc                                        ; $617C: $03
    ld bc, $070F                                  ; $617D: $01 $0F $07
    rst $38                                       ; $6180: $FF
    rst $38                                       ; $6181: $FF
    xor d                                         ; $6182: $AA
    nop                                           ; $6183: $00
    rst $38                                       ; $6184: $FF
    rst $38                                       ; $6185: $FF
    inc bc                                        ; $6186: $03
    ld bc, $1F3F                                  ; $6187: $01 $3F $1F
    ldh a, [$7F]                                  ; $618A: $F0 $7F
    jp $1FFF                                      ; $618C: $C3 $FF $1F


    rst $38                                       ; $618F: $FF
    rst $38                                       ; $6190: $FF
    rst $38                                       ; $6191: $FF
    xor d                                         ; $6192: $AA
    nop                                           ; $6193: $00
    rst $38                                       ; $6194: $FF
    rst $38                                       ; $6195: $FF
    ld hl, sp-$01                                 ; $6196: $F8 $FF
    nop                                           ; $6198: $00
    rst $38                                       ; $6199: $FF
    rrca                                          ; $619A: $0F
    rst $38                                       ; $619B: $FF
    rst $38                                       ; $619C: $FF
    rst $38                                       ; $619D: $FF
    rst $38                                       ; $619E: $FF
    rst $38                                       ; $619F: $FF
    rst $38                                       ; $61A0: $FF
    nop                                           ; $61A1: $00
    rst $38                                       ; $61A2: $FF
    nop                                           ; $61A3: $00
    rst $38                                       ; $61A4: $FF
    nop                                           ; $61A5: $00
    rst $38                                       ; $61A6: $FF
    nop                                           ; $61A7: $00
    rst $38                                       ; $61A8: $FF
    nop                                           ; $61A9: $00
    rst $38                                       ; $61AA: $FF
    nop                                           ; $61AB: $00
    rst $38                                       ; $61AC: $FF
    nop                                           ; $61AD: $00
    nop                                           ; $61AE: $00
    nop                                           ; $61AF: $00
    ld a, a                                       ; $61B0: $7F
    add b                                         ; $61B1: $80
    cp a                                          ; $61B2: $BF
    nop                                           ; $61B3: $00
    cp a                                          ; $61B4: $BF
    nop                                           ; $61B5: $00
    cp a                                          ; $61B6: $BF
    nop                                           ; $61B7: $00
    cp a                                          ; $61B8: $BF
    nop                                           ; $61B9: $00
    cp a                                          ; $61BA: $BF
    nop                                           ; $61BB: $00
    add b                                         ; $61BC: $80
    nop                                           ; $61BD: $00
    ret nz                                        ; $61BE: $C0

    nop                                           ; $61BF: $00
    rst $38                                       ; $61C0: $FF
    nop                                           ; $61C1: $00
    rst $38                                       ; $61C2: $FF
    nop                                           ; $61C3: $00
    rst $38                                       ; $61C4: $FF
    nop                                           ; $61C5: $00
    rst $38                                       ; $61C6: $FF
    nop                                           ; $61C7: $00
    rst $38                                       ; $61C8: $FF
    nop                                           ; $61C9: $00
    rst $38                                       ; $61CA: $FF
    nop                                           ; $61CB: $00
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    rst $38                                       ; $61D1: $FF
    ld a, $C1                                     ; $61D2: $3E $C1
    ld b, b                                       ; $61D4: $40
    rst $38                                       ; $61D5: $FF
    ld b, [hl]                                    ; $61D6: $46
    ld sp, hl                                     ; $61D7: $F9
    ld b, [hl]                                    ; $61D8: $46
    rst $38                                       ; $61D9: $FF
    ld b, b                                       ; $61DA: $40
    rst $38                                       ; $61DB: $FF
    ld a, [hl]                                    ; $61DC: $7E
    rst $38                                       ; $61DD: $FF
    nop                                           ; $61DE: $00
    rst $38                                       ; $61DF: $FF
    nop                                           ; $61E0: $00
    ccf                                           ; $61E1: $3F
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    rrca                                          ; $61E5: $0F
    nop                                           ; $61E6: $00
    ld bc, $FF00                                  ; $61E7: $01 $00 $FF
    nop                                           ; $61EA: $00
    stop                                          ; $61EB: $10 $00
    rst $38                                       ; $61ED: $FF
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    cp $00                                        ; $61F1: $FE $00
    jr nz, jr_055_61F5                            ; $61F3: $20 $00

jr_055_61F5:
    ld hl, sp+$00                                 ; $61F5: $F8 $00
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    sub b                                         ; $61F9: $90
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    add b                                         ; $61FD: $80
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    dec b                                         ; $6200: $05
    ld a, a                                       ; $6201: $7F
    cpl                                           ; $6202: $2F
    ld a, a                                       ; $6203: $7F
    rla                                           ; $6204: $17
    rst $38                                       ; $6205: $FF
    dec a                                         ; $6206: $3D
    rst $38                                       ; $6207: $FF
    cpl                                           ; $6208: $2F
    rst $38                                       ; $6209: $FF
    ccf                                           ; $620A: $3F
    rst $38                                       ; $620B: $FF
    ld a, a                                       ; $620C: $7F
    rst $38                                       ; $620D: $FF
    ld a, a                                       ; $620E: $7F
    rst $38                                       ; $620F: $FF
    ld h, b                                       ; $6210: $60
    ld e, [hl]                                    ; $6211: $5E
    ld h, b                                       ; $6212: $60
    ld e, [hl]                                    ; $6213: $5E
    ld h, b                                       ; $6214: $60
    ld b, b                                       ; $6215: $40
    ld c, $00                                     ; $6216: $0E $00
    ld a, a                                       ; $6218: $7F
    ld h, b                                       ; $6219: $60
    ld a, a                                       ; $621A: $7F
    ld b, b                                       ; $621B: $40
    ld a, a                                       ; $621C: $7F
    ld a, a                                       ; $621D: $7F
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    rst $38                                       ; $6220: $FF
    rst $38                                       ; $6221: $FF
    ld a, a                                       ; $6222: $7F
    add b                                         ; $6223: $80
    ld a, a                                       ; $6224: $7F
    add b                                         ; $6225: $80
    cpl                                           ; $6226: $2F
    add b                                         ; $6227: $80
    nop                                           ; $6228: $00
    add b                                         ; $6229: $80
    nop                                           ; $622A: $00
    add b                                         ; $622B: $80
    nop                                           ; $622C: $00
    add b                                         ; $622D: $80
    ld a, a                                       ; $622E: $7F
    add b                                         ; $622F: $80
    rst $38                                       ; $6230: $FF
    rst $38                                       ; $6231: $FF
    ldh [rIE], a                                  ; $6232: $E0 $FF
    ret nc                                        ; $6234: $D0

    ldh [$A7], a                                  ; $6235: $E0 $A7
    ret nz                                        ; $6237: $C0

    xor a                                         ; $6238: $AF
    ret nz                                        ; $6239: $C0

    cp a                                          ; $623A: $BF
    ret nz                                        ; $623B: $C0

    rst $18                                       ; $623C: $DF
    ldh [$EF], a                                  ; $623D: $E0 $EF
    ldh a, [$9F]                                  ; $623F: $F0 $9F
    ldh [$BF], a                                  ; $6241: $E0 $BF
    ret nz                                        ; $6243: $C0

    ret nz                                        ; $6244: $C0

    add b                                         ; $6245: $80
    add b                                         ; $6246: $80
    rst $38                                       ; $6247: $FF
    cp a                                          ; $6248: $BF
    ret nz                                        ; $6249: $C0

    cp a                                          ; $624A: $BF
    ret nz                                        ; $624B: $C0

    rst $38                                       ; $624C: $FF
    rst $38                                       ; $624D: $FF
    rst $10                                       ; $624E: $D7
    rst $38                                       ; $624F: $FF
    rst $38                                       ; $6250: $FF
    db $DD                                        ; $6251: $DD
    rst $18                                       ; $6252: $DF
    adc l                                         ; $6253: $8D
    adc a                                         ; $6254: $8F
    ld [hl], h                                    ; $6255: $74
    halt                                          ; $6256: $76
    db $FC                                        ; $6257: $FC
    ld h, $FC                                     ; $6258: $26 $FC
    xor a                                         ; $625A: $AF
    call c, $FFFC                                 ; $625B: $DC $FC $FF
    rst $38                                       ; $625E: $FF
    rst $38                                       ; $625F: $FF
    rst $38                                       ; $6260: $FF
    ei                                            ; $6261: $FB
    rst $38                                       ; $6262: $FF
    ei                                            ; $6263: $FB
    rst $00                                       ; $6264: $C7
    ld a, e                                       ; $6265: $7B
    ld h, a                                       ; $6266: $67
    ld b, e                                       ; $6267: $43
    ld e, e                                       ; $6268: $5B
    ld h, a                                       ; $6269: $67
    rst $20                                       ; $626A: $E7
    ld a, a                                       ; $626B: $7F
    ld a, a                                       ; $626C: $7F
    rst $38                                       ; $626D: $FF
    rst $38                                       ; $626E: $FF
    rst $38                                       ; $626F: $FF
    db $FC                                        ; $6270: $FC
    rst $38                                       ; $6271: $FF
    add hl, sp                                    ; $6272: $39
    rra                                           ; $6273: $1F
    scf                                           ; $6274: $37
    rra                                           ; $6275: $1F
    ld a, $1F                                     ; $6276: $3E $1F
    rst $38                                       ; $6278: $FF
    rst $38                                       ; $6279: $FF
    ld a, l                                       ; $627A: $7D
    cpl                                           ; $627B: $2F
    ld a, b                                       ; $627C: $78
    cpl                                           ; $627D: $2F
    ld a, e                                       ; $627E: $7B
    dec l                                         ; $627F: $2D
    ld [hl], h                                    ; $6280: $74
    rst $38                                       ; $6281: $FF
    rst $38                                       ; $6282: $FF
    rst $38                                       ; $6283: $FF
    ld b, e                                       ; $6284: $43
    db $FD                                        ; $6285: $FD
    ld b, b                                       ; $6286: $40
    rst $38                                       ; $6287: $FF
    cp a                                          ; $6288: $BF
    rst $38                                       ; $6289: $FF
    xor c                                         ; $628A: $A9
    db $10                                        ; $628B: $10
    rst $28                                       ; $628C: $EF
    db $10                                        ; $628D: $10
    db $10                                        ; $628E: $10
    rst $38                                       ; $628F: $FF
    ld [bc], a                                    ; $6290: $02
    rst $38                                       ; $6291: $FF
    rst $38                                       ; $6292: $FF
    rst $38                                       ; $6293: $FF
    ld d, b                                       ; $6294: $50
    nop                                           ; $6295: $00
    xor b                                         ; $6296: $A8
    nop                                           ; $6297: $00
    inc [hl]                                      ; $6298: $34
    rst $38                                       ; $6299: $FF
    xor c                                         ; $629A: $A9
    db $10                                        ; $629B: $10
    rst $28                                       ; $629C: $EF
    db $10                                        ; $629D: $10
    db $10                                        ; $629E: $10
    rst $38                                       ; $629F: $FF
    ld [hl], a                                    ; $62A0: $77
    db $FD                                        ; $62A1: $FD
    rst $38                                       ; $62A2: $FF
    db $FD                                        ; $62A3: $FD
    ld b, a                                       ; $62A4: $47
    db $FD                                        ; $62A5: $FD
    ld b, a                                       ; $62A6: $47
    db $FD                                        ; $62A7: $FD
    cp a                                          ; $62A8: $BF
    db $FD                                        ; $62A9: $FD
    xor a                                         ; $62AA: $AF
    dec d                                         ; $62AB: $15
    rst $28                                       ; $62AC: $EF
    dec d                                         ; $62AD: $15
    rla                                           ; $62AE: $17
    db $FD                                        ; $62AF: $FD
    ld a, a                                       ; $62B0: $7F
    add b                                         ; $62B1: $80
    ld b, b                                       ; $62B2: $40
    cp a                                          ; $62B3: $BF
    ld e, a                                       ; $62B4: $5F
    cp a                                          ; $62B5: $BF
    ld d, a                                       ; $62B6: $57
    cp a                                          ; $62B7: $BF
    ld d, b                                       ; $62B8: $50
    cp a                                          ; $62B9: $BF
    ld d, a                                       ; $62BA: $57
    cp b                                          ; $62BB: $B8
    ld e, a                                       ; $62BC: $5F
    cp a                                          ; $62BD: $BF
    ld d, a                                       ; $62BE: $57
    cp a                                          ; $62BF: $BF
    rst $38                                       ; $62C0: $FF
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    rst $38                                       ; $62C3: $FF
    rst $38                                       ; $62C4: $FF
    rst $38                                       ; $62C5: $FF
    rst $38                                       ; $62C6: $FF
    rst $38                                       ; $62C7: $FF
    nop                                           ; $62C8: $00
    rst $38                                       ; $62C9: $FF
    rst $38                                       ; $62CA: $FF
    nop                                           ; $62CB: $00
    rst $38                                       ; $62CC: $FF
    rst $38                                       ; $62CD: $FF
    rst $38                                       ; $62CE: $FF
    rst $38                                       ; $62CF: $FF
    ld a, a                                       ; $62D0: $7F
    add b                                         ; $62D1: $80
    ld b, b                                       ; $62D2: $40
    cp a                                          ; $62D3: $BF
    ld e, a                                       ; $62D4: $5F
    cp a                                          ; $62D5: $BF
    ld e, a                                       ; $62D6: $5F
    cp a                                          ; $62D7: $BF
    ld b, b                                       ; $62D8: $40
    cp a                                          ; $62D9: $BF
    ld l, a                                       ; $62DA: $6F
    or b                                          ; $62DB: $B0
    ld e, a                                       ; $62DC: $5F
    cp a                                          ; $62DD: $BF
    ld e, a                                       ; $62DE: $5F
    cp a                                          ; $62DF: $BF
    rst $38                                       ; $62E0: $FF
    rst $38                                       ; $62E1: $FF
    rst $38                                       ; $62E2: $FF
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    nop                                           ; $62E8: $00
    rst $38                                       ; $62E9: $FF
    rst $38                                       ; $62EA: $FF
    rst $30                                       ; $62EB: $F7
    rst $30                                       ; $62EC: $F7
    rst $20                                       ; $62ED: $E7
    rst $30                                       ; $62EE: $F7
    rst $20                                       ; $62EF: $E7
    rra                                           ; $62F0: $1F
    adc a                                         ; $62F1: $8F
    rra                                           ; $62F2: $1F
    adc a                                         ; $62F3: $8F
    rra                                           ; $62F4: $1F
    adc a                                         ; $62F5: $8F
    rra                                           ; $62F6: $1F
    adc a                                         ; $62F7: $8F
    rra                                           ; $62F8: $1F
    adc a                                         ; $62F9: $8F
    rra                                           ; $62FA: $1F

jr_055_62FB:
    adc a                                         ; $62FB: $8F
    rra                                           ; $62FC: $1F
    adc a                                         ; $62FD: $8F
    rra                                           ; $62FE: $1F
    adc a                                         ; $62FF: $8F
    nop                                           ; $6300: $00
    rst $38                                       ; $6301: $FF
    ld b, b                                       ; $6302: $40
    add b                                         ; $6303: $80
    rra                                           ; $6304: $1F
    add b                                         ; $6305: $80
    ccf                                           ; $6306: $3F
    add b                                         ; $6307: $80
    ccf                                           ; $6308: $3F
    add b                                         ; $6309: $80
    ccf                                           ; $630A: $3F
    add b                                         ; $630B: $80
    ccf                                           ; $630C: $3F
    add b                                         ; $630D: $80
    ccf                                           ; $630E: $3F
    add b                                         ; $630F: $80
    ldh [rP1], a                                  ; $6310: $E0 $00
    nop                                           ; $6312: $00
    rra                                           ; $6313: $1F
    nop                                           ; $6314: $00
    rra                                           ; $6315: $1F
    nop                                           ; $6316: $00
    rra                                           ; $6317: $1F
    nop                                           ; $6318: $00
    rra                                           ; $6319: $1F
    nop                                           ; $631A: $00
    rra                                           ; $631B: $1F
    nop                                           ; $631C: $00
    rra                                           ; $631D: $1F
    ld e, $1F                                     ; $631E: $1E $1F
    add b                                         ; $6320: $80
    rst $38                                       ; $6321: $FF
    rst $38                                       ; $6322: $FF
    rst $38                                       ; $6323: $FF
    ret nz                                        ; $6324: $C0

    add b                                         ; $6325: $80
    and b                                         ; $6326: $A0
    sbc a                                         ; $6327: $9F
    jp nz, $C1BC                                  ; $6328: $C2 $BC $C1

    cp a                                          ; $632B: $BF
    rst $38                                       ; $632C: $FF
    rst $38                                       ; $632D: $FF
    cp a                                          ; $632E: $BF
    ret nz                                        ; $632F: $C0

    rst $28                                       ; $6330: $EF
    ldh a, [$C7]                                  ; $6331: $F0 $C7
    ld hl, sp-$6D                                 ; $6333: $F8 $93
    call c, $BF18                                 ; $6335: $DC $18 $BF
    ccf                                           ; $6338: $3F
    cp a                                          ; $6339: $BF
    jr nc, jr_055_62FB                            ; $633A: $30 $BF

    xor a                                         ; $633C: $AF
    ldh a, [$CF]                                  ; $633D: $F0 $CF
    ldh [rIE], a                                  ; $633F: $E0 $FF
    rst $38                                       ; $6341: $FF
    rst $38                                       ; $6342: $FF
    rst $38                                       ; $6343: $FF
    reti                                          ; $6344: $D9


    rst $20                                       ; $6345: $E7
    sbc h                                         ; $6346: $9C
    rst $38                                       ; $6347: $FF
    and d                                         ; $6348: $A2
    rst $38                                       ; $6349: $FF
    or $A3                                        ; $634A: $F6 $A3
    cp a                                          ; $634C: $BF
    sbc h                                         ; $634D: $9C
    ret nz                                        ; $634E: $C0

    ret nz                                        ; $634F: $C0

    cp a                                          ; $6350: $BF
    ret nz                                        ; $6351: $C0

    rst $38                                       ; $6352: $FF
    rst $38                                       ; $6353: $FF
    adc d                                         ; $6354: $8A
    rst $38                                       ; $6355: $FF
    adc e                                         ; $6356: $8B
    ei                                            ; $6357: $FB
    ei                                            ; $6358: $FB
    adc e                                         ; $6359: $8B
    ei                                            ; $635A: $FB
    adc e                                         ; $635B: $8B
    adc e                                         ; $635C: $8B
    rst $38                                       ; $635D: $FF
    ldh [$80], a                                  ; $635E: $E0 $80
    db $FD                                        ; $6360: $FD
    inc bc                                        ; $6361: $03
    rst $38                                       ; $6362: $FF
    rst $38                                       ; $6363: $FF
    dec b                                         ; $6364: $05
    rst $38                                       ; $6365: $FF
    db $FD                                        ; $6366: $FD
    db $FD                                        ; $6367: $FD
    db $FD                                        ; $6368: $FD
    db $FD                                        ; $6369: $FD
    db $FD                                        ; $636A: $FD
    db $FD                                        ; $636B: $FD
    db $FD                                        ; $636C: $FD
    rst $38                                       ; $636D: $FF
    dec b                                         ; $636E: $05
    inc bc                                        ; $636F: $03
    ld a, a                                       ; $6370: $7F
    cpl                                           ; $6371: $2F
    ld a, e                                       ; $6372: $7B
    inc l                                         ; $6373: $2C
    ld a, a                                       ; $6374: $7F
    cpl                                           ; $6375: $2F
    ld a, d                                       ; $6376: $7A
    inc l                                         ; $6377: $2C
    ld a, e                                       ; $6378: $7B
    inc l                                         ; $6379: $2C
    ld a, b                                       ; $637A: $78
    cpl                                           ; $637B: $2F
    ld a, a                                       ; $637C: $7F
    cpl                                           ; $637D: $2F
    ld a, e                                       ; $637E: $7B
    inc l                                         ; $637F: $2C
    rst $38                                       ; $6380: $FF
    rst $38                                       ; $6381: $FF
    ld h, l                                       ; $6382: $65
    add d                                         ; $6383: $82
    cp $FF                                        ; $6384: $FE $FF
    xor d                                         ; $6386: $AA
    db $10                                        ; $6387: $10
    rst $28                                       ; $6388: $EF
    db $10                                        ; $6389: $10
    db $10                                        ; $638A: $10
    rst $38                                       ; $638B: $FF
    rst $38                                       ; $638C: $FF
    rst $38                                       ; $638D: $FF
    cp l                                          ; $638E: $BD
    jp nz, $FFEF                                  ; $638F: $C2 $EF $FF

    cp l                                          ; $6392: $BD
    ld b, d                                       ; $6393: $42
    ld a, a                                       ; $6394: $7F
    rst $38                                       ; $6395: $FF
    xor d                                         ; $6396: $AA
    db $10                                        ; $6397: $10
    rst $28                                       ; $6398: $EF
    db $10                                        ; $6399: $10
    db $10                                        ; $639A: $10
    rst $38                                       ; $639B: $FF
    rst $38                                       ; $639C: $FF
    rst $38                                       ; $639D: $FF
    ld d, h                                       ; $639E: $54
    nop                                           ; $639F: $00
    rst $38                                       ; $63A0: $FF
    db $FD                                        ; $63A1: $FD
    ld h, a                                       ; $63A2: $67
    add l                                         ; $63A3: $85
    rst $38                                       ; $63A4: $FF
    db $FD                                        ; $63A5: $FD
    xor a                                         ; $63A6: $AF
    dec d                                         ; $63A7: $15
    rst $28                                       ; $63A8: $EF
    dec d                                         ; $63A9: $15
    rla                                           ; $63AA: $17
    db $FD                                        ; $63AB: $FD
    rst $38                                       ; $63AC: $FF
    db $FD                                        ; $63AD: $FD
    cp a                                          ; $63AE: $BF
    push bc                                       ; $63AF: $C5
    ld d, b                                       ; $63B0: $50
    cp a                                          ; $63B1: $BF
    ld d, a                                       ; $63B2: $57
    cp b                                          ; $63B3: $B8
    ld e, a                                       ; $63B4: $5F
    cp a                                          ; $63B5: $BF
    ld d, a                                       ; $63B6: $57
    cp a                                          ; $63B7: $BF
    ld d, b                                       ; $63B8: $50
    cp a                                          ; $63B9: $BF
    ld d, a                                       ; $63BA: $57
    cp b                                          ; $63BB: $B8
    ld e, a                                       ; $63BC: $5F
    cp a                                          ; $63BD: $BF
    ld e, a                                       ; $63BE: $5F
    cp a                                          ; $63BF: $BF
    nop                                           ; $63C0: $00
    rst $38                                       ; $63C1: $FF
    rst $38                                       ; $63C2: $FF
    nop                                           ; $63C3: $00
    rst $38                                       ; $63C4: $FF
    rst $38                                       ; $63C5: $FF
    rst $38                                       ; $63C6: $FF
    rst $38                                       ; $63C7: $FF
    nop                                           ; $63C8: $00
    rst $38                                       ; $63C9: $FF
    rst $38                                       ; $63CA: $FF
    nop                                           ; $63CB: $00
    rst $38                                       ; $63CC: $FF
    rst $38                                       ; $63CD: $FF
    rst $20                                       ; $63CE: $E7
    rst $38                                       ; $63CF: $FF
    ld b, b                                       ; $63D0: $40
    cp a                                          ; $63D1: $BF
    ld l, a                                       ; $63D2: $6F
    or b                                          ; $63D3: $B0
    ld e, a                                       ; $63D4: $5F
    cp a                                          ; $63D5: $BF
    ld e, a                                       ; $63D6: $5F
    cp a                                          ; $63D7: $BF
    ld b, b                                       ; $63D8: $40
    cp a                                          ; $63D9: $BF
    ld l, a                                       ; $63DA: $6F
    or b                                          ; $63DB: $B0
    ld b, b                                       ; $63DC: $40
    cp a                                          ; $63DD: $BF
    ld a, [hl]                                    ; $63DE: $7E
    and c                                         ; $63DF: $A1
    rst $30                                       ; $63E0: $F7
    rst $20                                       ; $63E1: $E7
    rst $30                                       ; $63E2: $F7
    rst $20                                       ; $63E3: $E7
    rst $30                                       ; $63E4: $F7
    rst $20                                       ; $63E5: $E7
    rst $30                                       ; $63E6: $F7
    rst $20                                       ; $63E7: $E7
    rst $30                                       ; $63E8: $F7
    rst $20                                       ; $63E9: $E7
    rst $38                                       ; $63EA: $FF
    rst $30                                       ; $63EB: $F7
    nop                                           ; $63EC: $00
    rst $38                                       ; $63ED: $FF
    rst $38                                       ; $63EE: $FF
    nop                                           ; $63EF: $00
    rra                                           ; $63F0: $1F
    adc a                                         ; $63F1: $8F
    rra                                           ; $63F2: $1F
    add b                                         ; $63F3: $80
    nop                                           ; $63F4: $00
    add b                                         ; $63F5: $80
    nop                                           ; $63F6: $00
    add b                                         ; $63F7: $80
    nop                                           ; $63F8: $00
    rst $38                                       ; $63F9: $FF
    rst $38                                       ; $63FA: $FF
    rst $30                                       ; $63FB: $F7
    rst $30                                       ; $63FC: $F7
    rst $20                                       ; $63FD: $E7
    rst $30                                       ; $63FE: $F7
    rst $20                                       ; $63FF: $E7
    ccf                                           ; $6400: $3F
    add b                                         ; $6401: $80
    ccf                                           ; $6402: $3F
    add b                                         ; $6403: $80
    ccf                                           ; $6404: $3F
    add b                                         ; $6405: $80
    ccf                                           ; $6406: $3F
    add b                                         ; $6407: $80
    ccf                                           ; $6408: $3F
    add b                                         ; $6409: $80
    ccf                                           ; $640A: $3F
    add b                                         ; $640B: $80
    ccf                                           ; $640C: $3F
    add b                                         ; $640D: $80
    ccf                                           ; $640E: $3F
    add b                                         ; $640F: $80
    ld e, $1F                                     ; $6410: $1E $1F
    dec e                                         ; $6412: $1D
    rra                                           ; $6413: $1F
    inc bc                                        ; $6414: $03
    rra                                           ; $6415: $1F
    dec e                                         ; $6416: $1D
    rra                                           ; $6417: $1F
    ld e, $1F                                     ; $6418: $1E $1F
    ld c, $1F                                     ; $641A: $0E $1F
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    add b                                         ; $6420: $80
    rst $38                                       ; $6421: $FF
    rst $38                                       ; $6422: $FF
    rst $38                                       ; $6423: $FF
    add b                                         ; $6424: $80
    rst $38                                       ; $6425: $FF
    add b                                         ; $6426: $80
    rst $38                                       ; $6427: $FF
    sbc a                                         ; $6428: $9F
    rst $38                                       ; $6429: $FF
    rst $38                                       ; $642A: $FF

jr_055_642B:
    rst $38                                       ; $642B: $FF
    nop                                           ; $642C: $00
    rst $38                                       ; $642D: $FF
    nop                                           ; $642E: $00
    rst $38                                       ; $642F: $FF
    ld b, b                                       ; $6430: $40
    ldh [$50], a                                  ; $6431: $E0 $50
    ldh [rVBK], a                                 ; $6433: $E0 $4F
    ldh a, [$60]                                  ; $6435: $F0 $60
    rst $38                                       ; $6437: $FF
    ccf                                           ; $6438: $3F
    rst $38                                       ; $6439: $FF
    jr c, jr_055_642B                             ; $643A: $38 $EF

    ld e, b                                       ; $643C: $58
    rst $18                                       ; $643D: $DF
    jr nc, @+$01                                  ; $643E: $30 $FF

    rst $38                                       ; $6440: $FF
    rst $38                                       ; $6441: $FF
    add b                                         ; $6442: $80
    ret nz                                        ; $6443: $C0

    sbc a                                         ; $6444: $9F
    rst $38                                       ; $6445: $FF
    and a                                         ; $6446: $A7
    ld hl, sp-$59                                 ; $6447: $F8 $A7
    ld hl, sp-$61                                 ; $6449: $F8 $9F
    rst $38                                       ; $644B: $FF
    rst $18                                       ; $644C: $DF
    ldh [$7F], a                                  ; $644D: $E0 $7F
    rst $38                                       ; $644F: $FF
    rst $38                                       ; $6450: $FF
    nop                                           ; $6451: $00
    db $E4                                        ; $6452: $E4
    dec de                                        ; $6453: $1B
    db $E4                                        ; $6454: $E4
    dec de                                        ; $6455: $1B
    db $E4                                        ; $6456: $E4
    dec de                                        ; $6457: $1B
    db $E4                                        ; $6458: $E4
    dec de                                        ; $6459: $1B
    db $E4                                        ; $645A: $E4
    dec de                                        ; $645B: $1B
    rst $38                                       ; $645C: $FF
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    rst $38                                       ; $6460: $FF
    nop                                           ; $6461: $00
    sub e                                         ; $6462: $93
    ld l, h                                       ; $6463: $6C
    sub e                                         ; $6464: $93
    ld l, h                                       ; $6465: $6C
    sub e                                         ; $6466: $93
    ld l, h                                       ; $6467: $6C
    sub e                                         ; $6468: $93
    ld l, h                                       ; $6469: $6C
    sub e                                         ; $646A: $93
    ld l, h                                       ; $646B: $6C
    rst $38                                       ; $646C: $FF
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    ld a, b                                       ; $6470: $78
    cpl                                           ; $6471: $2F
    ld a, a                                       ; $6472: $7F
    cpl                                           ; $6473: $2F
    ld a, b                                       ; $6474: $78
    cpl                                           ; $6475: $2F
    ld a, a                                       ; $6476: $7F
    cpl                                           ; $6477: $2F
    db $F4                                        ; $6478: $F4
    ccf                                           ; $6479: $3F
    db $F4                                        ; $647A: $F4
    rst $38                                       ; $647B: $FF
    ccf                                           ; $647C: $3F
    rra                                           ; $647D: $1F
    rst $38                                       ; $647E: $FF
    rra                                           ; $647F: $1F
    add d                                         ; $6480: $82
    rst $38                                       ; $6481: $FF
    rst $38                                       ; $6482: $FF
    rst $38                                       ; $6483: $FF
    inc h                                         ; $6484: $24
    rst $38                                       ; $6485: $FF
    rst $38                                       ; $6486: $FF
    rst $38                                       ; $6487: $FF
    add b                                         ; $6488: $80
    rst $38                                       ; $6489: $FF
    add b                                         ; $648A: $80
    rst $38                                       ; $648B: $FF
    rst $38                                       ; $648C: $FF
    rst $38                                       ; $648D: $FF
    rst $38                                       ; $648E: $FF
    rst $38                                       ; $648F: $FF
    xor a                                         ; $6490: $AF
    ld d, b                                       ; $6491: $50
    rst $38                                       ; $6492: $FF
    rst $38                                       ; $6493: $FF
    jr nz, @+$01                                  ; $6494: $20 $FF

    rst $38                                       ; $6496: $FF
    rst $38                                       ; $6497: $FF
    add b                                         ; $6498: $80
    rst $38                                       ; $6499: $FF
    add b                                         ; $649A: $80
    rst $38                                       ; $649B: $FF
    rst $38                                       ; $649C: $FF
    rst $38                                       ; $649D: $FF
    rst $38                                       ; $649E: $FF
    rst $38                                       ; $649F: $FF
    add a                                         ; $64A0: $87
    db $FD                                        ; $64A1: $FD
    rst $38                                       ; $64A2: $FF
    db $FD                                        ; $64A3: $FD
    daa                                           ; $64A4: $27
    db $FD                                        ; $64A5: $FD
    rst $38                                       ; $64A6: $FF
    db $FD                                        ; $64A7: $FD
    add a                                         ; $64A8: $87
    db $FD                                        ; $64A9: $FD
    add a                                         ; $64AA: $87
    db $FD                                        ; $64AB: $FD
    rst $38                                       ; $64AC: $FF
    db $FD                                        ; $64AD: $FD
    rst $38                                       ; $64AE: $FF
    rst $38                                       ; $64AF: $FF
    ld e, a                                       ; $64B0: $5F
    cp a                                          ; $64B1: $BF
    ld e, a                                       ; $64B2: $5F
    cp a                                          ; $64B3: $BF
    ld e, a                                       ; $64B4: $5F
    cp a                                          ; $64B5: $BF
    ld d, a                                       ; $64B6: $57
    cp a                                          ; $64B7: $BF
    ld d, b                                       ; $64B8: $50
    cp a                                          ; $64B9: $BF
    ld d, a                                       ; $64BA: $57
    cp b                                          ; $64BB: $B8
    ld e, a                                       ; $64BC: $5F
    cp a                                          ; $64BD: $BF
    sbc a                                         ; $64BE: $9F
    rst $38                                       ; $64BF: $FF
    rst $20                                       ; $64C0: $E7
    rst $38                                       ; $64C1: $FF
    rst $20                                       ; $64C2: $E7
    rst $38                                       ; $64C3: $FF
    rst $20                                       ; $64C4: $E7
    rst $38                                       ; $64C5: $FF
    rst $38                                       ; $64C6: $FF
    rst $38                                       ; $64C7: $FF
    nop                                           ; $64C8: $00
    rst $38                                       ; $64C9: $FF
    rst $38                                       ; $64CA: $FF
    nop                                           ; $64CB: $00
    rst $38                                       ; $64CC: $FF
    rst $38                                       ; $64CD: $FF
    rst $38                                       ; $64CE: $FF
    rst $38                                       ; $64CF: $FF
    ld h, d                                       ; $64D0: $62
    cp l                                          ; $64D1: $BD
    ld l, d                                       ; $64D2: $6A
    or l                                          ; $64D3: $B5
    ld l, d                                       ; $64D4: $6A
    cp l                                          ; $64D5: $BD
    ld h, d                                       ; $64D6: $62
    cp l                                          ; $64D7: $BD
    ld a, h                                       ; $64D8: $7C
    cp a                                          ; $64D9: $BF
    ld l, a                                       ; $64DA: $6F
    or b                                          ; $64DB: $B0
    ld e, a                                       ; $64DC: $5F
    cp a                                          ; $64DD: $BF
    sbc a                                         ; $64DE: $9F
    rst $38                                       ; $64DF: $FF
    ldh a, [$C0]                                  ; $64E0: $F0 $C0
    ldh [$80], a                                  ; $64E2: $E0 $80
    ldh [$80], a                                  ; $64E4: $E0 $80
    ldh [$80], a                                  ; $64E6: $E0 $80
    ldh a, [$80]                                  ; $64E8: $F0 $80
    rst $38                                       ; $64EA: $FF
    add b                                         ; $64EB: $80
    cp a                                          ; $64EC: $BF
    ret nz                                        ; $64ED: $C0

    rst $08                                       ; $64EE: $CF
    ldh a, [rSB]                                  ; $64EF: $F0 $01
    rst $38                                       ; $64F1: $FF
    dec bc                                        ; $64F2: $0B
    push af                                       ; $64F3: $F5
    ld c, e                                       ; $64F4: $4B
    push af                                       ; $64F5: $F5
    ld l, e                                       ; $64F6: $6B
    push af                                       ; $64F7: $F5
    ld l, c                                       ; $64F8: $69
    rst $30                                       ; $64F9: $F7
    ld [hl], e                                    ; $64FA: $73
    push hl                                       ; $64FB: $E5
    ld [hl], c                                    ; $64FC: $71
    rst $20                                       ; $64FD: $E7
    di                                            ; $64FE: $F3
    rst $20                                       ; $64FF: $E7
    ccf                                           ; $6500: $3F
    add b                                         ; $6501: $80
    ccf                                           ; $6502: $3F
    add b                                         ; $6503: $80
    ccf                                           ; $6504: $3F
    add b                                         ; $6505: $80
    rra                                           ; $6506: $1F
    add b                                         ; $6507: $80
    ld b, b                                       ; $6508: $40
    add b                                         ; $6509: $80
    add b                                         ; $650A: $80
    rst $38                                       ; $650B: $FF
    rst $38                                       ; $650C: $FF
    rst $38                                       ; $650D: $FF
    ld a, a                                       ; $650E: $7F
    rst $38                                       ; $650F: $FF
    rst $38                                       ; $6510: $FF
    rst $38                                       ; $6511: $FF
    db $DD                                        ; $6512: $DD
    db $E3                                        ; $6513: $E3
    or [hl]                                       ; $6514: $B6
    pop bc                                        ; $6515: $C1
    inc hl                                        ; $6516: $23
    ret nz                                        ; $6517: $C0

    inc hl                                        ; $6518: $23
    ret nz                                        ; $6519: $C0

    and d                                         ; $651A: $A2
    pop bc                                        ; $651B: $C1
    db $DD                                        ; $651C: $DD
    db $E3                                        ; $651D: $E3
    db $E3                                        ; $651E: $E3
    rst $38                                       ; $651F: $FF
    rst $38                                       ; $6520: $FF
    nop                                           ; $6521: $00
    rst $38                                       ; $6522: $FF
    nop                                           ; $6523: $00
    rst $38                                       ; $6524: $FF
    nop                                           ; $6525: $00
    rst $38                                       ; $6526: $FF
    nop                                           ; $6527: $00
    rst $38                                       ; $6528: $FF
    nop                                           ; $6529: $00
    rst $38                                       ; $652A: $FF
    nop                                           ; $652B: $00
    ldh [rNR10], a                                ; $652C: $E0 $10
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    rst $38                                       ; $6530: $FF
    rst $38                                       ; $6531: $FF
    rst $38                                       ; $6532: $FF
    add b                                         ; $6533: $80
    ret nz                                        ; $6534: $C0

    cp a                                          ; $6535: $BF
    rst $18                                       ; $6536: $DF
    cp a                                          ; $6537: $BF
    rst $18                                       ; $6538: $DF
    cp a                                          ; $6539: $BF
    rst $18                                       ; $653A: $DF
    cp a                                          ; $653B: $BF
    rst $18                                       ; $653C: $DF
    cp a                                          ; $653D: $BF
    rst $18                                       ; $653E: $DF
    cp a                                          ; $653F: $BF
    rst $28                                       ; $6540: $EF
    rst $38                                       ; $6541: $FF
    jp $81FF                                      ; $6542: $C3 $FF $81


    rst $28                                       ; $6545: $EF
    adc d                                         ; $6546: $8A
    push hl                                       ; $6547: $E5
    and h                                         ; $6548: $A4
    jp $C384                                      ; $6549: $C3 $84 $C3


    add $A1                                       ; $654C: $C6 $A1
    or h                                          ; $654E: $B4
    jp $FFFF                                      ; $654F: $C3 $FF $FF


    jr z, @+$01                                   ; $6552: $28 $FF

    adc l                                         ; $6554: $8D
    ld a, [c]                                     ; $6555: $F2
    ret nc                                        ; $6556: $D0

    nop                                           ; $6557: $00
    cp c                                          ; $6558: $B9
    ld b, b                                       ; $6559: $40
    or a                                          ; $655A: $B7
    add sp, $13                                   ; $655B: $E8 $13
    rst $38                                       ; $655D: $FF
    rst $38                                       ; $655E: $FF
    rst $38                                       ; $655F: $FF
    rst $38                                       ; $6560: $FF
    rst $38                                       ; $6561: $FF
    ld hl, $4CFF                                  ; $6562: $21 $FF $4C
    or e                                          ; $6565: $B3
    cp e                                          ; $6566: $BB
    ld b, h                                       ; $6567: $44
    ld h, [hl]                                    ; $6568: $66
    dec bc                                        ; $6569: $0B
    ld b, c                                       ; $656A: $41
    cp a                                          ; $656B: $BF
    dec hl                                        ; $656C: $2B
    rst $38                                       ; $656D: $FF
    rst $38                                       ; $656E: $FF
    rst $38                                       ; $656F: $FF
    rst $38                                       ; $6570: $FF
    rst $38                                       ; $6571: $FF
    xor d                                         ; $6572: $AA
    rst $38                                       ; $6573: $FF
    xor d                                         ; $6574: $AA
    xor d                                         ; $6575: $AA
    rst $38                                       ; $6576: $FF
    xor d                                         ; $6577: $AA
    xor d                                         ; $6578: $AA
    push de                                       ; $6579: $D5
    rst $38                                       ; $657A: $FF
    add b                                         ; $657B: $80
    sbc $A1                                       ; $657C: $DE $A1
    call c, hScript.Frame+1                                 ; $657E: $DC $A3 $FF
    rst $38                                       ; $6581: $FF
    xor d                                         ; $6582: $AA
    rst $38                                       ; $6583: $FF
    xor d                                         ; $6584: $AA
    xor d                                         ; $6585: $AA
    rst $38                                       ; $6586: $FF
    xor d                                         ; $6587: $AA
    xor d                                         ; $6588: $AA
    ld d, l                                       ; $6589: $55
    rst $38                                       ; $658A: $FF
    nop                                           ; $658B: $00
    rst $38                                       ; $658C: $FF
    nop                                           ; $658D: $00
    ld a, a                                       ; $658E: $7F
    add b                                         ; $658F: $80
    rst $38                                       ; $6590: $FF
    rst $38                                       ; $6591: $FF
    xor d                                         ; $6592: $AA
    rst $38                                       ; $6593: $FF
    xor d                                         ; $6594: $AA
    xor d                                         ; $6595: $AA
    rst $38                                       ; $6596: $FF
    xor d                                         ; $6597: $AA
    xor d                                         ; $6598: $AA
    ld d, l                                       ; $6599: $55
    db $D3                                        ; $659A: $D3
    nop                                           ; $659B: $00
    or d                                          ; $659C: $B2
    ld bc, $034C                                  ; $659D: $01 $4C $03
    ld a, [hl]                                    ; $65A0: $7E
    ld bc, $017E                                  ; $65A1: $01 $7E $01
    ld a, [hl]                                    ; $65A4: $7E
    ld bc, $017E                                  ; $65A5: $01 $7E $01
    ld a, [hl]                                    ; $65A8: $7E
    ld bc, $017E                                  ; $65A9: $01 $7E $01
    ld a, [hl]                                    ; $65AC: $7E
    ld bc, $017E                                  ; $65AD: $01 $7E $01
    ld bc, $7E00                                  ; $65B0: $01 $00 $7E
    ld bc, $017E                                  ; $65B3: $01 $7E $01
    ld a, [hl]                                    ; $65B6: $7E
    ld bc, $017E                                  ; $65B7: $01 $7E $01
    ld a, [hl]                                    ; $65BA: $7E
    ld bc, $017E                                  ; $65BB: $01 $7E $01
    ld a, [hl]                                    ; $65BE: $7E
    ld bc, $80FF                                  ; $65BF: $01 $FF $80
    rst $38                                       ; $65C2: $FF
    rst $38                                       ; $65C3: $FF
    db $E4                                        ; $65C4: $E4
    rst $38                                       ; $65C5: $FF
    rst $38                                       ; $65C6: $FF
    rst $38                                       ; $65C7: $FF
    pop af                                        ; $65C8: $F1
    rst $38                                       ; $65C9: $FF
    ld sp, hl                                     ; $65CA: $F9
    rst $38                                       ; $65CB: $FF
    rst $38                                       ; $65CC: $FF
    rst $38                                       ; $65CD: $FF
    rst $38                                       ; $65CE: $FF
    rst $38                                       ; $65CF: $FF
    daa                                           ; $65D0: $27
    add b                                         ; $65D1: $80
    inc bc                                        ; $65D2: $03
    and h                                         ; $65D3: $A4
    inc bc                                        ; $65D4: $03
    and h                                         ; $65D5: $A4
    inc bc                                        ; $65D6: $03
    and h                                         ; $65D7: $A4
    daa                                           ; $65D8: $27
    sbc b                                         ; $65D9: $98
    ccf                                           ; $65DA: $3F
    add b                                         ; $65DB: $80
    ccf                                           ; $65DC: $3F
    add b                                         ; $65DD: $80
    ccf                                           ; $65DE: $3F
    add b                                         ; $65DF: $80
    ret nz                                        ; $65E0: $C0

    rst $38                                       ; $65E1: $FF
    and b                                         ; $65E2: $A0
    ret nz                                        ; $65E3: $C0

    ret nz                                        ; $65E4: $C0

    add b                                         ; $65E5: $80
    ret nz                                        ; $65E6: $C0

    add b                                         ; $65E7: $80
    ldh [$9F], a                                  ; $65E8: $E0 $9F
    sbc a                                         ; $65EA: $9F
    ldh [$BF], a                                  ; $65EB: $E0 $BF
    ret nz                                        ; $65ED: $C0

    cp a                                          ; $65EE: $BF
    ret nz                                        ; $65EF: $C0

    nop                                           ; $65F0: $00
    rst $38                                       ; $65F1: $FF
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    rst $38                                       ; $65F9: $FF
    rst $38                                       ; $65FA: $FF
    nop                                           ; $65FB: $00
    rst $38                                       ; $65FC: $FF
    nop                                           ; $65FD: $00
    rst $38                                       ; $65FE: $FF
    nop                                           ; $65FF: $00
    ld a, b                                       ; $6600: $78
    nop                                           ; $6601: $00
    jr c, jr_055_6644                             ; $6602: $38 $40

    rrca                                          ; $6604: $0F
    ld [hl], b                                    ; $6605: $70
    jr z, jr_055_6678                             ; $6606: $28 $70

    jr z, jr_055_667A                             ; $6608: $28 $70

    ld e, b                                       ; $660A: $58
    jr nz, jr_055_663D                            ; $660B: $20 $30

    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    db $E3                                        ; $6610: $E3
    rst $38                                       ; $6611: $FF
    db $EB                                        ; $6612: $EB
    rst $30                                       ; $6613: $F7
    db $EB                                        ; $6614: $EB
    or a                                          ; $6615: $B7
    and d                                         ; $6616: $A2
    ld [hl], a                                    ; $6617: $77
    ld h, e                                       ; $6618: $63
    or $EB                                        ; $6619: $F6 $EB
    rst $30                                       ; $661B: $F7
    rst $30                                       ; $661C: $F7
    rst $38                                       ; $661D: $FF
    rst $38                                       ; $661E: $FF
    rst $38                                       ; $661F: $FF
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    rrca                                          ; $6622: $0F
    nop                                           ; $6623: $00
    db $10                                        ; $6624: $10
    rrca                                          ; $6625: $0F
    jr nz, jr_055_6647                            ; $6626: $20 $1F

    jr nz, @+$21                                  ; $6628: $20 $1F

    jr nc, jr_055_664B                            ; $662A: $30 $1F

    inc l                                         ; $662C: $2C
    rra                                           ; $662D: $1F
    inc sp                                        ; $662E: $33
    rrca                                          ; $662F: $0F
    rst $18                                       ; $6630: $DF
    cp a                                          ; $6631: $BF
    rst $18                                       ; $6632: $DF
    cp a                                          ; $6633: $BF
    rst $18                                       ; $6634: $DF
    cp a                                          ; $6635: $BF
    rst $18                                       ; $6636: $DF
    cp a                                          ; $6637: $BF
    rst $18                                       ; $6638: $DF
    cp a                                          ; $6639: $BF
    rst $18                                       ; $663A: $DF
    cp a                                          ; $663B: $BF
    rst $18                                       ; $663C: $DF

jr_055_663D:
    cp a                                          ; $663D: $BF
    rst $18                                       ; $663E: $DF
    cp a                                          ; $663F: $BF
    and h                                         ; $6640: $A4
    jp $C394                                      ; $6641: $C3 $94 $C3


jr_055_6644:
    sbc [hl]                                      ; $6644: $9E
    pop bc                                        ; $6645: $C1
    and h                                         ; $6646: $A4

jr_055_6647:
    jp $ABC0                                      ; $6647: $C3 $C0 $AB


    sbc d                                         ; $664A: $9A

jr_055_664B:
    db $E3                                        ; $664B: $E3
    add b                                         ; $664C: $80
    rst $20                                       ; $664D: $E7
    or e                                          ; $664E: $B3
    call $FFFF                                    ; $664F: $CD $FF $FF
    rst $38                                       ; $6652: $FF
    rst $38                                       ; $6653: $FF
    ld a, [c]                                     ; $6654: $F2
    cp a                                          ; $6655: $BF
    cpl                                           ; $6656: $2F
    ret nc                                        ; $6657: $D0

    add $79                                       ; $6658: $C6 $79
    add sp, -$41                                  ; $665A: $E8 $BF
    rst $38                                       ; $665C: $FF
    rst $38                                       ; $665D: $FF
    rst $38                                       ; $665E: $FF
    rst $38                                       ; $665F: $FF
    rst $38                                       ; $6660: $FF
    rst $38                                       ; $6661: $FF
    rst $38                                       ; $6662: $FF
    rst $38                                       ; $6663: $FF
    or e                                          ; $6664: $B3
    db $FD                                        ; $6665: $FD
    ld b, l                                       ; $6666: $45
    cp d                                          ; $6667: $BA
    sbc d                                         ; $6668: $9A
    ld l, a                                       ; $6669: $6F
    cp a                                          ; $666A: $BF
    rst $38                                       ; $666B: $FF
    rst $38                                       ; $666C: $FF
    rst $38                                       ; $666D: $FF
    rst $38                                       ; $666E: $FF
    rst $38                                       ; $666F: $FF
    ld hl, sp-$79                                 ; $6670: $F8 $87
    call c, $DEA3                                 ; $6672: $DC $A3 $DE
    and c                                         ; $6675: $A1
    rst $38                                       ; $6676: $FF
    add b                                         ; $6677: $80

jr_055_6678:
    rst $18                                       ; $6678: $DF
    and b                                         ; $6679: $A0

jr_055_667A:
    rst $18                                       ; $667A: $DF
    and b                                         ; $667B: $A0
    rst $38                                       ; $667C: $FF
    add b                                         ; $667D: $80
    rst $18                                       ; $667E: $DF
    and b                                         ; $667F: $A0
    ld a, $C0                                     ; $6680: $3E $C0
    ld a, l                                       ; $6682: $7D
    add b                                         ; $6683: $80
    ei                                            ; $6684: $FB
    nop                                           ; $6685: $00
    db $F4                                        ; $6686: $F4
    nop                                           ; $6687: $00
    db $EC                                        ; $6688: $EC
    nop                                           ; $6689: $00
    db $D3                                        ; $668A: $D3
    nop                                           ; $668B: $00
    or d                                          ; $668C: $B2
    ld bc, $034C                                  ; $668D: $01 $4C $03
    ret z                                         ; $6690: $C8

    rlca                                          ; $6691: $07
    jr nc, @+$10                                  ; $6692: $30 $0E

    jr nz, @+$1F                                  ; $6694: $20 $1D

    pop bc                                        ; $6696: $C1
    ld a, [hl-]                                   ; $6697: $3A
    add e                                         ; $6698: $83
    ld [hl], h                                    ; $6699: $74
    ld b, $E8                                     ; $669A: $06 $E8
    inc c                                         ; $669C: $0C
    pop de                                        ; $669D: $D1
    jr @-$5C                                      ; $669E: $18 $A2

    ld a, [hl]                                    ; $66A0: $7E
    ld bc, $007F                                  ; $66A1: $01 $7F $00
    ld a, a                                       ; $66A4: $7F
    nop                                           ; $66A5: $00
    ld a, a                                       ; $66A6: $7F
    nop                                           ; $66A7: $00
    ld a, a                                       ; $66A8: $7F
    nop                                           ; $66A9: $00
    ld a, a                                       ; $66AA: $7F
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    rst $38                                       ; $66AF: $FF
    nop                                           ; $66B0: $00
    rst $38                                       ; $66B1: $FF
    cp $01                                        ; $66B2: $FE $01
    cp $01                                        ; $66B4: $FE $01
    cp $01                                        ; $66B6: $FE $01
    cp $01                                        ; $66B8: $FE $01
    cp $01                                        ; $66BA: $FE $01
    ld bc, $0000                                  ; $66BC: $01 $00 $00
    rst $38                                       ; $66BF: $FF
    nop                                           ; $66C0: $00
    rst $38                                       ; $66C1: $FF
    rst $38                                       ; $66C2: $FF
    nop                                           ; $66C3: $00
    rst $38                                       ; $66C4: $FF
    nop                                           ; $66C5: $00
    sbc a                                         ; $66C6: $9F
    ld h, b                                       ; $66C7: $60
    rst $38                                       ; $66C8: $FF
    nop                                           ; $66C9: $00
    rst $38                                       ; $66CA: $FF
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    rst $38                                       ; $66CF: $FF
    nop                                           ; $66D0: $00
    rst $38                                       ; $66D1: $FF
    cp $01                                        ; $66D2: $FE $01
    cp $01                                        ; $66D4: $FE $01
    cp $01                                        ; $66D6: $FE $01
    cp $01                                        ; $66D8: $FE $01
    cp $01                                        ; $66DA: $FE $01
    ld bc, $0000                                  ; $66DC: $01 $00 $00
    rst $38                                       ; $66DF: $FF
    cp a                                          ; $66E0: $BF
    ret nz                                        ; $66E1: $C0

    sbc a                                         ; $66E2: $9F
    ret nz                                        ; $66E3: $C0

    sbc a                                         ; $66E4: $9F
    ret nz                                        ; $66E5: $C0

    rst $18                                       ; $66E6: $DF
    add b                                         ; $66E7: $80
    rst $18                                       ; $66E8: $DF
    add b                                         ; $66E9: $80
    ret nz                                        ; $66EA: $C0

    add b                                         ; $66EB: $80
    ldh [$80], a                                  ; $66EC: $E0 $80
    cp a                                          ; $66EE: $BF
    ret nz                                        ; $66EF: $C0

    rst $38                                       ; $66F0: $FF
    nop                                           ; $66F1: $00
    rst $38                                       ; $66F2: $FF
    nop                                           ; $66F3: $00
    rst $38                                       ; $66F4: $FF
    nop                                           ; $66F5: $00
    rst $38                                       ; $66F6: $FF
    nop                                           ; $66F7: $00
    rst $38                                       ; $66F8: $FF
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    nop                                           ; $66FC: $00
    nop                                           ; $66FD: $00
    rst $38                                       ; $66FE: $FF
    nop                                           ; $66FF: $00
    rst $38                                       ; $6700: $FF
    rst $38                                       ; $6701: $FF
    jr z, @+$01                                   ; $6702: $28 $FF

    adc l                                         ; $6704: $8D
    ld [hl], d                                    ; $6705: $72
    ld d, b                                       ; $6706: $50
    nop                                           ; $6707: $00
    add hl, de                                    ; $6708: $19
    ld b, b                                       ; $6709: $40
    or a                                          ; $670A: $B7
    ld c, b                                       ; $670B: $48
    inc bc                                        ; $670C: $03
    rst $38                                       ; $670D: $FF
    rst $38                                       ; $670E: $FF
    rst $38                                       ; $670F: $FF
    rst $38                                       ; $6710: $FF
    rst $38                                       ; $6711: $FF
    ld bc, $4CFF                                  ; $6712: $01 $FF $4C
    or e                                          ; $6715: $B3
    or d                                          ; $6716: $B2
    ld b, b                                       ; $6717: $40
    ld l, l                                       ; $6718: $6D
    nop                                           ; $6719: $00
    ld c, c                                       ; $671A: $49
    or [hl]                                       ; $671B: $B6
    ld [hl+], a                                   ; $671C: $22
    rst $38                                       ; $671D: $FF
    rst $38                                       ; $671E: $FF
    rst $38                                       ; $671F: $FF
    jr jr_055_6729                                ; $6720: $18 $07

    rra                                           ; $6722: $1F
    nop                                           ; $6723: $00
    rla                                           ; $6724: $17
    ld [$0C16], sp                                ; $6725: $08 $16 $0C
    ld a, [de]                                    ; $6728: $1A

jr_055_6729:
    inc c                                         ; $6729: $0C
    inc c                                         ; $672A: $0C
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    rst $38                                       ; $6730: $FF
    rst $38                                       ; $6731: $FF
    rst $38                                       ; $6732: $FF
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    rst $38                                       ; $6735: $FF
    rst $38                                       ; $6736: $FF
    rst $38                                       ; $6737: $FF
    rst $38                                       ; $6738: $FF
    rst $38                                       ; $6739: $FF
    rst $38                                       ; $673A: $FF
    rst $38                                       ; $673B: $FF
    rst $38                                       ; $673C: $FF
    rst $38                                       ; $673D: $FF
    rst $38                                       ; $673E: $FF
    rst $38                                       ; $673F: $FF
    add $FB                                       ; $6740: $C6 $FB
    jp c, $ACB5                                   ; $6742: $DA $B5 $AC

    db $DB                                        ; $6745: $DB
    rst $10                                       ; $6746: $D7
    pop hl                                        ; $6747: $E1
    cp [hl]                                       ; $6748: $BE
    rst $38                                       ; $6749: $FF
    db $DD                                        ; $674A: $DD
    rst $20                                       ; $674B: $E7
    cp [hl]                                       ; $674C: $BE
    rst $38                                       ; $674D: $FF
    xor c                                         ; $674E: $A9
    rst $38                                       ; $674F: $FF
    rst $38                                       ; $6750: $FF
    rst $38                                       ; $6751: $FF
    rst $38                                       ; $6752: $FF
    rst $38                                       ; $6753: $FF
    call $3AFF                                    ; $6754: $CD $FF $3A
    rst $20                                       ; $6757: $E7
    ld d, [hl]                                    ; $6758: $56
    db $FD                                        ; $6759: $FD
    db $FD                                        ; $675A: $FD
    rst $38                                       ; $675B: $FF
    rst $38                                       ; $675C: $FF
    rst $38                                       ; $675D: $FF
    rst $38                                       ; $675E: $FF
    rst $38                                       ; $675F: $FF
    rst $38                                       ; $6760: $FF
    rst $38                                       ; $6761: $FF
    rst $38                                       ; $6762: $FF
    rst $38                                       ; $6763: $FF
    or e                                          ; $6764: $B3
    rst $38                                       ; $6765: $FF
    ld e, h                                       ; $6766: $5C
    rst $20                                       ; $6767: $E7
    ld l, d                                       ; $6768: $6A
    cp a                                          ; $6769: $BF
    cp a                                          ; $676A: $BF
    rst $38                                       ; $676B: $FF
    rst $38                                       ; $676C: $FF
    rst $38                                       ; $676D: $FF
    rst $38                                       ; $676E: $FF
    rst $38                                       ; $676F: $FF
    sbc $A0                                       ; $6770: $DE $A0
    db $FD                                        ; $6772: $FD
    add b                                         ; $6773: $80
    db $DB                                        ; $6774: $DB
    and b                                         ; $6775: $A0
    call nc, $ECA0                                ; $6776: $D4 $A0 $EC
    add b                                         ; $6779: $80
    db $D3                                        ; $677A: $D3
    and b                                         ; $677B: $A0
    jp nc, $FCA1                                  ; $677C: $D2 $A1 $FC

    add e                                         ; $677F: $83
    rst $38                                       ; $6780: $FF
    nop                                           ; $6781: $00
    ld [hl], h                                    ; $6782: $74
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
    jr nc, jr_055_67D6                            ; $6790: $30 $44

    ld h, b                                       ; $6792: $60
    adc b                                         ; $6793: $88
    pop bc                                        ; $6794: $C1
    db $10                                        ; $6795: $10
    add e                                         ; $6796: $83
    jr nz, jr_055_67A0                            ; $6797: $20 $07

    ld b, b                                       ; $6799: $40
    ld c, $81                                     ; $679A: $0E $81
    inc e                                         ; $679C: $1C
    inc bc                                        ; $679D: $03
    jr c, jr_055_67A7                             ; $679E: $38 $07

jr_055_67A0:
    rst $38                                       ; $67A0: $FF
    rst $38                                       ; $67A1: $FF
    adc b                                         ; $67A2: $88
    rst $38                                       ; $67A3: $FF
    adc b                                         ; $67A4: $88
    rst $38                                       ; $67A5: $FF
    adc b                                         ; $67A6: $88

jr_055_67A7:
    rst $38                                       ; $67A7: $FF
    adc b                                         ; $67A8: $88
    rst $38                                       ; $67A9: $FF
    adc b                                         ; $67AA: $88
    rst $38                                       ; $67AB: $FF
    adc b                                         ; $67AC: $88
    rst $38                                       ; $67AD: $FF
    rst $38                                       ; $67AE: $FF
    rst $38                                       ; $67AF: $FF
    rst $38                                       ; $67B0: $FF
    rst $38                                       ; $67B1: $FF
    rst $38                                       ; $67B2: $FF
    rrca                                          ; $67B3: $0F
    rra                                           ; $67B4: $1F
    rrca                                          ; $67B5: $0F
    rra                                           ; $67B6: $1F
    rrca                                          ; $67B7: $0F
    rra                                           ; $67B8: $1F
    adc a                                         ; $67B9: $8F
    rra                                           ; $67BA: $1F
    adc a                                         ; $67BB: $8F
    rra                                           ; $67BC: $1F
    adc a                                         ; $67BD: $8F
    rra                                           ; $67BE: $1F
    adc a                                         ; $67BF: $8F
    rst $38                                       ; $67C0: $FF
    nop                                           ; $67C1: $00
    ret nz                                        ; $67C2: $C0

    nop                                           ; $67C3: $00
    rst $38                                       ; $67C4: $FF
    nop                                           ; $67C5: $00
    ret nz                                        ; $67C6: $C0

jr_055_67C7:
    nop                                           ; $67C7: $00
    ret nz                                        ; $67C8: $C0

jr_055_67C9:
    nop                                           ; $67C9: $00
    ret nz                                        ; $67CA: $C0

    nop                                           ; $67CB: $00
    ret nz                                        ; $67CC: $C0

    nop                                           ; $67CD: $00
    ret nz                                        ; $67CE: $C0

    nop                                           ; $67CF: $00
    rst $38                                       ; $67D0: $FF

jr_055_67D1:
    nop                                           ; $67D1: $00
    inc e                                         ; $67D2: $1C
    nop                                           ; $67D3: $00
    cp $00                                        ; $67D4: $FE $00

jr_055_67D6:
    rlca                                          ; $67D6: $07
    nop                                           ; $67D7: $00
    inc bc                                        ; $67D8: $03
    nop                                           ; $67D9: $00
    ld bc, $0000                                  ; $67DA: $01 $00 $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    add b                                         ; $67E0: $80
    rst $38                                       ; $67E1: $FF
    add b                                         ; $67E2: $80
    rst $38                                       ; $67E3: $FF
    ret c                                         ; $67E4: $D8

    rst $28                                       ; $67E5: $EF
    jp c, $CAED                                   ; $67E6: $DA $ED $CA

    db $FD                                        ; $67E9: $FD
    jp c, $CCED                                   ; $67EA: $DA $ED $CC

    ld sp, hl                                     ; $67ED: $F9
    db $EC                                        ; $67EE: $EC
    ld sp, hl                                     ; $67EF: $F9
    jr nz, jr_055_67D1                            ; $67F0: $20 $DF

    nop                                           ; $67F2: $00
    rst $38                                       ; $67F3: $FF
    jr nz, @-$1F                                  ; $67F4: $20 $DF

    jr nc, jr_055_67C7                            ; $67F6: $30 $CF

    jr nc, jr_055_67C9                            ; $67F8: $30 $CF

    db $10                                        ; $67FA: $10
    rst $28                                       ; $67FB: $EF
    nop                                           ; $67FC: $00
    rst $38                                       ; $67FD: $FF
    inc e                                         ; $67FE: $1C
    rst $38                                       ; $67FF: $FF
    nop                                           ; $6800: $00
    rst $38                                       ; $6801: $FF
    ld [hl-], a                                   ; $6802: $32
    adc l                                         ; $6803: $8D
    inc e                                         ; $6804: $1C
    add c                                         ; $6805: $81
    ld a, $81                                     ; $6806: $3E $81
    ld a, h                                       ; $6808: $7C
    add e                                         ; $6809: $83
    ld l, h                                       ; $680A: $6C
    add e                                         ; $680B: $83
    inc l                                         ; $680C: $2C
    jp $C13E                                      ; $680D: $C3 $3E $C1


    nop                                           ; $6810: $00
    rst $38                                       ; $6811: $FF
    inc [hl]                                      ; $6812: $34
    ret                                           ; $6813: $C9


    ld e, d                                       ; $6814: $5A
    add c                                         ; $6815: $81
    ld e, d                                       ; $6816: $5A
    add c                                         ; $6817: $81
    ld l, $91                                     ; $6818: $2E $91
    ld [hl+], a                                   ; $681A: $22
    sbc c                                         ; $681B: $99
    ld h, [hl]                                    ; $681C: $66
    sbc c                                         ; $681D: $99
    ld h, [hl]                                    ; $681E: $66
    sbc c                                         ; $681F: $99
    rst $38                                       ; $6820: $FF
    ld a, a                                       ; $6821: $7F
    cp $3F                                        ; $6822: $FE $3F
    db $FC                                        ; $6824: $FC
    rra                                           ; $6825: $1F
    ld hl, sp+$0F                                 ; $6826: $F8 $0F
    ldh [rIF], a                                  ; $6828: $E0 $0F
    ret nz                                        ; $682A: $C0

    rlca                                          ; $682B: $07
    add b                                         ; $682C: $80
    inc bc                                        ; $682D: $03
    nop                                           ; $682E: $00
    ld bc, $7FFF                                  ; $682F: $01 $FF $7F
    cp $3F                                        ; $6832: $FE $3F
    db $FC                                        ; $6834: $FC
    rra                                           ; $6835: $1F
    ld hl, sp+$0F                                 ; $6836: $F8 $0F
    ldh [rIF], a                                  ; $6838: $E0 $0F
    ret nz                                        ; $683A: $C0

    rlca                                          ; $683B: $07
    add b                                         ; $683C: $80
    inc bc                                        ; $683D: $03
    nop                                           ; $683E: $00
    ld bc, $7FFF                                  ; $683F: $01 $FF $7F
    cp $3F                                        ; $6842: $FE $3F
    db $FC                                        ; $6844: $FC
    rra                                           ; $6845: $1F
    ld hl, sp+$0F                                 ; $6846: $F8 $0F
    ldh [rIF], a                                  ; $6848: $E0 $0F
    ret nz                                        ; $684A: $C0

    rlca                                          ; $684B: $07
    add b                                         ; $684C: $80
    inc bc                                        ; $684D: $03
    nop                                           ; $684E: $00
    ld bc, $7FFF                                  ; $684F: $01 $FF $7F
    cp $3F                                        ; $6852: $FE $3F
    db $FC                                        ; $6854: $FC
    rra                                           ; $6855: $1F
    ld hl, sp+$0F                                 ; $6856: $F8 $0F
    ldh [rIF], a                                  ; $6858: $E0 $0F
    ret nz                                        ; $685A: $C0

    rlca                                          ; $685B: $07
    add b                                         ; $685C: $80
    inc bc                                        ; $685D: $03
    nop                                           ; $685E: $00
    ld bc, $7FFF                                  ; $685F: $01 $FF $7F
    cp $3F                                        ; $6862: $FE $3F
    db $FC                                        ; $6864: $FC
    rra                                           ; $6865: $1F
    ld hl, sp+$0F                                 ; $6866: $F8 $0F
    ldh [rIF], a                                  ; $6868: $E0 $0F
    ret nz                                        ; $686A: $C0

    rlca                                          ; $686B: $07
    add b                                         ; $686C: $80
    inc bc                                        ; $686D: $03
    nop                                           ; $686E: $00
    ld bc, $7FFF                                  ; $686F: $01 $FF $7F
    cp $3F                                        ; $6872: $FE $3F
    db $FC                                        ; $6874: $FC
    rra                                           ; $6875: $1F
    ld hl, sp+$0F                                 ; $6876: $F8 $0F
    ldh [rIF], a                                  ; $6878: $E0 $0F
    ret nz                                        ; $687A: $C0

    rlca                                          ; $687B: $07
    add b                                         ; $687C: $80
    inc bc                                        ; $687D: $03
    nop                                           ; $687E: $00
    ld bc, $0707                                  ; $687F: $01 $07 $07
    rrca                                          ; $6882: $0F
    rrca                                          ; $6883: $0F
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    ld c, $0E                                     ; $6886: $0E $0E
    rra                                           ; $6888: $1F
    rra                                           ; $6889: $1F
    rra                                           ; $688A: $1F
    rra                                           ; $688B: $1F
    rra                                           ; $688C: $1F
    rra                                           ; $688D: $1F
    rra                                           ; $688E: $1F
    rra                                           ; $688F: $1F
    di                                            ; $6890: $F3
    ldh a, [$F9]                                  ; $6891: $F0 $F9
    ld hl, sp+$7D                                 ; $6893: $F8 $7D
    ld a, h                                       ; $6895: $7C
    ld b, $07                                     ; $6896: $06 $07
    pop hl                                        ; $6898: $E1
    ldh [rIE], a                                  ; $6899: $E0 $FF
    cp $FE                                        ; $689B: $FE $FE
    cp $FE                                        ; $689D: $FE $FE

Call_055_689F:
    rst $38                                       ; $689F: $FF
    rst $38                                       ; $68A0: $FF
    rst $20                                       ; $68A1: $E7
    rst $28                                       ; $68A2: $EF
    rst $20                                       ; $68A3: $E7
    set 4, a                                      ; $68A4: $CB $E7
    adc c                                         ; $68A6: $89
    rst $20                                       ; $68A7: $E7
    sub c                                         ; $68A8: $91
    ld l, [hl]                                    ; $68A9: $6E
    add c                                         ; $68AA: $81
    ld a, [hl]                                    ; $68AB: $7E
    ld b, d                                       ; $68AC: $42
    cp l                                          ; $68AD: $BD
    inc a                                         ; $68AE: $3C
    jp $FFFF                                      ; $68AF: $C3 $FF $FF


    rst $38                                       ; $68B2: $FF
    add b                                         ; $68B3: $80
    add b                                         ; $68B4: $80
    rst $38                                       ; $68B5: $FF
    and h                                         ; $68B6: $A4
    rst $38                                       ; $68B7: $FF
    rst $38                                       ; $68B8: $FF
    rst $38                                       ; $68B9: $FF
    and b                                         ; $68BA: $A0
    rst $38                                       ; $68BB: $FF
    pop hl                                        ; $68BC: $E1
    cp [hl]                                       ; $68BD: $BE
    pop hl                                        ; $68BE: $E1
    cp [hl]                                       ; $68BF: $BE
    rst $38                                       ; $68C0: $FF
    rst $38                                       ; $68C1: $FF
    rst $38                                       ; $68C2: $FF
    ld bc, $FF01                                  ; $68C3: $01 $01 $FF
    ld h, c                                       ; $68C6: $61
    rst $38                                       ; $68C7: $FF
    rst $38                                       ; $68C8: $FF
    rst $38                                       ; $68C9: $FF
    dec b                                         ; $68CA: $05
    rst $38                                       ; $68CB: $FF
    rrca                                          ; $68CC: $0F
    push af                                       ; $68CD: $F5
    rrca                                          ; $68CE: $0F
    push af                                       ; $68CF: $F5
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    ret nz                                        ; $68D7: $C0

    ret nz                                        ; $68D8: $C0

    ldh [$E0], a                                  ; $68D9: $E0 $E0
    ldh [$E0], a                                  ; $68DB: $E0 $E0
    ldh [$E0], a                                  ; $68DD: $E0 $E0
    ldh [rIE], a                                  ; $68DF: $E0 $FF
    rst $38                                       ; $68E1: $FF
    ret nz                                        ; $68E2: $C0

    add b                                         ; $68E3: $80
    add b                                         ; $68E4: $80
    rst $38                                       ; $68E5: $FF
    sbc l                                         ; $68E6: $9D
    ld [c], a                                     ; $68E7: $E2
    sbc c                                         ; $68E8: $99
    and $98                                       ; $68E9: $E6 $98
    rst $20                                       ; $68EB: $E7
    sub b                                         ; $68EC: $90
    rst $28                                       ; $68ED: $EF
    sub d                                         ; $68EE: $92
    db $ED                                        ; $68EF: $ED
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    ccf                                           ; $68F8: $3F
    nop                                           ; $68F9: $00
    ld a, a                                       ; $68FA: $7F
    ccf                                           ; $68FB: $3F
    ld a, a                                       ; $68FC: $7F
    ccf                                           ; $68FD: $3F
    ld b, b                                       ; $68FE: $40
    ccf                                           ; $68FF: $3F
    inc h                                         ; $6900: $24
    pop bc                                        ; $6901: $C1
    inc h                                         ; $6902: $24
    pop bc                                        ; $6903: $C1
    inc l                                         ; $6904: $2C
    pop bc                                        ; $6905: $C1
    ld h, h                                       ; $6906: $64
    add c                                         ; $6907: $81
    ld h, $C1                                     ; $6908: $26 $C1
    inc l                                         ; $690A: $2C
    jp $834C                                      ; $690B: $C3 $4C $83


    ld c, b                                       ; $690E: $48
    add e                                         ; $690F: $83
    ld [hl], $89                                  ; $6910: $36 $89
    ld d, h                                       ; $6912: $54
    adc c                                         ; $6913: $89
    inc d                                         ; $6914: $14
    add c                                         ; $6915: $81
    inc e                                         ; $6916: $1C
    add c                                         ; $6917: $81
    ld c, d                                       ; $6918: $4A
    sub c                                         ; $6919: $91
    ld c, b                                       ; $691A: $48
    sub c                                         ; $691B: $91
    ld b, b                                       ; $691C: $40
    sbc c                                         ; $691D: $99
    ld [bc], a                                    ; $691E: $02
    reti                                          ; $691F: $D9


    rst $38                                       ; $6920: $FF
    ld a, a                                       ; $6921: $7F
    cp $3F                                        ; $6922: $FE $3F
    db $FC                                        ; $6924: $FC
    rra                                           ; $6925: $1F
    ld hl, sp+$0F                                 ; $6926: $F8 $0F
    ldh [rIF], a                                  ; $6928: $E0 $0F
    ret nz                                        ; $692A: $C0

    rlca                                          ; $692B: $07
    add b                                         ; $692C: $80
    inc bc                                        ; $692D: $03
    nop                                           ; $692E: $00
    ld bc, $7FFF                                  ; $692F: $01 $FF $7F
    cp $3F                                        ; $6932: $FE $3F
    db $FC                                        ; $6934: $FC
    rra                                           ; $6935: $1F
    ld hl, sp+$0F                                 ; $6936: $F8 $0F
    ldh [rIF], a                                  ; $6938: $E0 $0F
    ret nz                                        ; $693A: $C0

    rlca                                          ; $693B: $07
    add b                                         ; $693C: $80
    inc bc                                        ; $693D: $03
    nop                                           ; $693E: $00
    ld bc, $7FFF                                  ; $693F: $01 $FF $7F
    cp $3F                                        ; $6942: $FE $3F
    db $FC                                        ; $6944: $FC
    rra                                           ; $6945: $1F
    ld hl, sp+$0F                                 ; $6946: $F8 $0F
    ldh [rIF], a                                  ; $6948: $E0 $0F
    ret nz                                        ; $694A: $C0

    rlca                                          ; $694B: $07
    add b                                         ; $694C: $80
    inc bc                                        ; $694D: $03
    nop                                           ; $694E: $00
    ld bc, $7FFF                                  ; $694F: $01 $FF $7F
    cp $3F                                        ; $6952: $FE $3F
    db $FC                                        ; $6954: $FC
    rra                                           ; $6955: $1F
    ld hl, sp+$0F                                 ; $6956: $F8 $0F
    ldh [rIF], a                                  ; $6958: $E0 $0F
    ret nz                                        ; $695A: $C0

    rlca                                          ; $695B: $07
    add b                                         ; $695C: $80
    inc bc                                        ; $695D: $03
    nop                                           ; $695E: $00
    ld bc, $7FFF                                  ; $695F: $01 $FF $7F
    cp $3F                                        ; $6962: $FE $3F
    db $FC                                        ; $6964: $FC
    rra                                           ; $6965: $1F
    ld hl, sp+$0F                                 ; $6966: $F8 $0F
    ldh [rIF], a                                  ; $6968: $E0 $0F
    ret nz                                        ; $696A: $C0

    rlca                                          ; $696B: $07
    add b                                         ; $696C: $80
    inc bc                                        ; $696D: $03
    nop                                           ; $696E: $00
    ld bc, $7FFF                                  ; $696F: $01 $FF $7F
    cp $3F                                        ; $6972: $FE $3F
    db $FC                                        ; $6974: $FC
    rra                                           ; $6975: $1F
    ld hl, sp+$0F                                 ; $6976: $F8 $0F
    ldh [rIF], a                                  ; $6978: $E0 $0F
    ret nz                                        ; $697A: $C0

    rlca                                          ; $697B: $07
    add b                                         ; $697C: $80
    inc bc                                        ; $697D: $03
    nop                                           ; $697E: $00
    ld bc, $1F1F                                  ; $697F: $01 $1F $1F
    rra                                           ; $6982: $1F
    rra                                           ; $6983: $1F
    rrca                                          ; $6984: $0F
    rra                                           ; $6985: $1F
    rrca                                          ; $6986: $0F
    rrca                                          ; $6987: $0F
    rrca                                          ; $6988: $0F
    rrca                                          ; $6989: $0F
    rlca                                          ; $698A: $07
    rrca                                          ; $698B: $0F
    rlca                                          ; $698C: $07
    rlca                                          ; $698D: $07
    inc bc                                        ; $698E: $03
    inc bc                                        ; $698F: $03
    rst $38                                       ; $6990: $FF
    rst $38                                       ; $6991: $FF
    rst $38                                       ; $6992: $FF
    rst $38                                       ; $6993: $FF
    rst $28                                       ; $6994: $EF
    rst $20                                       ; $6995: $E7
    rst $28                                       ; $6996: $EF
    rst $20                                       ; $6997: $E7
    rst $20                                       ; $6998: $E7
    rst $28                                       ; $6999: $EF
    rst $30                                       ; $699A: $F7
    rst $28                                       ; $699B: $EF
    rst $28                                       ; $699C: $EF
    rst $20                                       ; $699D: $E7
    rst $28                                       ; $699E: $EF
    rst $20                                       ; $699F: $E7
    ccf                                           ; $69A0: $3F
    add b                                         ; $69A1: $80
    pop hl                                        ; $69A2: $E1
    cp $F2                                        ; $69A3: $FE $F2
    ld a, [c]                                     ; $69A5: $F2
    di                                            ; $69A6: $F3
    di                                            ; $69A7: $F3
    di                                            ; $69A8: $F3
    di                                            ; $69A9: $F3
    di                                            ; $69AA: $F3
    di                                            ; $69AB: $F3
    ld sp, hl                                     ; $69AC: $F9
    ld sp, hl                                     ; $69AD: $F9
    ld sp, hl                                     ; $69AE: $F9
    ld sp, hl                                     ; $69AF: $F9
    pop hl                                        ; $69B0: $E1
    cp [hl]                                       ; $69B1: $BE
    ldh [$BF], a                                  ; $69B2: $E0 $BF
    pop hl                                        ; $69B4: $E1
    cp [hl]                                       ; $69B5: $BE
    pop hl                                        ; $69B6: $E1
    cp [hl]                                       ; $69B7: $BE
    pop hl                                        ; $69B8: $E1
    cp [hl]                                       ; $69B9: $BE

jr_055_69BA:
    ldh [$BF], a                                  ; $69BA: $E0 $BF
    ldh [$BF], a                                  ; $69BC: $E0 $BF
    pop hl                                        ; $69BE: $E1
    cp [hl]                                       ; $69BF: $BE
    rla                                           ; $69C0: $17
    db $ED                                        ; $69C1: $ED
    rla                                           ; $69C2: $17
    db $ED                                        ; $69C3: $ED
    rlca                                          ; $69C4: $07
    db $FD                                        ; $69C5: $FD
    rrca                                          ; $69C6: $0F
    pop af                                        ; $69C7: $F1
    inc de                                        ; $69C8: $13

jr_055_69C9:
    pop af                                        ; $69C9: $F1
    dec de                                        ; $69CA: $1B
    pop af                                        ; $69CB: $F1
    rrca                                          ; $69CC: $0F

jr_055_69CD:
    db $FD                                        ; $69CD: $FD
    rlca                                          ; $69CE: $07
    db $FD                                        ; $69CF: $FD
    ldh [$E0], a                                  ; $69D0: $E0 $E0
    ldh [$E0], a                                  ; $69D2: $E0 $E0
    ldh [$E0], a                                  ; $69D4: $E0 $E0
    ldh [$E0], a                                  ; $69D6: $E0 $E0
    jr nz, jr_055_69BA                            ; $69D8: $20 $E0

    nop                                           ; $69DA: $00
    ldh [$80], a                                  ; $69DB: $E0 $80

jr_055_69DD:
    ld a, a                                       ; $69DD: $7F
    sbc a                                         ; $69DE: $9F
    ld a, a                                       ; $69DF: $7F
    sub b                                         ; $69E0: $90
    rst $28                                       ; $69E1: $EF
    sbc b                                         ; $69E2: $98
    rst $20                                       ; $69E3: $E7
    sbc [hl]                                      ; $69E4: $9E
    pop hl                                        ; $69E5: $E1
    sbc h                                         ; $69E6: $9C
    db $E3                                        ; $69E7: $E3
    add b                                         ; $69E8: $80
    rst $38                                       ; $69E9: $FF
    and b                                         ; $69EA: $A0
    ret nz                                        ; $69EB: $C0

    add b                                         ; $69EC: $80
    rst $38                                       ; $69ED: $FF
    rst $38                                       ; $69EE: $FF
    rst $38                                       ; $69EF: $FF
    ld b, b                                       ; $69F0: $40
    ccf                                           ; $69F1: $3F
    ld c, a                                       ; $69F2: $4F
    jr nc, @+$46                                  ; $69F3: $30 $44

    jr nc, jr_055_6A3F                            ; $69F5: $30 $48

    scf                                           ; $69F7: $37
    ld c, a                                       ; $69F8: $4F
    jr nc, jr_055_6A3F                            ; $69F9: $30 $44

    jr nc, @+$46                                  ; $69FB: $30 $44

    jr nc, @+$46                                  ; $69FD: $30 $44

    jr nc, jr_055_6A09                            ; $69FF: $30 $08

    jp $814A                                      ; $6A01: $C3 $4A $81


    ld e, b                                       ; $6A04: $58
    add e                                         ; $6A05: $83
    jr jr_055_69C9                                ; $6A06: $18 $C1

    ld a, b                                       ; $6A08: $78

jr_055_6A09:
    add c                                         ; $6A09: $81
    jr c, jr_055_69CD                             ; $6A0A: $38 $C1

    inc l                                         ; $6A0C: $2C
    pop bc                                        ; $6A0D: $C1
    inc [hl]                                      ; $6A0E: $34
    ret                                           ; $6A0F: $C9


    ld a, [bc]                                    ; $6A10: $0A
    pop de                                        ; $6A11: $D1
    ld a, [de]                                    ; $6A12: $1A
    pop bc                                        ; $6A13: $C1
    inc c                                         ; $6A14: $0C
    jp $C314                                      ; $6A15: $C3 $14 $C3


    jr nz, jr_055_69DD                            ; $6A18: $20 $C3

    ld [hl], b                                    ; $6A1A: $70
    add e                                         ; $6A1B: $83
    ld a, [de]                                    ; $6A1C: $1A
    pop bc                                        ; $6A1D: $C1
    ld a, b                                       ; $6A1E: $78
    add e                                         ; $6A1F: $83
    rst $38                                       ; $6A20: $FF
    ld a, a                                       ; $6A21: $7F
    cp $3F                                        ; $6A22: $FE $3F
    db $FC                                        ; $6A24: $FC
    rra                                           ; $6A25: $1F
    ld hl, sp+$0F                                 ; $6A26: $F8 $0F
    ldh [rIF], a                                  ; $6A28: $E0 $0F
    ret nz                                        ; $6A2A: $C0

    rlca                                          ; $6A2B: $07
    add b                                         ; $6A2C: $80
    inc bc                                        ; $6A2D: $03
    nop                                           ; $6A2E: $00

Call_055_6A2F:
    ld bc, $7FFF                                  ; $6A2F: $01 $FF $7F
    cp $3F                                        ; $6A32: $FE $3F
    db $FC                                        ; $6A34: $FC
    rra                                           ; $6A35: $1F
    ld hl, sp+$0F                                 ; $6A36: $F8 $0F
    ldh [rIF], a                                  ; $6A38: $E0 $0F
    ret nz                                        ; $6A3A: $C0

    rlca                                          ; $6A3B: $07
    add b                                         ; $6A3C: $80
    inc bc                                        ; $6A3D: $03
    nop                                           ; $6A3E: $00

jr_055_6A3F:
    ld bc, $7FFF                                  ; $6A3F: $01 $FF $7F
    cp $3F                                        ; $6A42: $FE $3F
    db $FC                                        ; $6A44: $FC
    rra                                           ; $6A45: $1F
    ld hl, sp+$0F                                 ; $6A46: $F8 $0F
    ldh [rIF], a                                  ; $6A48: $E0 $0F
    ret nz                                        ; $6A4A: $C0

    rlca                                          ; $6A4B: $07
    add b                                         ; $6A4C: $80
    inc bc                                        ; $6A4D: $03
    nop                                           ; $6A4E: $00
    ld bc, $7FFF                                  ; $6A4F: $01 $FF $7F
    cp $3F                                        ; $6A52: $FE $3F
    db $FC                                        ; $6A54: $FC
    rra                                           ; $6A55: $1F
    ld hl, sp+$0F                                 ; $6A56: $F8 $0F
    ldh [rIF], a                                  ; $6A58: $E0 $0F
    ret nz                                        ; $6A5A: $C0

    rlca                                          ; $6A5B: $07
    add b                                         ; $6A5C: $80
    inc bc                                        ; $6A5D: $03
    nop                                           ; $6A5E: $00
    ld bc, $7FFF                                  ; $6A5F: $01 $FF $7F
    cp $3F                                        ; $6A62: $FE $3F
    db $FC                                        ; $6A64: $FC
    rra                                           ; $6A65: $1F
    ld hl, sp+$0F                                 ; $6A66: $F8 $0F
    ldh [rIF], a                                  ; $6A68: $E0 $0F
    ret nz                                        ; $6A6A: $C0

    rlca                                          ; $6A6B: $07
    add b                                         ; $6A6C: $80
    inc bc                                        ; $6A6D: $03
    nop                                           ; $6A6E: $00
    ld bc, $7FFF                                  ; $6A6F: $01 $FF $7F
    cp $3F                                        ; $6A72: $FE $3F
    db $FC                                        ; $6A74: $FC
    rra                                           ; $6A75: $1F
    ld hl, sp+$0F                                 ; $6A76: $F8 $0F
    ldh [rIF], a                                  ; $6A78: $E0 $0F
    ret nz                                        ; $6A7A: $C0

    rlca                                          ; $6A7B: $07
    add b                                         ; $6A7C: $80
    inc bc                                        ; $6A7D: $03
    nop                                           ; $6A7E: $00
    ld bc, $0101                                  ; $6A7F: $01 $01 $01
    nop                                           ; $6A82: $00
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    nop                                           ; $6A8B: $00
    nop                                           ; $6A8C: $00
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    nop                                           ; $6A8F: $00
    rst $38                                       ; $6A90: $FF
    rst $38                                       ; $6A91: $FF
    ld a, a                                       ; $6A92: $7F
    ld a, a                                       ; $6A93: $7F
    rra                                           ; $6A94: $1F
    rra                                           ; $6A95: $1F
    ld bc, $0003                                  ; $6A96: $01 $03 $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    ld sp, hl                                     ; $6AA0: $F9
    ld sp, hl                                     ; $6AA1: $F9
    ld sp, hl                                     ; $6AA2: $F9
    ld sp, hl                                     ; $6AA3: $F9
    ld sp, hl                                     ; $6AA4: $F9
    ld sp, hl                                     ; $6AA5: $F9
    pop af                                        ; $6AA6: $F1
    pop af                                        ; $6AA7: $F1
    nop                                           ; $6AA8: $00
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    nop                                           ; $6AAB: $00
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    add sp, -$49                                  ; $6AB0: $E8 $B7
    add sp, -$49                                  ; $6AB2: $E8 $B7
    add sp, -$49                                  ; $6AB4: $E8 $B7
    and b                                         ; $6AB6: $A0
    rst $38                                       ; $6AB7: $FF
    rst $38                                       ; $6AB8: $FF
    add b                                         ; $6AB9: $80
    add b                                         ; $6ABA: $80
    rst $38                                       ; $6ABB: $FF
    and h                                         ; $6ABC: $A4
    rst $38                                       ; $6ABD: $FF
    rst $38                                       ; $6ABE: $FF
    rst $38                                       ; $6ABF: $FF
    rla                                           ; $6AC0: $17
    db $ED                                        ; $6AC1: $ED
    rla                                           ; $6AC2: $17
    db $ED                                        ; $6AC3: $ED
    rla                                           ; $6AC4: $17
    db $ED                                        ; $6AC5: $ED
    dec b                                         ; $6AC6: $05
    rst $38                                       ; $6AC7: $FF
    rst $38                                       ; $6AC8: $FF
    ld bc, $FF01                                  ; $6AC9: $01 $01 $FF
    ld h, c                                       ; $6ACC: $61
    rst $38                                       ; $6ACD: $FF
    rst $38                                       ; $6ACE: $FF
    rst $38                                       ; $6ACF: $FF
    rra                                           ; $6AD0: $1F
    ldh [$1F], a                                  ; $6AD1: $E0 $1F
    ldh [$9F], a                                  ; $6AD3: $E0 $9F
    ldh [$1F], a                                  ; $6AD5: $E0 $1F
    ldh [$DF], a                                  ; $6AD7: $E0 $DF
    jr nz, @-$0F                                  ; $6AD9: $20 $EF

    db $10                                        ; $6ADB: $10
    rst $28                                       ; $6ADC: $EF
    db $10                                        ; $6ADD: $10
    ldh [rNR10], a                                ; $6ADE: $E0 $10
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
    db $FC                                        ; $6AED: $FC
    ld hl, sp-$04                                 ; $6AEE: $F8 $FC
    ld c, a                                       ; $6AF0: $4F
    jr nc, jr_055_6B72                            ; $6AF1: $30 $7F

    nop                                           ; $6AF3: $00
    ld e, a                                       ; $6AF4: $5F
    ccf                                           ; $6AF5: $3F
    ccf                                           ; $6AF6: $3F
    ld a, a                                       ; $6AF7: $7F
    ccf                                           ; $6AF8: $3F
    ld a, a                                       ; $6AF9: $7F
    ccf                                           ; $6AFA: $3F
    ld a, a                                       ; $6AFB: $7F
    ccf                                           ; $6AFC: $3F
    ld a, a                                       ; $6AFD: $7F
    nop                                           ; $6AFE: $00
    ld b, b                                       ; $6AFF: $40
    ld a, h                                       ; $6B00: $7C
    add c                                         ; $6B01: $81
    inc a                                         ; $6B02: $3C
    pop bc                                        ; $6B03: $C1
    ld a, [hl-]                                   ; $6B04: $3A
    add c                                         ; $6B05: $81
    ld [de], a                                    ; $6B06: $12
    add c                                         ; $6B07: $81
    nop                                           ; $6B08: $00
    add c                                         ; $6B09: $81
    nop                                           ; $6B0A: $00
    rst $38                                       ; $6B0B: $FF
    ld a, [hl]                                    ; $6B0C: $7E
    add c                                         ; $6B0D: $81
    nop                                           ; $6B0E: $00
    rst $38                                       ; $6B0F: $FF
    ld a, d                                       ; $6B10: $7A
    add c                                         ; $6B11: $81
    halt                                          ; $6B12: $76
    adc c                                         ; $6B13: $89
    ld a, $81                                     ; $6B14: $3E $81
    inc e                                         ; $6B16: $1C
    add c                                         ; $6B17: $81
    nop                                           ; $6B18: $00
    add c                                         ; $6B19: $81
    nop                                           ; $6B1A: $00
    rst $38                                       ; $6B1B: $FF
    ld a, [hl]                                    ; $6B1C: $7E
    add c                                         ; $6B1D: $81
    nop                                           ; $6B1E: $00
    rst $38                                       ; $6B1F: $FF
    rst $38                                       ; $6B20: $FF
    ld a, a                                       ; $6B21: $7F
    cp $3F                                        ; $6B22: $FE $3F
    db $FC                                        ; $6B24: $FC
    rra                                           ; $6B25: $1F
    ld hl, sp+$0F                                 ; $6B26: $F8 $0F
    ldh [rIF], a                                  ; $6B28: $E0 $0F
    ret nz                                        ; $6B2A: $C0

    rlca                                          ; $6B2B: $07
    add b                                         ; $6B2C: $80
    inc bc                                        ; $6B2D: $03
    nop                                           ; $6B2E: $00
    ld bc, $7FFF                                  ; $6B2F: $01 $FF $7F
    cp $3F                                        ; $6B32: $FE $3F
    db $FC                                        ; $6B34: $FC
    rra                                           ; $6B35: $1F
    ld hl, sp+$0F                                 ; $6B36: $F8 $0F
    ldh [rIF], a                                  ; $6B38: $E0 $0F
    ret nz                                        ; $6B3A: $C0

    rlca                                          ; $6B3B: $07
    add b                                         ; $6B3C: $80
    inc bc                                        ; $6B3D: $03
    nop                                           ; $6B3E: $00
    ld bc, $7FFF                                  ; $6B3F: $01 $FF $7F
    cp $3F                                        ; $6B42: $FE $3F
    db $FC                                        ; $6B44: $FC
    rra                                           ; $6B45: $1F
    ld hl, sp+$0F                                 ; $6B46: $F8 $0F
    ldh [rIF], a                                  ; $6B48: $E0 $0F
    ret nz                                        ; $6B4A: $C0

    rlca                                          ; $6B4B: $07
    add b                                         ; $6B4C: $80
    inc bc                                        ; $6B4D: $03
    nop                                           ; $6B4E: $00
    ld bc, $7FFF                                  ; $6B4F: $01 $FF $7F
    cp $3F                                        ; $6B52: $FE $3F
    db $FC                                        ; $6B54: $FC
    rra                                           ; $6B55: $1F
    ld hl, sp+$0F                                 ; $6B56: $F8 $0F
    ldh [rIF], a                                  ; $6B58: $E0 $0F
    ret nz                                        ; $6B5A: $C0

    rlca                                          ; $6B5B: $07
    add b                                         ; $6B5C: $80
    inc bc                                        ; $6B5D: $03
    nop                                           ; $6B5E: $00
    ld bc, $7FFF                                  ; $6B5F: $01 $FF $7F
    cp $3F                                        ; $6B62: $FE $3F
    db $FC                                        ; $6B64: $FC
    rra                                           ; $6B65: $1F
    ld hl, sp+$0F                                 ; $6B66: $F8 $0F
    ldh [rIF], a                                  ; $6B68: $E0 $0F
    ret nz                                        ; $6B6A: $C0

    rlca                                          ; $6B6B: $07
    add b                                         ; $6B6C: $80
    inc bc                                        ; $6B6D: $03
    nop                                           ; $6B6E: $00
    ld bc, $7FFF                                  ; $6B6F: $01 $FF $7F

jr_055_6B72:
    cp $3F                                        ; $6B72: $FE $3F
    db $FC                                        ; $6B74: $FC
    rra                                           ; $6B75: $1F
    ld hl, sp+$0F                                 ; $6B76: $F8 $0F
    ldh [rIF], a                                  ; $6B78: $E0 $0F
    ret nz                                        ; $6B7A: $C0

    rlca                                          ; $6B7B: $07
    add b                                         ; $6B7C: $80
    inc bc                                        ; $6B7D: $03
    nop                                           ; $6B7E: $00
    ld bc, $7FFF                                  ; $6B7F: $01 $FF $7F
    cp $3F                                        ; $6B82: $FE $3F
    db $FC                                        ; $6B84: $FC
    rra                                           ; $6B85: $1F
    ld hl, sp+$0F                                 ; $6B86: $F8 $0F
    ldh [rIF], a                                  ; $6B88: $E0 $0F
    ret nz                                        ; $6B8A: $C0

    rlca                                          ; $6B8B: $07
    add b                                         ; $6B8C: $80
    inc bc                                        ; $6B8D: $03
    nop                                           ; $6B8E: $00
    ld bc, $7FFF                                  ; $6B8F: $01 $FF $7F
    cp $3F                                        ; $6B92: $FE $3F
    db $FC                                        ; $6B94: $FC
    rra                                           ; $6B95: $1F
    ld hl, sp+$0F                                 ; $6B96: $F8 $0F
    ldh [rIF], a                                  ; $6B98: $E0 $0F
    ret nz                                        ; $6B9A: $C0

    rlca                                          ; $6B9B: $07
    add b                                         ; $6B9C: $80
    inc bc                                        ; $6B9D: $03
    nop                                           ; $6B9E: $00
    ld bc, $7FFF                                  ; $6B9F: $01 $FF $7F
    cp $3F                                        ; $6BA2: $FE $3F
    db $FC                                        ; $6BA4: $FC
    rra                                           ; $6BA5: $1F
    ld hl, sp+$0F                                 ; $6BA6: $F8 $0F
    ldh [rIF], a                                  ; $6BA8: $E0 $0F
    ret nz                                        ; $6BAA: $C0

    rlca                                          ; $6BAB: $07
    add b                                         ; $6BAC: $80
    inc bc                                        ; $6BAD: $03
    nop                                           ; $6BAE: $00
    ld bc, $FF7F                                  ; $6BAF: $01 $7F $FF
    rst $38                                       ; $6BB2: $FF
    rst $38                                       ; $6BB3: $FF
    ldh [rIE], a                                  ; $6BB4: $E0 $FF

jr_055_6BB6:
    rst $38                                       ; $6BB6: $FF
    rst $38                                       ; $6BB7: $FF
    pop bc                                        ; $6BB8: $C1
    rst $38                                       ; $6BB9: $FF
    rst $38                                       ; $6BBA: $FF
    rst $38                                       ; $6BBB: $FF
    rst $20                                       ; $6BBC: $E7
    rst $38                                       ; $6BBD: $FF
    rst $38                                       ; $6BBE: $FF
    rst $38                                       ; $6BBF: $FF
    cp $FF                                        ; $6BC0: $FE $FF
    rst $38                                       ; $6BC2: $FF
    rst $38                                       ; $6BC3: $FF
    ccf                                           ; $6BC4: $3F
    pop af                                        ; $6BC5: $F1
    rst $30                                       ; $6BC6: $F7
    pop af                                        ; $6BC7: $F1
    rst $30                                       ; $6BC8: $F7
    pop af                                        ; $6BC9: $F1
    rst $10                                       ; $6BCA: $D7
    ld sp, $31D7                                  ; $6BCB: $31 $D7 $31
    rst $10                                       ; $6BCE: $D7
    ld sp, $FFE0                                  ; $6BCF: $31 $E0 $FF
    rst $38                                       ; $6BD2: $FF
    ldh [$F0], a                                  ; $6BD3: $E0 $F0
    rst $28                                       ; $6BD5: $EF
    rst $38                                       ; $6BD6: $FF
    ldh [$3F], a                                  ; $6BD7: $E0 $3F
    ldh [rNR10], a                                ; $6BD9: $E0 $10
    ldh [$80], a                                  ; $6BDB: $E0 $80
    ld a, a                                       ; $6BDD: $7F
    sbc a                                         ; $6BDE: $9F
    ld a, a                                       ; $6BDF: $7F
    nop                                           ; $6BE0: $00
    db $FC                                        ; $6BE1: $FC
    ld hl, sp+$00                                 ; $6BE2: $F8 $00
    jr z, jr_055_6BB6                             ; $6BE4: $28 $D0

    add sp, $10                                   ; $6BE6: $E8 $10
    db $E4                                        ; $6BE8: $E4
    jr jr_055_6C0F                                ; $6BE9: $18 $24

    jr jr_055_6BED                                ; $6BEB: $18 $00

jr_055_6BED:
    db $FC                                        ; $6BED: $FC
    ld hl, sp-$04                                 ; $6BEE: $F8 $FC
    nop                                           ; $6BF0: $00
    ld a, a                                       ; $6BF1: $7F
    ld a, a                                       ; $6BF2: $7F
    nop                                           ; $6BF3: $00
    ld e, a                                       ; $6BF4: $5F
    jr nz, jr_055_6C56                            ; $6BF5: $20 $5F

    jr nz, jr_055_6C58                            ; $6BF7: $20 $5F

    jr nz, jr_055_6C4B                            ; $6BF9: $20 $50

    jr nz, jr_055_6C0D                            ; $6BFB: $20 $10

    ld h, b                                       ; $6BFD: $60
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    rst $38                                       ; $6C00: $FF
    ld a, a                                       ; $6C01: $7F
    cp $3F                                        ; $6C02: $FE $3F
    db $FC                                        ; $6C04: $FC
    rra                                           ; $6C05: $1F
    ld hl, sp+$0F                                 ; $6C06: $F8 $0F
    ldh [rIF], a                                  ; $6C08: $E0 $0F
    ret nz                                        ; $6C0A: $C0

    rlca                                          ; $6C0B: $07
    add b                                         ; $6C0C: $80

jr_055_6C0D:
    inc bc                                        ; $6C0D: $03
    nop                                           ; $6C0E: $00

jr_055_6C0F:
    ld bc, $7FFF                                  ; $6C0F: $01 $FF $7F
    cp $3F                                        ; $6C12: $FE $3F
    db $FC                                        ; $6C14: $FC
    rra                                           ; $6C15: $1F
    ld hl, sp+$0F                                 ; $6C16: $F8 $0F
    ldh [rIF], a                                  ; $6C18: $E0 $0F
    ret nz                                        ; $6C1A: $C0

    rlca                                          ; $6C1B: $07
    add b                                         ; $6C1C: $80
    inc bc                                        ; $6C1D: $03
    nop                                           ; $6C1E: $00
    ld bc, $7FFF                                  ; $6C1F: $01 $FF $7F
    cp $3F                                        ; $6C22: $FE $3F
    db $FC                                        ; $6C24: $FC
    rra                                           ; $6C25: $1F
    ld hl, sp+$0F                                 ; $6C26: $F8 $0F
    ldh [rIF], a                                  ; $6C28: $E0 $0F
    ret nz                                        ; $6C2A: $C0

    rlca                                          ; $6C2B: $07
    add b                                         ; $6C2C: $80
    inc bc                                        ; $6C2D: $03
    nop                                           ; $6C2E: $00
    ld bc, $7FFF                                  ; $6C2F: $01 $FF $7F
    cp $3F                                        ; $6C32: $FE $3F
    db $FC                                        ; $6C34: $FC
    rra                                           ; $6C35: $1F
    ld hl, sp+$0F                                 ; $6C36: $F8 $0F
    ldh [rIF], a                                  ; $6C38: $E0 $0F
    ret nz                                        ; $6C3A: $C0

    rlca                                          ; $6C3B: $07
    add b                                         ; $6C3C: $80
    inc bc                                        ; $6C3D: $03
    nop                                           ; $6C3E: $00
    ld bc, $7FFF                                  ; $6C3F: $01 $FF $7F
    cp $3F                                        ; $6C42: $FE $3F
    db $FC                                        ; $6C44: $FC
    rra                                           ; $6C45: $1F
    ld hl, sp+$0F                                 ; $6C46: $F8 $0F
    ldh [rIF], a                                  ; $6C48: $E0 $0F
    ret nz                                        ; $6C4A: $C0

jr_055_6C4B:
    rlca                                          ; $6C4B: $07
    add b                                         ; $6C4C: $80
    inc bc                                        ; $6C4D: $03
    nop                                           ; $6C4E: $00
    ld bc, $7FFF                                  ; $6C4F: $01 $FF $7F
    cp $3F                                        ; $6C52: $FE $3F
    db $FC                                        ; $6C54: $FC
    rra                                           ; $6C55: $1F

jr_055_6C56:
    ld hl, sp+$0F                                 ; $6C56: $F8 $0F

jr_055_6C58:
    ldh [rIF], a                                  ; $6C58: $E0 $0F
    ret nz                                        ; $6C5A: $C0

    rlca                                          ; $6C5B: $07
    add b                                         ; $6C5C: $80
    inc bc                                        ; $6C5D: $03
    nop                                           ; $6C5E: $00
    ld bc, $7FFF                                  ; $6C5F: $01 $FF $7F
    cp $3F                                        ; $6C62: $FE $3F
    db $FC                                        ; $6C64: $FC
    rra                                           ; $6C65: $1F
    ld hl, sp+$0F                                 ; $6C66: $F8 $0F
    ldh [rIF], a                                  ; $6C68: $E0 $0F
    ret nz                                        ; $6C6A: $C0

    rlca                                          ; $6C6B: $07
    add b                                         ; $6C6C: $80
    inc bc                                        ; $6C6D: $03
    nop                                           ; $6C6E: $00
    ld bc, $7FFF                                  ; $6C6F: $01 $FF $7F
    cp $3F                                        ; $6C72: $FE $3F
    db $FC                                        ; $6C74: $FC
    rra                                           ; $6C75: $1F
    ld hl, sp+$0F                                 ; $6C76: $F8 $0F
    ldh [rIF], a                                  ; $6C78: $E0 $0F
    ret nz                                        ; $6C7A: $C0

    rlca                                          ; $6C7B: $07
    add b                                         ; $6C7C: $80
    inc bc                                        ; $6C7D: $03
    nop                                           ; $6C7E: $00
    ld bc, $7FFF                                  ; $6C7F: $01 $FF $7F
    cp $3F                                        ; $6C82: $FE $3F
    db $FC                                        ; $6C84: $FC
    rra                                           ; $6C85: $1F
    ld hl, sp+$0F                                 ; $6C86: $F8 $0F
    ldh [rIF], a                                  ; $6C88: $E0 $0F
    ret nz                                        ; $6C8A: $C0

    rlca                                          ; $6C8B: $07
    add b                                         ; $6C8C: $80
    inc bc                                        ; $6C8D: $03
    nop                                           ; $6C8E: $00
    ld bc, $7FFF                                  ; $6C8F: $01 $FF $7F
    cp $3F                                        ; $6C92: $FE $3F
    db $FC                                        ; $6C94: $FC
    rra                                           ; $6C95: $1F
    ld hl, sp+$0F                                 ; $6C96: $F8 $0F
    ldh [rIF], a                                  ; $6C98: $E0 $0F
    ret nz                                        ; $6C9A: $C0

    rlca                                          ; $6C9B: $07
    add b                                         ; $6C9C: $80
    inc bc                                        ; $6C9D: $03
    nop                                           ; $6C9E: $00
    ld bc, $7FFF                                  ; $6C9F: $01 $FF $7F
    cp $3F                                        ; $6CA2: $FE $3F
    db $FC                                        ; $6CA4: $FC
    rra                                           ; $6CA5: $1F
    ld hl, sp+$0F                                 ; $6CA6: $F8 $0F
    ldh [rIF], a                                  ; $6CA8: $E0 $0F
    ret nz                                        ; $6CAA: $C0

    rlca                                          ; $6CAB: $07
    add b                                         ; $6CAC: $80
    inc bc                                        ; $6CAD: $03
    nop                                           ; $6CAE: $00
    ld bc, $F7F9                                  ; $6CAF: $01 $F9 $F7
    ld sp, hl                                     ; $6CB2: $F9
    rst $30                                       ; $6CB3: $F7
    ld sp, hl                                     ; $6CB4: $F9
    rst $30                                       ; $6CB5: $F7
    sbc c                                         ; $6CB6: $99
    rst $30                                       ; $6CB7: $F7
    sbc c                                         ; $6CB8: $99
    rst $30                                       ; $6CB9: $F7
    sbc c                                         ; $6CBA: $99
    rst $30                                       ; $6CBB: $F7
    sbc c                                         ; $6CBC: $99
    rst $30                                       ; $6CBD: $F7
    ld a, a                                       ; $6CBE: $7F
    rst $38                                       ; $6CBF: $FF
    rst $10                                       ; $6CC0: $D7
    ld sp, $3157                                  ; $6CC1: $31 $57 $31
    ld d, a                                       ; $6CC4: $57
    ld sp, $3157                                  ; $6CC5: $31 $57 $31
    ld d, a                                       ; $6CC8: $57
    ld sp, $31D7                                  ; $6CC9: $31 $D7 $31
    rst $18                                       ; $6CCC: $DF
    ld sp, $FFFE                                  ; $6CCD: $31 $FE $FF
    rra                                           ; $6CD0: $1F
    ldh [$1F], a                                  ; $6CD1: $E0 $1F
    ldh [$9F], a                                  ; $6CD3: $E0 $9F
    ldh [$9F], a                                  ; $6CD5: $E0 $9F
    ldh [$9F], a                                  ; $6CD7: $E0 $9F
    ldh [$9F], a                                  ; $6CD9: $E0 $9F
    ldh [$9F], a                                  ; $6CDB: $E0 $9F
    ldh [rP1], a                                  ; $6CDD: $E0 $00
    ldh [$F8], a                                  ; $6CDF: $E0 $F8
    db $FC                                        ; $6CE1: $FC
    ld hl, sp-$04                                 ; $6CE2: $F8 $FC
    ld hl, sp-$04                                 ; $6CE4: $F8 $FC
    ld hl, sp-$04                                 ; $6CE6: $F8 $FC
    ld hl, sp-$04                                 ; $6CE8: $F8 $FC
    ld hl, sp-$04                                 ; $6CEA: $F8 $FC
    ld hl, sp-$04                                 ; $6CEC: $F8 $FC
    ld hl, sp-$04                                 ; $6CEE: $F8 $FC
    rst $38                                       ; $6CF0: $FF
    rst $38                                       ; $6CF1: $FF
    jr z, @+$01                                   ; $6CF2: $28 $FF

    adc l                                         ; $6CF4: $8D
    ld a, [c]                                     ; $6CF5: $F2
    scf                                           ; $6CF6: $37
    ret z                                         ; $6CF7: $C8

    ret nz                                        ; $6CF8: $C0

    rst $38                                       ; $6CF9: $FF
    cp a                                          ; $6CFA: $BF
    ret nz                                        ; $6CFB: $C0

    add b                                         ; $6CFC: $80
    ret nz                                        ; $6CFD: $C0

    ret nz                                        ; $6CFE: $C0

    rst $38                                       ; $6CFF: $FF
    rst $38                                       ; $6D00: $FF
    ld a, a                                       ; $6D01: $7F
    cp $3F                                        ; $6D02: $FE $3F
    db $FC                                        ; $6D04: $FC
    rra                                           ; $6D05: $1F
    ld hl, sp+$0F                                 ; $6D06: $F8 $0F
    ldh [rIF], a                                  ; $6D08: $E0 $0F
    ret nz                                        ; $6D0A: $C0

    rlca                                          ; $6D0B: $07
    add b                                         ; $6D0C: $80
    inc bc                                        ; $6D0D: $03
    nop                                           ; $6D0E: $00
    ld bc, $7FFF                                  ; $6D0F: $01 $FF $7F
    cp $3F                                        ; $6D12: $FE $3F
    db $FC                                        ; $6D14: $FC
    rra                                           ; $6D15: $1F
    ld hl, sp+$0F                                 ; $6D16: $F8 $0F
    ldh [rIF], a                                  ; $6D18: $E0 $0F
    ret nz                                        ; $6D1A: $C0

    rlca                                          ; $6D1B: $07
    add b                                         ; $6D1C: $80
    inc bc                                        ; $6D1D: $03
    nop                                           ; $6D1E: $00
    ld bc, $7FFF                                  ; $6D1F: $01 $FF $7F
    cp $3F                                        ; $6D22: $FE $3F
    db $FC                                        ; $6D24: $FC
    rra                                           ; $6D25: $1F
    ld hl, sp+$0F                                 ; $6D26: $F8 $0F
    ldh [rIF], a                                  ; $6D28: $E0 $0F
    ret nz                                        ; $6D2A: $C0

    rlca                                          ; $6D2B: $07
    add b                                         ; $6D2C: $80
    inc bc                                        ; $6D2D: $03
    nop                                           ; $6D2E: $00
    ld bc, $7FFF                                  ; $6D2F: $01 $FF $7F
    cp $3F                                        ; $6D32: $FE $3F
    db $FC                                        ; $6D34: $FC
    rra                                           ; $6D35: $1F
    ld hl, sp+$0F                                 ; $6D36: $F8 $0F
    ldh [rIF], a                                  ; $6D38: $E0 $0F
    ret nz                                        ; $6D3A: $C0

    rlca                                          ; $6D3B: $07
    add b                                         ; $6D3C: $80
    inc bc                                        ; $6D3D: $03
    nop                                           ; $6D3E: $00
    ld bc, $7FFF                                  ; $6D3F: $01 $FF $7F
    cp $3F                                        ; $6D42: $FE $3F
    db $FC                                        ; $6D44: $FC
    rra                                           ; $6D45: $1F
    ld hl, sp+$0F                                 ; $6D46: $F8 $0F
    ldh [rIF], a                                  ; $6D48: $E0 $0F
    ret nz                                        ; $6D4A: $C0

    rlca                                          ; $6D4B: $07
    add b                                         ; $6D4C: $80
    inc bc                                        ; $6D4D: $03
    nop                                           ; $6D4E: $00
    ld bc, $7FFF                                  ; $6D4F: $01 $FF $7F
    cp $3F                                        ; $6D52: $FE $3F
    db $FC                                        ; $6D54: $FC
    rra                                           ; $6D55: $1F
    ld hl, sp+$0F                                 ; $6D56: $F8 $0F
    ldh [rIF], a                                  ; $6D58: $E0 $0F
    ret nz                                        ; $6D5A: $C0

    rlca                                          ; $6D5B: $07
    add b                                         ; $6D5C: $80
    inc bc                                        ; $6D5D: $03
    nop                                           ; $6D5E: $00
    ld bc, $7FFF                                  ; $6D5F: $01 $FF $7F
    cp $3F                                        ; $6D62: $FE $3F
    db $FC                                        ; $6D64: $FC
    rra                                           ; $6D65: $1F
    ld hl, sp+$0F                                 ; $6D66: $F8 $0F
    ldh [rIF], a                                  ; $6D68: $E0 $0F
    ret nz                                        ; $6D6A: $C0

    rlca                                          ; $6D6B: $07
    add b                                         ; $6D6C: $80
    inc bc                                        ; $6D6D: $03
    nop                                           ; $6D6E: $00
    ld bc, $7FFF                                  ; $6D6F: $01 $FF $7F
    cp $3F                                        ; $6D72: $FE $3F
    db $FC                                        ; $6D74: $FC
    rra                                           ; $6D75: $1F
    ld hl, sp+$0F                                 ; $6D76: $F8 $0F
    ldh [rIF], a                                  ; $6D78: $E0 $0F
    ret nz                                        ; $6D7A: $C0

    rlca                                          ; $6D7B: $07
    add b                                         ; $6D7C: $80
    inc bc                                        ; $6D7D: $03
    nop                                           ; $6D7E: $00
    ld bc, $7FFF                                  ; $6D7F: $01 $FF $7F
    cp $3F                                        ; $6D82: $FE $3F
    db $FC                                        ; $6D84: $FC
    rra                                           ; $6D85: $1F
    ld hl, sp+$0F                                 ; $6D86: $F8 $0F
    ldh [rIF], a                                  ; $6D88: $E0 $0F
    ret nz                                        ; $6D8A: $C0

    rlca                                          ; $6D8B: $07
    add b                                         ; $6D8C: $80
    inc bc                                        ; $6D8D: $03
    nop                                           ; $6D8E: $00
    ld bc, $7FFF                                  ; $6D8F: $01 $FF $7F
    cp $3F                                        ; $6D92: $FE $3F
    db $FC                                        ; $6D94: $FC
    rra                                           ; $6D95: $1F
    ld hl, sp+$0F                                 ; $6D96: $F8 $0F
    ldh [rIF], a                                  ; $6D98: $E0 $0F
    ret nz                                        ; $6D9A: $C0

    rlca                                          ; $6D9B: $07
    add b                                         ; $6D9C: $80
    inc bc                                        ; $6D9D: $03
    nop                                           ; $6D9E: $00
    ld bc, $7FFF                                  ; $6D9F: $01 $FF $7F
    cp $3F                                        ; $6DA2: $FE $3F
    db $FC                                        ; $6DA4: $FC
    rra                                           ; $6DA5: $1F
    ld hl, sp+$0F                                 ; $6DA6: $F8 $0F
    ldh [rIF], a                                  ; $6DA8: $E0 $0F
    ret nz                                        ; $6DAA: $C0

    rlca                                          ; $6DAB: $07
    add b                                         ; $6DAC: $80
    inc bc                                        ; $6DAD: $03
    nop                                           ; $6DAE: $00
    ld bc, $7FFF                                  ; $6DAF: $01 $FF $7F
    cp $3F                                        ; $6DB2: $FE $3F
    db $FC                                        ; $6DB4: $FC
    rra                                           ; $6DB5: $1F

jr_055_6DB6:
    ld hl, sp+$0F                                 ; $6DB6: $F8 $0F
    ldh [rIF], a                                  ; $6DB8: $E0 $0F
    ret nz                                        ; $6DBA: $C0

    rlca                                          ; $6DBB: $07
    add b                                         ; $6DBC: $80
    inc bc                                        ; $6DBD: $03
    nop                                           ; $6DBE: $00
    ld bc, $7FFF                                  ; $6DBF: $01 $FF $7F
    cp $3F                                        ; $6DC2: $FE $3F
    db $FC                                        ; $6DC4: $FC
    rra                                           ; $6DC5: $1F
    ld hl, sp+$0F                                 ; $6DC6: $F8 $0F
    ldh [rIF], a                                  ; $6DC8: $E0 $0F
    ret nz                                        ; $6DCA: $C0

    rlca                                          ; $6DCB: $07
    add b                                         ; $6DCC: $80
    inc bc                                        ; $6DCD: $03
    nop                                           ; $6DCE: $00
    ld bc, $FF00                                  ; $6DCF: $01 $00 $FF
    sbc a                                         ; $6DD2: $9F
    ld h, b                                       ; $6DD3: $60
    db $10                                        ; $6DD4: $10
    rst $28                                       ; $6DD5: $EF
    sbc a                                         ; $6DD6: $9F
    ld h, b                                       ; $6DD7: $60
    sbc a                                         ; $6DD8: $9F
    ld h, b                                       ; $6DD9: $60
    sub b                                         ; $6DDA: $90
    ld h, b                                       ; $6DDB: $60
    and b                                         ; $6DDC: $A0
    ld b, b                                       ; $6DDD: $40
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00
    db $FC                                        ; $6DE1: $FC
    ld hl, sp+$00                                 ; $6DE2: $F8 $00
    jr z, jr_055_6DB6                             ; $6DE4: $28 $D0

    add sp, $10                                   ; $6DE6: $E8 $10
    db $E4                                        ; $6DE8: $E4
    jr jr_055_6E0F                                ; $6DE9: $18 $24

    jr @+$12                                      ; $6DEB: $18 $10

    inc c                                         ; $6DED: $0C
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    ret nz                                        ; $6DF0: $C0

    rst $38                                       ; $6DF1: $FF
    rst $08                                       ; $6DF2: $CF
    rst $38                                       ; $6DF3: $FF
    set 7, a                                      ; $6DF4: $CB $FF
    ret nz                                        ; $6DF6: $C0

    rst $38                                       ; $6DF7: $FF
    rst $08                                       ; $6DF8: $CF
    rst $38                                       ; $6DF9: $FF
    set 7, a                                      ; $6DFA: $CB $FF
    set 7, a                                      ; $6DFC: $CB $FF
    set 7, a                                      ; $6DFE: $CB $FF
    rst $38                                       ; $6E00: $FF
    ld a, a                                       ; $6E01: $7F
    cp $3F                                        ; $6E02: $FE $3F
    db $FC                                        ; $6E04: $FC
    rra                                           ; $6E05: $1F
    ld hl, sp+$0F                                 ; $6E06: $F8 $0F
    ldh [rIF], a                                  ; $6E08: $E0 $0F
    ret nz                                        ; $6E0A: $C0

    rlca                                          ; $6E0B: $07
    add b                                         ; $6E0C: $80
    inc bc                                        ; $6E0D: $03
    nop                                           ; $6E0E: $00

jr_055_6E0F:
    ld bc, $7FFF                                  ; $6E0F: $01 $FF $7F
    cp $3F                                        ; $6E12: $FE $3F
    db $FC                                        ; $6E14: $FC
    rra                                           ; $6E15: $1F
    ld hl, sp+$0F                                 ; $6E16: $F8 $0F
    ldh [rIF], a                                  ; $6E18: $E0 $0F
    ret nz                                        ; $6E1A: $C0

    rlca                                          ; $6E1B: $07
    add b                                         ; $6E1C: $80
    inc bc                                        ; $6E1D: $03
    nop                                           ; $6E1E: $00
    ld bc, $7FFF                                  ; $6E1F: $01 $FF $7F
    cp $3F                                        ; $6E22: $FE $3F
    db $FC                                        ; $6E24: $FC
    rra                                           ; $6E25: $1F
    ld hl, sp+$0F                                 ; $6E26: $F8 $0F
    ldh [rIF], a                                  ; $6E28: $E0 $0F
    ret nz                                        ; $6E2A: $C0

    rlca                                          ; $6E2B: $07
    add b                                         ; $6E2C: $80
    inc bc                                        ; $6E2D: $03
    nop                                           ; $6E2E: $00
    ld bc, $7FFF                                  ; $6E2F: $01 $FF $7F
    cp $3F                                        ; $6E32: $FE $3F
    db $FC                                        ; $6E34: $FC
    rra                                           ; $6E35: $1F
    ld hl, sp+$0F                                 ; $6E36: $F8 $0F
    ldh [rIF], a                                  ; $6E38: $E0 $0F
    ret nz                                        ; $6E3A: $C0

    rlca                                          ; $6E3B: $07
    add b                                         ; $6E3C: $80
    inc bc                                        ; $6E3D: $03
    nop                                           ; $6E3E: $00
    ld bc, $7FFF                                  ; $6E3F: $01 $FF $7F
    cp $3F                                        ; $6E42: $FE $3F
    db $FC                                        ; $6E44: $FC
    rra                                           ; $6E45: $1F
    ld hl, sp+$0F                                 ; $6E46: $F8 $0F
    ldh [rIF], a                                  ; $6E48: $E0 $0F
    ret nz                                        ; $6E4A: $C0

    rlca                                          ; $6E4B: $07
    add b                                         ; $6E4C: $80
    inc bc                                        ; $6E4D: $03
    nop                                           ; $6E4E: $00
    ld bc, $7FFF                                  ; $6E4F: $01 $FF $7F
    cp $3F                                        ; $6E52: $FE $3F
    db $FC                                        ; $6E54: $FC
    rra                                           ; $6E55: $1F
    ld hl, sp+$0F                                 ; $6E56: $F8 $0F
    ldh [rIF], a                                  ; $6E58: $E0 $0F
    ret nz                                        ; $6E5A: $C0

    rlca                                          ; $6E5B: $07
    add b                                         ; $6E5C: $80
    inc bc                                        ; $6E5D: $03
    nop                                           ; $6E5E: $00
    ld bc, $7FFF                                  ; $6E5F: $01 $FF $7F
    cp $3F                                        ; $6E62: $FE $3F
    db $FC                                        ; $6E64: $FC
    rra                                           ; $6E65: $1F
    ld hl, sp+$0F                                 ; $6E66: $F8 $0F
    ldh [rIF], a                                  ; $6E68: $E0 $0F
    ret nz                                        ; $6E6A: $C0

    rlca                                          ; $6E6B: $07
    add b                                         ; $6E6C: $80
    inc bc                                        ; $6E6D: $03
    nop                                           ; $6E6E: $00
    ld bc, $7FFF                                  ; $6E6F: $01 $FF $7F
    cp $3F                                        ; $6E72: $FE $3F
    db $FC                                        ; $6E74: $FC
    rra                                           ; $6E75: $1F
    ld hl, sp+$0F                                 ; $6E76: $F8 $0F
    ldh [rIF], a                                  ; $6E78: $E0 $0F
    ret nz                                        ; $6E7A: $C0

    rlca                                          ; $6E7B: $07
    add b                                         ; $6E7C: $80
    inc bc                                        ; $6E7D: $03
    nop                                           ; $6E7E: $00
    ld bc, $7FFF                                  ; $6E7F: $01 $FF $7F
    cp $3F                                        ; $6E82: $FE $3F
    db $FC                                        ; $6E84: $FC
    rra                                           ; $6E85: $1F
    ld hl, sp+$0F                                 ; $6E86: $F8 $0F
    ldh [rIF], a                                  ; $6E88: $E0 $0F
    ret nz                                        ; $6E8A: $C0

    rlca                                          ; $6E8B: $07
    add b                                         ; $6E8C: $80
    inc bc                                        ; $6E8D: $03
    nop                                           ; $6E8E: $00
    ld bc, $7FFF                                  ; $6E8F: $01 $FF $7F
    cp $3F                                        ; $6E92: $FE $3F
    db $FC                                        ; $6E94: $FC
    rra                                           ; $6E95: $1F
    ld hl, sp+$0F                                 ; $6E96: $F8 $0F
    ldh [rIF], a                                  ; $6E98: $E0 $0F
    ret nz                                        ; $6E9A: $C0

    rlca                                          ; $6E9B: $07
    add b                                         ; $6E9C: $80
    inc bc                                        ; $6E9D: $03
    nop                                           ; $6E9E: $00
    ld bc, $7FFF                                  ; $6E9F: $01 $FF $7F
    cp $3F                                        ; $6EA2: $FE $3F
    db $FC                                        ; $6EA4: $FC
    rra                                           ; $6EA5: $1F
    ld hl, sp+$0F                                 ; $6EA6: $F8 $0F
    ldh [rIF], a                                  ; $6EA8: $E0 $0F
    ret nz                                        ; $6EAA: $C0

    rlca                                          ; $6EAB: $07
    add b                                         ; $6EAC: $80
    inc bc                                        ; $6EAD: $03
    nop                                           ; $6EAE: $00
    ld bc, $7FFF                                  ; $6EAF: $01 $FF $7F
    cp $3F                                        ; $6EB2: $FE $3F
    db $FC                                        ; $6EB4: $FC
    rra                                           ; $6EB5: $1F
    ld hl, sp+$0F                                 ; $6EB6: $F8 $0F
    ldh [rIF], a                                  ; $6EB8: $E0 $0F
    ret nz                                        ; $6EBA: $C0

    rlca                                          ; $6EBB: $07
    add b                                         ; $6EBC: $80
    inc bc                                        ; $6EBD: $03
    nop                                           ; $6EBE: $00
    ld bc, $7FFF                                  ; $6EBF: $01 $FF $7F
    cp $3F                                        ; $6EC2: $FE $3F
    db $FC                                        ; $6EC4: $FC
    rra                                           ; $6EC5: $1F
    ld hl, sp+$0F                                 ; $6EC6: $F8 $0F
    ldh [rIF], a                                  ; $6EC8: $E0 $0F
    ret nz                                        ; $6ECA: $C0

    rlca                                          ; $6ECB: $07
    add b                                         ; $6ECC: $80
    inc bc                                        ; $6ECD: $03
    nop                                           ; $6ECE: $00
    ld bc, $E7D9                                  ; $6ECF: $01 $D9 $E7
    cp h                                          ; $6ED2: $BC
    jp $3EC1                                      ; $6ED3: $C3 $C1 $3E


    ld a, $81                                     ; $6ED6: $3E $81
    inc b                                         ; $6ED8: $04
    add c                                         ; $6ED9: $81
    inc b                                         ; $6EDA: $04
    add c                                         ; $6EDB: $81
    inc b                                         ; $6EDC: $04
    add c                                         ; $6EDD: $81
    inc b                                         ; $6EDE: $04
    add c                                         ; $6EDF: $81
    rst $38                                       ; $6EE0: $FF
    rst $38                                       ; $6EE1: $FF
    ret nz                                        ; $6EE2: $C0

    adc b                                         ; $6EE3: $88
    add b                                         ; $6EE4: $80
    adc b                                         ; $6EE5: $88
    adc b                                         ; $6EE6: $88
    ldh a, [$84]                                  ; $6EE7: $F0 $84
    or b                                          ; $6EE9: $B0
    add b                                         ; $6EEA: $80
    adc a                                         ; $6EEB: $8F
    add d                                         ; $6EEC: $82
    add b                                         ; $6EED: $80
    add b                                         ; $6EEE: $80
    add e                                         ; $6EEF: $83
    nop                                           ; $6EF0: $00
    ld a, a                                       ; $6EF1: $7F
    nop                                           ; $6EF2: $00
    ld a, a                                       ; $6EF3: $7F
    nop                                           ; $6EF4: $00
    ld a, a                                       ; $6EF5: $7F
    dec a                                         ; $6EF6: $3D
    ld a, a                                       ; $6EF7: $7F
    ld b, c                                       ; $6EF8: $41
    ld a, a                                       ; $6EF9: $7F
    ld a, l                                       ; $6EFA: $7D
    ld a, a                                       ; $6EFB: $7F
    dec a                                         ; $6EFC: $3D
    ld a, a                                       ; $6EFD: $7F
    ld b, c                                       ; $6EFE: $41
    ld a, a                                       ; $6EFF: $7F
    rst $38                                       ; $6F00: $FF
    ld a, a                                       ; $6F01: $7F
    cp $3F                                        ; $6F02: $FE $3F
    db $FC                                        ; $6F04: $FC
    rra                                           ; $6F05: $1F
    ld hl, sp+$0F                                 ; $6F06: $F8 $0F
    ldh [rIF], a                                  ; $6F08: $E0 $0F
    ret nz                                        ; $6F0A: $C0

    rlca                                          ; $6F0B: $07
    add b                                         ; $6F0C: $80
    inc bc                                        ; $6F0D: $03
    nop                                           ; $6F0E: $00
    ld bc, $7FFF                                  ; $6F0F: $01 $FF $7F
    cp $3F                                        ; $6F12: $FE $3F
    db $FC                                        ; $6F14: $FC
    rra                                           ; $6F15: $1F
    ld hl, sp+$0F                                 ; $6F16: $F8 $0F
    ldh [rIF], a                                  ; $6F18: $E0 $0F
    ret nz                                        ; $6F1A: $C0

    rlca                                          ; $6F1B: $07
    add b                                         ; $6F1C: $80
    inc bc                                        ; $6F1D: $03
    nop                                           ; $6F1E: $00
    ld bc, $7FFF                                  ; $6F1F: $01 $FF $7F
    cp $3F                                        ; $6F22: $FE $3F
    db $FC                                        ; $6F24: $FC
    rra                                           ; $6F25: $1F
    ld hl, sp+$0F                                 ; $6F26: $F8 $0F
    ldh [rIF], a                                  ; $6F28: $E0 $0F
    ret nz                                        ; $6F2A: $C0

    rlca                                          ; $6F2B: $07
    add b                                         ; $6F2C: $80
    inc bc                                        ; $6F2D: $03
    nop                                           ; $6F2E: $00
    ld bc, $7FFF                                  ; $6F2F: $01 $FF $7F
    cp $3F                                        ; $6F32: $FE $3F
    db $FC                                        ; $6F34: $FC
    rra                                           ; $6F35: $1F
    ld hl, sp+$0F                                 ; $6F36: $F8 $0F
    ldh [rIF], a                                  ; $6F38: $E0 $0F
    ret nz                                        ; $6F3A: $C0

    rlca                                          ; $6F3B: $07
    add b                                         ; $6F3C: $80
    inc bc                                        ; $6F3D: $03
    nop                                           ; $6F3E: $00
    ld bc, $7FFF                                  ; $6F3F: $01 $FF $7F
    cp $3F                                        ; $6F42: $FE $3F
    db $FC                                        ; $6F44: $FC
    rra                                           ; $6F45: $1F
    ld hl, sp+$0F                                 ; $6F46: $F8 $0F
    ldh [rIF], a                                  ; $6F48: $E0 $0F
    ret nz                                        ; $6F4A: $C0

    rlca                                          ; $6F4B: $07
    add b                                         ; $6F4C: $80
    inc bc                                        ; $6F4D: $03
    nop                                           ; $6F4E: $00
    ld bc, $7FFF                                  ; $6F4F: $01 $FF $7F
    cp $3F                                        ; $6F52: $FE $3F
    db $FC                                        ; $6F54: $FC
    rra                                           ; $6F55: $1F
    ld hl, sp+$0F                                 ; $6F56: $F8 $0F
    ldh [rIF], a                                  ; $6F58: $E0 $0F
    ret nz                                        ; $6F5A: $C0

    rlca                                          ; $6F5B: $07
    add b                                         ; $6F5C: $80
    inc bc                                        ; $6F5D: $03
    nop                                           ; $6F5E: $00
    ld bc, $7FFF                                  ; $6F5F: $01 $FF $7F
    cp $3F                                        ; $6F62: $FE $3F
    db $FC                                        ; $6F64: $FC
    rra                                           ; $6F65: $1F
    ld hl, sp+$0F                                 ; $6F66: $F8 $0F
    ldh [rIF], a                                  ; $6F68: $E0 $0F
    ret nz                                        ; $6F6A: $C0

    rlca                                          ; $6F6B: $07
    add b                                         ; $6F6C: $80
    inc bc                                        ; $6F6D: $03
    nop                                           ; $6F6E: $00
    ld bc, $7FFF                                  ; $6F6F: $01 $FF $7F
    cp $3F                                        ; $6F72: $FE $3F
    db $FC                                        ; $6F74: $FC
    rra                                           ; $6F75: $1F
    ld hl, sp+$0F                                 ; $6F76: $F8 $0F
    ldh [rIF], a                                  ; $6F78: $E0 $0F
    ret nz                                        ; $6F7A: $C0

    rlca                                          ; $6F7B: $07
    add b                                         ; $6F7C: $80
    inc bc                                        ; $6F7D: $03
    nop                                           ; $6F7E: $00
    ld bc, $7FFF                                  ; $6F7F: $01 $FF $7F
    cp $3F                                        ; $6F82: $FE $3F
    db $FC                                        ; $6F84: $FC
    rra                                           ; $6F85: $1F
    ld hl, sp+$0F                                 ; $6F86: $F8 $0F
    ldh [rIF], a                                  ; $6F88: $E0 $0F
    ret nz                                        ; $6F8A: $C0

    rlca                                          ; $6F8B: $07
    add b                                         ; $6F8C: $80
    inc bc                                        ; $6F8D: $03
    nop                                           ; $6F8E: $00
    ld bc, $7FFF                                  ; $6F8F: $01 $FF $7F
    cp $3F                                        ; $6F92: $FE $3F
    db $FC                                        ; $6F94: $FC
    rra                                           ; $6F95: $1F
    ld hl, sp+$0F                                 ; $6F96: $F8 $0F
    ldh [rIF], a                                  ; $6F98: $E0 $0F
    ret nz                                        ; $6F9A: $C0

    rlca                                          ; $6F9B: $07
    add b                                         ; $6F9C: $80
    inc bc                                        ; $6F9D: $03
    nop                                           ; $6F9E: $00
    ld bc, $7FFF                                  ; $6F9F: $01 $FF $7F
    cp $3F                                        ; $6FA2: $FE $3F
    db $FC                                        ; $6FA4: $FC
    rra                                           ; $6FA5: $1F
    ld hl, sp+$0F                                 ; $6FA6: $F8 $0F
    ldh [rIF], a                                  ; $6FA8: $E0 $0F
    ret nz                                        ; $6FAA: $C0

    rlca                                          ; $6FAB: $07
    add b                                         ; $6FAC: $80
    inc bc                                        ; $6FAD: $03
    nop                                           ; $6FAE: $00
    ld bc, $7FFF                                  ; $6FAF: $01 $FF $7F
    cp $3F                                        ; $6FB2: $FE $3F
    db $FC                                        ; $6FB4: $FC
    rra                                           ; $6FB5: $1F
    ld hl, sp+$0F                                 ; $6FB6: $F8 $0F
    ldh [rIF], a                                  ; $6FB8: $E0 $0F
    ret nz                                        ; $6FBA: $C0

    rlca                                          ; $6FBB: $07
    add b                                         ; $6FBC: $80
    inc bc                                        ; $6FBD: $03
    nop                                           ; $6FBE: $00
    ld bc, $7FFF                                  ; $6FBF: $01 $FF $7F
    cp $3F                                        ; $6FC2: $FE $3F
    db $FC                                        ; $6FC4: $FC
    rra                                           ; $6FC5: $1F
    ld hl, sp+$0F                                 ; $6FC6: $F8 $0F
    ldh [rIF], a                                  ; $6FC8: $E0 $0F
    ret nz                                        ; $6FCA: $C0

    rlca                                          ; $6FCB: $07
    add b                                         ; $6FCC: $80
    inc bc                                        ; $6FCD: $03
    nop                                           ; $6FCE: $00
    ld bc, $8104                                  ; $6FCF: $01 $04 $81
    inc b                                         ; $6FD2: $04
    add c                                         ; $6FD3: $81
    inc b                                         ; $6FD4: $04
    add c                                         ; $6FD5: $81
    inc b                                         ; $6FD6: $04
    add c                                         ; $6FD7: $81
    inc b                                         ; $6FD8: $04
    add c                                         ; $6FD9: $81
    add l                                         ; $6FDA: $85
    nop                                           ; $6FDB: $00
    rst $20                                       ; $6FDC: $E7
    add c                                         ; $6FDD: $81
    rst $38                                       ; $6FDE: $FF
    jp $BA84                                      ; $6FDF: $C3 $84 $BA


    add b                                         ; $6FE2: $80
    jp nz, $8280                                  ; $6FE3: $C2 $80 $82

    add h                                         ; $6FE6: $84
    cp d                                          ; $6FE7: $BA
    add b                                         ; $6FE8: $80
    jp nz, $FFFF                                  ; $6FE9: $C2 $FF $FF

    rst $38                                       ; $6FEC: $FF
    rst $38                                       ; $6FED: $FF
    rst $38                                       ; $6FEE: $FF
    rst $38                                       ; $6FEF: $FF
    ld a, h                                       ; $6FF0: $7C
    ld a, a                                       ; $6FF1: $7F
    ld a, l                                       ; $6FF2: $7D
    ld a, a                                       ; $6FF3: $7F
    ld [hl], b                                    ; $6FF4: $70
    ld a, a                                       ; $6FF5: $7F
    ld c, e                                       ; $6FF6: $4B
    ld a, a                                       ; $6FF7: $7F
    rlca                                          ; $6FF8: $07
    ld a, a                                       ; $6FF9: $7F
    scf                                           ; $6FFA: $37
    ld a, a                                       ; $6FFB: $7F
    nop                                           ; $6FFC: $00
    ccf                                           ; $6FFD: $3F
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    cp $FE                                        ; $7000: $FE $FE
    db $FC                                        ; $7002: $FC
    db $FC                                        ; $7003: $FC
    ld hl, sp-$08                                 ; $7004: $F8 $F8
    ld hl, sp-$08                                 ; $7006: $F8 $F8
    ldh a, [$F0]                                  ; $7008: $F0 $F0
    ldh [$E0], a                                  ; $700A: $E0 $E0
    add b                                         ; $700C: $80
    add b                                         ; $700D: $80
    ld bc, $0201                                  ; $700E: $01 $01 $02
    inc bc                                        ; $7011: $03
    add hl, bc                                    ; $7012: $09
    ld c, $17                                     ; $7013: $0E $17
    jr jr_055_7046                                ; $7015: $18 $2F

    jr nc, jr_055_7038                            ; $7017: $30 $1F

    jr nz, jr_055_707A                            ; $7019: $20 $5F

    ld h, b                                       ; $701B: $60
    cp a                                          ; $701C: $BF
    ret nz                                        ; $701D: $C0

    ld a, a                                       ; $701E: $7F
    add b                                         ; $701F: $80
    ld b, b                                       ; $7020: $40
    ret nz                                        ; $7021: $C0

    sub b                                         ; $7022: $90
    ld [hl], b                                    ; $7023: $70
    ldh [$1F], a                                  ; $7024: $E0 $1F
    rst $38                                       ; $7026: $FF
    nop                                           ; $7027: $00
    rst $38                                       ; $7028: $FF
    nop                                           ; $7029: $00
    rst $38                                       ; $702A: $FF
    nop                                           ; $702B: $00
    rst $38                                       ; $702C: $FF
    nop                                           ; $702D: $00
    rst $38                                       ; $702E: $FF
    nop                                           ; $702F: $00
    db $10                                        ; $7030: $10
    rra                                           ; $7031: $1F
    adc a                                         ; $7032: $8F
    ldh a, [$7F]                                  ; $7033: $F0 $7F
    add b                                         ; $7035: $80
    rst $38                                       ; $7036: $FF
    nop                                           ; $7037: $00

jr_055_7038:
    rst $38                                       ; $7038: $FF
    nop                                           ; $7039: $00
    rst $38                                       ; $703A: $FF
    nop                                           ; $703B: $00
    rst $38                                       ; $703C: $FF
    nop                                           ; $703D: $00
    rst $38                                       ; $703E: $FF
    nop                                           ; $703F: $00
    ld a, a                                       ; $7040: $7F
    add b                                         ; $7041: $80
    ld a, a                                       ; $7042: $7F
    add b                                         ; $7043: $80
    ld a, a                                       ; $7044: $7F
    add b                                         ; $7045: $80

jr_055_7046:
    ld a, a                                       ; $7046: $7F
    add b                                         ; $7047: $80
    ld a, a                                       ; $7048: $7F
    add b                                         ; $7049: $80
    cp a                                          ; $704A: $BF
    ret nz                                        ; $704B: $C0

    ccf                                           ; $704C: $3F
    ld b, b                                       ; $704D: $40
    ccf                                           ; $704E: $3F
    ld b, b                                       ; $704F: $40
    ld a, a                                       ; $7050: $7F
    nop                                           ; $7051: $00
    rst $38                                       ; $7052: $FF
    nop                                           ; $7053: $00
    ld a, a                                       ; $7054: $7F
    nop                                           ; $7055: $00
    rst $38                                       ; $7056: $FF
    nop                                           ; $7057: $00
    ld a, a                                       ; $7058: $7F
    nop                                           ; $7059: $00
    ld a, a                                       ; $705A: $7F
    nop                                           ; $705B: $00
    rst $38                                       ; $705C: $FF
    add b                                         ; $705D: $80
    cp a                                          ; $705E: $BF
    add b                                         ; $705F: $80
    db $FC                                        ; $7060: $FC
    db $FC                                        ; $7061: $FC
    ldh a, [$F0]                                  ; $7062: $F0 $F0
    ldh [$E0], a                                  ; $7064: $E0 $E0
    ret nz                                        ; $7066: $C0

    ret nz                                        ; $7067: $C0

    add b                                         ; $7068: $80
    add b                                         ; $7069: $80
    add b                                         ; $706A: $80
    add b                                         ; $706B: $80
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    ccf                                           ; $7070: $3F
    ccf                                           ; $7071: $3F
    rlca                                          ; $7072: $07
    rlca                                          ; $7073: $07
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00

jr_055_707A:
    nop                                           ; $707A: $00
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    rst $38                                       ; $7080: $FF
    nop                                           ; $7081: $00
    ld l, $D1                                     ; $7082: $2E $D1
    nop                                           ; $7084: $00
    ld l, [hl]                                    ; $7085: $6E
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708A: $00
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    jr c, @+$3A                                   ; $708E: $38 $38

    rst $38                                       ; $7090: $FF
    nop                                           ; $7091: $00
    inc a                                         ; $7092: $3C
    jp $3C00                                      ; $7093: $C3 $00 $3C


    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    inc e                                         ; $709E: $1C
    inc e                                         ; $709F: $1C
    db $FC                                        ; $70A0: $FC
    ld bc, $03FC                                  ; $70A1: $01 $FC $03
    db $FC                                        ; $70A4: $FC
    dec b                                         ; $70A5: $05
    ldh [rNR34], a                                ; $70A6: $E0 $1E
    rst $08                                       ; $70A8: $CF
    cpl                                           ; $70A9: $2F
    sub a                                         ; $70AA: $97
    scf                                           ; $70AB: $37
    adc c                                         ; $70AC: $89
    ld a, c                                       ; $70AD: $79
    add d                                         ; $70AE: $82
    ld a, [hl]                                    ; $70AF: $7E
    ld c, b                                       ; $70B0: $48
    ld sp, $78A4                                  ; $70B1: $31 $A4 $78
    ld e, d                                       ; $70B4: $5A
    inc a                                         ; $70B5: $3C

jr_055_70B6:
    and b                                         ; $70B6: $A0
    ld e, $C8                                     ; $70B7: $1E $C8
    ld b, $E2                                     ; $70B9: $06 $E2
    inc e                                         ; $70BB: $1C
    ld e, $E0                                     ; $70BC: $1E $E0

jr_055_70BE:
    cp $00                                        ; $70BE: $FE $00
    rlca                                          ; $70C0: $07
    ld hl, sp+$3A                                 ; $70C1: $F8 $3A
    push bc                                       ; $70C3: $C5
    ld b, l                                       ; $70C4: $45
    cp d                                          ; $70C5: $BA
    cp l                                          ; $70C6: $BD
    ld e, $46                                     ; $70C7: $1E $46
    ccf                                           ; $70C9: $3F
    ld a, e                                       ; $70CA: $7B
    ld e, $4D                                     ; $70CB: $1E $4D
    cp [hl]                                       ; $70CD: $BE
    or d                                          ; $70CE: $B2
    ld c, l                                       ; $70CF: $4D

jr_055_70D0:
    ld [hl], b                                    ; $70D0: $70
    rst $28                                       ; $70D1: $EF
    cp b                                          ; $70D2: $B8
    rst $00                                       ; $70D3: $C7
    inc [hl]                                      ; $70D4: $34
    ei                                            ; $70D5: $FB
    ld l, [hl]                                    ; $70D6: $6E
    ld sp, hl                                     ; $70D7: $F9
    sbc a                                         ; $70D8: $9F
    ld h, b                                       ; $70D9: $60
    ld [hl], l                                    ; $70DA: $75
    ld a, [hInterrupt_HBlank_Func+1]                                 ; $70DB: $FA $9A $FF
    call $F732                                    ; $70DE: $CD $32 $F7
    nop                                           ; $70E1: $00
    rst $38                                       ; $70E2: $FF
    nop                                           ; $70E3: $00
    xor [hl]                                      ; $70E4: $AE
    jr nz, jr_055_70BE                            ; $70E5: $20 $D7

    db $10                                        ; $70E7: $10
    rst $38                                       ; $70E8: $FF
    nop                                           ; $70E9: $00
    ld l, a                                       ; $70EA: $6F
    nop                                           ; $70EB: $00
    sub $00                                       ; $70EC: $D6 $00
    rst $28                                       ; $70EE: $EF
    nop                                           ; $70EF: $00
    rst $38                                       ; $70F0: $FF
    nop                                           ; $70F1: $00
    or a                                          ; $70F2: $B7
    jr nc, jr_055_70D0                            ; $70F3: $30 $DB

    jr @+$01                                      ; $70F5: $18 $FF

    nop                                           ; $70F7: $00
    ld e, l                                       ; $70F8: $5D
    ld b, b                                       ; $70F9: $40
    rst $38                                       ; $70FA: $FF
    nop                                           ; $70FB: $00
    db $DB                                        ; $70FC: $DB
    jr jr_055_70B6                                ; $70FD: $18 $B7

    jr nc, jr_055_7105                            ; $70FF: $30 $04

    rlca                                          ; $7101: $07
    inc de                                        ; $7102: $13
    inc e                                         ; $7103: $1C
    cpl                                           ; $7104: $2F

jr_055_7105:
    jr nc, jr_055_7166                            ; $7105: $30 $5F

    ld h, b                                       ; $7107: $60
    ccf                                           ; $7108: $3F
    ld b, b                                       ; $7109: $40
    cp a                                          ; $710A: $BF
    ret nz                                        ; $710B: $C0

    ld a, a                                       ; $710C: $7F
    add b                                         ; $710D: $80
    ld a, a                                       ; $710E: $7F
    add b                                         ; $710F: $80
    cp $FE                                        ; $7110: $FE $FE
    ld sp, hl                                     ; $7112: $F9
    ld hl, sp-$09                                 ; $7113: $F8 $F7
    ldh a, [$ED]                                  ; $7115: $F0 $ED
    ldh [$D7], a                                  ; $7117: $E0 $D7
    ret nz                                        ; $7119: $C0

    xor a                                         ; $711A: $AF
    add b                                         ; $711B: $80
    rst $18                                       ; $711C: $DF
    add b                                         ; $711D: $80
    ld a, a                                       ; $711E: $7F
    nop                                           ; $711F: $00
    ld d, e                                       ; $7120: $53
    inc bc                                        ; $7121: $03
    rst $38                                       ; $7122: $FF
    nop                                           ; $7123: $00
    rst $38                                       ; $7124: $FF
    nop                                           ; $7125: $00
    rst $38                                       ; $7126: $FF
    nop                                           ; $7127: $00
    rst $38                                       ; $7128: $FF
    nop                                           ; $7129: $00
    rst $38                                       ; $712A: $FF
    nop                                           ; $712B: $00
    rst $38                                       ; $712C: $FF
    nop                                           ; $712D: $00
    rst $38                                       ; $712E: $FF
    nop                                           ; $712F: $00
    sub h                                         ; $7130: $94
    add b                                         ; $7131: $80
    rst $38                                       ; $7132: $FF
    nop                                           ; $7133: $00
    rst $38                                       ; $7134: $FF
    nop                                           ; $7135: $00
    rst $38                                       ; $7136: $FF
    nop                                           ; $7137: $00
    rst $38                                       ; $7138: $FF
    nop                                           ; $7139: $00
    rst $38                                       ; $713A: $FF
    nop                                           ; $713B: $00
    rst $38                                       ; $713C: $FF
    nop                                           ; $713D: $00
    rst $38                                       ; $713E: $FF
    nop                                           ; $713F: $00
    ccf                                           ; $7140: $3F
    ld b, b                                       ; $7141: $40
    ccf                                           ; $7142: $3F
    ld b, b                                       ; $7143: $40
    cp a                                          ; $7144: $BF
    ret nz                                        ; $7145: $C0

    ld a, a                                       ; $7146: $7F
    add b                                         ; $7147: $80
    ld a, a                                       ; $7148: $7F
    add b                                         ; $7149: $80
    ld a, a                                       ; $714A: $7F
    add b                                         ; $714B: $80
    ld a, a                                       ; $714C: $7F
    add b                                         ; $714D: $80
    ld a, a                                       ; $714E: $7F
    add b                                         ; $714F: $80
    cp a                                          ; $7150: $BF
    add b                                         ; $7151: $80
    rst $38                                       ; $7152: $FF
    ret nz                                        ; $7153: $C0

    rst $38                                       ; $7154: $FF
    ret nz                                        ; $7155: $C0

    cp a                                          ; $7156: $BF
    add b                                         ; $7157: $80
    cp a                                          ; $7158: $BF
    add b                                         ; $7159: $80
    ld a, a                                       ; $715A: $7F
    nop                                           ; $715B: $00
    ld a, a                                       ; $715C: $7F
    nop                                           ; $715D: $00
    rst $38                                       ; $715E: $FF
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    add b                                         ; $7164: $80
    add b                                         ; $7165: $80

jr_055_7166:
    add b                                         ; $7166: $80
    add b                                         ; $7167: $80
    add b                                         ; $7168: $80
    add b                                         ; $7169: $80
    ret nz                                        ; $716A: $C0

    ret nz                                        ; $716B: $C0

    ret nz                                        ; $716C: $C0

    ret nz                                        ; $716D: $C0

    ret nz                                        ; $716E: $C0

    ret nz                                        ; $716F: $C0

    rst $38                                       ; $7170: $FF
    rst $38                                       ; $7171: $FF
    rst $38                                       ; $7172: $FF
    rst $38                                       ; $7173: $FF
    cp $FE                                        ; $7174: $FE $FE
    rst $38                                       ; $7176: $FF
    cp $FD                                        ; $7177: $FE $FD
    db $FC                                        ; $7179: $FC
    di                                            ; $717A: $F3
    ldh a, [$EF]                                  ; $717B: $F0 $EF
    ldh [$BF], a                                  ; $717D: $E0 $BF
    add b                                         ; $717F: $80
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
    ret nz                                        ; $71A0: $C0

    ld a, a                                       ; $71A1: $7F
    ret nz                                        ; $71A2: $C0

    ld e, a                                       ; $71A3: $5F
    and c                                         ; $71A4: $A1
    cpl                                           ; $71A5: $2F
    ret nc                                        ; $71A6: $D0

    ld d, $E8                                     ; $71A7: $16 $E8
    rrca                                          ; $71A9: $0F
    db $FD                                        ; $71AA: $FD
    ld bc, $00FF                                  ; $71AB: $01 $FF $00
    rst $38                                       ; $71AE: $FF
    nop                                           ; $71AF: $00
    cp $FF                                        ; $71B0: $FE $FF
    db $F4                                        ; $71B2: $F4
    push af                                       ; $71B3: $F5
    xor b                                         ; $71B4: $A8
    xor e                                         ; $71B5: $AB
    ret nc                                        ; $71B6: $D0

    sub $63                                       ; $71B7: $D6 $63
    ld a, b                                       ; $71B9: $78
    rrca                                          ; $71BA: $0F
    ldh [rIE], a                                  ; $71BB: $E0 $FF
    nop                                           ; $71BD: $00
    rst $38                                       ; $71BE: $FF
    nop                                           ; $71BF: $00
    xor l                                         ; $71C0: $AD
    ld e, $57                                     ; $71C1: $1E $57
    ld a, [hl-]                                   ; $71C3: $3A
    adc d                                         ; $71C4: $8A
    scf                                           ; $71C5: $37
    sbc [hl]                                      ; $71C6: $9E
    daa                                           ; $71C7: $27
    dec [hl]                                      ; $71C8: $35
    adc [hl]                                      ; $71C9: $8E
    ld b, [hl]                                    ; $71CA: $46
    sbc b                                         ; $71CB: $98
    add hl, sp                                    ; $71CC: $39
    ret nz                                        ; $71CD: $C0

    ld e, $E1                                     ; $71CE: $1E $E1
    sbc e                                         ; $71D0: $9B
    ld a, h                                       ; $71D1: $7C
    ld l, [hl]                                    ; $71D2: $6E
    db $FD                                        ; $71D3: $FD
    or l                                          ; $71D4: $B5
    ld a, [hl]                                    ; $71D5: $7E
    push de                                       ; $71D6: $D5
    ld a, [hl-]                                   ; $71D7: $3A
    ld e, e                                       ; $71D8: $5B
    jr nc, jr_055_7245                            ; $71D9: $30 $6A

    ld de, $2394                                  ; $71DB: $11 $94 $23
    ld a, b                                       ; $71DE: $78
    add a                                         ; $71DF: $87
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
    rst $38                                       ; $7202: $FF
    nop                                           ; $7203: $00
    rst $38                                       ; $7204: $FF
    rst $38                                       ; $7205: $FF
    rst $38                                       ; $7206: $FF
    rst $38                                       ; $7207: $FF
    nop                                           ; $7208: $00

jr_055_7209:
    rst $38                                       ; $7209: $FF
    rst $38                                       ; $720A: $FF
    nop                                           ; $720B: $00
    rst $38                                       ; $720C: $FF
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
    ld a, a                                       ; $7220: $7F
    nop                                           ; $7221: $00
    ld b, b                                       ; $7222: $40
    cp a                                          ; $7223: $BF
    and b                                         ; $7224: $A0
    ld e, a                                       ; $7225: $5F
    ld b, b                                       ; $7226: $40
    cp a                                          ; $7227: $BF
    add b                                         ; $7228: $80
    ld a, a                                       ; $7229: $7F
    ld b, b                                       ; $722A: $40
    cp a                                          ; $722B: $BF
    add c                                         ; $722C: $81
    ld a, a                                       ; $722D: $7F
    cp [hl]                                       ; $722E: $BE
    ld a, a                                       ; $722F: $7F
    add l                                         ; $7230: $85
    ld a, d                                       ; $7231: $7A
    ld [bc], a                                    ; $7232: $02
    db $FD                                        ; $7233: $FD
    ld bc, $00FE                                  ; $7234: $01 $FE $00
    rst $38                                       ; $7237: $FF
    ld bc, $00FE                                  ; $7238: $01 $FE $00
    rst $38                                       ; $723B: $FF
    cp $FF                                        ; $723C: $FE $FF
    rst $38                                       ; $723E: $FF
    nop                                           ; $723F: $00
    rst $38                                       ; $7240: $FF
    nop                                           ; $7241: $00
    di                                            ; $7242: $F3
    inc c                                         ; $7243: $0C
    and c                                         ; $7244: $A1

jr_055_7245:
    ld e, [hl]                                    ; $7245: $5E
    db $E3                                        ; $7246: $E3
    ld e, $A3                                     ; $7247: $1E $A3
    ld e, [hl]                                    ; $7249: $5E
    db $E3                                        ; $724A: $E3
    ld e, $A3                                     ; $724B: $1E $A3
    ld e, [hl]                                    ; $724D: $5E
    db $E3                                        ; $724E: $E3
    ld e, $2B                                     ; $724F: $1E $2B
    ld d, h                                       ; $7251: $54
    call nc, $A12B                                ; $7252: $D4 $2B $A1
    ld e, a                                       ; $7255: $5F
    add c                                         ; $7256: $81
    ld a, a                                       ; $7257: $7F
    add c                                         ; $7258: $81
    ld a, a                                       ; $7259: $7F
    add c                                         ; $725A: $81
    ld a, a                                       ; $725B: $7F
    add c                                         ; $725C: $81
    ld a, a                                       ; $725D: $7F
    add d                                         ; $725E: $82
    ld a, a                                       ; $725F: $7F
    inc sp                                        ; $7260: $33
    ld a, b                                       ; $7261: $78
    ld sp, $3378                                  ; $7262: $31 $78 $33
    ld a, b                                       ; $7265: $78
    ld sp, $3378                                  ; $7266: $31 $78 $33
    ld a, b                                       ; $7269: $78
    ld sp, $3378                                  ; $726A: $31 $78 $33
    ld a, b                                       ; $726D: $78
    ld sp, $5C78                                  ; $726E: $31 $78 $5C
    cp a                                          ; $7271: $BF
    cp b                                          ; $7272: $B8
    ld a, a                                       ; $7273: $7F
    and a                                         ; $7274: $A7
    ld a, [hl]                                    ; $7275: $7E
    sbc l                                         ; $7276: $9D
    ld l, [hl]                                    ; $7277: $6E
    xor c                                         ; $7278: $A9
    ld e, h                                       ; $7279: $5C
    xor c                                         ; $727A: $A9
    ld e, h                                       ; $727B: $5C
    ret nz                                        ; $727C: $C0

    ld a, $C6                                     ; $727D: $3E $C6
    dec sp                                        ; $727F: $3B
    jr c, jr_055_7209                             ; $7280: $38 $87

    rst $00                                       ; $7282: $C7
    add hl, de                                    ; $7283: $19
    cp h                                          ; $7284: $BC
    ld [hl], e                                    ; $7285: $73
    ld h, d                                       ; $7286: $62
    rst $38                                       ; $7287: $FF
    ld b, c                                       ; $7288: $41
    cp $14                                        ; $7289: $FE $14
    db $EB                                        ; $728B: $EB
    cp [hl]                                       ; $728C: $BE
    ld c, c                                       ; $728D: $49
    ld [$FA1D], a                                 ; $728E: $EA $1D $FA
    db $FD                                        ; $7291: $FD
    dec e                                         ; $7292: $1D
    cp $B5                                        ; $7293: $FE $B5
    ld c, [hl]                                    ; $7295: $4E
    push de                                       ; $7296: $D5
    ld [c], a                                     ; $7297: $E2
    ld l, e                                       ; $7298: $6B
    ldh a, [$AB]                                  ; $7299: $F0 $AB
    ld [hl], b                                    ; $729B: $70
    jp c, $B725                                   ; $729C: $DA $25 $B7

    ret z                                         ; $729F: $C8

    jp $C31F                                      ; $72A0: $C3 $1F $C3


    ccf                                           ; $72A3: $3F
    add l                                         ; $72A4: $85
    dec a                                         ; $72A5: $3D
    add e                                         ; $72A6: $83
    ld a, e                                       ; $72A7: $7B
    dec c                                         ; $72A8: $0D
    ld a, l                                       ; $72A9: $7D
    ld a, [bc]                                    ; $72AA: $0A
    ld a, [$FD25]                                 ; $72AB: $FA $25 $FD
    ld [de], a                                    ; $72AE: $12
    or $6A                                        ; $72AF: $F6 $6A
    sub l                                         ; $72B1: $95
    add e                                         ; $72B2: $83
    ld a, a                                       ; $72B3: $7F
    and $1F                                       ; $72B4: $E6 $1F
    pop af                                        ; $72B6: $F1
    ld c, $F3                                     ; $72B7: $0E $F3
    inc c                                         ; $72B9: $0C
    rst $30                                       ; $72BA: $F7
    ld [$08F7], sp                                ; $72BB: $08 $F7 $08
    rst $38                                       ; $72BE: $FF
    nop                                           ; $72BF: $00
    rla                                           ; $72C0: $17
    jr @+$39                                      ; $72C1: $18 $37

    jr c, @-$07                                   ; $72C3: $38 $F7

    ld hl, sp-$09                                 ; $72C5: $F8 $F7
    ld hl, sp-$09                                 ; $72C7: $F8 $F7
    db $FC                                        ; $72C9: $FC
    di                                            ; $72CA: $F3
    cp $E1                                        ; $72CB: $FE $E1
    cp $DD                                        ; $72CD: $FE $DD
    cp $FF                                        ; $72CF: $FE $FF
    nop                                           ; $72D1: $00
    rst $38                                       ; $72D2: $FF
    nop                                           ; $72D3: $00
    cp $01                                        ; $72D4: $FE $01
    db $FC                                        ; $72D6: $FC
    inc bc                                        ; $72D7: $03
    ld hl, sp+$0F                                 ; $72D8: $F8 $0F
    pop af                                        ; $72DA: $F1
    rra                                           ; $72DB: $1F
    ldh [$1F], a                                  ; $72DC: $E0 $1F
    pop hl                                        ; $72DE: $E1
    rra                                           ; $72DF: $1F
    rst $38                                       ; $72E0: $FF
    nop                                           ; $72E1: $00
    add e                                         ; $72E2: $83
    ld a, h                                       ; $72E3: $7C
    inc e                                         ; $72E4: $1C
    rst $38                                       ; $72E5: $FF
    ld a, a                                       ; $72E6: $7F
    rst $38                                       ; $72E7: $FF
    ld l, $FF                                     ; $72E8: $2E $FF
    rst $38                                       ; $72EA: $FF
    rst $38                                       ; $72EB: $FF
    ld e, $FE                                     ; $72EC: $1E $FE
    push af                                       ; $72EE: $F5
    push af                                       ; $72EF: $F5
    rst $38                                       ; $72F0: $FF
    nop                                           ; $72F1: $00
    rst $38                                       ; $72F2: $FF
    nop                                           ; $72F3: $00
    rst $38                                       ; $72F4: $FF
    nop                                           ; $72F5: $00
    ccf                                           ; $72F6: $3F
    ret nz                                        ; $72F7: $C0

    rra                                           ; $72F8: $1F
    ldh a, [$CF]                                  ; $72F9: $F0 $CF
    ld hl, sp-$39                                 ; $72FB: $F8 $C7
    ret c                                         ; $72FD: $D8

    rlca                                          ; $72FE: $07
    jr @-$7E                                      ; $72FF: $18 $80

    ld a, a                                       ; $7301: $7F
    cp [hl]                                       ; $7302: $BE
    ld a, a                                       ; $7303: $7F
    cp [hl]                                       ; $7304: $BE
    ld a, a                                       ; $7305: $7F
    cp [hl]                                       ; $7306: $BE
    ld a, a                                       ; $7307: $7F
    add b                                         ; $7308: $80
    ld a, a                                       ; $7309: $7F
    ld a, a                                       ; $730A: $7F
    nop                                           ; $730B: $00

Call_055_730C:
    ld a, a                                       ; $730C: $7F
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
    rst $38                                       ; $7320: $FF
    nop                                           ; $7321: $00
    ret nz                                        ; $7322: $C0

    ccf                                           ; $7323: $3F
    add b                                         ; $7324: $80
    ld a, a                                       ; $7325: $7F
    add b                                         ; $7326: $80
    ld a, a                                       ; $7327: $7F
    rst $18                                       ; $7328: $DF
    ccf                                           ; $7329: $3F
    rst $38                                       ; $732A: $FF
    nop                                           ; $732B: $00
    push de                                       ; $732C: $D5
    ld a, [hl+]                                   ; $732D: $2A
    rst $38                                       ; $732E: $FF
    nop                                           ; $732F: $00
    rst $38                                       ; $7330: $FF
    nop                                           ; $7331: $00
    ld bc, $01FE                                  ; $7332: $01 $FE $01
    cp $01                                        ; $7335: $FE $01
    cp $FD                                        ; $7337: $FE $FD
    cp $FF                                        ; $7339: $FE $FF
    nop                                           ; $733B: $00
    ld d, l                                       ; $733C: $55
    xor d                                         ; $733D: $AA
    rst $38                                       ; $733E: $FF

Call_055_733F:
    nop                                           ; $733F: $00
    and e                                         ; $7340: $A3
    ld e, [hl]                                    ; $7341: $5E
    db $E3                                        ; $7342: $E3
    ld e, $A3                                     ; $7343: $1E $A3
    ld e, [hl]                                    ; $7345: $5E
    db $E3                                        ; $7346: $E3
    ld e, $A3                                     ; $7347: $1E $A3
    ld e, [hl]                                    ; $7349: $5E
    db $E3                                        ; $734A: $E3
    ld e, $A3                                     ; $734B: $1E $A3
    ld e, [hl]                                    ; $734D: $5E
    rst $38                                       ; $734E: $FF
    nop                                           ; $734F: $00
    add e                                         ; $7350: $83
    ld a, [hl]                                    ; $7351: $7E
    inc bc                                        ; $7352: $03
    cp $03                                        ; $7353: $FE $03
    cp $03                                        ; $7355: $FE $03
    cp $03                                        ; $7357: $FE $03
    cp $03                                        ; $7359: $FE $03
    cp $03                                        ; $735B: $FE $03
    cp $03                                        ; $735D: $FE $03
    cp $E0                                        ; $735F: $FE $E0
    ret nz                                        ; $7361: $C0

    add b                                         ; $7362: $80
    ret nz                                        ; $7363: $C0

    add [hl]                                      ; $7364: $86
    ld bc, $0708                                  ; $7365: $01 $08 $07
    db $10                                        ; $7368: $10
    rrca                                          ; $7369: $0F
    nop                                           ; $736A: $00
    rra                                           ; $736B: $1F
    jr nz, @+$21                                  ; $736C: $20 $1F

    nop                                           ; $736E: $00
    ccf                                           ; $736F: $3F
    adc e                                         ; $7370: $8B
    scf                                           ; $7371: $37
    xor c                                         ; $7372: $A9
    rla                                           ; $7373: $17
    call z, Call_055_7A03                         ; $7374: $CC $03 $7A
    add c                                         ; $7377: $81
    dec [hl]                                      ; $7378: $35
    ret z                                         ; $7379: $C8

    ld b, $F8                                     ; $737A: $06 $F8
    inc bc                                        ; $737C: $03
    db $FC                                        ; $737D: $FC
    nop                                           ; $737E: $00
    rst $38                                       ; $737F: $FF
    ld e, e                                       ; $7380: $5B
    cp h                                          ; $7381: $BC
    ld d, c                                       ; $7382: $51
    cp h                                          ; $7383: $BC
    ld b, l                                       ; $7384: $45
    cp b                                          ; $7385: $B8
    db $EC                                        ; $7386: $EC
    db $10                                        ; $7387: $10
    cp l                                          ; $7388: $BD
    nop                                           ; $7389: $00
    ld e, d                                       ; $738A: $5A
    ld bc, $42A5                                  ; $738B: $01 $A5 $42
    ld e, d                                       ; $738E: $5A
    and l                                         ; $738F: $A5
    sub $E9                                       ; $7390: $D6 $E9
    ld l, d                                       ; $7392: $6A
    pop af                                        ; $7393: $F1
    ld c, [hl]                                    ; $7394: $4E
    pop af                                        ; $7395: $F1
    sub h                                         ; $7396: $94
    ld h, e                                       ; $7397: $63
    ld l, h                                       ; $7398: $6C
    inc bc                                        ; $7399: $03
    sbc b                                         ; $739A: $98
    rlca                                          ; $739B: $07
    jr nc, @-$2F                                  ; $739C: $30 $CF

    nop                                           ; $739E: $00
    rst $38                                       ; $739F: $FF
    add hl, bc                                    ; $73A0: $09
    ld a, e                                       ; $73A1: $7B
    add h                                         ; $73A2: $84
    dec a                                         ; $73A3: $3D
    jp nz, $E01E                                  ; $73A4: $C2 $1E $E0

    rrca                                          ; $73A7: $0F
    db $FC                                        ; $73A8: $FC
    ld bc, $00FE                                  ; $73A9: $01 $FE $00
    rst $38                                       ; $73AC: $FF
    nop                                           ; $73AD: $00
    rst $38                                       ; $73AE: $FF
    nop                                           ; $73AF: $00
    rst $30                                       ; $73B0: $F7
    rst $30                                       ; $73B1: $F7
    ld a, [hl]                                    ; $73B2: $7E
    rst $38                                       ; $73B3: $FF
    sbc c                                         ; $73B4: $99
    rst $38                                       ; $73B5: $FF
    rlca                                          ; $73B6: $07
    rst $38                                       ; $73B7: $FF
    ld c, $FF                                     ; $73B8: $0E $FF
    add b                                         ; $73BA: $80
    rst $38                                       ; $73BB: $FF
    ld a, [hl]                                    ; $73BC: $7E
    ld a, [hl]                                    ; $73BD: $7E
    rst $38                                       ; $73BE: $FF
    nop                                           ; $73BF: $00
    add hl, hl                                    ; $73C0: $29
    xor $D1                                       ; $73C1: $EE $D1
    sbc $61                                       ; $73C3: $DE $61
    ld a, h                                       ; $73C5: $7C
    add e                                         ; $73C6: $83
    ld hl, sp+$0F                                 ; $73C7: $F8 $0F
    ldh [$BF], a                                  ; $73C9: $E0 $BF
    add b                                         ; $73CB: $80
    rst $38                                       ; $73CC: $FF
    nop                                           ; $73CD: $00
    rst $38                                       ; $73CE: $FF
    nop                                           ; $73CF: $00
    rlca                                          ; $73D0: $07
    ld hl, sp+$08                                 ; $73D1: $F8 $08
    rst $30                                       ; $73D3: $F7

jr_055_73D4:
    ccf                                           ; $73D4: $3F
    ret nz                                        ; $73D5: $C0

    ld h, c                                       ; $73D6: $61
    sbc [hl]                                      ; $73D7: $9E
    adc $3F                                       ; $73D8: $CE $3F
    add a                                         ; $73DA: $87
    ld a, a                                       ; $73DB: $7F
    cp b                                          ; $73DC: $B8
    ld b, a                                       ; $73DD: $47
    ld [c], a                                     ; $73DE: $E2
    dec e                                         ; $73DF: $1D
    inc a                                         ; $73E0: $3C
    jp $1CE3                                      ; $73E1: $C3 $E3 $1C


    db $DD                                        ; $73E4: $DD
    ld a, $B7                                     ; $73E5: $3E $B7
    ld a, b                                       ; $73E7: $78
    xor c                                         ; $73E8: $A9
    halt                                          ; $73E9: $76
    ld [bc], a                                    ; $73EA: $02
    db $FD                                        ; $73EB: $FD
    dec h                                         ; $73EC: $25
    ei                                            ; $73ED: $FB
    call z, $0033                                 ; $73EE: $CC $33 $00
    rst $38                                       ; $73F1: $FF
    nop                                           ; $73F2: $00
    rst $38                                       ; $73F3: $FF
    ld hl, sp+$07                                 ; $73F4: $F8 $07
    adc a                                         ; $73F6: $8F
    ld [hl], b                                    ; $73F7: $70
    halt                                          ; $73F8: $76
    ld sp, hl                                     ; $73F9: $F9
    ei                                            ; $73FA: $FB
    db $FC                                        ; $73FB: $FC
    cp l                                          ; $73FC: $BD
    jp nz, $B847                                  ; $73FD: $C2 $47 $B8

    rlca                                          ; $7400: $07
    nop                                           ; $7401: $00
    inc e                                         ; $7402: $1C
    inc bc                                        ; $7403: $03
    ld [hl-], a                                   ; $7404: $32
    rrca                                          ; $7405: $0F
    ld h, h                                       ; $7406: $64
    rra                                           ; $7407: $1F
    ld h, d                                       ; $7408: $62
    rra                                           ; $7409: $1F
    call nc, $E22F                                ; $740A: $D4 $2F $E2
    rra                                           ; $740D: $1F
    call nc, $E02F                                ; $740E: $D4 $2F $E0
    nop                                           ; $7411: $00
    jr c, jr_055_73D4                             ; $7412: $38 $C0

    ld l, h                                       ; $7414: $6C
    ldh a, [$F6]                                  ; $7415: $F0 $F6
    ld hl, sp+$76                                 ; $7417: $F8 $76
    ld hl, sp-$0D                                 ; $7419: $F8 $F3
    db $FC                                        ; $741B: $FC
    ld [hl], l                                    ; $741C: $75
    ld a, [$FCF3]                                 ; $741D: $FA $F3 $FC
    ld [hl], c                                    ; $7420: $71
    adc [hl]                                      ; $7421: $8E
    ld [hl], l                                    ; $7422: $75
    adc [hl]                                      ; $7423: $8E
    ld [hl], l                                    ; $7424: $75
    adc [hl]                                      ; $7425: $8E
    ld [hl], l                                    ; $7426: $75
    adc [hl]                                      ; $7427: $8E
    ld [hl], l                                    ; $7428: $75
    adc [hl]                                      ; $7429: $8E
    ld [hl], c                                    ; $742A: $71
    adc [hl]                                      ; $742B: $8E
    ld [hl], l                                    ; $742C: $75
    adc [hl]                                      ; $742D: $8E
    ld [hl], l                                    ; $742E: $75
    adc [hl]                                      ; $742F: $8E
    inc h                                         ; $7430: $24
    jr @+$5C                                      ; $7431: $18 $5A

    inc h                                         ; $7433: $24
    rst $38                                       ; $7434: $FF
    nop                                           ; $7435: $00
    ld a, [hl]                                    ; $7436: $7E
    add c                                         ; $7437: $81
    rst $38                                       ; $7438: $FF
    add c                                         ; $7439: $81
    cp l                                          ; $743A: $BD
    jp $C77A                                      ; $743B: $C3 $7A $C7


    dec a                                         ; $743E: $3D
    cp $00                                        ; $743F: $FE $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    inc d                                         ; $7444: $14
    nop                                           ; $7445: $00
    ld a, [hl+]                                   ; $7446: $2A
    nop                                           ; $7447: $00
    inc a                                         ; $7448: $3C
    nop                                           ; $7449: $00
    ld h, [hl]                                    ; $744A: $66
    jr @+$4C                                      ; $744B: $18 $4A

    inc a                                         ; $744D: $3C
    ld d, d                                       ; $744E: $52
    inc a                                         ; $744F: $3C
    ld d, b                                       ; $7450: $50
    nop                                           ; $7451: $00
    db $FC                                        ; $7452: $FC
    nop                                           ; $7453: $00
    xor e                                         ; $7454: $AB
    ld d, b                                       ; $7455: $50
    ld d, l                                       ; $7456: $55
    and d                                         ; $7457: $A2
    dec hl                                        ; $7458: $2B
    call nz, $9E61                                ; $7459: $C4 $61 $9E
    ld d, c                                       ; $745C: $51
    xor [hl]                                      ; $745D: $AE
    and d                                         ; $745E: $A2
    ld e, l                                       ; $745F: $5D
    ld b, e                                       ; $7460: $43
    cp h                                          ; $7461: $BC
    add l                                         ; $7462: $85
    ld a, d                                       ; $7463: $7A
    ld a, [bc]                                    ; $7464: $0A
    db $F4                                        ; $7465: $F4
    inc d                                         ; $7466: $14
    add sp, $28                                   ; $7467: $E8 $28
    ret nc                                        ; $7469: $D0

    ld d, b                                       ; $746A: $50
    and b                                         ; $746B: $A0
    ld h, b                                       ; $746C: $60
    add b                                         ; $746D: $80
    ret nz                                        ; $746E: $C0

    nop                                           ; $746F: $00
    ld [bc], a                                    ; $7470: $02
    nop                                           ; $7471: $00
    dec b                                         ; $7472: $05
    ld [bc], a                                    ; $7473: $02
    rlca                                          ; $7474: $07
    ld [bc], a                                    ; $7475: $02
    dec bc                                        ; $7476: $0B
    ld b, $0C                                     ; $7477: $06 $0C
    ld b, $0E                                     ; $7479: $06 $0E
    inc b                                         ; $747B: $04
    ld c, $04                                     ; $747C: $0E $04
    ld c, $04                                     ; $747E: $0E $04
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    nop                                           ; $748B: $00
    jr jr_055_748E                                ; $748C: $18 $00

jr_055_748E:
    jr z, @+$12                                   ; $748E: $28 $10

    ld b, b                                       ; $7490: $40
    nop                                           ; $7491: $00
    and b                                         ; $7492: $A0
    ld b, b                                       ; $7493: $40
    ldh [rLCDC], a                                ; $7494: $E0 $40
    ldh [rLCDC], a                                ; $7496: $E0 $40
    ret nc                                        ; $7498: $D0

    ld h, b                                       ; $7499: $60
    jr nc, jr_055_74FC                            ; $749A: $30 $60

    ld [hl], b                                    ; $749C: $70
    jr nz, @+$72                                  ; $749D: $20 $70

    jr nz, @+$12                                  ; $749F: $20 $10

    nop                                           ; $74A1: $00
    jr z, jr_055_74B4                             ; $74A2: $28 $10

    jr c, jr_055_74B6                             ; $74A4: $38 $10

    inc [hl]                                      ; $74A6: $34
    jr jr_055_74B5                                ; $74A7: $18 $0C

    jr jr_055_74C7                                ; $74A9: $18 $1C

    ld [$081C], sp                                ; $74AB: $08 $1C $08
    inc e                                         ; $74AE: $1C
    ld [rRAMG], sp                                ; $74AF: $08 $00 $00
    ccf                                           ; $74B2: $3F
    ld a, a                                       ; $74B3: $7F

jr_055_74B4:
    add b                                         ; $74B4: $80

jr_055_74B5:
    ld a, a                                       ; $74B5: $7F

jr_055_74B6:
    ret nz                                        ; $74B6: $C0

    ccf                                           ; $74B7: $3F
    ld l, c                                       ; $74B8: $69
    ld d, $D2                                     ; $74B9: $16 $D2
    dec l                                         ; $74BB: $2D
    ld a, a                                       ; $74BC: $7F
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

jr_055_74C7:
    nop                                           ; $74C7: $00
    ld bc, $6600                                  ; $74C8: $01 $00 $66
    nop                                           ; $74CB: $00
    add hl, de                                    ; $74CC: $19
    nop                                           ; $74CD: $00
    ld h, a                                       ; $74CE: $67
    nop                                           ; $74CF: $00
    rst $38                                       ; $74D0: $FF
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    rst $38                                       ; $74D3: $FF
    rst $38                                       ; $74D4: $FF
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    ld a, a                                       ; $74DC: $7F
    nop                                           ; $74DD: $00
    cp a                                          ; $74DE: $BF
    ld a, a                                       ; $74DF: $7F
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

jr_055_74FC:
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    ld [c], a                                     ; $7500: $E2

jr_055_7501:
    rra                                           ; $7501: $1F
    rst $10                                       ; $7502: $D7
    cpl                                           ; $7503: $2F
    ei                                            ; $7504: $FB
    inc e                                         ; $7505: $1C
    rst $28                                       ; $7506: $EF
    jr nc, jr_055_7501                            ; $7507: $30 $F8

    rlca                                          ; $7509: $07
    db $F4                                        ; $750A: $F4
    rrca                                          ; $750B: $0F
    ld [c], a                                     ; $750C: $E2
    rra                                           ; $750D: $1F
    call nc, Call_055_752F                        ; $750E: $D4 $2F $75
    ld a, [$FCF3]                                 ; $7511: $FA $F3 $FC
    rst $10                                       ; $7514: $D7
    jr c, @-$03                                   ; $7515: $38 $FB

    inc b                                         ; $7517: $04
    ld e, a                                       ; $7518: $5F
    ldh [rIE], a                                  ; $7519: $E0 $FF
    ldh a, [rPCM34]                               ; $751B: $F0 $77
    ld hl, sp-$0D                                 ; $751D: $F8 $F3
    db $FC                                        ; $751F: $FC
    ld a, e                                       ; $7520: $7B

jr_055_7521:
    add h                                         ; $7521: $84
    ld a, a                                       ; $7522: $7F
    add b                                         ; $7523: $80
    ld a, a                                       ; $7524: $7F
    add b                                         ; $7525: $80
    ccf                                           ; $7526: $3F
    ret nz                                        ; $7527: $C0

    ccf                                           ; $7528: $3F
    ld b, b                                       ; $7529: $40
    rra                                           ; $752A: $1F
    ld h, b                                       ; $752B: $60
    rlca                                          ; $752C: $07
    jr c, jr_055_752F                             ; $752D: $38 $00

Call_055_752F:
jr_055_752F:
    rrca                                          ; $752F: $0F
    rst $38                                       ; $7530: $FF
    nop                                           ; $7531: $00
    ld [hl], e                                    ; $7532: $73
    adc h                                         ; $7533: $8C
    inc c                                         ; $7534: $0C
    rst $38                                       ; $7535: $FF
    and c                                         ; $7536: $A1
    rst $18                                       ; $7537: $DF
    dec l                                         ; $7538: $2D
    jp nc, $00FF                                  ; $7539: $D2 $FF $00

    rst $38                                       ; $753C: $FF
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    rst $38                                       ; $753F: $FF
    nop                                           ; $7540: $00
    ret nz                                        ; $7541: $C0

    nop                                           ; $7542: $00
    add b                                         ; $7543: $80
    inc d                                         ; $7544: $14
    nop                                           ; $7545: $00
    ld a, [hl+]                                   ; $7546: $2A
    nop                                           ; $7547: $00
    inc a                                         ; $7548: $3C
    nop                                           ; $7549: $00
    ld h, [hl]                                    ; $754A: $66
    jr @+$4C                                      ; $754B: $18 $4A

    inc a                                         ; $754D: $3C
    ld d, d                                       ; $754E: $52
    inc a                                         ; $754F: $3C
    ld b, c                                       ; $7550: $41
    cp [hl]                                       ; $7551: $BE
    add e                                         ; $7552: $83
    ld a, h                                       ; $7553: $7C
    ld [bc], a                                    ; $7554: $02
    ld sp, hl                                     ; $7555: $F9
    inc d                                         ; $7556: $14
    db $E3                                        ; $7557: $E3
    jr z, jr_055_7521                             ; $7558: $28 $C7

    ld h, b                                       ; $755A: $60
    sbc a                                         ; $755B: $9F
    ld d, c                                       ; $755C: $51
    xor [hl]                                      ; $755D: $AE
    and e                                         ; $755E: $A3
    ld e, h                                       ; $755F: $5C
    ld b, b                                       ; $7560: $40
    add b                                         ; $7561: $80
    add b                                         ; $7562: $80
    ret nz                                        ; $7563: $C0

    ld d, b                                       ; $7564: $50
    ldh [$28], a                                  ; $7565: $E0 $28
    ldh a, [rNR30]                                ; $7567: $F0 $1A
    db $FC                                        ; $7569: $FC
    dec b                                         ; $756A: $05
    cp $8A                                        ; $756B: $FE $8A
    ld [hl], a                                    ; $756D: $77
    ld b, l                                       ; $756E: $45
    cp e                                          ; $756F: $BB
    ld a, [bc]                                    ; $7570: $0A
    inc b                                         ; $7571: $04
    ld a, [bc]                                    ; $7572: $0A
    inc b                                         ; $7573: $04
    dec b                                         ; $7574: $05
    ld [bc], a                                    ; $7575: $02
    dec b                                         ; $7576: $05
    ld [bc], a                                    ; $7577: $02
    dec h                                         ; $7578: $25
    ld [bc], a                                    ; $7579: $02
    ld d, a                                       ; $757A: $57
    jr nz, jr_055_75F4                            ; $757B: $20 $77

    jr nz, jr_055_75F1                            ; $757D: $20 $72

    jr nz, jr_055_75B9                            ; $757F: $20 $38

    db $10                                        ; $7581: $10
    jr c, jr_055_7594                             ; $7582: $38 $10

    ld e, b                                       ; $7584: $58
    jr nc, jr_055_75EF                            ; $7585: $30 $68

    jr nc, jr_055_75F1                            ; $7587: $30 $68

    jr nc, jr_055_75FB                            ; $7589: $30 $70

    jr nz, jr_055_75FD                            ; $758B: $20 $70

    jr nz, jr_055_75DF                            ; $758D: $20 $50

    jr nz, jr_055_75E1                            ; $758F: $20 $50

    jr nz, jr_055_75BB                            ; $7591: $20 $28

    db $10                                        ; $7593: $10

jr_055_7594:
    jr z, jr_055_75A6                             ; $7594: $28 $10

    jr z, jr_055_75A8                             ; $7596: $28 $10

    jr z, jr_055_75AA                             ; $7598: $28 $10

    inc d                                         ; $759A: $14
    ld [$0814], sp                                ; $759B: $08 $14 $08
    inc d                                         ; $759E: $14
    ld [$0814], sp                                ; $759F: $08 $14 $08
    inc d                                         ; $75A2: $14
    ld [$1028], sp                                ; $75A3: $08 $28 $10

jr_055_75A6:
    jr z, jr_055_75B8                             ; $75A6: $28 $10

jr_055_75A8:
    jr z, jr_055_75BA                             ; $75A8: $28 $10

jr_055_75AA:
    jr c, jr_055_75AC                             ; $75AA: $38 $00

jr_055_75AC:
    jr c, jr_055_75AE                             ; $75AC: $38 $00

jr_055_75AE:
    stop                                          ; $75AE: $10 $00
    nop                                           ; $75B0: $00
    nop                                           ; $75B1: $00
    rst $38                                       ; $75B2: $FF
    rst $38                                       ; $75B3: $FF
    nop                                           ; $75B4: $00
    rst $38                                       ; $75B5: $FF
    nop                                           ; $75B6: $00
    rst $38                                       ; $75B7: $FF

jr_055_75B8:
    adc e                                         ; $75B8: $8B

jr_055_75B9:
    ld [hl], h                                    ; $75B9: $74

jr_055_75BA:
    ld h, h                                       ; $75BA: $64

jr_055_75BB:
    sbc e                                         ; $75BB: $9B
    rst $38                                       ; $75BC: $FF
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    ld a, a                                       ; $75C0: $7F
    nop                                           ; $75C1: $00
    ld a, a                                       ; $75C2: $7F
    nop                                           ; $75C3: $00
    ld a, a                                       ; $75C4: $7F
    nop                                           ; $75C5: $00
    ld a, a                                       ; $75C6: $7F
    nop                                           ; $75C7: $00
    ld a, a                                       ; $75C8: $7F
    nop                                           ; $75C9: $00
    ld a, a                                       ; $75CA: $7F
    nop                                           ; $75CB: $00
    ld a, a                                       ; $75CC: $7F
    nop                                           ; $75CD: $00
    ld a, a                                       ; $75CE: $7F
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
    ld c, b                                       ; $75DA: $48
    nop                                           ; $75DB: $00
    or [hl]                                       ; $75DC: $B6
    ld c, b                                       ; $75DD: $48
    ld c, c                                       ; $75DE: $49

jr_055_75DF:
    or [hl]                                       ; $75DF: $B6
    nop                                           ; $75E0: $00

jr_055_75E1:
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

jr_055_75EF:
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00

jr_055_75F1:
    nop                                           ; $75F1: $00
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00

jr_055_75F4:
    nop                                           ; $75F4: $00
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    nop                                           ; $75FA: $00

jr_055_75FB:
    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00

jr_055_75FD:
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00
    ld [c], a                                     ; $7600: $E2
    rra                                           ; $7601: $1F
    call nc, $E22F                                ; $7602: $D4 $2F $E2
    rra                                           ; $7605: $1F
    call nc, $E22F                                ; $7606: $D4 $2F $E2
    rra                                           ; $7609: $1F
    call nc, $E22F                                ; $760A: $D4 $2F $E2
    rra                                           ; $760D: $1F
    call nc, Call_055_752F                        ; $760E: $D4 $2F $75
    ld a, [$FCF3]                                 ; $7611: $FA $F3 $FC
    ld [hl], l                                    ; $7614: $75
    ld a, [$FCF3]                                 ; $7615: $FA $F3 $FC
    ld [hl], l                                    ; $7618: $75
    ld a, [$FCF3]                                 ; $7619: $FA $F3 $FC
    ld [hl], l                                    ; $761C: $75
    ld a, [$FCF3]                                 ; $761D: $FA $F3 $FC
    daa                                           ; $7620: $27
    rra                                           ; $7621: $1F
    ld e, a                                       ; $7622: $5F
    ccf                                           ; $7623: $3F
    cp e                                          ; $7624: $BB
    ld a, h                                       ; $7625: $7C
    ldh a, [$78]                                  ; $7626: $F0 $78
    ld h, b                                       ; $7628: $60
    ldh a, [$F0]                                  ; $7629: $F0 $F0
    ldh [$C0], a                                  ; $762B: $E0 $C0
    ldh [$E0], a                                  ; $762D: $E0 $E0
    ret nz                                        ; $762F: $C0

    adc h                                         ; $7630: $8C
    jr nc, jr_055_7653                            ; $7631: $30 $20

    ld b, b                                       ; $7633: $40
    jr nc, jr_055_7676                            ; $7634: $30 $40

    jr nz, jr_055_7678                            ; $7636: $20 $40

    jr nz, jr_055_767A                            ; $7638: $20 $40

    jr nc, @+$42                                  ; $763A: $30 $40

    jr nz, jr_055_767E                            ; $763C: $20 $40

    jr c, @+$42                                   ; $763E: $38 $40

    ld d, d                                       ; $7640: $52
    inc a                                         ; $7641: $3C
    ld e, d                                       ; $7642: $5A
    inc h                                         ; $7643: $24

jr_055_7644:
    ld a, [hl]                                    ; $7644: $7E
    jr @+$70                                      ; $7645: $18 $6E

    inc a                                         ; $7647: $3C
    ld d, d                                       ; $7648: $52
    ld [$0066], sp                                ; $7649: $08 $66 $00
    ld e, d                                       ; $764C: $5A
    inc h                                         ; $764D: $24
    ld c, d                                       ; $764E: $4A
    inc a                                         ; $764F: $3C
    ld b, c                                       ; $7650: $41
    cp [hl]                                       ; $7651: $BE
    add e                                         ; $7652: $83

jr_055_7653:
    ld a, h                                       ; $7653: $7C
    ld [bc], a                                    ; $7654: $02
    ld sp, hl                                     ; $7655: $F9
    inc d                                         ; $7656: $14
    db $E3                                        ; $7657: $E3
    xor b                                         ; $7658: $A8
    ld b, a                                       ; $7659: $47
    ld h, d                                       ; $765A: $62
    sbc l                                         ; $765B: $9D
    or l                                          ; $765C: $B5
    ld a, [bc]                                    ; $765D: $0A
    ld d, $00                                     ; $765E: $16 $00
    ld [hl], l                                    ; $7660: $75
    adc [hl]                                      ; $7661: $8E
    ld [hl], l                                    ; $7662: $75
    adc [hl]                                      ; $7663: $8E
    ld [hl], c                                    ; $7664: $71
    adc [hl]                                      ; $7665: $8E
    ld [hl], l                                    ; $7666: $75
    adc [hl]                                      ; $7667: $8E
    ld [hl], c                                    ; $7668: $71
    adc [hl]                                      ; $7669: $8E
    ld [hl], l                                    ; $766A: $75
    adc [hl]                                      ; $766B: $8E
    ld [hl], c                                    ; $766C: $71
    adc [hl]                                      ; $766D: $8E
    ld [hl], e                                    ; $766E: $73
    adc h                                         ; $766F: $8C
    ld l, b                                       ; $7670: $68
    jr nc, @+$1A                                  ; $7671: $30 $18

    jr nc, jr_055_76AD                            ; $7673: $30 $38

    db $10                                        ; $7675: $10

jr_055_7676:
    jr c, @+$12                                   ; $7676: $38 $10

jr_055_7678:
    jr z, jr_055_768A                             ; $7678: $28 $10

jr_055_767A:
    inc d                                         ; $767A: $14
    ld [$0814], sp                                ; $767B: $08 $14 $08

jr_055_767E:
    inc d                                         ; $767E: $14
    ld [$2050], sp                                ; $767F: $08 $50 $20
    ld d, b                                       ; $7682: $50
    jr nz, jr_055_76D5                            ; $7683: $20 $50

    jr nz, jr_055_76D7                            ; $7685: $20 $50

    jr nz, jr_055_76B1                            ; $7687: $20 $28

Call_055_7689:
    db $10                                        ; $7689: $10

jr_055_768A:
    jr z, jr_055_769C                             ; $768A: $28 $10

    jr c, jr_055_768E                             ; $768C: $38 $00

jr_055_768E:
    jr c, jr_055_7690                             ; $768E: $38 $00

jr_055_7690:
    ld e, $00                                     ; $7690: $1E $00
    ld c, $00                                     ; $7692: $0E $00
    inc c                                         ; $7694: $0C
    nop                                           ; $7695: $00

jr_055_7696:
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00

jr_055_769C:
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    ld bc, $0E00                                  ; $76A2: $01 $00 $0E
    ld bc, $0738                                  ; $76A5: $01 $38 $07
    ld h, b                                       ; $76A8: $60
    rra                                           ; $76A9: $1F
    ld b, b                                       ; $76AA: $40
    ccf                                           ; $76AB: $3F
    add b                                         ; $76AC: $80

jr_055_76AD:
    ld a, a                                       ; $76AD: $7F
    ret nz                                        ; $76AE: $C0

    ld a, a                                       ; $76AF: $7F
    nop                                           ; $76B0: $00

jr_055_76B1:
    nop                                           ; $76B1: $00
    ldh a, [rP1]                                  ; $76B2: $F0 $00
    jr jr_055_7696                                ; $76B4: $18 $E0

    ld [$08F0], sp                                ; $76B6: $08 $F0 $08
    ldh a, [rNR34]                                ; $76B9: $F0 $1E
    ldh [$33], a                                  ; $76BB: $E0 $33
    call z, $9E61                                 ; $76BD: $CC $61 $9E
    ld a, [hl]                                    ; $76C0: $7E
    nop                                           ; $76C1: $00
    jr jr_055_7644                                ; $76C2: $18 $80

    nop                                           ; $76C4: $00
    ld h, d                                       ; $76C5: $62
    nop                                           ; $76C6: $00
    jr jr_055_76C9                                ; $76C7: $18 $00

jr_055_76C9:
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

jr_055_76D5:
    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00

jr_055_76D7:
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    ld [de], a                                    ; $76DA: $12
    nop                                           ; $76DB: $00
    dec l                                         ; $76DC: $2D
    ld [de], a                                    ; $76DD: $12
    ld c, b                                       ; $76DE: $48
    scf                                           ; $76DF: $37
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    ld l, b                                       ; $76E2: $68
    rla                                           ; $76E3: $17
    ld d, b                                       ; $76E4: $50
    cpl                                           ; $76E5: $2F
    ld b, b                                       ; $76E6: $40
    ccf                                           ; $76E7: $3F
    nop                                           ; $76E8: $00
    ld a, a                                       ; $76E9: $7F
    nop                                           ; $76EA: $00
    ld a, a                                       ; $76EB: $7F
    nop                                           ; $76EC: $00
    ld a, a                                       ; $76ED: $7F
    nop                                           ; $76EE: $00
    ld a, a                                       ; $76EF: $7F
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
    rst $38                                       ; $7701: $FF
    nop                                           ; $7702: $00
    rst $38                                       ; $7703: $FF
    rst $38                                       ; $7704: $FF
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    rst $38                                       ; $7707: $FF
    nop                                           ; $7708: $00
    rst $38                                       ; $7709: $FF
    nop                                           ; $770A: $00
    rst $38                                       ; $770B: $FF
    nop                                           ; $770C: $00
    rst $38                                       ; $770D: $FF
    nop                                           ; $770E: $00
    rst $38                                       ; $770F: $FF
    rst $38                                       ; $7710: $FF
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    rst $38                                       ; $7713: $FF
    nop                                           ; $7714: $00
    rst $38                                       ; $7715: $FF
    nop                                           ; $7716: $00
    rst $38                                       ; $7717: $FF
    nop                                           ; $7718: $00
    rst $38                                       ; $7719: $FF
    nop                                           ; $771A: $00
    rst $38                                       ; $771B: $FF
    nop                                           ; $771C: $00
    rst $38                                       ; $771D: $FF
    nop                                           ; $771E: $00
    rst $38                                       ; $771F: $FF
    add b                                         ; $7720: $80
    ld a, a                                       ; $7721: $7F
    cp $01                                        ; $7722: $FE $01
    rst $38                                       ; $7724: $FF
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

Jump_055_772F:
    nop                                           ; $772F: $00
    rst $38                                       ; $7730: $FF
    rst $38                                       ; $7731: $FF
    rst $38                                       ; $7732: $FF
    rst $38                                       ; $7733: $FF
    rst $38                                       ; $7734: $FF
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
    ld c, d                                       ; $7740: $4A
    inc a                                         ; $7741: $3C
    ld c, d                                       ; $7742: $4A
    inc a                                         ; $7743: $3C
    ld d, d                                       ; $7744: $52
    inc a                                         ; $7745: $3C
    ld c, d                                       ; $7746: $4A
    inc a                                         ; $7747: $3C
    ld d, d                                       ; $7748: $52
    inc a                                         ; $7749: $3C
    ld c, d                                       ; $774A: $4A
    inc a                                         ; $774B: $3C
    ld c, d                                       ; $774C: $4A
    inc a                                         ; $774D: $3C
    ld d, d                                       ; $774E: $52
    inc a                                         ; $774F: $3C
    rst $38                                       ; $7750: $FF
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    rst $38                                       ; $7753: $FF
    rst $38                                       ; $7754: $FF
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775A: $00
    nop                                           ; $775B: $00
    rst $38                                       ; $775C: $FF
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    rst $38                                       ; $7760: $FF
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    rst $38                                       ; $7763: $FF
    cp $01                                        ; $7764: $FE $01
    ld [bc], a                                    ; $7766: $02
    ld bc, $0102                                  ; $7767: $01 $02 $01
    ld [bc], a                                    ; $776A: $02
    ld bc, $00FF                                  ; $776B: $01 $FF $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    inc d                                         ; $7770: $14
    ld [$040A], sp                                ; $7771: $08 $0A $04
    ld a, [bc]                                    ; $7774: $0A
    inc b                                         ; $7775: $04
    ld a, [bc]                                    ; $7776: $0A
    inc b                                         ; $7777: $04
    rrca                                          ; $7778: $0F
    nop                                           ; $7779: $00
    rlca                                          ; $777A: $07
    nop                                           ; $777B: $00
    ld b, $00                                     ; $777C: $06 $00
    nop                                           ; $777E: $00
    nop                                           ; $777F: $00
    jr c, jr_055_7782                             ; $7780: $38 $00

jr_055_7782:
    jr c, jr_055_7784                             ; $7782: $38 $00

jr_055_7784:
    stop                                          ; $7784: $10 $00
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
    inc a                                         ; $7790: $3C
    nop                                           ; $7791: $00
    ld b, d                                       ; $7792: $42
    inc a                                         ; $7793: $3C
    add c                                         ; $7794: $81
    ld a, [hl]                                    ; $7795: $7E
    add c                                         ; $7796: $81
    ld a, [hl]                                    ; $7797: $7E
    add c                                         ; $7798: $81
    ld a, [hl]                                    ; $7799: $7E
    ld b, c                                       ; $779A: $41
    ld a, $32                                     ; $779B: $3E $32
    inc c                                         ; $779D: $0C
    inc c                                         ; $779E: $0C
    nop                                           ; $779F: $00
    add b                                         ; $77A0: $80
    ld a, a                                       ; $77A1: $7F
    ret nz                                        ; $77A2: $C0

    ld a, a                                       ; $77A3: $7F
    ret nz                                        ; $77A4: $C0

    ld a, a                                       ; $77A5: $7F
    and b                                         ; $77A6: $A0
    ld a, a                                       ; $77A7: $7F
    ret nc                                        ; $77A8: $D0

    ccf                                           ; $77A9: $3F
    ld l, [hl]                                    ; $77AA: $6E
    rra                                           ; $77AB: $1F
    dec a                                         ; $77AC: $3D
    inc bc                                        ; $77AD: $03
    rlca                                          ; $77AE: $07
    nop                                           ; $77AF: $00
    add c                                         ; $77B0: $81
    ld a, [hl]                                    ; $77B1: $7E
    ld bc, $03FE                                  ; $77B2: $01 $FE $03
    cp $01                                        ; $77B5: $FE $01
    cp $07                                        ; $77B7: $FE $07
    db $FC                                        ; $77B9: $FC
    ld a, [de]                                    ; $77BA: $1A
    db $FC                                        ; $77BB: $FC
    db $EC                                        ; $77BC: $EC
    ldh a, [$F0]                                  ; $77BD: $F0 $F0
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
    inc a                                         ; $77CE: $3C
    inc a                                         ; $77CF: $3C
    ld bc, $0E00                                  ; $77D0: $01 $00 $0E
    nop                                           ; $77D3: $00
    ld de, $2C0E                                  ; $77D4: $11 $0E $2C
    inc bc                                        ; $77D7: $03
    jp c, $3705                                   ; $77D8: $DA $05 $37

    ret z                                         ; $77DB: $C8

    sbc c                                         ; $77DC: $99
    ld h, [hl]                                    ; $77DD: $66
    ld c, [hl]                                    ; $77DE: $4E
    ld sp, $7FA0                                  ; $77DF: $31 $A0 $7F
    ld l, b                                       ; $77E2: $68
    rst $38                                       ; $77E3: $FF

jr_055_77E4:
    add b                                         ; $77E4: $80
    ld a, a                                       ; $77E5: $7F
    ld a, a                                       ; $77E6: $7F
    nop                                           ; $77E7: $00
    ccf                                           ; $77E8: $3F
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00
    nop                                           ; $77EB: $00

jr_055_77EC:
    ld a, a                                       ; $77EC: $7F
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
    db $FC                                        ; $7800: $FC
    ld bc, $0FF3                                  ; $7801: $01 $F3 $0F
    rrca                                          ; $7804: $0F
    call c, $609F                                 ; $7805: $DC $9F $60
    db $EC                                        ; $7808: $EC
    rra                                           ; $7809: $1F
    rst $38                                       ; $780A: $FF
    jr nc, jr_055_77EC                            ; $780B: $30 $DF

    jr c, @-$37                                   ; $780D: $38 $C7

    ld a, a                                       ; $780F: $7F
    rra                                           ; $7810: $1F
    ldh [$CF], a                                  ; $7811: $E0 $CF
    ldh a, [$EF]                                  ; $7813: $F0 $EF
    jr nc, jr_055_77E4                            ; $7815: $30 $CD

    ld l, $9E                                     ; $7817: $2E $9E
    ld b, c                                       ; $7819: $41
    ld a, b                                       ; $781A: $78
    add a                                         ; $781B: $87
    ld sp, hl                                     ; $781C: $F9
    ld b, a                                       ; $781D: $47
    add hl, hl                                    ; $781E: $29
    call nc, $00FF                                ; $781F: $D4 $FF $00
    rst $38                                       ; $7822: $FF
    nop                                           ; $7823: $00
    rst $38                                       ; $7824: $FF
    ld hl, sp+$07                                 ; $7825: $F8 $07
    ld hl, sp-$05                                 ; $7827: $F8 $FB
    ld hl, sp-$05                                 ; $7829: $F8 $FB

jr_055_782B:
    inc b                                         ; $782B: $04
    db $FD                                        ; $782C: $FD
    inc b                                         ; $782D: $04
    db $FD                                        ; $782E: $FD
    nop                                           ; $782F: $00
    rst $38                                       ; $7830: $FF
    nop                                           ; $7831: $00
    rst $38                                       ; $7832: $FF
    nop                                           ; $7833: $00
    ldh a, [$1F]                                  ; $7834: $F0 $1F
    rst $28                                       ; $7836: $EF
    jr c, @-$1F                                   ; $7837: $38 $DF

    jr nc, @-$5F                                  ; $7839: $30 $9F

    ld b, b                                       ; $783B: $40
    sbc a                                         ; $783C: $9F
    ld b, b                                       ; $783D: $40
    sbc a                                         ; $783E: $9F
    ld b, b                                       ; $783F: $40
    nop                                           ; $7840: $00
    rst $38                                       ; $7841: $FF
    add b                                         ; $7842: $80
    rst $38                                       ; $7843: $FF
    adc b                                         ; $7844: $88
    rst $38                                       ; $7845: $FF
    call z, $DCFF                                 ; $7846: $CC $FF $DC
    rst $38                                       ; $7849: $FF
    db $FD                                        ; $784A: $FD
    cp $F8                                        ; $784B: $FE $F8
    db $FD                                        ; $784D: $FD
    ei                                            ; $784E: $FB
    db $FC                                        ; $784F: $FC
    nop                                           ; $7850: $00
    rst $38                                       ; $7851: $FF
    ld c, b                                       ; $7852: $48
    rst $38                                       ; $7853: $FF
    jp nc, $02FF                                  ; $7854: $D2 $FF $02

    rst $38                                       ; $7857: $FF
    jp z, $0007                                   ; $7858: $CA $07 $00

    di                                            ; $785B: $F3
    inc b                                         ; $785C: $04
    db $E3                                        ; $785D: $E3
    inc e                                         ; $785E: $1C
    ld bc, $FFFF                                  ; $785F: $01 $FF $FF
    rst $38                                       ; $7862: $FF
    rst $38                                       ; $7863: $FF
    rst $38                                       ; $7864: $FF
    rst $38                                       ; $7865: $FF
    add c                                         ; $7866: $81
    rst $38                                       ; $7867: $FF
    jr c, jr_055_782B                             ; $7868: $38 $C1

    ld b, b                                       ; $786A: $40
    cp [hl]                                       ; $786B: $BE
    pop bc                                        ; $786C: $C1
    ld a, $E3                                     ; $786D: $3E $E3
    inc e                                         ; $786F: $1C
    rst $38                                       ; $7870: $FF
    rst $38                                       ; $7871: $FF
    rst $38                                       ; $7872: $FF
    rst $38                                       ; $7873: $FF
    rst $38                                       ; $7874: $FF
    rst $38                                       ; $7875: $FF
    jp $24C3                                      ; $7876: $C3 $C3 $24


    jr jr_055_787C                                ; $7879: $18 $01

    ld b, b                                       ; $787B: $40

jr_055_787C:
    ld bc, $8080                                  ; $787C: $01 $80 $80
    ld bc, $FFFF                                  ; $787F: $01 $FF $FF
    db $FC                                        ; $7882: $FC
    rst $38                                       ; $7883: $FF
    ldh a, [$FD]                                  ; $7884: $F0 $FD
    db $E4                                        ; $7886: $E4

Call_055_7887:
    ei                                            ; $7887: $FB
    and $F9                                       ; $7888: $E6 $F9
    ld h, e                                       ; $788A: $63
    ld hl, sp+$01                                 ; $788B: $F8 $01
    db $FC                                        ; $788D: $FC
    nop                                           ; $788E: $00
    add [hl]                                      ; $788F: $86
    rst $38                                       ; $7890: $FF
    rst $38                                       ; $7891: $FF
    rlca                                          ; $7892: $07
    rst $38                                       ; $7893: $FF
    inc bc                                        ; $7894: $03
    rst $28                                       ; $7895: $EF
    add hl, bc                                    ; $7896: $09
    rst $30                                       ; $7897: $F7
    ld a, [de]                                    ; $7898: $1A
    rst $20                                       ; $7899: $E7
    ld hl, sp+$07                                 ; $789A: $F8 $07
    ldh a, [rTAC]                                 ; $789C: $F0 $07
    ldh a, [rTMA]                                 ; $789E: $F0 $06
    jr c, jr_055_78DA                             ; $78A0: $38 $38

    push hl                                       ; $78A2: $E5
    push hl                                       ; $78A3: $E5
    ret nz                                        ; $78A4: $C0

    ret nz                                        ; $78A5: $C0

    ld [hl], d                                    ; $78A6: $72
    ld [hl], d                                    ; $78A7: $72
    ldh [$E0], a                                  ; $78A8: $E0 $E0
    reti                                          ; $78AA: $D9


    reti                                          ; $78AB: $D9


    di                                            ; $78AC: $F3
    di                                            ; $78AD: $F3
    rst $28                                       ; $78AE: $EF
    rst $28                                       ; $78AF: $EF
    ldh [$E0], a                                  ; $78B0: $E0 $E0
    db $FC                                        ; $78B2: $FC
    db $FC                                        ; $78B3: $FC
    add sp, -$18                                  ; $78B4: $E8 $E8
    cp $FE                                        ; $78B6: $FE $FE
    rst $38                                       ; $78B8: $FF
    rst $38                                       ; $78B9: $FF
    db $FC                                        ; $78BA: $FC
    db $FC                                        ; $78BB: $FC
    rst $38                                       ; $78BC: $FF
    rst $38                                       ; $78BD: $FF
    add sp, -$18                                  ; $78BE: $E8 $E8
    rst $38                                       ; $78C0: $FF
    rst $38                                       ; $78C1: $FF
    rst $38                                       ; $78C2: $FF
    rst $38                                       ; $78C3: $FF
    rst $38                                       ; $78C4: $FF
    rst $38                                       ; $78C5: $FF
    rst $38                                       ; $78C6: $FF
    rst $38                                       ; $78C7: $FF
    rst $38                                       ; $78C8: $FF
    rst $38                                       ; $78C9: $FF
    ld a, a                                       ; $78CA: $7F
    ld a, a                                       ; $78CB: $7F
    ccf                                           ; $78CC: $3F
    ccf                                           ; $78CD: $3F
    ccf                                           ; $78CE: $3F
    ccf                                           ; $78CF: $3F
    call z, $F0CC                                 ; $78D0: $CC $CC $F0
    ldh a, [$D8]                                  ; $78D3: $F0 $D8
    ret c                                         ; $78D5: $D8

    ld h, h                                       ; $78D6: $64
    ld h, h                                       ; $78D7: $64
    sub b                                         ; $78D8: $90
    sub b                                         ; $78D9: $90

jr_055_78DA:
    ret nz                                        ; $78DA: $C0

    ret nz                                        ; $78DB: $C0

    ld b, $00                                     ; $78DC: $06 $00
    add e                                         ; $78DE: $83
    adc h                                         ; $78DF: $8C
    ld c, [hl]                                    ; $78E0: $4E
    or c                                          ; $78E1: $B1
    dec a                                         ; $78E2: $3D
    add b                                         ; $78E3: $80
    add hl, sp                                    ; $78E4: $39
    add d                                         ; $78E5: $82
    ld [de], a                                    ; $78E6: $12
    pop bc                                        ; $78E7: $C1
    inc de                                        ; $78E8: $13
    ret nz                                        ; $78E9: $C0

    ld de, $00C2                                  ; $78EA: $11 $C2 $00
    ld [c], a                                     ; $78ED: $E2
    nop                                           ; $78EE: $00
    ld [c], a                                     ; $78EF: $E2
    rlca                                          ; $78F0: $07
    jr jr_055_796E                                ; $78F1: $18 $7B

    add h                                         ; $78F3: $84
    db $FD                                        ; $78F4: $FD
    nop                                           ; $78F5: $00
    db $FD                                        ; $78F6: $FD
    ld [bc], a                                    ; $78F7: $02
    di                                            ; $78F8: $F3
    inc b                                         ; $78F9: $04
    inc bc                                        ; $78FA: $03
    inc e                                         ; $78FB: $1C
    inc bc                                        ; $78FC: $03
    cp $07                                        ; $78FD: $FE $07
    cp $7F                                        ; $78FF: $FE $7F
    ret nz                                        ; $7901: $C0

    ld a, a                                       ; $7902: $7F

Call_055_7903:
    ret nz                                        ; $7903: $C0

    rst $38                                       ; $7904: $FF
    add b                                         ; $7905: $80
    add a                                         ; $7906: $87
    ld a, c                                       ; $7907: $79
    inc bc                                        ; $7908: $03
    rst $38                                       ; $7909: $FF
    add [hl]                                      ; $790A: $86
    ld a, e                                       ; $790B: $7B
    db $FD                                        ; $790C: $FD
    ld b, $C1                                     ; $790D: $06 $C1
    ld a, $6C                                     ; $790F: $3E $6C
    sub $F4                                       ; $7911: $D6 $F4
    rst $00                                       ; $7913: $C7
    db $FC                                        ; $7914: $FC
    add e                                         ; $7915: $83
    ld a, [hl]                                    ; $7916: $7E
    add e                                         ; $7917: $83
    cp e                                          ; $7918: $BB
    ld a, l                                       ; $7919: $7D
    ld a, l                                       ; $791A: $7D
    add d                                         ; $791B: $82
    ld a, [hl]                                    ; $791C: $7E
    add c                                         ; $791D: $81
    ld a, [hl]                                    ; $791E: $7E
    add c                                         ; $791F: $81
    ei                                            ; $7920: $FB
    ld [bc], a                                    ; $7921: $02
    inc bc                                        ; $7922: $03
    ld b, $03                                     ; $7923: $06 $03
    cp $07                                        ; $7925: $FE $07
    db $FC                                        ; $7927: $FC
    rlca                                          ; $7928: $07
    ld hl, sp-$71                                 ; $7929: $F8 $8F
    ld hl, sp-$71                                 ; $792B: $F8 $8F
    ldh a, [$DF]                                  ; $792D: $F0 $DF
    ld [hl], b                                    ; $792F: $70
    jr nc, @-$5F                                  ; $7930: $30 $9F

    rra                                           ; $7932: $1F
    adc $0F                                       ; $7933: $CE $0F
    ret nz                                        ; $7935: $C0

    rrca                                          ; $7936: $0F
    ldh [rIF], a                                  ; $7937: $E0 $0F
    ldh a, [rP1]                                  ; $7939: $F0 $00
    rst $38                                       ; $793B: $FF
    ld h, $C6                                     ; $793C: $26 $C6
    ld b, c                                       ; $793E: $41
    add hl, de                                    ; $793F: $19
    ld sp, hl                                     ; $7940: $F9
    db $FC                                        ; $7941: $FC
    ld hl, sp-$04                                 ; $7942: $F8 $FC
    db $FC                                        ; $7944: $FC
    cp $C1                                        ; $7945: $FE $C1
    cp $A2                                        ; $7947: $FE $A2
    pop bc                                        ; $7949: $C1
    ld b, c                                       ; $794A: $41
    cp [hl]                                       ; $794B: $BE
    add c                                         ; $794C: $81
    ld a, [hl]                                    ; $794D: $7E
    add c                                         ; $794E: $81
    ld a, [hl]                                    ; $794F: $7E
    cp $03                                        ; $7950: $FE $03
    cp $03                                        ; $7952: $FE $03
    rst $38                                       ; $7954: $FF
    ld bc, $9EE1                                  ; $7955: $01 $E1 $9E
    ret nz                                        ; $7958: $C0

    rst $38                                       ; $7959: $FF
    ld h, c                                       ; $795A: $61
    sbc $BF                                       ; $795B: $DE $BF
    ld h, b                                       ; $795D: $60
    add e                                         ; $795E: $83
    ld a, h                                       ; $795F: $7C
    ld a, a                                       ; $7960: $7F
    add c                                         ; $7961: $81
    ld a, a                                       ; $7962: $7F
    add e                                         ; $7963: $83
    ld sp, $A0CE                                  ; $7964: $31 $CE $A0
    rst $18                                       ; $7967: $DF
    ldh a, [$6F]                                  ; $7968: $F0 $6F
    rst $38                                       ; $796A: $FF
    ld h, b                                       ; $796B: $60
    rst $18                                       ; $796C: $DF
    ld [hl], b                                    ; $796D: $70

jr_055_796E:
    rst $18                                       ; $796E: $DF
    ld [hl], b                                    ; $796F: $70
    ld b, b                                       ; $7970: $40
    ret c                                         ; $7971: $D8

    ld h, c                                       ; $7972: $61
    pop hl                                        ; $7973: $E1
    ld h, c                                       ; $7974: $61
    ld h, c                                       ; $7975: $61
    ld [hl-], a                                   ; $7976: $32
    or d                                          ; $7977: $B2
    ccf                                           ; $7978: $3F
    cp a                                          ; $7979: $BF
    ld a, [hl]                                    ; $797A: $7E
    ld a, a                                       ; $797B: $7F
    cp $7F                                        ; $797C: $FE $7F
    cp $FF                                        ; $797E: $FE $FF
    push bc                                       ; $7980: $C5
    nop                                           ; $7981: $00
    ld bc, $1084                                  ; $7982: $01 $84 $10
    ldh [rP1], a                                  ; $7985: $E0 $00
    ret nz                                        ; $7987: $C0

    nop                                           ; $7988: $00
    add b                                         ; $7989: $80
    add b                                         ; $798A: $80
    nop                                           ; $798B: $00
    ret nz                                        ; $798C: $C0

    nop                                           ; $798D: $00
    ld h, e                                       ; $798E: $63
    nop                                           ; $798F: $00
    rst $38                                       ; $7990: $FF
    sbc a                                         ; $7991: $9F
    ldh a, [rIE]                                  ; $7992: $F0 $FF
    ldh [rIE], a                                  ; $7994: $E0 $FF
    ld a, b                                       ; $7996: $78
    rst $18                                       ; $7997: $DF
    ccf                                           ; $7998: $3F
    rst $20                                       ; $7999: $E7

jr_055_799A:
    ld a, a                                       ; $799A: $7F
    ldh [$DF], a                                  ; $799B: $E0 $DF
    ldh a, [$DF]                                  ; $799D: $F0 $DF
    ldh a, [$FE]                                  ; $799F: $F0 $FE
    cp $FD                                        ; $79A1: $FE $FD
    db $FD                                        ; $79A3: $FD
    ei                                            ; $79A4: $FB
    ei                                            ; $79A5: $FB
    db $FC                                        ; $79A6: $FC
    db $FC                                        ; $79A7: $FC
    cp $FE                                        ; $79A8: $FE $FE
    db $FC                                        ; $79AA: $FC
    db $FC                                        ; $79AB: $FC
    ldh [$E0], a                                  ; $79AC: $E0 $E0
    db $FC                                        ; $79AE: $FC
    db $FC                                        ; $79AF: $FC
    db $10                                        ; $79B0: $10
    ld a, [c]                                     ; $79B1: $F2
    jr nz, jr_055_799A                            ; $79B2: $20 $E6

    ld hl, $23EF                                  ; $79B4: $21 $EF $23
    call z, $D41F                                 ; $79B7: $CC $1F $D4
    ld [hl], e                                    ; $79BA: $73
    and b                                         ; $79BB: $A0
    adc c                                         ; $79BC: $89
    ld [hl], b                                    ; $79BD: $70
    inc b                                         ; $79BE: $04
    ldh a, [rIE]                                  ; $79BF: $F0 $FF
    rst $38                                       ; $79C1: $FF
    cp $FE                                        ; $79C2: $FE $FE
    db $FC                                        ; $79C4: $FC
    db $FC                                        ; $79C5: $FC
    ld sp, hl                                     ; $79C6: $F9
    ld hl, sp-$06                                 ; $79C7: $F8 $FA
    ld hl, sp-$06                                 ; $79C9: $F8 $FA
    ld hl, sp-$03                                 ; $79CB: $F8 $FD
    db $FC                                        ; $79CD: $FC
    db $FC                                        ; $79CE: $FC
    db $FC                                        ; $79CF: $FC
    nop                                           ; $79D0: $00
    rst $38                                       ; $79D1: $FF
    add hl, sp                                    ; $79D2: $39
    and $CE                                       ; $79D3: $E6 $CE
    pop af                                        ; $79D5: $F1
    inc b                                         ; $79D6: $04
    ei                                            ; $79D7: $FB
    ld [bc], a                                    ; $79D8: $02
    pop af                                        ; $79D9: $F1
    ld bc, $80C2                                  ; $79DA: $01 $C2 $80
    add d                                         ; $79DD: $82
    add b                                         ; $79DE: $80
    add c                                         ; $79DF: $81
    add b                                         ; $79E0: $80
    db $F4                                        ; $79E1: $F4
    add h                                         ; $79E2: $84
    di                                            ; $79E3: $F3
    ld b, d                                       ; $79E4: $42
    ld sp, hl                                     ; $79E5: $F9
    adc h                                         ; $79E6: $8C

jr_055_79E7:
    ldh [rSCY], a                                 ; $79E7: $E0 $42
    sbc h                                         ; $79E9: $9C
    nop                                           ; $79EA: $00
    ld a, [hl]                                    ; $79EB: $7E
    ld bc, $03FE                                  ; $79EC: $01 $FE $03
    ld a, b                                       ; $79EF: $78
    db $FC                                        ; $79F0: $FC
    rlca                                          ; $79F1: $07
    db $FC                                        ; $79F2: $FC
    add a                                         ; $79F3: $87
    ld a, h                                       ; $79F4: $7C
    rst $20                                       ; $79F5: $E7
    jr nc, jr_055_79E7                            ; $79F6: $30 $EF

    jr nc, @+$01                                  ; $79F8: $30 $FF

    jr nz, @+$01                                  ; $79FA: $20 $FF

    nop                                           ; $79FC: $00
    rst $38                                       ; $79FD: $FF
    nop                                           ; $79FE: $00
    rst $38                                       ; $79FF: $FF
    sbc $7F                                       ; $7A00: $DE $7F
    db $E3                                        ; $7A02: $E3

Call_055_7A03:
    ccf                                           ; $7A03: $3F
    pop af                                        ; $7A04: $F1
    ccf                                           ; $7A05: $3F
    ld a, [hl]                                    ; $7A06: $7E
    cp a                                          ; $7A07: $BF
    ld a, $FF                                     ; $7A08: $3E $FF
    ld e, $FF                                     ; $7A0A: $1E $FF
    inc e                                         ; $7A0C: $1C
    rst $38                                       ; $7A0D: $FF
    inc e                                         ; $7A0E: $1C
    rst $38                                       ; $7A0F: $FF
    ret nz                                        ; $7A10: $C0

    ld a, a                                       ; $7A11: $7F
    ld [hl], e                                    ; $7A12: $73
    sbc h                                         ; $7A13: $9C
    ld a, h                                       ; $7A14: $7C
    add e                                         ; $7A15: $83
    db $FC                                        ; $7A16: $FC
    inc bc                                        ; $7A17: $03
    cp $09                                        ; $7A18: $FE $09
    rst $28                                       ; $7A1A: $EF
    jr jr_055_7A8C                                ; $7A1B: $18 $6F

    cp b                                          ; $7A1D: $B8
    rrca                                          ; $7A1E: $0F
    pop af                                        ; $7A1F: $F1
    rst $38                                       ; $7A20: $FF
    nop                                           ; $7A21: $00
    rst $38                                       ; $7A22: $FF
    nop                                           ; $7A23: $00
    rst $38                                       ; $7A24: $FF
    nop                                           ; $7A25: $00
    rst $38                                       ; $7A26: $FF
    nop                                           ; $7A27: $00
    rst $38                                       ; $7A28: $FF
    nop                                           ; $7A29: $00
    rst $38                                       ; $7A2A: $FF
    nop                                           ; $7A2B: $00
    rst $38                                       ; $7A2C: $FF
    nop                                           ; $7A2D: $00
    rst $38                                       ; $7A2E: $FF
    nop                                           ; $7A2F: $00
    pop bc                                        ; $7A30: $C1
    cp $01                                        ; $7A31: $FE $01
    rst $38                                       ; $7A33: $FF
    ld bc, $81FF                                  ; $7A34: $01 $FF $81
    cp $53                                        ; $7A37: $FE $53
    rst $38                                       ; $7A39: $FF
    ld e, a                                       ; $7A3A: $5F
    pop hl                                        ; $7A3B: $E1
    cp a                                          ; $7A3C: $BF
    jp $C33E                                      ; $7A3D: $C3 $3E $C3


    adc $F1                                       ; $7A40: $CE $F1
    pop hl                                        ; $7A42: $E1
    or [hl]                                       ; $7A43: $B6
    rst $08                                       ; $7A44: $CF
    ld [hl], d                                    ; $7A45: $72
    sbc e                                         ; $7A46: $9B
    db $E4                                        ; $7A47: $E4
    add hl, de                                    ; $7A48: $19
    and $BC                                       ; $7A49: $E6 $BC
    ld h, a                                       ; $7A4B: $67
    cp $03                                        ; $7A4C: $FE $03
    rst $38                                       ; $7A4E: $FF
    ld a, c                                       ; $7A4F: $79
    nop                                           ; $7A50: $00
    rst $38                                       ; $7A51: $FF
    ld bc, $00FF                                  ; $7A52: $01 $FF $00
    rst $28                                       ; $7A55: $EF
    add hl, bc                                    ; $7A56: $09
    rst $30                                       ; $7A57: $F7
    jr @-$17                                      ; $7A58: $18 $E7

    ld hl, sp+$07                                 ; $7A5A: $F8 $07
    ldh a, [rTAC]                                 ; $7A5C: $F0 $07
    ldh a, [rTMA]                                 ; $7A5E: $F0 $06
    adc a                                         ; $7A60: $8F
    ld hl, sp+$0F                                 ; $7A61: $F8 $0F
    db $FC                                        ; $7A63: $FC
    rlca                                          ; $7A64: $07
    rst $38                                       ; $7A65: $FF
    nop                                           ; $7A66: $00
    rst $38                                       ; $7A67: $FF
    nop                                           ; $7A68: $00
    rst $38                                       ; $7A69: $FF
    nop                                           ; $7A6A: $00
    rst $38                                       ; $7A6B: $FF
    nop                                           ; $7A6C: $00
    rst $38                                       ; $7A6D: $FF
    nop                                           ; $7A6E: $00
    rst $38                                       ; $7A6F: $FF
    sbc $00                                       ; $7A70: $DE $00
    sbc $00                                       ; $7A72: $DE $00
    adc h                                         ; $7A74: $8C
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
    ccf                                           ; $7A80: $3F
    sbc $3F                                       ; $7A81: $DE $3F
    ldh [$1F], a                                  ; $7A83: $E0 $1F
    pop af                                        ; $7A85: $F1
    ld c, $FB                                     ; $7A86: $0E $FB
    nop                                           ; $7A88: $00
    rst $38                                       ; $7A89: $FF
    nop                                           ; $7A8A: $00
    rst $38                                       ; $7A8B: $FF

jr_055_7A8C:
    nop                                           ; $7A8C: $00
    rst $38                                       ; $7A8D: $FF
    nop                                           ; $7A8E: $00
    rst $38                                       ; $7A8F: $FF
    adc a                                         ; $7A90: $8F
    ld hl, sp-$79                                 ; $7A91: $F8 $87
    rst $38                                       ; $7A93: $FF
    nop                                           ; $7A94: $00
    rst $38                                       ; $7A95: $FF
    nop                                           ; $7A96: $00
    rst $38                                       ; $7A97: $FF
    nop                                           ; $7A98: $00
    rst $38                                       ; $7A99: $FF
    nop                                           ; $7A9A: $00
    rst $38                                       ; $7A9B: $FF
    nop                                           ; $7A9C: $00
    rst $38                                       ; $7A9D: $FF
    nop                                           ; $7A9E: $00

jr_055_7A9F:
    rst $38                                       ; $7A9F: $FF
    db $FC                                        ; $7AA0: $FC
    db $FC                                        ; $7AA1: $FC

jr_055_7AA2:
    cp $FE                                        ; $7AA2: $FE $FE
    cp $FE                                        ; $7AA4: $FE $FE
    rst $38                                       ; $7AA6: $FF
    rst $38                                       ; $7AA7: $FF
    cp $FE                                        ; $7AA8: $FE $FE
    rst $38                                       ; $7AAA: $FF
    rst $38                                       ; $7AAB: $FF
    db $FC                                        ; $7AAC: $FC
    db $FC                                        ; $7AAD: $FC
    rst $38                                       ; $7AAE: $FF
    rst $38                                       ; $7AAF: $FF
    inc c                                         ; $7AB0: $0C
    ldh a, [$98]                                  ; $7AB1: $F0 $98
    ld a, [c]                                     ; $7AB3: $F2
    ld a, h                                       ; $7AB4: $7C
    pop bc                                        ; $7AB5: $C1
    ld e, $C0                                     ; $7AB6: $1E $C0
    rlca                                          ; $7AB8: $07
    ldh [$03], a                                  ; $7AB9: $E0 $03
    ldh a, [rSB]                                  ; $7ABB: $F0 $01
    ld hl, sp+$00                                 ; $7ABD: $F8 $00
    db $FC                                        ; $7ABF: $FC
    ld hl, sp-$05                                 ; $7AC0: $F8 $FB
    ldh a, [$F4]                                  ; $7AC2: $F0 $F4
    db $E4                                        ; $7AC4: $E4
    ldh [$82], a                                  ; $7AC5: $E0 $82
    add l                                         ; $7AC7: $85
    dec de                                        ; $7AC8: $1B
    nop                                           ; $7AC9: $00
    ld h, b                                       ; $7ACA: $60
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    nop                                           ; $7ACD: $00
    add b                                         ; $7ACE: $80
    ld bc, $BE00                                  ; $7ACF: $01 $00 $BE
    ld b, b                                       ; $7AD2: $40
    rra                                           ; $7AD3: $1F
    nop                                           ; $7AD4: $00
    ld e, a                                       ; $7AD5: $5F
    jr z, jr_055_7A9F                             ; $7AD6: $28 $C7

    inc d                                         ; $7AD8: $14
    db $E3                                        ; $7AD9: $E3
    adc e                                         ; $7ADA: $8B
    ld [hl], b                                    ; $7ADB: $70
    ld c, e                                       ; $7ADC: $4B
    jr nc, @+$47                                  ; $7ADD: $30 $45

    jr c, jr_055_7AA2                             ; $7ADF: $38 $C1

    ld e, $BE                                     ; $7AE1: $1E $BE
    pop bc                                        ; $7AE3: $C1
    rst $38                                       ; $7AE4: $FF
    add b                                         ; $7AE5: $80
    ld a, a                                       ; $7AE6: $7F
    ld h, c                                       ; $7AE7: $61
    inc e                                         ; $7AE8: $1C
    rst $38                                       ; $7AE9: $FF
    add b                                         ; $7AEA: $80
    ld a, a                                       ; $7AEB: $7F
    add c                                         ; $7AEC: $81
    ld a, a                                       ; $7AED: $7F
    rst $00                                       ; $7AEE: $C7
    ld a, a                                       ; $7AEF: $7F
    nop                                           ; $7AF0: $00

jr_055_7AF1:
    rst $38                                       ; $7AF1: $FF
    nop                                           ; $7AF2: $00
    rst $38                                       ; $7AF3: $FF
    add b                                         ; $7AF4: $80
    ld a, a                                       ; $7AF5: $7F
    add b                                         ; $7AF6: $80
    ld a, a                                       ; $7AF7: $7F
    add b                                         ; $7AF8: $80
    ld a, a                                       ; $7AF9: $7F
    add b                                         ; $7AFA: $80
    rst $38                                       ; $7AFB: $FF
    add b                                         ; $7AFC: $80
    rst $38                                       ; $7AFD: $FF
    nop                                           ; $7AFE: $00
    rst $38                                       ; $7AFF: $FF
    inc e                                         ; $7B00: $1C
    nop                                           ; $7B01: $00
    jr jr_055_7B04                                ; $7B02: $18 $00

jr_055_7B04:
    ld [rRAMG], sp                                ; $7B04: $08 $00 $00
    nop                                           ; $7B07: $00
    nop                                           ; $7B08: $00
    nop                                           ; $7B09: $00
    nop                                           ; $7B0A: $00
    nop                                           ; $7B0B: $00
    nop                                           ; $7B0C: $00
    nop                                           ; $7B0D: $00
    nop                                           ; $7B0E: $00
    nop                                           ; $7B0F: $00
    rra                                           ; $7B10: $1F
    di                                            ; $7B11: $F3
    ld e, $FF                                     ; $7B12: $1E $FF
    ld e, $FF                                     ; $7B14: $1E $FF
    inc e                                         ; $7B16: $1C
    rst $38                                       ; $7B17: $FF
    add hl, bc                                    ; $7B18: $09
    rst $38                                       ; $7B19: $FF
    ld bc, $01FF                                  ; $7B1A: $01 $FF $01
    rst $38                                       ; $7B1D: $FF
    nop                                           ; $7B1E: $00
    rst $38                                       ; $7B1F: $FF
    nop                                           ; $7B20: $00
    ld a, l                                       ; $7B21: $7D
    ld [bc], a                                    ; $7B22: $02
    ld hl, sp+$00                                 ; $7B23: $F8 $00
    ld a, [$E314]                                 ; $7B25: $FA $14 $E3
    jr z, jr_055_7AF1                             ; $7B28: $28 $C7

    pop de                                        ; $7B2A: $D1
    ld c, $D2                                     ; $7B2B: $0E $D2
    inc c                                         ; $7B2D: $0C
    and d                                         ; $7B2E: $A2
    inc e                                         ; $7B2F: $1C
    call c, $2823                                 ; $7B30: $DC $23 $28
    rst $10                                       ; $7B33: $D7
    jr nz, @+$01                                  ; $7B34: $20 $FF

    ldh [$5F], a                                  ; $7B36: $E0 $5F
    ret c                                         ; $7B38: $D8

    rst $38                                       ; $7B39: $FF
    ld b, $FF                                     ; $7B3A: $06 $FF
    nop                                           ; $7B3C: $00
    rst $38                                       ; $7B3D: $FF
    add c                                         ; $7B3E: $81
    ld a, a                                       ; $7B3F: $7F
    push bc                                       ; $7B40: $C5
    nop                                           ; $7B41: $00
    ld bc, $1084                                  ; $7B42: $01 $84 $10
    ldh [rP1], a                                  ; $7B45: $E0 $00
    ret nz                                        ; $7B47: $C0

    nop                                           ; $7B48: $00
    add b                                         ; $7B49: $80
    add b                                         ; $7B4A: $80
    nop                                           ; $7B4B: $00
    ret nz                                        ; $7B4C: $C0

    nop                                           ; $7B4D: $00
    ld h, e                                       ; $7B4E: $63
    nop                                           ; $7B4F: $00
    rst $38                                       ; $7B50: $FF
    sbc a                                         ; $7B51: $9F
    ldh a, [rIE]                                  ; $7B52: $F0 $FF
    ldh [rIE], a                                  ; $7B54: $E0 $FF
    ld a, b                                       ; $7B56: $78
    rst $18                                       ; $7B57: $DF
    ccf                                           ; $7B58: $3F
    rst $20                                       ; $7B59: $E7
    ld a, a                                       ; $7B5A: $7F
    ldh [$DF], a                                  ; $7B5B: $E0 $DF
    ldh a, [$DF]                                  ; $7B5D: $F0 $DF
    ldh a, [$FC]                                  ; $7B5F: $F0 $FC
    ld bc, $0FF3                                  ; $7B61: $01 $F3 $0F
    rrca                                          ; $7B64: $0F
    call c, Call_055_689F                         ; $7B65: $DC $9F $68
    rst $20                                       ; $7B68: $E7
    ld [$0DE2], sp                                ; $7B69: $08 $E2 $0D
    db $E4                                        ; $7B6C: $E4
    rrca                                          ; $7B6D: $0F
    jp hl                                         ; $7B6E: $E9


    ld e, $1F                                     ; $7B6F: $1E $1F
    ldh [$CF], a                                  ; $7B71: $E0 $CF
    ldh a, [$EF]                                  ; $7B73: $F0 $EF
    jr nc, @-$31                                  ; $7B75: $30 $CD

    ld l, $9E                                     ; $7B77: $2E $9E
    ld b, c                                       ; $7B79: $41
    jr c, @-$37                                   ; $7B7A: $38 $C7

    add hl, de                                    ; $7B7C: $19
    rst $00                                       ; $7B7D: $C7
    jp hl                                         ; $7B7E: $E9


    inc d                                         ; $7B7F: $14
    ret nz                                        ; $7B80: $C0

    rlca                                          ; $7B81: $07
    nop                                           ; $7B82: $00
    ld a, a                                       ; $7B83: $7F
    ld h, b                                       ; $7B84: $60
    rra                                           ; $7B85: $1F
    ld b, b                                       ; $7B86: $40
    rra                                           ; $7B87: $1F
    nop                                           ; $7B88: $00
    rrca                                          ; $7B89: $0F
    ld [hl], b                                    ; $7B8A: $70
    rrca                                          ; $7B8B: $0F
    add h                                         ; $7B8C: $84
    inc bc                                        ; $7B8D: $03
    add e                                         ; $7B8E: $83
    nop                                           ; $7B8F: $00
    and d                                         ; $7B90: $A2
    inc e                                         ; $7B91: $1C
    or d                                          ; $7B92: $B2
    inc c                                         ; $7B93: $0C
    ccf                                           ; $7B94: $3F
    add b                                         ; $7B95: $80
    ccf                                           ; $7B96: $3F
    add b                                         ; $7B97: $80
    ld e, a                                       ; $7B98: $5F
    add b                                         ; $7B99: $80
    ld c, [hl]                                    ; $7B9A: $4E
    add b                                         ; $7B9B: $80
    ret nz                                        ; $7B9C: $C0

    nop                                           ; $7B9D: $00
    ret nz                                        ; $7B9E: $C0

    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    rst $00                                       ; $7BA1: $C7
    ld hl, sp-$0D                                 ; $7BA2: $F8 $F3
    inc b                                         ; $7BA4: $04
    add hl, bc                                    ; $7BA5: $09
    nop                                           ; $7BA6: $00
    ld sp, hl                                     ; $7BA7: $F9
    inc b                                         ; $7BA8: $04
    ld sp, hl                                     ; $7BA9: $F9
    ld e, $E1                                     ; $7BAA: $1E $E1
    cp $E1                                        ; $7BAC: $FE $E1
    rst $38                                       ; $7BAE: $FF
    nop                                           ; $7BAF: $00
    pop hl                                        ; $7BB0: $E1
    ccf                                           ; $7BB1: $3F
    cp a                                          ; $7BB2: $BF
    ld h, b                                       ; $7BB3: $60
    ld a, a                                       ; $7BB4: $7F
    ret nz                                        ; $7BB5: $C0

    ld a, h                                       ; $7BB6: $7C
    jp Jump_055_463B                              ; $7BB7: $C3 $3B $46


    add hl, de                                    ; $7BBA: $19
    sbc d                                         ; $7BBB: $9A
    add c                                         ; $7BBC: $81
    ld l, h                                       ; $7BBD: $6C
    call nz, $FE7E                                ; $7BBE: $C4 $7E $FE
    ld bc, $81FC                                  ; $7BC1: $01 $FC $81
    dec a                                         ; $7BC4: $3D
    jp nz, $F0EE                                  ; $7BC5: $C2 $EE $F0

    rst $30                                       ; $7BC8: $F7
    add hl, de                                    ; $7BC9: $19
    rst $30                                       ; $7BCA: $F7
    add hl, bc                                    ; $7BCB: $09
    rst $20                                       ; $7BCC: $E7
    dec c                                         ; $7BCD: $0D
    rrca                                          ; $7BCE: $0F
    inc a                                         ; $7BCF: $3C
    rra                                           ; $7BD0: $1F
    ldh [rIE], a                                  ; $7BD1: $E0 $FF
    db $10                                        ; $7BD3: $10
    rst $38                                       ; $7BD4: $FF
    ld de, $139E                                  ; $7BD5: $11 $9E $13
    inc e                                         ; $7BD8: $1C
    ld a, [c]                                     ; $7BD9: $F2
    dec e                                         ; $7BDA: $1D
    ldh a, [rNR33]                                ; $7BDB: $F0 $1D
    ldh a, [$9C]                                  ; $7BDD: $F0 $9C
    ld a, [c]                                     ; $7BDF: $F2
    ld a, b                                       ; $7BE0: $78
    cp [hl]                                       ; $7BE1: $BE
    inc sp                                        ; $7BE2: $33
    db $EC                                        ; $7BE3: $EC
    ld h, a                                       ; $7BE4: $67
    sub b                                         ; $7BE5: $90
    ld l, a                                       ; $7BE6: $6F

jr_055_7BE7:
    sbc b                                         ; $7BE7: $98
    dec h                                         ; $7BE8: $25
    rst $18                                       ; $7BE9: $DF
    jr nc, @-$31                                  ; $7BEA: $30 $CD

    ld a, e                                       ; $7BEC: $7B

jr_055_7BED:
    ret nz                                        ; $7BED: $C0

    rst $38                                       ; $7BEE: $FF
    db $EC                                        ; $7BEF: $EC
    nop                                           ; $7BF0: $00
    ret nz                                        ; $7BF1: $C0

    nop                                           ; $7BF2: $00
    jr nz, @+$42                                  ; $7BF3: $20 $40

    jr nz, jr_055_7C67                            ; $7BF5: $20 $70

    add b                                         ; $7BF7: $80
    adc b                                         ; $7BF8: $88
    ld [hl], b                                    ; $7BF9: $70
    inc b                                         ; $7BFA: $04
    jr jr_055_7C01                                ; $7BFB: $18 $04

    ld [$0C02], sp                                ; $7BFD: $08 $02 $0C
    ld [hl], b                                    ; $7C00: $70

jr_055_7C01:
    rst $08                                       ; $7C01: $CF
    ld a, b                                       ; $7C02: $78
    rst $00                                       ; $7C03: $C7
    ld a, a                                       ; $7C04: $7F
    ret nz                                        ; $7C05: $C0

    rst $38                                       ; $7C06: $FF
    ldh [$FD], a                                  ; $7C07: $E0 $FD
    ld a, [$FF78]                                 ; $7C09: $FA $78 $FF
    jr c, @+$01                                   ; $7C0C: $38 $FF

    inc c                                         ; $7C0E: $0C
    ei                                            ; $7C0F: $FB
    cpl                                           ; $7C10: $2F
    rst $18                                       ; $7C11: $DF
    rst $08                                       ; $7C12: $CF
    ccf                                           ; $7C13: $3F
    rst $18                                       ; $7C14: $DF
    ccf                                           ; $7C15: $3F
    ld a, $FF                                     ; $7C16: $3E $FF
    cp a                                          ; $7C18: $BF

jr_055_7C19:
    ld [hl], b                                    ; $7C19: $70
    ld [hl], b                                    ; $7C1A: $70
    adc a                                         ; $7C1B: $8F
    jr nc, jr_055_7BED                            ; $7C1C: $30 $CF

    jr c, jr_055_7BE7                             ; $7C1E: $38 $C7

    db $10                                        ; $7C20: $10
    rst $38                                       ; $7C21: $FF
    jr nz, @+$01                                  ; $7C22: $20 $FF

    jr nz, @+$01                                  ; $7C24: $20 $FF

    jr nc, @+$01                                  ; $7C26: $30 $FF

    jr c, jr_055_7C19                             ; $7C28: $38 $EF

    ccf                                           ; $7C2A: $3F
    db $E3                                        ; $7C2B: $E3
    ccf                                           ; $7C2C: $3F
    ldh a, [$3F]                                  ; $7C2D: $F0 $3F
    ldh a, [rNR44]                                ; $7C2F: $F0 $23
    rst $38                                       ; $7C31: $FF
    rra                                           ; $7C32: $1F
    rst $38                                       ; $7C33: $FF
    ld e, $F3                                     ; $7C34: $1E $F3
    ld e, $F3                                     ; $7C36: $1E $F3
    ld a, $E3                                     ; $7C38: $3E $E3
    db $FC                                        ; $7C3A: $FC
    rst $10                                       ; $7C3B: $D7
    db $FC                                        ; $7C3C: $FC
    rla                                           ; $7C3D: $17
    ld hl, sp+$2F                                 ; $7C3E: $F8 $2F
    ccf                                           ; $7C40: $3F
    sbc $3F                                       ; $7C41: $DE $3F
    ldh [$1F], a                                  ; $7C43: $E0 $1F
    pop af                                        ; $7C45: $F1
    ld c, $FB                                     ; $7C46: $0E $FB
    nop                                           ; $7C48: $00
    rst $38                                       ; $7C49: $FF
    nop                                           ; $7C4A: $00
    rst $38                                       ; $7C4B: $FF
    nop                                           ; $7C4C: $00
    rst $38                                       ; $7C4D: $FF
    nop                                           ; $7C4E: $00
    rst $38                                       ; $7C4F: $FF
    adc a                                         ; $7C50: $8F
    ld hl, sp-$79                                 ; $7C51: $F8 $87
    rst $38                                       ; $7C53: $FF
    nop                                           ; $7C54: $00
    rst $38                                       ; $7C55: $FF
    nop                                           ; $7C56: $00
    rst $38                                       ; $7C57: $FF
    nop                                           ; $7C58: $00
    rst $38                                       ; $7C59: $FF
    nop                                           ; $7C5A: $00
    rst $38                                       ; $7C5B: $FF
    nop                                           ; $7C5C: $00
    rst $38                                       ; $7C5D: $FF
    nop                                           ; $7C5E: $00
    rst $38                                       ; $7C5F: $FF
    ld l, b                                       ; $7C60: $68
    add a                                         ; $7C61: $87
    ret z                                         ; $7C62: $C8

    rlca                                          ; $7C63: $07
    ret z                                         ; $7C64: $C8

    rlca                                          ; $7C65: $07
    adc b                                         ; $7C66: $88

jr_055_7C67:
    rlca                                          ; $7C67: $07
    adc b                                         ; $7C68: $88
    rra                                           ; $7C69: $1F
    add [hl]                                      ; $7C6A: $86
    rra                                           ; $7C6B: $1F
    add a                                         ; $7C6C: $87
    dec de                                        ; $7C6D: $1B
    add c                                         ; $7C6E: $81
    jr c, jr_055_7C84                             ; $7C6F: $38 $13

    jp hl                                         ; $7C71: $E9


    dec bc                                        ; $7C72: $0B
    ld hl, sp+$03                                 ; $7C73: $F8 $03
    db $FC                                        ; $7C75: $FC
    add hl, bc                                    ; $7C76: $09
    db $FC                                        ; $7C77: $FC
    db $10                                        ; $7C78: $10
    or $20                                        ; $7C79: $F6 $20
    rst $20                                       ; $7C7B: $E7
    ldh [$C7], a                                  ; $7C7C: $E0 $C7
    ldh [rTAC], a                                 ; $7C7E: $E0 $07
    rst $00                                       ; $7C80: $C7

jr_055_7C81:
    rst $38                                       ; $7C81: $FF
    ld a, [hl]                                    ; $7C82: $7E
    ei                                            ; $7C83: $FB

jr_055_7C84:
    ld a, $F3                                     ; $7C84: $3E $F3
    ld a, [hl]                                    ; $7C86: $7E
    jp $A7DC                                      ; $7C87: $C3 $DC $A7


    call c, $DC27                                 ; $7C8A: $DC $27 $DC
    scf                                           ; $7C8D: $37
    adc b                                         ; $7C8E: $88
    ld a, a                                       ; $7C8F: $7F
    rst $38                                       ; $7C90: $FF
    rst $38                                       ; $7C91: $FF
    rst $38                                       ; $7C92: $FF
    rst $38                                       ; $7C93: $FF
    rst $38                                       ; $7C94: $FF
    rst $38                                       ; $7C95: $FF
    rst $38                                       ; $7C96: $FF
    rst $38                                       ; $7C97: $FF
    ld sp, hl                                     ; $7C98: $F9
    ld sp, hl                                     ; $7C99: $F9
    cp $FE                                        ; $7C9A: $FE $FE
    di                                            ; $7C9C: $F3
    di                                            ; $7C9D: $F3
    db $FC                                        ; $7C9E: $FC
    db $FC                                        ; $7C9F: $FC
    jr nc, @+$11                                  ; $7CA0: $30 $0F

    jr nz, jr_055_7CBC                            ; $7CA2: $20 $18

    ld [$191F], sp                                ; $7CA4: $08 $1F $19
    ld c, $CF                                     ; $7CA7: $0E $CF
    ld b, $CB                                     ; $7CA9: $06 $CB
    nop                                           ; $7CAB: $00
    push hl                                       ; $7CAC: $E5
    nop                                           ; $7CAD: $00
    db $F4                                        ; $7CAE: $F4
    ld [bc], a                                    ; $7CAF: $02
    ld b, $39                                     ; $7CB0: $06 $39
    inc hl                                        ; $7CB2: $23
    inc e                                         ; $7CB3: $1C
    sub e                                         ; $7CB4: $93
    inc c                                         ; $7CB5: $0C
    adc c                                         ; $7CB6: $89
    ld b, $C9                                     ; $7CB7: $06 $C9
    ld b, $44                                     ; $7CB9: $06 $44
    add e                                         ; $7CBB: $83

jr_055_7CBC:
    ld h, d                                       ; $7CBC: $62
    add c                                         ; $7CBD: $81
    jr c, jr_055_7C81                             ; $7CBE: $38 $C1

    rrca                                          ; $7CC0: $0F
    db $FC                                        ; $7CC1: $FC
    rlca                                          ; $7CC2: $07
    cp $87                                        ; $7CC3: $FE $87
    cp $8F                                        ; $7CC5: $FE $8F
    ldh a, [rIE]                                  ; $7CC7: $F0 $FF
    ret nz                                        ; $7CC9: $C0

    rst $38                                       ; $7CCA: $FF
    adc a                                         ; $7CCB: $8F
    rst $38                                       ; $7CCC: $FF
    sbc b                                         ; $7CCD: $98
    sbc a                                         ; $7CCE: $9F
    ret nc                                        ; $7CCF: $D0

    di                                            ; $7CD0: $F3
    sbc [hl]                                      ; $7CD1: $9E
    pop af                                        ; $7CD2: $F1
    sbc [hl]                                      ; $7CD3: $9E
    pop af                                        ; $7CD4: $F1
    sbc a                                         ; $7CD5: $9F
    ld [hl], b                                    ; $7CD6: $70
    rst $18                                       ; $7CD7: $DF
    jr nc, @+$01                                  ; $7CD8: $30 $FF

    add c                                         ; $7CDA: $81
    ld a, a                                       ; $7CDB: $7F
    ld b, c                                       ; $7CDC: $41
    cp a                                          ; $7CDD: $BF
    ld e, c                                       ; $7CDE: $59
    rst $38                                       ; $7CDF: $FF
    rst $30                                       ; $7CE0: $F7
    ldh [rIE], a                                  ; $7CE1: $E0 $FF
    add sp, $77                                   ; $7CE3: $E8 $77
    add sp, -$04                                  ; $7CE5: $E8 $FC
    ld h, h                                       ; $7CE7: $64
    ld l, $F7                                     ; $7CE8: $2E $F7
    ccf                                           ; $7CEA: $3F
    ei                                            ; $7CEB: $FB
    rra                                           ; $7CEC: $1F
    db $FD                                        ; $7CED: $FD
    rrca                                          ; $7CEE: $0F
    cp $1C                                        ; $7CEF: $FE $1C
    ldh [$3E], a                                  ; $7CF1: $E0 $3E
    ret nz                                        ; $7CF3: $C0

    ld a, a                                       ; $7CF4: $7F
    add c                                         ; $7CF5: $81
    ei                                            ; $7CF6: $FB
    ld b, $FA                                     ; $7CF7: $06 $FA
    rlca                                          ; $7CF9: $07
    ei                                            ; $7CFA: $FB
    ld bc, $08F1                                  ; $7CFB: $01 $F1 $08
    ld l, h                                       ; $7CFE: $6C
    jr jr_055_7D20                                ; $7CFF: $18 $1F

    ld hl, sp+$1F                                 ; $7D01: $F8 $1F
    ldh a, [$1F]                                  ; $7D03: $F0 $1F
    ldh a, [$1F]                                  ; $7D05: $F0 $1F
    ldh a, [rIF]                                  ; $7D07: $F0 $0F
    db $FD                                        ; $7D09: $FD
    rlca                                          ; $7D0A: $07
    rst $38                                       ; $7D0B: $FF
    nop                                           ; $7D0C: $00
    rst $38                                       ; $7D0D: $FF
    nop                                           ; $7D0E: $00
    rst $38                                       ; $7D0F: $FF
    rst $38                                       ; $7D10: $FF
    jr nc, @+$01                                  ; $7D11: $30 $FF

    jr nc, @+$01                                  ; $7D13: $30 $FF

    ld [hl], b                                    ; $7D15: $70
    rst $38                                       ; $7D16: $FF
    pop hl                                        ; $7D17: $E1
    cp a                                          ; $7D18: $BF
    di                                            ; $7D19: $F3
    ld a, $FF                                     ; $7D1A: $3E $FF
    inc c                                         ; $7D1C: $0C
    rst $38                                       ; $7D1D: $FF
    nop                                           ; $7D1E: $00
    rst $38                                       ; $7D1F: $FF

jr_055_7D20:
    ccf                                           ; $7D20: $3F
    ld hl, sp+$3F                                 ; $7D21: $F8 $3F
    ldh a, [$3F]                                  ; $7D23: $F0 $3F
    pop af                                        ; $7D25: $F1
    inc a                                         ; $7D26: $3C
    rst $30                                       ; $7D27: $F7
    add hl, de                                    ; $7D28: $19
    rst $38                                       ; $7D29: $FF
    ld bc, $00FF                                  ; $7D2A: $01 $FF $00
    rst $38                                       ; $7D2D: $FF
    nop                                           ; $7D2E: $00
    rst $38                                       ; $7D2F: $FF
    call c, $867F                                 ; $7D30: $DC $7F $86
    rst $38                                       ; $7D33: $FF
    ld [bc], a                                    ; $7D34: $02
    rst $38                                       ; $7D35: $FF
    add d                                         ; $7D36: $82
    rst $38                                       ; $7D37: $FF
    call $F8FF                                    ; $7D38: $CD $FF $F8

Call_055_7D3B:
    rst $38                                       ; $7D3B: $FF

jr_055_7D3C:
    pop af                                        ; $7D3C: $F1
    rst $38                                       ; $7D3D: $FF
    ld h, b                                       ; $7D3E: $60
    rst $38                                       ; $7D3F: $FF
    nop                                           ; $7D40: $00
    rst $38                                       ; $7D41: $FF
    nop                                           ; $7D42: $00
    rst $38                                       ; $7D43: $FF
    nop                                           ; $7D44: $00
    rst $38                                       ; $7D45: $FF
    nop                                           ; $7D46: $00
    rst $38                                       ; $7D47: $FF
    nop                                           ; $7D48: $00
    rst $38                                       ; $7D49: $FF
    ld bc, $02FE                                  ; $7D4A: $01 $FE $02
    db $FD                                        ; $7D4D: $FD
    inc b                                         ; $7D4E: $04
    rst $38                                       ; $7D4F: $FF
    rst $38                                       ; $7D50: $FF
    nop                                           ; $7D51: $00
    rst $38                                       ; $7D52: $FF
    nop                                           ; $7D53: $00

jr_055_7D54:
    rst $38                                       ; $7D54: $FF
    ld bc, $02FE                                  ; $7D55: $01 $FE $02
    db $FD                                        ; $7D58: $FD
    ld [bc], a                                    ; $7D59: $02
    dec sp                                        ; $7D5A: $3B
    call nz, $14CF                                ; $7D5B: $C4 $CF $14
    push af                                       ; $7D5E: $F5
    ld c, $FF                                     ; $7D5F: $0E $FF

jr_055_7D61:
    jp $C3FF                                      ; $7D61: $C3 $FF $C3


    ld hl, sp-$71                                 ; $7D64: $F8 $8F
    rst $20                                       ; $7D66: $E7
    sbc b                                         ; $7D67: $98
    rst $28                                       ; $7D68: $EF
    db $10                                        ; $7D69: $10
    rst $18                                       ; $7D6A: $DF
    jr c, jr_055_7D54                             ; $7D6B: $38 $E7

    db $10                                        ; $7D6D: $10
    ld [c], a                                     ; $7D6E: $E2
    jr jr_055_7D61                                ; $7D6F: $18 $F0

    inc b                                         ; $7D71: $04
    pop af                                        ; $7D72: $F1
    nop                                           ; $7D73: $00
    ld a, [c]                                     ; $7D74: $F2
    ld bc, $C372                                  ; $7D75: $01 $72 $C3
    add hl, de                                    ; $7D78: $19
    ret nz                                        ; $7D79: $C0

    jr jr_055_7D3C                                ; $7D7A: $18 $C0

    ld a, b                                       ; $7D7C: $78
    ret nz                                        ; $7D7D: $C0

    ret c                                         ; $7D7E: $D8

    add b                                         ; $7D7F: $80
    nop                                           ; $7D80: $00
    rst $38                                       ; $7D81: $FF
    ld [$08F6], sp                                ; $7D82: $08 $F6 $08
    cp $08                                        ; $7D85: $FE $08
    cp $10                                        ; $7D87: $FE $10
    or $E8                                        ; $7D89: $F6 $E8
    jp nz, $0318                                  ; $7D8B: $C2 $18 $03

    ld hl, sp+$03                                 ; $7D8E: $F8 $03
    pop bc                                        ; $7D90: $C1
    cp $81                                        ; $7D91: $FE $81
    ld a, a                                       ; $7D93: $7F
    add c                                         ; $7D94: $81
    ld a, a                                       ; $7D95: $7F
    pop bc                                        ; $7D96: $C1
    ld a, $F3                                     ; $7D97: $3E $F3
    rra                                           ; $7D99: $1F
    rst $38                                       ; $7D9A: $FF
    add c                                         ; $7D9B: $81
    rst $38                                       ; $7D9C: $FF
    add e                                         ; $7D9D: $83
    ld a, [hl]                                    ; $7D9E: $7E
    add e                                         ; $7D9F: $83
    call $CCFE                                    ; $7DA0: $CD $FE $CC
    or $D1                                        ; $7DA3: $F6 $D1
    rst $28                                       ; $7DA5: $EF
    db $EC                                        ; $7DA6: $EC
    sbc a                                         ; $7DA7: $9F
    ld a, [hl]                                    ; $7DA8: $7E
    or c                                          ; $7DA9: $B1
    ld a, $E1                                     ; $7DAA: $3E $E1
    inc e                                         ; $7DAC: $1C
    jp $E301                                      ; $7DAD: $C3 $01 $E3


    ld a, d                                       ; $7DB0: $7A
    nop                                           ; $7DB1: $00
    call nz, $8408                                ; $7DB2: $C4 $08 $84
    sbc l                                         ; $7DB5: $9D

jr_055_7DB6:
    add a                                         ; $7DB6: $87
    cp d                                          ; $7DB7: $BA
    rst $38                                       ; $7DB8: $FF
    ld a, b                                       ; $7DB9: $78
    ld sp, $1824                                  ; $7DBA: $31 $24 $18
    ld b, d                                       ; $7DBD: $42
    jr jr_055_7E02                                ; $7DBE: $18 $42

    sbc a                                         ; $7DC0: $9F
    ret nz                                        ; $7DC1: $C0

    adc a                                         ; $7DC2: $8F
    ld h, b                                       ; $7DC3: $60
    jr nc, jr_055_7DB6                            ; $7DC4: $30 $F0

    ld [hl], b                                    ; $7DC6: $70
    rst $18                                       ; $7DC7: $DF
    ld a, b                                       ; $7DC8: $78
    rst $18                                       ; $7DC9: $DF
    ld a, e                                       ; $7DCA: $7B
    rst $08                                       ; $7DCB: $CF
    ld [hl], e                                    ; $7DCC: $73
    adc $77                                       ; $7DCD: $CE $77
    call nz, $D9A6                                ; $7DCF: $C4 $A6 $D9
    ld h, $D8                                     ; $7DD2: $26 $D8
    ld [hl], $D9                                  ; $7DD4: $36 $D9
    scf                                           ; $7DD6: $37
    ld sp, hl                                     ; $7DD7: $F9
    ld l, a                                       ; $7DD8: $6F
    cp b                                          ; $7DD9: $B8
    db $EB                                        ; $7DDA: $EB
    db $F4                                        ; $7DDB: $F4
    rst $30                                       ; $7DDC: $F7
    jr @+$01                                      ; $7DDD: $18 $FF

    ld [$8FFD], sp                                ; $7DDF: $08 $FD $8F
    ld a, [hl]                                    ; $7DE2: $7E
    rst $08                                       ; $7DE3: $CF
    ld e, $FF                                     ; $7DE4: $1E $FF
    rrca                                          ; $7DE6: $0F
    rst $30                                       ; $7DE7: $F7
    rlca                                          ; $7DE8: $07
    rst $38                                       ; $7DE9: $FF
    inc bc                                        ; $7DEA: $03
    rst $38                                       ; $7DEB: $FF
    ld bc, $00FF                                  ; $7DEC: $01 $FF $00
    rst $38                                       ; $7DEF: $FF
    rst $28                                       ; $7DF0: $EF
    call $D9DF                                    ; $7DF1: $CD $DF $D9
    sbc $50                                       ; $7DF4: $DE $50
    call c, $E073                                 ; $7DF6: $DC $73 $E0
    xor e                                         ; $7DF9: $AB
    adc h                                         ; $7DFA: $8C
    rst $18                                       ; $7DFB: $DF
    halt                                          ; $7DFC: $76
    adc a                                         ; $7DFD: $8F
    ei                                            ; $7DFE: $FB
    rrca                                          ; $7DFF: $0F
    rst $38                                       ; $7E00: $FF
    rst $38                                       ; $7E01: $FF

jr_055_7E02:
    rst $38                                       ; $7E02: $FF
    rst $38                                       ; $7E03: $FF
    rst $38                                       ; $7E04: $FF
    rst $38                                       ; $7E05: $FF
    rst $38                                       ; $7E06: $FF
    rst $38                                       ; $7E07: $FF
    cp $FF                                        ; $7E08: $FE $FF
    db $FD                                        ; $7E0A: $FD
    cp $F8                                        ; $7E0B: $FE $F8
    db $FD                                        ; $7E0D: $FD
    ei                                            ; $7E0E: $FB
    db $FC                                        ; $7E0F: $FC
    rst $38                                       ; $7E10: $FF
    rst $38                                       ; $7E11: $FF
    rst $38                                       ; $7E12: $FF
    rst $38                                       ; $7E13: $FF
    rst $38                                       ; $7E14: $FF
    rst $38                                       ; $7E15: $FF
    rlca                                          ; $7E16: $07
    rst $38                                       ; $7E17: $FF
    rlc a                                         ; $7E18: $CB $07
    nop                                           ; $7E1A: $00
    di                                            ; $7E1B: $F3
    inc b                                         ; $7E1C: $04
    db $E3                                        ; $7E1D: $E3
    inc e                                         ; $7E1E: $1C
    ld bc, $E0F7                                  ; $7E1F: $01 $F7 $E0
    rst $38                                       ; $7E22: $FF
    add sp, $77                                   ; $7E23: $E8 $77
    add sp, -$04                                  ; $7E25: $E8 $FC
    ld h, h                                       ; $7E27: $64
    ld l, $F7                                     ; $7E28: $2E $F7
    ccf                                           ; $7E2A: $3F
    ei                                            ; $7E2B: $FB
    rra                                           ; $7E2C: $1F
    db $FD                                        ; $7E2D: $FD
    rrca                                          ; $7E2E: $0F
    db $FD                                        ; $7E2F: $FD
    inc e                                         ; $7E30: $1C
    ldh [$3E], a                                  ; $7E31: $E0 $3E
    ret nz                                        ; $7E33: $C0

    ld a, a                                       ; $7E34: $7F
    add c                                         ; $7E35: $81
    ei                                            ; $7E36: $FB
    ld b, $FA                                     ; $7E37: $06 $FA
    rlca                                          ; $7E39: $07

jr_055_7E3A:
    ei                                            ; $7E3A: $FB
    ld bc, $08F1                                  ; $7E3B: $01 $F1 $08
    ld l, h                                       ; $7E3E: $6C
    jr jr_055_7E3A                                ; $7E3F: $18 $F9

    inc b                                         ; $7E41: $04
    ld sp, hl                                     ; $7E42: $F9
    ld c, $F8                                     ; $7E43: $0E $F8
    rrca                                          ; $7E45: $0F
    ldh a, [$1F]                                  ; $7E46: $F0 $1F
    ldh a, [$3F]                                  ; $7E48: $F0 $3F
    and $79                                       ; $7E4A: $E6 $79
    rst $28                                       ; $7E4C: $EF
    ldh a, [$EF]                                  ; $7E4D: $F0 $EF
    ldh a, [$F5]                                  ; $7E4F: $F0 $F5
    ld c, $F6                                     ; $7E51: $0E $F6
    dec bc                                        ; $7E53: $0B
    rst $30                                       ; $7E54: $F7
    dec bc                                        ; $7E55: $0B
    cpl                                           ; $7E56: $2F
    jp $F31F                                      ; $7E57: $C3 $1F $F3


    rra                                           ; $7E5A: $1F
    di                                            ; $7E5B: $F3
    ccf                                           ; $7E5C: $3F
    pop hl                                        ; $7E5D: $E1
    rst $38                                       ; $7E5E: $FF
    ld h, c                                       ; $7E5F: $61
    rra                                           ; $7E60: $1F
    ldh a, [rIF]                                  ; $7E61: $F0 $0F
    ldh a, [rIF]                                  ; $7E63: $F0 $0F
    ld hl, sp+$07                                 ; $7E65: $F8 $07
    rst $38                                       ; $7E67: $FF
    nop                                           ; $7E68: $00
    rst $38                                       ; $7E69: $FF
    nop                                           ; $7E6A: $00
    rst $38                                       ; $7E6B: $FF
    nop                                           ; $7E6C: $00
    rst $38                                       ; $7E6D: $FF
    nop                                           ; $7E6E: $00
    rst $38                                       ; $7E6F: $FF
    inc sp                                        ; $7E70: $33
    ret nz                                        ; $7E71: $C0

    ld b, b                                       ; $7E72: $40
    add b                                         ; $7E73: $80
    add b                                         ; $7E74: $80
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
    add h                                         ; $7E80: $84
    ld a, b                                       ; $7E81: $78
    ret z                                         ; $7E82: $C8

    jr nc, jr_055_7EB5                            ; $7E83: $30 $30

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
    ld a, h                                       ; $7E90: $7C
    add e                                         ; $7E91: $83
    ld a, b                                       ; $7E92: $78
    rst $00                                       ; $7E93: $C7
    nop                                           ; $7E94: $00
    rst $38                                       ; $7E95: $FF
    nop                                           ; $7E96: $00
    rst $38                                       ; $7E97: $FF
    nop                                           ; $7E98: $00
    rst $38                                       ; $7E99: $FF
    nop                                           ; $7E9A: $00
    rst $38                                       ; $7E9B: $FF
    nop                                           ; $7E9C: $00
    rst $38                                       ; $7E9D: $FF
    nop                                           ; $7E9E: $00
    rst $38                                       ; $7E9F: $FF
    ccf                                           ; $7EA0: $3F
    ldh [$1F], a                                  ; $7EA1: $E0 $1F
    ld hl, sp+$07                                 ; $7EA3: $F8 $07
    db $FC                                        ; $7EA5: $FC
    inc bc                                        ; $7EA6: $03
    cp $01                                        ; $7EA7: $FE $01
    rst $38                                       ; $7EA9: $FF
    nop                                           ; $7EAA: $00
    rst $38                                       ; $7EAB: $FF
    nop                                           ; $7EAC: $00
    rst $38                                       ; $7EAD: $FF
    nop                                           ; $7EAE: $00
    rst $38                                       ; $7EAF: $FF
    jp nc, Jump_055_520C                          ; $7EB0: $D2 $0C $52

    adc h                                         ; $7EB3: $8C
    ld l, c                                       ; $7EB4: $69

jr_055_7EB5:
    add [hl]                                      ; $7EB5: $86
    dec sp                                        ; $7EB6: $3B
    call nz, $8076                                ; $7EB7: $C4 $76 $80
    ret nz                                        ; $7EBA: $C0

    nop                                           ; $7EBB: $00
    nop                                           ; $7EBC: $00
    nop                                           ; $7EBD: $00
    nop                                           ; $7EBE: $00
    nop                                           ; $7EBF: $00
    ld [hl], e                                    ; $7EC0: $73
    ret z                                         ; $7EC1: $C8

    cp c                                          ; $7EC2: $B9
    db $EC                                        ; $7EC3: $EC
    cp h                                          ; $7EC4: $BC
    ld l, [hl]                                    ; $7EC5: $6E
    db $FC                                        ; $7EC6: $FC
    ld l, a                                       ; $7EC7: $6F
    cp $3F                                        ; $7EC8: $FE $3F
    cp $1F                                        ; $7ECA: $FE $1F
    rst $38                                       ; $7ECC: $FF
    ld bc, $00FF                                  ; $7ECD: $01 $FF $00
    di                                            ; $7ED0: $F3
    inc c                                         ; $7ED1: $0C
    rst $20                                       ; $7ED2: $E7
    inc e                                         ; $7ED3: $1C
    rra                                           ; $7ED4: $1F
    ld a, b                                       ; $7ED5: $78
    rra                                           ; $7ED6: $1F
    ldh a, [$3F]                                  ; $7ED7: $F0 $3F
    ldh a, [$7F]                                  ; $7ED9: $F0 $7F
    ldh [rIE], a                                  ; $7EDB: $E0 $FF
    ret nz                                        ; $7EDD: $C0

    rst $38                                       ; $7EDE: $FF
    nop                                           ; $7EDF: $00
    nop                                           ; $7EE0: $00
    nop                                           ; $7EE1: $00
    add b                                         ; $7EE2: $80
    add b                                         ; $7EE3: $80
    nop                                           ; $7EE4: $00
    nop                                           ; $7EE5: $00
    ret nz                                        ; $7EE6: $C0

jr_055_7EE7:
    ret nz                                        ; $7EE7: $C0

    nop                                           ; $7EE8: $00
    nop                                           ; $7EE9: $00
    ret nc                                        ; $7EEA: $D0

    ret nc                                        ; $7EEB: $D0

    ld b, $06                                     ; $7EEC: $06 $06
    ld hl, sp-$08                                 ; $7EEE: $F8 $F8
    di                                            ; $7EF0: $F3
    rrca                                          ; $7EF1: $0F
    ld h, a                                       ; $7EF2: $67
    dec c                                         ; $7EF3: $0D
    add e                                         ; $7EF4: $83
    ld a, $E1                                     ; $7EF5: $3E $E1
    ccf                                           ; $7EF7: $3F
    ld hl, sp+$1F                                 ; $7EF8: $F8 $1F
    db $FC                                        ; $7EFA: $FC
    rrca                                          ; $7EFB: $0F
    cp $07                                        ; $7EFC: $FE $07
    rst $38                                       ; $7EFE: $FF
    ld bc, $C0C0                                  ; $7EFF: $01 $C0 $C0
    ldh [$E0], a                                  ; $7F02: $E0 $E0
    ld [bc], a                                    ; $7F04: $02
    ld [bc], a                                    ; $7F05: $02
    ld hl, sp-$08                                 ; $7F06: $F8 $F8
    rst $38                                       ; $7F08: $FF
    rst $38                                       ; $7F09: $FF
    ld hl, sp-$08                                 ; $7F0A: $F8 $F8
    db $E4                                        ; $7F0C: $E4
    db $E4                                        ; $7F0D: $E4
    pop af                                        ; $7F0E: $F1
    pop af                                        ; $7F0F: $F1
    rst $38                                       ; $7F10: $FF
    rst $38                                       ; $7F11: $FF
    ld hl, sp-$08                                 ; $7F12: $F8 $F8
    cp $FE                                        ; $7F14: $FE $FE
    db $FC                                        ; $7F16: $FC
    db $FC                                        ; $7F17: $FC
    ldh a, [$F0]                                  ; $7F18: $F0 $F0
    ldh [$E0], a                                  ; $7F1A: $E0 $E0
    db $FC                                        ; $7F1C: $FC
    db $FC                                        ; $7F1D: $FC
    cp $FE                                        ; $7F1E: $FE $FE
    ei                                            ; $7F20: $FB
    adc a                                         ; $7F21: $8F
    ld a, h                                       ; $7F22: $7C
    rr [hl]                                       ; $7F23: $CB $1E
    db $FD                                        ; $7F25: $FD
    rrca                                          ; $7F26: $0F
    di                                            ; $7F27: $F3
    ld h, e                                       ; $7F28: $63
    cp l                                          ; $7F29: $BD
    add c                                         ; $7F2A: $81
    rst $38                                       ; $7F2B: $FF
    ld bc, $84FE                                  ; $7F2C: $01 $FE $84
    db $FD                                        ; $7F2F: $FD
    rst $28                                       ; $7F30: $EF
    call $D9DF                                    ; $7F31: $CD $DF $D9
    sbc $50                                       ; $7F34: $DE $50
    call c, $E073                                 ; $7F36: $DC $73 $E0
    xor e                                         ; $7F39: $AB
    adc h                                         ; $7F3A: $8C
    rst $18                                       ; $7F3B: $DF
    halt                                          ; $7F3C: $76
    adc a                                         ; $7F3D: $8F
    ei                                            ; $7F3E: $FB
    rrca                                          ; $7F3F: $0F
    rst $28                                       ; $7F40: $EF
    ldh a, [$F7]                                  ; $7F41: $F0 $F7
    ld hl, sp+$31                                 ; $7F43: $F8 $31
    ld a, h                                       ; $7F45: $7C
    jr nz, jr_055_7EE7                            ; $7F46: $20 $9F

    and b                                         ; $7F48: $A0
    rra                                           ; $7F49: $1F
    jr nz, @+$81                                  ; $7F4A: $20 $7F

    ld [hl], e                                    ; $7F4C: $73
    rst $28                                       ; $7F4D: $EF
    rst $08                                       ; $7F4E: $CF
    and $FF                                       ; $7F4F: $E6 $FF
    ld h, c                                       ; $7F51: $61
    rst $38                                       ; $7F52: $FF
    ld b, c                                       ; $7F53: $41
    cp [hl]                                       ; $7F54: $BE
    ld b, c                                       ; $7F55: $41
    ld a, a                                       ; $7F56: $7F
    ld c, h                                       ; $7F57: $4C
    ld a, a                                       ; $7F58: $7F
    add d                                         ; $7F59: $82
    rst $38                                       ; $7F5A: $FF
    ret nz                                        ; $7F5B: $C0

    rst $38                                       ; $7F5C: $FF
    add c                                         ; $7F5D: $81
    sbc [hl]                                      ; $7F5E: $9E
    ld b, b                                       ; $7F5F: $40
    nop                                           ; $7F60: $00
    nop                                           ; $7F61: $00
    nop                                           ; $7F62: $00
    nop                                           ; $7F63: $00
    nop                                           ; $7F64: $00
    nop                                           ; $7F65: $00
    db $10                                        ; $7F66: $10
    db $10                                        ; $7F67: $10
    ld b, h                                       ; $7F68: $44
    ld b, h                                       ; $7F69: $44
    ld d, b                                       ; $7F6A: $50
    ld d, b                                       ; $7F6B: $50
    push de                                       ; $7F6C: $D5
    push de                                       ; $7F6D: $D5
    rst $18                                       ; $7F6E: $DF
    rst $18                                       ; $7F6F: $DF
    nop                                           ; $7F70: $00
    nop                                           ; $7F71: $00
    inc b                                         ; $7F72: $04
    inc b                                         ; $7F73: $04
    inc b                                         ; $7F74: $04
    inc b                                         ; $7F75: $04
    sub b                                         ; $7F76: $90
    sub b                                         ; $7F77: $90
    add h                                         ; $7F78: $84
    add h                                         ; $7F79: $84
    inc d                                         ; $7F7A: $14
    inc d                                         ; $7F7B: $14
    ld e, [hl]                                    ; $7F7C: $5E
    ld e, [hl]                                    ; $7F7D: $5E
    ld a, [hl]                                    ; $7F7E: $7E
    ld a, [hl]                                    ; $7F7F: $7E
    nop                                           ; $7F80: $00
    nop                                           ; $7F81: $00
    nop                                           ; $7F82: $00
    nop                                           ; $7F83: $00
    dec bc                                        ; $7F84: $0B
    nop                                           ; $7F85: $00
    stop                                          ; $7F86: $10 $00
    db $10                                        ; $7F88: $10
    ld [$1C23], sp                                ; $7F89: $08 $23 $1C
    jr nz, jr_055_7FAD                            ; $7F8C: $20 $1F

    jr nz, jr_055_7FAF                            ; $7F8E: $20 $1F

    ld hl, $42E1                                  ; $7F90: $21 $E1 $42
    jp $C342                                      ; $7F93: $C3 $42 $C3


    ld b, l                                       ; $7F96: $45
    rst $00                                       ; $7F97: $C7
    add l                                         ; $7F98: $85
    add a                                         ; $7F99: $87
    set 1, [hl]                                   ; $7F9A: $CB $CE
    di                                            ; $7F9C: $F3
    cp $77                                        ; $7F9D: $FE $77
    db $FC                                        ; $7F9F: $FC
    nop                                           ; $7FA0: $00
    nop                                           ; $7FA1: $00
    nop                                           ; $7FA2: $00
    nop                                           ; $7FA3: $00

Jump_055_7FA4:
    nop                                           ; $7FA4: $00
    nop                                           ; $7FA5: $00
    ld bc, $1101                                  ; $7FA6: $01 $01 $11
    ld de, $3030                                  ; $7FA9: $11 $30 $30
    ld [hl+], a                                   ; $7FAC: $22

jr_055_7FAD:
    ld [hl+], a                                   ; $7FAD: $22
    ld l, [hl]                                    ; $7FAE: $6E

jr_055_7FAF:
    ld l, [hl]                                    ; $7FAF: $6E
    nop                                           ; $7FB0: $00
    nop                                           ; $7FB1: $00
    nop                                           ; $7FB2: $00
    nop                                           ; $7FB3: $00
    ld de, $0011                                  ; $7FB4: $11 $11 $00
    nop                                           ; $7FB7: $00
    ld [hl+], a                                   ; $7FB8: $22
    ld [hl+], a                                   ; $7FB9: $22
    ld a, [bc]                                    ; $7FBA: $0A
    ld a, [bc]                                    ; $7FBB: $0A
    xor e                                         ; $7FBC: $AB
    xor e                                         ; $7FBD: $AB
    ei                                            ; $7FBE: $FB
    ei                                            ; $7FBF: $FB
    rst $30                                       ; $7FC0: $F7
    or b                                          ; $7FC1: $B0
    ld a, [$7A99]                                 ; $7FC2: $FA $99 $7A
    dec bc                                        ; $7FC5: $0B
    ld a, [hl-]                                   ; $7FC6: $3A
    rst $08                                       ; $7FC7: $CF
    ld b, $D5                                     ; $7FC8: $06 $D5
    ld sp, $6EFB                                  ; $7FCA: $31 $FB $6E
    pop af                                        ; $7FCD: $F1
    rst $18                                       ; $7FCE: $DF
    ldh a, [rIF]                                  ; $7FCF: $F0 $0F
    pop hl                                        ; $7FD1: $E1
    inc bc                                        ; $7FD2: $03

jr_055_7FD3:
    ld a, [$FC0F]                                 ; $7FD3: $FA $0F $FC
    rra                                           ; $7FD6: $1F
    ldh a, [$7F]                                  ; $7FD7: $F0 $7F
    ret nz                                        ; $7FD9: $C0

    rst $38                                       ; $7FDA: $FF
    nop                                           ; $7FDB: $00
    rst $38                                       ; $7FDC: $FF
    nop                                           ; $7FDD: $00
    rst $38                                       ; $7FDE: $FF
    nop                                           ; $7FDF: $00
    call nz, $38C4                                ; $7FE0: $C4 $C4 $38
    jr c, jr_055_7FD3                             ; $7FE3: $38 $EE

    xor $F0                                       ; $7FE5: $EE $F0
    ldh a, [$E3]                                  ; $7FE7: $F0 $E3
    db $E3                                        ; $7FE9: $E3
    cp $FE                                        ; $7FEA: $FE $FE
    db $FC                                        ; $7FEC: $FC
    db $FC                                        ; $7FED: $FC
    rst $38                                       ; $7FEE: $FF
    rst $38                                       ; $7FEF: $FF
    nop                                           ; $7FF0: $00
    nop                                           ; $7FF1: $00
    nop                                           ; $7FF2: $00
    nop                                           ; $7FF3: $00
    nop                                           ; $7FF4: $00
    nop                                           ; $7FF5: $00
    ld b, b                                       ; $7FF6: $40
    ld b, b                                       ; $7FF7: $40
    nop                                           ; $7FF8: $00
    nop                                           ; $7FF9: $00
    ld [$6008], sp                                ; $7FFA: $08 $08 $60
    ld h, b                                       ; $7FFD: $60
    db $C2                                        ; $7FFE: $C2
    db $C2                                        ; $7FFF: $C2
