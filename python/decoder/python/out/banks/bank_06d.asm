SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    rst $38                                       ; $4000: $FF
    nop                                           ; $4001: $00
    rst $38                                       ; $4002: $FF
    nop                                           ; $4003: $00
    rst $38                                       ; $4004: $FF
    nop                                           ; $4005: $00
    rst $38                                       ; $4006: $FF
    nop                                           ; $4007: $00
    rst $38                                       ; $4008: $FF
    nop                                           ; $4009: $00
    cp $00                                        ; $400A: $FE $00
    ld hl, sp+$03                                 ; $400C: $F8 $03
    pop hl                                        ; $400E: $E1
    inc c                                         ; $400F: $0C
    rst $38                                       ; $4010: $FF
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $FF
    nop                                           ; $4013: $00
    rst $38                                       ; $4014: $FF
    nop                                           ; $4015: $00
    rst $38                                       ; $4016: $FF
    nop                                           ; $4017: $00
    rst $38                                       ; $4018: $FF
    nop                                           ; $4019: $00
    inc bc                                        ; $401A: $03
    ld hl, sp+$47                                 ; $401B: $F8 $47
    db $10                                        ; $401D: $10
    adc b                                         ; $401E: $88
    inc h                                         ; $401F: $24
    ld hl, sp+$03                                 ; $4020: $F8 $03
    ldh a, [rTIMA]                                ; $4022: $F0 $05
    push af                                       ; $4024: $F5
    inc b                                         ; $4025: $04
    push hl                                       ; $4026: $E5
    ld b, $C2                                     ; $4027: $06 $C2
    rra                                           ; $4029: $1F
    adc c                                         ; $402A: $89
    cpl                                           ; $402B: $2F
    sub c                                         ; $402C: $91
    dec h                                         ; $402D: $25
    ret nz                                        ; $402E: $C0

    add hl, de                                    ; $402F: $19
    call nz, $9038                                ; $4030: $C4 $38 $90
    ld h, e                                       ; $4033: $63
    daa                                           ; $4034: $27
    rst $08                                       ; $4035: $CF
    ld c, a                                       ; $4036: $4F
    sbc a                                         ; $4037: $9F
    rst $18                                       ; $4038: $DF
    ccf                                           ; $4039: $3F
    cp a                                          ; $403A: $BF
    ccf                                           ; $403B: $3F
    cp a                                          ; $403C: $BF
    ld a, a                                       ; $403D: $7F
    rst $38                                       ; $403E: $FF
    ld a, a                                       ; $403F: $7F
    rst $38                                       ; $4040: $FF
    ld a, a                                       ; $4041: $7F
    rst $38                                       ; $4042: $FF
    ld a, a                                       ; $4043: $7F
    rst $38                                       ; $4044: $FF
    ld a, a                                       ; $4045: $7F
    rst $38                                       ; $4046: $FF
    ld a, a                                       ; $4047: $7F
    ldh a, [$7F]                                  ; $4048: $F0 $7F
    ret nz                                        ; $404A: $C0

    ld [hl], b                                    ; $404B: $70
    add b                                         ; $404C: $80
    ld b, b                                       ; $404D: $40
    add b                                         ; $404E: $80
    nop                                           ; $404F: $00
    ld bc, $03FF                                  ; $4050: $01 $FF $03
    ld a, a                                       ; $4053: $7F
    rlca                                          ; $4054: $07
    ccf                                           ; $4055: $3F
    rrca                                          ; $4056: $0F
    rra                                           ; $4057: $1F
    rrca                                          ; $4058: $0F
    rlca                                          ; $4059: $07
    rra                                           ; $405A: $1F
    inc bc                                        ; $405B: $03
    ccf                                           ; $405C: $3F
    ld bc, $007F                                  ; $405D: $01 $7F $00
    ld bc, $03FF                                  ; $4060: $01 $FF $03
    ld a, a                                       ; $4063: $7F
    rlca                                          ; $4064: $07
    ccf                                           ; $4065: $3F
    rrca                                          ; $4066: $0F
    rra                                           ; $4067: $1F
    rrca                                          ; $4068: $0F
    rlca                                          ; $4069: $07
    rra                                           ; $406A: $1F
    inc bc                                        ; $406B: $03
    ccf                                           ; $406C: $3F
    ld bc, $007F                                  ; $406D: $01 $7F $00
    ld bc, $03FF                                  ; $4070: $01 $FF $03
    ld a, a                                       ; $4073: $7F
    rlca                                          ; $4074: $07
    ccf                                           ; $4075: $3F
    rrca                                          ; $4076: $0F
    rra                                           ; $4077: $1F
    rrca                                          ; $4078: $0F
    rlca                                          ; $4079: $07
    rra                                           ; $407A: $1F
    inc bc                                        ; $407B: $03
    ccf                                           ; $407C: $3F
    ld bc, $007F                                  ; $407D: $01 $7F $00
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
    ld bc, $03FF                                  ; $4090: $01 $FF $03
    ld a, a                                       ; $4093: $7F
    rlca                                          ; $4094: $07
    ccf                                           ; $4095: $3F
    rrca                                          ; $4096: $0F
    rra                                           ; $4097: $1F
    rrca                                          ; $4098: $0F
    rlca                                          ; $4099: $07
    rra                                           ; $409A: $1F
    inc bc                                        ; $409B: $03
    ccf                                           ; $409C: $3F
    ld bc, $007F                                  ; $409D: $01 $7F $00
    ld bc, $03FF                                  ; $40A0: $01 $FF $03
    ld a, a                                       ; $40A3: $7F
    rlca                                          ; $40A4: $07
    ccf                                           ; $40A5: $3F
    rrca                                          ; $40A6: $0F
    rra                                           ; $40A7: $1F
    rrca                                          ; $40A8: $0F
    rlca                                          ; $40A9: $07
    rra                                           ; $40AA: $1F
    inc bc                                        ; $40AB: $03
    ccf                                           ; $40AC: $3F
    ld bc, $007F                                  ; $40AD: $01 $7F $00
    ld bc, $03FF                                  ; $40B0: $01 $FF $03
    ld a, a                                       ; $40B3: $7F
    rlca                                          ; $40B4: $07
    ccf                                           ; $40B5: $3F
    rrca                                          ; $40B6: $0F
    rra                                           ; $40B7: $1F
    rrca                                          ; $40B8: $0F
    rlca                                          ; $40B9: $07
    rra                                           ; $40BA: $1F
    inc bc                                        ; $40BB: $03
    ccf                                           ; $40BC: $3F
    ld bc, $007F                                  ; $40BD: $01 $7F $00
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
    jp $C618                                      ; $4100: $C3 $18 $C6


    ld sp, $238C                                  ; $4103: $31 $8C $23
    sbc b                                         ; $4106: $98
    ld h, [hl]                                    ; $4107: $66
    sbc c                                         ; $4108: $99
    ld h, h                                       ; $4109: $64
    sbc e                                         ; $410A: $9B
    ld h, h                                       ; $410B: $64
    call $E732                                    ; $410C: $CD $32 $E7
    db $10                                        ; $410F: $10
    sub b                                         ; $4110: $90
    ld c, e                                       ; $4111: $4B
    inc hl                                        ; $4112: $23
    rst $10                                       ; $4113: $D7
    rlca                                          ; $4114: $07
    ld c, a                                       ; $4115: $4F
    add a                                         ; $4116: $87
    cpl                                           ; $4117: $2F
    rst $00                                       ; $4118: $C7
    rrca                                          ; $4119: $0F
    db $E3                                        ; $411A: $E3
    rla                                           ; $411B: $17
    ldh a, [$0B]                                  ; $411C: $F0 $0B
    ld [hl], c                                    ; $411E: $71
    ld c, $E0                                     ; $411F: $0E $E0
    inc bc                                        ; $4121: $03
    ldh a, [rTIMA]                                ; $4122: $F0 $05
    pop af                                        ; $4124: $F1
    inc b                                         ; $4125: $04
    ldh a, [rTMA]                                 ; $4126: $F0 $06
    ld hl, sp+$03                                 ; $4128: $F8 $03
    db $FC                                        ; $412A: $FC
    ld bc, $013E                                  ; $412B: $01 $3E $01
    ld b, $01                                     ; $412E: $06 $01
    rst $38                                       ; $4130: $FF
    ld a, a                                       ; $4131: $7F
    rst $38                                       ; $4132: $FF
    ld a, a                                       ; $4133: $7F
    rst $38                                       ; $4134: $FF
    ld a, a                                       ; $4135: $7F
    rst $38                                       ; $4136: $FF
    ld a, a                                       ; $4137: $7F
    rst $38                                       ; $4138: $FF
    ld a, a                                       ; $4139: $7F
    rst $38                                       ; $413A: $FF
    ld a, a                                       ; $413B: $7F
    rst $38                                       ; $413C: $FF
    ld a, a                                       ; $413D: $7F
    rst $38                                       ; $413E: $FF
    ld a, a                                       ; $413F: $7F
    ld bc, $03FF                                  ; $4140: $01 $FF $03
    ld a, a                                       ; $4143: $7F
    rlca                                          ; $4144: $07
    ccf                                           ; $4145: $3F
    rrca                                          ; $4146: $0F
    rra                                           ; $4147: $1F
    rrca                                          ; $4148: $0F
    rlca                                          ; $4149: $07
    rra                                           ; $414A: $1F
    inc bc                                        ; $414B: $03
    ccf                                           ; $414C: $3F
    ld bc, $007F                                  ; $414D: $01 $7F $00
    ld bc, $03FF                                  ; $4150: $01 $FF $03
    ld a, a                                       ; $4153: $7F
    rlca                                          ; $4154: $07
    ccf                                           ; $4155: $3F
    rrca                                          ; $4156: $0F
    rra                                           ; $4157: $1F
    rrca                                          ; $4158: $0F
    rlca                                          ; $4159: $07
    rra                                           ; $415A: $1F
    inc bc                                        ; $415B: $03
    ccf                                           ; $415C: $3F
    ld bc, $007F                                  ; $415D: $01 $7F $00
    ld bc, $03FF                                  ; $4160: $01 $FF $03
    ld a, a                                       ; $4163: $7F
    rlca                                          ; $4164: $07
    ccf                                           ; $4165: $3F
    rrca                                          ; $4166: $0F
    rra                                           ; $4167: $1F
    rrca                                          ; $4168: $0F
    rlca                                          ; $4169: $07
    rra                                           ; $416A: $1F
    inc bc                                        ; $416B: $03
    ccf                                           ; $416C: $3F
    ld bc, $007F                                  ; $416D: $01 $7F $00
    ld bc, $03FF                                  ; $4170: $01 $FF $03
    ld a, a                                       ; $4173: $7F
    rlca                                          ; $4174: $07
    ccf                                           ; $4175: $3F
    rrca                                          ; $4176: $0F
    rra                                           ; $4177: $1F
    rrca                                          ; $4178: $0F
    rlca                                          ; $4179: $07
    rra                                           ; $417A: $1F
    inc bc                                        ; $417B: $03
    ccf                                           ; $417C: $3F
    ld bc, $007F                                  ; $417D: $01 $7F $00
    ld bc, $03FF                                  ; $4180: $01 $FF $03
    ld a, a                                       ; $4183: $7F
    rlca                                          ; $4184: $07
    ccf                                           ; $4185: $3F
    rrca                                          ; $4186: $0F
    rra                                           ; $4187: $1F
    rrca                                          ; $4188: $0F
    rlca                                          ; $4189: $07
    rra                                           ; $418A: $1F
    inc bc                                        ; $418B: $03
    ccf                                           ; $418C: $3F
    ld bc, $007F                                  ; $418D: $01 $7F $00
    ld bc, $03FF                                  ; $4190: $01 $FF $03
    ld a, a                                       ; $4193: $7F
    rlca                                          ; $4194: $07
    ccf                                           ; $4195: $3F
    rrca                                          ; $4196: $0F
    rra                                           ; $4197: $1F
    rrca                                          ; $4198: $0F
    rlca                                          ; $4199: $07
    rra                                           ; $419A: $1F
    inc bc                                        ; $419B: $03
    ccf                                           ; $419C: $3F
    ld bc, $007F                                  ; $419D: $01 $7F $00
    ld bc, $03FF                                  ; $41A0: $01 $FF $03
    ld a, a                                       ; $41A3: $7F
    rlca                                          ; $41A4: $07
    ccf                                           ; $41A5: $3F
    rrca                                          ; $41A6: $0F
    rra                                           ; $41A7: $1F
    rrca                                          ; $41A8: $0F
    rlca                                          ; $41A9: $07
    rra                                           ; $41AA: $1F
    inc bc                                        ; $41AB: $03
    ccf                                           ; $41AC: $3F
    ld bc, $007F                                  ; $41AD: $01 $7F $00
    ld bc, $03FF                                  ; $41B0: $01 $FF $03
    ld a, a                                       ; $41B3: $7F
    rlca                                          ; $41B4: $07
    ccf                                           ; $41B5: $3F
    rrca                                          ; $41B6: $0F
    rra                                           ; $41B7: $1F
    rrca                                          ; $41B8: $0F
    rlca                                          ; $41B9: $07
    rra                                           ; $41BA: $1F
    inc bc                                        ; $41BB: $03
    ccf                                           ; $41BC: $3F
    ld bc, $007F                                  ; $41BD: $01 $7F $00
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
    rrca                                          ; $4200: $0F
    nop                                           ; $4201: $00
    rrca                                          ; $4202: $0F
    nop                                           ; $4203: $00
    rrca                                          ; $4204: $0F
    nop                                           ; $4205: $00
    rrca                                          ; $4206: $0F
    nop                                           ; $4207: $00
    rrca                                          ; $4208: $0F
    nop                                           ; $4209: $00
    rrca                                          ; $420A: $0F
    nop                                           ; $420B: $00
    rrca                                          ; $420C: $0F
    nop                                           ; $420D: $00
    rrca                                          ; $420E: $0F
    nop                                           ; $420F: $00
    rst $38                                       ; $4210: $FF
    nop                                           ; $4211: $00
    rst $38                                       ; $4212: $FF
    nop                                           ; $4213: $00
    rst $38                                       ; $4214: $FF
    nop                                           ; $4215: $00
    rst $38                                       ; $4216: $FF
    nop                                           ; $4217: $00
    rst $38                                       ; $4218: $FF
    nop                                           ; $4219: $00
    ldh a, [rP1]                                  ; $421A: $F0 $00
    ret nz                                        ; $421C: $C0

    nop                                           ; $421D: $00
    add b                                         ; $421E: $80
    nop                                           ; $421F: $00
    rst $38                                       ; $4220: $FF
    nop                                           ; $4221: $00
    ld a, a                                       ; $4222: $7F
    nop                                           ; $4223: $00
    ccf                                           ; $4224: $3F
    nop                                           ; $4225: $00
    ccf                                           ; $4226: $3F
    nop                                           ; $4227: $00
    rra                                           ; $4228: $1F
    nop                                           ; $4229: $00
    rra                                           ; $422A: $1F
    nop                                           ; $422B: $00
    rrca                                          ; $422C: $0F
    nop                                           ; $422D: $00
    rrca                                          ; $422E: $0F
    nop                                           ; $422F: $00
    rst $38                                       ; $4230: $FF
    ldh a, [$7F]                                  ; $4231: $F0 $7F
    ld a, b                                       ; $4233: $78
    rra                                           ; $4234: $1F
    rra                                           ; $4235: $1F
    ld b, e                                       ; $4236: $43
    ld b, e                                       ; $4237: $43
    jr nc, jr_06D_426A                            ; $4238: $30 $30

    ld a, [de]                                    ; $423A: $1A
    ld a, [de]                                    ; $423B: $1A
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    rst $38                                       ; $4240: $FF
    ld bc, $07FF                                  ; $4241: $01 $FF $07
    cp $3E                                        ; $4244: $FE $3E
    ldh a, [$F0]                                  ; $4246: $F0 $F0
    ld [bc], a                                    ; $4248: $02
    ld a, [bc]                                    ; $4249: $0A
    inc b                                         ; $424A: $04
    db $F4                                        ; $424B: $F4
    nop                                           ; $424C: $00
    nop                                           ; $424D: $00
    nop                                           ; $424E: $00
    nop                                           ; $424F: $00
    rst $38                                       ; $4250: $FF
    add b                                         ; $4251: $80
    rst $38                                       ; $4252: $FF
    ret nz                                        ; $4253: $C0

    rst $38                                       ; $4254: $FF
    ret nz                                        ; $4255: $C0

    ld a, a                                       ; $4256: $7F
    ld h, b                                       ; $4257: $60
    ld a, a                                       ; $4258: $7F
    ld [hl], b                                    ; $4259: $70
    cp a                                          ; $425A: $BF
    cp h                                          ; $425B: $BC
    rrca                                          ; $425C: $0F
    ld c, [hl]                                    ; $425D: $4E
    rlca                                          ; $425E: $07
    ld h, $01                                     ; $425F: $26 $01
    rst $38                                       ; $4261: $FF
    inc bc                                        ; $4262: $03
    ld a, a                                       ; $4263: $7F
    rlca                                          ; $4264: $07
    ccf                                           ; $4265: $3F
    rrca                                          ; $4266: $0F
    rra                                           ; $4267: $1F
    rrca                                          ; $4268: $0F
    rlca                                          ; $4269: $07

jr_06D_426A:
    rra                                           ; $426A: $1F
    inc bc                                        ; $426B: $03
    ccf                                           ; $426C: $3F
    ld bc, $007F                                  ; $426D: $01 $7F $00
    ld bc, $03FF                                  ; $4270: $01 $FF $03
    ld a, a                                       ; $4273: $7F
    rlca                                          ; $4274: $07
    ccf                                           ; $4275: $3F
    rrca                                          ; $4276: $0F
    rra                                           ; $4277: $1F
    rrca                                          ; $4278: $0F
    rlca                                          ; $4279: $07
    rra                                           ; $427A: $1F
    inc bc                                        ; $427B: $03
    ccf                                           ; $427C: $3F
    ld bc, $007F                                  ; $427D: $01 $7F $00
    ld bc, $03FF                                  ; $4280: $01 $FF $03
    ld a, a                                       ; $4283: $7F
    rlca                                          ; $4284: $07
    ccf                                           ; $4285: $3F
    rrca                                          ; $4286: $0F
    rra                                           ; $4287: $1F
    rrca                                          ; $4288: $0F
    rlca                                          ; $4289: $07
    rra                                           ; $428A: $1F
    inc bc                                        ; $428B: $03
    ccf                                           ; $428C: $3F
    ld bc, $007F                                  ; $428D: $01 $7F $00
    ld bc, $03FF                                  ; $4290: $01 $FF $03
    ld a, a                                       ; $4293: $7F
    rlca                                          ; $4294: $07
    ccf                                           ; $4295: $3F
    rrca                                          ; $4296: $0F
    rra                                           ; $4297: $1F
    rrca                                          ; $4298: $0F
    rlca                                          ; $4299: $07
    rra                                           ; $429A: $1F
    inc bc                                        ; $429B: $03
    ccf                                           ; $429C: $3F
    ld bc, $007F                                  ; $429D: $01 $7F $00
    ld bc, $03FF                                  ; $42A0: $01 $FF $03
    ld a, a                                       ; $42A3: $7F
    rlca                                          ; $42A4: $07
    ccf                                           ; $42A5: $3F
    rrca                                          ; $42A6: $0F
    rra                                           ; $42A7: $1F
    rrca                                          ; $42A8: $0F
    rlca                                          ; $42A9: $07
    rra                                           ; $42AA: $1F
    inc bc                                        ; $42AB: $03
    ccf                                           ; $42AC: $3F
    ld bc, $007F                                  ; $42AD: $01 $7F $00
    ld bc, $03FF                                  ; $42B0: $01 $FF $03
    ld a, a                                       ; $42B3: $7F
    rlca                                          ; $42B4: $07
    ccf                                           ; $42B5: $3F
    rrca                                          ; $42B6: $0F
    rra                                           ; $42B7: $1F
    rrca                                          ; $42B8: $0F
    rlca                                          ; $42B9: $07
    rra                                           ; $42BA: $1F
    inc bc                                        ; $42BB: $03
    ccf                                           ; $42BC: $3F
    ld bc, $007F                                  ; $42BD: $01 $7F $00
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

Jump_06D_42E5:
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
    rlca                                          ; $4300: $07
    nop                                           ; $4301: $00
    rlca                                          ; $4302: $07
    nop                                           ; $4303: $00
    inc bc                                        ; $4304: $03
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    rst $38                                       ; $4310: $FF
    nop                                           ; $4311: $00
    rst $38                                       ; $4312: $FF
    nop                                           ; $4313: $00
    rst $38                                       ; $4314: $FF
    nop                                           ; $4315: $00
    rst $38                                       ; $4316: $FF
    nop                                           ; $4317: $00
    rrca                                          ; $4318: $0F
    nop                                           ; $4319: $00
    inc bc                                        ; $431A: $03
    nop                                           ; $431B: $00
    ld bc, $0000                                  ; $431C: $01 $00 $00
    nop                                           ; $431F: $00
    rrca                                          ; $4320: $0F
    nop                                           ; $4321: $00
    rlca                                          ; $4322: $07
    nop                                           ; $4323: $00
    rlca                                          ; $4324: $07
    nop                                           ; $4325: $00
    inc bc                                        ; $4326: $03
    nop                                           ; $4327: $00
    ld bc, $0000                                  ; $4328: $01 $00 $00
    nop                                           ; $432B: $00
    nop                                           ; $432C: $00
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    rst $38                                       ; $4330: $FF
    nop                                           ; $4331: $00
    rst $38                                       ; $4332: $FF
    nop                                           ; $4333: $00
    rst $38                                       ; $4334: $FF
    nop                                           ; $4335: $00
    rst $38                                       ; $4336: $FF
    nop                                           ; $4337: $00
    rst $38                                       ; $4338: $FF
    nop                                           ; $4339: $00
    rst $38                                       ; $433A: $FF
    nop                                           ; $433B: $00
    ccf                                           ; $433C: $3F
    nop                                           ; $433D: $00
    rlca                                          ; $433E: $07
    nop                                           ; $433F: $00
    rst $38                                       ; $4340: $FF
    nop                                           ; $4341: $00
    ccf                                           ; $4342: $3F
    nop                                           ; $4343: $00
    rrca                                          ; $4344: $0F
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    inc de                                        ; $4350: $13
    ld [de], a                                    ; $4351: $12
    dec de                                        ; $4352: $1B
    dec de                                        ; $4353: $1B
    dec bc                                        ; $4354: $0B
    dec bc                                        ; $4355: $0B
    dec b                                         ; $4356: $05
    dec b                                         ; $4357: $05
    nop                                           ; $4358: $00
    inc b                                         ; $4359: $04
    nop                                           ; $435A: $00
    inc bc                                        ; $435B: $03
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    rst $38                                       ; $4360: $FF
    nop                                           ; $4361: $00
    rst $38                                       ; $4362: $FF
    nop                                           ; $4363: $00
    rst $38                                       ; $4364: $FF
    ret nz                                        ; $4365: $C0

    rst $38                                       ; $4366: $FF
    ldh [rIE], a                                  ; $4367: $E0 $FF
    db $FC                                        ; $4369: $FC
    ccf                                           ; $436A: $3F
    ld a, $07                                     ; $436B: $3E $07
    rst $00                                       ; $436D: $C7
    add hl, de                                    ; $436E: $19
    add hl, de                                    ; $436F: $19
    ld bc, $03FF                                  ; $4370: $01 $FF $03
    ld a, a                                       ; $4373: $7F
    rlca                                          ; $4374: $07
    ccf                                           ; $4375: $3F
    rrca                                          ; $4376: $0F
    rra                                           ; $4377: $1F
    rrca                                          ; $4378: $0F
    rlca                                          ; $4379: $07
    rra                                           ; $437A: $1F
    inc bc                                        ; $437B: $03
    ccf                                           ; $437C: $3F
    ld bc, $007F                                  ; $437D: $01 $7F $00
    ld bc, $03FF                                  ; $4380: $01 $FF $03
    ld a, a                                       ; $4383: $7F
    rlca                                          ; $4384: $07
    ccf                                           ; $4385: $3F
    rrca                                          ; $4386: $0F
    rra                                           ; $4387: $1F
    rrca                                          ; $4388: $0F
    rlca                                          ; $4389: $07
    rra                                           ; $438A: $1F
    inc bc                                        ; $438B: $03
    ccf                                           ; $438C: $3F
    ld bc, $007F                                  ; $438D: $01 $7F $00
    ld bc, $03FF                                  ; $4390: $01 $FF $03
    ld a, a                                       ; $4393: $7F
    rlca                                          ; $4394: $07
    ccf                                           ; $4395: $3F
    rrca                                          ; $4396: $0F
    rra                                           ; $4397: $1F
    rrca                                          ; $4398: $0F
    rlca                                          ; $4399: $07
    rra                                           ; $439A: $1F
    inc bc                                        ; $439B: $03
    ccf                                           ; $439C: $3F
    ld bc, $007F                                  ; $439D: $01 $7F $00
    ld bc, $03FF                                  ; $43A0: $01 $FF $03
    ld a, a                                       ; $43A3: $7F
    rlca                                          ; $43A4: $07
    ccf                                           ; $43A5: $3F
    rrca                                          ; $43A6: $0F
    rra                                           ; $43A7: $1F
    rrca                                          ; $43A8: $0F
    rlca                                          ; $43A9: $07
    rra                                           ; $43AA: $1F
    inc bc                                        ; $43AB: $03
    ccf                                           ; $43AC: $3F
    ld bc, $007F                                  ; $43AD: $01 $7F $00
    ld bc, $03FF                                  ; $43B0: $01 $FF $03
    ld a, a                                       ; $43B3: $7F
    rlca                                          ; $43B4: $07
    ccf                                           ; $43B5: $3F
    rrca                                          ; $43B6: $0F
    rra                                           ; $43B7: $1F
    rrca                                          ; $43B8: $0F
    rlca                                          ; $43B9: $07
    rra                                           ; $43BA: $1F
    inc bc                                        ; $43BB: $03
    ccf                                           ; $43BC: $3F
    ld bc, $007F                                  ; $43BD: $01 $7F $00
    ld bc, $03FF                                  ; $43C0: $01 $FF $03
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
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    rlca                                          ; $4404: $07
    nop                                           ; $4405: $00
    inc e                                         ; $4406: $1C
    nop                                           ; $4407: $00
    ld sp, $2300                                  ; $4408: $31 $00 $23
    nop                                           ; $440B: $00
    ld h, a                                       ; $440C: $67
    nop                                           ; $440D: $00
    ld b, [hl]                                    ; $440E: $46
    nop                                           ; $440F: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    jr nc, jr_06D_4416                            ; $4414: $30 $00

jr_06D_4416:
    ld hl, sp+$00                                 ; $4416: $F8 $00
    ldh a, [rP1]                                  ; $4418: $F0 $00
    add sp, $00                                   ; $441A: $E8 $00
    sbc h                                         ; $441C: $9C
    nop                                           ; $441D: $00
    inc e                                         ; $441E: $1C
    nop                                           ; $441F: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    inc hl                                        ; $4422: $23
    inc e                                         ; $4423: $1C
    ld b, d                                       ; $4424: $42
    add hl, sp                                    ; $4425: $39
    dec d                                         ; $4426: $15
    ld h, e                                       ; $4427: $63
    xor d                                         ; $4428: $AA
    ld b, a                                       ; $4429: $47
    ld b, c                                       ; $442A: $41
    adc [hl]                                      ; $442B: $8E
    inc de                                        ; $442C: $13
    adc h                                         ; $442D: $8C
    add h                                         ; $442E: $84
    add hl, de                                    ; $442F: $19
    ld b, h                                       ; $4430: $44
    jr c, jr_06D_4465                             ; $4431: $38 $32

    db $FC                                        ; $4433: $FC
    ret z                                         ; $4434: $C8

    ldh a, [$A0]                                  ; $4435: $F0 $A0
    ret nz                                        ; $4437: $C0

    ldh [rP1], a                                  ; $4438: $E0 $00
    sub b                                         ; $443A: $90

jr_06D_443B:
    ld h, b                                       ; $443B: $60
    nop                                           ; $443C: $00
    ldh a, [rNR10]                                ; $443D: $F0 $10
    ldh [rSC], a                                  ; $443F: $E0 $02
    ld bc, $0708                                  ; $4441: $01 $08 $07
    ld [bc], a                                    ; $4444: $02
    inc c                                         ; $4445: $0C
    inc d                                         ; $4446: $14
    ld [$030D], sp                                ; $4447: $08 $0D $03
    ld d, $0F                                     ; $444A: $16 $0F
    jr z, jr_06D_446D                             ; $444C: $28 $1F

    ld [bc], a                                    ; $444E: $02
    inc a                                         ; $444F: $3C
    ld l, b                                       ; $4450: $68
    ldh a, [$34]                                  ; $4451: $F0 $34
    ei                                            ; $4453: $FB
    ld c, d                                       ; $4454: $4A
    dec a                                         ; $4455: $3D
    dec h                                         ; $4456: $25
    jr jr_06D_443B                                ; $4457: $18 $E2

    db $FC                                        ; $4459: $FC
    ld bc, $7EFE                                  ; $445A: $01 $FE $7E
    add c                                         ; $445D: $81
    ld l, $1F                                     ; $445E: $2E $1F
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    ld d, b                                       ; $4462: $50
    jr nz, jr_06D_448D                            ; $4463: $20 $28

jr_06D_4465:
    sub b                                         ; $4465: $90
    db $10                                        ; $4466: $10
    add b                                         ; $4467: $80
    adc [hl]                                      ; $4468: $8E
    nop                                           ; $4469: $00
    ld sp, $C00E                                  ; $446A: $31 $0E $C0

jr_06D_446D:
    ccf                                           ; $446D: $3F
    jr c, @+$01                                   ; $446E: $38 $FF

jr_06D_4470:
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    ld [hl], b                                    ; $4476: $70
    nop                                           ; $4477: $00
    adc b                                         ; $4478: $88
    ld [hl], b                                    ; $4479: $70
    inc b                                         ; $447A: $04
    ld hl, sp+$10                                 ; $447B: $F8 $10
    db $EC                                        ; $447D: $EC
    or d                                          ; $447E: $B2
    ld l, h                                       ; $447F: $6C
    inc b                                         ; $4480: $04
    xor b                                         ; $4481: $A8
    inc c                                         ; $4482: $0C
    xor b                                         ; $4483: $A8
    db $FC                                        ; $4484: $FC
    ld a, b                                       ; $4485: $78
    ld c, [hl]                                    ; $4486: $4E
    ld l, b                                       ; $4487: $68
    dec l                                         ; $4488: $2D
    ld l, [hl]                                    ; $4489: $6E
    ld l, h                                       ; $448A: $6C
    dec sp                                        ; $448B: $3B
    dec de                                        ; $448C: $1B

jr_06D_448D:
    dec a                                         ; $448D: $3D
    inc l                                         ; $448E: $2C
    inc e                                         ; $448F: $1C
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    add c                                         ; $449A: $81
    nop                                           ; $449B: $00
    inc [hl]                                      ; $449C: $34
    jp $3C42                                      ; $449D: $C3 $42 $3C


    ld [bc], a                                    ; $44A0: $02
    ld bc, $0304                                  ; $44A1: $01 $04 $03
    dec bc                                        ; $44A4: $0B
    ld b, $32                                     ; $44A5: $06 $32
    inc e                                         ; $44A7: $1C
    ld c, b                                       ; $44A8: $48
    inc [hl]                                      ; $44A9: $34
    jr nc, jr_06D_4470                            ; $44AA: $30 $C4

    add h                                         ; $44AC: $84
    ld b, $01                                     ; $44AD: $06 $01
    inc bc                                        ; $44AF: $03
    add b                                         ; $44B0: $80
    add hl, bc                                    ; $44B1: $09
    ld [$0209], sp                                ; $44B2: $08 $09 $02
    add hl, bc                                    ; $44B5: $09
    ld c, $0B                                     ; $44B6: $0E $0B

jr_06D_44B8:
    ld b, $0E                                     ; $44B8: $06 $0E
    inc c                                         ; $44BA: $0C
    ld c, $18                                     ; $44BB: $0E $18
    inc e                                         ; $44BD: $1C
    jr nc, jr_06D_44B8                            ; $44BE: $30 $F8

    add b                                         ; $44C0: $80
    nop                                           ; $44C1: $00
    nop                                           ; $44C2: $00
    nop                                           ; $44C3: $00
    rra                                           ; $44C4: $1F

Call_06D_44C5:
    nop                                           ; $44C5: $00
    nop                                           ; $44C6: $00
    nop                                           ; $44C7: $00
    ld a, $00                                     ; $44C8: $3E $00
    nop                                           ; $44CA: $00
    nop                                           ; $44CB: $00
    jr jr_06D_44CE                                ; $44CC: $18 $00

jr_06D_44CE:
    nop                                           ; $44CE: $00
    nop                                           ; $44CF: $00
    ld bc, $0000                                  ; $44D0: $01 $00 $00
    nop                                           ; $44D3: $00
    ret nz                                        ; $44D4: $C0

    ld c, $08                                     ; $44D5: $0E $08
    ld c, $08                                     ; $44D7: $0E $08
    ld c, $28                                     ; $44D9: $0E $28
    adc $28                                       ; $44DB: $CE $28
    adc $28                                       ; $44DD: $CE $28
    adc $00                                       ; $44DF: $CE $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00
    nop                                           ; $44E4: $00
    nop                                           ; $44E5: $00
    nop                                           ; $44E6: $00
    nop                                           ; $44E7: $00
    nop                                           ; $44E8: $00
    nop                                           ; $44E9: $00
    nop                                           ; $44EA: $00
    nop                                           ; $44EB: $00
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    nop                                           ; $44F6: $00
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    inc c                                         ; $4500: $0C
    nop                                           ; $4501: $00
    inc c                                         ; $4502: $0C
    nop                                           ; $4503: $00
    ld [$0800], sp                                ; $4504: $08 $00 $08
    nop                                           ; $4507: $00
    inc b                                         ; $4508: $04
    nop                                           ; $4509: $00
    nop                                           ; $450A: $00
    nop                                           ; $450B: $00
    nop                                           ; $450C: $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    inc a                                         ; $4510: $3C
    nop                                           ; $4511: $00
    jr c, jr_06D_4514                             ; $4512: $38 $00

jr_06D_4514:
    ld [hl], b                                    ; $4514: $70
    nop                                           ; $4515: $00
    ld h, b                                       ; $4516: $60
    nop                                           ; $4517: $00
    ld h, b                                       ; $4518: $60
    nop                                           ; $4519: $00
    jr nz, jr_06D_451C                            ; $451A: $20 $00

jr_06D_451C:
    stop                                          ; $451C: $10 $00
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    ld b, $19                                     ; $4520: $06 $19
    ld [$0813], sp                                ; $4522: $08 $13 $08
    inc de                                        ; $4525: $13
    ld [$1013], sp                                ; $4526: $08 $13 $10
    dec bc                                        ; $4529: $0B
    ld b, $01                                     ; $452A: $06 $01
    nop                                           ; $452C: $00
    ld bc, $0000                                  ; $452D: $01 $00 $00
    inc h                                         ; $4530: $24
    ret nz                                        ; $4531: $C0

    inc c                                         ; $4532: $0C
    ret nz                                        ; $4533: $C0

    ld e, b                                       ; $4534: $58
    add b                                         ; $4535: $80
    sub b                                         ; $4536: $90
    nop                                           ; $4537: $00
    stop                                          ; $4538: $10 $00

jr_06D_453A:
    sub b                                         ; $453A: $90
    nop                                           ; $453B: $00
    ld c, b                                       ; $453C: $48
    add b                                         ; $453D: $80
    and b                                         ; $453E: $A0
    ld b, b                                       ; $453F: $40
    ld b, h                                       ; $4540: $44
    jr c, jr_06D_4558                             ; $4541: $38 $15

    ld h, b                                       ; $4543: $60
    jr z, @+$43                                   ; $4544: $28 $41

    ld a, [hl+]                                   ; $4546: $2A
    ld b, c                                       ; $4547: $41
    nop                                           ; $4548: $00
    inc hl                                        ; $4549: $23
    db $10                                        ; $454A: $10
    inc bc                                        ; $454B: $03
    ld bc, $0002                                  ; $454C: $01 $02 $00
    ld [bc], a                                    ; $454F: $02
    cp b                                          ; $4550: $B8
    ld a, a                                       ; $4551: $7F
    ld h, e                                       ; $4552: $63
    db $FC                                        ; $4553: $FC
    inc de                                        ; $4554: $13
    ldh [$2A], a                                  ; $4555: $E0 $2A
    pop bc                                        ; $4557: $C1

jr_06D_4558:
    ld c, d                                       ; $4558: $4A
    add c                                         ; $4559: $81
    sbc b                                         ; $455A: $98
    ld bc, $0110                                  ; $455B: $01 $10 $01
    ld hl, $E100                                  ; $455E: $21 $00 $E1
    ld a, [hl]                                    ; $4561: $7E
    ld b, l                                       ; $4562: $45
    ld hl, sp+$10                                 ; $4563: $F8 $10
    pop hl                                        ; $4565: $E1
    ld [hl+], a                                   ; $4566: $22
    pop bc                                        ; $4567: $C1
    nop                                           ; $4568: $00
    jp $8344                                      ; $4569: $C3 $44 $83


    adc c                                         ; $456C: $89
    ld b, $1C                                     ; $456D: $06 $1C
    nop                                           ; $456F: $00
    ld a, b                                       ; $4570: $78
    and $50                                       ; $4571: $E6 $50
    and $94                                       ; $4573: $E6 $94
    ld [c], a                                     ; $4575: $E2
    jr nz, jr_06D_453A                            ; $4576: $20 $C2

    ld b, h                                       ; $4578: $44
    add d                                         ; $4579: $82
    add b                                         ; $457A: $80
    ld b, $02                                     ; $457B: $06 $02
    inc b                                         ; $457D: $04
    ld [$1400], sp                                ; $457E: $08 $00 $14
    ld c, $0B                                     ; $4581: $0E $0B
    rlca                                          ; $4583: $07
    dec b                                         ; $4584: $05
    inc bc                                        ; $4585: $03
    ld bc, $0000                                  ; $4586: $01 $00 $00
    nop                                           ; $4589: $00
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    nop                                           ; $458C: $00
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    add b                                         ; $4594: $80
    ret nz                                        ; $4595: $C0

    ldh [$F0], a                                  ; $4596: $E0 $F0
    sbc h                                         ; $4598: $9C
    ld a, [hl]                                    ; $4599: $7E
    inc de                                        ; $459A: $13
    rrca                                          ; $459B: $0F
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00

jr_06D_45A0:
    nop                                           ; $45A0: $00
    ld bc, $0000                                  ; $45A1: $01 $00 $00
    ld bc, $0203                                  ; $45A4: $01 $03 $02
    rlca                                          ; $45A7: $07
    dec e                                         ; $45A8: $1D
    ld a, $E4                                     ; $45A9: $3E $E4
    ld hl, sp+$00                                 ; $45AB: $F8 $00
    nop                                           ; $45AD: $00
    nop                                           ; $45AE: $00
    nop                                           ; $45AF: $00
    ld a, b                                       ; $45B0: $78
    ldh a, [$F0]                                  ; $45B1: $F0 $F0
    ldh [$A0], a                                  ; $45B3: $E0 $A0
    ret nz                                        ; $45B5: $C0

    add b                                         ; $45B6: $80
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    ld b, $08                                     ; $45C0: $06 $08
    ld b, $08                                     ; $45C2: $06 $08
    ld b, $08                                     ; $45C4: $06 $08
    ld h, [hl]                                    ; $45C6: $66
    ld [$0866], sp                                ; $45C7: $08 $66 $08
    ld h, [hl]                                    ; $45CA: $66
    ld [$0866], sp                                ; $45CB: $08 $66 $08
    add b                                         ; $45CE: $80
    nop                                           ; $45CF: $00
    jr z, jr_06D_45A0                             ; $45D0: $28 $CE

    xor b                                         ; $45D2: $A8
    adc $A8                                       ; $45D3: $CE $A8
    adc $A8                                       ; $45D5: $CE $A8
    adc $A8                                       ; $45D7: $CE $A8
    adc $28                                       ; $45D9: $CE $28
    adc $20                                       ; $45DB: $CE $20
    adc $01                                       ; $45DD: $CE $01
    nop                                           ; $45DF: $00
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    nop                                           ; $45F2: $00
    nop                                           ; $45F3: $00
    nop                                           ; $45F4: $00
    nop                                           ; $45F5: $00
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    nop                                           ; $45FA: $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    ld a, a                                       ; $4600: $7F
    nop                                           ; $4601: $00
    rla                                           ; $4602: $17
    nop                                           ; $4603: $00
    ld a, a                                       ; $4604: $7F
    nop                                           ; $4605: $00
    ld a, a                                       ; $4606: $7F
    nop                                           ; $4607: $00
    ccf                                           ; $4608: $3F
    nop                                           ; $4609: $00
    ld a, a                                       ; $460A: $7F
    nop                                           ; $460B: $00
    ld a, a                                       ; $460C: $7F
    nop                                           ; $460D: $00
    nop                                           ; $460E: $00
    nop                                           ; $460F: $00
    rst $38                                       ; $4610: $FF
    nop                                           ; $4611: $00
    rst $38                                       ; $4612: $FF
    nop                                           ; $4613: $00
    rst $38                                       ; $4614: $FF
    nop                                           ; $4615: $00
    rst $38                                       ; $4616: $FF
    nop                                           ; $4617: $00
    rst $38                                       ; $4618: $FF
    nop                                           ; $4619: $00
    rst $38                                       ; $461A: $FF
    nop                                           ; $461B: $00
    rst $38                                       ; $461C: $FF
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    cp $00                                        ; $4620: $FE $00
    cp $00                                        ; $4622: $FE $00
    ld hl, sp+$00                                 ; $4624: $F8 $00
    cp $00                                        ; $4626: $FE $00
    cp $00                                        ; $4628: $FE $00
    db $FC                                        ; $462A: $FC
    nop                                           ; $462B: $00
    cp $00                                        ; $462C: $FE $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    db $10                                        ; $4632: $10
    rrca                                          ; $4633: $0F
    jr nz, jr_06D_4655                            ; $4634: $20 $1F

    ld e, a                                       ; $4636: $5F
    ccf                                           ; $4637: $3F
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    db $10                                        ; $463A: $10
    rrca                                          ; $463B: $0F
    jr nz, @+$21                                  ; $463C: $20 $1F

    ld e, a                                       ; $463E: $5F
    ccf                                           ; $463F: $3F
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    rst $38                                       ; $4643: $FF
    nop                                           ; $4644: $00
    rst $38                                       ; $4645: $FF
    rst $38                                       ; $4646: $FF
    rst $38                                       ; $4647: $FF
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    nop                                           ; $464A: $00
    rst $38                                       ; $464B: $FF
    nop                                           ; $464C: $00
    rst $38                                       ; $464D: $FF
    rst $38                                       ; $464E: $FF
    rst $38                                       ; $464F: $FF
    rst $38                                       ; $4650: $FF
    nop                                           ; $4651: $00
    rst $38                                       ; $4652: $FF
    ld [hl], a                                    ; $4653: $77
    rst $38                                       ; $4654: $FF

jr_06D_4655:
    ld [hl], a                                    ; $4655: $77
    rst $38                                       ; $4656: $FF
    ld [hl], a                                    ; $4657: $77
    rst $38                                       ; $4658: $FF
    nop                                           ; $4659: $00
    ld hl, sp+$77                                 ; $465A: $F8 $77
    ld hl, sp+$70                                 ; $465C: $F8 $70
    ld hl, sp+$70                                 ; $465E: $F8 $70
    ld hl, sp+$00                                 ; $4660: $F8 $00
    ld hl, sp+$70                                 ; $4662: $F8 $70
    ld hl, sp+$70                                 ; $4664: $F8 $70
    ld hl, sp+$70                                 ; $4666: $F8 $70
    ld hl, sp+$00                                 ; $4668: $F8 $00
    ld hl, sp+$70                                 ; $466A: $F8 $70
    ld hl, sp+$70                                 ; $466C: $F8 $70
    ld hl, sp+$70                                 ; $466E: $F8 $70
    ld hl, sp+$70                                 ; $4670: $F8 $70
    ld hl, sp+$70                                 ; $4672: $F8 $70
    ld hl, sp+$70                                 ; $4674: $F8 $70
    ld hl, sp+$70                                 ; $4676: $F8 $70
    ld hl, sp+$70                                 ; $4678: $F8 $70
    ld hl, sp+$70                                 ; $467A: $F8 $70
    ld hl, sp+$70                                 ; $467C: $F8 $70
    ld hl, sp+$70                                 ; $467E: $F8 $70
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld e, e                                       ; $4682: $5B
    nop                                           ; $4683: $00
    ld h, d                                       ; $4684: $62
    add hl, de                                    ; $4685: $19
    ld d, h                                       ; $4686: $54
    dec hl                                        ; $4687: $2B
    ld b, b                                       ; $4688: $40
    ccf                                           ; $4689: $3F
    ld b, b                                       ; $468A: $40
    ccf                                           ; $468B: $3F
    ld b, b                                       ; $468C: $40
    ccf                                           ; $468D: $3F
    nop                                           ; $468E: $00
    ld a, a                                       ; $468F: $7F
    ld b, b                                       ; $4690: $40
    ccf                                           ; $4691: $3F
    nop                                           ; $4692: $00
    ld a, a                                       ; $4693: $7F
    nop                                           ; $4694: $00
    ld a, a                                       ; $4695: $7F
    nop                                           ; $4696: $00
    ld a, a                                       ; $4697: $7F
    nop                                           ; $4698: $00
    ld a, a                                       ; $4699: $7F
    nop                                           ; $469A: $00
    ld a, a                                       ; $469B: $7F
    nop                                           ; $469C: $00
    ld a, a                                       ; $469D: $7F
    nop                                           ; $469E: $00
    ld a, a                                       ; $469F: $7F
    nop                                           ; $46A0: $00
    ld a, a                                       ; $46A1: $7F
    ld b, b                                       ; $46A2: $40
    ccf                                           ; $46A3: $3F
    ld b, d                                       ; $46A4: $42
    dec a                                         ; $46A5: $3D
    ld d, b                                       ; $46A6: $50
    dec l                                         ; $46A7: $2D
    ld b, d                                       ; $46A8: $42
    dec a                                         ; $46A9: $3D
    ld d, h                                       ; $46AA: $54
    add hl, hl                                    ; $46AB: $29
    ld l, l                                       ; $46AC: $6D
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    rst $38                                       ; $46B0: $FF
    nop                                           ; $46B1: $00
    add c                                         ; $46B2: $81
    nop                                           ; $46B3: $00
    add c                                         ; $46B4: $81
    nop                                           ; $46B5: $00
    and c                                         ; $46B6: $A1
    ld d, h                                       ; $46B7: $54
    add c                                         ; $46B8: $81
    ld a, [hl]                                    ; $46B9: $7E
    and e                                         ; $46BA: $A3
    ld e, h                                       ; $46BB: $5C
    xor e                                         ; $46BC: $AB
    ld d, h                                       ; $46BD: $54
    ld l, h                                       ; $46BE: $6C
    stop                                          ; $46BF: $10 $00
    nop                                           ; $46C1: $00
    nop                                           ; $46C2: $00
    nop                                           ; $46C3: $00
    nop                                           ; $46C4: $00
    nop                                           ; $46C5: $00
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    nop                                           ; $46C9: $00
    nop                                           ; $46CA: $00
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    nop                                           ; $46D2: $00
    nop                                           ; $46D3: $00
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    nop                                           ; $46E6: $00
    nop                                           ; $46E7: $00
    nop                                           ; $46E8: $00
    nop                                           ; $46E9: $00
    nop                                           ; $46EA: $00
    nop                                           ; $46EB: $00
    nop                                           ; $46EC: $00
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00
    nop                                           ; $46F8: $00
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    ld b, b                                       ; $4700: $40
    ccf                                           ; $4701: $3F
    inc d                                         ; $4702: $14
    inc bc                                        ; $4703: $03
    ld h, b                                       ; $4704: $60
    rra                                           ; $4705: $1F
    ld b, b                                       ; $4706: $40
    ccf                                           ; $4707: $3F
    jr z, jr_06D_4721                             ; $4708: $28 $17

    ld b, b                                       ; $470A: $40
    ccf                                           ; $470B: $3F
    ld a, [hl]                                    ; $470C: $7E
    ld bc, $0000                                  ; $470D: $01 $00 $00
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $FF
    nop                                           ; $4712: $00
    rst $38                                       ; $4713: $FF
    nop                                           ; $4714: $00
    rst $38                                       ; $4715: $FF
    nop                                           ; $4716: $00
    rst $38                                       ; $4717: $FF
    nop                                           ; $4718: $00
    rst $38                                       ; $4719: $FF
    nop                                           ; $471A: $00
    rst $38                                       ; $471B: $FF
    add b                                         ; $471C: $80
    ld a, a                                       ; $471D: $7F
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ld [bc], a                                    ; $4720: $02

jr_06D_4721:
    db $FC                                        ; $4721: $FC
    ld b, $F8                                     ; $4722: $06 $F8
    ld [$02F0], sp                                ; $4724: $08 $F0 $02
    db $FC                                        ; $4727: $FC
    ld a, [bc]                                    ; $4728: $0A
    db $F4                                        ; $4729: $F4
    inc b                                         ; $472A: $04
    ld hl, sp+$7E                                 ; $472B: $F8 $7E
    add b                                         ; $472D: $80
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    db $10                                        ; $4732: $10
    rrca                                          ; $4733: $0F
    jr nz, jr_06D_4755                            ; $4734: $20 $1F

    ld e, a                                       ; $4736: $5F
    ccf                                           ; $4737: $3F
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    rra                                           ; $473A: $1F
    nop                                           ; $473B: $00
    ccf                                           ; $473C: $3F
    nop                                           ; $473D: $00
    ld e, a                                       ; $473E: $5F
    ccf                                           ; $473F: $3F
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    rst $38                                       ; $4743: $FF
    nop                                           ; $4744: $00
    rst $38                                       ; $4745: $FF
    rst $38                                       ; $4746: $FF
    rst $38                                       ; $4747: $FF
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    rst $38                                       ; $474A: $FF
    nop                                           ; $474B: $00
    rst $38                                       ; $474C: $FF
    nop                                           ; $474D: $00
    rst $38                                       ; $474E: $FF
    rst $38                                       ; $474F: $FF
    rst $38                                       ; $4750: $FF
    nop                                           ; $4751: $00
    rst $38                                       ; $4752: $FF
    ld [hl], a                                    ; $4753: $77
    rst $38                                       ; $4754: $FF

jr_06D_4755:
    ld [hl], a                                    ; $4755: $77
    rst $38                                       ; $4756: $FF
    ld [hl], a                                    ; $4757: $77
    rst $38                                       ; $4758: $FF
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    rst $38                                       ; $475B: $FF
    ld [hl], b                                    ; $475C: $70
    nop                                           ; $475D: $00
    ld [hl], b                                    ; $475E: $70
    nop                                           ; $475F: $00
    ld hl, sp+$00                                 ; $4760: $F8 $00
    ld hl, sp+$70                                 ; $4762: $F8 $70
    ld hl, sp+$70                                 ; $4764: $F8 $70
    ld hl, sp+$70                                 ; $4766: $F8 $70
    ld hl, sp+$00                                 ; $4768: $F8 $00
    nop                                           ; $476A: $00
    ld hl, sp+$08                                 ; $476B: $F8 $08
    nop                                           ; $476D: $00
    ld [$F800], sp                                ; $476E: $08 $00 $F8
    ld [hl], b                                    ; $4771: $70
    db $FC                                        ; $4772: $FC
    ld [hl], b                                    ; $4773: $70
    ld a, [$F974]                                 ; $4774: $FA $74 $F9
    halt                                          ; $4777: $76
    ld hl, sp+$77                                 ; $4778: $F8 $77
    ld hl, sp+$70                                 ; $477A: $F8 $70
    cp $71                                        ; $477C: $FE $71
    ld hl, sp+$70                                 ; $477E: $F8 $70
    nop                                           ; $4780: $00
    ld [hl], b                                    ; $4781: $70
    inc b                                         ; $4782: $04
    ld [hl], b                                    ; $4783: $70
    ld [bc], a                                    ; $4784: $02
    ld [hl], h                                    ; $4785: $74
    ld bc, $0076                                  ; $4786: $01 $76 $00
    ld [hl], a                                    ; $4789: $77
    ld [hl], b                                    ; $478A: $70
    nop                                           ; $478B: $00
    ld d, $E9                                     ; $478C: $16 $E9
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    nop                                           ; $4790: $00
    ld [hl], b                                    ; $4791: $70
    nop                                           ; $4792: $00
    ld [hl], b                                    ; $4793: $70
    nop                                           ; $4794: $00
    ld [hl], b                                    ; $4795: $70
    nop                                           ; $4796: $00
    ld [hl], b                                    ; $4797: $70
    nop                                           ; $4798: $00
    ld [hl], b                                    ; $4799: $70
    ld [hl], b                                    ; $479A: $70
    nop                                           ; $479B: $00
    ld [de], a                                    ; $479C: $12
    db $EC                                        ; $479D: $EC
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    db $10                                        ; $47A1: $10
    inc b                                         ; $47A2: $04
    db $10                                        ; $47A3: $10
    ld [bc], a                                    ; $47A4: $02
    inc d                                         ; $47A5: $14
    ld bc, $0016                                  ; $47A6: $01 $16 $00
    rla                                           ; $47A9: $17
    stop                                          ; $47AA: $10 $00
    ld d, $09                                     ; $47AC: $16 $09
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    rst $38                                       ; $47B0: $FF
    nop                                           ; $47B1: $00
    rst $38                                       ; $47B2: $FF
    rst $38                                       ; $47B3: $FF
    rst $38                                       ; $47B4: $FF
    rst $38                                       ; $47B5: $FF
    rst $38                                       ; $47B6: $FF
    rst $38                                       ; $47B7: $FF
    rst $38                                       ; $47B8: $FF
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    rst $38                                       ; $47BB: $FF
    ld [hl], b                                    ; $47BC: $70
    nop                                           ; $47BD: $00
    ld [hl], b                                    ; $47BE: $70
    nop                                           ; $47BF: $00
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    nop                                           ; $47C2: $00
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00

Call_06D_47C5:
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    nop                                           ; $47C8: $00
    nop                                           ; $47C9: $00
    nop                                           ; $47CA: $00
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    nop                                           ; $47D0: $00
    nop                                           ; $47D1: $00
    nop                                           ; $47D2: $00
    nop                                           ; $47D3: $00
    nop                                           ; $47D4: $00
    nop                                           ; $47D5: $00
    nop                                           ; $47D6: $00
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    nop                                           ; $47D9: $00
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    nop                                           ; $47DC: $00
    nop                                           ; $47DD: $00
    nop                                           ; $47DE: $00
    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    nop                                           ; $47E7: $00
    nop                                           ; $47E8: $00
    nop                                           ; $47E9: $00
    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    nop                                           ; $47FA: $00
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    rst $38                                       ; $4800: $FF
    nop                                           ; $4801: $00
    rst $38                                       ; $4802: $FF
    nop                                           ; $4803: $00
    reti                                          ; $4804: $D9


    rlca                                          ; $4805: $07
    sub b                                         ; $4806: $90
    rrca                                          ; $4807: $0F
    xor a                                         ; $4808: $AF
    db $10                                        ; $4809: $10
    rst $38                                       ; $480A: $FF
    nop                                           ; $480B: $00
    or [hl]                                       ; $480C: $B6
    ld c, a                                       ; $480D: $4F
    add sp, $1F                                   ; $480E: $E8 $1F
    rst $38                                       ; $4810: $FF
    nop                                           ; $4811: $00
    rst $38                                       ; $4812: $FF
    nop                                           ; $4813: $00
    cp a                                          ; $4814: $BF
    ret nz                                        ; $4815: $C0

    rst $18                                       ; $4816: $DF
    ldh [$1F], a                                  ; $4817: $E0 $1F
    ldh [$9F], a                                  ; $4819: $E0 $9F
    ld h, b                                       ; $481B: $60
    rst $18                                       ; $481C: $DF
    jr nz, jr_06D_489E                            ; $481D: $20 $7F

    add b                                         ; $481F: $80
    ld h, c                                       ; $4820: $61
    ld e, $C0                                     ; $4821: $1E $C0
    cpl                                           ; $4823: $2F
    adc l                                         ; $4824: $8D
    ld d, d                                       ; $4825: $52
    sbc [hl]                                      ; $4826: $9E
    ld hl, $43BD                                  ; $4827: $21 $BD $43
    sbc $23                                       ; $482A: $DE $23
    or e                                          ; $482C: $B3
    ld a, [bc]                                    ; $482D: $0A
    dec l                                         ; $482E: $2D
    ld e, $FF                                     ; $482F: $1E $FF
    nop                                           ; $4831: $00
    rst $38                                       ; $4832: $FF
    nop                                           ; $4833: $00
    rst $38                                       ; $4834: $FF
    nop                                           ; $4835: $00
    rra                                           ; $4836: $1F
    ldh [$7F], a                                  ; $4837: $E0 $7F
    add b                                         ; $4839: $80
    rst $38                                       ; $483A: $FF
    nop                                           ; $483B: $00
    sub e                                         ; $483C: $93
    ld l, h                                       ; $483D: $6C
    ld hl, $FFDE                                  ; $483E: $21 $DE $FF
    nop                                           ; $4841: $00
    rst $38                                       ; $4842: $FF
    nop                                           ; $4843: $00
    rst $38                                       ; $4844: $FF
    nop                                           ; $4845: $00
    rst $38                                       ; $4846: $FF
    nop                                           ; $4847: $00
    jp $9C3C                                      ; $4848: $C3 $3C $9C


    ld a, l                                       ; $484B: $7D
    ld h, $DF                                     ; $484C: $26 $DF
    ld a, e                                       ; $484E: $7B
    add [hl]                                      ; $484F: $86
    rst $38                                       ; $4850: $FF
    nop                                           ; $4851: $00
    rst $38                                       ; $4852: $FF
    nop                                           ; $4853: $00
    rst $38                                       ; $4854: $FF
    nop                                           ; $4855: $00
    cpl                                           ; $4856: $2F
    ret nc                                        ; $4857: $D0

    add a                                         ; $4858: $87
    ld a, b                                       ; $4859: $78
    jp nz, $6B3D                                  ; $485A: $C2 $3D $6B

    sub h                                         ; $485D: $94
    ld a, a                                       ; $485E: $7F
    add b                                         ; $485F: $80
    rlca                                          ; $4860: $07
    ld hl, sp+$1F                                 ; $4861: $F8 $1F
    ldh [$30], a                                  ; $4863: $E0 $30
    ret nz                                        ; $4865: $C0

    ld h, e                                       ; $4866: $63
    add b                                         ; $4867: $80
    ld c, h                                       ; $4868: $4C
    add b                                         ; $4869: $80
    reti                                          ; $486A: $D9


    nop                                           ; $486B: $00
    db $DB                                        ; $486C: $DB
    nop                                           ; $486D: $00
    rst $18                                       ; $486E: $DF
    nop                                           ; $486F: $00
    ldh [$1F], a                                  ; $4870: $E0 $1F
    ld hl, sp+$07                                 ; $4872: $F8 $07
    db $FC                                        ; $4874: $FC
    inc bc                                        ; $4875: $03
    or $01                                        ; $4876: $F6 $01
    ld a, e                                       ; $4878: $7B
    nop                                           ; $4879: $00
    cp a                                          ; $487A: $BF
    nop                                           ; $487B: $00
    rst $38                                       ; $487C: $FF
    nop                                           ; $487D: $00
    rst $38                                       ; $487E: $FF
    nop                                           ; $487F: $00
    rlca                                          ; $4880: $07
    nop                                           ; $4881: $00
    rra                                           ; $4882: $1F
    nop                                           ; $4883: $00
    jr nc, jr_06D_4895                            ; $4884: $30 $0F

    ld h, e                                       ; $4886: $63
    inc e                                         ; $4887: $1C
    ld c, h                                       ; $4888: $4C
    inc sp                                        ; $4889: $33
    reti                                          ; $488A: $D9


    ld h, $DB                                     ; $488B: $26 $DB
    inc h                                         ; $488D: $24
    rst $18                                       ; $488E: $DF
    jr nz, @-$1E                                  ; $488F: $20 $E0

    nop                                           ; $4891: $00
    ld hl, sp+$00                                 ; $4892: $F8 $00
    db $FC                                        ; $4894: $FC

jr_06D_4895:
    nop                                           ; $4895: $00
    or $08                                        ; $4896: $F6 $08
    ld a, e                                       ; $4898: $7B
    add h                                         ; $4899: $84
    cp a                                          ; $489A: $BF
    ld b, b                                       ; $489B: $40
    rst $38                                       ; $489C: $FF
    nop                                           ; $489D: $00

jr_06D_489E:
    rst $38                                       ; $489E: $FF
    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    rst $38                                       ; $48A1: $FF
    nop                                           ; $48A2: $00
    rst $38                                       ; $48A3: $FF
    nop                                           ; $48A4: $00
    rst $38                                       ; $48A5: $FF
    nop                                           ; $48A6: $00
    cp $01                                        ; $48A7: $FE $01
    ld hl, sp+$07                                 ; $48A9: $F8 $07
    ldh a, [rIF]                                  ; $48AB: $F0 $0F
    ldh [$09], a                                  ; $48AD: $E0 $09
    ldh [$03], a                                  ; $48AF: $E0 $03
    ld hl, sp+$07                                 ; $48B1: $F8 $07
    ldh a, [rTAC]                                 ; $48B3: $F0 $07
    ldh a, [rIF]                                  ; $48B5: $F0 $0F
    nop                                           ; $48B7: $00
    rst $38                                       ; $48B8: $FF
    nop                                           ; $48B9: $00
    rst $38                                       ; $48BA: $FF
    nop                                           ; $48BB: $00
    rst $38                                       ; $48BC: $FF
    nop                                           ; $48BD: $00
    rst $38                                       ; $48BE: $FF
    nop                                           ; $48BF: $00
    ld a, a                                       ; $48C0: $7F
    nop                                           ; $48C1: $00
    ld h, e                                       ; $48C2: $63
    nop                                           ; $48C3: $00
    ld b, a                                       ; $48C4: $47
    db $10                                        ; $48C5: $10
    inc c                                         ; $48C6: $0C
    and b                                         ; $48C7: $A0
    add hl, de                                    ; $48C8: $19
    ret nz                                        ; $48C9: $C0

    inc de                                        ; $48CA: $13
    ret nz                                        ; $48CB: $C0

    ld bc, $07EC                                  ; $48CC: $01 $EC $07
    ldh a, [rIE]                                  ; $48CF: $F0 $FF
    nop                                           ; $48D1: $00
    rst $38                                       ; $48D2: $FF
    nop                                           ; $48D3: $00
    rst $38                                       ; $48D4: $FF
    nop                                           ; $48D5: $00
    sbc a                                         ; $48D6: $9F
    nop                                           ; $48D7: $00
    rst $38                                       ; $48D8: $FF
    nop                                           ; $48D9: $00
    rst $38                                       ; $48DA: $FF
    nop                                           ; $48DB: $00
    rst $38                                       ; $48DC: $FF

jr_06D_48DD:
    nop                                           ; $48DD: $00
    rst $38                                       ; $48DE: $FF
    nop                                           ; $48DF: $00
    ld a, a                                       ; $48E0: $7F
    nop                                           ; $48E1: $00
    rrca                                          ; $48E2: $0F
    ret nz                                        ; $48E3: $C0

    inc sp                                        ; $48E4: $33
    add b                                         ; $48E5: $80
    ccf                                           ; $48E6: $3F
    ret nz                                        ; $48E7: $C0

    ld c, $E0                                     ; $48E8: $0E $E0
    ld sp, wMenuChoice_ConfirmingChoice                                  ; $48EA: $31 $80 $CD
    nop                                           ; $48ED: $00
    db $FC                                        ; $48EE: $FC
    nop                                           ; $48EF: $00
    ld [hl], a                                    ; $48F0: $77
    nop                                           ; $48F1: $00
    ld bc, $0088                                  ; $48F2: $01 $88 $00
    db $FC                                        ; $48F5: $FC
    nop                                           ; $48F6: $00
    rst $08                                       ; $48F7: $CF
    nop                                           ; $48F8: $00
    inc sp                                        ; $48F9: $33
    nop                                           ; $48FA: $00
    inc bc                                        ; $48FB: $03
    nop                                           ; $48FC: $00
    rst $08                                       ; $48FD: $CF
    nop                                           ; $48FE: $00
    rst $38                                       ; $48FF: $FF
    db $E3                                        ; $4900: $E3
    inc e                                         ; $4901: $1C
    rst $08                                       ; $4902: $CF
    jr nc, jr_06D_48DD                            ; $4903: $30 $D8

    daa                                           ; $4905: $27
    ldh a, [$09]                                  ; $4906: $F0 $09
    ld a, [c]                                     ; $4908: $F2
    dec b                                         ; $4909: $05
    or a                                          ; $490A: $B7
    ld c, b                                       ; $490B: $48
    rst $28                                       ; $490C: $EF
    db $10                                        ; $490D: $10
    ccf                                           ; $490E: $3F
    nop                                           ; $490F: $00
    ld l, a                                       ; $4910: $6F
    sub b                                         ; $4911: $90
    and a                                         ; $4912: $A7
    ld e, b                                       ; $4913: $58
    ld [hl], a                                    ; $4914: $77
    adc b                                         ; $4915: $88
    scf                                           ; $4916: $37
    ret z                                         ; $4917: $C8

    ccf                                           ; $4918: $3F
    ret nz                                        ; $4919: $C0

    cp a                                          ; $491A: $BF
    ld b, b                                       ; $491B: $40
    rst $38                                       ; $491C: $FF
    nop                                           ; $491D: $00
    rst $38                                       ; $491E: $FF
    nop                                           ; $491F: $00

jr_06D_4920:
    ld e, e                                       ; $4920: $5B
    inc a                                         ; $4921: $3C
    ld c, [hl]                                    ; $4922: $4E
    db $31                                        ; $4923: $31

    db $DD

    inc hl                                        ; $4925: $23
    db $EB                                        ; $4926: $EB
    rla                                           ; $4927: $17
    ld a, [$F907]                                 ; $4928: $FA $07 $F9
    ld b, $FC                                     ; $492B: $06 $FC
    inc bc                                        ; $492D: $03
    rst $38                                       ; $492E: $FF
    nop                                           ; $492F: $00
    ld b, b                                       ; $4930: $40

jr_06D_4931:
    and a                                         ; $4931: $A7
    ld [hl], b                                    ; $4932: $70
    adc e                                         ; $4933: $8B
    cp c                                          ; $4934: $B9
    call nz, $F20D                                ; $4935: $C4 $0D $F2
    rst $00                                       ; $4938: $C7
    jr c, jr_06D_4920                             ; $4939: $38 $E5

    jr jr_06D_4931                                ; $493B: $18 $F4

    ld [$10E9], sp                                ; $493D: $08 $E9 $10
    db $FD                                        ; $4940: $FD
    ld [bc], a                                    ; $4941: $02
    adc a                                         ; $4942: $8F
    ld [hl], b                                    ; $4943: $70
    ld [hl-], a                                   ; $4944: $32
    cp l                                          ; $4945: $BD

jr_06D_4946:
    ld e, b                                       ; $4946: $58
    rst $38                                       ; $4947: $FF
    ld a, [hl+]                                   ; $4948: $2A
    db $DD                                        ; $4949: $DD
    xor d                                         ; $494A: $AA
    ld e, l                                       ; $494B: $5D
    rst $20                                       ; $494C: $E7
    jr jr_06D_4946                                ; $494D: $18 $F7

    ld [$00FF], sp                                ; $494F: $08 $FF $00
    add hl, sp                                    ; $4952: $39
    add $04                                       ; $4953: $C6 $04
    rlc d                                         ; $4955: $CB $02
    add l                                         ; $4957: $85
    inc sp                                        ; $4958: $33
    ld c, b                                       ; $4959: $48
    ld a, e                                       ; $495A: $7B
    inc b                                         ; $495B: $04
    ld e, e                                       ; $495C: $5B
    add h                                         ; $495D: $84
    ld l, e                                       ; $495E: $6B
    add h                                         ; $495F: $84
    ld e, [hl]                                    ; $4960: $5E
    ld d, c                                       ; $4961: $51
    ld a, a                                       ; $4962: $7F
    pop hl                                        ; $4963: $E1
    ccf                                           ; $4964: $3F
    and b                                         ; $4965: $A0
    rra                                           ; $4966: $1F
    rst $18                                       ; $4967: $DF
    nop                                           ; $4968: $00
    ldh [rP1], a                                  ; $4969: $E0 $00
    rst $38                                       ; $496B: $FF
    nop                                           ; $496C: $00
    rst $38                                       ; $496D: $FF
    nop                                           ; $496E: $00
    rst $38                                       ; $496F: $FF
    cp $90                                        ; $4970: $FE $90
    ld a, [hl]                                    ; $4972: $7E
    and e                                         ; $4973: $A3
    ld e, h                                       ; $4974: $5C
    xor l                                         ; $4975: $AD
    ld d, b                                       ; $4976: $50
    rst $30                                       ; $4977: $F7
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $FF
    nop                                           ; $497A: $00
    rst $38                                       ; $497B: $FF
    nop                                           ; $497C: $00
    rst $38                                       ; $497D: $FF
    nop                                           ; $497E: $00
    rst $38                                       ; $497F: $FF
    ld e, [hl]                                    ; $4980: $5E
    ld d, b                                       ; $4981: $50
    ld a, a                                       ; $4982: $7F
    ld h, c                                       ; $4983: $61
    ccf                                           ; $4984: $3F
    jr nz, jr_06D_49A6                            ; $4985: $20 $1F

    rra                                           ; $4987: $1F
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498A: $00
    nop                                           ; $498B: $00
    nop                                           ; $498C: $00
    nop                                           ; $498D: $00
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    cp $90                                        ; $4990: $FE $90
    ld a, [hl]                                    ; $4992: $7E
    ld [hl+], a                                   ; $4993: $22
    ld e, h                                       ; $4994: $5C
    inc c                                         ; $4995: $0C
    ld d, b                                       ; $4996: $50
    ld d, b                                       ; $4997: $50
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    rlca                                          ; $49A0: $07
    ldh [$1F], a                                  ; $49A1: $E0 $1F
    ret nz                                        ; $49A3: $C0

    ccf                                           ; $49A4: $3F
    add b                                         ; $49A5: $80

jr_06D_49A6:
    ccf                                           ; $49A6: $3F
    add b                                         ; $49A7: $80
    ld a, a                                       ; $49A8: $7F
    nop                                           ; $49A9: $00
    ld a, a                                       ; $49AA: $7F
    nop                                           ; $49AB: $00
    ld a, a                                       ; $49AC: $7F
    nop                                           ; $49AD: $00
    ld a, a                                       ; $49AE: $7F
    nop                                           ; $49AF: $00
    rst $20                                       ; $49B0: $E7
    jr @+$01                                      ; $49B1: $18 $FF

    nop                                           ; $49B3: $00
    pop bc                                        ; $49B4: $C1
    ld [hl-], a                                   ; $49B5: $32
    add b                                         ; $49B6: $80
    ld h, a                                       ; $49B7: $67
    add a                                         ; $49B8: $87
    ld a, b                                       ; $49B9: $78
    ld a, a                                       ; $49BA: $7F
    add b                                         ; $49BB: $80
    ldh a, [rIF]                                  ; $49BC: $F0 $0F
    db $E3                                        ; $49BE: $E3
    inc e                                         ; $49BF: $1C
    rrca                                          ; $49C0: $0F
    ldh [$0E], a                                  ; $49C1: $E0 $0E
    ldh [$0D], a                                  ; $49C3: $E0 $0D
    ldh [$09], a                                  ; $49C5: $E0 $09
    ldh [rP1], a                                  ; $49C7: $E0 $00
    or $00                                        ; $49C9: $F6 $00
    rst $38                                       ; $49CB: $FF
    nop                                           ; $49CC: $00
    rst $38                                       ; $49CD: $FF
    nop                                           ; $49CE: $00
    rst $38                                       ; $49CF: $FF
    ld h, a                                       ; $49D0: $67
    nop                                           ; $49D1: $00
    rst $38                                       ; $49D2: $FF
    nop                                           ; $49D3: $00
    rst $38                                       ; $49D4: $FF
    nop                                           ; $49D5: $00
    db $DB                                        ; $49D6: $DB
    nop                                           ; $49D7: $00
    sub e                                         ; $49D8: $93
    nop                                           ; $49D9: $00
    rrca                                          ; $49DA: $0F
    ld h, b                                       ; $49DB: $60
    rra                                           ; $49DC: $1F
    ret nz                                        ; $49DD: $C0

    ld de, $31C6                                  ; $49DE: $11 $C6 $31
    add b                                         ; $49E1: $80
    ld b, $E0                                     ; $49E2: $06 $E0
    rlca                                          ; $49E4: $07
    ld hl, sp+$01                                 ; $49E5: $F8 $01
    ld hl, sp+$00                                 ; $49E7: $F8 $00
    and $00                                       ; $49E9: $E6 $00
    ldh [rP1], a                                  ; $49EB: $E0 $00
    ld sp, hl                                     ; $49ED: $F9
    nop                                           ; $49EE: $00
    rst $38                                       ; $49EF: $FF
    cp a                                          ; $49F0: $BF
    nop                                           ; $49F1: $00
    ld a, a                                       ; $49F2: $7F
    nop                                           ; $49F3: $00
    rst $38                                       ; $49F4: $FF
    nop                                           ; $49F5: $00
    sbc a                                         ; $49F6: $9F
    nop                                           ; $49F7: $00
    inc sp                                        ; $49F8: $33
    nop                                           ; $49F9: $00
    ccf                                           ; $49FA: $3F
    ld b, b                                       ; $49FB: $40
    rrca                                          ; $49FC: $0F
    ldh [rSB], a                                  ; $49FD: $E0 $01
    db $FC                                        ; $49FF: $FC
    nop                                           ; $4A00: $00
    nop                                           ; $4A01: $00
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
    nop                                           ; $4A06: $00
    nop                                           ; $4A07: $00
    ld bc, $0600                                  ; $4A08: $01 $00 $06
    nop                                           ; $4A0B: $00
    rlca                                          ; $4A0C: $07
    nop                                           ; $4A0D: $00
    ld sp, $0100                                  ; $4A0E: $31 $00 $01
    nop                                           ; $4A11: $00
    rrca                                          ; $4A12: $0F
    nop                                           ; $4A13: $00
    inc sp                                        ; $4A14: $33
    nop                                           ; $4A15: $00
    ccf                                           ; $4A16: $3F
    nop                                           ; $4A17: $00
    sbc a                                         ; $4A18: $9F
    nop                                           ; $4A19: $00
    ld a, a                                       ; $4A1A: $7F
    nop                                           ; $4A1B: $00
    rst $38                                       ; $4A1C: $FF
    nop                                           ; $4A1D: $00
    rst $38                                       ; $4A1E: $FF
    nop                                           ; $4A1F: $00
    nop                                           ; $4A20: $00

jr_06D_4A21:
    rst $38                                       ; $4A21: $FF
    nop                                           ; $4A22: $00
    rst $38                                       ; $4A23: $FF
    nop                                           ; $4A24: $00
    rst $38                                       ; $4A25: $FF
    nop                                           ; $4A26: $00
    cp $01                                        ; $4A27: $FE $01
    ld hl, sp+$06                                 ; $4A29: $F8 $06
    ldh a, [rTAC]                                 ; $4A2B: $F0 $07
    ret nz                                        ; $4A2D: $C0

    ld sp, $0100                                  ; $4A2E: $31 $00 $01
    ldh a, [rIF]                                  ; $4A31: $F0 $0F
    ret nz                                        ; $4A33: $C0

    inc sp                                        ; $4A34: $33
    add b                                         ; $4A35: $80
    ccf                                           ; $4A36: $3F
    nop                                           ; $4A37: $00
    sbc a                                         ; $4A38: $9F
    nop                                           ; $4A39: $00
    ld a, a                                       ; $4A3A: $7F
    nop                                           ; $4A3B: $00
    rst $38                                       ; $4A3C: $FF
    nop                                           ; $4A3D: $00
    rst $38                                       ; $4A3E: $FF
    nop                                           ; $4A3F: $00
    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    nop                                           ; $4A43: $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    ld bc, $0700                                  ; $4A48: $01 $00 $07
    nop                                           ; $4A4B: $00
    rrca                                          ; $4A4C: $0F
    nop                                           ; $4A4D: $00
    add hl, bc                                    ; $4A4E: $09
    nop                                           ; $4A4F: $00
    rst $38                                       ; $4A50: $FF
    nop                                           ; $4A51: $00
    ld a, a                                       ; $4A52: $7F
    nop                                           ; $4A53: $00
    ld [hl-], a                                   ; $4A54: $32
    add b                                         ; $4A55: $80
    nop                                           ; $4A56: $00
    adc c                                         ; $4A57: $89
    nop                                           ; $4A58: $00
    rst $18                                       ; $4A59: $DF
    nop                                           ; $4A5A: $00
    rst $38                                       ; $4A5B: $FF
    nop                                           ; $4A5C: $00
    rst $38                                       ; $4A5D: $FF
    nop                                           ; $4A5E: $00
    rst $38                                       ; $4A5F: $FF
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    inc c                                         ; $4A62: $0C
    nop                                           ; $4A63: $00
    inc sp                                        ; $4A64: $33
    nop                                           ; $4A65: $00
    ccf                                           ; $4A66: $3F
    nop                                           ; $4A67: $00
    inc c                                         ; $4A68: $0C
    nop                                           ; $4A69: $00
    nop                                           ; $4A6A: $00
    nop                                           ; $4A6B: $00
    nop                                           ; $4A6C: $00
    nop                                           ; $4A6D: $00
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    nop                                           ; $4A73: $00
    nop                                           ; $4A74: $00
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    inc c                                         ; $4A78: $0C
    nop                                           ; $4A79: $00
    ld [de], a                                    ; $4A7A: $12
    inc c                                         ; $4A7B: $0C
    ld b, b                                       ; $4A7C: $40
    inc sp                                        ; $4A7D: $33
    ld b, b                                       ; $4A7E: $40
    ccf                                           ; $4A7F: $3F
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00
    jr nc, jr_06D_4A84                            ; $4A82: $30 $00

jr_06D_4A84:
    call z, $FC00                                 ; $4A84: $CC $00 $FC
    nop                                           ; $4A87: $00
    jr nc, jr_06D_4A8A                            ; $4A88: $30 $00

jr_06D_4A8A:
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    or b                                          ; $4A8C: $B0
    nop                                           ; $4A8D: $00
    ret z                                         ; $4A8E: $C8

    jr nc, jr_06D_4A21                            ; $4A8F: $30 $90

    nop                                           ; $4A91: $00
    sub b                                         ; $4A92: $90
    nop                                           ; $4A93: $00
    ret nc                                        ; $4A94: $D0

    nop                                           ; $4A95: $00
    ld a, a                                       ; $4A96: $7F
    nop                                           ; $4A97: $00
    ld bc, $1100                                  ; $4A98: $01 $00 $11
    nop                                           ; $4A9B: $00
    or b                                          ; $4A9C: $B0
    nop                                           ; $4A9D: $00
    ld h, b                                       ; $4A9E: $60
    nop                                           ; $4A9F: $00
    and b                                         ; $4AA0: $A0
    nop                                           ; $4AA1: $00
    and d                                         ; $4AA2: $A2
    nop                                           ; $4AA3: $00
    ld h, d                                       ; $4AA4: $62
    nop                                           ; $4AA5: $00
    call nz, $8000                                ; $4AA6: $C4 $00 $80
    nop                                           ; $4AA9: $00
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    ldh [rP1], a                                  ; $4AAC: $E0 $00
    inc a                                         ; $4AAE: $3C
    nop                                           ; $4AAF: $00
    ld bc, $03FF                                  ; $4AB0: $01 $FF $03
    ld a, a                                       ; $4AB3: $7F
    rlca                                          ; $4AB4: $07
    ccf                                           ; $4AB5: $3F
    rrca                                          ; $4AB6: $0F
    rra                                           ; $4AB7: $1F
    rrca                                          ; $4AB8: $0F
    rlca                                          ; $4AB9: $07
    rra                                           ; $4ABA: $1F
    inc bc                                        ; $4ABB: $03
    ccf                                           ; $4ABC: $3F
    ld bc, $007F                                  ; $4ABD: $01 $7F $00
    nop                                           ; $4AC0: $00
    inc bc                                        ; $4AC1: $03
    nop                                           ; $4AC2: $00
    ld bc, $0000                                  ; $4AC3: $01 $00 $00
    nop                                           ; $4AC6: $00
    inc bc                                        ; $4AC7: $03
    nop                                           ; $4AC8: $00
    ld bc, $0100                                  ; $4AC9: $01 $00 $01
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    nop                                           ; $4ACE: $00
    ld [$3F00], sp                                ; $4ACF: $08 $00 $3F
    nop                                           ; $4AD2: $00
    rrca                                          ; $4AD3: $0F
    nop                                           ; $4AD4: $00
    rlca                                          ; $4AD5: $07
    nop                                           ; $4AD6: $00
    rrca                                          ; $4AD7: $0F
    nop                                           ; $4AD8: $00
    rra                                           ; $4AD9: $1F
    nop                                           ; $4ADA: $00
    ccf                                           ; $4ADB: $3F
    nop                                           ; $4ADC: $00
    rrca                                          ; $4ADD: $0F
    nop                                           ; $4ADE: $00
    inc bc                                        ; $4ADF: $03
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    add h                                         ; $4AE5: $84
    nop                                           ; $4AE6: $00
    adc h                                         ; $4AE7: $8C

jr_06D_4AE8:
    nop                                           ; $4AE8: $00
    sbc $00                                       ; $4AE9: $DE $00
    cp $00                                        ; $4AEB: $FE $00
    rst $38                                       ; $4AED: $FF
    nop                                           ; $4AEE: $00
    rst $38                                       ; $4AEF: $FF
    rst $38                                       ; $4AF0: $FF
    nop                                           ; $4AF1: $00
    rst $38                                       ; $4AF2: $FF
    add b                                         ; $4AF3: $80
    ld a, a                                       ; $4AF4: $7F
    ld c, l                                       ; $4AF5: $4D
    halt                                          ; $4AF6: $76
    halt                                          ; $4AF7: $76
    jr nz, jr_06D_4B1A                            ; $4AF8: $20 $20

    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00

Jump_06D_4AFC:
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    call z, $FD00                                 ; $4B00: $CC $00 $FD
    nop                                           ; $4B03: $00
    ld sp, $0C00                                  ; $4B04: $31 $00 $0C
    nop                                           ; $4B07: $00
    inc sp                                        ; $4B08: $33
    nop                                           ; $4B09: $00
    ccf                                           ; $4B0A: $3F
    nop                                           ; $4B0B: $00
    ld c, a                                       ; $4B0C: $4F
    nop                                           ; $4B0D: $00
    rst $38                                       ; $4B0E: $FF
    nop                                           ; $4B0F: $00
    xor $00                                       ; $4B10: $EE $00
    add b                                         ; $4B12: $80
    ld bc, $6700                                  ; $4B13: $01 $00 $67
    nop                                           ; $4B16: $00
    sbc c                                         ; $4B17: $99

jr_06D_4B18:
    nop                                           ; $4B18: $00
    add c                                         ; $4B19: $81

jr_06D_4B1A:
    nop                                           ; $4B1A: $00
    rst $20                                       ; $4B1B: $E7
    nop                                           ; $4B1C: $00
    rst $38                                       ; $4B1D: $FF
    nop                                           ; $4B1E: $00
    rst $38                                       ; $4B1F: $FF
    call z, $FD00                                 ; $4B20: $CC $00 $FD
    nop                                           ; $4B23: $00
    ld sp, $0C00                                  ; $4B24: $31 $00 $0C
    ret nz                                        ; $4B27: $C0

    inc sp                                        ; $4B28: $33
    add b                                         ; $4B29: $80
    ccf                                           ; $4B2A: $3F
    nop                                           ; $4B2B: $00
    ld c, a                                       ; $4B2C: $4F
    nop                                           ; $4B2D: $00
    rst $38                                       ; $4B2E: $FF
    nop                                           ; $4B2F: $00
    inc bc                                        ; $4B30: $03
    nop                                           ; $4B31: $00
    rlca                                          ; $4B32: $07
    nop                                           ; $4B33: $00
    rlca                                          ; $4B34: $07
    nop                                           ; $4B35: $00
    rrca                                          ; $4B36: $0F
    nop                                           ; $4B37: $00
    rst $38                                       ; $4B38: $FF
    nop                                           ; $4B39: $00
    rst $38                                       ; $4B3A: $FF
    nop                                           ; $4B3B: $00
    rst $38                                       ; $4B3C: $FF
    nop                                           ; $4B3D: $00
    rst $38                                       ; $4B3E: $FF
    nop                                           ; $4B3F: $00
    rlca                                          ; $4B40: $07
    nop                                           ; $4B41: $00
    rra                                           ; $4B42: $1F
    nop                                           ; $4B43: $00
    ccf                                           ; $4B44: $3F
    nop                                           ; $4B45: $00
    ccf                                           ; $4B46: $3F
    nop                                           ; $4B47: $00
    ld a, a                                       ; $4B48: $7F
    nop                                           ; $4B49: $00
    ld a, a                                       ; $4B4A: $7F
    nop                                           ; $4B4B: $00
    ld a, a                                       ; $4B4C: $7F
    nop                                           ; $4B4D: $00
    ld a, a                                       ; $4B4E: $7F
    nop                                           ; $4B4F: $00
    cp a                                          ; $4B50: $BF
    ld b, b                                       ; $4B51: $40
    dec a                                         ; $4B52: $3D
    ld b, b                                       ; $4B53: $40
    jr jr_06D_4B18                                ; $4B54: $18 $C2

    nop                                           ; $4B56: $00
    db $E3                                        ; $4B57: $E3
    nop                                           ; $4B58: $00
    rst $30                                       ; $4B59: $F7
    nop                                           ; $4B5A: $00
    rst $38                                       ; $4B5B: $FF
    nop                                           ; $4B5C: $00
    rst $38                                       ; $4B5D: $FF
    nop                                           ; $4B5E: $00
    rst $38                                       ; $4B5F: $FF
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    jr jr_06D_4B64                                ; $4B62: $18 $00

jr_06D_4B64:
    inc h                                         ; $4B64: $24
    jr jr_06D_4AE8                                ; $4B65: $18 $81

    ld h, [hl]                                    ; $4B67: $66
    jp $3E7E                                      ; $4B68: $C3 $7E $3E


    jr jr_06D_4B85                                ; $4B6B: $18 $18

    nop                                           ; $4B6D: $00
    nop                                           ; $4B6E: $00
    nop                                           ; $4B6F: $00
    inc de                                        ; $4B70: $13
    inc c                                         ; $4B71: $0C
    dec c                                         ; $4B72: $0D
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    jr nc, jr_06D_4B78                            ; $4B76: $30 $00

jr_06D_4B78:
    call z, $FC00                                 ; $4B78: $CC $00 $FC
    nop                                           ; $4B7B: $00
    jr nc, jr_06D_4B7E                            ; $4B7C: $30 $00

jr_06D_4B7E:
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    ld [bc], a                                    ; $4B80: $02
    call z, $FC86                                 ; $4B81: $CC $86 $FC
    ld a, b                                       ; $4B84: $78

jr_06D_4B85:
    jr nc, jr_06D_4BB7                            ; $4B85: $30 $30

    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    nop                                           ; $4B8C: $00
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    jr c, jr_06D_4B92                             ; $4B90: $38 $00

jr_06D_4B92:
    rrca                                          ; $4B92: $0F
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    add [hl]                                      ; $4BA0: $86
    nop                                           ; $4BA1: $00
    cp $00                                        ; $4BA2: $FE $00
    rlca                                          ; $4BA4: $07
    nop                                           ; $4BA5: $00
    inc bc                                        ; $4BA6: $03
    nop                                           ; $4BA7: $00
    inc bc                                        ; $4BA8: $03
    nop                                           ; $4BA9: $00
    inc bc                                        ; $4BAA: $03
    nop                                           ; $4BAB: $00
    ld bc, $0000                                  ; $4BAC: $01 $00 $00
    nop                                           ; $4BAF: $00
    nop                                           ; $4BB0: $00
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00
    ld b, $00                                     ; $4BB3: $06 $00
    nop                                           ; $4BB5: $00
    nop                                           ; $4BB6: $00

jr_06D_4BB7:
    inc bc                                        ; $4BB7: $03
    nop                                           ; $4BB8: $00
    add c                                         ; $4BB9: $81
    nop                                           ; $4BBA: $00
    pop hl                                        ; $4BBB: $E1
    nop                                           ; $4BBC: $00
    di                                            ; $4BBD: $F3
    nop                                           ; $4BBE: $00
    rst $30                                       ; $4BBF: $F7
    nop                                           ; $4BC0: $00
    inc e                                         ; $4BC1: $1C
    nop                                           ; $4BC2: $00
    dec c                                         ; $4BC3: $0D
    nop                                           ; $4BC4: $00
    rlca                                          ; $4BC5: $07
    nop                                           ; $4BC6: $00
    rlca                                          ; $4BC7: $07
    nop                                           ; $4BC8: $00
    jp $FF00                                      ; $4BC9: $C3 $00 $FF


    nop                                           ; $4BCC: $00
    rst $38                                       ; $4BCD: $FF
    nop                                           ; $4BCE: $00
    rst $38                                       ; $4BCF: $FF
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    nop                                           ; $4BD2: $00
    ld bc, $0700                                  ; $4BD3: $01 $00 $07
    nop                                           ; $4BD6: $00
    rra                                           ; $4BD7: $1F
    nop                                           ; $4BD8: $00
    rrca                                          ; $4BD9: $0F
    nop                                           ; $4BDA: $00
    rlca                                          ; $4BDB: $07
    nop                                           ; $4BDC: $00
    rlca                                          ; $4BDD: $07
    nop                                           ; $4BDE: $00
    rrca                                          ; $4BDF: $0F
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    ld bc, $1100                                  ; $4BE5: $01 $00 $11
    nop                                           ; $4BE8: $00
    jr jr_06D_4BEB                                ; $4BE9: $18 $00

jr_06D_4BEB:
    ccf                                           ; $4BEB: $3F
    nop                                           ; $4BEC: $00
    ccf                                           ; $4BED: $3F
    nop                                           ; $4BEE: $00
    ld a, a                                       ; $4BEF: $7F
    cp a                                          ; $4BF0: $BF
    nop                                           ; $4BF1: $00
    cp a                                          ; $4BF2: $BF
    add d                                         ; $4BF3: $82
    dec a                                         ; $4BF4: $3D
    dec h                                         ; $4BF5: $25
    inc e                                         ; $4BF6: $1C
    inc e                                         ; $4BF7: $1C
    ld [$0008], sp                                ; $4BF8: $08 $08 $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    sub b                                         ; $4C00: $90
    nop                                           ; $4C01: $00
    add [hl]                                      ; $4C02: $86
    nop                                           ; $4C03: $00
    rrca                                          ; $4C04: $0F
    nop                                           ; $4C05: $00
    ld d, h                                       ; $4C06: $54
    dec bc                                        ; $4C07: $0B
    cp c                                          ; $4C08: $B9
    ld d, $76                                     ; $4C09: $16 $76
    dec l                                         ; $4C0B: $2D
    ld e, a                                       ; $4C0C: $5F
    add hl, hl                                    ; $4C0D: $29
    ld e, a                                       ; $4C0E: $5F
    add hl, hl                                    ; $4C0F: $29
    ld b, c                                       ; $4C10: $41
    nop                                           ; $4C11: $00
    db $EC                                        ; $4C12: $EC
    nop                                           ; $4C13: $00
    ld a, d                                       ; $4C14: $7A
    add h                                         ; $4C15: $84
    or $08                                        ; $4C16: $F6 $08
    ld c, l                                       ; $4C18: $4D
    or [hl]                                       ; $4C19: $B6
    ld c, a                                       ; $4C1A: $4F
    cp d                                          ; $4C1B: $BA
    ld a, a                                       ; $4C1C: $7F
    sbc d                                         ; $4C1D: $9A
    db $FD                                        ; $4C1E: $FD
    sbc d                                         ; $4C1F: $9A
    ld [hl], $09                                  ; $4C20: $36 $09
    ld d, l                                       ; $4C22: $55
    ld [$0855], sp                                ; $4C23: $08 $55 $08
    ld d, l                                       ; $4C26: $55
    ld [$046B], sp                                ; $4C27: $08 $6B $04
    dec h                                         ; $4C2A: $25
    nop                                           ; $4C2B: $00
    stop                                          ; $4C2C: $10 $00
    add b                                         ; $4C2E: $80
    nop                                           ; $4C2F: $00
    db $DD                                        ; $4C30: $DD
    adc d                                         ; $4C31: $8A
    ld d, l                                       ; $4C32: $55
    adc d                                         ; $4C33: $8A
    ld d, l                                       ; $4C34: $55
    adc d                                         ; $4C35: $8A
    ld d, l                                       ; $4C36: $55
    adc d                                         ; $4C37: $8A
    ld d, d                                       ; $4C38: $52
    adc h                                         ; $4C39: $8C
    ld l, h                                       ; $4C3A: $6C
    sub b                                         ; $4C3B: $90
    or b                                          ; $4C3C: $B0
    ld b, b                                       ; $4C3D: $40
    ld b, b                                       ; $4C3E: $40
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    inc b                                         ; $4C42: $04
    ld [$0010], sp                                ; $4C43: $08 $10 $00
    ld bc, $0B00                                  ; $4C46: $01 $00 $0B
    db $10                                        ; $4C49: $10
    jr jr_06D_4C6C                                ; $4C4A: $18 $20

    ld de, $2320                                  ; $4C4C: $11 $20 $23
    ld b, b                                       ; $4C4F: $40
    inc e                                         ; $4C50: $1C
    ld [bc], a                                    ; $4C51: $02
    ld [bc], a                                    ; $4C52: $02
    ld bc, $00F9                                  ; $4C53: $01 $F9 $00
    db $FC                                        ; $4C56: $FC
    nop                                           ; $4C57: $00
    cp $00                                        ; $4C58: $FE $00
    ld sp, hl                                     ; $4C5A: $F9
    ld b, $92                                     ; $4C5B: $06 $92
    ld l, l                                       ; $4C5D: $6D
    ld [hl+], a                                   ; $4C5E: $22
    db $DD                                        ; $4C5F: $DD
    jr jr_06D_4C68                                ; $4C60: $18 $06

    ld c, $00                                     ; $4C62: $0E $00
    nop                                           ; $4C64: $00
    nop                                           ; $4C65: $00
    ld [hl], b                                    ; $4C66: $70
    nop                                           ; $4C67: $00

jr_06D_4C68:
    ld hl, sp+$00                                 ; $4C68: $F8 $00
    db $FC                                        ; $4C6A: $FC
    nop                                           ; $4C6B: $00

jr_06D_4C6C:
    ldh a, [rP1]                                  ; $4C6C: $F0 $00
    ld a, b                                       ; $4C6E: $78
    add b                                         ; $4C6F: $80
    ld h, $41                                     ; $4C70: $26 $41
    ld h, $43                                     ; $4C72: $26 $43
    ld l, l                                       ; $4C74: $6D
    ld [bc], a                                    ; $4C75: $02
    ld c, e                                       ; $4C76: $4B
    inc b                                         ; $4C77: $04
    ld e, d                                       ; $4C78: $5A
    inc b                                         ; $4C79: $04
    ld d, $08                                     ; $4C7A: $16 $08
    inc d                                         ; $4C7C: $14
    ld [$0814], sp                                ; $4C7D: $08 $14 $08
    and $99                                       ; $4C80: $E6 $99
    db $FC                                        ; $4C82: $FC
    ld de, $30F9                                  ; $4C83: $11 $F9 $30
    ld l, d                                       ; $4C86: $6A
    jr nc, jr_06D_4CFF                            ; $4C87: $30 $76

    jr nz, jr_06D_4CE2                            ; $4C89: $20 $57

    jr nz, jr_06D_4CE2                            ; $4C8B: $20 $55

    ld [hl+], a                                   ; $4C8D: $22
    sub h                                         ; $4C8E: $94
    ld h, d                                       ; $4C8F: $62
    ld c, h                                       ; $4C90: $4C
    or b                                          ; $4C91: $B0
    ld h, $D8                                     ; $4C92: $26 $D8
    cp e                                          ; $4C94: $BB
    call nz, $C2ED                                ; $4C95: $C4 $ED $C2
    ld h, l                                       ; $4C98: $65
    jp nz, Jump_06D_42E5                          ; $4C99: $C2 $E5 $42

    add d                                         ; $4C9C: $82
    ld h, b                                       ; $4C9D: $60
    ret nz                                        ; $4C9E: $C0

    jr nz, jr_06D_4CF5                            ; $4C9F: $20 $54

    ld [$004C], sp                                ; $4CA1: $08 $4C $00
    ld b, b                                       ; $4CA4: $40
    nop                                           ; $4CA5: $00
    ld h, b                                       ; $4CA6: $60
    nop                                           ; $4CA7: $00
    ld h, b                                       ; $4CA8: $60
    nop                                           ; $4CA9: $00
    jr nz, jr_06D_4CAC                            ; $4CAA: $20 $00

jr_06D_4CAC:
    jr nz, jr_06D_4CAE                            ; $4CAC: $20 $00

jr_06D_4CAE:
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    or [hl]                                       ; $4CB0: $B6
    ld b, b                                       ; $4CB1: $40
    and h                                         ; $4CB2: $A4
    ld b, d                                       ; $4CB3: $42
    and [hl]                                      ; $4CB4: $A6
    ld b, b                                       ; $4CB5: $40
    and h                                         ; $4CB6: $A4
    ld b, b                                       ; $4CB7: $40
    xor b                                         ; $4CB8: $A8
    ld b, b                                       ; $4CB9: $40
    ld d, c                                       ; $4CBA: $51
    jr nz, jr_06D_4CDE                            ; $4CBB: $20 $21

    nop                                           ; $4CBD: $00
    ld bc, $5000                                  ; $4CBE: $01 $00 $50
    jr nz, @+$6A                                  ; $4CC1: $20 $68

    db $10                                        ; $4CC3: $10
    jr z, jr_06D_4CD6                             ; $4CC4: $28 $10

    jr z, jr_06D_4CD8                             ; $4CC6: $28 $10

    or b                                          ; $4CC8: $B0
    nop                                           ; $4CC9: $00
    add b                                         ; $4CCA: $80
    nop                                           ; $4CCB: $00
    add b                                         ; $4CCC: $80
    nop                                           ; $4CCD: $00
    nop                                           ; $4CCE: $00
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    dec c                                         ; $4CD4: $0D
    db $10                                        ; $4CD5: $10

jr_06D_4CD6:
    add hl, de                                    ; $4CD6: $19
    ld [hl+], a                                   ; $4CD7: $22

jr_06D_4CD8:
    ld sp, $6342                                  ; $4CD8: $31 $42 $63
    nop                                           ; $4CDB: $00
    ld b, d                                       ; $4CDC: $42
    nop                                           ; $4CDD: $00

jr_06D_4CDE:
    ld [bc], a                                    ; $4CDE: $02
    nop                                           ; $4CDF: $00
    jr nc, jr_06D_4CE2                            ; $4CE0: $30 $00

jr_06D_4CE2:
    jr jr_06D_4CE4                                ; $4CE2: $18 $00

jr_06D_4CE4:
    jr jr_06D_4CE6                                ; $4CE4: $18 $00

jr_06D_4CE6:
    ld [$0800], sp                                ; $4CE6: $08 $00 $08
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    jr c, jr_06D_4CF2                             ; $4CF0: $38 $00

jr_06D_4CF2:
    ld h, b                                       ; $4CF2: $60
    nop                                           ; $4CF3: $00
    ld e, b                                       ; $4CF4: $58

jr_06D_4CF5:
    nop                                           ; $4CF5: $00
    jr nc, jr_06D_4CF8                            ; $4CF6: $30 $00

jr_06D_4CF8:
    ld h, b                                       ; $4CF8: $60
    nop                                           ; $4CF9: $00
    ld h, b                                       ; $4CFA: $60
    nop                                           ; $4CFB: $00
    ld h, c                                       ; $4CFC: $61
    nop                                           ; $4CFD: $00
    inc hl                                        ; $4CFE: $23

jr_06D_4CFF:
    nop                                           ; $4CFF: $00
    jr nz, @+$1A                                  ; $4D00: $20 $18

    ld a, b                                       ; $4D02: $78
    inc b                                         ; $4D03: $04
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    jr z, jr_06D_4D1E                             ; $4D06: $28 $16

    inc c                                         ; $4D08: $0C
    inc bc                                        ; $4D09: $03
    ld b, $01                                     ; $4D0A: $06 $01
    inc bc                                        ; $4D0C: $03
    nop                                           ; $4D0D: $00
    add c                                         ; $4D0E: $81
    nop                                           ; $4D0F: $00
    ld bc, $6020                                  ; $4D10: $01 $20 $60
    db $10                                        ; $4D13: $10
    jr nc, jr_06D_4D16                            ; $4D14: $30 $00

jr_06D_4D16:
    sub b                                         ; $4D16: $90
    ld b, b                                       ; $4D17: $40
    ret nz                                        ; $4D18: $C0

    jr nz, @+$62                                  ; $4D19: $20 $60

    db $10                                        ; $4D1B: $10
    jr nz, jr_06D_4CAE                            ; $4D1C: $20 $90

jr_06D_4D1E:
    sub b                                         ; $4D1E: $90
    ld b, b                                       ; $4D1F: $40
    jr nz, jr_06D_4D22                            ; $4D20: $20 $00

jr_06D_4D22:
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    ld bc, $0E0E                                  ; $4D26: $01 $0E $0E
    ld de, $2118                                  ; $4D29: $11 $18 $21
    ld sp, $2302                                  ; $4D2C: $31 $02 $23
    inc b                                         ; $4D2F: $04
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    or b                                          ; $4D34: $B0
    ld [$4498], sp                                ; $4D35: $08 $98 $44
    adc h                                         ; $4D38: $8C
    ld b, d                                       ; $4D39: $42
    add $00                                       ; $4D3A: $C6 $00
    ld b, d                                       ; $4D3C: $42
    nop                                           ; $4D3D: $00
    ld b, b                                       ; $4D3E: $40
    nop                                           ; $4D3F: $00
    dec e                                         ; $4D40: $1D
    ld [hl+], a                                   ; $4D41: $22
    ld sp, $2202                                  ; $4D42: $31 $02 $22
    nop                                           ; $4D45: $00
    ld [hl+], a                                   ; $4D46: $22
    inc b                                         ; $4D47: $04
    ld [bc], a                                    ; $4D48: $02
    inc b                                         ; $4D49: $04
    inc b                                         ; $4D4A: $04
    nop                                           ; $4D4B: $00
    inc b                                         ; $4D4C: $04
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    inc bc                                        ; $4D50: $03
    nop                                           ; $4D51: $00
    ld [bc], a                                    ; $4D52: $02
    nop                                           ; $4D53: $00
    ld [bc], a                                    ; $4D54: $02
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    ld [bc], a                                    ; $4D5C: $02
    inc b                                         ; $4D5D: $04
    rlca                                          ; $4D5E: $07
    jr jr_06D_4D69                                ; $4D5F: $18 $08

    inc b                                         ; $4D61: $04
    ld c, b                                       ; $4D62: $48
    ld b, $44                                     ; $4D63: $06 $44
    ld [bc], a                                    ; $4D65: $02
    ld b, h                                       ; $4D66: $44
    ld [hl+], a                                   ; $4D67: $22
    ld b, [hl]                                    ; $4D68: $46

jr_06D_4D69:
    jr nz, jr_06D_4DCF                            ; $4D69: $20 $64

    ld [bc], a                                    ; $4D6B: $02
    ld b, [hl]                                    ; $4D6C: $46
    add b                                         ; $4D6D: $80
    call nz, $8600                                ; $4D6E: $C4 $00 $86
    nop                                           ; $4D71: $00
    add [hl]                                      ; $4D72: $86
    nop                                           ; $4D73: $00
    ld [bc], a                                    ; $4D74: $02
    nop                                           ; $4D75: $00
    ld [bc], a                                    ; $4D76: $02
    nop                                           ; $4D77: $00
    ld [hl+], a                                   ; $4D78: $22
    nop                                           ; $4D79: $00
    jr nz, jr_06D_4D8C                            ; $4D7A: $20 $10

    db $10                                        ; $4D7C: $10
    ld [$0418], sp                                ; $4D7D: $08 $18 $04
    dec d                                         ; $4D80: $15
    ld [hl+], a                                   ; $4D81: $22
    inc hl                                        ; $4D82: $23
    nop                                           ; $4D83: $00
    inc bc                                        ; $4D84: $03
    inc b                                         ; $4D85: $04
    ld b, $08                                     ; $4D86: $06 $08
    dec c                                         ; $4D88: $0D
    db $10                                        ; $4D89: $10
    dec bc                                        ; $4D8A: $0B
    db $10                                        ; $4D8B: $10

jr_06D_4D8C:
    dec de                                        ; $4D8C: $1B
    nop                                           ; $4D8D: $00
    inc de                                        ; $4D8E: $13
    nop                                           ; $4D8F: $00
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    ldh [rP1], a                                  ; $4D92: $E0 $00
    ldh a, [rP1]                                  ; $4D94: $F0 $00
    jr c, jr_06D_4D98                             ; $4D96: $38 $00

jr_06D_4D98:
    inc e                                         ; $4D98: $1C
    nop                                           ; $4D99: $00
    inc b                                         ; $4D9A: $04
    nop                                           ; $4D9B: $00
    pop hl                                        ; $4D9C: $E1
    ld [bc], a                                    ; $4D9D: $02
    ret nz                                        ; $4D9E: $C0

    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    inc bc                                        ; $4DA2: $03
    nop                                           ; $4DA3: $00
    nop                                           ; $4DA4: $00
    nop                                           ; $4DA5: $00
    inc b                                         ; $4DA6: $04
    jr @+$21                                      ; $4DA7: $18 $1F

    jr nz, @+$32                                  ; $4DA9: $20 $30

    ld b, b                                       ; $4DAB: $40
    ld h, b                                       ; $4DAC: $60
    nop                                           ; $4DAD: $00
    ld b, c                                       ; $4DAE: $41
    nop                                           ; $4DAF: $00
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    nop                                           ; $4DB2: $00
    nop                                           ; $4DB3: $00
    ccf                                           ; $4DB4: $3F
    nop                                           ; $4DB5: $00
    rrca                                          ; $4DB6: $0F
    nop                                           ; $4DB7: $00
    ld bc, $0000                                  ; $4DB8: $01 $00 $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    rrca                                          ; $4DBE: $0F
    db $10                                        ; $4DBF: $10
    ld [hl+], a                                   ; $4DC0: $22
    inc c                                         ; $4DC1: $0C
    inc h                                         ; $4DC2: $24
    ld [$0804], sp                                ; $4DC3: $08 $04 $08
    inc b                                         ; $4DC6: $04
    ld [$000D], sp                                ; $4DC7: $08 $0D $00
    ld [$0901], sp                                ; $4DCA: $08 $01 $09
    nop                                           ; $4DCD: $00
    add hl, bc                                    ; $4DCE: $09

jr_06D_4DCF:
    nop                                           ; $4DCF: $00
    rra                                           ; $4DD0: $1F
    nop                                           ; $4DD1: $00
    jr c, jr_06D_4DD4                             ; $4DD2: $38 $00

jr_06D_4DD4:
    ld h, d                                       ; $4DD4: $62
    nop                                           ; $4DD5: $00
    ld b, d                                       ; $4DD6: $42
    inc b                                         ; $4DD7: $04
    inc b                                         ; $4DD8: $04
    ld [$100E], sp                                ; $4DD9: $08 $0E $10
    ld a, [de]                                    ; $4DDC: $1A
    inc h                                         ; $4DDD: $24
    ld [hl-], a                                   ; $4DDE: $32
    inc b                                         ; $4DDF: $04
    inc bc                                        ; $4DE0: $03
    nop                                           ; $4DE1: $00
    ld bc, $0000                                  ; $4DE2: $01 $00 $00
    nop                                           ; $4DE5: $00
    nop                                           ; $4DE6: $00
    nop                                           ; $4DE7: $00
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00
    nop                                           ; $4DEA: $00
    nop                                           ; $4DEB: $00
    nop                                           ; $4DEC: $00
    nop                                           ; $4DED: $00
    nop                                           ; $4DEE: $00
    nop                                           ; $4DEF: $00
    add b                                         ; $4DF0: $80
    nop                                           ; $4DF1: $00
    add c                                         ; $4DF2: $81
    nop                                           ; $4DF3: $00
    add c                                         ; $4DF4: $81
    nop                                           ; $4DF5: $00
    nop                                           ; $4DF6: $00
    nop                                           ; $4DF7: $00
    nop                                           ; $4DF8: $00
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    ld bc, $0009                                  ; $4E07: $01 $09 $00
    dec l                                         ; $4E0A: $2D
    ld b, b                                       ; $4E0B: $40
    rst $30                                       ; $4E0C: $F7
    nop                                           ; $4E0D: $00
    add hl, de                                    ; $4E0E: $19
    nop                                           ; $4E0F: $00
    add c                                         ; $4E10: $81
    nop                                           ; $4E11: $00
    and e                                         ; $4E12: $A3
    nop                                           ; $4E13: $00
    or e                                          ; $4E14: $B3
    nop                                           ; $4E15: $00
    or d                                          ; $4E16: $B2
    nop                                           ; $4E17: $00
    or b                                          ; $4E18: $B0
    nop                                           ; $4E19: $00
    jr nz, jr_06D_4E1C                            ; $4E1A: $20 $00

jr_06D_4E1C:
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    nop                                           ; $4E22: $00
    nop                                           ; $4E23: $00
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    ld bc, $0302                                  ; $4E26: $01 $02 $03
    inc b                                         ; $4E29: $04
    ld [bc], a                                    ; $4E2A: $02
    inc c                                         ; $4E2B: $0C
    ld [bc], a                                    ; $4E2C: $02
    inc c                                         ; $4E2D: $0C
    dec b                                         ; $4E2E: $05
    ld [rRAMG], sp                                ; $4E2F: $08 $00 $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    nop                                           ; $4E36: $00
    nop                                           ; $4E37: $00
    nop                                           ; $4E38: $00
    nop                                           ; $4E39: $00
    ld [$1E06], sp                                ; $4E3A: $08 $06 $1E
    ld bc, $8031                                  ; $4E3D: $01 $31 $80
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    ld bc, $0202                                  ; $4E42: $01 $02 $02
    inc b                                         ; $4E45: $04
    inc b                                         ; $4E46: $04
    nop                                           ; $4E47: $00
    nop                                           ; $4E48: $00
    ld bc, $0001                                  ; $4E49: $01 $01 $00
    ld hl, $F0C0                                  ; $4E4C: $21 $C0 $F0
    nop                                           ; $4E4F: $00
    jr nz, jr_06D_4E62                            ; $4E50: $20 $10

    inc h                                         ; $4E52: $24
    db $10                                        ; $4E53: $10
    ld [hl], $00                                  ; $4E54: $36 $00
    ld d, $00                                     ; $4E56: $16 $00
    ld d, $00                                     ; $4E58: $16 $00
    ld b, h                                       ; $4E5A: $44
    nop                                           ; $4E5B: $00
    db $E4                                        ; $4E5C: $E4
    nop                                           ; $4E5D: $00
    ldh [rP1], a                                  ; $4E5E: $E0 $00
    sub b                                         ; $4E60: $90
    nop                                           ; $4E61: $00

jr_06D_4E62:
    jr jr_06D_4E64                                ; $4E62: $18 $00

jr_06D_4E64:
    inc c                                         ; $4E64: $0C
    nop                                           ; $4E65: $00
    inc c                                         ; $4E66: $0C
    nop                                           ; $4E67: $00
    inc b                                         ; $4E68: $04
    nop                                           ; $4E69: $00
    inc b                                         ; $4E6A: $04
    add b                                         ; $4E6B: $80
    nop                                           ; $4E6C: $00
    ret nz                                        ; $4E6D: $C0

    add b                                         ; $4E6E: $80
    ld b, b                                       ; $4E6F: $40
    add [hl]                                      ; $4E70: $86
    nop                                           ; $4E71: $00
    ld [bc], a                                    ; $4E72: $02
    nop                                           ; $4E73: $00
    ld [bc], a                                    ; $4E74: $02
    nop                                           ; $4E75: $00
    nop                                           ; $4E76: $00
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    nop                                           ; $4E81: $00
    ld bc, $0000                                  ; $4E82: $01 $00 $00
    nop                                           ; $4E85: $00
    inc e                                         ; $4E86: $1C
    inc bc                                        ; $4E87: $03
    rlca                                          ; $4E88: $07
    nop                                           ; $4E89: $00
    ld bc, $0000                                  ; $4E8A: $01 $00 $00
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    jr z, jr_06D_4E96                             ; $4E90: $28 $04

    ld [$1C04], sp                                ; $4E92: $08 $04 $1C
    nop                                           ; $4E95: $00

jr_06D_4E96:
    jr jr_06D_4E98                                ; $4E96: $18 $00

jr_06D_4E98:
    stop                                          ; $4E98: $10 $00
    nop                                           ; $4E9A: $00
    nop                                           ; $4E9B: $00
    nop                                           ; $4E9C: $00
    nop                                           ; $4E9D: $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    ld [de], a                                    ; $4EA0: $12
    nop                                           ; $4EA1: $00
    ld [bc], a                                    ; $4EA2: $02
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    ld [bc], a                                    ; $4EA8: $02
    nop                                           ; $4EA9: $00
    ld a, [de]                                    ; $4EAA: $1A
    nop                                           ; $4EAB: $00
    inc sp                                        ; $4EAC: $33
    nop                                           ; $4EAD: $00
    ld [hl], e                                    ; $4EAE: $73
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    nop                                           ; $4EB8: $00
    add b                                         ; $4EB9: $80
    add b                                         ; $4EBA: $80
    nop                                           ; $4EBB: $00
    add b                                         ; $4EBC: $80
    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00
    nop                                           ; $4EC0: $00
    nop                                           ; $4EC1: $00
    jr jr_06D_4EC4                                ; $4EC2: $18 $00

jr_06D_4EC4:
    jr nc, jr_06D_4EC6                            ; $4EC4: $30 $00

jr_06D_4EC6:
    inc sp                                        ; $4EC6: $33
    nop                                           ; $4EC7: $00
    daa                                           ; $4EC8: $27
    nop                                           ; $4EC9: $00
    ld c, $00                                     ; $4ECA: $0E $00
    call z, $E800                                 ; $4ECC: $CC $00 $E8
    nop                                           ; $4ECF: $00
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    inc c                                         ; $4ED2: $0C
    nop                                           ; $4ED3: $00
    ld b, $00                                     ; $4ED4: $06 $00
    ld [bc], a                                    ; $4ED6: $02
    nop                                           ; $4ED7: $00
    jr nc, jr_06D_4EDA                            ; $4ED8: $30 $00

jr_06D_4EDA:
    jr jr_06D_4EDC                                ; $4EDA: $18 $00

jr_06D_4EDC:
    inc e                                         ; $4EDC: $1C
    nop                                           ; $4EDD: $00
    ld c, $80                                     ; $4EDE: $0E $80
    inc [hl]                                      ; $4EE0: $34
    inc bc                                        ; $4EE1: $03
    ld sp, $1D02                                  ; $4EE2: $31 $02 $1D
    nop                                           ; $4EE5: $00
    inc c                                         ; $4EE6: $0C
    nop                                           ; $4EE7: $00
    inc b                                         ; $4EE8: $04
    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    db $FC                                        ; $4EF4: $FC
    nop                                           ; $4EF5: $00
    ldh a, [rP1]                                  ; $4EF6: $F0 $00
    add b                                         ; $4EF8: $80
    nop                                           ; $4EF9: $00
    nop                                           ; $4EFA: $00
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    ldh a, [$08]                                  ; $4EFE: $F0 $08
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    ld bc, $0001                                  ; $4F03: $01 $01 $00
    nop                                           ; $4F06: $00
    ld [bc], a                                    ; $4F07: $02
    ld bc, $0100                                  ; $4F08: $01 $00 $01
    ld [bc], a                                    ; $4F0B: $02
    inc bc                                        ; $4F0C: $03
    nop                                           ; $4F0D: $00
    inc bc                                        ; $4F0E: $03
    nop                                           ; $4F0F: $00
    ld [$1880], sp                                ; $4F10: $08 $80 $18
    add b                                         ; $4F13: $80
    sbc b                                         ; $4F14: $98
    nop                                           ; $4F15: $00
    sbc h                                         ; $4F16: $9C
    nop                                           ; $4F17: $00
    inc c                                         ; $4F18: $0C
    nop                                           ; $4F19: $00
    inc b                                         ; $4F1A: $04
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    jr jr_06D_4F2C                                ; $4F26: $18 $04

    inc c                                         ; $4F28: $0C
    ld [bc], a                                    ; $4F29: $02
    db $E4                                        ; $4F2A: $E4
    ld [bc], a                                    ; $4F2B: $02

jr_06D_4F2C:
    add d                                         ; $4F2C: $82
    nop                                           ; $4F2D: $00
    ld a, [c]                                     ; $4F2E: $F2
    nop                                           ; $4F2F: $00
    inc bc                                        ; $4F30: $03
    nop                                           ; $4F31: $00
    ld bc, $0100                                  ; $4F32: $01 $00 $01
    nop                                           ; $4F35: $00
    ld bc, $0100                                  ; $4F36: $01 $00 $01
    ld [bc], a                                    ; $4F39: $02
    inc bc                                        ; $4F3A: $03
    nop                                           ; $4F3B: $00
    ld [bc], a                                    ; $4F3C: $02
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    ld bc, $1000                                  ; $4F40: $01 $00 $10
    nop                                           ; $4F43: $00
    ld sp, $7300                                  ; $4F44: $31 $00 $73
    nop                                           ; $4F47: $00
    ld h, e                                       ; $4F48: $63
    nop                                           ; $4F49: $00
    ld b, d                                       ; $4F4A: $42
    nop                                           ; $4F4B: $00
    ld b, d                                       ; $4F4C: $42
    nop                                           ; $4F4D: $00
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    ld [bc], a                                    ; $4F50: $02
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    nop                                           ; $4F53: $00
    ld [bc], a                                    ; $4F54: $02
    nop                                           ; $4F55: $00
    ld b, $00                                     ; $4F56: $06 $00
    ld b, $00                                     ; $4F58: $06 $00
    ld b, $00                                     ; $4F5A: $06 $00
    ld [bc], a                                    ; $4F5C: $02
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    ld bc, $0202                                  ; $4F60: $01 $02 $02
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    nop                                           ; $4F65: $00
    ld [bc], a                                    ; $4F66: $02
    nop                                           ; $4F67: $00
    ld b, $00                                     ; $4F68: $06 $00
    ld b, $00                                     ; $4F6A: $06 $00
    rlca                                          ; $4F6C: $07
    nop                                           ; $4F6D: $00
    inc bc                                        ; $4F6E: $03
    nop                                           ; $4F6F: $00
    nop                                           ; $4F70: $00
    nop                                           ; $4F71: $00
    nop                                           ; $4F72: $00
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    add b                                         ; $4F77: $80
    sub b                                         ; $4F78: $90
    nop                                           ; $4F79: $00
    or h                                          ; $4F7A: $B4
    ld [bc], a                                    ; $4F7B: $02
    rst $28                                       ; $4F7C: $EF
    nop                                           ; $4F7D: $00
    sbc b                                         ; $4F7E: $98
    nop                                           ; $4F7F: $00
    inc bc                                        ; $4F80: $03
    nop                                           ; $4F81: $00
    inc bc                                        ; $4F82: $03
    nop                                           ; $4F83: $00
    ld a, [bc]                                    ; $4F84: $0A
    nop                                           ; $4F85: $00
    ld a, [de]                                    ; $4F86: $1A
    nop                                           ; $4F87: $00
    ld a, [de]                                    ; $4F88: $1A
    nop                                           ; $4F89: $00
    ld [$0800], sp                                ; $4F8A: $08 $00 $08
    nop                                           ; $4F8D: $00
    nop                                           ; $4F8E: $00
    nop                                           ; $4F8F: $00
    ld b, b                                       ; $4F90: $40
    jr nz, @+$42                                  ; $4F91: $20 $40

    jr nz, jr_06D_4FB5                            ; $4F93: $20 $20

    nop                                           ; $4F95: $00
    jr nz, jr_06D_4F98                            ; $4F96: $20 $00

jr_06D_4F98:
    jr nz, jr_06D_4F9A                            ; $4F98: $20 $00

jr_06D_4F9A:
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    jr nc, jr_06D_4FA6                            ; $4FA4: $30 $00

jr_06D_4FA6:
    jr jr_06D_4FA8                                ; $4FA6: $18 $00

jr_06D_4FA8:
    inc e                                         ; $4FA8: $1C
    nop                                           ; $4FA9: $00
    inc c                                         ; $4FAA: $0C
    nop                                           ; $4FAB: $00
    inc h                                         ; $4FAC: $24
    ret nz                                        ; $4FAD: $C0

    ldh a, [rP1]                                  ; $4FAE: $F0 $00
    ld c, b                                       ; $4FB0: $48
    nop                                           ; $4FB1: $00
    ld b, b                                       ; $4FB2: $40
    nop                                           ; $4FB3: $00
    nop                                           ; $4FB4: $00

jr_06D_4FB5:
    nop                                           ; $4FB5: $00
    nop                                           ; $4FB6: $00
    nop                                           ; $4FB7: $00
    ld b, b                                       ; $4FB8: $40
    nop                                           ; $4FB9: $00
    ld e, b                                       ; $4FBA: $58
    nop                                           ; $4FBB: $00
    call z, $CE00                                 ; $4FBC: $CC $00 $CE
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    ld a, l                                       ; $4FC2: $7D
    ld [bc], a                                    ; $4FC3: $02
    nop                                           ; $4FC4: $00
    rst $38                                       ; $4FC5: $FF
    xor $06                                       ; $4FC6: $EE $06
    jr nc, jr_06D_502A                            ; $4FC8: $30 $60

    rrca                                          ; $4FCA: $0F
    ldh a, [$F7]                                  ; $4FCB: $F0 $F7
    add hl, de                                    ; $4FCD: $19
    inc sp                                        ; $4FCE: $33
    nop                                           ; $4FCF: $00
    ld d, $F0                                     ; $4FD0: $16 $F0
    ld [$23C7], sp                                ; $4FD2: $08 $C7 $23
    inc [hl]                                      ; $4FD5: $34
    sub b                                         ; $4FD6: $90
    rst $20                                       ; $4FD7: $E7
    ld h, b                                       ; $4FD8: $60
    inc bc                                        ; $4FD9: $03
    inc d                                         ; $4FDA: $14
    add hl, de                                    ; $4FDB: $19
    nop                                           ; $4FDC: $00
    jp $018E                                      ; $4FDD: $C3 $8E $01


    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00

jr_06D_4FEE:
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    nop                                           ; $4FF2: $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    nop                                           ; $4FF6: $00
    nop                                           ; $4FF7: $00
    nop                                           ; $4FF8: $00
    nop                                           ; $4FF9: $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    inc d                                         ; $5000: $14
    or h                                          ; $5001: $B4
    nop                                           ; $5002: $00
    add hl, bc                                    ; $5003: $09
    jr z, jr_06D_4FEE                             ; $5004: $28 $E8

    inc bc                                        ; $5006: $03
    adc e                                         ; $5007: $8B
    pop af                                        ; $5008: $F1
    inc bc                                        ; $5009: $03
    jr nz, jr_06D_502D                            ; $500A: $20 $21

    ld [hl+], a                                   ; $500C: $22
    add a                                         ; $500D: $87
    pop af                                        ; $500E: $F1
    ld b, b                                       ; $500F: $40
    ld b, h                                       ; $5010: $44
    adc $05                                       ; $5011: $CE $05
    db $E4                                        ; $5013: $E4
    ld b, $E4                                     ; $5014: $06 $E4
    ld b, $E4                                     ; $5016: $06 $E4
    ld b, $E4                                     ; $5018: $06 $E4
    ld b, $00                                     ; $501A: $06 $00
    ld bc, $0602                                  ; $501C: $01 $02 $06
    db $E4                                        ; $501F: $E4
    ld h, b                                       ; $5020: $60
    db $E4                                        ; $5021: $E4
    ld h, b                                       ; $5022: $60
    ld h, c                                       ; $5023: $61
    pop af                                        ; $5024: $F1
    and b                                         ; $5025: $A0
    and d                                         ; $5026: $A2
    ld [c], a                                     ; $5027: $E2
    pop hl                                        ; $5028: $E1
    ld [c], a                                     ; $5029: $E2

jr_06D_502A:
    pop hl                                        ; $502A: $E1
    ld [c], a                                     ; $502B: $E2
    pop hl                                        ; $502C: $E1

jr_06D_502D:
    ld [c], a                                     ; $502D: $E2
    ld sp, hl                                     ; $502E: $F9
    ld a, [$FC11]                                 ; $502F: $FA $11 $FC
    db $FD                                        ; $5032: $FD
    ld [c], a                                     ; $5033: $E2
    ld [hl], b                                    ; $5034: $70
    ld [c], a                                     ; $5035: $E2
    ld [hl], b                                    ; $5036: $70
    ld [hl], c                                    ; $5037: $71
    pop af                                        ; $5038: $F1
    or b                                          ; $5039: $B0
    or c                                          ; $503A: $B1
    ld a, [c]                                     ; $503B: $F2
    pop af                                        ; $503C: $F1
    ld a, [c]                                     ; $503D: $F2
    pop af                                        ; $503E: $F1
    ld a, [c]                                     ; $503F: $F2
    pop af                                        ; $5040: $F1
    ld a, [c]                                     ; $5041: $F2
    pop af                                        ; $5042: $F1
    jr nz, jr_06D_5093                            ; $5043: $20 $4E

    ld e, b                                       ; $5045: $58
    pop af                                        ; $5046: $F1
    ld a, [c]                                     ; $5047: $F2
    pop af                                        ; $5048: $F1
    ld a, [c]                                     ; $5049: $F2
    add b                                         ; $504A: $80
    add c                                         ; $504B: $81
    pop af                                        ; $504C: $F1
    ret nz                                        ; $504D: $C0

    pop af                                        ; $504E: $F1
    ld b, l                                       ; $504F: $45
    dec [hl]                                      ; $5050: $35
    ld [hl], $37                                  ; $5051: $36 $37
    ld [hl], $46                                  ; $5053: $36 $46
    add d                                         ; $5055: $82
    pop af                                        ; $5056: $F1
    dec h                                         ; $5057: $25
    ld e, l                                       ; $5058: $5D
    ld e, [hl]                                    ; $5059: $5E
    ld e, a                                       ; $505A: $5F
    ld a, [hl-]                                   ; $505B: $3A
    dec sp                                        ; $505C: $3B
    inc a                                         ; $505D: $3C
    ld [hl], $46                                  ; $505E: $36 $46
    ret nz                                        ; $5060: $C0

    pop af                                        ; $5061: $F1
    ret nz                                        ; $5062: $C0

    pop af                                        ; $5063: $F1
    ld b, e                                       ; $5064: $43
    ld b, a                                       ; $5065: $47
    sub $D7                                       ; $5066: $D6 $D7
    or h                                          ; $5068: $B4
    ld d, [hl]                                    ; $5069: $56
    ld [hl], $46                                  ; $506A: $36 $46
    ld l, l                                       ; $506C: $6D
    ld l, [hl]                                    ; $506D: $6E
    ld l, a                                       ; $506E: $6F
    ld c, d                                       ; $506F: $4A
    ld c, e                                       ; $5070: $4B
    ld c, h                                       ; $5071: $4C
    ld b, e                                       ; $5072: $43
    ld b, h                                       ; $5073: $44
    ret nz                                        ; $5074: $C0

    pop af                                        ; $5075: $F1
    ret nz                                        ; $5076: $C0

    ld b, l                                       ; $5077: $45
    inc [hl]                                      ; $5078: $34
    sbc b                                         ; $5079: $98
    and $E7                                       ; $507A: $E6 $E7
    and l                                         ; $507C: $A5
    add d                                         ; $507D: $82
    ld b, a                                       ; $507E: $47
    inc de                                        ; $507F: $13
    ld d, [hl]                                    ; $5080: $56
    ld a, l                                       ; $5081: $7D
    ld a, [hl]                                    ; $5082: $7E
    ld a, a                                       ; $5083: $7F
    ld e, d                                       ; $5084: $5A
    ld e, e                                       ; $5085: $5B
    ld e, h                                       ; $5086: $5C
    ld d, e                                       ; $5087: $53
    ld d, h                                       ; $5088: $54
    ret nz                                        ; $5089: $C0

    pop af                                        ; $508A: $F1
    ret nz                                        ; $508B: $C0

    cp b                                          ; $508C: $B8
    cp c                                          ; $508D: $B9
    ret c                                         ; $508E: $D8

    add d                                         ; $508F: $82
    ld h, [hl]                                    ; $5090: $66
    sub l                                         ; $5091: $95
    add l                                         ; $5092: $85

jr_06D_5093:
    add d                                         ; $5093: $82
    ld b, a                                       ; $5094: $47
    inc sp                                        ; $5095: $33
    ld d, [hl]                                    ; $5096: $56
    dec [hl]                                      ; $5097: $35
    ld b, [hl]                                    ; $5098: $46
    nop                                           ; $5099: $00
    ld bc, $4302                                  ; $509A: $01 $02 $43
    ld b, h                                       ; $509D: $44
    ret nz                                        ; $509E: $C0

    pop af                                        ; $509F: $F1
    ret nz                                        ; $50A0: $C0

    ret z                                         ; $50A1: $C8

    ret                                           ; $50A2: $C9


    ld [hl], h                                    ; $50A3: $74
    ld [hl], l                                    ; $50A4: $75
    sub b                                         ; $50A5: $90
    sub c                                         ; $50A6: $91
    jp nc, $D291                                  ; $50A7: $D2 $91 $D2

    ld h, b                                       ; $50AA: $60
    ld h, c                                       ; $50AB: $61
    ld b, h                                       ; $50AC: $44
    db $10                                        ; $50AD: $10
    ld de, $5312                                  ; $50AE: $11 $12 $53
    ld d, h                                       ; $50B1: $54
    ret nz                                        ; $50B2: $C0

    pop af                                        ; $50B3: $F1
    ret nz                                        ; $50B4: $C0

    ret c                                         ; $50B5: $D8

    ld [hl], e                                    ; $50B6: $73
    add h                                         ; $50B7: $84
    ld b, h                                       ; $50B8: $44
    and b                                         ; $50B9: $A0
    pop hl                                        ; $50BA: $E1
    ld [c], a                                     ; $50BB: $E2
    and c                                         ; $50BC: $A1
    ld [c], a                                     ; $50BD: $E2
    ld [hl], b                                    ; $50BE: $70
    ld [hl], c                                    ; $50BF: $71
    ld d, h                                       ; $50C0: $54
    jr nz, jr_06D_50E4                            ; $50C1: $20 $21

    ld [hl+], a                                   ; $50C3: $22
    ld b, e                                       ; $50C4: $43
    ld b, h                                       ; $50C5: $44
    ret nz                                        ; $50C6: $C0

    pop af                                        ; $50C7: $F1
    ret nz                                        ; $50C8: $C0

    add d                                         ; $50C9: $82
    add d                                         ; $50CA: $82
    ld [de], a                                    ; $50CB: $12
    sub l                                         ; $50CC: $95
    ld d, h                                       ; $50CD: $54
    or b                                          ; $50CE: $B0
    pop af                                        ; $50CF: $F1
    ld a, [c]                                     ; $50D0: $F2
    pop af                                        ; $50D1: $F1
    ld a, [c]                                     ; $50D2: $F2
    add b                                         ; $50D3: $80
    add c                                         ; $50D4: $81
    ld b, h                                       ; $50D5: $44
    nop                                           ; $50D6: $00
    ld bc, $5302                                  ; $50D7: $01 $02 $53
    ld d, h                                       ; $50DA: $54
    ret nz                                        ; $50DB: $C0

    pop af                                        ; $50DC: $F1
    ret nz                                        ; $50DD: $C0

    add d                                         ; $50DE: $82
    add d                                         ; $50DF: $82
    ld h, $A5                                     ; $50E0: $26 $A5
    ld b, h                                       ; $50E2: $44
    ret nz                                        ; $50E3: $C0

jr_06D_50E4:
    ld b, l                                       ; $50E4: $45
    inc [hl]                                      ; $50E5: $34
    ld [hl], $35                                  ; $50E6: $36 $35
    ld b, [hl]                                    ; $50E8: $46
    ret nz                                        ; $50E9: $C0

    ld d, h                                       ; $50EA: $54
    db $10                                        ; $50EB: $10
    ld de, $4312                                  ; $50EC: $11 $12 $43
    ld b, h                                       ; $50EF: $44
    ret nz                                        ; $50F0: $C0

    pop af                                        ; $50F1: $F1
    ret nz                                        ; $50F2: $C0

    ld [hl], e                                    ; $50F3: $73
    add d                                         ; $50F4: $82
    sub l                                         ; $50F5: $95
    ld d, h                                       ; $50F6: $54
    ret nc                                        ; $50F7: $D0

    pop de                                        ; $50F8: $D1
    jp nc, $D255                                  ; $50F9: $D2 $55 $D2

    sub d                                         ; $50FC: $92
    sub e                                         ; $50FD: $93
    ld b, h                                       ; $50FE: $44
    jr nz, @+$23                                  ; $50FF: $20 $21

    ld [hl+], a                                   ; $5101: $22
    ld d, e                                       ; $5102: $53
    ld d, h                                       ; $5103: $54
    ret nz                                        ; $5104: $C0

    pop af                                        ; $5105: $F1
    ret nz                                        ; $5106: $C0

    add d                                         ; $5107: $82
    add d                                         ; $5108: $82
    ld b, b                                       ; $5109: $40
    ld b, e                                       ; $510A: $43
    and l                                         ; $510B: $A5
    ld b, h                                       ; $510C: $44
    ldh [$E1], a                                  ; $510D: $E0 $E1
    ld [c], a                                     ; $510F: $E2
    ld c, b                                       ; $5110: $48
    ld [c], a                                     ; $5111: $E2
    and d                                         ; $5112: $A2
    and e                                         ; $5113: $A3
    ld d, h                                       ; $5114: $54
    nop                                           ; $5115: $00
    ld bc, $4302                                  ; $5116: $01 $02 $43
    ld b, h                                       ; $5119: $44
    ret nz                                        ; $511A: $C0

    pop af                                        ; $511B: $F1
    ret nz                                        ; $511C: $C0

    ld a, b                                       ; $511D: $78
    add d                                         ; $511E: $82
    or h                                          ; $511F: $B4
    ld d, [hl]                                    ; $5120: $56
    ldh a, [$F1]                                  ; $5121: $F0 $F1
    ld a, [c]                                     ; $5123: $F2
    jr c, @-$0C                                   ; $5124: $38 $F2

    pop af                                        ; $5126: $F1
    or e                                          ; $5127: $B3
    ld b, h                                       ; $5128: $44
    db $10                                        ; $5129: $10
    ld de, $5312                                  ; $512A: $11 $12 $53
    ld d, h                                       ; $512D: $54
    ret nz                                        ; $512E: $C0

    pop af                                        ; $512F: $F1
    ret nz                                        ; $5130: $C0

    sbc b                                         ; $5131: $98
    sbc c                                         ; $5132: $99
    call nz, $34C5                                ; $5133: $C4 $C5 $34
    dec [hl]                                      ; $5136: $35
    ld [hl], $34                                  ; $5137: $36 $34
    dec [hl]                                      ; $5139: $35
    ld [hl], $37                                  ; $513A: $36 $37
    ld d, h                                       ; $513C: $54
    jr nz, jr_06D_5160                            ; $513D: $20 $21

    ld [hl+], a                                   ; $513F: $22
    ld b, e                                       ; $5140: $43
    ld b, h                                       ; $5141: $44
    ret nz                                        ; $5142: $C0

    pop af                                        ; $5143: $F1
    ret nz                                        ; $5144: $C0

    xor b                                         ; $5145: $A8
    xor c                                         ; $5146: $A9
    ld [hl], e                                    ; $5147: $73
    push de                                       ; $5148: $D5
    push bc                                       ; $5149: $C5
    add $C7                                       ; $514A: $C6 $C7
    add $C7                                       ; $514C: $C6 $C7
    add e                                         ; $514E: $83
    ld b, a                                       ; $514F: $47
    rra                                           ; $5150: $1F
    nop                                           ; $5151: $00
    ld bc, $5302                                  ; $5152: $01 $02 $53
    ld d, h                                       ; $5155: $54
    ret nz                                        ; $5156: $C0

    pop af                                        ; $5157: $F1
    ret nz                                        ; $5158: $C0

    ld b, a                                       ; $5159: $47
    ld a, b                                       ; $515A: $78
    ld a, c                                       ; $515B: $79
    add d                                         ; $515C: $82
    push de                                       ; $515D: $D5
    sub $D7                                       ; $515E: $D6 $D7

jr_06D_5160:
    sub $D7                                       ; $5160: $D6 $D7
    or h                                          ; $5162: $B4
    or l                                          ; $5163: $B5
    ld b, a                                       ; $5164: $47
    db $10                                        ; $5165: $10
    ld de, $4312                                  ; $5166: $11 $12 $43
    ld [hl], $C0                                  ; $5169: $36 $C0
    pop af                                        ; $516B: $F1
    ret nz                                        ; $516C: $C0

    ld b, a                                       ; $516D: $47
    adc b                                         ; $516E: $88
    adc c                                         ; $516F: $89
    add d                                         ; $5170: $82
    add d                                         ; $5171: $82
    rrca                                          ; $5172: $0F
    and $E7                                       ; $5173: $E6 $E7
    and $E7                                       ; $5175: $E6 $E7
    call nz, Call_06D_47C5                        ; $5177: $C4 $C5 $47
    jr nz, jr_06D_51CA                            ; $517A: $20 $4E

    ld e, b                                       ; $517C: $58
    ld [hl], $0C                                  ; $517D: $36 $0C
    db $DB                                        ; $517F: $DB
    pop af                                        ; $5180: $F1
    ret nz                                        ; $5181: $C0

    add d                                         ; $5182: $82
    ld b, a                                       ; $5183: $47
    inc bc                                        ; $5184: $03
    sbc b                                         ; $5185: $98
    sbc c                                         ; $5186: $99
    ld [hl], e                                    ; $5187: $73
    add e                                         ; $5188: $83
    add d                                         ; $5189: $82
    inc c                                         ; $518A: $0C
    add e                                         ; $518B: $83
    add d                                         ; $518C: $82
    push de                                       ; $518D: $D5
    ld b, a                                       ; $518E: $47
    ld e, l                                       ; $518F: $5D
    ld e, [hl]                                    ; $5190: $5E
    ld e, a                                       ; $5191: $5F
    add hl, bc                                    ; $5192: $09
    inc e                                         ; $5193: $1C
    add hl, bc                                    ; $5194: $09
    pop af                                        ; $5195: $F1
    ret nz                                        ; $5196: $C0

    add d                                         ; $5197: $82
    ld b, a                                       ; $5198: $47
    ld b, $A8                                     ; $5199: $06 $A8
    xor c                                         ; $519B: $A9
    add d                                         ; $519C: $82
    ld [hl], e                                    ; $519D: $73
    add d                                         ; $519E: $82
    ld [hl], e                                    ; $519F: $73
    add d                                         ; $51A0: $82
    add d                                         ; $51A1: $82
    ld a, [bc]                                    ; $51A2: $0A
    sub h                                         ; $51A3: $94
    sub l                                         ; $51A4: $95
    ld l, l                                       ; $51A5: $6D
    ld l, [hl]                                    ; $51A6: $6E
    ld l, a                                       ; $51A7: $6F
    add hl, de                                    ; $51A8: $19
    inc l                                         ; $51A9: $2C
    add hl, de                                    ; $51AA: $19
    pop af                                        ; $51AB: $F1
    ret nz                                        ; $51AC: $C0

    add e                                         ; $51AD: $83
    ld b, a                                       ; $51AE: $47
    ld [bc], a                                    ; $51AF: $02
    ld a, b                                       ; $51B0: $78
    ld a, c                                       ; $51B1: $79
    add e                                         ; $51B2: $83
    add d                                         ; $51B3: $82
    add d                                         ; $51B4: $82
    add e                                         ; $51B5: $83
    dec bc                                        ; $51B6: $0B
    and h                                         ; $51B7: $A4
    and l                                         ; $51B8: $A5
    ld b, [hl]                                    ; $51B9: $46
    ld a, [hl]                                    ; $51BA: $7E
    ld a, a                                       ; $51BB: $7F
    add hl, hl                                    ; $51BC: $29
    dec d                                         ; $51BD: $15
    ld d, $0F                                     ; $51BE: $16 $0F
    db $DB                                        ; $51C0: $DB
    ld b, e                                       ; $51C1: $43
    add d                                         ; $51C2: $82
    ld b, a                                       ; $51C3: $47
    ld b, $88                                     ; $51C4: $06 $88
    adc c                                         ; $51C6: $89
    add d                                         ; $51C7: $82
    add e                                         ; $51C8: $83
    add d                                         ; $51C9: $82

jr_06D_51CA:
    ld [hl], e                                    ; $51CA: $73
    add d                                         ; $51CB: $82
    add d                                         ; $51CC: $82
    inc de                                        ; $51CD: $13
    add [hl]                                      ; $51CE: $86
    or h                                          ; $51CF: $B4
    ld d, [hl]                                    ; $51D0: $56
    dec [hl]                                      ; $51D1: $35
    ld [hl], $F1                                  ; $51D2: $36 $F1
    ret nz                                        ; $51D4: $C0

    inc e                                         ; $51D5: $1C
    add hl, bc                                    ; $51D6: $09
    ld a, [hl-]                                   ; $51D7: $3A
    dec sp                                        ; $51D8: $3B
    inc a                                         ; $51D9: $3C
    ld b, a                                       ; $51DA: $47
    sbc b                                         ; $51DB: $98
    sbc c                                         ; $51DC: $99
    add d                                         ; $51DD: $82
    add e                                         ; $51DE: $83
    ld [hl], e                                    ; $51DF: $73
    add e                                         ; $51E0: $83
    add d                                         ; $51E1: $82
    add d                                         ; $51E2: $82
    ld [bc], a                                    ; $51E3: $02
    ld h, h                                       ; $51E4: $64
    ld h, l                                       ; $51E5: $65
    add e                                         ; $51E6: $83
    ld b, a                                       ; $51E7: $47
    add hl, bc                                    ; $51E8: $09
    ret nz                                        ; $51E9: $C0

    inc l                                         ; $51EA: $2C
    add hl, de                                    ; $51EB: $19
    ld c, d                                       ; $51EC: $4A
    ld c, e                                       ; $51ED: $4B
    ld c, h                                       ; $51EE: $4C
    ld b, a                                       ; $51EF: $47
    xor b                                         ; $51F0: $A8
    xor c                                         ; $51F1: $A9
    add d                                         ; $51F2: $82
    add d                                         ; $51F3: $82
    inc b                                         ; $51F4: $04
    add e                                         ; $51F5: $83
    add d                                         ; $51F6: $82
    ld [hl], h                                    ; $51F7: $74
    ld [hl], l                                    ; $51F8: $75
    add h                                         ; $51F9: $84
    ld b, a                                       ; $51FA: $47
    inc c                                         ; $51FB: $0C
    inc c                                         ; $51FC: $0C
    db $DB                                        ; $51FD: $DB
    dec d                                         ; $51FE: $15
    ld d, $5A                                     ; $51FF: $16 $5A
    ld e, e                                       ; $5201: $5B
    ld e, h                                       ; $5202: $5C
    ld b, a                                       ; $5203: $47
    sbc b                                         ; $5204: $98
    sub a                                         ; $5205: $97
    add d                                         ; $5206: $82
    ld [hl], e                                    ; $5207: $73
    add d                                         ; $5208: $82
    add d                                         ; $5209: $82
    dec d                                         ; $520A: $15
    add h                                         ; $520B: $84
    add l                                         ; $520C: $85
    ld b, a                                       ; $520D: $47
    ld l, d                                       ; $520E: $6A
    ld l, e                                       ; $520F: $6B
    ld l, h                                       ; $5210: $6C
    inc e                                         ; $5211: $1C
    add hl, bc                                    ; $5212: $09
    pop af                                        ; $5213: $F1
    ret nz                                        ; $5214: $C0

    nop                                           ; $5215: $00
    ld bc, $4702                                  ; $5216: $01 $02 $47
    sbc b                                         ; $5219: $98
    and a                                         ; $521A: $A7
    add d                                         ; $521B: $82
    ld [hl], e                                    ; $521C: $73
    add d                                         ; $521D: $82
    sub h                                         ; $521E: $94
    sub l                                         ; $521F: $95
    add d                                         ; $5220: $82
    ld b, a                                       ; $5221: $47
    dec c                                         ; $5222: $0D
    ld a, d                                       ; $5223: $7A
    ld a, e                                       ; $5224: $7B
    ld a, h                                       ; $5225: $7C
    inc l                                         ; $5226: $2C
    add hl, de                                    ; $5227: $19
    pop af                                        ; $5228: $F1
    ret nz                                        ; $5229: $C0

    db $10                                        ; $522A: $10
    ld de, $B812                                  ; $522B: $11 $12 $B8
    cp c                                          ; $522E: $B9
    or a                                          ; $522F: $B7
    add e                                         ; $5230: $83
    add d                                         ; $5231: $82
    ld [bc], a                                    ; $5232: $02
    and h                                         ; $5233: $A4
    and l                                         ; $5234: $A5
    add d                                         ; $5235: $82
    ld b, a                                       ; $5236: $47
    inc c                                         ; $5237: $0C
    adc d                                         ; $5238: $8A
    adc e                                         ; $5239: $8B
    adc h                                         ; $523A: $8C
    dec d                                         ; $523B: $15
    ld d, $0F                                     ; $523C: $16 $0F
    db $DB                                        ; $523E: $DB
    ld d, a                                       ; $523F: $57
    ld c, $22                                     ; $5240: $0E $22
    ret z                                         ; $5242: $C8

    ret                                           ; $5243: $C9


    add e                                         ; $5244: $83
    add d                                         ; $5245: $82
    ld [bc], a                                    ; $5246: $02
    ld [hl], h                                    ; $5247: $74
    ld [hl], l                                    ; $5248: $75
    add e                                         ; $5249: $83
    ld b, a                                       ; $524A: $47
    dec c                                         ; $524B: $0D
    adc l                                         ; $524C: $8D
    adc [hl]                                      ; $524D: $8E
    adc a                                         ; $524E: $8F
    pop af                                        ; $524F: $F1
    ret nz                                        ; $5250: $C0

    inc e                                         ; $5251: $1C
    add hl, bc                                    ; $5252: $09
    dec e                                         ; $5253: $1D
    ld e, $1F                                     ; $5254: $1E $1F
    sbc b                                         ; $5256: $98
    sbc c                                         ; $5257: $99
    ld [hl], e                                    ; $5258: $73
    add d                                         ; $5259: $82
    add d                                         ; $525A: $82
    ld [bc], a                                    ; $525B: $02
    add h                                         ; $525C: $84
    add l                                         ; $525D: $85
    add e                                         ; $525E: $83
    ld b, a                                       ; $525F: $47
    db $10                                        ; $5260: $10
    sbc l                                         ; $5261: $9D
    sbc [hl]                                      ; $5262: $9E
    sbc a                                         ; $5263: $9F
    ld b, a                                       ; $5264: $47
    ret nz                                        ; $5265: $C0

    inc l                                         ; $5266: $2C
    add hl, de                                    ; $5267: $19
    dec l                                         ; $5268: $2D
    ld l, $2F                                     ; $5269: $2E $2F
    xor b                                         ; $526B: $A8
    xor c                                         ; $526C: $A9
    add d                                         ; $526D: $82
    ld [hl], e                                    ; $526E: $73
    sub h                                         ; $526F: $94
    sub l                                         ; $5270: $95
    adc b                                         ; $5271: $88
    ld b, a                                       ; $5272: $47
    ld [$15C0], sp                                ; $5273: $08 $C0 $15
    ld d, $3D                                     ; $5276: $16 $3D
    ld a, $3F                                     ; $5278: $3E $3F
    sbc b                                         ; $527A: $98
    sbc c                                         ; $527B: $99
    add d                                         ; $527C: $82
    add d                                         ; $527D: $82
    ld [bc], a                                    ; $527E: $02
    and h                                         ; $527F: $A4
    and l                                         ; $5280: $A5
    add a                                         ; $5281: $87
    ld b, a                                       ; $5282: $47
    ld [hl-], a                                   ; $5283: $32
    inc c                                         ; $5284: $0C
    db $DB                                        ; $5285: $DB
    pop af                                        ; $5286: $F1
    ret nz                                        ; $5287: $C0

    ld b, l                                       ; $5288: $45
    inc [hl]                                      ; $5289: $34
    halt                                          ; $528A: $76
    xor b                                         ; $528B: $A8
    xor c                                         ; $528C: $A9
    add d                                         ; $528D: $82
    ld [hl], e                                    ; $528E: $73
    add d                                         ; $528F: $82
    or h                                          ; $5290: $B4
    or l                                          ; $5291: $B5
    ld b, a                                       ; $5292: $47
    inc bc                                        ; $5293: $03
    inc b                                         ; $5294: $04

jr_06D_5295:
    ld a, [bc]                                    ; $5295: $0A
    dec bc                                        ; $5296: $0B
    ld a, [bc]                                    ; $5297: $0A
    inc e                                         ; $5298: $1C
    add hl, bc                                    ; $5299: $09
    pop af                                        ; $529A: $F1
    ret nz                                        ; $529B: $C0

    ld d, e                                       ; $529C: $53
    cp b                                          ; $529D: $B8
    cp c                                          ; $529E: $B9
    add a                                         ; $529F: $87
    ld [hl], e                                    ; $52A0: $73
    add d                                         ; $52A1: $82
    ld [hl], e                                    ; $52A2: $73
    add d                                         ; $52A3: $82
    call nz, Call_06D_47C5                        ; $52A4: $C4 $C5 $47
    inc de                                        ; $52A7: $13
    inc d                                         ; $52A8: $14
    ld a, [de]                                    ; $52A9: $1A
    dec de                                        ; $52AA: $1B
    ld a, [de]                                    ; $52AB: $1A
    inc l                                         ; $52AC: $2C
    add hl, de                                    ; $52AD: $19
    pop af                                        ; $52AE: $F1
    ret nz                                        ; $52AF: $C0

    ld b, e                                       ; $52B0: $43
    ret z                                         ; $52B1: $C8

    ret                                           ; $52B2: $C9


    ld [hl], h                                    ; $52B3: $74
    ld h, [hl]                                    ; $52B4: $66
    ld h, a                                       ; $52B5: $67
    add e                                         ; $52B6: $83
    add d                                         ; $52B7: $82
    rla                                           ; $52B8: $17
    push de                                       ; $52B9: $D5
    or h                                          ; $52BA: $B4
    inc hl                                        ; $52BB: $23
    inc h                                         ; $52BC: $24
    ld a, [hl+]                                   ; $52BD: $2A
    dec hl                                        ; $52BE: $2B
    ld a, [hl+]                                   ; $52BF: $2A
    dec d                                         ; $52C0: $15
    ld d, $F1                                     ; $52C1: $16 $F1
    ret nz                                        ; $52C3: $C0

    ld l, b                                       ; $52C4: $68
    ret c                                         ; $52C5: $D8

    add d                                         ; $52C6: $82
    add h                                         ; $52C7: $84
    add l                                         ; $52C8: $85
    ld b, a                                       ; $52C9: $47
    ld a, b                                       ; $52CA: $78
    ld a, c                                       ; $52CB: $79
    ld [hl], e                                    ; $52CC: $73
    add d                                         ; $52CD: $82
    call nz, $83C5                                ; $52CE: $C4 $C5 $83
    ld b, a                                       ; $52D1: $47
    ld [$F146], sp                                ; $52D2: $08 $46 $F1
    ret nz                                        ; $52D5: $C0

    pop af                                        ; $52D6: $F1
    ret nz                                        ; $52D7: $C0

    sbc b                                         ; $52D8: $98
    ld [hl], h                                    ; $52D9: $74
    ld [hl], l                                    ; $52DA: $75
    add e                                         ; $52DB: $83
    ld b, a                                       ; $52DC: $47
    inc e                                         ; $52DD: $1C
    adc b                                         ; $52DE: $88
    adc c                                         ; $52DF: $89
    ld h, [hl]                                    ; $52E0: $66
    ld h, a                                       ; $52E1: $67
    add d                                         ; $52E2: $82
    push de                                       ; $52E3: $D5
    or h                                          ; $52E4: $B4
    or l                                          ; $52E5: $B5
    ld b, a                                       ; $52E6: $47
    ld [hl], $46                                  ; $52E7: $36 $46
    ret nz                                        ; $52E9: $C0

    pop af                                        ; $52EA: $F1
    ret nz                                        ; $52EB: $C0

    xor b                                         ; $52EC: $A8
    add h                                         ; $52ED: $84
    db $EC                                        ; $52EE: $EC
    ld l, d                                       ; $52EF: $6A
    ld l, e                                       ; $52F0: $6B
    ld l, h                                       ; $52F1: $6C
    dec bc                                        ; $52F2: $0B
    ld a, [bc]                                    ; $52F3: $0A
    rlca                                          ; $52F4: $07
    ld [$7978], sp                                ; $52F5: $08 $78 $79
    call nz, $82C5                                ; $52F8: $C4 $C5 $82
    ld b, a                                       ; $52FB: $47
    ld b, b                                       ; $52FC: $40
    ld b, a                                       ; $52FD: $47
    ld b, h                                       ; $52FE: $44
    ret nz                                        ; $52FF: $C0

    pop af                                        ; $5300: $F1
    ret nz                                        ; $5301: $C0

    ld b, e                                       ; $5302: $43
    ld b, a                                       ; $5303: $47
    ld b, h                                       ; $5304: $44
    ld a, d                                       ; $5305: $7A
    ld a, e                                       ; $5306: $7B
    ld a, h                                       ; $5307: $7C
    dec de                                        ; $5308: $1B
    ld a, [de]                                    ; $5309: $1A
    rla                                           ; $530A: $17
    jr jr_06D_5295                                ; $530B: $18 $88

    adc c                                         ; $530D: $89
    add d                                         ; $530E: $82
    push de                                       ; $530F: $D5
    sub l                                         ; $5310: $95
    ld b, a                                       ; $5311: $47
    ld d, h                                       ; $5312: $54
    ret nz                                        ; $5313: $C0

    pop af                                        ; $5314: $F1
    ret nz                                        ; $5315: $C0

    ld d, e                                       ; $5316: $53
    ld b, a                                       ; $5317: $47
    ld d, h                                       ; $5318: $54
    adc d                                         ; $5319: $8A
    adc e                                         ; $531A: $8B
    adc h                                         ; $531B: $8C
    dec hl                                        ; $531C: $2B
    ld a, [hl+]                                   ; $531D: $2A
    daa                                           ; $531E: $27
    jr z, jr_06D_5368                             ; $531F: $28 $47

    sbc b                                         ; $5321: $98
    sbc c                                         ; $5322: $99
    ld [hl], e                                    ; $5323: $73
    and l                                         ; $5324: $A5
    ld b, a                                       ; $5325: $47
    ld b, h                                       ; $5326: $44
    ret nz                                        ; $5327: $C0

    pop af                                        ; $5328: $F1
    ret nz                                        ; $5329: $C0

    ld b, e                                       ; $532A: $43
    ld b, a                                       ; $532B: $47
    ld b, h                                       ; $532C: $44
    nop                                           ; $532D: $00
    ld bc, $4502                                  ; $532E: $01 $02 $45
    inc [hl]                                      ; $5331: $34
    dec [hl]                                      ; $5332: $35
    ld [hl], $47                                  ; $5333: $36 $47
    xor b                                         ; $5335: $A8
    xor c                                         ; $5336: $A9
    add d                                         ; $5337: $82
    or h                                          ; $5338: $B4
    or l                                          ; $5339: $B5
    ld d, h                                       ; $533A: $54
    ret nz                                        ; $533B: $C0

    pop af                                        ; $533C: $F1
    ret nz                                        ; $533D: $C0

    ld d, e                                       ; $533E: $53
    ld b, a                                       ; $533F: $47
    ld d, h                                       ; $5340: $54
    db $10                                        ; $5341: $10
    ld de, $4312                                  ; $5342: $11 $12 $43
    add d                                         ; $5345: $82
    ld b, a                                       ; $5346: $47
    ld [de], a                                    ; $5347: $12
    cp b                                          ; $5348: $B8
    cp c                                          ; $5349: $B9
    add a                                         ; $534A: $87
    add d                                         ; $534B: $82
    ld [hl], e                                    ; $534C: $73
    call nz, Call_06D_44C5                        ; $534D: $C4 $C5 $44
    ret nz                                        ; $5350: $C0

    pop af                                        ; $5351: $F1
    ret nz                                        ; $5352: $C0

    ld b, e                                       ; $5353: $43
    ld b, a                                       ; $5354: $47
    ld b, h                                       ; $5355: $44
    jr nz, jr_06D_5379                            ; $5356: $20 $21

    ld [hl+], a                                   ; $5358: $22
    ld d, e                                       ; $5359: $53
    add d                                         ; $535A: $82
    ld b, a                                       ; $535B: $47
    ld [de], a                                    ; $535C: $12
    ret z                                         ; $535D: $C8

    ret                                           ; $535E: $C9


    ld [hl], e                                    ; $535F: $73
    add d                                         ; $5360: $82
    ld h, [hl]                                    ; $5361: $66
    ld h, a                                       ; $5362: $67
    ld [hl], d                                    ; $5363: $72
    ld d, h                                       ; $5364: $54
    ret nz                                        ; $5365: $C0

    pop af                                        ; $5366: $F1
    ret nz                                        ; $5367: $C0

jr_06D_5368:
    ld d, e                                       ; $5368: $53
    ld b, a                                       ; $5369: $47
    ld d, h                                       ; $536A: $54
    nop                                           ; $536B: $00
    ld bc, $4302                                  ; $536C: $01 $02 $43
    add d                                         ; $536F: $82
    ld b, a                                       ; $5370: $47
    inc b                                         ; $5371: $04
    sbc b                                         ; $5372: $98
    sbc c                                         ; $5373: $99
    ld [hl], h                                    ; $5374: $74
    ld [hl], l                                    ; $5375: $75
    add d                                         ; $5376: $82
    add l                                         ; $5377: $85
    inc c                                         ; $5378: $0C

jr_06D_5379:
    ld b, a                                       ; $5379: $47
    ld b, h                                       ; $537A: $44
    ret nz                                        ; $537B: $C0

    pop af                                        ; $537C: $F1
    ret nz                                        ; $537D: $C0

    ld b, e                                       ; $537E: $43
    ld b, a                                       ; $537F: $47
    ld b, h                                       ; $5380: $44
    db $10                                        ; $5381: $10
    ld de, $5312                                  ; $5382: $11 $12 $53
    add d                                         ; $5385: $82
    ld b, a                                       ; $5386: $47
    inc bc                                        ; $5387: $03
    xor b                                         ; $5388: $A8
    ld h, a                                       ; $5389: $67
    add h                                         ; $538A: $84
    add d                                         ; $538B: $82
    add l                                         ; $538C: $85
    add d                                         ; $538D: $82
    ld b, a                                       ; $538E: $47
    dec bc                                        ; $538F: $0B
    ld d, h                                       ; $5390: $54
    ret nz                                        ; $5391: $C0

    pop af                                        ; $5392: $F1
    ret nz                                        ; $5393: $C0

    ld d, e                                       ; $5394: $53
    ld b, a                                       ; $5395: $47
    ld d, h                                       ; $5396: $54
    jr nz, @+$23                                  ; $5397: $20 $21

    ld [hl+], a                                   ; $5399: $22
    ld b, e                                       ; $539A: $43
    adc c                                         ; $539B: $89
    ld b, a                                       ; $539C: $47
    dec c                                         ; $539D: $0D
    ld b, h                                       ; $539E: $44
    ret nz                                        ; $539F: $C0

    pop af                                        ; $53A0: $F1
    ret nc                                        ; $53A1: $D0

    pop de                                        ; $53A2: $D1
    jp nc, $0091                                  ; $53A3: $D2 $91 $00

    ld bc, $9102                                  ; $53A6: $01 $02 $91
    ld h, c                                       ; $53A9: $61
    reti                                          ; $53AA: $D9


    add e                                         ; $53AB: $83
    ld b, a                                       ; $53AC: $47
    ld de, $90EC                                  ; $53AD: $11 $EC $90
    sub c                                         ; $53B0: $91
    jp nc, $9392                                  ; $53B1: $D2 $92 $93

    pop af                                        ; $53B4: $F1
    ldh [$E1], a                                  ; $53B5: $E0 $E1
    ld [c], a                                     ; $53B7: $E2
    ld sp, hl                                     ; $53B8: $F9
    ld a, [$FC11]                                 ; $53B9: $FA $11 $FC
    db $FD                                        ; $53BC: $FD
    ld [hl], c                                    ; $53BD: $71
    ld b, e                                       ; $53BE: $43
    add e                                         ; $53BF: $83
    ld b, a                                       ; $53C0: $47
    ld de, $A054                                  ; $53C1: $11 $54 $A0
    and c                                         ; $53C4: $A1
    ld [c], a                                     ; $53C5: $E2
    and d                                         ; $53C6: $A2
    and e                                         ; $53C7: $A3
    pop af                                        ; $53C8: $F1
    ldh a, [$F1]                                  ; $53C9: $F0 $F1
    ld a, [c]                                     ; $53CB: $F2
    pop af                                        ; $53CC: $F1
    jp c, $DC01                                   ; $53CD: $DA $01 $DC

    add b                                         ; $53D0: $80
    add c                                         ; $53D1: $81
    ld d, e                                       ; $53D2: $53
    add e                                         ; $53D3: $83
    ld b, a                                       ; $53D4: $47
    ld b, $44                                     ; $53D5: $06 $44
    or b                                          ; $53D7: $B0
    or c                                          ; $53D8: $B1
    ld a, [c]                                     ; $53D9: $F2
    pop af                                        ; $53DA: $F1
    ld a, [c]                                     ; $53DB: $F2
    add l                                         ; $53DC: $85
    pop af                                        ; $53DD: $F1
    ld b, $10                                     ; $53DE: $06 $10
    ld de, $F112                                  ; $53E0: $11 $12 $F1
    ret nz                                        ; $53E3: $C0

    ld b, e                                       ; $53E4: $43
    add e                                         ; $53E5: $83
    ld b, a                                       ; $53E6: $47
    ld [bc], a                                    ; $53E7: $02
    ld b, h                                       ; $53E8: $44
    ret nz                                        ; $53E9: $C0

    add d                                         ; $53EA: $82
    pop af                                        ; $53EB: $F1
    adc c                                         ; $53EC: $89
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    jr z, jr_06D_5459                             ; $53EF: $28 $68

    ld bc, $321D                                  ; $53F1: $01 $1D $32
    ld h, b                                       ; $53F4: $60
    add hl, bc                                    ; $53F5: $09
    ld [bc], a                                    ; $53F6: $02
    or [hl]                                       ; $53F7: $B6
    or a                                          ; $53F8: $B7
    adc h                                         ; $53F9: $8C
    ret c                                         ; $53FA: $D8

    inc c                                         ; $53FB: $0C
    di                                            ; $53FC: $F3
    cp l                                          ; $53FD: $BD
    cp [hl]                                       ; $53FE: $BE
    cp l                                          ; $53FF: $BD
    cp [hl]                                       ; $5400: $BE
    cp a                                          ; $5401: $BF
    cp l                                          ; $5402: $BD
    cp [hl]                                       ; $5403: $BE
    cp a                                          ; $5404: $BF
    cp [hl]                                       ; $5405: $BE
    cp a                                          ; $5406: $BF
    ld a, [c]                                     ; $5407: $F2
    adc [hl]                                      ; $5408: $8E
    ret c                                         ; $5409: $D8

    ld [bc], a                                    ; $540A: $02
    add $C7                                       ; $540B: $C6 $C7
    adc h                                         ; $540D: $8C
    ret c                                         ; $540E: $D8

    inc c                                         ; $540F: $0C
    di                                            ; $5410: $F3
    call $CDCE                                    ; $5411: $CD $CE $CD
    adc $CF                                       ; $5414: $CE $CF
    call $CFCE                                    ; $5416: $CD $CE $CF
    adc $CF                                       ; $5419: $CE $CF
    ld a, [c]                                     ; $541B: $F2
    adc [hl]                                      ; $541C: $8E
    ret c                                         ; $541D: $D8

    add d                                         ; $541E: $82
    ret z                                         ; $541F: $C8

    adc h                                         ; $5420: $8C
    ret c                                         ; $5421: $D8

    inc c                                         ; $5422: $0C
    di                                            ; $5423: $F3
    call $53CE                                    ; $5424: $CD $CE $53
    adc $CF                                       ; $5427: $CE $CF
    call $CFCE                                    ; $5429: $CD $CE $CF
    adc $CF                                       ; $542C: $CE $CF
    ld a, [c]                                     ; $542E: $F2
    adc [hl]                                      ; $542F: $8E
    ret c                                         ; $5430: $D8

    add d                                         ; $5431: $82
    ld e, c                                       ; $5432: $59
    adc h                                         ; $5433: $8C
    ret c                                         ; $5434: $D8

    inc c                                         ; $5435: $0C
    di                                            ; $5436: $F3
    cp l                                          ; $5437: $BD
    cp [hl]                                       ; $5438: $BE
    ld h, e                                       ; $5439: $63
    cp [hl]                                       ; $543A: $BE
    cp a                                          ; $543B: $BF
    cp l                                          ; $543C: $BD
    cp [hl]                                       ; $543D: $BE
    cp a                                          ; $543E: $BF
    cp [hl]                                       ; $543F: $BE
    cp a                                          ; $5440: $BF
    ld a, [c]                                     ; $5441: $F2
    adc [hl]                                      ; $5442: $8E
    ret c                                         ; $5443: $D8

    add d                                         ; $5444: $82
    ld e, c                                       ; $5445: $59
    adc h                                         ; $5446: $8C
    ret c                                         ; $5447: $D8

    inc c                                         ; $5448: $0C
    di                                            ; $5449: $F3
    call Call_06D_73CE                            ; $544A: $CD $CE $73
    adc $CF                                       ; $544D: $CE $CF
    call $CF53                                    ; $544F: $CD $53 $CF
    adc $CF                                       ; $5452: $CE $CF
    ld a, [c]                                     ; $5454: $F2
    sbc h                                         ; $5455: $9C
    ret c                                         ; $5456: $D8

    inc c                                         ; $5457: $0C
    di                                            ; $5458: $F3

jr_06D_5459:
    cp l                                          ; $5459: $BD
    cp [hl]                                       ; $545A: $BE
    cp l                                          ; $545B: $BD
    cp [hl]                                       ; $545C: $BE
    cp a                                          ; $545D: $BF
    cp l                                          ; $545E: $BD
    ld h, e                                       ; $545F: $63
    cp a                                          ; $5460: $BF
    cp [hl]                                       ; $5461: $BE
    cp a                                          ; $5462: $BF
    ld a, [c]                                     ; $5463: $F2
    sbc h                                         ; $5464: $9C
    ret c                                         ; $5465: $D8

    inc c                                         ; $5466: $0C
    di                                            ; $5467: $F3
    call $CDCE                                    ; $5468: $CD $CE $CD
    adc $CF                                       ; $546B: $CE $CF
    call $CF73                                    ; $546D: $CD $73 $CF
    adc $53                                       ; $5470: $CE $53
    ld a, [c]                                     ; $5472: $F2
    sbc h                                         ; $5473: $9C
    ret c                                         ; $5474: $D8

    inc c                                         ; $5475: $0C
    di                                            ; $5476: $F3
    cp l                                          ; $5477: $BD
    cp [hl]                                       ; $5478: $BE
    cp l                                          ; $5479: $BD
    ld d, e                                       ; $547A: $53
    cp a                                          ; $547B: $BF
    cp l                                          ; $547C: $BD
    cp [hl]                                       ; $547D: $BE
    cp a                                          ; $547E: $BF
    cp [hl]                                       ; $547F: $BE
    ld h, e                                       ; $5480: $63
    ld a, [c]                                     ; $5481: $F2
    sbc h                                         ; $5482: $9C
    ret c                                         ; $5483: $D8

    inc c                                         ; $5484: $0C
    di                                            ; $5485: $F3
    call $CDCE                                    ; $5486: $CD $CE $CD
    ld h, e                                       ; $5489: $63
    rst $08                                       ; $548A: $CF
    call $CFCE                                    ; $548B: $CD $CE $CF
    adc $73                                       ; $548E: $CE $73
    ld a, [c]                                     ; $5490: $F2
    sbc h                                         ; $5491: $9C
    ret c                                         ; $5492: $D8

    inc c                                         ; $5493: $0C
    di                                            ; $5494: $F3
    cp l                                          ; $5495: $BD
    cp [hl]                                       ; $5496: $BE
    cp l                                          ; $5497: $BD
    ld [hl], e                                    ; $5498: $73
    cp a                                          ; $5499: $BF
    cp l                                          ; $549A: $BD
    cp [hl]                                       ; $549B: $BE
    ld d, e                                       ; $549C: $53
    cp [hl]                                       ; $549D: $BE
    cp a                                          ; $549E: $BF
    ld a, [c]                                     ; $549F: $F2
    sbc h                                         ; $54A0: $9C
    ret c                                         ; $54A1: $D8

    inc c                                         ; $54A2: $0C
    di                                            ; $54A3: $F3
    call $CDCE                                    ; $54A4: $CD $CE $CD
    adc $CF                                       ; $54A7: $CE $CF
    call Call_06D_63CE                            ; $54A9: $CD $CE $63
    adc $CF                                       ; $54AC: $CE $CF
    ld a, [c]                                     ; $54AE: $F2
    sbc h                                         ; $54AF: $9C
    ret c                                         ; $54B0: $D8

    inc c                                         ; $54B1: $0C
    di                                            ; $54B2: $F3
    cp l                                          ; $54B3: $BD
    cp [hl]                                       ; $54B4: $BE
    cp l                                          ; $54B5: $BD
    cp [hl]                                       ; $54B6: $BE
    cp a                                          ; $54B7: $BF
    cp l                                          ; $54B8: $BD
    cp [hl]                                       ; $54B9: $BE
    ld [hl], e                                    ; $54BA: $73
    cp [hl]                                       ; $54BB: $BE
    cp a                                          ; $54BC: $BF
    ld a, [c]                                     ; $54BD: $F2
    sbc h                                         ; $54BE: $9C
    ret c                                         ; $54BF: $D8

    inc c                                         ; $54C0: $0C
    di                                            ; $54C1: $F3
    call $CDCE                                    ; $54C2: $CD $CE $CD
    adc $CF                                       ; $54C5: $CE $CF
    call $CFCE                                    ; $54C7: $CD $CE $CF
    adc $CF                                       ; $54CA: $CE $CF
    ld a, [c]                                     ; $54CC: $F2
    sbc h                                         ; $54CD: $9C
    ret c                                         ; $54CE: $D8

    inc c                                         ; $54CF: $0C
    di                                            ; $54D0: $F3
    cp l                                          ; $54D1: $BD
    cp [hl]                                       ; $54D2: $BE
    cp l                                          ; $54D3: $BD
    cp [hl]                                       ; $54D4: $BE
    cp a                                          ; $54D5: $BF
    cp l                                          ; $54D6: $BD
    cp [hl]                                       ; $54D7: $BE
    cp a                                          ; $54D8: $BF
    cp [hl]                                       ; $54D9: $BE
    cp a                                          ; $54DA: $BF
    ld a, [c]                                     ; $54DB: $F2
    sbc h                                         ; $54DC: $9C
    ret c                                         ; $54DD: $D8

    inc c                                         ; $54DE: $0C
    di                                            ; $54DF: $F3
    call $CDCE                                    ; $54E0: $CD $CE $CD
    adc $CF                                       ; $54E3: $CE $CF
    call $CFCE                                    ; $54E5: $CD $CE $CF
    adc $CF                                       ; $54E8: $CE $CF
    ld a, [c]                                     ; $54EA: $F2
    sbc h                                         ; $54EB: $9C
    ret c                                         ; $54EC: $D8

    inc c                                         ; $54ED: $0C
    di                                            ; $54EE: $F3
    cp l                                          ; $54EF: $BD
    cp [hl]                                       ; $54F0: $BE
    cp l                                          ; $54F1: $BD
    cp [hl]                                       ; $54F2: $BE
    cp a                                          ; $54F3: $BF
    ld d, e                                       ; $54F4: $53
    cp [hl]                                       ; $54F5: $BE
    cp a                                          ; $54F6: $BF
    cp [hl]                                       ; $54F7: $BE
    cp a                                          ; $54F8: $BF
    ld a, [c]                                     ; $54F9: $F2
    sbc h                                         ; $54FA: $9C
    ret c                                         ; $54FB: $D8

    inc c                                         ; $54FC: $0C
    di                                            ; $54FD: $F3
    cp l                                          ; $54FE: $BD
    cp [hl]                                       ; $54FF: $BE
    cp l                                          ; $5500: $BD
    cp [hl]                                       ; $5501: $BE
    cp a                                          ; $5502: $BF
    ld h, e                                       ; $5503: $63
    cp [hl]                                       ; $5504: $BE
    cp a                                          ; $5505: $BF
    cp [hl]                                       ; $5506: $BE
    cp a                                          ; $5507: $BF
    ld a, [c]                                     ; $5508: $F2
    sbc h                                         ; $5509: $9C
    ret c                                         ; $550A: $D8

    inc c                                         ; $550B: $0C
    di                                            ; $550C: $F3
    call $CD53                                    ; $550D: $CD $53 $CD
    adc $CF                                       ; $5510: $CE $CF
    ld [hl], e                                    ; $5512: $73
    adc $CF                                       ; $5513: $CE $CF
    adc $CF                                       ; $5515: $CE $CF
    ld a, [c]                                     ; $5517: $F2
    sbc h                                         ; $5518: $9C
    ret c                                         ; $5519: $D8

    inc c                                         ; $551A: $0C
    di                                            ; $551B: $F3
    cp l                                          ; $551C: $BD
    ld h, e                                       ; $551D: $63
    cp l                                          ; $551E: $BD
    cp [hl]                                       ; $551F: $BE
    cp a                                          ; $5520: $BF
    cp l                                          ; $5521: $BD
    cp [hl]                                       ; $5522: $BE
    cp a                                          ; $5523: $BF
    cp [hl]                                       ; $5524: $BE
    cp a                                          ; $5525: $BF
    ld a, [c]                                     ; $5526: $F2
    sbc h                                         ; $5527: $9C
    ret c                                         ; $5528: $D8

    inc c                                         ; $5529: $0C
    di                                            ; $552A: $F3
    call $CD73                                    ; $552B: $CD $73 $CD
    adc $CF                                       ; $552E: $CE $CF
    call $CFCE                                    ; $5530: $CD $CE $CF
    adc $CF                                       ; $5533: $CE $CF
    ld a, [c]                                     ; $5535: $F2
    sbc h                                         ; $5536: $9C
    ret c                                         ; $5537: $D8

    inc c                                         ; $5538: $0C
    di                                            ; $5539: $F3
    cp l                                          ; $553A: $BD
    cp [hl]                                       ; $553B: $BE
    cp l                                          ; $553C: $BD
    cp [hl]                                       ; $553D: $BE
    cp a                                          ; $553E: $BF
    cp l                                          ; $553F: $BD
    cp [hl]                                       ; $5540: $BE
    cp a                                          ; $5541: $BF
    cp [hl]                                       ; $5542: $BE
    cp a                                          ; $5543: $BF
    ld a, [c]                                     ; $5544: $F2
    sbc h                                         ; $5545: $9C
    ret c                                         ; $5546: $D8

    inc c                                         ; $5547: $0C
    di                                            ; $5548: $F3
    call $CDCE                                    ; $5549: $CD $CE $CD
    adc $CF                                       ; $554C: $CE $CF
    call $CF53                                    ; $554E: $CD $53 $CF
    adc $CF                                       ; $5551: $CE $CF
    ld a, [c]                                     ; $5553: $F2
    sbc h                                         ; $5554: $9C
    ret c                                         ; $5555: $D8

    inc c                                         ; $5556: $0C
    di                                            ; $5557: $F3
    cp l                                          ; $5558: $BD
    cp [hl]                                       ; $5559: $BE
    cp l                                          ; $555A: $BD
    cp [hl]                                       ; $555B: $BE
    cp a                                          ; $555C: $BF
    cp l                                          ; $555D: $BD
    ld h, e                                       ; $555E: $63
    cp a                                          ; $555F: $BF
    cp [hl]                                       ; $5560: $BE
    cp a                                          ; $5561: $BF
    ld a, [c]                                     ; $5562: $F2
    sbc h                                         ; $5563: $9C
    ret c                                         ; $5564: $D8

    inc c                                         ; $5565: $0C
    di                                            ; $5566: $F3
    call $CDCE                                    ; $5567: $CD $CE $CD
    ld d, e                                       ; $556A: $53
    rst $08                                       ; $556B: $CF
    call $CF73                                    ; $556C: $CD $73 $CF
    adc $CF                                       ; $556F: $CE $CF
    ld a, [c]                                     ; $5571: $F2
    sbc h                                         ; $5572: $9C
    ret c                                         ; $5573: $D8

    inc c                                         ; $5574: $0C
    di                                            ; $5575: $F3
    cp l                                          ; $5576: $BD
    cp [hl]                                       ; $5577: $BE
    cp l                                          ; $5578: $BD
    ld h, e                                       ; $5579: $63
    cp a                                          ; $557A: $BF
    cp l                                          ; $557B: $BD
    cp [hl]                                       ; $557C: $BE
    cp a                                          ; $557D: $BF
    ld d, e                                       ; $557E: $53
    cp a                                          ; $557F: $BF
    ld a, [c]                                     ; $5580: $F2
    sbc h                                         ; $5581: $9C
    ret c                                         ; $5582: $D8

    inc c                                         ; $5583: $0C
    di                                            ; $5584: $F3
    call $CDCE                                    ; $5585: $CD $CE $CD
    ld [hl], e                                    ; $5588: $73
    rst $08                                       ; $5589: $CF
    call $CFCE                                    ; $558A: $CD $CE $CF
    ld h, e                                       ; $558D: $63
    rst $08                                       ; $558E: $CF
    ld a, [c]                                     ; $558F: $F2
    sbc h                                         ; $5590: $9C
    ret c                                         ; $5591: $D8

    inc c                                         ; $5592: $0C
    di                                            ; $5593: $F3
    cp l                                          ; $5594: $BD
    cp [hl]                                       ; $5595: $BE
    cp l                                          ; $5596: $BD
    cp [hl]                                       ; $5597: $BE
    cp a                                          ; $5598: $BF
    cp l                                          ; $5599: $BD
    cp [hl]                                       ; $559A: $BE
    cp a                                          ; $559B: $BF
    ld [hl], e                                    ; $559C: $73
    cp a                                          ; $559D: $BF
    ld a, [c]                                     ; $559E: $F2
    sbc h                                         ; $559F: $9C
    ret c                                         ; $55A0: $D8

    inc c                                         ; $55A1: $0C
    di                                            ; $55A2: $F3
    call $CDCE                                    ; $55A3: $CD $CE $CD
    adc $CF                                       ; $55A6: $CE $CF
    call $CFCE                                    ; $55A8: $CD $CE $CF
    adc $CF                                       ; $55AB: $CE $CF
    ld a, [c]                                     ; $55AD: $F2
    sbc h                                         ; $55AE: $9C
    ret c                                         ; $55AF: $D8

    inc c                                         ; $55B0: $0C
    di                                            ; $55B1: $F3
    cp l                                          ; $55B2: $BD
    cp [hl]                                       ; $55B3: $BE
    cp l                                          ; $55B4: $BD
    cp [hl]                                       ; $55B5: $BE
    cp a                                          ; $55B6: $BF
    cp l                                          ; $55B7: $BD
    cp [hl]                                       ; $55B8: $BE
    cp a                                          ; $55B9: $BF
    cp [hl]                                       ; $55BA: $BE
    cp a                                          ; $55BB: $BF
    ld a, [c]                                     ; $55BC: $F2
    sbc h                                         ; $55BD: $9C
    ret c                                         ; $55BE: $D8

    inc c                                         ; $55BF: $0C
    di                                            ; $55C0: $F3
    call $CDCE                                    ; $55C1: $CD $CE $CD
    adc $CF                                       ; $55C4: $CE $CF
    call $CFCE                                    ; $55C6: $CD $CE $CF
    adc $CF                                       ; $55C9: $CE $CF
    ld a, [c]                                     ; $55CB: $F2

jr_06D_55CC:
    sbc l                                         ; $55CC: $9D
    ret c                                         ; $55CD: $D8

    adc d                                         ; $55CE: $8A
    db $D3                                        ; $55CF: $D3
    ret nz                                        ; $55D0: $C0

    ld c, b                                       ; $55D1: $48
    ret c                                         ; $55D2: $D8

    add [hl]                                      ; $55D3: $86
    db $E3                                        ; $55D4: $E3
    and c                                         ; $55D5: $A1

jr_06D_55D6:
    ret c                                         ; $55D6: $D8

    inc bc                                        ; $55D7: $03
    di                                            ; $55D8: $F3
    ld hl, $8220                                  ; $55D9: $21 $20 $82

jr_06D_55DC:
    ld d, c                                       ; $55DC: $51
    inc bc                                        ; $55DD: $03
    ld hl, $F222                                  ; $55DE: $21 $22 $F2
    and b                                         ; $55E1: $A0
    ret c                                         ; $55E2: $D8

    ld [$31F3], sp                                ; $55E3: $08 $F3 $31
    jr nc, @+$04                                  ; $55E6: $30 $02

    inc bc                                        ; $55E8: $03
    ld sp, $F232                                  ; $55E9: $31 $32 $F2
    and b                                         ; $55EC: $A0
    ret c                                         ; $55ED: $D8

    ld [$41F3], sp                                ; $55EE: $08 $F3 $41
    ld b, b                                       ; $55F1: $40
    ld [de], a                                    ; $55F2: $12
    inc de                                        ; $55F3: $13
    ld b, c                                       ; $55F4: $41
    ld b, d                                       ; $55F5: $42
    ld a, [c]                                     ; $55F6: $F2
    and b                                         ; $55F7: $A0
    ret c                                         ; $55F8: $D8

    ld [$BDF3], sp                                ; $55F9: $08 $F3 $BD
    cp [hl]                                       ; $55FC: $BE
    cp a                                          ; $55FD: $BF
    cp l                                          ; $55FE: $BD

jr_06D_55FF:
    cp [hl]                                       ; $55FF: $BE
    jp $A0F2                                      ; $5600: $C3 $F2 $A0


    ret c                                         ; $5603: $D8

    ld [$CDF3], sp                                ; $5604: $08 $F3 $CD
    cp $CF                                        ; $5607: $FE $CF
    call $CFCE                                    ; $5609: $CD $CE $CF
    ld a, [c]                                     ; $560C: $F2
    and b                                         ; $560D: $A0
    ret c                                         ; $560E: $D8

    ld [$BDF3], sp                                ; $560F: $08 $F3 $BD
    cp [hl]                                       ; $5612: $BE
    cp a                                          ; $5613: $BF
    cp l                                          ; $5614: $BD
    cp [hl]                                       ; $5615: $BE
    cp a                                          ; $5616: $BF
    ld a, [c]                                     ; $5617: $F2
    and b                                         ; $5618: $A0
    ret c                                         ; $5619: $D8

    ld [$C4F3], sp                                ; $561A: $08 $F3 $C4
    adc $CF                                       ; $561D: $CE $CF
    call $CFCE                                    ; $561F: $CD $CE $CF
    ld a, [c]                                     ; $5622: $F2
    and b                                         ; $5623: $A0
    ret c                                         ; $5624: $D8

    ld [$D4F3], sp                                ; $5625: $08 $F3 $D4
    cp [hl]                                       ; $5628: $BE
    cp a                                          ; $5629: $BF

jr_06D_562A:
    cp l                                          ; $562A: $BD
    add hl, de                                    ; $562B: $19
    cp a                                          ; $562C: $BF
    ld a, [c]                                     ; $562D: $F2
    and b                                         ; $562E: $A0
    ret c                                         ; $562F: $D8

    ld [$CDF3], sp                                ; $5630: $08 $F3 $CD
    adc $CF                                       ; $5633: $CE $CF
    call $CFCE                                    ; $5635: $CD $CE $CF
    ld a, [c]                                     ; $5638: $F2
    and c                                         ; $5639: $A1
    ret c                                         ; $563A: $D8

    add [hl]                                      ; $563B: $86
    db $D3                                        ; $563C: $D3
    cp a                                          ; $563D: $BF
    ret c                                         ; $563E: $D8

    sbc h                                         ; $563F: $9C
    db $E3                                        ; $5640: $E3
    adc e                                         ; $5641: $8B
    ret c                                         ; $5642: $D8

    inc b                                         ; $5643: $04
    di                                            ; $5644: $F3
    ld d, c                                       ; $5645: $51
    ld d, c                                       ; $5646: $51
    jr nz, jr_06D_55CC                            ; $5647: $20 $83

    ld d, c                                       ; $5649: $51
    ld bc, $8320                                  ; $564A: $01 $20 $83
    ld d, c                                       ; $564D: $51
    ld [bc], a                                    ; $564E: $02
    ld d, h                                       ; $564F: $54
    jr nz, jr_06D_55D6                            ; $5650: $20 $84

    ld d, c                                       ; $5652: $51
    inc bc                                        ; $5653: $03
    inc b                                         ; $5654: $04
    ld d, c                                       ; $5655: $51
    jr nz, jr_06D_55DC                            ; $5656: $20 $84

    ld d, c                                       ; $5658: $51
    ld [bc], a                                    ; $5659: $02
    add c                                         ; $565A: $81
    jr nz, @-$7B                                  ; $565B: $20 $83

    ld d, c                                       ; $565D: $51
    ld bc, $8AF2                                  ; $565E: $01 $F2 $8A
    ret c                                         ; $5661: $D8

    dec b                                         ; $5662: $05
    di                                            ; $5663: $F3
    ld h, c                                       ; $5664: $61
    ld h, c                                       ; $5665: $61
    jr nc, jr_06D_562A                            ; $5666: $30 $C2

    add d                                         ; $5668: $82
    ld h, c                                       ; $5669: $61
    ld [bc], a                                    ; $566A: $02
    jr nc, @+$0A                                  ; $566B: $30 $08

    add d                                         ; $566D: $82
    add hl, bc                                    ; $566E: $09
    add hl, bc                                    ; $566F: $09
    ld h, h                                       ; $5670: $64
    jr nc, jr_06D_56D4                            ; $5671: $30 $61

    nop                                           ; $5673: $00
    ld bc, $1461                                  ; $5674: $01 $61 $14
    ld h, c                                       ; $5677: $61
    jr nc, jr_06D_55FF                            ; $5678: $30 $85

    ld h, c                                       ; $567A: $61
    ld bc, $8330                                  ; $567B: $01 $30 $83
    ld h, c                                       ; $567E: $61
    ld bc, $8AF2                                  ; $567F: $01 $F2 $8A
    ret c                                         ; $5682: $D8

    inc b                                         ; $5683: $04
    di                                            ; $5684: $F3
    add d                                         ; $5685: $82
    ld [hl], c                                    ; $5686: $71
    ld b, b                                       ; $5687: $40
    add e                                         ; $5688: $83
    ld [hl], c                                    ; $5689: $71
    ld [bc], a                                    ; $568A: $02
    ld b, b                                       ; $568B: $40
    jr @-$7C                                      ; $568C: $18 $82

    ld [hl], c                                    ; $568E: $71
    dec b                                         ; $568F: $05
    ld [hl], h                                    ; $5690: $74
    ld b, b                                       ; $5691: $40
    ld [hl], c                                    ; $5692: $71
    db $10                                        ; $5693: $10
    ld de, $7183                                  ; $5694: $11 $83 $71
    ld [bc], a                                    ; $5697: $02
    ld b, b                                       ; $5698: $40
    jp nz, $7183                                  ; $5699: $C2 $83 $71

    ld [bc], a                                    ; $569C: $02
    ld d, e                                       ; $569D: $53
    ld b, b                                       ; $569E: $40
    add e                                         ; $569F: $83
    ld [hl], c                                    ; $56A0: $71
    ld bc, $8AF2                                  ; $56A1: $01 $F2 $8A
    ret c                                         ; $56A4: $D8

    ld e, $F3                                     ; $56A5: $1E $F3
    cp l                                          ; $56A7: $BD
    ld d, e                                       ; $56A8: $53
    cp a                                          ; $56A9: $BF
    cp l                                          ; $56AA: $BD
    cp [hl]                                       ; $56AB: $BE
    cp a                                          ; $56AC: $BF
    cp l                                          ; $56AD: $BD
    cp [hl]                                       ; $56AE: $BE
    cp a                                          ; $56AF: $BF
    cp l                                          ; $56B0: $BD
    cp [hl]                                       ; $56B1: $BE
    cp a                                          ; $56B2: $BF
    ld d, e                                       ; $56B3: $53
    cp [hl]                                       ; $56B4: $BE
    cp a                                          ; $56B5: $BF
    cp l                                          ; $56B6: $BD
    cp [hl]                                       ; $56B7: $BE
    cp a                                          ; $56B8: $BF
    cp l                                          ; $56B9: $BD
    cp [hl]                                       ; $56BA: $BE
    cp a                                          ; $56BB: $BF
    cp l                                          ; $56BC: $BD
    cp [hl]                                       ; $56BD: $BE
    ld h, e                                       ; $56BE: $63
    cp l                                          ; $56BF: $BD
    cp [hl]                                       ; $56C0: $BE
    cp l                                          ; $56C1: $BD
    cp [hl]                                       ; $56C2: $BE
    ld a, [c]                                     ; $56C3: $F2
    adc d                                         ; $56C4: $8A
    ret c                                         ; $56C5: $D8

    dec de                                        ; $56C6: $1B
    di                                            ; $56C7: $F3
    cp [hl]                                       ; $56C8: $BE
    ld h, e                                       ; $56C9: $63
    ld l, d                                       ; $56CA: $6A
    ld d, e                                       ; $56CB: $53
    ld l, h                                       ; $56CC: $6C
    ld l, d                                       ; $56CD: $6A
    ld l, e                                       ; $56CE: $6B
    ld l, h                                       ; $56CF: $6C
    cp l                                          ; $56D0: $BD
    ld d, e                                       ; $56D1: $53
    cp a                                          ; $56D2: $BF
    ld l, d                                       ; $56D3: $6A

jr_06D_56D4:
    ld h, e                                       ; $56D4: $63
    ld l, h                                       ; $56D5: $6C
    ld l, d                                       ; $56D6: $6A
    ld l, e                                       ; $56D7: $6B
    ld d, e                                       ; $56D8: $53
    cp l                                          ; $56D9: $BD
    cp [hl]                                       ; $56DA: $BE
    cp a                                          ; $56DB: $BF
    ld l, d                                       ; $56DC: $6A
    ld l, e                                       ; $56DD: $6B
    ld l, h                                       ; $56DE: $6C
    ld [hl], e                                    ; $56DF: $73
    ld l, e                                       ; $56E0: $6B
    ld l, h                                       ; $56E1: $6C
    add d                                         ; $56E2: $82
    adc $01                                       ; $56E3: $CE $01
    ld a, [c]                                     ; $56E5: $F2
    adc d                                         ; $56E6: $8A
    ret c                                         ; $56E7: $D8

    ld e, $F3                                     ; $56E8: $1E $F3
    cp [hl]                                       ; $56EA: $BE
    ld [hl], e                                    ; $56EB: $73
    ld a, d                                       ; $56EC: $7A
    ld h, e                                       ; $56ED: $63
    ld a, h                                       ; $56EE: $7C
    ld a, d                                       ; $56EF: $7A
    ld a, e                                       ; $56F0: $7B
    ld a, h                                       ; $56F1: $7C
    cp l                                          ; $56F2: $BD
    ld h, e                                       ; $56F3: $63
    cp a                                          ; $56F4: $BF
    ld a, d                                       ; $56F5: $7A
    ld [hl], e                                    ; $56F6: $73
    ld a, h                                       ; $56F7: $7C
    ld a, d                                       ; $56F8: $7A
    ld a, e                                       ; $56F9: $7B
    ld h, e                                       ; $56FA: $63
    cp l                                          ; $56FB: $BD
    cp [hl]                                       ; $56FC: $BE
    ld d, e                                       ; $56FD: $53
    ld a, d                                       ; $56FE: $7A
    ld a, e                                       ; $56FF: $7B
    ld a, h                                       ; $5700: $7C
    ld a, d                                       ; $5701: $7A
    ld d, e                                       ; $5702: $53
    ld a, h                                       ; $5703: $7C
    cp l                                          ; $5704: $BD
    cp [hl]                                       ; $5705: $BE
    ld a, [c]                                     ; $5706: $F2
    adc d                                         ; $5707: $8A
    ret c                                         ; $5708: $D8

    ld e, $F3                                     ; $5709: $1E $F3
    cp [hl]                                       ; $570B: $BE
    cp a                                          ; $570C: $BF
    ld l, d                                       ; $570D: $6A
    ld [hl], e                                    ; $570E: $73
    ld l, h                                       ; $570F: $6C
    ld l, d                                       ; $5710: $6A
    ld l, e                                       ; $5711: $6B
    ld l, h                                       ; $5712: $6C
    cp l                                          ; $5713: $BD
    ld [hl], e                                    ; $5714: $73
    cp a                                          ; $5715: $BF
    ld l, d                                       ; $5716: $6A
    ld l, e                                       ; $5717: $6B
    ld l, h                                       ; $5718: $6C
    ld d, e                                       ; $5719: $53
    ld l, e                                       ; $571A: $6B
    ld [hl], e                                    ; $571B: $73
    cp l                                          ; $571C: $BD
    cp [hl]                                       ; $571D: $BE
    ld h, e                                       ; $571E: $63
    ld l, d                                       ; $571F: $6A
    ld l, e                                       ; $5720: $6B
    ld l, h                                       ; $5721: $6C
    ld l, d                                       ; $5722: $6A
    ld h, e                                       ; $5723: $63
    ld l, h                                       ; $5724: $6C
    cp l                                          ; $5725: $BD
    cp [hl]                                       ; $5726: $BE
    ld a, [c]                                     ; $5727: $F2
    adc d                                         ; $5728: $8A
    ret c                                         ; $5729: $D8

    dec de                                        ; $572A: $1B
    di                                            ; $572B: $F3
    ld d, e                                       ; $572C: $53
    cp a                                          ; $572D: $BF
    ld a, d                                       ; $572E: $7A
    ld a, e                                       ; $572F: $7B
    ld a, h                                       ; $5730: $7C
    ld a, d                                       ; $5731: $7A
    ld d, e                                       ; $5732: $53
    ld a, h                                       ; $5733: $7C
    cp l                                          ; $5734: $BD
    cp [hl]                                       ; $5735: $BE
    cp a                                          ; $5736: $BF
    ld a, d                                       ; $5737: $7A
    ld a, e                                       ; $5738: $7B
    ld a, h                                       ; $5739: $7C
    ld h, e                                       ; $573A: $63
    ld a, e                                       ; $573B: $7B
    ld a, h                                       ; $573C: $7C
    cp l                                          ; $573D: $BD
    cp [hl]                                       ; $573E: $BE
    ld [hl], e                                    ; $573F: $73
    ld a, d                                       ; $5740: $7A
    ld a, e                                       ; $5741: $7B
    ld a, h                                       ; $5742: $7C
    ld a, d                                       ; $5743: $7A
    ld [hl], e                                    ; $5744: $73
    ld a, h                                       ; $5745: $7C
    add d                                         ; $5746: $82
    adc $01                                       ; $5747: $CE $01
    ld a, [c]                                     ; $5749: $F2
    adc d                                         ; $574A: $8A
    ret c                                         ; $574B: $D8

    ld e, $F3                                     ; $574C: $1E $F3
    ld h, e                                       ; $574E: $63
    cp [hl]                                       ; $574F: $BE
    cp a                                          ; $5750: $BF
    cp l                                          ; $5751: $BD
    cp [hl]                                       ; $5752: $BE
    cp a                                          ; $5753: $BF
    ld h, e                                       ; $5754: $63
    cp [hl]                                       ; $5755: $BE
    cp a                                          ; $5756: $BF
    cp l                                          ; $5757: $BD
    cp [hl]                                       ; $5758: $BE
    cp a                                          ; $5759: $BF
    cp l                                          ; $575A: $BD
    cp [hl]                                       ; $575B: $BE
    ld [hl], e                                    ; $575C: $73
    call $BEBD                                    ; $575D: $CD $BD $BE
    cp a                                          ; $5760: $BF
    cp l                                          ; $5761: $BD
    cp [hl]                                       ; $5762: $BE
    cp a                                          ; $5763: $BF
    call $BEBD                                    ; $5764: $CD $BD $BE
    cp a                                          ; $5767: $BF
    cp l                                          ; $5768: $BD
    cp [hl]                                       ; $5769: $BE
    ld a, [c]                                     ; $576A: $F2
    adc d                                         ; $576B: $8A
    ret c                                         ; $576C: $D8

    ld [de], a                                    ; $576D: $12
    di                                            ; $576E: $F3
    ld [hl], e                                    ; $576F: $73
    cp a                                          ; $5770: $BF
    cp l                                          ; $5771: $BD
    cp [hl]                                       ; $5772: $BE
    cp a                                          ; $5773: $BF
    cp l                                          ; $5774: $BD
    ld [hl], e                                    ; $5775: $73
    cp a                                          ; $5776: $BF
    cp l                                          ; $5777: $BD
    cp [hl]                                       ; $5778: $BE
    cp a                                          ; $5779: $BF
    cp l                                          ; $577A: $BD
    cp [hl]                                       ; $577B: $BE
    cp a                                          ; $577C: $BF
    cp l                                          ; $577D: $BD
    cp [hl]                                       ; $577E: $BE
    cp a                                          ; $577F: $BF
    add d                                         ; $5780: $82
    cp l                                          ; $5781: $BD
    ld a, [bc]                                    ; $5782: $0A
    cp [hl]                                       ; $5783: $BE
    cp a                                          ; $5784: $BF
    cp l                                          ; $5785: $BD
    cp [hl]                                       ; $5786: $BE
    cp a                                          ; $5787: $BF
    adc $BD                                       ; $5788: $CE $BD
    cp [hl]                                       ; $578A: $BE
    cp a                                          ; $578B: $BF
    ld a, [c]                                     ; $578C: $F2
    adc e                                         ; $578D: $8B
    ret c                                         ; $578E: $D8

    add d                                         ; $578F: $82
    db $D3                                        ; $5790: $D3
    inc b                                         ; $5791: $04
    push hl                                       ; $5792: $E5
    adc $CE                                       ; $5793: $CE $CE
    db $E4                                        ; $5795: $E4
    sub b                                         ; $5796: $90
    db $D3                                        ; $5797: $D3
    inc b                                         ; $5798: $04
    push hl                                       ; $5799: $E5
    call $E4CE                                    ; $579A: $CD $CE $E4
    add d                                         ; $579D: $82
    db $D3                                        ; $579E: $D3
    adc [hl]                                      ; $579F: $8E
    ret c                                         ; $57A0: $D8

    inc b                                         ; $57A1: $04
    di                                            ; $57A2: $F3
    call $F2CE                                    ; $57A3: $CD $CE $F2
    sub b                                         ; $57A6: $90
    ld e, c                                       ; $57A7: $59
    inc b                                         ; $57A8: $04
    di                                            ; $57A9: $F3
    call $F2CE                                    ; $57AA: $CD $CE $F2
    sub b                                         ; $57AD: $90
    ret c                                         ; $57AE: $D8

    inc b                                         ; $57AF: $04
    di                                            ; $57B0: $F3
    call $F2CE                                    ; $57B1: $CD $CE $F2
    sub b                                         ; $57B4: $90
    ld e, c                                       ; $57B5: $59
    inc b                                         ; $57B6: $04
    di                                            ; $57B7: $F3
    call $F2CE                                    ; $57B8: $CD $CE $F2
    sub b                                         ; $57BB: $90
    ret c                                         ; $57BC: $D8

    inc b                                         ; $57BD: $04
    di                                            ; $57BE: $F3
    call $F2CE                                    ; $57BF: $CD $CE $F2
    sub b                                         ; $57C2: $90
    ld e, c                                       ; $57C3: $59
    inc b                                         ; $57C4: $04
    di                                            ; $57C5: $F3
    call $F2CE                                    ; $57C6: $CD $CE $F2
    sub b                                         ; $57C9: $90
    ret c                                         ; $57CA: $D8

    inc b                                         ; $57CB: $04
    di                                            ; $57CC: $F3
    call $F2CE                                    ; $57CD: $CD $CE $F2
    sub b                                         ; $57D0: $90
    ld e, c                                       ; $57D1: $59
    inc b                                         ; $57D2: $04
    di                                            ; $57D3: $F3
    call $F2CE                                    ; $57D4: $CD $CE $F2
    adc b                                         ; $57D7: $88
    ret c                                         ; $57D8: $D8

    nop                                           ; $57D9: $00
    ld e, $0E                                     ; $57DA: $1E $0E
    ld bc, $1E13                                  ; $57DC: $01 $13 $1E
    or b                                          ; $57DF: $B0
    inc b                                         ; $57E0: $04
    ld [bc], a                                    ; $57E1: $02
    ld l, [hl]                                    ; $57E2: $6E
    ld l, a                                       ; $57E3: $6F
    add d                                         ; $57E4: $82
    inc hl                                        ; $57E5: $23
    ld [bc], a                                    ; $57E6: $02
    ld l, h                                       ; $57E7: $6C
    ld l, l                                       ; $57E8: $6D
    adc h                                         ; $57E9: $8C
    sbc c                                         ; $57EA: $99
    dec b                                         ; $57EB: $05
    ld [$2818], sp                                ; $57EC: $08 $18 $28
    jr c, jr_06D_5865                             ; $57EF: $38 $74

    add a                                         ; $57F1: $87
    sbc c                                         ; $57F2: $99

jr_06D_57F3:
    ld [bc], a                                    ; $57F3: $02
    ld a, [hl]                                    ; $57F4: $7E
    ld a, a                                       ; $57F5: $7F
    add d                                         ; $57F6: $82
    inc sp                                        ; $57F7: $33
    ld [bc], a                                    ; $57F8: $02
    ld a, h                                       ; $57F9: $7C
    ld a, l                                       ; $57FA: $7D
    adc e                                         ; $57FB: $8B
    sbc c                                         ; $57FC: $99
    ld b, $08                                     ; $57FD: $06 $08
    jr jr_06D_5829                                ; $57FF: $18 $28

    jr c, jr_06D_5877                             ; $5801: $38 $74

    add h                                         ; $5803: $84
    add a                                         ; $5804: $87
    sbc c                                         ; $5805: $99
    ld [bc], a                                    ; $5806: $02
    adc [hl]                                      ; $5807: $8E
    adc a                                         ; $5808: $8F

jr_06D_5809:
    add d                                         ; $5809: $82
    ld b, e                                       ; $580A: $43
    ld [bc], a                                    ; $580B: $02
    adc h                                         ; $580C: $8C
    adc l                                         ; $580D: $8D
    adc d                                         ; $580E: $8A
    sbc c                                         ; $580F: $99
    ld b, $08                                     ; $5810: $06 $08
    jr jr_06D_583C                                ; $5812: $18 $28

    jr c, jr_06D_588A                             ; $5814: $38 $74

    add h                                         ; $5816: $84
    adc b                                         ; $5817: $88
    sbc c                                         ; $5818: $99
    rlca                                          ; $5819: $07
    ld d, $17                                     ; $581A: $16 $17
    rrca                                          ; $581C: $0F
    ld a, [c]                                     ; $581D: $F2
    jr nz, jr_06D_5841                            ; $581E: $20 $21

    add hl, bc                                    ; $5820: $09
    adc b                                         ; $5821: $88
    sbc c                                         ; $5822: $99
    ld b, $08                                     ; $5823: $06 $08
    jr @+$2A                                      ; $5825: $18 $28

    jr c, @-$7B                                   ; $5827: $38 $83

jr_06D_5829:
    add h                                         ; $5829: $84
    adc c                                         ; $582A: $89
    sbc c                                         ; $582B: $99
    ld [bc], a                                    ; $582C: $02
    ld d, $17                                     ; $582D: $16 $17
    add d                                         ; $582F: $82
    rrca                                          ; $5830: $0F
    inc b                                         ; $5831: $04
    jr nc, jr_06D_5865                            ; $5832: $30 $31

    add hl, de                                    ; $5834: $19
    ld [de], a                                    ; $5835: $12
    add e                                         ; $5836: $83
    sbc c                                         ; $5837: $99
    add hl, bc                                    ; $5838: $09
    ld l, a                                       ; $5839: $6F
    inc hl                                        ; $583A: $23
    inc hl                                        ; $583B: $23

jr_06D_583C:
    dec h                                         ; $583C: $25
    ld h, $28                                     ; $583D: $26 $28
    jr c, jr_06D_57F3                             ; $583F: $38 $B2

jr_06D_5841:
    or e                                          ; $5841: $B3
    adc d                                         ; $5842: $8A
    sbc c                                         ; $5843: $99
    ld [bc], a                                    ; $5844: $02
    ld d, $17                                     ; $5845: $16 $17
    add d                                         ; $5847: $82
    rrca                                          ; $5848: $0F
    inc b                                         ; $5849: $04
    ld b, b                                       ; $584A: $40
    ld b, c                                       ; $584B: $41
    db $10                                        ; $584C: $10
    ld de, $9982                                  ; $584D: $11 $82 $99
    ld [bc], a                                    ; $5850: $02
    ld [$827F], sp                                ; $5851: $08 $7F $82
    inc sp                                        ; $5854: $33
    ld b, $35                                     ; $5855: $06 $35
    ld [hl], $38                                  ; $5857: $36 $38
    pop hl                                        ; $5859: $E1
    or d                                          ; $585A: $B2
    or e                                          ; $585B: $B3
    adc d                                         ; $585C: $8A
    sbc c                                         ; $585D: $99
    inc c                                         ; $585E: $0C
    ld d, $17                                     ; $585F: $16 $17
    cp [hl]                                       ; $5861: $BE
    ld h, b                                       ; $5862: $60
    ld h, c                                       ; $5863: $61
    rrca                                          ; $5864: $0F

jr_06D_5865:
    db $10                                        ; $5865: $10
    ld de, $1599                                  ; $5866: $11 $99 $15
    jr jr_06D_5893                                ; $5869: $18 $28

    add d                                         ; $586B: $82
    ld b, e                                       ; $586C: $43
    ld b, $45                                     ; $586D: $06 $45
    ld b, [hl]                                    ; $586F: $46
    ld b, a                                       ; $5870: $47
    rrca                                          ; $5871: $0F
    ld [hl], h                                    ; $5872: $74
    or e                                          ; $5873: $B3
    adc d                                         ; $5874: $8A
    sbc c                                         ; $5875: $99
    inc c                                         ; $5876: $0C

jr_06D_5877:
    ld d, $17                                     ; $5877: $16 $17
    rrca                                          ; $5879: $0F
    ld [hl], b                                    ; $587A: $70
    ld [hl], c                                    ; $587B: $71
    cp [hl]                                       ; $587C: $BE
    jr nz, jr_06D_58A0                            ; $587D: $20 $21

    dec h                                         ; $587F: $25
    ld h, $28                                     ; $5880: $26 $28
    jr c, jr_06D_5809                             ; $5882: $38 $85

    rrca                                          ; $5884: $0F
    ld [bc], a                                    ; $5885: $02
    add e                                         ; $5886: $83
    add h                                         ; $5887: $84
    adc e                                         ; $5888: $8B
    sbc c                                         ; $5889: $99

jr_06D_588A:
    inc c                                         ; $588A: $0C
    ld a, [bc]                                    ; $588B: $0A
    dec e                                         ; $588C: $1D
    inc c                                         ; $588D: $0C
    push bc                                       ; $588E: $C5
    sub l                                         ; $588F: $95
    rrca                                          ; $5890: $0F
    jr nc, jr_06D_58C4                            ; $5891: $30 $31

jr_06D_5893:
    dec [hl]                                      ; $5893: $35
    ld [hl], $38                                  ; $5894: $36 $38
    rst $18                                       ; $5896: $DF
    add d                                         ; $5897: $82
    rrca                                          ; $5898: $0F
    inc b                                         ; $5899: $04
    ld [hl], h                                    ; $589A: $74
    ld [hl], a                                    ; $589B: $77
    ld a, b                                       ; $589C: $78
    sub e                                         ; $589D: $93
    add h                                         ; $589E: $84
    sbc c                                         ; $589F: $99

jr_06D_58A0:
    inc b                                         ; $58A0: $04
    sub h                                         ; $58A1: $94
    cp h                                          ; $58A2: $BC
    rst $10                                       ; $58A3: $D7
    jp $9985                                      ; $58A4: $C3 $85 $99


    ld a, [bc]                                    ; $58A7: $0A
    ld a, [bc]                                    ; $58A8: $0A
    ld b, $07                                     ; $58A9: $06 $07
    rrca                                          ; $58AB: $0F
    pop af                                        ; $58AC: $F1
    ld b, b                                       ; $58AD: $40
    ld b, c                                       ; $58AE: $41
    ld b, l                                       ; $58AF: $45
    ld b, [hl]                                    ; $58B0: $46
    ld b, a                                       ; $58B1: $47
    add d                                         ; $58B2: $82
    rrca                                          ; $58B3: $0F
    inc b                                         ; $58B4: $04
    add e                                         ; $58B5: $83
    add h                                         ; $58B6: $84
    add a                                         ; $58B7: $87
    adc b                                         ; $58B8: $88
    add h                                         ; $58B9: $84
    sbc c                                         ; $58BA: $99
    ld b, $CA                                     ; $58BB: $06 $CA
    and h                                         ; $58BD: $A4
    call z, $D3E7                                 ; $58BE: $CC $E7 $D3
    jp $9985                                      ; $58C1: $C3 $85 $99


jr_06D_58C4:
    dec b                                         ; $58C4: $05
    ld d, $17                                     ; $58C5: $16 $17
    rrca                                          ; $58C7: $0F
    add b                                         ; $58C8: $80
    add c                                         ; $58C9: $81
    add e                                         ; $58CA: $83
    rrca                                          ; $58CB: $0F
    inc b                                         ; $58CC: $04
    ld [c], a                                     ; $58CD: $E2
    rrca                                          ; $58CE: $0F
    jp nz, $86C3                                  ; $58CF: $C2 $C3 $86

    sbc c                                         ; $58D2: $99
    ld a, [bc]                                    ; $58D3: $0A
    jp z, $EADA                                   ; $58D4: $CA $DA $EA

    or $F7                                        ; $58D7: $F6 $F7
    db $E3                                        ; $58D9: $E3
    db $D3                                        ; $58DA: $D3
    call nc, $D7D6                                ; $58DB: $D4 $D6 $D7
    add d                                         ; $58DE: $82
    sbc c                                         ; $58DF: $99
    dec b                                         ; $58E0: $05
    ld d, $17                                     ; $58E1: $16 $17
    rrca                                          ; $58E3: $0F
    sub b                                         ; $58E4: $90
    sub c                                         ; $58E5: $91
    add l                                         ; $58E6: $85
    rrca                                          ; $58E7: $0F
    inc bc                                        ; $58E8: $03
    jp nc, $C3D3                                  ; $58E9: $D2 $D3 $C3

    add h                                         ; $58EC: $84
    sbc c                                         ; $58ED: $99
    dec bc                                        ; $58EE: $0B
    jp z, $EADA                                   ; $58EF: $CA $DA $EA

    ld a, [$0FE1]                                 ; $58F2: $FA $E1 $0F
    di                                            ; $58F5: $F3
    db $E3                                        ; $58F6: $E3
    db $E4                                        ; $58F7: $E4
    and $E7                                       ; $58F8: $E6 $E7
    add d                                         ; $58FA: $82
    sbc c                                         ; $58FB: $99
    add hl, bc                                    ; $58FC: $09
    ld d, $17                                     ; $58FD: $16 $17
    rrca                                          ; $58FF: $0F
    and b                                         ; $5900: $A0
    and c                                         ; $5901: $A1
    sub l                                         ; $5902: $95
    sub [hl]                                      ; $5903: $96
    sub a                                         ; $5904: $97
    sbc b                                         ; $5905: $98
    add d                                         ; $5906: $82
    rrca                                          ; $5907: $0F
    add hl, bc                                    ; $5908: $09
    db $E3                                        ; $5909: $E3
    db $D3                                        ; $590A: $D3
    call nc, $D6D5                                ; $590B: $D4 $D5 $D6
    rst $10                                       ; $590E: $D7
    jp c, $FAEA                                   ; $590F: $DA $EA $FA

    add d                                         ; $5912: $82
    rrca                                          ; $5913: $0F
    inc b                                         ; $5914: $04
    add b                                         ; $5915: $80
    add c                                         ; $5916: $81
    nop                                           ; $5917: $00
    ld bc, $0282                                  ; $5918: $01 $82 $02
    add d                                         ; $591B: $82
    sbc c                                         ; $591C: $99
    inc bc                                        ; $591D: $03
    ld a, [bc]                                    ; $591E: $0A
    dec e                                         ; $591F: $1D
    inc c                                         ; $5920: $0C
    add d                                         ; $5921: $82
    rrca                                          ; $5922: $0F
    ld c, $A5                                     ; $5923: $0E $A5
    and [hl]                                      ; $5925: $A6
    and a                                         ; $5926: $A7
    xor b                                         ; $5927: $A8
    xor c                                         ; $5928: $A9
    rrca                                          ; $5929: $0F
    di                                            ; $592A: $F3
    db $E3                                        ; $592B: $E3
    db $E4                                        ; $592C: $E4
    push hl                                       ; $592D: $E5
    and $E7                                       ; $592E: $E6 $E7
    ld [$82FA], a                                 ; $5930: $EA $FA $82
    rrca                                          ; $5933: $0F
    dec b                                         ; $5934: $05
    cp [hl]                                       ; $5935: $BE
    sub b                                         ; $5936: $90
    sub c                                         ; $5937: $91
    db $10                                        ; $5938: $10
    ld de, $9985                                  ; $5939: $11 $85 $99
    add hl, bc                                    ; $593C: $09
    ld a, [bc]                                    ; $593D: $0A
    dec bc                                        ; $593E: $0B
    inc c                                         ; $593F: $0C
    rrca                                          ; $5940: $0F
    or l                                          ; $5941: $B5
    or [hl]                                       ; $5942: $B6
    or a                                          ; $5943: $B7
    cp b                                          ; $5944: $B8
    cp c                                          ; $5945: $B9
    add d                                         ; $5946: $82
    rrca                                          ; $5947: $0F
    ld c, $F3                                     ; $5948: $0E $F3
    db $F4                                        ; $594A: $F4
    push af                                       ; $594B: $F5
    or $F7                                        ; $594C: $F6 $F7
    ld a, [$600F]                                 ; $594E: $FA $0F $60
    ld h, c                                       ; $5951: $61
    rrca                                          ; $5952: $0F
    and b                                         ; $5953: $A0
    and c                                         ; $5954: $A1
    db $10                                        ; $5955: $10
    ld de, $9987                                  ; $5956: $11 $87 $99
    rlca                                          ; $5959: $07
    dec bc                                        ; $595A: $0B
    inc c                                         ; $595B: $0C
    push bc                                       ; $595C: $C5
    add $C7                                       ; $595D: $C6 $C7
    ret z                                         ; $595F: $C8

    ret                                           ; $5960: $C9


    add d                                         ; $5961: $82
    rrca                                          ; $5962: $0F
    inc bc                                        ; $5963: $03
    pop af                                        ; $5964: $F1
    add b                                         ; $5965: $80
    add c                                         ; $5966: $81
    add h                                         ; $5967: $84
    rrca                                          ; $5968: $0F
    ld [bc], a                                    ; $5969: $02
    ld [hl], b                                    ; $596A: $70
    ld [hl], c                                    ; $596B: $71
    add e                                         ; $596C: $83
    rrca                                          ; $596D: $0F
    ld [bc], a                                    ; $596E: $02
    ld c, h                                       ; $596F: $4C
    ld c, l                                       ; $5970: $4D
    add a                                         ; $5971: $87
    sbc c                                         ; $5972: $99
    inc bc                                        ; $5973: $03
    ld a, [bc]                                    ; $5974: $0A
    ld b, $07                                     ; $5975: $06 $07
    add h                                         ; $5977: $84
    rrca                                          ; $5978: $0F
    db $10                                        ; $5979: $10
    cp [hl]                                       ; $597A: $BE
    rrca                                          ; $597B: $0F
    rrca                                          ; $597C: $0F
    sub b                                         ; $597D: $90
    sub c                                         ; $597E: $91
    rrca                                          ; $597F: $0F
    cp [hl]                                       ; $5980: $BE
    rst $18                                       ; $5981: $DF
    ld [c], a                                     ; $5982: $E2
    push bc                                       ; $5983: $C5
    sub l                                         ; $5984: $95
    nop                                           ; $5985: $00
    ld bc, $5C02                                  ; $5986: $01 $02 $5C
    ld e, l                                       ; $5989: $5D
    adc b                                         ; $598A: $88
    sbc c                                         ; $598B: $99
    ld [bc], a                                    ; $598C: $02
    ld d, $17                                     ; $598D: $16 $17
    add e                                         ; $598F: $83
    rrca                                          ; $5990: $0F
    ld [bc], a                                    ; $5991: $02
    ld h, b                                       ; $5992: $60
    ld h, c                                       ; $5993: $61
    add d                                         ; $5994: $82
    rrca                                          ; $5995: $0F
    ld [bc], a                                    ; $5996: $02
    and b                                         ; $5997: $A0
    and c                                         ; $5998: $A1
    add l                                         ; $5999: $85
    rrca                                          ; $599A: $0F
    inc bc                                        ; $599B: $03
    ld a, [de]                                    ; $599C: $1A
    dec c                                         ; $599D: $0D
    inc e                                         ; $599E: $1C
    adc d                                         ; $599F: $8A
    sbc c                                         ; $59A0: $99
    add hl, bc                                    ; $59A1: $09
    ld [$2726], sp                                ; $59A2: $08 $26 $27
    rrca                                          ; $59A5: $0F
    pop af                                        ; $59A6: $F1
    rrca                                          ; $59A7: $0F
    ld [hl], b                                    ; $59A8: $70
    ld [hl], c                                    ; $59A9: $71
    cp [hl]                                       ; $59AA: $BE
    add [hl]                                      ; $59AB: $86
    rrca                                          ; $59AC: $0F
    inc b                                         ; $59AD: $04
    cp [hl]                                       ; $59AE: $BE
    ld a, [de]                                    ; $59AF: $1A
    dec de                                        ; $59B0: $1B
    inc e                                         ; $59B1: $1C
    add l                                         ; $59B2: $85
    sbc c                                         ; $59B3: $99
    ld bc, $8408                                  ; $59B4: $01 $08 $84
    sbc c                                         ; $59B7: $99
    inc b                                         ; $59B8: $04
    dec d                                         ; $59B9: $15
    jr jr_06D_59F2                                ; $59BA: $18 $36

    scf                                           ; $59BC: $37
    add e                                         ; $59BD: $83
    rrca                                          ; $59BE: $0F
    ld [bc], a                                    ; $59BF: $02
    push bc                                       ; $59C0: $C5
    sub l                                         ; $59C1: $95
    add h                                         ; $59C2: $84
    rrca                                          ; $59C3: $0F
    ld [bc], a                                    ; $59C4: $02
    nop                                           ; $59C5: $00
    ld bc, $0283                                  ; $59C6: $01 $83 $02
    ld bc, $851C                                  ; $59C9: $01 $1C $85
    sbc c                                         ; $59CC: $99
    ld a, [bc]                                    ; $59CD: $0A
    ld [$2318], sp                                ; $59CE: $08 $18 $23
    inc h                                         ; $59D1: $24
    inc hl                                        ; $59D2: $23
    inc h                                         ; $59D3: $24
    ld h, $27                                     ; $59D4: $26 $27
    ld b, [hl]                                    ; $59D6: $46
    ld b, a                                       ; $59D7: $47
    add d                                         ; $59D8: $82
    rrca                                          ; $59D9: $0F
    ld bc, $86F1                                  ; $59DA: $01 $F1 $86
    rrca                                          ; $59DD: $0F
    ld [bc], a                                    ; $59DE: $02
    db $10                                        ; $59DF: $10
    ld de, $9988                                  ; $59E0: $11 $88 $99
    add hl, bc                                    ; $59E3: $09
    dec d                                         ; $59E4: $15
    jr jr_06D_5A0F                                ; $59E5: $18 $28

    inc sp                                        ; $59E7: $33
    inc [hl]                                      ; $59E8: $34
    inc sp                                        ; $59E9: $33
    inc [hl]                                      ; $59EA: $34
    ld [hl], $37                                  ; $59EB: $36 $37
    add h                                         ; $59ED: $84
    rrca                                          ; $59EE: $0F
    inc b                                         ; $59EF: $04
    sub l                                         ; $59F0: $95
    sub [hl]                                      ; $59F1: $96

jr_06D_59F2:
    sub a                                         ; $59F2: $97
    sbc b                                         ; $59F3: $98
    add e                                         ; $59F4: $83
    rrca                                          ; $59F5: $0F
    dec d                                         ; $59F6: $15
    jr nz, @+$23                                  ; $59F7: $20 $21

    ld [hl+], a                                   ; $59F9: $22
    inc hl                                        ; $59FA: $23
    inc h                                         ; $59FB: $24
    inc hl                                        ; $59FC: $23
    inc h                                         ; $59FD: $24
    inc hl                                        ; $59FE: $23
    inc h                                         ; $59FF: $24
    dec h                                         ; $5A00: $25
    ld h, $27                                     ; $5A01: $26 $27
    jr c, jr_06D_5A48                             ; $5A03: $38 $43

    ld b, h                                       ; $5A05: $44
    ld b, e                                       ; $5A06: $43
    ld b, h                                       ; $5A07: $44
    ld b, [hl]                                    ; $5A08: $46
    ld b, a                                       ; $5A09: $47
    rrca                                          ; $5A0A: $0F
    cp [hl]                                       ; $5A0B: $BE
    add d                                         ; $5A0C: $82
    rrca                                          ; $5A0D: $0F
    dec b                                         ; $5A0E: $05

jr_06D_5A0F:
    and l                                         ; $5A0F: $A5
    and [hl]                                      ; $5A10: $A6
    and a                                         ; $5A11: $A7
    xor b                                         ; $5A12: $A8
    xor c                                         ; $5A13: $A9
    add d                                         ; $5A14: $82
    rrca                                          ; $5A15: $0F
    ld c, $30                                     ; $5A16: $0E $30
    ld sp, $3332                                  ; $5A18: $31 $32 $33
    inc [hl]                                      ; $5A1B: $34
    inc sp                                        ; $5A1C: $33
    inc [hl]                                      ; $5A1D: $34
    inc sp                                        ; $5A1E: $33
    inc [hl]                                      ; $5A1F: $34
    dec [hl]                                      ; $5A20: $35
    ld [hl], $37                                  ; $5A21: $36 $37
    rrca                                          ; $5A23: $0F
    ld a, c                                       ; $5A24: $79
    add h                                         ; $5A25: $84
    rrca                                          ; $5A26: $0F
    ld [bc], a                                    ; $5A27: $02
    add b                                         ; $5A28: $80
    add c                                         ; $5A29: $81
    add e                                         ; $5A2A: $83
    rrca                                          ; $5A2B: $0F
    dec b                                         ; $5A2C: $05
    or l                                          ; $5A2D: $B5
    or [hl]                                       ; $5A2E: $B6
    or a                                          ; $5A2F: $B7
    cp b                                          ; $5A30: $B8
    cp c                                          ; $5A31: $B9
    add d                                         ; $5A32: $82
    rrca                                          ; $5A33: $0F
    dec d                                         ; $5A34: $15
    ld b, b                                       ; $5A35: $40
    ld b, c                                       ; $5A36: $41
    ld b, d                                       ; $5A37: $42
    ld b, e                                       ; $5A38: $43
    ld b, h                                       ; $5A39: $44
    ld b, e                                       ; $5A3A: $43
    ld b, h                                       ; $5A3B: $44
    ld b, e                                       ; $5A3C: $43
    ld b, h                                       ; $5A3D: $44
    ld b, l                                       ; $5A3E: $45
    ld b, [hl]                                    ; $5A3F: $46
    ld b, a                                       ; $5A40: $47
    add e                                         ; $5A41: $83
    adc c                                         ; $5A42: $89
    adc d                                         ; $5A43: $8A
    sbc $DF                                       ; $5A44: $DE $DF
    rrca                                          ; $5A46: $0F
    sub b                                         ; $5A47: $90

jr_06D_5A48:
    sub c                                         ; $5A48: $91
    rst $18                                       ; $5A49: $DF
    add d                                         ; $5A4A: $82
    rrca                                          ; $5A4B: $0F
    dec b                                         ; $5A4C: $05
    push bc                                       ; $5A4D: $C5
    add $C7                                       ; $5A4E: $C6 $C7
    ret z                                         ; $5A50: $C8

    ret                                           ; $5A51: $C9


    adc c                                         ; $5A52: $89
    rrca                                          ; $5A53: $0F
    ld bc, $83BE                                  ; $5A54: $01 $BE $83
    rrca                                          ; $5A57: $0F
    add hl, bc                                    ; $5A58: $09
    ld [hl], h                                    ; $5A59: $74
    sub e                                         ; $5A5A: $93
    sbc c                                         ; $5A5B: $99
    sbc d                                         ; $5A5C: $9A
    cp e                                          ; $5A5D: $BB
    rrca                                          ; $5A5E: $0F
    pop hl                                        ; $5A5F: $E1
    and b                                         ; $5A60: $A0
    and c                                         ; $5A61: $A1
    adc c                                         ; $5A62: $89
    rrca                                          ; $5A63: $0F
    ld b, $0E                                     ; $5A64: $06 $0E
    rrca                                          ; $5A66: $0F
    ld h, b                                       ; $5A67: $60
    ld h, c                                       ; $5A68: $61
    rrca                                          ; $5A69: $0F
    cp [hl]                                       ; $5A6A: $BE
    add l                                         ; $5A6B: $85
    rrca                                          ; $5A6C: $0F
    ld [bc], a                                    ; $5A6D: $02
    add e                                         ; $5A6E: $83
    add h                                         ; $5A6F: $84
    add d                                         ; $5A70: $82
    sbc c                                         ; $5A71: $99
    ld [bc], a                                    ; $5A72: $02
    cp d                                          ; $5A73: $BA
    cp e                                          ; $5A74: $BB
    add d                                         ; $5A75: $82
    rrca                                          ; $5A76: $0F
    ld bc, $84F1                                  ; $5A77: $01 $F1 $84
    rrca                                          ; $5A7A: $0F
    ld [bc], a                                    ; $5A7B: $02
    add b                                         ; $5A7C: $80
    add c                                         ; $5A7D: $81
    add d                                         ; $5A7E: $82
    rrca                                          ; $5A7F: $0F
    ld [$0FF2], sp                                ; $5A80: $08 $F2 $0F
    ld e, $0F                                     ; $5A83: $1E $0F
    ld [hl], b                                    ; $5A85: $70
    ld [hl], c                                    ; $5A86: $71
    rrca                                          ; $5A87: $0F
    pop af                                        ; $5A88: $F1
    add d                                         ; $5A89: $82
    rrca                                          ; $5A8A: $0F
    inc b                                         ; $5A8B: $04
    ld [hl], h                                    ; $5A8C: $74
    ld [hl], a                                    ; $5A8D: $77
    ld a, b                                       ; $5A8E: $78
    sub e                                         ; $5A8F: $93
    add e                                         ; $5A90: $83
    sbc c                                         ; $5A91: $99
    rlca                                          ; $5A92: $07
    adc c                                         ; $5A93: $89
    ld [hl], a                                    ; $5A94: $77
    ld a, b                                       ; $5A95: $78
    ld [hl], a                                    ; $5A96: $77
    ld a, b                                       ; $5A97: $78
    ld [hl], a                                    ; $5A98: $77
    ld a, c                                       ; $5A99: $79
    add d                                         ; $5A9A: $82
    rrca                                          ; $5A9B: $0F
    ld [bc], a                                    ; $5A9C: $02
    sub b                                         ; $5A9D: $90
    sub c                                         ; $5A9E: $91
    add d                                         ; $5A9F: $82
    rrca                                          ; $5AA0: $0F
    ld b, $BE                                     ; $5AA1: $06 $BE
    rst $18                                       ; $5AA3: $DF
    ld l, $2F                                     ; $5AA4: $2E $2F
    push bc                                       ; $5AA6: $C5
    sub l                                         ; $5AA7: $95
    add e                                         ; $5AA8: $83
    rrca                                          ; $5AA9: $0F
    inc b                                         ; $5AAA: $04
    add e                                         ; $5AAB: $83
    add h                                         ; $5AAC: $84
    add a                                         ; $5AAD: $87
    adc b                                         ; $5AAE: $88
    add l                                         ; $5AAF: $85
    sbc c                                         ; $5AB0: $99
    ld a, [bc]                                    ; $5AB1: $0A
    add a                                         ; $5AB2: $87
    adc b                                         ; $5AB3: $88
    add a                                         ; $5AB4: $87
    adc b                                         ; $5AB5: $88
    add a                                         ; $5AB6: $87
    jp z, $0FCB                                   ; $5AB7: $CA $CB $0F

    and b                                         ; $5ABA: $A0
    and c                                         ; $5ABB: $A1
    add h                                         ; $5ABC: $84
    rrca                                          ; $5ABD: $0F
    inc b                                         ; $5ABE: $04
    ld a, $0F                                     ; $5ABF: $3E $0F
    sbc $BE                                       ; $5AC1: $DE $BE
    add e                                         ; $5AC3: $83
    rrca                                          ; $5AC4: $0F
    ld bc, $8CB3                                  ; $5AC5: $01 $B3 $8C
    sbc c                                         ; $5AC8: $99
    ld b, $CA                                     ; $5AC9: $06 $CA
    jp c, $0FDB                                   ; $5ACB: $DA $DB $0F

    ld d, [hl]                                    ; $5ACE: $56
    ld d, a                                       ; $5ACF: $57
    add [hl]                                      ; $5AD0: $86
    rrca                                          ; $5AD1: $0F
    ld bc, $83F2                                  ; $5AD2: $01 $F2 $83
    rrca                                          ; $5AD5: $0F
    ld [bc], a                                    ; $5AD6: $02
    jp nz, $8BC3                                  ; $5AD7: $C2 $C3 $8B

    sbc c                                         ; $5ADA: $99
    inc bc                                        ; $5ADB: $03
    jp z, $EADA                                   ; $5ADC: $CA $DA $EA

    adc [hl]                                      ; $5ADF: $8E
    rrca                                          ; $5AE0: $0F
    inc bc                                        ; $5AE1: $03
    jp nc, $C3D3                                  ; $5AE2: $D2 $D3 $C3

    adc c                                         ; $5AE5: $89
    sbc c                                         ; $5AE6: $99
    inc b                                         ; $5AE7: $04
    jp z, $EADA                                   ; $5AE8: $CA $DA $EA

    ld a, [$0F83]                                 ; $5AEB: $FA $83 $0F
    ld a, [bc]                                    ; $5AEE: $0A
    ld [hl], h                                    ; $5AEF: $74
    ld [hl], a                                    ; $5AF0: $77
    ld a, b                                       ; $5AF1: $78
    ld a, c                                       ; $5AF2: $79
    rrca                                          ; $5AF3: $0F
    add b                                         ; $5AF4: $80
    add c                                         ; $5AF5: $81
    rrca                                          ; $5AF6: $0F
    cp [hl]                                       ; $5AF7: $BE
    rst $18                                       ; $5AF8: $DF
    add d                                         ; $5AF9: $82
    rrca                                          ; $5AFA: $0F
    inc bc                                        ; $5AFB: $03

Jump_06D_5AFC:
    db $E3                                        ; $5AFC: $E3
    db $D3                                        ; $5AFD: $D3
    jp $9988                                      ; $5AFE: $C3 $88 $99


    ld c, $BA                                     ; $5B01: $0E $BA
    ld [$DFFA], a                                 ; $5B03: $EA $FA $DF
    ld a, [c]                                     ; $5B06: $F2
    rrca                                          ; $5B07: $0F
    add e                                         ; $5B08: $83
    add h                                         ; $5B09: $84
    add a                                         ; $5B0A: $87
    adc b                                         ; $5B0B: $88
    cp d                                          ; $5B0C: $BA
    cp e                                          ; $5B0D: $BB
    sub b                                         ; $5B0E: $90
    sub c                                         ; $5B0F: $91
    add l                                         ; $5B10: $85
    rrca                                          ; $5B11: $0F
    inc b                                         ; $5B12: $04
    di                                            ; $5B13: $F3
    db $E3                                        ; $5B14: $E3
    db $D3                                        ; $5B15: $D3
    jp $9987                                      ; $5B16: $C3 $87 $99


    rlca                                          ; $5B19: $07
    cp d                                          ; $5B1A: $BA
    ld a, [$600F]                                 ; $5B1B: $FA $0F $60
    ld h, c                                       ; $5B1E: $61
    jp nz, $8393                                  ; $5B1F: $C2 $93 $83

    sbc c                                         ; $5B22: $99
    ld [$BBBA], sp                                ; $5B23: $08 $BA $BB
    and b                                         ; $5B26: $A0
    and c                                         ; $5B27: $A1
    sub l                                         ; $5B28: $95
    sub [hl]                                      ; $5B29: $96
    sub a                                         ; $5B2A: $97
    sbc b                                         ; $5B2B: $98
    add d                                         ; $5B2C: $82
    rrca                                          ; $5B2D: $0F
    inc bc                                        ; $5B2E: $03
    di                                            ; $5B2F: $F3
    db $E3                                        ; $5B30: $E3
    or e                                          ; $5B31: $B3
    add a                                         ; $5B32: $87
    sbc c                                         ; $5B33: $99
    rlca                                          ; $5B34: $07
    sbc d                                         ; $5B35: $9A
    ld a, c                                       ; $5B36: $79
    rrca                                          ; $5B37: $0F
    ld [hl], b                                    ; $5B38: $70
    ld [hl], c                                    ; $5B39: $71
    jp nc, $83B3                                  ; $5B3A: $D2 $B3 $83

    sbc c                                         ; $5B3D: $99
    ld [bc], a                                    ; $5B3E: $02
    cp d                                          ; $5B3F: $BA
    cp e                                          ; $5B40: $BB
    add d                                         ; $5B41: $82
    rrca                                          ; $5B42: $0F
    dec b                                         ; $5B43: $05
    and l                                         ; $5B44: $A5
    and [hl]                                      ; $5B45: $A6
    and a                                         ; $5B46: $A7
    xor b                                         ; $5B47: $A8
    xor c                                         ; $5B48: $A9
    add d                                         ; $5B49: $82
    rrca                                          ; $5B4A: $0F
    ld [bc], a                                    ; $5B4B: $02
    di                                            ; $5B4C: $F3
    or e                                          ; $5B4D: $B3
    adc b                                         ; $5B4E: $88
    sbc c                                         ; $5B4F: $99
    ld b, $89                                     ; $5B50: $06 $89
    adc d                                         ; $5B52: $8A
    push bc                                       ; $5B53: $C5
    sub l                                         ; $5B54: $95
    add e                                         ; $5B55: $83
    add h                                         ; $5B56: $84
    add e                                         ; $5B57: $83
    sbc c                                         ; $5B58: $99
    dec c                                         ; $5B59: $0D
    cp d                                          ; $5B5A: $BA
    cp e                                          ; $5B5B: $BB
    cp [hl]                                       ; $5B5C: $BE
    rrca                                          ; $5B5D: $0F
    or l                                          ; $5B5E: $B5
    or [hl]                                       ; $5B5F: $B6
    or a                                          ; $5B60: $B7
    cp b                                          ; $5B61: $B8
    cp c                                          ; $5B62: $B9
    sbc $DF                                       ; $5B63: $DE $DF
    or d                                          ; $5B65: $B2
    or e                                          ; $5B66: $B3
    adc c                                         ; $5B67: $89
    sbc c                                         ; $5B68: $99
    inc b                                         ; $5B69: $04
    sbc d                                         ; $5B6A: $9A
    ld [hl], a                                    ; $5B6B: $77
    ld a, b                                       ; $5B6C: $78
    sub e                                         ; $5B6D: $93
    add h                                         ; $5B6E: $84
    sbc c                                         ; $5B6F: $99
    ld [bc], a                                    ; $5B70: $02
    cp d                                          ; $5B71: $BA
    cp e                                          ; $5B72: $BB
    add d                                         ; $5B73: $82
    rrca                                          ; $5B74: $0F
    dec b                                         ; $5B75: $05
    push bc                                       ; $5B76: $C5
    add $C7                                       ; $5B77: $C6 $C7
    ret z                                         ; $5B79: $C8

    ret                                           ; $5B7A: $C9


    add d                                         ; $5B7B: $82
    rrca                                          ; $5B7C: $0F
    ld [bc], a                                    ; $5B7D: $02
    jp nz, $8AC3                                  ; $5B7E: $C2 $C3 $8A

    sbc c                                         ; $5B81: $99
    ld [bc], a                                    ; $5B82: $02
    add a                                         ; $5B83: $87
    adc b                                         ; $5B84: $88
    add l                                         ; $5B85: $85
    sbc c                                         ; $5B86: $99
    ld [bc], a                                    ; $5B87: $02
    sbc d                                         ; $5B88: $9A
    ld a, c                                       ; $5B89: $79
    add d                                         ; $5B8A: $82
    rrca                                          ; $5B8B: $0F
    ld bc, $86E2                                  ; $5B8C: $01 $E2 $86
    rrca                                          ; $5B8F: $0F
    inc bc                                        ; $5B90: $03
    jp nc, $C3D3                                  ; $5B91: $D2 $D3 $C3

    sub c                                         ; $5B94: $91
    sbc c                                         ; $5B95: $99
    ld [bc], a                                    ; $5B96: $02
    adc c                                         ; $5B97: $89
    adc d                                         ; $5B98: $8A
    add d                                         ; $5B99: $82
    rrca                                          ; $5B9A: $0F
    inc b                                         ; $5B9B: $04
    ld a, [c]                                     ; $5B9C: $F2
    rrca                                          ; $5B9D: $0F
    add b                                         ; $5B9E: $80
    add c                                         ; $5B9F: $81
    add e                                         ; $5BA0: $83
    rrca                                          ; $5BA1: $0F
    ld [bc], a                                    ; $5BA2: $02
    db $E3                                        ; $5BA3: $E3
    or e                                          ; $5BA4: $B3
    sub d                                         ; $5BA5: $92
    sbc c                                         ; $5BA6: $99
    inc c                                         ; $5BA7: $0C
    sbc d                                         ; $5BA8: $9A
    set 3, [hl]                                   ; $5BA9: $CB $DE
    cp [hl]                                       ; $5BAB: $BE
    rrca                                          ; $5BAC: $0F
    sub b                                         ; $5BAD: $90
    sub c                                         ; $5BAE: $91
    cp [hl]                                       ; $5BAF: $BE
    rst $18                                       ; $5BB0: $DF
    rrca                                          ; $5BB1: $0F
    or d                                          ; $5BB2: $B2
    or e                                          ; $5BB3: $B3
    add d                                         ; $5BB4: $82
    sbc c                                         ; $5BB5: $99
    nop                                           ; $5BB6: $00
    inc h                                         ; $5BB7: $24
    ld b, h                                       ; $5BB8: $44
    ld bc, $1A19                                  ; $5BB9: $01 $19 $1A
    db $10                                        ; $5BBC: $10
    dec b                                         ; $5BBD: $05
    adc [hl]                                      ; $5BBE: $8E
    push bc                                       ; $5BBF: $C5
    inc bc                                        ; $5BC0: $03
    adc b                                         ; $5BC1: $88
    sbc c                                         ; $5BC2: $99
    sbc d                                         ; $5BC3: $9A
    add l                                         ; $5BC4: $85
    ld h, $02                                     ; $5BC5: $26 $02
    dec sp                                        ; $5BC7: $3B
    adc e                                         ; $5BC8: $8B
    add l                                         ; $5BC9: $85
    push bc                                       ; $5BCA: $C5
    inc bc                                        ; $5BCB: $03
    res 5, c                                      ; $5BCC: $CB $A9
    xor d                                         ; $5BCE: $AA
    add h                                         ; $5BCF: $84
    ld h, $8E                                     ; $5BD0: $26 $8E
    push bc                                       ; $5BD2: $C5
    ld bc, $888A                                  ; $5BD3: $01 $8A $88
    ld h, $03                                     ; $5BD6: $26 $03
    sbc e                                         ; $5BD8: $9B
    sbc h                                         ; $5BD9: $9C
    adc c                                         ; $5BDA: $89
    add h                                         ; $5BDB: $84
    push bc                                       ; $5BDC: $C5
    inc bc                                        ; $5BDD: $03
    cp c                                          ; $5BDE: $B9
    cp d                                          ; $5BDF: $BA
    ld b, [hl]                                    ; $5BE0: $46
    add e                                         ; $5BE1: $83
    ld h, $85                                     ; $5BE2: $26 $85
    push bc                                       ; $5BE4: $C5
    ld a, [bc]                                    ; $5BE5: $0A
    ld h, e                                       ; $5BE6: $63
    ld h, h                                       ; $5BE7: $64
    ld h, e                                       ; $5BE8: $63
    ld h, h                                       ; $5BE9: $64
    ld h, e                                       ; $5BEA: $63
    ld h, h                                       ; $5BEB: $64
    ld h, e                                       ; $5BEC: $63
    ld h, h                                       ; $5BED: $64
    sbc c                                         ; $5BEE: $99
    sbc d                                         ; $5BEF: $9A
    adc d                                         ; $5BF0: $8A
    ld h, $01                                     ; $5BF1: $26 $01
    adc e                                         ; $5BF3: $8B
    add [hl]                                      ; $5BF4: $86
    push bc                                       ; $5BF5: $C5
    ld bc, $8347                                  ; $5BF6: $01 $47 $83
    ld h, $83                                     ; $5BF9: $26 $83
    push bc                                       ; $5BFB: $C5
    ld [bc], a                                    ; $5BFC: $02
    ld l, b                                       ; $5BFD: $68
    adc d                                         ; $5BFE: $8A
    adc d                                         ; $5BFF: $8A
    ld h, $02                                     ; $5C00: $26 $02
    ld a, [bc]                                    ; $5C02: $0A
    dec bc                                        ; $5C03: $0B
    add [hl]                                      ; $5C04: $86
    ld b, d                                       ; $5C05: $42
    dec b                                         ; $5C06: $05
    ld [$9B09], sp                                ; $5C07: $08 $09 $9B
    sbc h                                         ; $5C0A: $9C
    adc c                                         ; $5C0B: $89
    add h                                         ; $5C0C: $84
    push bc                                       ; $5C0D: $C5
    ld bc, $8357                                  ; $5C0E: $01 $57 $83
    ld h, $83                                     ; $5C11: $26 $83
    push bc                                       ; $5C13: $C5
    ld [bc], a                                    ; $5C14: $02
    sbc c                                         ; $5C15: $99
    sbc d                                         ; $5C16: $9A
    adc c                                         ; $5C17: $89
    ld h, $03                                     ; $5C18: $26 $03
    ld l, c                                       ; $5C1A: $69
    ld [hl+], a                                   ; $5C1B: $22
    inc h                                         ; $5C1C: $24
    add [hl]                                      ; $5C1D: $86
    ld d, $02                                     ; $5C1E: $16 $02
    inc d                                         ; $5C20: $14
    ld hl, $2682                                  ; $5C21: $21 $82 $26
    ld bc, $848B                                  ; $5C24: $01 $8B $84
    push bc                                       ; $5C27: $C5
    ld bc, $8347                                  ; $5C28: $01 $47 $83
    ld h, $83                                     ; $5C2B: $26 $83
    push bc                                       ; $5C2D: $C5
    ld bc, $8457                                  ; $5C2E: $01 $57 $84
    ld h, $02                                     ; $5C31: $26 $02
    ld a, [bc]                                    ; $5C33: $0A
    dec bc                                        ; $5C34: $0B
    add d                                         ; $5C35: $82
    ld b, d                                       ; $5C36: $42
    dec b                                         ; $5C37: $05
    ld [$7909], sp                                ; $5C38: $08 $09 $79
    ld l, d                                       ; $5C3B: $6A
    ld l, e                                       ; $5C3C: $6B
    add [hl]                                      ; $5C3D: $86
    ld d, $02                                     ; $5C3E: $16 $02
    ld e, c                                       ; $5C40: $59
    dec h                                         ; $5C41: $25
    add d                                         ; $5C42: $82
    ld h, $02                                     ; $5C43: $26 $02
    sbc e                                         ; $5C45: $9B
    sbc h                                         ; $5C46: $9C
    add e                                         ; $5C47: $83
    push bc                                       ; $5C48: $C5
    ld bc, $8357                                  ; $5C49: $01 $57 $83
    ld h, $83                                     ; $5C4C: $26 $83
    push bc                                       ; $5C4E: $C5
    ld bc, $8447                                  ; $5C4F: $01 $47 $84
    ld h, $09                                     ; $5C52: $26 $09
    ld [hl+], a                                   ; $5C54: $22
    inc h                                         ; $5C55: $24
    inc [hl]                                      ; $5C56: $34
    scf                                           ; $5C57: $37
    inc d                                         ; $5C58: $14
    ld hl, $7A26                                  ; $5C59: $21 $26 $7A
    ld a, e                                       ; $5C5C: $7B
    add [hl]                                      ; $5C5D: $86
    ld d, $03                                     ; $5C5E: $16 $03
    ld [hl-], a                                   ; $5C60: $32
    dec h                                         ; $5C61: $25
    ld c, e                                       ; $5C62: $4B
    add d                                         ; $5C63: $82
    ld h, $06                                     ; $5C64: $26 $06
    ld c, b                                       ; $5C66: $48
    push bc                                       ; $5C67: $C5
    push bc                                       ; $5C68: $C5
    res 5, c                                      ; $5C69: $CB $A9
    xor d                                         ; $5C6B: $AA
    add d                                         ; $5C6C: $82
    ld h, $83                                     ; $5C6D: $26 $83
    push bc                                       ; $5C6F: $C5
    inc bc                                        ; $5C70: $03
    ld d, a                                       ; $5C71: $57
    ld a, [bc]                                    ; $5C72: $0A
    dec bc                                        ; $5C73: $0B
    add d                                         ; $5C74: $82
    ld b, d                                       ; $5C75: $42
    ld [bc], a                                    ; $5C76: $02
    ld d, h                                       ; $5C77: $54
    ld sp, $1682                                  ; $5C78: $31 $82 $16
    dec b                                         ; $5C7B: $05
    ld [hl-], a                                   ; $5C7C: $32
    ld d, e                                       ; $5C7D: $53
    ld b, d                                       ; $5C7E: $42
    ld b, $07                                     ; $5C7F: $06 $07
    add [hl]                                      ; $5C81: $86
    ld d, $03                                     ; $5C82: $16 $03
    ld c, c                                       ; $5C84: $49
    ld c, d                                       ; $5C85: $4A
    ld e, e                                       ; $5C86: $5B
    add d                                         ; $5C87: $82
    ld h, $01                                     ; $5C88: $26 $01
    ld e, b                                       ; $5C8A: $58
    add e                                         ; $5C8B: $83
    push bc                                       ; $5C8C: $C5
    inc b                                         ; $5C8D: $04
    cp c                                          ; $5C8E: $B9
    cp d                                          ; $5C8F: $BA
    xor c                                         ; $5C90: $A9
    xor d                                         ; $5C91: $AA
    add e                                         ; $5C92: $83
    push bc                                       ; $5C93: $C5
    inc bc                                        ; $5C94: $03
    ld b, a                                       ; $5C95: $47
    ld [hl+], a                                   ; $5C96: $22
    inc h                                         ; $5C97: $24
    add d                                         ; $5C98: $82
    ld d, $02                                     ; $5C99: $16 $02
    inc bc                                        ; $5C9B: $03
    ld sp, $1682                                  ; $5C9C: $31 $82 $16
    inc b                                         ; $5C9F: $04
    ld [hl-], a                                   ; $5CA0: $32
    nop                                           ; $5CA1: $00
    ld d, $34                                     ; $5CA2: $16 $34
    add a                                         ; $5CA4: $87
    ld d, $02                                     ; $5CA5: $16 $02
    ld e, c                                       ; $5CA7: $59
    ld e, d                                       ; $5CA8: $5A
    add e                                         ; $5CA9: $83
    ld h, $01                                     ; $5CAA: $26 $01
    ld c, b                                       ; $5CAC: $48
    add l                                         ; $5CAD: $85
    push bc                                       ; $5CAE: $C5
    ld [bc], a                                    ; $5CAF: $02
    cp c                                          ; $5CB0: $B9
    cp d                                          ; $5CB1: $BA
    add e                                         ; $5CB2: $83
    push bc                                       ; $5CB3: $C5
    inc bc                                        ; $5CB4: $03
    ld d, a                                       ; $5CB5: $57
    dec d                                         ; $5CB6: $15
    ld sp, $1682                                  ; $5CB7: $31 $82 $16
    ld [bc], a                                    ; $5CBA: $02
    ld c, $56                                     ; $5CBB: $0E $56
    add d                                         ; $5CBD: $82
    ld d, b                                       ; $5CBE: $50
    ld [bc], a                                    ; $5CBF: $02
    ld d, c                                       ; $5CC0: $51
    dec c                                         ; $5CC1: $0D
    adc c                                         ; $5CC2: $89
    ld d, $02                                     ; $5CC3: $16 $02
    ld [hl-], a                                   ; $5CC5: $32
    dec h                                         ; $5CC6: $25
    add e                                         ; $5CC7: $83
    ld h, $01                                     ; $5CC8: $26 $01
    ld e, b                                       ; $5CCA: $58
    adc c                                         ; $5CCB: $89
    push bc                                       ; $5CCC: $C5
    inc b                                         ; $5CCD: $04
    adc d                                         ; $5CCE: $8A
    ld l, c                                       ; $5CCF: $69
    dec d                                         ; $5CD0: $15
    ld sp, $3482                                  ; $5CD1: $31 $82 $34
    add hl, bc                                    ; $5CD4: $09
    ld e, $1F                                     ; $5CD5: $1E $1F
    ld c, h                                       ; $5CD7: $4C
    ld c, l                                       ; $5CD8: $4D
    inc e                                         ; $5CD9: $1C
    dec e                                         ; $5CDA: $1D
    scf                                           ; $5CDB: $37
    ld [de], a                                    ; $5CDC: $12
    inc de                                        ; $5CDD: $13
    add [hl]                                      ; $5CDE: $86
    ld d, b                                       ; $5CDF: $50
    ld [bc], a                                    ; $5CE0: $02
    ld d, c                                       ; $5CE1: $51
    ld d, d                                       ; $5CE2: $52
    add e                                         ; $5CE3: $83
    ld h, $02                                     ; $5CE4: $26 $02
    dec sp                                        ; $5CE6: $3B
    adc e                                         ; $5CE7: $8B
    add [hl]                                      ; $5CE8: $86
    push bc                                       ; $5CE9: $C5
    ld b, $88                                     ; $5CEA: $06 $88
    sbc c                                         ; $5CEC: $99
    sbc d                                         ; $5CED: $9A
    ld a, c                                       ; $5CEE: $79
    ld l, d                                       ; $5CEF: $6A
    ld l, e                                       ; $5CF0: $6B
    add d                                         ; $5CF1: $82
    push de                                       ; $5CF2: $D5
    ld de, $2F2E                                  ; $5CF3: $11 $2E $2F
    ld e, h                                       ; $5CF6: $5C
    ld e, l                                       ; $5CF7: $5D
    inc l                                         ; $5CF8: $2C
    dec l                                         ; $5CF9: $2D
    ld d, $32                                     ; $5CFA: $16 $32
    inc hl                                        ; $5CFC: $23
    ld c, h                                       ; $5CFD: $4C
    ld c, l                                       ; $5CFE: $4D
    ld c, h                                       ; $5CFF: $4C
    ld c, l                                       ; $5D00: $4D
    ld c, h                                       ; $5D01: $4C
    ld h, b                                       ; $5D02: $60
    ld h, c                                       ; $5D03: $61
    ld h, d                                       ; $5D04: $62
    add h                                         ; $5D05: $84
    ld h, $09                                     ; $5D06: $26 $09
    sbc e                                         ; $5D08: $9B
    sbc h                                         ; $5D09: $9C
    ld h, e                                       ; $5D0A: $63
    ld h, h                                       ; $5D0B: $64
    ld h, e                                       ; $5D0C: $63
    ld h, h                                       ; $5D0D: $64
    ld h, e                                       ; $5D0E: $63
    push bc                                       ; $5D0F: $C5
    ld b, a                                       ; $5D10: $47
    add d                                         ; $5D11: $82
    ld h, $02                                     ; $5D12: $26 $02
    ld a, d                                       ; $5D14: $7A
    ld a, e                                       ; $5D15: $7B
    add d                                         ; $5D16: $82
    ld d, $12                                     ; $5D17: $16 $12
    ld a, $3F                                     ; $5D19: $3E $3F
    ld l, h                                       ; $5D1B: $6C
    ld l, l                                       ; $5D1C: $6D
    inc a                                         ; $5D1D: $3C
    dec a                                         ; $5D1E: $3D
    ld d, $32                                     ; $5D1F: $16 $32
    inc sp                                        ; $5D21: $33
    ld e, h                                       ; $5D22: $5C
    ld e, l                                       ; $5D23: $5D
    ld e, h                                       ; $5D24: $5C
    ld e, l                                       ; $5D25: $5D
    ld e, h                                       ; $5D26: $5C
    ld [hl], b                                    ; $5D27: $70
    ld [hl], c                                    ; $5D28: $71
    ld [hl], d                                    ; $5D29: $72
    ld [hl], e                                    ; $5D2A: $73
    adc d                                         ; $5D2B: $8A
    ld h, $02                                     ; $5D2C: $26 $02
    push bc                                       ; $5D2E: $C5
    ld d, a                                       ; $5D2F: $57
    add d                                         ; $5D30: $82
    ld h, $02                                     ; $5D31: $26 $02
    dec d                                         ; $5D33: $15
    ld sp, $3482                                  ; $5D34: $31 $82 $34
    add d                                         ; $5D37: $82
    ld d, $02                                     ; $5D38: $16 $02
    call nc, $8334                                ; $5D3A: $D4 $34 $83
    ld d, $0B                                     ; $5D3D: $16 $0B
    ld [hl-], a                                   ; $5D3F: $32
    ld b, e                                       ; $5D40: $43
    ld a, h                                       ; $5D41: $7C
    ld a, l                                       ; $5D42: $7D
    ld a, h                                       ; $5D43: $7C
    ld a, l                                       ; $5D44: $7D
    ld a, h                                       ; $5D45: $7C
    add b                                         ; $5D46: $80
    add c                                         ; $5D47: $81
    add d                                         ; $5D48: $82
    add e                                         ; $5D49: $83
    adc d                                         ; $5D4A: $8A
    ld h, $02                                     ; $5D4B: $26 $02
    push bc                                       ; $5D4D: $C5
    ld b, a                                       ; $5D4E: $47
    add d                                         ; $5D4F: $82
    ld h, $02                                     ; $5D50: $26 $02
    ld d, l                                       ; $5D52: $55
    ld d, [hl]                                    ; $5D53: $56
    adc c                                         ; $5D54: $89
    ld d, b                                       ; $5D55: $50
    add hl, bc                                    ; $5D56: $09
    ld d, c                                       ; $5D57: $51
    ld d, d                                       ; $5D58: $52
    adc h                                         ; $5D59: $8C
    adc l                                         ; $5D5A: $8D
    adc h                                         ; $5D5B: $8C
    adc l                                         ; $5D5C: $8D
    adc h                                         ; $5D5D: $8C
    sub b                                         ; $5D5E: $90
    sub c                                         ; $5D5F: $91
    adc h                                         ; $5D60: $8C
    ld h, $02                                     ; $5D61: $26 $02
    push bc                                       ; $5D63: $C5
    ld d, a                                       ; $5D64: $57
    add d                                         ; $5D65: $82
    ld h, $0D                                     ; $5D66: $26 $0D
    ld h, l                                       ; $5D68: $65
    ld h, [hl]                                    ; $5D69: $66
    ld h, a                                       ; $5D6A: $67
    ld c, h                                       ; $5D6B: $4C
    adc [hl]                                      ; $5D6C: $8E
    adc a                                         ; $5D6D: $8F
    adc $4C                                       ; $5D6E: $CE $4C
    ld c, l                                       ; $5D70: $4D
    ld c, h                                       ; $5D71: $4C
    ld h, b                                       ; $5D72: $60
    ld h, c                                       ; $5D73: $61
    ld h, d                                       ; $5D74: $62
    add [hl]                                      ; $5D75: $86
    ld h, $02                                     ; $5D76: $26 $02
    ld a, [bc]                                    ; $5D78: $0A
    dec bc                                        ; $5D79: $0B
    add a                                         ; $5D7A: $87
    ld b, d                                       ; $5D7B: $42
    ld [bc], a                                    ; $5D7C: $02
    ld [$8209], sp                                ; $5D7D: $08 $09 $82
    ld h, $12                                     ; $5D80: $26 $12
    push bc                                       ; $5D82: $C5
    ld b, a                                       ; $5D83: $47
    ld h, $74                                     ; $5D84: $26 $74
    ld [hl], l                                    ; $5D86: $75
    halt                                          ; $5D87: $76
    ld [hl], a                                    ; $5D88: $77
    ld e, h                                       ; $5D89: $5C
    sbc [hl]                                      ; $5D8A: $9E
    sbc a                                         ; $5D8B: $9F
    rst $08                                       ; $5D8C: $CF
    ld e, h                                       ; $5D8D: $5C
    ld e, l                                       ; $5D8E: $5D
    ld e, h                                       ; $5D8F: $5C
    ld [hl], b                                    ; $5D90: $70
    ld [hl], c                                    ; $5D91: $71
    ld [hl], d                                    ; $5D92: $72
    ld [hl], e                                    ; $5D93: $73
    add l                                         ; $5D94: $85
    ld h, $04                                     ; $5D95: $26 $04
    ld [hl+], a                                   ; $5D97: $22
    inc h                                         ; $5D98: $24
    ld d, $D4                                     ; $5D99: $16 $D4
    add l                                         ; $5D9B: $85
    ld d, $02                                     ; $5D9C: $16 $02
    inc d                                         ; $5D9E: $14
    ld hl, $2682                                  ; $5D9F: $21 $82 $26
    ld [de], a                                    ; $5DA2: $12
    push bc                                       ; $5DA3: $C5
    ld d, a                                       ; $5DA4: $57
    ld h, $84                                     ; $5DA5: $26 $84
    add l                                         ; $5DA7: $85
    add [hl]                                      ; $5DA8: $86
    add a                                         ; $5DA9: $87
    ld a, h                                       ; $5DAA: $7C
    xor [hl]                                      ; $5DAB: $AE
    xor a                                         ; $5DAC: $AF
    sbc $7C                                       ; $5DAD: $DE $7C
    ld a, l                                       ; $5DAF: $7D
    ld a, h                                       ; $5DB0: $7C
    add b                                         ; $5DB1: $80
    add c                                         ; $5DB2: $81
    add d                                         ; $5DB3: $82
    add e                                         ; $5DB4: $83
    add l                                         ; $5DB5: $85
    ld h, $02                                     ; $5DB6: $26 $02
    dec d                                         ; $5DB8: $15
    ld sp, $1687                                  ; $5DB9: $31 $87 $16
    ld b, $32                                     ; $5DBC: $06 $32
    dec h                                         ; $5DBE: $25
    ld c, e                                       ; $5DBF: $4B
    ld h, $C5                                     ; $5DC0: $26 $C5
    ld b, a                                       ; $5DC2: $47
    add e                                         ; $5DC3: $83
    ld h, $0B                                     ; $5DC4: $26 $0B
    sub [hl]                                      ; $5DC6: $96
    sub a                                         ; $5DC7: $97
    adc h                                         ; $5DC8: $8C
    ld a, [c]                                     ; $5DC9: $F2
    jp z, $8CF2                                   ; $5DCA: $CA $F2 $8C

    ld a, [c]                                     ; $5DCD: $F2
    adc h                                         ; $5DCE: $8C
    sub b                                         ; $5DCF: $90
    sub c                                         ; $5DD0: $91
    add a                                         ; $5DD1: $87
    ld h, $02                                     ; $5DD2: $26 $02
    dec d                                         ; $5DD4: $15
    ld sp, $1687                                  ; $5DD5: $31 $87 $16
    ld b, $49                                     ; $5DD8: $06 $49
    ld c, d                                       ; $5DDA: $4A
    ld e, e                                       ; $5DDB: $5B
    ld h, $C5                                     ; $5DDC: $26 $C5
    ld d, a                                       ; $5DDE: $57
    add a                                         ; $5DDF: $87
    ld h, $01                                     ; $5DE0: $26 $01
    cp l                                          ; $5DE2: $BD
    adc l                                         ; $5DE3: $8D
    ld h, $02                                     ; $5DE4: $26 $02
    dec d                                         ; $5DE6: $15
    ld sp, $1687                                  ; $5DE7: $31 $87 $16
    ld [bc], a                                    ; $5DEA: $02
    ld e, c                                       ; $5DEB: $59
    ld e, d                                       ; $5DEC: $5A
    add d                                         ; $5DED: $82
    ld h, $02                                     ; $5DEE: $26 $02
    push bc                                       ; $5DF0: $C5
    ld b, a                                       ; $5DF1: $47
    adc b                                         ; $5DF2: $88
    ld h, $04                                     ; $5DF3: $26 $04
    xor e                                         ; $5DF5: $AB
    xor h                                         ; $5DF6: $AC
    xor c                                         ; $5DF7: $A9
    xor d                                         ; $5DF8: $AA
    adc c                                         ; $5DF9: $89
    ld h, $02                                     ; $5DFA: $26 $02
    ld d, l                                       ; $5DFC: $55
    ld d, [hl]                                    ; $5DFD: $56
    add a                                         ; $5DFE: $87
    ld d, b                                       ; $5DFF: $50
    ld [bc], a                                    ; $5E00: $02
    ld d, c                                       ; $5E01: $51
    ld d, d                                       ; $5E02: $52
    add d                                         ; $5E03: $82
    ld h, $02                                     ; $5E04: $26 $02
    push bc                                       ; $5E06: $C5
    ld d, a                                       ; $5E07: $57
    add [hl]                                      ; $5E08: $86
    ld h, $08                                     ; $5E09: $26 $08
    xor e                                         ; $5E0B: $AB
    xor h                                         ; $5E0C: $AC
    cp e                                          ; $5E0D: $BB
    cp h                                          ; $5E0E: $BC
    cp c                                          ; $5E0F: $B9
    cp d                                          ; $5E10: $BA
    xor c                                         ; $5E11: $A9
    xor d                                         ; $5E12: $AA
    add a                                         ; $5E13: $87
    ld h, $0B                                     ; $5E14: $26 $0B
    ld h, l                                       ; $5E16: $65
    ld h, [hl]                                    ; $5E17: $66
    ld h, a                                       ; $5E18: $67
    ld c, h                                       ; $5E19: $4C
    adc [hl]                                      ; $5E1A: $8E
    adc a                                         ; $5E1B: $8F
    adc $4C                                       ; $5E1C: $CE $4C
    ld h, b                                       ; $5E1E: $60
    ld h, c                                       ; $5E1F: $61
    ld h, d                                       ; $5E20: $62
    add d                                         ; $5E21: $82
    ld h, $03                                     ; $5E22: $26 $03
    res 5, c                                      ; $5E24: $CB $A9
    xor d                                         ; $5E26: $AA
    add l                                         ; $5E27: $85
    ld h, $02                                     ; $5E28: $26 $02
    cp e                                          ; $5E2A: $BB
    cp h                                          ; $5E2B: $BC
    add h                                         ; $5E2C: $84
    push bc                                       ; $5E2D: $C5
    inc b                                         ; $5E2E: $04
    cp c                                          ; $5E2F: $B9
    cp d                                          ; $5E30: $BA
    xor c                                         ; $5E31: $A9
    xor d                                         ; $5E32: $AA
    add h                                         ; $5E33: $84
    ld h, $13                                     ; $5E34: $26 $13
    ld [hl], h                                    ; $5E36: $74
    ld [hl], l                                    ; $5E37: $75
    halt                                          ; $5E38: $76
    ld [hl], a                                    ; $5E39: $77
    ld e, h                                       ; $5E3A: $5C
    sbc [hl]                                      ; $5E3B: $9E
    sbc a                                         ; $5E3C: $9F
    rst $08                                       ; $5E3D: $CF
    ld e, h                                       ; $5E3E: $5C
    ld [hl], b                                    ; $5E3F: $70
    ld [hl], c                                    ; $5E40: $71
    ld [hl], d                                    ; $5E41: $72
    ld [hl], e                                    ; $5E42: $73
    ld h, $C5                                     ; $5E43: $26 $C5
    cp c                                          ; $5E45: $B9
    cp d                                          ; $5E46: $BA
    xor c                                         ; $5E47: $A9
    xor d                                         ; $5E48: $AA
    add d                                         ; $5E49: $82
    ld h, $01                                     ; $5E4A: $26 $01
    ld c, b                                       ; $5E4C: $48
    adc b                                         ; $5E4D: $88
    push bc                                       ; $5E4E: $C5
    ld [bc], a                                    ; $5E4F: $02
    cp c                                          ; $5E50: $B9
    cp d                                          ; $5E51: $BA
    add h                                         ; $5E52: $84
    ld h, $0E                                     ; $5E53: $26 $0E
    add h                                         ; $5E55: $84
    add l                                         ; $5E56: $85
    add [hl]                                      ; $5E57: $86
    add a                                         ; $5E58: $87
    ld a, h                                       ; $5E59: $7C
    xor [hl]                                      ; $5E5A: $AE
    xor a                                         ; $5E5B: $AF
    sbc $7C                                       ; $5E5C: $DE $7C
    add b                                         ; $5E5E: $80
    add c                                         ; $5E5F: $81
    add d                                         ; $5E60: $82
    add e                                         ; $5E61: $83
    ld h, $83                                     ; $5E62: $26 $83
    push bc                                       ; $5E64: $C5
    dec b                                         ; $5E65: $05
    cp c                                          ; $5E66: $B9
    cp d                                          ; $5E67: $BA
    ld b, [hl]                                    ; $5E68: $46
    ld h, $58                                     ; $5E69: $26 $58
    adc d                                         ; $5E6B: $8A
    push bc                                       ; $5E6C: $C5
    ld bc, $8557                                  ; $5E6D: $01 $57 $85
    ld h, $09                                     ; $5E70: $26 $09
    sub [hl]                                      ; $5E72: $96
    sub a                                         ; $5E73: $97
    adc h                                         ; $5E74: $8C
    ld a, [c]                                     ; $5E75: $F2
    jp z, $8CF2                                   ; $5E76: $CA $F2 $8C

    sub b                                         ; $5E79: $90
    sub c                                         ; $5E7A: $91
    add e                                         ; $5E7B: $83
    ld h, $84                                     ; $5E7C: $26 $84
    push bc                                       ; $5E7E: $C5
    inc b                                         ; $5E7F: $04
    adc d                                         ; $5E80: $8A
    ld h, $26                                     ; $5E81: $26 $26
    ld c, b                                       ; $5E83: $48
    adc d                                         ; $5E84: $8A
    push bc                                       ; $5E85: $C5
    ld bc, $8947                                  ; $5E86: $01 $47 $89
    ld h, $01                                     ; $5E89: $26 $01
    cp l                                          ; $5E8B: $BD
    add a                                         ; $5E8C: $87
    ld h, $82                                     ; $5E8D: $26 $82
    push bc                                       ; $5E8F: $C5
    inc bc                                        ; $5E90: $03
    adc b                                         ; $5E91: $88
    sbc c                                         ; $5E92: $99
    sbc d                                         ; $5E93: $9A
    add d                                         ; $5E94: $82
    ld h, $01                                     ; $5E95: $26 $01
    ld e, b                                       ; $5E97: $58
    add h                                         ; $5E98: $84
    push bc                                       ; $5E99: $C5
    ld [$6463], sp                                ; $5E9A: $08 $63 $64
    ld h, e                                       ; $5E9D: $63
    ld h, h                                       ; $5E9E: $64
    push bc                                       ; $5E9F: $C5
    res 5, c                                      ; $5EA0: $CB $A9
    xor d                                         ; $5EA2: $AA
    sub b                                         ; $5EA3: $90
    ld h, $82                                     ; $5EA4: $26 $82
    push bc                                       ; $5EA6: $C5
    ld bc, $848A                                  ; $5EA7: $01 $8A $84
    ld h, $01                                     ; $5EAA: $26 $01
    ld c, b                                       ; $5EAC: $48
    add e                                         ; $5EAD: $83
    push bc                                       ; $5EAE: $C5
    ld bc, $848A                                  ; $5EAF: $01 $8A $84
    ld h, $06                                     ; $5EB2: $26 $06
    adc e                                         ; $5EB4: $8B
    push bc                                       ; $5EB5: $C5
    cp c                                          ; $5EB6: $B9
    cp d                                          ; $5EB7: $BA
    xor c                                         ; $5EB8: $A9
    xor d                                         ; $5EB9: $AA
    adc [hl]                                      ; $5EBA: $8E
    ld h, $03                                     ; $5EBB: $26 $03
    adc b                                         ; $5EBD: $88
    sbc c                                         ; $5EBE: $99
    sbc d                                         ; $5EBF: $9A
    add h                                         ; $5EC0: $84
    ld h, $05                                     ; $5EC1: $26 $05
    ld e, b                                       ; $5EC3: $58
    push bc                                       ; $5EC4: $C5
    adc b                                         ; $5EC5: $88
    sbc c                                         ; $5EC6: $99
    sbc d                                         ; $5EC7: $9A
    add h                                         ; $5EC8: $84
    ld h, $02                                     ; $5EC9: $26 $02
    sbc e                                         ; $5ECB: $9B
    sbc h                                         ; $5ECC: $9C
    add d                                         ; $5ECD: $82
    push bc                                       ; $5ECE: $C5
    ld b, $B9                                     ; $5ECF: $06 $B9
    cp d                                          ; $5ED1: $BA
    sub h                                         ; $5ED2: $94
    sub l                                         ; $5ED3: $95
    xor c                                         ; $5ED4: $A9
    xor d                                         ; $5ED5: $AA
    adc d                                         ; $5ED6: $8A
    ld h, $01                                     ; $5ED7: $26 $01
    adc d                                         ; $5ED9: $8A
    add l                                         ; $5EDA: $85
    ld h, $05                                     ; $5EDB: $26 $05
    xor e                                         ; $5EDD: $AB
    xor h                                         ; $5EDE: $AC
    call z, Call_06D_47C5                         ; $5EDF: $CC $C5 $47
    add a                                         ; $5EE2: $87
    ld h, $01                                     ; $5EE3: $26 $01
    adc e                                         ; $5EE5: $8B
    add e                                         ; $5EE6: $83
    push bc                                       ; $5EE7: $C5
    dec b                                         ; $5EE8: $05
    and h                                         ; $5EE9: $A4
    and l                                         ; $5EEA: $A5
    cp c                                          ; $5EEB: $B9
    cp d                                          ; $5EEC: $BA
    ld b, [hl]                                    ; $5EED: $46
    adc b                                         ; $5EEE: $88
    ld h, $02                                     ; $5EEF: $26 $02
    xor e                                         ; $5EF1: $AB
    sbc d                                         ; $5EF2: $9A

jr_06D_5EF3:
    add h                                         ; $5EF3: $84
    ld h, $03                                     ; $5EF4: $26 $03
    ld b, h                                       ; $5EF6: $44
    cp e                                          ; $5EF7: $BB
    cp h                                          ; $5EF8: $BC
    add d                                         ; $5EF9: $82
    push bc                                       ; $5EFA: $C5
    ld bc, $8757                                  ; $5EFB: $01 $57 $87
    ld h, $03                                     ; $5EFE: $26 $03
    sbc e                                         ; $5F00: $9B
    sbc h                                         ; $5F01: $9C
    adc c                                         ; $5F02: $89
    add l                                         ; $5F03: $85
    push bc                                       ; $5F04: $C5
    ld bc, $8647                                  ; $5F05: $01 $47 $86
    ld h, $03                                     ; $5F08: $26 $03
    xor e                                         ; $5F0A: $AB
    xor h                                         ; $5F0B: $AC
    cp e                                          ; $5F0C: $BB
    add l                                         ; $5F0D: $85
    ld h, $01                                     ; $5F0E: $26 $01
    ld c, b                                       ; $5F10: $48
    add h                                         ; $5F11: $84
    push bc                                       ; $5F12: $C5
    ld bc, $8747                                  ; $5F13: $01 $47 $87
    ld h, $03                                     ; $5F16: $26 $03
    xor e                                         ; $5F18: $AB
    xor h                                         ; $5F19: $AC
    call z, $C585                                 ; $5F1A: $CC $85 $C5
    ld bc, $8457                                  ; $5F1D: $01 $57 $84
    ld h, $05                                     ; $5F20: $26 $05
    xor e                                         ; $5F22: $AB
    xor h                                         ; $5F23: $AC
    cp e                                          ; $5F24: $BB
    cp h                                          ; $5F25: $BC
    ld l, b                                       ; $5F26: $68
    add l                                         ; $5F27: $85
    ld h, $01                                     ; $5F28: $26 $01
    ld e, b                                       ; $5F2A: $58
    add h                                         ; $5F2B: $84
    push bc                                       ; $5F2C: $C5
    ld bc, $8557                                  ; $5F2D: $01 $57 $85
    ld h, $04                                     ; $5F30: $26 $04
    xor e                                         ; $5F32: $AB
    xor h                                         ; $5F33: $AC
    cp e                                          ; $5F34: $BB
    cp h                                          ; $5F35: $BC
    add [hl]                                      ; $5F36: $86
    push bc                                       ; $5F37: $C5
    ld bc, $8347                                  ; $5F38: $01 $47 $83
    ld h, $03                                     ; $5F3B: $26 $03
    ld b, h                                       ; $5F3D: $44
    cp e                                          ; $5F3E: $BB
    cp h                                          ; $5F3F: $BC
    add e                                         ; $5F40: $83
    ld l, b                                       ; $5F41: $68
    add l                                         ; $5F42: $85
    ld h, $01                                     ; $5F43: $26 $01
    ld c, b                                       ; $5F45: $48
    add e                                         ; $5F46: $83
    push bc                                       ; $5F47: $C5
    inc bc                                        ; $5F48: $03
    adc b                                         ; $5F49: $88
    xor c                                         ; $5F4A: $A9
    xor d                                         ; $5F4B: $AA
    add d                                         ; $5F4C: $82
    ld h, $04                                     ; $5F4D: $26 $04
    xor e                                         ; $5F4F: $AB
    xor h                                         ; $5F50: $AC
    cp e                                          ; $5F51: $BB
    cp h                                          ; $5F52: $BC
    adc b                                         ; $5F53: $88
    push bc                                       ; $5F54: $C5
    ld bc, $8357                                  ; $5F55: $01 $57 $83
    ld h, $01                                     ; $5F58: $26 $01
    ld c, b                                       ; $5F5A: $48
    add l                                         ; $5F5B: $85
    ld l, b                                       ; $5F5C: $68
    add l                                         ; $5F5D: $85
    ld h, $01                                     ; $5F5E: $26 $01
    ld e, b                                       ; $5F60: $58
    add h                                         ; $5F61: $84
    push bc                                       ; $5F62: $C5
    ld b, $B9                                     ; $5F63: $06 $B9
    cp d                                          ; $5F65: $BA
    sub h                                         ; $5F66: $94
    sub l                                         ; $5F67: $95
    cp e                                          ; $5F68: $BB
    cp h                                          ; $5F69: $BC
    adc c                                         ; $5F6A: $89
    push bc                                       ; $5F6B: $C5
    ld [bc], a                                    ; $5F6C: $02
    adc d                                         ; $5F6D: $8A
    jr c, jr_06D_5EF3                             ; $5F6E: $38 $83

    ld h, $01                                     ; $5F70: $26 $01
    ld e, b                                       ; $5F72: $58
    add l                                         ; $5F73: $85
    ld l, b                                       ; $5F74: $68
    add l                                         ; $5F75: $85
    ld h, $02                                     ; $5F76: $26 $02
    dec sp                                        ; $5F78: $3B
    adc e                                         ; $5F79: $8B
    add l                                         ; $5F7A: $85
    push bc                                       ; $5F7B: $C5
    ld [bc], a                                    ; $5F7C: $02
    and h                                         ; $5F7D: $A4
    and l                                         ; $5F7E: $A5
    adc c                                         ; $5F7F: $89
    push bc                                       ; $5F80: $C5
    inc bc                                        ; $5F81: $03
    adc b                                         ; $5F82: $88
    sbc c                                         ; $5F83: $99
    sbc d                                         ; $5F84: $9A
    add h                                         ; $5F85: $84
    ld h, $01                                     ; $5F86: $26 $01
    ld c, b                                       ; $5F88: $48
    add l                                         ; $5F89: $85
    ld l, b                                       ; $5F8A: $68
    nop                                           ; $5F8B: $00
    ld [hl-], a                                   ; $5F8C: $32
    call nz, $C009                                ; $5F8D: $C4 $09 $C0
    ld b, a                                       ; $5F90: $47
    ld [$0087], sp                                ; $5F91: $08 $87 $00
    adc h                                         ; $5F94: $8C
    ld [$0082], sp                                ; $5F95: $08 $82 $00
    sub d                                         ; $5F98: $92
    ld [$0082], sp                                ; $5F99: $08 $82 $00
    add [hl]                                      ; $5F9C: $86
    ld [$0003], sp                                ; $5F9D: $08 $03 $00
    ld [$8308], sp                                ; $5FA0: $08 $08 $83
    nop                                           ; $5FA3: $00
    add d                                         ; $5FA4: $82
    ld [$0086], sp                                ; $5FA5: $08 $86 $00
    add [hl]                                      ; $5FA8: $86
    ld [$0083], sp                                ; $5FA9: $08 $83 $00
    add h                                         ; $5FAC: $84
    ld [$0082], sp                                ; $5FAD: $08 $82 $00
    adc e                                         ; $5FB0: $8B
    ld [$0090], sp                                ; $5FB1: $08 $90 $00
    add d                                         ; $5FB4: $82
    ld [$0082], sp                                ; $5FB5: $08 $82 $00
    ld bc, $9308                                  ; $5FB8: $01 $08 $93
    nop                                           ; $5FBB: $00
    adc d                                         ; $5FBC: $8A
    ld [$0089], sp                                ; $5FBD: $08 $89 $00
    ld bc, $8308                                  ; $5FC0: $01 $08 $83
    nop                                           ; $5FC3: $00
    adc b                                         ; $5FC4: $88
    ld [$0001], sp                                ; $5FC5: $08 $01 $00
    add e                                         ; $5FC8: $83
    ld [$0083], sp                                ; $5FC9: $08 $83 $00
    add d                                         ; $5FCC: $82
    ld [$008A], sp                                ; $5FCD: $08 $8A $00
    adc c                                         ; $5FD0: $89
    ld [$0085], sp                                ; $5FD1: $08 $85 $00
    ld bc, $8308                                  ; $5FD4: $01 $08 $83
    nop                                           ; $5FD7: $00
    add d                                         ; $5FD8: $82
    ld [$0082], sp                                ; $5FD9: $08 $82 $00
    add d                                         ; $5FDC: $82
    ld [$0082], sp                                ; $5FDD: $08 $82 $00
    adc d                                         ; $5FE0: $8A
    ld [$0001], sp                                ; $5FE1: $08 $01 $00
    add h                                         ; $5FE4: $84
    ld [$0089], sp                                ; $5FE5: $08 $89 $00
    add l                                         ; $5FE8: $85
    ld [$0086], sp                                ; $5FE9: $08 $86 $00
    ld [bc], a                                    ; $5FEC: $02
    ld [$8300], sp                                ; $5FED: $08 $00 $83
    ld [$0082], sp                                ; $5FF0: $08 $82 $00
    add [hl]                                      ; $5FF3: $86
    ld [$0082], sp                                ; $5FF4: $08 $82 $00
    add d                                         ; $5FF7: $82
    ld [$0082], sp                                ; $5FF8: $08 $82 $00
    add [hl]                                      ; $5FFB: $86
    ld [$0001], sp                                ; $5FFC: $08 $01 $00
    add h                                         ; $5FFF: $84
    ld [$008A], sp                                ; $6000: $08 $8A $00
    add e                                         ; $6003: $83
    ld [$0087], sp                                ; $6004: $08 $87 $00
    add l                                         ; $6007: $85
    ld [$0082], sp                                ; $6008: $08 $82 $00
    add [hl]                                      ; $600B: $86
    ld [$0086], sp                                ; $600C: $08 $86 $00
    add d                                         ; $600F: $82
    ld [$0086], sp                                ; $6010: $08 $86 $00
    add e                                         ; $6013: $83
    ld [$008A], sp                                ; $6014: $08 $8A $00
    add e                                         ; $6017: $83
    ld [$0086], sp                                ; $6018: $08 $86 $00
    add l                                         ; $601B: $85
    ld [$0085], sp                                ; $601C: $08 $85 $00
    add d                                         ; $601F: $82
    ld [$0082], sp                                ; $6020: $08 $82 $00
    add e                                         ; $6023: $83
    ld [$0083], sp                                ; $6024: $08 $83 $00
    add d                                         ; $6027: $82
    ld [$0082], sp                                ; $6028: $08 $82 $00
    add d                                         ; $602B: $82
    ld [$0083], sp                                ; $602C: $08 $83 $00
    add e                                         ; $602F: $83
    ld [$0085], sp                                ; $6030: $08 $85 $00
    inc bc                                        ; $6033: $03
    ld [rRAMG], sp                                ; $6034: $08 $00 $00
    add h                                         ; $6037: $84
    ld [$0086], sp                                ; $6038: $08 $86 $00
    add h                                         ; $603B: $84
    ld [$0086], sp                                ; $603C: $08 $86 $00
    add d                                         ; $603F: $82
    ld [$0082], sp                                ; $6040: $08 $82 $00
    add e                                         ; $6043: $83
    ld [$0083], sp                                ; $6044: $08 $83 $00
    add d                                         ; $6047: $82
    ld [$0082], sp                                ; $6048: $08 $82 $00
    ld bc, $8540                                  ; $604B: $01 $40 $85
    nop                                           ; $604E: $00
    add e                                         ; $604F: $83
    ld [$0084], sp                                ; $6050: $08 $84 $00
    ld [bc], a                                    ; $6053: $02
    ld [$8600], sp                                ; $6054: $08 $00 $86
    ld [$0085], sp                                ; $6057: $08 $85 $00
    add e                                         ; $605A: $83
    ld [$0082], sp                                ; $605B: $08 $82 $00
    ld bc, $8408                                  ; $605E: $01 $08 $84
    nop                                           ; $6061: $00
    add d                                         ; $6062: $82
    ld [$0084], sp                                ; $6063: $08 $84 $00
    ld bc, $8308                                  ; $6066: $01 $08 $83
    nop                                           ; $6069: $00
    add d                                         ; $606A: $82
    ld [$0089], sp                                ; $606B: $08 $89 $00
    add e                                         ; $606E: $83
    ld [$0001], sp                                ; $606F: $08 $01 $00
    adc d                                         ; $6072: $8A
    ld [$0085], sp                                ; $6073: $08 $85 $00
    add e                                         ; $6076: $83
    ld [$0085], sp                                ; $6077: $08 $85 $00
    ld bc, $8708                                  ; $607A: $01 $08 $87
    nop                                           ; $607D: $00
    ld bc, $8308                                  ; $607E: $01 $08 $83
    nop                                           ; $6081: $00
    add d                                         ; $6082: $82
    ld [$0089], sp                                ; $6083: $08 $89 $00
    add e                                         ; $6086: $83
    ld [$0001], sp                                ; $6087: $08 $01 $00
    adc d                                         ; $608A: $8A
    ld [$0085], sp                                ; $608B: $08 $85 $00
    add l                                         ; $608E: $85
    ld [$0082], sp                                ; $608F: $08 $82 $00
    inc bc                                        ; $6092: $03
    ld b, e                                       ; $6093: $43
    ld [$8200], sp                                ; $6094: $08 $00 $82
    ld [$0083], sp                                ; $6097: $08 $83 $00
    add e                                         ; $609A: $83
    ld [$0001], sp                                ; $609B: $08 $01 $00
    add e                                         ; $609E: $83
    ld [$0087], sp                                ; $609F: $08 $87 $00
    add l                                         ; $60A2: $85
    ld [$0082], sp                                ; $60A3: $08 $82 $00
    adc c                                         ; $60A6: $89
    ld [$0086], sp                                ; $60A7: $08 $86 $00
    sub c                                         ; $60AA: $91
    ld [$0003], sp                                ; $60AB: $08 $03 $00
    ld [$8508], sp                                ; $60AE: $08 $08 $85
    nop                                           ; $60B1: $00
    inc bc                                        ; $60B2: $03
    ld [rRAMG], sp                                ; $60B3: $08 $00 $00
    add h                                         ; $60B6: $84
    ld [$0083], sp                                ; $60B7: $08 $83 $00
    adc c                                         ; $60BA: $89
    ld [$0083], sp                                ; $60BB: $08 $83 $00
    ld bc, $8308                                  ; $60BE: $01 $08 $83
    nop                                           ; $60C1: $00
    sub b                                         ; $60C2: $90
    ld [$0001], sp                                ; $60C3: $08 $01 $00
    add e                                         ; $60C6: $83
    ld [$0005], sp                                ; $60C7: $08 $05 $00
    ld b, c                                       ; $60CA: $41
    ld [$0842], sp                                ; $60CB: $08 $42 $08
    add d                                         ; $60CE: $82
    nop                                           ; $60CF: $00
    add h                                         ; $60D0: $84
    ld [$0083], sp                                ; $60D1: $08 $83 $00
    adc d                                         ; $60D4: $8A
    ld [$0082], sp                                ; $60D5: $08 $82 $00
    add d                                         ; $60D8: $82
    ld [$0083], sp                                ; $60D9: $08 $83 $00
    add h                                         ; $60DC: $84
    ld [$0083], sp                                ; $60DD: $08 $83 $00
    add e                                         ; $60E0: $83
    ld [$0086], sp                                ; $60E1: $08 $86 $00
    adc [hl]                                      ; $60E4: $8E
    ld [$0087], sp                                ; $60E5: $08 $87 $00
    add l                                         ; $60E8: $85
    ld [$0082], sp                                ; $60E9: $08 $82 $00
    add e                                         ; $60EC: $83
    ld [$0083], sp                                ; $60ED: $08 $83 $00
    add e                                         ; $60F0: $83
    ld [$0082], sp                                ; $60F1: $08 $82 $00
    ld [bc], a                                    ; $60F4: $02
    ld [$8200], sp                                ; $60F5: $08 $00 $82
    ld [$0088], sp                                ; $60F8: $08 $88 $00
    adc l                                         ; $60FB: $8D
    ld [$0088], sp                                ; $60FC: $08 $88 $00
    adc d                                         ; $60FF: $8A
    ld [$0083], sp                                ; $6100: $08 $83 $00
    ld bc, $8508                                  ; $6103: $01 $08 $85
    nop                                           ; $6106: $00
    add d                                         ; $6107: $82
    ld [$008F], sp                                ; $6108: $08 $8F $00
    add l                                         ; $610B: $85
    ld [$0089], sp                                ; $610C: $08 $89 $00
    adc e                                         ; $610F: $8B
    ld [$0088], sp                                ; $6110: $08 $88 $00
    add d                                         ; $6113: $82
    ld [$0090], sp                                ; $6114: $08 $90 $00
    add e                                         ; $6117: $83
    ld [$008A], sp                                ; $6118: $08 $8A $00
    add h                                         ; $611B: $84
    ld [$0084], sp                                ; $611C: $08 $84 $00
    add h                                         ; $611F: $84
    ld [$00A3], sp                                ; $6120: $08 $A3 $00
    add d                                         ; $6123: $82
    ld [$0001], sp                                ; $6124: $08 $01 $00
    add e                                         ; $6127: $83
    ld [$0086], sp                                ; $6128: $08 $86 $00
    add h                                         ; $612B: $84
    ld [$0086], sp                                ; $612C: $08 $86 $00
    add l                                         ; $612F: $85
    ld [$0002], sp                                ; $6130: $08 $02 $00
    ld [$0083], sp                                ; $6133: $08 $83 $00
    adc b                                         ; $6136: $88
    ld [$0082], sp                                ; $6137: $08 $82 $00
    ld bc, $8708                                  ; $613A: $01 $08 $87
    nop                                           ; $613D: $00
    add d                                         ; $613E: $82
    ld [$0001], sp                                ; $613F: $08 $01 $00
    add e                                         ; $6142: $83
    ld [$0087], sp                                ; $6143: $08 $87 $00
    add h                                         ; $6146: $84
    ld [$0085], sp                                ; $6147: $08 $85 $00
    add a                                         ; $614A: $87
    ld [$0082], sp                                ; $614B: $08 $82 $00
    adc d                                         ; $614E: $8A
    ld [$0003], sp                                ; $614F: $08 $03 $00
    ld [$8608], sp                                ; $6152: $08 $08 $86
    nop                                           ; $6155: $00
    add [hl]                                      ; $6156: $86
    ld [$0087], sp                                ; $6157: $08 $87 $00
    add h                                         ; $615A: $84
    ld [$0086], sp                                ; $615B: $08 $86 $00
    adc e                                         ; $615E: $8B
    ld [$0084], sp                                ; $615F: $08 $84 $00
    add [hl]                                      ; $6162: $86
    ld [$0086], sp                                ; $6163: $08 $86 $00
    add [hl]                                      ; $6166: $86
    ld [$0002], sp                                ; $6167: $08 $02 $00
    ld [$0085], sp                                ; $616A: $08 $85 $00
    add h                                         ; $616D: $84
    ld [$0089], sp                                ; $616E: $08 $89 $00
    add a                                         ; $6171: $87
    ld [$0086], sp                                ; $6172: $08 $86 $00
    add l                                         ; $6175: $85
    ld [$0082], sp                                ; $6176: $08 $82 $00
    ld bc, $8308                                  ; $6179: $01 $08 $83
    nop                                           ; $617C: $00
    add [hl]                                      ; $617D: $86
    ld [$0003], sp                                ; $617E: $08 $03 $00
    ld [$8408], sp                                ; $6181: $08 $08 $84
    nop                                           ; $6184: $00
    add d                                         ; $6185: $82
    ld [$008C], sp                                ; $6186: $08 $8C $00
    add l                                         ; $6189: $85
    ld [$0088], sp                                ; $618A: $08 $88 $00
    add l                                         ; $618D: $85
    ld [$0002], sp                                ; $618E: $08 $02 $00
    ld [$0082], sp                                ; $6191: $08 $82 $00
    adc d                                         ; $6194: $8A
    ld [$0084], sp                                ; $6195: $08 $84 $00
    add e                                         ; $6198: $83
    ld [$008C], sp                                ; $6199: $08 $8C $00
    add h                                         ; $619C: $84
    ld [$008A], sp                                ; $619D: $08 $8A $00
    add l                                         ; $61A0: $85
    ld [$0001], sp                                ; $61A1: $08 $01 $00
    adc e                                         ; $61A4: $8B
    ld [$0085], sp                                ; $61A5: $08 $85 $00
    ld bc, $8908                                  ; $61A8: $01 $08 $89
    nop                                           ; $61AB: $00
    add e                                         ; $61AC: $83
    ld [$0082], sp                                ; $61AD: $08 $82 $00
    add e                                         ; $61B0: $83
    ld [$008B], sp                                ; $61B1: $08 $8B $00
    add h                                         ; $61B4: $84
    ld [$0001], sp                                ; $61B5: $08 $01 $00
    adc d                                         ; $61B8: $8A
    ld [$0089], sp                                ; $61B9: $08 $89 $00
    add d                                         ; $61BC: $82
    ld [$0082], sp                                ; $61BD: $08 $82 $00
    ld [bc], a                                    ; $61C0: $02
    ld [$8400], sp                                ; $61C1: $08 $00 $84
    ld [$0083], sp                                ; $61C4: $08 $83 $00
    add e                                         ; $61C7: $83
    ld [$008C], sp                                ; $61C8: $08 $8C $00
    add d                                         ; $61CB: $82
    ld [$0082], sp                                ; $61CC: $08 $82 $00
    adc c                                         ; $61CF: $89
    ld [$0085], sp                                ; $61D0: $08 $85 $00
    adc c                                         ; $61D3: $89
    ld [$0001], sp                                ; $61D4: $08 $01 $00
    add h                                         ; $61D7: $84
    ld [$0083], sp                                ; $61D8: $08 $83 $00
    add h                                         ; $61DB: $84
    ld [$0002], sp                                ; $61DC: $08 $02 $00
    ld [$008F], sp                                ; $61DF: $08 $8F $00
    add l                                         ; $61E2: $85
    ld [$0086], sp                                ; $61E3: $08 $86 $00
    adc a                                         ; $61E6: $8F
    ld [$0084], sp                                ; $61E7: $08 $84 $00
    add [hl]                                      ; $61EA: $86
    ld [$0083], sp                                ; $61EB: $08 $83 $00
    inc bc                                        ; $61EE: $03
    ld [$0800], sp                                ; $61EF: $08 $00 $08
    adc c                                         ; $61F2: $89
    nop                                           ; $61F3: $00
    add l                                         ; $61F4: $85
    ld [$0084], sp                                ; $61F5: $08 $84 $00
    add h                                         ; $61F8: $84
    ld [$0082], sp                                ; $61F9: $08 $82 $00
    add d                                         ; $61FC: $82
    ld [$0086], sp                                ; $61FD: $08 $86 $00
    add d                                         ; $6200: $82
    ld [$0085], sp                                ; $6201: $08 $85 $00
    add l                                         ; $6204: $85
    ld [$0082], sp                                ; $6205: $08 $82 $00
    add h                                         ; $6208: $84
    ld [$0089], sp                                ; $6209: $08 $89 $00
    add l                                         ; $620C: $85
    ld [$0084], sp                                ; $620D: $08 $84 $00
    add e                                         ; $6210: $83
    ld [$0083], sp                                ; $6211: $08 $83 $00
    add d                                         ; $6214: $82
    ld [$0086], sp                                ; $6215: $08 $86 $00
    ld bc, $8708                                  ; $6218: $01 $08 $87
    nop                                           ; $621B: $00
    adc d                                         ; $621C: $8A
    ld [$0089], sp                                ; $621D: $08 $89 $00
    add l                                         ; $6220: $85
    ld [$0084], sp                                ; $6221: $08 $84 $00
    add d                                         ; $6224: $82
    ld [$008C], sp                                ; $6225: $08 $8C $00
    add d                                         ; $6228: $82
    ld [$0087], sp                                ; $6229: $08 $87 $00
    adc c                                         ; $622C: $89
    ld [$0089], sp                                ; $622D: $08 $89 $00
    add l                                         ; $6230: $85
    ld [$0084], sp                                ; $6231: $08 $84 $00
    add d                                         ; $6234: $82
    ld [$0086], sp                                ; $6235: $08 $86 $00
    add e                                         ; $6238: $83
    ld [$0082], sp                                ; $6239: $08 $82 $00
    add e                                         ; $623C: $83
    ld [$0099], sp                                ; $623D: $08 $99 $00
    add l                                         ; $6240: $85
    ld [$0083], sp                                ; $6241: $08 $83 $00
    add e                                         ; $6244: $83
    ld [$0002], sp                                ; $6245: $08 $02 $00
    ld [$0084], sp                                ; $6248: $08 $84 $00
    add e                                         ; $624B: $83
    ld [$0082], sp                                ; $624C: $08 $82 $00
    add d                                         ; $624F: $82
    ld [$008D], sp                                ; $6250: $08 $8D $00
    add e                                         ; $6253: $83
    ld [$0086], sp                                ; $6254: $08 $86 $00
    ld bc, $8308                                  ; $6257: $01 $08 $83
    nop                                           ; $625A: $00
    add h                                         ; $625B: $84
    ld [$0084], sp                                ; $625C: $08 $84 $00
    add l                                         ; $625F: $85
    ld [$0086], sp                                ; $6260: $08 $86 $00
    inc bc                                        ; $6263: $03
    ld [rRAMG], sp                                ; $6264: $08 $00 $00
    add d                                         ; $6267: $82
    ld [$008D], sp                                ; $6268: $08 $8D $00
    add e                                         ; $626B: $83
    ld [$0086], sp                                ; $626C: $08 $86 $00
    adc b                                         ; $626F: $88
    ld [$0085], sp                                ; $6270: $08 $85 $00
    add h                                         ; $6273: $84
    ld [$0089], sp                                ; $6274: $08 $89 $00
    add d                                         ; $6277: $82
    ld [$008E], sp                                ; $6278: $08 $8E $00
    add d                                         ; $627B: $82
    ld [$008A], sp                                ; $627C: $08 $8A $00
    add h                                         ; $627F: $84
    ld [$0002], sp                                ; $6280: $08 $02 $00
    ld [$0085], sp                                ; $6283: $08 $85 $00
    adc b                                         ; $6286: $88
    ld [$0084], sp                                ; $6287: $08 $84 $00
    add d                                         ; $628A: $82
    ld [$008D], sp                                ; $628B: $08 $8D $00
    add d                                         ; $628E: $82
    ld [$008B], sp                                ; $628F: $08 $8B $00
    ld bc, $84C0                                  ; $6292: $01 $C0 $84
    ld [$0085], sp                                ; $6295: $08 $85 $00
    adc b                                         ; $6298: $88
    ld [$0084], sp                                ; $6299: $08 $84 $00
    add l                                         ; $629C: $85
    ld [$0087], sp                                ; $629D: $08 $87 $00
    ld [bc], a                                    ; $62A0: $02
    ld [$8300], sp                                ; $62A1: $08 $00 $83
    ld [$008B], sp                                ; $62A4: $08 $8B $00
    ld bc, $84C0                                  ; $62A7: $01 $C0 $84
    ld [$0084], sp                                ; $62AA: $08 $84 $00
    add e                                         ; $62AD: $83
    ld [$0084], sp                                ; $62AE: $08 $84 $00
    add e                                         ; $62B1: $83
    ld [$0084], sp                                ; $62B2: $08 $84 $00
    add h                                         ; $62B5: $84
    ld [$0084], sp                                ; $62B6: $08 $84 $00
    inc bc                                        ; $62B9: $03
    ld [rRAMG], sp                                ; $62BA: $08 $00 $00
    add h                                         ; $62BD: $84
    ld [$0086], sp                                ; $62BE: $08 $86 $00
    inc bc                                        ; $62C1: $03
    ld [rRAMG], sp                                ; $62C2: $08 $00 $00
    adc c                                         ; $62C5: $89
    ld [$0083], sp                                ; $62C6: $08 $83 $00
    add d                                         ; $62C9: $82
    ld [$0086], sp                                ; $62CA: $08 $86 $00
    add h                                         ; $62CD: $84
    ld [$0083], sp                                ; $62CE: $08 $83 $00
    adc [hl]                                      ; $62D1: $8E
    ld [$0086], sp                                ; $62D2: $08 $86 $00
    inc bc                                        ; $62D5: $03
    ld [rRAMG], sp                                ; $62D6: $08 $00 $00
    adc d                                         ; $62D9: $8A
    ld [$0082], sp                                ; $62DA: $08 $82 $00
    add d                                         ; $62DD: $82
    ld [$0087], sp                                ; $62DE: $08 $87 $00
    add e                                         ; $62E1: $83
    ld [$0084], sp                                ; $62E2: $08 $84 $00
    adc h                                         ; $62E5: $8C
    ld [$0087], sp                                ; $62E6: $08 $87 $00
    ld b, $08                                     ; $62E9: $06 $08
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    ld [rRAMG], sp                                ; $62ED: $08 $00 $00
    add a                                         ; $62F0: $87
    ld [$0086], sp                                ; $62F1: $08 $86 $00
    add d                                         ; $62F4: $82
    ld [$0084], sp                                ; $62F5: $08 $84 $00
    add e                                         ; $62F8: $83
    ld [$0083], sp                                ; $62F9: $08 $83 $00
    add d                                         ; $62FC: $82
    ld [$0003], sp                                ; $62FD: $08 $03 $00
    ld [$9308], sp                                ; $6300: $08 $08 $93
    nop                                           ; $6303: $00
    add a                                         ; $6304: $87
    ld [$008E], sp                                ; $6305: $08 $8E $00
    add h                                         ; $6308: $84
    ld [$0099], sp                                ; $6309: $08 $99 $00
    add a                                         ; $630C: $87
    ld [$008F], sp                                ; $630D: $08 $8F $00
    add e                                         ; $6310: $83
    ld [$0098], sp                                ; $6311: $08 $98 $00
    adc c                                         ; $6314: $89
    ld [$008A], sp                                ; $6315: $08 $8A $00
    ld bc, $8308                                  ; $6318: $01 $08 $83
    nop                                           ; $631B: $00
    add h                                         ; $631C: $84
    ld [$008B], sp                                ; $631D: $08 $8B $00
    ld bc, $8308                                  ; $6320: $01 $08 $83
    nop                                           ; $6323: $00
    ld bc, $8608                                  ; $6324: $01 $08 $86
    nop                                           ; $6327: $00
    adc d                                         ; $6328: $8A
    ld [$0082], sp                                ; $6329: $08 $82 $00
    ld bc, $8708                                  ; $632C: $01 $08 $87
    nop                                           ; $632F: $00
    inc bc                                        ; $6330: $03
    ld [rRAMG], sp                                ; $6331: $08 $00 $00
    add h                                         ; $6334: $84
    ld [$0082], sp                                ; $6335: $08 $82 $00
    ld bc, $8908                                  ; $6338: $01 $08 $89
    nop                                           ; $633B: $00
    ld bc, $8308                                  ; $633C: $01 $08 $83
    nop                                           ; $633F: $00
    ld bc, $8508                                  ; $6340: $01 $08 $85
    nop                                           ; $6343: $00
    adc e                                         ; $6344: $8B
    ld [$0088], sp                                ; $6345: $08 $88 $00
    adc c                                         ; $6348: $89
    ld [$0083], sp                                ; $6349: $08 $83 $00
    add d                                         ; $634C: $82
    ld [$0003], sp                                ; $634D: $08 $03 $00
    ld [$8408], sp                                ; $6350: $08 $08 $84
    nop                                           ; $6353: $00
    sbc d                                         ; $6354: $9A
    ld [$0082], sp                                ; $6355: $08 $82 $00
    or b                                          ; $6358: $B0
    ld [$C182], sp                                ; $6359: $08 $82 $C1
    and l                                         ; $635C: $A5
    ld [$3200], sp                                ; $635D: $08 $00 $32
    jp nz, $2701                                  ; $6360: $C2 $01 $27

    inc d                                         ; $6363: $14
    call c, $8205                                 ; $6364: $DC $05 $82
    db $FC                                        ; $6367: $FC
    ld [bc], a                                    ; $6368: $02
    ld l, b                                       ; $6369: $68
    ld l, c                                       ; $636A: $69
    add e                                         ; $636B: $83
    ld sp, hl                                     ; $636C: $F9
    ld bc, $9F99                                  ; $636D: $01 $99 $9F
    db $FC                                        ; $6370: $FC
    ld [bc], a                                    ; $6371: $02
    or l                                          ; $6372: $B5
    or [hl]                                       ; $6373: $B6
    add e                                         ; $6374: $83
    ld sp, hl                                     ; $6375: $F9
    inc bc                                        ; $6376: $03
    ld d, b                                       ; $6377: $50
    ld d, c                                       ; $6378: $51
    ld d, d                                       ; $6379: $52
    add e                                         ; $637A: $83
    db $FC                                        ; $637B: $FC
    inc b                                         ; $637C: $04
    ld a, [hl+]                                   ; $637D: $2A
    dec hl                                        ; $637E: $2B
    ld a, b                                       ; $637F: $78
    ld a, c                                       ; $6380: $79
    add e                                         ; $6381: $83
    ld sp, hl                                     ; $6382: $F9
    ld [bc], a                                    ; $6383: $02
    or c                                          ; $6384: $B1
    or d                                          ; $6385: $B2
    sbc [hl]                                      ; $6386: $9E
    db $FC                                        ; $6387: $FC
    ld [bc], a                                    ; $6388: $02
    push bc                                       ; $6389: $C5
    add $83                                       ; $638A: $C6 $83
    ld sp, hl                                     ; $638C: $F9
    inc b                                         ; $638D: $04
    ld h, b                                       ; $638E: $60
    ld h, c                                       ; $638F: $61
    ld h, d                                       ; $6390: $62
    ld h, e                                       ; $6391: $63
    add d                                         ; $6392: $82
    db $FC                                        ; $6393: $FC
    dec b                                         ; $6394: $05
    ld a, [hl-]                                   ; $6395: $3A
    dec sp                                        ; $6396: $3B
    db $FC                                        ; $6397: $FC
    adc c                                         ; $6398: $89
    adc d                                         ; $6399: $8A
    add d                                         ; $639A: $82
    ld sp, hl                                     ; $639B: $F9
    ld [bc], a                                    ; $639C: $02
    pop bc                                        ; $639D: $C1
    jp nz, $FC9D                                  ; $639E: $C2 $9D $FC

    inc bc                                        ; $63A1: $03
    ld de, $D6D5                                  ; $63A2: $11 $D5 $D6
    add e                                         ; $63A5: $83
    ld sp, hl                                     ; $63A6: $F9
    inc b                                         ; $63A7: $04
    ld [hl], b                                    ; $63A8: $70
    ld [hl], c                                    ; $63A9: $71
    ld [hl], d                                    ; $63AA: $72
    ld [hl], e                                    ; $63AB: $73
    add h                                         ; $63AC: $84
    db $FC                                        ; $63AD: $FC
    inc bc                                        ; $63AE: $03
    ld de, $1312                                  ; $63AF: $11 $12 $13
    add d                                         ; $63B2: $82
    ld sp, hl                                     ; $63B3: $F9
    inc bc                                        ; $63B4: $03
    pop de                                        ; $63B5: $D1
    jp nc, $9BD3                                  ; $63B6: $D2 $D3 $9B

    db $FC                                        ; $63B9: $FC
    inc b                                         ; $63BA: $04
    ld de, $E5D5                                  ; $63BB: $11 $D5 $E5
    and $83                                       ; $63BE: $E6 $83
    ld sp, hl                                     ; $63C0: $F9
    inc b                                         ; $63C1: $04
    add b                                         ; $63C2: $80
    add c                                         ; $63C3: $81
    add d                                         ; $63C4: $82
    add e                                         ; $63C5: $83
    add e                                         ; $63C6: $83
    db $FC                                        ; $63C7: $FC
    inc b                                         ; $63C8: $04
    jr nz, jr_06D_63EC                            ; $63C9: $20 $21

    ld [hl+], a                                   ; $63CB: $22
    inc hl                                        ; $63CC: $23
    add d                                         ; $63CD: $82

Call_06D_63CE:
    ld sp, hl                                     ; $63CE: $F9
    ld b, $E1                                     ; $63CF: $06 $E1
    ld [c], a                                     ; $63D1: $E2
    db $E3                                        ; $63D2: $E3
    db $FC                                        ; $63D3: $FC
    ld c, d                                       ; $63D4: $4A
    ld c, e                                       ; $63D5: $4B
    adc e                                         ; $63D6: $8B
    db $FC                                        ; $63D7: $FC
    dec b                                         ; $63D8: $05
    ld c, d                                       ; $63D9: $4A
    ld c, e                                       ; $63DA: $4B
    db $FC                                        ; $63DB: $FC
    ld a, [hl+]                                   ; $63DC: $2A
    dec hl                                        ; $63DD: $2B
    add d                                         ; $63DE: $82
    db $FC                                        ; $63DF: $FC
    dec bc                                        ; $63E0: $0B
    ld de, $0512                                  ; $63E1: $11 $12 $05
    ld b, $07                                     ; $63E4: $06 $07
    call nc, $E5D5                                ; $63E6: $D4 $D5 $E5
    push af                                       ; $63E9: $F5
    or $F7                                        ; $63EA: $F6 $F7

jr_06D_63EC:
    add d                                         ; $63EC: $82
    ld sp, hl                                     ; $63ED: $F9
    inc bc                                        ; $63EE: $03
    rst $28                                       ; $63EF: $EF
    ld sp, hl                                     ; $63F0: $F9
    ret                                           ; $63F1: $C9


    add h                                         ; $63F2: $84
    db $FC                                        ; $63F3: $FC
    inc c                                         ; $63F4: $0C
    jr nc, @+$33                                  ; $63F5: $30 $31

    ld [hl-], a                                   ; $63F7: $32
    inc sp                                        ; $63F8: $33
    ld sp, hl                                     ; $63F9: $F9
    ldh a, [$F1]                                  ; $63FA: $F0 $F1
    ld a, [c]                                     ; $63FC: $F2
    di                                            ; $63FD: $F3
    db $FC                                        ; $63FE: $FC
    ld e, d                                       ; $63FF: $5A
    ld e, e                                       ; $6400: $5B
    adc e                                         ; $6401: $8B
    db $FC                                        ; $6402: $FC
    ld de, $5B5A                                  ; $6403: $11 $5A $5B
    db $FC                                        ; $6406: $FC
    ld a, [hl-]                                   ; $6407: $3A
    dec sp                                        ; $6408: $3B
    db $FC                                        ; $6409: $FC
    or a                                          ; $640A: $B7
    push de                                       ; $640B: $D5
    push hl                                       ; $640C: $E5
    dec d                                         ; $640D: $15
    ld d, $17                                     ; $640E: $16 $17
    push de                                       ; $6410: $D5
    push hl                                       ; $6411: $E5
    ld sp, $F7F6                                  ; $6412: $31 $F6 $F7
    add h                                         ; $6415: $84
    ld sp, hl                                     ; $6416: $F9
    ld bc, $85B1                                  ; $6417: $01 $B1 $85
    db $FC                                        ; $641A: $FC
    inc b                                         ; $641B: $04
    ld b, b                                       ; $641C: $40
    ld b, c                                       ; $641D: $41
    ld b, d                                       ; $641E: $42
    ld b, e                                       ; $641F: $43
    add e                                         ; $6420: $83
    ld sp, hl                                     ; $6421: $F9
    jr nz, @+$52                                  ; $6422: $20 $50

jr_06D_6424:
    ld d, c                                       ; $6424: $51
    inc b                                         ; $6425: $04
    dec b                                         ; $6426: $05
    ld b, $07                                     ; $6427: $06 $07
    sub b                                         ; $6429: $90
    adc [hl]                                      ; $642A: $8E
    adc a                                         ; $642B: $8F
    adc [hl]                                      ; $642C: $8E
    adc a                                         ; $642D: $8F
    adc [hl]                                      ; $642E: $8E
    adc a                                         ; $642F: $8F
    adc [hl]                                      ; $6430: $8E
    adc a                                         ; $6431: $8F
    adc [hl]                                      ; $6432: $8E
    adc a                                         ; $6433: $8F
    adc [hl]                                      ; $6434: $8E
    adc a                                         ; $6435: $8F
    adc [hl]                                      ; $6436: $8E
    adc a                                         ; $6437: $8F
    sub c                                         ; $6438: $91
    inc b                                         ; $6439: $04
    push hl                                       ; $643A: $E5
    inc h                                         ; $643B: $24
    dec h                                         ; $643C: $25
    ld h, $27                                     ; $643D: $26 $27
    ld sp, $F632                                  ; $643F: $31 $32 $F6
    rst $30                                       ; $6442: $F7
    add l                                         ; $6443: $85
    ld sp, hl                                     ; $6444: $F9
    ld [bc], a                                    ; $6445: $02
    pop bc                                        ; $6446: $C1
    jp nz, $FC85                                  ; $6447: $C2 $85 $FC

    ld [bc], a                                    ; $644A: $02
    db $ED                                        ; $644B: $ED
    rst $28                                       ; $644C: $EF
    add h                                         ; $644D: $84
    ld sp, hl                                     ; $644E: $F9
    rra                                           ; $644F: $1F
    ld h, b                                       ; $6450: $60
    ld h, c                                       ; $6451: $61
    inc d                                         ; $6452: $14
    dec d                                         ; $6453: $15
    ld d, $17                                     ; $6454: $16 $17
    and b                                         ; $6456: $A0
    ld l, [hl]                                    ; $6457: $6E
    ld l, a                                       ; $6458: $6F
    sbc [hl]                                      ; $6459: $9E
    sbc a                                         ; $645A: $9F
    ld l, [hl]                                    ; $645B: $6E
    ld l, a                                       ; $645C: $6F
    ld l, [hl]                                    ; $645D: $6E
    ld l, a                                       ; $645E: $6F
    sbc [hl]                                      ; $645F: $9E
    sbc a                                         ; $6460: $9F
    ld l, [hl]                                    ; $6461: $6E
    ld l, a                                       ; $6462: $6F
    ld l, [hl]                                    ; $6463: $6E
    ld l, a                                       ; $6464: $6F
    and c                                         ; $6465: $A1
    inc d                                         ; $6466: $14
    ld sp, $F632                                  ; $6467: $31 $32 $F6
    ld [hl], $37                                  ; $646A: $36 $37
    ld b, c                                       ; $646C: $41
    ld b, d                                       ; $646D: $42
    ld b, e                                       ; $646E: $43
    add [hl]                                      ; $646F: $86
    ld sp, hl                                     ; $6470: $F9
    inc bc                                        ; $6471: $03
    pop de                                        ; $6472: $D1
    jp nc, $85D3                                  ; $6473: $D2 $D3 $85

    db $FC                                        ; $6476: $FC
    ld bc, $84B6                                  ; $6477: $01 $B6 $84
    ld sp, hl                                     ; $647A: $F9
    ld a, [de]                                    ; $647B: $1A
    ld [hl], b                                    ; $647C: $70
    ld [hl], c                                    ; $647D: $71
    inc h                                         ; $647E: $24
    dec h                                         ; $647F: $25
    ld h, $27                                     ; $6480: $26 $27
    or b                                          ; $6482: $B0
    ld a, [hl]                                    ; $6483: $7E
    ld a, a                                       ; $6484: $7F
    xor [hl]                                      ; $6485: $AE
    xor a                                         ; $6486: $AF
    ld a, [hl]                                    ; $6487: $7E
    ld a, a                                       ; $6488: $7F
    ld a, [hl]                                    ; $6489: $7E
    ld a, a                                       ; $648A: $7F
    xor [hl]                                      ; $648B: $AE
    xor a                                         ; $648C: $AF
    ld a, [hl]                                    ; $648D: $7E
    ld a, a                                       ; $648E: $7F
    ld a, [hl]                                    ; $648F: $7E
    ld a, a                                       ; $6490: $7F
    ret nc                                        ; $6491: $D0

    inc h                                         ; $6492: $24
    or $42                                        ; $6493: $F6 $42
    ld b, e                                       ; $6495: $43
    adc e                                         ; $6496: $8B
    ld sp, hl                                     ; $6497: $F9
    inc bc                                        ; $6498: $03
    pop hl                                        ; $6499: $E1
    ld [c], a                                     ; $649A: $E2
    db $E3                                        ; $649B: $E3
    add l                                         ; $649C: $85
    db $FC                                        ; $649D: $FC
    ld bc, $8495                                  ; $649E: $01 $95 $84
    ld sp, hl                                     ; $64A1: $F9
    jr jr_06D_6424                                ; $64A2: $18 $80

    add c                                         ; $64A4: $81
    inc [hl]                                      ; $64A5: $34
    dec [hl]                                      ; $64A6: $35
    ld [hl], $37                                  ; $64A7: $36 $37
    ret nz                                        ; $64A9: $C0

    db $FD                                        ; $64AA: $FD
    ld hl, sp-$42                                 ; $64AB: $F8 $BE
    cp a                                          ; $64AD: $BF
    db $FD                                        ; $64AE: $FD
    ld hl, sp-$03                                 ; $64AF: $F8 $FD
    ld hl, sp-$42                                 ; $64B1: $F8 $BE
    cp a                                          ; $64B3: $BF
    db $FD                                        ; $64B4: $FD
    ld hl, sp-$03                                 ; $64B5: $F8 $FD
    ld hl, sp-$20                                 ; $64B7: $F8 $E0
    inc [hl]                                      ; $64B9: $34
    ld b, e                                       ; $64BA: $43
    adc d                                         ; $64BB: $8A
    ld sp, hl                                     ; $64BC: $F9
    ld b, $9C                                     ; $64BD: $06 $9C
    sbc l                                         ; $64BF: $9D
    ldh a, [$F1]                                  ; $64C0: $F0 $F1
    ld a, [c]                                     ; $64C2: $F2
    di                                            ; $64C3: $F3
    add l                                         ; $64C4: $85
    db $FC                                        ; $64C5: $FC
    ld bc, $8BA5                                  ; $64C6: $01 $A5 $8B
    ld sp, hl                                     ; $64C9: $F9
    inc bc                                        ; $64CA: $03
    rst $20                                       ; $64CB: $E7
    ld sp, hl                                     ; $64CC: $F9
    ld sp, hl                                     ; $64CD: $F9
    add d                                         ; $64CE: $82
    rst $20                                       ; $64CF: $E7
    ld [bc], a                                    ; $64D0: $02
    cp d                                          ; $64D1: $BA
    rst $20                                       ; $64D2: $E7
    add [hl]                                      ; $64D3: $86
    ld sp, hl                                     ; $64D4: $F9
    ld [bc], a                                    ; $64D5: $02
    cp d                                          ; $64D6: $BA
    rst $20                                       ; $64D7: $E7
    adc e                                         ; $64D8: $8B
    ld sp, hl                                     ; $64D9: $F9
    dec b                                         ; $64DA: $05
    xor e                                         ; $64DB: $AB
    xor h                                         ; $64DC: $AC
    xor l                                         ; $64DD: $AD
    ld sp, hl                                     ; $64DE: $F9
    ret                                           ; $64DF: $C9


    adc b                                         ; $64E0: $88
    db $FC                                        ; $64E1: $FC
    ld [bc], a                                    ; $64E2: $02
    or [hl]                                       ; $64E3: $B6
    rst $28                                       ; $64E4: $EF
    adc h                                         ; $64E5: $8C
    ld sp, hl                                     ; $64E6: $F9
    inc b                                         ; $64E7: $04
    ld d, e                                       ; $64E8: $53
    db $10                                        ; $64E9: $10
    ld d, e                                       ; $64EA: $53
    db $10                                        ; $64EB: $10
    add [hl]                                      ; $64EC: $86
    ld sp, hl                                     ; $64ED: $F9
    ld [bc], a                                    ; $64EE: $02
    ld d, e                                       ; $64EF: $53
    db $10                                        ; $64F0: $10
    add e                                         ; $64F1: $83
    ld sp, hl                                     ; $64F2: $F9
    inc bc                                        ; $64F3: $03
    inc l                                         ; $64F4: $2C
    ld c, [hl]                                    ; $64F5: $4E
    ld c, a                                       ; $64F6: $4F
    add l                                         ; $64F7: $85
    ld sp, hl                                     ; $64F8: $F9
    inc b                                         ; $64F9: $04
    cp e                                          ; $64FA: $BB
    cp h                                          ; $64FB: $BC
    cp l                                          ; $64FC: $BD
    db $EC                                        ; $64FD: $EC
    adc c                                         ; $64FE: $89
    db $FC                                        ; $64FF: $FC
    ld b, $89                                     ; $6500: $06 $89
    ret z                                         ; $6502: $C8

    set 1, b                                      ; $6503: $CB $C8
    set 1, b                                      ; $6505: $CB $C8
    add [hl]                                      ; $6507: $86
    ld sp, hl                                     ; $6508: $F9
    ld [bc], a                                    ; $6509: $02
    set 1, b                                      ; $650A: $CB $C8
    add d                                         ; $650C: $82
    ld sp, hl                                     ; $650D: $F9
    add d                                         ; $650E: $82
    rst $20                                       ; $650F: $E7
    inc bc                                        ; $6510: $03
    inc l                                         ; $6511: $2C
    ld sp, hl                                     ; $6512: $F9
    rst $20                                       ; $6513: $E7
    adc b                                         ; $6514: $88
    ld sp, hl                                     ; $6515: $F9
    ld b, $4C                                     ; $6516: $06 $4C
    ld e, [hl]                                    ; $6518: $5E
    ld e, a                                       ; $6519: $5F
    ld sp, hl                                     ; $651A: $F9
    set 1, b                                      ; $651B: $CB $C8
    add h                                         ; $651D: $84
    ld sp, hl                                     ; $651E: $F9
    inc bc                                        ; $651F: $03
    db $EC                                        ; $6520: $EC
    ld a, [hl+]                                   ; $6521: $2A
    dec hl                                        ; $6522: $2B
    adc d                                         ; $6523: $8A
    db $FC                                        ; $6524: $FC
    ld [bc], a                                    ; $6525: $02
    ld c, d                                       ; $6526: $4A
    ld c, e                                       ; $6527: $4B
    add d                                         ; $6528: $82
    db $FC                                        ; $6529: $FC
    ld b, $CA                                     ; $652A: $06 $CA
    set 1, b                                      ; $652C: $CB $C8
    set 1, b                                      ; $652E: $CB $C8
    ret                                           ; $6530: $C9


    add d                                         ; $6531: $82
    db $FC                                        ; $6532: $FC
    ld [$F9ED], sp                                ; $6533: $08 $ED $F9
    ld d, e                                       ; $6536: $53
    db $10                                        ; $6537: $10
    inc a                                         ; $6538: $3C
    ld sp, hl                                     ; $6539: $F9
    cp d                                          ; $653A: $BA
    rst $20                                       ; $653B: $E7
    add d                                         ; $653C: $82
    ld sp, hl                                     ; $653D: $F9
    inc b                                         ; $653E: $04
    set 1, b                                      ; $653F: $CB $C8
    set 1, b                                      ; $6541: $CB $C8
    add h                                         ; $6543: $84
    ld sp, hl                                     ; $6544: $F9
    ld a, [bc]                                    ; $6545: $0A
    ret                                           ; $6546: $C9


    db $FC                                        ; $6547: $FC
    db $FC                                        ; $6548: $FC
    jp z, $C8CB                                   ; $6549: $CA $CB $C8

    ret                                           ; $654C: $C9


    db $FC                                        ; $654D: $FC
    ld a, [hl-]                                   ; $654E: $3A
    dec sp                                        ; $654F: $3B
    adc d                                         ; $6550: $8A
    db $FC                                        ; $6551: $FC
    ld [bc], a                                    ; $6552: $02
    ld e, d                                       ; $6553: $5A
    ld e, e                                       ; $6554: $5B
    adc b                                         ; $6555: $88
    db $FC                                        ; $6556: $FC
    inc b                                         ; $6557: $04
    ld c, d                                       ; $6558: $4A
    ld c, e                                       ; $6559: $4B
    db $FC                                        ; $655A: $FC
    db $ED                                        ; $655B: $ED
    add d                                         ; $655C: $82
    ld sp, hl                                     ; $655D: $F9
    ld b, $4C                                     ; $655E: $06 $4C
    ld sp, hl                                     ; $6560: $F9
    ld d, e                                       ; $6561: $53
    db $10                                        ; $6562: $10
    ld sp, hl                                     ; $6563: $F9
    or c                                          ; $6564: $B1
    add h                                         ; $6565: $84
    db $FC                                        ; $6566: $FC
    rlca                                          ; $6567: $07
    jp z, $C8CB                                   ; $6568: $CA $CB $C8

    ret                                           ; $656B: $C9


    db $FC                                        ; $656C: $FC
    ld a, [hl+]                                   ; $656D: $2A
    dec hl                                        ; $656E: $2B
    sbc e                                         ; $656F: $9B
    db $FC                                        ; $6570: $FC
    ld [bc], a                                    ; $6571: $02
    ld e, d                                       ; $6572: $5A
    ld e, e                                       ; $6573: $5B
    add d                                         ; $6574: $82
    db $FC                                        ; $6575: $FC
    ld bc, $83ED                                  ; $6576: $01 $ED $83
    ld sp, hl                                     ; $6579: $F9
    dec b                                         ; $657A: $05
    inc l                                         ; $657B: $2C
    ld sp, hl                                     ; $657C: $F9
    ld sp, hl                                     ; $657D: $F9
    pop bc                                        ; $657E: $C1
    jp nz, $FC83                                  ; $657F: $C2 $83 $FC

    ld [bc], a                                    ; $6582: $02
    ld c, d                                       ; $6583: $4A
    ld c, e                                       ; $6584: $4B
    add e                                         ; $6585: $83
    db $FC                                        ; $6586: $FC
    ld [bc], a                                    ; $6587: $02
    ld a, [hl-]                                   ; $6588: $3A
    dec sp                                        ; $6589: $3B
    sbc d                                         ; $658A: $9A
    db $FC                                        ; $658B: $FC
    ld [bc], a                                    ; $658C: $02
    ld a, [hl+]                                   ; $658D: $2A
    dec hl                                        ; $658E: $2B
    add h                                         ; $658F: $84
    db $FC                                        ; $6590: $FC
    ld b, $ED                                     ; $6591: $06 $ED
    ld sp, hl                                     ; $6593: $F9
    ld sp, hl                                     ; $6594: $F9
    ld c, h                                       ; $6595: $4C
    ld sp, hl                                     ; $6596: $F9
    ld sp, hl                                     ; $6597: $F9
    rlca                                          ; $6598: $07
    pop de                                        ; $6599: $D1
    ld b, $07                                     ; $659A: $06 $07
    jp nz, Jump_06D_5AFC                          ; $659C: $C2 $FC $5A

    ld e, e                                       ; $659F: $5B
    sub a                                         ; $65A0: $97
    db $FC                                        ; $65A1: $FC
    ld [bc], a                                    ; $65A2: $02
    ld a, [hl+]                                   ; $65A3: $2A
    dec hl                                        ; $65A4: $2B
    add [hl]                                      ; $65A5: $86
    db $FC                                        ; $65A6: $FC
    ld [bc], a                                    ; $65A7: $02
    ld a, [hl-]                                   ; $65A8: $3A
    dec sp                                        ; $65A9: $3B
    add d                                         ; $65AA: $82
    db $FC                                        ; $65AB: $FC
    inc b                                         ; $65AC: $04
    ld c, d                                       ; $65AD: $4A
    ld c, e                                       ; $65AE: $4B
    or l                                          ; $65AF: $B5
    or [hl]                                       ; $65B0: $B6
    add h                                         ; $65B1: $84
    ld sp, hl                                     ; $65B2: $F9
    ld b, $E1                                     ; $65B3: $06 $E1
    ld d, $17                                     ; $65B5: $16 $17
    jp nc, $C207                                  ; $65B7: $D2 $07 $C2

    sbc b                                         ; $65BA: $98
    db $FC                                        ; $65BB: $FC
    ld [bc], a                                    ; $65BC: $02
    ld a, [hl-]                                   ; $65BD: $3A
    dec sp                                        ; $65BE: $3B
    adc d                                         ; $65BF: $8A
    db $FC                                        ; $65C0: $FC
    inc b                                         ; $65C1: $04
    ld e, d                                       ; $65C2: $5A
    ld e, e                                       ; $65C3: $5B
    push bc                                       ; $65C4: $C5
    add $83                                       ; $65C5: $C6 $83
    ld sp, hl                                     ; $65C7: $F9
    dec b                                         ; $65C8: $05
    ldh a, [$F1]                                  ; $65C9: $F0 $F1
    ld h, $27                                     ; $65CB: $26 $27
    ld [c], a                                     ; $65CD: $E2
    add d                                         ; $65CE: $82
    jp nc, $0706                                  ; $65CF: $D2 $06 $07

    ld b, h                                       ; $65D2: $44
    ld b, l                                       ; $65D3: $45
    ld b, [hl]                                    ; $65D4: $46
    ld b, a                                       ; $65D5: $47
    jp nz, $FC90                                  ; $65D6: $C2 $90 $FC

    ld [de], a                                    ; $65D9: $12
    ld de, $0512                                  ; $65DA: $11 $12 $05
    ld b, [hl]                                    ; $65DD: $46
    ld b, a                                       ; $65DE: $47
    sub b                                         ; $65DF: $90
    adc [hl]                                      ; $65E0: $8E
    adc a                                         ; $65E1: $8F
    adc [hl]                                      ; $65E2: $8E
    adc a                                         ; $65E3: $8F
    adc [hl]                                      ; $65E4: $8E
    adc a                                         ; $65E5: $8F
    adc [hl]                                      ; $65E6: $8E
    adc a                                         ; $65E7: $8F
    sub c                                         ; $65E8: $91
    ld b, h                                       ; $65E9: $44
    push de                                       ; $65EA: $D5
    sub $83                                       ; $65EB: $D6 $83
    ld sp, hl                                     ; $65ED: $F9
    dec b                                         ; $65EE: $05
    ldh a, [$F1]                                  ; $65EF: $F0 $F1
    ld [hl], $37                                  ; $65F1: $36 $37
    pop af                                        ; $65F3: $F1
    add d                                         ; $65F4: $82
    ld [c], a                                     ; $65F5: $E2
    ld a, [bc]                                    ; $65F6: $0A
    rla                                           ; $65F7: $17
    ld d, h                                       ; $65F8: $54
    ld d, l                                       ; $65F9: $55
    ld d, [hl]                                    ; $65FA: $56
    ld d, a                                       ; $65FB: $57
    and e                                         ; $65FC: $A3
    and h                                         ; $65FD: $A4
    jp nc, $C207                                  ; $65FE: $D2 $07 $C2

    adc e                                         ; $6601: $8B
    db $FC                                        ; $6602: $FC
    inc de                                        ; $6603: $13
    ld de, $E5D5                                  ; $6604: $11 $D5 $E5
    dec d                                         ; $6607: $15
    ld d, [hl]                                    ; $6608: $56
    ld d, a                                       ; $6609: $57
    and b                                         ; $660A: $A0
    ld l, [hl]                                    ; $660B: $6E
    ld l, a                                       ; $660C: $6F
    sbc [hl]                                      ; $660D: $9E
    sbc a                                         ; $660E: $9F
    sbc [hl]                                      ; $660F: $9E
    sbc a                                         ; $6610: $9F
    ld l, [hl]                                    ; $6611: $6E
    ld l, a                                       ; $6612: $6F
    and c                                         ; $6613: $A1
    ld d, h                                       ; $6614: $54
    push hl                                       ; $6615: $E5
    and $85                                       ; $6616: $E6 $85
    ld sp, hl                                     ; $6618: $F9
    dec c                                         ; $6619: $0D
    sbc h                                         ; $661A: $9C
    sbc l                                         ; $661B: $9D
    add b                                         ; $661C: $80
    add c                                         ; $661D: $81
    pop af                                        ; $661E: $F1
    ld [c], a                                     ; $661F: $E2
    ld h, h                                       ; $6620: $64
    ld h, l                                       ; $6621: $65
    ld h, [hl]                                    ; $6622: $66
    ld h, a                                       ; $6623: $67
    or e                                          ; $6624: $B3
    or h                                          ; $6625: $B4
    ld [c], a                                     ; $6626: $E2
    add d                                         ; $6627: $82
    jp nc, $0701                                  ; $6628: $D2 $01 $07

    add [hl]                                      ; $662B: $86
    db $FC                                        ; $662C: $FC
    jr jr_06D_6659                                ; $662D: $18 $2A

    dec hl                                        ; $662F: $2B
    db $FC                                        ; $6630: $FC
    call nc, $E5D5                                ; $6631: $D4 $D5 $E5
    inc h                                         ; $6634: $24
    dec h                                         ; $6635: $25
    ld h, [hl]                                    ; $6636: $66
    ld h, a                                       ; $6637: $67
    or b                                          ; $6638: $B0
    ld a, [hl]                                    ; $6639: $7E
    ld a, a                                       ; $663A: $7F
    xor [hl]                                      ; $663B: $AE
    xor a                                         ; $663C: $AF
    xor [hl]                                      ; $663D: $AE
    xor a                                         ; $663E: $AF
    ld a, [hl]                                    ; $663F: $7E
    ld a, a                                       ; $6640: $7F
    ret nc                                        ; $6641: $D0

    ld h, h                                       ; $6642: $64
    push af                                       ; $6643: $F5
    or $F7                                        ; $6644: $F6 $F7
    add e                                         ; $6646: $83
    ld sp, hl                                     ; $6647: $F9
    inc bc                                        ; $6648: $03
    xor e                                         ; $6649: $AB
    xor h                                         ; $664A: $AC
    xor l                                         ; $664B: $AD
    add e                                         ; $664C: $83
    ld sp, hl                                     ; $664D: $F9
    ld [$7481], sp                                ; $664E: $08 $81 $74
    ld [hl], l                                    ; $6651: $75
    halt                                          ; $6652: $76
    ld [hl], a                                    ; $6653: $77
    jp $F1C4                                      ; $6654: $C3 $C4 $F1


    add d                                         ; $6657: $82
    ld [c], a                                     ; $6658: $E2

jr_06D_6659:
    inc bc                                        ; $6659: $03
    rla                                           ; $665A: $17
    ld d, c                                       ; $665B: $51
    ld d, d                                       ; $665C: $52
    add h                                         ; $665D: $84
    db $FC                                        ; $665E: $FC
    jr jr_06D_669B                                ; $665F: $18 $3A

    dec sp                                        ; $6661: $3B
    push bc                                       ; $6662: $C5
    push de                                       ; $6663: $D5
    push hl                                       ; $6664: $E5
    ld sp, $F632                                  ; $6665: $31 $32 $F6
    halt                                          ; $6668: $76
    ld [hl], a                                    ; $6669: $77
    ret nz                                        ; $666A: $C0

    db $FD                                        ; $666B: $FD
    ld hl, sp-$42                                 ; $666C: $F8 $BE
    cp a                                          ; $666E: $BF
    cp [hl]                                       ; $666F: $BE
    cp a                                          ; $6670: $BF
    db $FD                                        ; $6671: $FD
    ld hl, sp-$20                                 ; $6672: $F8 $E0
    ld [hl], h                                    ; $6674: $74
    ld [hl], l                                    ; $6675: $75
    or $F7                                        ; $6676: $F6 $F7
    add e                                         ; $6678: $83
    ld sp, hl                                     ; $6679: $F9
    inc bc                                        ; $667A: $03
    cp e                                          ; $667B: $BB
    cp h                                          ; $667C: $BC
    cp l                                          ; $667D: $BD
    add a                                         ; $667E: $87
    ld sp, hl                                     ; $667F: $F9
    ld b, $2C                                     ; $6680: $06 $2C
    ld c, $0F                                     ; $6682: $0E $0F
    add b                                         ; $6684: $80
    add c                                         ; $6685: $81
    pop af                                        ; $6686: $F1
    add d                                         ; $6687: $82
    ld [c], a                                     ; $6688: $E2
    ld [bc], a                                    ; $6689: $02
    ld h, d                                       ; $668A: $62
    ld h, e                                       ; $668B: $63
    add h                                         ; $668C: $84
    db $FC                                        ; $668D: $FC
    rlca                                          ; $668E: $07
    call nc, $31D5                                ; $668F: $D4 $D5 $31
    ld [hl-], a                                   ; $6692: $32
    or $42                                        ; $6693: $F6 $42
    ld b, e                                       ; $6695: $43
    add l                                         ; $6696: $85
    ld sp, hl                                     ; $6697: $F9
    ld [bc], a                                    ; $6698: $02
    cp d                                          ; $6699: $BA
    rst $20                                       ; $669A: $E7

jr_06D_669B:
    add l                                         ; $669B: $85
    ld sp, hl                                     ; $669C: $F9
    ld bc, $9000                                  ; $669D: $01 $00 $90
    ld sp, hl                                     ; $66A0: $F9
    inc bc                                        ; $66A1: $03
    ld c, h                                       ; $66A2: $4C
    ld e, $1F                                     ; $66A3: $1E $1F
    add d                                         ; $66A5: $82
    ld sp, hl                                     ; $66A6: $F9
    dec b                                         ; $66A7: $05
    add b                                         ; $66A8: $80
    add c                                         ; $66A9: $81
    pop af                                        ; $66AA: $F1
    ld [hl], d                                    ; $66AB: $72
    ld [hl], e                                    ; $66AC: $73
    add h                                         ; $66AD: $84
    db $FC                                        ; $66AE: $FC
    ld de, $E5E4                                  ; $66AF: $11 $E4 $E5
    and $42                                       ; $66B2: $E6 $42
    ld b, e                                       ; $66B4: $43
    ld sp, hl                                     ; $66B5: $F9
    inc l                                         ; $66B6: $2C
    ld sp, hl                                     ; $66B7: $F9
    cp d                                          ; $66B8: $BA
    rst $20                                       ; $66B9: $E7
    ld sp, hl                                     ; $66BA: $F9
    cp d                                          ; $66BB: $BA
    rst $20                                       ; $66BC: $E7
    db $10                                        ; $66BD: $10
    ld sp, hl                                     ; $66BE: $F9
    rst $20                                       ; $66BF: $E7
    cp d                                          ; $66C0: $BA
    add d                                         ; $66C1: $82
    rst $20                                       ; $66C2: $E7
    sub d                                         ; $66C3: $92
    ld sp, hl                                     ; $66C4: $F9
    inc bc                                        ; $66C5: $03
    nop                                           ; $66C6: $00
    ld sp, hl                                     ; $66C7: $F9
    nop                                           ; $66C8: $00
    add e                                         ; $66C9: $83
    ld sp, hl                                     ; $66CA: $F9
    inc bc                                        ; $66CB: $03
    add b                                         ; $66CC: $80
    add d                                         ; $66CD: $82
    add e                                         ; $66CE: $83
    add h                                         ; $66CF: $84
    db $FC                                        ; $66D0: $FC
    inc b                                         ; $66D1: $04
    db $F4                                        ; $66D2: $F4
    push af                                       ; $66D3: $F5
    or $FE                                        ; $66D4: $F6 $FE
    add d                                         ; $66D6: $82
    ld sp, hl                                     ; $66D7: $F9
    rlca                                          ; $66D8: $07
    ld c, h                                       ; $66D9: $4C
    ld sp, hl                                     ; $66DA: $F9
    ld d, e                                       ; $66DB: $53
    db $10                                        ; $66DC: $10
    ld sp, hl                                     ; $66DD: $F9
    ld d, e                                       ; $66DE: $53
    db $10                                        ; $66DF: $10
    add d                                         ; $66E0: $82
    ld sp, hl                                     ; $66E1: $F9
    inc b                                         ; $66E2: $04
    ld d, e                                       ; $66E3: $53
    db $10                                        ; $66E4: $10
    ld d, e                                       ; $66E5: $53
    db $10                                        ; $66E6: $10
    sbc b                                         ; $66E7: $98
    ld sp, hl                                     ; $66E8: $F9
    ld [bc], a                                    ; $66E9: $02
    cp $DC                                        ; $66EA: $FE $DC
    add [hl]                                      ; $66EC: $86
    db $FC                                        ; $66ED: $FC
    ld [bc], a                                    ; $66EE: $02
    adc c                                         ; $66EF: $89
    adc d                                         ; $66F0: $8A
    add [hl]                                      ; $66F1: $86
    ld sp, hl                                     ; $66F2: $F9
    dec b                                         ; $66F3: $05
    adc $08                                       ; $66F4: $CE $08
    add hl, bc                                    ; $66F6: $09
    ld [$9D09], sp                                ; $66F7: $08 $09 $9D
    ld [$0903], sp                                ; $66FA: $08 $03 $09
    ld c, d                                       ; $66FD: $4A
    ld c, e                                       ; $66FE: $4B
    add [hl]                                      ; $66FF: $86
    db $FC                                        ; $6700: $FC
    ld [$CBCA], sp                                ; $6701: $08 $CA $CB
    ret z                                         ; $6704: $C8

    set 1, b                                      ; $6705: $CB $C8
    set 1, b                                      ; $6707: $CB $C8
    sbc $A2                                       ; $6709: $DE $A2
    rst $10                                       ; $670B: $D7
    ld [bc], a                                    ; $670C: $02
    ld e, d                                       ; $670D: $5A
    ld e, e                                       ; $670E: $5B
    adc d                                         ; $670F: $8A
    db $FC                                        ; $6710: $FC
    ld [bc], a                                    ; $6711: $02
    ld c, d                                       ; $6712: $4A
    ld c, e                                       ; $6713: $4B
    adc [hl]                                      ; $6714: $8E
    db $FC                                        ; $6715: $FC
    ld [bc], a                                    ; $6716: $02
    ld c, d                                       ; $6717: $4A
    ld c, e                                       ; $6718: $4B
    adc c                                         ; $6719: $89
    db $FC                                        ; $671A: $FC
    ld [bc], a                                    ; $671B: $02
    ld a, [hl+]                                   ; $671C: $2A
    dec hl                                        ; $671D: $2B
    sub l                                         ; $671E: $95
    db $FC                                        ; $671F: $FC
    ld [bc], a                                    ; $6720: $02
    ld e, d                                       ; $6721: $5A
    ld e, e                                       ; $6722: $5B
    adc [hl]                                      ; $6723: $8E
    db $FC                                        ; $6724: $FC
    ld [bc], a                                    ; $6725: $02
    ld e, d                                       ; $6726: $5A
    ld e, e                                       ; $6727: $5B
    adc c                                         ; $6728: $89
    db $FC                                        ; $6729: $FC
    ld [bc], a                                    ; $672A: $02
    ld a, [hl-]                                   ; $672B: $3A
    dec sp                                        ; $672C: $3B
    adc [hl]                                      ; $672D: $8E
    db $FC                                        ; $672E: $FC
    nop                                           ; $672F: $00
    jr z, @+$6A                                   ; $6730: $28 $68

    ld bc, $141D                                  ; $6732: $01 $1D $14
    or b                                          ; $6735: $B0
    inc b                                         ; $6736: $04
    sub a                                         ; $6737: $97
    db $FC                                        ; $6738: $FC
    inc bc                                        ; $6739: $03
    ld de, $1312                                  ; $673A: $11 $12 $13
    add h                                         ; $673D: $84
    ld sp, hl                                     ; $673E: $F9
    add e                                         ; $673F: $83
    inc l                                         ; $6740: $2C
    ld [bc], a                                    ; $6741: $02
    rla                                           ; $6742: $17
    add hl, sp                                    ; $6743: $39
    sbc e                                         ; $6744: $9B
    db $FC                                        ; $6745: $FC
    inc b                                         ; $6746: $04
    ld a, [de]                                    ; $6747: $1A
    ld hl, $2322                                  ; $6748: $21 $22 $23
    add h                                         ; $674B: $84
    ld sp, hl                                     ; $674C: $F9
    add e                                         ; $674D: $83
    inc a                                         ; $674E: $3C
    ld [bc], a                                    ; $674F: $02
    daa                                           ; $6750: $27
    ld c, c                                       ; $6751: $49
    sub h                                         ; $6752: $94
    db $FC                                        ; $6753: $FC
    dec bc                                        ; $6754: $0B
    ld a, [bc]                                    ; $6755: $0A
    adc [hl]                                      ; $6756: $8E
    adc a                                         ; $6757: $8F
    adc [hl]                                      ; $6758: $8E
    adc a                                         ; $6759: $8F
    adc [hl]                                      ; $675A: $8E
    adc a                                         ; $675B: $8F
    inc l                                         ; $675C: $2C
    ld sp, $3332                                  ; $675D: $31 $32 $33
    add h                                         ; $6760: $84
    ld sp, hl                                     ; $6761: $F9
    rlca                                          ; $6762: $07
    ld c, h                                       ; $6763: $4C
    inc a                                         ; $6764: $3C
    inc a                                         ; $6765: $3C
    scf                                           ; $6766: $37
    ld e, c                                       ; $6767: $59
    ld c, d                                       ; $6768: $4A
    ld c, e                                       ; $6769: $4B
    sub d                                         ; $676A: $92
    db $FC                                        ; $676B: $FC
    dec bc                                        ; $676C: $0B
    ld a, [de]                                    ; $676D: $1A
    ld l, [hl]                                    ; $676E: $6E
    ld l, a                                       ; $676F: $6F
    sbc [hl]                                      ; $6770: $9E
    sbc a                                         ; $6771: $9F
    ld l, [hl]                                    ; $6772: $6E
    ld l, a                                       ; $6773: $6F
    inc a                                         ; $6774: $3C
    ld b, c                                       ; $6775: $41
    ld b, d                                       ; $6776: $42
    ld b, e                                       ; $6777: $43
    add h                                         ; $6778: $84
    ld sp, hl                                     ; $6779: $F9
    rlca                                          ; $677A: $07
    ld bc, $4C4C                                  ; $677B: $01 $4C $4C
    ld sp, hl                                     ; $677E: $F9
    or c                                          ; $677F: $B1
    ld e, d                                       ; $6780: $5A
    ld e, e                                       ; $6781: $5B
    sub b                                         ; $6782: $90
    db $FC                                        ; $6783: $FC
    ld a, [bc]                                    ; $6784: $0A
    ret c                                         ; $6785: $D8

    reti                                          ; $6786: $D9


    ld a, [bc]                                    ; $6787: $0A
    ld a, [hl]                                    ; $6788: $7E
    ld a, a                                       ; $6789: $7F
    xor [hl]                                      ; $678A: $AE
    xor a                                         ; $678B: $AF
    ld a, [hl]                                    ; $678C: $7E
    ld a, a                                       ; $678D: $7F
    inc a                                         ; $678E: $3C
    add e                                         ; $678F: $83
    ld sp, hl                                     ; $6790: $F9
    inc b                                         ; $6791: $04
    adc $0A                                       ; $6792: $CE $0A
    dec bc                                        ; $6794: $0B
    rst $08                                       ; $6795: $CF
    add e                                         ; $6796: $83
    ld sp, hl                                     ; $6797: $F9
    inc bc                                        ; $6798: $03
    xor $C1                                       ; $6799: $EE $C1
    jp nz, $FC91                                  ; $679B: $C2 $91 $FC

    ld a, [bc]                                    ; $679E: $0A
    add sp, -$17                                  ; $679F: $E8 $E9
    ld a, [de]                                    ; $67A1: $1A
    db $FD                                        ; $67A2: $FD
    ld hl, sp-$42                                 ; $67A3: $F8 $BE
    cp a                                          ; $67A5: $BF
    db $FD                                        ; $67A6: $FD
    ld hl, sp+$4C                                 ; $67A7: $F8 $4C
    add e                                         ; $67A9: $83
    ld sp, hl                                     ; $67AA: $F9
    inc b                                         ; $67AB: $04
    inc l                                         ; $67AC: $2C
    add [hl]                                      ; $67AD: $86
    add a                                         ; $67AE: $87
    inc l                                         ; $67AF: $2C
    add h                                         ; $67B0: $84
    ld sp, hl                                     ; $67B1: $F9
    inc bc                                        ; $67B2: $03
    pop de                                        ; $67B3: $D1
    jp nc, $89D3                                  ; $67B4: $D2 $D3 $89

    db $FC                                        ; $67B7: $FC
    ld [$0428], sp                                ; $67B8: $08 $28 $04
    dec b                                         ; $67BB: $05
    ld b, $07                                     ; $67BC: $06 $07
    sub b                                         ; $67BE: $90
    adc [hl]                                      ; $67BF: $8E
    adc a                                         ; $67C0: $8F
    add d                                         ; $67C1: $82
    inc l                                         ; $67C2: $2C
    inc b                                         ; $67C3: $04
    ld c, $0F                                     ; $67C4: $0E $0F
    rst $20                                       ; $67C6: $E7
    ei                                            ; $67C7: $FB
    add [hl]                                      ; $67C8: $86
    ld sp, hl                                     ; $67C9: $F9
    inc b                                         ; $67CA: $04
    inc a                                         ; $67CB: $3C
    dec l                                         ; $67CC: $2D
    ld l, $3C                                     ; $67CD: $2E $3C
    add h                                         ; $67CF: $84
    ld sp, hl                                     ; $67D0: $F9
    inc bc                                        ; $67D1: $03
    pop hl                                        ; $67D2: $E1
    ld [c], a                                     ; $67D3: $E2
    db $E3                                        ; $67D4: $E3
    adc c                                         ; $67D5: $89
    db $FC                                        ; $67D6: $FC
    ld [$1438], sp                                ; $67D7: $08 $38 $14
    dec d                                         ; $67DA: $15
    ld d, $17                                     ; $67DB: $16 $17
    and b                                         ; $67DD: $A0
    sbc [hl]                                      ; $67DE: $9E
    sbc a                                         ; $67DF: $9F
    add d                                         ; $67E0: $82
    inc a                                         ; $67E1: $3C
    ld b, $1E                                     ; $67E2: $06 $1E
    rra                                           ; $67E4: $1F
    ld a, [$E710]                                 ; $67E5: $FA $10 $E7
    ei                                            ; $67E8: $FB
    add h                                         ; $67E9: $84
    ld sp, hl                                     ; $67EA: $F9
    dec bc                                        ; $67EB: $0B
    ld c, h                                       ; $67EC: $4C
    dec a                                         ; $67ED: $3D
    ld a, $4C                                     ; $67EE: $3E $4C
    ld sp, hl                                     ; $67F0: $F9
    rst $28                                       ; $67F1: $EF
    ld sp, hl                                     ; $67F2: $F9
    ldh a, [$F1]                                  ; $67F3: $F0 $F1
    ld a, [c]                                     ; $67F5: $F2
    di                                            ; $67F6: $F3
    adc c                                         ; $67F7: $89
    db $FC                                        ; $67F8: $FC
    inc c                                         ; $67F9: $0C
    ld c, b                                       ; $67FA: $48
    inc h                                         ; $67FB: $24
    dec h                                         ; $67FC: $25
    ld h, $27                                     ; $67FD: $26 $27
    or b                                          ; $67FF: $B0
    xor [hl]                                      ; $6800: $AE
    xor a                                         ; $6801: $AF
    inc a                                         ; $6802: $3C
    ld c, h                                       ; $6803: $4C
    rst $20                                       ; $6804: $E7
    ei                                            ; $6805: $FB
    add d                                         ; $6806: $82
    ld sp, hl                                     ; $6807: $F9
    ld [bc], a                                    ; $6808: $02
    rst $20                                       ; $6809: $E7
    ei                                            ; $680A: $FB
    add l                                         ; $680B: $85
    ld sp, hl                                     ; $680C: $F9
    ld [bc], a                                    ; $680D: $02
    call z, $85CD                                 ; $680E: $CC $CD $85
    ld sp, hl                                     ; $6811: $F9
    ld [bc], a                                    ; $6812: $02
    ld bc, $8A92                                  ; $6813: $01 $92 $8A
    db $FC                                        ; $6816: $FC
    inc c                                         ; $6817: $0C
    ld e, b                                       ; $6818: $58
    inc [hl]                                      ; $6819: $34
    dec [hl]                                      ; $681A: $35
    ld [hl], $37                                  ; $681B: $36 $37
    ret nz                                        ; $681D: $C0

    cp [hl]                                       ; $681E: $BE
    cp a                                          ; $681F: $BF
    ld c, h                                       ; $6820: $4C
    ld sp, hl                                     ; $6821: $F9
    ld a, [$8210]                                 ; $6822: $FA $10 $82
    ld sp, hl                                     ; $6825: $F9
    inc b                                         ; $6826: $04
    ld a, [$F910]                                 ; $6827: $FA $10 $F9
    rst $28                                       ; $682A: $EF
    add a                                         ; $682B: $87
    ld sp, hl                                     ; $682C: $F9
    ld bc, $83EF                                  ; $682D: $01 $EF $83
    ld sp, hl                                     ; $6830: $F9
    ld bc, $89A2                                  ; $6831: $01 $A2 $89
    db $FC                                        ; $6834: $FC
    dec b                                         ; $6835: $05
    or l                                          ; $6836: $B5
    or [hl]                                       ; $6837: $B6
    ld sp, hl                                     ; $6838: $F9
    sbc h                                         ; $6839: $9C
    sbc l                                         ; $683A: $9D
    add a                                         ; $683B: $87
    ld sp, hl                                     ; $683C: $F9
    rlca                                          ; $683D: $07
    db $EC                                        ; $683E: $EC
    ld [$0809], sp                                ; $683F: $08 $09 $08
    add hl, bc                                    ; $6842: $09
    db $ED                                        ; $6843: $ED
    nop                                           ; $6844: $00
    add l                                         ; $6845: $85
    ld sp, hl                                     ; $6846: $F9
    ld [bc], a                                    ; $6847: $02
    call c, $83DD                                 ; $6848: $DC $DD $83
    ld sp, hl                                     ; $684B: $F9
    inc b                                         ; $684C: $04
    or c                                          ; $684D: $B1
    db $FC                                        ; $684E: $FC
    ld c, d                                       ; $684F: $4A
    ld c, e                                       ; $6850: $4B
    add a                                         ; $6851: $87
    db $FC                                        ; $6852: $FC
    dec b                                         ; $6853: $05
    push bc                                       ; $6854: $C5
    add $AB                                       ; $6855: $C6 $AB
    xor h                                         ; $6857: $AC
    xor l                                         ; $6858: $AD
    add [hl]                                      ; $6859: $86
    ld sp, hl                                     ; $685A: $F9
    ld [bc], a                                    ; $685B: $02
    adc $1B                                       ; $685C: $CE $1B
    add h                                         ; $685E: $84
    db $FC                                        ; $685F: $FC
    ld bc, $851A                                  ; $6860: $01 $1A $85
    ld sp, hl                                     ; $6863: $F9
    inc b                                         ; $6864: $04
    db $EC                                        ; $6865: $EC
    ld c, d                                       ; $6866: $4A
    ld c, e                                       ; $6867: $4B
    db $DD                                        ; $6868: $DD
    add d                                         ; $6869: $82
    ld sp, hl                                     ; $686A: $F9
    inc b                                         ; $686B: $04
    pop bc                                        ; $686C: $C1
    db $FC                                        ; $686D: $FC
    ld e, d                                       ; $686E: $5A
    ld e, e                                       ; $686F: $5B
    add [hl]                                      ; $6870: $86
    db $FC                                        ; $6871: $FC
    ld b, $D4                                     ; $6872: $06 $D4
    push de                                       ; $6874: $D5
    sub $BB                                       ; $6875: $D6 $BB
    cp h                                          ; $6877: $BC
    cp l                                          ; $6878: $BD
    add d                                         ; $6879: $82
    ld sp, hl                                     ; $687A: $F9
    dec b                                         ; $687B: $05
    adc $08                                       ; $687C: $CE $08
    add hl, bc                                    ; $687E: $09
    ld [$8209], sp                                ; $687F: $08 $09 $82
    db $FC                                        ; $6882: $FC
    inc b                                         ; $6883: $04
    ld c, d                                       ; $6884: $4A
    ld c, e                                       ; $6885: $4B
    db $FC                                        ; $6886: $FC
    ld a, [bc]                                    ; $6887: $0A
    add h                                         ; $6888: $84
    ld sp, hl                                     ; $6889: $F9
    dec b                                         ; $688A: $05
    or c                                          ; $688B: $B1
    or d                                          ; $688C: $B2
    ld e, d                                       ; $688D: $5A
    ld e, e                                       ; $688E: $5B
    ld a, [de]                                    ; $688F: $1A
    add d                                         ; $6890: $82
    ld sp, hl                                     ; $6891: $F9
    inc b                                         ; $6892: $04
    pop de                                        ; $6893: $D1
    ld b, $07                                     ; $6894: $06 $07
    add hl, hl                                    ; $6896: $29
    add [hl]                                      ; $6897: $86
    db $FC                                        ; $6898: $FC
    inc bc                                        ; $6899: $03
    db $E4                                        ; $689A: $E4
    push hl                                       ; $689B: $E5
    and $85                                       ; $689C: $E6 $85
    ld sp, hl                                     ; $689E: $F9
    ld bc, $860B                                  ; $689F: $01 $0B $86
    db $FC                                        ; $68A2: $FC
    inc b                                         ; $68A3: $04
    ld e, d                                       ; $68A4: $5A
    ld e, e                                       ; $68A5: $5B
    db $FC                                        ; $68A6: $FC
    ld a, [de]                                    ; $68A7: $1A
    add h                                         ; $68A8: $84
    ld sp, hl                                     ; $68A9: $F9
    ld [bc], a                                    ; $68AA: $02
    pop bc                                        ; $68AB: $C1
    jp nz, $FC82                                  ; $68AC: $C2 $82 $FC

    rlca                                          ; $68AF: $07
    ld a, [bc]                                    ; $68B0: $0A
    ld sp, hl                                     ; $68B1: $F9
    ld sp, hl                                     ; $68B2: $F9
    pop hl                                        ; $68B3: $E1
    ld d, $17                                     ; $68B4: $16 $17
    add hl, sp                                    ; $68B6: $39
    add [hl]                                      ; $68B7: $86
    db $FC                                        ; $68B8: $FC
    inc b                                         ; $68B9: $04
    db $F4                                        ; $68BA: $F4
    push af                                       ; $68BB: $F5
    or $F7                                        ; $68BC: $F6 $F7
    add h                                         ; $68BE: $84
    ld sp, hl                                     ; $68BF: $F9
    dec bc                                        ; $68C0: $0B
    dec de                                        ; $68C1: $1B
    db $FC                                        ; $68C2: $FC
    jr z, jr_06D_6909                             ; $68C3: $28 $44

    ld b, l                                       ; $68C5: $45
    ld b, [hl]                                    ; $68C6: $46
    ld b, a                                       ; $68C7: $47
    inc l                                         ; $68C8: $2C
    adc [hl]                                      ; $68C9: $8E
    adc a                                         ; $68CA: $8F
    inc l                                         ; $68CB: $2C
    add h                                         ; $68CC: $84
    ld sp, hl                                     ; $68CD: $F9
    dec bc                                        ; $68CE: $0B
    pop de                                        ; $68CF: $D1
    jp nc, $FCD3                                  ; $68D0: $D2 $D3 $FC

    ld a, [de]                                    ; $68D3: $1A
    ld sp, hl                                     ; $68D4: $F9
    ldh a, [$F1]                                  ; $68D5: $F0 $F1
    ld h, $27                                     ; $68D7: $26 $27
    ld c, c                                       ; $68D9: $49
    add a                                         ; $68DA: $87
    db $FC                                        ; $68DB: $FC
    ld [bc], a                                    ; $68DC: $02
    adc c                                         ; $68DD: $89
    adc d                                         ; $68DE: $8A
    add h                                         ; $68DF: $84
    ld sp, hl                                     ; $68E0: $F9
    inc c                                         ; $68E1: $0C
    call c, $FCFC                                 ; $68E2: $DC $FC $FC
    jr c, jr_06D_693B                             ; $68E5: $38 $54

    ld d, l                                       ; $68E7: $55
    ld d, [hl]                                    ; $68E8: $56
    ld d, a                                       ; $68E9: $57
    inc a                                         ; $68EA: $3C
    sbc [hl]                                      ; $68EB: $9E
    sbc a                                         ; $68EC: $9F
    inc a                                         ; $68ED: $3C
    add h                                         ; $68EE: $84
    ld sp, hl                                     ; $68EF: $F9
    dec b                                         ; $68F0: $05
    pop hl                                        ; $68F1: $E1
    ld [c], a                                     ; $68F2: $E2
    db $E3                                        ; $68F3: $E3
    db $FC                                        ; $68F4: $FC
    ld a, [bc]                                    ; $68F5: $0A
    add d                                         ; $68F6: $82
    ld sp, hl                                     ; $68F7: $F9
    inc b                                         ; $68F8: $04
    xor $82                                       ; $68F9: $EE $82
    scf                                           ; $68FB: $37
    ld e, c                                       ; $68FC: $59
    add [hl]                                      ; $68FD: $86
    db $FC                                        ; $68FE: $FC
    inc bc                                        ; $68FF: $03
    ld de, $1312                                  ; $6900: $11 $12 $13
    add e                                         ; $6903: $83
    ld sp, hl                                     ; $6904: $F9
    ld d, $EC                                     ; $6905: $16 $EC
    db $FC                                        ; $6907: $FC
    db $FC                                        ; $6908: $FC

jr_06D_6909:
    or l                                          ; $6909: $B5
    ld c, b                                       ; $690A: $48
    ld h, h                                       ; $690B: $64
    ld h, l                                       ; $690C: $65
    ld h, [hl]                                    ; $690D: $66
    ld h, a                                       ; $690E: $67
    inc a                                         ; $690F: $3C
    xor [hl]                                      ; $6910: $AE
    xor a                                         ; $6911: $AF
    inc a                                         ; $6912: $3C
    ld sp, hl                                     ; $6913: $F9
    rst $20                                       ; $6914: $E7
    ei                                            ; $6915: $FB
    ldh a, [$F1]                                  ; $6916: $F0 $F1
    ld a, [c]                                     ; $6918: $F2
    di                                            ; $6919: $F3
    db $FC                                        ; $691A: $FC
    ld a, [de]                                    ; $691B: $1A
    add d                                         ; $691C: $82
    ld sp, hl                                     ; $691D: $F9
    inc b                                         ; $691E: $04
    inc l                                         ; $691F: $2C
    ld sp, hl                                     ; $6920: $F9
    ld sp, hl                                     ; $6921: $F9
    db $EC                                        ; $6922: $EC
    add l                                         ; $6923: $85
    db $FC                                        ; $6924: $FC
    inc b                                         ; $6925: $04
    jr nz, jr_06D_6949                            ; $6926: $20 $21

    ld [hl+], a                                   ; $6928: $22
    inc hl                                        ; $6929: $23
    add d                                         ; $692A: $82
    ld sp, hl                                     ; $692B: $F9
    ld c, $CE                                     ; $692C: $0E $CE
    ret c                                         ; $692E: $D8

    reti                                          ; $692F: $D9


    db $FC                                        ; $6930: $FC
    push bc                                       ; $6931: $C5
    ld e, b                                       ; $6932: $58
    ld [hl], h                                    ; $6933: $74
    ld [hl], l                                    ; $6934: $75
    halt                                          ; $6935: $76
    ld [hl], a                                    ; $6936: $77
    ld c, h                                       ; $6937: $4C
    cp [hl]                                       ; $6938: $BE
    cp a                                          ; $6939: $BF
    ld c, h                                       ; $693A: $4C

jr_06D_693B:
    add h                                         ; $693B: $84
    ld sp, hl                                     ; $693C: $F9
    ld bc, $83EC                                  ; $693D: $01 $EC $83
    db $FC                                        ; $6940: $FC
    ld b, $0A                                     ; $6941: $06 $0A
    ld sp, hl                                     ; $6943: $F9
    ld sp, hl                                     ; $6944: $F9
    ld c, h                                       ; $6945: $4C
    ld sp, hl                                     ; $6946: $F9
    db $EC                                        ; $6947: $EC
    add [hl]                                      ; $6948: $86

jr_06D_6949:
    db $FC                                        ; $6949: $FC
    inc b                                         ; $694A: $04
    jr nc, jr_06D_697E                            ; $694B: $30 $31

    ld [hl-], a                                   ; $694D: $32
    inc sp                                        ; $694E: $33
    add d                                         ; $694F: $82
    ld sp, hl                                     ; $6950: $F9
    ld a, [bc]                                    ; $6951: $0A
    dec bc                                        ; $6952: $0B
    add sp, -$17                                  ; $6953: $E8 $E9
    call nc, $D6D5                                ; $6955: $D4 $D5 $D6
    nop                                           ; $6958: $00
    ld c, [hl]                                    ; $6959: $4E
    ld c, a                                       ; $695A: $4F
    nop                                           ; $695B: $00
    add d                                         ; $695C: $82
    ld sp, hl                                     ; $695D: $F9
    ld [bc], a                                    ; $695E: $02
    rst $20                                       ; $695F: $E7
    ei                                            ; $6960: $FB
    add e                                         ; $6961: $83
    ld sp, hl                                     ; $6962: $F9
    ld bc, $84EC                                  ; $6963: $01 $EC $84
    db $FC                                        ; $6966: $FC
    ld bc, $8308                                  ; $6967: $01 $08 $83
    ld sp, hl                                     ; $696A: $F9
    inc c                                         ; $696B: $0C
    or c                                          ; $696C: $B1
    or d                                          ; $696D: $B2
    ret c                                         ; $696E: $D8

    reti                                          ; $696F: $D9


    db $FC                                        ; $6970: $FC
    ld c, d                                       ; $6971: $4A
    ld c, e                                       ; $6972: $4B
    db $FC                                        ; $6973: $FC
    ld b, b                                       ; $6974: $40
    ld b, c                                       ; $6975: $41
    ld b, d                                       ; $6976: $42
    ld b, e                                       ; $6977: $43
    add d                                         ; $6978: $82
    ld sp, hl                                     ; $6979: $F9
    ld c, $1B                                     ; $697A: $0E $1B
    db $FC                                        ; $697C: $FC
    db $FC                                        ; $697D: $FC

jr_06D_697E:
    db $E4                                        ; $697E: $E4
    push hl                                       ; $697F: $E5
    and $00                                       ; $6980: $E6 $00
    ld e, [hl]                                    ; $6982: $5E
    ld e, a                                       ; $6983: $5F
    ld sp, hl                                     ; $6984: $F9
    rst $20                                       ; $6985: $E7
    ei                                            ; $6986: $FB
    ld a, [$8210]                                 ; $6987: $FA $10 $82
    ld sp, hl                                     ; $698A: $F9
    inc b                                         ; $698B: $04
    db $EC                                        ; $698C: $EC
    db $FC                                        ; $698D: $FC
    ld c, d                                       ; $698E: $4A
    ld c, e                                       ; $698F: $4B
    add d                                         ; $6990: $82
    db $FC                                        ; $6991: $FC
    ld bc, $83C6                                  ; $6992: $01 $C6 $83
    ld sp, hl                                     ; $6995: $F9
    dec bc                                        ; $6996: $0B
    pop bc                                        ; $6997: $C1
    jp nz, $E9E8                                  ; $6998: $C2 $E8 $E9

    db $FC                                        ; $699B: $FC
    ld e, d                                       ; $699C: $5A
    ld e, e                                       ; $699D: $5B
    ld de, $F912                                  ; $699E: $11 $12 $F9
    nop                                           ; $69A1: $00
    add e                                         ; $69A2: $83
    ld sp, hl                                     ; $69A3: $F9
    ld [$FC09], sp                                ; $69A4: $08 $09 $FC
    db $FC                                        ; $69A7: $FC
    db $F4                                        ; $69A8: $F4
    push af                                       ; $69A9: $F5
    or $F7                                        ; $69AA: $F6 $F7
    nop                                           ; $69AC: $00
    add d                                         ; $69AD: $82
    ld sp, hl                                     ; $69AE: $F9
    ld [bc], a                                    ; $69AF: $02
    ld a, [$8410]                                 ; $69B0: $FA $10 $84
    ld sp, hl                                     ; $69B3: $F9
    rlca                                          ; $69B4: $07
    sub d                                         ; $69B5: $92
    db $FC                                        ; $69B6: $FC
    ld e, d                                       ; $69B7: $5A
    ld e, e                                       ; $69B8: $5B
    call nc, $D6D5                                ; $69B9: $D4 $D5 $D6
    add e                                         ; $69BC: $83
    ld sp, hl                                     ; $69BD: $F9
    inc bc                                        ; $69BE: $03
    pop de                                        ; $69BF: $D1
    jp nc, $83D3                                  ; $69C0: $D2 $D3 $83

    db $FC                                        ; $69C3: $FC
    inc b                                         ; $69C4: $04
    jr nz, jr_06D_69E8                            ; $69C5: $20 $21

    ld [hl+], a                                   ; $69C7: $22
    inc hl                                        ; $69C8: $23
    add h                                         ; $69C9: $84
    ld sp, hl                                     ; $69CA: $F9
    ld bc, $841B                                  ; $69CB: $01 $1B $84
    db $FC                                        ; $69CE: $FC
    dec b                                         ; $69CF: $05
    db $ED                                        ; $69D0: $ED
    ld sp, hl                                     ; $69D1: $F9
    ld sp, hl                                     ; $69D2: $F9
    rst $20                                       ; $69D3: $E7
    ei                                            ; $69D4: $FB
    add d                                         ; $69D5: $82
    ld sp, hl                                     ; $69D6: $F9
    ld [bc], a                                    ; $69D7: $02
    cp d                                          ; $69D8: $BA
    sbc e                                         ; $69D9: $9B
    add d                                         ; $69DA: $82
    ld sp, hl                                     ; $69DB: $F9
    ld bc, $83A2                                  ; $69DC: $01 $A2 $83
    db $FC                                        ; $69DF: $FC
    inc bc                                        ; $69E0: $03
    db $E4                                        ; $69E1: $E4
    push hl                                       ; $69E2: $E5
    and $83                                       ; $69E3: $E6 $83
    ld sp, hl                                     ; $69E5: $F9
    inc bc                                        ; $69E6: $03
    pop hl                                        ; $69E7: $E1

jr_06D_69E8:
    ld [c], a                                     ; $69E8: $E2
    db $E3                                        ; $69E9: $E3
    add e                                         ; $69EA: $83
    db $FC                                        ; $69EB: $FC
    inc b                                         ; $69EC: $04
    jr nc, @+$33                                  ; $69ED: $30 $31

    ld [hl-], a                                   ; $69EF: $32
    inc sp                                        ; $69F0: $33
    add e                                         ; $69F1: $83
    ld sp, hl                                     ; $69F2: $F9
    ld [bc], a                                    ; $69F3: $02
    adc $09                                       ; $69F4: $CE $09
    add e                                         ; $69F6: $83
    db $FC                                        ; $69F7: $FC
    inc bc                                        ; $69F8: $03
    ld de, $1312                                  ; $69F9: $11 $12 $13
    add e                                         ; $69FC: $83
    ld sp, hl                                     ; $69FD: $F9
    ld b, $EC                                     ; $69FE: $06 $EC
    ld [$0809], sp                                ; $6A00: $08 $09 $08
    add hl, bc                                    ; $6A03: $09
    ld [$FC84], sp                                ; $6A04: $08 $84 $FC
    add hl, bc                                    ; $6A07: $09
    db $F4                                        ; $6A08: $F4
    push af                                       ; $6A09: $F5
    or $F7                                        ; $6A0A: $F6 $F7
    ld sp, hl                                     ; $6A0C: $F9
    ldh a, [$F1]                                  ; $6A0D: $F0 $F1
    ld a, [c]                                     ; $6A0F: $F2
    di                                            ; $6A10: $F3
    add e                                         ; $6A11: $83
    db $FC                                        ; $6A12: $FC
    inc b                                         ; $6A13: $04
    ld b, b                                       ; $6A14: $40
    ld b, c                                       ; $6A15: $41
    ld b, d                                       ; $6A16: $42
    ld b, e                                       ; $6A17: $43
    add e                                         ; $6A18: $83
    ld sp, hl                                     ; $6A19: $F9
    ld [$D80B], sp                                ; $6A1A: $08 $0B $D8
    reti                                          ; $6A1D: $D9


    db $FC                                        ; $6A1E: $FC
    jr nz, jr_06D_6A42                            ; $6A1F: $20 $21

    ld [hl+], a                                   ; $6A21: $22
    inc hl                                        ; $6A22: $23
    add d                                         ; $6A23: $82
    ld sp, hl                                     ; $6A24: $F9
    ld [bc], a                                    ; $6A25: $02
    or c                                          ; $6A26: $B1
    or d                                          ; $6A27: $B2
    add l                                         ; $6A28: $85
    rst $10                                       ; $6A29: $D7
    add l                                         ; $6A2A: $85
    db $FC                                        ; $6A2B: $FC
    inc bc                                        ; $6A2C: $03
    sub l                                         ; $6A2D: $95
    ld sp, hl                                     ; $6A2E: $F9
    inc l                                         ; $6A2F: $2C
    add e                                         ; $6A30: $83
    ld sp, hl                                     ; $6A31: $F9
    ld bc, $8492                                  ; $6A32: $01 $92 $84
    db $FC                                        ; $6A35: $FC
    ld bc, $861A                                  ; $6A36: $01 $1A $86
    ld sp, hl                                     ; $6A39: $F9
    ld [$E81B], sp                                ; $6A3A: $08 $1B $E8
    jp hl                                         ; $6A3D: $E9


    db $FC                                        ; $6A3E: $FC
    jr nc, jr_06D_6A72                            ; $6A3F: $30 $31

    ld [hl-], a                                   ; $6A41: $32

jr_06D_6A42:
    inc sp                                        ; $6A42: $33
    add d                                         ; $6A43: $82
    ld sp, hl                                     ; $6A44: $F9
    dec b                                         ; $6A45: $05
    pop bc                                        ; $6A46: $C1
    jp nz, Jump_06D_4AFC                          ; $6A47: $C2 $FC $4A

    ld c, e                                       ; $6A4A: $4B
    add a                                         ; $6A4B: $87
    db $FC                                        ; $6A4C: $FC
    inc bc                                        ; $6A4D: $03
    and l                                         ; $6A4E: $A5
    ld sp, hl                                     ; $6A4F: $F9
    ld c, h                                       ; $6A50: $4C
    add e                                         ; $6A51: $83
    ld sp, hl                                     ; $6A52: $F9
    ld bc, $84A2                                  ; $6A53: $01 $A2 $84
    db $FC                                        ; $6A56: $FC
    inc b                                         ; $6A57: $04
    ld a, [de]                                    ; $6A58: $1A
    nop                                           ; $6A59: $00
    ld sp, hl                                     ; $6A5A: $F9
    nop                                           ; $6A5B: $00
    add e                                         ; $6A5C: $83
    ld sp, hl                                     ; $6A5D: $F9
    ld bc, $830B                                  ; $6A5E: $01 $0B $83
    db $FC                                        ; $6A61: $FC
    inc b                                         ; $6A62: $04
    ld b, b                                       ; $6A63: $40
    ld b, c                                       ; $6A64: $41
    ld b, d                                       ; $6A65: $42
    ld b, e                                       ; $6A66: $43
    add d                                         ; $6A67: $82
    ld sp, hl                                     ; $6A68: $F9
    dec b                                         ; $6A69: $05
    pop de                                        ; $6A6A: $D1
    jp nc, $5AD3                                  ; $6A6B: $D2 $D3 $5A

    ld e, e                                       ; $6A6E: $5B
    add a                                         ; $6A6F: $87
    db $FC                                        ; $6A70: $FC
    inc bc                                        ; $6A71: $03

jr_06D_6A72:
    or l                                          ; $6A72: $B5
    or [hl]                                       ; $6A73: $B6
    rst $28                                       ; $6A74: $EF
    add d                                         ; $6A75: $82
    ld sp, hl                                     ; $6A76: $F9
    inc b                                         ; $6A77: $04
    or c                                          ; $6A78: $B1
    or d                                          ; $6A79: $B2
    ret c                                         ; $6A7A: $D8

    reti                                          ; $6A7B: $D9


    add d                                         ; $6A7C: $82
    db $FC                                        ; $6A7D: $FC
    inc bc                                        ; $6A7E: $03
    ld a, [de]                                    ; $6A7F: $1A
    ld sp, hl                                     ; $6A80: $F9
    rst $28                                       ; $6A81: $EF
    add h                                         ; $6A82: $84
    ld sp, hl                                     ; $6A83: $F9
    ld bc, $831B                                  ; $6A84: $01 $1B $83
    db $FC                                        ; $6A87: $FC
    ld [bc], a                                    ; $6A88: $02
    ld a, [bc]                                    ; $6A89: $0A
    inc de                                        ; $6A8A: $13
    add h                                         ; $6A8B: $84
    ld sp, hl                                     ; $6A8C: $F9
    inc bc                                        ; $6A8D: $03
    pop hl                                        ; $6A8E: $E1
    ld [c], a                                     ; $6A8F: $E2
    db $E3                                        ; $6A90: $E3
    adc c                                         ; $6A91: $89
    db $FC                                        ; $6A92: $FC
    inc bc                                        ; $6A93: $03
    push bc                                       ; $6A94: $C5
    add $00                                       ; $6A95: $C6 $00
    add d                                         ; $6A97: $82
    ld sp, hl                                     ; $6A98: $F9
    inc b                                         ; $6A99: $04
    pop bc                                        ; $6A9A: $C1
    jp nz, $E9E8                                  ; $6A9B: $C2 $E8 $E9

    add d                                         ; $6A9E: $82
    db $FC                                        ; $6A9F: $FC
    ld bc, $861A                                  ; $6AA0: $01 $1A $86
    ld sp, hl                                     ; $6AA3: $F9
    ld bc, $830B                                  ; $6AA4: $01 $0B $83
    db $FC                                        ; $6AA7: $FC
    ld bc, $841A                                  ; $6AA8: $01 $1A $84
    ld sp, hl                                     ; $6AAB: $F9
    inc b                                         ; $6AAC: $04
    ldh a, [$F1]                                  ; $6AAD: $F0 $F1
    ld a, [c]                                     ; $6AAF: $F2
    di                                            ; $6AB0: $F3
    adc b                                         ; $6AB1: $88
    db $FC                                        ; $6AB2: $FC
    inc bc                                        ; $6AB3: $03
    call nc, $D6D5                                ; $6AB4: $D4 $D5 $D6
    add e                                         ; $6AB7: $83
    ld sp, hl                                     ; $6AB8: $F9
    inc bc                                        ; $6AB9: $03
    pop de                                        ; $6ABA: $D1
    jp nc, $83D3                                  ; $6ABB: $D2 $D3 $83

    db $FC                                        ; $6ABE: $FC
    ld bc, $861A                                  ; $6ABF: $01 $1A $86
    ld sp, hl                                     ; $6AC2: $F9
    ld bc, $831B                                  ; $6AC3: $01 $1B $83
    db $FC                                        ; $6AC6: $FC
    ld bc, $850A                                  ; $6AC7: $01 $0A $85
    ld sp, hl                                     ; $6ACA: $F9
    ld bc, $8AEC                                  ; $6ACB: $01 $EC $8A
    db $FC                                        ; $6ACE: $FC
    inc bc                                        ; $6ACF: $03
    db $E4                                        ; $6AD0: $E4
    push hl                                       ; $6AD1: $E5
    and $83                                       ; $6AD2: $E6 $83
    ld sp, hl                                     ; $6AD4: $F9
    inc bc                                        ; $6AD5: $03
    pop hl                                        ; $6AD6: $E1
    ld [c], a                                     ; $6AD7: $E2
    db $E3                                        ; $6AD8: $E3
    add e                                         ; $6AD9: $83
    db $FC                                        ; $6ADA: $FC
    ld bc, $851A                                  ; $6ADB: $01 $1A $85
    ld sp, hl                                     ; $6ADE: $F9
    add d                                         ; $6ADF: $82
    dec de                                        ; $6AE0: $1B
    add e                                         ; $6AE1: $83
    db $FC                                        ; $6AE2: $FC
    ld bc, $841A                                  ; $6AE3: $01 $1A $84
    ld sp, hl                                     ; $6AE6: $F9
    ld bc, $8BEC                                  ; $6AE7: $01 $EC $8B
    db $FC                                        ; $6AEA: $FC
    inc b                                         ; $6AEB: $04
    db $F4                                        ; $6AEC: $F4
    push af                                       ; $6AED: $F5
    or $F7                                        ; $6AEE: $F6 $F7
    add d                                         ; $6AF0: $82
    ld sp, hl                                     ; $6AF1: $F9
    inc bc                                        ; $6AF2: $03
    pop af                                        ; $6AF3: $F1
    ld a, [c]                                     ; $6AF4: $F2
    di                                            ; $6AF5: $F3
    add d                                         ; $6AF6: $82
    db $FC                                        ; $6AF7: $FC
    nop                                           ; $6AF8: $00
    jr z, jr_06D_6B63                             ; $6AF9: $28 $68

    ld bc, $1A1D                                  ; $6AFB: $01 $1D $1A
    and b                                         ; $6AFE: $A0
    dec b                                         ; $6AFF: $05
    or e                                          ; $6B00: $B3
    adc e                                         ; $6B01: $8B
    add e                                         ; $6B02: $83
    dec e                                         ; $6B03: $1D
    and h                                         ; $6B04: $A4
    adc e                                         ; $6B05: $8B
    ld bc, $836C                                  ; $6B06: $01 $6C $83
    dec l                                         ; $6B09: $2D
    ld bc, $896D                                  ; $6B0A: $01 $6D $89
    adc e                                         ; $6B0D: $8B
    ld [bc], a                                    ; $6B0E: $02
    ld l, h                                       ; $6B0F: $6C
    ld l, l                                       ; $6B10: $6D
    sub [hl]                                      ; $6B11: $96
    adc e                                         ; $6B12: $8B
    ld [$6C1D], sp                                ; $6B13: $08 $1D $6C
    cpl                                           ; $6B16: $2F
    ld a, a                                       ; $6B17: $7F
    ld e, l                                       ; $6B18: $5D
    ld a, [hl]                                    ; $6B19: $7E
    inc l                                         ; $6B1A: $2C
    ld l, l                                       ; $6B1B: $6D
    add d                                         ; $6B1C: $82
    dec e                                         ; $6B1D: $1D
    ld [$1D1E], sp                                ; $6B1E: $08 $1E $1D
    ld e, $1D                                     ; $6B21: $1E $1D
    ld l, h                                       ; $6B23: $6C
    dec l                                         ; $6B24: $2D
    cpl                                           ; $6B25: $2F
    inc l                                         ; $6B26: $2C
    add d                                         ; $6B27: $82
    dec l                                         ; $6B28: $2D
    ld [bc], a                                    ; $6B29: $02
    ld l, l                                       ; $6B2A: $6D
    dec e                                         ; $6B2B: $1D
    sub b                                         ; $6B2C: $90
    adc e                                         ; $6B2D: $8B
    ld a, [bc]                                    ; $6B2E: $0A
    ld e, $6C                                     ; $6B2F: $1E $6C
    dec l                                         ; $6B31: $2D
    ld a, a                                       ; $6B32: $7F
    ld e, l                                       ; $6B33: $5D
    ld e, a                                       ; $6B34: $5F
    ld a, e                                       ; $6B35: $7B
    ld e, h                                       ; $6B36: $5C
    ld e, l                                       ; $6B37: $5D
    ld a, [hl]                                    ; $6B38: $7E
    add d                                         ; $6B39: $82
    dec l                                         ; $6B3A: $2D
    dec c                                         ; $6B3B: $0D
    ld l, $2D                                     ; $6B3C: $2E $2D
    ld l, $2D                                     ; $6B3E: $2E $2D
    cpl                                           ; $6B40: $2F
    ld a, a                                       ; $6B41: $7F
    ld e, l                                       ; $6B42: $5D
    ld e, [hl]                                    ; $6B43: $5E
    ld e, l                                       ; $6B44: $5D
    ld e, [hl]                                    ; $6B45: $5E
    ld a, [hl]                                    ; $6B46: $7E
    dec l                                         ; $6B47: $2D
    ld l, l                                       ; $6B48: $6D
    adc [hl]                                      ; $6B49: $8E
    adc e                                         ; $6B4A: $8B
    dec b                                         ; $6B4B: $05
    adc [hl]                                      ; $6B4C: $8E
    dec l                                         ; $6B4D: $2D
    ld a, a                                       ; $6B4E: $7F
    ld e, l                                       ; $6B4F: $5D
    ld e, a                                       ; $6B50: $5F
    add l                                         ; $6B51: $85
    ld a, e                                       ; $6B52: $7B
    inc bc                                        ; $6B53: $03
    ld e, h                                       ; $6B54: $5C
    ld e, l                                       ; $6B55: $5D
    ld e, l                                       ; $6B56: $5D
    add d                                         ; $6B57: $82
    ld e, [hl]                                    ; $6B58: $5E
    add e                                         ; $6B59: $83
    ld e, l                                       ; $6B5A: $5D
    ld bc, $845F                                  ; $6B5B: $01 $5F $84
    ld a, e                                       ; $6B5E: $7B
    inc b                                         ; $6B5F: $04
    ld e, h                                       ; $6B60: $5C
    ld a, [hl]                                    ; $6B61: $7E
    inc l                                         ; $6B62: $2C

jr_06D_6B63:
    adc a                                         ; $6B63: $8F
    adc l                                         ; $6B64: $8D
    adc e                                         ; $6B65: $8B
    inc bc                                        ; $6B66: $03
    rra                                           ; $6B67: $1F
    ld a, a                                       ; $6B68: $7F
    ld e, a                                       ; $6B69: $5F
    add h                                         ; $6B6A: $84
    ld a, e                                       ; $6B6B: $7B
    ld [bc], a                                    ; $6B6C: $02
    ld [hl], a                                    ; $6B6D: $77
    halt                                          ; $6B6E: $76
    adc a                                         ; $6B6F: $8F
    ld a, e                                       ; $6B70: $7B
    inc bc                                        ; $6B71: $03
    ld e, h                                       ; $6B72: $5C
    ld a, [hl]                                    ; $6B73: $7E
    inc e                                         ; $6B74: $1C
    add e                                         ; $6B75: $83
    dec e                                         ; $6B76: $1D
    adc d                                         ; $6B77: $8A
    adc e                                         ; $6B78: $8B
    ld [bc], a                                    ; $6B79: $02
    rra                                           ; $6B7A: $1F
    ld c, a                                       ; $6B7B: $4F
    add d                                         ; $6B7C: $82
    ld a, e                                       ; $6B7D: $7B
    inc bc                                        ; $6B7E: $03
    rla                                           ; $6B7F: $17
    ld [hl], a                                    ; $6B80: $77
    ld [hl], h                                    ; $6B81: $74
    add d                                         ; $6B82: $82
    nop                                           ; $6B83: $00
    ld bc, $8976                                  ; $6B84: $01 $76 $89
    ld a, e                                       ; $6B87: $7B
    inc b                                         ; $6B88: $04
    ld [hl], a                                    ; $6B89: $77
    ld [hl], h                                    ; $6B8A: $74
    halt                                          ; $6B8B: $76
    dec d                                         ; $6B8C: $15
    add d                                         ; $6B8D: $82
    ld a, e                                       ; $6B8E: $7B
    ld [bc], a                                    ; $6B8F: $02
    ld c, h                                       ; $6B90: $4C
    inc l                                         ; $6B91: $2C
    add e                                         ; $6B92: $83
    dec l                                         ; $6B93: $2D
    ld bc, $896D                                  ; $6B94: $01 $6D $89
    adc e                                         ; $6B97: $8B
    dec b                                         ; $6B98: $05
    rra                                           ; $6B99: $1F
    ld c, a                                       ; $6B9A: $4F
    ld a, e                                       ; $6B9B: $7B
    ld d, $77                                     ; $6B9C: $16 $77
    add l                                         ; $6B9E: $85
    nop                                           ; $6B9F: $00
    add h                                         ; $6BA0: $84
    ld [hl], h                                    ; $6BA1: $74
    dec b                                         ; $6BA2: $05
    halt                                          ; $6BA3: $76
    dec d                                         ; $6BA4: $15
    ld d, $77                                     ; $6BA5: $16 $77
    ld [hl], h                                    ; $6BA7: $74
    add e                                         ; $6BA8: $83
    nop                                           ; $6BA9: $00
    ld a, [bc]                                    ; $6BAA: $0A
    halt                                          ; $6BAB: $76
    ld a, e                                       ; $6BAC: $7B
    ld a, e                                       ; $6BAD: $7B
    ld e, h                                       ; $6BAE: $5C
    ld e, l                                       ; $6BAF: $5D
    ld e, [hl]                                    ; $6BB0: $5E
    ld e, l                                       ; $6BB1: $5D
    ld a, [hl]                                    ; $6BB2: $7E
    inc l                                         ; $6BB3: $2C
    ld l, l                                       ; $6BB4: $6D
    add [hl]                                      ; $6BB5: $86
    adc e                                         ; $6BB6: $8B
    ld b, $6C                                     ; $6BB7: $06 $6C
    ld l, $2F                                     ; $6BB9: $2E $2F
    ld c, a                                       ; $6BBB: $4F
    ld [hl], a                                    ; $6BBC: $77
    ld [hl], h                                    ; $6BBD: $74
    add e                                         ; $6BBE: $83
    nop                                           ; $6BBF: $00
    ld [$2214], sp                                ; $6BC0: $08 $14 $22
    ld [hl+], a                                   ; $6BC3: $22
    inc de                                        ; $6BC4: $13
    inc d                                         ; $6BC5: $14
    ld [hl+], a                                   ; $6BC6: $22
    inc de                                        ; $6BC7: $13
    nop                                           ; $6BC8: $00
    add d                                         ; $6BC9: $82
    ld [hl], h                                    ; $6BCA: $74
    add [hl]                                      ; $6BCB: $86
    nop                                           ; $6BCC: $00
    ld [bc], a                                    ; $6BCD: $02
    ld [hl], h                                    ; $6BCE: $74
    halt                                          ; $6BCF: $76
    add h                                         ; $6BD0: $84
    ld a, e                                       ; $6BD1: $7B
    inc b                                         ; $6BD2: $04
    ld e, h                                       ; $6BD3: $5C
    ld a, [hl]                                    ; $6BD4: $7E
    inc l                                         ; $6BD5: $2C
    ld l, l                                       ; $6BD6: $6D
    add h                                         ; $6BD7: $84
    adc e                                         ; $6BD8: $8B
    ld b, $6C                                     ; $6BD9: $06 $6C
    cpl                                           ; $6BDB: $2F
    ld a, a                                       ; $6BDC: $7F
    ld e, l                                       ; $6BDD: $5D
    ld e, a                                       ; $6BDE: $5F
    ld a, c                                       ; $6BDF: $79
    add h                                         ; $6BE0: $84
    nop                                           ; $6BE1: $00
    ld bc, $8602                                  ; $6BE2: $01 $02 $86
    db $10                                        ; $6BE5: $10
    ld bc, $8A13                                  ; $6BE6: $01 $13 $8A
    nop                                           ; $6BE9: $00
    ld bc, $8476                                  ; $6BEA: $01 $76 $84
    ld a, e                                       ; $6BED: $7B
    inc b                                         ; $6BEE: $04
    ld e, h                                       ; $6BEF: $5C
    ld e, l                                       ; $6BF0: $5D
    ld a, [hl]                                    ; $6BF1: $7E
    ld l, l                                       ; $6BF2: $6D
    add e                                         ; $6BF3: $83
    adc e                                         ; $6BF4: $8B
    inc bc                                        ; $6BF5: $03
    rra                                           ; $6BF6: $1F
    ld a, a                                       ; $6BF7: $7F
    ld e, a                                       ; $6BF8: $5F
    add d                                         ; $6BF9: $82
    ld a, e                                       ; $6BFA: $7B
    ld bc, $8379                                  ; $6BFB: $01 $79 $83
    nop                                           ; $6BFE: $00
    ld bc, $8714                                  ; $6BFF: $01 $14 $87
    db $10                                        ; $6C02: $10
    ld bc, $8501                                  ; $6C03: $01 $01 $85
    nop                                           ; $6C06: $00
    add e                                         ; $6C07: $83
    ld l, d                                       ; $6C08: $6A
    add e                                         ; $6C09: $83
    nop                                           ; $6C0A: $00
    add d                                         ; $6C0B: $82
    ld [hl], h                                    ; $6C0C: $74
    ld bc, $8376                                  ; $6C0D: $01 $76 $83
    ld a, e                                       ; $6C10: $7B
    ld [bc], a                                    ; $6C11: $02
    ld c, h                                       ; $6C12: $4C
    inc c                                         ; $6C13: $0C
    add e                                         ; $6C14: $83
    adc e                                         ; $6C15: $8B
    ld [bc], a                                    ; $6C16: $02
    rra                                           ; $6C17: $1F
    ld c, a                                       ; $6C18: $4F
    add e                                         ; $6C19: $83
    ld a, e                                       ; $6C1A: $7B
    inc b                                         ; $6C1B: $04
    ld a, c                                       ; $6C1C: $79
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    inc d                                         ; $6C1F: $14
    adc b                                         ; $6C20: $88
    db $10                                        ; $6C21: $10
    ld bc, $8301                                  ; $6C22: $01 $01 $83
    nop                                           ; $6C25: $00
    ld b, $6A                                     ; $6C26: $06 $6A
    ld a, [bc]                                    ; $6C28: $0A
    inc c                                         ; $6C29: $0C
    ld c, $0F                                     ; $6C2A: $0E $0F
    dec bc                                        ; $6C2C: $0B
    add l                                         ; $6C2D: $85
    nop                                           ; $6C2E: $00
    dec b                                         ; $6C2F: $05
    halt                                          ; $6C30: $76
    ld a, e                                       ; $6C31: $7B
    ld a, e                                       ; $6C32: $7B
    ld c, h                                       ; $6C33: $4C
    inc e                                         ; $6C34: $1C
    add e                                         ; $6C35: $83
    adc e                                         ; $6C36: $8B
    dec b                                         ; $6C37: $05
    sbc [hl]                                      ; $6C38: $9E
    rrca                                          ; $6C39: $0F
    ccf                                           ; $6C3A: $3F
    ld a, e                                       ; $6C3B: $7B
    ld [hl], a                                    ; $6C3C: $77
    add e                                         ; $6C3D: $83
    nop                                           ; $6C3E: $00
    ld bc, $8802                                  ; $6C3F: $01 $02 $88
    db $10                                        ; $6C42: $10
    dec bc                                        ; $6C43: $0B
    inc bc                                        ; $6C44: $03
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    ld a, [bc]                                    ; $6C47: $0A
    inc c                                         ; $6C48: $0C
    dec c                                         ; $6C49: $0D
    sbc a                                         ; $6C4A: $9F
    adc e                                         ; $6C4B: $8B
    sbc [hl]                                      ; $6C4C: $9E
    rrca                                          ; $6C4D: $0F
    dec bc                                        ; $6C4E: $0B
    add l                                         ; $6C4F: $85
    nop                                           ; $6C50: $00
    inc b                                         ; $6C51: $04
    ld [hl], h                                    ; $6C52: $74
    halt                                          ; $6C53: $76
    ld c, h                                       ; $6C54: $4C
    inc c                                         ; $6C55: $0C
    add h                                         ; $6C56: $84
    adc e                                         ; $6C57: $8B
    inc bc                                        ; $6C58: $03
    rra                                           ; $6C59: $1F
    ld c, a                                       ; $6C5A: $4F
    ld [hl], a                                    ; $6C5B: $77
    add h                                         ; $6C5C: $84
    nop                                           ; $6C5D: $00
    ld bc, $8702                                  ; $6C5E: $01 $02 $87
    db $10                                        ; $6C61: $10
    dec b                                         ; $6C62: $05
    ld bc, $0000                                  ; $6C63: $01 $00 $00
    ld a, [bc]                                    ; $6C66: $0A
    inc c                                         ; $6C67: $0C
    add l                                         ; $6C68: $85
    adc e                                         ; $6C69: $8B
    inc bc                                        ; $6C6A: $03
    rra                                           ; $6C6B: $1F
    ld c, a                                       ; $6C6C: $4F
    ld a, c                                       ; $6C6D: $79
    add l                                         ; $6C6E: $85
    nop                                           ; $6C6F: $00
    ld [bc], a                                    ; $6C70: $02
    ld a, [bc]                                    ; $6C71: $0A
    inc c                                         ; $6C72: $0C
    add h                                         ; $6C73: $84
    adc e                                         ; $6C74: $8B
    inc b                                         ; $6C75: $04
    adc [hl]                                      ; $6C76: $8E
    cpl                                           ; $6C77: $2F
    ld c, a                                       ; $6C78: $4F
    ld a, c                                       ; $6C79: $79
    add h                                         ; $6C7A: $84
    nop                                           ; $6C7B: $00
    ld bc, $8704                                  ; $6C7C: $01 $04 $87
    db $10                                        ; $6C7F: $10
    ld b, $03                                     ; $6C80: $06 $03
    nop                                           ; $6C82: $00
    ld a, b                                       ; $6C83: $78
    ld c, h                                       ; $6C84: $4C
    inc e                                         ; $6C85: $1C
    adc a                                         ; $6C86: $8F
    add h                                         ; $6C87: $84
    adc e                                         ; $6C88: $8B
    inc bc                                        ; $6C89: $03
    rra                                           ; $6C8A: $1F
    ld c, a                                       ; $6C8B: $4F
    ld a, c                                       ; $6C8C: $79
    add h                                         ; $6C8D: $84
    nop                                           ; $6C8E: $00
    inc bc                                        ; $6C8F: $03
    ld a, b                                       ; $6C90: $78
    ld c, h                                       ; $6C91: $4C
    inc e                                         ; $6C92: $1C
    add h                                         ; $6C93: $84
    adc e                                         ; $6C94: $8B
    inc b                                         ; $6C95: $04
    rra                                           ; $6C96: $1F
    ld a, a                                       ; $6C97: $7F
    ld e, a                                       ; $6C98: $5F
    ld a, c                                       ; $6C99: $79
    add l                                         ; $6C9A: $85
    nop                                           ; $6C9B: $00
    ld bc, $8504                                  ; $6C9C: $01 $04 $85
    ld [de], a                                    ; $6C9F: $12
    rlca                                          ; $6CA0: $07
    inc bc                                        ; $6CA1: $03

jr_06D_6CA2:
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    ld a, b                                       ; $6CA4: $78
    ld c, h                                       ; $6CA5: $4C
    inc l                                         ; $6CA6: $2C
    inc e                                         ; $6CA7: $1C
    add e                                         ; $6CA8: $83
    adc e                                         ; $6CA9: $8B
    inc b                                         ; $6CAA: $04
    ld l, h                                       ; $6CAB: $6C
    cpl                                           ; $6CAC: $2F
    ld c, a                                       ; $6CAD: $4F
    ld a, c                                       ; $6CAE: $79
    add h                                         ; $6CAF: $84
    nop                                           ; $6CB0: $00
    inc bc                                        ; $6CB1: $03
    ld a, b                                       ; $6CB2: $78
    ld c, h                                       ; $6CB3: $4C
    inc e                                         ; $6CB4: $1C
    add h                                         ; $6CB5: $84
    adc e                                         ; $6CB6: $8B
    rlca                                          ; $6CB7: $07
    rra                                           ; $6CB8: $1F
    ld c, a                                       ; $6CB9: $4F
    ld a, e                                       ; $6CBA: $7B
    ld a, c                                       ; $6CBB: $79
    nop                                           ; $6CBC: $00
    inc d                                         ; $6CBD: $14
    inc de                                        ; $6CBE: $13
    add h                                         ; $6CBF: $84
    nop                                           ; $6CC0: $00
    ld [bc], a                                    ; $6CC1: $02
    ld a, d                                       ; $6CC2: $7A
    ld l, d                                       ; $6CC3: $6A
    add l                                         ; $6CC4: $85
    nop                                           ; $6CC5: $00
    inc b                                         ; $6CC6: $04
    ld a, b                                       ; $6CC7: $78
    ld e, h                                       ; $6CC8: $5C
    ld a, [hl]                                    ; $6CC9: $7E
    inc l                                         ; $6CCA: $2C
    add e                                         ; $6CCB: $83
    dec l                                         ; $6CCC: $2D
    inc b                                         ; $6CCD: $04
    ld a, a                                       ; $6CCE: $7F
    ld e, l                                       ; $6CCF: $5D
    ld e, a                                       ; $6CD0: $5F
    ld a, c                                       ; $6CD1: $79
    add h                                         ; $6CD2: $84
    nop                                           ; $6CD3: $00
    inc b                                         ; $6CD4: $04
    ld a, b                                       ; $6CD5: $78
    ld c, h                                       ; $6CD6: $4C
    inc l                                         ; $6CD7: $2C
    ld l, l                                       ; $6CD8: $6D
    add e                                         ; $6CD9: $83
    adc e                                         ; $6CDA: $8B
    rlca                                          ; $6CDB: $07
    rra                                           ; $6CDC: $1F
    ld c, a                                       ; $6CDD: $4F
    ld a, e                                       ; $6CDE: $7B
    ld a, c                                       ; $6CDF: $79
    inc d                                         ; $6CE0: $14
    db $10                                        ; $6CE1: $10
    ld bc, $0082                                  ; $6CE2: $01 $82 $00
    dec b                                         ; $6CE5: $05
    ld l, d                                       ; $6CE6: $6A
    ld a, [bc]                                    ; $6CE7: $0A
    inc c                                         ; $6CE8: $0C
    rrca                                          ; $6CE9: $0F
    dec bc                                        ; $6CEA: $0B
    add l                                         ; $6CEB: $85
    nop                                           ; $6CEC: $00
    inc bc                                        ; $6CED: $03
    halt                                          ; $6CEE: $76
    ld e, h                                       ; $6CEF: $5C
    ld e, [hl]                                    ; $6CF0: $5E
    add d                                         ; $6CF1: $82
    ld e, l                                       ; $6CF2: $5D
    ld [bc], a                                    ; $6CF3: $02
    ld e, [hl]                                    ; $6CF4: $5E
    ld e, a                                       ; $6CF5: $5F
    add d                                         ; $6CF6: $82
    ld a, e                                       ; $6CF7: $7B
    ld bc, $8479                                  ; $6CF8: $01 $79 $84
    nop                                           ; $6CFB: $00
    inc b                                         ; $6CFC: $04
    ld a, b                                       ; $6CFD: $78
    ld e, h                                       ; $6CFE: $5C
    ld a, [hl]                                    ; $6CFF: $7E
    inc c                                         ; $6D00: $0C
    add d                                         ; $6D01: $82
    adc e                                         ; $6D02: $8B
    db $10                                        ; $6D03: $10
    adc [hl]                                      ; $6D04: $8E
    cpl                                           ; $6D05: $2F
    ld c, a                                       ; $6D06: $4F
    ld [hl], a                                    ; $6D07: $77
    nop                                           ; $6D08: $00
    inc b                                         ; $6D09: $04
    ld [de], a                                    ; $6D0A: $12
    inc bc                                        ; $6D0B: $03
    nop                                           ; $6D0C: $00
    ld a, [bc]                                    ; $6D0D: $0A
    inc c                                         ; $6D0E: $0C
    dec c                                         ; $6D0F: $0D
    sbc a                                         ; $6D10: $9F
    sbc [hl]                                      ; $6D11: $9E
    rrca                                          ; $6D12: $0F
    dec bc                                        ; $6D13: $0B
    add d                                         ; $6D14: $82
    nop                                           ; $6D15: $00
    inc bc                                        ; $6D16: $03
    cp $00                                        ; $6D17: $FE $00
    jr c, jr_06D_6CA2                             ; $6D19: $38 $87

    ld a, e                                       ; $6D1B: $7B
    ld bc, $8577                                  ; $6D1C: $01 $77 $85
    nop                                           ; $6D1F: $00
    inc b                                         ; $6D20: $04
    ld a, b                                       ; $6D21: $78
    ld a, e                                       ; $6D22: $7B
    ld c, h                                       ; $6D23: $4C
    inc e                                         ; $6D24: $1C
    add d                                         ; $6D25: $82
    adc e                                         ; $6D26: $8B
    inc b                                         ; $6D27: $04
    rra                                           ; $6D28: $1F
    ld a, a                                       ; $6D29: $7F
    ld e, a                                       ; $6D2A: $5F
    ld a, c                                       ; $6D2B: $79
    add h                                         ; $6D2C: $84
    nop                                           ; $6D2D: $00
    inc bc                                        ; $6D2E: $03
    ld a, [bc]                                    ; $6D2F: $0A
    inc c                                         ; $6D30: $0C
    sbc a                                         ; $6D31: $9F
    add e                                         ; $6D32: $83
    adc e                                         ; $6D33: $8B
    inc bc                                        ; $6D34: $03
    sbc [hl]                                      ; $6D35: $9E
    rrca                                          ; $6D36: $0F
    dec bc                                        ; $6D37: $0B
    add d                                         ; $6D38: $82
    nop                                           ; $6D39: $00
    inc bc                                        ; $6D3A: $03
    ld a, b                                       ; $6D3B: $78
    sbc h                                         ; $6D3C: $9C
    sbc e                                         ; $6D3D: $9B
    add l                                         ; $6D3E: $85
    ld a, e                                       ; $6D3F: $7B
    ld bc, $8777                                  ; $6D40: $01 $77 $87
    nop                                           ; $6D43: $00
    add hl, bc                                    ; $6D44: $09
    halt                                          ; $6D45: $76
    ld c, h                                       ; $6D46: $4C
    inc e                                         ; $6D47: $1C
    adc e                                         ; $6D48: $8B
    ld l, $2F                                     ; $6D49: $2E $2F
    ld c, a                                       ; $6D4B: $4F
    ld a, e                                       ; $6D4C: $7B
    ld a, c                                       ; $6D4D: $79
    add e                                         ; $6D4E: $83
    nop                                           ; $6D4F: $00
    inc bc                                        ; $6D50: $03
    ld a, b                                       ; $6D51: $78
    ld c, h                                       ; $6D52: $4C
    inc e                                         ; $6D53: $1C
    add l                                         ; $6D54: $85
    adc e                                         ; $6D55: $8B
    ld a, [bc]                                    ; $6D56: $0A
    rra                                           ; $6D57: $1F
    ld c, a                                       ; $6D58: $4F
    ld a, c                                       ; $6D59: $79
    nop                                           ; $6D5A: $00
    ld a, [bc]                                    ; $6D5B: $0A
    ld l, [hl]                                    ; $6D5C: $6E
    ld l, a                                       ; $6D5D: $6F
    ccf                                           ; $6D5E: $3F
    ld a, e                                       ; $6D5F: $7B
    ld [hl], a                                    ; $6D60: $77
    add d                                         ; $6D61: $82
    ld [hl], h                                    ; $6D62: $74
    adc b                                         ; $6D63: $88
    nop                                           ; $6D64: $00
    add hl, bc                                    ; $6D65: $09
    jr c, jr_06D_6DB4                             ; $6D66: $38 $4C

    inc c                                         ; $6D68: $0C
    adc e                                         ; $6D69: $8B
    ld e, [hl]                                    ; $6D6A: $5E
    ld e, l                                       ; $6D6B: $5D
    ld e, a                                       ; $6D6C: $5F
    ld a, e                                       ; $6D6D: $7B
    ld a, c                                       ; $6D6E: $79
    add e                                         ; $6D6F: $83
    nop                                           ; $6D70: $00
    inc bc                                        ; $6D71: $03
    ld a, b                                       ; $6D72: $78
    ld c, h                                       ; $6D73: $4C
    inc e                                         ; $6D74: $1C
    add l                                         ; $6D75: $85
    adc e                                         ; $6D76: $8B
    add hl, bc                                    ; $6D77: $09
    rra                                           ; $6D78: $1F
    ld c, a                                       ; $6D79: $4F
    ld a, c                                       ; $6D7A: $79
    ld a, b                                       ; $6D7B: $78
    ld c, h                                       ; $6D7C: $4C
    ld a, [hl]                                    ; $6D7D: $7E
    ld a, a                                       ; $6D7E: $7F
    ld c, a                                       ; $6D7F: $4F
    ld [hl], a                                    ; $6D80: $77
    adc d                                         ; $6D81: $8A
    nop                                           ; $6D82: $00
    inc bc                                        ; $6D83: $03
    ld a, b                                       ; $6D84: $78
    inc a                                         ; $6D85: $3C
    inc c                                         ; $6D86: $0C
    add d                                         ; $6D87: $82
    adc e                                         ; $6D88: $8B
    add e                                         ; $6D89: $83
    ld a, e                                       ; $6D8A: $7B
    ld bc, $8477                                  ; $6D8B: $01 $77 $84
    nop                                           ; $6D8E: $00
    inc b                                         ; $6D8F: $04
    ld a, b                                       ; $6D90: $78
    ld c, h                                       ; $6D91: $4C
    inc l                                         ; $6D92: $2C
    ld l, l                                       ; $6D93: $6D
    add e                                         ; $6D94: $83
    adc e                                         ; $6D95: $8B
    ld a, [bc]                                    ; $6D96: $0A
    adc [hl]                                      ; $6D97: $8E
    cpl                                           ; $6D98: $2F
    ld c, a                                       ; $6D99: $4F
    ld a, c                                       ; $6D9A: $79
    ld a, b                                       ; $6D9B: $78
    ld c, h                                       ; $6D9C: $4C
    ld a, [hl]                                    ; $6D9D: $7E
    ld a, a                                       ; $6D9E: $7F
    ld e, a                                       ; $6D9F: $5F
    ld a, c                                       ; $6DA0: $79
    adc d                                         ; $6DA1: $8A
    nop                                           ; $6DA2: $00
    inc bc                                        ; $6DA3: $03
    ld a, b                                       ; $6DA4: $78
    ld c, h                                       ; $6DA5: $4C
    inc e                                         ; $6DA6: $1C
    add d                                         ; $6DA7: $82
    adc e                                         ; $6DA8: $8B
    add d                                         ; $6DA9: $82
    ld a, e                                       ; $6DAA: $7B
    ld bc, $8577                                  ; $6DAB: $01 $77 $85
    nop                                           ; $6DAE: $00
    inc d                                         ; $6DAF: $14
    ld a, b                                       ; $6DB0: $78
    ld e, h                                       ; $6DB1: $5C
    ld a, [hl]                                    ; $6DB2: $7E
    inc l                                         ; $6DB3: $2C

jr_06D_6DB4:
    ld l, l                                       ; $6DB4: $6D
    adc e                                         ; $6DB5: $8B
    ld e, $6C                                     ; $6DB6: $1E $6C
    ld a, a                                       ; $6DB8: $7F
    ld e, a                                       ; $6DB9: $5F
    ld a, c                                       ; $6DBA: $79
    ld a, b                                       ; $6DBB: $78
    ld e, h                                       ; $6DBC: $5C
    ld e, l                                       ; $6DBD: $5D
    ld e, a                                       ; $6DBE: $5F
    ld a, e                                       ; $6DBF: $7B
    ld a, c                                       ; $6DC0: $79
    nop                                           ; $6DC1: $00
    inc d                                         ; $6DC2: $14
    inc de                                        ; $6DC3: $13
    add a                                         ; $6DC4: $87
    nop                                           ; $6DC5: $00
    ld [bc], a                                    ; $6DC6: $02
    ld a, [bc]                                    ; $6DC7: $0A
    inc c                                         ; $6DC8: $0C
    add e                                         ; $6DC9: $83
    adc e                                         ; $6DCA: $8B
    add d                                         ; $6DCB: $82
    ld [hl], h                                    ; $6DCC: $74
    add [hl]                                      ; $6DCD: $86
    nop                                           ; $6DCE: $00
    inc c                                         ; $6DCF: $0C
    ld a, b                                       ; $6DD0: $78
    ld a, e                                       ; $6DD1: $7B
    ld e, h                                       ; $6DD2: $5C
    ld a, [hl]                                    ; $6DD3: $7E
    inc l                                         ; $6DD4: $2C
    ld l, $2F                                     ; $6DD5: $2E $2F
    ld a, a                                       ; $6DD7: $7F
    ld e, a                                       ; $6DD8: $5F
    ld a, e                                       ; $6DD9: $7B
    ld a, c                                       ; $6DDA: $79
    ld a, b                                       ; $6DDB: $78
    add h                                         ; $6DDC: $84
    ld a, e                                       ; $6DDD: $7B
    ld [bc], a                                    ; $6DDE: $02
    ld a, c                                       ; $6DDF: $79
    inc d                                         ; $6DE0: $14
    add d                                         ; $6DE1: $82
    db $10                                        ; $6DE2: $10
    ld [bc], a                                    ; $6DE3: $02
    ld [hl+], a                                   ; $6DE4: $22
    inc de                                        ; $6DE5: $13
    add h                                         ; $6DE6: $84
    nop                                           ; $6DE7: $00
    ld [bc], a                                    ; $6DE8: $02
    ld a, [bc]                                    ; $6DE9: $0A
    inc c                                         ; $6DEA: $0C
    add h                                         ; $6DEB: $84
    adc e                                         ; $6DEC: $8B
    adc c                                         ; $6DED: $89
    nop                                           ; $6DEE: $00
    inc bc                                        ; $6DEF: $03
    halt                                          ; $6DF0: $76
    ld a, e                                       ; $6DF1: $7B
    ld e, h                                       ; $6DF2: $5C
    add e                                         ; $6DF3: $83
    ld e, l                                       ; $6DF4: $5D
    ld b, $5F                                     ; $6DF5: $06 $5F
    ld a, e                                       ; $6DF7: $7B
    ld a, e                                       ; $6DF8: $7B
    ld a, c                                       ; $6DF9: $79
    nop                                           ; $6DFA: $00
    halt                                          ; $6DFB: $76
    add d                                         ; $6DFC: $82
    ld a, e                                       ; $6DFD: $7B
    inc bc                                        ; $6DFE: $03
    ld [hl], a                                    ; $6DFF: $77
    nop                                           ; $6E00: $00
    ld [bc], a                                    ; $6E01: $02
    add e                                         ; $6E02: $83
    db $10                                        ; $6E03: $10
    inc bc                                        ; $6E04: $03
    inc bc                                        ; $6E05: $03
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    add d                                         ; $6E08: $82
    ld l, d                                       ; $6E09: $6A
    ld bc, $850C                                  ; $6E0A: $01 $0C $85
    adc e                                         ; $6E0D: $8B
    adc c                                         ; $6E0E: $89
    nop                                           ; $6E0F: $00
    ld [bc], a                                    ; $6E10: $02
    ld a, b                                       ; $6E11: $78
    dec b                                         ; $6E12: $05
    add [hl]                                      ; $6E13: $86
    ld a, e                                       ; $6E14: $7B
    ld bc, $8377                                  ; $6E15: $01 $77 $83
    nop                                           ; $6E18: $00
    add d                                         ; $6E19: $82
    ld [hl], h                                    ; $6E1A: $74
    ld [bc], a                                    ; $6E1B: $02
    nop                                           ; $6E1C: $00
    inc d                                         ; $6E1D: $14
    add e                                         ; $6E1E: $83
    db $10                                        ; $6E1F: $10
    rlca                                          ; $6E20: $07
    inc bc                                        ; $6E21: $03
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    ld a, [bc]                                    ; $6E24: $0A
    inc c                                         ; $6E25: $0C
    dec c                                         ; $6E26: $0D
    sbc a                                         ; $6E27: $9F
    add l                                         ; $6E28: $85
    adc e                                         ; $6E29: $8B
    add e                                         ; $6E2A: $83
    ld l, d                                       ; $6E2B: $6A
    add a                                         ; $6E2C: $87
    nop                                           ; $6E2D: $00
    ld [bc], a                                    ; $6E2E: $02
    halt                                          ; $6E2F: $76
    dec d                                         ; $6E30: $15
    add h                                         ; $6E31: $84
    ld a, e                                       ; $6E32: $7B
    ld bc, $8777                                  ; $6E33: $01 $77 $87
    nop                                           ; $6E36: $00
    ld b, $02                                     ; $6E37: $06 $02
    db $10                                        ; $6E39: $10
    db $10                                        ; $6E3A: $10
    ld bc, $0000                                  ; $6E3B: $01 $00 $00
    ld [bc], a                                    ; $6E3E: $02
    ld a, [bc]                                    ; $6E3F: $0A
    inc c                                         ; $6E40: $0C
    adc b                                         ; $6E41: $88
    adc e                                         ; $6E42: $8B
    inc b                                         ; $6E43: $04
    dec c                                         ; $6E44: $0D
    ld c, $0F                                     ; $6E45: $0E $0F
    dec bc                                        ; $6E47: $0B
    add a                                         ; $6E48: $87
    nop                                           ; $6E49: $00
    add l                                         ; $6E4A: $85
    ld [hl], h                                    ; $6E4B: $74
    adc b                                         ; $6E4C: $88
    nop                                           ; $6E4D: $00
    ld [$1204], sp                                ; $6E4E: $08 $04 $12
    ld [de], a                                    ; $6E51: $12
    inc bc                                        ; $6E52: $03
    nop                                           ; $6E53: $00
    ld a, b                                       ; $6E54: $78
    ld c, h                                       ; $6E55: $4C
    inc e                                         ; $6E56: $1C
    adc e                                         ; $6E57: $8B
    adc e                                         ; $6E58: $8B
    ld [bc], a                                    ; $6E59: $02
    rrca                                          ; $6E5A: $0F
    dec bc                                        ; $6E5B: $0B
    sbc b                                         ; $6E5C: $98
    nop                                           ; $6E5D: $00
    inc bc                                        ; $6E5E: $03
    ld a, b                                       ; $6E5F: $78
    ld c, h                                       ; $6E60: $4C
    inc e                                         ; $6E61: $1C
    adc h                                         ; $6E62: $8C
    adc e                                         ; $6E63: $8B
    ld [bc], a                                    ; $6E64: $02
    rrca                                          ; $6E65: $0F
    dec de                                        ; $6E66: $1B
    add e                                         ; $6E67: $83
    nop                                           ; $6E68: $00
    add a                                         ; $6E69: $87
    ld l, d                                       ; $6E6A: $6A
    adc h                                         ; $6E6B: $8C
    nop                                           ; $6E6C: $00
    inc b                                         ; $6E6D: $04
    ld l, d                                       ; $6E6E: $6A
    ld a, [bc]                                    ; $6E6F: $0A
    inc c                                         ; $6E70: $0C
    dec c                                         ; $6E71: $0D
    adc h                                         ; $6E72: $8C
    adc e                                         ; $6E73: $8B
    ld [bc], a                                    ; $6E74: $02
    rra                                           ; $6E75: $1F
    dec de                                        ; $6E76: $1B
    add d                                         ; $6E77: $82
    nop                                           ; $6E78: $00
    inc bc                                        ; $6E79: $03
    ld a, [bc]                                    ; $6E7A: $0A
    inc c                                         ; $6E7B: $0C
    ld c, $82                                     ; $6E7C: $0E $82
    dec c                                         ; $6E7E: $0D
    add d                                         ; $6E7F: $82
    ld c, $03                                     ; $6E80: $0E $03
    rrca                                          ; $6E82: $0F
    dec bc                                        ; $6E83: $0B
    ld l, d                                       ; $6E84: $6A
    add a                                         ; $6E85: $87
    nop                                           ; $6E86: $00
    add d                                         ; $6E87: $82
    ld l, d                                       ; $6E88: $6A
    inc b                                         ; $6E89: $04
    ld a, [bc]                                    ; $6E8A: $0A
    inc c                                         ; $6E8B: $0C
    dec c                                         ; $6E8C: $0D
    sbc a                                         ; $6E8D: $9F
    adc l                                         ; $6E8E: $8D
    adc e                                         ; $6E8F: $8B
    ld b, $0F                                     ; $6E90: $06 $0F
    dec bc                                        ; $6E92: $0B
    ld l, d                                       ; $6E93: $6A
    ld a, [bc]                                    ; $6E94: $0A
    inc c                                         ; $6E95: $0C
    sbc a                                         ; $6E96: $9F
    add l                                         ; $6E97: $85
    adc e                                         ; $6E98: $8B
    inc b                                         ; $6E99: $04
    sbc [hl]                                      ; $6E9A: $9E
    dec c                                         ; $6E9B: $0D
    rrca                                          ; $6E9C: $0F
    dec bc                                        ; $6E9D: $0B
    add l                                         ; $6E9E: $85
    ld l, d                                       ; $6E9F: $6A
    ld [bc], a                                    ; $6EA0: $02
    ld a, [bc]                                    ; $6EA1: $0A
    inc c                                         ; $6EA2: $0C
    add d                                         ; $6EA3: $82
    dec c                                         ; $6EA4: $0D
    ld bc, $8F9F                                  ; $6EA5: $01 $9F $8F
    adc e                                         ; $6EA8: $8B
    ld bc, $839E                                  ; $6EA9: $01 $9E $83
    dec c                                         ; $6EAC: $0D
    ld bc, $889F                                  ; $6EAD: $01 $9F $88
    adc e                                         ; $6EB0: $8B
    dec b                                         ; $6EB1: $05
    sbc [hl]                                      ; $6EB2: $9E
    dec c                                         ; $6EB3: $0D
    dec c                                         ; $6EB4: $0D
    ld c, $0D                                     ; $6EB5: $0E $0D
    add d                                         ; $6EB7: $82
    ld c, $02                                     ; $6EB8: $0E $02
    dec c                                         ; $6EBA: $0D
    sbc a                                         ; $6EBB: $9F
    or [hl]                                       ; $6EBC: $B6
    adc e                                         ; $6EBD: $8B
    nop                                           ; $6EBE: $00
    ld b, b                                       ; $6EBF: $40
    nop                                           ; $6EC0: $00
    inc c                                         ; $6EC1: $0C
    xor [hl]                                      ; $6EC2: $AE
    nop                                           ; $6EC3: $00
    add l                                         ; $6EC4: $85
    ld [$0088], sp                                ; $6EC5: $08 $88 $00
    ld bc, $8308                                  ; $6EC8: $01 $08 $83
    ld [bc], a                                    ; $6ECB: $02
    ld bc, $AE08                                  ; $6ECC: $01 $08 $AE
    nop                                           ; $6ECF: $00
    ld bc, $8308                                  ; $6ED0: $01 $08 $83
    ld [bc], a                                    ; $6ED3: $02
    ld bc, $8808                                  ; $6ED4: $01 $08 $88
    nop                                           ; $6ED7: $00
    ld bc, $8308                                  ; $6ED8: $01 $08 $83
    ld [bc], a                                    ; $6EDB: $02
    ld bc, $AE08                                  ; $6EDC: $01 $08 $AE
    nop                                           ; $6EDF: $00
    ld bc, $8308                                  ; $6EE0: $01 $08 $83
    ld [bc], a                                    ; $6EE3: $02
    ld bc, $8808                                  ; $6EE4: $01 $08 $88
    nop                                           ; $6EE7: $00
    ld bc, $8308                                  ; $6EE8: $01 $08 $83
    ld [bc], a                                    ; $6EEB: $02
    ld bc, $AF08                                  ; $6EEC: $01 $08 $AF
    nop                                           ; $6EEF: $00
    add e                                         ; $6EF0: $83
    ld [bc], a                                    ; $6EF1: $02
    ld bc, $8808                                  ; $6EF2: $01 $08 $88
    nop                                           ; $6EF5: $00
    add l                                         ; $6EF6: $85
    ld [$00AE], sp                                ; $6EF7: $08 $AE $00
    ld bc, $8308                                  ; $6EFA: $01 $08 $83
    ld [bc], a                                    ; $6EFD: $02
    ld bc, $8808                                  ; $6EFE: $01 $08 $88
    nop                                           ; $6F01: $00
    ld bc, $8308                                  ; $6F02: $01 $08 $83
    ld [bc], a                                    ; $6F05: $02
    ld bc, $AE08                                  ; $6F06: $01 $08 $AE
    nop                                           ; $6F09: $00
    ld bc, $8308                                  ; $6F0A: $01 $08 $83
    ld [bc], a                                    ; $6F0D: $02
    ld bc, $8808                                  ; $6F0E: $01 $08 $88
    nop                                           ; $6F11: $00
    ld bc, $8308                                  ; $6F12: $01 $08 $83
    ld [bc], a                                    ; $6F15: $02
    ld bc, $AE08                                  ; $6F16: $01 $08 $AE
    nop                                           ; $6F19: $00
    ld bc, $8308                                  ; $6F1A: $01 $08 $83
    ld [bc], a                                    ; $6F1D: $02
    ld bc, $8808                                  ; $6F1E: $01 $08 $88
    nop                                           ; $6F21: $00
    ld bc, $8308                                  ; $6F22: $01 $08 $83
    ld [bc], a                                    ; $6F25: $02
    ld bc, $AE08                                  ; $6F26: $01 $08 $AE
    nop                                           ; $6F29: $00
    ld bc, $8308                                  ; $6F2A: $01 $08 $83
    ld [bc], a                                    ; $6F2D: $02
    ld bc, $8808                                  ; $6F2E: $01 $08 $88
    nop                                           ; $6F31: $00
    ld bc, $8308                                  ; $6F32: $01 $08 $83
    ld [bc], a                                    ; $6F35: $02
    ld bc, $AE08                                  ; $6F36: $01 $08 $AE
    nop                                           ; $6F39: $00
    ld bc, $8308                                  ; $6F3A: $01 $08 $83
    ld [bc], a                                    ; $6F3D: $02
    ld bc, $8808                                  ; $6F3E: $01 $08 $88
    nop                                           ; $6F41: $00
    ld bc, $8308                                  ; $6F42: $01 $08 $83
    ld [bc], a                                    ; $6F45: $02
    ld bc, $AE08                                  ; $6F46: $01 $08 $AE
    nop                                           ; $6F49: $00
    ld bc, $8308                                  ; $6F4A: $01 $08 $83
    ld [bc], a                                    ; $6F4D: $02
    adc c                                         ; $6F4E: $89
    nop                                           ; $6F4F: $00
    ld bc, $8308                                  ; $6F50: $01 $08 $83
    ld [bc], a                                    ; $6F53: $02
    ld bc, $AE08                                  ; $6F54: $01 $08 $AE
    nop                                           ; $6F57: $00
    ld bc, $8308                                  ; $6F58: $01 $08 $83
    ld [bc], a                                    ; $6F5B: $02
    ld bc, $8808                                  ; $6F5C: $01 $08 $88
    nop                                           ; $6F5F: $00
    ld bc, $8308                                  ; $6F60: $01 $08 $83
    ld [bc], a                                    ; $6F63: $02
    ld bc, $AE08                                  ; $6F64: $01 $08 $AE
    nop                                           ; $6F67: $00
    ld bc, $8308                                  ; $6F68: $01 $08 $83
    ld [bc], a                                    ; $6F6B: $02
    ld bc, $8808                                  ; $6F6C: $01 $08 $88
    nop                                           ; $6F6F: $00
    ld bc, $8308                                  ; $6F70: $01 $08 $83
    ld [bc], a                                    ; $6F73: $02
    ld bc, $AE08                                  ; $6F74: $01 $08 $AE
    nop                                           ; $6F77: $00
    ld bc, $8308                                  ; $6F78: $01 $08 $83
    ld [bc], a                                    ; $6F7B: $02
    ld bc, $8808                                  ; $6F7C: $01 $08 $88
    nop                                           ; $6F7F: $00
    ld bc, $8308                                  ; $6F80: $01 $08 $83
    ld [bc], a                                    ; $6F83: $02
    ld bc, $AA08                                  ; $6F84: $01 $08 $AA
    nop                                           ; $6F87: $00
    add l                                         ; $6F88: $85
    ld [$0283], sp                                ; $6F89: $08 $83 $02
    ld bc, $8808                                  ; $6F8C: $01 $08 $88
    nop                                           ; $6F8F: $00
    ld bc, $8308                                  ; $6F90: $01 $08 $83
    ld [bc], a                                    ; $6F93: $02
    ld bc, $AA08                                  ; $6F94: $01 $08 $AA
    nop                                           ; $6F97: $00
    ld bc, $8708                                  ; $6F98: $01 $08 $87
    ld [bc], a                                    ; $6F9B: $02
    ld bc, $8808                                  ; $6F9C: $01 $08 $88
    nop                                           ; $6F9F: $00
    ld bc, $8308                                  ; $6FA0: $01 $08 $83
    ld [bc], a                                    ; $6FA3: $02
    ld bc, $AA08                                  ; $6FA4: $01 $08 $AA
    nop                                           ; $6FA7: $00
    ld bc, $8708                                  ; $6FA8: $01 $08 $87
    ld [bc], a                                    ; $6FAB: $02
    ld bc, $8808                                  ; $6FAC: $01 $08 $88
    nop                                           ; $6FAF: $00
    ld bc, $8308                                  ; $6FB0: $01 $08 $83
    ld [bc], a                                    ; $6FB3: $02
    ld bc, $AA08                                  ; $6FB4: $01 $08 $AA
    nop                                           ; $6FB7: $00
    inc bc                                        ; $6FB8: $03
    ld [$0202], sp                                ; $6FB9: $08 $02 $02
    add [hl]                                      ; $6FBC: $86
    ld [$0088], sp                                ; $6FBD: $08 $88 $00
    ld bc, $8308                                  ; $6FC0: $01 $08 $83
    ld [bc], a                                    ; $6FC3: $02
    inc bc                                        ; $6FC4: $03
    ld [$0800], sp                                ; $6FC5: $08 $00 $08
    add d                                         ; $6FC8: $82
    ld [bc], a                                    ; $6FC9: $02
    ld bc, $A508                                  ; $6FCA: $01 $08 $A5
    nop                                           ; $6FCD: $00
    inc b                                         ; $6FCE: $04
    ld [$0202], sp                                ; $6FCF: $08 $02 $02
    ld [$008D], sp                                ; $6FD2: $08 $8D $00
    ld bc, $8308                                  ; $6FD5: $01 $08 $83
    ld [bc], a                                    ; $6FD8: $02
    inc bc                                        ; $6FD9: $03
    ld [$0800], sp                                ; $6FDA: $08 $00 $08
    add d                                         ; $6FDD: $82
    ld [bc], a                                    ; $6FDE: $02
    ld bc, $A508                                  ; $6FDF: $01 $08 $A5
    nop                                           ; $6FE2: $00
    ld b, $08                                     ; $6FE3: $06 $08
    ld [bc], a                                    ; $6FE5: $02
    ld [bc], a                                    ; $6FE6: $02
    ld [rRAMG], sp                                ; $6FE7: $08 $00 $00
    add e                                         ; $6FEA: $83
    ld [$0088], sp                                ; $6FEB: $08 $88 $00
    ld bc, $8308                                  ; $6FEE: $01 $08 $83
    ld [bc], a                                    ; $6FF1: $02
    inc bc                                        ; $6FF2: $03
    ld [$0800], sp                                ; $6FF3: $08 $00 $08
    add d                                         ; $6FF6: $82
    ld [bc], a                                    ; $6FF7: $02
    ld bc, $A508                                  ; $6FF8: $01 $08 $A5
    nop                                           ; $6FFB: $00
    ld b, $08                                     ; $6FFC: $06 $08
    ld [bc], a                                    ; $6FFE: $02
    ld [bc], a                                    ; $6FFF: $02
    ld [rRAMG], sp                                ; $7000: $08 $00 $00
    ld bc, $8A08                                  ; $7003: $01 $08 $8A
    nop                                           ; $7006: $00
    ld bc, $8308                                  ; $7007: $01 $08 $83
    ld [bc], a                                    ; $700A: $02
    ld [bc], a                                    ; $700B: $02
    ld [$8400], sp                                ; $700C: $08 $00 $84
    ld [$00A5], sp                                ; $700F: $08 $A5 $00
    inc bc                                        ; $7012: $03
    ld [$0202], sp                                ; $7013: $08 $02 $02
    add h                                         ; $7016: $84
    ld [$008A], sp                                ; $7017: $08 $8A $00
    ld bc, $8308                                  ; $701A: $01 $08 $83
    ld [bc], a                                    ; $701D: $02
    ld [bc], a                                    ; $701E: $02
    ld [$8400], sp                                ; $701F: $08 $00 $84
    ld [$0002], sp                                ; $7022: $08 $02 $00
    ld [$0082], sp                                ; $7025: $08 $82 $00
    ld bc, $A008                                  ; $7028: $01 $08 $A0
    nop                                           ; $702B: $00
    inc bc                                        ; $702C: $03
    ld [$0202], sp                                ; $702D: $08 $02 $02
    add d                                         ; $7030: $82
    ld [$008C], sp                                ; $7031: $08 $8C $00
    ld bc, $8308                                  ; $7034: $01 $08 $83
    ld [bc], a                                    ; $7037: $02
    ld bc, $8608                                  ; $7038: $01 $08 $86
    nop                                           ; $703B: $00
    inc b                                         ; $703C: $04
    ld [rRAMG], sp                                ; $703D: $08 $00 $00
    ld [$00A0], sp                                ; $7040: $08 $A0 $00
    inc bc                                        ; $7043: $03
    ld [$0202], sp                                ; $7044: $08 $02 $02
    add d                                         ; $7047: $82
    ld [$0082], sp                                ; $7048: $08 $82 $00
    adc e                                         ; $704B: $8B
    ld [$0283], sp                                ; $704C: $08 $83 $02
    inc bc                                        ; $704F: $03
    ld [$0800], sp                                ; $7050: $08 $00 $08
    add d                                         ; $7053: $82
    nop                                           ; $7054: $00
    inc bc                                        ; $7055: $03
    ld [$0800], sp                                ; $7056: $08 $00 $08
    add d                                         ; $7059: $82
    nop                                           ; $705A: $00
    ld bc, $A008                                  ; $705B: $01 $08 $A0
    nop                                           ; $705E: $00
    inc bc                                        ; $705F: $03
    ld [$0202], sp                                ; $7060: $08 $02 $02
    add d                                         ; $7063: $82
    ld [$0082], sp                                ; $7064: $08 $82 $00
    add d                                         ; $7067: $82
    ld [$028C], sp                                ; $7068: $08 $8C $02
    inc bc                                        ; $706B: $03
    ld [$0800], sp                                ; $706C: $08 $00 $08
    add d                                         ; $706F: $82
    nop                                           ; $7070: $00
    ld bc, $A508                                  ; $7071: $01 $08 $A5
    nop                                           ; $7074: $00
    add l                                         ; $7075: $85
    ld [$0082], sp                                ; $7076: $08 $82 $00
    add d                                         ; $7079: $82
    ld [$028C], sp                                ; $707A: $08 $8C $02
    inc bc                                        ; $707D: $03
    ld [$0800], sp                                ; $707E: $08 $00 $08
    add d                                         ; $7081: $82
    nop                                           ; $7082: $00
    ld bc, $8A08                                  ; $7083: $01 $08 $8A
    nop                                           ; $7086: $00
    add h                                         ; $7087: $84
    ld [$0097], sp                                ; $7088: $08 $97 $00
    add l                                         ; $708B: $85
    ld [$0082], sp                                ; $708C: $08 $82 $00
    add d                                         ; $708F: $82
    ld [$0283], sp                                ; $7090: $08 $83 $02
    adc d                                         ; $7093: $8A
    ld [$008F], sp                                ; $7094: $08 $8F $00
    inc b                                         ; $7097: $04
    ld [$0202], sp                                ; $7098: $08 $02 $02
    ld [$009E], sp                                ; $709B: $08 $9E $00
    add d                                         ; $709E: $82
    ld [$0283], sp                                ; $709F: $08 $83 $02
    ld [bc], a                                    ; $70A2: $02
    ld [$8800], sp                                ; $70A3: $08 $00 $88
    ld [$008F], sp                                ; $70A6: $08 $8F $00
    inc b                                         ; $70A9: $04
    ld [$0202], sp                                ; $70AA: $08 $02 $02
    ld [$0097], sp                                ; $70AD: $08 $97 $00
    adc c                                         ; $70B0: $89
    ld [$0283], sp                                ; $70B1: $08 $83 $02
    ld [bc], a                                    ; $70B4: $02
    ld [$8800], sp                                ; $70B5: $08 $00 $88
    ld [$008F], sp                                ; $70B8: $08 $8F $00
    inc b                                         ; $70BB: $04
    ld [$0202], sp                                ; $70BC: $08 $02 $02
    ld [$0097], sp                                ; $70BF: $08 $97 $00
    adc c                                         ; $70C2: $89
    ld [$0283], sp                                ; $70C3: $08 $83 $02
    ld [bc], a                                    ; $70C6: $02
    ld [$8800], sp                                ; $70C7: $08 $00 $88
    ld [$0001], sp                                ; $70CA: $08 $01 $00
    add l                                         ; $70CD: $85
    ld [$0002], sp                                ; $70CE: $08 $02 $00
    ld [$0083], sp                                ; $70D1: $08 $83 $00
    ld bc, $8308                                  ; $70D4: $01 $08 $83
    nop                                           ; $70D7: $00
    inc b                                         ; $70D8: $04
    ld [$0202], sp                                ; $70D9: $08 $02 $02
    ld [$0097], sp                                ; $70DC: $08 $97 $00
    add [hl]                                      ; $70DF: $86
    ld [$0082], sp                                ; $70E0: $08 $82 $00
    ld bc, $8308                                  ; $70E3: $01 $08 $83
    ld [bc], a                                    ; $70E6: $02
    ld [bc], a                                    ; $70E7: $02
    ld [$8800], sp                                ; $70E8: $08 $00 $88
    ld [$0001], sp                                ; $70EB: $08 $01 $00
    add l                                         ; $70EE: $85
    ld [$0002], sp                                ; $70EF: $08 $02 $00
    ld [$0083], sp                                ; $70F2: $08 $83 $00
    ld bc, $8308                                  ; $70F5: $01 $08 $83
    nop                                           ; $70F8: $00
    inc b                                         ; $70F9: $04
    ld [$0202], sp                                ; $70FA: $08 $02 $02
    ld [$0097], sp                                ; $70FD: $08 $97 $00
    inc bc                                        ; $7100: $03
    ld [$0202], sp                                ; $7101: $08 $02 $02
    add e                                         ; $7104: $83
    ld [$0082], sp                                ; $7105: $08 $82 $00
    ld bc, $8308                                  ; $7108: $01 $08 $83
    ld [bc], a                                    ; $710B: $02
    ld [bc], a                                    ; $710C: $02
    ld [$8800], sp                                ; $710D: $08 $00 $88
    ld [$0001], sp                                ; $7110: $08 $01 $00
    add l                                         ; $7113: $85
    ld [$0002], sp                                ; $7114: $08 $02 $00
    ld [$0083], sp                                ; $7117: $08 $83 $00
    ld bc, $8308                                  ; $711A: $01 $08 $83
    nop                                           ; $711D: $00
    inc bc                                        ; $711E: $03
    ld [$0202], sp                                ; $711F: $08 $02 $02
    add a                                         ; $7122: $87
    ld [$0091], sp                                ; $7123: $08 $91 $00
    inc bc                                        ; $7126: $03
    ld [$0202], sp                                ; $7127: $08 $02 $02
    add e                                         ; $712A: $83
    ld [$0082], sp                                ; $712B: $08 $82 $00
    add l                                         ; $712E: $85
    ld [$0087], sp                                ; $712F: $08 $87 $00
    add d                                         ; $7132: $82
    ld [$0001], sp                                ; $7133: $08 $01 $00
    add l                                         ; $7136: $85
    ld [$0002], sp                                ; $7137: $08 $02 $00
    ld [$0083], sp                                ; $713A: $08 $83 $00
    ld bc, $8308                                  ; $713D: $01 $08 $83
    nop                                           ; $7140: $00
    ld bc, $8808                                  ; $7141: $01 $08 $88
    ld [bc], a                                    ; $7144: $02
    ld bc, $9108                                  ; $7145: $01 $08 $91
    nop                                           ; $7148: $00
    inc bc                                        ; $7149: $03
    ld [$0202], sp                                ; $714A: $08 $02 $02
    add e                                         ; $714D: $83
    ld [$0082], sp                                ; $714E: $08 $82 $00
    ld bc, $8308                                  ; $7151: $01 $08 $83
    ld [bc], a                                    ; $7154: $02
    ld bc, $8708                                  ; $7155: $01 $08 $87
    nop                                           ; $7158: $00
    add d                                         ; $7159: $82
    ld [$0001], sp                                ; $715A: $08 $01 $00
    add l                                         ; $715D: $85
    ld [$0089], sp                                ; $715E: $08 $89 $00
    ld bc, $8808                                  ; $7161: $01 $08 $88
    ld [bc], a                                    ; $7164: $02
    ld bc, $9108                                  ; $7165: $01 $08 $91
    nop                                           ; $7168: $00
    inc bc                                        ; $7169: $03
    ld [$0202], sp                                ; $716A: $08 $02 $02
    add e                                         ; $716D: $83
    ld [$0082], sp                                ; $716E: $08 $82 $00
    add d                                         ; $7171: $82
    ld [$0282], sp                                ; $7172: $08 $82 $02
    add e                                         ; $7175: $83
    ld [$0085], sp                                ; $7176: $08 $85 $00
    add d                                         ; $7179: $82
    ld [$008F], sp                                ; $717A: $08 $8F $00
    add h                                         ; $717D: $84
    ld [$0285], sp                                ; $717E: $08 $85 $02
    ld bc, $9108                                  ; $7181: $01 $08 $91
    nop                                           ; $7184: $00
    inc bc                                        ; $7185: $03
    ld [$0202], sp                                ; $7186: $08 $02 $02
    add e                                         ; $7189: $83
    ld [$0082], sp                                ; $718A: $08 $82 $00
    add d                                         ; $718D: $82
    ld [$0284], sp                                ; $718E: $08 $84 $02
    ld bc, $8608                                  ; $7191: $01 $08 $86
    nop                                           ; $7194: $00
    ld bc, $92C6                                  ; $7195: $01 $C6 $92
    nop                                           ; $7198: $00
    ld bc, $8508                                  ; $7199: $01 $08 $85
    ld [bc], a                                    ; $719C: $02
    adc a                                         ; $719D: $8F
    ld [$0083], sp                                ; $719E: $08 $83 $00
    inc b                                         ; $71A1: $04
    ld [$0202], sp                                ; $71A2: $08 $02 $02
    ld [$0084], sp                                ; $71A5: $08 $84 $00
    add d                                         ; $71A8: $82
    ld [$0284], sp                                ; $71A9: $08 $84 $02
    add a                                         ; $71AC: $87
    nop                                           ; $71AD: $00
    ld bc, $8FC6                                  ; $71AE: $01 $C6 $8F
    nop                                           ; $71B1: $00
    add h                                         ; $71B2: $84
    ld [$0293], sp                                ; $71B3: $08 $93 $02
    ld bc, $8308                                  ; $71B6: $01 $08 $83
    nop                                           ; $71B9: $00
    inc b                                         ; $71BA: $04
    ld [$0202], sp                                ; $71BB: $08 $02 $02
    ld [$0084], sp                                ; $71BE: $08 $84 $00
    ld bc, $8508                                  ; $71C1: $01 $08 $85
    ld [bc], a                                    ; $71C4: $02
    ld bc, $8608                                  ; $71C5: $01 $08 $86
    nop                                           ; $71C8: $00
    ld bc, $8FC6                                  ; $71C9: $01 $C6 $8F
    nop                                           ; $71CC: $00
    add h                                         ; $71CD: $84
    ld [$0293], sp                                ; $71CE: $08 $93 $02
    ld bc, $8308                                  ; $71D1: $01 $08 $83
    nop                                           ; $71D4: $00
    inc bc                                        ; $71D5: $03
    ld [$0202], sp                                ; $71D6: $08 $02 $02
    add d                                         ; $71D9: $82
    ld [$0001], sp                                ; $71DA: $08 $01 $00
    add e                                         ; $71DD: $83
    ld [$0285], sp                                ; $71DE: $08 $85 $02
    ld bc, $8608                                  ; $71E1: $01 $08 $86
    nop                                           ; $71E4: $00
    ld bc, $8FC6                                  ; $71E5: $01 $C6 $8F
    nop                                           ; $71E8: $00
    adc l                                         ; $71E9: $8D
    ld [$028A], sp                                ; $71EA: $08 $8A $02
    ld bc, $8308                                  ; $71ED: $01 $08 $83
    nop                                           ; $71F0: $00
    ld bc, $8D08                                  ; $71F1: $01 $08 $8D
    ld [bc], a                                    ; $71F4: $02
    ld bc, $8608                                  ; $71F5: $01 $08 $86
    nop                                           ; $71F8: $00
    ld bc, $9BC6                                  ; $71F9: $01 $C6 $9B
    nop                                           ; $71FC: $00
    ld bc, $8A08                                  ; $71FD: $01 $08 $8A
    ld [bc], a                                    ; $7200: $02
    add l                                         ; $7201: $85
    nop                                           ; $7202: $00
    adc l                                         ; $7203: $8D
    ld [bc], a                                    ; $7204: $02
    ld bc, $8608                                  ; $7205: $01 $08 $86
    nop                                           ; $7208: $00
    ld bc, $9BC6                                  ; $7209: $01 $C6 $9B
    nop                                           ; $720C: $00
    ld bc, $8A08                                  ; $720D: $01 $08 $8A
    ld [bc], a                                    ; $7210: $02
    inc bc                                        ; $7211: $03
    ld [rRAMG], sp                                ; $7212: $08 $00 $00
    add d                                         ; $7215: $82
    ld [$028D], sp                                ; $7216: $08 $8D $02
    adc b                                         ; $7219: $88
    ld [$009B], sp                                ; $721A: $08 $9B $00
    add h                                         ; $721D: $84
    ld [$0201], sp                                ; $721E: $08 $01 $02
    add e                                         ; $7221: $83
    ld [$0283], sp                                ; $7222: $08 $83 $02
    inc bc                                        ; $7225: $03
    ld [rRAMG], sp                                ; $7226: $08 $00 $00
    add d                                         ; $7229: $82
    ld [$0295], sp                                ; $722A: $08 $95 $02
    and d                                         ; $722D: $A2
    nop                                           ; $722E: $00
    ld bc, $8308                                  ; $722F: $01 $08 $83
    ld [bc], a                                    ; $7232: $02
    ld bc, $8308                                  ; $7233: $01 $08 $83
    nop                                           ; $7236: $00
    ld bc, $9508                                  ; $7237: $01 $08 $95
    ld [bc], a                                    ; $723A: $02
    sbc c                                         ; $723B: $99
    nop                                           ; $723C: $00
    adc d                                         ; $723D: $8A
    ld [$0283], sp                                ; $723E: $08 $83 $02
    ld bc, $8308                                  ; $7241: $01 $08 $83
    nop                                           ; $7244: $00
    ld bc, $9508                                  ; $7245: $01 $08 $95
    ld [bc], a                                    ; $7248: $02
    and c                                         ; $7249: $A1
    nop                                           ; $724A: $00
    add d                                         ; $724B: $82
    ld [$0283], sp                                ; $724C: $08 $83 $02
    ld bc, $8308                                  ; $724F: $01 $08 $83
    nop                                           ; $7252: $00
    add h                                         ; $7253: $84
    ld [$028F], sp                                ; $7254: $08 $8F $02
    add e                                         ; $7257: $83
    ld [$00A1], sp                                ; $7258: $08 $A1 $00
    add d                                         ; $725B: $82
    ld [$0283], sp                                ; $725C: $08 $83 $02
    ld bc, $8608                                  ; $725F: $01 $08 $86
    nop                                           ; $7262: $00
    ld bc, $8F08                                  ; $7263: $01 $08 $8F
    ld [bc], a                                    ; $7266: $02
    inc bc                                        ; $7267: $03
    ld [$0800], sp                                ; $7268: $08 $00 $08
    and c                                         ; $726B: $A1
    nop                                           ; $726C: $00
    add d                                         ; $726D: $82
    ld [$0283], sp                                ; $726E: $08 $83 $02
    ld bc, $8608                                  ; $7271: $01 $08 $86
    nop                                           ; $7274: $00
    sub c                                         ; $7275: $91
    ld [$0002], sp                                ; $7276: $08 $02 $00
    ld [$00A1], sp                                ; $7279: $08 $A1 $00
    add d                                         ; $727C: $82
    ld [$0283], sp                                ; $727D: $08 $83 $02
    ld bc, $9C08                                  ; $7280: $01 $08 $9C
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    ld b, b                                       ; $7285: $40
    ld b, b                                       ; $7286: $40
    ld [bc], a                                    ; $7287: $02
    dec [hl]                                      ; $7288: $35
    ld a, [bc]                                    ; $7289: $0A
    nop                                           ; $728A: $00
    dec b                                         ; $728B: $05
    inc b                                         ; $728C: $04
    db $D3                                        ; $728D: $D3
    or d                                          ; $728E: $B2
    add e                                         ; $728F: $83
    dec c                                         ; $7290: $0D
    sub d                                         ; $7291: $92
    db $D3                                        ; $7292: $D3
    inc b                                         ; $7293: $04
    push bc                                       ; $7294: $C5
    db $D3                                        ; $7295: $D3
    rst $00                                       ; $7296: $C7
    ret nc                                        ; $7297: $D0

    adc d                                         ; $7298: $8A
    db $D3                                        ; $7299: $D3
    ld [bc], a                                    ; $729A: $02
    cp l                                          ; $729B: $BD
    cp h                                          ; $729C: $BC
    add e                                         ; $729D: $83
    ld a, a                                       ; $729E: $7F
    ld [bc], a                                    ; $729F: $02
    add a                                         ; $72A0: $87
    add [hl]                                      ; $72A1: $86
    adc l                                         ; $72A2: $8D
    db $D3                                        ; $72A3: $D3
    ld [bc], a                                    ; $72A4: $02
    rst $00                                       ; $72A5: $C7
    ret nc                                        ; $72A6: $D0

    add a                                         ; $72A7: $87
    db $D3                                        ; $72A8: $D3
    inc bc                                        ; $72A9: $03
    or d                                          ; $72AA: $B2
    add e                                         ; $72AB: $83
    dec c                                         ; $72AC: $0D
    adc b                                         ; $72AD: $88
    db $D3                                        ; $72AE: $D3
    ld bc, $88BA                                  ; $72AF: $01 $BA $88
    db $D3                                        ; $72B2: $D3
    ld b, $D4                                     ; $72B3: $06 $D4
    push de                                       ; $72B5: $D5
    sub $D7                                       ; $72B6: $D6 $D7
    ldh [rWX], a                                  ; $72B8: $E0 $4B
    add l                                         ; $72BA: $85
    db $D3                                        ; $72BB: $D3
    dec bc                                        ; $72BC: $0B
    or a                                          ; $72BD: $B7
    cp b                                          ; $72BE: $B8
    cp c                                          ; $72BF: $B9
    cp d                                          ; $72C0: $BA
    db $D3                                        ; $72C1: $D3
    xor d                                         ; $72C2: $AA
    xor e                                         ; $72C3: $AB
    xor h                                         ; $72C4: $AC
    xor l                                         ; $72C5: $AD
    sub a                                         ; $72C6: $97
    sub [hl]                                      ; $72C7: $96
    adc b                                         ; $72C8: $88
    db $D3                                        ; $72C9: $D3
    ld [$B8B7], sp                                ; $72CA: $08 $B7 $B8
    call nc, $D6D5                                ; $72CD: $D4 $D5 $D6
    rst $10                                       ; $72D0: $D7
    ldh [rWX], a                                  ; $72D1: $E0 $4B
    add [hl]                                      ; $72D3: $86
    db $D3                                        ; $72D4: $D3
    inc bc                                        ; $72D5: $03
    or d                                          ; $72D6: $B2
    add e                                         ; $72D7: $83
    dec c                                         ; $72D8: $0D
    add a                                         ; $72D9: $87
    db $D3                                        ; $72DA: $D3
    ld [bc], a                                    ; $72DB: $02
    pop de                                        ; $72DC: $D1
    jp z, $D386                                   ; $72DD: $CA $86 $D3

    ld [$C8C7], sp                                ; $72E0: $08 $C7 $C8
    db $E4                                        ; $72E3: $E4
    push hl                                       ; $72E4: $E5
    and $E7                                       ; $72E5: $E6 $E7
    ldh a, [$5B]                                  ; $72E7: $F0 $5B
    add l                                         ; $72E9: $85
    db $D3                                        ; $72EA: $D3
    inc b                                         ; $72EB: $04
    rst $00                                       ; $72EC: $C7
    ret z                                         ; $72ED: $C8

    ret                                           ; $72EE: $C9


    jp z, $D384                                   ; $72EF: $CA $84 $D3

    inc bc                                        ; $72F2: $03
    xor d                                         ; $72F3: $AA
    and [hl]                                      ; $72F4: $A6
    and a                                         ; $72F5: $A7
    adc b                                         ; $72F6: $88
    db $D3                                        ; $72F7: $D3
    ld [$C8C7], sp                                ; $72F8: $08 $C7 $C8
    db $E4                                        ; $72FB: $E4
    push hl                                       ; $72FC: $E5
    and $E7                                       ; $72FD: $E6 $E7
    ldh a, [$5B]                                  ; $72FF: $F0 $5B
    add [hl]                                      ; $7301: $86
    db $D3                                        ; $7302: $D3
    inc bc                                        ; $7303: $03
    or d                                          ; $7304: $B2
    add e                                         ; $7305: $83
    dec c                                         ; $7306: $0D
    add [hl]                                      ; $7307: $86
    db $D3                                        ; $7308: $D3
    dec c                                         ; $7309: $0D
    ld c, [hl]                                    ; $730A: $4E
    pop hl                                        ; $730B: $E1
    jp c, $1CDB                                   ; $730C: $DA $DB $1C

    db $D3                                        ; $730F: $D3
    ld e, $1F                                     ; $7310: $1E $1F
    sub $D7                                       ; $7312: $D6 $D7
    ret c                                         ; $7314: $D8

    db $F4                                        ; $7315: $F4
    push af                                       ; $7316: $F5
    add d                                         ; $7317: $82
    ld a, a                                       ; $7318: $7F
    inc bc                                        ; $7319: $03
    ld l, d                                       ; $731A: $6A
    ld l, e                                       ; $731B: $6B
    ld c, h                                       ; $731C: $4C
    add e                                         ; $731D: $83
    db $D3                                        ; $731E: $D3
    dec b                                         ; $731F: $05
    or a                                          ; $7320: $B7
    rst $10                                       ; $7321: $D7
    ret c                                         ; $7322: $D8

    reti                                          ; $7323: $D9


    jp c, $D385                                   ; $7324: $DA $85 $D3

    ld c, $D4                                     ; $7327: $0E $D4
    inc e                                         ; $7329: $1C
    db $D3                                        ; $732A: $D3
    ld e, $1F                                     ; $732B: $1E $1F
    inc e                                         ; $732D: $1C
    db $D3                                        ; $732E: $D3
    ld e, $1F                                     ; $732F: $1E $1F
    sub $D7                                       ; $7331: $D6 $D7
    ret c                                         ; $7333: $D8

    db $F4                                        ; $7334: $F4
    push af                                       ; $7335: $F5
    add d                                         ; $7336: $82
    ld a, a                                       ; $7337: $7F
    inc bc                                        ; $7338: $03
    ld l, d                                       ; $7339: $6A
    ld l, e                                       ; $733A: $6B
    ld c, h                                       ; $733B: $4C
    add l                                         ; $733C: $85
    db $D3                                        ; $733D: $D3
    inc bc                                        ; $733E: $03
    or d                                          ; $733F: $B2
    add e                                         ; $7340: $83
    dec c                                         ; $7341: $0D
    add [hl]                                      ; $7342: $86
    db $D3                                        ; $7343: $D3
    dec bc                                        ; $7344: $0B
    ld e, [hl]                                    ; $7345: $5E
    pop af                                        ; $7346: $F1
    ld [$2CEB], a                                 ; $7347: $EA $EB $2C
    dec l                                         ; $734A: $2D
    ld l, $2F                                     ; $734B: $2E $2F
    and $E7                                       ; $734D: $E6 $E7
    add sp, -$7D                                  ; $734F: $E8 $83
    ld a, a                                       ; $7351: $7F
    dec c                                         ; $7352: $0D
    and h                                         ; $7353: $A4
    and l                                         ; $7354: $A5
    and [hl]                                      ; $7355: $A6
    and a                                         ; $7356: $A7
    or a                                          ; $7357: $B7
    cp b                                          ; $7358: $B8
    db $D3                                        ; $7359: $D3
    rst $00                                       ; $735A: $C7
    rst $20                                       ; $735B: $E7
    add sp, -$17                                  ; $735C: $E8 $E9
    ld [$834C], a                                 ; $735E: $EA $4C $83
    db $D3                                        ; $7361: $D3
    dec c                                         ; $7362: $0D
    ld c, [hl]                                    ; $7363: $4E
    db $E4                                        ; $7364: $E4
    inc l                                         ; $7365: $2C
    dec l                                         ; $7366: $2D
    ld l, $2F                                     ; $7367: $2E $2F
    inc l                                         ; $7369: $2C
    dec l                                         ; $736A: $2D
    ld l, $2F                                     ; $736B: $2E $2F
    and $E7                                       ; $736D: $E6 $E7
    add sp, -$7A                                  ; $736F: $E8 $86
    ld a, a                                       ; $7371: $7F
    ld [bc], a                                    ; $7372: $02
    ld c, d                                       ; $7373: $4A
    ld c, e                                       ; $7374: $4B
    add h                                         ; $7375: $84
    db $D3                                        ; $7376: $D3
    inc bc                                        ; $7377: $03
    or d                                          ; $7378: $B2
    add e                                         ; $7379: $83
    dec c                                         ; $737A: $0D
    add l                                         ; $737B: $85
    db $D3                                        ; $737C: $D3
    inc bc                                        ; $737D: $03
    ld c, l                                       ; $737E: $4D
    ld l, [hl]                                    ; $737F: $6E
    ld l, a                                       ; $7380: $6F
    add d                                         ; $7381: $82
    ld a, a                                       ; $7382: $7F
    inc b                                         ; $7383: $04
    inc a                                         ; $7384: $3C
    dec a                                         ; $7385: $3D
    ld a, $3F                                     ; $7386: $3E $3F
    add l                                         ; $7388: $85
    ld a, a                                       ; $7389: $7F
    ld [bc], a                                    ; $738A: $02
    jp nz, $83C3                                  ; $738B: $C2 $C3 $83

    db $D3                                        ; $738E: $D3
    inc b                                         ; $738F: $04
    rst $00                                       ; $7390: $C7
    ret z                                         ; $7391: $C8

    xor $EF                                       ; $7392: $EE $EF
    add e                                         ; $7394: $83
    ld a, a                                       ; $7395: $7F
    ld [bc], a                                    ; $7396: $02
    add a                                         ; $7397: $87
    add [hl]                                      ; $7398: $86
    add e                                         ; $7399: $83
    db $D3                                        ; $739A: $D3
    rrca                                          ; $739B: $0F
    ld e, [hl]                                    ; $739C: $5E
    db $F4                                        ; $739D: $F4
    inc a                                         ; $739E: $3C
    dec a                                         ; $739F: $3D
    ld a, $3F                                     ; $73A0: $3E $3F
    inc a                                         ; $73A2: $3C
    dec a                                         ; $73A3: $3D
    ld a, $3F                                     ; $73A4: $3E $3F
    ld a, a                                       ; $73A6: $7F
    scf                                           ; $73A7: $37
    jr c, jr_06D_73DB                             ; $73A8: $38 $31

    ld [hl-], a                                   ; $73AA: $32
    add h                                         ; $73AB: $84
    ld a, a                                       ; $73AC: $7F
    ld [bc], a                                    ; $73AD: $02
    ld e, d                                       ; $73AE: $5A
    ld e, e                                       ; $73AF: $5B
    add h                                         ; $73B0: $84
    db $D3                                        ; $73B1: $D3
    inc b                                         ; $73B2: $04
    or d                                          ; $73B3: $B2
    add e                                         ; $73B4: $83
    ld [hl], b                                    ; $73B5: $70
    ld [hl], c                                    ; $73B6: $71
    adc l                                         ; $73B7: $8D
    ld h, d                                       ; $73B8: $62
    ld [bc], a                                    ; $73B9: $02
    ld l, h                                       ; $73BA: $6C
    ld l, l                                       ; $73BB: $6D
    add e                                         ; $73BC: $83
    ld a, a                                       ; $73BD: $7F
    ld [$D3D2], sp                                ; $73BE: $08 $D2 $D3
    call nc, $D6D5                                ; $73C1: $D4 $D5 $D6
    rst $10                                       ; $73C4: $D7
    ret c                                         ; $73C5: $D8

    rst $30                                       ; $73C6: $F7
    add h                                         ; $73C7: $84
    ld a, a                                       ; $73C8: $7F
    ld [bc], a                                    ; $73C9: $02
    sub a                                         ; $73CA: $97
    sub [hl]                                      ; $73CB: $96
    add d                                         ; $73CC: $82
    db $D3                                        ; $73CD: $D3

Call_06D_73CE:
    inc bc                                        ; $73CE: $03
    ld c, l                                       ; $73CF: $4D
    ld l, [hl]                                    ; $73D0: $6E
    ld l, a                                       ; $73D1: $6F
    add a                                         ; $73D2: $87
    ld a, a                                       ; $73D3: $7F
    ld a, [bc]                                    ; $73D4: $0A
    scf                                           ; $73D5: $37
    jr c, jr_06D_741F                             ; $73D6: $38 $47

    ld c, b                                       ; $73D8: $48
    ld b, c                                       ; $73D9: $41
    ld b, d                                       ; $73DA: $42

jr_06D_73DB:
    inc de                                        ; $73DB: $13
    ld a, a                                       ; $73DC: $7F
    ld l, b                                       ; $73DD: $68
    ld l, c                                       ; $73DE: $69
    add l                                         ; $73DF: $85
    ld h, d                                       ; $73E0: $62
    ld [bc], a                                    ; $73E1: $02
    db $D3                                        ; $73E2: $D3
    or d                                          ; $73E3: $B2
    sub c                                         ; $73E4: $91
    add e                                         ; $73E5: $83
    ld bc, $837D                                  ; $73E6: $01 $7D $83
    ld a, a                                       ; $73E9: $7F
    rlca                                          ; $73EA: $07
    ld [c], a                                     ; $73EB: $E2
    db $E3                                        ; $73EC: $E3
    db $E4                                        ; $73ED: $E4
    push hl                                       ; $73EE: $E5
    and $E7                                       ; $73EF: $E6 $E7
    add sp, -$7D                                  ; $73F1: $E8 $83
    ld a, a                                       ; $73F3: $7F
    ld [de], a                                    ; $73F4: $12
    and h                                         ; $73F5: $A4
    and l                                         ; $73F6: $A5
    and [hl]                                      ; $73F7: $A6
    and a                                         ; $73F8: $A7
    db $D3                                        ; $73F9: $D3
    ld c, [hl]                                    ; $73FA: $4E
    ld c, a                                       ; $73FB: $4F
    ld a, a                                       ; $73FC: $7F
    scf                                           ; $73FD: $37
    jr c, jr_06D_7444                             ; $73FE: $38 $44

    ld b, l                                       ; $7400: $45
    ld b, h                                       ; $7401: $44
    ld b, l                                       ; $7402: $45
    ld b, h                                       ; $7403: $44
    ld b, l                                       ; $7404: $45
    ld b, a                                       ; $7405: $47
    ld c, b                                       ; $7406: $48
    add h                                         ; $7407: $84
    sbc $03                                       ; $7408: $DE $03
    inc sp                                        ; $740A: $33
    ld a, a                                       ; $740B: $7F
    ld a, b                                       ; $740C: $78
    add [hl]                                      ; $740D: $86
    add e                                         ; $740E: $83
    ld [bc], a                                    ; $740F: $02
    db $D3                                        ; $7410: $D3
    or d                                          ; $7411: $B2
    sub c                                         ; $7412: $91
    add e                                         ; $7413: $83
    ld bc, $847D                                  ; $7414: $01 $7D $84
    ld a, a                                       ; $7417: $7F
    inc bc                                        ; $7418: $03
    di                                            ; $7419: $F3
    db $F4                                        ; $741A: $F4
    push af                                       ; $741B: $F5
    add l                                         ; $741C: $85
    ld a, a                                       ; $741D: $7F
    ld [bc], a                                    ; $741E: $02

jr_06D_741F:
    or l                                          ; $741F: $B5
    or h                                          ; $7420: $B4
    add h                                         ; $7421: $84
    db $D3                                        ; $7422: $D3
    dec bc                                        ; $7423: $0B
    ld e, [hl]                                    ; $7424: $5E
    ld e, a                                       ; $7425: $5F
    ld d, $47                                     ; $7426: $16 $47
    ld c, b                                       ; $7428: $48
    ld d, h                                       ; $7429: $54
    ld d, l                                       ; $742A: $55
    ld d, h                                       ; $742B: $54
    ld d, l                                       ; $742C: $55
    ld d, h                                       ; $742D: $54
    ld d, l                                       ; $742E: $55
    add [hl]                                      ; $742F: $86
    sbc $03                                       ; $7430: $DE $03
    inc hl                                        ; $7432: $23
    ld a, a                                       ; $7433: $7F
    ld a, b                                       ; $7434: $78
    add [hl]                                      ; $7435: $86
    add e                                         ; $7436: $83
    ld [bc], a                                    ; $7437: $02
    db $D3                                        ; $7438: $D3
    or d                                          ; $7439: $B2
    sub c                                         ; $743A: $91
    add e                                         ; $743B: $83
    dec b                                         ; $743C: $05
    ld a, l                                       ; $743D: $7D
    ld a, a                                       ; $743E: $7F

jr_06D_743F:
    ld d, $31                                     ; $743F: $16 $31
    ld [hl-], a                                   ; $7441: $32
    add a                                         ; $7442: $87
    ld a, a                                       ; $7443: $7F

jr_06D_7444:
    ld [bc], a                                    ; $7444: $02
    halt                                          ; $7445: $76
    ld [hl], a                                    ; $7446: $77
    add h                                         ; $7447: $84
    db $D3                                        ; $7448: $D3
    inc b                                         ; $7449: $04
    ld c, l                                       ; $744A: $4D
    ld l, [hl]                                    ; $744B: $6E
    ld l, a                                       ; $744C: $6F
    ld h, $8E                                     ; $744D: $26 $8E
    sbc $03                                       ; $744F: $DE $03
    inc sp                                        ; $7451: $33
    ld a, a                                       ; $7452: $7F
    ld a, b                                       ; $7453: $78
    add [hl]                                      ; $7454: $86
    add e                                         ; $7455: $83
    ld [bc], a                                    ; $7456: $02
    db $D3                                        ; $7457: $D3
    or d                                          ; $7458: $B2
    add e                                         ; $7459: $83
    add e                                         ; $745A: $83
    inc bc                                        ; $745B: $03
    ld a, [bc]                                    ; $745C: $0A
    dec bc                                        ; $745D: $0B
    inc c                                         ; $745E: $0C
    adc d                                         ; $745F: $8A
    add b                                         ; $7460: $80
    ld [$8D8C], sp                                ; $7461: $08 $8C $8D
    ld a, a                                       ; $7464: $7F
    ld [hl], $41                                  ; $7465: $36 $41
    ld b, d                                       ; $7467: $42
    ld sp, $8432                                  ; $7468: $31 $32 $84
    ld a, a                                       ; $746B: $7F
    ld [bc], a                                    ; $746C: $02
    add a                                         ; $746D: $87
    add [hl]                                      ; $746E: $86
    add l                                         ; $746F: $85
    db $D3                                        ; $7470: $D3
    inc b                                         ; $7471: $04
    adc $CF                                       ; $7472: $CE $CF
    ld a, a                                       ; $7474: $7F
    ld [hl], $85                                  ; $7475: $36 $85
    sbc $06                                       ; $7477: $DE $06
    inc h                                         ; $7479: $24
    dec h                                         ; $747A: $25
    inc h                                         ; $747B: $24
    dec h                                         ; $747C: $25
    inc h                                         ; $747D: $24
    dec h                                         ; $747E: $25
    add e                                         ; $747F: $83
    sbc $04                                       ; $7480: $DE $04
    inc hl                                        ; $7482: $23
    ld a, a                                       ; $7483: $7F
    adc b                                         ; $7484: $88
    adc c                                         ; $7485: $89
    add l                                         ; $7486: $85
    add b                                         ; $7487: $80
    ld [bc], a                                    ; $7488: $02
    db $D3                                        ; $7489: $D3
    or d                                          ; $748A: $B2
    add e                                         ; $748B: $83
    add e                                         ; $748C: $83
    inc bc                                        ; $748D: $03
    dec c                                         ; $748E: $0D
    ld c, $0F                                     ; $748F: $0E $0F
    add e                                         ; $7491: $83
    db $D3                                        ; $7492: $D3
    ld [bc], a                                    ; $7493: $02
    ld a, d                                       ; $7494: $7A
    ld a, e                                       ; $7495: $7B
    add l                                         ; $7496: $85
    ld a, a                                       ; $7497: $7F
    inc b                                         ; $7498: $04
    sbc h                                         ; $7499: $9C
    sbc l                                         ; $749A: $9D
    ld a, a                                       ; $749B: $7F
    ld h, $82                                     ; $749C: $26 $82
    sbc $08                                       ; $749E: $DE $08
    ld b, c                                       ; $74A0: $41
    ld b, d                                       ; $74A1: $42
    ld b, h                                       ; $74A2: $44
    ld b, l                                       ; $74A3: $45
    inc de                                        ; $74A4: $13
    ld a, a                                       ; $74A5: $7F
    sub a                                         ; $74A6: $97
    sub [hl]                                      ; $74A7: $96
    add e                                         ; $74A8: $83
    db $D3                                        ; $74A9: $D3
    ld b, $B7                                     ; $74AA: $06 $B7
    cp b                                          ; $74AC: $B8
    db $D3                                        ; $74AD: $D3
    rst $18                                       ; $74AE: $DF
    ld a, a                                       ; $74AF: $7F
    ld h, $84                                     ; $74B0: $26 $84
    sbc $01                                       ; $74B2: $DE $01
    ld [de], a                                    ; $74B4: $12
    add e                                         ; $74B5: $83
    ld a, a                                       ; $74B6: $7F
    inc b                                         ; $74B7: $04
    inc [hl]                                      ; $74B8: $34
    dec [hl]                                      ; $74B9: $35
    daa                                           ; $74BA: $27
    jr z, jr_06D_743F                             ; $74BB: $28 $82

    sbc $06                                       ; $74BD: $DE $06
    inc sp                                        ; $74BF: $33
    ld a, a                                       ; $74C0: $7F
    sbc b                                         ; $74C1: $98
    sbc c                                         ; $74C2: $99
    ld c, d                                       ; $74C3: $4A
    ld c, e                                       ; $74C4: $4B
    add h                                         ; $74C5: $84
    db $D3                                        ; $74C6: $D3
    ld bc, $83B2                                  ; $74C7: $01 $B2 $83
    add e                                         ; $74CA: $83
    ld bc, $860D                                  ; $74CB: $01 $0D $86
    db $D3                                        ; $74CE: $D3
    ld [bc], a                                    ; $74CF: $02
    adc e                                         ; $74D0: $8B
    adc d                                         ; $74D1: $8A
    add a                                         ; $74D2: $87
    ld a, a                                       ; $74D3: $7F
    ld [bc], a                                    ; $74D4: $02
    dec d                                         ; $74D5: $15
    rla                                           ; $74D6: $17
    add e                                         ; $74D7: $83
    sbc $06                                       ; $74D8: $DE $06
    ld d, h                                       ; $74DA: $54
    ld d, l                                       ; $74DB: $55
    inc hl                                        ; $74DC: $23
    ld a, a                                       ; $74DD: $7F
    jp nz, $83C3                                  ; $74DE: $C2 $C3 $83

    db $D3                                        ; $74E1: $D3
    ld b, $C7                                     ; $74E2: $06 $C7
    ret z                                         ; $74E4: $C8

    xor $EF                                       ; $74E5: $EE $EF
    ld a, a                                       ; $74E7: $7F
    ld [hl], $82                                  ; $74E8: $36 $82
    sbc $0D                                       ; $74EA: $DE $0D
    jr nz, jr_06D_750F                            ; $74EC: $20 $21

    ld [hl+], a                                   ; $74EE: $22
    ld a, a                                       ; $74EF: $7F
    nop                                           ; $74F0: $00
    ld bc, $7A02                                  ; $74F1: $01 $02 $7A
    ld a, e                                       ; $74F4: $7B
    ld a, a                                       ; $74F5: $7F
    rla                                           ; $74F6: $17
    sbc $23                                       ; $74F7: $DE $23
    add e                                         ; $74F9: $83
    ld a, a                                       ; $74FA: $7F
    ld [bc], a                                    ; $74FB: $02
    ld e, d                                       ; $74FC: $5A
    ld e, e                                       ; $74FD: $5B
    add h                                         ; $74FE: $84
    db $D3                                        ; $74FF: $D3
    ld bc, $83B2                                  ; $7500: $01 $B2 $83
    add e                                         ; $7503: $83
    ld bc, $860D                                  ; $7504: $01 $0D $86
    db $D3                                        ; $7507: $D3
    ld [bc], a                                    ; $7508: $02
    sbc e                                         ; $7509: $9B
    sbc d                                         ; $750A: $9A
    add h                                         ; $750B: $84
    ld a, a                                       ; $750C: $7F
    ld [bc], a                                    ; $750D: $02
    inc [hl]                                      ; $750E: $34

jr_06D_750F:
    dec [hl]                                      ; $750F: $35
    add d                                         ; $7510: $82
    ld a, a                                       ; $7511: $7F
    inc b                                         ; $7512: $04
    daa                                           ; $7513: $27
    jr z, jr_06D_753A                             ; $7514: $28 $24

    dec h                                         ; $7516: $25
    add d                                         ; $7517: $82
    sbc $0E                                       ; $7518: $DE $0E
    inc sp                                        ; $751A: $33
    ld a, a                                       ; $751B: $7F
    jp nc, $D4D3                                  ; $751C: $D2 $D3 $D4

    push de                                       ; $751F: $D5
    sub $D7                                       ; $7520: $D6 $D7
    ret c                                         ; $7522: $D8

    rst $30                                       ; $7523: $F7
    ld a, a                                       ; $7524: $7F
    scf                                           ; $7525: $37
    jr c, jr_06D_7561                             ; $7526: $38 $39

    add d                                         ; $7528: $82
    sbc $05                                       ; $7529: $DE $05
    inc sp                                        ; $752B: $33
    ld a, a                                       ; $752C: $7F
    halt                                          ; $752D: $76
    ld [hl], a                                    ; $752E: $77
    ld de, $D382                                  ; $752F: $11 $82 $D3
    dec b                                         ; $7532: $05
    adc e                                         ; $7533: $8B
    adc d                                         ; $7534: $8A
    daa                                           ; $7535: $27
    jr z, jr_06D_755A                             ; $7536: $28 $22

    add e                                         ; $7538: $83
    ld a, a                                       ; $7539: $7F

jr_06D_753A:
    inc bc                                        ; $753A: $03
    ld l, d                                       ; $753B: $6A
    ld l, e                                       ; $753C: $6B
    ld c, h                                       ; $753D: $4C
    add e                                         ; $753E: $83
    db $D3                                        ; $753F: $D3
    ld bc, $83B2                                  ; $7540: $01 $B2 $83
    add e                                         ; $7543: $83
    ld bc, $860D                                  ; $7544: $01 $0D $86
    db $D3                                        ; $7547: $D3
    ld [bc], a                                    ; $7548: $02
    adc $CF                                       ; $7549: $CE $CF
    add e                                         ; $754B: $83
    ld a, a                                       ; $754C: $7F
    ld b, $76                                     ; $754D: $06 $76
    ld [hl], a                                    ; $754F: $77
    xor d                                         ; $7550: $AA
    xor e                                         ; $7551: $AB
    xor h                                         ; $7552: $AC
    xor l                                         ; $7553: $AD
    add e                                         ; $7554: $83
    ld a, a                                       ; $7555: $7F
    rrca                                          ; $7556: $0F
    rla                                           ; $7557: $17
    sbc $23                                       ; $7558: $DE $23

jr_06D_755A:
    ld a, a                                       ; $755A: $7F
    ld [c], a                                     ; $755B: $E2
    db $E3                                        ; $755C: $E3
    db $E4                                        ; $755D: $E4
    push hl                                       ; $755E: $E5
    and $E7                                       ; $755F: $E6 $E7

jr_06D_7561:
    add sp, $7F                                   ; $7561: $E8 $7F
    ld d, $47                                     ; $7563: $16 $47
    ld c, b                                       ; $7565: $48
    add d                                         ; $7566: $82
    sbc $04                                       ; $7567: $DE $04
    ld [de], a                                    ; $7569: $12
    ld [hl+], a                                   ; $756A: $22
    add a                                         ; $756B: $87
    add [hl]                                      ; $756C: $86
    add h                                         ; $756D: $84
    db $D3                                        ; $756E: $D3
    ld [bc], a                                    ; $756F: $02
    sbc e                                         ; $7570: $9B
    sbc d                                         ; $7571: $9A
    add a                                         ; $7572: $87
    ld a, a                                       ; $7573: $7F
    ld [bc], a                                    ; $7574: $02
    halt                                          ; $7575: $76
    ld [hl], a                                    ; $7576: $77
    add e                                         ; $7577: $83
    db $D3                                        ; $7578: $D3
    ld bc, $83B2                                  ; $7579: $01 $B2 $83
    add e                                         ; $757C: $83
    ld bc, $870D                                  ; $757D: $01 $0D $87
    db $D3                                        ; $7580: $D3
    dec b                                         ; $7581: $05
    rst $18                                       ; $7582: $DF
    ld a, a                                       ; $7583: $7F
    ld a, a                                       ; $7584: $7F
    add a                                         ; $7585: $87
    add [hl]                                      ; $7586: $86
    add h                                         ; $7587: $84
    db $D3                                        ; $7588: $D3
    rlca                                          ; $7589: $07
    cp l                                          ; $758A: $BD
    rlca                                          ; $758B: $07
    ld [$2709], sp                                ; $758C: $08 $09 $27
    jr z, jr_06D_75B3                             ; $758F: $28 $22

    add d                                         ; $7591: $82
    ld a, a                                       ; $7592: $7F
    inc bc                                        ; $7593: $03
    di                                            ; $7594: $F3
    db $F4                                        ; $7595: $F4
    push af                                       ; $7596: $F5
    add h                                         ; $7597: $84
    ld a, a                                       ; $7598: $7F
    add hl, bc                                    ; $7599: $09
    daa                                           ; $759A: $27
    jr z, jr_06D_75C1                             ; $759B: $28 $24

    dec h                                         ; $759D: $25
    ld hl, $7F22                                  ; $759E: $21 $22 $7F
    sub a                                         ; $75A1: $97
    sub [hl]                                      ; $75A2: $96
    add h                                         ; $75A3: $84
    db $D3                                        ; $75A4: $D3
    ld [bc], a                                    ; $75A5: $02
    ld a, d                                       ; $75A6: $7A
    ld a, e                                       ; $75A7: $7B
    add [hl]                                      ; $75A8: $86
    ld a, a                                       ; $75A9: $7F
    ld [bc], a                                    ; $75AA: $02
    add a                                         ; $75AB: $87
    add [hl]                                      ; $75AC: $86
    add h                                         ; $75AD: $84
    db $D3                                        ; $75AE: $D3
    ld bc, $837E                                  ; $75AF: $01 $7E $83
    add e                                         ; $75B2: $83

jr_06D_75B3:
    ld bc, $851B                                  ; $75B3: $01 $1B $85
    db $D3                                        ; $75B6: $D3
    inc bc                                        ; $75B7: $03
    sbc e                                         ; $75B8: $9B
    xor $EF                                       ; $75B9: $EE $EF
    add d                                         ; $75BB: $82
    ld a, a                                       ; $75BC: $7F
    ld [bc], a                                    ; $75BD: $02
    sub a                                         ; $75BE: $97
    sub [hl]                                      ; $75BF: $96
    add [hl]                                      ; $75C0: $86

jr_06D_75C1:
    db $D3                                        ; $75C1: $D3
    inc bc                                        ; $75C2: $03
    jr jr_06D_763F                                ; $75C3: $18 $7A

    ld a, e                                       ; $75C5: $7B
    sub b                                         ; $75C6: $90
    ld a, a                                       ; $75C7: $7F
    inc bc                                        ; $75C8: $03
    nop                                           ; $75C9: $00
    ld bc, $8602                                  ; $75CA: $01 $02 $86
    db $D3                                        ; $75CD: $D3
    ld [bc], a                                    ; $75CE: $02
    adc e                                         ; $75CF: $8B
    adc d                                         ; $75D0: $8A
    add l                                         ; $75D1: $85
    ld a, a                                       ; $75D2: $7F
    ld [bc], a                                    ; $75D3: $02
    sub a                                         ; $75D4: $97
    sub [hl]                                      ; $75D5: $96
    add h                                         ; $75D6: $84
    db $D3                                        ; $75D7: $D3
    dec b                                         ; $75D8: $05
    adc [hl]                                      ; $75D9: $8E
    adc a                                         ; $75DA: $8F
    add b                                         ; $75DB: $80
    ld a, [hl+]                                   ; $75DC: $2A
    dec hl                                        ; $75DD: $2B
    add h                                         ; $75DE: $84
    db $D3                                        ; $75DF: $D3
    rlca                                          ; $75E0: $07
    ld c, l                                       ; $75E1: $4D
    ld c, a                                       ; $75E2: $4F
    add sp, $7F                                   ; $75E3: $E8 $7F
    nop                                           ; $75E5: $00
    ld bc, $8902                                  ; $75E6: $01 $02 $89
    db $D3                                        ; $75E9: $D3
    ld [bc], a                                    ; $75EA: $02
    adc e                                         ; $75EB: $8B
    adc d                                         ; $75EC: $8A
    adc e                                         ; $75ED: $8B
    ld a, a                                       ; $75EE: $7F
    ld b, $A4                                     ; $75EF: $06 $A4
    and l                                         ; $75F1: $A5
    and [hl]                                      ; $75F2: $A6
    and a                                         ; $75F3: $A7
    db $10                                        ; $75F4: $10
    ld de, $D387                                  ; $75F5: $11 $87 $D3
    ld [bc], a                                    ; $75F8: $02
    sbc e                                         ; $75F9: $9B
    sbc d                                         ; $75FA: $9A
    add e                                         ; $75FB: $83
    ld a, a                                       ; $75FC: $7F
    inc b                                         ; $75FD: $04
    and h                                         ; $75FE: $A4
    and l                                         ; $75FF: $A5
    and [hl]                                      ; $7600: $A6
    and a                                         ; $7601: $A7
    add h                                         ; $7602: $84
    db $D3                                        ; $7603: $D3
    dec b                                         ; $7604: $05
    sbc [hl]                                      ; $7605: $9E
    sbc a                                         ; $7606: $9F
    db $D3                                        ; $7607: $D3
    ld a, [hl-]                                   ; $7608: $3A
    dec sp                                        ; $7609: $3B
    add l                                         ; $760A: $85
    db $D3                                        ; $760B: $D3
    dec b                                         ; $760C: $05
    xor e                                         ; $760D: $AB
    ld bc, $1002                                  ; $760E: $01 $02 $10
    ld de, $D38A                                  ; $7611: $11 $8A $D3
    ld [bc], a                                    ; $7614: $02
    sbc e                                         ; $7615: $9B
    sbc d                                         ; $7616: $9A
    add e                                         ; $7617: $83
    ld a, a                                       ; $7618: $7F
    ld [bc], a                                    ; $7619: $02
    inc [hl]                                      ; $761A: $34
    dec [hl]                                      ; $761B: $35
    add h                                         ; $761C: $84
    ld a, a                                       ; $761D: $7F
    inc bc                                        ; $761E: $03
    inc [hl]                                      ; $761F: $34
    or l                                          ; $7620: $B5
    or h                                          ; $7621: $B4
    adc l                                         ; $7622: $8D
    db $D3                                        ; $7623: $D3
    dec b                                         ; $7624: $05
    rlca                                          ; $7625: $07
    ld [$B509], sp                                ; $7626: $08 $09 $B5
    or h                                          ; $7629: $B4
    sub d                                         ; $762A: $92
    db $D3                                        ; $762B: $D3
    ld bc, $8D11                                  ; $762C: $01 $11 $8D
    db $D3                                        ; $762F: $D3
    inc c                                         ; $7630: $0C
    xor d                                         ; $7631: $AA
    xor e                                         ; $7632: $AB
    xor h                                         ; $7633: $AC
    and l                                         ; $7634: $A5
    and [hl]                                      ; $7635: $A6
    and a                                         ; $7636: $A7
    xor d                                         ; $7637: $AA
    xor e                                         ; $7638: $AB
    xor h                                         ; $7639: $AC
    and l                                         ; $763A: $A5
    and [hl]                                      ; $763B: $A6
    and a                                         ; $763C: $A7
    sub b                                         ; $763D: $90
    db $D3                                        ; $763E: $D3

jr_06D_763F:
    inc bc                                        ; $763F: $03
    jr jr_06D_765B                                ; $7640: $18 $19

    xor e                                         ; $7642: $AB
    add a                                         ; $7643: $87
    db $D3                                        ; $7644: $D3
    nop                                           ; $7645: $00
    ld e, $08                                     ; $7646: $1E $08
    rlca                                          ; $7648: $07
    sub h                                         ; $7649: $94
    ld [$C085], sp                                ; $764A: $08 $85 $C0
    add [hl]                                      ; $764D: $86
    ld [$A282], sp                                ; $764E: $08 $82 $A2
    adc c                                         ; $7651: $89
    and e                                         ; $7652: $A3
    add d                                         ; $7653: $82
    and h                                         ; $7654: $A4
    add d                                         ; $7655: $82
    and l                                         ; $7656: $A5
    add d                                         ; $7657: $82
    and e                                         ; $7658: $A3
    add d                                         ; $7659: $82
    and c                                         ; $765A: $A1

jr_06D_765B:
    add [hl]                                      ; $765B: $86
    ld [bc], a                                    ; $765C: $02
    add d                                         ; $765D: $82
    and a                                         ; $765E: $A7
    inc bc                                        ; $765F: $03
    and [hl]                                      ; $7660: $A6
    ld [$8208], sp                                ; $7661: $08 $08 $82
    and d                                         ; $7664: $A2
    adc c                                         ; $7665: $89
    and e                                         ; $7666: $A3
    add d                                         ; $7667: $82
    ld [bc], a                                    ; $7668: $02
    add h                                         ; $7669: $84
    and l                                         ; $766A: $A5
    add d                                         ; $766B: $82
    and e                                         ; $766C: $A3
    add l                                         ; $766D: $85
    ld [bc], a                                    ; $766E: $02
    add e                                         ; $766F: $83
    and a                                         ; $7670: $A7
    inc bc                                        ; $7671: $03
    and [hl]                                      ; $7672: $A6
    ld [$8208], sp                                ; $7673: $08 $08 $82
    and d                                         ; $7676: $A2
    add [hl]                                      ; $7677: $86
    and e                                         ; $7678: $A3
    adc b                                         ; $7679: $88
    ld [bc], a                                    ; $767A: $02
    ld bc, $85A5                                  ; $767B: $01 $A5 $85
    ld [bc], a                                    ; $767E: $02
    add h                                         ; $767F: $84
    and a                                         ; $7680: $A7
    add d                                         ; $7681: $82
    and [hl]                                      ; $7682: $A6
    add d                                         ; $7683: $82
    ld [$A282], sp                                ; $7684: $08 $82 $A2
    add h                                         ; $7687: $84
    and e                                         ; $7688: $A3
    adc a                                         ; $7689: $8F
    ld [bc], a                                    ; $768A: $02
    add l                                         ; $768B: $85
    and a                                         ; $768C: $A7
    add d                                         ; $768D: $82
    and [hl]                                      ; $768E: $A6
    add d                                         ; $768F: $82
    ld [$A203], sp                                ; $7690: $08 $03 $A2
    and e                                         ; $7693: $A3
    and e                                         ; $7694: $A3
    sub c                                         ; $7695: $91
    ld [bc], a                                    ; $7696: $02
    add [hl]                                      ; $7697: $86
    and a                                         ; $7698: $A7
    add d                                         ; $7699: $82
    and [hl]                                      ; $769A: $A6
    add d                                         ; $769B: $82
    ld [$A202], sp                                ; $769C: $08 $02 $A2
    and c                                         ; $769F: $A1
    sub e                                         ; $76A0: $93
    ld [bc], a                                    ; $76A1: $02
    add d                                         ; $76A2: $82
    and a                                         ; $76A3: $A7
    inc bc                                        ; $76A4: $03
    and [hl]                                      ; $76A5: $A6
    and a                                         ; $76A6: $A7
    and a                                         ; $76A7: $A7
    add d                                         ; $76A8: $82
    and [hl]                                      ; $76A9: $A6
    add d                                         ; $76AA: $82
    ld [$A203], sp                                ; $76AB: $08 $03 $A2
    and c                                         ; $76AE: $A1
    and c                                         ; $76AF: $A1
    sub c                                         ; $76B0: $91
    ld [bc], a                                    ; $76B1: $02
    add [hl]                                      ; $76B2: $86
    and a                                         ; $76B3: $A7
    add d                                         ; $76B4: $82
    and [hl]                                      ; $76B5: $A6
    add d                                         ; $76B6: $82
    ld [$A282], sp                                ; $76B7: $08 $82 $A2
    add d                                         ; $76BA: $82
    and c                                         ; $76BB: $A1
    add d                                         ; $76BC: $82
    ld [bc], a                                    ; $76BD: $02
    ld bc, $8CA1                                  ; $76BE: $01 $A1 $8C
    ld [bc], a                                    ; $76C1: $02
    add [hl]                                      ; $76C2: $86
    and a                                         ; $76C3: $A7
    add e                                         ; $76C4: $83
    and [hl]                                      ; $76C5: $A6
    add d                                         ; $76C6: $82
    ld [$A282], sp                                ; $76C7: $08 $82 $A2
    add l                                         ; $76CA: $85
    and c                                         ; $76CB: $A1
    adc h                                         ; $76CC: $8C
    ld [bc], a                                    ; $76CD: $02
    add [hl]                                      ; $76CE: $86
    and a                                         ; $76CF: $A7
    add e                                         ; $76D0: $83
    and [hl]                                      ; $76D1: $A6
    add d                                         ; $76D2: $82
    ld [$A201], sp                                ; $76D3: $08 $01 $A2
    add a                                         ; $76D6: $87
    and c                                         ; $76D7: $A1
    adc c                                         ; $76D8: $89
    ld [bc], a                                    ; $76D9: $02
    add h                                         ; $76DA: $84
    and a                                         ; $76DB: $A7
    ld bc, $83A6                                  ; $76DC: $01 $A6 $83
    and a                                         ; $76DF: $A7
    add e                                         ; $76E0: $83
    and [hl]                                      ; $76E1: $A6
    add d                                         ; $76E2: $82
    ld [$A189], sp                                ; $76E3: $08 $89 $A1
    adc b                                         ; $76E6: $88
    ld [bc], a                                    ; $76E7: $02
    ld bc, $84A5                                  ; $76E8: $01 $A5 $84
    and a                                         ; $76EB: $A7
    ld bc, $83A6                                  ; $76EC: $01 $A6 $83
    and e                                         ; $76EF: $A3
    add d                                         ; $76F0: $82
    and [hl]                                      ; $76F1: $A6
    add d                                         ; $76F2: $82
    ld [$A201], sp                                ; $76F3: $08 $01 $A2
    add l                                         ; $76F6: $85
    and c                                         ; $76F7: $A1
    ld bc, $84A2                                  ; $76F8: $01 $A2 $84
    and c                                         ; $76FB: $A1
    add l                                         ; $76FC: $85
    ld [bc], a                                    ; $76FD: $02
    add d                                         ; $76FE: $82
    and l                                         ; $76FF: $A5
    inc b                                         ; $7700: $04
    and [hl]                                      ; $7701: $A6
    and a                                         ; $7702: $A7
    and a                                         ; $7703: $A7
    and [hl]                                      ; $7704: $A6
    add e                                         ; $7705: $83
    and e                                         ; $7706: $A3
    inc bc                                        ; $7707: $03
    and [hl]                                      ; $7708: $A6
    and e                                         ; $7709: $A3
    and e                                         ; $770A: $A3
    add d                                         ; $770B: $82
    ld [$A283], sp                                ; $770C: $08 $83 $A2
    adc c                                         ; $770F: $89
    and c                                         ; $7710: $A1
    add e                                         ; $7711: $83
    ld [bc], a                                    ; $7712: $02
    add d                                         ; $7713: $82
    and l                                         ; $7714: $A5
    add e                                         ; $7715: $83
    and a                                         ; $7716: $A7
    add a                                         ; $7717: $87
    and e                                         ; $7718: $A3
    inc bc                                        ; $7719: $03
    and [hl]                                      ; $771A: $A6
    ld [$8808], sp                                ; $771B: $08 $08 $88
    and e                                         ; $771E: $A3
    ld [bc], a                                    ; $771F: $02
    and d                                         ; $7720: $A2
    and c                                         ; $7721: $A1
    add d                                         ; $7722: $82
    and e                                         ; $7723: $A3
    add e                                         ; $7724: $83
    ld [bc], a                                    ; $7725: $02
    add e                                         ; $7726: $83
    and l                                         ; $7727: $A5
    ld [bc], a                                    ; $7728: $02
    and a                                         ; $7729: $A7
    and l                                         ; $772A: $A5
    add l                                         ; $772B: $85
    and e                                         ; $772C: $A3
    inc bc                                        ; $772D: $03
    ld [bc], a                                    ; $772E: $02
    and [hl]                                      ; $772F: $A6
    and [hl]                                      ; $7730: $A6
    add d                                         ; $7731: $82
    ld [$A383], sp                                ; $7732: $08 $83 $A3
    add d                                         ; $7735: $82
    and d                                         ; $7736: $A2
    ld [bc], a                                    ; $7737: $02
    and e                                         ; $7738: $A3
    and d                                         ; $7739: $A2
    add h                                         ; $773A: $84
    and e                                         ; $773B: $A3
    add h                                         ; $773C: $84
    ld [bc], a                                    ; $773D: $02
    add h                                         ; $773E: $84
    and l                                         ; $773F: $A5
    add l                                         ; $7740: $85
    and e                                         ; $7741: $A3
    add e                                         ; $7742: $83
    ld [bc], a                                    ; $7743: $02
    inc bc                                        ; $7744: $03
    and [hl]                                      ; $7745: $A6
    ld [$8B08], sp                                ; $7746: $08 $08 $8B
    and e                                         ; $7749: $A3
    add h                                         ; $774A: $84
    ld [bc], a                                    ; $774B: $02
    add l                                         ; $774C: $85
    and l                                         ; $774D: $A5
    add h                                         ; $774E: $84
    and e                                         ; $774F: $A3
    add d                                         ; $7750: $82
    ld [bc], a                                    ; $7751: $02
    add d                                         ; $7752: $82
    and [hl]                                      ; $7753: $A6
    add d                                         ; $7754: $82
    ld [$A201], sp                                ; $7755: $08 $01 $A2
    adc b                                         ; $7758: $88
    and e                                         ; $7759: $A3
    adc b                                         ; $775A: $88
    ld [bc], a                                    ; $775B: $02
    add d                                         ; $775C: $82
    and l                                         ; $775D: $A5
    add l                                         ; $775E: $85
    and e                                         ; $775F: $A3
    add d                                         ; $7760: $82
    ld [bc], a                                    ; $7761: $02
    add d                                         ; $7762: $82
    and [hl]                                      ; $7763: $A6
    add d                                         ; $7764: $82
    ld [$A201], sp                                ; $7765: $08 $01 $A2
    add l                                         ; $7768: $85
    and e                                         ; $7769: $A3
    adc h                                         ; $776A: $8C
    ld [bc], a                                    ; $776B: $02
    ld bc, $85A5                                  ; $776C: $01 $A5 $85
    and e                                         ; $776F: $A3
    add d                                         ; $7770: $82
    ld [bc], a                                    ; $7771: $02
    add d                                         ; $7772: $82
    and [hl]                                      ; $7773: $A6
    add d                                         ; $7774: $82
    ld [$A201], sp                                ; $7775: $08 $01 $A2
    add h                                         ; $7778: $84
    and e                                         ; $7779: $A3
    adc a                                         ; $777A: $8F
    ld [bc], a                                    ; $777B: $02
    add d                                         ; $777C: $82
    and e                                         ; $777D: $A3
    add h                                         ; $777E: $84
    ld [bc], a                                    ; $777F: $02
    add d                                         ; $7780: $82
    and [hl]                                      ; $7781: $A6
    add d                                         ; $7782: $82
    ld [$A201], sp                                ; $7783: $08 $01 $A2
    add e                                         ; $7786: $83
    and e                                         ; $7787: $A3
    sub [hl]                                      ; $7788: $96
    ld [bc], a                                    ; $7789: $02
    add d                                         ; $778A: $82
    and [hl]                                      ; $778B: $A6
    add d                                         ; $778C: $82
    ld [$A201], sp                                ; $778D: $08 $01 $A2
    add e                                         ; $7790: $83
    and e                                         ; $7791: $A3
    sub [hl]                                      ; $7792: $96
    ld [bc], a                                    ; $7793: $02
    add d                                         ; $7794: $82
    and [hl]                                      ; $7795: $A6
    add d                                         ; $7796: $82
    ld [$A383], sp                                ; $7797: $08 $83 $A3
    sbc b                                         ; $779A: $98
    ld [bc], a                                    ; $779B: $02
    ld b, $A6                                     ; $779C: $06 $A6
    ld [$A208], sp                                ; $779E: $08 $08 $A2
    and e                                         ; $77A1: $A3
    and e                                         ; $77A2: $A3
    sub a                                         ; $77A3: $97
    ld [bc], a                                    ; $77A4: $02
    ld [bc], a                                    ; $77A5: $02
    and a                                         ; $77A6: $A7
    and [hl]                                      ; $77A7: $A6
    add d                                         ; $77A8: $82
    ld [$A282], sp                                ; $77A9: $08 $82 $A2
    add e                                         ; $77AC: $83
    ld [bc], a                                    ; $77AD: $02
    add e                                         ; $77AE: $83
    and a                                         ; $77AF: $A7
    add d                                         ; $77B0: $82
    and b                                         ; $77B1: $A0
    add h                                         ; $77B2: $84
    ld [bc], a                                    ; $77B3: $02
    ld bc, $8408                                  ; $77B4: $01 $08 $84
    ld [bc], a                                    ; $77B7: $02
    ld bc, $8608                                  ; $77B8: $01 $08 $86
    ld [bc], a                                    ; $77BB: $02
    add d                                         ; $77BC: $82
    and a                                         ; $77BD: $A7
    add d                                         ; $77BE: $82
    ld [$A282], sp                                ; $77BF: $08 $82 $A2
    add e                                         ; $77C2: $83
    ld [bc], a                                    ; $77C3: $02
    add e                                         ; $77C4: $83
    and a                                         ; $77C5: $A7
    add e                                         ; $77C6: $83
    and b                                         ; $77C7: $A0
    add e                                         ; $77C8: $83
    ld [bc], a                                    ; $77C9: $02
    ld bc, $8408                                  ; $77CA: $01 $08 $84
    nop                                           ; $77CD: $00
    ld bc, $8708                                  ; $77CE: $01 $08 $87
    ld [bc], a                                    ; $77D1: $02
    inc bc                                        ; $77D2: $03
    and a                                         ; $77D3: $A7
    ld [$8208], sp                                ; $77D4: $08 $08 $82
    and d                                         ; $77D7: $A2
    add d                                         ; $77D8: $82
    ld [bc], a                                    ; $77D9: $02
    add d                                         ; $77DA: $82
    and a                                         ; $77DB: $A7
    ld [bc], a                                    ; $77DC: $02
    and d                                         ; $77DD: $A2
    and a                                         ; $77DE: $A7
    add d                                         ; $77DF: $82
    and d                                         ; $77E0: $A2
    add d                                         ; $77E1: $82
    and b                                         ; $77E2: $A0
    add d                                         ; $77E3: $82
    ld [bc], a                                    ; $77E4: $02
    ld bc, $8408                                  ; $77E5: $01 $08 $84
    nop                                           ; $77E8: $00
    ld bc, $8608                                  ; $77E9: $01 $08 $86
    ld [bc], a                                    ; $77EC: $02
    add d                                         ; $77ED: $82
    and a                                         ; $77EE: $A7
    add d                                         ; $77EF: $82
    ld [$A203], sp                                ; $77F0: $08 $03 $A2
    and c                                         ; $77F3: $A1
    ld [bc], a                                    ; $77F4: $02
    add d                                         ; $77F5: $82
    and a                                         ; $77F6: $A7
    ld [bc], a                                    ; $77F7: $02
    and d                                         ; $77F8: $A2
    and e                                         ; $77F9: $A3
    add e                                         ; $77FA: $83
    and c                                         ; $77FB: $A1
    add e                                         ; $77FC: $83
    and b                                         ; $77FD: $A0
    ld [bc], a                                    ; $77FE: $02
    ld [bc], a                                    ; $77FF: $02
    ld [$0084], sp                                ; $7800: $08 $84 $00
    inc bc                                        ; $7803: $03
    ld [$A0A0], sp                                ; $7804: $08 $A0 $A0
    add h                                         ; $7807: $84
    ld [bc], a                                    ; $7808: $02
    add d                                         ; $7809: $82
    and a                                         ; $780A: $A7
    add d                                         ; $780B: $82
    ld [$A201], sp                                ; $780C: $08 $01 $A2
    add l                                         ; $780F: $85
    and c                                         ; $7810: $A1
    ld bc, $85A3                                  ; $7811: $01 $A3 $85
    and c                                         ; $7814: $A1
    add d                                         ; $7815: $82
    and b                                         ; $7816: $A0
    ld bc, $8408                                  ; $7817: $01 $08 $84
    nop                                           ; $781A: $00
    ld bc, $8708                                  ; $781B: $01 $08 $87
    and b                                         ; $781E: $A0
    inc bc                                        ; $781F: $03
    and a                                         ; $7820: $A7
    ld [$8208], sp                                ; $7821: $08 $08 $82
    and d                                         ; $7824: $A2
    ld bc, $8AA1                                  ; $7825: $01 $A1 $8A
    and b                                         ; $7828: $A0
    ld [bc], a                                    ; $7829: $02
    and d                                         ; $782A: $A2
    ld [$0084], sp                                ; $782B: $08 $84 $00
    ld [bc], a                                    ; $782E: $02
    ld [$86A6], sp                                ; $782F: $08 $A6 $86
    and b                                         ; $7832: $A0
    inc bc                                        ; $7833: $03
    and a                                         ; $7834: $A7
    ld [$8208], sp                                ; $7835: $08 $08 $82
    and d                                         ; $7838: $A2
    add d                                         ; $7839: $82
    and e                                         ; $783A: $A3
    ld [bc], a                                    ; $783B: $02
    and d                                         ; $783C: $A2
    and e                                         ; $783D: $A3
    add l                                         ; $783E: $85
    and b                                         ; $783F: $A0
    inc b                                         ; $7840: $04
    and d                                         ; $7841: $A2
    and b                                         ; $7842: $A0
    and d                                         ; $7843: $A2
    ld [$0084], sp                                ; $7844: $08 $84 $00
    ld bc, $8708                                  ; $7847: $01 $08 $87
    and b                                         ; $784A: $A0
    inc bc                                        ; $784B: $03
    and [hl]                                      ; $784C: $A6
    ld [$8208], sp                                ; $784D: $08 $08 $82
    and d                                         ; $7850: $A2
    ld [bc], a                                    ; $7851: $02
    and e                                         ; $7852: $A3
    and d                                         ; $7853: $A2
    add d                                         ; $7854: $82
    and e                                         ; $7855: $A3
    add d                                         ; $7856: $82
    and h                                         ; $7857: $A4
    ld bc, $84A2                                  ; $7858: $01 $A2 $84
    and h                                         ; $785B: $A4
    ld [bc], a                                    ; $785C: $02
    and d                                         ; $785D: $A2
    ld [$0084], sp                                ; $785E: $08 $84 $00
    ld [bc], a                                    ; $7861: $02
    ld [$85A6], sp                                ; $7862: $08 $A6 $85
    and l                                         ; $7865: $A5
    add d                                         ; $7866: $82
    and [hl]                                      ; $7867: $A6
    add d                                         ; $7868: $82
    ld [$A282], sp                                ; $7869: $08 $82 $A2
    add l                                         ; $786C: $85
    and e                                         ; $786D: $A3
    add d                                         ; $786E: $82
    and d                                         ; $786F: $A2
    add l                                         ; $7870: $85
    and h                                         ; $7871: $A4
    ld bc, $8408                                  ; $7872: $01 $08 $84
    nop                                           ; $7875: $00
    inc bc                                        ; $7876: $03
    ld [$A4A4], sp                                ; $7877: $08 $A4 $A4
    add d                                         ; $787A: $82
    and [hl]                                      ; $787B: $A6
    ld [bc], a                                    ; $787C: $02
    and h                                         ; $787D: $A4
    and l                                         ; $787E: $A5
    add d                                         ; $787F: $82
    and [hl]                                      ; $7880: $A6
    add d                                         ; $7881: $82
    ld [$A202], sp                                ; $7882: $08 $02 $A2
    and e                                         ; $7885: $A3
    add d                                         ; $7886: $82
    and d                                         ; $7887: $A2
    add e                                         ; $7888: $83
    and e                                         ; $7889: $A3
    ld bc, $83A2                                  ; $788A: $01 $A2 $83
    and h                                         ; $788D: $A4
    inc b                                         ; $788E: $04
    ld [bc], a                                    ; $788F: $02
    and h                                         ; $7890: $A4
    and h                                         ; $7891: $A4
    ld [$0084], sp                                ; $7892: $08 $84 $00
    ld bc, $8508                                  ; $7895: $01 $08 $85
    and h                                         ; $7898: $A4
    inc bc                                        ; $7899: $03
    and l                                         ; $789A: $A5
    and [hl]                                      ; $789B: $A6
    and [hl]                                      ; $789C: $A6
    add d                                         ; $789D: $82
    ld [$A203], sp                                ; $789E: $08 $03 $A2
    and e                                         ; $78A1: $A3
    and d                                         ; $78A2: $A2
    add a                                         ; $78A3: $87
    and e                                         ; $78A4: $A3
    add d                                         ; $78A5: $82
    ld [bc], a                                    ; $78A6: $02
    add d                                         ; $78A7: $82
    and h                                         ; $78A8: $A4
    ld bc, $8408                                  ; $78A9: $01 $08 $84
    nop                                           ; $78AC: $00
    ld bc, $8408                                  ; $78AD: $01 $08 $84
    and l                                         ; $78B0: $A5
    ld b, $A6                                     ; $78B1: $06 $A6
    and l                                         ; $78B3: $A5
    and l                                         ; $78B4: $A5
    and [hl]                                      ; $78B5: $A6
    ld [$0108], sp                                ; $78B6: $08 $08 $01
    and d                                         ; $78B9: $A2
    adc b                                         ; $78BA: $88
    and e                                         ; $78BB: $A3
    add l                                         ; $78BC: $85
    ld [bc], a                                    ; $78BD: $02
    ld bc, $8408                                  ; $78BE: $01 $08 $84
    nop                                           ; $78C1: $00
    ld bc, $8508                                  ; $78C2: $01 $08 $85
    and l                                         ; $78C5: $A5
    inc bc                                        ; $78C6: $03
    and [hl]                                      ; $78C7: $A6
    and l                                         ; $78C8: $A5
    and [hl]                                      ; $78C9: $A6
    add d                                         ; $78CA: $82
    ld [$A201], sp                                ; $78CB: $08 $01 $A2
    add h                                         ; $78CE: $84
    and e                                         ; $78CF: $A3
    ld bc, $84A2                                  ; $78D0: $01 $A2 $84
    and e                                         ; $78D3: $A3
    add h                                         ; $78D4: $84
    ld [bc], a                                    ; $78D5: $02
    ld bc, $8408                                  ; $78D6: $01 $08 $84
    ld [bc], a                                    ; $78D9: $02
    ld [bc], a                                    ; $78DA: $02
    ld [$8602], sp                                ; $78DB: $08 $02 $86
    and l                                         ; $78DE: $A5
    inc bc                                        ; $78DF: $03
    and [hl]                                      ; $78E0: $A6
    ld [$8308], sp                                ; $78E1: $08 $08 $83
    and e                                         ; $78E4: $A3
    add d                                         ; $78E5: $82
    and d                                         ; $78E6: $A2
    add h                                         ; $78E7: $84
    and e                                         ; $78E8: $A3
    adc [hl]                                      ; $78E9: $8E
    ld [bc], a                                    ; $78EA: $02
    add d                                         ; $78EB: $82
    and l                                         ; $78EC: $A5
    inc bc                                        ; $78ED: $03
    and [hl]                                      ; $78EE: $A6
    and l                                         ; $78EF: $A5
    and [hl]                                      ; $78F0: $A6
    add d                                         ; $78F1: $82
    ld [$A284], sp                                ; $78F2: $08 $84 $A2
    add l                                         ; $78F5: $85
    and e                                         ; $78F6: $A3
    sub b                                         ; $78F7: $90
    ld [bc], a                                    ; $78F8: $02
    add e                                         ; $78F9: $83
    and [hl]                                      ; $78FA: $A6
    add d                                         ; $78FB: $82
    ld [$A282], sp                                ; $78FC: $08 $82 $A2
    add l                                         ; $78FF: $85
    and e                                         ; $7900: $A3
    adc d                                         ; $7901: $8A
    ld [bc], a                                    ; $7902: $02
    add h                                         ; $7903: $84
    and [hl]                                      ; $7904: $A6
    add h                                         ; $7905: $84
    ld [bc], a                                    ; $7906: $02
    add e                                         ; $7907: $83
    and [hl]                                      ; $7908: $A6
    add d                                         ; $7909: $82
    ld [$A284], sp                                ; $790A: $08 $84 $A2
    adc h                                         ; $790D: $8C
    ld [bc], a                                    ; $790E: $02
    ld [bc], a                                    ; $790F: $02
    and [hl]                                      ; $7910: $A6
    and a                                         ; $7911: $A7
    add e                                         ; $7912: $83
    and c                                         ; $7913: $A1
    add h                                         ; $7914: $84
    ld [bc], a                                    ; $7915: $02
    add e                                         ; $7916: $83
    and [hl]                                      ; $7917: $A6
    add d                                         ; $7918: $82
    ld [$A283], sp                                ; $7919: $08 $83 $A2
    adc h                                         ; $791C: $8C
    ld [bc], a                                    ; $791D: $02
    inc bc                                        ; $791E: $03
    and [hl]                                      ; $791F: $A6
    and a                                         ; $7920: $A7
    and a                                         ; $7921: $A7
    add h                                         ; $7922: $84
    and c                                         ; $7923: $A1
    add l                                         ; $7924: $85
    ld [bc], a                                    ; $7925: $02
    inc bc                                        ; $7926: $03
    and [hl]                                      ; $7927: $A6
    ld [$8208], sp                                ; $7928: $08 $08 $82
    and d                                         ; $792B: $A2
    add d                                         ; $792C: $82
    and c                                         ; $792D: $A1
    adc d                                         ; $792E: $8A
    ld [bc], a                                    ; $792F: $02
    ld bc, $84A6                                  ; $7930: $01 $A6 $84
    and a                                         ; $7933: $A7
    add e                                         ; $7934: $83
    and c                                         ; $7935: $A1
    add h                                         ; $7936: $84
    ld [bc], a                                    ; $7937: $02
    add d                                         ; $7938: $82
    and a                                         ; $7939: $A7
    add d                                         ; $793A: $82
    ld [$A282], sp                                ; $793B: $08 $82 $A2
    add d                                         ; $793E: $82
    and c                                         ; $793F: $A1
    adc d                                         ; $7940: $8A
    ld [bc], a                                    ; $7941: $02
    ld bc, $85A6                                  ; $7942: $01 $A6 $85
    and a                                         ; $7945: $A7
    add h                                         ; $7946: $84
    and c                                         ; $7947: $A1
    add e                                         ; $7948: $83
    and a                                         ; $7949: $A7
    inc bc                                        ; $794A: $03
    and [hl]                                      ; $794B: $A6
    ld [$8208], sp                                ; $794C: $08 $08 $82
    and d                                         ; $794F: $A2
    add e                                         ; $7950: $83
    and c                                         ; $7951: $A1
    adc d                                         ; $7952: $8A
    ld [bc], a                                    ; $7953: $02
    add l                                         ; $7954: $85
    and l                                         ; $7955: $A5
    dec b                                         ; $7956: $05
    and [hl]                                      ; $7957: $A6
    and c                                         ; $7958: $A1
    and c                                         ; $7959: $A1
    and a                                         ; $795A: $A7
    and c                                         ; $795B: $A1
    add d                                         ; $795C: $82
    and a                                         ; $795D: $A7
    inc bc                                        ; $795E: $03
    and [hl]                                      ; $795F: $A6
    ld [$8208], sp                                ; $7960: $08 $08 $82
    and d                                         ; $7963: $A2
    add e                                         ; $7964: $83
    and c                                         ; $7965: $A1
    adc c                                         ; $7966: $89
    ld [bc], a                                    ; $7967: $02
    adc b                                         ; $7968: $88
    and l                                         ; $7969: $A5
    ld [bc], a                                    ; $796A: $02
    and c                                         ; $796B: $A1
    and l                                         ; $796C: $A5
    add h                                         ; $796D: $84
    and [hl]                                      ; $796E: $A6
    add d                                         ; $796F: $82
    ld [$A283], sp                                ; $7970: $08 $83 $A2
    add d                                         ; $7973: $82
    and c                                         ; $7974: $A1
    adc b                                         ; $7975: $88
    ld [bc], a                                    ; $7976: $02
    adc l                                         ; $7977: $8D
    and l                                         ; $7978: $A5
    add d                                         ; $7979: $82
    and [hl]                                      ; $797A: $A6
    add d                                         ; $797B: $82
    ld [$A282], sp                                ; $797C: $08 $82 $A2
    add [hl]                                      ; $797F: $86
    and c                                         ; $7980: $A1
    add a                                         ; $7981: $87
    ld [bc], a                                    ; $7982: $02
    adc e                                         ; $7983: $8B
    and l                                         ; $7984: $A5
    add d                                         ; $7985: $82
    and [hl]                                      ; $7986: $A6
    add d                                         ; $7987: $82
    ld [$A282], sp                                ; $7988: $08 $82 $A2
    add l                                         ; $798B: $85
    and c                                         ; $798C: $A1
    add d                                         ; $798D: $82
    and e                                         ; $798E: $A3
    adc b                                         ; $798F: $88
    ld [bc], a                                    ; $7990: $02
    adc b                                         ; $7991: $88
    and l                                         ; $7992: $A5
    add e                                         ; $7993: $83
    and [hl]                                      ; $7994: $A6
    add d                                         ; $7995: $82
    ld [$A282], sp                                ; $7996: $08 $82 $A2
    add l                                         ; $7999: $85
    and c                                         ; $799A: $A1
    add d                                         ; $799B: $82
    and e                                         ; $799C: $A3
    adc e                                         ; $799D: $8B
    ld [bc], a                                    ; $799E: $02
    add [hl]                                      ; $799F: $86
    and l                                         ; $79A0: $A5
    add d                                         ; $79A1: $82
    and [hl]                                      ; $79A2: $A6
    add d                                         ; $79A3: $82
    ld [$A201], sp                                ; $79A4: $08 $01 $A2
    add l                                         ; $79A7: $85
    and c                                         ; $79A8: $A1
    add d                                         ; $79A9: $82
    and e                                         ; $79AA: $A3
    adc [hl]                                      ; $79AB: $8E
    ld [bc], a                                    ; $79AC: $02
    add d                                         ; $79AD: $82
    and l                                         ; $79AE: $A5
    ld bc, $8302                                  ; $79AF: $01 $02 $83
    and [hl]                                      ; $79B2: $A6
    add d                                         ; $79B3: $82
    ld [$A201], sp                                ; $79B4: $08 $01 $A2
    add l                                         ; $79B7: $85
    and c                                         ; $79B8: $A1
    add d                                         ; $79B9: $82
    and e                                         ; $79BA: $A3
    sub d                                         ; $79BB: $92
    ld [bc], a                                    ; $79BC: $02
    add d                                         ; $79BD: $82
    and [hl]                                      ; $79BE: $A6
    add d                                         ; $79BF: $82
    ld [$A187], sp                                ; $79C0: $08 $87 $A1
    sub h                                         ; $79C3: $94
    ld [bc], a                                    ; $79C4: $02
    inc bc                                        ; $79C5: $03
    and [hl]                                      ; $79C6: $A6
    ld [$8808], sp                                ; $79C7: $08 $08 $88
    and c                                         ; $79CA: $A1
    sub c                                         ; $79CB: $91
    ld [bc], a                                    ; $79CC: $02
    add d                                         ; $79CD: $82
    and a                                         ; $79CE: $A7
    inc bc                                        ; $79CF: $03
    and [hl]                                      ; $79D0: $A6
    ld [$8808], sp                                ; $79D1: $08 $08 $88
    and c                                         ; $79D4: $A1
    sub b                                         ; $79D5: $90
    ld [bc], a                                    ; $79D6: $02
    add e                                         ; $79D7: $83
    and a                                         ; $79D8: $A7
    inc bc                                        ; $79D9: $03
    and [hl]                                      ; $79DA: $A6
    ld [$8B08], sp                                ; $79DB: $08 $08 $8B
    and c                                         ; $79DE: $A1
    adc h                                         ; $79DF: $8C
    ld [bc], a                                    ; $79E0: $02
    add l                                         ; $79E1: $85
    and a                                         ; $79E2: $A7
    add d                                         ; $79E3: $82
    ld [$A18B], sp                                ; $79E4: $08 $8B $A1
    adc h                                         ; $79E7: $8C
    ld [bc], a                                    ; $79E8: $02
    add l                                         ; $79E9: $85
    and a                                         ; $79EA: $A7
    add d                                         ; $79EB: $82
    ld [$A18C], sp                                ; $79EC: $08 $8C $A1
    adc e                                         ; $79EF: $8B
    ld [bc], a                                    ; $79F0: $02
    add l                                         ; $79F1: $85
    and a                                         ; $79F2: $A7
    add d                                         ; $79F3: $82
    ld [$A18D], sp                                ; $79F4: $08 $8D $A1
    adc c                                         ; $79F7: $89
    ld [bc], a                                    ; $79F8: $02
    add [hl]                                      ; $79F9: $86
    and a                                         ; $79FA: $A7
    sub b                                         ; $79FB: $90
    ld [$C187], sp                                ; $79FC: $08 $87 $C1
    adc b                                         ; $79FF: $88
    ld [$2D00], sp                                ; $7A00: $08 $00 $2D
    sub l                                         ; $7A03: $95
    ld bc, $1922                                  ; $7A04: $01 $22 $19
    daa                                           ; $7A07: $27
    ld b, $AA                                     ; $7A08: $06 $AA
    ld d, a                                       ; $7A0A: $57
    inc bc                                        ; $7A0B: $03
    ld l, d                                       ; $7A0C: $6A
    nop                                           ; $7A0D: $00
    nop                                           ; $7A0E: $00
    add d                                         ; $7A0F: $82
    and l                                         ; $7A10: $A5
    dec hl                                        ; $7A11: $2B
    and c                                         ; $7A12: $A1
    ld b, l                                       ; $7A13: $45
    ld b, [hl]                                    ; $7A14: $46
    and d                                         ; $7A15: $A2
    and [hl]                                      ; $7A16: $A6
    and c                                         ; $7A17: $A1
    ld b, l                                       ; $7A18: $45
    ld b, [hl]                                    ; $7A19: $46
    and d                                         ; $7A1A: $A2
    and [hl]                                      ; $7A1B: $A6
    and c                                         ; $7A1C: $A1
    ld b, l                                       ; $7A1D: $45
    ld b, [hl]                                    ; $7A1E: $46
    and d                                         ; $7A1F: $A2
    and [hl]                                      ; $7A20: $A6
    and c                                         ; $7A21: $A1
    ld b, l                                       ; $7A22: $45
    ld b, [hl]                                    ; $7A23: $46
    and d                                         ; $7A24: $A2
    and [hl]                                      ; $7A25: $A6
    and c                                         ; $7A26: $A1
    ld b, l                                       ; $7A27: $45
    ld b, [hl]                                    ; $7A28: $46
    and d                                         ; $7A29: $A2
    and [hl]                                      ; $7A2A: $A6
    and l                                         ; $7A2B: $A5
    and e                                         ; $7A2C: $A3
    and h                                         ; $7A2D: $A4
    and l                                         ; $7A2E: $A5

jr_06D_7A2F:
    and e                                         ; $7A2F: $A3
    and h                                         ; $7A30: $A4
    and l                                         ; $7A31: $A5
    and e                                         ; $7A32: $A3
    and h                                         ; $7A33: $A4
    and [hl]                                      ; $7A34: $A6
    and l                                         ; $7A35: $A5
    and e                                         ; $7A36: $A3
    and h                                         ; $7A37: $A4
    and l                                         ; $7A38: $A5
    and c                                         ; $7A39: $A1
    inc b                                         ; $7A3A: $04
    dec b                                         ; $7A3B: $05
    nop                                           ; $7A3C: $00
    add d                                         ; $7A3D: $82
    or l                                          ; $7A3E: $B5
    dec hl                                        ; $7A3F: $2B
    or c                                          ; $7A40: $B1
    ld d, l                                       ; $7A41: $55
    ld d, [hl]                                    ; $7A42: $56
    or d                                          ; $7A43: $B2
    or [hl]                                       ; $7A44: $B6
    or c                                          ; $7A45: $B1
    ld d, l                                       ; $7A46: $55
    ld d, [hl]                                    ; $7A47: $56
    or d                                          ; $7A48: $B2
    or [hl]                                       ; $7A49: $B6
    or c                                          ; $7A4A: $B1
    ld d, l                                       ; $7A4B: $55
    ld d, [hl]                                    ; $7A4C: $56
    or d                                          ; $7A4D: $B2
    or [hl]                                       ; $7A4E: $B6
    or c                                          ; $7A4F: $B1
    ld d, l                                       ; $7A50: $55
    ld d, [hl]                                    ; $7A51: $56
    or d                                          ; $7A52: $B2

jr_06D_7A53:
    or [hl]                                       ; $7A53: $B6
    or c                                          ; $7A54: $B1
    ld d, l                                       ; $7A55: $55
    ld d, [hl]                                    ; $7A56: $56
    or d                                          ; $7A57: $B2
    or [hl]                                       ; $7A58: $B6
    or l                                          ; $7A59: $B5
    or e                                          ; $7A5A: $B3
    or h                                          ; $7A5B: $B4
    or l                                          ; $7A5C: $B5
    or e                                          ; $7A5D: $B3
    or h                                          ; $7A5E: $B4
    or l                                          ; $7A5F: $B5
    or e                                          ; $7A60: $B3
    or h                                          ; $7A61: $B4
    or [hl]                                       ; $7A62: $B6
    or l                                          ; $7A63: $B5
    or e                                          ; $7A64: $B3
    or h                                          ; $7A65: $B4
    or l                                          ; $7A66: $B5
    or c                                          ; $7A67: $B1
    inc d                                         ; $7A68: $14
    dec d                                         ; $7A69: $15
    ld d, $82                                     ; $7A6A: $16 $82
    push bc                                       ; $7A6C: $C5
    ld b, b                                       ; $7A6D: $40
    ld b, a                                       ; $7A6E: $47
    pop bc                                        ; $7A6F: $C1
    ld h, l                                       ; $7A70: $65
    ld h, [hl]                                    ; $7A71: $66
    jp nz, $C1C6                                  ; $7A72: $C2 $C6 $C1

    ld h, l                                       ; $7A75: $65
    ld h, [hl]                                    ; $7A76: $66
    jp nz, $C1C6                                  ; $7A77: $C2 $C6 $C1

    ld h, l                                       ; $7A7A: $65
    ld h, [hl]                                    ; $7A7B: $66
    jp nz, $C1C6                                  ; $7A7C: $C2 $C6 $C1

    ld h, l                                       ; $7A7F: $65
    ld h, [hl]                                    ; $7A80: $66
    jp nz, $C1C6                                  ; $7A81: $C2 $C6 $C1

    ld h, l                                       ; $7A84: $65
    ld h, [hl]                                    ; $7A85: $66
    jp nz, $C5C6                                  ; $7A86: $C2 $C6 $C5

    jp $C5C4                                      ; $7A89: $C3 $C4 $C5


    jp $C5C4                                      ; $7A8C: $C3 $C4 $C5


    jp $C6C4                                      ; $7A8F: $C3 $C4 $C6


    push bc                                       ; $7A92: $C5
    jp $C5C4                                      ; $7A93: $C3 $C4 $C5


    pop bc                                        ; $7A96: $C1
    daa                                           ; $7A97: $27
    jr z, jr_06D_7A2F                             ; $7A98: $28 $95

    nop                                           ; $7A9A: $00
    di                                            ; $7A9B: $F3
    db $E4                                        ; $7A9C: $E4
    ld [hl], l                                    ; $7A9D: $75
    halt                                          ; $7A9E: $76
    db $E4                                        ; $7A9F: $E4
    db $F4                                        ; $7AA0: $F4
    db $E4                                        ; $7AA1: $E4
    ld [hl], l                                    ; $7AA2: $75
    halt                                          ; $7AA3: $76
    db $E4                                        ; $7AA4: $E4
    db $F4                                        ; $7AA5: $F4
    db $E4                                        ; $7AA6: $E4
    ld [hl], l                                    ; $7AA7: $75
    halt                                          ; $7AA8: $76
    db $E4                                        ; $7AA9: $E4
    db $F4                                        ; $7AAA: $F4
    db $E4                                        ; $7AAB: $E4
    ld [hl], l                                    ; $7AAC: $75
    halt                                          ; $7AAD: $76
    db $E4                                        ; $7AAE: $E4
    db $F4                                        ; $7AAF: $F4
    db $E4                                        ; $7AB0: $E4
    ld [hl], l                                    ; $7AB1: $75
    halt                                          ; $7AB2: $76
    db $E4                                        ; $7AB3: $E4
    push af                                       ; $7AB4: $F5
    ld a, [de]                                    ; $7AB5: $1A
    adc h                                         ; $7AB6: $8C
    nop                                           ; $7AB7: $00
    dec b                                         ; $7AB8: $05
    db $D3                                        ; $7AB9: $D3
    db $E4                                        ; $7ABA: $E4
    scf                                           ; $7ABB: $37
    jr c, jr_06D_7A53                             ; $7ABC: $38 $95

    add d                                         ; $7ABE: $82
    nop                                           ; $7ABF: $00
    ld b, $F3                                     ; $7AC0: $06 $F3
    db $E4                                        ; $7AC2: $E4
    db $E4                                        ; $7AC3: $E4
    push af                                       ; $7AC4: $F5
    nop                                           ; $7AC5: $00
    di                                            ; $7AC6: $F3
    add d                                         ; $7AC7: $82
    db $E4                                        ; $7AC8: $E4
    inc bc                                        ; $7AC9: $03
    push af                                       ; $7ACA: $F5
    nop                                           ; $7ACB: $00
    di                                            ; $7ACC: $F3
    add d                                         ; $7ACD: $82
    db $E4                                        ; $7ACE: $E4
    inc bc                                        ; $7ACF: $03
    push af                                       ; $7AD0: $F5
    nop                                           ; $7AD1: $00
    di                                            ; $7AD2: $F3
    add d                                         ; $7AD3: $82
    db $E4                                        ; $7AD4: $E4
    inc bc                                        ; $7AD5: $03
    push af                                       ; $7AD6: $F5
    nop                                           ; $7AD7: $00
    di                                            ; $7AD8: $F3
    add d                                         ; $7AD9: $82
    db $E4                                        ; $7ADA: $E4
    ld bc, $8DF5                                  ; $7ADB: $01 $F5 $8D
    nop                                           ; $7ADE: $00
    ld b, $D3                                     ; $7ADF: $06 $D3
    db $E4                                        ; $7AE1: $E4
    push hl                                       ; $7AE2: $E5
    ld b, a                                       ; $7AE3: $47
    ld c, b                                       ; $7AE4: $48
    sub l                                         ; $7AE5: $95
    add e                                         ; $7AE6: $83
    nop                                           ; $7AE7: $00
    ld [bc], a                                    ; $7AE8: $02
    di                                            ; $7AE9: $F3
    push af                                       ; $7AEA: $F5
    add e                                         ; $7AEB: $83
    nop                                           ; $7AEC: $00
    inc bc                                        ; $7AED: $03
    di                                            ; $7AEE: $F3
    push af                                       ; $7AEF: $F5
    ld a, [de]                                    ; $7AF0: $1A
    add d                                         ; $7AF1: $82
    nop                                           ; $7AF2: $00
    ld [bc], a                                    ; $7AF3: $02
    di                                            ; $7AF4: $F3
    push af                                       ; $7AF5: $F5
    add e                                         ; $7AF6: $83
    nop                                           ; $7AF7: $00
    ld [bc], a                                    ; $7AF8: $02
    di                                            ; $7AF9: $F3
    push af                                       ; $7AFA: $F5
    add d                                         ; $7AFB: $82
    nop                                           ; $7AFC: $00
    inc bc                                        ; $7AFD: $03
    ld a, [de]                                    ; $7AFE: $1A
    di                                            ; $7AFF: $F3
    push af                                       ; $7B00: $F5
    adc [hl]                                      ; $7B01: $8E
    nop                                           ; $7B02: $00
    ld b, $F3                                     ; $7B03: $06 $F3
    db $E4                                        ; $7B05: $E4
    db $E4                                        ; $7B06: $E4
    push af                                       ; $7B07: $F5
    nop                                           ; $7B08: $00
    sub l                                         ; $7B09: $95
    sub a                                         ; $7B0A: $97
    nop                                           ; $7B0B: $00
    add hl, bc                                    ; $7B0C: $09
    ret nc                                        ; $7B0D: $D0

    pop de                                        ; $7B0E: $D1
    dec bc                                        ; $7B0F: $0B
    inc c                                         ; $7B10: $0C
    ld e, d                                       ; $7B11: $5A
    ld h, c                                       ; $7B12: $61
    ld h, d                                       ; $7B13: $62
    xor e                                         ; $7B14: $AB
    xor h                                         ; $7B15: $AC
    add h                                         ; $7B16: $84
    nop                                           ; $7B17: $00
    ld bc, $831A                                  ; $7B18: $01 $1A $83
    nop                                           ; $7B1B: $00
    dec b                                         ; $7B1C: $05
    di                                            ; $7B1D: $F3
    push af                                       ; $7B1E: $F5
    ret nc                                        ; $7B1F: $D0

    pop de                                        ; $7B20: $D1
    jp nc, $0095                                  ; $7B21: $D2 $95 $00

    inc b                                         ; $7B24: $04
    ld a, [de]                                    ; $7B25: $1A
    nop                                           ; $7B26: $00
    ldh [$E1], a                                  ; $7B27: $E0 $E1
    add l                                         ; $7B29: $85
    nop                                           ; $7B2A: $00
    ld [bc], a                                    ; $7B2B: $02
    cp e                                          ; $7B2C: $BB
    cp h                                          ; $7B2D: $BC
    add [hl]                                      ; $7B2E: $86
    nop                                           ; $7B2F: $00
    rlca                                          ; $7B30: $07
    or a                                          ; $7B31: $B7
    cp b                                          ; $7B32: $B8
    cp c                                          ; $7B33: $B9
    cp d                                          ; $7B34: $BA
    ldh [$E1], a                                  ; $7B35: $E0 $E1
    ld [c], a                                     ; $7B37: $E2
    sub a                                         ; $7B38: $97
    ld e, d                                       ; $7B39: $5A
    ld [bc], a                                    ; $7B3A: $02
    ldh a, [$F1]                                  ; $7B3B: $F0 $F1
    add [hl]                                      ; $7B3D: $86
    nop                                           ; $7B3E: $00
    ld bc, $86CC                                  ; $7B3F: $01 $CC $86
    ld e, d                                       ; $7B42: $5A
    rlca                                          ; $7B43: $07
    rst $00                                       ; $7B44: $C7
    ret z                                         ; $7B45: $C8

    ret                                           ; $7B46: $C9


    jp z, $F1F0                                   ; $7B47: $CA $F0 $F1

    ld a, [c]                                     ; $7B4A: $F2
    and a                                         ; $7B4B: $A7
    nop                                           ; $7B4C: $00
    ld [bc], a                                    ; $7B4D: $02
    ret c                                         ; $7B4E: $D8

    reti                                          ; $7B4F: $D9


    add a                                         ; $7B50: $87
    nop                                           ; $7B51: $00
    ld bc, $9C67                                  ; $7B52: $01 $67 $9C
    ld d, a                                       ; $7B55: $57
    ld bc, $866A                                  ; $7B56: $01 $6A $86
    nop                                           ; $7B59: $00
    ld [bc], a                                    ; $7B5A: $02
    ret c                                         ; $7B5B: $D8

    reti                                          ; $7B5C: $D9


    add [hl]                                      ; $7B5D: $86
    nop                                           ; $7B5E: $00
    rlca                                          ; $7B5F: $07
    dec h                                         ; $7B60: $25
    ld h, $A2                                     ; $7B61: $26 $A2
    and e                                         ; $7B63: $A3
    and h                                         ; $7B64: $A4
    and e                                         ; $7B65: $A3
    and h                                         ; $7B66: $A4
    add d                                         ; $7B67: $82
    and l                                         ; $7B68: $A5
    rlca                                          ; $7B69: $07
    and [hl]                                      ; $7B6A: $A6
    and l                                         ; $7B6B: $A5

jr_06D_7B6C:
    and e                                         ; $7B6C: $A3
    and h                                         ; $7B6D: $A4
    and l                                         ; $7B6E: $A5
    and [hl]                                      ; $7B6F: $A6
    and l                                         ; $7B70: $A5
    add e                                         ; $7B71: $83
    and h                                         ; $7B72: $A4
    dec c                                         ; $7B73: $0D
    and [hl]                                      ; $7B74: $A6
    and l                                         ; $7B75: $A5
    and e                                         ; $7B76: $A3
    and h                                         ; $7B77: $A4
    and [hl]                                      ; $7B78: $A6
    and h                                         ; $7B79: $A4
    and l                                         ; $7B7A: $A5
    and e                                         ; $7B7B: $A3
    and h                                         ; $7B7C: $A4

jr_06D_7B7D:
    and l                                         ; $7B7D: $A5
    and c                                         ; $7B7E: $A1
    inc b                                         ; $7B7F: $04
    dec b                                         ; $7B80: $05
    add l                                         ; $7B81: $85
    nop                                           ; $7B82: $00
    ld [bc], a                                    ; $7B83: $02
    ret c                                         ; $7B84: $D8

    reti                                          ; $7B85: $D9


    add l                                         ; $7B86: $85
    nop                                           ; $7B87: $00
    ld [$3534], sp                                ; $7B88: $08 $34 $35
    ld [hl], $B2                                  ; $7B8B: $36 $B2
    or e                                          ; $7B8D: $B3
    or h                                          ; $7B8E: $B4
    or e                                          ; $7B8F: $B3
    or h                                          ; $7B90: $B4
    add d                                         ; $7B91: $82
    or l                                          ; $7B92: $B5
    ld b, $B6                                     ; $7B93: $06 $B6
    or l                                          ; $7B95: $B5
    or e                                          ; $7B96: $B3
    or h                                          ; $7B97: $B4
    or l                                          ; $7B98: $B5
    or [hl]                                       ; $7B99: $B6
    add h                                         ; $7B9A: $84
    or l                                          ; $7B9B: $B5
    dec b                                         ; $7B9C: $05
    or [hl]                                       ; $7B9D: $B6
    or l                                          ; $7B9E: $B5
    or e                                          ; $7B9F: $B3
    or h                                          ; $7BA0: $B4
    or [hl]                                       ; $7BA1: $B6
    add d                                         ; $7BA2: $82
    or l                                          ; $7BA3: $B5
    rlca                                          ; $7BA4: $07
    or e                                          ; $7BA5: $B3
    or h                                          ; $7BA6: $B4
    or l                                          ; $7BA7: $B5
    or c                                          ; $7BA8: $B1
    inc d                                         ; $7BA9: $14
    dec d                                         ; $7BAA: $15
    ld d, $84                                     ; $7BAB: $16 $84
    nop                                           ; $7BAD: $00
    ld [bc], a                                    ; $7BAE: $02
    ret c                                         ; $7BAF: $D8

    reti                                          ; $7BB0: $D9


    add l                                         ; $7BB1: $85
    nop                                           ; $7BB2: $00
    ld [$2994], sp                                ; $7BB3: $08 $94 $29
    ld a, [hl+]                                   ; $7BB6: $2A
    jp nz, $C4C3                                  ; $7BB7: $C2 $C3 $C4

    jp $82C4                                      ; $7BBA: $C3 $C4 $82


    push bc                                       ; $7BBD: $C5
    ld b, $C6                                     ; $7BBE: $06 $C6
    push bc                                       ; $7BC0: $C5
    jp $C5C4                                      ; $7BC1: $C3 $C4 $C5


    add $84                                       ; $7BC4: $C6 $84
    push bc                                       ; $7BC6: $C5
    dec b                                         ; $7BC7: $05
    add $C5                                       ; $7BC8: $C6 $C5
    jp $C6C4                                      ; $7BCA: $C3 $C4 $C6


    add d                                         ; $7BCD: $82
    push bc                                       ; $7BCE: $C5
    rlca                                          ; $7BCF: $07
    jp $C5C4                                      ; $7BD0: $C3 $C4 $C5


    pop bc                                        ; $7BD3: $C1
    daa                                           ; $7BD4: $27
    jr z, jr_06D_7B6C                             ; $7BD5: $28 $95

    add h                                         ; $7BD7: $84
    nop                                           ; $7BD8: $00
    ld [bc], a                                    ; $7BD9: $02
    ret c                                         ; $7BDA: $D8

    reti                                          ; $7BDB: $D9


    add l                                         ; $7BDC: $85
    nop                                           ; $7BDD: $00
    inc bc                                        ; $7BDE: $03
    sub h                                         ; $7BDF: $94
    add hl, sp                                    ; $7BE0: $39
    ld a, [hl-]                                   ; $7BE1: $3A
    sbc h                                         ; $7BE2: $9C
    nop                                           ; $7BE3: $00
    inc bc                                        ; $7BE4: $03
    scf                                           ; $7BE5: $37
    jr c, jr_06D_7B7D                             ; $7BE6: $38 $95

    add h                                         ; $7BE8: $84
    nop                                           ; $7BE9: $00
    ld [bc], a                                    ; $7BEA: $02
    ret c                                         ; $7BEB: $D8

    reti                                          ; $7BEC: $D9


    add l                                         ; $7BED: $85
    nop                                           ; $7BEE: $00
    dec b                                         ; $7BEF: $05
    sub h                                         ; $7BF0: $94
    ld c, c                                       ; $7BF1: $49
    ld c, d                                       ; $7BF2: $4A
    db $D3                                        ; $7BF3: $D3
    push de                                       ; $7BF4: $D5
    sub a                                         ; $7BF5: $97
    nop                                           ; $7BF6: $00
    ld b, $1A                                     ; $7BF7: $06 $1A
    db $D3                                        ; $7BF9: $D3
    push de                                       ; $7BFA: $D5
    ld b, a                                       ; $7BFB: $47
    ld c, b                                       ; $7BFC: $48
    sub l                                         ; $7BFD: $95
    add h                                         ; $7BFE: $84
    nop                                           ; $7BFF: $00
    ld [bc], a                                    ; $7C00: $02
    ret c                                         ; $7C01: $D8

    reti                                          ; $7C02: $D9


    add l                                         ; $7C03: $85

jr_06D_7C04:
    nop                                           ; $7C04: $00
    dec b                                         ; $7C05: $05
    sub h                                         ; $7C06: $94
    nop                                           ; $7C07: $00
    db $D3                                        ; $7C08: $D3
    db $E4                                        ; $7C09: $E4
    push af                                       ; $7C0A: $F5
    adc b                                         ; $7C0B: $88
    nop                                           ; $7C0C: $00
    inc b                                         ; $7C0D: $04
    ret nc                                        ; $7C0E: $D0

    pop de                                        ; $7C0F: $D1
    dec bc                                        ; $7C10: $0B
    inc c                                         ; $7C11: $0C
    add e                                         ; $7C12: $83
    ld e, d                                       ; $7C13: $5A
    inc b                                         ; $7C14: $04
    ld h, c                                       ; $7C15: $61
    ld h, d                                       ; $7C16: $62
    xor e                                         ; $7C17: $AB
    xor h                                         ; $7C18: $AC
    add l                                         ; $7C19: $85
    nop                                           ; $7C1A: $00
    dec c                                         ; $7C1B: $0D
    di                                            ; $7C1C: $F3
    db $E4                                        ; $7C1D: $E4
    push de                                       ; $7C1E: $D5

jr_06D_7C1F:
    nop                                           ; $7C1F: $00
    sub l                                         ; $7C20: $95
    nop                                           ; $7C21: $00
    dec h                                         ; $7C22: $25
    ld h, $77                                     ; $7C23: $26 $77
    ld c, h                                       ; $7C25: $4C
    ld c, l                                       ; $7C26: $4D
    ld a, d                                       ; $7C27: $7A
    inc b                                         ; $7C28: $04
    add e                                         ; $7C29: $83
    nop                                           ; $7C2A: $00
    inc b                                         ; $7C2B: $04
    sub h                                         ; $7C2C: $94
    nop                                           ; $7C2D: $00
    di                                            ; $7C2E: $F3
    push af                                       ; $7C2F: $F5
    adc c                                         ; $7C30: $89
    nop                                           ; $7C31: $00
    ld [bc], a                                    ; $7C32: $02
    ldh [$E1], a                                  ; $7C33: $E0 $E1
    add a                                         ; $7C35: $87
    nop                                           ; $7C36: $00
    ld [bc], a                                    ; $7C37: $02
    cp e                                          ; $7C38: $BB
    cp h                                          ; $7C39: $BC
    add [hl]                                      ; $7C3A: $86
    nop                                           ; $7C3B: $00
    db $10                                        ; $7C3C: $10
    di                                            ; $7C3D: $F3
    push af                                       ; $7C3E: $F5
    cp $95                                        ; $7C3F: $FE $95
    inc [hl]                                      ; $7C41: $34
    dec [hl]                                      ; $7C42: $35
    ld [hl], $87                                  ; $7C43: $36 $87
    ld e, h                                       ; $7C45: $5C
    ld e, l                                       ; $7C46: $5D
    adc d                                         ; $7C47: $8A
    inc d                                         ; $7C48: $14
    dec d                                         ; $7C49: $15
    ld d, $00                                     ; $7C4A: $16 $00
    sub h                                         ; $7C4C: $94
    add h                                         ; $7C4D: $84
    nop                                           ; $7C4E: $00
    inc bc                                        ; $7C4F: $03
    ret nc                                        ; $7C50: $D0

    pop de                                        ; $7C51: $D1
    dec bc                                        ; $7C52: $0B
    add l                                         ; $7C53: $85
    ld e, d                                       ; $7C54: $5A
    ld bc, $89F0                                  ; $7C55: $01 $F0 $89
    nop                                           ; $7C58: $00
    dec b                                         ; $7C59: $05
    call z, $6261                                 ; $7C5A: $CC $61 $62
    xor e                                         ; $7C5D: $AB
    xor h                                         ; $7C5E: $AC
    add e                                         ; $7C5F: $83
    nop                                           ; $7C60: $00
    rrca                                          ; $7C61: $0F
    ret nc                                        ; $7C62: $D0

    pop de                                        ; $7C63: $D1
    jp nc, $2994                                  ; $7C64: $D2 $94 $29

    ld a, [hl+]                                   ; $7C67: $2A
    sub a                                         ; $7C68: $97
    ld l, h                                       ; $7C69: $6C
    ld l, l                                       ; $7C6A: $6D
    sbc d                                         ; $7C6B: $9A
    daa                                           ; $7C6C: $27
    jr z, jr_06D_7C04                             ; $7C6D: $28 $95

    nop                                           ; $7C6F: $00
    sub h                                         ; $7C70: $94
    add h                                         ; $7C71: $84
    nop                                           ; $7C72: $00
    ld [bc], a                                    ; $7C73: $02
    ldh [$E1], a                                  ; $7C74: $E0 $E1
    sub e                                         ; $7C76: $93
    nop                                           ; $7C77: $00
    ld [bc], a                                    ; $7C78: $02
    cp e                                          ; $7C79: $BB
    cp h                                          ; $7C7A: $BC
    add e                                         ; $7C7B: $83
    nop                                           ; $7C7C: $00
    ld b, $E0                                     ; $7C7D: $06 $E0
    pop hl                                        ; $7C7F: $E1
    nop                                           ; $7C80: $00
    sub h                                         ; $7C81: $94
    add hl, sp                                    ; $7C82: $39
    ld a, [hl-]                                   ; $7C83: $3A
    add h                                         ; $7C84: $84
    nop                                           ; $7C85: $00
    ld a, [bc]                                    ; $7C86: $0A
    scf                                           ; $7C87: $37
    jr c, jr_06D_7C1F                             ; $7C88: $38 $95

    nop                                           ; $7C8A: $00
    add [hl]                                      ; $7C8B: $86
    and a                                         ; $7C8C: $A7
    xor b                                         ; $7C8D: $A8
    xor c                                         ; $7C8E: $A9
    nop                                           ; $7C8F: $00
    sub l                                         ; $7C90: $95
    sub l                                         ; $7C91: $95
    nop                                           ; $7C92: $00
    ld bc, $83CC                                  ; $7C93: $01 $CC $83
    ld e, d                                       ; $7C96: $5A
    inc d                                         ; $7C97: $14
    ldh a, [rP1]                                  ; $7C98: $F0 $00
    nop                                           ; $7C9A: $00
    sub h                                         ; $7C9B: $94
    ld c, c                                       ; $7C9C: $49
    ld c, d                                       ; $7C9D: $4A
    db $D3                                        ; $7C9E: $D3
    push de                                       ; $7C9F: $D5
    db $D3                                        ; $7CA0: $D3
    push de                                       ; $7CA1: $D5
    ld b, a                                       ; $7CA2: $47
    ld c, b                                       ; $7CA3: $48
    sub l                                         ; $7CA4: $95
    nop                                           ; $7CA5: $00
    sub [hl]                                      ; $7CA6: $96
    db $DB                                        ; $7CA7: $DB
    call c, $00DD                                 ; $7CA8: $DC $DD $00
    sub l                                         ; $7CAB: $95
    sbc h                                         ; $7CAC: $9C
    nop                                           ; $7CAD: $00
    inc de                                        ; $7CAE: $13
    ld e, c                                       ; $7CAF: $59
    nop                                           ; $7CB0: $00
    db $D3                                        ; $7CB1: $D3
    db $E4                                        ; $7CB2: $E4
    push af                                       ; $7CB3: $F5
    di                                            ; $7CB4: $F3
    db $E4                                        ; $7CB5: $E4
    push de                                       ; $7CB6: $D5
    nop                                           ; $7CB7: $00
    sub l                                         ; $7CB8: $95
    nop                                           ; $7CB9: $00
    sub h                                         ; $7CBA: $94

jr_06D_7CBB:
    nop                                           ; $7CBB: $00
    sub $CB                                       ; $7CBC: $D6 $CB
    nop                                           ; $7CBE: $00
    inc b                                         ; $7CBF: $04
    ld a, $3F                                     ; $7CC0: $3E $3F
    sbc b                                         ; $7CC2: $98
    ld d, a                                       ; $7CC3: $57
    ld b, $5E                                     ; $7CC4: $06 $5E
    ld e, a                                       ; $7CC6: $5F
    ld l, c                                       ; $7CC7: $69
    nop                                           ; $7CC8: $00
    di                                            ; $7CC9: $F3
    push af                                       ; $7CCA: $F5
    add d                                         ; $7CCB: $82
    nop                                           ; $7CCC: $00
    ld b, $F3                                     ; $7CCD: $06 $F3
    push af                                       ; $7CCF: $F5
    nop                                           ; $7CD0: $00
    sub l                                         ; $7CD1: $95
    nop                                           ; $7CD2: $00
    sub h                                         ; $7CD3: $94
    add h                                         ; $7CD4: $84
    nop                                           ; $7CD5: $00
    dec b                                         ; $7CD6: $05
    inc d                                         ; $7CD7: $14
    ld c, [hl]                                    ; $7CD8: $4E
    and d                                         ; $7CD9: $A2
    and l                                         ; $7CDA: $A5
    and e                                         ; $7CDB: $A3
    add d                                         ; $7CDC: $82
    and h                                         ; $7CDD: $A4
    ld [bc], a                                    ; $7CDE: $02
    and [hl]                                      ; $7CDF: $A6
    and e                                         ; $7CE0: $A3
    add d                                         ; $7CE1: $82
    and h                                         ; $7CE2: $A4
    ld c, $A6                                     ; $7CE3: $0E $A6
    and l                                         ; $7CE5: $A5
    and l                                         ; $7CE6: $A5
    and e                                         ; $7CE7: $A3
    and h                                         ; $7CE8: $A4
    and e                                         ; $7CE9: $A3
    and h                                         ; $7CEA: $A4
    and l                                         ; $7CEB: $A5
    and [hl]                                      ; $7CEC: $A6
    and l                                         ; $7CED: $A5
    and [hl]                                      ; $7CEE: $A6
    and l                                         ; $7CEF: $A5
    and e                                         ; $7CF0: $A3
    and h                                         ; $7CF1: $A4
    add d                                         ; $7CF2: $82
    and [hl]                                      ; $7CF3: $A6
    inc b                                         ; $7CF4: $04
    and c                                         ; $7CF5: $A1
    ld l, a                                       ; $7CF6: $6F
    ld [hl], $1A                                  ; $7CF7: $36 $1A
    add h                                         ; $7CF9: $84
    nop                                           ; $7CFA: $00
    ld d, $E6                                     ; $7CFB: $16 $E6
    rst $20                                       ; $7CFD: $E7
    add sp, -$17                                  ; $7CFE: $E8 $E9
    nop                                           ; $7D00: $00
    add [hl]                                      ; $7D01: $86
    and a                                         ; $7D02: $A7
    xor b                                         ; $7D03: $A8
    xor c                                         ; $7D04: $A9
    nop                                           ; $7D05: $00
    daa                                           ; $7D06: $27
    jr z, jr_06D_7CBB                             ; $7D07: $28 $B2

    or l                                          ; $7D09: $B5
    or e                                          ; $7D0A: $B3
    or h                                          ; $7D0B: $B4
    or l                                          ; $7D0C: $B5
    or [hl]                                       ; $7D0D: $B6
    or e                                          ; $7D0E: $B3
    or h                                          ; $7D0F: $B4
    or l                                          ; $7D10: $B5
    or [hl]                                       ; $7D11: $B6
    add d                                         ; $7D12: $82
    or l                                          ; $7D13: $B5
    dec bc                                        ; $7D14: $0B
    or e                                          ; $7D15: $B3
    or h                                          ; $7D16: $B4
    or e                                          ; $7D17: $B3
    or h                                          ; $7D18: $B4
    or l                                          ; $7D19: $B5
    or [hl]                                       ; $7D1A: $B6
    or l                                          ; $7D1B: $B5
    or [hl]                                       ; $7D1C: $B6
    or l                                          ; $7D1D: $B5
    or e                                          ; $7D1E: $B3
    or h                                          ; $7D1F: $B4
    add d                                         ; $7D20: $82
    or [hl]                                       ; $7D21: $B6
    inc bc                                        ; $7D22: $03
    or c                                          ; $7D23: $B1
    add hl, hl                                    ; $7D24: $29
    ld a, [hl+]                                   ; $7D25: $2A
    add l                                         ; $7D26: $85
    nop                                           ; $7D27: $00
    ld d, $EA                                     ; $7D28: $16 $EA
    db $EB                                        ; $7D2A: $EB
    db $EC                                        ; $7D2B: $EC
    db $ED                                        ; $7D2C: $ED
    nop                                           ; $7D2D: $00
    sub [hl]                                      ; $7D2E: $96
    db $DB                                        ; $7D2F: $DB
    call c, $00DD                                 ; $7D30: $DC $DD $00
    scf                                           ; $7D33: $37
    jr c, @-$3C                                   ; $7D34: $38 $C2

    push bc                                       ; $7D36: $C5
    jp $C5C4                                      ; $7D37: $C3 $C4 $C5


    add $C3                                       ; $7D3A: $C6 $C3
    call nz, $C6C5                                ; $7D3C: $C4 $C5 $C6
    add d                                         ; $7D3F: $82
    push bc                                       ; $7D40: $C5
    dec bc                                        ; $7D41: $0B
    jp $C3C4                                      ; $7D42: $C3 $C4 $C3


    call nz, $C6C5                                ; $7D45: $C4 $C5 $C6
    push bc                                       ; $7D48: $C5
    add $C5                                       ; $7D49: $C6 $C5
    jp $82C4                                      ; $7D4B: $C3 $C4 $82


    add $03                                       ; $7D4E: $C6 $03
    pop bc                                        ; $7D50: $C1
    add hl, sp                                    ; $7D51: $39
    ld a, [hl-]                                   ; $7D52: $3A
    add l                                         ; $7D53: $85
    nop                                           ; $7D54: $00
    inc c                                         ; $7D55: $0C
    or $F7                                        ; $7D56: $F6 $F7
    nop                                           ; $7D58: $00
    sub l                                         ; $7D59: $95
    nop                                           ; $7D5A: $00
    sub h                                         ; $7D5B: $94
    nop                                           ; $7D5C: $00
    sub $CB                                       ; $7D5D: $D6 $CB
    push de                                       ; $7D5F: $D5
    ld b, a                                       ; $7D60: $47
    ld c, b                                       ; $7D61: $48
    add d                                         ; $7D62: $82
    nop                                           ; $7D63: $00
    ld bc, $961A                                  ; $7D64: $01 $1A $96
    nop                                           ; $7D67: $00
    dec b                                         ; $7D68: $05
    ld a, [de]                                    ; $7D69: $1A
    ld c, c                                       ; $7D6A: $49
    ld c, d                                       ; $7D6B: $4A
    db $D3                                        ; $7D6C: $D3
    push de                                       ; $7D6D: $D5
    add [hl]                                      ; $7D6E: $86
    nop                                           ; $7D6F: $00
    inc bc                                        ; $7D70: $03
    sub l                                         ; $7D71: $95
    nop                                           ; $7D72: $00
    sub h                                         ; $7D73: $94
    add e                                         ; $7D74: $83
    nop                                           ; $7D75: $00
    inc bc                                        ; $7D76: $03
    di                                            ; $7D77: $F3
    db $E4                                        ; $7D78: $E4
    push de                                       ; $7D79: $D5
    sub a                                         ; $7D7A: $97
    nop                                           ; $7D7B: $00
    ld bc, $831A                                  ; $7D7C: $01 $1A $83
    nop                                           ; $7D7F: $00
    inc bc                                        ; $7D80: $03
    db $D3                                        ; $7D81: $D3
    db $E4                                        ; $7D82: $E4
    push af                                       ; $7D83: $F5
    add [hl]                                      ; $7D84: $86
    nop                                           ; $7D85: $00
    inc bc                                        ; $7D86: $03
    sub l                                         ; $7D87: $95
    nop                                           ; $7D88: $00
    sub h                                         ; $7D89: $94
    add h                                         ; $7D8A: $84
    nop                                           ; $7D8B: $00
    ld [bc], a                                    ; $7D8C: $02
    di                                            ; $7D8D: $F3
    push af                                       ; $7D8E: $F5
    sbc e                                         ; $7D8F: $9B
    nop                                           ; $7D90: $00
    ld [bc], a                                    ; $7D91: $02
    di                                            ; $7D92: $F3
    push af                                       ; $7D93: $F5
    add a                                         ; $7D94: $87
    nop                                           ; $7D95: $00
    rlca                                          ; $7D96: $07
    sub l                                         ; $7D97: $95
    nop                                           ; $7D98: $00
    xor d                                         ; $7D99: $AA
    xor e                                         ; $7D9A: $AB
    xor h                                         ; $7D9B: $AC
    nop                                           ; $7D9C: $00
    ld a, [de]                                    ; $7D9D: $1A
    and h                                         ; $7D9E: $A4
    nop                                           ; $7D9F: $00
    inc bc                                        ; $7DA0: $03
    ret nc                                        ; $7DA1: $D0

    pop de                                        ; $7DA2: $D1
    jp nc, $0082                                  ; $7DA3: $D2 $82 $00

    ld [bc], a                                    ; $7DA6: $02
    cp e                                          ; $7DA7: $BB
    cp h                                          ; $7DA8: $BC
    and [hl]                                      ; $7DA9: $A6
    nop                                           ; $7DAA: $00
    ld [bc], a                                    ; $7DAB: $02
    ldh [$E1], a                                  ; $7DAC: $E0 $E1
    add h                                         ; $7DAE: $84
    nop                                           ; $7DAF: $00
    ld bc, $A6CC                                  ; $7DB0: $01 $CC $A6
    ld e, d                                       ; $7DB3: $5A
    ld bc, $C0F0                                  ; $7DB4: $01 $F0 $C0
    ld h, e                                       ; $7DB7: $63
    nop                                           ; $7DB8: $00
    nop                                           ; $7DB9: $00
    inc d                                         ; $7DBA: $14
    or h                                          ; $7DBB: $B4
    nop                                           ; $7DBC: $00
    add hl, bc                                    ; $7DBD: $09
    ld e, $20                                     ; $7DBE: $1E $20
    inc bc                                        ; $7DC0: $03
    add a                                         ; $7DC1: $87
    db $FC                                        ; $7DC2: $FC
    ld [bc], a                                    ; $7DC3: $02
    push bc                                       ; $7DC4: $C5
    add $83                                       ; $7DC5: $C6 $83
    ld sp, hl                                     ; $7DC7: $F9
    ld bc, $8D92                                  ; $7DC8: $01 $92 $8D
    db $FC                                        ; $7DCB: $FC
    inc bc                                        ; $7DCC: $03
    call nc, $D6D5                                ; $7DCD: $D4 $D5 $D6
    add e                                         ; $7DD0: $83
    ld sp, hl                                     ; $7DD1: $F9
    ld bc, $8DA2                                  ; $7DD2: $01 $A2 $8D
    db $FC                                        ; $7DD5: $FC
    inc bc                                        ; $7DD6: $03
    db $E4                                        ; $7DD7: $E4
    push hl                                       ; $7DD8: $E5
    and $83                                       ; $7DD9: $E6 $83
    ld sp, hl                                     ; $7DDB: $F9
    ld [bc], a                                    ; $7DDC: $02
    dec bc                                        ; $7DDD: $0B
    rst $00                                       ; $7DDE: $C7
    adc h                                         ; $7DDF: $8C
    db $FC                                        ; $7DE0: $FC
    inc b                                         ; $7DE1: $04
    db $F4                                        ; $7DE2: $F4
    push af                                       ; $7DE3: $F5
    or $F7                                        ; $7DE4: $F6 $F7
    add d                                         ; $7DE6: $82
    ld sp, hl                                     ; $7DE7: $F9
    ld [bc], a                                    ; $7DE8: $02
    dec de                                        ; $7DE9: $1B
    rst $00                                       ; $7DEA: $C7
    adc e                                         ; $7DEB: $8B
    db $FC                                        ; $7DEC: $FC
    dec b                                         ; $7DED: $05
    ret c                                         ; $7DEE: $D8

    reti                                          ; $7DEF: $D9


    adc c                                         ; $7DF0: $89
    adc d                                         ; $7DF1: $8A
    rst $20                                       ; $7DF2: $E7
    add d                                         ; $7DF3: $82
    ld sp, hl                                     ; $7DF4: $F9
    ld [bc], a                                    ; $7DF5: $02
    dec bc                                        ; $7DF6: $0B
    rst $00                                       ; $7DF7: $C7
    adc e                                         ; $7DF8: $8B
    db $FC                                        ; $7DF9: $FC
    inc b                                         ; $7DFA: $04
    add sp, -$17                                  ; $7DFB: $E8 $E9
    or l                                          ; $7DFD: $B5
    or [hl]                                       ; $7DFE: $B6
    add e                                         ; $7DFF: $83
    ld sp, hl                                     ; $7E00: $F9
    ld [bc], a                                    ; $7E01: $02
    dec de                                        ; $7E02: $1B
    rst $00                                       ; $7E03: $C7
    adc l                                         ; $7E04: $8D
    db $FC                                        ; $7E05: $FC
    inc bc                                        ; $7E06: $03
    push bc                                       ; $7E07: $C5
    add $EE                                       ; $7E08: $C6 $EE
    add d                                         ; $7E0A: $82
    ld sp, hl                                     ; $7E0B: $F9
    ld [bc], a                                    ; $7E0C: $02
    dec bc                                        ; $7E0D: $0B
    rst $00                                       ; $7E0E: $C7
    adc h                                         ; $7E0F: $8C
    db $FC                                        ; $7E10: $FC
    inc bc                                        ; $7E11: $03
    call nc, $D6D5                                ; $7E12: $D4 $D5 $D6
    add e                                         ; $7E15: $83
    ld sp, hl                                     ; $7E16: $F9
    ld [bc], a                                    ; $7E17: $02
    dec de                                        ; $7E18: $1B
    rst $00                                       ; $7E19: $C7
    adc h                                         ; $7E1A: $8C
    db $FC                                        ; $7E1B: $FC
    inc bc                                        ; $7E1C: $03
    db $E4                                        ; $7E1D: $E4
    push hl                                       ; $7E1E: $E5
    and $82                                       ; $7E1F: $E6 $82
    ld sp, hl                                     ; $7E21: $F9
    inc b                                         ; $7E22: $04
    or c                                          ; $7E23: $B1
    or d                                          ; $7E24: $B2
    ret c                                         ; $7E25: $D8

    reti                                          ; $7E26: $D9


    adc e                                         ; $7E27: $8B
    db $FC                                        ; $7E28: $FC
    add hl, bc                                    ; $7E29: $09
    db $F4                                        ; $7E2A: $F4
    push af                                       ; $7E2B: $F5
    or $F7                                        ; $7E2C: $F6 $F7
    ld sp, hl                                     ; $7E2E: $F9
    pop bc                                        ; $7E2F: $C1
    jp nz, $E9E8                                  ; $7E30: $C2 $E8 $E9

    adc c                                         ; $7E33: $89
    db $FC                                        ; $7E34: $FC
    dec b                                         ; $7E35: $05
    ld c, d                                       ; $7E36: $4A
    ld c, e                                       ; $7E37: $4B
    or a                                          ; $7E38: $B7
    ld a, [bc]                                    ; $7E39: $0A
    xor $82                                       ; $7E3A: $EE $82
    ld sp, hl                                     ; $7E3C: $F9
    inc bc                                        ; $7E3D: $03
    pop de                                        ; $7E3E: $D1
    jp nc, $8AD3                                  ; $7E3F: $D2 $D3 $8A

    db $FC                                        ; $7E42: $FC
    inc b                                         ; $7E43: $04
    ld e, d                                       ; $7E44: $5A
    ld e, e                                       ; $7E45: $5B
    or a                                          ; $7E46: $B7
    ld a, [de]                                    ; $7E47: $1A
    add e                                         ; $7E48: $83
    ld sp, hl                                     ; $7E49: $F9
    inc bc                                        ; $7E4A: $03
    pop hl                                        ; $7E4B: $E1
    ld [c], a                                     ; $7E4C: $E2
    db $E3                                        ; $7E4D: $E3
    adc d                                         ; $7E4E: $8A
    db $FC                                        ; $7E4F: $FC
    inc b                                         ; $7E50: $04
    inc l                                         ; $7E51: $2C
    adc [hl]                                      ; $7E52: $8E
    adc a                                         ; $7E53: $8F
    ld a, [bc]                                    ; $7E54: $0A
    add d                                         ; $7E55: $82
    ld sp, hl                                     ; $7E56: $F9
    inc b                                         ; $7E57: $04
    ldh a, [$F1]                                  ; $7E58: $F0 $F1
    ld a, [c]                                     ; $7E5A: $F2
    di                                            ; $7E5B: $F3
    adc b                                         ; $7E5C: $88
    db $FC                                        ; $7E5D: $FC
    dec c                                         ; $7E5E: $0D
    or a                                          ; $7E5F: $B7
    ld a, [bc]                                    ; $7E60: $0A
    inc a                                         ; $7E61: $3C
    sbc [hl]                                      ; $7E62: $9E
    sbc a                                         ; $7E63: $9F
    inc a                                         ; $7E64: $3C
    ld sp, hl                                     ; $7E65: $F9
    rst $20                                       ; $7E66: $E7
    ei                                            ; $7E67: $FB
    cp b                                          ; $7E68: $B8
    cp c                                          ; $7E69: $B9
    ret c                                         ; $7E6A: $D8

    reti                                          ; $7E6B: $D9


    add a                                         ; $7E6C: $87
    db $FC                                        ; $7E6D: $FC
    ld b, $B7                                     ; $7E6E: $06 $B7
    ld a, [bc]                                    ; $7E70: $0A
    inc a                                         ; $7E71: $3C
    xor [hl]                                      ; $7E72: $AE
    xor a                                         ; $7E73: $AF
    inc a                                         ; $7E74: $3C
    add e                                         ; $7E75: $83
    ld sp, hl                                     ; $7E76: $F9
    inc b                                         ; $7E77: $04
    or c                                          ; $7E78: $B1
    or d                                          ; $7E79: $B2
    add sp, -$17                                  ; $7E7A: $E8 $E9
    add a                                         ; $7E7C: $87
    db $FC                                        ; $7E7D: $FC
    ld b, $B7                                     ; $7E7E: $06 $B7
    ld a, [bc]                                    ; $7E80: $0A
    ld c, h                                       ; $7E81: $4C
    cp [hl]                                       ; $7E82: $BE
    cp a                                          ; $7E83: $BF
    ld c, h                                       ; $7E84: $4C
    add e                                         ; $7E85: $83
    ld sp, hl                                     ; $7E86: $F9
    ld [bc], a                                    ; $7E87: $02
    pop bc                                        ; $7E88: $C1
    jp nz, $FC89                                  ; $7E89: $C2 $89 $FC

    dec b                                         ; $7E8C: $05
    or a                                          ; $7E8D: $B7
    ld a, [bc]                                    ; $7E8E: $0A
    nop                                           ; $7E8F: $00
    ld sp, hl                                     ; $7E90: $F9
    nop                                           ; $7E91: $00
    add d                                         ; $7E92: $82
    ld sp, hl                                     ; $7E93: $F9
    dec b                                         ; $7E94: $05
    rst $20                                       ; $7E95: $E7
    ld sp, hl                                     ; $7E96: $F9
    pop de                                        ; $7E97: $D1
    jp nc, $88D3                                  ; $7E98: $D2 $D3 $88

    db $FC                                        ; $7E9B: $FC
    dec b                                         ; $7E9C: $05
    or a                                          ; $7E9D: $B7
    ld a, [bc]                                    ; $7E9E: $0A
    ld sp, hl                                     ; $7E9F: $F9
    sbc h                                         ; $7EA0: $9C
    sbc l                                         ; $7EA1: $9D
    add h                                         ; $7EA2: $84
    ld sp, hl                                     ; $7EA3: $F9
    inc bc                                        ; $7EA4: $03
    pop hl                                        ; $7EA5: $E1
    ld [c], a                                     ; $7EA6: $E2
    db $E3                                        ; $7EA7: $E3
    adc b                                         ; $7EA8: $88
    db $FC                                        ; $7EA9: $FC
    dec b                                         ; $7EAA: $05
    or a                                          ; $7EAB: $B7
    ld a, [bc]                                    ; $7EAC: $0A
    xor e                                         ; $7EAD: $AB
    xor h                                         ; $7EAE: $AC
    xor l                                         ; $7EAF: $AD
    add e                                         ; $7EB0: $83
    ld sp, hl                                     ; $7EB1: $F9
    inc b                                         ; $7EB2: $04
    ldh a, [$F1]                                  ; $7EB3: $F0 $F1
    ld a, [c]                                     ; $7EB5: $F2
    di                                            ; $7EB6: $F3
    adc b                                         ; $7EB7: $88
    db $FC                                        ; $7EB8: $FC
    dec b                                         ; $7EB9: $05
    or a                                          ; $7EBA: $B7
    ld a, [bc]                                    ; $7EBB: $0A
    cp e                                          ; $7EBC: $BB
    cp h                                          ; $7EBD: $BC
    cp l                                          ; $7EBE: $BD
    add h                                         ; $7EBF: $84
    ld sp, hl                                     ; $7EC0: $F9
    inc b                                         ; $7EC1: $04
    xor $09                                       ; $7EC2: $EE $09
    ret c                                         ; $7EC4: $D8

    reti                                          ; $7EC5: $D9


    add a                                         ; $7EC6: $87
    db $FC                                        ; $7EC7: $FC
    ld [bc], a                                    ; $7EC8: $02
    or a                                          ; $7EC9: $B7
    ld a, [bc]                                    ; $7ECA: $0A
    add d                                         ; $7ECB: $82
    nop                                           ; $7ECC: $00
    add h                                         ; $7ECD: $84
    ld sp, hl                                     ; $7ECE: $F9
    dec b                                         ; $7ECF: $05
    rst $20                                       ; $7ED0: $E7
    ld sp, hl                                     ; $7ED1: $F9
    dec bc                                        ; $7ED2: $0B
    add sp, -$17                                  ; $7ED3: $E8 $E9
    add a                                         ; $7ED5: $87
    db $FC                                        ; $7ED6: $FC
    ld [bc], a                                    ; $7ED7: $02
    or a                                          ; $7ED8: $B7
    ld a, [bc]                                    ; $7ED9: $0A
    adc b                                         ; $7EDA: $88
    ld sp, hl                                     ; $7EDB: $F9
    ld b, $2C                                     ; $7EDC: $06 $2C
    adc [hl]                                      ; $7EDE: $8E
    adc a                                         ; $7EDF: $8F
    adc [hl]                                      ; $7EE0: $8E
    adc a                                         ; $7EE1: $8F
    inc l                                         ; $7EE2: $2C
    add h                                         ; $7EE3: $84
    db $FC                                        ; $7EE4: $FC
    dec b                                         ; $7EE5: $05
    or a                                          ; $7EE6: $B7
    ld a, [bc]                                    ; $7EE7: $0A
    rst $20                                       ; $7EE8: $E7
    ei                                            ; $7EE9: $FB
    rst $20                                       ; $7EEA: $E7
    add d                                         ; $7EEB: $82
    ld sp, hl                                     ; $7EEC: $F9
    dec bc                                        ; $7EED: $0B
    rst $20                                       ; $7EEE: $E7
    ei                                            ; $7EEF: $FB
    ld sp, hl                                     ; $7EF0: $F9
    inc a                                         ; $7EF1: $3C
    ld l, [hl]                                    ; $7EF2: $6E
    ld l, a                                       ; $7EF3: $6F
    ld l, [hl]                                    ; $7EF4: $6E
    ld l, a                                       ; $7EF5: $6F
    inc a                                         ; $7EF6: $3C
    dec bc                                        ; $7EF7: $0B
    rst $00                                       ; $7EF8: $C7
    add d                                         ; $7EF9: $82
    db $FC                                        ; $7EFA: $FC
    ld [de], a                                    ; $7EFB: $12
    or a                                          ; $7EFC: $B7
    ld a, [bc]                                    ; $7EFD: $0A
    rst $08                                       ; $7EFE: $CF
    cp d                                          ; $7EFF: $BA
    sbc e                                         ; $7F00: $9B
    ld sp, hl                                     ; $7F01: $F9
    cp d                                          ; $7F02: $BA
    sbc e                                         ; $7F03: $9B
    db $10                                        ; $7F04: $10
    ld sp, hl                                     ; $7F05: $F9
    inc a                                         ; $7F06: $3C
    ld a, [hl]                                    ; $7F07: $7E
    ld a, a                                       ; $7F08: $7F
    ld a, [hl]                                    ; $7F09: $7E
    ld a, a                                       ; $7F0A: $7F
    inc a                                         ; $7F0B: $3C
    dec bc                                        ; $7F0C: $0B
    rst $00                                       ; $7F0D: $C7
    add h                                         ; $7F0E: $84
    db $FC                                        ; $7F0F: $FC
    db $10                                        ; $7F10: $10
    ld [$0809], sp                                ; $7F11: $08 $09 $08
    add hl, bc                                    ; $7F14: $09
    rst $08                                       ; $7F15: $CF
    cp d                                          ; $7F16: $BA
    sbc e                                         ; $7F17: $9B
    ld sp, hl                                     ; $7F18: $F9
    ld c, h                                       ; $7F19: $4C
    ld hl, sp-$03                                 ; $7F1A: $F8 $FD
    ld hl, sp-$03                                 ; $7F1C: $F8 $FD
    ld c, h                                       ; $7F1E: $4C
    dec bc                                        ; $7F1F: $0B
    rst $00                                       ; $7F20: $C7
    add h                                         ; $7F21: $84
    db $FC                                        ; $7F22: $FC
    add h                                         ; $7F23: $84
    rst $10                                       ; $7F24: $D7
    rlca                                          ; $7F25: $07
    rst $18                                       ; $7F26: $DF
    ld sp, hl                                     ; $7F27: $F9
    ld sp, hl                                     ; $7F28: $F9
    rst $20                                       ; $7F29: $E7
    ld sp, hl                                     ; $7F2A: $F9
    rst $20                                       ; $7F2B: $E7
    ld sp, hl                                     ; $7F2C: $F9
    add d                                         ; $7F2D: $82
    rst $28                                       ; $7F2E: $EF
    inc bc                                        ; $7F2F: $03
    xor $0B                                       ; $7F30: $EE $0B
    rst $00                                       ; $7F32: $C7
    add h                                         ; $7F33: $84
    db $FC                                        ; $7F34: $FC
    ld [bc], a                                    ; $7F35: $02
    ret c                                         ; $7F36: $D8

    reti                                          ; $7F37: $D9


    add e                                         ; $7F38: $83
    db $FC                                        ; $7F39: $FC
    dec bc                                        ; $7F3A: $0B
    add hl, bc                                    ; $7F3B: $09
    rst $08                                       ; $7F3C: $CF
    rst $20                                       ; $7F3D: $E7
    ei                                            ; $7F3E: $FB
    cp d                                          ; $7F3F: $BA
    sbc e                                         ; $7F40: $9B
    ld c, [hl]                                    ; $7F41: $4E
    ld c, a                                       ; $7F42: $4F
    ld sp, hl                                     ; $7F43: $F9
    dec bc                                        ; $7F44: $0B
    rst $00                                       ; $7F45: $C7
    add h                                         ; $7F46: $84
    db $FC                                        ; $7F47: $FC
    ld [bc], a                                    ; $7F48: $02
    add sp, -$17                                  ; $7F49: $E8 $E9
    add e                                         ; $7F4B: $83
    db $FC                                        ; $7F4C: $FC
    inc b                                         ; $7F4D: $04
    rst $10                                       ; $7F4E: $D7
    rst $18                                       ; $7F4F: $DF
    ld a, [$8210]                                 ; $7F50: $FA $10 $82
    ld sp, hl                                     ; $7F53: $F9
    dec b                                         ; $7F54: $05
    ld e, [hl]                                    ; $7F55: $5E
    ld e, a                                       ; $7F56: $5F
    adc $1B                                       ; $7F57: $CE $1B
    rst $00                                       ; $7F59: $C7
    adc b                                         ; $7F5A: $88
    db $FC                                        ; $7F5B: $FC
    inc bc                                        ; $7F5C: $03
    ret c                                         ; $7F5D: $D8

    reti                                          ; $7F5E: $D9


    ld a, [bc]                                    ; $7F5F: $0A
    add d                                         ; $7F60: $82
    ld sp, hl                                     ; $7F61: $F9
    ld [bc], a                                    ; $7F62: $02
    adc $08                                       ; $7F63: $CE $08
    add e                                         ; $7F65: $83
    add hl, bc                                    ; $7F66: $09
    adc d                                         ; $7F67: $8A
    db $FC                                        ; $7F68: $FC
    rlca                                          ; $7F69: $07
    add sp, -$17                                  ; $7F6A: $E8 $E9
    inc l                                         ; $7F6C: $2C
    ld sp, hl                                     ; $7F6D: $F9
    rst $20                                       ; $7F6E: $E7
    dec bc                                        ; $7F6F: $0B
    db $FC                                        ; $7F70: $FC
    add e                                         ; $7F71: $83
    rst $10                                       ; $7F72: $D7
    add a                                         ; $7F73: $87
    db $FC                                        ; $7F74: $FC
    dec bc                                        ; $7F75: $0B
    ld a, [bc]                                    ; $7F76: $0A
    adc [hl]                                      ; $7F77: $8E
    adc a                                         ; $7F78: $8F
    adc [hl]                                      ; $7F79: $8E
    adc a                                         ; $7F7A: $8F
    inc l                                         ; $7F7B: $2C
    rst $20                                       ; $7F7C: $E7
    ei                                            ; $7F7D: $FB
    dec bc                                        ; $7F7E: $0B
    ret c                                         ; $7F7F: $D8

    reti                                          ; $7F80: $D9


    adc b                                         ; $7F81: $88
    db $FC                                        ; $7F82: $FC
    inc c                                         ; $7F83: $0C
    or a                                          ; $7F84: $B7
    ld a, [bc]                                    ; $7F85: $0A
    sbc [hl]                                      ; $7F86: $9E
    sbc a                                         ; $7F87: $9F
    sbc [hl]                                      ; $7F88: $9E
    sbc a                                         ; $7F89: $9F
    inc a                                         ; $7F8A: $3C
    ld a, [$1B10]                                 ; $7F8B: $FA $10 $1B
    add sp, -$17                                  ; $7F8E: $E8 $E9
    adc b                                         ; $7F90: $88
    db $FC                                        ; $7F91: $FC
    dec bc                                        ; $7F92: $0B
    or a                                          ; $7F93: $B7
    ld a, [bc]                                    ; $7F94: $0A
    xor [hl]                                      ; $7F95: $AE
    xor a                                         ; $7F96: $AF
    xor [hl]                                      ; $7F97: $AE
    xor a                                         ; $7F98: $AF
    inc a                                         ; $7F99: $3C
    rst $20                                       ; $7F9A: $E7
    ld sp, hl                                     ; $7F9B: $F9
    dec bc                                        ; $7F9C: $0B
    rst $00                                       ; $7F9D: $C7
    adc c                                         ; $7F9E: $89
    db $FC                                        ; $7F9F: $FC
    dec bc                                        ; $7FA0: $0B
    or a                                          ; $7FA1: $B7
    ld a, [bc]                                    ; $7FA2: $0A
    cp [hl]                                       ; $7FA3: $BE
    cp a                                          ; $7FA4: $BF
    cp [hl]                                       ; $7FA5: $BE
    cp a                                          ; $7FA6: $BF
    ld c, h                                       ; $7FA7: $4C
    cp d                                          ; $7FA8: $BA
    sbc e                                         ; $7FA9: $9B
    dec de                                        ; $7FAA: $1B
    rst $00                                       ; $7FAB: $C7
    adc c                                         ; $7FAC: $89
    db $FC                                        ; $7FAD: $FC
    ld [bc], a                                    ; $7FAE: $02
    or a                                          ; $7FAF: $B7
    ld a, [bc]                                    ; $7FB0: $0A
    add d                                         ; $7FB1: $82
    xor $01                                       ; $7FB2: $EE $01
    rst $20                                       ; $7FB4: $E7
    add h                                         ; $7FB5: $84
    ld sp, hl                                     ; $7FB6: $F9
    ld [bc], a                                    ; $7FB7: $02
    dec bc                                        ; $7FB8: $0B
    rst $00                                       ; $7FB9: $C7
    adc c                                         ; $7FBA: $89
    db $FC                                        ; $7FBB: $FC
    inc b                                         ; $7FBC: $04
    or a                                          ; $7FBD: $B7
    ld a, [bc]                                    ; $7FBE: $0A
    xor $FA                                       ; $7FBF: $EE $FA
    add d                                         ; $7FC1: $82
    ld sp, hl                                     ; $7FC2: $F9
    dec b                                         ; $7FC3: $05
    cp d                                          ; $7FC4: $BA
    sbc e                                         ; $7FC5: $9B
    adc $1B                                       ; $7FC6: $CE $1B
    rst $00                                       ; $7FC8: $C7
    adc c                                         ; $7FC9: $89
    db $FC                                        ; $7FCA: $FC
    ld [bc], a                                    ; $7FCB: $02
    or a                                          ; $7FCC: $B7
    ld a, [de]                                    ; $7FCD: $1A
    add d                                         ; $7FCE: $82
    rst $20                                       ; $7FCF: $E7
    ld [bc], a                                    ; $7FD0: $02
    adc $1A                                       ; $7FD1: $CE $1A
    add e                                         ; $7FD3: $83
    dec de                                        ; $7FD4: $1B
    ld [bc], a                                    ; $7FD5: $02
    ret c                                         ; $7FD6: $D8

    reti                                          ; $7FD7: $D9


    adc c                                         ; $7FD8: $89
    db $FC                                        ; $7FD9: $FC
    dec b                                         ; $7FDA: $05
    or a                                          ; $7FDB: $B7
    ld a, [bc]                                    ; $7FDC: $0A
    ld a, [$0BFB]                                 ; $7FDD: $FA $FB $0B
    add h                                         ; $7FE0: $84
    rst $10                                       ; $7FE1: $D7
    ld [bc], a                                    ; $7FE2: $02
    add sp, -$17                                  ; $7FE3: $E8 $E9
    adc c                                         ; $7FE5: $89
    db $FC                                        ; $7FE6: $FC
    ld [bc], a                                    ; $7FE7: $02
    or a                                          ; $7FE8: $B7
    ld a, [de]                                    ; $7FE9: $1A
    add d                                         ; $7FEA: $82
    ld sp, hl                                     ; $7FEB: $F9
    inc b                                         ; $7FEC: $04
    dec bc                                        ; $7FED: $0B
    rst $00                                       ; $7FEE: $C7
    ret c                                         ; $7FEF: $D8

    reti                                          ; $7FF0: $D9


    adc h                                         ; $7FF1: $8C
    db $FC                                        ; $7FF2: $FC
    ld [bc], a                                    ; $7FF3: $02
    or a                                          ; $7FF4: $B7
    ld a, [de]                                    ; $7FF5: $1A
    add d                                         ; $7FF6: $82
    ld sp, hl                                     ; $7FF7: $F9
    inc b                                         ; $7FF8: $04
    dec de                                        ; $7FF9: $1B
    rst $00                                       ; $7FFA: $C7
    add sp, -$17                                  ; $7FFB: $E8 $E9
    adc b                                         ; $7FFD: $88
    db $FC                                        ; $7FFE: $FC
    nop                                           ; $7FFF: $00
